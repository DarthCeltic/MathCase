import Mathlib.Data.Nat.Prime.Basic

namespace CollatzM20Shard116

def C (n : Nat) : Nat := if n % 2 = 0 then n / 2 else 3 * n + 1

def iterate (n t : Nat) : Nat := Nat.rec n (fun _ previous => C previous) t

theorem descent_mod1048576_906367 : ∀ k : Nat,
    iterate (1048576 * k + 906367) 32 = 531441 * k + 459367 ∧
      531441 * k + 459367 < 1048576 * k + 906367 := by
  intro k
  have h1 : C (1048576 * k + 906367) = 3145728 * k + 2719102 := by
    unfold C
    simp [show (1048576 * k + 906367) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2719102) = 1572864 * k + 1359551 := by
    unfold C
    simp [show (3145728 * k + 2719102) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1359551) = 4718592 * k + 4078654 := by
    unfold C
    simp [show (1572864 * k + 1359551) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 4078654) = 2359296 * k + 2039327 := by
    unfold C
    simp [show (4718592 * k + 4078654) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 2039327) = 7077888 * k + 6117982 := by
    unfold C
    simp [show (2359296 * k + 2039327) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 6117982) = 3538944 * k + 3058991 := by
    unfold C
    simp [show (7077888 * k + 6117982) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 3058991) = 10616832 * k + 9176974 := by
    unfold C
    simp [show (3538944 * k + 3058991) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 9176974) = 5308416 * k + 4588487 := by
    unfold C
    simp [show (10616832 * k + 9176974) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 4588487) = 15925248 * k + 13765462 := by
    unfold C
    simp [show (5308416 * k + 4588487) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 13765462) = 7962624 * k + 6882731 := by
    unfold C
    simp [show (15925248 * k + 13765462) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 6882731) = 23887872 * k + 20648194 := by
    unfold C
    simp [show (7962624 * k + 6882731) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 20648194) = 11943936 * k + 10324097 := by
    unfold C
    simp [show (23887872 * k + 20648194) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 10324097) = 35831808 * k + 30972292 := by
    unfold C
    simp [show (11943936 * k + 10324097) % 2 ≠ 0 by omega]
    omega
  have h14 : C (35831808 * k + 30972292) = 17915904 * k + 15486146 := by
    unfold C
    simp [show (35831808 * k + 30972292) % 2 = 0 by omega]
    omega
  have h15 : C (17915904 * k + 15486146) = 8957952 * k + 7743073 := by
    unfold C
    simp [show (17915904 * k + 15486146) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 7743073) = 26873856 * k + 23229220 := by
    unfold C
    simp [show (8957952 * k + 7743073) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 23229220) = 13436928 * k + 11614610 := by
    unfold C
    simp [show (26873856 * k + 23229220) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 11614610) = 6718464 * k + 5807305 := by
    unfold C
    simp [show (13436928 * k + 11614610) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 5807305) = 20155392 * k + 17421916 := by
    unfold C
    simp [show (6718464 * k + 5807305) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 17421916) = 10077696 * k + 8710958 := by
    unfold C
    simp [show (20155392 * k + 17421916) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 8710958) = 5038848 * k + 4355479 := by
    unfold C
    simp [show (10077696 * k + 8710958) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 4355479) = 15116544 * k + 13066438 := by
    unfold C
    simp [show (5038848 * k + 4355479) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 13066438) = 7558272 * k + 6533219 := by
    unfold C
    simp [show (15116544 * k + 13066438) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 6533219) = 22674816 * k + 19599658 := by
    unfold C
    simp [show (7558272 * k + 6533219) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 19599658) = 11337408 * k + 9799829 := by
    unfold C
    simp [show (22674816 * k + 19599658) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 9799829) = 34012224 * k + 29399488 := by
    unfold C
    simp [show (11337408 * k + 9799829) % 2 ≠ 0 by omega]
    omega
  have h27 : C (34012224 * k + 29399488) = 17006112 * k + 14699744 := by
    unfold C
    simp [show (34012224 * k + 29399488) % 2 = 0 by omega]
    omega
  have h28 : C (17006112 * k + 14699744) = 8503056 * k + 7349872 := by
    unfold C
    simp [show (17006112 * k + 14699744) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 7349872) = 4251528 * k + 3674936 := by
    unfold C
    simp [show (8503056 * k + 7349872) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 3674936) = 2125764 * k + 1837468 := by
    unfold C
    simp [show (4251528 * k + 3674936) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1837468) = 1062882 * k + 918734 := by
    unfold C
    simp [show (2125764 * k + 1837468) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 918734) = 531441 * k + 459367 := by
    unfold C
    simp [show (1062882 * k + 918734) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 906367) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 906367)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_906623 : ∀ k : Nat,
    iterate (1048576 * k + 906623) 32 = 531441 * k + 459497 ∧
      531441 * k + 459497 < 1048576 * k + 906623 := by
  intro k
  have h1 : C (1048576 * k + 906623) = 3145728 * k + 2719870 := by
    unfold C
    simp [show (1048576 * k + 906623) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2719870) = 1572864 * k + 1359935 := by
    unfold C
    simp [show (3145728 * k + 2719870) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1359935) = 4718592 * k + 4079806 := by
    unfold C
    simp [show (1572864 * k + 1359935) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 4079806) = 2359296 * k + 2039903 := by
    unfold C
    simp [show (4718592 * k + 4079806) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 2039903) = 7077888 * k + 6119710 := by
    unfold C
    simp [show (2359296 * k + 2039903) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 6119710) = 3538944 * k + 3059855 := by
    unfold C
    simp [show (7077888 * k + 6119710) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 3059855) = 10616832 * k + 9179566 := by
    unfold C
    simp [show (3538944 * k + 3059855) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 9179566) = 5308416 * k + 4589783 := by
    unfold C
    simp [show (10616832 * k + 9179566) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 4589783) = 15925248 * k + 13769350 := by
    unfold C
    simp [show (5308416 * k + 4589783) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 13769350) = 7962624 * k + 6884675 := by
    unfold C
    simp [show (15925248 * k + 13769350) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 6884675) = 23887872 * k + 20654026 := by
    unfold C
    simp [show (7962624 * k + 6884675) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 20654026) = 11943936 * k + 10327013 := by
    unfold C
    simp [show (23887872 * k + 20654026) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 10327013) = 35831808 * k + 30981040 := by
    unfold C
    simp [show (11943936 * k + 10327013) % 2 ≠ 0 by omega]
    omega
  have h14 : C (35831808 * k + 30981040) = 17915904 * k + 15490520 := by
    unfold C
    simp [show (35831808 * k + 30981040) % 2 = 0 by omega]
    omega
  have h15 : C (17915904 * k + 15490520) = 8957952 * k + 7745260 := by
    unfold C
    simp [show (17915904 * k + 15490520) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 7745260) = 4478976 * k + 3872630 := by
    unfold C
    simp [show (8957952 * k + 7745260) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 3872630) = 2239488 * k + 1936315 := by
    unfold C
    simp [show (4478976 * k + 3872630) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 1936315) = 6718464 * k + 5808946 := by
    unfold C
    simp [show (2239488 * k + 1936315) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 5808946) = 3359232 * k + 2904473 := by
    unfold C
    simp [show (6718464 * k + 5808946) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 2904473) = 10077696 * k + 8713420 := by
    unfold C
    simp [show (3359232 * k + 2904473) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 8713420) = 5038848 * k + 4356710 := by
    unfold C
    simp [show (10077696 * k + 8713420) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 4356710) = 2519424 * k + 2178355 := by
    unfold C
    simp [show (5038848 * k + 4356710) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 2178355) = 7558272 * k + 6535066 := by
    unfold C
    simp [show (2519424 * k + 2178355) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 6535066) = 3779136 * k + 3267533 := by
    unfold C
    simp [show (7558272 * k + 6535066) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 3267533) = 11337408 * k + 9802600 := by
    unfold C
    simp [show (3779136 * k + 3267533) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 9802600) = 5668704 * k + 4901300 := by
    unfold C
    simp [show (11337408 * k + 9802600) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 4901300) = 2834352 * k + 2450650 := by
    unfold C
    simp [show (5668704 * k + 4901300) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2450650) = 1417176 * k + 1225325 := by
    unfold C
    simp [show (2834352 * k + 2450650) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 1225325) = 4251528 * k + 3675976 := by
    unfold C
    simp [show (1417176 * k + 1225325) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 3675976) = 2125764 * k + 1837988 := by
    unfold C
    simp [show (4251528 * k + 3675976) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1837988) = 1062882 * k + 918994 := by
    unfold C
    simp [show (2125764 * k + 1837988) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 918994) = 531441 * k + 459497 := by
    unfold C
    simp [show (1062882 * k + 918994) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 906623) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 906623)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_907355 : ∀ k : Nat,
    iterate (1048576 * k + 907355) 32 = 531441 * k + 459868 ∧
      531441 * k + 459868 < 1048576 * k + 907355 := by
  intro k
  have h1 : C (1048576 * k + 907355) = 3145728 * k + 2722066 := by
    unfold C
    simp [show (1048576 * k + 907355) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2722066) = 1572864 * k + 1361033 := by
    unfold C
    simp [show (3145728 * k + 2722066) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1361033) = 4718592 * k + 4083100 := by
    unfold C
    simp [show (1572864 * k + 1361033) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 4083100) = 2359296 * k + 2041550 := by
    unfold C
    simp [show (4718592 * k + 4083100) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 2041550) = 1179648 * k + 1020775 := by
    unfold C
    simp [show (2359296 * k + 2041550) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 1020775) = 3538944 * k + 3062326 := by
    unfold C
    simp [show (1179648 * k + 1020775) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 3062326) = 1769472 * k + 1531163 := by
    unfold C
    simp [show (3538944 * k + 3062326) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1531163) = 5308416 * k + 4593490 := by
    unfold C
    simp [show (1769472 * k + 1531163) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 4593490) = 2654208 * k + 2296745 := by
    unfold C
    simp [show (5308416 * k + 4593490) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 2296745) = 7962624 * k + 6890236 := by
    unfold C
    simp [show (2654208 * k + 2296745) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 6890236) = 3981312 * k + 3445118 := by
    unfold C
    simp [show (7962624 * k + 6890236) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 3445118) = 1990656 * k + 1722559 := by
    unfold C
    simp [show (3981312 * k + 3445118) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 1722559) = 5971968 * k + 5167678 := by
    unfold C
    simp [show (1990656 * k + 1722559) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 5167678) = 2985984 * k + 2583839 := by
    unfold C
    simp [show (5971968 * k + 5167678) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 2583839) = 8957952 * k + 7751518 := by
    unfold C
    simp [show (2985984 * k + 2583839) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 7751518) = 4478976 * k + 3875759 := by
    unfold C
    simp [show (8957952 * k + 7751518) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 3875759) = 13436928 * k + 11627278 := by
    unfold C
    simp [show (4478976 * k + 3875759) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 11627278) = 6718464 * k + 5813639 := by
    unfold C
    simp [show (13436928 * k + 11627278) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 5813639) = 20155392 * k + 17440918 := by
    unfold C
    simp [show (6718464 * k + 5813639) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 17440918) = 10077696 * k + 8720459 := by
    unfold C
    simp [show (20155392 * k + 17440918) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 8720459) = 30233088 * k + 26161378 := by
    unfold C
    simp [show (10077696 * k + 8720459) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 26161378) = 15116544 * k + 13080689 := by
    unfold C
    simp [show (30233088 * k + 26161378) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 13080689) = 45349632 * k + 39242068 := by
    unfold C
    simp [show (15116544 * k + 13080689) % 2 ≠ 0 by omega]
    omega
  have h24 : C (45349632 * k + 39242068) = 22674816 * k + 19621034 := by
    unfold C
    simp [show (45349632 * k + 39242068) % 2 = 0 by omega]
    omega
  have h25 : C (22674816 * k + 19621034) = 11337408 * k + 9810517 := by
    unfold C
    simp [show (22674816 * k + 19621034) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 9810517) = 34012224 * k + 29431552 := by
    unfold C
    simp [show (11337408 * k + 9810517) % 2 ≠ 0 by omega]
    omega
  have h27 : C (34012224 * k + 29431552) = 17006112 * k + 14715776 := by
    unfold C
    simp [show (34012224 * k + 29431552) % 2 = 0 by omega]
    omega
  have h28 : C (17006112 * k + 14715776) = 8503056 * k + 7357888 := by
    unfold C
    simp [show (17006112 * k + 14715776) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 7357888) = 4251528 * k + 3678944 := by
    unfold C
    simp [show (8503056 * k + 7357888) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 3678944) = 2125764 * k + 1839472 := by
    unfold C
    simp [show (4251528 * k + 3678944) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1839472) = 1062882 * k + 919736 := by
    unfold C
    simp [show (2125764 * k + 1839472) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 919736) = 531441 * k + 459868 := by
    unfold C
    simp [show (1062882 * k + 919736) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 907355) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 907355)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_907623 : ∀ k : Nat,
    iterate (1048576 * k + 907623) 32 = 531441 * k + 460004 ∧
      531441 * k + 460004 < 1048576 * k + 907623 := by
  intro k
  have h1 : C (1048576 * k + 907623) = 3145728 * k + 2722870 := by
    unfold C
    simp [show (1048576 * k + 907623) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2722870) = 1572864 * k + 1361435 := by
    unfold C
    simp [show (3145728 * k + 2722870) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1361435) = 4718592 * k + 4084306 := by
    unfold C
    simp [show (1572864 * k + 1361435) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 4084306) = 2359296 * k + 2042153 := by
    unfold C
    simp [show (4718592 * k + 4084306) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 2042153) = 7077888 * k + 6126460 := by
    unfold C
    simp [show (2359296 * k + 2042153) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 6126460) = 3538944 * k + 3063230 := by
    unfold C
    simp [show (7077888 * k + 6126460) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 3063230) = 1769472 * k + 1531615 := by
    unfold C
    simp [show (3538944 * k + 3063230) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1531615) = 5308416 * k + 4594846 := by
    unfold C
    simp [show (1769472 * k + 1531615) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 4594846) = 2654208 * k + 2297423 := by
    unfold C
    simp [show (5308416 * k + 4594846) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 2297423) = 7962624 * k + 6892270 := by
    unfold C
    simp [show (2654208 * k + 2297423) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 6892270) = 3981312 * k + 3446135 := by
    unfold C
    simp [show (7962624 * k + 6892270) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 3446135) = 11943936 * k + 10338406 := by
    unfold C
    simp [show (3981312 * k + 3446135) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 10338406) = 5971968 * k + 5169203 := by
    unfold C
    simp [show (11943936 * k + 10338406) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 5169203) = 17915904 * k + 15507610 := by
    unfold C
    simp [show (5971968 * k + 5169203) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 15507610) = 8957952 * k + 7753805 := by
    unfold C
    simp [show (17915904 * k + 15507610) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 7753805) = 26873856 * k + 23261416 := by
    unfold C
    simp [show (8957952 * k + 7753805) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 23261416) = 13436928 * k + 11630708 := by
    unfold C
    simp [show (26873856 * k + 23261416) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 11630708) = 6718464 * k + 5815354 := by
    unfold C
    simp [show (13436928 * k + 11630708) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 5815354) = 3359232 * k + 2907677 := by
    unfold C
    simp [show (6718464 * k + 5815354) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 2907677) = 10077696 * k + 8723032 := by
    unfold C
    simp [show (3359232 * k + 2907677) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 8723032) = 5038848 * k + 4361516 := by
    unfold C
    simp [show (10077696 * k + 8723032) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 4361516) = 2519424 * k + 2180758 := by
    unfold C
    simp [show (5038848 * k + 4361516) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 2180758) = 1259712 * k + 1090379 := by
    unfold C
    simp [show (2519424 * k + 2180758) % 2 = 0 by omega]
    omega
  have h24 : C (1259712 * k + 1090379) = 3779136 * k + 3271138 := by
    unfold C
    simp [show (1259712 * k + 1090379) % 2 ≠ 0 by omega]
    omega
  have h25 : C (3779136 * k + 3271138) = 1889568 * k + 1635569 := by
    unfold C
    simp [show (3779136 * k + 3271138) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1635569) = 5668704 * k + 4906708 := by
    unfold C
    simp [show (1889568 * k + 1635569) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 4906708) = 2834352 * k + 2453354 := by
    unfold C
    simp [show (5668704 * k + 4906708) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2453354) = 1417176 * k + 1226677 := by
    unfold C
    simp [show (2834352 * k + 2453354) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 1226677) = 4251528 * k + 3680032 := by
    unfold C
    simp [show (1417176 * k + 1226677) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 3680032) = 2125764 * k + 1840016 := by
    unfold C
    simp [show (4251528 * k + 3680032) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1840016) = 1062882 * k + 920008 := by
    unfold C
    simp [show (2125764 * k + 1840016) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 920008) = 531441 * k + 460004 := by
    unfold C
    simp [show (1062882 * k + 920008) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 907623) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 907623)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_908391 : ∀ k : Nat,
    iterate (1048576 * k + 908391) 32 = 531441 * k + 460393 ∧
      531441 * k + 460393 < 1048576 * k + 908391 := by
  intro k
  have h1 : C (1048576 * k + 908391) = 3145728 * k + 2725174 := by
    unfold C
    simp [show (1048576 * k + 908391) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2725174) = 1572864 * k + 1362587 := by
    unfold C
    simp [show (3145728 * k + 2725174) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1362587) = 4718592 * k + 4087762 := by
    unfold C
    simp [show (1572864 * k + 1362587) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 4087762) = 2359296 * k + 2043881 := by
    unfold C
    simp [show (4718592 * k + 4087762) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 2043881) = 7077888 * k + 6131644 := by
    unfold C
    simp [show (2359296 * k + 2043881) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 6131644) = 3538944 * k + 3065822 := by
    unfold C
    simp [show (7077888 * k + 6131644) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 3065822) = 1769472 * k + 1532911 := by
    unfold C
    simp [show (3538944 * k + 3065822) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1532911) = 5308416 * k + 4598734 := by
    unfold C
    simp [show (1769472 * k + 1532911) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 4598734) = 2654208 * k + 2299367 := by
    unfold C
    simp [show (5308416 * k + 4598734) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 2299367) = 7962624 * k + 6898102 := by
    unfold C
    simp [show (2654208 * k + 2299367) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 6898102) = 3981312 * k + 3449051 := by
    unfold C
    simp [show (7962624 * k + 6898102) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 3449051) = 11943936 * k + 10347154 := by
    unfold C
    simp [show (3981312 * k + 3449051) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 10347154) = 5971968 * k + 5173577 := by
    unfold C
    simp [show (11943936 * k + 10347154) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 5173577) = 17915904 * k + 15520732 := by
    unfold C
    simp [show (5971968 * k + 5173577) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 15520732) = 8957952 * k + 7760366 := by
    unfold C
    simp [show (17915904 * k + 15520732) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 7760366) = 4478976 * k + 3880183 := by
    unfold C
    simp [show (8957952 * k + 7760366) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 3880183) = 13436928 * k + 11640550 := by
    unfold C
    simp [show (4478976 * k + 3880183) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 11640550) = 6718464 * k + 5820275 := by
    unfold C
    simp [show (13436928 * k + 11640550) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 5820275) = 20155392 * k + 17460826 := by
    unfold C
    simp [show (6718464 * k + 5820275) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 17460826) = 10077696 * k + 8730413 := by
    unfold C
    simp [show (20155392 * k + 17460826) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 8730413) = 30233088 * k + 26191240 := by
    unfold C
    simp [show (10077696 * k + 8730413) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 26191240) = 15116544 * k + 13095620 := by
    unfold C
    simp [show (30233088 * k + 26191240) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 13095620) = 7558272 * k + 6547810 := by
    unfold C
    simp [show (15116544 * k + 13095620) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 6547810) = 3779136 * k + 3273905 := by
    unfold C
    simp [show (7558272 * k + 6547810) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 3273905) = 11337408 * k + 9821716 := by
    unfold C
    simp [show (3779136 * k + 3273905) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 9821716) = 5668704 * k + 4910858 := by
    unfold C
    simp [show (11337408 * k + 9821716) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 4910858) = 2834352 * k + 2455429 := by
    unfold C
    simp [show (5668704 * k + 4910858) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2455429) = 8503056 * k + 7366288 := by
    unfold C
    simp [show (2834352 * k + 2455429) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 7366288) = 4251528 * k + 3683144 := by
    unfold C
    simp [show (8503056 * k + 7366288) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 3683144) = 2125764 * k + 1841572 := by
    unfold C
    simp [show (4251528 * k + 3683144) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1841572) = 1062882 * k + 920786 := by
    unfold C
    simp [show (2125764 * k + 1841572) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 920786) = 531441 * k + 460393 := by
    unfold C
    simp [show (1062882 * k + 920786) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 908391) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 908391)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_908415 : ∀ k : Nat,
    iterate (1048576 * k + 908415) 32 = 531441 * k + 460405 ∧
      531441 * k + 460405 < 1048576 * k + 908415 := by
  intro k
  have h1 : C (1048576 * k + 908415) = 3145728 * k + 2725246 := by
    unfold C
    simp [show (1048576 * k + 908415) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2725246) = 1572864 * k + 1362623 := by
    unfold C
    simp [show (3145728 * k + 2725246) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1362623) = 4718592 * k + 4087870 := by
    unfold C
    simp [show (1572864 * k + 1362623) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 4087870) = 2359296 * k + 2043935 := by
    unfold C
    simp [show (4718592 * k + 4087870) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 2043935) = 7077888 * k + 6131806 := by
    unfold C
    simp [show (2359296 * k + 2043935) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 6131806) = 3538944 * k + 3065903 := by
    unfold C
    simp [show (7077888 * k + 6131806) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 3065903) = 10616832 * k + 9197710 := by
    unfold C
    simp [show (3538944 * k + 3065903) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 9197710) = 5308416 * k + 4598855 := by
    unfold C
    simp [show (10616832 * k + 9197710) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 4598855) = 15925248 * k + 13796566 := by
    unfold C
    simp [show (5308416 * k + 4598855) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 13796566) = 7962624 * k + 6898283 := by
    unfold C
    simp [show (15925248 * k + 13796566) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 6898283) = 23887872 * k + 20694850 := by
    unfold C
    simp [show (7962624 * k + 6898283) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 20694850) = 11943936 * k + 10347425 := by
    unfold C
    simp [show (23887872 * k + 20694850) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 10347425) = 35831808 * k + 31042276 := by
    unfold C
    simp [show (11943936 * k + 10347425) % 2 ≠ 0 by omega]
    omega
  have h14 : C (35831808 * k + 31042276) = 17915904 * k + 15521138 := by
    unfold C
    simp [show (35831808 * k + 31042276) % 2 = 0 by omega]
    omega
  have h15 : C (17915904 * k + 15521138) = 8957952 * k + 7760569 := by
    unfold C
    simp [show (17915904 * k + 15521138) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 7760569) = 26873856 * k + 23281708 := by
    unfold C
    simp [show (8957952 * k + 7760569) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 23281708) = 13436928 * k + 11640854 := by
    unfold C
    simp [show (26873856 * k + 23281708) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 11640854) = 6718464 * k + 5820427 := by
    unfold C
    simp [show (13436928 * k + 11640854) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 5820427) = 20155392 * k + 17461282 := by
    unfold C
    simp [show (6718464 * k + 5820427) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 17461282) = 10077696 * k + 8730641 := by
    unfold C
    simp [show (20155392 * k + 17461282) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 8730641) = 30233088 * k + 26191924 := by
    unfold C
    simp [show (10077696 * k + 8730641) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 26191924) = 15116544 * k + 13095962 := by
    unfold C
    simp [show (30233088 * k + 26191924) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 13095962) = 7558272 * k + 6547981 := by
    unfold C
    simp [show (15116544 * k + 13095962) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 6547981) = 22674816 * k + 19643944 := by
    unfold C
    simp [show (7558272 * k + 6547981) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 19643944) = 11337408 * k + 9821972 := by
    unfold C
    simp [show (22674816 * k + 19643944) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 9821972) = 5668704 * k + 4910986 := by
    unfold C
    simp [show (11337408 * k + 9821972) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 4910986) = 2834352 * k + 2455493 := by
    unfold C
    simp [show (5668704 * k + 4910986) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2455493) = 8503056 * k + 7366480 := by
    unfold C
    simp [show (2834352 * k + 2455493) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 7366480) = 4251528 * k + 3683240 := by
    unfold C
    simp [show (8503056 * k + 7366480) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 3683240) = 2125764 * k + 1841620 := by
    unfold C
    simp [show (4251528 * k + 3683240) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1841620) = 1062882 * k + 920810 := by
    unfold C
    simp [show (2125764 * k + 1841620) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 920810) = 531441 * k + 460405 := by
    unfold C
    simp [show (1062882 * k + 920810) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 908415) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 908415)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_908831 : ∀ k : Nat,
    iterate (1048576 * k + 908831) 32 = 531441 * k + 460616 ∧
      531441 * k + 460616 < 1048576 * k + 908831 := by
  intro k
  have h1 : C (1048576 * k + 908831) = 3145728 * k + 2726494 := by
    unfold C
    simp [show (1048576 * k + 908831) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2726494) = 1572864 * k + 1363247 := by
    unfold C
    simp [show (3145728 * k + 2726494) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1363247) = 4718592 * k + 4089742 := by
    unfold C
    simp [show (1572864 * k + 1363247) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 4089742) = 2359296 * k + 2044871 := by
    unfold C
    simp [show (4718592 * k + 4089742) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 2044871) = 7077888 * k + 6134614 := by
    unfold C
    simp [show (2359296 * k + 2044871) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 6134614) = 3538944 * k + 3067307 := by
    unfold C
    simp [show (7077888 * k + 6134614) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 3067307) = 10616832 * k + 9201922 := by
    unfold C
    simp [show (3538944 * k + 3067307) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 9201922) = 5308416 * k + 4600961 := by
    unfold C
    simp [show (10616832 * k + 9201922) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 4600961) = 15925248 * k + 13802884 := by
    unfold C
    simp [show (5308416 * k + 4600961) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 13802884) = 7962624 * k + 6901442 := by
    unfold C
    simp [show (15925248 * k + 13802884) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 6901442) = 3981312 * k + 3450721 := by
    unfold C
    simp [show (7962624 * k + 6901442) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 3450721) = 11943936 * k + 10352164 := by
    unfold C
    simp [show (3981312 * k + 3450721) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 10352164) = 5971968 * k + 5176082 := by
    unfold C
    simp [show (11943936 * k + 10352164) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 5176082) = 2985984 * k + 2588041 := by
    unfold C
    simp [show (5971968 * k + 5176082) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 2588041) = 8957952 * k + 7764124 := by
    unfold C
    simp [show (2985984 * k + 2588041) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 7764124) = 4478976 * k + 3882062 := by
    unfold C
    simp [show (8957952 * k + 7764124) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 3882062) = 2239488 * k + 1941031 := by
    unfold C
    simp [show (4478976 * k + 3882062) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 1941031) = 6718464 * k + 5823094 := by
    unfold C
    simp [show (2239488 * k + 1941031) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 5823094) = 3359232 * k + 2911547 := by
    unfold C
    simp [show (6718464 * k + 5823094) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 2911547) = 10077696 * k + 8734642 := by
    unfold C
    simp [show (3359232 * k + 2911547) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 8734642) = 5038848 * k + 4367321 := by
    unfold C
    simp [show (10077696 * k + 8734642) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 4367321) = 15116544 * k + 13101964 := by
    unfold C
    simp [show (5038848 * k + 4367321) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 13101964) = 7558272 * k + 6550982 := by
    unfold C
    simp [show (15116544 * k + 13101964) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 6550982) = 3779136 * k + 3275491 := by
    unfold C
    simp [show (7558272 * k + 6550982) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 3275491) = 11337408 * k + 9826474 := by
    unfold C
    simp [show (3779136 * k + 3275491) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 9826474) = 5668704 * k + 4913237 := by
    unfold C
    simp [show (11337408 * k + 9826474) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 4913237) = 17006112 * k + 14739712 := by
    unfold C
    simp [show (5668704 * k + 4913237) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 14739712) = 8503056 * k + 7369856 := by
    unfold C
    simp [show (17006112 * k + 14739712) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 7369856) = 4251528 * k + 3684928 := by
    unfold C
    simp [show (8503056 * k + 7369856) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 3684928) = 2125764 * k + 1842464 := by
    unfold C
    simp [show (4251528 * k + 3684928) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1842464) = 1062882 * k + 921232 := by
    unfold C
    simp [show (2125764 * k + 1842464) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 921232) = 531441 * k + 460616 := by
    unfold C
    simp [show (1062882 * k + 921232) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 908831) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 908831)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_908955 : ∀ k : Nat,
    iterate (1048576 * k + 908955) 32 = 531441 * k + 460679 ∧
      531441 * k + 460679 < 1048576 * k + 908955 := by
  intro k
  have h1 : C (1048576 * k + 908955) = 3145728 * k + 2726866 := by
    unfold C
    simp [show (1048576 * k + 908955) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2726866) = 1572864 * k + 1363433 := by
    unfold C
    simp [show (3145728 * k + 2726866) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1363433) = 4718592 * k + 4090300 := by
    unfold C
    simp [show (1572864 * k + 1363433) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 4090300) = 2359296 * k + 2045150 := by
    unfold C
    simp [show (4718592 * k + 4090300) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 2045150) = 1179648 * k + 1022575 := by
    unfold C
    simp [show (2359296 * k + 2045150) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 1022575) = 3538944 * k + 3067726 := by
    unfold C
    simp [show (1179648 * k + 1022575) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 3067726) = 1769472 * k + 1533863 := by
    unfold C
    simp [show (3538944 * k + 3067726) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1533863) = 5308416 * k + 4601590 := by
    unfold C
    simp [show (1769472 * k + 1533863) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 4601590) = 2654208 * k + 2300795 := by
    unfold C
    simp [show (5308416 * k + 4601590) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 2300795) = 7962624 * k + 6902386 := by
    unfold C
    simp [show (2654208 * k + 2300795) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 6902386) = 3981312 * k + 3451193 := by
    unfold C
    simp [show (7962624 * k + 6902386) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 3451193) = 11943936 * k + 10353580 := by
    unfold C
    simp [show (3981312 * k + 3451193) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 10353580) = 5971968 * k + 5176790 := by
    unfold C
    simp [show (11943936 * k + 10353580) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 5176790) = 2985984 * k + 2588395 := by
    unfold C
    simp [show (5971968 * k + 5176790) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 2588395) = 8957952 * k + 7765186 := by
    unfold C
    simp [show (2985984 * k + 2588395) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 7765186) = 4478976 * k + 3882593 := by
    unfold C
    simp [show (8957952 * k + 7765186) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 3882593) = 13436928 * k + 11647780 := by
    unfold C
    simp [show (4478976 * k + 3882593) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 11647780) = 6718464 * k + 5823890 := by
    unfold C
    simp [show (13436928 * k + 11647780) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 5823890) = 3359232 * k + 2911945 := by
    unfold C
    simp [show (6718464 * k + 5823890) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 2911945) = 10077696 * k + 8735836 := by
    unfold C
    simp [show (3359232 * k + 2911945) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 8735836) = 5038848 * k + 4367918 := by
    unfold C
    simp [show (10077696 * k + 8735836) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 4367918) = 2519424 * k + 2183959 := by
    unfold C
    simp [show (5038848 * k + 4367918) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 2183959) = 7558272 * k + 6551878 := by
    unfold C
    simp [show (2519424 * k + 2183959) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 6551878) = 3779136 * k + 3275939 := by
    unfold C
    simp [show (7558272 * k + 6551878) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 3275939) = 11337408 * k + 9827818 := by
    unfold C
    simp [show (3779136 * k + 3275939) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 9827818) = 5668704 * k + 4913909 := by
    unfold C
    simp [show (11337408 * k + 9827818) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 4913909) = 17006112 * k + 14741728 := by
    unfold C
    simp [show (5668704 * k + 4913909) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 14741728) = 8503056 * k + 7370864 := by
    unfold C
    simp [show (17006112 * k + 14741728) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 7370864) = 4251528 * k + 3685432 := by
    unfold C
    simp [show (8503056 * k + 7370864) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 3685432) = 2125764 * k + 1842716 := by
    unfold C
    simp [show (4251528 * k + 3685432) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1842716) = 1062882 * k + 921358 := by
    unfold C
    simp [show (2125764 * k + 1842716) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 921358) = 531441 * k + 460679 := by
    unfold C
    simp [show (1062882 * k + 921358) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 908955) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 908955)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_908991 : ∀ k : Nat,
    iterate (1048576 * k + 908991) 32 = 531441 * k + 460697 ∧
      531441 * k + 460697 < 1048576 * k + 908991 := by
  intro k
  have h1 : C (1048576 * k + 908991) = 3145728 * k + 2726974 := by
    unfold C
    simp [show (1048576 * k + 908991) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2726974) = 1572864 * k + 1363487 := by
    unfold C
    simp [show (3145728 * k + 2726974) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1363487) = 4718592 * k + 4090462 := by
    unfold C
    simp [show (1572864 * k + 1363487) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 4090462) = 2359296 * k + 2045231 := by
    unfold C
    simp [show (4718592 * k + 4090462) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 2045231) = 7077888 * k + 6135694 := by
    unfold C
    simp [show (2359296 * k + 2045231) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 6135694) = 3538944 * k + 3067847 := by
    unfold C
    simp [show (7077888 * k + 6135694) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 3067847) = 10616832 * k + 9203542 := by
    unfold C
    simp [show (3538944 * k + 3067847) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 9203542) = 5308416 * k + 4601771 := by
    unfold C
    simp [show (10616832 * k + 9203542) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 4601771) = 15925248 * k + 13805314 := by
    unfold C
    simp [show (5308416 * k + 4601771) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 13805314) = 7962624 * k + 6902657 := by
    unfold C
    simp [show (15925248 * k + 13805314) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 6902657) = 23887872 * k + 20707972 := by
    unfold C
    simp [show (7962624 * k + 6902657) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 20707972) = 11943936 * k + 10353986 := by
    unfold C
    simp [show (23887872 * k + 20707972) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 10353986) = 5971968 * k + 5176993 := by
    unfold C
    simp [show (11943936 * k + 10353986) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 5176993) = 17915904 * k + 15530980 := by
    unfold C
    simp [show (5971968 * k + 5176993) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 15530980) = 8957952 * k + 7765490 := by
    unfold C
    simp [show (17915904 * k + 15530980) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 7765490) = 4478976 * k + 3882745 := by
    unfold C
    simp [show (8957952 * k + 7765490) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 3882745) = 13436928 * k + 11648236 := by
    unfold C
    simp [show (4478976 * k + 3882745) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 11648236) = 6718464 * k + 5824118 := by
    unfold C
    simp [show (13436928 * k + 11648236) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 5824118) = 3359232 * k + 2912059 := by
    unfold C
    simp [show (6718464 * k + 5824118) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 2912059) = 10077696 * k + 8736178 := by
    unfold C
    simp [show (3359232 * k + 2912059) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 8736178) = 5038848 * k + 4368089 := by
    unfold C
    simp [show (10077696 * k + 8736178) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 4368089) = 15116544 * k + 13104268 := by
    unfold C
    simp [show (5038848 * k + 4368089) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 13104268) = 7558272 * k + 6552134 := by
    unfold C
    simp [show (15116544 * k + 13104268) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 6552134) = 3779136 * k + 3276067 := by
    unfold C
    simp [show (7558272 * k + 6552134) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 3276067) = 11337408 * k + 9828202 := by
    unfold C
    simp [show (3779136 * k + 3276067) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 9828202) = 5668704 * k + 4914101 := by
    unfold C
    simp [show (11337408 * k + 9828202) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 4914101) = 17006112 * k + 14742304 := by
    unfold C
    simp [show (5668704 * k + 4914101) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 14742304) = 8503056 * k + 7371152 := by
    unfold C
    simp [show (17006112 * k + 14742304) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 7371152) = 4251528 * k + 3685576 := by
    unfold C
    simp [show (8503056 * k + 7371152) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 3685576) = 2125764 * k + 1842788 := by
    unfold C
    simp [show (4251528 * k + 3685576) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1842788) = 1062882 * k + 921394 := by
    unfold C
    simp [show (2125764 * k + 1842788) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 921394) = 531441 * k + 460697 := by
    unfold C
    simp [show (1062882 * k + 921394) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 908991) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 908991)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_909403 : ∀ k : Nat,
    iterate (1048576 * k + 909403) 32 = 531441 * k + 460906 ∧
      531441 * k + 460906 < 1048576 * k + 909403 := by
  intro k
  have h1 : C (1048576 * k + 909403) = 3145728 * k + 2728210 := by
    unfold C
    simp [show (1048576 * k + 909403) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2728210) = 1572864 * k + 1364105 := by
    unfold C
    simp [show (3145728 * k + 2728210) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1364105) = 4718592 * k + 4092316 := by
    unfold C
    simp [show (1572864 * k + 1364105) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 4092316) = 2359296 * k + 2046158 := by
    unfold C
    simp [show (4718592 * k + 4092316) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 2046158) = 1179648 * k + 1023079 := by
    unfold C
    simp [show (2359296 * k + 2046158) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 1023079) = 3538944 * k + 3069238 := by
    unfold C
    simp [show (1179648 * k + 1023079) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 3069238) = 1769472 * k + 1534619 := by
    unfold C
    simp [show (3538944 * k + 3069238) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1534619) = 5308416 * k + 4603858 := by
    unfold C
    simp [show (1769472 * k + 1534619) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 4603858) = 2654208 * k + 2301929 := by
    unfold C
    simp [show (5308416 * k + 4603858) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 2301929) = 7962624 * k + 6905788 := by
    unfold C
    simp [show (2654208 * k + 2301929) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 6905788) = 3981312 * k + 3452894 := by
    unfold C
    simp [show (7962624 * k + 6905788) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 3452894) = 1990656 * k + 1726447 := by
    unfold C
    simp [show (3981312 * k + 3452894) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 1726447) = 5971968 * k + 5179342 := by
    unfold C
    simp [show (1990656 * k + 1726447) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 5179342) = 2985984 * k + 2589671 := by
    unfold C
    simp [show (5971968 * k + 5179342) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 2589671) = 8957952 * k + 7769014 := by
    unfold C
    simp [show (2985984 * k + 2589671) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 7769014) = 4478976 * k + 3884507 := by
    unfold C
    simp [show (8957952 * k + 7769014) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 3884507) = 13436928 * k + 11653522 := by
    unfold C
    simp [show (4478976 * k + 3884507) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 11653522) = 6718464 * k + 5826761 := by
    unfold C
    simp [show (13436928 * k + 11653522) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 5826761) = 20155392 * k + 17480284 := by
    unfold C
    simp [show (6718464 * k + 5826761) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 17480284) = 10077696 * k + 8740142 := by
    unfold C
    simp [show (20155392 * k + 17480284) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 8740142) = 5038848 * k + 4370071 := by
    unfold C
    simp [show (10077696 * k + 8740142) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 4370071) = 15116544 * k + 13110214 := by
    unfold C
    simp [show (5038848 * k + 4370071) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 13110214) = 7558272 * k + 6555107 := by
    unfold C
    simp [show (15116544 * k + 13110214) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 6555107) = 22674816 * k + 19665322 := by
    unfold C
    simp [show (7558272 * k + 6555107) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 19665322) = 11337408 * k + 9832661 := by
    unfold C
    simp [show (22674816 * k + 19665322) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 9832661) = 34012224 * k + 29497984 := by
    unfold C
    simp [show (11337408 * k + 9832661) % 2 ≠ 0 by omega]
    omega
  have h27 : C (34012224 * k + 29497984) = 17006112 * k + 14748992 := by
    unfold C
    simp [show (34012224 * k + 29497984) % 2 = 0 by omega]
    omega
  have h28 : C (17006112 * k + 14748992) = 8503056 * k + 7374496 := by
    unfold C
    simp [show (17006112 * k + 14748992) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 7374496) = 4251528 * k + 3687248 := by
    unfold C
    simp [show (8503056 * k + 7374496) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 3687248) = 2125764 * k + 1843624 := by
    unfold C
    simp [show (4251528 * k + 3687248) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1843624) = 1062882 * k + 921812 := by
    unfold C
    simp [show (2125764 * k + 1843624) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 921812) = 531441 * k + 460906 := by
    unfold C
    simp [show (1062882 * k + 921812) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 909403) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 909403)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_909535 : ∀ k : Nat,
    iterate (1048576 * k + 909535) 32 = 531441 * k + 460973 ∧
      531441 * k + 460973 < 1048576 * k + 909535 := by
  intro k
  have h1 : C (1048576 * k + 909535) = 3145728 * k + 2728606 := by
    unfold C
    simp [show (1048576 * k + 909535) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2728606) = 1572864 * k + 1364303 := by
    unfold C
    simp [show (3145728 * k + 2728606) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1364303) = 4718592 * k + 4092910 := by
    unfold C
    simp [show (1572864 * k + 1364303) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 4092910) = 2359296 * k + 2046455 := by
    unfold C
    simp [show (4718592 * k + 4092910) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 2046455) = 7077888 * k + 6139366 := by
    unfold C
    simp [show (2359296 * k + 2046455) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 6139366) = 3538944 * k + 3069683 := by
    unfold C
    simp [show (7077888 * k + 6139366) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 3069683) = 10616832 * k + 9209050 := by
    unfold C
    simp [show (3538944 * k + 3069683) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 9209050) = 5308416 * k + 4604525 := by
    unfold C
    simp [show (10616832 * k + 9209050) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 4604525) = 15925248 * k + 13813576 := by
    unfold C
    simp [show (5308416 * k + 4604525) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 13813576) = 7962624 * k + 6906788 := by
    unfold C
    simp [show (15925248 * k + 13813576) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 6906788) = 3981312 * k + 3453394 := by
    unfold C
    simp [show (7962624 * k + 6906788) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 3453394) = 1990656 * k + 1726697 := by
    unfold C
    simp [show (3981312 * k + 3453394) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 1726697) = 5971968 * k + 5180092 := by
    unfold C
    simp [show (1990656 * k + 1726697) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 5180092) = 2985984 * k + 2590046 := by
    unfold C
    simp [show (5971968 * k + 5180092) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 2590046) = 1492992 * k + 1295023 := by
    unfold C
    simp [show (2985984 * k + 2590046) % 2 = 0 by omega]
    omega
  have h16 : C (1492992 * k + 1295023) = 4478976 * k + 3885070 := by
    unfold C
    simp [show (1492992 * k + 1295023) % 2 ≠ 0 by omega]
    omega
  have h17 : C (4478976 * k + 3885070) = 2239488 * k + 1942535 := by
    unfold C
    simp [show (4478976 * k + 3885070) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 1942535) = 6718464 * k + 5827606 := by
    unfold C
    simp [show (2239488 * k + 1942535) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 5827606) = 3359232 * k + 2913803 := by
    unfold C
    simp [show (6718464 * k + 5827606) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 2913803) = 10077696 * k + 8741410 := by
    unfold C
    simp [show (3359232 * k + 2913803) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 8741410) = 5038848 * k + 4370705 := by
    unfold C
    simp [show (10077696 * k + 8741410) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 4370705) = 15116544 * k + 13112116 := by
    unfold C
    simp [show (5038848 * k + 4370705) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 13112116) = 7558272 * k + 6556058 := by
    unfold C
    simp [show (15116544 * k + 13112116) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 6556058) = 3779136 * k + 3278029 := by
    unfold C
    simp [show (7558272 * k + 6556058) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 3278029) = 11337408 * k + 9834088 := by
    unfold C
    simp [show (3779136 * k + 3278029) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 9834088) = 5668704 * k + 4917044 := by
    unfold C
    simp [show (11337408 * k + 9834088) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 4917044) = 2834352 * k + 2458522 := by
    unfold C
    simp [show (5668704 * k + 4917044) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2458522) = 1417176 * k + 1229261 := by
    unfold C
    simp [show (2834352 * k + 2458522) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 1229261) = 4251528 * k + 3687784 := by
    unfold C
    simp [show (1417176 * k + 1229261) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 3687784) = 2125764 * k + 1843892 := by
    unfold C
    simp [show (4251528 * k + 3687784) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1843892) = 1062882 * k + 921946 := by
    unfold C
    simp [show (2125764 * k + 1843892) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 921946) = 531441 * k + 460973 := by
    unfold C
    simp [show (1062882 * k + 921946) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 909535) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 909535)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_909551 : ∀ k : Nat,
    iterate (1048576 * k + 909551) 32 = 531441 * k + 460981 ∧
      531441 * k + 460981 < 1048576 * k + 909551 := by
  intro k
  have h1 : C (1048576 * k + 909551) = 3145728 * k + 2728654 := by
    unfold C
    simp [show (1048576 * k + 909551) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2728654) = 1572864 * k + 1364327 := by
    unfold C
    simp [show (3145728 * k + 2728654) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1364327) = 4718592 * k + 4092982 := by
    unfold C
    simp [show (1572864 * k + 1364327) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 4092982) = 2359296 * k + 2046491 := by
    unfold C
    simp [show (4718592 * k + 4092982) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 2046491) = 7077888 * k + 6139474 := by
    unfold C
    simp [show (2359296 * k + 2046491) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 6139474) = 3538944 * k + 3069737 := by
    unfold C
    simp [show (7077888 * k + 6139474) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 3069737) = 10616832 * k + 9209212 := by
    unfold C
    simp [show (3538944 * k + 3069737) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 9209212) = 5308416 * k + 4604606 := by
    unfold C
    simp [show (10616832 * k + 9209212) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 4604606) = 2654208 * k + 2302303 := by
    unfold C
    simp [show (5308416 * k + 4604606) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 2302303) = 7962624 * k + 6906910 := by
    unfold C
    simp [show (2654208 * k + 2302303) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 6906910) = 3981312 * k + 3453455 := by
    unfold C
    simp [show (7962624 * k + 6906910) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 3453455) = 11943936 * k + 10360366 := by
    unfold C
    simp [show (3981312 * k + 3453455) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 10360366) = 5971968 * k + 5180183 := by
    unfold C
    simp [show (11943936 * k + 10360366) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 5180183) = 17915904 * k + 15540550 := by
    unfold C
    simp [show (5971968 * k + 5180183) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 15540550) = 8957952 * k + 7770275 := by
    unfold C
    simp [show (17915904 * k + 15540550) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 7770275) = 26873856 * k + 23310826 := by
    unfold C
    simp [show (8957952 * k + 7770275) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 23310826) = 13436928 * k + 11655413 := by
    unfold C
    simp [show (26873856 * k + 23310826) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 11655413) = 40310784 * k + 34966240 := by
    unfold C
    simp [show (13436928 * k + 11655413) % 2 ≠ 0 by omega]
    omega
  have h19 : C (40310784 * k + 34966240) = 20155392 * k + 17483120 := by
    unfold C
    simp [show (40310784 * k + 34966240) % 2 = 0 by omega]
    omega
  have h20 : C (20155392 * k + 17483120) = 10077696 * k + 8741560 := by
    unfold C
    simp [show (20155392 * k + 17483120) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 8741560) = 5038848 * k + 4370780 := by
    unfold C
    simp [show (10077696 * k + 8741560) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 4370780) = 2519424 * k + 2185390 := by
    unfold C
    simp [show (5038848 * k + 4370780) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 2185390) = 1259712 * k + 1092695 := by
    unfold C
    simp [show (2519424 * k + 2185390) % 2 = 0 by omega]
    omega
  have h24 : C (1259712 * k + 1092695) = 3779136 * k + 3278086 := by
    unfold C
    simp [show (1259712 * k + 1092695) % 2 ≠ 0 by omega]
    omega
  have h25 : C (3779136 * k + 3278086) = 1889568 * k + 1639043 := by
    unfold C
    simp [show (3779136 * k + 3278086) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1639043) = 5668704 * k + 4917130 := by
    unfold C
    simp [show (1889568 * k + 1639043) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 4917130) = 2834352 * k + 2458565 := by
    unfold C
    simp [show (5668704 * k + 4917130) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2458565) = 8503056 * k + 7375696 := by
    unfold C
    simp [show (2834352 * k + 2458565) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 7375696) = 4251528 * k + 3687848 := by
    unfold C
    simp [show (8503056 * k + 7375696) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 3687848) = 2125764 * k + 1843924 := by
    unfold C
    simp [show (4251528 * k + 3687848) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1843924) = 1062882 * k + 921962 := by
    unfold C
    simp [show (2125764 * k + 1843924) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 921962) = 531441 * k + 460981 := by
    unfold C
    simp [show (1062882 * k + 921962) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 909551) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 909551)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_909979 : ∀ k : Nat,
    iterate (1048576 * k + 909979) 32 = 531441 * k + 461198 ∧
      531441 * k + 461198 < 1048576 * k + 909979 := by
  intro k
  have h1 : C (1048576 * k + 909979) = 3145728 * k + 2729938 := by
    unfold C
    simp [show (1048576 * k + 909979) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2729938) = 1572864 * k + 1364969 := by
    unfold C
    simp [show (3145728 * k + 2729938) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1364969) = 4718592 * k + 4094908 := by
    unfold C
    simp [show (1572864 * k + 1364969) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 4094908) = 2359296 * k + 2047454 := by
    unfold C
    simp [show (4718592 * k + 4094908) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 2047454) = 1179648 * k + 1023727 := by
    unfold C
    simp [show (2359296 * k + 2047454) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 1023727) = 3538944 * k + 3071182 := by
    unfold C
    simp [show (1179648 * k + 1023727) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 3071182) = 1769472 * k + 1535591 := by
    unfold C
    simp [show (3538944 * k + 3071182) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1535591) = 5308416 * k + 4606774 := by
    unfold C
    simp [show (1769472 * k + 1535591) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 4606774) = 2654208 * k + 2303387 := by
    unfold C
    simp [show (5308416 * k + 4606774) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 2303387) = 7962624 * k + 6910162 := by
    unfold C
    simp [show (2654208 * k + 2303387) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 6910162) = 3981312 * k + 3455081 := by
    unfold C
    simp [show (7962624 * k + 6910162) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 3455081) = 11943936 * k + 10365244 := by
    unfold C
    simp [show (3981312 * k + 3455081) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 10365244) = 5971968 * k + 5182622 := by
    unfold C
    simp [show (11943936 * k + 10365244) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 5182622) = 2985984 * k + 2591311 := by
    unfold C
    simp [show (5971968 * k + 5182622) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 2591311) = 8957952 * k + 7773934 := by
    unfold C
    simp [show (2985984 * k + 2591311) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 7773934) = 4478976 * k + 3886967 := by
    unfold C
    simp [show (8957952 * k + 7773934) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 3886967) = 13436928 * k + 11660902 := by
    unfold C
    simp [show (4478976 * k + 3886967) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 11660902) = 6718464 * k + 5830451 := by
    unfold C
    simp [show (13436928 * k + 11660902) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 5830451) = 20155392 * k + 17491354 := by
    unfold C
    simp [show (6718464 * k + 5830451) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 17491354) = 10077696 * k + 8745677 := by
    unfold C
    simp [show (20155392 * k + 17491354) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 8745677) = 30233088 * k + 26237032 := by
    unfold C
    simp [show (10077696 * k + 8745677) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 26237032) = 15116544 * k + 13118516 := by
    unfold C
    simp [show (30233088 * k + 26237032) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 13118516) = 7558272 * k + 6559258 := by
    unfold C
    simp [show (15116544 * k + 13118516) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 6559258) = 3779136 * k + 3279629 := by
    unfold C
    simp [show (7558272 * k + 6559258) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 3279629) = 11337408 * k + 9838888 := by
    unfold C
    simp [show (3779136 * k + 3279629) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 9838888) = 5668704 * k + 4919444 := by
    unfold C
    simp [show (11337408 * k + 9838888) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 4919444) = 2834352 * k + 2459722 := by
    unfold C
    simp [show (5668704 * k + 4919444) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2459722) = 1417176 * k + 1229861 := by
    unfold C
    simp [show (2834352 * k + 2459722) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 1229861) = 4251528 * k + 3689584 := by
    unfold C
    simp [show (1417176 * k + 1229861) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 3689584) = 2125764 * k + 1844792 := by
    unfold C
    simp [show (4251528 * k + 3689584) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1844792) = 1062882 * k + 922396 := by
    unfold C
    simp [show (2125764 * k + 1844792) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 922396) = 531441 * k + 461198 := by
    unfold C
    simp [show (1062882 * k + 922396) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 909979) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 909979)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_910015 : ∀ k : Nat,
    iterate (1048576 * k + 910015) 32 = 531441 * k + 461216 ∧
      531441 * k + 461216 < 1048576 * k + 910015 := by
  intro k
  have h1 : C (1048576 * k + 910015) = 3145728 * k + 2730046 := by
    unfold C
    simp [show (1048576 * k + 910015) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2730046) = 1572864 * k + 1365023 := by
    unfold C
    simp [show (3145728 * k + 2730046) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1365023) = 4718592 * k + 4095070 := by
    unfold C
    simp [show (1572864 * k + 1365023) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 4095070) = 2359296 * k + 2047535 := by
    unfold C
    simp [show (4718592 * k + 4095070) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 2047535) = 7077888 * k + 6142606 := by
    unfold C
    simp [show (2359296 * k + 2047535) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 6142606) = 3538944 * k + 3071303 := by
    unfold C
    simp [show (7077888 * k + 6142606) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 3071303) = 10616832 * k + 9213910 := by
    unfold C
    simp [show (3538944 * k + 3071303) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 9213910) = 5308416 * k + 4606955 := by
    unfold C
    simp [show (10616832 * k + 9213910) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 4606955) = 15925248 * k + 13820866 := by
    unfold C
    simp [show (5308416 * k + 4606955) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 13820866) = 7962624 * k + 6910433 := by
    unfold C
    simp [show (15925248 * k + 13820866) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 6910433) = 23887872 * k + 20731300 := by
    unfold C
    simp [show (7962624 * k + 6910433) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 20731300) = 11943936 * k + 10365650 := by
    unfold C
    simp [show (23887872 * k + 20731300) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 10365650) = 5971968 * k + 5182825 := by
    unfold C
    simp [show (11943936 * k + 10365650) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 5182825) = 17915904 * k + 15548476 := by
    unfold C
    simp [show (5971968 * k + 5182825) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 15548476) = 8957952 * k + 7774238 := by
    unfold C
    simp [show (17915904 * k + 15548476) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 7774238) = 4478976 * k + 3887119 := by
    unfold C
    simp [show (8957952 * k + 7774238) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 3887119) = 13436928 * k + 11661358 := by
    unfold C
    simp [show (4478976 * k + 3887119) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 11661358) = 6718464 * k + 5830679 := by
    unfold C
    simp [show (13436928 * k + 11661358) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 5830679) = 20155392 * k + 17492038 := by
    unfold C
    simp [show (6718464 * k + 5830679) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 17492038) = 10077696 * k + 8746019 := by
    unfold C
    simp [show (20155392 * k + 17492038) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 8746019) = 30233088 * k + 26238058 := by
    unfold C
    simp [show (10077696 * k + 8746019) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 26238058) = 15116544 * k + 13119029 := by
    unfold C
    simp [show (30233088 * k + 26238058) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 13119029) = 45349632 * k + 39357088 := by
    unfold C
    simp [show (15116544 * k + 13119029) % 2 ≠ 0 by omega]
    omega
  have h24 : C (45349632 * k + 39357088) = 22674816 * k + 19678544 := by
    unfold C
    simp [show (45349632 * k + 39357088) % 2 = 0 by omega]
    omega
  have h25 : C (22674816 * k + 19678544) = 11337408 * k + 9839272 := by
    unfold C
    simp [show (22674816 * k + 19678544) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 9839272) = 5668704 * k + 4919636 := by
    unfold C
    simp [show (11337408 * k + 9839272) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 4919636) = 2834352 * k + 2459818 := by
    unfold C
    simp [show (5668704 * k + 4919636) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2459818) = 1417176 * k + 1229909 := by
    unfold C
    simp [show (2834352 * k + 2459818) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 1229909) = 4251528 * k + 3689728 := by
    unfold C
    simp [show (1417176 * k + 1229909) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 3689728) = 2125764 * k + 1844864 := by
    unfold C
    simp [show (4251528 * k + 3689728) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1844864) = 1062882 * k + 922432 := by
    unfold C
    simp [show (2125764 * k + 1844864) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 922432) = 531441 * k + 461216 := by
    unfold C
    simp [show (1062882 * k + 922432) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 910015) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 910015)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_911451 : ∀ k : Nat,
    iterate (1048576 * k + 911451) 32 = 531441 * k + 461944 ∧
      531441 * k + 461944 < 1048576 * k + 911451 := by
  intro k
  have h1 : C (1048576 * k + 911451) = 3145728 * k + 2734354 := by
    unfold C
    simp [show (1048576 * k + 911451) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2734354) = 1572864 * k + 1367177 := by
    unfold C
    simp [show (3145728 * k + 2734354) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1367177) = 4718592 * k + 4101532 := by
    unfold C
    simp [show (1572864 * k + 1367177) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 4101532) = 2359296 * k + 2050766 := by
    unfold C
    simp [show (4718592 * k + 4101532) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 2050766) = 1179648 * k + 1025383 := by
    unfold C
    simp [show (2359296 * k + 2050766) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 1025383) = 3538944 * k + 3076150 := by
    unfold C
    simp [show (1179648 * k + 1025383) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 3076150) = 1769472 * k + 1538075 := by
    unfold C
    simp [show (3538944 * k + 3076150) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1538075) = 5308416 * k + 4614226 := by
    unfold C
    simp [show (1769472 * k + 1538075) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 4614226) = 2654208 * k + 2307113 := by
    unfold C
    simp [show (5308416 * k + 4614226) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 2307113) = 7962624 * k + 6921340 := by
    unfold C
    simp [show (2654208 * k + 2307113) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 6921340) = 3981312 * k + 3460670 := by
    unfold C
    simp [show (7962624 * k + 6921340) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 3460670) = 1990656 * k + 1730335 := by
    unfold C
    simp [show (3981312 * k + 3460670) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 1730335) = 5971968 * k + 5191006 := by
    unfold C
    simp [show (1990656 * k + 1730335) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 5191006) = 2985984 * k + 2595503 := by
    unfold C
    simp [show (5971968 * k + 5191006) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 2595503) = 8957952 * k + 7786510 := by
    unfold C
    simp [show (2985984 * k + 2595503) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 7786510) = 4478976 * k + 3893255 := by
    unfold C
    simp [show (8957952 * k + 7786510) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 3893255) = 13436928 * k + 11679766 := by
    unfold C
    simp [show (4478976 * k + 3893255) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 11679766) = 6718464 * k + 5839883 := by
    unfold C
    simp [show (13436928 * k + 11679766) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 5839883) = 20155392 * k + 17519650 := by
    unfold C
    simp [show (6718464 * k + 5839883) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 17519650) = 10077696 * k + 8759825 := by
    unfold C
    simp [show (20155392 * k + 17519650) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 8759825) = 30233088 * k + 26279476 := by
    unfold C
    simp [show (10077696 * k + 8759825) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 26279476) = 15116544 * k + 13139738 := by
    unfold C
    simp [show (30233088 * k + 26279476) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 13139738) = 7558272 * k + 6569869 := by
    unfold C
    simp [show (15116544 * k + 13139738) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 6569869) = 22674816 * k + 19709608 := by
    unfold C
    simp [show (7558272 * k + 6569869) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 19709608) = 11337408 * k + 9854804 := by
    unfold C
    simp [show (22674816 * k + 19709608) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 9854804) = 5668704 * k + 4927402 := by
    unfold C
    simp [show (11337408 * k + 9854804) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 4927402) = 2834352 * k + 2463701 := by
    unfold C
    simp [show (5668704 * k + 4927402) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2463701) = 8503056 * k + 7391104 := by
    unfold C
    simp [show (2834352 * k + 2463701) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 7391104) = 4251528 * k + 3695552 := by
    unfold C
    simp [show (8503056 * k + 7391104) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 3695552) = 2125764 * k + 1847776 := by
    unfold C
    simp [show (4251528 * k + 3695552) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1847776) = 1062882 * k + 923888 := by
    unfold C
    simp [show (2125764 * k + 1847776) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 923888) = 531441 * k + 461944 := by
    unfold C
    simp [show (1062882 * k + 923888) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 911451) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 911451)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_911463 : ∀ k : Nat,
    iterate (1048576 * k + 911463) 32 = 531441 * k + 461950 ∧
      531441 * k + 461950 < 1048576 * k + 911463 := by
  intro k
  have h1 : C (1048576 * k + 911463) = 3145728 * k + 2734390 := by
    unfold C
    simp [show (1048576 * k + 911463) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2734390) = 1572864 * k + 1367195 := by
    unfold C
    simp [show (3145728 * k + 2734390) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1367195) = 4718592 * k + 4101586 := by
    unfold C
    simp [show (1572864 * k + 1367195) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 4101586) = 2359296 * k + 2050793 := by
    unfold C
    simp [show (4718592 * k + 4101586) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 2050793) = 7077888 * k + 6152380 := by
    unfold C
    simp [show (2359296 * k + 2050793) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 6152380) = 3538944 * k + 3076190 := by
    unfold C
    simp [show (7077888 * k + 6152380) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 3076190) = 1769472 * k + 1538095 := by
    unfold C
    simp [show (3538944 * k + 3076190) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1538095) = 5308416 * k + 4614286 := by
    unfold C
    simp [show (1769472 * k + 1538095) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 4614286) = 2654208 * k + 2307143 := by
    unfold C
    simp [show (5308416 * k + 4614286) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 2307143) = 7962624 * k + 6921430 := by
    unfold C
    simp [show (2654208 * k + 2307143) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 6921430) = 3981312 * k + 3460715 := by
    unfold C
    simp [show (7962624 * k + 6921430) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 3460715) = 11943936 * k + 10382146 := by
    unfold C
    simp [show (3981312 * k + 3460715) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 10382146) = 5971968 * k + 5191073 := by
    unfold C
    simp [show (11943936 * k + 10382146) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 5191073) = 17915904 * k + 15573220 := by
    unfold C
    simp [show (5971968 * k + 5191073) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 15573220) = 8957952 * k + 7786610 := by
    unfold C
    simp [show (17915904 * k + 15573220) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 7786610) = 4478976 * k + 3893305 := by
    unfold C
    simp [show (8957952 * k + 7786610) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 3893305) = 13436928 * k + 11679916 := by
    unfold C
    simp [show (4478976 * k + 3893305) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 11679916) = 6718464 * k + 5839958 := by
    unfold C
    simp [show (13436928 * k + 11679916) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 5839958) = 3359232 * k + 2919979 := by
    unfold C
    simp [show (6718464 * k + 5839958) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 2919979) = 10077696 * k + 8759938 := by
    unfold C
    simp [show (3359232 * k + 2919979) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 8759938) = 5038848 * k + 4379969 := by
    unfold C
    simp [show (10077696 * k + 8759938) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 4379969) = 15116544 * k + 13139908 := by
    unfold C
    simp [show (5038848 * k + 4379969) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 13139908) = 7558272 * k + 6569954 := by
    unfold C
    simp [show (15116544 * k + 13139908) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 6569954) = 3779136 * k + 3284977 := by
    unfold C
    simp [show (7558272 * k + 6569954) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 3284977) = 11337408 * k + 9854932 := by
    unfold C
    simp [show (3779136 * k + 3284977) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 9854932) = 5668704 * k + 4927466 := by
    unfold C
    simp [show (11337408 * k + 9854932) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 4927466) = 2834352 * k + 2463733 := by
    unfold C
    simp [show (5668704 * k + 4927466) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2463733) = 8503056 * k + 7391200 := by
    unfold C
    simp [show (2834352 * k + 2463733) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 7391200) = 4251528 * k + 3695600 := by
    unfold C
    simp [show (8503056 * k + 7391200) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 3695600) = 2125764 * k + 1847800 := by
    unfold C
    simp [show (4251528 * k + 3695600) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1847800) = 1062882 * k + 923900 := by
    unfold C
    simp [show (2125764 * k + 1847800) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 923900) = 531441 * k + 461950 := by
    unfold C
    simp [show (1062882 * k + 923900) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 911463) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 911463)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_911487 : ∀ k : Nat,
    iterate (1048576 * k + 911487) 32 = 531441 * k + 461962 ∧
      531441 * k + 461962 < 1048576 * k + 911487 := by
  intro k
  have h1 : C (1048576 * k + 911487) = 3145728 * k + 2734462 := by
    unfold C
    simp [show (1048576 * k + 911487) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2734462) = 1572864 * k + 1367231 := by
    unfold C
    simp [show (3145728 * k + 2734462) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1367231) = 4718592 * k + 4101694 := by
    unfold C
    simp [show (1572864 * k + 1367231) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 4101694) = 2359296 * k + 2050847 := by
    unfold C
    simp [show (4718592 * k + 4101694) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 2050847) = 7077888 * k + 6152542 := by
    unfold C
    simp [show (2359296 * k + 2050847) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 6152542) = 3538944 * k + 3076271 := by
    unfold C
    simp [show (7077888 * k + 6152542) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 3076271) = 10616832 * k + 9228814 := by
    unfold C
    simp [show (3538944 * k + 3076271) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 9228814) = 5308416 * k + 4614407 := by
    unfold C
    simp [show (10616832 * k + 9228814) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 4614407) = 15925248 * k + 13843222 := by
    unfold C
    simp [show (5308416 * k + 4614407) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 13843222) = 7962624 * k + 6921611 := by
    unfold C
    simp [show (15925248 * k + 13843222) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 6921611) = 23887872 * k + 20764834 := by
    unfold C
    simp [show (7962624 * k + 6921611) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 20764834) = 11943936 * k + 10382417 := by
    unfold C
    simp [show (23887872 * k + 20764834) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 10382417) = 35831808 * k + 31147252 := by
    unfold C
    simp [show (11943936 * k + 10382417) % 2 ≠ 0 by omega]
    omega
  have h14 : C (35831808 * k + 31147252) = 17915904 * k + 15573626 := by
    unfold C
    simp [show (35831808 * k + 31147252) % 2 = 0 by omega]
    omega
  have h15 : C (17915904 * k + 15573626) = 8957952 * k + 7786813 := by
    unfold C
    simp [show (17915904 * k + 15573626) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 7786813) = 26873856 * k + 23360440 := by
    unfold C
    simp [show (8957952 * k + 7786813) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 23360440) = 13436928 * k + 11680220 := by
    unfold C
    simp [show (26873856 * k + 23360440) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 11680220) = 6718464 * k + 5840110 := by
    unfold C
    simp [show (13436928 * k + 11680220) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 5840110) = 3359232 * k + 2920055 := by
    unfold C
    simp [show (6718464 * k + 5840110) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 2920055) = 10077696 * k + 8760166 := by
    unfold C
    simp [show (3359232 * k + 2920055) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 8760166) = 5038848 * k + 4380083 := by
    unfold C
    simp [show (10077696 * k + 8760166) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 4380083) = 15116544 * k + 13140250 := by
    unfold C
    simp [show (5038848 * k + 4380083) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 13140250) = 7558272 * k + 6570125 := by
    unfold C
    simp [show (15116544 * k + 13140250) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 6570125) = 22674816 * k + 19710376 := by
    unfold C
    simp [show (7558272 * k + 6570125) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 19710376) = 11337408 * k + 9855188 := by
    unfold C
    simp [show (22674816 * k + 19710376) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 9855188) = 5668704 * k + 4927594 := by
    unfold C
    simp [show (11337408 * k + 9855188) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 4927594) = 2834352 * k + 2463797 := by
    unfold C
    simp [show (5668704 * k + 4927594) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2463797) = 8503056 * k + 7391392 := by
    unfold C
    simp [show (2834352 * k + 2463797) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 7391392) = 4251528 * k + 3695696 := by
    unfold C
    simp [show (8503056 * k + 7391392) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 3695696) = 2125764 * k + 1847848 := by
    unfold C
    simp [show (4251528 * k + 3695696) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1847848) = 1062882 * k + 923924 := by
    unfold C
    simp [show (2125764 * k + 1847848) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 923924) = 531441 * k + 461962 := by
    unfold C
    simp [show (1062882 * k + 923924) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 911487) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 911487)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_912063 : ∀ k : Nat,
    iterate (1048576 * k + 912063) 32 = 531441 * k + 462254 ∧
      531441 * k + 462254 < 1048576 * k + 912063 := by
  intro k
  have h1 : C (1048576 * k + 912063) = 3145728 * k + 2736190 := by
    unfold C
    simp [show (1048576 * k + 912063) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2736190) = 1572864 * k + 1368095 := by
    unfold C
    simp [show (3145728 * k + 2736190) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1368095) = 4718592 * k + 4104286 := by
    unfold C
    simp [show (1572864 * k + 1368095) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 4104286) = 2359296 * k + 2052143 := by
    unfold C
    simp [show (4718592 * k + 4104286) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 2052143) = 7077888 * k + 6156430 := by
    unfold C
    simp [show (2359296 * k + 2052143) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 6156430) = 3538944 * k + 3078215 := by
    unfold C
    simp [show (7077888 * k + 6156430) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 3078215) = 10616832 * k + 9234646 := by
    unfold C
    simp [show (3538944 * k + 3078215) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 9234646) = 5308416 * k + 4617323 := by
    unfold C
    simp [show (10616832 * k + 9234646) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 4617323) = 15925248 * k + 13851970 := by
    unfold C
    simp [show (5308416 * k + 4617323) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 13851970) = 7962624 * k + 6925985 := by
    unfold C
    simp [show (15925248 * k + 13851970) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 6925985) = 23887872 * k + 20777956 := by
    unfold C
    simp [show (7962624 * k + 6925985) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 20777956) = 11943936 * k + 10388978 := by
    unfold C
    simp [show (23887872 * k + 20777956) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 10388978) = 5971968 * k + 5194489 := by
    unfold C
    simp [show (11943936 * k + 10388978) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 5194489) = 17915904 * k + 15583468 := by
    unfold C
    simp [show (5971968 * k + 5194489) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 15583468) = 8957952 * k + 7791734 := by
    unfold C
    simp [show (17915904 * k + 15583468) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 7791734) = 4478976 * k + 3895867 := by
    unfold C
    simp [show (8957952 * k + 7791734) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 3895867) = 13436928 * k + 11687602 := by
    unfold C
    simp [show (4478976 * k + 3895867) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 11687602) = 6718464 * k + 5843801 := by
    unfold C
    simp [show (13436928 * k + 11687602) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 5843801) = 20155392 * k + 17531404 := by
    unfold C
    simp [show (6718464 * k + 5843801) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 17531404) = 10077696 * k + 8765702 := by
    unfold C
    simp [show (20155392 * k + 17531404) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 8765702) = 5038848 * k + 4382851 := by
    unfold C
    simp [show (10077696 * k + 8765702) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 4382851) = 15116544 * k + 13148554 := by
    unfold C
    simp [show (5038848 * k + 4382851) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 13148554) = 7558272 * k + 6574277 := by
    unfold C
    simp [show (15116544 * k + 13148554) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 6574277) = 22674816 * k + 19722832 := by
    unfold C
    simp [show (7558272 * k + 6574277) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 19722832) = 11337408 * k + 9861416 := by
    unfold C
    simp [show (22674816 * k + 19722832) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 9861416) = 5668704 * k + 4930708 := by
    unfold C
    simp [show (11337408 * k + 9861416) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 4930708) = 2834352 * k + 2465354 := by
    unfold C
    simp [show (5668704 * k + 4930708) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2465354) = 1417176 * k + 1232677 := by
    unfold C
    simp [show (2834352 * k + 2465354) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 1232677) = 4251528 * k + 3698032 := by
    unfold C
    simp [show (1417176 * k + 1232677) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 3698032) = 2125764 * k + 1849016 := by
    unfold C
    simp [show (4251528 * k + 3698032) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1849016) = 1062882 * k + 924508 := by
    unfold C
    simp [show (2125764 * k + 1849016) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 924508) = 531441 * k + 462254 := by
    unfold C
    simp [show (1062882 * k + 924508) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 912063) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 912063)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_913051 : ∀ k : Nat,
    iterate (1048576 * k + 913051) 32 = 531441 * k + 462755 ∧
      531441 * k + 462755 < 1048576 * k + 913051 := by
  intro k
  have h1 : C (1048576 * k + 913051) = 3145728 * k + 2739154 := by
    unfold C
    simp [show (1048576 * k + 913051) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2739154) = 1572864 * k + 1369577 := by
    unfold C
    simp [show (3145728 * k + 2739154) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1369577) = 4718592 * k + 4108732 := by
    unfold C
    simp [show (1572864 * k + 1369577) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 4108732) = 2359296 * k + 2054366 := by
    unfold C
    simp [show (4718592 * k + 4108732) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 2054366) = 1179648 * k + 1027183 := by
    unfold C
    simp [show (2359296 * k + 2054366) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 1027183) = 3538944 * k + 3081550 := by
    unfold C
    simp [show (1179648 * k + 1027183) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 3081550) = 1769472 * k + 1540775 := by
    unfold C
    simp [show (3538944 * k + 3081550) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1540775) = 5308416 * k + 4622326 := by
    unfold C
    simp [show (1769472 * k + 1540775) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 4622326) = 2654208 * k + 2311163 := by
    unfold C
    simp [show (5308416 * k + 4622326) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 2311163) = 7962624 * k + 6933490 := by
    unfold C
    simp [show (2654208 * k + 2311163) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 6933490) = 3981312 * k + 3466745 := by
    unfold C
    simp [show (7962624 * k + 6933490) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 3466745) = 11943936 * k + 10400236 := by
    unfold C
    simp [show (3981312 * k + 3466745) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 10400236) = 5971968 * k + 5200118 := by
    unfold C
    simp [show (11943936 * k + 10400236) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 5200118) = 2985984 * k + 2600059 := by
    unfold C
    simp [show (5971968 * k + 5200118) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 2600059) = 8957952 * k + 7800178 := by
    unfold C
    simp [show (2985984 * k + 2600059) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 7800178) = 4478976 * k + 3900089 := by
    unfold C
    simp [show (8957952 * k + 7800178) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 3900089) = 13436928 * k + 11700268 := by
    unfold C
    simp [show (4478976 * k + 3900089) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 11700268) = 6718464 * k + 5850134 := by
    unfold C
    simp [show (13436928 * k + 11700268) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 5850134) = 3359232 * k + 2925067 := by
    unfold C
    simp [show (6718464 * k + 5850134) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 2925067) = 10077696 * k + 8775202 := by
    unfold C
    simp [show (3359232 * k + 2925067) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 8775202) = 5038848 * k + 4387601 := by
    unfold C
    simp [show (10077696 * k + 8775202) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 4387601) = 15116544 * k + 13162804 := by
    unfold C
    simp [show (5038848 * k + 4387601) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 13162804) = 7558272 * k + 6581402 := by
    unfold C
    simp [show (15116544 * k + 13162804) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 6581402) = 3779136 * k + 3290701 := by
    unfold C
    simp [show (7558272 * k + 6581402) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 3290701) = 11337408 * k + 9872104 := by
    unfold C
    simp [show (3779136 * k + 3290701) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 9872104) = 5668704 * k + 4936052 := by
    unfold C
    simp [show (11337408 * k + 9872104) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 4936052) = 2834352 * k + 2468026 := by
    unfold C
    simp [show (5668704 * k + 4936052) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2468026) = 1417176 * k + 1234013 := by
    unfold C
    simp [show (2834352 * k + 2468026) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 1234013) = 4251528 * k + 3702040 := by
    unfold C
    simp [show (1417176 * k + 1234013) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 3702040) = 2125764 * k + 1851020 := by
    unfold C
    simp [show (4251528 * k + 3702040) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1851020) = 1062882 * k + 925510 := by
    unfold C
    simp [show (2125764 * k + 1851020) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 925510) = 531441 * k + 462755 := by
    unfold C
    simp [show (1062882 * k + 925510) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 913051) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 913051)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_913519 : ∀ k : Nat,
    iterate (1048576 * k + 913519) 32 = 531441 * k + 462992 ∧
      531441 * k + 462992 < 1048576 * k + 913519 := by
  intro k
  have h1 : C (1048576 * k + 913519) = 3145728 * k + 2740558 := by
    unfold C
    simp [show (1048576 * k + 913519) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2740558) = 1572864 * k + 1370279 := by
    unfold C
    simp [show (3145728 * k + 2740558) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1370279) = 4718592 * k + 4110838 := by
    unfold C
    simp [show (1572864 * k + 1370279) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 4110838) = 2359296 * k + 2055419 := by
    unfold C
    simp [show (4718592 * k + 4110838) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 2055419) = 7077888 * k + 6166258 := by
    unfold C
    simp [show (2359296 * k + 2055419) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 6166258) = 3538944 * k + 3083129 := by
    unfold C
    simp [show (7077888 * k + 6166258) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 3083129) = 10616832 * k + 9249388 := by
    unfold C
    simp [show (3538944 * k + 3083129) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 9249388) = 5308416 * k + 4624694 := by
    unfold C
    simp [show (10616832 * k + 9249388) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 4624694) = 2654208 * k + 2312347 := by
    unfold C
    simp [show (5308416 * k + 4624694) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 2312347) = 7962624 * k + 6937042 := by
    unfold C
    simp [show (2654208 * k + 2312347) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 6937042) = 3981312 * k + 3468521 := by
    unfold C
    simp [show (7962624 * k + 6937042) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 3468521) = 11943936 * k + 10405564 := by
    unfold C
    simp [show (3981312 * k + 3468521) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 10405564) = 5971968 * k + 5202782 := by
    unfold C
    simp [show (11943936 * k + 10405564) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 5202782) = 2985984 * k + 2601391 := by
    unfold C
    simp [show (5971968 * k + 5202782) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 2601391) = 8957952 * k + 7804174 := by
    unfold C
    simp [show (2985984 * k + 2601391) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 7804174) = 4478976 * k + 3902087 := by
    unfold C
    simp [show (8957952 * k + 7804174) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 3902087) = 13436928 * k + 11706262 := by
    unfold C
    simp [show (4478976 * k + 3902087) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 11706262) = 6718464 * k + 5853131 := by
    unfold C
    simp [show (13436928 * k + 11706262) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 5853131) = 20155392 * k + 17559394 := by
    unfold C
    simp [show (6718464 * k + 5853131) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 17559394) = 10077696 * k + 8779697 := by
    unfold C
    simp [show (20155392 * k + 17559394) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 8779697) = 30233088 * k + 26339092 := by
    unfold C
    simp [show (10077696 * k + 8779697) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 26339092) = 15116544 * k + 13169546 := by
    unfold C
    simp [show (30233088 * k + 26339092) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 13169546) = 7558272 * k + 6584773 := by
    unfold C
    simp [show (15116544 * k + 13169546) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 6584773) = 22674816 * k + 19754320 := by
    unfold C
    simp [show (7558272 * k + 6584773) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 19754320) = 11337408 * k + 9877160 := by
    unfold C
    simp [show (22674816 * k + 19754320) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 9877160) = 5668704 * k + 4938580 := by
    unfold C
    simp [show (11337408 * k + 9877160) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 4938580) = 2834352 * k + 2469290 := by
    unfold C
    simp [show (5668704 * k + 4938580) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2469290) = 1417176 * k + 1234645 := by
    unfold C
    simp [show (2834352 * k + 2469290) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 1234645) = 4251528 * k + 3703936 := by
    unfold C
    simp [show (1417176 * k + 1234645) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 3703936) = 2125764 * k + 1851968 := by
    unfold C
    simp [show (4251528 * k + 3703936) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1851968) = 1062882 * k + 925984 := by
    unfold C
    simp [show (2125764 * k + 1851968) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 925984) = 531441 * k + 462992 := by
    unfold C
    simp [show (1062882 * k + 925984) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 913519) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 913519)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

end CollatzM20Shard116
