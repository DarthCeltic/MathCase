import Mathlib.Data.Nat.Prime.Basic

namespace CollatzM20Shard118

def C (n : Nat) : Nat := if n % 2 = 0 then n / 2 else 3 * n + 1

def iterate (n t : Nat) : Nat := Nat.rec n (fun _ previous => C previous) t

theorem descent_mod1048576_920687 : ∀ k : Nat,
    iterate (1048576 * k + 920687) 32 = 531441 * k + 466625 ∧
      531441 * k + 466625 < 1048576 * k + 920687 := by
  intro k
  have h1 : C (1048576 * k + 920687) = 3145728 * k + 2762062 := by
    unfold C
    simp [show (1048576 * k + 920687) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2762062) = 1572864 * k + 1381031 := by
    unfold C
    simp [show (3145728 * k + 2762062) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1381031) = 4718592 * k + 4143094 := by
    unfold C
    simp [show (1572864 * k + 1381031) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 4143094) = 2359296 * k + 2071547 := by
    unfold C
    simp [show (4718592 * k + 4143094) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 2071547) = 7077888 * k + 6214642 := by
    unfold C
    simp [show (2359296 * k + 2071547) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 6214642) = 3538944 * k + 3107321 := by
    unfold C
    simp [show (7077888 * k + 6214642) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 3107321) = 10616832 * k + 9321964 := by
    unfold C
    simp [show (3538944 * k + 3107321) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 9321964) = 5308416 * k + 4660982 := by
    unfold C
    simp [show (10616832 * k + 9321964) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 4660982) = 2654208 * k + 2330491 := by
    unfold C
    simp [show (5308416 * k + 4660982) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 2330491) = 7962624 * k + 6991474 := by
    unfold C
    simp [show (2654208 * k + 2330491) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 6991474) = 3981312 * k + 3495737 := by
    unfold C
    simp [show (7962624 * k + 6991474) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 3495737) = 11943936 * k + 10487212 := by
    unfold C
    simp [show (3981312 * k + 3495737) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 10487212) = 5971968 * k + 5243606 := by
    unfold C
    simp [show (11943936 * k + 10487212) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 5243606) = 2985984 * k + 2621803 := by
    unfold C
    simp [show (5971968 * k + 5243606) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 2621803) = 8957952 * k + 7865410 := by
    unfold C
    simp [show (2985984 * k + 2621803) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 7865410) = 4478976 * k + 3932705 := by
    unfold C
    simp [show (8957952 * k + 7865410) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 3932705) = 13436928 * k + 11798116 := by
    unfold C
    simp [show (4478976 * k + 3932705) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 11798116) = 6718464 * k + 5899058 := by
    unfold C
    simp [show (13436928 * k + 11798116) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 5899058) = 3359232 * k + 2949529 := by
    unfold C
    simp [show (6718464 * k + 5899058) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 2949529) = 10077696 * k + 8848588 := by
    unfold C
    simp [show (3359232 * k + 2949529) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 8848588) = 5038848 * k + 4424294 := by
    unfold C
    simp [show (10077696 * k + 8848588) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 4424294) = 2519424 * k + 2212147 := by
    unfold C
    simp [show (5038848 * k + 4424294) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 2212147) = 7558272 * k + 6636442 := by
    unfold C
    simp [show (2519424 * k + 2212147) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 6636442) = 3779136 * k + 3318221 := by
    unfold C
    simp [show (7558272 * k + 6636442) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 3318221) = 11337408 * k + 9954664 := by
    unfold C
    simp [show (3779136 * k + 3318221) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 9954664) = 5668704 * k + 4977332 := by
    unfold C
    simp [show (11337408 * k + 9954664) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 4977332) = 2834352 * k + 2488666 := by
    unfold C
    simp [show (5668704 * k + 4977332) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2488666) = 1417176 * k + 1244333 := by
    unfold C
    simp [show (2834352 * k + 2488666) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 1244333) = 4251528 * k + 3733000 := by
    unfold C
    simp [show (1417176 * k + 1244333) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 3733000) = 2125764 * k + 1866500 := by
    unfold C
    simp [show (4251528 * k + 3733000) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1866500) = 1062882 * k + 933250 := by
    unfold C
    simp [show (2125764 * k + 1866500) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 933250) = 531441 * k + 466625 := by
    unfold C
    simp [show (1062882 * k + 933250) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 920687) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 920687)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_920735 : ∀ k : Nat,
    iterate (1048576 * k + 920735) 32 = 531441 * k + 466649 ∧
      531441 * k + 466649 < 1048576 * k + 920735 := by
  intro k
  have h1 : C (1048576 * k + 920735) = 3145728 * k + 2762206 := by
    unfold C
    simp [show (1048576 * k + 920735) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2762206) = 1572864 * k + 1381103 := by
    unfold C
    simp [show (3145728 * k + 2762206) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1381103) = 4718592 * k + 4143310 := by
    unfold C
    simp [show (1572864 * k + 1381103) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 4143310) = 2359296 * k + 2071655 := by
    unfold C
    simp [show (4718592 * k + 4143310) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 2071655) = 7077888 * k + 6214966 := by
    unfold C
    simp [show (2359296 * k + 2071655) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 6214966) = 3538944 * k + 3107483 := by
    unfold C
    simp [show (7077888 * k + 6214966) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 3107483) = 10616832 * k + 9322450 := by
    unfold C
    simp [show (3538944 * k + 3107483) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 9322450) = 5308416 * k + 4661225 := by
    unfold C
    simp [show (10616832 * k + 9322450) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 4661225) = 15925248 * k + 13983676 := by
    unfold C
    simp [show (5308416 * k + 4661225) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 13983676) = 7962624 * k + 6991838 := by
    unfold C
    simp [show (15925248 * k + 13983676) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 6991838) = 3981312 * k + 3495919 := by
    unfold C
    simp [show (7962624 * k + 6991838) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 3495919) = 11943936 * k + 10487758 := by
    unfold C
    simp [show (3981312 * k + 3495919) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 10487758) = 5971968 * k + 5243879 := by
    unfold C
    simp [show (11943936 * k + 10487758) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 5243879) = 17915904 * k + 15731638 := by
    unfold C
    simp [show (5971968 * k + 5243879) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 15731638) = 8957952 * k + 7865819 := by
    unfold C
    simp [show (17915904 * k + 15731638) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 7865819) = 26873856 * k + 23597458 := by
    unfold C
    simp [show (8957952 * k + 7865819) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 23597458) = 13436928 * k + 11798729 := by
    unfold C
    simp [show (26873856 * k + 23597458) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 11798729) = 40310784 * k + 35396188 := by
    unfold C
    simp [show (13436928 * k + 11798729) % 2 ≠ 0 by omega]
    omega
  have h19 : C (40310784 * k + 35396188) = 20155392 * k + 17698094 := by
    unfold C
    simp [show (40310784 * k + 35396188) % 2 = 0 by omega]
    omega
  have h20 : C (20155392 * k + 17698094) = 10077696 * k + 8849047 := by
    unfold C
    simp [show (20155392 * k + 17698094) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 8849047) = 30233088 * k + 26547142 := by
    unfold C
    simp [show (10077696 * k + 8849047) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 26547142) = 15116544 * k + 13273571 := by
    unfold C
    simp [show (30233088 * k + 26547142) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 13273571) = 45349632 * k + 39820714 := by
    unfold C
    simp [show (15116544 * k + 13273571) % 2 ≠ 0 by omega]
    omega
  have h24 : C (45349632 * k + 39820714) = 22674816 * k + 19910357 := by
    unfold C
    simp [show (45349632 * k + 39820714) % 2 = 0 by omega]
    omega
  have h25 : C (22674816 * k + 19910357) = 68024448 * k + 59731072 := by
    unfold C
    simp [show (22674816 * k + 19910357) % 2 ≠ 0 by omega]
    omega
  have h26 : C (68024448 * k + 59731072) = 34012224 * k + 29865536 := by
    unfold C
    simp [show (68024448 * k + 59731072) % 2 = 0 by omega]
    omega
  have h27 : C (34012224 * k + 29865536) = 17006112 * k + 14932768 := by
    unfold C
    simp [show (34012224 * k + 29865536) % 2 = 0 by omega]
    omega
  have h28 : C (17006112 * k + 14932768) = 8503056 * k + 7466384 := by
    unfold C
    simp [show (17006112 * k + 14932768) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 7466384) = 4251528 * k + 3733192 := by
    unfold C
    simp [show (8503056 * k + 7466384) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 3733192) = 2125764 * k + 1866596 := by
    unfold C
    simp [show (4251528 * k + 3733192) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1866596) = 1062882 * k + 933298 := by
    unfold C
    simp [show (2125764 * k + 1866596) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 933298) = 531441 * k + 466649 := by
    unfold C
    simp [show (1062882 * k + 933298) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 920735) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 920735)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_921023 : ∀ k : Nat,
    iterate (1048576 * k + 921023) 32 = 531441 * k + 466795 ∧
      531441 * k + 466795 < 1048576 * k + 921023 := by
  intro k
  have h1 : C (1048576 * k + 921023) = 3145728 * k + 2763070 := by
    unfold C
    simp [show (1048576 * k + 921023) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2763070) = 1572864 * k + 1381535 := by
    unfold C
    simp [show (3145728 * k + 2763070) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1381535) = 4718592 * k + 4144606 := by
    unfold C
    simp [show (1572864 * k + 1381535) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 4144606) = 2359296 * k + 2072303 := by
    unfold C
    simp [show (4718592 * k + 4144606) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 2072303) = 7077888 * k + 6216910 := by
    unfold C
    simp [show (2359296 * k + 2072303) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 6216910) = 3538944 * k + 3108455 := by
    unfold C
    simp [show (7077888 * k + 6216910) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 3108455) = 10616832 * k + 9325366 := by
    unfold C
    simp [show (3538944 * k + 3108455) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 9325366) = 5308416 * k + 4662683 := by
    unfold C
    simp [show (10616832 * k + 9325366) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 4662683) = 15925248 * k + 13988050 := by
    unfold C
    simp [show (5308416 * k + 4662683) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 13988050) = 7962624 * k + 6994025 := by
    unfold C
    simp [show (15925248 * k + 13988050) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 6994025) = 23887872 * k + 20982076 := by
    unfold C
    simp [show (7962624 * k + 6994025) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 20982076) = 11943936 * k + 10491038 := by
    unfold C
    simp [show (23887872 * k + 20982076) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 10491038) = 5971968 * k + 5245519 := by
    unfold C
    simp [show (11943936 * k + 10491038) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 5245519) = 17915904 * k + 15736558 := by
    unfold C
    simp [show (5971968 * k + 5245519) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 15736558) = 8957952 * k + 7868279 := by
    unfold C
    simp [show (17915904 * k + 15736558) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 7868279) = 26873856 * k + 23604838 := by
    unfold C
    simp [show (8957952 * k + 7868279) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 23604838) = 13436928 * k + 11802419 := by
    unfold C
    simp [show (26873856 * k + 23604838) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 11802419) = 40310784 * k + 35407258 := by
    unfold C
    simp [show (13436928 * k + 11802419) % 2 ≠ 0 by omega]
    omega
  have h19 : C (40310784 * k + 35407258) = 20155392 * k + 17703629 := by
    unfold C
    simp [show (40310784 * k + 35407258) % 2 = 0 by omega]
    omega
  have h20 : C (20155392 * k + 17703629) = 60466176 * k + 53110888 := by
    unfold C
    simp [show (20155392 * k + 17703629) % 2 ≠ 0 by omega]
    omega
  have h21 : C (60466176 * k + 53110888) = 30233088 * k + 26555444 := by
    unfold C
    simp [show (60466176 * k + 53110888) % 2 = 0 by omega]
    omega
  have h22 : C (30233088 * k + 26555444) = 15116544 * k + 13277722 := by
    unfold C
    simp [show (30233088 * k + 26555444) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 13277722) = 7558272 * k + 6638861 := by
    unfold C
    simp [show (15116544 * k + 13277722) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 6638861) = 22674816 * k + 19916584 := by
    unfold C
    simp [show (7558272 * k + 6638861) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 19916584) = 11337408 * k + 9958292 := by
    unfold C
    simp [show (22674816 * k + 19916584) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 9958292) = 5668704 * k + 4979146 := by
    unfold C
    simp [show (11337408 * k + 9958292) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 4979146) = 2834352 * k + 2489573 := by
    unfold C
    simp [show (5668704 * k + 4979146) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2489573) = 8503056 * k + 7468720 := by
    unfold C
    simp [show (2834352 * k + 2489573) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 7468720) = 4251528 * k + 3734360 := by
    unfold C
    simp [show (8503056 * k + 7468720) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 3734360) = 2125764 * k + 1867180 := by
    unfold C
    simp [show (4251528 * k + 3734360) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1867180) = 1062882 * k + 933590 := by
    unfold C
    simp [show (2125764 * k + 1867180) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 933590) = 531441 * k + 466795 := by
    unfold C
    simp [show (1062882 * k + 933590) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 921023) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 921023)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_921119 : ∀ k : Nat,
    iterate (1048576 * k + 921119) 32 = 531441 * k + 466844 ∧
      531441 * k + 466844 < 1048576 * k + 921119 := by
  intro k
  have h1 : C (1048576 * k + 921119) = 3145728 * k + 2763358 := by
    unfold C
    simp [show (1048576 * k + 921119) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2763358) = 1572864 * k + 1381679 := by
    unfold C
    simp [show (3145728 * k + 2763358) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1381679) = 4718592 * k + 4145038 := by
    unfold C
    simp [show (1572864 * k + 1381679) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 4145038) = 2359296 * k + 2072519 := by
    unfold C
    simp [show (4718592 * k + 4145038) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 2072519) = 7077888 * k + 6217558 := by
    unfold C
    simp [show (2359296 * k + 2072519) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 6217558) = 3538944 * k + 3108779 := by
    unfold C
    simp [show (7077888 * k + 6217558) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 3108779) = 10616832 * k + 9326338 := by
    unfold C
    simp [show (3538944 * k + 3108779) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 9326338) = 5308416 * k + 4663169 := by
    unfold C
    simp [show (10616832 * k + 9326338) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 4663169) = 15925248 * k + 13989508 := by
    unfold C
    simp [show (5308416 * k + 4663169) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 13989508) = 7962624 * k + 6994754 := by
    unfold C
    simp [show (15925248 * k + 13989508) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 6994754) = 3981312 * k + 3497377 := by
    unfold C
    simp [show (7962624 * k + 6994754) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 3497377) = 11943936 * k + 10492132 := by
    unfold C
    simp [show (3981312 * k + 3497377) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 10492132) = 5971968 * k + 5246066 := by
    unfold C
    simp [show (11943936 * k + 10492132) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 5246066) = 2985984 * k + 2623033 := by
    unfold C
    simp [show (5971968 * k + 5246066) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 2623033) = 8957952 * k + 7869100 := by
    unfold C
    simp [show (2985984 * k + 2623033) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 7869100) = 4478976 * k + 3934550 := by
    unfold C
    simp [show (8957952 * k + 7869100) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 3934550) = 2239488 * k + 1967275 := by
    unfold C
    simp [show (4478976 * k + 3934550) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 1967275) = 6718464 * k + 5901826 := by
    unfold C
    simp [show (2239488 * k + 1967275) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 5901826) = 3359232 * k + 2950913 := by
    unfold C
    simp [show (6718464 * k + 5901826) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 2950913) = 10077696 * k + 8852740 := by
    unfold C
    simp [show (3359232 * k + 2950913) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 8852740) = 5038848 * k + 4426370 := by
    unfold C
    simp [show (10077696 * k + 8852740) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 4426370) = 2519424 * k + 2213185 := by
    unfold C
    simp [show (5038848 * k + 4426370) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 2213185) = 7558272 * k + 6639556 := by
    unfold C
    simp [show (2519424 * k + 2213185) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 6639556) = 3779136 * k + 3319778 := by
    unfold C
    simp [show (7558272 * k + 6639556) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 3319778) = 1889568 * k + 1659889 := by
    unfold C
    simp [show (3779136 * k + 3319778) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1659889) = 5668704 * k + 4979668 := by
    unfold C
    simp [show (1889568 * k + 1659889) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 4979668) = 2834352 * k + 2489834 := by
    unfold C
    simp [show (5668704 * k + 4979668) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2489834) = 1417176 * k + 1244917 := by
    unfold C
    simp [show (2834352 * k + 2489834) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 1244917) = 4251528 * k + 3734752 := by
    unfold C
    simp [show (1417176 * k + 1244917) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 3734752) = 2125764 * k + 1867376 := by
    unfold C
    simp [show (4251528 * k + 3734752) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1867376) = 1062882 * k + 933688 := by
    unfold C
    simp [show (2125764 * k + 1867376) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 933688) = 531441 * k + 466844 := by
    unfold C
    simp [show (1062882 * k + 933688) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 921119) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 921119)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_921279 : ∀ k : Nat,
    iterate (1048576 * k + 921279) 32 = 531441 * k + 466925 ∧
      531441 * k + 466925 < 1048576 * k + 921279 := by
  intro k
  have h1 : C (1048576 * k + 921279) = 3145728 * k + 2763838 := by
    unfold C
    simp [show (1048576 * k + 921279) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2763838) = 1572864 * k + 1381919 := by
    unfold C
    simp [show (3145728 * k + 2763838) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1381919) = 4718592 * k + 4145758 := by
    unfold C
    simp [show (1572864 * k + 1381919) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 4145758) = 2359296 * k + 2072879 := by
    unfold C
    simp [show (4718592 * k + 4145758) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 2072879) = 7077888 * k + 6218638 := by
    unfold C
    simp [show (2359296 * k + 2072879) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 6218638) = 3538944 * k + 3109319 := by
    unfold C
    simp [show (7077888 * k + 6218638) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 3109319) = 10616832 * k + 9327958 := by
    unfold C
    simp [show (3538944 * k + 3109319) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 9327958) = 5308416 * k + 4663979 := by
    unfold C
    simp [show (10616832 * k + 9327958) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 4663979) = 15925248 * k + 13991938 := by
    unfold C
    simp [show (5308416 * k + 4663979) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 13991938) = 7962624 * k + 6995969 := by
    unfold C
    simp [show (15925248 * k + 13991938) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 6995969) = 23887872 * k + 20987908 := by
    unfold C
    simp [show (7962624 * k + 6995969) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 20987908) = 11943936 * k + 10493954 := by
    unfold C
    simp [show (23887872 * k + 20987908) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 10493954) = 5971968 * k + 5246977 := by
    unfold C
    simp [show (11943936 * k + 10493954) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 5246977) = 17915904 * k + 15740932 := by
    unfold C
    simp [show (5971968 * k + 5246977) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 15740932) = 8957952 * k + 7870466 := by
    unfold C
    simp [show (17915904 * k + 15740932) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 7870466) = 4478976 * k + 3935233 := by
    unfold C
    simp [show (8957952 * k + 7870466) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 3935233) = 13436928 * k + 11805700 := by
    unfold C
    simp [show (4478976 * k + 3935233) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 11805700) = 6718464 * k + 5902850 := by
    unfold C
    simp [show (13436928 * k + 11805700) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 5902850) = 3359232 * k + 2951425 := by
    unfold C
    simp [show (6718464 * k + 5902850) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 2951425) = 10077696 * k + 8854276 := by
    unfold C
    simp [show (3359232 * k + 2951425) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 8854276) = 5038848 * k + 4427138 := by
    unfold C
    simp [show (10077696 * k + 8854276) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 4427138) = 2519424 * k + 2213569 := by
    unfold C
    simp [show (5038848 * k + 4427138) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 2213569) = 7558272 * k + 6640708 := by
    unfold C
    simp [show (2519424 * k + 2213569) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 6640708) = 3779136 * k + 3320354 := by
    unfold C
    simp [show (7558272 * k + 6640708) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 3320354) = 1889568 * k + 1660177 := by
    unfold C
    simp [show (3779136 * k + 3320354) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1660177) = 5668704 * k + 4980532 := by
    unfold C
    simp [show (1889568 * k + 1660177) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 4980532) = 2834352 * k + 2490266 := by
    unfold C
    simp [show (5668704 * k + 4980532) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2490266) = 1417176 * k + 1245133 := by
    unfold C
    simp [show (2834352 * k + 2490266) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 1245133) = 4251528 * k + 3735400 := by
    unfold C
    simp [show (1417176 * k + 1245133) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 3735400) = 2125764 * k + 1867700 := by
    unfold C
    simp [show (4251528 * k + 3735400) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1867700) = 1062882 * k + 933850 := by
    unfold C
    simp [show (2125764 * k + 1867700) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 933850) = 531441 * k + 466925 := by
    unfold C
    simp [show (1062882 * k + 933850) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 921279) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 921279)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_921759 : ∀ k : Nat,
    iterate (1048576 * k + 921759) 32 = 531441 * k + 467168 ∧
      531441 * k + 467168 < 1048576 * k + 921759 := by
  intro k
  have h1 : C (1048576 * k + 921759) = 3145728 * k + 2765278 := by
    unfold C
    simp [show (1048576 * k + 921759) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2765278) = 1572864 * k + 1382639 := by
    unfold C
    simp [show (3145728 * k + 2765278) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1382639) = 4718592 * k + 4147918 := by
    unfold C
    simp [show (1572864 * k + 1382639) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 4147918) = 2359296 * k + 2073959 := by
    unfold C
    simp [show (4718592 * k + 4147918) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 2073959) = 7077888 * k + 6221878 := by
    unfold C
    simp [show (2359296 * k + 2073959) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 6221878) = 3538944 * k + 3110939 := by
    unfold C
    simp [show (7077888 * k + 6221878) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 3110939) = 10616832 * k + 9332818 := by
    unfold C
    simp [show (3538944 * k + 3110939) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 9332818) = 5308416 * k + 4666409 := by
    unfold C
    simp [show (10616832 * k + 9332818) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 4666409) = 15925248 * k + 13999228 := by
    unfold C
    simp [show (5308416 * k + 4666409) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 13999228) = 7962624 * k + 6999614 := by
    unfold C
    simp [show (15925248 * k + 13999228) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 6999614) = 3981312 * k + 3499807 := by
    unfold C
    simp [show (7962624 * k + 6999614) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 3499807) = 11943936 * k + 10499422 := by
    unfold C
    simp [show (3981312 * k + 3499807) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 10499422) = 5971968 * k + 5249711 := by
    unfold C
    simp [show (11943936 * k + 10499422) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 5249711) = 17915904 * k + 15749134 := by
    unfold C
    simp [show (5971968 * k + 5249711) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 15749134) = 8957952 * k + 7874567 := by
    unfold C
    simp [show (17915904 * k + 15749134) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 7874567) = 26873856 * k + 23623702 := by
    unfold C
    simp [show (8957952 * k + 7874567) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 23623702) = 13436928 * k + 11811851 := by
    unfold C
    simp [show (26873856 * k + 23623702) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 11811851) = 40310784 * k + 35435554 := by
    unfold C
    simp [show (13436928 * k + 11811851) % 2 ≠ 0 by omega]
    omega
  have h19 : C (40310784 * k + 35435554) = 20155392 * k + 17717777 := by
    unfold C
    simp [show (40310784 * k + 35435554) % 2 = 0 by omega]
    omega
  have h20 : C (20155392 * k + 17717777) = 60466176 * k + 53153332 := by
    unfold C
    simp [show (20155392 * k + 17717777) % 2 ≠ 0 by omega]
    omega
  have h21 : C (60466176 * k + 53153332) = 30233088 * k + 26576666 := by
    unfold C
    simp [show (60466176 * k + 53153332) % 2 = 0 by omega]
    omega
  have h22 : C (30233088 * k + 26576666) = 15116544 * k + 13288333 := by
    unfold C
    simp [show (30233088 * k + 26576666) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 13288333) = 45349632 * k + 39865000 := by
    unfold C
    simp [show (15116544 * k + 13288333) % 2 ≠ 0 by omega]
    omega
  have h24 : C (45349632 * k + 39865000) = 22674816 * k + 19932500 := by
    unfold C
    simp [show (45349632 * k + 39865000) % 2 = 0 by omega]
    omega
  have h25 : C (22674816 * k + 19932500) = 11337408 * k + 9966250 := by
    unfold C
    simp [show (22674816 * k + 19932500) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 9966250) = 5668704 * k + 4983125 := by
    unfold C
    simp [show (11337408 * k + 9966250) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 4983125) = 17006112 * k + 14949376 := by
    unfold C
    simp [show (5668704 * k + 4983125) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 14949376) = 8503056 * k + 7474688 := by
    unfold C
    simp [show (17006112 * k + 14949376) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 7474688) = 4251528 * k + 3737344 := by
    unfold C
    simp [show (8503056 * k + 7474688) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 3737344) = 2125764 * k + 1868672 := by
    unfold C
    simp [show (4251528 * k + 3737344) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1868672) = 1062882 * k + 934336 := by
    unfold C
    simp [show (2125764 * k + 1868672) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 934336) = 531441 * k + 467168 := by
    unfold C
    simp [show (1062882 * k + 934336) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 921759) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 921759)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_921851 : ∀ k : Nat,
    iterate (1048576 * k + 921851) 32 = 531441 * k + 467215 ∧
      531441 * k + 467215 < 1048576 * k + 921851 := by
  intro k
  have h1 : C (1048576 * k + 921851) = 3145728 * k + 2765554 := by
    unfold C
    simp [show (1048576 * k + 921851) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2765554) = 1572864 * k + 1382777 := by
    unfold C
    simp [show (3145728 * k + 2765554) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1382777) = 4718592 * k + 4148332 := by
    unfold C
    simp [show (1572864 * k + 1382777) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 4148332) = 2359296 * k + 2074166 := by
    unfold C
    simp [show (4718592 * k + 4148332) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 2074166) = 1179648 * k + 1037083 := by
    unfold C
    simp [show (2359296 * k + 2074166) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 1037083) = 3538944 * k + 3111250 := by
    unfold C
    simp [show (1179648 * k + 1037083) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 3111250) = 1769472 * k + 1555625 := by
    unfold C
    simp [show (3538944 * k + 3111250) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1555625) = 5308416 * k + 4666876 := by
    unfold C
    simp [show (1769472 * k + 1555625) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 4666876) = 2654208 * k + 2333438 := by
    unfold C
    simp [show (5308416 * k + 4666876) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 2333438) = 1327104 * k + 1166719 := by
    unfold C
    simp [show (2654208 * k + 2333438) % 2 = 0 by omega]
    omega
  have h11 : C (1327104 * k + 1166719) = 3981312 * k + 3500158 := by
    unfold C
    simp [show (1327104 * k + 1166719) % 2 ≠ 0 by omega]
    omega
  have h12 : C (3981312 * k + 3500158) = 1990656 * k + 1750079 := by
    unfold C
    simp [show (3981312 * k + 3500158) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 1750079) = 5971968 * k + 5250238 := by
    unfold C
    simp [show (1990656 * k + 1750079) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 5250238) = 2985984 * k + 2625119 := by
    unfold C
    simp [show (5971968 * k + 5250238) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 2625119) = 8957952 * k + 7875358 := by
    unfold C
    simp [show (2985984 * k + 2625119) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 7875358) = 4478976 * k + 3937679 := by
    unfold C
    simp [show (8957952 * k + 7875358) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 3937679) = 13436928 * k + 11813038 := by
    unfold C
    simp [show (4478976 * k + 3937679) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 11813038) = 6718464 * k + 5906519 := by
    unfold C
    simp [show (13436928 * k + 11813038) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 5906519) = 20155392 * k + 17719558 := by
    unfold C
    simp [show (6718464 * k + 5906519) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 17719558) = 10077696 * k + 8859779 := by
    unfold C
    simp [show (20155392 * k + 17719558) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 8859779) = 30233088 * k + 26579338 := by
    unfold C
    simp [show (10077696 * k + 8859779) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 26579338) = 15116544 * k + 13289669 := by
    unfold C
    simp [show (30233088 * k + 26579338) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 13289669) = 45349632 * k + 39869008 := by
    unfold C
    simp [show (15116544 * k + 13289669) % 2 ≠ 0 by omega]
    omega
  have h24 : C (45349632 * k + 39869008) = 22674816 * k + 19934504 := by
    unfold C
    simp [show (45349632 * k + 39869008) % 2 = 0 by omega]
    omega
  have h25 : C (22674816 * k + 19934504) = 11337408 * k + 9967252 := by
    unfold C
    simp [show (22674816 * k + 19934504) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 9967252) = 5668704 * k + 4983626 := by
    unfold C
    simp [show (11337408 * k + 9967252) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 4983626) = 2834352 * k + 2491813 := by
    unfold C
    simp [show (5668704 * k + 4983626) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2491813) = 8503056 * k + 7475440 := by
    unfold C
    simp [show (2834352 * k + 2491813) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 7475440) = 4251528 * k + 3737720 := by
    unfold C
    simp [show (8503056 * k + 7475440) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 3737720) = 2125764 * k + 1868860 := by
    unfold C
    simp [show (4251528 * k + 3737720) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1868860) = 1062882 * k + 934430 := by
    unfold C
    simp [show (2125764 * k + 1868860) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 934430) = 531441 * k + 467215 := by
    unfold C
    simp [show (1062882 * k + 934430) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 921851) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 921851)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_922439 : ∀ k : Nat,
    iterate (1048576 * k + 922439) 32 = 531441 * k + 467513 ∧
      531441 * k + 467513 < 1048576 * k + 922439 := by
  intro k
  have h1 : C (1048576 * k + 922439) = 3145728 * k + 2767318 := by
    unfold C
    simp [show (1048576 * k + 922439) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2767318) = 1572864 * k + 1383659 := by
    unfold C
    simp [show (3145728 * k + 2767318) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1383659) = 4718592 * k + 4150978 := by
    unfold C
    simp [show (1572864 * k + 1383659) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 4150978) = 2359296 * k + 2075489 := by
    unfold C
    simp [show (4718592 * k + 4150978) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 2075489) = 7077888 * k + 6226468 := by
    unfold C
    simp [show (2359296 * k + 2075489) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 6226468) = 3538944 * k + 3113234 := by
    unfold C
    simp [show (7077888 * k + 6226468) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 3113234) = 1769472 * k + 1556617 := by
    unfold C
    simp [show (3538944 * k + 3113234) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1556617) = 5308416 * k + 4669852 := by
    unfold C
    simp [show (1769472 * k + 1556617) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 4669852) = 2654208 * k + 2334926 := by
    unfold C
    simp [show (5308416 * k + 4669852) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 2334926) = 1327104 * k + 1167463 := by
    unfold C
    simp [show (2654208 * k + 2334926) % 2 = 0 by omega]
    omega
  have h11 : C (1327104 * k + 1167463) = 3981312 * k + 3502390 := by
    unfold C
    simp [show (1327104 * k + 1167463) % 2 ≠ 0 by omega]
    omega
  have h12 : C (3981312 * k + 3502390) = 1990656 * k + 1751195 := by
    unfold C
    simp [show (3981312 * k + 3502390) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 1751195) = 5971968 * k + 5253586 := by
    unfold C
    simp [show (1990656 * k + 1751195) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 5253586) = 2985984 * k + 2626793 := by
    unfold C
    simp [show (5971968 * k + 5253586) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 2626793) = 8957952 * k + 7880380 := by
    unfold C
    simp [show (2985984 * k + 2626793) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 7880380) = 4478976 * k + 3940190 := by
    unfold C
    simp [show (8957952 * k + 7880380) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 3940190) = 2239488 * k + 1970095 := by
    unfold C
    simp [show (4478976 * k + 3940190) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 1970095) = 6718464 * k + 5910286 := by
    unfold C
    simp [show (2239488 * k + 1970095) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 5910286) = 3359232 * k + 2955143 := by
    unfold C
    simp [show (6718464 * k + 5910286) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 2955143) = 10077696 * k + 8865430 := by
    unfold C
    simp [show (3359232 * k + 2955143) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 8865430) = 5038848 * k + 4432715 := by
    unfold C
    simp [show (10077696 * k + 8865430) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 4432715) = 15116544 * k + 13298146 := by
    unfold C
    simp [show (5038848 * k + 4432715) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 13298146) = 7558272 * k + 6649073 := by
    unfold C
    simp [show (15116544 * k + 13298146) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 6649073) = 22674816 * k + 19947220 := by
    unfold C
    simp [show (7558272 * k + 6649073) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 19947220) = 11337408 * k + 9973610 := by
    unfold C
    simp [show (22674816 * k + 19947220) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 9973610) = 5668704 * k + 4986805 := by
    unfold C
    simp [show (11337408 * k + 9973610) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 4986805) = 17006112 * k + 14960416 := by
    unfold C
    simp [show (5668704 * k + 4986805) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 14960416) = 8503056 * k + 7480208 := by
    unfold C
    simp [show (17006112 * k + 14960416) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 7480208) = 4251528 * k + 3740104 := by
    unfold C
    simp [show (8503056 * k + 7480208) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 3740104) = 2125764 * k + 1870052 := by
    unfold C
    simp [show (4251528 * k + 3740104) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1870052) = 1062882 * k + 935026 := by
    unfold C
    simp [show (2125764 * k + 1870052) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 935026) = 531441 * k + 467513 := by
    unfold C
    simp [show (1062882 * k + 935026) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 922439) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 922439)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_923775 : ∀ k : Nat,
    iterate (1048576 * k + 923775) 32 = 531441 * k + 468190 ∧
      531441 * k + 468190 < 1048576 * k + 923775 := by
  intro k
  have h1 : C (1048576 * k + 923775) = 3145728 * k + 2771326 := by
    unfold C
    simp [show (1048576 * k + 923775) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2771326) = 1572864 * k + 1385663 := by
    unfold C
    simp [show (3145728 * k + 2771326) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1385663) = 4718592 * k + 4156990 := by
    unfold C
    simp [show (1572864 * k + 1385663) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 4156990) = 2359296 * k + 2078495 := by
    unfold C
    simp [show (4718592 * k + 4156990) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 2078495) = 7077888 * k + 6235486 := by
    unfold C
    simp [show (2359296 * k + 2078495) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 6235486) = 3538944 * k + 3117743 := by
    unfold C
    simp [show (7077888 * k + 6235486) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 3117743) = 10616832 * k + 9353230 := by
    unfold C
    simp [show (3538944 * k + 3117743) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 9353230) = 5308416 * k + 4676615 := by
    unfold C
    simp [show (10616832 * k + 9353230) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 4676615) = 15925248 * k + 14029846 := by
    unfold C
    simp [show (5308416 * k + 4676615) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 14029846) = 7962624 * k + 7014923 := by
    unfold C
    simp [show (15925248 * k + 14029846) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 7014923) = 23887872 * k + 21044770 := by
    unfold C
    simp [show (7962624 * k + 7014923) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 21044770) = 11943936 * k + 10522385 := by
    unfold C
    simp [show (23887872 * k + 21044770) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 10522385) = 35831808 * k + 31567156 := by
    unfold C
    simp [show (11943936 * k + 10522385) % 2 ≠ 0 by omega]
    omega
  have h14 : C (35831808 * k + 31567156) = 17915904 * k + 15783578 := by
    unfold C
    simp [show (35831808 * k + 31567156) % 2 = 0 by omega]
    omega
  have h15 : C (17915904 * k + 15783578) = 8957952 * k + 7891789 := by
    unfold C
    simp [show (17915904 * k + 15783578) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 7891789) = 26873856 * k + 23675368 := by
    unfold C
    simp [show (8957952 * k + 7891789) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 23675368) = 13436928 * k + 11837684 := by
    unfold C
    simp [show (26873856 * k + 23675368) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 11837684) = 6718464 * k + 5918842 := by
    unfold C
    simp [show (13436928 * k + 11837684) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 5918842) = 3359232 * k + 2959421 := by
    unfold C
    simp [show (6718464 * k + 5918842) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 2959421) = 10077696 * k + 8878264 := by
    unfold C
    simp [show (3359232 * k + 2959421) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 8878264) = 5038848 * k + 4439132 := by
    unfold C
    simp [show (10077696 * k + 8878264) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 4439132) = 2519424 * k + 2219566 := by
    unfold C
    simp [show (5038848 * k + 4439132) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 2219566) = 1259712 * k + 1109783 := by
    unfold C
    simp [show (2519424 * k + 2219566) % 2 = 0 by omega]
    omega
  have h24 : C (1259712 * k + 1109783) = 3779136 * k + 3329350 := by
    unfold C
    simp [show (1259712 * k + 1109783) % 2 ≠ 0 by omega]
    omega
  have h25 : C (3779136 * k + 3329350) = 1889568 * k + 1664675 := by
    unfold C
    simp [show (3779136 * k + 3329350) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1664675) = 5668704 * k + 4994026 := by
    unfold C
    simp [show (1889568 * k + 1664675) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 4994026) = 2834352 * k + 2497013 := by
    unfold C
    simp [show (5668704 * k + 4994026) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2497013) = 8503056 * k + 7491040 := by
    unfold C
    simp [show (2834352 * k + 2497013) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 7491040) = 4251528 * k + 3745520 := by
    unfold C
    simp [show (8503056 * k + 7491040) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 3745520) = 2125764 * k + 1872760 := by
    unfold C
    simp [show (4251528 * k + 3745520) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1872760) = 1062882 * k + 936380 := by
    unfold C
    simp [show (2125764 * k + 1872760) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 936380) = 531441 * k + 468190 := by
    unfold C
    simp [show (1062882 * k + 936380) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 923775) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 923775)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_923871 : ∀ k : Nat,
    iterate (1048576 * k + 923871) 32 = 531441 * k + 468239 ∧
      531441 * k + 468239 < 1048576 * k + 923871 := by
  intro k
  have h1 : C (1048576 * k + 923871) = 3145728 * k + 2771614 := by
    unfold C
    simp [show (1048576 * k + 923871) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2771614) = 1572864 * k + 1385807 := by
    unfold C
    simp [show (3145728 * k + 2771614) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1385807) = 4718592 * k + 4157422 := by
    unfold C
    simp [show (1572864 * k + 1385807) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 4157422) = 2359296 * k + 2078711 := by
    unfold C
    simp [show (4718592 * k + 4157422) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 2078711) = 7077888 * k + 6236134 := by
    unfold C
    simp [show (2359296 * k + 2078711) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 6236134) = 3538944 * k + 3118067 := by
    unfold C
    simp [show (7077888 * k + 6236134) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 3118067) = 10616832 * k + 9354202 := by
    unfold C
    simp [show (3538944 * k + 3118067) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 9354202) = 5308416 * k + 4677101 := by
    unfold C
    simp [show (10616832 * k + 9354202) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 4677101) = 15925248 * k + 14031304 := by
    unfold C
    simp [show (5308416 * k + 4677101) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 14031304) = 7962624 * k + 7015652 := by
    unfold C
    simp [show (15925248 * k + 14031304) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 7015652) = 3981312 * k + 3507826 := by
    unfold C
    simp [show (7962624 * k + 7015652) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 3507826) = 1990656 * k + 1753913 := by
    unfold C
    simp [show (3981312 * k + 3507826) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 1753913) = 5971968 * k + 5261740 := by
    unfold C
    simp [show (1990656 * k + 1753913) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 5261740) = 2985984 * k + 2630870 := by
    unfold C
    simp [show (5971968 * k + 5261740) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 2630870) = 1492992 * k + 1315435 := by
    unfold C
    simp [show (2985984 * k + 2630870) % 2 = 0 by omega]
    omega
  have h16 : C (1492992 * k + 1315435) = 4478976 * k + 3946306 := by
    unfold C
    simp [show (1492992 * k + 1315435) % 2 ≠ 0 by omega]
    omega
  have h17 : C (4478976 * k + 3946306) = 2239488 * k + 1973153 := by
    unfold C
    simp [show (4478976 * k + 3946306) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 1973153) = 6718464 * k + 5919460 := by
    unfold C
    simp [show (2239488 * k + 1973153) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 5919460) = 3359232 * k + 2959730 := by
    unfold C
    simp [show (6718464 * k + 5919460) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 2959730) = 1679616 * k + 1479865 := by
    unfold C
    simp [show (3359232 * k + 2959730) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 1479865) = 5038848 * k + 4439596 := by
    unfold C
    simp [show (1679616 * k + 1479865) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 4439596) = 2519424 * k + 2219798 := by
    unfold C
    simp [show (5038848 * k + 4439596) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 2219798) = 1259712 * k + 1109899 := by
    unfold C
    simp [show (2519424 * k + 2219798) % 2 = 0 by omega]
    omega
  have h24 : C (1259712 * k + 1109899) = 3779136 * k + 3329698 := by
    unfold C
    simp [show (1259712 * k + 1109899) % 2 ≠ 0 by omega]
    omega
  have h25 : C (3779136 * k + 3329698) = 1889568 * k + 1664849 := by
    unfold C
    simp [show (3779136 * k + 3329698) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1664849) = 5668704 * k + 4994548 := by
    unfold C
    simp [show (1889568 * k + 1664849) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 4994548) = 2834352 * k + 2497274 := by
    unfold C
    simp [show (5668704 * k + 4994548) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2497274) = 1417176 * k + 1248637 := by
    unfold C
    simp [show (2834352 * k + 2497274) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 1248637) = 4251528 * k + 3745912 := by
    unfold C
    simp [show (1417176 * k + 1248637) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 3745912) = 2125764 * k + 1872956 := by
    unfold C
    simp [show (4251528 * k + 3745912) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1872956) = 1062882 * k + 936478 := by
    unfold C
    simp [show (2125764 * k + 1872956) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 936478) = 531441 * k + 468239 := by
    unfold C
    simp [show (1062882 * k + 936478) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 923871) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 923871)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_923899 : ∀ k : Nat,
    iterate (1048576 * k + 923899) 32 = 531441 * k + 468253 ∧
      531441 * k + 468253 < 1048576 * k + 923899 := by
  intro k
  have h1 : C (1048576 * k + 923899) = 3145728 * k + 2771698 := by
    unfold C
    simp [show (1048576 * k + 923899) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2771698) = 1572864 * k + 1385849 := by
    unfold C
    simp [show (3145728 * k + 2771698) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1385849) = 4718592 * k + 4157548 := by
    unfold C
    simp [show (1572864 * k + 1385849) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 4157548) = 2359296 * k + 2078774 := by
    unfold C
    simp [show (4718592 * k + 4157548) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 2078774) = 1179648 * k + 1039387 := by
    unfold C
    simp [show (2359296 * k + 2078774) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 1039387) = 3538944 * k + 3118162 := by
    unfold C
    simp [show (1179648 * k + 1039387) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 3118162) = 1769472 * k + 1559081 := by
    unfold C
    simp [show (3538944 * k + 3118162) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1559081) = 5308416 * k + 4677244 := by
    unfold C
    simp [show (1769472 * k + 1559081) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 4677244) = 2654208 * k + 2338622 := by
    unfold C
    simp [show (5308416 * k + 4677244) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 2338622) = 1327104 * k + 1169311 := by
    unfold C
    simp [show (2654208 * k + 2338622) % 2 = 0 by omega]
    omega
  have h11 : C (1327104 * k + 1169311) = 3981312 * k + 3507934 := by
    unfold C
    simp [show (1327104 * k + 1169311) % 2 ≠ 0 by omega]
    omega
  have h12 : C (3981312 * k + 3507934) = 1990656 * k + 1753967 := by
    unfold C
    simp [show (3981312 * k + 3507934) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 1753967) = 5971968 * k + 5261902 := by
    unfold C
    simp [show (1990656 * k + 1753967) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 5261902) = 2985984 * k + 2630951 := by
    unfold C
    simp [show (5971968 * k + 5261902) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 2630951) = 8957952 * k + 7892854 := by
    unfold C
    simp [show (2985984 * k + 2630951) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 7892854) = 4478976 * k + 3946427 := by
    unfold C
    simp [show (8957952 * k + 7892854) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 3946427) = 13436928 * k + 11839282 := by
    unfold C
    simp [show (4478976 * k + 3946427) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 11839282) = 6718464 * k + 5919641 := by
    unfold C
    simp [show (13436928 * k + 11839282) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 5919641) = 20155392 * k + 17758924 := by
    unfold C
    simp [show (6718464 * k + 5919641) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 17758924) = 10077696 * k + 8879462 := by
    unfold C
    simp [show (20155392 * k + 17758924) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 8879462) = 5038848 * k + 4439731 := by
    unfold C
    simp [show (10077696 * k + 8879462) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 4439731) = 15116544 * k + 13319194 := by
    unfold C
    simp [show (5038848 * k + 4439731) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 13319194) = 7558272 * k + 6659597 := by
    unfold C
    simp [show (15116544 * k + 13319194) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 6659597) = 22674816 * k + 19978792 := by
    unfold C
    simp [show (7558272 * k + 6659597) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 19978792) = 11337408 * k + 9989396 := by
    unfold C
    simp [show (22674816 * k + 19978792) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 9989396) = 5668704 * k + 4994698 := by
    unfold C
    simp [show (11337408 * k + 9989396) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 4994698) = 2834352 * k + 2497349 := by
    unfold C
    simp [show (5668704 * k + 4994698) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2497349) = 8503056 * k + 7492048 := by
    unfold C
    simp [show (2834352 * k + 2497349) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 7492048) = 4251528 * k + 3746024 := by
    unfold C
    simp [show (8503056 * k + 7492048) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 3746024) = 2125764 * k + 1873012 := by
    unfold C
    simp [show (4251528 * k + 3746024) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1873012) = 1062882 * k + 936506 := by
    unfold C
    simp [show (2125764 * k + 1873012) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 936506) = 531441 * k + 468253 := by
    unfold C
    simp [show (1062882 * k + 936506) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 923899) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 923899)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_924031 : ∀ k : Nat,
    iterate (1048576 * k + 924031) 32 = 531441 * k + 468320 ∧
      531441 * k + 468320 < 1048576 * k + 924031 := by
  intro k
  have h1 : C (1048576 * k + 924031) = 3145728 * k + 2772094 := by
    unfold C
    simp [show (1048576 * k + 924031) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2772094) = 1572864 * k + 1386047 := by
    unfold C
    simp [show (3145728 * k + 2772094) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1386047) = 4718592 * k + 4158142 := by
    unfold C
    simp [show (1572864 * k + 1386047) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 4158142) = 2359296 * k + 2079071 := by
    unfold C
    simp [show (4718592 * k + 4158142) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 2079071) = 7077888 * k + 6237214 := by
    unfold C
    simp [show (2359296 * k + 2079071) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 6237214) = 3538944 * k + 3118607 := by
    unfold C
    simp [show (7077888 * k + 6237214) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 3118607) = 10616832 * k + 9355822 := by
    unfold C
    simp [show (3538944 * k + 3118607) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 9355822) = 5308416 * k + 4677911 := by
    unfold C
    simp [show (10616832 * k + 9355822) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 4677911) = 15925248 * k + 14033734 := by
    unfold C
    simp [show (5308416 * k + 4677911) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 14033734) = 7962624 * k + 7016867 := by
    unfold C
    simp [show (15925248 * k + 14033734) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 7016867) = 23887872 * k + 21050602 := by
    unfold C
    simp [show (7962624 * k + 7016867) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 21050602) = 11943936 * k + 10525301 := by
    unfold C
    simp [show (23887872 * k + 21050602) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 10525301) = 35831808 * k + 31575904 := by
    unfold C
    simp [show (11943936 * k + 10525301) % 2 ≠ 0 by omega]
    omega
  have h14 : C (35831808 * k + 31575904) = 17915904 * k + 15787952 := by
    unfold C
    simp [show (35831808 * k + 31575904) % 2 = 0 by omega]
    omega
  have h15 : C (17915904 * k + 15787952) = 8957952 * k + 7893976 := by
    unfold C
    simp [show (17915904 * k + 15787952) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 7893976) = 4478976 * k + 3946988 := by
    unfold C
    simp [show (8957952 * k + 7893976) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 3946988) = 2239488 * k + 1973494 := by
    unfold C
    simp [show (4478976 * k + 3946988) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 1973494) = 1119744 * k + 986747 := by
    unfold C
    simp [show (2239488 * k + 1973494) % 2 = 0 by omega]
    omega
  have h19 : C (1119744 * k + 986747) = 3359232 * k + 2960242 := by
    unfold C
    simp [show (1119744 * k + 986747) % 2 ≠ 0 by omega]
    omega
  have h20 : C (3359232 * k + 2960242) = 1679616 * k + 1480121 := by
    unfold C
    simp [show (3359232 * k + 2960242) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 1480121) = 5038848 * k + 4440364 := by
    unfold C
    simp [show (1679616 * k + 1480121) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 4440364) = 2519424 * k + 2220182 := by
    unfold C
    simp [show (5038848 * k + 4440364) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 2220182) = 1259712 * k + 1110091 := by
    unfold C
    simp [show (2519424 * k + 2220182) % 2 = 0 by omega]
    omega
  have h24 : C (1259712 * k + 1110091) = 3779136 * k + 3330274 := by
    unfold C
    simp [show (1259712 * k + 1110091) % 2 ≠ 0 by omega]
    omega
  have h25 : C (3779136 * k + 3330274) = 1889568 * k + 1665137 := by
    unfold C
    simp [show (3779136 * k + 3330274) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1665137) = 5668704 * k + 4995412 := by
    unfold C
    simp [show (1889568 * k + 1665137) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 4995412) = 2834352 * k + 2497706 := by
    unfold C
    simp [show (5668704 * k + 4995412) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2497706) = 1417176 * k + 1248853 := by
    unfold C
    simp [show (2834352 * k + 2497706) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 1248853) = 4251528 * k + 3746560 := by
    unfold C
    simp [show (1417176 * k + 1248853) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 3746560) = 2125764 * k + 1873280 := by
    unfold C
    simp [show (4251528 * k + 3746560) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1873280) = 1062882 * k + 936640 := by
    unfold C
    simp [show (2125764 * k + 1873280) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 936640) = 531441 * k + 468320 := by
    unfold C
    simp [show (1062882 * k + 936640) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 924031) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 924031)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_924351 : ∀ k : Nat,
    iterate (1048576 * k + 924351) 32 = 531441 * k + 468482 ∧
      531441 * k + 468482 < 1048576 * k + 924351 := by
  intro k
  have h1 : C (1048576 * k + 924351) = 3145728 * k + 2773054 := by
    unfold C
    simp [show (1048576 * k + 924351) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2773054) = 1572864 * k + 1386527 := by
    unfold C
    simp [show (3145728 * k + 2773054) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1386527) = 4718592 * k + 4159582 := by
    unfold C
    simp [show (1572864 * k + 1386527) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 4159582) = 2359296 * k + 2079791 := by
    unfold C
    simp [show (4718592 * k + 4159582) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 2079791) = 7077888 * k + 6239374 := by
    unfold C
    simp [show (2359296 * k + 2079791) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 6239374) = 3538944 * k + 3119687 := by
    unfold C
    simp [show (7077888 * k + 6239374) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 3119687) = 10616832 * k + 9359062 := by
    unfold C
    simp [show (3538944 * k + 3119687) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 9359062) = 5308416 * k + 4679531 := by
    unfold C
    simp [show (10616832 * k + 9359062) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 4679531) = 15925248 * k + 14038594 := by
    unfold C
    simp [show (5308416 * k + 4679531) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 14038594) = 7962624 * k + 7019297 := by
    unfold C
    simp [show (15925248 * k + 14038594) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 7019297) = 23887872 * k + 21057892 := by
    unfold C
    simp [show (7962624 * k + 7019297) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 21057892) = 11943936 * k + 10528946 := by
    unfold C
    simp [show (23887872 * k + 21057892) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 10528946) = 5971968 * k + 5264473 := by
    unfold C
    simp [show (11943936 * k + 10528946) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 5264473) = 17915904 * k + 15793420 := by
    unfold C
    simp [show (5971968 * k + 5264473) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 15793420) = 8957952 * k + 7896710 := by
    unfold C
    simp [show (17915904 * k + 15793420) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 7896710) = 4478976 * k + 3948355 := by
    unfold C
    simp [show (8957952 * k + 7896710) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 3948355) = 13436928 * k + 11845066 := by
    unfold C
    simp [show (4478976 * k + 3948355) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 11845066) = 6718464 * k + 5922533 := by
    unfold C
    simp [show (13436928 * k + 11845066) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 5922533) = 20155392 * k + 17767600 := by
    unfold C
    simp [show (6718464 * k + 5922533) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 17767600) = 10077696 * k + 8883800 := by
    unfold C
    simp [show (20155392 * k + 17767600) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 8883800) = 5038848 * k + 4441900 := by
    unfold C
    simp [show (10077696 * k + 8883800) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 4441900) = 2519424 * k + 2220950 := by
    unfold C
    simp [show (5038848 * k + 4441900) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 2220950) = 1259712 * k + 1110475 := by
    unfold C
    simp [show (2519424 * k + 2220950) % 2 = 0 by omega]
    omega
  have h24 : C (1259712 * k + 1110475) = 3779136 * k + 3331426 := by
    unfold C
    simp [show (1259712 * k + 1110475) % 2 ≠ 0 by omega]
    omega
  have h25 : C (3779136 * k + 3331426) = 1889568 * k + 1665713 := by
    unfold C
    simp [show (3779136 * k + 3331426) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1665713) = 5668704 * k + 4997140 := by
    unfold C
    simp [show (1889568 * k + 1665713) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 4997140) = 2834352 * k + 2498570 := by
    unfold C
    simp [show (5668704 * k + 4997140) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2498570) = 1417176 * k + 1249285 := by
    unfold C
    simp [show (2834352 * k + 2498570) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 1249285) = 4251528 * k + 3747856 := by
    unfold C
    simp [show (1417176 * k + 1249285) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 3747856) = 2125764 * k + 1873928 := by
    unfold C
    simp [show (4251528 * k + 3747856) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1873928) = 1062882 * k + 936964 := by
    unfold C
    simp [show (2125764 * k + 1873928) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 936964) = 531441 * k + 468482 := by
    unfold C
    simp [show (1062882 * k + 936964) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 924351) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 924351)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_924639 : ∀ k : Nat,
    iterate (1048576 * k + 924639) 32 = 531441 * k + 468628 ∧
      531441 * k + 468628 < 1048576 * k + 924639 := by
  intro k
  have h1 : C (1048576 * k + 924639) = 3145728 * k + 2773918 := by
    unfold C
    simp [show (1048576 * k + 924639) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2773918) = 1572864 * k + 1386959 := by
    unfold C
    simp [show (3145728 * k + 2773918) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1386959) = 4718592 * k + 4160878 := by
    unfold C
    simp [show (1572864 * k + 1386959) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 4160878) = 2359296 * k + 2080439 := by
    unfold C
    simp [show (4718592 * k + 4160878) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 2080439) = 7077888 * k + 6241318 := by
    unfold C
    simp [show (2359296 * k + 2080439) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 6241318) = 3538944 * k + 3120659 := by
    unfold C
    simp [show (7077888 * k + 6241318) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 3120659) = 10616832 * k + 9361978 := by
    unfold C
    simp [show (3538944 * k + 3120659) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 9361978) = 5308416 * k + 4680989 := by
    unfold C
    simp [show (10616832 * k + 9361978) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 4680989) = 15925248 * k + 14042968 := by
    unfold C
    simp [show (5308416 * k + 4680989) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 14042968) = 7962624 * k + 7021484 := by
    unfold C
    simp [show (15925248 * k + 14042968) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 7021484) = 3981312 * k + 3510742 := by
    unfold C
    simp [show (7962624 * k + 7021484) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 3510742) = 1990656 * k + 1755371 := by
    unfold C
    simp [show (3981312 * k + 3510742) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 1755371) = 5971968 * k + 5266114 := by
    unfold C
    simp [show (1990656 * k + 1755371) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 5266114) = 2985984 * k + 2633057 := by
    unfold C
    simp [show (5971968 * k + 5266114) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 2633057) = 8957952 * k + 7899172 := by
    unfold C
    simp [show (2985984 * k + 2633057) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 7899172) = 4478976 * k + 3949586 := by
    unfold C
    simp [show (8957952 * k + 7899172) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 3949586) = 2239488 * k + 1974793 := by
    unfold C
    simp [show (4478976 * k + 3949586) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 1974793) = 6718464 * k + 5924380 := by
    unfold C
    simp [show (2239488 * k + 1974793) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 5924380) = 3359232 * k + 2962190 := by
    unfold C
    simp [show (6718464 * k + 5924380) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 2962190) = 1679616 * k + 1481095 := by
    unfold C
    simp [show (3359232 * k + 2962190) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 1481095) = 5038848 * k + 4443286 := by
    unfold C
    simp [show (1679616 * k + 1481095) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 4443286) = 2519424 * k + 2221643 := by
    unfold C
    simp [show (5038848 * k + 4443286) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 2221643) = 7558272 * k + 6664930 := by
    unfold C
    simp [show (2519424 * k + 2221643) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 6664930) = 3779136 * k + 3332465 := by
    unfold C
    simp [show (7558272 * k + 6664930) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 3332465) = 11337408 * k + 9997396 := by
    unfold C
    simp [show (3779136 * k + 3332465) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 9997396) = 5668704 * k + 4998698 := by
    unfold C
    simp [show (11337408 * k + 9997396) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 4998698) = 2834352 * k + 2499349 := by
    unfold C
    simp [show (5668704 * k + 4998698) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2499349) = 8503056 * k + 7498048 := by
    unfold C
    simp [show (2834352 * k + 2499349) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 7498048) = 4251528 * k + 3749024 := by
    unfold C
    simp [show (8503056 * k + 7498048) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 3749024) = 2125764 * k + 1874512 := by
    unfold C
    simp [show (4251528 * k + 3749024) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1874512) = 1062882 * k + 937256 := by
    unfold C
    simp [show (2125764 * k + 1874512) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 937256) = 531441 * k + 468628 := by
    unfold C
    simp [show (1062882 * k + 937256) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 924639) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 924639)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_924831 : ∀ k : Nat,
    iterate (1048576 * k + 924831) 32 = 531441 * k + 468725 ∧
      531441 * k + 468725 < 1048576 * k + 924831 := by
  intro k
  have h1 : C (1048576 * k + 924831) = 3145728 * k + 2774494 := by
    unfold C
    simp [show (1048576 * k + 924831) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2774494) = 1572864 * k + 1387247 := by
    unfold C
    simp [show (3145728 * k + 2774494) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1387247) = 4718592 * k + 4161742 := by
    unfold C
    simp [show (1572864 * k + 1387247) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 4161742) = 2359296 * k + 2080871 := by
    unfold C
    simp [show (4718592 * k + 4161742) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 2080871) = 7077888 * k + 6242614 := by
    unfold C
    simp [show (2359296 * k + 2080871) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 6242614) = 3538944 * k + 3121307 := by
    unfold C
    simp [show (7077888 * k + 6242614) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 3121307) = 10616832 * k + 9363922 := by
    unfold C
    simp [show (3538944 * k + 3121307) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 9363922) = 5308416 * k + 4681961 := by
    unfold C
    simp [show (10616832 * k + 9363922) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 4681961) = 15925248 * k + 14045884 := by
    unfold C
    simp [show (5308416 * k + 4681961) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 14045884) = 7962624 * k + 7022942 := by
    unfold C
    simp [show (15925248 * k + 14045884) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 7022942) = 3981312 * k + 3511471 := by
    unfold C
    simp [show (7962624 * k + 7022942) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 3511471) = 11943936 * k + 10534414 := by
    unfold C
    simp [show (3981312 * k + 3511471) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 10534414) = 5971968 * k + 5267207 := by
    unfold C
    simp [show (11943936 * k + 10534414) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 5267207) = 17915904 * k + 15801622 := by
    unfold C
    simp [show (5971968 * k + 5267207) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 15801622) = 8957952 * k + 7900811 := by
    unfold C
    simp [show (17915904 * k + 15801622) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 7900811) = 26873856 * k + 23702434 := by
    unfold C
    simp [show (8957952 * k + 7900811) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 23702434) = 13436928 * k + 11851217 := by
    unfold C
    simp [show (26873856 * k + 23702434) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 11851217) = 40310784 * k + 35553652 := by
    unfold C
    simp [show (13436928 * k + 11851217) % 2 ≠ 0 by omega]
    omega
  have h19 : C (40310784 * k + 35553652) = 20155392 * k + 17776826 := by
    unfold C
    simp [show (40310784 * k + 35553652) % 2 = 0 by omega]
    omega
  have h20 : C (20155392 * k + 17776826) = 10077696 * k + 8888413 := by
    unfold C
    simp [show (20155392 * k + 17776826) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 8888413) = 30233088 * k + 26665240 := by
    unfold C
    simp [show (10077696 * k + 8888413) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 26665240) = 15116544 * k + 13332620 := by
    unfold C
    simp [show (30233088 * k + 26665240) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 13332620) = 7558272 * k + 6666310 := by
    unfold C
    simp [show (15116544 * k + 13332620) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 6666310) = 3779136 * k + 3333155 := by
    unfold C
    simp [show (7558272 * k + 6666310) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 3333155) = 11337408 * k + 9999466 := by
    unfold C
    simp [show (3779136 * k + 3333155) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 9999466) = 5668704 * k + 4999733 := by
    unfold C
    simp [show (11337408 * k + 9999466) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 4999733) = 17006112 * k + 14999200 := by
    unfold C
    simp [show (5668704 * k + 4999733) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 14999200) = 8503056 * k + 7499600 := by
    unfold C
    simp [show (17006112 * k + 14999200) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 7499600) = 4251528 * k + 3749800 := by
    unfold C
    simp [show (8503056 * k + 7499600) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 3749800) = 2125764 * k + 1874900 := by
    unfold C
    simp [show (4251528 * k + 3749800) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1874900) = 1062882 * k + 937450 := by
    unfold C
    simp [show (2125764 * k + 1874900) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 937450) = 531441 * k + 468725 := by
    unfold C
    simp [show (1062882 * k + 937450) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 924831) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 924831)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_925231 : ∀ k : Nat,
    iterate (1048576 * k + 925231) 32 = 531441 * k + 468928 ∧
      531441 * k + 468928 < 1048576 * k + 925231 := by
  intro k
  have h1 : C (1048576 * k + 925231) = 3145728 * k + 2775694 := by
    unfold C
    simp [show (1048576 * k + 925231) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2775694) = 1572864 * k + 1387847 := by
    unfold C
    simp [show (3145728 * k + 2775694) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1387847) = 4718592 * k + 4163542 := by
    unfold C
    simp [show (1572864 * k + 1387847) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 4163542) = 2359296 * k + 2081771 := by
    unfold C
    simp [show (4718592 * k + 4163542) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 2081771) = 7077888 * k + 6245314 := by
    unfold C
    simp [show (2359296 * k + 2081771) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 6245314) = 3538944 * k + 3122657 := by
    unfold C
    simp [show (7077888 * k + 6245314) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 3122657) = 10616832 * k + 9367972 := by
    unfold C
    simp [show (3538944 * k + 3122657) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 9367972) = 5308416 * k + 4683986 := by
    unfold C
    simp [show (10616832 * k + 9367972) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 4683986) = 2654208 * k + 2341993 := by
    unfold C
    simp [show (5308416 * k + 4683986) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 2341993) = 7962624 * k + 7025980 := by
    unfold C
    simp [show (2654208 * k + 2341993) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 7025980) = 3981312 * k + 3512990 := by
    unfold C
    simp [show (7962624 * k + 7025980) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 3512990) = 1990656 * k + 1756495 := by
    unfold C
    simp [show (3981312 * k + 3512990) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 1756495) = 5971968 * k + 5269486 := by
    unfold C
    simp [show (1990656 * k + 1756495) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 5269486) = 2985984 * k + 2634743 := by
    unfold C
    simp [show (5971968 * k + 5269486) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 2634743) = 8957952 * k + 7904230 := by
    unfold C
    simp [show (2985984 * k + 2634743) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 7904230) = 4478976 * k + 3952115 := by
    unfold C
    simp [show (8957952 * k + 7904230) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 3952115) = 13436928 * k + 11856346 := by
    unfold C
    simp [show (4478976 * k + 3952115) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 11856346) = 6718464 * k + 5928173 := by
    unfold C
    simp [show (13436928 * k + 11856346) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 5928173) = 20155392 * k + 17784520 := by
    unfold C
    simp [show (6718464 * k + 5928173) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 17784520) = 10077696 * k + 8892260 := by
    unfold C
    simp [show (20155392 * k + 17784520) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 8892260) = 5038848 * k + 4446130 := by
    unfold C
    simp [show (10077696 * k + 8892260) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 4446130) = 2519424 * k + 2223065 := by
    unfold C
    simp [show (5038848 * k + 4446130) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 2223065) = 7558272 * k + 6669196 := by
    unfold C
    simp [show (2519424 * k + 2223065) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 6669196) = 3779136 * k + 3334598 := by
    unfold C
    simp [show (7558272 * k + 6669196) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 3334598) = 1889568 * k + 1667299 := by
    unfold C
    simp [show (3779136 * k + 3334598) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1667299) = 5668704 * k + 5001898 := by
    unfold C
    simp [show (1889568 * k + 1667299) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 5001898) = 2834352 * k + 2500949 := by
    unfold C
    simp [show (5668704 * k + 5001898) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2500949) = 8503056 * k + 7502848 := by
    unfold C
    simp [show (2834352 * k + 2500949) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 7502848) = 4251528 * k + 3751424 := by
    unfold C
    simp [show (8503056 * k + 7502848) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 3751424) = 2125764 * k + 1875712 := by
    unfold C
    simp [show (4251528 * k + 3751424) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1875712) = 1062882 * k + 937856 := by
    unfold C
    simp [show (2125764 * k + 1875712) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 937856) = 531441 * k + 468928 := by
    unfold C
    simp [show (1062882 * k + 937856) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 925231) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 925231)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_925799 : ∀ k : Nat,
    iterate (1048576 * k + 925799) 32 = 531441 * k + 469216 ∧
      531441 * k + 469216 < 1048576 * k + 925799 := by
  intro k
  have h1 : C (1048576 * k + 925799) = 3145728 * k + 2777398 := by
    unfold C
    simp [show (1048576 * k + 925799) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2777398) = 1572864 * k + 1388699 := by
    unfold C
    simp [show (3145728 * k + 2777398) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1388699) = 4718592 * k + 4166098 := by
    unfold C
    simp [show (1572864 * k + 1388699) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 4166098) = 2359296 * k + 2083049 := by
    unfold C
    simp [show (4718592 * k + 4166098) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 2083049) = 7077888 * k + 6249148 := by
    unfold C
    simp [show (2359296 * k + 2083049) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 6249148) = 3538944 * k + 3124574 := by
    unfold C
    simp [show (7077888 * k + 6249148) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 3124574) = 1769472 * k + 1562287 := by
    unfold C
    simp [show (3538944 * k + 3124574) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1562287) = 5308416 * k + 4686862 := by
    unfold C
    simp [show (1769472 * k + 1562287) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 4686862) = 2654208 * k + 2343431 := by
    unfold C
    simp [show (5308416 * k + 4686862) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 2343431) = 7962624 * k + 7030294 := by
    unfold C
    simp [show (2654208 * k + 2343431) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 7030294) = 3981312 * k + 3515147 := by
    unfold C
    simp [show (7962624 * k + 7030294) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 3515147) = 11943936 * k + 10545442 := by
    unfold C
    simp [show (3981312 * k + 3515147) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 10545442) = 5971968 * k + 5272721 := by
    unfold C
    simp [show (11943936 * k + 10545442) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 5272721) = 17915904 * k + 15818164 := by
    unfold C
    simp [show (5971968 * k + 5272721) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 15818164) = 8957952 * k + 7909082 := by
    unfold C
    simp [show (17915904 * k + 15818164) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 7909082) = 4478976 * k + 3954541 := by
    unfold C
    simp [show (8957952 * k + 7909082) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 3954541) = 13436928 * k + 11863624 := by
    unfold C
    simp [show (4478976 * k + 3954541) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 11863624) = 6718464 * k + 5931812 := by
    unfold C
    simp [show (13436928 * k + 11863624) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 5931812) = 3359232 * k + 2965906 := by
    unfold C
    simp [show (6718464 * k + 5931812) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 2965906) = 1679616 * k + 1482953 := by
    unfold C
    simp [show (3359232 * k + 2965906) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 1482953) = 5038848 * k + 4448860 := by
    unfold C
    simp [show (1679616 * k + 1482953) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 4448860) = 2519424 * k + 2224430 := by
    unfold C
    simp [show (5038848 * k + 4448860) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 2224430) = 1259712 * k + 1112215 := by
    unfold C
    simp [show (2519424 * k + 2224430) % 2 = 0 by omega]
    omega
  have h24 : C (1259712 * k + 1112215) = 3779136 * k + 3336646 := by
    unfold C
    simp [show (1259712 * k + 1112215) % 2 ≠ 0 by omega]
    omega
  have h25 : C (3779136 * k + 3336646) = 1889568 * k + 1668323 := by
    unfold C
    simp [show (3779136 * k + 3336646) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1668323) = 5668704 * k + 5004970 := by
    unfold C
    simp [show (1889568 * k + 1668323) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 5004970) = 2834352 * k + 2502485 := by
    unfold C
    simp [show (5668704 * k + 5004970) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2502485) = 8503056 * k + 7507456 := by
    unfold C
    simp [show (2834352 * k + 2502485) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 7507456) = 4251528 * k + 3753728 := by
    unfold C
    simp [show (8503056 * k + 7507456) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 3753728) = 2125764 * k + 1876864 := by
    unfold C
    simp [show (4251528 * k + 3753728) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1876864) = 1062882 * k + 938432 := by
    unfold C
    simp [show (2125764 * k + 1876864) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 938432) = 531441 * k + 469216 := by
    unfold C
    simp [show (1062882 * k + 938432) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 925799) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 925799)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_926535 : ∀ k : Nat,
    iterate (1048576 * k + 926535) 32 = 531441 * k + 469589 ∧
      531441 * k + 469589 < 1048576 * k + 926535 := by
  intro k
  have h1 : C (1048576 * k + 926535) = 3145728 * k + 2779606 := by
    unfold C
    simp [show (1048576 * k + 926535) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2779606) = 1572864 * k + 1389803 := by
    unfold C
    simp [show (3145728 * k + 2779606) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1389803) = 4718592 * k + 4169410 := by
    unfold C
    simp [show (1572864 * k + 1389803) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 4169410) = 2359296 * k + 2084705 := by
    unfold C
    simp [show (4718592 * k + 4169410) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 2084705) = 7077888 * k + 6254116 := by
    unfold C
    simp [show (2359296 * k + 2084705) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 6254116) = 3538944 * k + 3127058 := by
    unfold C
    simp [show (7077888 * k + 6254116) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 3127058) = 1769472 * k + 1563529 := by
    unfold C
    simp [show (3538944 * k + 3127058) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1563529) = 5308416 * k + 4690588 := by
    unfold C
    simp [show (1769472 * k + 1563529) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 4690588) = 2654208 * k + 2345294 := by
    unfold C
    simp [show (5308416 * k + 4690588) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 2345294) = 1327104 * k + 1172647 := by
    unfold C
    simp [show (2654208 * k + 2345294) % 2 = 0 by omega]
    omega
  have h11 : C (1327104 * k + 1172647) = 3981312 * k + 3517942 := by
    unfold C
    simp [show (1327104 * k + 1172647) % 2 ≠ 0 by omega]
    omega
  have h12 : C (3981312 * k + 3517942) = 1990656 * k + 1758971 := by
    unfold C
    simp [show (3981312 * k + 3517942) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 1758971) = 5971968 * k + 5276914 := by
    unfold C
    simp [show (1990656 * k + 1758971) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 5276914) = 2985984 * k + 2638457 := by
    unfold C
    simp [show (5971968 * k + 5276914) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 2638457) = 8957952 * k + 7915372 := by
    unfold C
    simp [show (2985984 * k + 2638457) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 7915372) = 4478976 * k + 3957686 := by
    unfold C
    simp [show (8957952 * k + 7915372) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 3957686) = 2239488 * k + 1978843 := by
    unfold C
    simp [show (4478976 * k + 3957686) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 1978843) = 6718464 * k + 5936530 := by
    unfold C
    simp [show (2239488 * k + 1978843) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 5936530) = 3359232 * k + 2968265 := by
    unfold C
    simp [show (6718464 * k + 5936530) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 2968265) = 10077696 * k + 8904796 := by
    unfold C
    simp [show (3359232 * k + 2968265) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 8904796) = 5038848 * k + 4452398 := by
    unfold C
    simp [show (10077696 * k + 8904796) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 4452398) = 2519424 * k + 2226199 := by
    unfold C
    simp [show (5038848 * k + 4452398) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 2226199) = 7558272 * k + 6678598 := by
    unfold C
    simp [show (2519424 * k + 2226199) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 6678598) = 3779136 * k + 3339299 := by
    unfold C
    simp [show (7558272 * k + 6678598) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 3339299) = 11337408 * k + 10017898 := by
    unfold C
    simp [show (3779136 * k + 3339299) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 10017898) = 5668704 * k + 5008949 := by
    unfold C
    simp [show (11337408 * k + 10017898) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 5008949) = 17006112 * k + 15026848 := by
    unfold C
    simp [show (5668704 * k + 5008949) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 15026848) = 8503056 * k + 7513424 := by
    unfold C
    simp [show (17006112 * k + 15026848) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 7513424) = 4251528 * k + 3756712 := by
    unfold C
    simp [show (8503056 * k + 7513424) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 3756712) = 2125764 * k + 1878356 := by
    unfold C
    simp [show (4251528 * k + 3756712) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1878356) = 1062882 * k + 939178 := by
    unfold C
    simp [show (2125764 * k + 1878356) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 939178) = 531441 * k + 469589 := by
    unfold C
    simp [show (1062882 * k + 939178) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 926535) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 926535)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_926811 : ∀ k : Nat,
    iterate (1048576 * k + 926811) 32 = 531441 * k + 469729 ∧
      531441 * k + 469729 < 1048576 * k + 926811 := by
  intro k
  have h1 : C (1048576 * k + 926811) = 3145728 * k + 2780434 := by
    unfold C
    simp [show (1048576 * k + 926811) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2780434) = 1572864 * k + 1390217 := by
    unfold C
    simp [show (3145728 * k + 2780434) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1390217) = 4718592 * k + 4170652 := by
    unfold C
    simp [show (1572864 * k + 1390217) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 4170652) = 2359296 * k + 2085326 := by
    unfold C
    simp [show (4718592 * k + 4170652) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 2085326) = 1179648 * k + 1042663 := by
    unfold C
    simp [show (2359296 * k + 2085326) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 1042663) = 3538944 * k + 3127990 := by
    unfold C
    simp [show (1179648 * k + 1042663) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 3127990) = 1769472 * k + 1563995 := by
    unfold C
    simp [show (3538944 * k + 3127990) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1563995) = 5308416 * k + 4691986 := by
    unfold C
    simp [show (1769472 * k + 1563995) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 4691986) = 2654208 * k + 2345993 := by
    unfold C
    simp [show (5308416 * k + 4691986) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 2345993) = 7962624 * k + 7037980 := by
    unfold C
    simp [show (2654208 * k + 2345993) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 7037980) = 3981312 * k + 3518990 := by
    unfold C
    simp [show (7962624 * k + 7037980) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 3518990) = 1990656 * k + 1759495 := by
    unfold C
    simp [show (3981312 * k + 3518990) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 1759495) = 5971968 * k + 5278486 := by
    unfold C
    simp [show (1990656 * k + 1759495) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 5278486) = 2985984 * k + 2639243 := by
    unfold C
    simp [show (5971968 * k + 5278486) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 2639243) = 8957952 * k + 7917730 := by
    unfold C
    simp [show (2985984 * k + 2639243) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 7917730) = 4478976 * k + 3958865 := by
    unfold C
    simp [show (8957952 * k + 7917730) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 3958865) = 13436928 * k + 11876596 := by
    unfold C
    simp [show (4478976 * k + 3958865) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 11876596) = 6718464 * k + 5938298 := by
    unfold C
    simp [show (13436928 * k + 11876596) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 5938298) = 3359232 * k + 2969149 := by
    unfold C
    simp [show (6718464 * k + 5938298) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 2969149) = 10077696 * k + 8907448 := by
    unfold C
    simp [show (3359232 * k + 2969149) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 8907448) = 5038848 * k + 4453724 := by
    unfold C
    simp [show (10077696 * k + 8907448) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 4453724) = 2519424 * k + 2226862 := by
    unfold C
    simp [show (5038848 * k + 4453724) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 2226862) = 1259712 * k + 1113431 := by
    unfold C
    simp [show (2519424 * k + 2226862) % 2 = 0 by omega]
    omega
  have h24 : C (1259712 * k + 1113431) = 3779136 * k + 3340294 := by
    unfold C
    simp [show (1259712 * k + 1113431) % 2 ≠ 0 by omega]
    omega
  have h25 : C (3779136 * k + 3340294) = 1889568 * k + 1670147 := by
    unfold C
    simp [show (3779136 * k + 3340294) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1670147) = 5668704 * k + 5010442 := by
    unfold C
    simp [show (1889568 * k + 1670147) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 5010442) = 2834352 * k + 2505221 := by
    unfold C
    simp [show (5668704 * k + 5010442) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2505221) = 8503056 * k + 7515664 := by
    unfold C
    simp [show (2834352 * k + 2505221) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 7515664) = 4251528 * k + 3757832 := by
    unfold C
    simp [show (8503056 * k + 7515664) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 3757832) = 2125764 * k + 1878916 := by
    unfold C
    simp [show (4251528 * k + 3757832) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1878916) = 1062882 * k + 939458 := by
    unfold C
    simp [show (2125764 * k + 1878916) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 939458) = 531441 * k + 469729 := by
    unfold C
    simp [show (1062882 * k + 939458) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 926811) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 926811)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_927387 : ∀ k : Nat,
    iterate (1048576 * k + 927387) 32 = 531441 * k + 470021 ∧
      531441 * k + 470021 < 1048576 * k + 927387 := by
  intro k
  have h1 : C (1048576 * k + 927387) = 3145728 * k + 2782162 := by
    unfold C
    simp [show (1048576 * k + 927387) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2782162) = 1572864 * k + 1391081 := by
    unfold C
    simp [show (3145728 * k + 2782162) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1391081) = 4718592 * k + 4173244 := by
    unfold C
    simp [show (1572864 * k + 1391081) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 4173244) = 2359296 * k + 2086622 := by
    unfold C
    simp [show (4718592 * k + 4173244) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 2086622) = 1179648 * k + 1043311 := by
    unfold C
    simp [show (2359296 * k + 2086622) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 1043311) = 3538944 * k + 3129934 := by
    unfold C
    simp [show (1179648 * k + 1043311) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 3129934) = 1769472 * k + 1564967 := by
    unfold C
    simp [show (3538944 * k + 3129934) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1564967) = 5308416 * k + 4694902 := by
    unfold C
    simp [show (1769472 * k + 1564967) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 4694902) = 2654208 * k + 2347451 := by
    unfold C
    simp [show (5308416 * k + 4694902) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 2347451) = 7962624 * k + 7042354 := by
    unfold C
    simp [show (2654208 * k + 2347451) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 7042354) = 3981312 * k + 3521177 := by
    unfold C
    simp [show (7962624 * k + 7042354) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 3521177) = 11943936 * k + 10563532 := by
    unfold C
    simp [show (3981312 * k + 3521177) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 10563532) = 5971968 * k + 5281766 := by
    unfold C
    simp [show (11943936 * k + 10563532) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 5281766) = 2985984 * k + 2640883 := by
    unfold C
    simp [show (5971968 * k + 5281766) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 2640883) = 8957952 * k + 7922650 := by
    unfold C
    simp [show (2985984 * k + 2640883) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 7922650) = 4478976 * k + 3961325 := by
    unfold C
    simp [show (8957952 * k + 7922650) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 3961325) = 13436928 * k + 11883976 := by
    unfold C
    simp [show (4478976 * k + 3961325) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 11883976) = 6718464 * k + 5941988 := by
    unfold C
    simp [show (13436928 * k + 11883976) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 5941988) = 3359232 * k + 2970994 := by
    unfold C
    simp [show (6718464 * k + 5941988) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 2970994) = 1679616 * k + 1485497 := by
    unfold C
    simp [show (3359232 * k + 2970994) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 1485497) = 5038848 * k + 4456492 := by
    unfold C
    simp [show (1679616 * k + 1485497) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 4456492) = 2519424 * k + 2228246 := by
    unfold C
    simp [show (5038848 * k + 4456492) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 2228246) = 1259712 * k + 1114123 := by
    unfold C
    simp [show (2519424 * k + 2228246) % 2 = 0 by omega]
    omega
  have h24 : C (1259712 * k + 1114123) = 3779136 * k + 3342370 := by
    unfold C
    simp [show (1259712 * k + 1114123) % 2 ≠ 0 by omega]
    omega
  have h25 : C (3779136 * k + 3342370) = 1889568 * k + 1671185 := by
    unfold C
    simp [show (3779136 * k + 3342370) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1671185) = 5668704 * k + 5013556 := by
    unfold C
    simp [show (1889568 * k + 1671185) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 5013556) = 2834352 * k + 2506778 := by
    unfold C
    simp [show (5668704 * k + 5013556) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2506778) = 1417176 * k + 1253389 := by
    unfold C
    simp [show (2834352 * k + 2506778) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 1253389) = 4251528 * k + 3760168 := by
    unfold C
    simp [show (1417176 * k + 1253389) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 3760168) = 2125764 * k + 1880084 := by
    unfold C
    simp [show (4251528 * k + 3760168) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1880084) = 1062882 * k + 940042 := by
    unfold C
    simp [show (2125764 * k + 1880084) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 940042) = 531441 * k + 470021 := by
    unfold C
    simp [show (1062882 * k + 940042) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 927387) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 927387)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

end CollatzM20Shard118
