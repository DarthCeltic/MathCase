import Mathlib.Data.Nat.Prime.Basic

namespace CollatzM20Shard096

def C (n : Nat) : Nat := if n % 2 = 0 then n / 2 else 3 * n + 1

def iterate (n t : Nat) : Nat := Nat.rec n (fun _ previous => C previous) t

theorem descent_mod1048576_744475 : ∀ k : Nat,
    iterate (1048576 * k + 744475) 32 = 531441 * k + 377317 ∧
      531441 * k + 377317 < 1048576 * k + 744475 := by
  intro k
  have h1 : C (1048576 * k + 744475) = 3145728 * k + 2233426 := by
    unfold C
    simp [show (1048576 * k + 744475) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2233426) = 1572864 * k + 1116713 := by
    unfold C
    simp [show (3145728 * k + 2233426) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1116713) = 4718592 * k + 3350140 := by
    unfold C
    simp [show (1572864 * k + 1116713) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3350140) = 2359296 * k + 1675070 := by
    unfold C
    simp [show (4718592 * k + 3350140) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1675070) = 1179648 * k + 837535 := by
    unfold C
    simp [show (2359296 * k + 1675070) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 837535) = 3538944 * k + 2512606 := by
    unfold C
    simp [show (1179648 * k + 837535) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 2512606) = 1769472 * k + 1256303 := by
    unfold C
    simp [show (3538944 * k + 2512606) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1256303) = 5308416 * k + 3768910 := by
    unfold C
    simp [show (1769472 * k + 1256303) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 3768910) = 2654208 * k + 1884455 := by
    unfold C
    simp [show (5308416 * k + 3768910) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1884455) = 7962624 * k + 5653366 := by
    unfold C
    simp [show (2654208 * k + 1884455) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 5653366) = 3981312 * k + 2826683 := by
    unfold C
    simp [show (7962624 * k + 5653366) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 2826683) = 11943936 * k + 8480050 := by
    unfold C
    simp [show (3981312 * k + 2826683) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 8480050) = 5971968 * k + 4240025 := by
    unfold C
    simp [show (11943936 * k + 8480050) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 4240025) = 17915904 * k + 12720076 := by
    unfold C
    simp [show (5971968 * k + 4240025) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 12720076) = 8957952 * k + 6360038 := by
    unfold C
    simp [show (17915904 * k + 12720076) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 6360038) = 4478976 * k + 3180019 := by
    unfold C
    simp [show (8957952 * k + 6360038) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 3180019) = 13436928 * k + 9540058 := by
    unfold C
    simp [show (4478976 * k + 3180019) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 9540058) = 6718464 * k + 4770029 := by
    unfold C
    simp [show (13436928 * k + 9540058) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 4770029) = 20155392 * k + 14310088 := by
    unfold C
    simp [show (6718464 * k + 4770029) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 14310088) = 10077696 * k + 7155044 := by
    unfold C
    simp [show (20155392 * k + 14310088) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 7155044) = 5038848 * k + 3577522 := by
    unfold C
    simp [show (10077696 * k + 7155044) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 3577522) = 2519424 * k + 1788761 := by
    unfold C
    simp [show (5038848 * k + 3577522) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1788761) = 7558272 * k + 5366284 := by
    unfold C
    simp [show (2519424 * k + 1788761) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 5366284) = 3779136 * k + 2683142 := by
    unfold C
    simp [show (7558272 * k + 5366284) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 2683142) = 1889568 * k + 1341571 := by
    unfold C
    simp [show (3779136 * k + 2683142) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1341571) = 5668704 * k + 4024714 := by
    unfold C
    simp [show (1889568 * k + 1341571) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 4024714) = 2834352 * k + 2012357 := by
    unfold C
    simp [show (5668704 * k + 4024714) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2012357) = 8503056 * k + 6037072 := by
    unfold C
    simp [show (2834352 * k + 2012357) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 6037072) = 4251528 * k + 3018536 := by
    unfold C
    simp [show (8503056 * k + 6037072) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 3018536) = 2125764 * k + 1509268 := by
    unfold C
    simp [show (4251528 * k + 3018536) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1509268) = 1062882 * k + 754634 := by
    unfold C
    simp [show (2125764 * k + 1509268) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 754634) = 531441 * k + 377317 := by
    unfold C
    simp [show (1062882 * k + 754634) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 744475) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 744475)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_744767 : ∀ k : Nat,
    iterate (1048576 * k + 744767) 32 = 531441 * k + 377465 ∧
      531441 * k + 377465 < 1048576 * k + 744767 := by
  intro k
  have h1 : C (1048576 * k + 744767) = 3145728 * k + 2234302 := by
    unfold C
    simp [show (1048576 * k + 744767) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2234302) = 1572864 * k + 1117151 := by
    unfold C
    simp [show (3145728 * k + 2234302) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1117151) = 4718592 * k + 3351454 := by
    unfold C
    simp [show (1572864 * k + 1117151) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3351454) = 2359296 * k + 1675727 := by
    unfold C
    simp [show (4718592 * k + 3351454) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1675727) = 7077888 * k + 5027182 := by
    unfold C
    simp [show (2359296 * k + 1675727) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 5027182) = 3538944 * k + 2513591 := by
    unfold C
    simp [show (7077888 * k + 5027182) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2513591) = 10616832 * k + 7540774 := by
    unfold C
    simp [show (3538944 * k + 2513591) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 7540774) = 5308416 * k + 3770387 := by
    unfold C
    simp [show (10616832 * k + 7540774) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 3770387) = 15925248 * k + 11311162 := by
    unfold C
    simp [show (5308416 * k + 3770387) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 11311162) = 7962624 * k + 5655581 := by
    unfold C
    simp [show (15925248 * k + 11311162) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 5655581) = 23887872 * k + 16966744 := by
    unfold C
    simp [show (7962624 * k + 5655581) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 16966744) = 11943936 * k + 8483372 := by
    unfold C
    simp [show (23887872 * k + 16966744) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 8483372) = 5971968 * k + 4241686 := by
    unfold C
    simp [show (11943936 * k + 8483372) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 4241686) = 2985984 * k + 2120843 := by
    unfold C
    simp [show (5971968 * k + 4241686) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 2120843) = 8957952 * k + 6362530 := by
    unfold C
    simp [show (2985984 * k + 2120843) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 6362530) = 4478976 * k + 3181265 := by
    unfold C
    simp [show (8957952 * k + 6362530) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 3181265) = 13436928 * k + 9543796 := by
    unfold C
    simp [show (4478976 * k + 3181265) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 9543796) = 6718464 * k + 4771898 := by
    unfold C
    simp [show (13436928 * k + 9543796) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 4771898) = 3359232 * k + 2385949 := by
    unfold C
    simp [show (6718464 * k + 4771898) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 2385949) = 10077696 * k + 7157848 := by
    unfold C
    simp [show (3359232 * k + 2385949) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 7157848) = 5038848 * k + 3578924 := by
    unfold C
    simp [show (10077696 * k + 7157848) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 3578924) = 2519424 * k + 1789462 := by
    unfold C
    simp [show (5038848 * k + 3578924) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1789462) = 1259712 * k + 894731 := by
    unfold C
    simp [show (2519424 * k + 1789462) % 2 = 0 by omega]
    omega
  have h24 : C (1259712 * k + 894731) = 3779136 * k + 2684194 := by
    unfold C
    simp [show (1259712 * k + 894731) % 2 ≠ 0 by omega]
    omega
  have h25 : C (3779136 * k + 2684194) = 1889568 * k + 1342097 := by
    unfold C
    simp [show (3779136 * k + 2684194) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1342097) = 5668704 * k + 4026292 := by
    unfold C
    simp [show (1889568 * k + 1342097) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 4026292) = 2834352 * k + 2013146 := by
    unfold C
    simp [show (5668704 * k + 4026292) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2013146) = 1417176 * k + 1006573 := by
    unfold C
    simp [show (2834352 * k + 2013146) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 1006573) = 4251528 * k + 3019720 := by
    unfold C
    simp [show (1417176 * k + 1006573) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 3019720) = 2125764 * k + 1509860 := by
    unfold C
    simp [show (4251528 * k + 3019720) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1509860) = 1062882 * k + 754930 := by
    unfold C
    simp [show (2125764 * k + 1509860) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 754930) = 531441 * k + 377465 := by
    unfold C
    simp [show (1062882 * k + 754930) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 744767) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 744767)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_744807 : ∀ k : Nat,
    iterate (1048576 * k + 744807) 32 = 531441 * k + 377485 ∧
      531441 * k + 377485 < 1048576 * k + 744807 := by
  intro k
  have h1 : C (1048576 * k + 744807) = 3145728 * k + 2234422 := by
    unfold C
    simp [show (1048576 * k + 744807) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2234422) = 1572864 * k + 1117211 := by
    unfold C
    simp [show (3145728 * k + 2234422) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1117211) = 4718592 * k + 3351634 := by
    unfold C
    simp [show (1572864 * k + 1117211) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3351634) = 2359296 * k + 1675817 := by
    unfold C
    simp [show (4718592 * k + 3351634) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1675817) = 7077888 * k + 5027452 := by
    unfold C
    simp [show (2359296 * k + 1675817) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 5027452) = 3538944 * k + 2513726 := by
    unfold C
    simp [show (7077888 * k + 5027452) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2513726) = 1769472 * k + 1256863 := by
    unfold C
    simp [show (3538944 * k + 2513726) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1256863) = 5308416 * k + 3770590 := by
    unfold C
    simp [show (1769472 * k + 1256863) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 3770590) = 2654208 * k + 1885295 := by
    unfold C
    simp [show (5308416 * k + 3770590) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1885295) = 7962624 * k + 5655886 := by
    unfold C
    simp [show (2654208 * k + 1885295) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 5655886) = 3981312 * k + 2827943 := by
    unfold C
    simp [show (7962624 * k + 5655886) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 2827943) = 11943936 * k + 8483830 := by
    unfold C
    simp [show (3981312 * k + 2827943) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 8483830) = 5971968 * k + 4241915 := by
    unfold C
    simp [show (11943936 * k + 8483830) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 4241915) = 17915904 * k + 12725746 := by
    unfold C
    simp [show (5971968 * k + 4241915) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 12725746) = 8957952 * k + 6362873 := by
    unfold C
    simp [show (17915904 * k + 12725746) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 6362873) = 26873856 * k + 19088620 := by
    unfold C
    simp [show (8957952 * k + 6362873) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 19088620) = 13436928 * k + 9544310 := by
    unfold C
    simp [show (26873856 * k + 19088620) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 9544310) = 6718464 * k + 4772155 := by
    unfold C
    simp [show (13436928 * k + 9544310) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 4772155) = 20155392 * k + 14316466 := by
    unfold C
    simp [show (6718464 * k + 4772155) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 14316466) = 10077696 * k + 7158233 := by
    unfold C
    simp [show (20155392 * k + 14316466) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 7158233) = 30233088 * k + 21474700 := by
    unfold C
    simp [show (10077696 * k + 7158233) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 21474700) = 15116544 * k + 10737350 := by
    unfold C
    simp [show (30233088 * k + 21474700) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 10737350) = 7558272 * k + 5368675 := by
    unfold C
    simp [show (15116544 * k + 10737350) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 5368675) = 22674816 * k + 16106026 := by
    unfold C
    simp [show (7558272 * k + 5368675) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 16106026) = 11337408 * k + 8053013 := by
    unfold C
    simp [show (22674816 * k + 16106026) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 8053013) = 34012224 * k + 24159040 := by
    unfold C
    simp [show (11337408 * k + 8053013) % 2 ≠ 0 by omega]
    omega
  have h27 : C (34012224 * k + 24159040) = 17006112 * k + 12079520 := by
    unfold C
    simp [show (34012224 * k + 24159040) % 2 = 0 by omega]
    omega
  have h28 : C (17006112 * k + 12079520) = 8503056 * k + 6039760 := by
    unfold C
    simp [show (17006112 * k + 12079520) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 6039760) = 4251528 * k + 3019880 := by
    unfold C
    simp [show (8503056 * k + 6039760) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 3019880) = 2125764 * k + 1509940 := by
    unfold C
    simp [show (4251528 * k + 3019880) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1509940) = 1062882 * k + 754970 := by
    unfold C
    simp [show (2125764 * k + 1509940) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 754970) = 531441 * k + 377485 := by
    unfold C
    simp [show (1062882 * k + 754970) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 744807) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 744807)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_744927 : ∀ k : Nat,
    iterate (1048576 * k + 744927) 32 = 531441 * k + 377546 ∧
      531441 * k + 377546 < 1048576 * k + 744927 := by
  intro k
  have h1 : C (1048576 * k + 744927) = 3145728 * k + 2234782 := by
    unfold C
    simp [show (1048576 * k + 744927) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2234782) = 1572864 * k + 1117391 := by
    unfold C
    simp [show (3145728 * k + 2234782) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1117391) = 4718592 * k + 3352174 := by
    unfold C
    simp [show (1572864 * k + 1117391) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3352174) = 2359296 * k + 1676087 := by
    unfold C
    simp [show (4718592 * k + 3352174) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1676087) = 7077888 * k + 5028262 := by
    unfold C
    simp [show (2359296 * k + 1676087) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 5028262) = 3538944 * k + 2514131 := by
    unfold C
    simp [show (7077888 * k + 5028262) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2514131) = 10616832 * k + 7542394 := by
    unfold C
    simp [show (3538944 * k + 2514131) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 7542394) = 5308416 * k + 3771197 := by
    unfold C
    simp [show (10616832 * k + 7542394) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 3771197) = 15925248 * k + 11313592 := by
    unfold C
    simp [show (5308416 * k + 3771197) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 11313592) = 7962624 * k + 5656796 := by
    unfold C
    simp [show (15925248 * k + 11313592) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 5656796) = 3981312 * k + 2828398 := by
    unfold C
    simp [show (7962624 * k + 5656796) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 2828398) = 1990656 * k + 1414199 := by
    unfold C
    simp [show (3981312 * k + 2828398) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 1414199) = 5971968 * k + 4242598 := by
    unfold C
    simp [show (1990656 * k + 1414199) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 4242598) = 2985984 * k + 2121299 := by
    unfold C
    simp [show (5971968 * k + 4242598) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 2121299) = 8957952 * k + 6363898 := by
    unfold C
    simp [show (2985984 * k + 2121299) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 6363898) = 4478976 * k + 3181949 := by
    unfold C
    simp [show (8957952 * k + 6363898) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 3181949) = 13436928 * k + 9545848 := by
    unfold C
    simp [show (4478976 * k + 3181949) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 9545848) = 6718464 * k + 4772924 := by
    unfold C
    simp [show (13436928 * k + 9545848) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 4772924) = 3359232 * k + 2386462 := by
    unfold C
    simp [show (6718464 * k + 4772924) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 2386462) = 1679616 * k + 1193231 := by
    unfold C
    simp [show (3359232 * k + 2386462) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 1193231) = 5038848 * k + 3579694 := by
    unfold C
    simp [show (1679616 * k + 1193231) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 3579694) = 2519424 * k + 1789847 := by
    unfold C
    simp [show (5038848 * k + 3579694) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1789847) = 7558272 * k + 5369542 := by
    unfold C
    simp [show (2519424 * k + 1789847) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 5369542) = 3779136 * k + 2684771 := by
    unfold C
    simp [show (7558272 * k + 5369542) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 2684771) = 11337408 * k + 8054314 := by
    unfold C
    simp [show (3779136 * k + 2684771) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 8054314) = 5668704 * k + 4027157 := by
    unfold C
    simp [show (11337408 * k + 8054314) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 4027157) = 17006112 * k + 12081472 := by
    unfold C
    simp [show (5668704 * k + 4027157) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 12081472) = 8503056 * k + 6040736 := by
    unfold C
    simp [show (17006112 * k + 12081472) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 6040736) = 4251528 * k + 3020368 := by
    unfold C
    simp [show (8503056 * k + 6040736) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 3020368) = 2125764 * k + 1510184 := by
    unfold C
    simp [show (4251528 * k + 3020368) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1510184) = 1062882 * k + 755092 := by
    unfold C
    simp [show (2125764 * k + 1510184) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 755092) = 531441 * k + 377546 := by
    unfold C
    simp [show (1062882 * k + 755092) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 744927) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 744927)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_745375 : ∀ k : Nat,
    iterate (1048576 * k + 745375) 32 = 531441 * k + 377773 ∧
      531441 * k + 377773 < 1048576 * k + 745375 := by
  intro k
  have h1 : C (1048576 * k + 745375) = 3145728 * k + 2236126 := by
    unfold C
    simp [show (1048576 * k + 745375) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2236126) = 1572864 * k + 1118063 := by
    unfold C
    simp [show (3145728 * k + 2236126) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1118063) = 4718592 * k + 3354190 := by
    unfold C
    simp [show (1572864 * k + 1118063) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3354190) = 2359296 * k + 1677095 := by
    unfold C
    simp [show (4718592 * k + 3354190) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1677095) = 7077888 * k + 5031286 := by
    unfold C
    simp [show (2359296 * k + 1677095) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 5031286) = 3538944 * k + 2515643 := by
    unfold C
    simp [show (7077888 * k + 5031286) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2515643) = 10616832 * k + 7546930 := by
    unfold C
    simp [show (3538944 * k + 2515643) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 7546930) = 5308416 * k + 3773465 := by
    unfold C
    simp [show (10616832 * k + 7546930) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 3773465) = 15925248 * k + 11320396 := by
    unfold C
    simp [show (5308416 * k + 3773465) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 11320396) = 7962624 * k + 5660198 := by
    unfold C
    simp [show (15925248 * k + 11320396) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 5660198) = 3981312 * k + 2830099 := by
    unfold C
    simp [show (7962624 * k + 5660198) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 2830099) = 11943936 * k + 8490298 := by
    unfold C
    simp [show (3981312 * k + 2830099) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 8490298) = 5971968 * k + 4245149 := by
    unfold C
    simp [show (11943936 * k + 8490298) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 4245149) = 17915904 * k + 12735448 := by
    unfold C
    simp [show (5971968 * k + 4245149) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 12735448) = 8957952 * k + 6367724 := by
    unfold C
    simp [show (17915904 * k + 12735448) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 6367724) = 4478976 * k + 3183862 := by
    unfold C
    simp [show (8957952 * k + 6367724) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 3183862) = 2239488 * k + 1591931 := by
    unfold C
    simp [show (4478976 * k + 3183862) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 1591931) = 6718464 * k + 4775794 := by
    unfold C
    simp [show (2239488 * k + 1591931) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 4775794) = 3359232 * k + 2387897 := by
    unfold C
    simp [show (6718464 * k + 4775794) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 2387897) = 10077696 * k + 7163692 := by
    unfold C
    simp [show (3359232 * k + 2387897) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 7163692) = 5038848 * k + 3581846 := by
    unfold C
    simp [show (10077696 * k + 7163692) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 3581846) = 2519424 * k + 1790923 := by
    unfold C
    simp [show (5038848 * k + 3581846) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1790923) = 7558272 * k + 5372770 := by
    unfold C
    simp [show (2519424 * k + 1790923) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 5372770) = 3779136 * k + 2686385 := by
    unfold C
    simp [show (7558272 * k + 5372770) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 2686385) = 11337408 * k + 8059156 := by
    unfold C
    simp [show (3779136 * k + 2686385) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 8059156) = 5668704 * k + 4029578 := by
    unfold C
    simp [show (11337408 * k + 8059156) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 4029578) = 2834352 * k + 2014789 := by
    unfold C
    simp [show (5668704 * k + 4029578) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2014789) = 8503056 * k + 6044368 := by
    unfold C
    simp [show (2834352 * k + 2014789) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 6044368) = 4251528 * k + 3022184 := by
    unfold C
    simp [show (8503056 * k + 6044368) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 3022184) = 2125764 * k + 1511092 := by
    unfold C
    simp [show (4251528 * k + 3022184) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1511092) = 1062882 * k + 755546 := by
    unfold C
    simp [show (2125764 * k + 1511092) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 755546) = 531441 * k + 377773 := by
    unfold C
    simp [show (1062882 * k + 755546) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 745375) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 745375)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_745519 : ∀ k : Nat,
    iterate (1048576 * k + 745519) 32 = 531441 * k + 377846 ∧
      531441 * k + 377846 < 1048576 * k + 745519 := by
  intro k
  have h1 : C (1048576 * k + 745519) = 3145728 * k + 2236558 := by
    unfold C
    simp [show (1048576 * k + 745519) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2236558) = 1572864 * k + 1118279 := by
    unfold C
    simp [show (3145728 * k + 2236558) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1118279) = 4718592 * k + 3354838 := by
    unfold C
    simp [show (1572864 * k + 1118279) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3354838) = 2359296 * k + 1677419 := by
    unfold C
    simp [show (4718592 * k + 3354838) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1677419) = 7077888 * k + 5032258 := by
    unfold C
    simp [show (2359296 * k + 1677419) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 5032258) = 3538944 * k + 2516129 := by
    unfold C
    simp [show (7077888 * k + 5032258) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2516129) = 10616832 * k + 7548388 := by
    unfold C
    simp [show (3538944 * k + 2516129) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 7548388) = 5308416 * k + 3774194 := by
    unfold C
    simp [show (10616832 * k + 7548388) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 3774194) = 2654208 * k + 1887097 := by
    unfold C
    simp [show (5308416 * k + 3774194) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1887097) = 7962624 * k + 5661292 := by
    unfold C
    simp [show (2654208 * k + 1887097) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 5661292) = 3981312 * k + 2830646 := by
    unfold C
    simp [show (7962624 * k + 5661292) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 2830646) = 1990656 * k + 1415323 := by
    unfold C
    simp [show (3981312 * k + 2830646) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 1415323) = 5971968 * k + 4245970 := by
    unfold C
    simp [show (1990656 * k + 1415323) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 4245970) = 2985984 * k + 2122985 := by
    unfold C
    simp [show (5971968 * k + 4245970) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 2122985) = 8957952 * k + 6368956 := by
    unfold C
    simp [show (2985984 * k + 2122985) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 6368956) = 4478976 * k + 3184478 := by
    unfold C
    simp [show (8957952 * k + 6368956) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 3184478) = 2239488 * k + 1592239 := by
    unfold C
    simp [show (4478976 * k + 3184478) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 1592239) = 6718464 * k + 4776718 := by
    unfold C
    simp [show (2239488 * k + 1592239) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 4776718) = 3359232 * k + 2388359 := by
    unfold C
    simp [show (6718464 * k + 4776718) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 2388359) = 10077696 * k + 7165078 := by
    unfold C
    simp [show (3359232 * k + 2388359) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 7165078) = 5038848 * k + 3582539 := by
    unfold C
    simp [show (10077696 * k + 7165078) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 3582539) = 15116544 * k + 10747618 := by
    unfold C
    simp [show (5038848 * k + 3582539) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 10747618) = 7558272 * k + 5373809 := by
    unfold C
    simp [show (15116544 * k + 10747618) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 5373809) = 22674816 * k + 16121428 := by
    unfold C
    simp [show (7558272 * k + 5373809) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 16121428) = 11337408 * k + 8060714 := by
    unfold C
    simp [show (22674816 * k + 16121428) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 8060714) = 5668704 * k + 4030357 := by
    unfold C
    simp [show (11337408 * k + 8060714) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 4030357) = 17006112 * k + 12091072 := by
    unfold C
    simp [show (5668704 * k + 4030357) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 12091072) = 8503056 * k + 6045536 := by
    unfold C
    simp [show (17006112 * k + 12091072) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 6045536) = 4251528 * k + 3022768 := by
    unfold C
    simp [show (8503056 * k + 6045536) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 3022768) = 2125764 * k + 1511384 := by
    unfold C
    simp [show (4251528 * k + 3022768) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1511384) = 1062882 * k + 755692 := by
    unfold C
    simp [show (2125764 * k + 1511384) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 755692) = 531441 * k + 377846 := by
    unfold C
    simp [show (1062882 * k + 755692) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 745519) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 745519)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_745951 : ∀ k : Nat,
    iterate (1048576 * k + 745951) 32 = 531441 * k + 378065 ∧
      531441 * k + 378065 < 1048576 * k + 745951 := by
  intro k
  have h1 : C (1048576 * k + 745951) = 3145728 * k + 2237854 := by
    unfold C
    simp [show (1048576 * k + 745951) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2237854) = 1572864 * k + 1118927 := by
    unfold C
    simp [show (3145728 * k + 2237854) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1118927) = 4718592 * k + 3356782 := by
    unfold C
    simp [show (1572864 * k + 1118927) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3356782) = 2359296 * k + 1678391 := by
    unfold C
    simp [show (4718592 * k + 3356782) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1678391) = 7077888 * k + 5035174 := by
    unfold C
    simp [show (2359296 * k + 1678391) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 5035174) = 3538944 * k + 2517587 := by
    unfold C
    simp [show (7077888 * k + 5035174) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2517587) = 10616832 * k + 7552762 := by
    unfold C
    simp [show (3538944 * k + 2517587) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 7552762) = 5308416 * k + 3776381 := by
    unfold C
    simp [show (10616832 * k + 7552762) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 3776381) = 15925248 * k + 11329144 := by
    unfold C
    simp [show (5308416 * k + 3776381) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 11329144) = 7962624 * k + 5664572 := by
    unfold C
    simp [show (15925248 * k + 11329144) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 5664572) = 3981312 * k + 2832286 := by
    unfold C
    simp [show (7962624 * k + 5664572) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 2832286) = 1990656 * k + 1416143 := by
    unfold C
    simp [show (3981312 * k + 2832286) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 1416143) = 5971968 * k + 4248430 := by
    unfold C
    simp [show (1990656 * k + 1416143) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 4248430) = 2985984 * k + 2124215 := by
    unfold C
    simp [show (5971968 * k + 4248430) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 2124215) = 8957952 * k + 6372646 := by
    unfold C
    simp [show (2985984 * k + 2124215) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 6372646) = 4478976 * k + 3186323 := by
    unfold C
    simp [show (8957952 * k + 6372646) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 3186323) = 13436928 * k + 9558970 := by
    unfold C
    simp [show (4478976 * k + 3186323) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 9558970) = 6718464 * k + 4779485 := by
    unfold C
    simp [show (13436928 * k + 9558970) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 4779485) = 20155392 * k + 14338456 := by
    unfold C
    simp [show (6718464 * k + 4779485) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 14338456) = 10077696 * k + 7169228 := by
    unfold C
    simp [show (20155392 * k + 14338456) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 7169228) = 5038848 * k + 3584614 := by
    unfold C
    simp [show (10077696 * k + 7169228) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 3584614) = 2519424 * k + 1792307 := by
    unfold C
    simp [show (5038848 * k + 3584614) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1792307) = 7558272 * k + 5376922 := by
    unfold C
    simp [show (2519424 * k + 1792307) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 5376922) = 3779136 * k + 2688461 := by
    unfold C
    simp [show (7558272 * k + 5376922) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 2688461) = 11337408 * k + 8065384 := by
    unfold C
    simp [show (3779136 * k + 2688461) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 8065384) = 5668704 * k + 4032692 := by
    unfold C
    simp [show (11337408 * k + 8065384) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 4032692) = 2834352 * k + 2016346 := by
    unfold C
    simp [show (5668704 * k + 4032692) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2016346) = 1417176 * k + 1008173 := by
    unfold C
    simp [show (2834352 * k + 2016346) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 1008173) = 4251528 * k + 3024520 := by
    unfold C
    simp [show (1417176 * k + 1008173) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 3024520) = 2125764 * k + 1512260 := by
    unfold C
    simp [show (4251528 * k + 3024520) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1512260) = 1062882 * k + 756130 := by
    unfold C
    simp [show (2125764 * k + 1512260) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 756130) = 531441 * k + 378065 := by
    unfold C
    simp [show (1062882 * k + 756130) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 745951) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 745951)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_745967 : ∀ k : Nat,
    iterate (1048576 * k + 745967) 32 = 531441 * k + 378073 ∧
      531441 * k + 378073 < 1048576 * k + 745967 := by
  intro k
  have h1 : C (1048576 * k + 745967) = 3145728 * k + 2237902 := by
    unfold C
    simp [show (1048576 * k + 745967) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2237902) = 1572864 * k + 1118951 := by
    unfold C
    simp [show (3145728 * k + 2237902) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1118951) = 4718592 * k + 3356854 := by
    unfold C
    simp [show (1572864 * k + 1118951) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3356854) = 2359296 * k + 1678427 := by
    unfold C
    simp [show (4718592 * k + 3356854) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1678427) = 7077888 * k + 5035282 := by
    unfold C
    simp [show (2359296 * k + 1678427) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 5035282) = 3538944 * k + 2517641 := by
    unfold C
    simp [show (7077888 * k + 5035282) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2517641) = 10616832 * k + 7552924 := by
    unfold C
    simp [show (3538944 * k + 2517641) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 7552924) = 5308416 * k + 3776462 := by
    unfold C
    simp [show (10616832 * k + 7552924) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 3776462) = 2654208 * k + 1888231 := by
    unfold C
    simp [show (5308416 * k + 3776462) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1888231) = 7962624 * k + 5664694 := by
    unfold C
    simp [show (2654208 * k + 1888231) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 5664694) = 3981312 * k + 2832347 := by
    unfold C
    simp [show (7962624 * k + 5664694) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 2832347) = 11943936 * k + 8497042 := by
    unfold C
    simp [show (3981312 * k + 2832347) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 8497042) = 5971968 * k + 4248521 := by
    unfold C
    simp [show (11943936 * k + 8497042) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 4248521) = 17915904 * k + 12745564 := by
    unfold C
    simp [show (5971968 * k + 4248521) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 12745564) = 8957952 * k + 6372782 := by
    unfold C
    simp [show (17915904 * k + 12745564) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 6372782) = 4478976 * k + 3186391 := by
    unfold C
    simp [show (8957952 * k + 6372782) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 3186391) = 13436928 * k + 9559174 := by
    unfold C
    simp [show (4478976 * k + 3186391) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 9559174) = 6718464 * k + 4779587 := by
    unfold C
    simp [show (13436928 * k + 9559174) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 4779587) = 20155392 * k + 14338762 := by
    unfold C
    simp [show (6718464 * k + 4779587) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 14338762) = 10077696 * k + 7169381 := by
    unfold C
    simp [show (20155392 * k + 14338762) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 7169381) = 30233088 * k + 21508144 := by
    unfold C
    simp [show (10077696 * k + 7169381) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 21508144) = 15116544 * k + 10754072 := by
    unfold C
    simp [show (30233088 * k + 21508144) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 10754072) = 7558272 * k + 5377036 := by
    unfold C
    simp [show (15116544 * k + 10754072) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 5377036) = 3779136 * k + 2688518 := by
    unfold C
    simp [show (7558272 * k + 5377036) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 2688518) = 1889568 * k + 1344259 := by
    unfold C
    simp [show (3779136 * k + 2688518) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1344259) = 5668704 * k + 4032778 := by
    unfold C
    simp [show (1889568 * k + 1344259) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 4032778) = 2834352 * k + 2016389 := by
    unfold C
    simp [show (5668704 * k + 4032778) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2016389) = 8503056 * k + 6049168 := by
    unfold C
    simp [show (2834352 * k + 2016389) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 6049168) = 4251528 * k + 3024584 := by
    unfold C
    simp [show (8503056 * k + 6049168) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 3024584) = 2125764 * k + 1512292 := by
    unfold C
    simp [show (4251528 * k + 3024584) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1512292) = 1062882 * k + 756146 := by
    unfold C
    simp [show (2125764 * k + 1512292) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 756146) = 531441 * k + 378073 := by
    unfold C
    simp [show (1062882 * k + 756146) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 745967) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 745967)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_747111 : ∀ k : Nat,
    iterate (1048576 * k + 747111) 32 = 531441 * k + 378653 ∧
      531441 * k + 378653 < 1048576 * k + 747111 := by
  intro k
  have h1 : C (1048576 * k + 747111) = 3145728 * k + 2241334 := by
    unfold C
    simp [show (1048576 * k + 747111) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2241334) = 1572864 * k + 1120667 := by
    unfold C
    simp [show (3145728 * k + 2241334) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1120667) = 4718592 * k + 3362002 := by
    unfold C
    simp [show (1572864 * k + 1120667) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3362002) = 2359296 * k + 1681001 := by
    unfold C
    simp [show (4718592 * k + 3362002) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1681001) = 7077888 * k + 5043004 := by
    unfold C
    simp [show (2359296 * k + 1681001) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 5043004) = 3538944 * k + 2521502 := by
    unfold C
    simp [show (7077888 * k + 5043004) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2521502) = 1769472 * k + 1260751 := by
    unfold C
    simp [show (3538944 * k + 2521502) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1260751) = 5308416 * k + 3782254 := by
    unfold C
    simp [show (1769472 * k + 1260751) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 3782254) = 2654208 * k + 1891127 := by
    unfold C
    simp [show (5308416 * k + 3782254) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1891127) = 7962624 * k + 5673382 := by
    unfold C
    simp [show (2654208 * k + 1891127) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 5673382) = 3981312 * k + 2836691 := by
    unfold C
    simp [show (7962624 * k + 5673382) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 2836691) = 11943936 * k + 8510074 := by
    unfold C
    simp [show (3981312 * k + 2836691) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 8510074) = 5971968 * k + 4255037 := by
    unfold C
    simp [show (11943936 * k + 8510074) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 4255037) = 17915904 * k + 12765112 := by
    unfold C
    simp [show (5971968 * k + 4255037) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 12765112) = 8957952 * k + 6382556 := by
    unfold C
    simp [show (17915904 * k + 12765112) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 6382556) = 4478976 * k + 3191278 := by
    unfold C
    simp [show (8957952 * k + 6382556) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 3191278) = 2239488 * k + 1595639 := by
    unfold C
    simp [show (4478976 * k + 3191278) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 1595639) = 6718464 * k + 4786918 := by
    unfold C
    simp [show (2239488 * k + 1595639) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 4786918) = 3359232 * k + 2393459 := by
    unfold C
    simp [show (6718464 * k + 4786918) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 2393459) = 10077696 * k + 7180378 := by
    unfold C
    simp [show (3359232 * k + 2393459) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 7180378) = 5038848 * k + 3590189 := by
    unfold C
    simp [show (10077696 * k + 7180378) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 3590189) = 15116544 * k + 10770568 := by
    unfold C
    simp [show (5038848 * k + 3590189) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 10770568) = 7558272 * k + 5385284 := by
    unfold C
    simp [show (15116544 * k + 10770568) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 5385284) = 3779136 * k + 2692642 := by
    unfold C
    simp [show (7558272 * k + 5385284) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 2692642) = 1889568 * k + 1346321 := by
    unfold C
    simp [show (3779136 * k + 2692642) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1346321) = 5668704 * k + 4038964 := by
    unfold C
    simp [show (1889568 * k + 1346321) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 4038964) = 2834352 * k + 2019482 := by
    unfold C
    simp [show (5668704 * k + 4038964) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2019482) = 1417176 * k + 1009741 := by
    unfold C
    simp [show (2834352 * k + 2019482) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 1009741) = 4251528 * k + 3029224 := by
    unfold C
    simp [show (1417176 * k + 1009741) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 3029224) = 2125764 * k + 1514612 := by
    unfold C
    simp [show (4251528 * k + 3029224) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1514612) = 1062882 * k + 757306 := by
    unfold C
    simp [show (2125764 * k + 1514612) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 757306) = 531441 * k + 378653 := by
    unfold C
    simp [show (1062882 * k + 757306) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 747111) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 747111)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_747879 : ∀ k : Nat,
    iterate (1048576 * k + 747879) 32 = 531441 * k + 379042 ∧
      531441 * k + 379042 < 1048576 * k + 747879 := by
  intro k
  have h1 : C (1048576 * k + 747879) = 3145728 * k + 2243638 := by
    unfold C
    simp [show (1048576 * k + 747879) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2243638) = 1572864 * k + 1121819 := by
    unfold C
    simp [show (3145728 * k + 2243638) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1121819) = 4718592 * k + 3365458 := by
    unfold C
    simp [show (1572864 * k + 1121819) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3365458) = 2359296 * k + 1682729 := by
    unfold C
    simp [show (4718592 * k + 3365458) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1682729) = 7077888 * k + 5048188 := by
    unfold C
    simp [show (2359296 * k + 1682729) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 5048188) = 3538944 * k + 2524094 := by
    unfold C
    simp [show (7077888 * k + 5048188) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2524094) = 1769472 * k + 1262047 := by
    unfold C
    simp [show (3538944 * k + 2524094) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1262047) = 5308416 * k + 3786142 := by
    unfold C
    simp [show (1769472 * k + 1262047) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 3786142) = 2654208 * k + 1893071 := by
    unfold C
    simp [show (5308416 * k + 3786142) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1893071) = 7962624 * k + 5679214 := by
    unfold C
    simp [show (2654208 * k + 1893071) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 5679214) = 3981312 * k + 2839607 := by
    unfold C
    simp [show (7962624 * k + 5679214) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 2839607) = 11943936 * k + 8518822 := by
    unfold C
    simp [show (3981312 * k + 2839607) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 8518822) = 5971968 * k + 4259411 := by
    unfold C
    simp [show (11943936 * k + 8518822) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 4259411) = 17915904 * k + 12778234 := by
    unfold C
    simp [show (5971968 * k + 4259411) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 12778234) = 8957952 * k + 6389117 := by
    unfold C
    simp [show (17915904 * k + 12778234) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 6389117) = 26873856 * k + 19167352 := by
    unfold C
    simp [show (8957952 * k + 6389117) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 19167352) = 13436928 * k + 9583676 := by
    unfold C
    simp [show (26873856 * k + 19167352) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 9583676) = 6718464 * k + 4791838 := by
    unfold C
    simp [show (13436928 * k + 9583676) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 4791838) = 3359232 * k + 2395919 := by
    unfold C
    simp [show (6718464 * k + 4791838) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 2395919) = 10077696 * k + 7187758 := by
    unfold C
    simp [show (3359232 * k + 2395919) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 7187758) = 5038848 * k + 3593879 := by
    unfold C
    simp [show (10077696 * k + 7187758) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 3593879) = 15116544 * k + 10781638 := by
    unfold C
    simp [show (5038848 * k + 3593879) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 10781638) = 7558272 * k + 5390819 := by
    unfold C
    simp [show (15116544 * k + 10781638) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 5390819) = 22674816 * k + 16172458 := by
    unfold C
    simp [show (7558272 * k + 5390819) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 16172458) = 11337408 * k + 8086229 := by
    unfold C
    simp [show (22674816 * k + 16172458) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 8086229) = 34012224 * k + 24258688 := by
    unfold C
    simp [show (11337408 * k + 8086229) % 2 ≠ 0 by omega]
    omega
  have h27 : C (34012224 * k + 24258688) = 17006112 * k + 12129344 := by
    unfold C
    simp [show (34012224 * k + 24258688) % 2 = 0 by omega]
    omega
  have h28 : C (17006112 * k + 12129344) = 8503056 * k + 6064672 := by
    unfold C
    simp [show (17006112 * k + 12129344) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 6064672) = 4251528 * k + 3032336 := by
    unfold C
    simp [show (8503056 * k + 6064672) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 3032336) = 2125764 * k + 1516168 := by
    unfold C
    simp [show (4251528 * k + 3032336) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1516168) = 1062882 * k + 758084 := by
    unfold C
    simp [show (2125764 * k + 1516168) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 758084) = 531441 * k + 379042 := by
    unfold C
    simp [show (1062882 * k + 758084) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 747879) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 747879)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_748123 : ∀ k : Nat,
    iterate (1048576 * k + 748123) 32 = 531441 * k + 379166 ∧
      531441 * k + 379166 < 1048576 * k + 748123 := by
  intro k
  have h1 : C (1048576 * k + 748123) = 3145728 * k + 2244370 := by
    unfold C
    simp [show (1048576 * k + 748123) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2244370) = 1572864 * k + 1122185 := by
    unfold C
    simp [show (3145728 * k + 2244370) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1122185) = 4718592 * k + 3366556 := by
    unfold C
    simp [show (1572864 * k + 1122185) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3366556) = 2359296 * k + 1683278 := by
    unfold C
    simp [show (4718592 * k + 3366556) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1683278) = 1179648 * k + 841639 := by
    unfold C
    simp [show (2359296 * k + 1683278) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 841639) = 3538944 * k + 2524918 := by
    unfold C
    simp [show (1179648 * k + 841639) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 2524918) = 1769472 * k + 1262459 := by
    unfold C
    simp [show (3538944 * k + 2524918) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1262459) = 5308416 * k + 3787378 := by
    unfold C
    simp [show (1769472 * k + 1262459) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 3787378) = 2654208 * k + 1893689 := by
    unfold C
    simp [show (5308416 * k + 3787378) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1893689) = 7962624 * k + 5681068 := by
    unfold C
    simp [show (2654208 * k + 1893689) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 5681068) = 3981312 * k + 2840534 := by
    unfold C
    simp [show (7962624 * k + 5681068) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 2840534) = 1990656 * k + 1420267 := by
    unfold C
    simp [show (3981312 * k + 2840534) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 1420267) = 5971968 * k + 4260802 := by
    unfold C
    simp [show (1990656 * k + 1420267) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 4260802) = 2985984 * k + 2130401 := by
    unfold C
    simp [show (5971968 * k + 4260802) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 2130401) = 8957952 * k + 6391204 := by
    unfold C
    simp [show (2985984 * k + 2130401) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 6391204) = 4478976 * k + 3195602 := by
    unfold C
    simp [show (8957952 * k + 6391204) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 3195602) = 2239488 * k + 1597801 := by
    unfold C
    simp [show (4478976 * k + 3195602) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 1597801) = 6718464 * k + 4793404 := by
    unfold C
    simp [show (2239488 * k + 1597801) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 4793404) = 3359232 * k + 2396702 := by
    unfold C
    simp [show (6718464 * k + 4793404) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 2396702) = 1679616 * k + 1198351 := by
    unfold C
    simp [show (3359232 * k + 2396702) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 1198351) = 5038848 * k + 3595054 := by
    unfold C
    simp [show (1679616 * k + 1198351) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 3595054) = 2519424 * k + 1797527 := by
    unfold C
    simp [show (5038848 * k + 3595054) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1797527) = 7558272 * k + 5392582 := by
    unfold C
    simp [show (2519424 * k + 1797527) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 5392582) = 3779136 * k + 2696291 := by
    unfold C
    simp [show (7558272 * k + 5392582) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 2696291) = 11337408 * k + 8088874 := by
    unfold C
    simp [show (3779136 * k + 2696291) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 8088874) = 5668704 * k + 4044437 := by
    unfold C
    simp [show (11337408 * k + 8088874) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 4044437) = 17006112 * k + 12133312 := by
    unfold C
    simp [show (5668704 * k + 4044437) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 12133312) = 8503056 * k + 6066656 := by
    unfold C
    simp [show (17006112 * k + 12133312) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 6066656) = 4251528 * k + 3033328 := by
    unfold C
    simp [show (8503056 * k + 6066656) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 3033328) = 2125764 * k + 1516664 := by
    unfold C
    simp [show (4251528 * k + 3033328) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1516664) = 1062882 * k + 758332 := by
    unfold C
    simp [show (2125764 * k + 1516664) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 758332) = 531441 * k + 379166 := by
    unfold C
    simp [show (1062882 * k + 758332) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 748123) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 748123)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_748399 : ∀ k : Nat,
    iterate (1048576 * k + 748399) 32 = 531441 * k + 379306 ∧
      531441 * k + 379306 < 1048576 * k + 748399 := by
  intro k
  have h1 : C (1048576 * k + 748399) = 3145728 * k + 2245198 := by
    unfold C
    simp [show (1048576 * k + 748399) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2245198) = 1572864 * k + 1122599 := by
    unfold C
    simp [show (3145728 * k + 2245198) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1122599) = 4718592 * k + 3367798 := by
    unfold C
    simp [show (1572864 * k + 1122599) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3367798) = 2359296 * k + 1683899 := by
    unfold C
    simp [show (4718592 * k + 3367798) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1683899) = 7077888 * k + 5051698 := by
    unfold C
    simp [show (2359296 * k + 1683899) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 5051698) = 3538944 * k + 2525849 := by
    unfold C
    simp [show (7077888 * k + 5051698) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2525849) = 10616832 * k + 7577548 := by
    unfold C
    simp [show (3538944 * k + 2525849) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 7577548) = 5308416 * k + 3788774 := by
    unfold C
    simp [show (10616832 * k + 7577548) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 3788774) = 2654208 * k + 1894387 := by
    unfold C
    simp [show (5308416 * k + 3788774) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1894387) = 7962624 * k + 5683162 := by
    unfold C
    simp [show (2654208 * k + 1894387) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 5683162) = 3981312 * k + 2841581 := by
    unfold C
    simp [show (7962624 * k + 5683162) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 2841581) = 11943936 * k + 8524744 := by
    unfold C
    simp [show (3981312 * k + 2841581) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 8524744) = 5971968 * k + 4262372 := by
    unfold C
    simp [show (11943936 * k + 8524744) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 4262372) = 2985984 * k + 2131186 := by
    unfold C
    simp [show (5971968 * k + 4262372) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 2131186) = 1492992 * k + 1065593 := by
    unfold C
    simp [show (2985984 * k + 2131186) % 2 = 0 by omega]
    omega
  have h16 : C (1492992 * k + 1065593) = 4478976 * k + 3196780 := by
    unfold C
    simp [show (1492992 * k + 1065593) % 2 ≠ 0 by omega]
    omega
  have h17 : C (4478976 * k + 3196780) = 2239488 * k + 1598390 := by
    unfold C
    simp [show (4478976 * k + 3196780) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 1598390) = 1119744 * k + 799195 := by
    unfold C
    simp [show (2239488 * k + 1598390) % 2 = 0 by omega]
    omega
  have h19 : C (1119744 * k + 799195) = 3359232 * k + 2397586 := by
    unfold C
    simp [show (1119744 * k + 799195) % 2 ≠ 0 by omega]
    omega
  have h20 : C (3359232 * k + 2397586) = 1679616 * k + 1198793 := by
    unfold C
    simp [show (3359232 * k + 2397586) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 1198793) = 5038848 * k + 3596380 := by
    unfold C
    simp [show (1679616 * k + 1198793) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 3596380) = 2519424 * k + 1798190 := by
    unfold C
    simp [show (5038848 * k + 3596380) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1798190) = 1259712 * k + 899095 := by
    unfold C
    simp [show (2519424 * k + 1798190) % 2 = 0 by omega]
    omega
  have h24 : C (1259712 * k + 899095) = 3779136 * k + 2697286 := by
    unfold C
    simp [show (1259712 * k + 899095) % 2 ≠ 0 by omega]
    omega
  have h25 : C (3779136 * k + 2697286) = 1889568 * k + 1348643 := by
    unfold C
    simp [show (3779136 * k + 2697286) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1348643) = 5668704 * k + 4045930 := by
    unfold C
    simp [show (1889568 * k + 1348643) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 4045930) = 2834352 * k + 2022965 := by
    unfold C
    simp [show (5668704 * k + 4045930) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2022965) = 8503056 * k + 6068896 := by
    unfold C
    simp [show (2834352 * k + 2022965) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 6068896) = 4251528 * k + 3034448 := by
    unfold C
    simp [show (8503056 * k + 6068896) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 3034448) = 2125764 * k + 1517224 := by
    unfold C
    simp [show (4251528 * k + 3034448) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1517224) = 1062882 * k + 758612 := by
    unfold C
    simp [show (2125764 * k + 1517224) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 758612) = 531441 * k + 379306 := by
    unfold C
    simp [show (1062882 * k + 758612) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 748399) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 748399)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_748479 : ∀ k : Nat,
    iterate (1048576 * k + 748479) 32 = 531441 * k + 379346 ∧
      531441 * k + 379346 < 1048576 * k + 748479 := by
  intro k
  have h1 : C (1048576 * k + 748479) = 3145728 * k + 2245438 := by
    unfold C
    simp [show (1048576 * k + 748479) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2245438) = 1572864 * k + 1122719 := by
    unfold C
    simp [show (3145728 * k + 2245438) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1122719) = 4718592 * k + 3368158 := by
    unfold C
    simp [show (1572864 * k + 1122719) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3368158) = 2359296 * k + 1684079 := by
    unfold C
    simp [show (4718592 * k + 3368158) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1684079) = 7077888 * k + 5052238 := by
    unfold C
    simp [show (2359296 * k + 1684079) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 5052238) = 3538944 * k + 2526119 := by
    unfold C
    simp [show (7077888 * k + 5052238) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2526119) = 10616832 * k + 7578358 := by
    unfold C
    simp [show (3538944 * k + 2526119) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 7578358) = 5308416 * k + 3789179 := by
    unfold C
    simp [show (10616832 * k + 7578358) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 3789179) = 15925248 * k + 11367538 := by
    unfold C
    simp [show (5308416 * k + 3789179) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 11367538) = 7962624 * k + 5683769 := by
    unfold C
    simp [show (15925248 * k + 11367538) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 5683769) = 23887872 * k + 17051308 := by
    unfold C
    simp [show (7962624 * k + 5683769) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 17051308) = 11943936 * k + 8525654 := by
    unfold C
    simp [show (23887872 * k + 17051308) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 8525654) = 5971968 * k + 4262827 := by
    unfold C
    simp [show (11943936 * k + 8525654) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 4262827) = 17915904 * k + 12788482 := by
    unfold C
    simp [show (5971968 * k + 4262827) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 12788482) = 8957952 * k + 6394241 := by
    unfold C
    simp [show (17915904 * k + 12788482) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 6394241) = 26873856 * k + 19182724 := by
    unfold C
    simp [show (8957952 * k + 6394241) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 19182724) = 13436928 * k + 9591362 := by
    unfold C
    simp [show (26873856 * k + 19182724) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 9591362) = 6718464 * k + 4795681 := by
    unfold C
    simp [show (13436928 * k + 9591362) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 4795681) = 20155392 * k + 14387044 := by
    unfold C
    simp [show (6718464 * k + 4795681) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 14387044) = 10077696 * k + 7193522 := by
    unfold C
    simp [show (20155392 * k + 14387044) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 7193522) = 5038848 * k + 3596761 := by
    unfold C
    simp [show (10077696 * k + 7193522) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 3596761) = 15116544 * k + 10790284 := by
    unfold C
    simp [show (5038848 * k + 3596761) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 10790284) = 7558272 * k + 5395142 := by
    unfold C
    simp [show (15116544 * k + 10790284) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 5395142) = 3779136 * k + 2697571 := by
    unfold C
    simp [show (7558272 * k + 5395142) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 2697571) = 11337408 * k + 8092714 := by
    unfold C
    simp [show (3779136 * k + 2697571) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 8092714) = 5668704 * k + 4046357 := by
    unfold C
    simp [show (11337408 * k + 8092714) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 4046357) = 17006112 * k + 12139072 := by
    unfold C
    simp [show (5668704 * k + 4046357) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 12139072) = 8503056 * k + 6069536 := by
    unfold C
    simp [show (17006112 * k + 12139072) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 6069536) = 4251528 * k + 3034768 := by
    unfold C
    simp [show (8503056 * k + 6069536) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 3034768) = 2125764 * k + 1517384 := by
    unfold C
    simp [show (4251528 * k + 3034768) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1517384) = 1062882 * k + 758692 := by
    unfold C
    simp [show (2125764 * k + 1517384) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 758692) = 531441 * k + 379346 := by
    unfold C
    simp [show (1062882 * k + 758692) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 748479) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 748479)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_749039 : ∀ k : Nat,
    iterate (1048576 * k + 749039) 32 = 531441 * k + 379630 ∧
      531441 * k + 379630 < 1048576 * k + 749039 := by
  intro k
  have h1 : C (1048576 * k + 749039) = 3145728 * k + 2247118 := by
    unfold C
    simp [show (1048576 * k + 749039) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2247118) = 1572864 * k + 1123559 := by
    unfold C
    simp [show (3145728 * k + 2247118) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1123559) = 4718592 * k + 3370678 := by
    unfold C
    simp [show (1572864 * k + 1123559) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3370678) = 2359296 * k + 1685339 := by
    unfold C
    simp [show (4718592 * k + 3370678) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1685339) = 7077888 * k + 5056018 := by
    unfold C
    simp [show (2359296 * k + 1685339) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 5056018) = 3538944 * k + 2528009 := by
    unfold C
    simp [show (7077888 * k + 5056018) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2528009) = 10616832 * k + 7584028 := by
    unfold C
    simp [show (3538944 * k + 2528009) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 7584028) = 5308416 * k + 3792014 := by
    unfold C
    simp [show (10616832 * k + 7584028) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 3792014) = 2654208 * k + 1896007 := by
    unfold C
    simp [show (5308416 * k + 3792014) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1896007) = 7962624 * k + 5688022 := by
    unfold C
    simp [show (2654208 * k + 1896007) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 5688022) = 3981312 * k + 2844011 := by
    unfold C
    simp [show (7962624 * k + 5688022) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 2844011) = 11943936 * k + 8532034 := by
    unfold C
    simp [show (3981312 * k + 2844011) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 8532034) = 5971968 * k + 4266017 := by
    unfold C
    simp [show (11943936 * k + 8532034) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 4266017) = 17915904 * k + 12798052 := by
    unfold C
    simp [show (5971968 * k + 4266017) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 12798052) = 8957952 * k + 6399026 := by
    unfold C
    simp [show (17915904 * k + 12798052) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 6399026) = 4478976 * k + 3199513 := by
    unfold C
    simp [show (8957952 * k + 6399026) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 3199513) = 13436928 * k + 9598540 := by
    unfold C
    simp [show (4478976 * k + 3199513) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 9598540) = 6718464 * k + 4799270 := by
    unfold C
    simp [show (13436928 * k + 9598540) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 4799270) = 3359232 * k + 2399635 := by
    unfold C
    simp [show (6718464 * k + 4799270) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 2399635) = 10077696 * k + 7198906 := by
    unfold C
    simp [show (3359232 * k + 2399635) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 7198906) = 5038848 * k + 3599453 := by
    unfold C
    simp [show (10077696 * k + 7198906) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 3599453) = 15116544 * k + 10798360 := by
    unfold C
    simp [show (5038848 * k + 3599453) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 10798360) = 7558272 * k + 5399180 := by
    unfold C
    simp [show (15116544 * k + 10798360) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 5399180) = 3779136 * k + 2699590 := by
    unfold C
    simp [show (7558272 * k + 5399180) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 2699590) = 1889568 * k + 1349795 := by
    unfold C
    simp [show (3779136 * k + 2699590) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1349795) = 5668704 * k + 4049386 := by
    unfold C
    simp [show (1889568 * k + 1349795) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 4049386) = 2834352 * k + 2024693 := by
    unfold C
    simp [show (5668704 * k + 4049386) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2024693) = 8503056 * k + 6074080 := by
    unfold C
    simp [show (2834352 * k + 2024693) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 6074080) = 4251528 * k + 3037040 := by
    unfold C
    simp [show (8503056 * k + 6074080) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 3037040) = 2125764 * k + 1518520 := by
    unfold C
    simp [show (4251528 * k + 3037040) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1518520) = 1062882 * k + 759260 := by
    unfold C
    simp [show (2125764 * k + 1518520) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 759260) = 531441 * k + 379630 := by
    unfold C
    simp [show (1062882 * k + 759260) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 749039) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 749039)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_749615 : ∀ k : Nat,
    iterate (1048576 * k + 749615) 32 = 531441 * k + 379922 ∧
      531441 * k + 379922 < 1048576 * k + 749615 := by
  intro k
  have h1 : C (1048576 * k + 749615) = 3145728 * k + 2248846 := by
    unfold C
    simp [show (1048576 * k + 749615) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2248846) = 1572864 * k + 1124423 := by
    unfold C
    simp [show (3145728 * k + 2248846) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1124423) = 4718592 * k + 3373270 := by
    unfold C
    simp [show (1572864 * k + 1124423) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3373270) = 2359296 * k + 1686635 := by
    unfold C
    simp [show (4718592 * k + 3373270) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1686635) = 7077888 * k + 5059906 := by
    unfold C
    simp [show (2359296 * k + 1686635) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 5059906) = 3538944 * k + 2529953 := by
    unfold C
    simp [show (7077888 * k + 5059906) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2529953) = 10616832 * k + 7589860 := by
    unfold C
    simp [show (3538944 * k + 2529953) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 7589860) = 5308416 * k + 3794930 := by
    unfold C
    simp [show (10616832 * k + 7589860) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 3794930) = 2654208 * k + 1897465 := by
    unfold C
    simp [show (5308416 * k + 3794930) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1897465) = 7962624 * k + 5692396 := by
    unfold C
    simp [show (2654208 * k + 1897465) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 5692396) = 3981312 * k + 2846198 := by
    unfold C
    simp [show (7962624 * k + 5692396) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 2846198) = 1990656 * k + 1423099 := by
    unfold C
    simp [show (3981312 * k + 2846198) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 1423099) = 5971968 * k + 4269298 := by
    unfold C
    simp [show (1990656 * k + 1423099) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 4269298) = 2985984 * k + 2134649 := by
    unfold C
    simp [show (5971968 * k + 4269298) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 2134649) = 8957952 * k + 6403948 := by
    unfold C
    simp [show (2985984 * k + 2134649) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 6403948) = 4478976 * k + 3201974 := by
    unfold C
    simp [show (8957952 * k + 6403948) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 3201974) = 2239488 * k + 1600987 := by
    unfold C
    simp [show (4478976 * k + 3201974) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 1600987) = 6718464 * k + 4802962 := by
    unfold C
    simp [show (2239488 * k + 1600987) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 4802962) = 3359232 * k + 2401481 := by
    unfold C
    simp [show (6718464 * k + 4802962) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 2401481) = 10077696 * k + 7204444 := by
    unfold C
    simp [show (3359232 * k + 2401481) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 7204444) = 5038848 * k + 3602222 := by
    unfold C
    simp [show (10077696 * k + 7204444) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 3602222) = 2519424 * k + 1801111 := by
    unfold C
    simp [show (5038848 * k + 3602222) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1801111) = 7558272 * k + 5403334 := by
    unfold C
    simp [show (2519424 * k + 1801111) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 5403334) = 3779136 * k + 2701667 := by
    unfold C
    simp [show (7558272 * k + 5403334) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 2701667) = 11337408 * k + 8105002 := by
    unfold C
    simp [show (3779136 * k + 2701667) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 8105002) = 5668704 * k + 4052501 := by
    unfold C
    simp [show (11337408 * k + 8105002) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 4052501) = 17006112 * k + 12157504 := by
    unfold C
    simp [show (5668704 * k + 4052501) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 12157504) = 8503056 * k + 6078752 := by
    unfold C
    simp [show (17006112 * k + 12157504) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 6078752) = 4251528 * k + 3039376 := by
    unfold C
    simp [show (8503056 * k + 6078752) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 3039376) = 2125764 * k + 1519688 := by
    unfold C
    simp [show (4251528 * k + 3039376) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1519688) = 1062882 * k + 759844 := by
    unfold C
    simp [show (2125764 * k + 1519688) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 759844) = 531441 * k + 379922 := by
    unfold C
    simp [show (1062882 * k + 759844) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 749615) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 749615)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_750951 : ∀ k : Nat,
    iterate (1048576 * k + 750951) 32 = 531441 * k + 380599 ∧
      531441 * k + 380599 < 1048576 * k + 750951 := by
  intro k
  have h1 : C (1048576 * k + 750951) = 3145728 * k + 2252854 := by
    unfold C
    simp [show (1048576 * k + 750951) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2252854) = 1572864 * k + 1126427 := by
    unfold C
    simp [show (3145728 * k + 2252854) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1126427) = 4718592 * k + 3379282 := by
    unfold C
    simp [show (1572864 * k + 1126427) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3379282) = 2359296 * k + 1689641 := by
    unfold C
    simp [show (4718592 * k + 3379282) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1689641) = 7077888 * k + 5068924 := by
    unfold C
    simp [show (2359296 * k + 1689641) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 5068924) = 3538944 * k + 2534462 := by
    unfold C
    simp [show (7077888 * k + 5068924) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2534462) = 1769472 * k + 1267231 := by
    unfold C
    simp [show (3538944 * k + 2534462) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1267231) = 5308416 * k + 3801694 := by
    unfold C
    simp [show (1769472 * k + 1267231) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 3801694) = 2654208 * k + 1900847 := by
    unfold C
    simp [show (5308416 * k + 3801694) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1900847) = 7962624 * k + 5702542 := by
    unfold C
    simp [show (2654208 * k + 1900847) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 5702542) = 3981312 * k + 2851271 := by
    unfold C
    simp [show (7962624 * k + 5702542) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 2851271) = 11943936 * k + 8553814 := by
    unfold C
    simp [show (3981312 * k + 2851271) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 8553814) = 5971968 * k + 4276907 := by
    unfold C
    simp [show (11943936 * k + 8553814) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 4276907) = 17915904 * k + 12830722 := by
    unfold C
    simp [show (5971968 * k + 4276907) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 12830722) = 8957952 * k + 6415361 := by
    unfold C
    simp [show (17915904 * k + 12830722) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 6415361) = 26873856 * k + 19246084 := by
    unfold C
    simp [show (8957952 * k + 6415361) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 19246084) = 13436928 * k + 9623042 := by
    unfold C
    simp [show (26873856 * k + 19246084) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 9623042) = 6718464 * k + 4811521 := by
    unfold C
    simp [show (13436928 * k + 9623042) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 4811521) = 20155392 * k + 14434564 := by
    unfold C
    simp [show (6718464 * k + 4811521) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 14434564) = 10077696 * k + 7217282 := by
    unfold C
    simp [show (20155392 * k + 14434564) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 7217282) = 5038848 * k + 3608641 := by
    unfold C
    simp [show (10077696 * k + 7217282) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 3608641) = 15116544 * k + 10825924 := by
    unfold C
    simp [show (5038848 * k + 3608641) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 10825924) = 7558272 * k + 5412962 := by
    unfold C
    simp [show (15116544 * k + 10825924) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 5412962) = 3779136 * k + 2706481 := by
    unfold C
    simp [show (7558272 * k + 5412962) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 2706481) = 11337408 * k + 8119444 := by
    unfold C
    simp [show (3779136 * k + 2706481) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 8119444) = 5668704 * k + 4059722 := by
    unfold C
    simp [show (11337408 * k + 8119444) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 4059722) = 2834352 * k + 2029861 := by
    unfold C
    simp [show (5668704 * k + 4059722) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2029861) = 8503056 * k + 6089584 := by
    unfold C
    simp [show (2834352 * k + 2029861) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 6089584) = 4251528 * k + 3044792 := by
    unfold C
    simp [show (8503056 * k + 6089584) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 3044792) = 2125764 * k + 1522396 := by
    unfold C
    simp [show (4251528 * k + 3044792) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1522396) = 1062882 * k + 761198 := by
    unfold C
    simp [show (2125764 * k + 1522396) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 761198) = 531441 * k + 380599 := by
    unfold C
    simp [show (1062882 * k + 761198) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 750951) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 750951)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_751071 : ∀ k : Nat,
    iterate (1048576 * k + 751071) 32 = 531441 * k + 380660 ∧
      531441 * k + 380660 < 1048576 * k + 751071 := by
  intro k
  have h1 : C (1048576 * k + 751071) = 3145728 * k + 2253214 := by
    unfold C
    simp [show (1048576 * k + 751071) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2253214) = 1572864 * k + 1126607 := by
    unfold C
    simp [show (3145728 * k + 2253214) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1126607) = 4718592 * k + 3379822 := by
    unfold C
    simp [show (1572864 * k + 1126607) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3379822) = 2359296 * k + 1689911 := by
    unfold C
    simp [show (4718592 * k + 3379822) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1689911) = 7077888 * k + 5069734 := by
    unfold C
    simp [show (2359296 * k + 1689911) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 5069734) = 3538944 * k + 2534867 := by
    unfold C
    simp [show (7077888 * k + 5069734) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2534867) = 10616832 * k + 7604602 := by
    unfold C
    simp [show (3538944 * k + 2534867) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 7604602) = 5308416 * k + 3802301 := by
    unfold C
    simp [show (10616832 * k + 7604602) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 3802301) = 15925248 * k + 11406904 := by
    unfold C
    simp [show (5308416 * k + 3802301) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 11406904) = 7962624 * k + 5703452 := by
    unfold C
    simp [show (15925248 * k + 11406904) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 5703452) = 3981312 * k + 2851726 := by
    unfold C
    simp [show (7962624 * k + 5703452) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 2851726) = 1990656 * k + 1425863 := by
    unfold C
    simp [show (3981312 * k + 2851726) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 1425863) = 5971968 * k + 4277590 := by
    unfold C
    simp [show (1990656 * k + 1425863) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 4277590) = 2985984 * k + 2138795 := by
    unfold C
    simp [show (5971968 * k + 4277590) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 2138795) = 8957952 * k + 6416386 := by
    unfold C
    simp [show (2985984 * k + 2138795) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 6416386) = 4478976 * k + 3208193 := by
    unfold C
    simp [show (8957952 * k + 6416386) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 3208193) = 13436928 * k + 9624580 := by
    unfold C
    simp [show (4478976 * k + 3208193) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 9624580) = 6718464 * k + 4812290 := by
    unfold C
    simp [show (13436928 * k + 9624580) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 4812290) = 3359232 * k + 2406145 := by
    unfold C
    simp [show (6718464 * k + 4812290) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 2406145) = 10077696 * k + 7218436 := by
    unfold C
    simp [show (3359232 * k + 2406145) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 7218436) = 5038848 * k + 3609218 := by
    unfold C
    simp [show (10077696 * k + 7218436) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 3609218) = 2519424 * k + 1804609 := by
    unfold C
    simp [show (5038848 * k + 3609218) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1804609) = 7558272 * k + 5413828 := by
    unfold C
    simp [show (2519424 * k + 1804609) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 5413828) = 3779136 * k + 2706914 := by
    unfold C
    simp [show (7558272 * k + 5413828) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 2706914) = 1889568 * k + 1353457 := by
    unfold C
    simp [show (3779136 * k + 2706914) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1353457) = 5668704 * k + 4060372 := by
    unfold C
    simp [show (1889568 * k + 1353457) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 4060372) = 2834352 * k + 2030186 := by
    unfold C
    simp [show (5668704 * k + 4060372) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2030186) = 1417176 * k + 1015093 := by
    unfold C
    simp [show (2834352 * k + 2030186) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 1015093) = 4251528 * k + 3045280 := by
    unfold C
    simp [show (1417176 * k + 1015093) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 3045280) = 2125764 * k + 1522640 := by
    unfold C
    simp [show (4251528 * k + 3045280) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1522640) = 1062882 * k + 761320 := by
    unfold C
    simp [show (2125764 * k + 1522640) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 761320) = 531441 * k + 380660 := by
    unfold C
    simp [show (1062882 * k + 761320) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 751071) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 751071)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_752999 : ∀ k : Nat,
    iterate (1048576 * k + 752999) 32 = 531441 * k + 381637 ∧
      531441 * k + 381637 < 1048576 * k + 752999 := by
  intro k
  have h1 : C (1048576 * k + 752999) = 3145728 * k + 2258998 := by
    unfold C
    simp [show (1048576 * k + 752999) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2258998) = 1572864 * k + 1129499 := by
    unfold C
    simp [show (3145728 * k + 2258998) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1129499) = 4718592 * k + 3388498 := by
    unfold C
    simp [show (1572864 * k + 1129499) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3388498) = 2359296 * k + 1694249 := by
    unfold C
    simp [show (4718592 * k + 3388498) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1694249) = 7077888 * k + 5082748 := by
    unfold C
    simp [show (2359296 * k + 1694249) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 5082748) = 3538944 * k + 2541374 := by
    unfold C
    simp [show (7077888 * k + 5082748) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2541374) = 1769472 * k + 1270687 := by
    unfold C
    simp [show (3538944 * k + 2541374) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1270687) = 5308416 * k + 3812062 := by
    unfold C
    simp [show (1769472 * k + 1270687) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 3812062) = 2654208 * k + 1906031 := by
    unfold C
    simp [show (5308416 * k + 3812062) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1906031) = 7962624 * k + 5718094 := by
    unfold C
    simp [show (2654208 * k + 1906031) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 5718094) = 3981312 * k + 2859047 := by
    unfold C
    simp [show (7962624 * k + 5718094) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 2859047) = 11943936 * k + 8577142 := by
    unfold C
    simp [show (3981312 * k + 2859047) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 8577142) = 5971968 * k + 4288571 := by
    unfold C
    simp [show (11943936 * k + 8577142) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 4288571) = 17915904 * k + 12865714 := by
    unfold C
    simp [show (5971968 * k + 4288571) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 12865714) = 8957952 * k + 6432857 := by
    unfold C
    simp [show (17915904 * k + 12865714) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 6432857) = 26873856 * k + 19298572 := by
    unfold C
    simp [show (8957952 * k + 6432857) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 19298572) = 13436928 * k + 9649286 := by
    unfold C
    simp [show (26873856 * k + 19298572) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 9649286) = 6718464 * k + 4824643 := by
    unfold C
    simp [show (13436928 * k + 9649286) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 4824643) = 20155392 * k + 14473930 := by
    unfold C
    simp [show (6718464 * k + 4824643) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 14473930) = 10077696 * k + 7236965 := by
    unfold C
    simp [show (20155392 * k + 14473930) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 7236965) = 30233088 * k + 21710896 := by
    unfold C
    simp [show (10077696 * k + 7236965) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 21710896) = 15116544 * k + 10855448 := by
    unfold C
    simp [show (30233088 * k + 21710896) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 10855448) = 7558272 * k + 5427724 := by
    unfold C
    simp [show (15116544 * k + 10855448) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 5427724) = 3779136 * k + 2713862 := by
    unfold C
    simp [show (7558272 * k + 5427724) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 2713862) = 1889568 * k + 1356931 := by
    unfold C
    simp [show (3779136 * k + 2713862) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1356931) = 5668704 * k + 4070794 := by
    unfold C
    simp [show (1889568 * k + 1356931) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 4070794) = 2834352 * k + 2035397 := by
    unfold C
    simp [show (5668704 * k + 4070794) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2035397) = 8503056 * k + 6106192 := by
    unfold C
    simp [show (2834352 * k + 2035397) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 6106192) = 4251528 * k + 3053096 := by
    unfold C
    simp [show (8503056 * k + 6106192) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 3053096) = 2125764 * k + 1526548 := by
    unfold C
    simp [show (4251528 * k + 3053096) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1526548) = 1062882 * k + 763274 := by
    unfold C
    simp [show (2125764 * k + 1526548) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 763274) = 531441 * k + 381637 := by
    unfold C
    simp [show (1062882 * k + 763274) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 752999) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 752999)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_753255 : ∀ k : Nat,
    iterate (1048576 * k + 753255) 32 = 531441 * k + 381767 ∧
      531441 * k + 381767 < 1048576 * k + 753255 := by
  intro k
  have h1 : C (1048576 * k + 753255) = 3145728 * k + 2259766 := by
    unfold C
    simp [show (1048576 * k + 753255) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2259766) = 1572864 * k + 1129883 := by
    unfold C
    simp [show (3145728 * k + 2259766) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1129883) = 4718592 * k + 3389650 := by
    unfold C
    simp [show (1572864 * k + 1129883) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3389650) = 2359296 * k + 1694825 := by
    unfold C
    simp [show (4718592 * k + 3389650) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1694825) = 7077888 * k + 5084476 := by
    unfold C
    simp [show (2359296 * k + 1694825) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 5084476) = 3538944 * k + 2542238 := by
    unfold C
    simp [show (7077888 * k + 5084476) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2542238) = 1769472 * k + 1271119 := by
    unfold C
    simp [show (3538944 * k + 2542238) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1271119) = 5308416 * k + 3813358 := by
    unfold C
    simp [show (1769472 * k + 1271119) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 3813358) = 2654208 * k + 1906679 := by
    unfold C
    simp [show (5308416 * k + 3813358) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1906679) = 7962624 * k + 5720038 := by
    unfold C
    simp [show (2654208 * k + 1906679) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 5720038) = 3981312 * k + 2860019 := by
    unfold C
    simp [show (7962624 * k + 5720038) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 2860019) = 11943936 * k + 8580058 := by
    unfold C
    simp [show (3981312 * k + 2860019) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 8580058) = 5971968 * k + 4290029 := by
    unfold C
    simp [show (11943936 * k + 8580058) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 4290029) = 17915904 * k + 12870088 := by
    unfold C
    simp [show (5971968 * k + 4290029) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 12870088) = 8957952 * k + 6435044 := by
    unfold C
    simp [show (17915904 * k + 12870088) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 6435044) = 4478976 * k + 3217522 := by
    unfold C
    simp [show (8957952 * k + 6435044) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 3217522) = 2239488 * k + 1608761 := by
    unfold C
    simp [show (4478976 * k + 3217522) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 1608761) = 6718464 * k + 4826284 := by
    unfold C
    simp [show (2239488 * k + 1608761) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 4826284) = 3359232 * k + 2413142 := by
    unfold C
    simp [show (6718464 * k + 4826284) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 2413142) = 1679616 * k + 1206571 := by
    unfold C
    simp [show (3359232 * k + 2413142) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 1206571) = 5038848 * k + 3619714 := by
    unfold C
    simp [show (1679616 * k + 1206571) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 3619714) = 2519424 * k + 1809857 := by
    unfold C
    simp [show (5038848 * k + 3619714) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1809857) = 7558272 * k + 5429572 := by
    unfold C
    simp [show (2519424 * k + 1809857) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 5429572) = 3779136 * k + 2714786 := by
    unfold C
    simp [show (7558272 * k + 5429572) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 2714786) = 1889568 * k + 1357393 := by
    unfold C
    simp [show (3779136 * k + 2714786) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1357393) = 5668704 * k + 4072180 := by
    unfold C
    simp [show (1889568 * k + 1357393) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 4072180) = 2834352 * k + 2036090 := by
    unfold C
    simp [show (5668704 * k + 4072180) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2036090) = 1417176 * k + 1018045 := by
    unfold C
    simp [show (2834352 * k + 2036090) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 1018045) = 4251528 * k + 3054136 := by
    unfold C
    simp [show (1417176 * k + 1018045) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 3054136) = 2125764 * k + 1527068 := by
    unfold C
    simp [show (4251528 * k + 3054136) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1527068) = 1062882 * k + 763534 := by
    unfold C
    simp [show (2125764 * k + 1527068) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 763534) = 531441 * k + 381767 := by
    unfold C
    simp [show (1062882 * k + 763534) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 753255) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 753255)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_753567 : ∀ k : Nat,
    iterate (1048576 * k + 753567) 32 = 531441 * k + 381925 ∧
      531441 * k + 381925 < 1048576 * k + 753567 := by
  intro k
  have h1 : C (1048576 * k + 753567) = 3145728 * k + 2260702 := by
    unfold C
    simp [show (1048576 * k + 753567) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2260702) = 1572864 * k + 1130351 := by
    unfold C
    simp [show (3145728 * k + 2260702) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1130351) = 4718592 * k + 3391054 := by
    unfold C
    simp [show (1572864 * k + 1130351) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3391054) = 2359296 * k + 1695527 := by
    unfold C
    simp [show (4718592 * k + 3391054) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1695527) = 7077888 * k + 5086582 := by
    unfold C
    simp [show (2359296 * k + 1695527) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 5086582) = 3538944 * k + 2543291 := by
    unfold C
    simp [show (7077888 * k + 5086582) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2543291) = 10616832 * k + 7629874 := by
    unfold C
    simp [show (3538944 * k + 2543291) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 7629874) = 5308416 * k + 3814937 := by
    unfold C
    simp [show (10616832 * k + 7629874) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 3814937) = 15925248 * k + 11444812 := by
    unfold C
    simp [show (5308416 * k + 3814937) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 11444812) = 7962624 * k + 5722406 := by
    unfold C
    simp [show (15925248 * k + 11444812) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 5722406) = 3981312 * k + 2861203 := by
    unfold C
    simp [show (7962624 * k + 5722406) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 2861203) = 11943936 * k + 8583610 := by
    unfold C
    simp [show (3981312 * k + 2861203) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 8583610) = 5971968 * k + 4291805 := by
    unfold C
    simp [show (11943936 * k + 8583610) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 4291805) = 17915904 * k + 12875416 := by
    unfold C
    simp [show (5971968 * k + 4291805) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 12875416) = 8957952 * k + 6437708 := by
    unfold C
    simp [show (17915904 * k + 12875416) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 6437708) = 4478976 * k + 3218854 := by
    unfold C
    simp [show (8957952 * k + 6437708) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 3218854) = 2239488 * k + 1609427 := by
    unfold C
    simp [show (4478976 * k + 3218854) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 1609427) = 6718464 * k + 4828282 := by
    unfold C
    simp [show (2239488 * k + 1609427) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 4828282) = 3359232 * k + 2414141 := by
    unfold C
    simp [show (6718464 * k + 4828282) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 2414141) = 10077696 * k + 7242424 := by
    unfold C
    simp [show (3359232 * k + 2414141) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 7242424) = 5038848 * k + 3621212 := by
    unfold C
    simp [show (10077696 * k + 7242424) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 3621212) = 2519424 * k + 1810606 := by
    unfold C
    simp [show (5038848 * k + 3621212) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1810606) = 1259712 * k + 905303 := by
    unfold C
    simp [show (2519424 * k + 1810606) % 2 = 0 by omega]
    omega
  have h24 : C (1259712 * k + 905303) = 3779136 * k + 2715910 := by
    unfold C
    simp [show (1259712 * k + 905303) % 2 ≠ 0 by omega]
    omega
  have h25 : C (3779136 * k + 2715910) = 1889568 * k + 1357955 := by
    unfold C
    simp [show (3779136 * k + 2715910) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1357955) = 5668704 * k + 4073866 := by
    unfold C
    simp [show (1889568 * k + 1357955) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 4073866) = 2834352 * k + 2036933 := by
    unfold C
    simp [show (5668704 * k + 4073866) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2036933) = 8503056 * k + 6110800 := by
    unfold C
    simp [show (2834352 * k + 2036933) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 6110800) = 4251528 * k + 3055400 := by
    unfold C
    simp [show (8503056 * k + 6110800) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 3055400) = 2125764 * k + 1527700 := by
    unfold C
    simp [show (4251528 * k + 3055400) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1527700) = 1062882 * k + 763850 := by
    unfold C
    simp [show (2125764 * k + 1527700) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 763850) = 531441 * k + 381925 := by
    unfold C
    simp [show (1062882 * k + 763850) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 753567) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 753567)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

end CollatzM20Shard096
