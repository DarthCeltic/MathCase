import Mathlib.Data.Nat.Prime.Basic

namespace CollatzM20Shard077

def C (n : Nat) : Nat := if n % 2 = 0 then n / 2 else 3 * n + 1

def iterate (n t : Nat) : Nat := Nat.rec n (fun _ previous => C previous) t

theorem descent_mod1048576_597147 : ∀ k : Nat,
    iterate (1048576 * k + 597147) 32 = 531441 * k + 302648 ∧
      531441 * k + 302648 < 1048576 * k + 597147 := by
  intro k
  have h1 : C (1048576 * k + 597147) = 3145728 * k + 1791442 := by
    unfold C
    simp [show (1048576 * k + 597147) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1791442) = 1572864 * k + 895721 := by
    unfold C
    simp [show (3145728 * k + 1791442) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 895721) = 4718592 * k + 2687164 := by
    unfold C
    simp [show (1572864 * k + 895721) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2687164) = 2359296 * k + 1343582 := by
    unfold C
    simp [show (4718592 * k + 2687164) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1343582) = 1179648 * k + 671791 := by
    unfold C
    simp [show (2359296 * k + 1343582) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 671791) = 3538944 * k + 2015374 := by
    unfold C
    simp [show (1179648 * k + 671791) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 2015374) = 1769472 * k + 1007687 := by
    unfold C
    simp [show (3538944 * k + 2015374) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1007687) = 5308416 * k + 3023062 := by
    unfold C
    simp [show (1769472 * k + 1007687) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 3023062) = 2654208 * k + 1511531 := by
    unfold C
    simp [show (5308416 * k + 3023062) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1511531) = 7962624 * k + 4534594 := by
    unfold C
    simp [show (2654208 * k + 1511531) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 4534594) = 3981312 * k + 2267297 := by
    unfold C
    simp [show (7962624 * k + 4534594) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 2267297) = 11943936 * k + 6801892 := by
    unfold C
    simp [show (3981312 * k + 2267297) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 6801892) = 5971968 * k + 3400946 := by
    unfold C
    simp [show (11943936 * k + 6801892) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 3400946) = 2985984 * k + 1700473 := by
    unfold C
    simp [show (5971968 * k + 3400946) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1700473) = 8957952 * k + 5101420 := by
    unfold C
    simp [show (2985984 * k + 1700473) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 5101420) = 4478976 * k + 2550710 := by
    unfold C
    simp [show (8957952 * k + 5101420) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 2550710) = 2239488 * k + 1275355 := by
    unfold C
    simp [show (4478976 * k + 2550710) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 1275355) = 6718464 * k + 3826066 := by
    unfold C
    simp [show (2239488 * k + 1275355) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 3826066) = 3359232 * k + 1913033 := by
    unfold C
    simp [show (6718464 * k + 3826066) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 1913033) = 10077696 * k + 5739100 := by
    unfold C
    simp [show (3359232 * k + 1913033) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 5739100) = 5038848 * k + 2869550 := by
    unfold C
    simp [show (10077696 * k + 5739100) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 2869550) = 2519424 * k + 1434775 := by
    unfold C
    simp [show (5038848 * k + 2869550) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1434775) = 7558272 * k + 4304326 := by
    unfold C
    simp [show (2519424 * k + 1434775) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 4304326) = 3779136 * k + 2152163 := by
    unfold C
    simp [show (7558272 * k + 4304326) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 2152163) = 11337408 * k + 6456490 := by
    unfold C
    simp [show (3779136 * k + 2152163) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 6456490) = 5668704 * k + 3228245 := by
    unfold C
    simp [show (11337408 * k + 6456490) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 3228245) = 17006112 * k + 9684736 := by
    unfold C
    simp [show (5668704 * k + 3228245) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 9684736) = 8503056 * k + 4842368 := by
    unfold C
    simp [show (17006112 * k + 9684736) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 4842368) = 4251528 * k + 2421184 := by
    unfold C
    simp [show (8503056 * k + 4842368) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 2421184) = 2125764 * k + 1210592 := by
    unfold C
    simp [show (4251528 * k + 2421184) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1210592) = 1062882 * k + 605296 := by
    unfold C
    simp [show (2125764 * k + 1210592) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 605296) = 531441 * k + 302648 := by
    unfold C
    simp [show (1062882 * k + 605296) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 597147) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 597147)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_597183 : ∀ k : Nat,
    iterate (1048576 * k + 597183) 32 = 531441 * k + 302666 ∧
      531441 * k + 302666 < 1048576 * k + 597183 := by
  intro k
  have h1 : C (1048576 * k + 597183) = 3145728 * k + 1791550 := by
    unfold C
    simp [show (1048576 * k + 597183) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1791550) = 1572864 * k + 895775 := by
    unfold C
    simp [show (3145728 * k + 1791550) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 895775) = 4718592 * k + 2687326 := by
    unfold C
    simp [show (1572864 * k + 895775) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2687326) = 2359296 * k + 1343663 := by
    unfold C
    simp [show (4718592 * k + 2687326) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1343663) = 7077888 * k + 4030990 := by
    unfold C
    simp [show (2359296 * k + 1343663) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 4030990) = 3538944 * k + 2015495 := by
    unfold C
    simp [show (7077888 * k + 4030990) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2015495) = 10616832 * k + 6046486 := by
    unfold C
    simp [show (3538944 * k + 2015495) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 6046486) = 5308416 * k + 3023243 := by
    unfold C
    simp [show (10616832 * k + 6046486) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 3023243) = 15925248 * k + 9069730 := by
    unfold C
    simp [show (5308416 * k + 3023243) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 9069730) = 7962624 * k + 4534865 := by
    unfold C
    simp [show (15925248 * k + 9069730) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 4534865) = 23887872 * k + 13604596 := by
    unfold C
    simp [show (7962624 * k + 4534865) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 13604596) = 11943936 * k + 6802298 := by
    unfold C
    simp [show (23887872 * k + 13604596) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 6802298) = 5971968 * k + 3401149 := by
    unfold C
    simp [show (11943936 * k + 6802298) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 3401149) = 17915904 * k + 10203448 := by
    unfold C
    simp [show (5971968 * k + 3401149) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 10203448) = 8957952 * k + 5101724 := by
    unfold C
    simp [show (17915904 * k + 10203448) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 5101724) = 4478976 * k + 2550862 := by
    unfold C
    simp [show (8957952 * k + 5101724) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 2550862) = 2239488 * k + 1275431 := by
    unfold C
    simp [show (4478976 * k + 2550862) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 1275431) = 6718464 * k + 3826294 := by
    unfold C
    simp [show (2239488 * k + 1275431) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 3826294) = 3359232 * k + 1913147 := by
    unfold C
    simp [show (6718464 * k + 3826294) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 1913147) = 10077696 * k + 5739442 := by
    unfold C
    simp [show (3359232 * k + 1913147) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 5739442) = 5038848 * k + 2869721 := by
    unfold C
    simp [show (10077696 * k + 5739442) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 2869721) = 15116544 * k + 8609164 := by
    unfold C
    simp [show (5038848 * k + 2869721) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 8609164) = 7558272 * k + 4304582 := by
    unfold C
    simp [show (15116544 * k + 8609164) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 4304582) = 3779136 * k + 2152291 := by
    unfold C
    simp [show (7558272 * k + 4304582) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 2152291) = 11337408 * k + 6456874 := by
    unfold C
    simp [show (3779136 * k + 2152291) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 6456874) = 5668704 * k + 3228437 := by
    unfold C
    simp [show (11337408 * k + 6456874) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 3228437) = 17006112 * k + 9685312 := by
    unfold C
    simp [show (5668704 * k + 3228437) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 9685312) = 8503056 * k + 4842656 := by
    unfold C
    simp [show (17006112 * k + 9685312) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 4842656) = 4251528 * k + 2421328 := by
    unfold C
    simp [show (8503056 * k + 4842656) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 2421328) = 2125764 * k + 1210664 := by
    unfold C
    simp [show (4251528 * k + 2421328) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1210664) = 1062882 * k + 605332 := by
    unfold C
    simp [show (2125764 * k + 1210664) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 605332) = 531441 * k + 302666 := by
    unfold C
    simp [show (1062882 * k + 605332) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 597183) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 597183)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_597503 : ∀ k : Nat,
    iterate (1048576 * k + 597503) 32 = 531441 * k + 302828 ∧
      531441 * k + 302828 < 1048576 * k + 597503 := by
  intro k
  have h1 : C (1048576 * k + 597503) = 3145728 * k + 1792510 := by
    unfold C
    simp [show (1048576 * k + 597503) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1792510) = 1572864 * k + 896255 := by
    unfold C
    simp [show (3145728 * k + 1792510) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 896255) = 4718592 * k + 2688766 := by
    unfold C
    simp [show (1572864 * k + 896255) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2688766) = 2359296 * k + 1344383 := by
    unfold C
    simp [show (4718592 * k + 2688766) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1344383) = 7077888 * k + 4033150 := by
    unfold C
    simp [show (2359296 * k + 1344383) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 4033150) = 3538944 * k + 2016575 := by
    unfold C
    simp [show (7077888 * k + 4033150) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2016575) = 10616832 * k + 6049726 := by
    unfold C
    simp [show (3538944 * k + 2016575) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 6049726) = 5308416 * k + 3024863 := by
    unfold C
    simp [show (10616832 * k + 6049726) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 3024863) = 15925248 * k + 9074590 := by
    unfold C
    simp [show (5308416 * k + 3024863) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 9074590) = 7962624 * k + 4537295 := by
    unfold C
    simp [show (15925248 * k + 9074590) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 4537295) = 23887872 * k + 13611886 := by
    unfold C
    simp [show (7962624 * k + 4537295) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 13611886) = 11943936 * k + 6805943 := by
    unfold C
    simp [show (23887872 * k + 13611886) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 6805943) = 35831808 * k + 20417830 := by
    unfold C
    simp [show (11943936 * k + 6805943) % 2 ≠ 0 by omega]
    omega
  have h14 : C (35831808 * k + 20417830) = 17915904 * k + 10208915 := by
    unfold C
    simp [show (35831808 * k + 20417830) % 2 = 0 by omega]
    omega
  have h15 : C (17915904 * k + 10208915) = 53747712 * k + 30626746 := by
    unfold C
    simp [show (17915904 * k + 10208915) % 2 ≠ 0 by omega]
    omega
  have h16 : C (53747712 * k + 30626746) = 26873856 * k + 15313373 := by
    unfold C
    simp [show (53747712 * k + 30626746) % 2 = 0 by omega]
    omega
  have h17 : C (26873856 * k + 15313373) = 80621568 * k + 45940120 := by
    unfold C
    simp [show (26873856 * k + 15313373) % 2 ≠ 0 by omega]
    omega
  have h18 : C (80621568 * k + 45940120) = 40310784 * k + 22970060 := by
    unfold C
    simp [show (80621568 * k + 45940120) % 2 = 0 by omega]
    omega
  have h19 : C (40310784 * k + 22970060) = 20155392 * k + 11485030 := by
    unfold C
    simp [show (40310784 * k + 22970060) % 2 = 0 by omega]
    omega
  have h20 : C (20155392 * k + 11485030) = 10077696 * k + 5742515 := by
    unfold C
    simp [show (20155392 * k + 11485030) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 5742515) = 30233088 * k + 17227546 := by
    unfold C
    simp [show (10077696 * k + 5742515) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 17227546) = 15116544 * k + 8613773 := by
    unfold C
    simp [show (30233088 * k + 17227546) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 8613773) = 45349632 * k + 25841320 := by
    unfold C
    simp [show (15116544 * k + 8613773) % 2 ≠ 0 by omega]
    omega
  have h24 : C (45349632 * k + 25841320) = 22674816 * k + 12920660 := by
    unfold C
    simp [show (45349632 * k + 25841320) % 2 = 0 by omega]
    omega
  have h25 : C (22674816 * k + 12920660) = 11337408 * k + 6460330 := by
    unfold C
    simp [show (22674816 * k + 12920660) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 6460330) = 5668704 * k + 3230165 := by
    unfold C
    simp [show (11337408 * k + 6460330) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 3230165) = 17006112 * k + 9690496 := by
    unfold C
    simp [show (5668704 * k + 3230165) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 9690496) = 8503056 * k + 4845248 := by
    unfold C
    simp [show (17006112 * k + 9690496) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 4845248) = 4251528 * k + 2422624 := by
    unfold C
    simp [show (8503056 * k + 4845248) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 2422624) = 2125764 * k + 1211312 := by
    unfold C
    simp [show (4251528 * k + 2422624) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1211312) = 1062882 * k + 605656 := by
    unfold C
    simp [show (2125764 * k + 1211312) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 605656) = 531441 * k + 302828 := by
    unfold C
    simp [show (1062882 * k + 605656) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 597503) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 597503)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_597743 : ∀ k : Nat,
    iterate (1048576 * k + 597743) 32 = 531441 * k + 302950 ∧
      531441 * k + 302950 < 1048576 * k + 597743 := by
  intro k
  have h1 : C (1048576 * k + 597743) = 3145728 * k + 1793230 := by
    unfold C
    simp [show (1048576 * k + 597743) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1793230) = 1572864 * k + 896615 := by
    unfold C
    simp [show (3145728 * k + 1793230) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 896615) = 4718592 * k + 2689846 := by
    unfold C
    simp [show (1572864 * k + 896615) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2689846) = 2359296 * k + 1344923 := by
    unfold C
    simp [show (4718592 * k + 2689846) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1344923) = 7077888 * k + 4034770 := by
    unfold C
    simp [show (2359296 * k + 1344923) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 4034770) = 3538944 * k + 2017385 := by
    unfold C
    simp [show (7077888 * k + 4034770) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2017385) = 10616832 * k + 6052156 := by
    unfold C
    simp [show (3538944 * k + 2017385) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 6052156) = 5308416 * k + 3026078 := by
    unfold C
    simp [show (10616832 * k + 6052156) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 3026078) = 2654208 * k + 1513039 := by
    unfold C
    simp [show (5308416 * k + 3026078) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1513039) = 7962624 * k + 4539118 := by
    unfold C
    simp [show (2654208 * k + 1513039) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 4539118) = 3981312 * k + 2269559 := by
    unfold C
    simp [show (7962624 * k + 4539118) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 2269559) = 11943936 * k + 6808678 := by
    unfold C
    simp [show (3981312 * k + 2269559) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 6808678) = 5971968 * k + 3404339 := by
    unfold C
    simp [show (11943936 * k + 6808678) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 3404339) = 17915904 * k + 10213018 := by
    unfold C
    simp [show (5971968 * k + 3404339) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 10213018) = 8957952 * k + 5106509 := by
    unfold C
    simp [show (17915904 * k + 10213018) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 5106509) = 26873856 * k + 15319528 := by
    unfold C
    simp [show (8957952 * k + 5106509) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 15319528) = 13436928 * k + 7659764 := by
    unfold C
    simp [show (26873856 * k + 15319528) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 7659764) = 6718464 * k + 3829882 := by
    unfold C
    simp [show (13436928 * k + 7659764) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 3829882) = 3359232 * k + 1914941 := by
    unfold C
    simp [show (6718464 * k + 3829882) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 1914941) = 10077696 * k + 5744824 := by
    unfold C
    simp [show (3359232 * k + 1914941) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 5744824) = 5038848 * k + 2872412 := by
    unfold C
    simp [show (10077696 * k + 5744824) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 2872412) = 2519424 * k + 1436206 := by
    unfold C
    simp [show (5038848 * k + 2872412) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1436206) = 1259712 * k + 718103 := by
    unfold C
    simp [show (2519424 * k + 1436206) % 2 = 0 by omega]
    omega
  have h24 : C (1259712 * k + 718103) = 3779136 * k + 2154310 := by
    unfold C
    simp [show (1259712 * k + 718103) % 2 ≠ 0 by omega]
    omega
  have h25 : C (3779136 * k + 2154310) = 1889568 * k + 1077155 := by
    unfold C
    simp [show (3779136 * k + 2154310) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1077155) = 5668704 * k + 3231466 := by
    unfold C
    simp [show (1889568 * k + 1077155) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 3231466) = 2834352 * k + 1615733 := by
    unfold C
    simp [show (5668704 * k + 3231466) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1615733) = 8503056 * k + 4847200 := by
    unfold C
    simp [show (2834352 * k + 1615733) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 4847200) = 4251528 * k + 2423600 := by
    unfold C
    simp [show (8503056 * k + 4847200) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 2423600) = 2125764 * k + 1211800 := by
    unfold C
    simp [show (4251528 * k + 2423600) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1211800) = 1062882 * k + 605900 := by
    unfold C
    simp [show (2125764 * k + 1211800) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 605900) = 531441 * k + 302950 := by
    unfold C
    simp [show (1062882 * k + 605900) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 597743) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 597743)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_597851 : ∀ k : Nat,
    iterate (1048576 * k + 597851) 32 = 531441 * k + 303005 ∧
      531441 * k + 303005 < 1048576 * k + 597851 := by
  intro k
  have h1 : C (1048576 * k + 597851) = 3145728 * k + 1793554 := by
    unfold C
    simp [show (1048576 * k + 597851) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1793554) = 1572864 * k + 896777 := by
    unfold C
    simp [show (3145728 * k + 1793554) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 896777) = 4718592 * k + 2690332 := by
    unfold C
    simp [show (1572864 * k + 896777) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2690332) = 2359296 * k + 1345166 := by
    unfold C
    simp [show (4718592 * k + 2690332) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1345166) = 1179648 * k + 672583 := by
    unfold C
    simp [show (2359296 * k + 1345166) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 672583) = 3538944 * k + 2017750 := by
    unfold C
    simp [show (1179648 * k + 672583) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 2017750) = 1769472 * k + 1008875 := by
    unfold C
    simp [show (3538944 * k + 2017750) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1008875) = 5308416 * k + 3026626 := by
    unfold C
    simp [show (1769472 * k + 1008875) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 3026626) = 2654208 * k + 1513313 := by
    unfold C
    simp [show (5308416 * k + 3026626) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1513313) = 7962624 * k + 4539940 := by
    unfold C
    simp [show (2654208 * k + 1513313) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 4539940) = 3981312 * k + 2269970 := by
    unfold C
    simp [show (7962624 * k + 4539940) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 2269970) = 1990656 * k + 1134985 := by
    unfold C
    simp [show (3981312 * k + 2269970) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 1134985) = 5971968 * k + 3404956 := by
    unfold C
    simp [show (1990656 * k + 1134985) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 3404956) = 2985984 * k + 1702478 := by
    unfold C
    simp [show (5971968 * k + 3404956) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1702478) = 1492992 * k + 851239 := by
    unfold C
    simp [show (2985984 * k + 1702478) % 2 = 0 by omega]
    omega
  have h16 : C (1492992 * k + 851239) = 4478976 * k + 2553718 := by
    unfold C
    simp [show (1492992 * k + 851239) % 2 ≠ 0 by omega]
    omega
  have h17 : C (4478976 * k + 2553718) = 2239488 * k + 1276859 := by
    unfold C
    simp [show (4478976 * k + 2553718) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 1276859) = 6718464 * k + 3830578 := by
    unfold C
    simp [show (2239488 * k + 1276859) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 3830578) = 3359232 * k + 1915289 := by
    unfold C
    simp [show (6718464 * k + 3830578) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 1915289) = 10077696 * k + 5745868 := by
    unfold C
    simp [show (3359232 * k + 1915289) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 5745868) = 5038848 * k + 2872934 := by
    unfold C
    simp [show (10077696 * k + 5745868) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 2872934) = 2519424 * k + 1436467 := by
    unfold C
    simp [show (5038848 * k + 2872934) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1436467) = 7558272 * k + 4309402 := by
    unfold C
    simp [show (2519424 * k + 1436467) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 4309402) = 3779136 * k + 2154701 := by
    unfold C
    simp [show (7558272 * k + 4309402) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 2154701) = 11337408 * k + 6464104 := by
    unfold C
    simp [show (3779136 * k + 2154701) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 6464104) = 5668704 * k + 3232052 := by
    unfold C
    simp [show (11337408 * k + 6464104) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 3232052) = 2834352 * k + 1616026 := by
    unfold C
    simp [show (5668704 * k + 3232052) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1616026) = 1417176 * k + 808013 := by
    unfold C
    simp [show (2834352 * k + 1616026) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 808013) = 4251528 * k + 2424040 := by
    unfold C
    simp [show (1417176 * k + 808013) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 2424040) = 2125764 * k + 1212020 := by
    unfold C
    simp [show (4251528 * k + 2424040) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1212020) = 1062882 * k + 606010 := by
    unfold C
    simp [show (2125764 * k + 1212020) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 606010) = 531441 * k + 303005 := by
    unfold C
    simp [show (1062882 * k + 606010) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 597851) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 597851)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_597999 : ∀ k : Nat,
    iterate (1048576 * k + 597999) 32 = 531441 * k + 303080 ∧
      531441 * k + 303080 < 1048576 * k + 597999 := by
  intro k
  have h1 : C (1048576 * k + 597999) = 3145728 * k + 1793998 := by
    unfold C
    simp [show (1048576 * k + 597999) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1793998) = 1572864 * k + 896999 := by
    unfold C
    simp [show (3145728 * k + 1793998) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 896999) = 4718592 * k + 2690998 := by
    unfold C
    simp [show (1572864 * k + 896999) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2690998) = 2359296 * k + 1345499 := by
    unfold C
    simp [show (4718592 * k + 2690998) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1345499) = 7077888 * k + 4036498 := by
    unfold C
    simp [show (2359296 * k + 1345499) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 4036498) = 3538944 * k + 2018249 := by
    unfold C
    simp [show (7077888 * k + 4036498) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2018249) = 10616832 * k + 6054748 := by
    unfold C
    simp [show (3538944 * k + 2018249) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 6054748) = 5308416 * k + 3027374 := by
    unfold C
    simp [show (10616832 * k + 6054748) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 3027374) = 2654208 * k + 1513687 := by
    unfold C
    simp [show (5308416 * k + 3027374) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1513687) = 7962624 * k + 4541062 := by
    unfold C
    simp [show (2654208 * k + 1513687) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 4541062) = 3981312 * k + 2270531 := by
    unfold C
    simp [show (7962624 * k + 4541062) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 2270531) = 11943936 * k + 6811594 := by
    unfold C
    simp [show (3981312 * k + 2270531) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 6811594) = 5971968 * k + 3405797 := by
    unfold C
    simp [show (11943936 * k + 6811594) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 3405797) = 17915904 * k + 10217392 := by
    unfold C
    simp [show (5971968 * k + 3405797) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 10217392) = 8957952 * k + 5108696 := by
    unfold C
    simp [show (17915904 * k + 10217392) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 5108696) = 4478976 * k + 2554348 := by
    unfold C
    simp [show (8957952 * k + 5108696) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 2554348) = 2239488 * k + 1277174 := by
    unfold C
    simp [show (4478976 * k + 2554348) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 1277174) = 1119744 * k + 638587 := by
    unfold C
    simp [show (2239488 * k + 1277174) % 2 = 0 by omega]
    omega
  have h19 : C (1119744 * k + 638587) = 3359232 * k + 1915762 := by
    unfold C
    simp [show (1119744 * k + 638587) % 2 ≠ 0 by omega]
    omega
  have h20 : C (3359232 * k + 1915762) = 1679616 * k + 957881 := by
    unfold C
    simp [show (3359232 * k + 1915762) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 957881) = 5038848 * k + 2873644 := by
    unfold C
    simp [show (1679616 * k + 957881) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 2873644) = 2519424 * k + 1436822 := by
    unfold C
    simp [show (5038848 * k + 2873644) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1436822) = 1259712 * k + 718411 := by
    unfold C
    simp [show (2519424 * k + 1436822) % 2 = 0 by omega]
    omega
  have h24 : C (1259712 * k + 718411) = 3779136 * k + 2155234 := by
    unfold C
    simp [show (1259712 * k + 718411) % 2 ≠ 0 by omega]
    omega
  have h25 : C (3779136 * k + 2155234) = 1889568 * k + 1077617 := by
    unfold C
    simp [show (3779136 * k + 2155234) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1077617) = 5668704 * k + 3232852 := by
    unfold C
    simp [show (1889568 * k + 1077617) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 3232852) = 2834352 * k + 1616426 := by
    unfold C
    simp [show (5668704 * k + 3232852) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1616426) = 1417176 * k + 808213 := by
    unfold C
    simp [show (2834352 * k + 1616426) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 808213) = 4251528 * k + 2424640 := by
    unfold C
    simp [show (1417176 * k + 808213) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 2424640) = 2125764 * k + 1212320 := by
    unfold C
    simp [show (4251528 * k + 2424640) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1212320) = 1062882 * k + 606160 := by
    unfold C
    simp [show (2125764 * k + 1212320) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 606160) = 531441 * k + 303080 := by
    unfold C
    simp [show (1062882 * k + 606160) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 597999) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 597999)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_598047 : ∀ k : Nat,
    iterate (1048576 * k + 598047) 32 = 531441 * k + 303104 ∧
      531441 * k + 303104 < 1048576 * k + 598047 := by
  intro k
  have h1 : C (1048576 * k + 598047) = 3145728 * k + 1794142 := by
    unfold C
    simp [show (1048576 * k + 598047) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1794142) = 1572864 * k + 897071 := by
    unfold C
    simp [show (3145728 * k + 1794142) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 897071) = 4718592 * k + 2691214 := by
    unfold C
    simp [show (1572864 * k + 897071) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2691214) = 2359296 * k + 1345607 := by
    unfold C
    simp [show (4718592 * k + 2691214) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1345607) = 7077888 * k + 4036822 := by
    unfold C
    simp [show (2359296 * k + 1345607) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 4036822) = 3538944 * k + 2018411 := by
    unfold C
    simp [show (7077888 * k + 4036822) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2018411) = 10616832 * k + 6055234 := by
    unfold C
    simp [show (3538944 * k + 2018411) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 6055234) = 5308416 * k + 3027617 := by
    unfold C
    simp [show (10616832 * k + 6055234) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 3027617) = 15925248 * k + 9082852 := by
    unfold C
    simp [show (5308416 * k + 3027617) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 9082852) = 7962624 * k + 4541426 := by
    unfold C
    simp [show (15925248 * k + 9082852) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 4541426) = 3981312 * k + 2270713 := by
    unfold C
    simp [show (7962624 * k + 4541426) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 2270713) = 11943936 * k + 6812140 := by
    unfold C
    simp [show (3981312 * k + 2270713) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 6812140) = 5971968 * k + 3406070 := by
    unfold C
    simp [show (11943936 * k + 6812140) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 3406070) = 2985984 * k + 1703035 := by
    unfold C
    simp [show (5971968 * k + 3406070) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1703035) = 8957952 * k + 5109106 := by
    unfold C
    simp [show (2985984 * k + 1703035) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 5109106) = 4478976 * k + 2554553 := by
    unfold C
    simp [show (8957952 * k + 5109106) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 2554553) = 13436928 * k + 7663660 := by
    unfold C
    simp [show (4478976 * k + 2554553) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 7663660) = 6718464 * k + 3831830 := by
    unfold C
    simp [show (13436928 * k + 7663660) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 3831830) = 3359232 * k + 1915915 := by
    unfold C
    simp [show (6718464 * k + 3831830) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 1915915) = 10077696 * k + 5747746 := by
    unfold C
    simp [show (3359232 * k + 1915915) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 5747746) = 5038848 * k + 2873873 := by
    unfold C
    simp [show (10077696 * k + 5747746) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 2873873) = 15116544 * k + 8621620 := by
    unfold C
    simp [show (5038848 * k + 2873873) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 8621620) = 7558272 * k + 4310810 := by
    unfold C
    simp [show (15116544 * k + 8621620) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 4310810) = 3779136 * k + 2155405 := by
    unfold C
    simp [show (7558272 * k + 4310810) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 2155405) = 11337408 * k + 6466216 := by
    unfold C
    simp [show (3779136 * k + 2155405) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 6466216) = 5668704 * k + 3233108 := by
    unfold C
    simp [show (11337408 * k + 6466216) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 3233108) = 2834352 * k + 1616554 := by
    unfold C
    simp [show (5668704 * k + 3233108) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1616554) = 1417176 * k + 808277 := by
    unfold C
    simp [show (2834352 * k + 1616554) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 808277) = 4251528 * k + 2424832 := by
    unfold C
    simp [show (1417176 * k + 808277) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 2424832) = 2125764 * k + 1212416 := by
    unfold C
    simp [show (4251528 * k + 2424832) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1212416) = 1062882 * k + 606208 := by
    unfold C
    simp [show (2125764 * k + 1212416) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 606208) = 531441 * k + 303104 := by
    unfold C
    simp [show (1062882 * k + 606208) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 598047) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 598047)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_599359 : ∀ k : Nat,
    iterate (1048576 * k + 599359) 32 = 531441 * k + 303769 ∧
      531441 * k + 303769 < 1048576 * k + 599359 := by
  intro k
  have h1 : C (1048576 * k + 599359) = 3145728 * k + 1798078 := by
    unfold C
    simp [show (1048576 * k + 599359) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1798078) = 1572864 * k + 899039 := by
    unfold C
    simp [show (3145728 * k + 1798078) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 899039) = 4718592 * k + 2697118 := by
    unfold C
    simp [show (1572864 * k + 899039) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2697118) = 2359296 * k + 1348559 := by
    unfold C
    simp [show (4718592 * k + 2697118) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1348559) = 7077888 * k + 4045678 := by
    unfold C
    simp [show (2359296 * k + 1348559) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 4045678) = 3538944 * k + 2022839 := by
    unfold C
    simp [show (7077888 * k + 4045678) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2022839) = 10616832 * k + 6068518 := by
    unfold C
    simp [show (3538944 * k + 2022839) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 6068518) = 5308416 * k + 3034259 := by
    unfold C
    simp [show (10616832 * k + 6068518) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 3034259) = 15925248 * k + 9102778 := by
    unfold C
    simp [show (5308416 * k + 3034259) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 9102778) = 7962624 * k + 4551389 := by
    unfold C
    simp [show (15925248 * k + 9102778) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 4551389) = 23887872 * k + 13654168 := by
    unfold C
    simp [show (7962624 * k + 4551389) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 13654168) = 11943936 * k + 6827084 := by
    unfold C
    simp [show (23887872 * k + 13654168) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 6827084) = 5971968 * k + 3413542 := by
    unfold C
    simp [show (11943936 * k + 6827084) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 3413542) = 2985984 * k + 1706771 := by
    unfold C
    simp [show (5971968 * k + 3413542) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1706771) = 8957952 * k + 5120314 := by
    unfold C
    simp [show (2985984 * k + 1706771) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 5120314) = 4478976 * k + 2560157 := by
    unfold C
    simp [show (8957952 * k + 5120314) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 2560157) = 13436928 * k + 7680472 := by
    unfold C
    simp [show (4478976 * k + 2560157) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 7680472) = 6718464 * k + 3840236 := by
    unfold C
    simp [show (13436928 * k + 7680472) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 3840236) = 3359232 * k + 1920118 := by
    unfold C
    simp [show (6718464 * k + 3840236) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 1920118) = 1679616 * k + 960059 := by
    unfold C
    simp [show (3359232 * k + 1920118) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 960059) = 5038848 * k + 2880178 := by
    unfold C
    simp [show (1679616 * k + 960059) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 2880178) = 2519424 * k + 1440089 := by
    unfold C
    simp [show (5038848 * k + 2880178) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1440089) = 7558272 * k + 4320268 := by
    unfold C
    simp [show (2519424 * k + 1440089) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 4320268) = 3779136 * k + 2160134 := by
    unfold C
    simp [show (7558272 * k + 4320268) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 2160134) = 1889568 * k + 1080067 := by
    unfold C
    simp [show (3779136 * k + 2160134) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1080067) = 5668704 * k + 3240202 := by
    unfold C
    simp [show (1889568 * k + 1080067) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 3240202) = 2834352 * k + 1620101 := by
    unfold C
    simp [show (5668704 * k + 3240202) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1620101) = 8503056 * k + 4860304 := by
    unfold C
    simp [show (2834352 * k + 1620101) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 4860304) = 4251528 * k + 2430152 := by
    unfold C
    simp [show (8503056 * k + 4860304) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 2430152) = 2125764 * k + 1215076 := by
    unfold C
    simp [show (4251528 * k + 2430152) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1215076) = 1062882 * k + 607538 := by
    unfold C
    simp [show (2125764 * k + 1215076) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 607538) = 531441 * k + 303769 := by
    unfold C
    simp [show (1062882 * k + 607538) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 599359) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 599359)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_599519 : ∀ k : Nat,
    iterate (1048576 * k + 599519) 32 = 531441 * k + 303850 ∧
      531441 * k + 303850 < 1048576 * k + 599519 := by
  intro k
  have h1 : C (1048576 * k + 599519) = 3145728 * k + 1798558 := by
    unfold C
    simp [show (1048576 * k + 599519) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1798558) = 1572864 * k + 899279 := by
    unfold C
    simp [show (3145728 * k + 1798558) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 899279) = 4718592 * k + 2697838 := by
    unfold C
    simp [show (1572864 * k + 899279) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2697838) = 2359296 * k + 1348919 := by
    unfold C
    simp [show (4718592 * k + 2697838) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1348919) = 7077888 * k + 4046758 := by
    unfold C
    simp [show (2359296 * k + 1348919) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 4046758) = 3538944 * k + 2023379 := by
    unfold C
    simp [show (7077888 * k + 4046758) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2023379) = 10616832 * k + 6070138 := by
    unfold C
    simp [show (3538944 * k + 2023379) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 6070138) = 5308416 * k + 3035069 := by
    unfold C
    simp [show (10616832 * k + 6070138) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 3035069) = 15925248 * k + 9105208 := by
    unfold C
    simp [show (5308416 * k + 3035069) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 9105208) = 7962624 * k + 4552604 := by
    unfold C
    simp [show (15925248 * k + 9105208) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 4552604) = 3981312 * k + 2276302 := by
    unfold C
    simp [show (7962624 * k + 4552604) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 2276302) = 1990656 * k + 1138151 := by
    unfold C
    simp [show (3981312 * k + 2276302) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 1138151) = 5971968 * k + 3414454 := by
    unfold C
    simp [show (1990656 * k + 1138151) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 3414454) = 2985984 * k + 1707227 := by
    unfold C
    simp [show (5971968 * k + 3414454) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1707227) = 8957952 * k + 5121682 := by
    unfold C
    simp [show (2985984 * k + 1707227) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 5121682) = 4478976 * k + 2560841 := by
    unfold C
    simp [show (8957952 * k + 5121682) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 2560841) = 13436928 * k + 7682524 := by
    unfold C
    simp [show (4478976 * k + 2560841) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 7682524) = 6718464 * k + 3841262 := by
    unfold C
    simp [show (13436928 * k + 7682524) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 3841262) = 3359232 * k + 1920631 := by
    unfold C
    simp [show (6718464 * k + 3841262) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 1920631) = 10077696 * k + 5761894 := by
    unfold C
    simp [show (3359232 * k + 1920631) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 5761894) = 5038848 * k + 2880947 := by
    unfold C
    simp [show (10077696 * k + 5761894) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 2880947) = 15116544 * k + 8642842 := by
    unfold C
    simp [show (5038848 * k + 2880947) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 8642842) = 7558272 * k + 4321421 := by
    unfold C
    simp [show (15116544 * k + 8642842) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 4321421) = 22674816 * k + 12964264 := by
    unfold C
    simp [show (7558272 * k + 4321421) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 12964264) = 11337408 * k + 6482132 := by
    unfold C
    simp [show (22674816 * k + 12964264) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 6482132) = 5668704 * k + 3241066 := by
    unfold C
    simp [show (11337408 * k + 6482132) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 3241066) = 2834352 * k + 1620533 := by
    unfold C
    simp [show (5668704 * k + 3241066) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1620533) = 8503056 * k + 4861600 := by
    unfold C
    simp [show (2834352 * k + 1620533) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 4861600) = 4251528 * k + 2430800 := by
    unfold C
    simp [show (8503056 * k + 4861600) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 2430800) = 2125764 * k + 1215400 := by
    unfold C
    simp [show (4251528 * k + 2430800) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1215400) = 1062882 * k + 607700 := by
    unfold C
    simp [show (2125764 * k + 1215400) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 607700) = 531441 * k + 303850 := by
    unfold C
    simp [show (1062882 * k + 607700) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 599519) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 599519)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_599551 : ∀ k : Nat,
    iterate (1048576 * k + 599551) 32 = 531441 * k + 303866 ∧
      531441 * k + 303866 < 1048576 * k + 599551 := by
  intro k
  have h1 : C (1048576 * k + 599551) = 3145728 * k + 1798654 := by
    unfold C
    simp [show (1048576 * k + 599551) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1798654) = 1572864 * k + 899327 := by
    unfold C
    simp [show (3145728 * k + 1798654) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 899327) = 4718592 * k + 2697982 := by
    unfold C
    simp [show (1572864 * k + 899327) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2697982) = 2359296 * k + 1348991 := by
    unfold C
    simp [show (4718592 * k + 2697982) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1348991) = 7077888 * k + 4046974 := by
    unfold C
    simp [show (2359296 * k + 1348991) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 4046974) = 3538944 * k + 2023487 := by
    unfold C
    simp [show (7077888 * k + 4046974) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2023487) = 10616832 * k + 6070462 := by
    unfold C
    simp [show (3538944 * k + 2023487) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 6070462) = 5308416 * k + 3035231 := by
    unfold C
    simp [show (10616832 * k + 6070462) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 3035231) = 15925248 * k + 9105694 := by
    unfold C
    simp [show (5308416 * k + 3035231) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 9105694) = 7962624 * k + 4552847 := by
    unfold C
    simp [show (15925248 * k + 9105694) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 4552847) = 23887872 * k + 13658542 := by
    unfold C
    simp [show (7962624 * k + 4552847) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 13658542) = 11943936 * k + 6829271 := by
    unfold C
    simp [show (23887872 * k + 13658542) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 6829271) = 35831808 * k + 20487814 := by
    unfold C
    simp [show (11943936 * k + 6829271) % 2 ≠ 0 by omega]
    omega
  have h14 : C (35831808 * k + 20487814) = 17915904 * k + 10243907 := by
    unfold C
    simp [show (35831808 * k + 20487814) % 2 = 0 by omega]
    omega
  have h15 : C (17915904 * k + 10243907) = 53747712 * k + 30731722 := by
    unfold C
    simp [show (17915904 * k + 10243907) % 2 ≠ 0 by omega]
    omega
  have h16 : C (53747712 * k + 30731722) = 26873856 * k + 15365861 := by
    unfold C
    simp [show (53747712 * k + 30731722) % 2 = 0 by omega]
    omega
  have h17 : C (26873856 * k + 15365861) = 80621568 * k + 46097584 := by
    unfold C
    simp [show (26873856 * k + 15365861) % 2 ≠ 0 by omega]
    omega
  have h18 : C (80621568 * k + 46097584) = 40310784 * k + 23048792 := by
    unfold C
    simp [show (80621568 * k + 46097584) % 2 = 0 by omega]
    omega
  have h19 : C (40310784 * k + 23048792) = 20155392 * k + 11524396 := by
    unfold C
    simp [show (40310784 * k + 23048792) % 2 = 0 by omega]
    omega
  have h20 : C (20155392 * k + 11524396) = 10077696 * k + 5762198 := by
    unfold C
    simp [show (20155392 * k + 11524396) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 5762198) = 5038848 * k + 2881099 := by
    unfold C
    simp [show (10077696 * k + 5762198) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 2881099) = 15116544 * k + 8643298 := by
    unfold C
    simp [show (5038848 * k + 2881099) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 8643298) = 7558272 * k + 4321649 := by
    unfold C
    simp [show (15116544 * k + 8643298) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 4321649) = 22674816 * k + 12964948 := by
    unfold C
    simp [show (7558272 * k + 4321649) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 12964948) = 11337408 * k + 6482474 := by
    unfold C
    simp [show (22674816 * k + 12964948) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 6482474) = 5668704 * k + 3241237 := by
    unfold C
    simp [show (11337408 * k + 6482474) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 3241237) = 17006112 * k + 9723712 := by
    unfold C
    simp [show (5668704 * k + 3241237) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 9723712) = 8503056 * k + 4861856 := by
    unfold C
    simp [show (17006112 * k + 9723712) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 4861856) = 4251528 * k + 2430928 := by
    unfold C
    simp [show (8503056 * k + 4861856) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 2430928) = 2125764 * k + 1215464 := by
    unfold C
    simp [show (4251528 * k + 2430928) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1215464) = 1062882 * k + 607732 := by
    unfold C
    simp [show (2125764 * k + 1215464) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 607732) = 531441 * k + 303866 := by
    unfold C
    simp [show (1062882 * k + 607732) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 599551) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 599551)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_599655 : ∀ k : Nat,
    iterate (1048576 * k + 599655) 32 = 531441 * k + 303919 ∧
      531441 * k + 303919 < 1048576 * k + 599655 := by
  intro k
  have h1 : C (1048576 * k + 599655) = 3145728 * k + 1798966 := by
    unfold C
    simp [show (1048576 * k + 599655) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1798966) = 1572864 * k + 899483 := by
    unfold C
    simp [show (3145728 * k + 1798966) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 899483) = 4718592 * k + 2698450 := by
    unfold C
    simp [show (1572864 * k + 899483) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2698450) = 2359296 * k + 1349225 := by
    unfold C
    simp [show (4718592 * k + 2698450) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1349225) = 7077888 * k + 4047676 := by
    unfold C
    simp [show (2359296 * k + 1349225) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 4047676) = 3538944 * k + 2023838 := by
    unfold C
    simp [show (7077888 * k + 4047676) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2023838) = 1769472 * k + 1011919 := by
    unfold C
    simp [show (3538944 * k + 2023838) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1011919) = 5308416 * k + 3035758 := by
    unfold C
    simp [show (1769472 * k + 1011919) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 3035758) = 2654208 * k + 1517879 := by
    unfold C
    simp [show (5308416 * k + 3035758) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1517879) = 7962624 * k + 4553638 := by
    unfold C
    simp [show (2654208 * k + 1517879) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 4553638) = 3981312 * k + 2276819 := by
    unfold C
    simp [show (7962624 * k + 4553638) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 2276819) = 11943936 * k + 6830458 := by
    unfold C
    simp [show (3981312 * k + 2276819) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 6830458) = 5971968 * k + 3415229 := by
    unfold C
    simp [show (11943936 * k + 6830458) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 3415229) = 17915904 * k + 10245688 := by
    unfold C
    simp [show (5971968 * k + 3415229) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 10245688) = 8957952 * k + 5122844 := by
    unfold C
    simp [show (17915904 * k + 10245688) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 5122844) = 4478976 * k + 2561422 := by
    unfold C
    simp [show (8957952 * k + 5122844) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 2561422) = 2239488 * k + 1280711 := by
    unfold C
    simp [show (4478976 * k + 2561422) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 1280711) = 6718464 * k + 3842134 := by
    unfold C
    simp [show (2239488 * k + 1280711) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 3842134) = 3359232 * k + 1921067 := by
    unfold C
    simp [show (6718464 * k + 3842134) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 1921067) = 10077696 * k + 5763202 := by
    unfold C
    simp [show (3359232 * k + 1921067) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 5763202) = 5038848 * k + 2881601 := by
    unfold C
    simp [show (10077696 * k + 5763202) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 2881601) = 15116544 * k + 8644804 := by
    unfold C
    simp [show (5038848 * k + 2881601) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 8644804) = 7558272 * k + 4322402 := by
    unfold C
    simp [show (15116544 * k + 8644804) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 4322402) = 3779136 * k + 2161201 := by
    unfold C
    simp [show (7558272 * k + 4322402) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 2161201) = 11337408 * k + 6483604 := by
    unfold C
    simp [show (3779136 * k + 2161201) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 6483604) = 5668704 * k + 3241802 := by
    unfold C
    simp [show (11337408 * k + 6483604) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 3241802) = 2834352 * k + 1620901 := by
    unfold C
    simp [show (5668704 * k + 3241802) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1620901) = 8503056 * k + 4862704 := by
    unfold C
    simp [show (2834352 * k + 1620901) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 4862704) = 4251528 * k + 2431352 := by
    unfold C
    simp [show (8503056 * k + 4862704) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 2431352) = 2125764 * k + 1215676 := by
    unfold C
    simp [show (4251528 * k + 2431352) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1215676) = 1062882 * k + 607838 := by
    unfold C
    simp [show (2125764 * k + 1215676) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 607838) = 531441 * k + 303919 := by
    unfold C
    simp [show (1062882 * k + 607838) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 599655) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 599655)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_600059 : ∀ k : Nat,
    iterate (1048576 * k + 600059) 32 = 531441 * k + 304124 ∧
      531441 * k + 304124 < 1048576 * k + 600059 := by
  intro k
  have h1 : C (1048576 * k + 600059) = 3145728 * k + 1800178 := by
    unfold C
    simp [show (1048576 * k + 600059) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1800178) = 1572864 * k + 900089 := by
    unfold C
    simp [show (3145728 * k + 1800178) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 900089) = 4718592 * k + 2700268 := by
    unfold C
    simp [show (1572864 * k + 900089) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2700268) = 2359296 * k + 1350134 := by
    unfold C
    simp [show (4718592 * k + 2700268) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1350134) = 1179648 * k + 675067 := by
    unfold C
    simp [show (2359296 * k + 1350134) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 675067) = 3538944 * k + 2025202 := by
    unfold C
    simp [show (1179648 * k + 675067) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 2025202) = 1769472 * k + 1012601 := by
    unfold C
    simp [show (3538944 * k + 2025202) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1012601) = 5308416 * k + 3037804 := by
    unfold C
    simp [show (1769472 * k + 1012601) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 3037804) = 2654208 * k + 1518902 := by
    unfold C
    simp [show (5308416 * k + 3037804) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1518902) = 1327104 * k + 759451 := by
    unfold C
    simp [show (2654208 * k + 1518902) % 2 = 0 by omega]
    omega
  have h11 : C (1327104 * k + 759451) = 3981312 * k + 2278354 := by
    unfold C
    simp [show (1327104 * k + 759451) % 2 ≠ 0 by omega]
    omega
  have h12 : C (3981312 * k + 2278354) = 1990656 * k + 1139177 := by
    unfold C
    simp [show (3981312 * k + 2278354) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 1139177) = 5971968 * k + 3417532 := by
    unfold C
    simp [show (1990656 * k + 1139177) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 3417532) = 2985984 * k + 1708766 := by
    unfold C
    simp [show (5971968 * k + 3417532) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1708766) = 1492992 * k + 854383 := by
    unfold C
    simp [show (2985984 * k + 1708766) % 2 = 0 by omega]
    omega
  have h16 : C (1492992 * k + 854383) = 4478976 * k + 2563150 := by
    unfold C
    simp [show (1492992 * k + 854383) % 2 ≠ 0 by omega]
    omega
  have h17 : C (4478976 * k + 2563150) = 2239488 * k + 1281575 := by
    unfold C
    simp [show (4478976 * k + 2563150) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 1281575) = 6718464 * k + 3844726 := by
    unfold C
    simp [show (2239488 * k + 1281575) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 3844726) = 3359232 * k + 1922363 := by
    unfold C
    simp [show (6718464 * k + 3844726) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 1922363) = 10077696 * k + 5767090 := by
    unfold C
    simp [show (3359232 * k + 1922363) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 5767090) = 5038848 * k + 2883545 := by
    unfold C
    simp [show (10077696 * k + 5767090) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 2883545) = 15116544 * k + 8650636 := by
    unfold C
    simp [show (5038848 * k + 2883545) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 8650636) = 7558272 * k + 4325318 := by
    unfold C
    simp [show (15116544 * k + 8650636) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 4325318) = 3779136 * k + 2162659 := by
    unfold C
    simp [show (7558272 * k + 4325318) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 2162659) = 11337408 * k + 6487978 := by
    unfold C
    simp [show (3779136 * k + 2162659) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 6487978) = 5668704 * k + 3243989 := by
    unfold C
    simp [show (11337408 * k + 6487978) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 3243989) = 17006112 * k + 9731968 := by
    unfold C
    simp [show (5668704 * k + 3243989) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 9731968) = 8503056 * k + 4865984 := by
    unfold C
    simp [show (17006112 * k + 9731968) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 4865984) = 4251528 * k + 2432992 := by
    unfold C
    simp [show (8503056 * k + 4865984) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 2432992) = 2125764 * k + 1216496 := by
    unfold C
    simp [show (4251528 * k + 2432992) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1216496) = 1062882 * k + 608248 := by
    unfold C
    simp [show (2125764 * k + 1216496) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 608248) = 531441 * k + 304124 := by
    unfold C
    simp [show (1062882 * k + 608248) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 600059) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 600059)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_600231 : ∀ k : Nat,
    iterate (1048576 * k + 600231) 32 = 531441 * k + 304211 ∧
      531441 * k + 304211 < 1048576 * k + 600231 := by
  intro k
  have h1 : C (1048576 * k + 600231) = 3145728 * k + 1800694 := by
    unfold C
    simp [show (1048576 * k + 600231) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1800694) = 1572864 * k + 900347 := by
    unfold C
    simp [show (3145728 * k + 1800694) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 900347) = 4718592 * k + 2701042 := by
    unfold C
    simp [show (1572864 * k + 900347) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2701042) = 2359296 * k + 1350521 := by
    unfold C
    simp [show (4718592 * k + 2701042) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1350521) = 7077888 * k + 4051564 := by
    unfold C
    simp [show (2359296 * k + 1350521) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 4051564) = 3538944 * k + 2025782 := by
    unfold C
    simp [show (7077888 * k + 4051564) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2025782) = 1769472 * k + 1012891 := by
    unfold C
    simp [show (3538944 * k + 2025782) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1012891) = 5308416 * k + 3038674 := by
    unfold C
    simp [show (1769472 * k + 1012891) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 3038674) = 2654208 * k + 1519337 := by
    unfold C
    simp [show (5308416 * k + 3038674) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1519337) = 7962624 * k + 4558012 := by
    unfold C
    simp [show (2654208 * k + 1519337) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 4558012) = 3981312 * k + 2279006 := by
    unfold C
    simp [show (7962624 * k + 4558012) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 2279006) = 1990656 * k + 1139503 := by
    unfold C
    simp [show (3981312 * k + 2279006) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 1139503) = 5971968 * k + 3418510 := by
    unfold C
    simp [show (1990656 * k + 1139503) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 3418510) = 2985984 * k + 1709255 := by
    unfold C
    simp [show (5971968 * k + 3418510) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1709255) = 8957952 * k + 5127766 := by
    unfold C
    simp [show (2985984 * k + 1709255) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 5127766) = 4478976 * k + 2563883 := by
    unfold C
    simp [show (8957952 * k + 5127766) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 2563883) = 13436928 * k + 7691650 := by
    unfold C
    simp [show (4478976 * k + 2563883) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 7691650) = 6718464 * k + 3845825 := by
    unfold C
    simp [show (13436928 * k + 7691650) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 3845825) = 20155392 * k + 11537476 := by
    unfold C
    simp [show (6718464 * k + 3845825) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 11537476) = 10077696 * k + 5768738 := by
    unfold C
    simp [show (20155392 * k + 11537476) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 5768738) = 5038848 * k + 2884369 := by
    unfold C
    simp [show (10077696 * k + 5768738) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 2884369) = 15116544 * k + 8653108 := by
    unfold C
    simp [show (5038848 * k + 2884369) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 8653108) = 7558272 * k + 4326554 := by
    unfold C
    simp [show (15116544 * k + 8653108) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 4326554) = 3779136 * k + 2163277 := by
    unfold C
    simp [show (7558272 * k + 4326554) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 2163277) = 11337408 * k + 6489832 := by
    unfold C
    simp [show (3779136 * k + 2163277) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 6489832) = 5668704 * k + 3244916 := by
    unfold C
    simp [show (11337408 * k + 6489832) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 3244916) = 2834352 * k + 1622458 := by
    unfold C
    simp [show (5668704 * k + 3244916) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1622458) = 1417176 * k + 811229 := by
    unfold C
    simp [show (2834352 * k + 1622458) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 811229) = 4251528 * k + 2433688 := by
    unfold C
    simp [show (1417176 * k + 811229) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 2433688) = 2125764 * k + 1216844 := by
    unfold C
    simp [show (4251528 * k + 2433688) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1216844) = 1062882 * k + 608422 := by
    unfold C
    simp [show (2125764 * k + 1216844) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 608422) = 531441 * k + 304211 := by
    unfold C
    simp [show (1062882 * k + 608422) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 600231) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 600231)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_601243 : ∀ k : Nat,
    iterate (1048576 * k + 601243) 32 = 531441 * k + 304724 ∧
      531441 * k + 304724 < 1048576 * k + 601243 := by
  intro k
  have h1 : C (1048576 * k + 601243) = 3145728 * k + 1803730 := by
    unfold C
    simp [show (1048576 * k + 601243) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1803730) = 1572864 * k + 901865 := by
    unfold C
    simp [show (3145728 * k + 1803730) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 901865) = 4718592 * k + 2705596 := by
    unfold C
    simp [show (1572864 * k + 901865) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2705596) = 2359296 * k + 1352798 := by
    unfold C
    simp [show (4718592 * k + 2705596) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1352798) = 1179648 * k + 676399 := by
    unfold C
    simp [show (2359296 * k + 1352798) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 676399) = 3538944 * k + 2029198 := by
    unfold C
    simp [show (1179648 * k + 676399) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 2029198) = 1769472 * k + 1014599 := by
    unfold C
    simp [show (3538944 * k + 2029198) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1014599) = 5308416 * k + 3043798 := by
    unfold C
    simp [show (1769472 * k + 1014599) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 3043798) = 2654208 * k + 1521899 := by
    unfold C
    simp [show (5308416 * k + 3043798) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1521899) = 7962624 * k + 4565698 := by
    unfold C
    simp [show (2654208 * k + 1521899) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 4565698) = 3981312 * k + 2282849 := by
    unfold C
    simp [show (7962624 * k + 4565698) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 2282849) = 11943936 * k + 6848548 := by
    unfold C
    simp [show (3981312 * k + 2282849) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 6848548) = 5971968 * k + 3424274 := by
    unfold C
    simp [show (11943936 * k + 6848548) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 3424274) = 2985984 * k + 1712137 := by
    unfold C
    simp [show (5971968 * k + 3424274) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1712137) = 8957952 * k + 5136412 := by
    unfold C
    simp [show (2985984 * k + 1712137) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 5136412) = 4478976 * k + 2568206 := by
    unfold C
    simp [show (8957952 * k + 5136412) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 2568206) = 2239488 * k + 1284103 := by
    unfold C
    simp [show (4478976 * k + 2568206) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 1284103) = 6718464 * k + 3852310 := by
    unfold C
    simp [show (2239488 * k + 1284103) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 3852310) = 3359232 * k + 1926155 := by
    unfold C
    simp [show (6718464 * k + 3852310) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 1926155) = 10077696 * k + 5778466 := by
    unfold C
    simp [show (3359232 * k + 1926155) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 5778466) = 5038848 * k + 2889233 := by
    unfold C
    simp [show (10077696 * k + 5778466) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 2889233) = 15116544 * k + 8667700 := by
    unfold C
    simp [show (5038848 * k + 2889233) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 8667700) = 7558272 * k + 4333850 := by
    unfold C
    simp [show (15116544 * k + 8667700) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 4333850) = 3779136 * k + 2166925 := by
    unfold C
    simp [show (7558272 * k + 4333850) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 2166925) = 11337408 * k + 6500776 := by
    unfold C
    simp [show (3779136 * k + 2166925) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 6500776) = 5668704 * k + 3250388 := by
    unfold C
    simp [show (11337408 * k + 6500776) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 3250388) = 2834352 * k + 1625194 := by
    unfold C
    simp [show (5668704 * k + 3250388) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1625194) = 1417176 * k + 812597 := by
    unfold C
    simp [show (2834352 * k + 1625194) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 812597) = 4251528 * k + 2437792 := by
    unfold C
    simp [show (1417176 * k + 812597) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 2437792) = 2125764 * k + 1218896 := by
    unfold C
    simp [show (4251528 * k + 2437792) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1218896) = 1062882 * k + 609448 := by
    unfold C
    simp [show (2125764 * k + 1218896) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 609448) = 531441 * k + 304724 := by
    unfold C
    simp [show (1062882 * k + 609448) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 601243) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 601243)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_602279 : ∀ k : Nat,
    iterate (1048576 * k + 602279) 32 = 531441 * k + 305249 ∧
      531441 * k + 305249 < 1048576 * k + 602279 := by
  intro k
  have h1 : C (1048576 * k + 602279) = 3145728 * k + 1806838 := by
    unfold C
    simp [show (1048576 * k + 602279) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1806838) = 1572864 * k + 903419 := by
    unfold C
    simp [show (3145728 * k + 1806838) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 903419) = 4718592 * k + 2710258 := by
    unfold C
    simp [show (1572864 * k + 903419) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2710258) = 2359296 * k + 1355129 := by
    unfold C
    simp [show (4718592 * k + 2710258) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1355129) = 7077888 * k + 4065388 := by
    unfold C
    simp [show (2359296 * k + 1355129) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 4065388) = 3538944 * k + 2032694 := by
    unfold C
    simp [show (7077888 * k + 4065388) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2032694) = 1769472 * k + 1016347 := by
    unfold C
    simp [show (3538944 * k + 2032694) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1016347) = 5308416 * k + 3049042 := by
    unfold C
    simp [show (1769472 * k + 1016347) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 3049042) = 2654208 * k + 1524521 := by
    unfold C
    simp [show (5308416 * k + 3049042) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1524521) = 7962624 * k + 4573564 := by
    unfold C
    simp [show (2654208 * k + 1524521) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 4573564) = 3981312 * k + 2286782 := by
    unfold C
    simp [show (7962624 * k + 4573564) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 2286782) = 1990656 * k + 1143391 := by
    unfold C
    simp [show (3981312 * k + 2286782) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 1143391) = 5971968 * k + 3430174 := by
    unfold C
    simp [show (1990656 * k + 1143391) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 3430174) = 2985984 * k + 1715087 := by
    unfold C
    simp [show (5971968 * k + 3430174) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1715087) = 8957952 * k + 5145262 := by
    unfold C
    simp [show (2985984 * k + 1715087) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 5145262) = 4478976 * k + 2572631 := by
    unfold C
    simp [show (8957952 * k + 5145262) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 2572631) = 13436928 * k + 7717894 := by
    unfold C
    simp [show (4478976 * k + 2572631) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 7717894) = 6718464 * k + 3858947 := by
    unfold C
    simp [show (13436928 * k + 7717894) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 3858947) = 20155392 * k + 11576842 := by
    unfold C
    simp [show (6718464 * k + 3858947) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 11576842) = 10077696 * k + 5788421 := by
    unfold C
    simp [show (20155392 * k + 11576842) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 5788421) = 30233088 * k + 17365264 := by
    unfold C
    simp [show (10077696 * k + 5788421) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 17365264) = 15116544 * k + 8682632 := by
    unfold C
    simp [show (30233088 * k + 17365264) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 8682632) = 7558272 * k + 4341316 := by
    unfold C
    simp [show (15116544 * k + 8682632) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 4341316) = 3779136 * k + 2170658 := by
    unfold C
    simp [show (7558272 * k + 4341316) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 2170658) = 1889568 * k + 1085329 := by
    unfold C
    simp [show (3779136 * k + 2170658) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1085329) = 5668704 * k + 3255988 := by
    unfold C
    simp [show (1889568 * k + 1085329) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 3255988) = 2834352 * k + 1627994 := by
    unfold C
    simp [show (5668704 * k + 3255988) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1627994) = 1417176 * k + 813997 := by
    unfold C
    simp [show (2834352 * k + 1627994) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 813997) = 4251528 * k + 2441992 := by
    unfold C
    simp [show (1417176 * k + 813997) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 2441992) = 2125764 * k + 1220996 := by
    unfold C
    simp [show (4251528 * k + 2441992) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1220996) = 1062882 * k + 610498 := by
    unfold C
    simp [show (2125764 * k + 1220996) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 610498) = 531441 * k + 305249 := by
    unfold C
    simp [show (1062882 * k + 610498) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 602279) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 602279)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_602591 : ∀ k : Nat,
    iterate (1048576 * k + 602591) 32 = 531441 * k + 305407 ∧
      531441 * k + 305407 < 1048576 * k + 602591 := by
  intro k
  have h1 : C (1048576 * k + 602591) = 3145728 * k + 1807774 := by
    unfold C
    simp [show (1048576 * k + 602591) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1807774) = 1572864 * k + 903887 := by
    unfold C
    simp [show (3145728 * k + 1807774) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 903887) = 4718592 * k + 2711662 := by
    unfold C
    simp [show (1572864 * k + 903887) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2711662) = 2359296 * k + 1355831 := by
    unfold C
    simp [show (4718592 * k + 2711662) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1355831) = 7077888 * k + 4067494 := by
    unfold C
    simp [show (2359296 * k + 1355831) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 4067494) = 3538944 * k + 2033747 := by
    unfold C
    simp [show (7077888 * k + 4067494) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2033747) = 10616832 * k + 6101242 := by
    unfold C
    simp [show (3538944 * k + 2033747) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 6101242) = 5308416 * k + 3050621 := by
    unfold C
    simp [show (10616832 * k + 6101242) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 3050621) = 15925248 * k + 9151864 := by
    unfold C
    simp [show (5308416 * k + 3050621) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 9151864) = 7962624 * k + 4575932 := by
    unfold C
    simp [show (15925248 * k + 9151864) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 4575932) = 3981312 * k + 2287966 := by
    unfold C
    simp [show (7962624 * k + 4575932) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 2287966) = 1990656 * k + 1143983 := by
    unfold C
    simp [show (3981312 * k + 2287966) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 1143983) = 5971968 * k + 3431950 := by
    unfold C
    simp [show (1990656 * k + 1143983) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 3431950) = 2985984 * k + 1715975 := by
    unfold C
    simp [show (5971968 * k + 3431950) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1715975) = 8957952 * k + 5147926 := by
    unfold C
    simp [show (2985984 * k + 1715975) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 5147926) = 4478976 * k + 2573963 := by
    unfold C
    simp [show (8957952 * k + 5147926) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 2573963) = 13436928 * k + 7721890 := by
    unfold C
    simp [show (4478976 * k + 2573963) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 7721890) = 6718464 * k + 3860945 := by
    unfold C
    simp [show (13436928 * k + 7721890) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 3860945) = 20155392 * k + 11582836 := by
    unfold C
    simp [show (6718464 * k + 3860945) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 11582836) = 10077696 * k + 5791418 := by
    unfold C
    simp [show (20155392 * k + 11582836) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 5791418) = 5038848 * k + 2895709 := by
    unfold C
    simp [show (10077696 * k + 5791418) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 2895709) = 15116544 * k + 8687128 := by
    unfold C
    simp [show (5038848 * k + 2895709) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 8687128) = 7558272 * k + 4343564 := by
    unfold C
    simp [show (15116544 * k + 8687128) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 4343564) = 3779136 * k + 2171782 := by
    unfold C
    simp [show (7558272 * k + 4343564) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 2171782) = 1889568 * k + 1085891 := by
    unfold C
    simp [show (3779136 * k + 2171782) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1085891) = 5668704 * k + 3257674 := by
    unfold C
    simp [show (1889568 * k + 1085891) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 3257674) = 2834352 * k + 1628837 := by
    unfold C
    simp [show (5668704 * k + 3257674) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1628837) = 8503056 * k + 4886512 := by
    unfold C
    simp [show (2834352 * k + 1628837) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 4886512) = 4251528 * k + 2443256 := by
    unfold C
    simp [show (8503056 * k + 4886512) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 2443256) = 2125764 * k + 1221628 := by
    unfold C
    simp [show (4251528 * k + 2443256) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1221628) = 1062882 * k + 610814 := by
    unfold C
    simp [show (2125764 * k + 1221628) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 610814) = 531441 * k + 305407 := by
    unfold C
    simp [show (1062882 * k + 610814) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 602591) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 602591)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_602715 : ∀ k : Nat,
    iterate (1048576 * k + 602715) 32 = 531441 * k + 305470 ∧
      531441 * k + 305470 < 1048576 * k + 602715 := by
  intro k
  have h1 : C (1048576 * k + 602715) = 3145728 * k + 1808146 := by
    unfold C
    simp [show (1048576 * k + 602715) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1808146) = 1572864 * k + 904073 := by
    unfold C
    simp [show (3145728 * k + 1808146) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 904073) = 4718592 * k + 2712220 := by
    unfold C
    simp [show (1572864 * k + 904073) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2712220) = 2359296 * k + 1356110 := by
    unfold C
    simp [show (4718592 * k + 2712220) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1356110) = 1179648 * k + 678055 := by
    unfold C
    simp [show (2359296 * k + 1356110) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 678055) = 3538944 * k + 2034166 := by
    unfold C
    simp [show (1179648 * k + 678055) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 2034166) = 1769472 * k + 1017083 := by
    unfold C
    simp [show (3538944 * k + 2034166) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1017083) = 5308416 * k + 3051250 := by
    unfold C
    simp [show (1769472 * k + 1017083) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 3051250) = 2654208 * k + 1525625 := by
    unfold C
    simp [show (5308416 * k + 3051250) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1525625) = 7962624 * k + 4576876 := by
    unfold C
    simp [show (2654208 * k + 1525625) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 4576876) = 3981312 * k + 2288438 := by
    unfold C
    simp [show (7962624 * k + 4576876) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 2288438) = 1990656 * k + 1144219 := by
    unfold C
    simp [show (3981312 * k + 2288438) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 1144219) = 5971968 * k + 3432658 := by
    unfold C
    simp [show (1990656 * k + 1144219) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 3432658) = 2985984 * k + 1716329 := by
    unfold C
    simp [show (5971968 * k + 3432658) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1716329) = 8957952 * k + 5148988 := by
    unfold C
    simp [show (2985984 * k + 1716329) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 5148988) = 4478976 * k + 2574494 := by
    unfold C
    simp [show (8957952 * k + 5148988) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 2574494) = 2239488 * k + 1287247 := by
    unfold C
    simp [show (4478976 * k + 2574494) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 1287247) = 6718464 * k + 3861742 := by
    unfold C
    simp [show (2239488 * k + 1287247) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 3861742) = 3359232 * k + 1930871 := by
    unfold C
    simp [show (6718464 * k + 3861742) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 1930871) = 10077696 * k + 5792614 := by
    unfold C
    simp [show (3359232 * k + 1930871) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 5792614) = 5038848 * k + 2896307 := by
    unfold C
    simp [show (10077696 * k + 5792614) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 2896307) = 15116544 * k + 8688922 := by
    unfold C
    simp [show (5038848 * k + 2896307) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 8688922) = 7558272 * k + 4344461 := by
    unfold C
    simp [show (15116544 * k + 8688922) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 4344461) = 22674816 * k + 13033384 := by
    unfold C
    simp [show (7558272 * k + 4344461) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 13033384) = 11337408 * k + 6516692 := by
    unfold C
    simp [show (22674816 * k + 13033384) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 6516692) = 5668704 * k + 3258346 := by
    unfold C
    simp [show (11337408 * k + 6516692) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 3258346) = 2834352 * k + 1629173 := by
    unfold C
    simp [show (5668704 * k + 3258346) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1629173) = 8503056 * k + 4887520 := by
    unfold C
    simp [show (2834352 * k + 1629173) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 4887520) = 4251528 * k + 2443760 := by
    unfold C
    simp [show (8503056 * k + 4887520) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 2443760) = 2125764 * k + 1221880 := by
    unfold C
    simp [show (4251528 * k + 2443760) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1221880) = 1062882 * k + 610940 := by
    unfold C
    simp [show (2125764 * k + 1221880) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 610940) = 531441 * k + 305470 := by
    unfold C
    simp [show (1062882 * k + 610940) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 602715) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 602715)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_603327 : ∀ k : Nat,
    iterate (1048576 * k + 603327) 32 = 531441 * k + 305780 ∧
      531441 * k + 305780 < 1048576 * k + 603327 := by
  intro k
  have h1 : C (1048576 * k + 603327) = 3145728 * k + 1809982 := by
    unfold C
    simp [show (1048576 * k + 603327) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1809982) = 1572864 * k + 904991 := by
    unfold C
    simp [show (3145728 * k + 1809982) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 904991) = 4718592 * k + 2714974 := by
    unfold C
    simp [show (1572864 * k + 904991) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2714974) = 2359296 * k + 1357487 := by
    unfold C
    simp [show (4718592 * k + 2714974) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1357487) = 7077888 * k + 4072462 := by
    unfold C
    simp [show (2359296 * k + 1357487) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 4072462) = 3538944 * k + 2036231 := by
    unfold C
    simp [show (7077888 * k + 4072462) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2036231) = 10616832 * k + 6108694 := by
    unfold C
    simp [show (3538944 * k + 2036231) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 6108694) = 5308416 * k + 3054347 := by
    unfold C
    simp [show (10616832 * k + 6108694) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 3054347) = 15925248 * k + 9163042 := by
    unfold C
    simp [show (5308416 * k + 3054347) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 9163042) = 7962624 * k + 4581521 := by
    unfold C
    simp [show (15925248 * k + 9163042) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 4581521) = 23887872 * k + 13744564 := by
    unfold C
    simp [show (7962624 * k + 4581521) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 13744564) = 11943936 * k + 6872282 := by
    unfold C
    simp [show (23887872 * k + 13744564) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 6872282) = 5971968 * k + 3436141 := by
    unfold C
    simp [show (11943936 * k + 6872282) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 3436141) = 17915904 * k + 10308424 := by
    unfold C
    simp [show (5971968 * k + 3436141) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 10308424) = 8957952 * k + 5154212 := by
    unfold C
    simp [show (17915904 * k + 10308424) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 5154212) = 4478976 * k + 2577106 := by
    unfold C
    simp [show (8957952 * k + 5154212) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 2577106) = 2239488 * k + 1288553 := by
    unfold C
    simp [show (4478976 * k + 2577106) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 1288553) = 6718464 * k + 3865660 := by
    unfold C
    simp [show (2239488 * k + 1288553) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 3865660) = 3359232 * k + 1932830 := by
    unfold C
    simp [show (6718464 * k + 3865660) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 1932830) = 1679616 * k + 966415 := by
    unfold C
    simp [show (3359232 * k + 1932830) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 966415) = 5038848 * k + 2899246 := by
    unfold C
    simp [show (1679616 * k + 966415) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 2899246) = 2519424 * k + 1449623 := by
    unfold C
    simp [show (5038848 * k + 2899246) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1449623) = 7558272 * k + 4348870 := by
    unfold C
    simp [show (2519424 * k + 1449623) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 4348870) = 3779136 * k + 2174435 := by
    unfold C
    simp [show (7558272 * k + 4348870) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 2174435) = 11337408 * k + 6523306 := by
    unfold C
    simp [show (3779136 * k + 2174435) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 6523306) = 5668704 * k + 3261653 := by
    unfold C
    simp [show (11337408 * k + 6523306) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 3261653) = 17006112 * k + 9784960 := by
    unfold C
    simp [show (5668704 * k + 3261653) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 9784960) = 8503056 * k + 4892480 := by
    unfold C
    simp [show (17006112 * k + 9784960) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 4892480) = 4251528 * k + 2446240 := by
    unfold C
    simp [show (8503056 * k + 4892480) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 2446240) = 2125764 * k + 1223120 := by
    unfold C
    simp [show (4251528 * k + 2446240) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1223120) = 1062882 * k + 611560 := by
    unfold C
    simp [show (2125764 * k + 1223120) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 611560) = 531441 * k + 305780 := by
    unfold C
    simp [show (1062882 * k + 611560) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 603327) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 603327)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_603599 : ∀ k : Nat,
    iterate (1048576 * k + 603599) 32 = 531441 * k + 305918 ∧
      531441 * k + 305918 < 1048576 * k + 603599 := by
  intro k
  have h1 : C (1048576 * k + 603599) = 3145728 * k + 1810798 := by
    unfold C
    simp [show (1048576 * k + 603599) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1810798) = 1572864 * k + 905399 := by
    unfold C
    simp [show (3145728 * k + 1810798) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 905399) = 4718592 * k + 2716198 := by
    unfold C
    simp [show (1572864 * k + 905399) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2716198) = 2359296 * k + 1358099 := by
    unfold C
    simp [show (4718592 * k + 2716198) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1358099) = 7077888 * k + 4074298 := by
    unfold C
    simp [show (2359296 * k + 1358099) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 4074298) = 3538944 * k + 2037149 := by
    unfold C
    simp [show (7077888 * k + 4074298) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2037149) = 10616832 * k + 6111448 := by
    unfold C
    simp [show (3538944 * k + 2037149) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 6111448) = 5308416 * k + 3055724 := by
    unfold C
    simp [show (10616832 * k + 6111448) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 3055724) = 2654208 * k + 1527862 := by
    unfold C
    simp [show (5308416 * k + 3055724) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1527862) = 1327104 * k + 763931 := by
    unfold C
    simp [show (2654208 * k + 1527862) % 2 = 0 by omega]
    omega
  have h11 : C (1327104 * k + 763931) = 3981312 * k + 2291794 := by
    unfold C
    simp [show (1327104 * k + 763931) % 2 ≠ 0 by omega]
    omega
  have h12 : C (3981312 * k + 2291794) = 1990656 * k + 1145897 := by
    unfold C
    simp [show (3981312 * k + 2291794) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 1145897) = 5971968 * k + 3437692 := by
    unfold C
    simp [show (1990656 * k + 1145897) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 3437692) = 2985984 * k + 1718846 := by
    unfold C
    simp [show (5971968 * k + 3437692) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1718846) = 1492992 * k + 859423 := by
    unfold C
    simp [show (2985984 * k + 1718846) % 2 = 0 by omega]
    omega
  have h16 : C (1492992 * k + 859423) = 4478976 * k + 2578270 := by
    unfold C
    simp [show (1492992 * k + 859423) % 2 ≠ 0 by omega]
    omega
  have h17 : C (4478976 * k + 2578270) = 2239488 * k + 1289135 := by
    unfold C
    simp [show (4478976 * k + 2578270) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 1289135) = 6718464 * k + 3867406 := by
    unfold C
    simp [show (2239488 * k + 1289135) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 3867406) = 3359232 * k + 1933703 := by
    unfold C
    simp [show (6718464 * k + 3867406) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 1933703) = 10077696 * k + 5801110 := by
    unfold C
    simp [show (3359232 * k + 1933703) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 5801110) = 5038848 * k + 2900555 := by
    unfold C
    simp [show (10077696 * k + 5801110) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 2900555) = 15116544 * k + 8701666 := by
    unfold C
    simp [show (5038848 * k + 2900555) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 8701666) = 7558272 * k + 4350833 := by
    unfold C
    simp [show (15116544 * k + 8701666) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 4350833) = 22674816 * k + 13052500 := by
    unfold C
    simp [show (7558272 * k + 4350833) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 13052500) = 11337408 * k + 6526250 := by
    unfold C
    simp [show (22674816 * k + 13052500) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 6526250) = 5668704 * k + 3263125 := by
    unfold C
    simp [show (11337408 * k + 6526250) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 3263125) = 17006112 * k + 9789376 := by
    unfold C
    simp [show (5668704 * k + 3263125) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 9789376) = 8503056 * k + 4894688 := by
    unfold C
    simp [show (17006112 * k + 9789376) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 4894688) = 4251528 * k + 2447344 := by
    unfold C
    simp [show (8503056 * k + 4894688) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 2447344) = 2125764 * k + 1223672 := by
    unfold C
    simp [show (4251528 * k + 2447344) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1223672) = 1062882 * k + 611836 := by
    unfold C
    simp [show (2125764 * k + 1223672) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 611836) = 531441 * k + 305918 := by
    unfold C
    simp [show (1062882 * k + 611836) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 603599) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 603599)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_603615 : ∀ k : Nat,
    iterate (1048576 * k + 603615) 32 = 531441 * k + 305926 ∧
      531441 * k + 305926 < 1048576 * k + 603615 := by
  intro k
  have h1 : C (1048576 * k + 603615) = 3145728 * k + 1810846 := by
    unfold C
    simp [show (1048576 * k + 603615) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1810846) = 1572864 * k + 905423 := by
    unfold C
    simp [show (3145728 * k + 1810846) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 905423) = 4718592 * k + 2716270 := by
    unfold C
    simp [show (1572864 * k + 905423) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2716270) = 2359296 * k + 1358135 := by
    unfold C
    simp [show (4718592 * k + 2716270) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1358135) = 7077888 * k + 4074406 := by
    unfold C
    simp [show (2359296 * k + 1358135) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 4074406) = 3538944 * k + 2037203 := by
    unfold C
    simp [show (7077888 * k + 4074406) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2037203) = 10616832 * k + 6111610 := by
    unfold C
    simp [show (3538944 * k + 2037203) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 6111610) = 5308416 * k + 3055805 := by
    unfold C
    simp [show (10616832 * k + 6111610) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 3055805) = 15925248 * k + 9167416 := by
    unfold C
    simp [show (5308416 * k + 3055805) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 9167416) = 7962624 * k + 4583708 := by
    unfold C
    simp [show (15925248 * k + 9167416) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 4583708) = 3981312 * k + 2291854 := by
    unfold C
    simp [show (7962624 * k + 4583708) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 2291854) = 1990656 * k + 1145927 := by
    unfold C
    simp [show (3981312 * k + 2291854) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 1145927) = 5971968 * k + 3437782 := by
    unfold C
    simp [show (1990656 * k + 1145927) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 3437782) = 2985984 * k + 1718891 := by
    unfold C
    simp [show (5971968 * k + 3437782) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1718891) = 8957952 * k + 5156674 := by
    unfold C
    simp [show (2985984 * k + 1718891) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 5156674) = 4478976 * k + 2578337 := by
    unfold C
    simp [show (8957952 * k + 5156674) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 2578337) = 13436928 * k + 7735012 := by
    unfold C
    simp [show (4478976 * k + 2578337) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 7735012) = 6718464 * k + 3867506 := by
    unfold C
    simp [show (13436928 * k + 7735012) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 3867506) = 3359232 * k + 1933753 := by
    unfold C
    simp [show (6718464 * k + 3867506) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 1933753) = 10077696 * k + 5801260 := by
    unfold C
    simp [show (3359232 * k + 1933753) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 5801260) = 5038848 * k + 2900630 := by
    unfold C
    simp [show (10077696 * k + 5801260) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 2900630) = 2519424 * k + 1450315 := by
    unfold C
    simp [show (5038848 * k + 2900630) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1450315) = 7558272 * k + 4350946 := by
    unfold C
    simp [show (2519424 * k + 1450315) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 4350946) = 3779136 * k + 2175473 := by
    unfold C
    simp [show (7558272 * k + 4350946) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 2175473) = 11337408 * k + 6526420 := by
    unfold C
    simp [show (3779136 * k + 2175473) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 6526420) = 5668704 * k + 3263210 := by
    unfold C
    simp [show (11337408 * k + 6526420) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 3263210) = 2834352 * k + 1631605 := by
    unfold C
    simp [show (5668704 * k + 3263210) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1631605) = 8503056 * k + 4894816 := by
    unfold C
    simp [show (2834352 * k + 1631605) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 4894816) = 4251528 * k + 2447408 := by
    unfold C
    simp [show (8503056 * k + 4894816) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 2447408) = 2125764 * k + 1223704 := by
    unfold C
    simp [show (4251528 * k + 2447408) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1223704) = 1062882 * k + 611852 := by
    unfold C
    simp [show (2125764 * k + 1223704) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 611852) = 531441 * k + 305926 := by
    unfold C
    simp [show (1062882 * k + 611852) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 603615) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 603615)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

end CollatzM20Shard077
