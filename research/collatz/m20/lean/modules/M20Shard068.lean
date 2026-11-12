import Mathlib.Data.Nat.Prime.Basic

namespace CollatzM20Shard068

def C (n : Nat) : Nat := if n % 2 = 0 then n / 2 else 3 * n + 1

def iterate (n t : Nat) : Nat := Nat.rec n (fun _ previous => C previous) t

theorem descent_mod1048576_522991 : ∀ k : Nat,
    iterate (1048576 * k + 522991) 32 = 531441 * k + 265064 ∧
      531441 * k + 265064 < 1048576 * k + 522991 := by
  intro k
  have h1 : C (1048576 * k + 522991) = 3145728 * k + 1568974 := by
    unfold C
    simp [show (1048576 * k + 522991) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1568974) = 1572864 * k + 784487 := by
    unfold C
    simp [show (3145728 * k + 1568974) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 784487) = 4718592 * k + 2353462 := by
    unfold C
    simp [show (1572864 * k + 784487) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2353462) = 2359296 * k + 1176731 := by
    unfold C
    simp [show (4718592 * k + 2353462) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1176731) = 7077888 * k + 3530194 := by
    unfold C
    simp [show (2359296 * k + 1176731) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 3530194) = 3538944 * k + 1765097 := by
    unfold C
    simp [show (7077888 * k + 3530194) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1765097) = 10616832 * k + 5295292 := by
    unfold C
    simp [show (3538944 * k + 1765097) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 5295292) = 5308416 * k + 2647646 := by
    unfold C
    simp [show (10616832 * k + 5295292) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 2647646) = 2654208 * k + 1323823 := by
    unfold C
    simp [show (5308416 * k + 2647646) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1323823) = 7962624 * k + 3971470 := by
    unfold C
    simp [show (2654208 * k + 1323823) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 3971470) = 3981312 * k + 1985735 := by
    unfold C
    simp [show (7962624 * k + 3971470) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 1985735) = 11943936 * k + 5957206 := by
    unfold C
    simp [show (3981312 * k + 1985735) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 5957206) = 5971968 * k + 2978603 := by
    unfold C
    simp [show (11943936 * k + 5957206) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 2978603) = 17915904 * k + 8935810 := by
    unfold C
    simp [show (5971968 * k + 2978603) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 8935810) = 8957952 * k + 4467905 := by
    unfold C
    simp [show (17915904 * k + 8935810) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 4467905) = 26873856 * k + 13403716 := by
    unfold C
    simp [show (8957952 * k + 4467905) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 13403716) = 13436928 * k + 6701858 := by
    unfold C
    simp [show (26873856 * k + 13403716) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 6701858) = 6718464 * k + 3350929 := by
    unfold C
    simp [show (13436928 * k + 6701858) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 3350929) = 20155392 * k + 10052788 := by
    unfold C
    simp [show (6718464 * k + 3350929) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 10052788) = 10077696 * k + 5026394 := by
    unfold C
    simp [show (20155392 * k + 10052788) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 5026394) = 5038848 * k + 2513197 := by
    unfold C
    simp [show (10077696 * k + 5026394) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 2513197) = 15116544 * k + 7539592 := by
    unfold C
    simp [show (5038848 * k + 2513197) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 7539592) = 7558272 * k + 3769796 := by
    unfold C
    simp [show (15116544 * k + 7539592) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 3769796) = 3779136 * k + 1884898 := by
    unfold C
    simp [show (7558272 * k + 3769796) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 1884898) = 1889568 * k + 942449 := by
    unfold C
    simp [show (3779136 * k + 1884898) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 942449) = 5668704 * k + 2827348 := by
    unfold C
    simp [show (1889568 * k + 942449) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 2827348) = 2834352 * k + 1413674 := by
    unfold C
    simp [show (5668704 * k + 2827348) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1413674) = 1417176 * k + 706837 := by
    unfold C
    simp [show (2834352 * k + 1413674) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 706837) = 4251528 * k + 2120512 := by
    unfold C
    simp [show (1417176 * k + 706837) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 2120512) = 2125764 * k + 1060256 := by
    unfold C
    simp [show (4251528 * k + 2120512) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1060256) = 1062882 * k + 530128 := by
    unfold C
    simp [show (2125764 * k + 1060256) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 530128) = 531441 * k + 265064 := by
    unfold C
    simp [show (1062882 * k + 530128) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 522991) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 522991)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_524015 : ∀ k : Nat,
    iterate (1048576 * k + 524015) 32 = 531441 * k + 265583 ∧
      531441 * k + 265583 < 1048576 * k + 524015 := by
  intro k
  have h1 : C (1048576 * k + 524015) = 3145728 * k + 1572046 := by
    unfold C
    simp [show (1048576 * k + 524015) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1572046) = 1572864 * k + 786023 := by
    unfold C
    simp [show (3145728 * k + 1572046) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 786023) = 4718592 * k + 2358070 := by
    unfold C
    simp [show (1572864 * k + 786023) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2358070) = 2359296 * k + 1179035 := by
    unfold C
    simp [show (4718592 * k + 2358070) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1179035) = 7077888 * k + 3537106 := by
    unfold C
    simp [show (2359296 * k + 1179035) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 3537106) = 3538944 * k + 1768553 := by
    unfold C
    simp [show (7077888 * k + 3537106) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1768553) = 10616832 * k + 5305660 := by
    unfold C
    simp [show (3538944 * k + 1768553) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 5305660) = 5308416 * k + 2652830 := by
    unfold C
    simp [show (10616832 * k + 5305660) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 2652830) = 2654208 * k + 1326415 := by
    unfold C
    simp [show (5308416 * k + 2652830) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1326415) = 7962624 * k + 3979246 := by
    unfold C
    simp [show (2654208 * k + 1326415) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 3979246) = 3981312 * k + 1989623 := by
    unfold C
    simp [show (7962624 * k + 3979246) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 1989623) = 11943936 * k + 5968870 := by
    unfold C
    simp [show (3981312 * k + 1989623) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 5968870) = 5971968 * k + 2984435 := by
    unfold C
    simp [show (11943936 * k + 5968870) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 2984435) = 17915904 * k + 8953306 := by
    unfold C
    simp [show (5971968 * k + 2984435) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 8953306) = 8957952 * k + 4476653 := by
    unfold C
    simp [show (17915904 * k + 8953306) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 4476653) = 26873856 * k + 13429960 := by
    unfold C
    simp [show (8957952 * k + 4476653) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 13429960) = 13436928 * k + 6714980 := by
    unfold C
    simp [show (26873856 * k + 13429960) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 6714980) = 6718464 * k + 3357490 := by
    unfold C
    simp [show (13436928 * k + 6714980) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 3357490) = 3359232 * k + 1678745 := by
    unfold C
    simp [show (6718464 * k + 3357490) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 1678745) = 10077696 * k + 5036236 := by
    unfold C
    simp [show (3359232 * k + 1678745) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 5036236) = 5038848 * k + 2518118 := by
    unfold C
    simp [show (10077696 * k + 5036236) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 2518118) = 2519424 * k + 1259059 := by
    unfold C
    simp [show (5038848 * k + 2518118) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1259059) = 7558272 * k + 3777178 := by
    unfold C
    simp [show (2519424 * k + 1259059) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 3777178) = 3779136 * k + 1888589 := by
    unfold C
    simp [show (7558272 * k + 3777178) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 1888589) = 11337408 * k + 5665768 := by
    unfold C
    simp [show (3779136 * k + 1888589) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 5665768) = 5668704 * k + 2832884 := by
    unfold C
    simp [show (11337408 * k + 5665768) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 2832884) = 2834352 * k + 1416442 := by
    unfold C
    simp [show (5668704 * k + 2832884) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1416442) = 1417176 * k + 708221 := by
    unfold C
    simp [show (2834352 * k + 1416442) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 708221) = 4251528 * k + 2124664 := by
    unfold C
    simp [show (1417176 * k + 708221) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 2124664) = 2125764 * k + 1062332 := by
    unfold C
    simp [show (4251528 * k + 2124664) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1062332) = 1062882 * k + 531166 := by
    unfold C
    simp [show (2125764 * k + 1062332) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 531166) = 531441 * k + 265583 := by
    unfold C
    simp [show (1062882 * k + 531166) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 524015) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 524015)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_524607 : ∀ k : Nat,
    iterate (1048576 * k + 524607) 32 = 531441 * k + 265883 ∧
      531441 * k + 265883 < 1048576 * k + 524607 := by
  intro k
  have h1 : C (1048576 * k + 524607) = 3145728 * k + 1573822 := by
    unfold C
    simp [show (1048576 * k + 524607) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1573822) = 1572864 * k + 786911 := by
    unfold C
    simp [show (3145728 * k + 1573822) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 786911) = 4718592 * k + 2360734 := by
    unfold C
    simp [show (1572864 * k + 786911) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2360734) = 2359296 * k + 1180367 := by
    unfold C
    simp [show (4718592 * k + 2360734) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1180367) = 7077888 * k + 3541102 := by
    unfold C
    simp [show (2359296 * k + 1180367) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 3541102) = 3538944 * k + 1770551 := by
    unfold C
    simp [show (7077888 * k + 3541102) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1770551) = 10616832 * k + 5311654 := by
    unfold C
    simp [show (3538944 * k + 1770551) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 5311654) = 5308416 * k + 2655827 := by
    unfold C
    simp [show (10616832 * k + 5311654) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 2655827) = 15925248 * k + 7967482 := by
    unfold C
    simp [show (5308416 * k + 2655827) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 7967482) = 7962624 * k + 3983741 := by
    unfold C
    simp [show (15925248 * k + 7967482) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 3983741) = 23887872 * k + 11951224 := by
    unfold C
    simp [show (7962624 * k + 3983741) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 11951224) = 11943936 * k + 5975612 := by
    unfold C
    simp [show (23887872 * k + 11951224) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 5975612) = 5971968 * k + 2987806 := by
    unfold C
    simp [show (11943936 * k + 5975612) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 2987806) = 2985984 * k + 1493903 := by
    unfold C
    simp [show (5971968 * k + 2987806) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1493903) = 8957952 * k + 4481710 := by
    unfold C
    simp [show (2985984 * k + 1493903) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 4481710) = 4478976 * k + 2240855 := by
    unfold C
    simp [show (8957952 * k + 4481710) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 2240855) = 13436928 * k + 6722566 := by
    unfold C
    simp [show (4478976 * k + 2240855) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 6722566) = 6718464 * k + 3361283 := by
    unfold C
    simp [show (13436928 * k + 6722566) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 3361283) = 20155392 * k + 10083850 := by
    unfold C
    simp [show (6718464 * k + 3361283) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 10083850) = 10077696 * k + 5041925 := by
    unfold C
    simp [show (20155392 * k + 10083850) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 5041925) = 30233088 * k + 15125776 := by
    unfold C
    simp [show (10077696 * k + 5041925) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 15125776) = 15116544 * k + 7562888 := by
    unfold C
    simp [show (30233088 * k + 15125776) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 7562888) = 7558272 * k + 3781444 := by
    unfold C
    simp [show (15116544 * k + 7562888) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 3781444) = 3779136 * k + 1890722 := by
    unfold C
    simp [show (7558272 * k + 3781444) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 1890722) = 1889568 * k + 945361 := by
    unfold C
    simp [show (3779136 * k + 1890722) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 945361) = 5668704 * k + 2836084 := by
    unfold C
    simp [show (1889568 * k + 945361) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 2836084) = 2834352 * k + 1418042 := by
    unfold C
    simp [show (5668704 * k + 2836084) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1418042) = 1417176 * k + 709021 := by
    unfold C
    simp [show (2834352 * k + 1418042) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 709021) = 4251528 * k + 2127064 := by
    unfold C
    simp [show (1417176 * k + 709021) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 2127064) = 2125764 * k + 1063532 := by
    unfold C
    simp [show (4251528 * k + 2127064) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1063532) = 1062882 * k + 531766 := by
    unfold C
    simp [show (2125764 * k + 1063532) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 531766) = 531441 * k + 265883 := by
    unfold C
    simp [show (1062882 * k + 531766) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 524607) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 524607)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_525339 : ∀ k : Nat,
    iterate (1048576 * k + 525339) 32 = 531441 * k + 266254 ∧
      531441 * k + 266254 < 1048576 * k + 525339 := by
  intro k
  have h1 : C (1048576 * k + 525339) = 3145728 * k + 1576018 := by
    unfold C
    simp [show (1048576 * k + 525339) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1576018) = 1572864 * k + 788009 := by
    unfold C
    simp [show (3145728 * k + 1576018) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 788009) = 4718592 * k + 2364028 := by
    unfold C
    simp [show (1572864 * k + 788009) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2364028) = 2359296 * k + 1182014 := by
    unfold C
    simp [show (4718592 * k + 2364028) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1182014) = 1179648 * k + 591007 := by
    unfold C
    simp [show (2359296 * k + 1182014) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 591007) = 3538944 * k + 1773022 := by
    unfold C
    simp [show (1179648 * k + 591007) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 1773022) = 1769472 * k + 886511 := by
    unfold C
    simp [show (3538944 * k + 1773022) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 886511) = 5308416 * k + 2659534 := by
    unfold C
    simp [show (1769472 * k + 886511) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 2659534) = 2654208 * k + 1329767 := by
    unfold C
    simp [show (5308416 * k + 2659534) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1329767) = 7962624 * k + 3989302 := by
    unfold C
    simp [show (2654208 * k + 1329767) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 3989302) = 3981312 * k + 1994651 := by
    unfold C
    simp [show (7962624 * k + 3989302) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 1994651) = 11943936 * k + 5983954 := by
    unfold C
    simp [show (3981312 * k + 1994651) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 5983954) = 5971968 * k + 2991977 := by
    unfold C
    simp [show (11943936 * k + 5983954) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 2991977) = 17915904 * k + 8975932 := by
    unfold C
    simp [show (5971968 * k + 2991977) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 8975932) = 8957952 * k + 4487966 := by
    unfold C
    simp [show (17915904 * k + 8975932) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 4487966) = 4478976 * k + 2243983 := by
    unfold C
    simp [show (8957952 * k + 4487966) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 2243983) = 13436928 * k + 6731950 := by
    unfold C
    simp [show (4478976 * k + 2243983) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 6731950) = 6718464 * k + 3365975 := by
    unfold C
    simp [show (13436928 * k + 6731950) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 3365975) = 20155392 * k + 10097926 := by
    unfold C
    simp [show (6718464 * k + 3365975) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 10097926) = 10077696 * k + 5048963 := by
    unfold C
    simp [show (20155392 * k + 10097926) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 5048963) = 30233088 * k + 15146890 := by
    unfold C
    simp [show (10077696 * k + 5048963) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 15146890) = 15116544 * k + 7573445 := by
    unfold C
    simp [show (30233088 * k + 15146890) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 7573445) = 45349632 * k + 22720336 := by
    unfold C
    simp [show (15116544 * k + 7573445) % 2 ≠ 0 by omega]
    omega
  have h24 : C (45349632 * k + 22720336) = 22674816 * k + 11360168 := by
    unfold C
    simp [show (45349632 * k + 22720336) % 2 = 0 by omega]
    omega
  have h25 : C (22674816 * k + 11360168) = 11337408 * k + 5680084 := by
    unfold C
    simp [show (22674816 * k + 11360168) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 5680084) = 5668704 * k + 2840042 := by
    unfold C
    simp [show (11337408 * k + 5680084) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 2840042) = 2834352 * k + 1420021 := by
    unfold C
    simp [show (5668704 * k + 2840042) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1420021) = 8503056 * k + 4260064 := by
    unfold C
    simp [show (2834352 * k + 1420021) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 4260064) = 4251528 * k + 2130032 := by
    unfold C
    simp [show (8503056 * k + 4260064) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 2130032) = 2125764 * k + 1065016 := by
    unfold C
    simp [show (4251528 * k + 2130032) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1065016) = 1062882 * k + 532508 := by
    unfold C
    simp [show (2125764 * k + 1065016) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 532508) = 531441 * k + 266254 := by
    unfold C
    simp [show (1062882 * k + 532508) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 525339) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 525339)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_525927 : ∀ k : Nat,
    iterate (1048576 * k + 525927) 32 = 531441 * k + 266552 ∧
      531441 * k + 266552 < 1048576 * k + 525927 := by
  intro k
  have h1 : C (1048576 * k + 525927) = 3145728 * k + 1577782 := by
    unfold C
    simp [show (1048576 * k + 525927) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1577782) = 1572864 * k + 788891 := by
    unfold C
    simp [show (3145728 * k + 1577782) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 788891) = 4718592 * k + 2366674 := by
    unfold C
    simp [show (1572864 * k + 788891) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2366674) = 2359296 * k + 1183337 := by
    unfold C
    simp [show (4718592 * k + 2366674) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1183337) = 7077888 * k + 3550012 := by
    unfold C
    simp [show (2359296 * k + 1183337) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 3550012) = 3538944 * k + 1775006 := by
    unfold C
    simp [show (7077888 * k + 3550012) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1775006) = 1769472 * k + 887503 := by
    unfold C
    simp [show (3538944 * k + 1775006) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 887503) = 5308416 * k + 2662510 := by
    unfold C
    simp [show (1769472 * k + 887503) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 2662510) = 2654208 * k + 1331255 := by
    unfold C
    simp [show (5308416 * k + 2662510) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1331255) = 7962624 * k + 3993766 := by
    unfold C
    simp [show (2654208 * k + 1331255) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 3993766) = 3981312 * k + 1996883 := by
    unfold C
    simp [show (7962624 * k + 3993766) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 1996883) = 11943936 * k + 5990650 := by
    unfold C
    simp [show (3981312 * k + 1996883) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 5990650) = 5971968 * k + 2995325 := by
    unfold C
    simp [show (11943936 * k + 5990650) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 2995325) = 17915904 * k + 8985976 := by
    unfold C
    simp [show (5971968 * k + 2995325) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 8985976) = 8957952 * k + 4492988 := by
    unfold C
    simp [show (17915904 * k + 8985976) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 4492988) = 4478976 * k + 2246494 := by
    unfold C
    simp [show (8957952 * k + 4492988) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 2246494) = 2239488 * k + 1123247 := by
    unfold C
    simp [show (4478976 * k + 2246494) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 1123247) = 6718464 * k + 3369742 := by
    unfold C
    simp [show (2239488 * k + 1123247) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 3369742) = 3359232 * k + 1684871 := by
    unfold C
    simp [show (6718464 * k + 3369742) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 1684871) = 10077696 * k + 5054614 := by
    unfold C
    simp [show (3359232 * k + 1684871) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 5054614) = 5038848 * k + 2527307 := by
    unfold C
    simp [show (10077696 * k + 5054614) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 2527307) = 15116544 * k + 7581922 := by
    unfold C
    simp [show (5038848 * k + 2527307) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 7581922) = 7558272 * k + 3790961 := by
    unfold C
    simp [show (15116544 * k + 7581922) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 3790961) = 22674816 * k + 11372884 := by
    unfold C
    simp [show (7558272 * k + 3790961) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 11372884) = 11337408 * k + 5686442 := by
    unfold C
    simp [show (22674816 * k + 11372884) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 5686442) = 5668704 * k + 2843221 := by
    unfold C
    simp [show (11337408 * k + 5686442) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 2843221) = 17006112 * k + 8529664 := by
    unfold C
    simp [show (5668704 * k + 2843221) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 8529664) = 8503056 * k + 4264832 := by
    unfold C
    simp [show (17006112 * k + 8529664) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 4264832) = 4251528 * k + 2132416 := by
    unfold C
    simp [show (8503056 * k + 4264832) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 2132416) = 2125764 * k + 1066208 := by
    unfold C
    simp [show (4251528 * k + 2132416) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1066208) = 1062882 * k + 533104 := by
    unfold C
    simp [show (2125764 * k + 1066208) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 533104) = 531441 * k + 266552 := by
    unfold C
    simp [show (1062882 * k + 533104) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 525927) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 525927)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_525951 : ∀ k : Nat,
    iterate (1048576 * k + 525951) 32 = 531441 * k + 266564 ∧
      531441 * k + 266564 < 1048576 * k + 525951 := by
  intro k
  have h1 : C (1048576 * k + 525951) = 3145728 * k + 1577854 := by
    unfold C
    simp [show (1048576 * k + 525951) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1577854) = 1572864 * k + 788927 := by
    unfold C
    simp [show (3145728 * k + 1577854) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 788927) = 4718592 * k + 2366782 := by
    unfold C
    simp [show (1572864 * k + 788927) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2366782) = 2359296 * k + 1183391 := by
    unfold C
    simp [show (4718592 * k + 2366782) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1183391) = 7077888 * k + 3550174 := by
    unfold C
    simp [show (2359296 * k + 1183391) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 3550174) = 3538944 * k + 1775087 := by
    unfold C
    simp [show (7077888 * k + 3550174) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1775087) = 10616832 * k + 5325262 := by
    unfold C
    simp [show (3538944 * k + 1775087) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 5325262) = 5308416 * k + 2662631 := by
    unfold C
    simp [show (10616832 * k + 5325262) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 2662631) = 15925248 * k + 7987894 := by
    unfold C
    simp [show (5308416 * k + 2662631) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 7987894) = 7962624 * k + 3993947 := by
    unfold C
    simp [show (15925248 * k + 7987894) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 3993947) = 23887872 * k + 11981842 := by
    unfold C
    simp [show (7962624 * k + 3993947) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 11981842) = 11943936 * k + 5990921 := by
    unfold C
    simp [show (23887872 * k + 11981842) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 5990921) = 35831808 * k + 17972764 := by
    unfold C
    simp [show (11943936 * k + 5990921) % 2 ≠ 0 by omega]
    omega
  have h14 : C (35831808 * k + 17972764) = 17915904 * k + 8986382 := by
    unfold C
    simp [show (35831808 * k + 17972764) % 2 = 0 by omega]
    omega
  have h15 : C (17915904 * k + 8986382) = 8957952 * k + 4493191 := by
    unfold C
    simp [show (17915904 * k + 8986382) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 4493191) = 26873856 * k + 13479574 := by
    unfold C
    simp [show (8957952 * k + 4493191) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 13479574) = 13436928 * k + 6739787 := by
    unfold C
    simp [show (26873856 * k + 13479574) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 6739787) = 40310784 * k + 20219362 := by
    unfold C
    simp [show (13436928 * k + 6739787) % 2 ≠ 0 by omega]
    omega
  have h19 : C (40310784 * k + 20219362) = 20155392 * k + 10109681 := by
    unfold C
    simp [show (40310784 * k + 20219362) % 2 = 0 by omega]
    omega
  have h20 : C (20155392 * k + 10109681) = 60466176 * k + 30329044 := by
    unfold C
    simp [show (20155392 * k + 10109681) % 2 ≠ 0 by omega]
    omega
  have h21 : C (60466176 * k + 30329044) = 30233088 * k + 15164522 := by
    unfold C
    simp [show (60466176 * k + 30329044) % 2 = 0 by omega]
    omega
  have h22 : C (30233088 * k + 15164522) = 15116544 * k + 7582261 := by
    unfold C
    simp [show (30233088 * k + 15164522) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 7582261) = 45349632 * k + 22746784 := by
    unfold C
    simp [show (15116544 * k + 7582261) % 2 ≠ 0 by omega]
    omega
  have h24 : C (45349632 * k + 22746784) = 22674816 * k + 11373392 := by
    unfold C
    simp [show (45349632 * k + 22746784) % 2 = 0 by omega]
    omega
  have h25 : C (22674816 * k + 11373392) = 11337408 * k + 5686696 := by
    unfold C
    simp [show (22674816 * k + 11373392) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 5686696) = 5668704 * k + 2843348 := by
    unfold C
    simp [show (11337408 * k + 5686696) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 2843348) = 2834352 * k + 1421674 := by
    unfold C
    simp [show (5668704 * k + 2843348) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1421674) = 1417176 * k + 710837 := by
    unfold C
    simp [show (2834352 * k + 1421674) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 710837) = 4251528 * k + 2132512 := by
    unfold C
    simp [show (1417176 * k + 710837) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 2132512) = 2125764 * k + 1066256 := by
    unfold C
    simp [show (4251528 * k + 2132512) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1066256) = 1062882 * k + 533128 := by
    unfold C
    simp [show (2125764 * k + 1066256) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 533128) = 531441 * k + 266564 := by
    unfold C
    simp [show (1062882 * k + 533128) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 525951) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 525951)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_526055 : ∀ k : Nat,
    iterate (1048576 * k + 526055) 32 = 531441 * k + 266617 ∧
      531441 * k + 266617 < 1048576 * k + 526055 := by
  intro k
  have h1 : C (1048576 * k + 526055) = 3145728 * k + 1578166 := by
    unfold C
    simp [show (1048576 * k + 526055) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1578166) = 1572864 * k + 789083 := by
    unfold C
    simp [show (3145728 * k + 1578166) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 789083) = 4718592 * k + 2367250 := by
    unfold C
    simp [show (1572864 * k + 789083) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2367250) = 2359296 * k + 1183625 := by
    unfold C
    simp [show (4718592 * k + 2367250) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1183625) = 7077888 * k + 3550876 := by
    unfold C
    simp [show (2359296 * k + 1183625) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 3550876) = 3538944 * k + 1775438 := by
    unfold C
    simp [show (7077888 * k + 3550876) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1775438) = 1769472 * k + 887719 := by
    unfold C
    simp [show (3538944 * k + 1775438) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 887719) = 5308416 * k + 2663158 := by
    unfold C
    simp [show (1769472 * k + 887719) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 2663158) = 2654208 * k + 1331579 := by
    unfold C
    simp [show (5308416 * k + 2663158) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1331579) = 7962624 * k + 3994738 := by
    unfold C
    simp [show (2654208 * k + 1331579) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 3994738) = 3981312 * k + 1997369 := by
    unfold C
    simp [show (7962624 * k + 3994738) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 1997369) = 11943936 * k + 5992108 := by
    unfold C
    simp [show (3981312 * k + 1997369) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 5992108) = 5971968 * k + 2996054 := by
    unfold C
    simp [show (11943936 * k + 5992108) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 2996054) = 2985984 * k + 1498027 := by
    unfold C
    simp [show (5971968 * k + 2996054) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1498027) = 8957952 * k + 4494082 := by
    unfold C
    simp [show (2985984 * k + 1498027) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 4494082) = 4478976 * k + 2247041 := by
    unfold C
    simp [show (8957952 * k + 4494082) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 2247041) = 13436928 * k + 6741124 := by
    unfold C
    simp [show (4478976 * k + 2247041) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 6741124) = 6718464 * k + 3370562 := by
    unfold C
    simp [show (13436928 * k + 6741124) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 3370562) = 3359232 * k + 1685281 := by
    unfold C
    simp [show (6718464 * k + 3370562) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 1685281) = 10077696 * k + 5055844 := by
    unfold C
    simp [show (3359232 * k + 1685281) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 5055844) = 5038848 * k + 2527922 := by
    unfold C
    simp [show (10077696 * k + 5055844) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 2527922) = 2519424 * k + 1263961 := by
    unfold C
    simp [show (5038848 * k + 2527922) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1263961) = 7558272 * k + 3791884 := by
    unfold C
    simp [show (2519424 * k + 1263961) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 3791884) = 3779136 * k + 1895942 := by
    unfold C
    simp [show (7558272 * k + 3791884) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 1895942) = 1889568 * k + 947971 := by
    unfold C
    simp [show (3779136 * k + 1895942) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 947971) = 5668704 * k + 2843914 := by
    unfold C
    simp [show (1889568 * k + 947971) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 2843914) = 2834352 * k + 1421957 := by
    unfold C
    simp [show (5668704 * k + 2843914) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1421957) = 8503056 * k + 4265872 := by
    unfold C
    simp [show (2834352 * k + 1421957) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 4265872) = 4251528 * k + 2132936 := by
    unfold C
    simp [show (8503056 * k + 4265872) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 2132936) = 2125764 * k + 1066468 := by
    unfold C
    simp [show (4251528 * k + 2132936) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1066468) = 1062882 * k + 533234 := by
    unfold C
    simp [show (2125764 * k + 1066468) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 533234) = 531441 * k + 266617 := by
    unfold C
    simp [show (1062882 * k + 533234) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 526055) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 526055)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_526151 : ∀ k : Nat,
    iterate (1048576 * k + 526151) 32 = 531441 * k + 266666 ∧
      531441 * k + 266666 < 1048576 * k + 526151 := by
  intro k
  have h1 : C (1048576 * k + 526151) = 3145728 * k + 1578454 := by
    unfold C
    simp [show (1048576 * k + 526151) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1578454) = 1572864 * k + 789227 := by
    unfold C
    simp [show (3145728 * k + 1578454) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 789227) = 4718592 * k + 2367682 := by
    unfold C
    simp [show (1572864 * k + 789227) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2367682) = 2359296 * k + 1183841 := by
    unfold C
    simp [show (4718592 * k + 2367682) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1183841) = 7077888 * k + 3551524 := by
    unfold C
    simp [show (2359296 * k + 1183841) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 3551524) = 3538944 * k + 1775762 := by
    unfold C
    simp [show (7077888 * k + 3551524) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1775762) = 1769472 * k + 887881 := by
    unfold C
    simp [show (3538944 * k + 1775762) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 887881) = 5308416 * k + 2663644 := by
    unfold C
    simp [show (1769472 * k + 887881) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 2663644) = 2654208 * k + 1331822 := by
    unfold C
    simp [show (5308416 * k + 2663644) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1331822) = 1327104 * k + 665911 := by
    unfold C
    simp [show (2654208 * k + 1331822) % 2 = 0 by omega]
    omega
  have h11 : C (1327104 * k + 665911) = 3981312 * k + 1997734 := by
    unfold C
    simp [show (1327104 * k + 665911) % 2 ≠ 0 by omega]
    omega
  have h12 : C (3981312 * k + 1997734) = 1990656 * k + 998867 := by
    unfold C
    simp [show (3981312 * k + 1997734) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 998867) = 5971968 * k + 2996602 := by
    unfold C
    simp [show (1990656 * k + 998867) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 2996602) = 2985984 * k + 1498301 := by
    unfold C
    simp [show (5971968 * k + 2996602) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1498301) = 8957952 * k + 4494904 := by
    unfold C
    simp [show (2985984 * k + 1498301) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 4494904) = 4478976 * k + 2247452 := by
    unfold C
    simp [show (8957952 * k + 4494904) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 2247452) = 2239488 * k + 1123726 := by
    unfold C
    simp [show (4478976 * k + 2247452) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 1123726) = 1119744 * k + 561863 := by
    unfold C
    simp [show (2239488 * k + 1123726) % 2 = 0 by omega]
    omega
  have h19 : C (1119744 * k + 561863) = 3359232 * k + 1685590 := by
    unfold C
    simp [show (1119744 * k + 561863) % 2 ≠ 0 by omega]
    omega
  have h20 : C (3359232 * k + 1685590) = 1679616 * k + 842795 := by
    unfold C
    simp [show (3359232 * k + 1685590) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 842795) = 5038848 * k + 2528386 := by
    unfold C
    simp [show (1679616 * k + 842795) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 2528386) = 2519424 * k + 1264193 := by
    unfold C
    simp [show (5038848 * k + 2528386) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1264193) = 7558272 * k + 3792580 := by
    unfold C
    simp [show (2519424 * k + 1264193) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 3792580) = 3779136 * k + 1896290 := by
    unfold C
    simp [show (7558272 * k + 3792580) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 1896290) = 1889568 * k + 948145 := by
    unfold C
    simp [show (3779136 * k + 1896290) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 948145) = 5668704 * k + 2844436 := by
    unfold C
    simp [show (1889568 * k + 948145) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 2844436) = 2834352 * k + 1422218 := by
    unfold C
    simp [show (5668704 * k + 2844436) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1422218) = 1417176 * k + 711109 := by
    unfold C
    simp [show (2834352 * k + 1422218) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 711109) = 4251528 * k + 2133328 := by
    unfold C
    simp [show (1417176 * k + 711109) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 2133328) = 2125764 * k + 1066664 := by
    unfold C
    simp [show (4251528 * k + 2133328) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1066664) = 1062882 * k + 533332 := by
    unfold C
    simp [show (2125764 * k + 1066664) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 533332) = 531441 * k + 266666 := by
    unfold C
    simp [show (1062882 * k + 533332) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 526151) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 526151)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_527103 : ∀ k : Nat,
    iterate (1048576 * k + 527103) 32 = 531441 * k + 267148 ∧
      531441 * k + 267148 < 1048576 * k + 527103 := by
  intro k
  have h1 : C (1048576 * k + 527103) = 3145728 * k + 1581310 := by
    unfold C
    simp [show (1048576 * k + 527103) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1581310) = 1572864 * k + 790655 := by
    unfold C
    simp [show (3145728 * k + 1581310) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 790655) = 4718592 * k + 2371966 := by
    unfold C
    simp [show (1572864 * k + 790655) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2371966) = 2359296 * k + 1185983 := by
    unfold C
    simp [show (4718592 * k + 2371966) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1185983) = 7077888 * k + 3557950 := by
    unfold C
    simp [show (2359296 * k + 1185983) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 3557950) = 3538944 * k + 1778975 := by
    unfold C
    simp [show (7077888 * k + 3557950) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1778975) = 10616832 * k + 5336926 := by
    unfold C
    simp [show (3538944 * k + 1778975) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 5336926) = 5308416 * k + 2668463 := by
    unfold C
    simp [show (10616832 * k + 5336926) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 2668463) = 15925248 * k + 8005390 := by
    unfold C
    simp [show (5308416 * k + 2668463) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 8005390) = 7962624 * k + 4002695 := by
    unfold C
    simp [show (15925248 * k + 8005390) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 4002695) = 23887872 * k + 12008086 := by
    unfold C
    simp [show (7962624 * k + 4002695) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 12008086) = 11943936 * k + 6004043 := by
    unfold C
    simp [show (23887872 * k + 12008086) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 6004043) = 35831808 * k + 18012130 := by
    unfold C
    simp [show (11943936 * k + 6004043) % 2 ≠ 0 by omega]
    omega
  have h14 : C (35831808 * k + 18012130) = 17915904 * k + 9006065 := by
    unfold C
    simp [show (35831808 * k + 18012130) % 2 = 0 by omega]
    omega
  have h15 : C (17915904 * k + 9006065) = 53747712 * k + 27018196 := by
    unfold C
    simp [show (17915904 * k + 9006065) % 2 ≠ 0 by omega]
    omega
  have h16 : C (53747712 * k + 27018196) = 26873856 * k + 13509098 := by
    unfold C
    simp [show (53747712 * k + 27018196) % 2 = 0 by omega]
    omega
  have h17 : C (26873856 * k + 13509098) = 13436928 * k + 6754549 := by
    unfold C
    simp [show (26873856 * k + 13509098) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 6754549) = 40310784 * k + 20263648 := by
    unfold C
    simp [show (13436928 * k + 6754549) % 2 ≠ 0 by omega]
    omega
  have h19 : C (40310784 * k + 20263648) = 20155392 * k + 10131824 := by
    unfold C
    simp [show (40310784 * k + 20263648) % 2 = 0 by omega]
    omega
  have h20 : C (20155392 * k + 10131824) = 10077696 * k + 5065912 := by
    unfold C
    simp [show (20155392 * k + 10131824) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 5065912) = 5038848 * k + 2532956 := by
    unfold C
    simp [show (10077696 * k + 5065912) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 2532956) = 2519424 * k + 1266478 := by
    unfold C
    simp [show (5038848 * k + 2532956) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1266478) = 1259712 * k + 633239 := by
    unfold C
    simp [show (2519424 * k + 1266478) % 2 = 0 by omega]
    omega
  have h24 : C (1259712 * k + 633239) = 3779136 * k + 1899718 := by
    unfold C
    simp [show (1259712 * k + 633239) % 2 ≠ 0 by omega]
    omega
  have h25 : C (3779136 * k + 1899718) = 1889568 * k + 949859 := by
    unfold C
    simp [show (3779136 * k + 1899718) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 949859) = 5668704 * k + 2849578 := by
    unfold C
    simp [show (1889568 * k + 949859) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 2849578) = 2834352 * k + 1424789 := by
    unfold C
    simp [show (5668704 * k + 2849578) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1424789) = 8503056 * k + 4274368 := by
    unfold C
    simp [show (2834352 * k + 1424789) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 4274368) = 4251528 * k + 2137184 := by
    unfold C
    simp [show (8503056 * k + 4274368) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 2137184) = 2125764 * k + 1068592 := by
    unfold C
    simp [show (4251528 * k + 2137184) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1068592) = 1062882 * k + 534296 := by
    unfold C
    simp [show (2125764 * k + 1068592) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 534296) = 531441 * k + 267148 := by
    unfold C
    simp [show (1062882 * k + 534296) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 527103) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 527103)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_527387 : ∀ k : Nat,
    iterate (1048576 * k + 527387) 32 = 531441 * k + 267292 ∧
      531441 * k + 267292 < 1048576 * k + 527387 := by
  intro k
  have h1 : C (1048576 * k + 527387) = 3145728 * k + 1582162 := by
    unfold C
    simp [show (1048576 * k + 527387) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1582162) = 1572864 * k + 791081 := by
    unfold C
    simp [show (3145728 * k + 1582162) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 791081) = 4718592 * k + 2373244 := by
    unfold C
    simp [show (1572864 * k + 791081) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2373244) = 2359296 * k + 1186622 := by
    unfold C
    simp [show (4718592 * k + 2373244) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1186622) = 1179648 * k + 593311 := by
    unfold C
    simp [show (2359296 * k + 1186622) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 593311) = 3538944 * k + 1779934 := by
    unfold C
    simp [show (1179648 * k + 593311) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 1779934) = 1769472 * k + 889967 := by
    unfold C
    simp [show (3538944 * k + 1779934) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 889967) = 5308416 * k + 2669902 := by
    unfold C
    simp [show (1769472 * k + 889967) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 2669902) = 2654208 * k + 1334951 := by
    unfold C
    simp [show (5308416 * k + 2669902) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1334951) = 7962624 * k + 4004854 := by
    unfold C
    simp [show (2654208 * k + 1334951) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 4004854) = 3981312 * k + 2002427 := by
    unfold C
    simp [show (7962624 * k + 4004854) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 2002427) = 11943936 * k + 6007282 := by
    unfold C
    simp [show (3981312 * k + 2002427) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 6007282) = 5971968 * k + 3003641 := by
    unfold C
    simp [show (11943936 * k + 6007282) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 3003641) = 17915904 * k + 9010924 := by
    unfold C
    simp [show (5971968 * k + 3003641) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 9010924) = 8957952 * k + 4505462 := by
    unfold C
    simp [show (17915904 * k + 9010924) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 4505462) = 4478976 * k + 2252731 := by
    unfold C
    simp [show (8957952 * k + 4505462) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 2252731) = 13436928 * k + 6758194 := by
    unfold C
    simp [show (4478976 * k + 2252731) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 6758194) = 6718464 * k + 3379097 := by
    unfold C
    simp [show (13436928 * k + 6758194) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 3379097) = 20155392 * k + 10137292 := by
    unfold C
    simp [show (6718464 * k + 3379097) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 10137292) = 10077696 * k + 5068646 := by
    unfold C
    simp [show (20155392 * k + 10137292) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 5068646) = 5038848 * k + 2534323 := by
    unfold C
    simp [show (10077696 * k + 5068646) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 2534323) = 15116544 * k + 7602970 := by
    unfold C
    simp [show (5038848 * k + 2534323) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 7602970) = 7558272 * k + 3801485 := by
    unfold C
    simp [show (15116544 * k + 7602970) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 3801485) = 22674816 * k + 11404456 := by
    unfold C
    simp [show (7558272 * k + 3801485) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 11404456) = 11337408 * k + 5702228 := by
    unfold C
    simp [show (22674816 * k + 11404456) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 5702228) = 5668704 * k + 2851114 := by
    unfold C
    simp [show (11337408 * k + 5702228) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 2851114) = 2834352 * k + 1425557 := by
    unfold C
    simp [show (5668704 * k + 2851114) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1425557) = 8503056 * k + 4276672 := by
    unfold C
    simp [show (2834352 * k + 1425557) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 4276672) = 4251528 * k + 2138336 := by
    unfold C
    simp [show (8503056 * k + 4276672) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 2138336) = 2125764 * k + 1069168 := by
    unfold C
    simp [show (4251528 * k + 2138336) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1069168) = 1062882 * k + 534584 := by
    unfold C
    simp [show (2125764 * k + 1069168) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 534584) = 531441 * k + 267292 := by
    unfold C
    simp [show (1062882 * k + 534584) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 527387) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 527387)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_527679 : ∀ k : Nat,
    iterate (1048576 * k + 527679) 32 = 531441 * k + 267440 ∧
      531441 * k + 267440 < 1048576 * k + 527679 := by
  intro k
  have h1 : C (1048576 * k + 527679) = 3145728 * k + 1583038 := by
    unfold C
    simp [show (1048576 * k + 527679) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1583038) = 1572864 * k + 791519 := by
    unfold C
    simp [show (3145728 * k + 1583038) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 791519) = 4718592 * k + 2374558 := by
    unfold C
    simp [show (1572864 * k + 791519) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2374558) = 2359296 * k + 1187279 := by
    unfold C
    simp [show (4718592 * k + 2374558) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1187279) = 7077888 * k + 3561838 := by
    unfold C
    simp [show (2359296 * k + 1187279) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 3561838) = 3538944 * k + 1780919 := by
    unfold C
    simp [show (7077888 * k + 3561838) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1780919) = 10616832 * k + 5342758 := by
    unfold C
    simp [show (3538944 * k + 1780919) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 5342758) = 5308416 * k + 2671379 := by
    unfold C
    simp [show (10616832 * k + 5342758) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 2671379) = 15925248 * k + 8014138 := by
    unfold C
    simp [show (5308416 * k + 2671379) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 8014138) = 7962624 * k + 4007069 := by
    unfold C
    simp [show (15925248 * k + 8014138) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 4007069) = 23887872 * k + 12021208 := by
    unfold C
    simp [show (7962624 * k + 4007069) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 12021208) = 11943936 * k + 6010604 := by
    unfold C
    simp [show (23887872 * k + 12021208) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 6010604) = 5971968 * k + 3005302 := by
    unfold C
    simp [show (11943936 * k + 6010604) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 3005302) = 2985984 * k + 1502651 := by
    unfold C
    simp [show (5971968 * k + 3005302) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1502651) = 8957952 * k + 4507954 := by
    unfold C
    simp [show (2985984 * k + 1502651) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 4507954) = 4478976 * k + 2253977 := by
    unfold C
    simp [show (8957952 * k + 4507954) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 2253977) = 13436928 * k + 6761932 := by
    unfold C
    simp [show (4478976 * k + 2253977) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 6761932) = 6718464 * k + 3380966 := by
    unfold C
    simp [show (13436928 * k + 6761932) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 3380966) = 3359232 * k + 1690483 := by
    unfold C
    simp [show (6718464 * k + 3380966) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 1690483) = 10077696 * k + 5071450 := by
    unfold C
    simp [show (3359232 * k + 1690483) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 5071450) = 5038848 * k + 2535725 := by
    unfold C
    simp [show (10077696 * k + 5071450) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 2535725) = 15116544 * k + 7607176 := by
    unfold C
    simp [show (5038848 * k + 2535725) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 7607176) = 7558272 * k + 3803588 := by
    unfold C
    simp [show (15116544 * k + 7607176) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 3803588) = 3779136 * k + 1901794 := by
    unfold C
    simp [show (7558272 * k + 3803588) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 1901794) = 1889568 * k + 950897 := by
    unfold C
    simp [show (3779136 * k + 1901794) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 950897) = 5668704 * k + 2852692 := by
    unfold C
    simp [show (1889568 * k + 950897) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 2852692) = 2834352 * k + 1426346 := by
    unfold C
    simp [show (5668704 * k + 2852692) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1426346) = 1417176 * k + 713173 := by
    unfold C
    simp [show (2834352 * k + 1426346) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 713173) = 4251528 * k + 2139520 := by
    unfold C
    simp [show (1417176 * k + 713173) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 2139520) = 2125764 * k + 1069760 := by
    unfold C
    simp [show (4251528 * k + 2139520) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1069760) = 1062882 * k + 534880 := by
    unfold C
    simp [show (2125764 * k + 1069760) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 534880) = 531441 * k + 267440 := by
    unfold C
    simp [show (1062882 * k + 534880) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 527679) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 527679)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_528239 : ∀ k : Nat,
    iterate (1048576 * k + 528239) 32 = 531441 * k + 267724 ∧
      531441 * k + 267724 < 1048576 * k + 528239 := by
  intro k
  have h1 : C (1048576 * k + 528239) = 3145728 * k + 1584718 := by
    unfold C
    simp [show (1048576 * k + 528239) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1584718) = 1572864 * k + 792359 := by
    unfold C
    simp [show (3145728 * k + 1584718) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 792359) = 4718592 * k + 2377078 := by
    unfold C
    simp [show (1572864 * k + 792359) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2377078) = 2359296 * k + 1188539 := by
    unfold C
    simp [show (4718592 * k + 2377078) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1188539) = 7077888 * k + 3565618 := by
    unfold C
    simp [show (2359296 * k + 1188539) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 3565618) = 3538944 * k + 1782809 := by
    unfold C
    simp [show (7077888 * k + 3565618) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1782809) = 10616832 * k + 5348428 := by
    unfold C
    simp [show (3538944 * k + 1782809) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 5348428) = 5308416 * k + 2674214 := by
    unfold C
    simp [show (10616832 * k + 5348428) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 2674214) = 2654208 * k + 1337107 := by
    unfold C
    simp [show (5308416 * k + 2674214) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1337107) = 7962624 * k + 4011322 := by
    unfold C
    simp [show (2654208 * k + 1337107) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 4011322) = 3981312 * k + 2005661 := by
    unfold C
    simp [show (7962624 * k + 4011322) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 2005661) = 11943936 * k + 6016984 := by
    unfold C
    simp [show (3981312 * k + 2005661) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 6016984) = 5971968 * k + 3008492 := by
    unfold C
    simp [show (11943936 * k + 6016984) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 3008492) = 2985984 * k + 1504246 := by
    unfold C
    simp [show (5971968 * k + 3008492) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1504246) = 1492992 * k + 752123 := by
    unfold C
    simp [show (2985984 * k + 1504246) % 2 = 0 by omega]
    omega
  have h16 : C (1492992 * k + 752123) = 4478976 * k + 2256370 := by
    unfold C
    simp [show (1492992 * k + 752123) % 2 ≠ 0 by omega]
    omega
  have h17 : C (4478976 * k + 2256370) = 2239488 * k + 1128185 := by
    unfold C
    simp [show (4478976 * k + 2256370) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 1128185) = 6718464 * k + 3384556 := by
    unfold C
    simp [show (2239488 * k + 1128185) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 3384556) = 3359232 * k + 1692278 := by
    unfold C
    simp [show (6718464 * k + 3384556) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 1692278) = 1679616 * k + 846139 := by
    unfold C
    simp [show (3359232 * k + 1692278) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 846139) = 5038848 * k + 2538418 := by
    unfold C
    simp [show (1679616 * k + 846139) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 2538418) = 2519424 * k + 1269209 := by
    unfold C
    simp [show (5038848 * k + 2538418) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1269209) = 7558272 * k + 3807628 := by
    unfold C
    simp [show (2519424 * k + 1269209) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 3807628) = 3779136 * k + 1903814 := by
    unfold C
    simp [show (7558272 * k + 3807628) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 1903814) = 1889568 * k + 951907 := by
    unfold C
    simp [show (3779136 * k + 1903814) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 951907) = 5668704 * k + 2855722 := by
    unfold C
    simp [show (1889568 * k + 951907) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 2855722) = 2834352 * k + 1427861 := by
    unfold C
    simp [show (5668704 * k + 2855722) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1427861) = 8503056 * k + 4283584 := by
    unfold C
    simp [show (2834352 * k + 1427861) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 4283584) = 4251528 * k + 2141792 := by
    unfold C
    simp [show (8503056 * k + 4283584) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 2141792) = 2125764 * k + 1070896 := by
    unfold C
    simp [show (4251528 * k + 2141792) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1070896) = 1062882 * k + 535448 := by
    unfold C
    simp [show (2125764 * k + 1070896) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 535448) = 531441 * k + 267724 := by
    unfold C
    simp [show (1062882 * k + 535448) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 528239) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 528239)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_528287 : ∀ k : Nat,
    iterate (1048576 * k + 528287) 32 = 531441 * k + 267748 ∧
      531441 * k + 267748 < 1048576 * k + 528287 := by
  intro k
  have h1 : C (1048576 * k + 528287) = 3145728 * k + 1584862 := by
    unfold C
    simp [show (1048576 * k + 528287) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1584862) = 1572864 * k + 792431 := by
    unfold C
    simp [show (3145728 * k + 1584862) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 792431) = 4718592 * k + 2377294 := by
    unfold C
    simp [show (1572864 * k + 792431) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2377294) = 2359296 * k + 1188647 := by
    unfold C
    simp [show (4718592 * k + 2377294) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1188647) = 7077888 * k + 3565942 := by
    unfold C
    simp [show (2359296 * k + 1188647) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 3565942) = 3538944 * k + 1782971 := by
    unfold C
    simp [show (7077888 * k + 3565942) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1782971) = 10616832 * k + 5348914 := by
    unfold C
    simp [show (3538944 * k + 1782971) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 5348914) = 5308416 * k + 2674457 := by
    unfold C
    simp [show (10616832 * k + 5348914) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 2674457) = 15925248 * k + 8023372 := by
    unfold C
    simp [show (5308416 * k + 2674457) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 8023372) = 7962624 * k + 4011686 := by
    unfold C
    simp [show (15925248 * k + 8023372) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 4011686) = 3981312 * k + 2005843 := by
    unfold C
    simp [show (7962624 * k + 4011686) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 2005843) = 11943936 * k + 6017530 := by
    unfold C
    simp [show (3981312 * k + 2005843) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 6017530) = 5971968 * k + 3008765 := by
    unfold C
    simp [show (11943936 * k + 6017530) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 3008765) = 17915904 * k + 9026296 := by
    unfold C
    simp [show (5971968 * k + 3008765) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 9026296) = 8957952 * k + 4513148 := by
    unfold C
    simp [show (17915904 * k + 9026296) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 4513148) = 4478976 * k + 2256574 := by
    unfold C
    simp [show (8957952 * k + 4513148) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 2256574) = 2239488 * k + 1128287 := by
    unfold C
    simp [show (4478976 * k + 2256574) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 1128287) = 6718464 * k + 3384862 := by
    unfold C
    simp [show (2239488 * k + 1128287) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 3384862) = 3359232 * k + 1692431 := by
    unfold C
    simp [show (6718464 * k + 3384862) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 1692431) = 10077696 * k + 5077294 := by
    unfold C
    simp [show (3359232 * k + 1692431) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 5077294) = 5038848 * k + 2538647 := by
    unfold C
    simp [show (10077696 * k + 5077294) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 2538647) = 15116544 * k + 7615942 := by
    unfold C
    simp [show (5038848 * k + 2538647) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 7615942) = 7558272 * k + 3807971 := by
    unfold C
    simp [show (15116544 * k + 7615942) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 3807971) = 22674816 * k + 11423914 := by
    unfold C
    simp [show (7558272 * k + 3807971) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 11423914) = 11337408 * k + 5711957 := by
    unfold C
    simp [show (22674816 * k + 11423914) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 5711957) = 34012224 * k + 17135872 := by
    unfold C
    simp [show (11337408 * k + 5711957) % 2 ≠ 0 by omega]
    omega
  have h27 : C (34012224 * k + 17135872) = 17006112 * k + 8567936 := by
    unfold C
    simp [show (34012224 * k + 17135872) % 2 = 0 by omega]
    omega
  have h28 : C (17006112 * k + 8567936) = 8503056 * k + 4283968 := by
    unfold C
    simp [show (17006112 * k + 8567936) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 4283968) = 4251528 * k + 2141984 := by
    unfold C
    simp [show (8503056 * k + 4283968) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 2141984) = 2125764 * k + 1070992 := by
    unfold C
    simp [show (4251528 * k + 2141984) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1070992) = 1062882 * k + 535496 := by
    unfold C
    simp [show (2125764 * k + 1070992) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 535496) = 531441 * k + 267748 := by
    unfold C
    simp [show (1062882 * k + 535496) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 528287) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 528287)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_529023 : ∀ k : Nat,
    iterate (1048576 * k + 529023) 32 = 531441 * k + 268121 ∧
      531441 * k + 268121 < 1048576 * k + 529023 := by
  intro k
  have h1 : C (1048576 * k + 529023) = 3145728 * k + 1587070 := by
    unfold C
    simp [show (1048576 * k + 529023) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1587070) = 1572864 * k + 793535 := by
    unfold C
    simp [show (3145728 * k + 1587070) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 793535) = 4718592 * k + 2380606 := by
    unfold C
    simp [show (1572864 * k + 793535) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2380606) = 2359296 * k + 1190303 := by
    unfold C
    simp [show (4718592 * k + 2380606) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1190303) = 7077888 * k + 3570910 := by
    unfold C
    simp [show (2359296 * k + 1190303) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 3570910) = 3538944 * k + 1785455 := by
    unfold C
    simp [show (7077888 * k + 3570910) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1785455) = 10616832 * k + 5356366 := by
    unfold C
    simp [show (3538944 * k + 1785455) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 5356366) = 5308416 * k + 2678183 := by
    unfold C
    simp [show (10616832 * k + 5356366) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 2678183) = 15925248 * k + 8034550 := by
    unfold C
    simp [show (5308416 * k + 2678183) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 8034550) = 7962624 * k + 4017275 := by
    unfold C
    simp [show (15925248 * k + 8034550) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 4017275) = 23887872 * k + 12051826 := by
    unfold C
    simp [show (7962624 * k + 4017275) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 12051826) = 11943936 * k + 6025913 := by
    unfold C
    simp [show (23887872 * k + 12051826) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 6025913) = 35831808 * k + 18077740 := by
    unfold C
    simp [show (11943936 * k + 6025913) % 2 ≠ 0 by omega]
    omega
  have h14 : C (35831808 * k + 18077740) = 17915904 * k + 9038870 := by
    unfold C
    simp [show (35831808 * k + 18077740) % 2 = 0 by omega]
    omega
  have h15 : C (17915904 * k + 9038870) = 8957952 * k + 4519435 := by
    unfold C
    simp [show (17915904 * k + 9038870) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 4519435) = 26873856 * k + 13558306 := by
    unfold C
    simp [show (8957952 * k + 4519435) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 13558306) = 13436928 * k + 6779153 := by
    unfold C
    simp [show (26873856 * k + 13558306) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 6779153) = 40310784 * k + 20337460 := by
    unfold C
    simp [show (13436928 * k + 6779153) % 2 ≠ 0 by omega]
    omega
  have h19 : C (40310784 * k + 20337460) = 20155392 * k + 10168730 := by
    unfold C
    simp [show (40310784 * k + 20337460) % 2 = 0 by omega]
    omega
  have h20 : C (20155392 * k + 10168730) = 10077696 * k + 5084365 := by
    unfold C
    simp [show (20155392 * k + 10168730) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 5084365) = 30233088 * k + 15253096 := by
    unfold C
    simp [show (10077696 * k + 5084365) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 15253096) = 15116544 * k + 7626548 := by
    unfold C
    simp [show (30233088 * k + 15253096) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 7626548) = 7558272 * k + 3813274 := by
    unfold C
    simp [show (15116544 * k + 7626548) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 3813274) = 3779136 * k + 1906637 := by
    unfold C
    simp [show (7558272 * k + 3813274) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 1906637) = 11337408 * k + 5719912 := by
    unfold C
    simp [show (3779136 * k + 1906637) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 5719912) = 5668704 * k + 2859956 := by
    unfold C
    simp [show (11337408 * k + 5719912) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 2859956) = 2834352 * k + 1429978 := by
    unfold C
    simp [show (5668704 * k + 2859956) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1429978) = 1417176 * k + 714989 := by
    unfold C
    simp [show (2834352 * k + 1429978) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 714989) = 4251528 * k + 2144968 := by
    unfold C
    simp [show (1417176 * k + 714989) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 2144968) = 2125764 * k + 1072484 := by
    unfold C
    simp [show (4251528 * k + 2144968) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1072484) = 1062882 * k + 536242 := by
    unfold C
    simp [show (2125764 * k + 1072484) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 536242) = 531441 * k + 268121 := by
    unfold C
    simp [show (1062882 * k + 536242) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 529023) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 529023)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_529127 : ∀ k : Nat,
    iterate (1048576 * k + 529127) 32 = 531441 * k + 268174 ∧
      531441 * k + 268174 < 1048576 * k + 529127 := by
  intro k
  have h1 : C (1048576 * k + 529127) = 3145728 * k + 1587382 := by
    unfold C
    simp [show (1048576 * k + 529127) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1587382) = 1572864 * k + 793691 := by
    unfold C
    simp [show (3145728 * k + 1587382) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 793691) = 4718592 * k + 2381074 := by
    unfold C
    simp [show (1572864 * k + 793691) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2381074) = 2359296 * k + 1190537 := by
    unfold C
    simp [show (4718592 * k + 2381074) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1190537) = 7077888 * k + 3571612 := by
    unfold C
    simp [show (2359296 * k + 1190537) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 3571612) = 3538944 * k + 1785806 := by
    unfold C
    simp [show (7077888 * k + 3571612) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1785806) = 1769472 * k + 892903 := by
    unfold C
    simp [show (3538944 * k + 1785806) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 892903) = 5308416 * k + 2678710 := by
    unfold C
    simp [show (1769472 * k + 892903) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 2678710) = 2654208 * k + 1339355 := by
    unfold C
    simp [show (5308416 * k + 2678710) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1339355) = 7962624 * k + 4018066 := by
    unfold C
    simp [show (2654208 * k + 1339355) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 4018066) = 3981312 * k + 2009033 := by
    unfold C
    simp [show (7962624 * k + 4018066) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 2009033) = 11943936 * k + 6027100 := by
    unfold C
    simp [show (3981312 * k + 2009033) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 6027100) = 5971968 * k + 3013550 := by
    unfold C
    simp [show (11943936 * k + 6027100) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 3013550) = 2985984 * k + 1506775 := by
    unfold C
    simp [show (5971968 * k + 3013550) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1506775) = 8957952 * k + 4520326 := by
    unfold C
    simp [show (2985984 * k + 1506775) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 4520326) = 4478976 * k + 2260163 := by
    unfold C
    simp [show (8957952 * k + 4520326) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 2260163) = 13436928 * k + 6780490 := by
    unfold C
    simp [show (4478976 * k + 2260163) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 6780490) = 6718464 * k + 3390245 := by
    unfold C
    simp [show (13436928 * k + 6780490) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 3390245) = 20155392 * k + 10170736 := by
    unfold C
    simp [show (6718464 * k + 3390245) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 10170736) = 10077696 * k + 5085368 := by
    unfold C
    simp [show (20155392 * k + 10170736) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 5085368) = 5038848 * k + 2542684 := by
    unfold C
    simp [show (10077696 * k + 5085368) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 2542684) = 2519424 * k + 1271342 := by
    unfold C
    simp [show (5038848 * k + 2542684) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1271342) = 1259712 * k + 635671 := by
    unfold C
    simp [show (2519424 * k + 1271342) % 2 = 0 by omega]
    omega
  have h24 : C (1259712 * k + 635671) = 3779136 * k + 1907014 := by
    unfold C
    simp [show (1259712 * k + 635671) % 2 ≠ 0 by omega]
    omega
  have h25 : C (3779136 * k + 1907014) = 1889568 * k + 953507 := by
    unfold C
    simp [show (3779136 * k + 1907014) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 953507) = 5668704 * k + 2860522 := by
    unfold C
    simp [show (1889568 * k + 953507) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 2860522) = 2834352 * k + 1430261 := by
    unfold C
    simp [show (5668704 * k + 2860522) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1430261) = 8503056 * k + 4290784 := by
    unfold C
    simp [show (2834352 * k + 1430261) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 4290784) = 4251528 * k + 2145392 := by
    unfold C
    simp [show (8503056 * k + 4290784) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 2145392) = 2125764 * k + 1072696 := by
    unfold C
    simp [show (4251528 * k + 2145392) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1072696) = 1062882 * k + 536348 := by
    unfold C
    simp [show (2125764 * k + 1072696) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 536348) = 531441 * k + 268174 := by
    unfold C
    simp [show (1062882 * k + 536348) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 529127) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 529127)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_530023 : ∀ k : Nat,
    iterate (1048576 * k + 530023) 32 = 531441 * k + 268628 ∧
      531441 * k + 268628 < 1048576 * k + 530023 := by
  intro k
  have h1 : C (1048576 * k + 530023) = 3145728 * k + 1590070 := by
    unfold C
    simp [show (1048576 * k + 530023) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1590070) = 1572864 * k + 795035 := by
    unfold C
    simp [show (3145728 * k + 1590070) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 795035) = 4718592 * k + 2385106 := by
    unfold C
    simp [show (1572864 * k + 795035) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2385106) = 2359296 * k + 1192553 := by
    unfold C
    simp [show (4718592 * k + 2385106) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1192553) = 7077888 * k + 3577660 := by
    unfold C
    simp [show (2359296 * k + 1192553) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 3577660) = 3538944 * k + 1788830 := by
    unfold C
    simp [show (7077888 * k + 3577660) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1788830) = 1769472 * k + 894415 := by
    unfold C
    simp [show (3538944 * k + 1788830) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 894415) = 5308416 * k + 2683246 := by
    unfold C
    simp [show (1769472 * k + 894415) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 2683246) = 2654208 * k + 1341623 := by
    unfold C
    simp [show (5308416 * k + 2683246) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1341623) = 7962624 * k + 4024870 := by
    unfold C
    simp [show (2654208 * k + 1341623) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 4024870) = 3981312 * k + 2012435 := by
    unfold C
    simp [show (7962624 * k + 4024870) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 2012435) = 11943936 * k + 6037306 := by
    unfold C
    simp [show (3981312 * k + 2012435) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 6037306) = 5971968 * k + 3018653 := by
    unfold C
    simp [show (11943936 * k + 6037306) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 3018653) = 17915904 * k + 9055960 := by
    unfold C
    simp [show (5971968 * k + 3018653) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 9055960) = 8957952 * k + 4527980 := by
    unfold C
    simp [show (17915904 * k + 9055960) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 4527980) = 4478976 * k + 2263990 := by
    unfold C
    simp [show (8957952 * k + 4527980) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 2263990) = 2239488 * k + 1131995 := by
    unfold C
    simp [show (4478976 * k + 2263990) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 1131995) = 6718464 * k + 3395986 := by
    unfold C
    simp [show (2239488 * k + 1131995) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 3395986) = 3359232 * k + 1697993 := by
    unfold C
    simp [show (6718464 * k + 3395986) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 1697993) = 10077696 * k + 5093980 := by
    unfold C
    simp [show (3359232 * k + 1697993) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 5093980) = 5038848 * k + 2546990 := by
    unfold C
    simp [show (10077696 * k + 5093980) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 2546990) = 2519424 * k + 1273495 := by
    unfold C
    simp [show (5038848 * k + 2546990) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1273495) = 7558272 * k + 3820486 := by
    unfold C
    simp [show (2519424 * k + 1273495) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 3820486) = 3779136 * k + 1910243 := by
    unfold C
    simp [show (7558272 * k + 3820486) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 1910243) = 11337408 * k + 5730730 := by
    unfold C
    simp [show (3779136 * k + 1910243) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 5730730) = 5668704 * k + 2865365 := by
    unfold C
    simp [show (11337408 * k + 5730730) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 2865365) = 17006112 * k + 8596096 := by
    unfold C
    simp [show (5668704 * k + 2865365) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 8596096) = 8503056 * k + 4298048 := by
    unfold C
    simp [show (17006112 * k + 8596096) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 4298048) = 4251528 * k + 2149024 := by
    unfold C
    simp [show (8503056 * k + 4298048) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 2149024) = 2125764 * k + 1074512 := by
    unfold C
    simp [show (4251528 * k + 2149024) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1074512) = 1062882 * k + 537256 := by
    unfold C
    simp [show (2125764 * k + 1074512) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 537256) = 531441 * k + 268628 := by
    unfold C
    simp [show (1062882 * k + 537256) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 530023) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 530023)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_530715 : ∀ k : Nat,
    iterate (1048576 * k + 530715) 32 = 531441 * k + 268979 ∧
      531441 * k + 268979 < 1048576 * k + 530715 := by
  intro k
  have h1 : C (1048576 * k + 530715) = 3145728 * k + 1592146 := by
    unfold C
    simp [show (1048576 * k + 530715) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1592146) = 1572864 * k + 796073 := by
    unfold C
    simp [show (3145728 * k + 1592146) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 796073) = 4718592 * k + 2388220 := by
    unfold C
    simp [show (1572864 * k + 796073) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2388220) = 2359296 * k + 1194110 := by
    unfold C
    simp [show (4718592 * k + 2388220) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1194110) = 1179648 * k + 597055 := by
    unfold C
    simp [show (2359296 * k + 1194110) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 597055) = 3538944 * k + 1791166 := by
    unfold C
    simp [show (1179648 * k + 597055) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 1791166) = 1769472 * k + 895583 := by
    unfold C
    simp [show (3538944 * k + 1791166) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 895583) = 5308416 * k + 2686750 := by
    unfold C
    simp [show (1769472 * k + 895583) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 2686750) = 2654208 * k + 1343375 := by
    unfold C
    simp [show (5308416 * k + 2686750) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1343375) = 7962624 * k + 4030126 := by
    unfold C
    simp [show (2654208 * k + 1343375) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 4030126) = 3981312 * k + 2015063 := by
    unfold C
    simp [show (7962624 * k + 4030126) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 2015063) = 11943936 * k + 6045190 := by
    unfold C
    simp [show (3981312 * k + 2015063) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 6045190) = 5971968 * k + 3022595 := by
    unfold C
    simp [show (11943936 * k + 6045190) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 3022595) = 17915904 * k + 9067786 := by
    unfold C
    simp [show (5971968 * k + 3022595) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 9067786) = 8957952 * k + 4533893 := by
    unfold C
    simp [show (17915904 * k + 9067786) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 4533893) = 26873856 * k + 13601680 := by
    unfold C
    simp [show (8957952 * k + 4533893) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 13601680) = 13436928 * k + 6800840 := by
    unfold C
    simp [show (26873856 * k + 13601680) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 6800840) = 6718464 * k + 3400420 := by
    unfold C
    simp [show (13436928 * k + 6800840) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 3400420) = 3359232 * k + 1700210 := by
    unfold C
    simp [show (6718464 * k + 3400420) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 1700210) = 1679616 * k + 850105 := by
    unfold C
    simp [show (3359232 * k + 1700210) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 850105) = 5038848 * k + 2550316 := by
    unfold C
    simp [show (1679616 * k + 850105) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 2550316) = 2519424 * k + 1275158 := by
    unfold C
    simp [show (5038848 * k + 2550316) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1275158) = 1259712 * k + 637579 := by
    unfold C
    simp [show (2519424 * k + 1275158) % 2 = 0 by omega]
    omega
  have h24 : C (1259712 * k + 637579) = 3779136 * k + 1912738 := by
    unfold C
    simp [show (1259712 * k + 637579) % 2 ≠ 0 by omega]
    omega
  have h25 : C (3779136 * k + 1912738) = 1889568 * k + 956369 := by
    unfold C
    simp [show (3779136 * k + 1912738) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 956369) = 5668704 * k + 2869108 := by
    unfold C
    simp [show (1889568 * k + 956369) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 2869108) = 2834352 * k + 1434554 := by
    unfold C
    simp [show (5668704 * k + 2869108) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1434554) = 1417176 * k + 717277 := by
    unfold C
    simp [show (2834352 * k + 1434554) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 717277) = 4251528 * k + 2151832 := by
    unfold C
    simp [show (1417176 * k + 717277) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 2151832) = 2125764 * k + 1075916 := by
    unfold C
    simp [show (4251528 * k + 2151832) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1075916) = 1062882 * k + 537958 := by
    unfold C
    simp [show (2125764 * k + 1075916) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 537958) = 531441 * k + 268979 := by
    unfold C
    simp [show (1062882 * k + 537958) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 530715) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 530715)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_530911 : ∀ k : Nat,
    iterate (1048576 * k + 530911) 32 = 531441 * k + 269078 ∧
      531441 * k + 269078 < 1048576 * k + 530911 := by
  intro k
  have h1 : C (1048576 * k + 530911) = 3145728 * k + 1592734 := by
    unfold C
    simp [show (1048576 * k + 530911) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1592734) = 1572864 * k + 796367 := by
    unfold C
    simp [show (3145728 * k + 1592734) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 796367) = 4718592 * k + 2389102 := by
    unfold C
    simp [show (1572864 * k + 796367) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2389102) = 2359296 * k + 1194551 := by
    unfold C
    simp [show (4718592 * k + 2389102) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1194551) = 7077888 * k + 3583654 := by
    unfold C
    simp [show (2359296 * k + 1194551) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 3583654) = 3538944 * k + 1791827 := by
    unfold C
    simp [show (7077888 * k + 3583654) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1791827) = 10616832 * k + 5375482 := by
    unfold C
    simp [show (3538944 * k + 1791827) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 5375482) = 5308416 * k + 2687741 := by
    unfold C
    simp [show (10616832 * k + 5375482) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 2687741) = 15925248 * k + 8063224 := by
    unfold C
    simp [show (5308416 * k + 2687741) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 8063224) = 7962624 * k + 4031612 := by
    unfold C
    simp [show (15925248 * k + 8063224) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 4031612) = 3981312 * k + 2015806 := by
    unfold C
    simp [show (7962624 * k + 4031612) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 2015806) = 1990656 * k + 1007903 := by
    unfold C
    simp [show (3981312 * k + 2015806) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 1007903) = 5971968 * k + 3023710 := by
    unfold C
    simp [show (1990656 * k + 1007903) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 3023710) = 2985984 * k + 1511855 := by
    unfold C
    simp [show (5971968 * k + 3023710) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1511855) = 8957952 * k + 4535566 := by
    unfold C
    simp [show (2985984 * k + 1511855) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 4535566) = 4478976 * k + 2267783 := by
    unfold C
    simp [show (8957952 * k + 4535566) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 2267783) = 13436928 * k + 6803350 := by
    unfold C
    simp [show (4478976 * k + 2267783) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 6803350) = 6718464 * k + 3401675 := by
    unfold C
    simp [show (13436928 * k + 6803350) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 3401675) = 20155392 * k + 10205026 := by
    unfold C
    simp [show (6718464 * k + 3401675) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 10205026) = 10077696 * k + 5102513 := by
    unfold C
    simp [show (20155392 * k + 10205026) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 5102513) = 30233088 * k + 15307540 := by
    unfold C
    simp [show (10077696 * k + 5102513) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 15307540) = 15116544 * k + 7653770 := by
    unfold C
    simp [show (30233088 * k + 15307540) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 7653770) = 7558272 * k + 3826885 := by
    unfold C
    simp [show (15116544 * k + 7653770) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 3826885) = 22674816 * k + 11480656 := by
    unfold C
    simp [show (7558272 * k + 3826885) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 11480656) = 11337408 * k + 5740328 := by
    unfold C
    simp [show (22674816 * k + 11480656) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 5740328) = 5668704 * k + 2870164 := by
    unfold C
    simp [show (11337408 * k + 5740328) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 2870164) = 2834352 * k + 1435082 := by
    unfold C
    simp [show (5668704 * k + 2870164) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1435082) = 1417176 * k + 717541 := by
    unfold C
    simp [show (2834352 * k + 1435082) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 717541) = 4251528 * k + 2152624 := by
    unfold C
    simp [show (1417176 * k + 717541) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 2152624) = 2125764 * k + 1076312 := by
    unfold C
    simp [show (4251528 * k + 2152624) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1076312) = 1062882 * k + 538156 := by
    unfold C
    simp [show (2125764 * k + 1076312) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 538156) = 531441 * k + 269078 := by
    unfold C
    simp [show (1062882 * k + 538156) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 530911) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 530911)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_531483 : ∀ k : Nat,
    iterate (1048576 * k + 531483) 32 = 531441 * k + 269368 ∧
      531441 * k + 269368 < 1048576 * k + 531483 := by
  intro k
  have h1 : C (1048576 * k + 531483) = 3145728 * k + 1594450 := by
    unfold C
    simp [show (1048576 * k + 531483) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1594450) = 1572864 * k + 797225 := by
    unfold C
    simp [show (3145728 * k + 1594450) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 797225) = 4718592 * k + 2391676 := by
    unfold C
    simp [show (1572864 * k + 797225) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2391676) = 2359296 * k + 1195838 := by
    unfold C
    simp [show (4718592 * k + 2391676) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1195838) = 1179648 * k + 597919 := by
    unfold C
    simp [show (2359296 * k + 1195838) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 597919) = 3538944 * k + 1793758 := by
    unfold C
    simp [show (1179648 * k + 597919) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 1793758) = 1769472 * k + 896879 := by
    unfold C
    simp [show (3538944 * k + 1793758) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 896879) = 5308416 * k + 2690638 := by
    unfold C
    simp [show (1769472 * k + 896879) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 2690638) = 2654208 * k + 1345319 := by
    unfold C
    simp [show (5308416 * k + 2690638) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1345319) = 7962624 * k + 4035958 := by
    unfold C
    simp [show (2654208 * k + 1345319) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 4035958) = 3981312 * k + 2017979 := by
    unfold C
    simp [show (7962624 * k + 4035958) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 2017979) = 11943936 * k + 6053938 := by
    unfold C
    simp [show (3981312 * k + 2017979) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 6053938) = 5971968 * k + 3026969 := by
    unfold C
    simp [show (11943936 * k + 6053938) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 3026969) = 17915904 * k + 9080908 := by
    unfold C
    simp [show (5971968 * k + 3026969) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 9080908) = 8957952 * k + 4540454 := by
    unfold C
    simp [show (17915904 * k + 9080908) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 4540454) = 4478976 * k + 2270227 := by
    unfold C
    simp [show (8957952 * k + 4540454) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 2270227) = 13436928 * k + 6810682 := by
    unfold C
    simp [show (4478976 * k + 2270227) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 6810682) = 6718464 * k + 3405341 := by
    unfold C
    simp [show (13436928 * k + 6810682) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 3405341) = 20155392 * k + 10216024 := by
    unfold C
    simp [show (6718464 * k + 3405341) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 10216024) = 10077696 * k + 5108012 := by
    unfold C
    simp [show (20155392 * k + 10216024) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 5108012) = 5038848 * k + 2554006 := by
    unfold C
    simp [show (10077696 * k + 5108012) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 2554006) = 2519424 * k + 1277003 := by
    unfold C
    simp [show (5038848 * k + 2554006) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1277003) = 7558272 * k + 3831010 := by
    unfold C
    simp [show (2519424 * k + 1277003) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 3831010) = 3779136 * k + 1915505 := by
    unfold C
    simp [show (7558272 * k + 3831010) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 1915505) = 11337408 * k + 5746516 := by
    unfold C
    simp [show (3779136 * k + 1915505) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 5746516) = 5668704 * k + 2873258 := by
    unfold C
    simp [show (11337408 * k + 5746516) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 2873258) = 2834352 * k + 1436629 := by
    unfold C
    simp [show (5668704 * k + 2873258) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1436629) = 8503056 * k + 4309888 := by
    unfold C
    simp [show (2834352 * k + 1436629) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 4309888) = 4251528 * k + 2154944 := by
    unfold C
    simp [show (8503056 * k + 4309888) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 2154944) = 2125764 * k + 1077472 := by
    unfold C
    simp [show (4251528 * k + 2154944) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1077472) = 1062882 * k + 538736 := by
    unfold C
    simp [show (2125764 * k + 1077472) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 538736) = 531441 * k + 269368 := by
    unfold C
    simp [show (1062882 * k + 538736) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 531483) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 531483)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_532207 : ∀ k : Nat,
    iterate (1048576 * k + 532207) 32 = 531441 * k + 269735 ∧
      531441 * k + 269735 < 1048576 * k + 532207 := by
  intro k
  have h1 : C (1048576 * k + 532207) = 3145728 * k + 1596622 := by
    unfold C
    simp [show (1048576 * k + 532207) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1596622) = 1572864 * k + 798311 := by
    unfold C
    simp [show (3145728 * k + 1596622) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 798311) = 4718592 * k + 2394934 := by
    unfold C
    simp [show (1572864 * k + 798311) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2394934) = 2359296 * k + 1197467 := by
    unfold C
    simp [show (4718592 * k + 2394934) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1197467) = 7077888 * k + 3592402 := by
    unfold C
    simp [show (2359296 * k + 1197467) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 3592402) = 3538944 * k + 1796201 := by
    unfold C
    simp [show (7077888 * k + 3592402) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1796201) = 10616832 * k + 5388604 := by
    unfold C
    simp [show (3538944 * k + 1796201) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 5388604) = 5308416 * k + 2694302 := by
    unfold C
    simp [show (10616832 * k + 5388604) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 2694302) = 2654208 * k + 1347151 := by
    unfold C
    simp [show (5308416 * k + 2694302) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1347151) = 7962624 * k + 4041454 := by
    unfold C
    simp [show (2654208 * k + 1347151) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 4041454) = 3981312 * k + 2020727 := by
    unfold C
    simp [show (7962624 * k + 4041454) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 2020727) = 11943936 * k + 6062182 := by
    unfold C
    simp [show (3981312 * k + 2020727) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 6062182) = 5971968 * k + 3031091 := by
    unfold C
    simp [show (11943936 * k + 6062182) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 3031091) = 17915904 * k + 9093274 := by
    unfold C
    simp [show (5971968 * k + 3031091) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 9093274) = 8957952 * k + 4546637 := by
    unfold C
    simp [show (17915904 * k + 9093274) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 4546637) = 26873856 * k + 13639912 := by
    unfold C
    simp [show (8957952 * k + 4546637) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 13639912) = 13436928 * k + 6819956 := by
    unfold C
    simp [show (26873856 * k + 13639912) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 6819956) = 6718464 * k + 3409978 := by
    unfold C
    simp [show (13436928 * k + 6819956) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 3409978) = 3359232 * k + 1704989 := by
    unfold C
    simp [show (6718464 * k + 3409978) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 1704989) = 10077696 * k + 5114968 := by
    unfold C
    simp [show (3359232 * k + 1704989) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 5114968) = 5038848 * k + 2557484 := by
    unfold C
    simp [show (10077696 * k + 5114968) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 2557484) = 2519424 * k + 1278742 := by
    unfold C
    simp [show (5038848 * k + 2557484) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1278742) = 1259712 * k + 639371 := by
    unfold C
    simp [show (2519424 * k + 1278742) % 2 = 0 by omega]
    omega
  have h24 : C (1259712 * k + 639371) = 3779136 * k + 1918114 := by
    unfold C
    simp [show (1259712 * k + 639371) % 2 ≠ 0 by omega]
    omega
  have h25 : C (3779136 * k + 1918114) = 1889568 * k + 959057 := by
    unfold C
    simp [show (3779136 * k + 1918114) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 959057) = 5668704 * k + 2877172 := by
    unfold C
    simp [show (1889568 * k + 959057) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 2877172) = 2834352 * k + 1438586 := by
    unfold C
    simp [show (5668704 * k + 2877172) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1438586) = 1417176 * k + 719293 := by
    unfold C
    simp [show (2834352 * k + 1438586) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 719293) = 4251528 * k + 2157880 := by
    unfold C
    simp [show (1417176 * k + 719293) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 2157880) = 2125764 * k + 1078940 := by
    unfold C
    simp [show (4251528 * k + 2157880) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1078940) = 1062882 * k + 539470 := by
    unfold C
    simp [show (2125764 * k + 1078940) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 539470) = 531441 * k + 269735 := by
    unfold C
    simp [show (1062882 * k + 539470) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 532207) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 532207)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

end CollatzM20Shard068
