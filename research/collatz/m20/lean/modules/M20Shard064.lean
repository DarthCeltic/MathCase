import Mathlib.Data.Nat.Prime.Basic

namespace CollatzM20Shard064

def C (n : Nat) : Nat := if n % 2 = 0 then n / 2 else 3 * n + 1

def iterate (n t : Nat) : Nat := Nat.rec n (fun _ previous => C previous) t

theorem descent_mod1048576_498799 : ∀ k : Nat,
    iterate (1048576 * k + 498799) 32 = 531441 * k + 252803 ∧
      531441 * k + 252803 < 1048576 * k + 498799 := by
  intro k
  have h1 : C (1048576 * k + 498799) = 3145728 * k + 1496398 := by
    unfold C
    simp [show (1048576 * k + 498799) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1496398) = 1572864 * k + 748199 := by
    unfold C
    simp [show (3145728 * k + 1496398) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 748199) = 4718592 * k + 2244598 := by
    unfold C
    simp [show (1572864 * k + 748199) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2244598) = 2359296 * k + 1122299 := by
    unfold C
    simp [show (4718592 * k + 2244598) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1122299) = 7077888 * k + 3366898 := by
    unfold C
    simp [show (2359296 * k + 1122299) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 3366898) = 3538944 * k + 1683449 := by
    unfold C
    simp [show (7077888 * k + 3366898) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1683449) = 10616832 * k + 5050348 := by
    unfold C
    simp [show (3538944 * k + 1683449) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 5050348) = 5308416 * k + 2525174 := by
    unfold C
    simp [show (10616832 * k + 5050348) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 2525174) = 2654208 * k + 1262587 := by
    unfold C
    simp [show (5308416 * k + 2525174) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1262587) = 7962624 * k + 3787762 := by
    unfold C
    simp [show (2654208 * k + 1262587) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 3787762) = 3981312 * k + 1893881 := by
    unfold C
    simp [show (7962624 * k + 3787762) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 1893881) = 11943936 * k + 5681644 := by
    unfold C
    simp [show (3981312 * k + 1893881) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 5681644) = 5971968 * k + 2840822 := by
    unfold C
    simp [show (11943936 * k + 5681644) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 2840822) = 2985984 * k + 1420411 := by
    unfold C
    simp [show (5971968 * k + 2840822) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1420411) = 8957952 * k + 4261234 := by
    unfold C
    simp [show (2985984 * k + 1420411) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 4261234) = 4478976 * k + 2130617 := by
    unfold C
    simp [show (8957952 * k + 4261234) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 2130617) = 13436928 * k + 6391852 := by
    unfold C
    simp [show (4478976 * k + 2130617) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 6391852) = 6718464 * k + 3195926 := by
    unfold C
    simp [show (13436928 * k + 6391852) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 3195926) = 3359232 * k + 1597963 := by
    unfold C
    simp [show (6718464 * k + 3195926) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 1597963) = 10077696 * k + 4793890 := by
    unfold C
    simp [show (3359232 * k + 1597963) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 4793890) = 5038848 * k + 2396945 := by
    unfold C
    simp [show (10077696 * k + 4793890) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 2396945) = 15116544 * k + 7190836 := by
    unfold C
    simp [show (5038848 * k + 2396945) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 7190836) = 7558272 * k + 3595418 := by
    unfold C
    simp [show (15116544 * k + 7190836) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 3595418) = 3779136 * k + 1797709 := by
    unfold C
    simp [show (7558272 * k + 3595418) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 1797709) = 11337408 * k + 5393128 := by
    unfold C
    simp [show (3779136 * k + 1797709) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 5393128) = 5668704 * k + 2696564 := by
    unfold C
    simp [show (11337408 * k + 5393128) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 2696564) = 2834352 * k + 1348282 := by
    unfold C
    simp [show (5668704 * k + 2696564) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1348282) = 1417176 * k + 674141 := by
    unfold C
    simp [show (2834352 * k + 1348282) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 674141) = 4251528 * k + 2022424 := by
    unfold C
    simp [show (1417176 * k + 674141) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 2022424) = 2125764 * k + 1011212 := by
    unfold C
    simp [show (4251528 * k + 2022424) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1011212) = 1062882 * k + 505606 := by
    unfold C
    simp [show (2125764 * k + 1011212) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 505606) = 531441 * k + 252803 := by
    unfold C
    simp [show (1062882 * k + 505606) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 498799) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 498799)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_499071 : ∀ k : Nat,
    iterate (1048576 * k + 499071) 32 = 531441 * k + 252941 ∧
      531441 * k + 252941 < 1048576 * k + 499071 := by
  intro k
  have h1 : C (1048576 * k + 499071) = 3145728 * k + 1497214 := by
    unfold C
    simp [show (1048576 * k + 499071) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1497214) = 1572864 * k + 748607 := by
    unfold C
    simp [show (3145728 * k + 1497214) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 748607) = 4718592 * k + 2245822 := by
    unfold C
    simp [show (1572864 * k + 748607) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2245822) = 2359296 * k + 1122911 := by
    unfold C
    simp [show (4718592 * k + 2245822) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1122911) = 7077888 * k + 3368734 := by
    unfold C
    simp [show (2359296 * k + 1122911) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 3368734) = 3538944 * k + 1684367 := by
    unfold C
    simp [show (7077888 * k + 3368734) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1684367) = 10616832 * k + 5053102 := by
    unfold C
    simp [show (3538944 * k + 1684367) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 5053102) = 5308416 * k + 2526551 := by
    unfold C
    simp [show (10616832 * k + 5053102) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 2526551) = 15925248 * k + 7579654 := by
    unfold C
    simp [show (5308416 * k + 2526551) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 7579654) = 7962624 * k + 3789827 := by
    unfold C
    simp [show (15925248 * k + 7579654) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 3789827) = 23887872 * k + 11369482 := by
    unfold C
    simp [show (7962624 * k + 3789827) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 11369482) = 11943936 * k + 5684741 := by
    unfold C
    simp [show (23887872 * k + 11369482) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 5684741) = 35831808 * k + 17054224 := by
    unfold C
    simp [show (11943936 * k + 5684741) % 2 ≠ 0 by omega]
    omega
  have h14 : C (35831808 * k + 17054224) = 17915904 * k + 8527112 := by
    unfold C
    simp [show (35831808 * k + 17054224) % 2 = 0 by omega]
    omega
  have h15 : C (17915904 * k + 8527112) = 8957952 * k + 4263556 := by
    unfold C
    simp [show (17915904 * k + 8527112) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 4263556) = 4478976 * k + 2131778 := by
    unfold C
    simp [show (8957952 * k + 4263556) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 2131778) = 2239488 * k + 1065889 := by
    unfold C
    simp [show (4478976 * k + 2131778) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 1065889) = 6718464 * k + 3197668 := by
    unfold C
    simp [show (2239488 * k + 1065889) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 3197668) = 3359232 * k + 1598834 := by
    unfold C
    simp [show (6718464 * k + 3197668) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 1598834) = 1679616 * k + 799417 := by
    unfold C
    simp [show (3359232 * k + 1598834) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 799417) = 5038848 * k + 2398252 := by
    unfold C
    simp [show (1679616 * k + 799417) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 2398252) = 2519424 * k + 1199126 := by
    unfold C
    simp [show (5038848 * k + 2398252) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1199126) = 1259712 * k + 599563 := by
    unfold C
    simp [show (2519424 * k + 1199126) % 2 = 0 by omega]
    omega
  have h24 : C (1259712 * k + 599563) = 3779136 * k + 1798690 := by
    unfold C
    simp [show (1259712 * k + 599563) % 2 ≠ 0 by omega]
    omega
  have h25 : C (3779136 * k + 1798690) = 1889568 * k + 899345 := by
    unfold C
    simp [show (3779136 * k + 1798690) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 899345) = 5668704 * k + 2698036 := by
    unfold C
    simp [show (1889568 * k + 899345) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 2698036) = 2834352 * k + 1349018 := by
    unfold C
    simp [show (5668704 * k + 2698036) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1349018) = 1417176 * k + 674509 := by
    unfold C
    simp [show (2834352 * k + 1349018) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 674509) = 4251528 * k + 2023528 := by
    unfold C
    simp [show (1417176 * k + 674509) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 2023528) = 2125764 * k + 1011764 := by
    unfold C
    simp [show (4251528 * k + 2023528) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1011764) = 1062882 * k + 505882 := by
    unfold C
    simp [show (2125764 * k + 1011764) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 505882) = 531441 * k + 252941 := by
    unfold C
    simp [show (1062882 * k + 505882) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 499071) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 499071)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_499231 : ∀ k : Nat,
    iterate (1048576 * k + 499231) 32 = 531441 * k + 253022 ∧
      531441 * k + 253022 < 1048576 * k + 499231 := by
  intro k
  have h1 : C (1048576 * k + 499231) = 3145728 * k + 1497694 := by
    unfold C
    simp [show (1048576 * k + 499231) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1497694) = 1572864 * k + 748847 := by
    unfold C
    simp [show (3145728 * k + 1497694) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 748847) = 4718592 * k + 2246542 := by
    unfold C
    simp [show (1572864 * k + 748847) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2246542) = 2359296 * k + 1123271 := by
    unfold C
    simp [show (4718592 * k + 2246542) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1123271) = 7077888 * k + 3369814 := by
    unfold C
    simp [show (2359296 * k + 1123271) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 3369814) = 3538944 * k + 1684907 := by
    unfold C
    simp [show (7077888 * k + 3369814) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1684907) = 10616832 * k + 5054722 := by
    unfold C
    simp [show (3538944 * k + 1684907) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 5054722) = 5308416 * k + 2527361 := by
    unfold C
    simp [show (10616832 * k + 5054722) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 2527361) = 15925248 * k + 7582084 := by
    unfold C
    simp [show (5308416 * k + 2527361) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 7582084) = 7962624 * k + 3791042 := by
    unfold C
    simp [show (15925248 * k + 7582084) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 3791042) = 3981312 * k + 1895521 := by
    unfold C
    simp [show (7962624 * k + 3791042) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 1895521) = 11943936 * k + 5686564 := by
    unfold C
    simp [show (3981312 * k + 1895521) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 5686564) = 5971968 * k + 2843282 := by
    unfold C
    simp [show (11943936 * k + 5686564) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 2843282) = 2985984 * k + 1421641 := by
    unfold C
    simp [show (5971968 * k + 2843282) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1421641) = 8957952 * k + 4264924 := by
    unfold C
    simp [show (2985984 * k + 1421641) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 4264924) = 4478976 * k + 2132462 := by
    unfold C
    simp [show (8957952 * k + 4264924) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 2132462) = 2239488 * k + 1066231 := by
    unfold C
    simp [show (4478976 * k + 2132462) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 1066231) = 6718464 * k + 3198694 := by
    unfold C
    simp [show (2239488 * k + 1066231) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 3198694) = 3359232 * k + 1599347 := by
    unfold C
    simp [show (6718464 * k + 3198694) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 1599347) = 10077696 * k + 4798042 := by
    unfold C
    simp [show (3359232 * k + 1599347) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 4798042) = 5038848 * k + 2399021 := by
    unfold C
    simp [show (10077696 * k + 4798042) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 2399021) = 15116544 * k + 7197064 := by
    unfold C
    simp [show (5038848 * k + 2399021) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 7197064) = 7558272 * k + 3598532 := by
    unfold C
    simp [show (15116544 * k + 7197064) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 3598532) = 3779136 * k + 1799266 := by
    unfold C
    simp [show (7558272 * k + 3598532) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 1799266) = 1889568 * k + 899633 := by
    unfold C
    simp [show (3779136 * k + 1799266) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 899633) = 5668704 * k + 2698900 := by
    unfold C
    simp [show (1889568 * k + 899633) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 2698900) = 2834352 * k + 1349450 := by
    unfold C
    simp [show (5668704 * k + 2698900) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1349450) = 1417176 * k + 674725 := by
    unfold C
    simp [show (2834352 * k + 1349450) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 674725) = 4251528 * k + 2024176 := by
    unfold C
    simp [show (1417176 * k + 674725) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 2024176) = 2125764 * k + 1012088 := by
    unfold C
    simp [show (4251528 * k + 2024176) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1012088) = 1062882 * k + 506044 := by
    unfold C
    simp [show (2125764 * k + 1012088) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 506044) = 531441 * k + 253022 := by
    unfold C
    simp [show (1062882 * k + 506044) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 499231) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 499231)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_499355 : ∀ k : Nat,
    iterate (1048576 * k + 499355) 32 = 531441 * k + 253085 ∧
      531441 * k + 253085 < 1048576 * k + 499355 := by
  intro k
  have h1 : C (1048576 * k + 499355) = 3145728 * k + 1498066 := by
    unfold C
    simp [show (1048576 * k + 499355) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1498066) = 1572864 * k + 749033 := by
    unfold C
    simp [show (3145728 * k + 1498066) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 749033) = 4718592 * k + 2247100 := by
    unfold C
    simp [show (1572864 * k + 749033) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2247100) = 2359296 * k + 1123550 := by
    unfold C
    simp [show (4718592 * k + 2247100) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1123550) = 1179648 * k + 561775 := by
    unfold C
    simp [show (2359296 * k + 1123550) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 561775) = 3538944 * k + 1685326 := by
    unfold C
    simp [show (1179648 * k + 561775) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 1685326) = 1769472 * k + 842663 := by
    unfold C
    simp [show (3538944 * k + 1685326) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 842663) = 5308416 * k + 2527990 := by
    unfold C
    simp [show (1769472 * k + 842663) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 2527990) = 2654208 * k + 1263995 := by
    unfold C
    simp [show (5308416 * k + 2527990) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1263995) = 7962624 * k + 3791986 := by
    unfold C
    simp [show (2654208 * k + 1263995) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 3791986) = 3981312 * k + 1895993 := by
    unfold C
    simp [show (7962624 * k + 3791986) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 1895993) = 11943936 * k + 5687980 := by
    unfold C
    simp [show (3981312 * k + 1895993) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 5687980) = 5971968 * k + 2843990 := by
    unfold C
    simp [show (11943936 * k + 5687980) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 2843990) = 2985984 * k + 1421995 := by
    unfold C
    simp [show (5971968 * k + 2843990) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1421995) = 8957952 * k + 4265986 := by
    unfold C
    simp [show (2985984 * k + 1421995) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 4265986) = 4478976 * k + 2132993 := by
    unfold C
    simp [show (8957952 * k + 4265986) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 2132993) = 13436928 * k + 6398980 := by
    unfold C
    simp [show (4478976 * k + 2132993) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 6398980) = 6718464 * k + 3199490 := by
    unfold C
    simp [show (13436928 * k + 6398980) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 3199490) = 3359232 * k + 1599745 := by
    unfold C
    simp [show (6718464 * k + 3199490) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 1599745) = 10077696 * k + 4799236 := by
    unfold C
    simp [show (3359232 * k + 1599745) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 4799236) = 5038848 * k + 2399618 := by
    unfold C
    simp [show (10077696 * k + 4799236) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 2399618) = 2519424 * k + 1199809 := by
    unfold C
    simp [show (5038848 * k + 2399618) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1199809) = 7558272 * k + 3599428 := by
    unfold C
    simp [show (2519424 * k + 1199809) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 3599428) = 3779136 * k + 1799714 := by
    unfold C
    simp [show (7558272 * k + 3599428) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 1799714) = 1889568 * k + 899857 := by
    unfold C
    simp [show (3779136 * k + 1799714) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 899857) = 5668704 * k + 2699572 := by
    unfold C
    simp [show (1889568 * k + 899857) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 2699572) = 2834352 * k + 1349786 := by
    unfold C
    simp [show (5668704 * k + 2699572) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1349786) = 1417176 * k + 674893 := by
    unfold C
    simp [show (2834352 * k + 1349786) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 674893) = 4251528 * k + 2024680 := by
    unfold C
    simp [show (1417176 * k + 674893) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 2024680) = 2125764 * k + 1012340 := by
    unfold C
    simp [show (4251528 * k + 2024680) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1012340) = 1062882 * k + 506170 := by
    unfold C
    simp [show (2125764 * k + 1012340) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 506170) = 531441 * k + 253085 := by
    unfold C
    simp [show (1062882 * k + 506170) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 499355) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 499355)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_499391 : ∀ k : Nat,
    iterate (1048576 * k + 499391) 32 = 531441 * k + 253103 ∧
      531441 * k + 253103 < 1048576 * k + 499391 := by
  intro k
  have h1 : C (1048576 * k + 499391) = 3145728 * k + 1498174 := by
    unfold C
    simp [show (1048576 * k + 499391) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1498174) = 1572864 * k + 749087 := by
    unfold C
    simp [show (3145728 * k + 1498174) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 749087) = 4718592 * k + 2247262 := by
    unfold C
    simp [show (1572864 * k + 749087) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2247262) = 2359296 * k + 1123631 := by
    unfold C
    simp [show (4718592 * k + 2247262) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1123631) = 7077888 * k + 3370894 := by
    unfold C
    simp [show (2359296 * k + 1123631) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 3370894) = 3538944 * k + 1685447 := by
    unfold C
    simp [show (7077888 * k + 3370894) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1685447) = 10616832 * k + 5056342 := by
    unfold C
    simp [show (3538944 * k + 1685447) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 5056342) = 5308416 * k + 2528171 := by
    unfold C
    simp [show (10616832 * k + 5056342) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 2528171) = 15925248 * k + 7584514 := by
    unfold C
    simp [show (5308416 * k + 2528171) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 7584514) = 7962624 * k + 3792257 := by
    unfold C
    simp [show (15925248 * k + 7584514) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 3792257) = 23887872 * k + 11376772 := by
    unfold C
    simp [show (7962624 * k + 3792257) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 11376772) = 11943936 * k + 5688386 := by
    unfold C
    simp [show (23887872 * k + 11376772) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 5688386) = 5971968 * k + 2844193 := by
    unfold C
    simp [show (11943936 * k + 5688386) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 2844193) = 17915904 * k + 8532580 := by
    unfold C
    simp [show (5971968 * k + 2844193) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 8532580) = 8957952 * k + 4266290 := by
    unfold C
    simp [show (17915904 * k + 8532580) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 4266290) = 4478976 * k + 2133145 := by
    unfold C
    simp [show (8957952 * k + 4266290) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 2133145) = 13436928 * k + 6399436 := by
    unfold C
    simp [show (4478976 * k + 2133145) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 6399436) = 6718464 * k + 3199718 := by
    unfold C
    simp [show (13436928 * k + 6399436) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 3199718) = 3359232 * k + 1599859 := by
    unfold C
    simp [show (6718464 * k + 3199718) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 1599859) = 10077696 * k + 4799578 := by
    unfold C
    simp [show (3359232 * k + 1599859) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 4799578) = 5038848 * k + 2399789 := by
    unfold C
    simp [show (10077696 * k + 4799578) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 2399789) = 15116544 * k + 7199368 := by
    unfold C
    simp [show (5038848 * k + 2399789) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 7199368) = 7558272 * k + 3599684 := by
    unfold C
    simp [show (15116544 * k + 7199368) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 3599684) = 3779136 * k + 1799842 := by
    unfold C
    simp [show (7558272 * k + 3599684) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 1799842) = 1889568 * k + 899921 := by
    unfold C
    simp [show (3779136 * k + 1799842) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 899921) = 5668704 * k + 2699764 := by
    unfold C
    simp [show (1889568 * k + 899921) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 2699764) = 2834352 * k + 1349882 := by
    unfold C
    simp [show (5668704 * k + 2699764) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1349882) = 1417176 * k + 674941 := by
    unfold C
    simp [show (2834352 * k + 1349882) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 674941) = 4251528 * k + 2024824 := by
    unfold C
    simp [show (1417176 * k + 674941) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 2024824) = 2125764 * k + 1012412 := by
    unfold C
    simp [show (4251528 * k + 2024824) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1012412) = 1062882 * k + 506206 := by
    unfold C
    simp [show (2125764 * k + 1012412) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 506206) = 531441 * k + 253103 := by
    unfold C
    simp [show (1062882 * k + 506206) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 499391) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 499391)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_499519 : ∀ k : Nat,
    iterate (1048576 * k + 499519) 32 = 531441 * k + 253168 ∧
      531441 * k + 253168 < 1048576 * k + 499519 := by
  intro k
  have h1 : C (1048576 * k + 499519) = 3145728 * k + 1498558 := by
    unfold C
    simp [show (1048576 * k + 499519) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1498558) = 1572864 * k + 749279 := by
    unfold C
    simp [show (3145728 * k + 1498558) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 749279) = 4718592 * k + 2247838 := by
    unfold C
    simp [show (1572864 * k + 749279) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2247838) = 2359296 * k + 1123919 := by
    unfold C
    simp [show (4718592 * k + 2247838) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1123919) = 7077888 * k + 3371758 := by
    unfold C
    simp [show (2359296 * k + 1123919) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 3371758) = 3538944 * k + 1685879 := by
    unfold C
    simp [show (7077888 * k + 3371758) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1685879) = 10616832 * k + 5057638 := by
    unfold C
    simp [show (3538944 * k + 1685879) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 5057638) = 5308416 * k + 2528819 := by
    unfold C
    simp [show (10616832 * k + 5057638) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 2528819) = 15925248 * k + 7586458 := by
    unfold C
    simp [show (5308416 * k + 2528819) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 7586458) = 7962624 * k + 3793229 := by
    unfold C
    simp [show (15925248 * k + 7586458) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 3793229) = 23887872 * k + 11379688 := by
    unfold C
    simp [show (7962624 * k + 3793229) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 11379688) = 11943936 * k + 5689844 := by
    unfold C
    simp [show (23887872 * k + 11379688) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 5689844) = 5971968 * k + 2844922 := by
    unfold C
    simp [show (11943936 * k + 5689844) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 2844922) = 2985984 * k + 1422461 := by
    unfold C
    simp [show (5971968 * k + 2844922) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1422461) = 8957952 * k + 4267384 := by
    unfold C
    simp [show (2985984 * k + 1422461) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 4267384) = 4478976 * k + 2133692 := by
    unfold C
    simp [show (8957952 * k + 4267384) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 2133692) = 2239488 * k + 1066846 := by
    unfold C
    simp [show (4478976 * k + 2133692) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 1066846) = 1119744 * k + 533423 := by
    unfold C
    simp [show (2239488 * k + 1066846) % 2 = 0 by omega]
    omega
  have h19 : C (1119744 * k + 533423) = 3359232 * k + 1600270 := by
    unfold C
    simp [show (1119744 * k + 533423) % 2 ≠ 0 by omega]
    omega
  have h20 : C (3359232 * k + 1600270) = 1679616 * k + 800135 := by
    unfold C
    simp [show (3359232 * k + 1600270) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 800135) = 5038848 * k + 2400406 := by
    unfold C
    simp [show (1679616 * k + 800135) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 2400406) = 2519424 * k + 1200203 := by
    unfold C
    simp [show (5038848 * k + 2400406) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1200203) = 7558272 * k + 3600610 := by
    unfold C
    simp [show (2519424 * k + 1200203) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 3600610) = 3779136 * k + 1800305 := by
    unfold C
    simp [show (7558272 * k + 3600610) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 1800305) = 11337408 * k + 5400916 := by
    unfold C
    simp [show (3779136 * k + 1800305) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 5400916) = 5668704 * k + 2700458 := by
    unfold C
    simp [show (11337408 * k + 5400916) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 2700458) = 2834352 * k + 1350229 := by
    unfold C
    simp [show (5668704 * k + 2700458) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1350229) = 8503056 * k + 4050688 := by
    unfold C
    simp [show (2834352 * k + 1350229) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 4050688) = 4251528 * k + 2025344 := by
    unfold C
    simp [show (8503056 * k + 4050688) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 2025344) = 2125764 * k + 1012672 := by
    unfold C
    simp [show (4251528 * k + 2025344) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1012672) = 1062882 * k + 506336 := by
    unfold C
    simp [show (2125764 * k + 1012672) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 506336) = 531441 * k + 253168 := by
    unfold C
    simp [show (1062882 * k + 506336) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 499519) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 499519)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_499839 : ∀ k : Nat,
    iterate (1048576 * k + 499839) 32 = 531441 * k + 253330 ∧
      531441 * k + 253330 < 1048576 * k + 499839 := by
  intro k
  have h1 : C (1048576 * k + 499839) = 3145728 * k + 1499518 := by
    unfold C
    simp [show (1048576 * k + 499839) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1499518) = 1572864 * k + 749759 := by
    unfold C
    simp [show (3145728 * k + 1499518) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 749759) = 4718592 * k + 2249278 := by
    unfold C
    simp [show (1572864 * k + 749759) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2249278) = 2359296 * k + 1124639 := by
    unfold C
    simp [show (4718592 * k + 2249278) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1124639) = 7077888 * k + 3373918 := by
    unfold C
    simp [show (2359296 * k + 1124639) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 3373918) = 3538944 * k + 1686959 := by
    unfold C
    simp [show (7077888 * k + 3373918) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1686959) = 10616832 * k + 5060878 := by
    unfold C
    simp [show (3538944 * k + 1686959) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 5060878) = 5308416 * k + 2530439 := by
    unfold C
    simp [show (10616832 * k + 5060878) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 2530439) = 15925248 * k + 7591318 := by
    unfold C
    simp [show (5308416 * k + 2530439) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 7591318) = 7962624 * k + 3795659 := by
    unfold C
    simp [show (15925248 * k + 7591318) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 3795659) = 23887872 * k + 11386978 := by
    unfold C
    simp [show (7962624 * k + 3795659) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 11386978) = 11943936 * k + 5693489 := by
    unfold C
    simp [show (23887872 * k + 11386978) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 5693489) = 35831808 * k + 17080468 := by
    unfold C
    simp [show (11943936 * k + 5693489) % 2 ≠ 0 by omega]
    omega
  have h14 : C (35831808 * k + 17080468) = 17915904 * k + 8540234 := by
    unfold C
    simp [show (35831808 * k + 17080468) % 2 = 0 by omega]
    omega
  have h15 : C (17915904 * k + 8540234) = 8957952 * k + 4270117 := by
    unfold C
    simp [show (17915904 * k + 8540234) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 4270117) = 26873856 * k + 12810352 := by
    unfold C
    simp [show (8957952 * k + 4270117) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 12810352) = 13436928 * k + 6405176 := by
    unfold C
    simp [show (26873856 * k + 12810352) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 6405176) = 6718464 * k + 3202588 := by
    unfold C
    simp [show (13436928 * k + 6405176) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 3202588) = 3359232 * k + 1601294 := by
    unfold C
    simp [show (6718464 * k + 3202588) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 1601294) = 1679616 * k + 800647 := by
    unfold C
    simp [show (3359232 * k + 1601294) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 800647) = 5038848 * k + 2401942 := by
    unfold C
    simp [show (1679616 * k + 800647) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 2401942) = 2519424 * k + 1200971 := by
    unfold C
    simp [show (5038848 * k + 2401942) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1200971) = 7558272 * k + 3602914 := by
    unfold C
    simp [show (2519424 * k + 1200971) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 3602914) = 3779136 * k + 1801457 := by
    unfold C
    simp [show (7558272 * k + 3602914) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 1801457) = 11337408 * k + 5404372 := by
    unfold C
    simp [show (3779136 * k + 1801457) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 5404372) = 5668704 * k + 2702186 := by
    unfold C
    simp [show (11337408 * k + 5404372) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 2702186) = 2834352 * k + 1351093 := by
    unfold C
    simp [show (5668704 * k + 2702186) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1351093) = 8503056 * k + 4053280 := by
    unfold C
    simp [show (2834352 * k + 1351093) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 4053280) = 4251528 * k + 2026640 := by
    unfold C
    simp [show (8503056 * k + 4053280) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 2026640) = 2125764 * k + 1013320 := by
    unfold C
    simp [show (4251528 * k + 2026640) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1013320) = 1062882 * k + 506660 := by
    unfold C
    simp [show (2125764 * k + 1013320) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 506660) = 531441 * k + 253330 := by
    unfold C
    simp [show (1062882 * k + 506660) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 499839) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 499839)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_499963 : ∀ k : Nat,
    iterate (1048576 * k + 499963) 32 = 531441 * k + 253393 ∧
      531441 * k + 253393 < 1048576 * k + 499963 := by
  intro k
  have h1 : C (1048576 * k + 499963) = 3145728 * k + 1499890 := by
    unfold C
    simp [show (1048576 * k + 499963) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1499890) = 1572864 * k + 749945 := by
    unfold C
    simp [show (3145728 * k + 1499890) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 749945) = 4718592 * k + 2249836 := by
    unfold C
    simp [show (1572864 * k + 749945) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2249836) = 2359296 * k + 1124918 := by
    unfold C
    simp [show (4718592 * k + 2249836) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1124918) = 1179648 * k + 562459 := by
    unfold C
    simp [show (2359296 * k + 1124918) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 562459) = 3538944 * k + 1687378 := by
    unfold C
    simp [show (1179648 * k + 562459) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 1687378) = 1769472 * k + 843689 := by
    unfold C
    simp [show (3538944 * k + 1687378) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 843689) = 5308416 * k + 2531068 := by
    unfold C
    simp [show (1769472 * k + 843689) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 2531068) = 2654208 * k + 1265534 := by
    unfold C
    simp [show (5308416 * k + 2531068) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1265534) = 1327104 * k + 632767 := by
    unfold C
    simp [show (2654208 * k + 1265534) % 2 = 0 by omega]
    omega
  have h11 : C (1327104 * k + 632767) = 3981312 * k + 1898302 := by
    unfold C
    simp [show (1327104 * k + 632767) % 2 ≠ 0 by omega]
    omega
  have h12 : C (3981312 * k + 1898302) = 1990656 * k + 949151 := by
    unfold C
    simp [show (3981312 * k + 1898302) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 949151) = 5971968 * k + 2847454 := by
    unfold C
    simp [show (1990656 * k + 949151) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 2847454) = 2985984 * k + 1423727 := by
    unfold C
    simp [show (5971968 * k + 2847454) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1423727) = 8957952 * k + 4271182 := by
    unfold C
    simp [show (2985984 * k + 1423727) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 4271182) = 4478976 * k + 2135591 := by
    unfold C
    simp [show (8957952 * k + 4271182) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 2135591) = 13436928 * k + 6406774 := by
    unfold C
    simp [show (4478976 * k + 2135591) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 6406774) = 6718464 * k + 3203387 := by
    unfold C
    simp [show (13436928 * k + 6406774) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 3203387) = 20155392 * k + 9610162 := by
    unfold C
    simp [show (6718464 * k + 3203387) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 9610162) = 10077696 * k + 4805081 := by
    unfold C
    simp [show (20155392 * k + 9610162) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 4805081) = 30233088 * k + 14415244 := by
    unfold C
    simp [show (10077696 * k + 4805081) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 14415244) = 15116544 * k + 7207622 := by
    unfold C
    simp [show (30233088 * k + 14415244) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 7207622) = 7558272 * k + 3603811 := by
    unfold C
    simp [show (15116544 * k + 7207622) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 3603811) = 22674816 * k + 10811434 := by
    unfold C
    simp [show (7558272 * k + 3603811) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 10811434) = 11337408 * k + 5405717 := by
    unfold C
    simp [show (22674816 * k + 10811434) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 5405717) = 34012224 * k + 16217152 := by
    unfold C
    simp [show (11337408 * k + 5405717) % 2 ≠ 0 by omega]
    omega
  have h27 : C (34012224 * k + 16217152) = 17006112 * k + 8108576 := by
    unfold C
    simp [show (34012224 * k + 16217152) % 2 = 0 by omega]
    omega
  have h28 : C (17006112 * k + 8108576) = 8503056 * k + 4054288 := by
    unfold C
    simp [show (17006112 * k + 8108576) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 4054288) = 4251528 * k + 2027144 := by
    unfold C
    simp [show (8503056 * k + 4054288) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 2027144) = 2125764 * k + 1013572 := by
    unfold C
    simp [show (4251528 * k + 2027144) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1013572) = 1062882 * k + 506786 := by
    unfold C
    simp [show (2125764 * k + 1013572) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 506786) = 531441 * k + 253393 := by
    unfold C
    simp [show (1062882 * k + 506786) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 499963) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 499963)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_500159 : ∀ k : Nat,
    iterate (1048576 * k + 500159) 32 = 531441 * k + 253492 ∧
      531441 * k + 253492 < 1048576 * k + 500159 := by
  intro k
  have h1 : C (1048576 * k + 500159) = 3145728 * k + 1500478 := by
    unfold C
    simp [show (1048576 * k + 500159) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1500478) = 1572864 * k + 750239 := by
    unfold C
    simp [show (3145728 * k + 1500478) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 750239) = 4718592 * k + 2250718 := by
    unfold C
    simp [show (1572864 * k + 750239) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2250718) = 2359296 * k + 1125359 := by
    unfold C
    simp [show (4718592 * k + 2250718) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1125359) = 7077888 * k + 3376078 := by
    unfold C
    simp [show (2359296 * k + 1125359) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 3376078) = 3538944 * k + 1688039 := by
    unfold C
    simp [show (7077888 * k + 3376078) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1688039) = 10616832 * k + 5064118 := by
    unfold C
    simp [show (3538944 * k + 1688039) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 5064118) = 5308416 * k + 2532059 := by
    unfold C
    simp [show (10616832 * k + 5064118) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 2532059) = 15925248 * k + 7596178 := by
    unfold C
    simp [show (5308416 * k + 2532059) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 7596178) = 7962624 * k + 3798089 := by
    unfold C
    simp [show (15925248 * k + 7596178) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 3798089) = 23887872 * k + 11394268 := by
    unfold C
    simp [show (7962624 * k + 3798089) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 11394268) = 11943936 * k + 5697134 := by
    unfold C
    simp [show (23887872 * k + 11394268) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 5697134) = 5971968 * k + 2848567 := by
    unfold C
    simp [show (11943936 * k + 5697134) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 2848567) = 17915904 * k + 8545702 := by
    unfold C
    simp [show (5971968 * k + 2848567) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 8545702) = 8957952 * k + 4272851 := by
    unfold C
    simp [show (17915904 * k + 8545702) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 4272851) = 26873856 * k + 12818554 := by
    unfold C
    simp [show (8957952 * k + 4272851) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 12818554) = 13436928 * k + 6409277 := by
    unfold C
    simp [show (26873856 * k + 12818554) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 6409277) = 40310784 * k + 19227832 := by
    unfold C
    simp [show (13436928 * k + 6409277) % 2 ≠ 0 by omega]
    omega
  have h19 : C (40310784 * k + 19227832) = 20155392 * k + 9613916 := by
    unfold C
    simp [show (40310784 * k + 19227832) % 2 = 0 by omega]
    omega
  have h20 : C (20155392 * k + 9613916) = 10077696 * k + 4806958 := by
    unfold C
    simp [show (20155392 * k + 9613916) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 4806958) = 5038848 * k + 2403479 := by
    unfold C
    simp [show (10077696 * k + 4806958) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 2403479) = 15116544 * k + 7210438 := by
    unfold C
    simp [show (5038848 * k + 2403479) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 7210438) = 7558272 * k + 3605219 := by
    unfold C
    simp [show (15116544 * k + 7210438) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 3605219) = 22674816 * k + 10815658 := by
    unfold C
    simp [show (7558272 * k + 3605219) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 10815658) = 11337408 * k + 5407829 := by
    unfold C
    simp [show (22674816 * k + 10815658) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 5407829) = 34012224 * k + 16223488 := by
    unfold C
    simp [show (11337408 * k + 5407829) % 2 ≠ 0 by omega]
    omega
  have h27 : C (34012224 * k + 16223488) = 17006112 * k + 8111744 := by
    unfold C
    simp [show (34012224 * k + 16223488) % 2 = 0 by omega]
    omega
  have h28 : C (17006112 * k + 8111744) = 8503056 * k + 4055872 := by
    unfold C
    simp [show (17006112 * k + 8111744) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 4055872) = 4251528 * k + 2027936 := by
    unfold C
    simp [show (8503056 * k + 4055872) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 2027936) = 2125764 * k + 1013968 := by
    unfold C
    simp [show (4251528 * k + 2027936) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1013968) = 1062882 * k + 506984 := by
    unfold C
    simp [show (2125764 * k + 1013968) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 506984) = 531441 * k + 253492 := by
    unfold C
    simp [show (1062882 * k + 506984) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 500159) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 500159)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_500271 : ∀ k : Nat,
    iterate (1048576 * k + 500271) 32 = 531441 * k + 253549 ∧
      531441 * k + 253549 < 1048576 * k + 500271 := by
  intro k
  have h1 : C (1048576 * k + 500271) = 3145728 * k + 1500814 := by
    unfold C
    simp [show (1048576 * k + 500271) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1500814) = 1572864 * k + 750407 := by
    unfold C
    simp [show (3145728 * k + 1500814) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 750407) = 4718592 * k + 2251222 := by
    unfold C
    simp [show (1572864 * k + 750407) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2251222) = 2359296 * k + 1125611 := by
    unfold C
    simp [show (4718592 * k + 2251222) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1125611) = 7077888 * k + 3376834 := by
    unfold C
    simp [show (2359296 * k + 1125611) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 3376834) = 3538944 * k + 1688417 := by
    unfold C
    simp [show (7077888 * k + 3376834) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1688417) = 10616832 * k + 5065252 := by
    unfold C
    simp [show (3538944 * k + 1688417) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 5065252) = 5308416 * k + 2532626 := by
    unfold C
    simp [show (10616832 * k + 5065252) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 2532626) = 2654208 * k + 1266313 := by
    unfold C
    simp [show (5308416 * k + 2532626) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1266313) = 7962624 * k + 3798940 := by
    unfold C
    simp [show (2654208 * k + 1266313) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 3798940) = 3981312 * k + 1899470 := by
    unfold C
    simp [show (7962624 * k + 3798940) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 1899470) = 1990656 * k + 949735 := by
    unfold C
    simp [show (3981312 * k + 1899470) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 949735) = 5971968 * k + 2849206 := by
    unfold C
    simp [show (1990656 * k + 949735) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 2849206) = 2985984 * k + 1424603 := by
    unfold C
    simp [show (5971968 * k + 2849206) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1424603) = 8957952 * k + 4273810 := by
    unfold C
    simp [show (2985984 * k + 1424603) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 4273810) = 4478976 * k + 2136905 := by
    unfold C
    simp [show (8957952 * k + 4273810) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 2136905) = 13436928 * k + 6410716 := by
    unfold C
    simp [show (4478976 * k + 2136905) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 6410716) = 6718464 * k + 3205358 := by
    unfold C
    simp [show (13436928 * k + 6410716) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 3205358) = 3359232 * k + 1602679 := by
    unfold C
    simp [show (6718464 * k + 3205358) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 1602679) = 10077696 * k + 4808038 := by
    unfold C
    simp [show (3359232 * k + 1602679) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 4808038) = 5038848 * k + 2404019 := by
    unfold C
    simp [show (10077696 * k + 4808038) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 2404019) = 15116544 * k + 7212058 := by
    unfold C
    simp [show (5038848 * k + 2404019) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 7212058) = 7558272 * k + 3606029 := by
    unfold C
    simp [show (15116544 * k + 7212058) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 3606029) = 22674816 * k + 10818088 := by
    unfold C
    simp [show (7558272 * k + 3606029) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 10818088) = 11337408 * k + 5409044 := by
    unfold C
    simp [show (22674816 * k + 10818088) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 5409044) = 5668704 * k + 2704522 := by
    unfold C
    simp [show (11337408 * k + 5409044) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 2704522) = 2834352 * k + 1352261 := by
    unfold C
    simp [show (5668704 * k + 2704522) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1352261) = 8503056 * k + 4056784 := by
    unfold C
    simp [show (2834352 * k + 1352261) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 4056784) = 4251528 * k + 2028392 := by
    unfold C
    simp [show (8503056 * k + 4056784) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 2028392) = 2125764 * k + 1014196 := by
    unfold C
    simp [show (4251528 * k + 2028392) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1014196) = 1062882 * k + 507098 := by
    unfold C
    simp [show (2125764 * k + 1014196) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 507098) = 531441 * k + 253549 := by
    unfold C
    simp [show (1062882 * k + 507098) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 500271) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 500271)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_500735 : ∀ k : Nat,
    iterate (1048576 * k + 500735) 32 = 531441 * k + 253784 ∧
      531441 * k + 253784 < 1048576 * k + 500735 := by
  intro k
  have h1 : C (1048576 * k + 500735) = 3145728 * k + 1502206 := by
    unfold C
    simp [show (1048576 * k + 500735) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1502206) = 1572864 * k + 751103 := by
    unfold C
    simp [show (3145728 * k + 1502206) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 751103) = 4718592 * k + 2253310 := by
    unfold C
    simp [show (1572864 * k + 751103) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2253310) = 2359296 * k + 1126655 := by
    unfold C
    simp [show (4718592 * k + 2253310) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1126655) = 7077888 * k + 3379966 := by
    unfold C
    simp [show (2359296 * k + 1126655) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 3379966) = 3538944 * k + 1689983 := by
    unfold C
    simp [show (7077888 * k + 3379966) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1689983) = 10616832 * k + 5069950 := by
    unfold C
    simp [show (3538944 * k + 1689983) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 5069950) = 5308416 * k + 2534975 := by
    unfold C
    simp [show (10616832 * k + 5069950) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 2534975) = 15925248 * k + 7604926 := by
    unfold C
    simp [show (5308416 * k + 2534975) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 7604926) = 7962624 * k + 3802463 := by
    unfold C
    simp [show (15925248 * k + 7604926) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 3802463) = 23887872 * k + 11407390 := by
    unfold C
    simp [show (7962624 * k + 3802463) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 11407390) = 11943936 * k + 5703695 := by
    unfold C
    simp [show (23887872 * k + 11407390) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 5703695) = 35831808 * k + 17111086 := by
    unfold C
    simp [show (11943936 * k + 5703695) % 2 ≠ 0 by omega]
    omega
  have h14 : C (35831808 * k + 17111086) = 17915904 * k + 8555543 := by
    unfold C
    simp [show (35831808 * k + 17111086) % 2 = 0 by omega]
    omega
  have h15 : C (17915904 * k + 8555543) = 53747712 * k + 25666630 := by
    unfold C
    simp [show (17915904 * k + 8555543) % 2 ≠ 0 by omega]
    omega
  have h16 : C (53747712 * k + 25666630) = 26873856 * k + 12833315 := by
    unfold C
    simp [show (53747712 * k + 25666630) % 2 = 0 by omega]
    omega
  have h17 : C (26873856 * k + 12833315) = 80621568 * k + 38499946 := by
    unfold C
    simp [show (26873856 * k + 12833315) % 2 ≠ 0 by omega]
    omega
  have h18 : C (80621568 * k + 38499946) = 40310784 * k + 19249973 := by
    unfold C
    simp [show (80621568 * k + 38499946) % 2 = 0 by omega]
    omega
  have h19 : C (40310784 * k + 19249973) = 120932352 * k + 57749920 := by
    unfold C
    simp [show (40310784 * k + 19249973) % 2 ≠ 0 by omega]
    omega
  have h20 : C (120932352 * k + 57749920) = 60466176 * k + 28874960 := by
    unfold C
    simp [show (120932352 * k + 57749920) % 2 = 0 by omega]
    omega
  have h21 : C (60466176 * k + 28874960) = 30233088 * k + 14437480 := by
    unfold C
    simp [show (60466176 * k + 28874960) % 2 = 0 by omega]
    omega
  have h22 : C (30233088 * k + 14437480) = 15116544 * k + 7218740 := by
    unfold C
    simp [show (30233088 * k + 14437480) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 7218740) = 7558272 * k + 3609370 := by
    unfold C
    simp [show (15116544 * k + 7218740) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 3609370) = 3779136 * k + 1804685 := by
    unfold C
    simp [show (7558272 * k + 3609370) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 1804685) = 11337408 * k + 5414056 := by
    unfold C
    simp [show (3779136 * k + 1804685) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 5414056) = 5668704 * k + 2707028 := by
    unfold C
    simp [show (11337408 * k + 5414056) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 2707028) = 2834352 * k + 1353514 := by
    unfold C
    simp [show (5668704 * k + 2707028) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1353514) = 1417176 * k + 676757 := by
    unfold C
    simp [show (2834352 * k + 1353514) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 676757) = 4251528 * k + 2030272 := by
    unfold C
    simp [show (1417176 * k + 676757) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 2030272) = 2125764 * k + 1015136 := by
    unfold C
    simp [show (4251528 * k + 2030272) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1015136) = 1062882 * k + 507568 := by
    unfold C
    simp [show (2125764 * k + 1015136) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 507568) = 531441 * k + 253784 := by
    unfold C
    simp [show (1062882 * k + 507568) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 500735) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 500735)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_500839 : ∀ k : Nat,
    iterate (1048576 * k + 500839) 32 = 531441 * k + 253837 ∧
      531441 * k + 253837 < 1048576 * k + 500839 := by
  intro k
  have h1 : C (1048576 * k + 500839) = 3145728 * k + 1502518 := by
    unfold C
    simp [show (1048576 * k + 500839) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1502518) = 1572864 * k + 751259 := by
    unfold C
    simp [show (3145728 * k + 1502518) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 751259) = 4718592 * k + 2253778 := by
    unfold C
    simp [show (1572864 * k + 751259) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2253778) = 2359296 * k + 1126889 := by
    unfold C
    simp [show (4718592 * k + 2253778) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1126889) = 7077888 * k + 3380668 := by
    unfold C
    simp [show (2359296 * k + 1126889) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 3380668) = 3538944 * k + 1690334 := by
    unfold C
    simp [show (7077888 * k + 3380668) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1690334) = 1769472 * k + 845167 := by
    unfold C
    simp [show (3538944 * k + 1690334) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 845167) = 5308416 * k + 2535502 := by
    unfold C
    simp [show (1769472 * k + 845167) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 2535502) = 2654208 * k + 1267751 := by
    unfold C
    simp [show (5308416 * k + 2535502) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1267751) = 7962624 * k + 3803254 := by
    unfold C
    simp [show (2654208 * k + 1267751) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 3803254) = 3981312 * k + 1901627 := by
    unfold C
    simp [show (7962624 * k + 3803254) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 1901627) = 11943936 * k + 5704882 := by
    unfold C
    simp [show (3981312 * k + 1901627) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 5704882) = 5971968 * k + 2852441 := by
    unfold C
    simp [show (11943936 * k + 5704882) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 2852441) = 17915904 * k + 8557324 := by
    unfold C
    simp [show (5971968 * k + 2852441) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 8557324) = 8957952 * k + 4278662 := by
    unfold C
    simp [show (17915904 * k + 8557324) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 4278662) = 4478976 * k + 2139331 := by
    unfold C
    simp [show (8957952 * k + 4278662) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 2139331) = 13436928 * k + 6417994 := by
    unfold C
    simp [show (4478976 * k + 2139331) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 6417994) = 6718464 * k + 3208997 := by
    unfold C
    simp [show (13436928 * k + 6417994) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 3208997) = 20155392 * k + 9626992 := by
    unfold C
    simp [show (6718464 * k + 3208997) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 9626992) = 10077696 * k + 4813496 := by
    unfold C
    simp [show (20155392 * k + 9626992) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 4813496) = 5038848 * k + 2406748 := by
    unfold C
    simp [show (10077696 * k + 4813496) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 2406748) = 2519424 * k + 1203374 := by
    unfold C
    simp [show (5038848 * k + 2406748) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1203374) = 1259712 * k + 601687 := by
    unfold C
    simp [show (2519424 * k + 1203374) % 2 = 0 by omega]
    omega
  have h24 : C (1259712 * k + 601687) = 3779136 * k + 1805062 := by
    unfold C
    simp [show (1259712 * k + 601687) % 2 ≠ 0 by omega]
    omega
  have h25 : C (3779136 * k + 1805062) = 1889568 * k + 902531 := by
    unfold C
    simp [show (3779136 * k + 1805062) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 902531) = 5668704 * k + 2707594 := by
    unfold C
    simp [show (1889568 * k + 902531) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 2707594) = 2834352 * k + 1353797 := by
    unfold C
    simp [show (5668704 * k + 2707594) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1353797) = 8503056 * k + 4061392 := by
    unfold C
    simp [show (2834352 * k + 1353797) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 4061392) = 4251528 * k + 2030696 := by
    unfold C
    simp [show (8503056 * k + 4061392) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 2030696) = 2125764 * k + 1015348 := by
    unfold C
    simp [show (4251528 * k + 2030696) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1015348) = 1062882 * k + 507674 := by
    unfold C
    simp [show (2125764 * k + 1015348) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 507674) = 531441 * k + 253837 := by
    unfold C
    simp [show (1062882 * k + 507674) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 500839) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 500839)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_501919 : ∀ k : Nat,
    iterate (1048576 * k + 501919) 32 = 531441 * k + 254384 ∧
      531441 * k + 254384 < 1048576 * k + 501919 := by
  intro k
  have h1 : C (1048576 * k + 501919) = 3145728 * k + 1505758 := by
    unfold C
    simp [show (1048576 * k + 501919) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1505758) = 1572864 * k + 752879 := by
    unfold C
    simp [show (3145728 * k + 1505758) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 752879) = 4718592 * k + 2258638 := by
    unfold C
    simp [show (1572864 * k + 752879) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2258638) = 2359296 * k + 1129319 := by
    unfold C
    simp [show (4718592 * k + 2258638) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1129319) = 7077888 * k + 3387958 := by
    unfold C
    simp [show (2359296 * k + 1129319) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 3387958) = 3538944 * k + 1693979 := by
    unfold C
    simp [show (7077888 * k + 3387958) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1693979) = 10616832 * k + 5081938 := by
    unfold C
    simp [show (3538944 * k + 1693979) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 5081938) = 5308416 * k + 2540969 := by
    unfold C
    simp [show (10616832 * k + 5081938) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 2540969) = 15925248 * k + 7622908 := by
    unfold C
    simp [show (5308416 * k + 2540969) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 7622908) = 7962624 * k + 3811454 := by
    unfold C
    simp [show (15925248 * k + 7622908) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 3811454) = 3981312 * k + 1905727 := by
    unfold C
    simp [show (7962624 * k + 3811454) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 1905727) = 11943936 * k + 5717182 := by
    unfold C
    simp [show (3981312 * k + 1905727) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 5717182) = 5971968 * k + 2858591 := by
    unfold C
    simp [show (11943936 * k + 5717182) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 2858591) = 17915904 * k + 8575774 := by
    unfold C
    simp [show (5971968 * k + 2858591) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 8575774) = 8957952 * k + 4287887 := by
    unfold C
    simp [show (17915904 * k + 8575774) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 4287887) = 26873856 * k + 12863662 := by
    unfold C
    simp [show (8957952 * k + 4287887) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 12863662) = 13436928 * k + 6431831 := by
    unfold C
    simp [show (26873856 * k + 12863662) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 6431831) = 40310784 * k + 19295494 := by
    unfold C
    simp [show (13436928 * k + 6431831) % 2 ≠ 0 by omega]
    omega
  have h19 : C (40310784 * k + 19295494) = 20155392 * k + 9647747 := by
    unfold C
    simp [show (40310784 * k + 19295494) % 2 = 0 by omega]
    omega
  have h20 : C (20155392 * k + 9647747) = 60466176 * k + 28943242 := by
    unfold C
    simp [show (20155392 * k + 9647747) % 2 ≠ 0 by omega]
    omega
  have h21 : C (60466176 * k + 28943242) = 30233088 * k + 14471621 := by
    unfold C
    simp [show (60466176 * k + 28943242) % 2 = 0 by omega]
    omega
  have h22 : C (30233088 * k + 14471621) = 90699264 * k + 43414864 := by
    unfold C
    simp [show (30233088 * k + 14471621) % 2 ≠ 0 by omega]
    omega
  have h23 : C (90699264 * k + 43414864) = 45349632 * k + 21707432 := by
    unfold C
    simp [show (90699264 * k + 43414864) % 2 = 0 by omega]
    omega
  have h24 : C (45349632 * k + 21707432) = 22674816 * k + 10853716 := by
    unfold C
    simp [show (45349632 * k + 21707432) % 2 = 0 by omega]
    omega
  have h25 : C (22674816 * k + 10853716) = 11337408 * k + 5426858 := by
    unfold C
    simp [show (22674816 * k + 10853716) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 5426858) = 5668704 * k + 2713429 := by
    unfold C
    simp [show (11337408 * k + 5426858) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 2713429) = 17006112 * k + 8140288 := by
    unfold C
    simp [show (5668704 * k + 2713429) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 8140288) = 8503056 * k + 4070144 := by
    unfold C
    simp [show (17006112 * k + 8140288) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 4070144) = 4251528 * k + 2035072 := by
    unfold C
    simp [show (8503056 * k + 4070144) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 2035072) = 2125764 * k + 1017536 := by
    unfold C
    simp [show (4251528 * k + 2035072) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1017536) = 1062882 * k + 508768 := by
    unfold C
    simp [show (2125764 * k + 1017536) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 508768) = 531441 * k + 254384 := by
    unfold C
    simp [show (1062882 * k + 508768) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 501919) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 501919)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_502207 : ∀ k : Nat,
    iterate (1048576 * k + 502207) 32 = 531441 * k + 254530 ∧
      531441 * k + 254530 < 1048576 * k + 502207 := by
  intro k
  have h1 : C (1048576 * k + 502207) = 3145728 * k + 1506622 := by
    unfold C
    simp [show (1048576 * k + 502207) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1506622) = 1572864 * k + 753311 := by
    unfold C
    simp [show (3145728 * k + 1506622) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 753311) = 4718592 * k + 2259934 := by
    unfold C
    simp [show (1572864 * k + 753311) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2259934) = 2359296 * k + 1129967 := by
    unfold C
    simp [show (4718592 * k + 2259934) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1129967) = 7077888 * k + 3389902 := by
    unfold C
    simp [show (2359296 * k + 1129967) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 3389902) = 3538944 * k + 1694951 := by
    unfold C
    simp [show (7077888 * k + 3389902) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1694951) = 10616832 * k + 5084854 := by
    unfold C
    simp [show (3538944 * k + 1694951) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 5084854) = 5308416 * k + 2542427 := by
    unfold C
    simp [show (10616832 * k + 5084854) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 2542427) = 15925248 * k + 7627282 := by
    unfold C
    simp [show (5308416 * k + 2542427) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 7627282) = 7962624 * k + 3813641 := by
    unfold C
    simp [show (15925248 * k + 7627282) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 3813641) = 23887872 * k + 11440924 := by
    unfold C
    simp [show (7962624 * k + 3813641) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 11440924) = 11943936 * k + 5720462 := by
    unfold C
    simp [show (23887872 * k + 11440924) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 5720462) = 5971968 * k + 2860231 := by
    unfold C
    simp [show (11943936 * k + 5720462) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 2860231) = 17915904 * k + 8580694 := by
    unfold C
    simp [show (5971968 * k + 2860231) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 8580694) = 8957952 * k + 4290347 := by
    unfold C
    simp [show (17915904 * k + 8580694) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 4290347) = 26873856 * k + 12871042 := by
    unfold C
    simp [show (8957952 * k + 4290347) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 12871042) = 13436928 * k + 6435521 := by
    unfold C
    simp [show (26873856 * k + 12871042) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 6435521) = 40310784 * k + 19306564 := by
    unfold C
    simp [show (13436928 * k + 6435521) % 2 ≠ 0 by omega]
    omega
  have h19 : C (40310784 * k + 19306564) = 20155392 * k + 9653282 := by
    unfold C
    simp [show (40310784 * k + 19306564) % 2 = 0 by omega]
    omega
  have h20 : C (20155392 * k + 9653282) = 10077696 * k + 4826641 := by
    unfold C
    simp [show (20155392 * k + 9653282) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 4826641) = 30233088 * k + 14479924 := by
    unfold C
    simp [show (10077696 * k + 4826641) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 14479924) = 15116544 * k + 7239962 := by
    unfold C
    simp [show (30233088 * k + 14479924) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 7239962) = 7558272 * k + 3619981 := by
    unfold C
    simp [show (15116544 * k + 7239962) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 3619981) = 22674816 * k + 10859944 := by
    unfold C
    simp [show (7558272 * k + 3619981) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 10859944) = 11337408 * k + 5429972 := by
    unfold C
    simp [show (22674816 * k + 10859944) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 5429972) = 5668704 * k + 2714986 := by
    unfold C
    simp [show (11337408 * k + 5429972) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 2714986) = 2834352 * k + 1357493 := by
    unfold C
    simp [show (5668704 * k + 2714986) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1357493) = 8503056 * k + 4072480 := by
    unfold C
    simp [show (2834352 * k + 1357493) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 4072480) = 4251528 * k + 2036240 := by
    unfold C
    simp [show (8503056 * k + 4072480) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 2036240) = 2125764 * k + 1018120 := by
    unfold C
    simp [show (4251528 * k + 2036240) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1018120) = 1062882 * k + 509060 := by
    unfold C
    simp [show (2125764 * k + 1018120) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 509060) = 531441 * k + 254530 := by
    unfold C
    simp [show (1062882 * k + 509060) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 502207) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 502207)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_502427 : ∀ k : Nat,
    iterate (1048576 * k + 502427) 32 = 531441 * k + 254642 ∧
      531441 * k + 254642 < 1048576 * k + 502427 := by
  intro k
  have h1 : C (1048576 * k + 502427) = 3145728 * k + 1507282 := by
    unfold C
    simp [show (1048576 * k + 502427) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1507282) = 1572864 * k + 753641 := by
    unfold C
    simp [show (3145728 * k + 1507282) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 753641) = 4718592 * k + 2260924 := by
    unfold C
    simp [show (1572864 * k + 753641) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2260924) = 2359296 * k + 1130462 := by
    unfold C
    simp [show (4718592 * k + 2260924) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1130462) = 1179648 * k + 565231 := by
    unfold C
    simp [show (2359296 * k + 1130462) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 565231) = 3538944 * k + 1695694 := by
    unfold C
    simp [show (1179648 * k + 565231) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 1695694) = 1769472 * k + 847847 := by
    unfold C
    simp [show (3538944 * k + 1695694) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 847847) = 5308416 * k + 2543542 := by
    unfold C
    simp [show (1769472 * k + 847847) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 2543542) = 2654208 * k + 1271771 := by
    unfold C
    simp [show (5308416 * k + 2543542) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1271771) = 7962624 * k + 3815314 := by
    unfold C
    simp [show (2654208 * k + 1271771) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 3815314) = 3981312 * k + 1907657 := by
    unfold C
    simp [show (7962624 * k + 3815314) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 1907657) = 11943936 * k + 5722972 := by
    unfold C
    simp [show (3981312 * k + 1907657) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 5722972) = 5971968 * k + 2861486 := by
    unfold C
    simp [show (11943936 * k + 5722972) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 2861486) = 2985984 * k + 1430743 := by
    unfold C
    simp [show (5971968 * k + 2861486) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1430743) = 8957952 * k + 4292230 := by
    unfold C
    simp [show (2985984 * k + 1430743) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 4292230) = 4478976 * k + 2146115 := by
    unfold C
    simp [show (8957952 * k + 4292230) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 2146115) = 13436928 * k + 6438346 := by
    unfold C
    simp [show (4478976 * k + 2146115) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 6438346) = 6718464 * k + 3219173 := by
    unfold C
    simp [show (13436928 * k + 6438346) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 3219173) = 20155392 * k + 9657520 := by
    unfold C
    simp [show (6718464 * k + 3219173) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 9657520) = 10077696 * k + 4828760 := by
    unfold C
    simp [show (20155392 * k + 9657520) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 4828760) = 5038848 * k + 2414380 := by
    unfold C
    simp [show (10077696 * k + 4828760) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 2414380) = 2519424 * k + 1207190 := by
    unfold C
    simp [show (5038848 * k + 2414380) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1207190) = 1259712 * k + 603595 := by
    unfold C
    simp [show (2519424 * k + 1207190) % 2 = 0 by omega]
    omega
  have h24 : C (1259712 * k + 603595) = 3779136 * k + 1810786 := by
    unfold C
    simp [show (1259712 * k + 603595) % 2 ≠ 0 by omega]
    omega
  have h25 : C (3779136 * k + 1810786) = 1889568 * k + 905393 := by
    unfold C
    simp [show (3779136 * k + 1810786) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 905393) = 5668704 * k + 2716180 := by
    unfold C
    simp [show (1889568 * k + 905393) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 2716180) = 2834352 * k + 1358090 := by
    unfold C
    simp [show (5668704 * k + 2716180) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1358090) = 1417176 * k + 679045 := by
    unfold C
    simp [show (2834352 * k + 1358090) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 679045) = 4251528 * k + 2037136 := by
    unfold C
    simp [show (1417176 * k + 679045) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 2037136) = 2125764 * k + 1018568 := by
    unfold C
    simp [show (4251528 * k + 2037136) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1018568) = 1062882 * k + 509284 := by
    unfold C
    simp [show (2125764 * k + 1018568) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 509284) = 531441 * k + 254642 := by
    unfold C
    simp [show (1062882 * k + 509284) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 502427) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 502427)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_502439 : ∀ k : Nat,
    iterate (1048576 * k + 502439) 32 = 531441 * k + 254648 ∧
      531441 * k + 254648 < 1048576 * k + 502439 := by
  intro k
  have h1 : C (1048576 * k + 502439) = 3145728 * k + 1507318 := by
    unfold C
    simp [show (1048576 * k + 502439) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1507318) = 1572864 * k + 753659 := by
    unfold C
    simp [show (3145728 * k + 1507318) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 753659) = 4718592 * k + 2260978 := by
    unfold C
    simp [show (1572864 * k + 753659) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2260978) = 2359296 * k + 1130489 := by
    unfold C
    simp [show (4718592 * k + 2260978) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1130489) = 7077888 * k + 3391468 := by
    unfold C
    simp [show (2359296 * k + 1130489) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 3391468) = 3538944 * k + 1695734 := by
    unfold C
    simp [show (7077888 * k + 3391468) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1695734) = 1769472 * k + 847867 := by
    unfold C
    simp [show (3538944 * k + 1695734) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 847867) = 5308416 * k + 2543602 := by
    unfold C
    simp [show (1769472 * k + 847867) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 2543602) = 2654208 * k + 1271801 := by
    unfold C
    simp [show (5308416 * k + 2543602) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1271801) = 7962624 * k + 3815404 := by
    unfold C
    simp [show (2654208 * k + 1271801) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 3815404) = 3981312 * k + 1907702 := by
    unfold C
    simp [show (7962624 * k + 3815404) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 1907702) = 1990656 * k + 953851 := by
    unfold C
    simp [show (3981312 * k + 1907702) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 953851) = 5971968 * k + 2861554 := by
    unfold C
    simp [show (1990656 * k + 953851) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 2861554) = 2985984 * k + 1430777 := by
    unfold C
    simp [show (5971968 * k + 2861554) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1430777) = 8957952 * k + 4292332 := by
    unfold C
    simp [show (2985984 * k + 1430777) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 4292332) = 4478976 * k + 2146166 := by
    unfold C
    simp [show (8957952 * k + 4292332) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 2146166) = 2239488 * k + 1073083 := by
    unfold C
    simp [show (4478976 * k + 2146166) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 1073083) = 6718464 * k + 3219250 := by
    unfold C
    simp [show (2239488 * k + 1073083) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 3219250) = 3359232 * k + 1609625 := by
    unfold C
    simp [show (6718464 * k + 3219250) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 1609625) = 10077696 * k + 4828876 := by
    unfold C
    simp [show (3359232 * k + 1609625) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 4828876) = 5038848 * k + 2414438 := by
    unfold C
    simp [show (10077696 * k + 4828876) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 2414438) = 2519424 * k + 1207219 := by
    unfold C
    simp [show (5038848 * k + 2414438) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1207219) = 7558272 * k + 3621658 := by
    unfold C
    simp [show (2519424 * k + 1207219) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 3621658) = 3779136 * k + 1810829 := by
    unfold C
    simp [show (7558272 * k + 3621658) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 1810829) = 11337408 * k + 5432488 := by
    unfold C
    simp [show (3779136 * k + 1810829) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 5432488) = 5668704 * k + 2716244 := by
    unfold C
    simp [show (11337408 * k + 5432488) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 2716244) = 2834352 * k + 1358122 := by
    unfold C
    simp [show (5668704 * k + 2716244) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1358122) = 1417176 * k + 679061 := by
    unfold C
    simp [show (2834352 * k + 1358122) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 679061) = 4251528 * k + 2037184 := by
    unfold C
    simp [show (1417176 * k + 679061) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 2037184) = 2125764 * k + 1018592 := by
    unfold C
    simp [show (4251528 * k + 2037184) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1018592) = 1062882 * k + 509296 := by
    unfold C
    simp [show (2125764 * k + 1018592) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 509296) = 531441 * k + 254648 := by
    unfold C
    simp [show (1062882 * k + 509296) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 502439) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 502439)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_502875 : ∀ k : Nat,
    iterate (1048576 * k + 502875) 32 = 531441 * k + 254869 ∧
      531441 * k + 254869 < 1048576 * k + 502875 := by
  intro k
  have h1 : C (1048576 * k + 502875) = 3145728 * k + 1508626 := by
    unfold C
    simp [show (1048576 * k + 502875) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1508626) = 1572864 * k + 754313 := by
    unfold C
    simp [show (3145728 * k + 1508626) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 754313) = 4718592 * k + 2262940 := by
    unfold C
    simp [show (1572864 * k + 754313) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2262940) = 2359296 * k + 1131470 := by
    unfold C
    simp [show (4718592 * k + 2262940) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1131470) = 1179648 * k + 565735 := by
    unfold C
    simp [show (2359296 * k + 1131470) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 565735) = 3538944 * k + 1697206 := by
    unfold C
    simp [show (1179648 * k + 565735) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 1697206) = 1769472 * k + 848603 := by
    unfold C
    simp [show (3538944 * k + 1697206) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 848603) = 5308416 * k + 2545810 := by
    unfold C
    simp [show (1769472 * k + 848603) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 2545810) = 2654208 * k + 1272905 := by
    unfold C
    simp [show (5308416 * k + 2545810) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1272905) = 7962624 * k + 3818716 := by
    unfold C
    simp [show (2654208 * k + 1272905) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 3818716) = 3981312 * k + 1909358 := by
    unfold C
    simp [show (7962624 * k + 3818716) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 1909358) = 1990656 * k + 954679 := by
    unfold C
    simp [show (3981312 * k + 1909358) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 954679) = 5971968 * k + 2864038 := by
    unfold C
    simp [show (1990656 * k + 954679) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 2864038) = 2985984 * k + 1432019 := by
    unfold C
    simp [show (5971968 * k + 2864038) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1432019) = 8957952 * k + 4296058 := by
    unfold C
    simp [show (2985984 * k + 1432019) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 4296058) = 4478976 * k + 2148029 := by
    unfold C
    simp [show (8957952 * k + 4296058) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 2148029) = 13436928 * k + 6444088 := by
    unfold C
    simp [show (4478976 * k + 2148029) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 6444088) = 6718464 * k + 3222044 := by
    unfold C
    simp [show (13436928 * k + 6444088) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 3222044) = 3359232 * k + 1611022 := by
    unfold C
    simp [show (6718464 * k + 3222044) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 1611022) = 1679616 * k + 805511 := by
    unfold C
    simp [show (3359232 * k + 1611022) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 805511) = 5038848 * k + 2416534 := by
    unfold C
    simp [show (1679616 * k + 805511) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 2416534) = 2519424 * k + 1208267 := by
    unfold C
    simp [show (5038848 * k + 2416534) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1208267) = 7558272 * k + 3624802 := by
    unfold C
    simp [show (2519424 * k + 1208267) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 3624802) = 3779136 * k + 1812401 := by
    unfold C
    simp [show (7558272 * k + 3624802) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 1812401) = 11337408 * k + 5437204 := by
    unfold C
    simp [show (3779136 * k + 1812401) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 5437204) = 5668704 * k + 2718602 := by
    unfold C
    simp [show (11337408 * k + 5437204) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 2718602) = 2834352 * k + 1359301 := by
    unfold C
    simp [show (5668704 * k + 2718602) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1359301) = 8503056 * k + 4077904 := by
    unfold C
    simp [show (2834352 * k + 1359301) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 4077904) = 4251528 * k + 2038952 := by
    unfold C
    simp [show (8503056 * k + 4077904) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 2038952) = 2125764 * k + 1019476 := by
    unfold C
    simp [show (4251528 * k + 2038952) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1019476) = 1062882 * k + 509738 := by
    unfold C
    simp [show (2125764 * k + 1019476) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 509738) = 531441 * k + 254869 := by
    unfold C
    simp [show (1062882 * k + 509738) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 502875) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 502875)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_502943 : ∀ k : Nat,
    iterate (1048576 * k + 502943) 32 = 531441 * k + 254903 ∧
      531441 * k + 254903 < 1048576 * k + 502943 := by
  intro k
  have h1 : C (1048576 * k + 502943) = 3145728 * k + 1508830 := by
    unfold C
    simp [show (1048576 * k + 502943) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1508830) = 1572864 * k + 754415 := by
    unfold C
    simp [show (3145728 * k + 1508830) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 754415) = 4718592 * k + 2263246 := by
    unfold C
    simp [show (1572864 * k + 754415) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2263246) = 2359296 * k + 1131623 := by
    unfold C
    simp [show (4718592 * k + 2263246) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1131623) = 7077888 * k + 3394870 := by
    unfold C
    simp [show (2359296 * k + 1131623) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 3394870) = 3538944 * k + 1697435 := by
    unfold C
    simp [show (7077888 * k + 3394870) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1697435) = 10616832 * k + 5092306 := by
    unfold C
    simp [show (3538944 * k + 1697435) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 5092306) = 5308416 * k + 2546153 := by
    unfold C
    simp [show (10616832 * k + 5092306) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 2546153) = 15925248 * k + 7638460 := by
    unfold C
    simp [show (5308416 * k + 2546153) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 7638460) = 7962624 * k + 3819230 := by
    unfold C
    simp [show (15925248 * k + 7638460) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 3819230) = 3981312 * k + 1909615 := by
    unfold C
    simp [show (7962624 * k + 3819230) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 1909615) = 11943936 * k + 5728846 := by
    unfold C
    simp [show (3981312 * k + 1909615) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 5728846) = 5971968 * k + 2864423 := by
    unfold C
    simp [show (11943936 * k + 5728846) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 2864423) = 17915904 * k + 8593270 := by
    unfold C
    simp [show (5971968 * k + 2864423) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 8593270) = 8957952 * k + 4296635 := by
    unfold C
    simp [show (17915904 * k + 8593270) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 4296635) = 26873856 * k + 12889906 := by
    unfold C
    simp [show (8957952 * k + 4296635) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 12889906) = 13436928 * k + 6444953 := by
    unfold C
    simp [show (26873856 * k + 12889906) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 6444953) = 40310784 * k + 19334860 := by
    unfold C
    simp [show (13436928 * k + 6444953) % 2 ≠ 0 by omega]
    omega
  have h19 : C (40310784 * k + 19334860) = 20155392 * k + 9667430 := by
    unfold C
    simp [show (40310784 * k + 19334860) % 2 = 0 by omega]
    omega
  have h20 : C (20155392 * k + 9667430) = 10077696 * k + 4833715 := by
    unfold C
    simp [show (20155392 * k + 9667430) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 4833715) = 30233088 * k + 14501146 := by
    unfold C
    simp [show (10077696 * k + 4833715) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 14501146) = 15116544 * k + 7250573 := by
    unfold C
    simp [show (30233088 * k + 14501146) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 7250573) = 45349632 * k + 21751720 := by
    unfold C
    simp [show (15116544 * k + 7250573) % 2 ≠ 0 by omega]
    omega
  have h24 : C (45349632 * k + 21751720) = 22674816 * k + 10875860 := by
    unfold C
    simp [show (45349632 * k + 21751720) % 2 = 0 by omega]
    omega
  have h25 : C (22674816 * k + 10875860) = 11337408 * k + 5437930 := by
    unfold C
    simp [show (22674816 * k + 10875860) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 5437930) = 5668704 * k + 2718965 := by
    unfold C
    simp [show (11337408 * k + 5437930) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 2718965) = 17006112 * k + 8156896 := by
    unfold C
    simp [show (5668704 * k + 2718965) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 8156896) = 8503056 * k + 4078448 := by
    unfold C
    simp [show (17006112 * k + 8156896) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 4078448) = 4251528 * k + 2039224 := by
    unfold C
    simp [show (8503056 * k + 4078448) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 2039224) = 2125764 * k + 1019612 := by
    unfold C
    simp [show (4251528 * k + 2039224) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1019612) = 1062882 * k + 509806 := by
    unfold C
    simp [show (2125764 * k + 1019612) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 509806) = 531441 * k + 254903 := by
    unfold C
    simp [show (1062882 * k + 509806) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 502943) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 502943)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_503035 : ∀ k : Nat,
    iterate (1048576 * k + 503035) 32 = 531441 * k + 254950 ∧
      531441 * k + 254950 < 1048576 * k + 503035 := by
  intro k
  have h1 : C (1048576 * k + 503035) = 3145728 * k + 1509106 := by
    unfold C
    simp [show (1048576 * k + 503035) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1509106) = 1572864 * k + 754553 := by
    unfold C
    simp [show (3145728 * k + 1509106) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 754553) = 4718592 * k + 2263660 := by
    unfold C
    simp [show (1572864 * k + 754553) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2263660) = 2359296 * k + 1131830 := by
    unfold C
    simp [show (4718592 * k + 2263660) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1131830) = 1179648 * k + 565915 := by
    unfold C
    simp [show (2359296 * k + 1131830) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 565915) = 3538944 * k + 1697746 := by
    unfold C
    simp [show (1179648 * k + 565915) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 1697746) = 1769472 * k + 848873 := by
    unfold C
    simp [show (3538944 * k + 1697746) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 848873) = 5308416 * k + 2546620 := by
    unfold C
    simp [show (1769472 * k + 848873) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 2546620) = 2654208 * k + 1273310 := by
    unfold C
    simp [show (5308416 * k + 2546620) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1273310) = 1327104 * k + 636655 := by
    unfold C
    simp [show (2654208 * k + 1273310) % 2 = 0 by omega]
    omega
  have h11 : C (1327104 * k + 636655) = 3981312 * k + 1909966 := by
    unfold C
    simp [show (1327104 * k + 636655) % 2 ≠ 0 by omega]
    omega
  have h12 : C (3981312 * k + 1909966) = 1990656 * k + 954983 := by
    unfold C
    simp [show (3981312 * k + 1909966) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 954983) = 5971968 * k + 2864950 := by
    unfold C
    simp [show (1990656 * k + 954983) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 2864950) = 2985984 * k + 1432475 := by
    unfold C
    simp [show (5971968 * k + 2864950) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1432475) = 8957952 * k + 4297426 := by
    unfold C
    simp [show (2985984 * k + 1432475) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 4297426) = 4478976 * k + 2148713 := by
    unfold C
    simp [show (8957952 * k + 4297426) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 2148713) = 13436928 * k + 6446140 := by
    unfold C
    simp [show (4478976 * k + 2148713) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 6446140) = 6718464 * k + 3223070 := by
    unfold C
    simp [show (13436928 * k + 6446140) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 3223070) = 3359232 * k + 1611535 := by
    unfold C
    simp [show (6718464 * k + 3223070) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 1611535) = 10077696 * k + 4834606 := by
    unfold C
    simp [show (3359232 * k + 1611535) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 4834606) = 5038848 * k + 2417303 := by
    unfold C
    simp [show (10077696 * k + 4834606) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 2417303) = 15116544 * k + 7251910 := by
    unfold C
    simp [show (5038848 * k + 2417303) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 7251910) = 7558272 * k + 3625955 := by
    unfold C
    simp [show (15116544 * k + 7251910) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 3625955) = 22674816 * k + 10877866 := by
    unfold C
    simp [show (7558272 * k + 3625955) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 10877866) = 11337408 * k + 5438933 := by
    unfold C
    simp [show (22674816 * k + 10877866) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 5438933) = 34012224 * k + 16316800 := by
    unfold C
    simp [show (11337408 * k + 5438933) % 2 ≠ 0 by omega]
    omega
  have h27 : C (34012224 * k + 16316800) = 17006112 * k + 8158400 := by
    unfold C
    simp [show (34012224 * k + 16316800) % 2 = 0 by omega]
    omega
  have h28 : C (17006112 * k + 8158400) = 8503056 * k + 4079200 := by
    unfold C
    simp [show (17006112 * k + 8158400) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 4079200) = 4251528 * k + 2039600 := by
    unfold C
    simp [show (8503056 * k + 4079200) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 2039600) = 2125764 * k + 1019800 := by
    unfold C
    simp [show (4251528 * k + 2039600) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1019800) = 1062882 * k + 509900 := by
    unfold C
    simp [show (2125764 * k + 1019800) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 509900) = 531441 * k + 254950 := by
    unfold C
    simp [show (1062882 * k + 509900) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 503035) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 503035)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_503231 : ∀ k : Nat,
    iterate (1048576 * k + 503231) 32 = 531441 * k + 255049 ∧
      531441 * k + 255049 < 1048576 * k + 503231 := by
  intro k
  have h1 : C (1048576 * k + 503231) = 3145728 * k + 1509694 := by
    unfold C
    simp [show (1048576 * k + 503231) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1509694) = 1572864 * k + 754847 := by
    unfold C
    simp [show (3145728 * k + 1509694) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 754847) = 4718592 * k + 2264542 := by
    unfold C
    simp [show (1572864 * k + 754847) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2264542) = 2359296 * k + 1132271 := by
    unfold C
    simp [show (4718592 * k + 2264542) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1132271) = 7077888 * k + 3396814 := by
    unfold C
    simp [show (2359296 * k + 1132271) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 3396814) = 3538944 * k + 1698407 := by
    unfold C
    simp [show (7077888 * k + 3396814) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1698407) = 10616832 * k + 5095222 := by
    unfold C
    simp [show (3538944 * k + 1698407) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 5095222) = 5308416 * k + 2547611 := by
    unfold C
    simp [show (10616832 * k + 5095222) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 2547611) = 15925248 * k + 7642834 := by
    unfold C
    simp [show (5308416 * k + 2547611) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 7642834) = 7962624 * k + 3821417 := by
    unfold C
    simp [show (15925248 * k + 7642834) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 3821417) = 23887872 * k + 11464252 := by
    unfold C
    simp [show (7962624 * k + 3821417) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 11464252) = 11943936 * k + 5732126 := by
    unfold C
    simp [show (23887872 * k + 11464252) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 5732126) = 5971968 * k + 2866063 := by
    unfold C
    simp [show (11943936 * k + 5732126) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 2866063) = 17915904 * k + 8598190 := by
    unfold C
    simp [show (5971968 * k + 2866063) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 8598190) = 8957952 * k + 4299095 := by
    unfold C
    simp [show (17915904 * k + 8598190) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 4299095) = 26873856 * k + 12897286 := by
    unfold C
    simp [show (8957952 * k + 4299095) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 12897286) = 13436928 * k + 6448643 := by
    unfold C
    simp [show (26873856 * k + 12897286) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 6448643) = 40310784 * k + 19345930 := by
    unfold C
    simp [show (13436928 * k + 6448643) % 2 ≠ 0 by omega]
    omega
  have h19 : C (40310784 * k + 19345930) = 20155392 * k + 9672965 := by
    unfold C
    simp [show (40310784 * k + 19345930) % 2 = 0 by omega]
    omega
  have h20 : C (20155392 * k + 9672965) = 60466176 * k + 29018896 := by
    unfold C
    simp [show (20155392 * k + 9672965) % 2 ≠ 0 by omega]
    omega
  have h21 : C (60466176 * k + 29018896) = 30233088 * k + 14509448 := by
    unfold C
    simp [show (60466176 * k + 29018896) % 2 = 0 by omega]
    omega
  have h22 : C (30233088 * k + 14509448) = 15116544 * k + 7254724 := by
    unfold C
    simp [show (30233088 * k + 14509448) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 7254724) = 7558272 * k + 3627362 := by
    unfold C
    simp [show (15116544 * k + 7254724) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 3627362) = 3779136 * k + 1813681 := by
    unfold C
    simp [show (7558272 * k + 3627362) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 1813681) = 11337408 * k + 5441044 := by
    unfold C
    simp [show (3779136 * k + 1813681) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 5441044) = 5668704 * k + 2720522 := by
    unfold C
    simp [show (11337408 * k + 5441044) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 2720522) = 2834352 * k + 1360261 := by
    unfold C
    simp [show (5668704 * k + 2720522) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1360261) = 8503056 * k + 4080784 := by
    unfold C
    simp [show (2834352 * k + 1360261) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 4080784) = 4251528 * k + 2040392 := by
    unfold C
    simp [show (8503056 * k + 4080784) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 2040392) = 2125764 * k + 1020196 := by
    unfold C
    simp [show (4251528 * k + 2040392) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1020196) = 1062882 * k + 510098 := by
    unfold C
    simp [show (2125764 * k + 1020196) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 510098) = 531441 * k + 255049 := by
    unfold C
    simp [show (1062882 * k + 510098) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 503231) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 503231)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

end CollatzM20Shard064
