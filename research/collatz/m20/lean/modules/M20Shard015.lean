import Mathlib.Data.Nat.Prime.Basic

namespace CollatzM20Shard015

def C (n : Nat) : Nat := if n % 2 = 0 then n / 2 else 3 * n + 1

def iterate (n t : Nat) : Nat := Nat.rec n (fun _ previous => C previous) t

theorem descent_mod1048576_98031 : ∀ k : Nat,
    iterate (1048576 * k + 98031) 32 = 531441 * k + 49685 ∧
      531441 * k + 49685 < 1048576 * k + 98031 := by
  intro k
  have h1 : C (1048576 * k + 98031) = 3145728 * k + 294094 := by
    unfold C
    simp [show (1048576 * k + 98031) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 294094) = 1572864 * k + 147047 := by
    unfold C
    simp [show (3145728 * k + 294094) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 147047) = 4718592 * k + 441142 := by
    unfold C
    simp [show (1572864 * k + 147047) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 441142) = 2359296 * k + 220571 := by
    unfold C
    simp [show (4718592 * k + 441142) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 220571) = 7077888 * k + 661714 := by
    unfold C
    simp [show (2359296 * k + 220571) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 661714) = 3538944 * k + 330857 := by
    unfold C
    simp [show (7077888 * k + 661714) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 330857) = 10616832 * k + 992572 := by
    unfold C
    simp [show (3538944 * k + 330857) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 992572) = 5308416 * k + 496286 := by
    unfold C
    simp [show (10616832 * k + 992572) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 496286) = 2654208 * k + 248143 := by
    unfold C
    simp [show (5308416 * k + 496286) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 248143) = 7962624 * k + 744430 := by
    unfold C
    simp [show (2654208 * k + 248143) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 744430) = 3981312 * k + 372215 := by
    unfold C
    simp [show (7962624 * k + 744430) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 372215) = 11943936 * k + 1116646 := by
    unfold C
    simp [show (3981312 * k + 372215) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 1116646) = 5971968 * k + 558323 := by
    unfold C
    simp [show (11943936 * k + 1116646) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 558323) = 17915904 * k + 1674970 := by
    unfold C
    simp [show (5971968 * k + 558323) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 1674970) = 8957952 * k + 837485 := by
    unfold C
    simp [show (17915904 * k + 1674970) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 837485) = 26873856 * k + 2512456 := by
    unfold C
    simp [show (8957952 * k + 837485) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 2512456) = 13436928 * k + 1256228 := by
    unfold C
    simp [show (26873856 * k + 2512456) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 1256228) = 6718464 * k + 628114 := by
    unfold C
    simp [show (13436928 * k + 1256228) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 628114) = 3359232 * k + 314057 := by
    unfold C
    simp [show (6718464 * k + 628114) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 314057) = 10077696 * k + 942172 := by
    unfold C
    simp [show (3359232 * k + 314057) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 942172) = 5038848 * k + 471086 := by
    unfold C
    simp [show (10077696 * k + 942172) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 471086) = 2519424 * k + 235543 := by
    unfold C
    simp [show (5038848 * k + 471086) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 235543) = 7558272 * k + 706630 := by
    unfold C
    simp [show (2519424 * k + 235543) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 706630) = 3779136 * k + 353315 := by
    unfold C
    simp [show (7558272 * k + 706630) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 353315) = 11337408 * k + 1059946 := by
    unfold C
    simp [show (3779136 * k + 353315) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 1059946) = 5668704 * k + 529973 := by
    unfold C
    simp [show (11337408 * k + 1059946) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 529973) = 17006112 * k + 1589920 := by
    unfold C
    simp [show (5668704 * k + 529973) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 1589920) = 8503056 * k + 794960 := by
    unfold C
    simp [show (17006112 * k + 1589920) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 794960) = 4251528 * k + 397480 := by
    unfold C
    simp [show (8503056 * k + 794960) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 397480) = 2125764 * k + 198740 := by
    unfold C
    simp [show (4251528 * k + 397480) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 198740) = 1062882 * k + 99370 := by
    unfold C
    simp [show (2125764 * k + 198740) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 99370) = 531441 * k + 49685 := by
    unfold C
    simp [show (1062882 * k + 99370) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 98031) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 98031)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_98943 : ∀ k : Nat,
    iterate (1048576 * k + 98943) 32 = 531441 * k + 50147 ∧
      531441 * k + 50147 < 1048576 * k + 98943 := by
  intro k
  have h1 : C (1048576 * k + 98943) = 3145728 * k + 296830 := by
    unfold C
    simp [show (1048576 * k + 98943) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 296830) = 1572864 * k + 148415 := by
    unfold C
    simp [show (3145728 * k + 296830) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 148415) = 4718592 * k + 445246 := by
    unfold C
    simp [show (1572864 * k + 148415) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 445246) = 2359296 * k + 222623 := by
    unfold C
    simp [show (4718592 * k + 445246) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 222623) = 7077888 * k + 667870 := by
    unfold C
    simp [show (2359296 * k + 222623) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 667870) = 3538944 * k + 333935 := by
    unfold C
    simp [show (7077888 * k + 667870) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 333935) = 10616832 * k + 1001806 := by
    unfold C
    simp [show (3538944 * k + 333935) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 1001806) = 5308416 * k + 500903 := by
    unfold C
    simp [show (10616832 * k + 1001806) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 500903) = 15925248 * k + 1502710 := by
    unfold C
    simp [show (5308416 * k + 500903) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 1502710) = 7962624 * k + 751355 := by
    unfold C
    simp [show (15925248 * k + 1502710) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 751355) = 23887872 * k + 2254066 := by
    unfold C
    simp [show (7962624 * k + 751355) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 2254066) = 11943936 * k + 1127033 := by
    unfold C
    simp [show (23887872 * k + 2254066) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 1127033) = 35831808 * k + 3381100 := by
    unfold C
    simp [show (11943936 * k + 1127033) % 2 ≠ 0 by omega]
    omega
  have h14 : C (35831808 * k + 3381100) = 17915904 * k + 1690550 := by
    unfold C
    simp [show (35831808 * k + 3381100) % 2 = 0 by omega]
    omega
  have h15 : C (17915904 * k + 1690550) = 8957952 * k + 845275 := by
    unfold C
    simp [show (17915904 * k + 1690550) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 845275) = 26873856 * k + 2535826 := by
    unfold C
    simp [show (8957952 * k + 845275) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 2535826) = 13436928 * k + 1267913 := by
    unfold C
    simp [show (26873856 * k + 2535826) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 1267913) = 40310784 * k + 3803740 := by
    unfold C
    simp [show (13436928 * k + 1267913) % 2 ≠ 0 by omega]
    omega
  have h19 : C (40310784 * k + 3803740) = 20155392 * k + 1901870 := by
    unfold C
    simp [show (40310784 * k + 3803740) % 2 = 0 by omega]
    omega
  have h20 : C (20155392 * k + 1901870) = 10077696 * k + 950935 := by
    unfold C
    simp [show (20155392 * k + 1901870) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 950935) = 30233088 * k + 2852806 := by
    unfold C
    simp [show (10077696 * k + 950935) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 2852806) = 15116544 * k + 1426403 := by
    unfold C
    simp [show (30233088 * k + 2852806) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 1426403) = 45349632 * k + 4279210 := by
    unfold C
    simp [show (15116544 * k + 1426403) % 2 ≠ 0 by omega]
    omega
  have h24 : C (45349632 * k + 4279210) = 22674816 * k + 2139605 := by
    unfold C
    simp [show (45349632 * k + 4279210) % 2 = 0 by omega]
    omega
  have h25 : C (22674816 * k + 2139605) = 68024448 * k + 6418816 := by
    unfold C
    simp [show (22674816 * k + 2139605) % 2 ≠ 0 by omega]
    omega
  have h26 : C (68024448 * k + 6418816) = 34012224 * k + 3209408 := by
    unfold C
    simp [show (68024448 * k + 6418816) % 2 = 0 by omega]
    omega
  have h27 : C (34012224 * k + 3209408) = 17006112 * k + 1604704 := by
    unfold C
    simp [show (34012224 * k + 3209408) % 2 = 0 by omega]
    omega
  have h28 : C (17006112 * k + 1604704) = 8503056 * k + 802352 := by
    unfold C
    simp [show (17006112 * k + 1604704) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 802352) = 4251528 * k + 401176 := by
    unfold C
    simp [show (8503056 * k + 802352) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 401176) = 2125764 * k + 200588 := by
    unfold C
    simp [show (4251528 * k + 401176) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 200588) = 1062882 * k + 100294 := by
    unfold C
    simp [show (2125764 * k + 200588) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 100294) = 531441 * k + 50147 := by
    unfold C
    simp [show (1062882 * k + 100294) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 98943) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 98943)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_99047 : ∀ k : Nat,
    iterate (1048576 * k + 99047) 32 = 531441 * k + 50200 ∧
      531441 * k + 50200 < 1048576 * k + 99047 := by
  intro k
  have h1 : C (1048576 * k + 99047) = 3145728 * k + 297142 := by
    unfold C
    simp [show (1048576 * k + 99047) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 297142) = 1572864 * k + 148571 := by
    unfold C
    simp [show (3145728 * k + 297142) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 148571) = 4718592 * k + 445714 := by
    unfold C
    simp [show (1572864 * k + 148571) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 445714) = 2359296 * k + 222857 := by
    unfold C
    simp [show (4718592 * k + 445714) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 222857) = 7077888 * k + 668572 := by
    unfold C
    simp [show (2359296 * k + 222857) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 668572) = 3538944 * k + 334286 := by
    unfold C
    simp [show (7077888 * k + 668572) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 334286) = 1769472 * k + 167143 := by
    unfold C
    simp [show (3538944 * k + 334286) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 167143) = 5308416 * k + 501430 := by
    unfold C
    simp [show (1769472 * k + 167143) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 501430) = 2654208 * k + 250715 := by
    unfold C
    simp [show (5308416 * k + 501430) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 250715) = 7962624 * k + 752146 := by
    unfold C
    simp [show (2654208 * k + 250715) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 752146) = 3981312 * k + 376073 := by
    unfold C
    simp [show (7962624 * k + 752146) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 376073) = 11943936 * k + 1128220 := by
    unfold C
    simp [show (3981312 * k + 376073) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 1128220) = 5971968 * k + 564110 := by
    unfold C
    simp [show (11943936 * k + 1128220) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 564110) = 2985984 * k + 282055 := by
    unfold C
    simp [show (5971968 * k + 564110) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 282055) = 8957952 * k + 846166 := by
    unfold C
    simp [show (2985984 * k + 282055) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 846166) = 4478976 * k + 423083 := by
    unfold C
    simp [show (8957952 * k + 846166) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 423083) = 13436928 * k + 1269250 := by
    unfold C
    simp [show (4478976 * k + 423083) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 1269250) = 6718464 * k + 634625 := by
    unfold C
    simp [show (13436928 * k + 1269250) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 634625) = 20155392 * k + 1903876 := by
    unfold C
    simp [show (6718464 * k + 634625) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 1903876) = 10077696 * k + 951938 := by
    unfold C
    simp [show (20155392 * k + 1903876) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 951938) = 5038848 * k + 475969 := by
    unfold C
    simp [show (10077696 * k + 951938) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 475969) = 15116544 * k + 1427908 := by
    unfold C
    simp [show (5038848 * k + 475969) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 1427908) = 7558272 * k + 713954 := by
    unfold C
    simp [show (15116544 * k + 1427908) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 713954) = 3779136 * k + 356977 := by
    unfold C
    simp [show (7558272 * k + 713954) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 356977) = 11337408 * k + 1070932 := by
    unfold C
    simp [show (3779136 * k + 356977) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 1070932) = 5668704 * k + 535466 := by
    unfold C
    simp [show (11337408 * k + 1070932) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 535466) = 2834352 * k + 267733 := by
    unfold C
    simp [show (5668704 * k + 535466) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 267733) = 8503056 * k + 803200 := by
    unfold C
    simp [show (2834352 * k + 267733) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 803200) = 4251528 * k + 401600 := by
    unfold C
    simp [show (8503056 * k + 803200) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 401600) = 2125764 * k + 200800 := by
    unfold C
    simp [show (4251528 * k + 401600) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 200800) = 1062882 * k + 100400 := by
    unfold C
    simp [show (2125764 * k + 200800) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 100400) = 531441 * k + 50200 := by
    unfold C
    simp [show (1062882 * k + 100400) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 99047) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 99047)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_99055 : ∀ k : Nat,
    iterate (1048576 * k + 99055) 32 = 531441 * k + 50204 ∧
      531441 * k + 50204 < 1048576 * k + 99055 := by
  intro k
  have h1 : C (1048576 * k + 99055) = 3145728 * k + 297166 := by
    unfold C
    simp [show (1048576 * k + 99055) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 297166) = 1572864 * k + 148583 := by
    unfold C
    simp [show (3145728 * k + 297166) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 148583) = 4718592 * k + 445750 := by
    unfold C
    simp [show (1572864 * k + 148583) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 445750) = 2359296 * k + 222875 := by
    unfold C
    simp [show (4718592 * k + 445750) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 222875) = 7077888 * k + 668626 := by
    unfold C
    simp [show (2359296 * k + 222875) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 668626) = 3538944 * k + 334313 := by
    unfold C
    simp [show (7077888 * k + 668626) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 334313) = 10616832 * k + 1002940 := by
    unfold C
    simp [show (3538944 * k + 334313) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 1002940) = 5308416 * k + 501470 := by
    unfold C
    simp [show (10616832 * k + 1002940) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 501470) = 2654208 * k + 250735 := by
    unfold C
    simp [show (5308416 * k + 501470) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 250735) = 7962624 * k + 752206 := by
    unfold C
    simp [show (2654208 * k + 250735) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 752206) = 3981312 * k + 376103 := by
    unfold C
    simp [show (7962624 * k + 752206) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 376103) = 11943936 * k + 1128310 := by
    unfold C
    simp [show (3981312 * k + 376103) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 1128310) = 5971968 * k + 564155 := by
    unfold C
    simp [show (11943936 * k + 1128310) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 564155) = 17915904 * k + 1692466 := by
    unfold C
    simp [show (5971968 * k + 564155) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 1692466) = 8957952 * k + 846233 := by
    unfold C
    simp [show (17915904 * k + 1692466) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 846233) = 26873856 * k + 2538700 := by
    unfold C
    simp [show (8957952 * k + 846233) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 2538700) = 13436928 * k + 1269350 := by
    unfold C
    simp [show (26873856 * k + 2538700) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 1269350) = 6718464 * k + 634675 := by
    unfold C
    simp [show (13436928 * k + 1269350) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 634675) = 20155392 * k + 1904026 := by
    unfold C
    simp [show (6718464 * k + 634675) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 1904026) = 10077696 * k + 952013 := by
    unfold C
    simp [show (20155392 * k + 1904026) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 952013) = 30233088 * k + 2856040 := by
    unfold C
    simp [show (10077696 * k + 952013) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 2856040) = 15116544 * k + 1428020 := by
    unfold C
    simp [show (30233088 * k + 2856040) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 1428020) = 7558272 * k + 714010 := by
    unfold C
    simp [show (15116544 * k + 1428020) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 714010) = 3779136 * k + 357005 := by
    unfold C
    simp [show (7558272 * k + 714010) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 357005) = 11337408 * k + 1071016 := by
    unfold C
    simp [show (3779136 * k + 357005) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 1071016) = 5668704 * k + 535508 := by
    unfold C
    simp [show (11337408 * k + 1071016) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 535508) = 2834352 * k + 267754 := by
    unfold C
    simp [show (5668704 * k + 535508) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 267754) = 1417176 * k + 133877 := by
    unfold C
    simp [show (2834352 * k + 267754) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 133877) = 4251528 * k + 401632 := by
    unfold C
    simp [show (1417176 * k + 133877) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 401632) = 2125764 * k + 200816 := by
    unfold C
    simp [show (4251528 * k + 401632) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 200816) = 1062882 * k + 100408 := by
    unfold C
    simp [show (2125764 * k + 200816) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 100408) = 531441 * k + 50204 := by
    unfold C
    simp [show (1062882 * k + 100408) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 99055) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 99055)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_99071 : ∀ k : Nat,
    iterate (1048576 * k + 99071) 32 = 531441 * k + 50212 ∧
      531441 * k + 50212 < 1048576 * k + 99071 := by
  intro k
  have h1 : C (1048576 * k + 99071) = 3145728 * k + 297214 := by
    unfold C
    simp [show (1048576 * k + 99071) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 297214) = 1572864 * k + 148607 := by
    unfold C
    simp [show (3145728 * k + 297214) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 148607) = 4718592 * k + 445822 := by
    unfold C
    simp [show (1572864 * k + 148607) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 445822) = 2359296 * k + 222911 := by
    unfold C
    simp [show (4718592 * k + 445822) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 222911) = 7077888 * k + 668734 := by
    unfold C
    simp [show (2359296 * k + 222911) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 668734) = 3538944 * k + 334367 := by
    unfold C
    simp [show (7077888 * k + 668734) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 334367) = 10616832 * k + 1003102 := by
    unfold C
    simp [show (3538944 * k + 334367) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 1003102) = 5308416 * k + 501551 := by
    unfold C
    simp [show (10616832 * k + 1003102) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 501551) = 15925248 * k + 1504654 := by
    unfold C
    simp [show (5308416 * k + 501551) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 1504654) = 7962624 * k + 752327 := by
    unfold C
    simp [show (15925248 * k + 1504654) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 752327) = 23887872 * k + 2256982 := by
    unfold C
    simp [show (7962624 * k + 752327) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 2256982) = 11943936 * k + 1128491 := by
    unfold C
    simp [show (23887872 * k + 2256982) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 1128491) = 35831808 * k + 3385474 := by
    unfold C
    simp [show (11943936 * k + 1128491) % 2 ≠ 0 by omega]
    omega
  have h14 : C (35831808 * k + 3385474) = 17915904 * k + 1692737 := by
    unfold C
    simp [show (35831808 * k + 3385474) % 2 = 0 by omega]
    omega
  have h15 : C (17915904 * k + 1692737) = 53747712 * k + 5078212 := by
    unfold C
    simp [show (17915904 * k + 1692737) % 2 ≠ 0 by omega]
    omega
  have h16 : C (53747712 * k + 5078212) = 26873856 * k + 2539106 := by
    unfold C
    simp [show (53747712 * k + 5078212) % 2 = 0 by omega]
    omega
  have h17 : C (26873856 * k + 2539106) = 13436928 * k + 1269553 := by
    unfold C
    simp [show (26873856 * k + 2539106) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 1269553) = 40310784 * k + 3808660 := by
    unfold C
    simp [show (13436928 * k + 1269553) % 2 ≠ 0 by omega]
    omega
  have h19 : C (40310784 * k + 3808660) = 20155392 * k + 1904330 := by
    unfold C
    simp [show (40310784 * k + 3808660) % 2 = 0 by omega]
    omega
  have h20 : C (20155392 * k + 1904330) = 10077696 * k + 952165 := by
    unfold C
    simp [show (20155392 * k + 1904330) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 952165) = 30233088 * k + 2856496 := by
    unfold C
    simp [show (10077696 * k + 952165) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 2856496) = 15116544 * k + 1428248 := by
    unfold C
    simp [show (30233088 * k + 2856496) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 1428248) = 7558272 * k + 714124 := by
    unfold C
    simp [show (15116544 * k + 1428248) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 714124) = 3779136 * k + 357062 := by
    unfold C
    simp [show (7558272 * k + 714124) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 357062) = 1889568 * k + 178531 := by
    unfold C
    simp [show (3779136 * k + 357062) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 178531) = 5668704 * k + 535594 := by
    unfold C
    simp [show (1889568 * k + 178531) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 535594) = 2834352 * k + 267797 := by
    unfold C
    simp [show (5668704 * k + 535594) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 267797) = 8503056 * k + 803392 := by
    unfold C
    simp [show (2834352 * k + 267797) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 803392) = 4251528 * k + 401696 := by
    unfold C
    simp [show (8503056 * k + 803392) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 401696) = 2125764 * k + 200848 := by
    unfold C
    simp [show (4251528 * k + 401696) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 200848) = 1062882 * k + 100424 := by
    unfold C
    simp [show (2125764 * k + 200848) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 100424) = 531441 * k + 50212 := by
    unfold C
    simp [show (1062882 * k + 100424) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 99071) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 99071)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_99487 : ∀ k : Nat,
    iterate (1048576 * k + 99487) 32 = 531441 * k + 50423 ∧
      531441 * k + 50423 < 1048576 * k + 99487 := by
  intro k
  have h1 : C (1048576 * k + 99487) = 3145728 * k + 298462 := by
    unfold C
    simp [show (1048576 * k + 99487) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 298462) = 1572864 * k + 149231 := by
    unfold C
    simp [show (3145728 * k + 298462) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 149231) = 4718592 * k + 447694 := by
    unfold C
    simp [show (1572864 * k + 149231) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 447694) = 2359296 * k + 223847 := by
    unfold C
    simp [show (4718592 * k + 447694) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 223847) = 7077888 * k + 671542 := by
    unfold C
    simp [show (2359296 * k + 223847) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 671542) = 3538944 * k + 335771 := by
    unfold C
    simp [show (7077888 * k + 671542) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 335771) = 10616832 * k + 1007314 := by
    unfold C
    simp [show (3538944 * k + 335771) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 1007314) = 5308416 * k + 503657 := by
    unfold C
    simp [show (10616832 * k + 1007314) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 503657) = 15925248 * k + 1510972 := by
    unfold C
    simp [show (5308416 * k + 503657) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 1510972) = 7962624 * k + 755486 := by
    unfold C
    simp [show (15925248 * k + 1510972) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 755486) = 3981312 * k + 377743 := by
    unfold C
    simp [show (7962624 * k + 755486) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 377743) = 11943936 * k + 1133230 := by
    unfold C
    simp [show (3981312 * k + 377743) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 1133230) = 5971968 * k + 566615 := by
    unfold C
    simp [show (11943936 * k + 1133230) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 566615) = 17915904 * k + 1699846 := by
    unfold C
    simp [show (5971968 * k + 566615) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 1699846) = 8957952 * k + 849923 := by
    unfold C
    simp [show (17915904 * k + 1699846) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 849923) = 26873856 * k + 2549770 := by
    unfold C
    simp [show (8957952 * k + 849923) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 2549770) = 13436928 * k + 1274885 := by
    unfold C
    simp [show (26873856 * k + 2549770) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 1274885) = 40310784 * k + 3824656 := by
    unfold C
    simp [show (13436928 * k + 1274885) % 2 ≠ 0 by omega]
    omega
  have h19 : C (40310784 * k + 3824656) = 20155392 * k + 1912328 := by
    unfold C
    simp [show (40310784 * k + 3824656) % 2 = 0 by omega]
    omega
  have h20 : C (20155392 * k + 1912328) = 10077696 * k + 956164 := by
    unfold C
    simp [show (20155392 * k + 1912328) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 956164) = 5038848 * k + 478082 := by
    unfold C
    simp [show (10077696 * k + 956164) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 478082) = 2519424 * k + 239041 := by
    unfold C
    simp [show (5038848 * k + 478082) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 239041) = 7558272 * k + 717124 := by
    unfold C
    simp [show (2519424 * k + 239041) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 717124) = 3779136 * k + 358562 := by
    unfold C
    simp [show (7558272 * k + 717124) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 358562) = 1889568 * k + 179281 := by
    unfold C
    simp [show (3779136 * k + 358562) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 179281) = 5668704 * k + 537844 := by
    unfold C
    simp [show (1889568 * k + 179281) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 537844) = 2834352 * k + 268922 := by
    unfold C
    simp [show (5668704 * k + 537844) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 268922) = 1417176 * k + 134461 := by
    unfold C
    simp [show (2834352 * k + 268922) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 134461) = 4251528 * k + 403384 := by
    unfold C
    simp [show (1417176 * k + 134461) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 403384) = 2125764 * k + 201692 := by
    unfold C
    simp [show (4251528 * k + 403384) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 201692) = 1062882 * k + 100846 := by
    unfold C
    simp [show (2125764 * k + 201692) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 100846) = 531441 * k + 50423 := by
    unfold C
    simp [show (1062882 * k + 100846) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 99487) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 99487)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_99967 : ∀ k : Nat,
    iterate (1048576 * k + 99967) 32 = 531441 * k + 50666 ∧
      531441 * k + 50666 < 1048576 * k + 99967 := by
  intro k
  have h1 : C (1048576 * k + 99967) = 3145728 * k + 299902 := by
    unfold C
    simp [show (1048576 * k + 99967) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 299902) = 1572864 * k + 149951 := by
    unfold C
    simp [show (3145728 * k + 299902) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 149951) = 4718592 * k + 449854 := by
    unfold C
    simp [show (1572864 * k + 149951) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 449854) = 2359296 * k + 224927 := by
    unfold C
    simp [show (4718592 * k + 449854) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 224927) = 7077888 * k + 674782 := by
    unfold C
    simp [show (2359296 * k + 224927) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 674782) = 3538944 * k + 337391 := by
    unfold C
    simp [show (7077888 * k + 674782) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 337391) = 10616832 * k + 1012174 := by
    unfold C
    simp [show (3538944 * k + 337391) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 1012174) = 5308416 * k + 506087 := by
    unfold C
    simp [show (10616832 * k + 1012174) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 506087) = 15925248 * k + 1518262 := by
    unfold C
    simp [show (5308416 * k + 506087) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 1518262) = 7962624 * k + 759131 := by
    unfold C
    simp [show (15925248 * k + 1518262) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 759131) = 23887872 * k + 2277394 := by
    unfold C
    simp [show (7962624 * k + 759131) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 2277394) = 11943936 * k + 1138697 := by
    unfold C
    simp [show (23887872 * k + 2277394) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 1138697) = 35831808 * k + 3416092 := by
    unfold C
    simp [show (11943936 * k + 1138697) % 2 ≠ 0 by omega]
    omega
  have h14 : C (35831808 * k + 3416092) = 17915904 * k + 1708046 := by
    unfold C
    simp [show (35831808 * k + 3416092) % 2 = 0 by omega]
    omega
  have h15 : C (17915904 * k + 1708046) = 8957952 * k + 854023 := by
    unfold C
    simp [show (17915904 * k + 1708046) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 854023) = 26873856 * k + 2562070 := by
    unfold C
    simp [show (8957952 * k + 854023) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 2562070) = 13436928 * k + 1281035 := by
    unfold C
    simp [show (26873856 * k + 2562070) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 1281035) = 40310784 * k + 3843106 := by
    unfold C
    simp [show (13436928 * k + 1281035) % 2 ≠ 0 by omega]
    omega
  have h19 : C (40310784 * k + 3843106) = 20155392 * k + 1921553 := by
    unfold C
    simp [show (40310784 * k + 3843106) % 2 = 0 by omega]
    omega
  have h20 : C (20155392 * k + 1921553) = 60466176 * k + 5764660 := by
    unfold C
    simp [show (20155392 * k + 1921553) % 2 ≠ 0 by omega]
    omega
  have h21 : C (60466176 * k + 5764660) = 30233088 * k + 2882330 := by
    unfold C
    simp [show (60466176 * k + 5764660) % 2 = 0 by omega]
    omega
  have h22 : C (30233088 * k + 2882330) = 15116544 * k + 1441165 := by
    unfold C
    simp [show (30233088 * k + 2882330) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 1441165) = 45349632 * k + 4323496 := by
    unfold C
    simp [show (15116544 * k + 1441165) % 2 ≠ 0 by omega]
    omega
  have h24 : C (45349632 * k + 4323496) = 22674816 * k + 2161748 := by
    unfold C
    simp [show (45349632 * k + 4323496) % 2 = 0 by omega]
    omega
  have h25 : C (22674816 * k + 2161748) = 11337408 * k + 1080874 := by
    unfold C
    simp [show (22674816 * k + 2161748) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 1080874) = 5668704 * k + 540437 := by
    unfold C
    simp [show (11337408 * k + 1080874) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 540437) = 17006112 * k + 1621312 := by
    unfold C
    simp [show (5668704 * k + 540437) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 1621312) = 8503056 * k + 810656 := by
    unfold C
    simp [show (17006112 * k + 1621312) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 810656) = 4251528 * k + 405328 := by
    unfold C
    simp [show (8503056 * k + 810656) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 405328) = 2125764 * k + 202664 := by
    unfold C
    simp [show (4251528 * k + 405328) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 202664) = 1062882 * k + 101332 := by
    unfold C
    simp [show (2125764 * k + 202664) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 101332) = 531441 * k + 50666 := by
    unfold C
    simp [show (1062882 * k + 101332) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 99967) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 99967)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_101095 : ∀ k : Nat,
    iterate (1048576 * k + 101095) 32 = 531441 * k + 51238 ∧
      531441 * k + 51238 < 1048576 * k + 101095 := by
  intro k
  have h1 : C (1048576 * k + 101095) = 3145728 * k + 303286 := by
    unfold C
    simp [show (1048576 * k + 101095) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 303286) = 1572864 * k + 151643 := by
    unfold C
    simp [show (3145728 * k + 303286) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 151643) = 4718592 * k + 454930 := by
    unfold C
    simp [show (1572864 * k + 151643) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 454930) = 2359296 * k + 227465 := by
    unfold C
    simp [show (4718592 * k + 454930) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 227465) = 7077888 * k + 682396 := by
    unfold C
    simp [show (2359296 * k + 227465) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 682396) = 3538944 * k + 341198 := by
    unfold C
    simp [show (7077888 * k + 682396) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 341198) = 1769472 * k + 170599 := by
    unfold C
    simp [show (3538944 * k + 341198) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 170599) = 5308416 * k + 511798 := by
    unfold C
    simp [show (1769472 * k + 170599) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 511798) = 2654208 * k + 255899 := by
    unfold C
    simp [show (5308416 * k + 511798) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 255899) = 7962624 * k + 767698 := by
    unfold C
    simp [show (2654208 * k + 255899) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 767698) = 3981312 * k + 383849 := by
    unfold C
    simp [show (7962624 * k + 767698) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 383849) = 11943936 * k + 1151548 := by
    unfold C
    simp [show (3981312 * k + 383849) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 1151548) = 5971968 * k + 575774 := by
    unfold C
    simp [show (11943936 * k + 1151548) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 575774) = 2985984 * k + 287887 := by
    unfold C
    simp [show (5971968 * k + 575774) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 287887) = 8957952 * k + 863662 := by
    unfold C
    simp [show (2985984 * k + 287887) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 863662) = 4478976 * k + 431831 := by
    unfold C
    simp [show (8957952 * k + 863662) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 431831) = 13436928 * k + 1295494 := by
    unfold C
    simp [show (4478976 * k + 431831) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 1295494) = 6718464 * k + 647747 := by
    unfold C
    simp [show (13436928 * k + 1295494) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 647747) = 20155392 * k + 1943242 := by
    unfold C
    simp [show (6718464 * k + 647747) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 1943242) = 10077696 * k + 971621 := by
    unfold C
    simp [show (20155392 * k + 1943242) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 971621) = 30233088 * k + 2914864 := by
    unfold C
    simp [show (10077696 * k + 971621) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 2914864) = 15116544 * k + 1457432 := by
    unfold C
    simp [show (30233088 * k + 2914864) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 1457432) = 7558272 * k + 728716 := by
    unfold C
    simp [show (15116544 * k + 1457432) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 728716) = 3779136 * k + 364358 := by
    unfold C
    simp [show (7558272 * k + 728716) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 364358) = 1889568 * k + 182179 := by
    unfold C
    simp [show (3779136 * k + 364358) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 182179) = 5668704 * k + 546538 := by
    unfold C
    simp [show (1889568 * k + 182179) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 546538) = 2834352 * k + 273269 := by
    unfold C
    simp [show (5668704 * k + 546538) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 273269) = 8503056 * k + 819808 := by
    unfold C
    simp [show (2834352 * k + 273269) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 819808) = 4251528 * k + 409904 := by
    unfold C
    simp [show (8503056 * k + 819808) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 409904) = 2125764 * k + 204952 := by
    unfold C
    simp [show (4251528 * k + 409904) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 204952) = 1062882 * k + 102476 := by
    unfold C
    simp [show (2125764 * k + 204952) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 102476) = 531441 * k + 51238 := by
    unfold C
    simp [show (1062882 * k + 102476) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 101095) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 101095)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_101191 : ∀ k : Nat,
    iterate (1048576 * k + 101191) 32 = 531441 * k + 51287 ∧
      531441 * k + 51287 < 1048576 * k + 101191 := by
  intro k
  have h1 : C (1048576 * k + 101191) = 3145728 * k + 303574 := by
    unfold C
    simp [show (1048576 * k + 101191) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 303574) = 1572864 * k + 151787 := by
    unfold C
    simp [show (3145728 * k + 303574) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 151787) = 4718592 * k + 455362 := by
    unfold C
    simp [show (1572864 * k + 151787) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 455362) = 2359296 * k + 227681 := by
    unfold C
    simp [show (4718592 * k + 455362) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 227681) = 7077888 * k + 683044 := by
    unfold C
    simp [show (2359296 * k + 227681) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 683044) = 3538944 * k + 341522 := by
    unfold C
    simp [show (7077888 * k + 683044) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 341522) = 1769472 * k + 170761 := by
    unfold C
    simp [show (3538944 * k + 341522) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 170761) = 5308416 * k + 512284 := by
    unfold C
    simp [show (1769472 * k + 170761) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 512284) = 2654208 * k + 256142 := by
    unfold C
    simp [show (5308416 * k + 512284) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 256142) = 1327104 * k + 128071 := by
    unfold C
    simp [show (2654208 * k + 256142) % 2 = 0 by omega]
    omega
  have h11 : C (1327104 * k + 128071) = 3981312 * k + 384214 := by
    unfold C
    simp [show (1327104 * k + 128071) % 2 ≠ 0 by omega]
    omega
  have h12 : C (3981312 * k + 384214) = 1990656 * k + 192107 := by
    unfold C
    simp [show (3981312 * k + 384214) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 192107) = 5971968 * k + 576322 := by
    unfold C
    simp [show (1990656 * k + 192107) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 576322) = 2985984 * k + 288161 := by
    unfold C
    simp [show (5971968 * k + 576322) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 288161) = 8957952 * k + 864484 := by
    unfold C
    simp [show (2985984 * k + 288161) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 864484) = 4478976 * k + 432242 := by
    unfold C
    simp [show (8957952 * k + 864484) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 432242) = 2239488 * k + 216121 := by
    unfold C
    simp [show (4478976 * k + 432242) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 216121) = 6718464 * k + 648364 := by
    unfold C
    simp [show (2239488 * k + 216121) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 648364) = 3359232 * k + 324182 := by
    unfold C
    simp [show (6718464 * k + 648364) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 324182) = 1679616 * k + 162091 := by
    unfold C
    simp [show (3359232 * k + 324182) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 162091) = 5038848 * k + 486274 := by
    unfold C
    simp [show (1679616 * k + 162091) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 486274) = 2519424 * k + 243137 := by
    unfold C
    simp [show (5038848 * k + 486274) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 243137) = 7558272 * k + 729412 := by
    unfold C
    simp [show (2519424 * k + 243137) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 729412) = 3779136 * k + 364706 := by
    unfold C
    simp [show (7558272 * k + 729412) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 364706) = 1889568 * k + 182353 := by
    unfold C
    simp [show (3779136 * k + 364706) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 182353) = 5668704 * k + 547060 := by
    unfold C
    simp [show (1889568 * k + 182353) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 547060) = 2834352 * k + 273530 := by
    unfold C
    simp [show (5668704 * k + 547060) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 273530) = 1417176 * k + 136765 := by
    unfold C
    simp [show (2834352 * k + 273530) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 136765) = 4251528 * k + 410296 := by
    unfold C
    simp [show (1417176 * k + 136765) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 410296) = 2125764 * k + 205148 := by
    unfold C
    simp [show (4251528 * k + 410296) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 205148) = 1062882 * k + 102574 := by
    unfold C
    simp [show (2125764 * k + 205148) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 102574) = 531441 * k + 51287 := by
    unfold C
    simp [show (1062882 * k + 102574) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 101191) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 101191)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_102127 : ∀ k : Nat,
    iterate (1048576 * k + 102127) 32 = 531441 * k + 51761 ∧
      531441 * k + 51761 < 1048576 * k + 102127 := by
  intro k
  have h1 : C (1048576 * k + 102127) = 3145728 * k + 306382 := by
    unfold C
    simp [show (1048576 * k + 102127) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 306382) = 1572864 * k + 153191 := by
    unfold C
    simp [show (3145728 * k + 306382) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 153191) = 4718592 * k + 459574 := by
    unfold C
    simp [show (1572864 * k + 153191) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 459574) = 2359296 * k + 229787 := by
    unfold C
    simp [show (4718592 * k + 459574) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 229787) = 7077888 * k + 689362 := by
    unfold C
    simp [show (2359296 * k + 229787) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 689362) = 3538944 * k + 344681 := by
    unfold C
    simp [show (7077888 * k + 689362) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 344681) = 10616832 * k + 1034044 := by
    unfold C
    simp [show (3538944 * k + 344681) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 1034044) = 5308416 * k + 517022 := by
    unfold C
    simp [show (10616832 * k + 1034044) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 517022) = 2654208 * k + 258511 := by
    unfold C
    simp [show (5308416 * k + 517022) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 258511) = 7962624 * k + 775534 := by
    unfold C
    simp [show (2654208 * k + 258511) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 775534) = 3981312 * k + 387767 := by
    unfold C
    simp [show (7962624 * k + 775534) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 387767) = 11943936 * k + 1163302 := by
    unfold C
    simp [show (3981312 * k + 387767) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 1163302) = 5971968 * k + 581651 := by
    unfold C
    simp [show (11943936 * k + 1163302) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 581651) = 17915904 * k + 1744954 := by
    unfold C
    simp [show (5971968 * k + 581651) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 1744954) = 8957952 * k + 872477 := by
    unfold C
    simp [show (17915904 * k + 1744954) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 872477) = 26873856 * k + 2617432 := by
    unfold C
    simp [show (8957952 * k + 872477) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 2617432) = 13436928 * k + 1308716 := by
    unfold C
    simp [show (26873856 * k + 2617432) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 1308716) = 6718464 * k + 654358 := by
    unfold C
    simp [show (13436928 * k + 1308716) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 654358) = 3359232 * k + 327179 := by
    unfold C
    simp [show (6718464 * k + 654358) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 327179) = 10077696 * k + 981538 := by
    unfold C
    simp [show (3359232 * k + 327179) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 981538) = 5038848 * k + 490769 := by
    unfold C
    simp [show (10077696 * k + 981538) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 490769) = 15116544 * k + 1472308 := by
    unfold C
    simp [show (5038848 * k + 490769) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 1472308) = 7558272 * k + 736154 := by
    unfold C
    simp [show (15116544 * k + 1472308) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 736154) = 3779136 * k + 368077 := by
    unfold C
    simp [show (7558272 * k + 736154) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 368077) = 11337408 * k + 1104232 := by
    unfold C
    simp [show (3779136 * k + 368077) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 1104232) = 5668704 * k + 552116 := by
    unfold C
    simp [show (11337408 * k + 1104232) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 552116) = 2834352 * k + 276058 := by
    unfold C
    simp [show (5668704 * k + 552116) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 276058) = 1417176 * k + 138029 := by
    unfold C
    simp [show (2834352 * k + 276058) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 138029) = 4251528 * k + 414088 := by
    unfold C
    simp [show (1417176 * k + 138029) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 414088) = 2125764 * k + 207044 := by
    unfold C
    simp [show (4251528 * k + 414088) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 207044) = 1062882 * k + 103522 := by
    unfold C
    simp [show (2125764 * k + 207044) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 103522) = 531441 * k + 51761 := by
    unfold C
    simp [show (1062882 * k + 103522) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 102127) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 102127)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_102683 : ∀ k : Nat,
    iterate (1048576 * k + 102683) 32 = 531441 * k + 52043 ∧
      531441 * k + 52043 < 1048576 * k + 102683 := by
  intro k
  have h1 : C (1048576 * k + 102683) = 3145728 * k + 308050 := by
    unfold C
    simp [show (1048576 * k + 102683) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 308050) = 1572864 * k + 154025 := by
    unfold C
    simp [show (3145728 * k + 308050) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 154025) = 4718592 * k + 462076 := by
    unfold C
    simp [show (1572864 * k + 154025) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 462076) = 2359296 * k + 231038 := by
    unfold C
    simp [show (4718592 * k + 462076) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 231038) = 1179648 * k + 115519 := by
    unfold C
    simp [show (2359296 * k + 231038) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 115519) = 3538944 * k + 346558 := by
    unfold C
    simp [show (1179648 * k + 115519) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 346558) = 1769472 * k + 173279 := by
    unfold C
    simp [show (3538944 * k + 346558) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 173279) = 5308416 * k + 519838 := by
    unfold C
    simp [show (1769472 * k + 173279) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 519838) = 2654208 * k + 259919 := by
    unfold C
    simp [show (5308416 * k + 519838) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 259919) = 7962624 * k + 779758 := by
    unfold C
    simp [show (2654208 * k + 259919) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 779758) = 3981312 * k + 389879 := by
    unfold C
    simp [show (7962624 * k + 779758) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 389879) = 11943936 * k + 1169638 := by
    unfold C
    simp [show (3981312 * k + 389879) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 1169638) = 5971968 * k + 584819 := by
    unfold C
    simp [show (11943936 * k + 1169638) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 584819) = 17915904 * k + 1754458 := by
    unfold C
    simp [show (5971968 * k + 584819) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 1754458) = 8957952 * k + 877229 := by
    unfold C
    simp [show (17915904 * k + 1754458) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 877229) = 26873856 * k + 2631688 := by
    unfold C
    simp [show (8957952 * k + 877229) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 2631688) = 13436928 * k + 1315844 := by
    unfold C
    simp [show (26873856 * k + 2631688) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 1315844) = 6718464 * k + 657922 := by
    unfold C
    simp [show (13436928 * k + 1315844) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 657922) = 3359232 * k + 328961 := by
    unfold C
    simp [show (6718464 * k + 657922) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 328961) = 10077696 * k + 986884 := by
    unfold C
    simp [show (3359232 * k + 328961) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 986884) = 5038848 * k + 493442 := by
    unfold C
    simp [show (10077696 * k + 986884) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 493442) = 2519424 * k + 246721 := by
    unfold C
    simp [show (5038848 * k + 493442) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 246721) = 7558272 * k + 740164 := by
    unfold C
    simp [show (2519424 * k + 246721) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 740164) = 3779136 * k + 370082 := by
    unfold C
    simp [show (7558272 * k + 740164) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 370082) = 1889568 * k + 185041 := by
    unfold C
    simp [show (3779136 * k + 370082) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 185041) = 5668704 * k + 555124 := by
    unfold C
    simp [show (1889568 * k + 185041) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 555124) = 2834352 * k + 277562 := by
    unfold C
    simp [show (5668704 * k + 555124) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 277562) = 1417176 * k + 138781 := by
    unfold C
    simp [show (2834352 * k + 277562) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 138781) = 4251528 * k + 416344 := by
    unfold C
    simp [show (1417176 * k + 138781) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 416344) = 2125764 * k + 208172 := by
    unfold C
    simp [show (4251528 * k + 416344) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 208172) = 1062882 * k + 104086 := by
    unfold C
    simp [show (2125764 * k + 208172) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 104086) = 531441 * k + 52043 := by
    unfold C
    simp [show (1062882 * k + 104086) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 102683) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 102683)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_103039 : ∀ k : Nat,
    iterate (1048576 * k + 103039) 32 = 531441 * k + 52223 ∧
      531441 * k + 52223 < 1048576 * k + 103039 := by
  intro k
  have h1 : C (1048576 * k + 103039) = 3145728 * k + 309118 := by
    unfold C
    simp [show (1048576 * k + 103039) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 309118) = 1572864 * k + 154559 := by
    unfold C
    simp [show (3145728 * k + 309118) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 154559) = 4718592 * k + 463678 := by
    unfold C
    simp [show (1572864 * k + 154559) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 463678) = 2359296 * k + 231839 := by
    unfold C
    simp [show (4718592 * k + 463678) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 231839) = 7077888 * k + 695518 := by
    unfold C
    simp [show (2359296 * k + 231839) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 695518) = 3538944 * k + 347759 := by
    unfold C
    simp [show (7077888 * k + 695518) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 347759) = 10616832 * k + 1043278 := by
    unfold C
    simp [show (3538944 * k + 347759) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 1043278) = 5308416 * k + 521639 := by
    unfold C
    simp [show (10616832 * k + 1043278) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 521639) = 15925248 * k + 1564918 := by
    unfold C
    simp [show (5308416 * k + 521639) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 1564918) = 7962624 * k + 782459 := by
    unfold C
    simp [show (15925248 * k + 1564918) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 782459) = 23887872 * k + 2347378 := by
    unfold C
    simp [show (7962624 * k + 782459) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 2347378) = 11943936 * k + 1173689 := by
    unfold C
    simp [show (23887872 * k + 2347378) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 1173689) = 35831808 * k + 3521068 := by
    unfold C
    simp [show (11943936 * k + 1173689) % 2 ≠ 0 by omega]
    omega
  have h14 : C (35831808 * k + 3521068) = 17915904 * k + 1760534 := by
    unfold C
    simp [show (35831808 * k + 3521068) % 2 = 0 by omega]
    omega
  have h15 : C (17915904 * k + 1760534) = 8957952 * k + 880267 := by
    unfold C
    simp [show (17915904 * k + 1760534) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 880267) = 26873856 * k + 2640802 := by
    unfold C
    simp [show (8957952 * k + 880267) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 2640802) = 13436928 * k + 1320401 := by
    unfold C
    simp [show (26873856 * k + 2640802) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 1320401) = 40310784 * k + 3961204 := by
    unfold C
    simp [show (13436928 * k + 1320401) % 2 ≠ 0 by omega]
    omega
  have h19 : C (40310784 * k + 3961204) = 20155392 * k + 1980602 := by
    unfold C
    simp [show (40310784 * k + 3961204) % 2 = 0 by omega]
    omega
  have h20 : C (20155392 * k + 1980602) = 10077696 * k + 990301 := by
    unfold C
    simp [show (20155392 * k + 1980602) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 990301) = 30233088 * k + 2970904 := by
    unfold C
    simp [show (10077696 * k + 990301) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 2970904) = 15116544 * k + 1485452 := by
    unfold C
    simp [show (30233088 * k + 2970904) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 1485452) = 7558272 * k + 742726 := by
    unfold C
    simp [show (15116544 * k + 1485452) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 742726) = 3779136 * k + 371363 := by
    unfold C
    simp [show (7558272 * k + 742726) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 371363) = 11337408 * k + 1114090 := by
    unfold C
    simp [show (3779136 * k + 371363) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 1114090) = 5668704 * k + 557045 := by
    unfold C
    simp [show (11337408 * k + 1114090) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 557045) = 17006112 * k + 1671136 := by
    unfold C
    simp [show (5668704 * k + 557045) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 1671136) = 8503056 * k + 835568 := by
    unfold C
    simp [show (17006112 * k + 1671136) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 835568) = 4251528 * k + 417784 := by
    unfold C
    simp [show (8503056 * k + 835568) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 417784) = 2125764 * k + 208892 := by
    unfold C
    simp [show (4251528 * k + 417784) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 208892) = 1062882 * k + 104446 := by
    unfold C
    simp [show (2125764 * k + 208892) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 104446) = 531441 * k + 52223 := by
    unfold C
    simp [show (1062882 * k + 104446) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 103039) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 103039)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_103119 : ∀ k : Nat,
    iterate (1048576 * k + 103119) 32 = 531441 * k + 52264 ∧
      531441 * k + 52264 < 1048576 * k + 103119 := by
  intro k
  have h1 : C (1048576 * k + 103119) = 3145728 * k + 309358 := by
    unfold C
    simp [show (1048576 * k + 103119) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 309358) = 1572864 * k + 154679 := by
    unfold C
    simp [show (3145728 * k + 309358) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 154679) = 4718592 * k + 464038 := by
    unfold C
    simp [show (1572864 * k + 154679) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 464038) = 2359296 * k + 232019 := by
    unfold C
    simp [show (4718592 * k + 464038) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 232019) = 7077888 * k + 696058 := by
    unfold C
    simp [show (2359296 * k + 232019) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 696058) = 3538944 * k + 348029 := by
    unfold C
    simp [show (7077888 * k + 696058) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 348029) = 10616832 * k + 1044088 := by
    unfold C
    simp [show (3538944 * k + 348029) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 1044088) = 5308416 * k + 522044 := by
    unfold C
    simp [show (10616832 * k + 1044088) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 522044) = 2654208 * k + 261022 := by
    unfold C
    simp [show (5308416 * k + 522044) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 261022) = 1327104 * k + 130511 := by
    unfold C
    simp [show (2654208 * k + 261022) % 2 = 0 by omega]
    omega
  have h11 : C (1327104 * k + 130511) = 3981312 * k + 391534 := by
    unfold C
    simp [show (1327104 * k + 130511) % 2 ≠ 0 by omega]
    omega
  have h12 : C (3981312 * k + 391534) = 1990656 * k + 195767 := by
    unfold C
    simp [show (3981312 * k + 391534) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 195767) = 5971968 * k + 587302 := by
    unfold C
    simp [show (1990656 * k + 195767) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 587302) = 2985984 * k + 293651 := by
    unfold C
    simp [show (5971968 * k + 587302) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 293651) = 8957952 * k + 880954 := by
    unfold C
    simp [show (2985984 * k + 293651) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 880954) = 4478976 * k + 440477 := by
    unfold C
    simp [show (8957952 * k + 880954) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 440477) = 13436928 * k + 1321432 := by
    unfold C
    simp [show (4478976 * k + 440477) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 1321432) = 6718464 * k + 660716 := by
    unfold C
    simp [show (13436928 * k + 1321432) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 660716) = 3359232 * k + 330358 := by
    unfold C
    simp [show (6718464 * k + 660716) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 330358) = 1679616 * k + 165179 := by
    unfold C
    simp [show (3359232 * k + 330358) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 165179) = 5038848 * k + 495538 := by
    unfold C
    simp [show (1679616 * k + 165179) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 495538) = 2519424 * k + 247769 := by
    unfold C
    simp [show (5038848 * k + 495538) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 247769) = 7558272 * k + 743308 := by
    unfold C
    simp [show (2519424 * k + 247769) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 743308) = 3779136 * k + 371654 := by
    unfold C
    simp [show (7558272 * k + 743308) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 371654) = 1889568 * k + 185827 := by
    unfold C
    simp [show (3779136 * k + 371654) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 185827) = 5668704 * k + 557482 := by
    unfold C
    simp [show (1889568 * k + 185827) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 557482) = 2834352 * k + 278741 := by
    unfold C
    simp [show (5668704 * k + 557482) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 278741) = 8503056 * k + 836224 := by
    unfold C
    simp [show (2834352 * k + 278741) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 836224) = 4251528 * k + 418112 := by
    unfold C
    simp [show (8503056 * k + 836224) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 418112) = 2125764 * k + 209056 := by
    unfold C
    simp [show (4251528 * k + 418112) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 209056) = 1062882 * k + 104528 := by
    unfold C
    simp [show (2125764 * k + 209056) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 104528) = 531441 * k + 52264 := by
    unfold C
    simp [show (1062882 * k + 104528) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 103119) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 103119)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_103451 : ∀ k : Nat,
    iterate (1048576 * k + 103451) 32 = 531441 * k + 52432 ∧
      531441 * k + 52432 < 1048576 * k + 103451 := by
  intro k
  have h1 : C (1048576 * k + 103451) = 3145728 * k + 310354 := by
    unfold C
    simp [show (1048576 * k + 103451) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 310354) = 1572864 * k + 155177 := by
    unfold C
    simp [show (3145728 * k + 310354) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 155177) = 4718592 * k + 465532 := by
    unfold C
    simp [show (1572864 * k + 155177) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 465532) = 2359296 * k + 232766 := by
    unfold C
    simp [show (4718592 * k + 465532) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 232766) = 1179648 * k + 116383 := by
    unfold C
    simp [show (2359296 * k + 232766) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 116383) = 3538944 * k + 349150 := by
    unfold C
    simp [show (1179648 * k + 116383) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 349150) = 1769472 * k + 174575 := by
    unfold C
    simp [show (3538944 * k + 349150) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 174575) = 5308416 * k + 523726 := by
    unfold C
    simp [show (1769472 * k + 174575) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 523726) = 2654208 * k + 261863 := by
    unfold C
    simp [show (5308416 * k + 523726) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 261863) = 7962624 * k + 785590 := by
    unfold C
    simp [show (2654208 * k + 261863) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 785590) = 3981312 * k + 392795 := by
    unfold C
    simp [show (7962624 * k + 785590) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 392795) = 11943936 * k + 1178386 := by
    unfold C
    simp [show (3981312 * k + 392795) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 1178386) = 5971968 * k + 589193 := by
    unfold C
    simp [show (11943936 * k + 1178386) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 589193) = 17915904 * k + 1767580 := by
    unfold C
    simp [show (5971968 * k + 589193) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 1767580) = 8957952 * k + 883790 := by
    unfold C
    simp [show (17915904 * k + 1767580) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 883790) = 4478976 * k + 441895 := by
    unfold C
    simp [show (8957952 * k + 883790) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 441895) = 13436928 * k + 1325686 := by
    unfold C
    simp [show (4478976 * k + 441895) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 1325686) = 6718464 * k + 662843 := by
    unfold C
    simp [show (13436928 * k + 1325686) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 662843) = 20155392 * k + 1988530 := by
    unfold C
    simp [show (6718464 * k + 662843) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 1988530) = 10077696 * k + 994265 := by
    unfold C
    simp [show (20155392 * k + 1988530) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 994265) = 30233088 * k + 2982796 := by
    unfold C
    simp [show (10077696 * k + 994265) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 2982796) = 15116544 * k + 1491398 := by
    unfold C
    simp [show (30233088 * k + 2982796) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 1491398) = 7558272 * k + 745699 := by
    unfold C
    simp [show (15116544 * k + 1491398) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 745699) = 22674816 * k + 2237098 := by
    unfold C
    simp [show (7558272 * k + 745699) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 2237098) = 11337408 * k + 1118549 := by
    unfold C
    simp [show (22674816 * k + 2237098) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 1118549) = 34012224 * k + 3355648 := by
    unfold C
    simp [show (11337408 * k + 1118549) % 2 ≠ 0 by omega]
    omega
  have h27 : C (34012224 * k + 3355648) = 17006112 * k + 1677824 := by
    unfold C
    simp [show (34012224 * k + 3355648) % 2 = 0 by omega]
    omega
  have h28 : C (17006112 * k + 1677824) = 8503056 * k + 838912 := by
    unfold C
    simp [show (17006112 * k + 1677824) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 838912) = 4251528 * k + 419456 := by
    unfold C
    simp [show (8503056 * k + 838912) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 419456) = 2125764 * k + 209728 := by
    unfold C
    simp [show (4251528 * k + 419456) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 209728) = 1062882 * k + 104864 := by
    unfold C
    simp [show (2125764 * k + 209728) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 104864) = 531441 * k + 52432 := by
    unfold C
    simp [show (1062882 * k + 104864) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 103451) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 103451)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_104167 : ∀ k : Nat,
    iterate (1048576 * k + 104167) 32 = 531441 * k + 52795 ∧
      531441 * k + 52795 < 1048576 * k + 104167 := by
  intro k
  have h1 : C (1048576 * k + 104167) = 3145728 * k + 312502 := by
    unfold C
    simp [show (1048576 * k + 104167) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 312502) = 1572864 * k + 156251 := by
    unfold C
    simp [show (3145728 * k + 312502) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 156251) = 4718592 * k + 468754 := by
    unfold C
    simp [show (1572864 * k + 156251) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 468754) = 2359296 * k + 234377 := by
    unfold C
    simp [show (4718592 * k + 468754) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 234377) = 7077888 * k + 703132 := by
    unfold C
    simp [show (2359296 * k + 234377) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 703132) = 3538944 * k + 351566 := by
    unfold C
    simp [show (7077888 * k + 703132) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 351566) = 1769472 * k + 175783 := by
    unfold C
    simp [show (3538944 * k + 351566) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 175783) = 5308416 * k + 527350 := by
    unfold C
    simp [show (1769472 * k + 175783) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 527350) = 2654208 * k + 263675 := by
    unfold C
    simp [show (5308416 * k + 527350) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 263675) = 7962624 * k + 791026 := by
    unfold C
    simp [show (2654208 * k + 263675) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 791026) = 3981312 * k + 395513 := by
    unfold C
    simp [show (7962624 * k + 791026) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 395513) = 11943936 * k + 1186540 := by
    unfold C
    simp [show (3981312 * k + 395513) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 1186540) = 5971968 * k + 593270 := by
    unfold C
    simp [show (11943936 * k + 1186540) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 593270) = 2985984 * k + 296635 := by
    unfold C
    simp [show (5971968 * k + 593270) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 296635) = 8957952 * k + 889906 := by
    unfold C
    simp [show (2985984 * k + 296635) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 889906) = 4478976 * k + 444953 := by
    unfold C
    simp [show (8957952 * k + 889906) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 444953) = 13436928 * k + 1334860 := by
    unfold C
    simp [show (4478976 * k + 444953) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 1334860) = 6718464 * k + 667430 := by
    unfold C
    simp [show (13436928 * k + 1334860) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 667430) = 3359232 * k + 333715 := by
    unfold C
    simp [show (6718464 * k + 667430) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 333715) = 10077696 * k + 1001146 := by
    unfold C
    simp [show (3359232 * k + 333715) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 1001146) = 5038848 * k + 500573 := by
    unfold C
    simp [show (10077696 * k + 1001146) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 500573) = 15116544 * k + 1501720 := by
    unfold C
    simp [show (5038848 * k + 500573) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 1501720) = 7558272 * k + 750860 := by
    unfold C
    simp [show (15116544 * k + 1501720) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 750860) = 3779136 * k + 375430 := by
    unfold C
    simp [show (7558272 * k + 750860) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 375430) = 1889568 * k + 187715 := by
    unfold C
    simp [show (3779136 * k + 375430) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 187715) = 5668704 * k + 563146 := by
    unfold C
    simp [show (1889568 * k + 187715) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 563146) = 2834352 * k + 281573 := by
    unfold C
    simp [show (5668704 * k + 563146) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 281573) = 8503056 * k + 844720 := by
    unfold C
    simp [show (2834352 * k + 281573) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 844720) = 4251528 * k + 422360 := by
    unfold C
    simp [show (8503056 * k + 844720) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 422360) = 2125764 * k + 211180 := by
    unfold C
    simp [show (4251528 * k + 422360) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 211180) = 1062882 * k + 105590 := by
    unfold C
    simp [show (2125764 * k + 211180) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 105590) = 531441 * k + 52795 := by
    unfold C
    simp [show (1062882 * k + 105590) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 104167) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 104167)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_104859 : ∀ k : Nat,
    iterate (1048576 * k + 104859) 32 = 531441 * k + 53146 ∧
      531441 * k + 53146 < 1048576 * k + 104859 := by
  intro k
  have h1 : C (1048576 * k + 104859) = 3145728 * k + 314578 := by
    unfold C
    simp [show (1048576 * k + 104859) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 314578) = 1572864 * k + 157289 := by
    unfold C
    simp [show (3145728 * k + 314578) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 157289) = 4718592 * k + 471868 := by
    unfold C
    simp [show (1572864 * k + 157289) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 471868) = 2359296 * k + 235934 := by
    unfold C
    simp [show (4718592 * k + 471868) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 235934) = 1179648 * k + 117967 := by
    unfold C
    simp [show (2359296 * k + 235934) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 117967) = 3538944 * k + 353902 := by
    unfold C
    simp [show (1179648 * k + 117967) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 353902) = 1769472 * k + 176951 := by
    unfold C
    simp [show (3538944 * k + 353902) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 176951) = 5308416 * k + 530854 := by
    unfold C
    simp [show (1769472 * k + 176951) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 530854) = 2654208 * k + 265427 := by
    unfold C
    simp [show (5308416 * k + 530854) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 265427) = 7962624 * k + 796282 := by
    unfold C
    simp [show (2654208 * k + 265427) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 796282) = 3981312 * k + 398141 := by
    unfold C
    simp [show (7962624 * k + 796282) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 398141) = 11943936 * k + 1194424 := by
    unfold C
    simp [show (3981312 * k + 398141) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 1194424) = 5971968 * k + 597212 := by
    unfold C
    simp [show (11943936 * k + 1194424) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 597212) = 2985984 * k + 298606 := by
    unfold C
    simp [show (5971968 * k + 597212) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 298606) = 1492992 * k + 149303 := by
    unfold C
    simp [show (2985984 * k + 298606) % 2 = 0 by omega]
    omega
  have h16 : C (1492992 * k + 149303) = 4478976 * k + 447910 := by
    unfold C
    simp [show (1492992 * k + 149303) % 2 ≠ 0 by omega]
    omega
  have h17 : C (4478976 * k + 447910) = 2239488 * k + 223955 := by
    unfold C
    simp [show (4478976 * k + 447910) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 223955) = 6718464 * k + 671866 := by
    unfold C
    simp [show (2239488 * k + 223955) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 671866) = 3359232 * k + 335933 := by
    unfold C
    simp [show (6718464 * k + 671866) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 335933) = 10077696 * k + 1007800 := by
    unfold C
    simp [show (3359232 * k + 335933) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 1007800) = 5038848 * k + 503900 := by
    unfold C
    simp [show (10077696 * k + 1007800) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 503900) = 2519424 * k + 251950 := by
    unfold C
    simp [show (5038848 * k + 503900) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 251950) = 1259712 * k + 125975 := by
    unfold C
    simp [show (2519424 * k + 251950) % 2 = 0 by omega]
    omega
  have h24 : C (1259712 * k + 125975) = 3779136 * k + 377926 := by
    unfold C
    simp [show (1259712 * k + 125975) % 2 ≠ 0 by omega]
    omega
  have h25 : C (3779136 * k + 377926) = 1889568 * k + 188963 := by
    unfold C
    simp [show (3779136 * k + 377926) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 188963) = 5668704 * k + 566890 := by
    unfold C
    simp [show (1889568 * k + 188963) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 566890) = 2834352 * k + 283445 := by
    unfold C
    simp [show (5668704 * k + 566890) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 283445) = 8503056 * k + 850336 := by
    unfold C
    simp [show (2834352 * k + 283445) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 850336) = 4251528 * k + 425168 := by
    unfold C
    simp [show (8503056 * k + 850336) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 425168) = 2125764 * k + 212584 := by
    unfold C
    simp [show (4251528 * k + 425168) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 212584) = 1062882 * k + 106292 := by
    unfold C
    simp [show (2125764 * k + 212584) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 106292) = 531441 * k + 53146 := by
    unfold C
    simp [show (1062882 * k + 106292) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 104859) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 104859)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_104927 : ∀ k : Nat,
    iterate (1048576 * k + 104927) 32 = 531441 * k + 53180 ∧
      531441 * k + 53180 < 1048576 * k + 104927 := by
  intro k
  have h1 : C (1048576 * k + 104927) = 3145728 * k + 314782 := by
    unfold C
    simp [show (1048576 * k + 104927) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 314782) = 1572864 * k + 157391 := by
    unfold C
    simp [show (3145728 * k + 314782) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 157391) = 4718592 * k + 472174 := by
    unfold C
    simp [show (1572864 * k + 157391) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 472174) = 2359296 * k + 236087 := by
    unfold C
    simp [show (4718592 * k + 472174) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 236087) = 7077888 * k + 708262 := by
    unfold C
    simp [show (2359296 * k + 236087) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 708262) = 3538944 * k + 354131 := by
    unfold C
    simp [show (7077888 * k + 708262) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 354131) = 10616832 * k + 1062394 := by
    unfold C
    simp [show (3538944 * k + 354131) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 1062394) = 5308416 * k + 531197 := by
    unfold C
    simp [show (10616832 * k + 1062394) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 531197) = 15925248 * k + 1593592 := by
    unfold C
    simp [show (5308416 * k + 531197) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 1593592) = 7962624 * k + 796796 := by
    unfold C
    simp [show (15925248 * k + 1593592) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 796796) = 3981312 * k + 398398 := by
    unfold C
    simp [show (7962624 * k + 796796) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 398398) = 1990656 * k + 199199 := by
    unfold C
    simp [show (3981312 * k + 398398) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 199199) = 5971968 * k + 597598 := by
    unfold C
    simp [show (1990656 * k + 199199) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 597598) = 2985984 * k + 298799 := by
    unfold C
    simp [show (5971968 * k + 597598) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 298799) = 8957952 * k + 896398 := by
    unfold C
    simp [show (2985984 * k + 298799) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 896398) = 4478976 * k + 448199 := by
    unfold C
    simp [show (8957952 * k + 896398) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 448199) = 13436928 * k + 1344598 := by
    unfold C
    simp [show (4478976 * k + 448199) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 1344598) = 6718464 * k + 672299 := by
    unfold C
    simp [show (13436928 * k + 1344598) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 672299) = 20155392 * k + 2016898 := by
    unfold C
    simp [show (6718464 * k + 672299) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 2016898) = 10077696 * k + 1008449 := by
    unfold C
    simp [show (20155392 * k + 2016898) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 1008449) = 30233088 * k + 3025348 := by
    unfold C
    simp [show (10077696 * k + 1008449) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 3025348) = 15116544 * k + 1512674 := by
    unfold C
    simp [show (30233088 * k + 3025348) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 1512674) = 7558272 * k + 756337 := by
    unfold C
    simp [show (15116544 * k + 1512674) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 756337) = 22674816 * k + 2269012 := by
    unfold C
    simp [show (7558272 * k + 756337) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 2269012) = 11337408 * k + 1134506 := by
    unfold C
    simp [show (22674816 * k + 2269012) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 1134506) = 5668704 * k + 567253 := by
    unfold C
    simp [show (11337408 * k + 1134506) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 567253) = 17006112 * k + 1701760 := by
    unfold C
    simp [show (5668704 * k + 567253) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 1701760) = 8503056 * k + 850880 := by
    unfold C
    simp [show (17006112 * k + 1701760) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 850880) = 4251528 * k + 425440 := by
    unfold C
    simp [show (8503056 * k + 850880) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 425440) = 2125764 * k + 212720 := by
    unfold C
    simp [show (4251528 * k + 425440) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 212720) = 1062882 * k + 106360 := by
    unfold C
    simp [show (2125764 * k + 212720) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 106360) = 531441 * k + 53180 := by
    unfold C
    simp [show (1062882 * k + 106360) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 104927) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 104927)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_105755 : ∀ k : Nat,
    iterate (1048576 * k + 105755) 32 = 531441 * k + 53600 ∧
      531441 * k + 53600 < 1048576 * k + 105755 := by
  intro k
  have h1 : C (1048576 * k + 105755) = 3145728 * k + 317266 := by
    unfold C
    simp [show (1048576 * k + 105755) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 317266) = 1572864 * k + 158633 := by
    unfold C
    simp [show (3145728 * k + 317266) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 158633) = 4718592 * k + 475900 := by
    unfold C
    simp [show (1572864 * k + 158633) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 475900) = 2359296 * k + 237950 := by
    unfold C
    simp [show (4718592 * k + 475900) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 237950) = 1179648 * k + 118975 := by
    unfold C
    simp [show (2359296 * k + 237950) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 118975) = 3538944 * k + 356926 := by
    unfold C
    simp [show (1179648 * k + 118975) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 356926) = 1769472 * k + 178463 := by
    unfold C
    simp [show (3538944 * k + 356926) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 178463) = 5308416 * k + 535390 := by
    unfold C
    simp [show (1769472 * k + 178463) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 535390) = 2654208 * k + 267695 := by
    unfold C
    simp [show (5308416 * k + 535390) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 267695) = 7962624 * k + 803086 := by
    unfold C
    simp [show (2654208 * k + 267695) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 803086) = 3981312 * k + 401543 := by
    unfold C
    simp [show (7962624 * k + 803086) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 401543) = 11943936 * k + 1204630 := by
    unfold C
    simp [show (3981312 * k + 401543) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 1204630) = 5971968 * k + 602315 := by
    unfold C
    simp [show (11943936 * k + 1204630) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 602315) = 17915904 * k + 1806946 := by
    unfold C
    simp [show (5971968 * k + 602315) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 1806946) = 8957952 * k + 903473 := by
    unfold C
    simp [show (17915904 * k + 1806946) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 903473) = 26873856 * k + 2710420 := by
    unfold C
    simp [show (8957952 * k + 903473) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 2710420) = 13436928 * k + 1355210 := by
    unfold C
    simp [show (26873856 * k + 2710420) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 1355210) = 6718464 * k + 677605 := by
    unfold C
    simp [show (13436928 * k + 1355210) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 677605) = 20155392 * k + 2032816 := by
    unfold C
    simp [show (6718464 * k + 677605) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 2032816) = 10077696 * k + 1016408 := by
    unfold C
    simp [show (20155392 * k + 2032816) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 1016408) = 5038848 * k + 508204 := by
    unfold C
    simp [show (10077696 * k + 1016408) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 508204) = 2519424 * k + 254102 := by
    unfold C
    simp [show (5038848 * k + 508204) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 254102) = 1259712 * k + 127051 := by
    unfold C
    simp [show (2519424 * k + 254102) % 2 = 0 by omega]
    omega
  have h24 : C (1259712 * k + 127051) = 3779136 * k + 381154 := by
    unfold C
    simp [show (1259712 * k + 127051) % 2 ≠ 0 by omega]
    omega
  have h25 : C (3779136 * k + 381154) = 1889568 * k + 190577 := by
    unfold C
    simp [show (3779136 * k + 381154) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 190577) = 5668704 * k + 571732 := by
    unfold C
    simp [show (1889568 * k + 190577) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 571732) = 2834352 * k + 285866 := by
    unfold C
    simp [show (5668704 * k + 571732) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 285866) = 1417176 * k + 142933 := by
    unfold C
    simp [show (2834352 * k + 285866) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 142933) = 4251528 * k + 428800 := by
    unfold C
    simp [show (1417176 * k + 142933) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 428800) = 2125764 * k + 214400 := by
    unfold C
    simp [show (4251528 * k + 428800) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 214400) = 1062882 * k + 107200 := by
    unfold C
    simp [show (2125764 * k + 214400) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 107200) = 531441 * k + 53600 := by
    unfold C
    simp [show (1062882 * k + 107200) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 105755) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 105755)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_105883 : ∀ k : Nat,
    iterate (1048576 * k + 105883) 32 = 531441 * k + 53665 ∧
      531441 * k + 53665 < 1048576 * k + 105883 := by
  intro k
  have h1 : C (1048576 * k + 105883) = 3145728 * k + 317650 := by
    unfold C
    simp [show (1048576 * k + 105883) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 317650) = 1572864 * k + 158825 := by
    unfold C
    simp [show (3145728 * k + 317650) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 158825) = 4718592 * k + 476476 := by
    unfold C
    simp [show (1572864 * k + 158825) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 476476) = 2359296 * k + 238238 := by
    unfold C
    simp [show (4718592 * k + 476476) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 238238) = 1179648 * k + 119119 := by
    unfold C
    simp [show (2359296 * k + 238238) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 119119) = 3538944 * k + 357358 := by
    unfold C
    simp [show (1179648 * k + 119119) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 357358) = 1769472 * k + 178679 := by
    unfold C
    simp [show (3538944 * k + 357358) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 178679) = 5308416 * k + 536038 := by
    unfold C
    simp [show (1769472 * k + 178679) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 536038) = 2654208 * k + 268019 := by
    unfold C
    simp [show (5308416 * k + 536038) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 268019) = 7962624 * k + 804058 := by
    unfold C
    simp [show (2654208 * k + 268019) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 804058) = 3981312 * k + 402029 := by
    unfold C
    simp [show (7962624 * k + 804058) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 402029) = 11943936 * k + 1206088 := by
    unfold C
    simp [show (3981312 * k + 402029) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 1206088) = 5971968 * k + 603044 := by
    unfold C
    simp [show (11943936 * k + 1206088) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 603044) = 2985984 * k + 301522 := by
    unfold C
    simp [show (5971968 * k + 603044) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 301522) = 1492992 * k + 150761 := by
    unfold C
    simp [show (2985984 * k + 301522) % 2 = 0 by omega]
    omega
  have h16 : C (1492992 * k + 150761) = 4478976 * k + 452284 := by
    unfold C
    simp [show (1492992 * k + 150761) % 2 ≠ 0 by omega]
    omega
  have h17 : C (4478976 * k + 452284) = 2239488 * k + 226142 := by
    unfold C
    simp [show (4478976 * k + 452284) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 226142) = 1119744 * k + 113071 := by
    unfold C
    simp [show (2239488 * k + 226142) % 2 = 0 by omega]
    omega
  have h19 : C (1119744 * k + 113071) = 3359232 * k + 339214 := by
    unfold C
    simp [show (1119744 * k + 113071) % 2 ≠ 0 by omega]
    omega
  have h20 : C (3359232 * k + 339214) = 1679616 * k + 169607 := by
    unfold C
    simp [show (3359232 * k + 339214) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 169607) = 5038848 * k + 508822 := by
    unfold C
    simp [show (1679616 * k + 169607) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 508822) = 2519424 * k + 254411 := by
    unfold C
    simp [show (5038848 * k + 508822) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 254411) = 7558272 * k + 763234 := by
    unfold C
    simp [show (2519424 * k + 254411) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 763234) = 3779136 * k + 381617 := by
    unfold C
    simp [show (7558272 * k + 763234) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 381617) = 11337408 * k + 1144852 := by
    unfold C
    simp [show (3779136 * k + 381617) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 1144852) = 5668704 * k + 572426 := by
    unfold C
    simp [show (11337408 * k + 1144852) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 572426) = 2834352 * k + 286213 := by
    unfold C
    simp [show (5668704 * k + 572426) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 286213) = 8503056 * k + 858640 := by
    unfold C
    simp [show (2834352 * k + 286213) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 858640) = 4251528 * k + 429320 := by
    unfold C
    simp [show (8503056 * k + 858640) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 429320) = 2125764 * k + 214660 := by
    unfold C
    simp [show (4251528 * k + 429320) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 214660) = 1062882 * k + 107330 := by
    unfold C
    simp [show (2125764 * k + 214660) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 107330) = 531441 * k + 53665 := by
    unfold C
    simp [show (1062882 * k + 107330) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 105883) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 105883)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_106111 : ∀ k : Nat,
    iterate (1048576 * k + 106111) 32 = 531441 * k + 53780 ∧
      531441 * k + 53780 < 1048576 * k + 106111 := by
  intro k
  have h1 : C (1048576 * k + 106111) = 3145728 * k + 318334 := by
    unfold C
    simp [show (1048576 * k + 106111) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 318334) = 1572864 * k + 159167 := by
    unfold C
    simp [show (3145728 * k + 318334) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 159167) = 4718592 * k + 477502 := by
    unfold C
    simp [show (1572864 * k + 159167) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 477502) = 2359296 * k + 238751 := by
    unfold C
    simp [show (4718592 * k + 477502) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 238751) = 7077888 * k + 716254 := by
    unfold C
    simp [show (2359296 * k + 238751) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 716254) = 3538944 * k + 358127 := by
    unfold C
    simp [show (7077888 * k + 716254) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 358127) = 10616832 * k + 1074382 := by
    unfold C
    simp [show (3538944 * k + 358127) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 1074382) = 5308416 * k + 537191 := by
    unfold C
    simp [show (10616832 * k + 1074382) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 537191) = 15925248 * k + 1611574 := by
    unfold C
    simp [show (5308416 * k + 537191) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 1611574) = 7962624 * k + 805787 := by
    unfold C
    simp [show (15925248 * k + 1611574) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 805787) = 23887872 * k + 2417362 := by
    unfold C
    simp [show (7962624 * k + 805787) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 2417362) = 11943936 * k + 1208681 := by
    unfold C
    simp [show (23887872 * k + 2417362) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 1208681) = 35831808 * k + 3626044 := by
    unfold C
    simp [show (11943936 * k + 1208681) % 2 ≠ 0 by omega]
    omega
  have h14 : C (35831808 * k + 3626044) = 17915904 * k + 1813022 := by
    unfold C
    simp [show (35831808 * k + 3626044) % 2 = 0 by omega]
    omega
  have h15 : C (17915904 * k + 1813022) = 8957952 * k + 906511 := by
    unfold C
    simp [show (17915904 * k + 1813022) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 906511) = 26873856 * k + 2719534 := by
    unfold C
    simp [show (8957952 * k + 906511) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 2719534) = 13436928 * k + 1359767 := by
    unfold C
    simp [show (26873856 * k + 2719534) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 1359767) = 40310784 * k + 4079302 := by
    unfold C
    simp [show (13436928 * k + 1359767) % 2 ≠ 0 by omega]
    omega
  have h19 : C (40310784 * k + 4079302) = 20155392 * k + 2039651 := by
    unfold C
    simp [show (40310784 * k + 4079302) % 2 = 0 by omega]
    omega
  have h20 : C (20155392 * k + 2039651) = 60466176 * k + 6118954 := by
    unfold C
    simp [show (20155392 * k + 2039651) % 2 ≠ 0 by omega]
    omega
  have h21 : C (60466176 * k + 6118954) = 30233088 * k + 3059477 := by
    unfold C
    simp [show (60466176 * k + 6118954) % 2 = 0 by omega]
    omega
  have h22 : C (30233088 * k + 3059477) = 90699264 * k + 9178432 := by
    unfold C
    simp [show (30233088 * k + 3059477) % 2 ≠ 0 by omega]
    omega
  have h23 : C (90699264 * k + 9178432) = 45349632 * k + 4589216 := by
    unfold C
    simp [show (90699264 * k + 9178432) % 2 = 0 by omega]
    omega
  have h24 : C (45349632 * k + 4589216) = 22674816 * k + 2294608 := by
    unfold C
    simp [show (45349632 * k + 4589216) % 2 = 0 by omega]
    omega
  have h25 : C (22674816 * k + 2294608) = 11337408 * k + 1147304 := by
    unfold C
    simp [show (22674816 * k + 2294608) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 1147304) = 5668704 * k + 573652 := by
    unfold C
    simp [show (11337408 * k + 1147304) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 573652) = 2834352 * k + 286826 := by
    unfold C
    simp [show (5668704 * k + 573652) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 286826) = 1417176 * k + 143413 := by
    unfold C
    simp [show (2834352 * k + 286826) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 143413) = 4251528 * k + 430240 := by
    unfold C
    simp [show (1417176 * k + 143413) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 430240) = 2125764 * k + 215120 := by
    unfold C
    simp [show (4251528 * k + 430240) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 215120) = 1062882 * k + 107560 := by
    unfold C
    simp [show (2125764 * k + 215120) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 107560) = 531441 * k + 53780 := by
    unfold C
    simp [show (1062882 * k + 107560) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 106111) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 106111)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

end CollatzM20Shard015
