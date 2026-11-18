import Mathlib.Data.Nat.Prime.Basic

namespace CollatzM20Shard084

def C (n : Nat) : Nat := if n % 2 = 0 then n / 2 else 3 * n + 1

def iterate (n t : Nat) : Nat := Nat.rec n (fun _ previous => C previous) t

theorem descent_mod1048576_646127 : ∀ k : Nat,
    iterate (1048576 * k + 646127) 32 = 531441 * k + 327472 ∧
      531441 * k + 327472 < 1048576 * k + 646127 := by
  intro k
  have h1 : C (1048576 * k + 646127) = 3145728 * k + 1938382 := by
    unfold C
    simp [show (1048576 * k + 646127) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1938382) = 1572864 * k + 969191 := by
    unfold C
    simp [show (3145728 * k + 1938382) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 969191) = 4718592 * k + 2907574 := by
    unfold C
    simp [show (1572864 * k + 969191) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2907574) = 2359296 * k + 1453787 := by
    unfold C
    simp [show (4718592 * k + 2907574) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1453787) = 7077888 * k + 4361362 := by
    unfold C
    simp [show (2359296 * k + 1453787) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 4361362) = 3538944 * k + 2180681 := by
    unfold C
    simp [show (7077888 * k + 4361362) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2180681) = 10616832 * k + 6542044 := by
    unfold C
    simp [show (3538944 * k + 2180681) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 6542044) = 5308416 * k + 3271022 := by
    unfold C
    simp [show (10616832 * k + 6542044) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 3271022) = 2654208 * k + 1635511 := by
    unfold C
    simp [show (5308416 * k + 3271022) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1635511) = 7962624 * k + 4906534 := by
    unfold C
    simp [show (2654208 * k + 1635511) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 4906534) = 3981312 * k + 2453267 := by
    unfold C
    simp [show (7962624 * k + 4906534) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 2453267) = 11943936 * k + 7359802 := by
    unfold C
    simp [show (3981312 * k + 2453267) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 7359802) = 5971968 * k + 3679901 := by
    unfold C
    simp [show (11943936 * k + 7359802) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 3679901) = 17915904 * k + 11039704 := by
    unfold C
    simp [show (5971968 * k + 3679901) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 11039704) = 8957952 * k + 5519852 := by
    unfold C
    simp [show (17915904 * k + 11039704) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 5519852) = 4478976 * k + 2759926 := by
    unfold C
    simp [show (8957952 * k + 5519852) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 2759926) = 2239488 * k + 1379963 := by
    unfold C
    simp [show (4478976 * k + 2759926) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 1379963) = 6718464 * k + 4139890 := by
    unfold C
    simp [show (2239488 * k + 1379963) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 4139890) = 3359232 * k + 2069945 := by
    unfold C
    simp [show (6718464 * k + 4139890) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 2069945) = 10077696 * k + 6209836 := by
    unfold C
    simp [show (3359232 * k + 2069945) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 6209836) = 5038848 * k + 3104918 := by
    unfold C
    simp [show (10077696 * k + 6209836) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 3104918) = 2519424 * k + 1552459 := by
    unfold C
    simp [show (5038848 * k + 3104918) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1552459) = 7558272 * k + 4657378 := by
    unfold C
    simp [show (2519424 * k + 1552459) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 4657378) = 3779136 * k + 2328689 := by
    unfold C
    simp [show (7558272 * k + 4657378) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 2328689) = 11337408 * k + 6986068 := by
    unfold C
    simp [show (3779136 * k + 2328689) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 6986068) = 5668704 * k + 3493034 := by
    unfold C
    simp [show (11337408 * k + 6986068) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 3493034) = 2834352 * k + 1746517 := by
    unfold C
    simp [show (5668704 * k + 3493034) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1746517) = 8503056 * k + 5239552 := by
    unfold C
    simp [show (2834352 * k + 1746517) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 5239552) = 4251528 * k + 2619776 := by
    unfold C
    simp [show (8503056 * k + 5239552) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 2619776) = 2125764 * k + 1309888 := by
    unfold C
    simp [show (4251528 * k + 2619776) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1309888) = 1062882 * k + 654944 := by
    unfold C
    simp [show (2125764 * k + 1309888) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 654944) = 531441 * k + 327472 := by
    unfold C
    simp [show (1062882 * k + 654944) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 646127) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 646127)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_646703 : ∀ k : Nat,
    iterate (1048576 * k + 646703) 32 = 531441 * k + 327764 ∧
      531441 * k + 327764 < 1048576 * k + 646703 := by
  intro k
  have h1 : C (1048576 * k + 646703) = 3145728 * k + 1940110 := by
    unfold C
    simp [show (1048576 * k + 646703) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1940110) = 1572864 * k + 970055 := by
    unfold C
    simp [show (3145728 * k + 1940110) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 970055) = 4718592 * k + 2910166 := by
    unfold C
    simp [show (1572864 * k + 970055) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2910166) = 2359296 * k + 1455083 := by
    unfold C
    simp [show (4718592 * k + 2910166) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1455083) = 7077888 * k + 4365250 := by
    unfold C
    simp [show (2359296 * k + 1455083) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 4365250) = 3538944 * k + 2182625 := by
    unfold C
    simp [show (7077888 * k + 4365250) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2182625) = 10616832 * k + 6547876 := by
    unfold C
    simp [show (3538944 * k + 2182625) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 6547876) = 5308416 * k + 3273938 := by
    unfold C
    simp [show (10616832 * k + 6547876) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 3273938) = 2654208 * k + 1636969 := by
    unfold C
    simp [show (5308416 * k + 3273938) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1636969) = 7962624 * k + 4910908 := by
    unfold C
    simp [show (2654208 * k + 1636969) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 4910908) = 3981312 * k + 2455454 := by
    unfold C
    simp [show (7962624 * k + 4910908) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 2455454) = 1990656 * k + 1227727 := by
    unfold C
    simp [show (3981312 * k + 2455454) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 1227727) = 5971968 * k + 3683182 := by
    unfold C
    simp [show (1990656 * k + 1227727) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 3683182) = 2985984 * k + 1841591 := by
    unfold C
    simp [show (5971968 * k + 3683182) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1841591) = 8957952 * k + 5524774 := by
    unfold C
    simp [show (2985984 * k + 1841591) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 5524774) = 4478976 * k + 2762387 := by
    unfold C
    simp [show (8957952 * k + 5524774) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 2762387) = 13436928 * k + 8287162 := by
    unfold C
    simp [show (4478976 * k + 2762387) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 8287162) = 6718464 * k + 4143581 := by
    unfold C
    simp [show (13436928 * k + 8287162) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 4143581) = 20155392 * k + 12430744 := by
    unfold C
    simp [show (6718464 * k + 4143581) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 12430744) = 10077696 * k + 6215372 := by
    unfold C
    simp [show (20155392 * k + 12430744) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 6215372) = 5038848 * k + 3107686 := by
    unfold C
    simp [show (10077696 * k + 6215372) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 3107686) = 2519424 * k + 1553843 := by
    unfold C
    simp [show (5038848 * k + 3107686) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1553843) = 7558272 * k + 4661530 := by
    unfold C
    simp [show (2519424 * k + 1553843) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 4661530) = 3779136 * k + 2330765 := by
    unfold C
    simp [show (7558272 * k + 4661530) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 2330765) = 11337408 * k + 6992296 := by
    unfold C
    simp [show (3779136 * k + 2330765) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 6992296) = 5668704 * k + 3496148 := by
    unfold C
    simp [show (11337408 * k + 6992296) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 3496148) = 2834352 * k + 1748074 := by
    unfold C
    simp [show (5668704 * k + 3496148) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1748074) = 1417176 * k + 874037 := by
    unfold C
    simp [show (2834352 * k + 1748074) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 874037) = 4251528 * k + 2622112 := by
    unfold C
    simp [show (1417176 * k + 874037) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 2622112) = 2125764 * k + 1311056 := by
    unfold C
    simp [show (4251528 * k + 2622112) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1311056) = 1062882 * k + 655528 := by
    unfold C
    simp [show (2125764 * k + 1311056) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 655528) = 531441 * k + 327764 := by
    unfold C
    simp [show (1062882 * k + 655528) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 646703) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 646703)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_646975 : ∀ k : Nat,
    iterate (1048576 * k + 646975) 32 = 531441 * k + 327902 ∧
      531441 * k + 327902 < 1048576 * k + 646975 := by
  intro k
  have h1 : C (1048576 * k + 646975) = 3145728 * k + 1940926 := by
    unfold C
    simp [show (1048576 * k + 646975) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1940926) = 1572864 * k + 970463 := by
    unfold C
    simp [show (3145728 * k + 1940926) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 970463) = 4718592 * k + 2911390 := by
    unfold C
    simp [show (1572864 * k + 970463) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2911390) = 2359296 * k + 1455695 := by
    unfold C
    simp [show (4718592 * k + 2911390) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1455695) = 7077888 * k + 4367086 := by
    unfold C
    simp [show (2359296 * k + 1455695) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 4367086) = 3538944 * k + 2183543 := by
    unfold C
    simp [show (7077888 * k + 4367086) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2183543) = 10616832 * k + 6550630 := by
    unfold C
    simp [show (3538944 * k + 2183543) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 6550630) = 5308416 * k + 3275315 := by
    unfold C
    simp [show (10616832 * k + 6550630) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 3275315) = 15925248 * k + 9825946 := by
    unfold C
    simp [show (5308416 * k + 3275315) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 9825946) = 7962624 * k + 4912973 := by
    unfold C
    simp [show (15925248 * k + 9825946) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 4912973) = 23887872 * k + 14738920 := by
    unfold C
    simp [show (7962624 * k + 4912973) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 14738920) = 11943936 * k + 7369460 := by
    unfold C
    simp [show (23887872 * k + 14738920) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 7369460) = 5971968 * k + 3684730 := by
    unfold C
    simp [show (11943936 * k + 7369460) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 3684730) = 2985984 * k + 1842365 := by
    unfold C
    simp [show (5971968 * k + 3684730) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1842365) = 8957952 * k + 5527096 := by
    unfold C
    simp [show (2985984 * k + 1842365) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 5527096) = 4478976 * k + 2763548 := by
    unfold C
    simp [show (8957952 * k + 5527096) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 2763548) = 2239488 * k + 1381774 := by
    unfold C
    simp [show (4478976 * k + 2763548) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 1381774) = 1119744 * k + 690887 := by
    unfold C
    simp [show (2239488 * k + 1381774) % 2 = 0 by omega]
    omega
  have h19 : C (1119744 * k + 690887) = 3359232 * k + 2072662 := by
    unfold C
    simp [show (1119744 * k + 690887) % 2 ≠ 0 by omega]
    omega
  have h20 : C (3359232 * k + 2072662) = 1679616 * k + 1036331 := by
    unfold C
    simp [show (3359232 * k + 2072662) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 1036331) = 5038848 * k + 3108994 := by
    unfold C
    simp [show (1679616 * k + 1036331) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 3108994) = 2519424 * k + 1554497 := by
    unfold C
    simp [show (5038848 * k + 3108994) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1554497) = 7558272 * k + 4663492 := by
    unfold C
    simp [show (2519424 * k + 1554497) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 4663492) = 3779136 * k + 2331746 := by
    unfold C
    simp [show (7558272 * k + 4663492) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 2331746) = 1889568 * k + 1165873 := by
    unfold C
    simp [show (3779136 * k + 2331746) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1165873) = 5668704 * k + 3497620 := by
    unfold C
    simp [show (1889568 * k + 1165873) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 3497620) = 2834352 * k + 1748810 := by
    unfold C
    simp [show (5668704 * k + 3497620) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1748810) = 1417176 * k + 874405 := by
    unfold C
    simp [show (2834352 * k + 1748810) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 874405) = 4251528 * k + 2623216 := by
    unfold C
    simp [show (1417176 * k + 874405) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 2623216) = 2125764 * k + 1311608 := by
    unfold C
    simp [show (4251528 * k + 2623216) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1311608) = 1062882 * k + 655804 := by
    unfold C
    simp [show (2125764 * k + 1311608) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 655804) = 531441 * k + 327902 := by
    unfold C
    simp [show (1062882 * k + 655804) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 646975) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 646975)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_647295 : ∀ k : Nat,
    iterate (1048576 * k + 647295) 32 = 531441 * k + 328064 ∧
      531441 * k + 328064 < 1048576 * k + 647295 := by
  intro k
  have h1 : C (1048576 * k + 647295) = 3145728 * k + 1941886 := by
    unfold C
    simp [show (1048576 * k + 647295) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1941886) = 1572864 * k + 970943 := by
    unfold C
    simp [show (3145728 * k + 1941886) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 970943) = 4718592 * k + 2912830 := by
    unfold C
    simp [show (1572864 * k + 970943) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2912830) = 2359296 * k + 1456415 := by
    unfold C
    simp [show (4718592 * k + 2912830) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1456415) = 7077888 * k + 4369246 := by
    unfold C
    simp [show (2359296 * k + 1456415) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 4369246) = 3538944 * k + 2184623 := by
    unfold C
    simp [show (7077888 * k + 4369246) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2184623) = 10616832 * k + 6553870 := by
    unfold C
    simp [show (3538944 * k + 2184623) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 6553870) = 5308416 * k + 3276935 := by
    unfold C
    simp [show (10616832 * k + 6553870) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 3276935) = 15925248 * k + 9830806 := by
    unfold C
    simp [show (5308416 * k + 3276935) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 9830806) = 7962624 * k + 4915403 := by
    unfold C
    simp [show (15925248 * k + 9830806) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 4915403) = 23887872 * k + 14746210 := by
    unfold C
    simp [show (7962624 * k + 4915403) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 14746210) = 11943936 * k + 7373105 := by
    unfold C
    simp [show (23887872 * k + 14746210) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 7373105) = 35831808 * k + 22119316 := by
    unfold C
    simp [show (11943936 * k + 7373105) % 2 ≠ 0 by omega]
    omega
  have h14 : C (35831808 * k + 22119316) = 17915904 * k + 11059658 := by
    unfold C
    simp [show (35831808 * k + 22119316) % 2 = 0 by omega]
    omega
  have h15 : C (17915904 * k + 11059658) = 8957952 * k + 5529829 := by
    unfold C
    simp [show (17915904 * k + 11059658) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 5529829) = 26873856 * k + 16589488 := by
    unfold C
    simp [show (8957952 * k + 5529829) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 16589488) = 13436928 * k + 8294744 := by
    unfold C
    simp [show (26873856 * k + 16589488) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 8294744) = 6718464 * k + 4147372 := by
    unfold C
    simp [show (13436928 * k + 8294744) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 4147372) = 3359232 * k + 2073686 := by
    unfold C
    simp [show (6718464 * k + 4147372) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 2073686) = 1679616 * k + 1036843 := by
    unfold C
    simp [show (3359232 * k + 2073686) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 1036843) = 5038848 * k + 3110530 := by
    unfold C
    simp [show (1679616 * k + 1036843) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 3110530) = 2519424 * k + 1555265 := by
    unfold C
    simp [show (5038848 * k + 3110530) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1555265) = 7558272 * k + 4665796 := by
    unfold C
    simp [show (2519424 * k + 1555265) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 4665796) = 3779136 * k + 2332898 := by
    unfold C
    simp [show (7558272 * k + 4665796) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 2332898) = 1889568 * k + 1166449 := by
    unfold C
    simp [show (3779136 * k + 2332898) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1166449) = 5668704 * k + 3499348 := by
    unfold C
    simp [show (1889568 * k + 1166449) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 3499348) = 2834352 * k + 1749674 := by
    unfold C
    simp [show (5668704 * k + 3499348) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1749674) = 1417176 * k + 874837 := by
    unfold C
    simp [show (2834352 * k + 1749674) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 874837) = 4251528 * k + 2624512 := by
    unfold C
    simp [show (1417176 * k + 874837) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 2624512) = 2125764 * k + 1312256 := by
    unfold C
    simp [show (4251528 * k + 2624512) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1312256) = 1062882 * k + 656128 := by
    unfold C
    simp [show (2125764 * k + 1312256) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 656128) = 531441 * k + 328064 := by
    unfold C
    simp [show (1062882 * k + 656128) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 647295) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 647295)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_647419 : ∀ k : Nat,
    iterate (1048576 * k + 647419) 32 = 531441 * k + 328127 ∧
      531441 * k + 328127 < 1048576 * k + 647419 := by
  intro k
  have h1 : C (1048576 * k + 647419) = 3145728 * k + 1942258 := by
    unfold C
    simp [show (1048576 * k + 647419) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1942258) = 1572864 * k + 971129 := by
    unfold C
    simp [show (3145728 * k + 1942258) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 971129) = 4718592 * k + 2913388 := by
    unfold C
    simp [show (1572864 * k + 971129) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2913388) = 2359296 * k + 1456694 := by
    unfold C
    simp [show (4718592 * k + 2913388) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1456694) = 1179648 * k + 728347 := by
    unfold C
    simp [show (2359296 * k + 1456694) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 728347) = 3538944 * k + 2185042 := by
    unfold C
    simp [show (1179648 * k + 728347) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 2185042) = 1769472 * k + 1092521 := by
    unfold C
    simp [show (3538944 * k + 2185042) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1092521) = 5308416 * k + 3277564 := by
    unfold C
    simp [show (1769472 * k + 1092521) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 3277564) = 2654208 * k + 1638782 := by
    unfold C
    simp [show (5308416 * k + 3277564) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1638782) = 1327104 * k + 819391 := by
    unfold C
    simp [show (2654208 * k + 1638782) % 2 = 0 by omega]
    omega
  have h11 : C (1327104 * k + 819391) = 3981312 * k + 2458174 := by
    unfold C
    simp [show (1327104 * k + 819391) % 2 ≠ 0 by omega]
    omega
  have h12 : C (3981312 * k + 2458174) = 1990656 * k + 1229087 := by
    unfold C
    simp [show (3981312 * k + 2458174) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 1229087) = 5971968 * k + 3687262 := by
    unfold C
    simp [show (1990656 * k + 1229087) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 3687262) = 2985984 * k + 1843631 := by
    unfold C
    simp [show (5971968 * k + 3687262) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1843631) = 8957952 * k + 5530894 := by
    unfold C
    simp [show (2985984 * k + 1843631) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 5530894) = 4478976 * k + 2765447 := by
    unfold C
    simp [show (8957952 * k + 5530894) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 2765447) = 13436928 * k + 8296342 := by
    unfold C
    simp [show (4478976 * k + 2765447) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 8296342) = 6718464 * k + 4148171 := by
    unfold C
    simp [show (13436928 * k + 8296342) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 4148171) = 20155392 * k + 12444514 := by
    unfold C
    simp [show (6718464 * k + 4148171) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 12444514) = 10077696 * k + 6222257 := by
    unfold C
    simp [show (20155392 * k + 12444514) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 6222257) = 30233088 * k + 18666772 := by
    unfold C
    simp [show (10077696 * k + 6222257) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 18666772) = 15116544 * k + 9333386 := by
    unfold C
    simp [show (30233088 * k + 18666772) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 9333386) = 7558272 * k + 4666693 := by
    unfold C
    simp [show (15116544 * k + 9333386) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 4666693) = 22674816 * k + 14000080 := by
    unfold C
    simp [show (7558272 * k + 4666693) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 14000080) = 11337408 * k + 7000040 := by
    unfold C
    simp [show (22674816 * k + 14000080) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 7000040) = 5668704 * k + 3500020 := by
    unfold C
    simp [show (11337408 * k + 7000040) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 3500020) = 2834352 * k + 1750010 := by
    unfold C
    simp [show (5668704 * k + 3500020) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1750010) = 1417176 * k + 875005 := by
    unfold C
    simp [show (2834352 * k + 1750010) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 875005) = 4251528 * k + 2625016 := by
    unfold C
    simp [show (1417176 * k + 875005) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 2625016) = 2125764 * k + 1312508 := by
    unfold C
    simp [show (4251528 * k + 2625016) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1312508) = 1062882 * k + 656254 := by
    unfold C
    simp [show (2125764 * k + 1312508) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 656254) = 531441 * k + 328127 := by
    unfold C
    simp [show (1062882 * k + 656254) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 647419) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 647419)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_647615 : ∀ k : Nat,
    iterate (1048576 * k + 647615) 32 = 531441 * k + 328226 ∧
      531441 * k + 328226 < 1048576 * k + 647615 := by
  intro k
  have h1 : C (1048576 * k + 647615) = 3145728 * k + 1942846 := by
    unfold C
    simp [show (1048576 * k + 647615) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1942846) = 1572864 * k + 971423 := by
    unfold C
    simp [show (3145728 * k + 1942846) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 971423) = 4718592 * k + 2914270 := by
    unfold C
    simp [show (1572864 * k + 971423) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2914270) = 2359296 * k + 1457135 := by
    unfold C
    simp [show (4718592 * k + 2914270) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1457135) = 7077888 * k + 4371406 := by
    unfold C
    simp [show (2359296 * k + 1457135) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 4371406) = 3538944 * k + 2185703 := by
    unfold C
    simp [show (7077888 * k + 4371406) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2185703) = 10616832 * k + 6557110 := by
    unfold C
    simp [show (3538944 * k + 2185703) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 6557110) = 5308416 * k + 3278555 := by
    unfold C
    simp [show (10616832 * k + 6557110) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 3278555) = 15925248 * k + 9835666 := by
    unfold C
    simp [show (5308416 * k + 3278555) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 9835666) = 7962624 * k + 4917833 := by
    unfold C
    simp [show (15925248 * k + 9835666) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 4917833) = 23887872 * k + 14753500 := by
    unfold C
    simp [show (7962624 * k + 4917833) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 14753500) = 11943936 * k + 7376750 := by
    unfold C
    simp [show (23887872 * k + 14753500) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 7376750) = 5971968 * k + 3688375 := by
    unfold C
    simp [show (11943936 * k + 7376750) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 3688375) = 17915904 * k + 11065126 := by
    unfold C
    simp [show (5971968 * k + 3688375) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 11065126) = 8957952 * k + 5532563 := by
    unfold C
    simp [show (17915904 * k + 11065126) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 5532563) = 26873856 * k + 16597690 := by
    unfold C
    simp [show (8957952 * k + 5532563) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 16597690) = 13436928 * k + 8298845 := by
    unfold C
    simp [show (26873856 * k + 16597690) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 8298845) = 40310784 * k + 24896536 := by
    unfold C
    simp [show (13436928 * k + 8298845) % 2 ≠ 0 by omega]
    omega
  have h19 : C (40310784 * k + 24896536) = 20155392 * k + 12448268 := by
    unfold C
    simp [show (40310784 * k + 24896536) % 2 = 0 by omega]
    omega
  have h20 : C (20155392 * k + 12448268) = 10077696 * k + 6224134 := by
    unfold C
    simp [show (20155392 * k + 12448268) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 6224134) = 5038848 * k + 3112067 := by
    unfold C
    simp [show (10077696 * k + 6224134) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 3112067) = 15116544 * k + 9336202 := by
    unfold C
    simp [show (5038848 * k + 3112067) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 9336202) = 7558272 * k + 4668101 := by
    unfold C
    simp [show (15116544 * k + 9336202) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 4668101) = 22674816 * k + 14004304 := by
    unfold C
    simp [show (7558272 * k + 4668101) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 14004304) = 11337408 * k + 7002152 := by
    unfold C
    simp [show (22674816 * k + 14004304) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 7002152) = 5668704 * k + 3501076 := by
    unfold C
    simp [show (11337408 * k + 7002152) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 3501076) = 2834352 * k + 1750538 := by
    unfold C
    simp [show (5668704 * k + 3501076) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1750538) = 1417176 * k + 875269 := by
    unfold C
    simp [show (2834352 * k + 1750538) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 875269) = 4251528 * k + 2625808 := by
    unfold C
    simp [show (1417176 * k + 875269) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 2625808) = 2125764 * k + 1312904 := by
    unfold C
    simp [show (4251528 * k + 2625808) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1312904) = 1062882 * k + 656452 := by
    unfold C
    simp [show (2125764 * k + 1312904) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 656452) = 531441 * k + 328226 := by
    unfold C
    simp [show (1062882 * k + 656452) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 647615) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 647615)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_648263 : ∀ k : Nat,
    iterate (1048576 * k + 648263) 32 = 531441 * k + 328555 ∧
      531441 * k + 328555 < 1048576 * k + 648263 := by
  intro k
  have h1 : C (1048576 * k + 648263) = 3145728 * k + 1944790 := by
    unfold C
    simp [show (1048576 * k + 648263) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1944790) = 1572864 * k + 972395 := by
    unfold C
    simp [show (3145728 * k + 1944790) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 972395) = 4718592 * k + 2917186 := by
    unfold C
    simp [show (1572864 * k + 972395) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2917186) = 2359296 * k + 1458593 := by
    unfold C
    simp [show (4718592 * k + 2917186) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1458593) = 7077888 * k + 4375780 := by
    unfold C
    simp [show (2359296 * k + 1458593) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 4375780) = 3538944 * k + 2187890 := by
    unfold C
    simp [show (7077888 * k + 4375780) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2187890) = 1769472 * k + 1093945 := by
    unfold C
    simp [show (3538944 * k + 2187890) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1093945) = 5308416 * k + 3281836 := by
    unfold C
    simp [show (1769472 * k + 1093945) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 3281836) = 2654208 * k + 1640918 := by
    unfold C
    simp [show (5308416 * k + 3281836) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1640918) = 1327104 * k + 820459 := by
    unfold C
    simp [show (2654208 * k + 1640918) % 2 = 0 by omega]
    omega
  have h11 : C (1327104 * k + 820459) = 3981312 * k + 2461378 := by
    unfold C
    simp [show (1327104 * k + 820459) % 2 ≠ 0 by omega]
    omega
  have h12 : C (3981312 * k + 2461378) = 1990656 * k + 1230689 := by
    unfold C
    simp [show (3981312 * k + 2461378) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 1230689) = 5971968 * k + 3692068 := by
    unfold C
    simp [show (1990656 * k + 1230689) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 3692068) = 2985984 * k + 1846034 := by
    unfold C
    simp [show (5971968 * k + 3692068) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1846034) = 1492992 * k + 923017 := by
    unfold C
    simp [show (2985984 * k + 1846034) % 2 = 0 by omega]
    omega
  have h16 : C (1492992 * k + 923017) = 4478976 * k + 2769052 := by
    unfold C
    simp [show (1492992 * k + 923017) % 2 ≠ 0 by omega]
    omega
  have h17 : C (4478976 * k + 2769052) = 2239488 * k + 1384526 := by
    unfold C
    simp [show (4478976 * k + 2769052) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 1384526) = 1119744 * k + 692263 := by
    unfold C
    simp [show (2239488 * k + 1384526) % 2 = 0 by omega]
    omega
  have h19 : C (1119744 * k + 692263) = 3359232 * k + 2076790 := by
    unfold C
    simp [show (1119744 * k + 692263) % 2 ≠ 0 by omega]
    omega
  have h20 : C (3359232 * k + 2076790) = 1679616 * k + 1038395 := by
    unfold C
    simp [show (3359232 * k + 2076790) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 1038395) = 5038848 * k + 3115186 := by
    unfold C
    simp [show (1679616 * k + 1038395) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 3115186) = 2519424 * k + 1557593 := by
    unfold C
    simp [show (5038848 * k + 3115186) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1557593) = 7558272 * k + 4672780 := by
    unfold C
    simp [show (2519424 * k + 1557593) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 4672780) = 3779136 * k + 2336390 := by
    unfold C
    simp [show (7558272 * k + 4672780) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 2336390) = 1889568 * k + 1168195 := by
    unfold C
    simp [show (3779136 * k + 2336390) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1168195) = 5668704 * k + 3504586 := by
    unfold C
    simp [show (1889568 * k + 1168195) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 3504586) = 2834352 * k + 1752293 := by
    unfold C
    simp [show (5668704 * k + 3504586) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1752293) = 8503056 * k + 5256880 := by
    unfold C
    simp [show (2834352 * k + 1752293) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 5256880) = 4251528 * k + 2628440 := by
    unfold C
    simp [show (8503056 * k + 5256880) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 2628440) = 2125764 * k + 1314220 := by
    unfold C
    simp [show (4251528 * k + 2628440) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1314220) = 1062882 * k + 657110 := by
    unfold C
    simp [show (2125764 * k + 1314220) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 657110) = 531441 * k + 328555 := by
    unfold C
    simp [show (1062882 * k + 657110) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 648263) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 648263)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_648911 : ∀ k : Nat,
    iterate (1048576 * k + 648911) 32 = 531441 * k + 328883 ∧
      531441 * k + 328883 < 1048576 * k + 648911 := by
  intro k
  have h1 : C (1048576 * k + 648911) = 3145728 * k + 1946734 := by
    unfold C
    simp [show (1048576 * k + 648911) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1946734) = 1572864 * k + 973367 := by
    unfold C
    simp [show (3145728 * k + 1946734) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 973367) = 4718592 * k + 2920102 := by
    unfold C
    simp [show (1572864 * k + 973367) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2920102) = 2359296 * k + 1460051 := by
    unfold C
    simp [show (4718592 * k + 2920102) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1460051) = 7077888 * k + 4380154 := by
    unfold C
    simp [show (2359296 * k + 1460051) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 4380154) = 3538944 * k + 2190077 := by
    unfold C
    simp [show (7077888 * k + 4380154) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2190077) = 10616832 * k + 6570232 := by
    unfold C
    simp [show (3538944 * k + 2190077) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 6570232) = 5308416 * k + 3285116 := by
    unfold C
    simp [show (10616832 * k + 6570232) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 3285116) = 2654208 * k + 1642558 := by
    unfold C
    simp [show (5308416 * k + 3285116) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1642558) = 1327104 * k + 821279 := by
    unfold C
    simp [show (2654208 * k + 1642558) % 2 = 0 by omega]
    omega
  have h11 : C (1327104 * k + 821279) = 3981312 * k + 2463838 := by
    unfold C
    simp [show (1327104 * k + 821279) % 2 ≠ 0 by omega]
    omega
  have h12 : C (3981312 * k + 2463838) = 1990656 * k + 1231919 := by
    unfold C
    simp [show (3981312 * k + 2463838) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 1231919) = 5971968 * k + 3695758 := by
    unfold C
    simp [show (1990656 * k + 1231919) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 3695758) = 2985984 * k + 1847879 := by
    unfold C
    simp [show (5971968 * k + 3695758) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1847879) = 8957952 * k + 5543638 := by
    unfold C
    simp [show (2985984 * k + 1847879) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 5543638) = 4478976 * k + 2771819 := by
    unfold C
    simp [show (8957952 * k + 5543638) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 2771819) = 13436928 * k + 8315458 := by
    unfold C
    simp [show (4478976 * k + 2771819) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 8315458) = 6718464 * k + 4157729 := by
    unfold C
    simp [show (13436928 * k + 8315458) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 4157729) = 20155392 * k + 12473188 := by
    unfold C
    simp [show (6718464 * k + 4157729) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 12473188) = 10077696 * k + 6236594 := by
    unfold C
    simp [show (20155392 * k + 12473188) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 6236594) = 5038848 * k + 3118297 := by
    unfold C
    simp [show (10077696 * k + 6236594) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 3118297) = 15116544 * k + 9354892 := by
    unfold C
    simp [show (5038848 * k + 3118297) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 9354892) = 7558272 * k + 4677446 := by
    unfold C
    simp [show (15116544 * k + 9354892) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 4677446) = 3779136 * k + 2338723 := by
    unfold C
    simp [show (7558272 * k + 4677446) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 2338723) = 11337408 * k + 7016170 := by
    unfold C
    simp [show (3779136 * k + 2338723) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 7016170) = 5668704 * k + 3508085 := by
    unfold C
    simp [show (11337408 * k + 7016170) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 3508085) = 17006112 * k + 10524256 := by
    unfold C
    simp [show (5668704 * k + 3508085) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 10524256) = 8503056 * k + 5262128 := by
    unfold C
    simp [show (17006112 * k + 10524256) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 5262128) = 4251528 * k + 2631064 := by
    unfold C
    simp [show (8503056 * k + 5262128) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 2631064) = 2125764 * k + 1315532 := by
    unfold C
    simp [show (4251528 * k + 2631064) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1315532) = 1062882 * k + 657766 := by
    unfold C
    simp [show (2125764 * k + 1315532) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 657766) = 531441 * k + 328883 := by
    unfold C
    simp [show (1062882 * k + 657766) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 648911) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 648911)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_649627 : ∀ k : Nat,
    iterate (1048576 * k + 649627) 32 = 531441 * k + 329246 ∧
      531441 * k + 329246 < 1048576 * k + 649627 := by
  intro k
  have h1 : C (1048576 * k + 649627) = 3145728 * k + 1948882 := by
    unfold C
    simp [show (1048576 * k + 649627) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1948882) = 1572864 * k + 974441 := by
    unfold C
    simp [show (3145728 * k + 1948882) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 974441) = 4718592 * k + 2923324 := by
    unfold C
    simp [show (1572864 * k + 974441) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2923324) = 2359296 * k + 1461662 := by
    unfold C
    simp [show (4718592 * k + 2923324) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1461662) = 1179648 * k + 730831 := by
    unfold C
    simp [show (2359296 * k + 1461662) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 730831) = 3538944 * k + 2192494 := by
    unfold C
    simp [show (1179648 * k + 730831) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 2192494) = 1769472 * k + 1096247 := by
    unfold C
    simp [show (3538944 * k + 2192494) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1096247) = 5308416 * k + 3288742 := by
    unfold C
    simp [show (1769472 * k + 1096247) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 3288742) = 2654208 * k + 1644371 := by
    unfold C
    simp [show (5308416 * k + 3288742) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1644371) = 7962624 * k + 4933114 := by
    unfold C
    simp [show (2654208 * k + 1644371) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 4933114) = 3981312 * k + 2466557 := by
    unfold C
    simp [show (7962624 * k + 4933114) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 2466557) = 11943936 * k + 7399672 := by
    unfold C
    simp [show (3981312 * k + 2466557) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 7399672) = 5971968 * k + 3699836 := by
    unfold C
    simp [show (11943936 * k + 7399672) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 3699836) = 2985984 * k + 1849918 := by
    unfold C
    simp [show (5971968 * k + 3699836) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1849918) = 1492992 * k + 924959 := by
    unfold C
    simp [show (2985984 * k + 1849918) % 2 = 0 by omega]
    omega
  have h16 : C (1492992 * k + 924959) = 4478976 * k + 2774878 := by
    unfold C
    simp [show (1492992 * k + 924959) % 2 ≠ 0 by omega]
    omega
  have h17 : C (4478976 * k + 2774878) = 2239488 * k + 1387439 := by
    unfold C
    simp [show (4478976 * k + 2774878) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 1387439) = 6718464 * k + 4162318 := by
    unfold C
    simp [show (2239488 * k + 1387439) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 4162318) = 3359232 * k + 2081159 := by
    unfold C
    simp [show (6718464 * k + 4162318) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 2081159) = 10077696 * k + 6243478 := by
    unfold C
    simp [show (3359232 * k + 2081159) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 6243478) = 5038848 * k + 3121739 := by
    unfold C
    simp [show (10077696 * k + 6243478) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 3121739) = 15116544 * k + 9365218 := by
    unfold C
    simp [show (5038848 * k + 3121739) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 9365218) = 7558272 * k + 4682609 := by
    unfold C
    simp [show (15116544 * k + 9365218) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 4682609) = 22674816 * k + 14047828 := by
    unfold C
    simp [show (7558272 * k + 4682609) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 14047828) = 11337408 * k + 7023914 := by
    unfold C
    simp [show (22674816 * k + 14047828) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 7023914) = 5668704 * k + 3511957 := by
    unfold C
    simp [show (11337408 * k + 7023914) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 3511957) = 17006112 * k + 10535872 := by
    unfold C
    simp [show (5668704 * k + 3511957) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 10535872) = 8503056 * k + 5267936 := by
    unfold C
    simp [show (17006112 * k + 10535872) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 5267936) = 4251528 * k + 2633968 := by
    unfold C
    simp [show (8503056 * k + 5267936) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 2633968) = 2125764 * k + 1316984 := by
    unfold C
    simp [show (4251528 * k + 2633968) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1316984) = 1062882 * k + 658492 := by
    unfold C
    simp [show (2125764 * k + 1316984) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 658492) = 531441 * k + 329246 := by
    unfold C
    simp [show (1062882 * k + 658492) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 649627) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 649627)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_649631 : ∀ k : Nat,
    iterate (1048576 * k + 649631) 32 = 531441 * k + 329248 ∧
      531441 * k + 329248 < 1048576 * k + 649631 := by
  intro k
  have h1 : C (1048576 * k + 649631) = 3145728 * k + 1948894 := by
    unfold C
    simp [show (1048576 * k + 649631) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1948894) = 1572864 * k + 974447 := by
    unfold C
    simp [show (3145728 * k + 1948894) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 974447) = 4718592 * k + 2923342 := by
    unfold C
    simp [show (1572864 * k + 974447) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2923342) = 2359296 * k + 1461671 := by
    unfold C
    simp [show (4718592 * k + 2923342) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1461671) = 7077888 * k + 4385014 := by
    unfold C
    simp [show (2359296 * k + 1461671) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 4385014) = 3538944 * k + 2192507 := by
    unfold C
    simp [show (7077888 * k + 4385014) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2192507) = 10616832 * k + 6577522 := by
    unfold C
    simp [show (3538944 * k + 2192507) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 6577522) = 5308416 * k + 3288761 := by
    unfold C
    simp [show (10616832 * k + 6577522) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 3288761) = 15925248 * k + 9866284 := by
    unfold C
    simp [show (5308416 * k + 3288761) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 9866284) = 7962624 * k + 4933142 := by
    unfold C
    simp [show (15925248 * k + 9866284) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 4933142) = 3981312 * k + 2466571 := by
    unfold C
    simp [show (7962624 * k + 4933142) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 2466571) = 11943936 * k + 7399714 := by
    unfold C
    simp [show (3981312 * k + 2466571) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 7399714) = 5971968 * k + 3699857 := by
    unfold C
    simp [show (11943936 * k + 7399714) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 3699857) = 17915904 * k + 11099572 := by
    unfold C
    simp [show (5971968 * k + 3699857) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 11099572) = 8957952 * k + 5549786 := by
    unfold C
    simp [show (17915904 * k + 11099572) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 5549786) = 4478976 * k + 2774893 := by
    unfold C
    simp [show (8957952 * k + 5549786) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 2774893) = 13436928 * k + 8324680 := by
    unfold C
    simp [show (4478976 * k + 2774893) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 8324680) = 6718464 * k + 4162340 := by
    unfold C
    simp [show (13436928 * k + 8324680) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 4162340) = 3359232 * k + 2081170 := by
    unfold C
    simp [show (6718464 * k + 4162340) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 2081170) = 1679616 * k + 1040585 := by
    unfold C
    simp [show (3359232 * k + 2081170) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 1040585) = 5038848 * k + 3121756 := by
    unfold C
    simp [show (1679616 * k + 1040585) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 3121756) = 2519424 * k + 1560878 := by
    unfold C
    simp [show (5038848 * k + 3121756) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1560878) = 1259712 * k + 780439 := by
    unfold C
    simp [show (2519424 * k + 1560878) % 2 = 0 by omega]
    omega
  have h24 : C (1259712 * k + 780439) = 3779136 * k + 2341318 := by
    unfold C
    simp [show (1259712 * k + 780439) % 2 ≠ 0 by omega]
    omega
  have h25 : C (3779136 * k + 2341318) = 1889568 * k + 1170659 := by
    unfold C
    simp [show (3779136 * k + 2341318) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1170659) = 5668704 * k + 3511978 := by
    unfold C
    simp [show (1889568 * k + 1170659) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 3511978) = 2834352 * k + 1755989 := by
    unfold C
    simp [show (5668704 * k + 3511978) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1755989) = 8503056 * k + 5267968 := by
    unfold C
    simp [show (2834352 * k + 1755989) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 5267968) = 4251528 * k + 2633984 := by
    unfold C
    simp [show (8503056 * k + 5267968) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 2633984) = 2125764 * k + 1316992 := by
    unfold C
    simp [show (4251528 * k + 2633984) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1316992) = 1062882 * k + 658496 := by
    unfold C
    simp [show (2125764 * k + 1316992) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 658496) = 531441 * k + 329248 := by
    unfold C
    simp [show (1062882 * k + 658496) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 649631) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 649631)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_650331 : ∀ k : Nat,
    iterate (1048576 * k + 650331) 32 = 531441 * k + 329603 ∧
      531441 * k + 329603 < 1048576 * k + 650331 := by
  intro k
  have h1 : C (1048576 * k + 650331) = 3145728 * k + 1950994 := by
    unfold C
    simp [show (1048576 * k + 650331) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1950994) = 1572864 * k + 975497 := by
    unfold C
    simp [show (3145728 * k + 1950994) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 975497) = 4718592 * k + 2926492 := by
    unfold C
    simp [show (1572864 * k + 975497) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2926492) = 2359296 * k + 1463246 := by
    unfold C
    simp [show (4718592 * k + 2926492) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1463246) = 1179648 * k + 731623 := by
    unfold C
    simp [show (2359296 * k + 1463246) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 731623) = 3538944 * k + 2194870 := by
    unfold C
    simp [show (1179648 * k + 731623) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 2194870) = 1769472 * k + 1097435 := by
    unfold C
    simp [show (3538944 * k + 2194870) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1097435) = 5308416 * k + 3292306 := by
    unfold C
    simp [show (1769472 * k + 1097435) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 3292306) = 2654208 * k + 1646153 := by
    unfold C
    simp [show (5308416 * k + 3292306) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1646153) = 7962624 * k + 4938460 := by
    unfold C
    simp [show (2654208 * k + 1646153) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 4938460) = 3981312 * k + 2469230 := by
    unfold C
    simp [show (7962624 * k + 4938460) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 2469230) = 1990656 * k + 1234615 := by
    unfold C
    simp [show (3981312 * k + 2469230) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 1234615) = 5971968 * k + 3703846 := by
    unfold C
    simp [show (1990656 * k + 1234615) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 3703846) = 2985984 * k + 1851923 := by
    unfold C
    simp [show (5971968 * k + 3703846) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1851923) = 8957952 * k + 5555770 := by
    unfold C
    simp [show (2985984 * k + 1851923) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 5555770) = 4478976 * k + 2777885 := by
    unfold C
    simp [show (8957952 * k + 5555770) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 2777885) = 13436928 * k + 8333656 := by
    unfold C
    simp [show (4478976 * k + 2777885) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 8333656) = 6718464 * k + 4166828 := by
    unfold C
    simp [show (13436928 * k + 8333656) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 4166828) = 3359232 * k + 2083414 := by
    unfold C
    simp [show (6718464 * k + 4166828) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 2083414) = 1679616 * k + 1041707 := by
    unfold C
    simp [show (3359232 * k + 2083414) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 1041707) = 5038848 * k + 3125122 := by
    unfold C
    simp [show (1679616 * k + 1041707) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 3125122) = 2519424 * k + 1562561 := by
    unfold C
    simp [show (5038848 * k + 3125122) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1562561) = 7558272 * k + 4687684 := by
    unfold C
    simp [show (2519424 * k + 1562561) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 4687684) = 3779136 * k + 2343842 := by
    unfold C
    simp [show (7558272 * k + 4687684) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 2343842) = 1889568 * k + 1171921 := by
    unfold C
    simp [show (3779136 * k + 2343842) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1171921) = 5668704 * k + 3515764 := by
    unfold C
    simp [show (1889568 * k + 1171921) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 3515764) = 2834352 * k + 1757882 := by
    unfold C
    simp [show (5668704 * k + 3515764) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1757882) = 1417176 * k + 878941 := by
    unfold C
    simp [show (2834352 * k + 1757882) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 878941) = 4251528 * k + 2636824 := by
    unfold C
    simp [show (1417176 * k + 878941) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 2636824) = 2125764 * k + 1318412 := by
    unfold C
    simp [show (4251528 * k + 2636824) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1318412) = 1062882 * k + 659206 := by
    unfold C
    simp [show (2125764 * k + 1318412) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 659206) = 531441 * k + 329603 := by
    unfold C
    simp [show (1062882 * k + 659206) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 650331) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 650331)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_650491 : ∀ k : Nat,
    iterate (1048576 * k + 650491) 32 = 531441 * k + 329684 ∧
      531441 * k + 329684 < 1048576 * k + 650491 := by
  intro k
  have h1 : C (1048576 * k + 650491) = 3145728 * k + 1951474 := by
    unfold C
    simp [show (1048576 * k + 650491) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1951474) = 1572864 * k + 975737 := by
    unfold C
    simp [show (3145728 * k + 1951474) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 975737) = 4718592 * k + 2927212 := by
    unfold C
    simp [show (1572864 * k + 975737) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2927212) = 2359296 * k + 1463606 := by
    unfold C
    simp [show (4718592 * k + 2927212) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1463606) = 1179648 * k + 731803 := by
    unfold C
    simp [show (2359296 * k + 1463606) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 731803) = 3538944 * k + 2195410 := by
    unfold C
    simp [show (1179648 * k + 731803) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 2195410) = 1769472 * k + 1097705 := by
    unfold C
    simp [show (3538944 * k + 2195410) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1097705) = 5308416 * k + 3293116 := by
    unfold C
    simp [show (1769472 * k + 1097705) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 3293116) = 2654208 * k + 1646558 := by
    unfold C
    simp [show (5308416 * k + 3293116) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1646558) = 1327104 * k + 823279 := by
    unfold C
    simp [show (2654208 * k + 1646558) % 2 = 0 by omega]
    omega
  have h11 : C (1327104 * k + 823279) = 3981312 * k + 2469838 := by
    unfold C
    simp [show (1327104 * k + 823279) % 2 ≠ 0 by omega]
    omega
  have h12 : C (3981312 * k + 2469838) = 1990656 * k + 1234919 := by
    unfold C
    simp [show (3981312 * k + 2469838) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 1234919) = 5971968 * k + 3704758 := by
    unfold C
    simp [show (1990656 * k + 1234919) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 3704758) = 2985984 * k + 1852379 := by
    unfold C
    simp [show (5971968 * k + 3704758) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1852379) = 8957952 * k + 5557138 := by
    unfold C
    simp [show (2985984 * k + 1852379) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 5557138) = 4478976 * k + 2778569 := by
    unfold C
    simp [show (8957952 * k + 5557138) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 2778569) = 13436928 * k + 8335708 := by
    unfold C
    simp [show (4478976 * k + 2778569) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 8335708) = 6718464 * k + 4167854 := by
    unfold C
    simp [show (13436928 * k + 8335708) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 4167854) = 3359232 * k + 2083927 := by
    unfold C
    simp [show (6718464 * k + 4167854) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 2083927) = 10077696 * k + 6251782 := by
    unfold C
    simp [show (3359232 * k + 2083927) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 6251782) = 5038848 * k + 3125891 := by
    unfold C
    simp [show (10077696 * k + 6251782) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 3125891) = 15116544 * k + 9377674 := by
    unfold C
    simp [show (5038848 * k + 3125891) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 9377674) = 7558272 * k + 4688837 := by
    unfold C
    simp [show (15116544 * k + 9377674) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 4688837) = 22674816 * k + 14066512 := by
    unfold C
    simp [show (7558272 * k + 4688837) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 14066512) = 11337408 * k + 7033256 := by
    unfold C
    simp [show (22674816 * k + 14066512) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 7033256) = 5668704 * k + 3516628 := by
    unfold C
    simp [show (11337408 * k + 7033256) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 3516628) = 2834352 * k + 1758314 := by
    unfold C
    simp [show (5668704 * k + 3516628) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1758314) = 1417176 * k + 879157 := by
    unfold C
    simp [show (2834352 * k + 1758314) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 879157) = 4251528 * k + 2637472 := by
    unfold C
    simp [show (1417176 * k + 879157) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 2637472) = 2125764 * k + 1318736 := by
    unfold C
    simp [show (4251528 * k + 2637472) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1318736) = 1062882 * k + 659368 := by
    unfold C
    simp [show (2125764 * k + 1318736) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 659368) = 531441 * k + 329684 := by
    unfold C
    simp [show (1062882 * k + 659368) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 650491) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 650491)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_650687 : ∀ k : Nat,
    iterate (1048576 * k + 650687) 32 = 531441 * k + 329783 ∧
      531441 * k + 329783 < 1048576 * k + 650687 := by
  intro k
  have h1 : C (1048576 * k + 650687) = 3145728 * k + 1952062 := by
    unfold C
    simp [show (1048576 * k + 650687) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1952062) = 1572864 * k + 976031 := by
    unfold C
    simp [show (3145728 * k + 1952062) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 976031) = 4718592 * k + 2928094 := by
    unfold C
    simp [show (1572864 * k + 976031) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2928094) = 2359296 * k + 1464047 := by
    unfold C
    simp [show (4718592 * k + 2928094) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1464047) = 7077888 * k + 4392142 := by
    unfold C
    simp [show (2359296 * k + 1464047) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 4392142) = 3538944 * k + 2196071 := by
    unfold C
    simp [show (7077888 * k + 4392142) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2196071) = 10616832 * k + 6588214 := by
    unfold C
    simp [show (3538944 * k + 2196071) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 6588214) = 5308416 * k + 3294107 := by
    unfold C
    simp [show (10616832 * k + 6588214) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 3294107) = 15925248 * k + 9882322 := by
    unfold C
    simp [show (5308416 * k + 3294107) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 9882322) = 7962624 * k + 4941161 := by
    unfold C
    simp [show (15925248 * k + 9882322) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 4941161) = 23887872 * k + 14823484 := by
    unfold C
    simp [show (7962624 * k + 4941161) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 14823484) = 11943936 * k + 7411742 := by
    unfold C
    simp [show (23887872 * k + 14823484) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 7411742) = 5971968 * k + 3705871 := by
    unfold C
    simp [show (11943936 * k + 7411742) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 3705871) = 17915904 * k + 11117614 := by
    unfold C
    simp [show (5971968 * k + 3705871) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 11117614) = 8957952 * k + 5558807 := by
    unfold C
    simp [show (17915904 * k + 11117614) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 5558807) = 26873856 * k + 16676422 := by
    unfold C
    simp [show (8957952 * k + 5558807) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 16676422) = 13436928 * k + 8338211 := by
    unfold C
    simp [show (26873856 * k + 16676422) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 8338211) = 40310784 * k + 25014634 := by
    unfold C
    simp [show (13436928 * k + 8338211) % 2 ≠ 0 by omega]
    omega
  have h19 : C (40310784 * k + 25014634) = 20155392 * k + 12507317 := by
    unfold C
    simp [show (40310784 * k + 25014634) % 2 = 0 by omega]
    omega
  have h20 : C (20155392 * k + 12507317) = 60466176 * k + 37521952 := by
    unfold C
    simp [show (20155392 * k + 12507317) % 2 ≠ 0 by omega]
    omega
  have h21 : C (60466176 * k + 37521952) = 30233088 * k + 18760976 := by
    unfold C
    simp [show (60466176 * k + 37521952) % 2 = 0 by omega]
    omega
  have h22 : C (30233088 * k + 18760976) = 15116544 * k + 9380488 := by
    unfold C
    simp [show (30233088 * k + 18760976) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 9380488) = 7558272 * k + 4690244 := by
    unfold C
    simp [show (15116544 * k + 9380488) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 4690244) = 3779136 * k + 2345122 := by
    unfold C
    simp [show (7558272 * k + 4690244) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 2345122) = 1889568 * k + 1172561 := by
    unfold C
    simp [show (3779136 * k + 2345122) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1172561) = 5668704 * k + 3517684 := by
    unfold C
    simp [show (1889568 * k + 1172561) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 3517684) = 2834352 * k + 1758842 := by
    unfold C
    simp [show (5668704 * k + 3517684) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1758842) = 1417176 * k + 879421 := by
    unfold C
    simp [show (2834352 * k + 1758842) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 879421) = 4251528 * k + 2638264 := by
    unfold C
    simp [show (1417176 * k + 879421) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 2638264) = 2125764 * k + 1319132 := by
    unfold C
    simp [show (4251528 * k + 2638264) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1319132) = 1062882 * k + 659566 := by
    unfold C
    simp [show (2125764 * k + 1319132) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 659566) = 531441 * k + 329783 := by
    unfold C
    simp [show (1062882 * k + 659566) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 650687) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 650687)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_651711 : ∀ k : Nat,
    iterate (1048576 * k + 651711) 32 = 531441 * k + 330302 ∧
      531441 * k + 330302 < 1048576 * k + 651711 := by
  intro k
  have h1 : C (1048576 * k + 651711) = 3145728 * k + 1955134 := by
    unfold C
    simp [show (1048576 * k + 651711) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1955134) = 1572864 * k + 977567 := by
    unfold C
    simp [show (3145728 * k + 1955134) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 977567) = 4718592 * k + 2932702 := by
    unfold C
    simp [show (1572864 * k + 977567) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2932702) = 2359296 * k + 1466351 := by
    unfold C
    simp [show (4718592 * k + 2932702) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1466351) = 7077888 * k + 4399054 := by
    unfold C
    simp [show (2359296 * k + 1466351) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 4399054) = 3538944 * k + 2199527 := by
    unfold C
    simp [show (7077888 * k + 4399054) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2199527) = 10616832 * k + 6598582 := by
    unfold C
    simp [show (3538944 * k + 2199527) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 6598582) = 5308416 * k + 3299291 := by
    unfold C
    simp [show (10616832 * k + 6598582) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 3299291) = 15925248 * k + 9897874 := by
    unfold C
    simp [show (5308416 * k + 3299291) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 9897874) = 7962624 * k + 4948937 := by
    unfold C
    simp [show (15925248 * k + 9897874) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 4948937) = 23887872 * k + 14846812 := by
    unfold C
    simp [show (7962624 * k + 4948937) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 14846812) = 11943936 * k + 7423406 := by
    unfold C
    simp [show (23887872 * k + 14846812) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 7423406) = 5971968 * k + 3711703 := by
    unfold C
    simp [show (11943936 * k + 7423406) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 3711703) = 17915904 * k + 11135110 := by
    unfold C
    simp [show (5971968 * k + 3711703) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 11135110) = 8957952 * k + 5567555 := by
    unfold C
    simp [show (17915904 * k + 11135110) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 5567555) = 26873856 * k + 16702666 := by
    unfold C
    simp [show (8957952 * k + 5567555) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 16702666) = 13436928 * k + 8351333 := by
    unfold C
    simp [show (26873856 * k + 16702666) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 8351333) = 40310784 * k + 25054000 := by
    unfold C
    simp [show (13436928 * k + 8351333) % 2 ≠ 0 by omega]
    omega
  have h19 : C (40310784 * k + 25054000) = 20155392 * k + 12527000 := by
    unfold C
    simp [show (40310784 * k + 25054000) % 2 = 0 by omega]
    omega
  have h20 : C (20155392 * k + 12527000) = 10077696 * k + 6263500 := by
    unfold C
    simp [show (20155392 * k + 12527000) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 6263500) = 5038848 * k + 3131750 := by
    unfold C
    simp [show (10077696 * k + 6263500) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 3131750) = 2519424 * k + 1565875 := by
    unfold C
    simp [show (5038848 * k + 3131750) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1565875) = 7558272 * k + 4697626 := by
    unfold C
    simp [show (2519424 * k + 1565875) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 4697626) = 3779136 * k + 2348813 := by
    unfold C
    simp [show (7558272 * k + 4697626) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 2348813) = 11337408 * k + 7046440 := by
    unfold C
    simp [show (3779136 * k + 2348813) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 7046440) = 5668704 * k + 3523220 := by
    unfold C
    simp [show (11337408 * k + 7046440) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 3523220) = 2834352 * k + 1761610 := by
    unfold C
    simp [show (5668704 * k + 3523220) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1761610) = 1417176 * k + 880805 := by
    unfold C
    simp [show (2834352 * k + 1761610) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 880805) = 4251528 * k + 2642416 := by
    unfold C
    simp [show (1417176 * k + 880805) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 2642416) = 2125764 * k + 1321208 := by
    unfold C
    simp [show (4251528 * k + 2642416) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1321208) = 1062882 * k + 660604 := by
    unfold C
    simp [show (2125764 * k + 1321208) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 660604) = 531441 * k + 330302 := by
    unfold C
    simp [show (1062882 * k + 660604) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 651711) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 651711)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_651823 : ∀ k : Nat,
    iterate (1048576 * k + 651823) 32 = 531441 * k + 330359 ∧
      531441 * k + 330359 < 1048576 * k + 651823 := by
  intro k
  have h1 : C (1048576 * k + 651823) = 3145728 * k + 1955470 := by
    unfold C
    simp [show (1048576 * k + 651823) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1955470) = 1572864 * k + 977735 := by
    unfold C
    simp [show (3145728 * k + 1955470) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 977735) = 4718592 * k + 2933206 := by
    unfold C
    simp [show (1572864 * k + 977735) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2933206) = 2359296 * k + 1466603 := by
    unfold C
    simp [show (4718592 * k + 2933206) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1466603) = 7077888 * k + 4399810 := by
    unfold C
    simp [show (2359296 * k + 1466603) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 4399810) = 3538944 * k + 2199905 := by
    unfold C
    simp [show (7077888 * k + 4399810) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2199905) = 10616832 * k + 6599716 := by
    unfold C
    simp [show (3538944 * k + 2199905) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 6599716) = 5308416 * k + 3299858 := by
    unfold C
    simp [show (10616832 * k + 6599716) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 3299858) = 2654208 * k + 1649929 := by
    unfold C
    simp [show (5308416 * k + 3299858) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1649929) = 7962624 * k + 4949788 := by
    unfold C
    simp [show (2654208 * k + 1649929) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 4949788) = 3981312 * k + 2474894 := by
    unfold C
    simp [show (7962624 * k + 4949788) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 2474894) = 1990656 * k + 1237447 := by
    unfold C
    simp [show (3981312 * k + 2474894) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 1237447) = 5971968 * k + 3712342 := by
    unfold C
    simp [show (1990656 * k + 1237447) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 3712342) = 2985984 * k + 1856171 := by
    unfold C
    simp [show (5971968 * k + 3712342) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1856171) = 8957952 * k + 5568514 := by
    unfold C
    simp [show (2985984 * k + 1856171) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 5568514) = 4478976 * k + 2784257 := by
    unfold C
    simp [show (8957952 * k + 5568514) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 2784257) = 13436928 * k + 8352772 := by
    unfold C
    simp [show (4478976 * k + 2784257) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 8352772) = 6718464 * k + 4176386 := by
    unfold C
    simp [show (13436928 * k + 8352772) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 4176386) = 3359232 * k + 2088193 := by
    unfold C
    simp [show (6718464 * k + 4176386) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 2088193) = 10077696 * k + 6264580 := by
    unfold C
    simp [show (3359232 * k + 2088193) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 6264580) = 5038848 * k + 3132290 := by
    unfold C
    simp [show (10077696 * k + 6264580) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 3132290) = 2519424 * k + 1566145 := by
    unfold C
    simp [show (5038848 * k + 3132290) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1566145) = 7558272 * k + 4698436 := by
    unfold C
    simp [show (2519424 * k + 1566145) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 4698436) = 3779136 * k + 2349218 := by
    unfold C
    simp [show (7558272 * k + 4698436) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 2349218) = 1889568 * k + 1174609 := by
    unfold C
    simp [show (3779136 * k + 2349218) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1174609) = 5668704 * k + 3523828 := by
    unfold C
    simp [show (1889568 * k + 1174609) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 3523828) = 2834352 * k + 1761914 := by
    unfold C
    simp [show (5668704 * k + 3523828) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1761914) = 1417176 * k + 880957 := by
    unfold C
    simp [show (2834352 * k + 1761914) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 880957) = 4251528 * k + 2642872 := by
    unfold C
    simp [show (1417176 * k + 880957) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 2642872) = 2125764 * k + 1321436 := by
    unfold C
    simp [show (4251528 * k + 2642872) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1321436) = 1062882 * k + 660718 := by
    unfold C
    simp [show (2125764 * k + 1321436) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 660718) = 531441 * k + 330359 := by
    unfold C
    simp [show (1062882 * k + 660718) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 651823) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 651823)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_652827 : ∀ k : Nat,
    iterate (1048576 * k + 652827) 32 = 531441 * k + 330868 ∧
      531441 * k + 330868 < 1048576 * k + 652827 := by
  intro k
  have h1 : C (1048576 * k + 652827) = 3145728 * k + 1958482 := by
    unfold C
    simp [show (1048576 * k + 652827) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1958482) = 1572864 * k + 979241 := by
    unfold C
    simp [show (3145728 * k + 1958482) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 979241) = 4718592 * k + 2937724 := by
    unfold C
    simp [show (1572864 * k + 979241) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2937724) = 2359296 * k + 1468862 := by
    unfold C
    simp [show (4718592 * k + 2937724) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1468862) = 1179648 * k + 734431 := by
    unfold C
    simp [show (2359296 * k + 1468862) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 734431) = 3538944 * k + 2203294 := by
    unfold C
    simp [show (1179648 * k + 734431) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 2203294) = 1769472 * k + 1101647 := by
    unfold C
    simp [show (3538944 * k + 2203294) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1101647) = 5308416 * k + 3304942 := by
    unfold C
    simp [show (1769472 * k + 1101647) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 3304942) = 2654208 * k + 1652471 := by
    unfold C
    simp [show (5308416 * k + 3304942) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1652471) = 7962624 * k + 4957414 := by
    unfold C
    simp [show (2654208 * k + 1652471) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 4957414) = 3981312 * k + 2478707 := by
    unfold C
    simp [show (7962624 * k + 4957414) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 2478707) = 11943936 * k + 7436122 := by
    unfold C
    simp [show (3981312 * k + 2478707) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 7436122) = 5971968 * k + 3718061 := by
    unfold C
    simp [show (11943936 * k + 7436122) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 3718061) = 17915904 * k + 11154184 := by
    unfold C
    simp [show (5971968 * k + 3718061) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 11154184) = 8957952 * k + 5577092 := by
    unfold C
    simp [show (17915904 * k + 11154184) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 5577092) = 4478976 * k + 2788546 := by
    unfold C
    simp [show (8957952 * k + 5577092) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 2788546) = 2239488 * k + 1394273 := by
    unfold C
    simp [show (4478976 * k + 2788546) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 1394273) = 6718464 * k + 4182820 := by
    unfold C
    simp [show (2239488 * k + 1394273) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 4182820) = 3359232 * k + 2091410 := by
    unfold C
    simp [show (6718464 * k + 4182820) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 2091410) = 1679616 * k + 1045705 := by
    unfold C
    simp [show (3359232 * k + 2091410) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 1045705) = 5038848 * k + 3137116 := by
    unfold C
    simp [show (1679616 * k + 1045705) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 3137116) = 2519424 * k + 1568558 := by
    unfold C
    simp [show (5038848 * k + 3137116) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1568558) = 1259712 * k + 784279 := by
    unfold C
    simp [show (2519424 * k + 1568558) % 2 = 0 by omega]
    omega
  have h24 : C (1259712 * k + 784279) = 3779136 * k + 2352838 := by
    unfold C
    simp [show (1259712 * k + 784279) % 2 ≠ 0 by omega]
    omega
  have h25 : C (3779136 * k + 2352838) = 1889568 * k + 1176419 := by
    unfold C
    simp [show (3779136 * k + 2352838) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1176419) = 5668704 * k + 3529258 := by
    unfold C
    simp [show (1889568 * k + 1176419) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 3529258) = 2834352 * k + 1764629 := by
    unfold C
    simp [show (5668704 * k + 3529258) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1764629) = 8503056 * k + 5293888 := by
    unfold C
    simp [show (2834352 * k + 1764629) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 5293888) = 4251528 * k + 2646944 := by
    unfold C
    simp [show (8503056 * k + 5293888) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 2646944) = 2125764 * k + 1323472 := by
    unfold C
    simp [show (4251528 * k + 2646944) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1323472) = 1062882 * k + 661736 := by
    unfold C
    simp [show (2125764 * k + 1323472) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 661736) = 531441 * k + 330868 := by
    unfold C
    simp [show (1062882 * k + 661736) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 652827) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 652827)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_653563 : ∀ k : Nat,
    iterate (1048576 * k + 653563) 32 = 531441 * k + 331241 ∧
      531441 * k + 331241 < 1048576 * k + 653563 := by
  intro k
  have h1 : C (1048576 * k + 653563) = 3145728 * k + 1960690 := by
    unfold C
    simp [show (1048576 * k + 653563) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1960690) = 1572864 * k + 980345 := by
    unfold C
    simp [show (3145728 * k + 1960690) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 980345) = 4718592 * k + 2941036 := by
    unfold C
    simp [show (1572864 * k + 980345) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2941036) = 2359296 * k + 1470518 := by
    unfold C
    simp [show (4718592 * k + 2941036) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1470518) = 1179648 * k + 735259 := by
    unfold C
    simp [show (2359296 * k + 1470518) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 735259) = 3538944 * k + 2205778 := by
    unfold C
    simp [show (1179648 * k + 735259) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 2205778) = 1769472 * k + 1102889 := by
    unfold C
    simp [show (3538944 * k + 2205778) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1102889) = 5308416 * k + 3308668 := by
    unfold C
    simp [show (1769472 * k + 1102889) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 3308668) = 2654208 * k + 1654334 := by
    unfold C
    simp [show (5308416 * k + 3308668) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1654334) = 1327104 * k + 827167 := by
    unfold C
    simp [show (2654208 * k + 1654334) % 2 = 0 by omega]
    omega
  have h11 : C (1327104 * k + 827167) = 3981312 * k + 2481502 := by
    unfold C
    simp [show (1327104 * k + 827167) % 2 ≠ 0 by omega]
    omega
  have h12 : C (3981312 * k + 2481502) = 1990656 * k + 1240751 := by
    unfold C
    simp [show (3981312 * k + 2481502) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 1240751) = 5971968 * k + 3722254 := by
    unfold C
    simp [show (1990656 * k + 1240751) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 3722254) = 2985984 * k + 1861127 := by
    unfold C
    simp [show (5971968 * k + 3722254) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1861127) = 8957952 * k + 5583382 := by
    unfold C
    simp [show (2985984 * k + 1861127) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 5583382) = 4478976 * k + 2791691 := by
    unfold C
    simp [show (8957952 * k + 5583382) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 2791691) = 13436928 * k + 8375074 := by
    unfold C
    simp [show (4478976 * k + 2791691) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 8375074) = 6718464 * k + 4187537 := by
    unfold C
    simp [show (13436928 * k + 8375074) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 4187537) = 20155392 * k + 12562612 := by
    unfold C
    simp [show (6718464 * k + 4187537) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 12562612) = 10077696 * k + 6281306 := by
    unfold C
    simp [show (20155392 * k + 12562612) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 6281306) = 5038848 * k + 3140653 := by
    unfold C
    simp [show (10077696 * k + 6281306) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 3140653) = 15116544 * k + 9421960 := by
    unfold C
    simp [show (5038848 * k + 3140653) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 9421960) = 7558272 * k + 4710980 := by
    unfold C
    simp [show (15116544 * k + 9421960) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 4710980) = 3779136 * k + 2355490 := by
    unfold C
    simp [show (7558272 * k + 4710980) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 2355490) = 1889568 * k + 1177745 := by
    unfold C
    simp [show (3779136 * k + 2355490) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1177745) = 5668704 * k + 3533236 := by
    unfold C
    simp [show (1889568 * k + 1177745) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 3533236) = 2834352 * k + 1766618 := by
    unfold C
    simp [show (5668704 * k + 3533236) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1766618) = 1417176 * k + 883309 := by
    unfold C
    simp [show (2834352 * k + 1766618) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 883309) = 4251528 * k + 2649928 := by
    unfold C
    simp [show (1417176 * k + 883309) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 2649928) = 2125764 * k + 1324964 := by
    unfold C
    simp [show (4251528 * k + 2649928) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1324964) = 1062882 * k + 662482 := by
    unfold C
    simp [show (2125764 * k + 1324964) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 662482) = 531441 * k + 331241 := by
    unfold C
    simp [show (1062882 * k + 662482) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 653563) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 653563)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_653723 : ∀ k : Nat,
    iterate (1048576 * k + 653723) 32 = 531441 * k + 331322 ∧
      531441 * k + 331322 < 1048576 * k + 653723 := by
  intro k
  have h1 : C (1048576 * k + 653723) = 3145728 * k + 1961170 := by
    unfold C
    simp [show (1048576 * k + 653723) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1961170) = 1572864 * k + 980585 := by
    unfold C
    simp [show (3145728 * k + 1961170) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 980585) = 4718592 * k + 2941756 := by
    unfold C
    simp [show (1572864 * k + 980585) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2941756) = 2359296 * k + 1470878 := by
    unfold C
    simp [show (4718592 * k + 2941756) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1470878) = 1179648 * k + 735439 := by
    unfold C
    simp [show (2359296 * k + 1470878) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 735439) = 3538944 * k + 2206318 := by
    unfold C
    simp [show (1179648 * k + 735439) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 2206318) = 1769472 * k + 1103159 := by
    unfold C
    simp [show (3538944 * k + 2206318) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1103159) = 5308416 * k + 3309478 := by
    unfold C
    simp [show (1769472 * k + 1103159) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 3309478) = 2654208 * k + 1654739 := by
    unfold C
    simp [show (5308416 * k + 3309478) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1654739) = 7962624 * k + 4964218 := by
    unfold C
    simp [show (2654208 * k + 1654739) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 4964218) = 3981312 * k + 2482109 := by
    unfold C
    simp [show (7962624 * k + 4964218) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 2482109) = 11943936 * k + 7446328 := by
    unfold C
    simp [show (3981312 * k + 2482109) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 7446328) = 5971968 * k + 3723164 := by
    unfold C
    simp [show (11943936 * k + 7446328) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 3723164) = 2985984 * k + 1861582 := by
    unfold C
    simp [show (5971968 * k + 3723164) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1861582) = 1492992 * k + 930791 := by
    unfold C
    simp [show (2985984 * k + 1861582) % 2 = 0 by omega]
    omega
  have h16 : C (1492992 * k + 930791) = 4478976 * k + 2792374 := by
    unfold C
    simp [show (1492992 * k + 930791) % 2 ≠ 0 by omega]
    omega
  have h17 : C (4478976 * k + 2792374) = 2239488 * k + 1396187 := by
    unfold C
    simp [show (4478976 * k + 2792374) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 1396187) = 6718464 * k + 4188562 := by
    unfold C
    simp [show (2239488 * k + 1396187) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 4188562) = 3359232 * k + 2094281 := by
    unfold C
    simp [show (6718464 * k + 4188562) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 2094281) = 10077696 * k + 6282844 := by
    unfold C
    simp [show (3359232 * k + 2094281) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 6282844) = 5038848 * k + 3141422 := by
    unfold C
    simp [show (10077696 * k + 6282844) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 3141422) = 2519424 * k + 1570711 := by
    unfold C
    simp [show (5038848 * k + 3141422) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1570711) = 7558272 * k + 4712134 := by
    unfold C
    simp [show (2519424 * k + 1570711) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 4712134) = 3779136 * k + 2356067 := by
    unfold C
    simp [show (7558272 * k + 4712134) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 2356067) = 11337408 * k + 7068202 := by
    unfold C
    simp [show (3779136 * k + 2356067) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 7068202) = 5668704 * k + 3534101 := by
    unfold C
    simp [show (11337408 * k + 7068202) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 3534101) = 17006112 * k + 10602304 := by
    unfold C
    simp [show (5668704 * k + 3534101) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 10602304) = 8503056 * k + 5301152 := by
    unfold C
    simp [show (17006112 * k + 10602304) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 5301152) = 4251528 * k + 2650576 := by
    unfold C
    simp [show (8503056 * k + 5301152) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 2650576) = 2125764 * k + 1325288 := by
    unfold C
    simp [show (4251528 * k + 2650576) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1325288) = 1062882 * k + 662644 := by
    unfold C
    simp [show (2125764 * k + 1325288) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 662644) = 531441 * k + 331322 := by
    unfold C
    simp [show (1062882 * k + 662644) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 653723) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 653723)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_654079 : ∀ k : Nat,
    iterate (1048576 * k + 654079) 32 = 531441 * k + 331502 ∧
      531441 * k + 331502 < 1048576 * k + 654079 := by
  intro k
  have h1 : C (1048576 * k + 654079) = 3145728 * k + 1962238 := by
    unfold C
    simp [show (1048576 * k + 654079) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1962238) = 1572864 * k + 981119 := by
    unfold C
    simp [show (3145728 * k + 1962238) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 981119) = 4718592 * k + 2943358 := by
    unfold C
    simp [show (1572864 * k + 981119) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2943358) = 2359296 * k + 1471679 := by
    unfold C
    simp [show (4718592 * k + 2943358) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1471679) = 7077888 * k + 4415038 := by
    unfold C
    simp [show (2359296 * k + 1471679) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 4415038) = 3538944 * k + 2207519 := by
    unfold C
    simp [show (7077888 * k + 4415038) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2207519) = 10616832 * k + 6622558 := by
    unfold C
    simp [show (3538944 * k + 2207519) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 6622558) = 5308416 * k + 3311279 := by
    unfold C
    simp [show (10616832 * k + 6622558) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 3311279) = 15925248 * k + 9933838 := by
    unfold C
    simp [show (5308416 * k + 3311279) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 9933838) = 7962624 * k + 4966919 := by
    unfold C
    simp [show (15925248 * k + 9933838) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 4966919) = 23887872 * k + 14900758 := by
    unfold C
    simp [show (7962624 * k + 4966919) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 14900758) = 11943936 * k + 7450379 := by
    unfold C
    simp [show (23887872 * k + 14900758) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 7450379) = 35831808 * k + 22351138 := by
    unfold C
    simp [show (11943936 * k + 7450379) % 2 ≠ 0 by omega]
    omega
  have h14 : C (35831808 * k + 22351138) = 17915904 * k + 11175569 := by
    unfold C
    simp [show (35831808 * k + 22351138) % 2 = 0 by omega]
    omega
  have h15 : C (17915904 * k + 11175569) = 53747712 * k + 33526708 := by
    unfold C
    simp [show (17915904 * k + 11175569) % 2 ≠ 0 by omega]
    omega
  have h16 : C (53747712 * k + 33526708) = 26873856 * k + 16763354 := by
    unfold C
    simp [show (53747712 * k + 33526708) % 2 = 0 by omega]
    omega
  have h17 : C (26873856 * k + 16763354) = 13436928 * k + 8381677 := by
    unfold C
    simp [show (26873856 * k + 16763354) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 8381677) = 40310784 * k + 25145032 := by
    unfold C
    simp [show (13436928 * k + 8381677) % 2 ≠ 0 by omega]
    omega
  have h19 : C (40310784 * k + 25145032) = 20155392 * k + 12572516 := by
    unfold C
    simp [show (40310784 * k + 25145032) % 2 = 0 by omega]
    omega
  have h20 : C (20155392 * k + 12572516) = 10077696 * k + 6286258 := by
    unfold C
    simp [show (20155392 * k + 12572516) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 6286258) = 5038848 * k + 3143129 := by
    unfold C
    simp [show (10077696 * k + 6286258) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 3143129) = 15116544 * k + 9429388 := by
    unfold C
    simp [show (5038848 * k + 3143129) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 9429388) = 7558272 * k + 4714694 := by
    unfold C
    simp [show (15116544 * k + 9429388) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 4714694) = 3779136 * k + 2357347 := by
    unfold C
    simp [show (7558272 * k + 4714694) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 2357347) = 11337408 * k + 7072042 := by
    unfold C
    simp [show (3779136 * k + 2357347) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 7072042) = 5668704 * k + 3536021 := by
    unfold C
    simp [show (11337408 * k + 7072042) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 3536021) = 17006112 * k + 10608064 := by
    unfold C
    simp [show (5668704 * k + 3536021) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 10608064) = 8503056 * k + 5304032 := by
    unfold C
    simp [show (17006112 * k + 10608064) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 5304032) = 4251528 * k + 2652016 := by
    unfold C
    simp [show (8503056 * k + 5304032) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 2652016) = 2125764 * k + 1326008 := by
    unfold C
    simp [show (4251528 * k + 2652016) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1326008) = 1062882 * k + 663004 := by
    unfold C
    simp [show (2125764 * k + 1326008) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 663004) = 531441 * k + 331502 := by
    unfold C
    simp [show (1062882 * k + 663004) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 654079) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 654079)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_654319 : ∀ k : Nat,
    iterate (1048576 * k + 654319) 32 = 531441 * k + 331624 ∧
      531441 * k + 331624 < 1048576 * k + 654319 := by
  intro k
  have h1 : C (1048576 * k + 654319) = 3145728 * k + 1962958 := by
    unfold C
    simp [show (1048576 * k + 654319) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1962958) = 1572864 * k + 981479 := by
    unfold C
    simp [show (3145728 * k + 1962958) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 981479) = 4718592 * k + 2944438 := by
    unfold C
    simp [show (1572864 * k + 981479) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2944438) = 2359296 * k + 1472219 := by
    unfold C
    simp [show (4718592 * k + 2944438) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1472219) = 7077888 * k + 4416658 := by
    unfold C
    simp [show (2359296 * k + 1472219) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 4416658) = 3538944 * k + 2208329 := by
    unfold C
    simp [show (7077888 * k + 4416658) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2208329) = 10616832 * k + 6624988 := by
    unfold C
    simp [show (3538944 * k + 2208329) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 6624988) = 5308416 * k + 3312494 := by
    unfold C
    simp [show (10616832 * k + 6624988) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 3312494) = 2654208 * k + 1656247 := by
    unfold C
    simp [show (5308416 * k + 3312494) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1656247) = 7962624 * k + 4968742 := by
    unfold C
    simp [show (2654208 * k + 1656247) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 4968742) = 3981312 * k + 2484371 := by
    unfold C
    simp [show (7962624 * k + 4968742) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 2484371) = 11943936 * k + 7453114 := by
    unfold C
    simp [show (3981312 * k + 2484371) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 7453114) = 5971968 * k + 3726557 := by
    unfold C
    simp [show (11943936 * k + 7453114) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 3726557) = 17915904 * k + 11179672 := by
    unfold C
    simp [show (5971968 * k + 3726557) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 11179672) = 8957952 * k + 5589836 := by
    unfold C
    simp [show (17915904 * k + 11179672) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 5589836) = 4478976 * k + 2794918 := by
    unfold C
    simp [show (8957952 * k + 5589836) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 2794918) = 2239488 * k + 1397459 := by
    unfold C
    simp [show (4478976 * k + 2794918) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 1397459) = 6718464 * k + 4192378 := by
    unfold C
    simp [show (2239488 * k + 1397459) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 4192378) = 3359232 * k + 2096189 := by
    unfold C
    simp [show (6718464 * k + 4192378) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 2096189) = 10077696 * k + 6288568 := by
    unfold C
    simp [show (3359232 * k + 2096189) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 6288568) = 5038848 * k + 3144284 := by
    unfold C
    simp [show (10077696 * k + 6288568) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 3144284) = 2519424 * k + 1572142 := by
    unfold C
    simp [show (5038848 * k + 3144284) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1572142) = 1259712 * k + 786071 := by
    unfold C
    simp [show (2519424 * k + 1572142) % 2 = 0 by omega]
    omega
  have h24 : C (1259712 * k + 786071) = 3779136 * k + 2358214 := by
    unfold C
    simp [show (1259712 * k + 786071) % 2 ≠ 0 by omega]
    omega
  have h25 : C (3779136 * k + 2358214) = 1889568 * k + 1179107 := by
    unfold C
    simp [show (3779136 * k + 2358214) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1179107) = 5668704 * k + 3537322 := by
    unfold C
    simp [show (1889568 * k + 1179107) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 3537322) = 2834352 * k + 1768661 := by
    unfold C
    simp [show (5668704 * k + 3537322) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1768661) = 8503056 * k + 5305984 := by
    unfold C
    simp [show (2834352 * k + 1768661) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 5305984) = 4251528 * k + 2652992 := by
    unfold C
    simp [show (8503056 * k + 5305984) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 2652992) = 2125764 * k + 1326496 := by
    unfold C
    simp [show (4251528 * k + 2652992) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1326496) = 1062882 * k + 663248 := by
    unfold C
    simp [show (2125764 * k + 1326496) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 663248) = 531441 * k + 331624 := by
    unfold C
    simp [show (1062882 * k + 663248) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 654319) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 654319)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

end CollatzM20Shard084
