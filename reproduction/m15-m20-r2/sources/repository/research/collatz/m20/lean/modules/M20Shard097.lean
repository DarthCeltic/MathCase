import Mathlib.Data.Nat.Prime.Basic

namespace CollatzM20Shard097

def C (n : Nat) : Nat := if n % 2 = 0 then n / 2 else 3 * n + 1

def iterate (n t : Nat) : Nat := Nat.rec n (fun _ previous => C previous) t

theorem descent_mod1048576_753711 : ∀ k : Nat,
    iterate (1048576 * k + 753711) 32 = 531441 * k + 381998 ∧
      531441 * k + 381998 < 1048576 * k + 753711 := by
  intro k
  have h1 : C (1048576 * k + 753711) = 3145728 * k + 2261134 := by
    unfold C
    simp [show (1048576 * k + 753711) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2261134) = 1572864 * k + 1130567 := by
    unfold C
    simp [show (3145728 * k + 2261134) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1130567) = 4718592 * k + 3391702 := by
    unfold C
    simp [show (1572864 * k + 1130567) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3391702) = 2359296 * k + 1695851 := by
    unfold C
    simp [show (4718592 * k + 3391702) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1695851) = 7077888 * k + 5087554 := by
    unfold C
    simp [show (2359296 * k + 1695851) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 5087554) = 3538944 * k + 2543777 := by
    unfold C
    simp [show (7077888 * k + 5087554) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2543777) = 10616832 * k + 7631332 := by
    unfold C
    simp [show (3538944 * k + 2543777) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 7631332) = 5308416 * k + 3815666 := by
    unfold C
    simp [show (10616832 * k + 7631332) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 3815666) = 2654208 * k + 1907833 := by
    unfold C
    simp [show (5308416 * k + 3815666) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1907833) = 7962624 * k + 5723500 := by
    unfold C
    simp [show (2654208 * k + 1907833) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 5723500) = 3981312 * k + 2861750 := by
    unfold C
    simp [show (7962624 * k + 5723500) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 2861750) = 1990656 * k + 1430875 := by
    unfold C
    simp [show (3981312 * k + 2861750) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 1430875) = 5971968 * k + 4292626 := by
    unfold C
    simp [show (1990656 * k + 1430875) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 4292626) = 2985984 * k + 2146313 := by
    unfold C
    simp [show (5971968 * k + 4292626) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 2146313) = 8957952 * k + 6438940 := by
    unfold C
    simp [show (2985984 * k + 2146313) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 6438940) = 4478976 * k + 3219470 := by
    unfold C
    simp [show (8957952 * k + 6438940) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 3219470) = 2239488 * k + 1609735 := by
    unfold C
    simp [show (4478976 * k + 3219470) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 1609735) = 6718464 * k + 4829206 := by
    unfold C
    simp [show (2239488 * k + 1609735) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 4829206) = 3359232 * k + 2414603 := by
    unfold C
    simp [show (6718464 * k + 4829206) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 2414603) = 10077696 * k + 7243810 := by
    unfold C
    simp [show (3359232 * k + 2414603) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 7243810) = 5038848 * k + 3621905 := by
    unfold C
    simp [show (10077696 * k + 7243810) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 3621905) = 15116544 * k + 10865716 := by
    unfold C
    simp [show (5038848 * k + 3621905) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 10865716) = 7558272 * k + 5432858 := by
    unfold C
    simp [show (15116544 * k + 10865716) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 5432858) = 3779136 * k + 2716429 := by
    unfold C
    simp [show (7558272 * k + 5432858) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 2716429) = 11337408 * k + 8149288 := by
    unfold C
    simp [show (3779136 * k + 2716429) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 8149288) = 5668704 * k + 4074644 := by
    unfold C
    simp [show (11337408 * k + 8149288) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 4074644) = 2834352 * k + 2037322 := by
    unfold C
    simp [show (5668704 * k + 4074644) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2037322) = 1417176 * k + 1018661 := by
    unfold C
    simp [show (2834352 * k + 2037322) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 1018661) = 4251528 * k + 3055984 := by
    unfold C
    simp [show (1417176 * k + 1018661) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 3055984) = 2125764 * k + 1527992 := by
    unfold C
    simp [show (4251528 * k + 3055984) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1527992) = 1062882 * k + 763996 := by
    unfold C
    simp [show (2125764 * k + 1527992) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 763996) = 531441 * k + 381998 := by
    unfold C
    simp [show (1062882 * k + 763996) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 753711) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 753711)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_754143 : ∀ k : Nat,
    iterate (1048576 * k + 754143) 32 = 531441 * k + 382217 ∧
      531441 * k + 382217 < 1048576 * k + 754143 := by
  intro k
  have h1 : C (1048576 * k + 754143) = 3145728 * k + 2262430 := by
    unfold C
    simp [show (1048576 * k + 754143) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2262430) = 1572864 * k + 1131215 := by
    unfold C
    simp [show (3145728 * k + 2262430) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1131215) = 4718592 * k + 3393646 := by
    unfold C
    simp [show (1572864 * k + 1131215) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3393646) = 2359296 * k + 1696823 := by
    unfold C
    simp [show (4718592 * k + 3393646) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1696823) = 7077888 * k + 5090470 := by
    unfold C
    simp [show (2359296 * k + 1696823) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 5090470) = 3538944 * k + 2545235 := by
    unfold C
    simp [show (7077888 * k + 5090470) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2545235) = 10616832 * k + 7635706 := by
    unfold C
    simp [show (3538944 * k + 2545235) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 7635706) = 5308416 * k + 3817853 := by
    unfold C
    simp [show (10616832 * k + 7635706) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 3817853) = 15925248 * k + 11453560 := by
    unfold C
    simp [show (5308416 * k + 3817853) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 11453560) = 7962624 * k + 5726780 := by
    unfold C
    simp [show (15925248 * k + 11453560) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 5726780) = 3981312 * k + 2863390 := by
    unfold C
    simp [show (7962624 * k + 5726780) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 2863390) = 1990656 * k + 1431695 := by
    unfold C
    simp [show (3981312 * k + 2863390) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 1431695) = 5971968 * k + 4295086 := by
    unfold C
    simp [show (1990656 * k + 1431695) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 4295086) = 2985984 * k + 2147543 := by
    unfold C
    simp [show (5971968 * k + 4295086) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 2147543) = 8957952 * k + 6442630 := by
    unfold C
    simp [show (2985984 * k + 2147543) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 6442630) = 4478976 * k + 3221315 := by
    unfold C
    simp [show (8957952 * k + 6442630) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 3221315) = 13436928 * k + 9663946 := by
    unfold C
    simp [show (4478976 * k + 3221315) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 9663946) = 6718464 * k + 4831973 := by
    unfold C
    simp [show (13436928 * k + 9663946) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 4831973) = 20155392 * k + 14495920 := by
    unfold C
    simp [show (6718464 * k + 4831973) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 14495920) = 10077696 * k + 7247960 := by
    unfold C
    simp [show (20155392 * k + 14495920) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 7247960) = 5038848 * k + 3623980 := by
    unfold C
    simp [show (10077696 * k + 7247960) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 3623980) = 2519424 * k + 1811990 := by
    unfold C
    simp [show (5038848 * k + 3623980) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1811990) = 1259712 * k + 905995 := by
    unfold C
    simp [show (2519424 * k + 1811990) % 2 = 0 by omega]
    omega
  have h24 : C (1259712 * k + 905995) = 3779136 * k + 2717986 := by
    unfold C
    simp [show (1259712 * k + 905995) % 2 ≠ 0 by omega]
    omega
  have h25 : C (3779136 * k + 2717986) = 1889568 * k + 1358993 := by
    unfold C
    simp [show (3779136 * k + 2717986) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1358993) = 5668704 * k + 4076980 := by
    unfold C
    simp [show (1889568 * k + 1358993) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 4076980) = 2834352 * k + 2038490 := by
    unfold C
    simp [show (5668704 * k + 4076980) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2038490) = 1417176 * k + 1019245 := by
    unfold C
    simp [show (2834352 * k + 2038490) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 1019245) = 4251528 * k + 3057736 := by
    unfold C
    simp [show (1417176 * k + 1019245) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 3057736) = 2125764 * k + 1528868 := by
    unfold C
    simp [show (4251528 * k + 3057736) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1528868) = 1062882 * k + 764434 := by
    unfold C
    simp [show (2125764 * k + 1528868) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 764434) = 531441 * k + 382217 := by
    unfold C
    simp [show (1062882 * k + 764434) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 754143) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 754143)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_754267 : ∀ k : Nat,
    iterate (1048576 * k + 754267) 32 = 531441 * k + 382280 ∧
      531441 * k + 382280 < 1048576 * k + 754267 := by
  intro k
  have h1 : C (1048576 * k + 754267) = 3145728 * k + 2262802 := by
    unfold C
    simp [show (1048576 * k + 754267) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2262802) = 1572864 * k + 1131401 := by
    unfold C
    simp [show (3145728 * k + 2262802) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1131401) = 4718592 * k + 3394204 := by
    unfold C
    simp [show (1572864 * k + 1131401) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3394204) = 2359296 * k + 1697102 := by
    unfold C
    simp [show (4718592 * k + 3394204) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1697102) = 1179648 * k + 848551 := by
    unfold C
    simp [show (2359296 * k + 1697102) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 848551) = 3538944 * k + 2545654 := by
    unfold C
    simp [show (1179648 * k + 848551) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 2545654) = 1769472 * k + 1272827 := by
    unfold C
    simp [show (3538944 * k + 2545654) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1272827) = 5308416 * k + 3818482 := by
    unfold C
    simp [show (1769472 * k + 1272827) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 3818482) = 2654208 * k + 1909241 := by
    unfold C
    simp [show (5308416 * k + 3818482) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1909241) = 7962624 * k + 5727724 := by
    unfold C
    simp [show (2654208 * k + 1909241) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 5727724) = 3981312 * k + 2863862 := by
    unfold C
    simp [show (7962624 * k + 5727724) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 2863862) = 1990656 * k + 1431931 := by
    unfold C
    simp [show (3981312 * k + 2863862) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 1431931) = 5971968 * k + 4295794 := by
    unfold C
    simp [show (1990656 * k + 1431931) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 4295794) = 2985984 * k + 2147897 := by
    unfold C
    simp [show (5971968 * k + 4295794) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 2147897) = 8957952 * k + 6443692 := by
    unfold C
    simp [show (2985984 * k + 2147897) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 6443692) = 4478976 * k + 3221846 := by
    unfold C
    simp [show (8957952 * k + 6443692) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 3221846) = 2239488 * k + 1610923 := by
    unfold C
    simp [show (4478976 * k + 3221846) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 1610923) = 6718464 * k + 4832770 := by
    unfold C
    simp [show (2239488 * k + 1610923) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 4832770) = 3359232 * k + 2416385 := by
    unfold C
    simp [show (6718464 * k + 4832770) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 2416385) = 10077696 * k + 7249156 := by
    unfold C
    simp [show (3359232 * k + 2416385) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 7249156) = 5038848 * k + 3624578 := by
    unfold C
    simp [show (10077696 * k + 7249156) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 3624578) = 2519424 * k + 1812289 := by
    unfold C
    simp [show (5038848 * k + 3624578) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1812289) = 7558272 * k + 5436868 := by
    unfold C
    simp [show (2519424 * k + 1812289) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 5436868) = 3779136 * k + 2718434 := by
    unfold C
    simp [show (7558272 * k + 5436868) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 2718434) = 1889568 * k + 1359217 := by
    unfold C
    simp [show (3779136 * k + 2718434) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1359217) = 5668704 * k + 4077652 := by
    unfold C
    simp [show (1889568 * k + 1359217) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 4077652) = 2834352 * k + 2038826 := by
    unfold C
    simp [show (5668704 * k + 4077652) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2038826) = 1417176 * k + 1019413 := by
    unfold C
    simp [show (2834352 * k + 2038826) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 1019413) = 4251528 * k + 3058240 := by
    unfold C
    simp [show (1417176 * k + 1019413) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 3058240) = 2125764 * k + 1529120 := by
    unfold C
    simp [show (4251528 * k + 3058240) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1529120) = 1062882 * k + 764560 := by
    unfold C
    simp [show (2125764 * k + 1529120) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 764560) = 531441 * k + 382280 := by
    unfold C
    simp [show (1062882 * k + 764560) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 754267) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 754267)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_754591 : ∀ k : Nat,
    iterate (1048576 * k + 754591) 32 = 531441 * k + 382444 ∧
      531441 * k + 382444 < 1048576 * k + 754591 := by
  intro k
  have h1 : C (1048576 * k + 754591) = 3145728 * k + 2263774 := by
    unfold C
    simp [show (1048576 * k + 754591) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2263774) = 1572864 * k + 1131887 := by
    unfold C
    simp [show (3145728 * k + 2263774) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1131887) = 4718592 * k + 3395662 := by
    unfold C
    simp [show (1572864 * k + 1131887) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3395662) = 2359296 * k + 1697831 := by
    unfold C
    simp [show (4718592 * k + 3395662) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1697831) = 7077888 * k + 5093494 := by
    unfold C
    simp [show (2359296 * k + 1697831) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 5093494) = 3538944 * k + 2546747 := by
    unfold C
    simp [show (7077888 * k + 5093494) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2546747) = 10616832 * k + 7640242 := by
    unfold C
    simp [show (3538944 * k + 2546747) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 7640242) = 5308416 * k + 3820121 := by
    unfold C
    simp [show (10616832 * k + 7640242) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 3820121) = 15925248 * k + 11460364 := by
    unfold C
    simp [show (5308416 * k + 3820121) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 11460364) = 7962624 * k + 5730182 := by
    unfold C
    simp [show (15925248 * k + 11460364) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 5730182) = 3981312 * k + 2865091 := by
    unfold C
    simp [show (7962624 * k + 5730182) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 2865091) = 11943936 * k + 8595274 := by
    unfold C
    simp [show (3981312 * k + 2865091) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 8595274) = 5971968 * k + 4297637 := by
    unfold C
    simp [show (11943936 * k + 8595274) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 4297637) = 17915904 * k + 12892912 := by
    unfold C
    simp [show (5971968 * k + 4297637) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 12892912) = 8957952 * k + 6446456 := by
    unfold C
    simp [show (17915904 * k + 12892912) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 6446456) = 4478976 * k + 3223228 := by
    unfold C
    simp [show (8957952 * k + 6446456) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 3223228) = 2239488 * k + 1611614 := by
    unfold C
    simp [show (4478976 * k + 3223228) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 1611614) = 1119744 * k + 805807 := by
    unfold C
    simp [show (2239488 * k + 1611614) % 2 = 0 by omega]
    omega
  have h19 : C (1119744 * k + 805807) = 3359232 * k + 2417422 := by
    unfold C
    simp [show (1119744 * k + 805807) % 2 ≠ 0 by omega]
    omega
  have h20 : C (3359232 * k + 2417422) = 1679616 * k + 1208711 := by
    unfold C
    simp [show (3359232 * k + 2417422) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 1208711) = 5038848 * k + 3626134 := by
    unfold C
    simp [show (1679616 * k + 1208711) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 3626134) = 2519424 * k + 1813067 := by
    unfold C
    simp [show (5038848 * k + 3626134) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1813067) = 7558272 * k + 5439202 := by
    unfold C
    simp [show (2519424 * k + 1813067) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 5439202) = 3779136 * k + 2719601 := by
    unfold C
    simp [show (7558272 * k + 5439202) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 2719601) = 11337408 * k + 8158804 := by
    unfold C
    simp [show (3779136 * k + 2719601) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 8158804) = 5668704 * k + 4079402 := by
    unfold C
    simp [show (11337408 * k + 8158804) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 4079402) = 2834352 * k + 2039701 := by
    unfold C
    simp [show (5668704 * k + 4079402) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2039701) = 8503056 * k + 6119104 := by
    unfold C
    simp [show (2834352 * k + 2039701) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 6119104) = 4251528 * k + 3059552 := by
    unfold C
    simp [show (8503056 * k + 6119104) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 3059552) = 2125764 * k + 1529776 := by
    unfold C
    simp [show (4251528 * k + 3059552) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1529776) = 1062882 * k + 764888 := by
    unfold C
    simp [show (2125764 * k + 1529776) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 764888) = 531441 * k + 382444 := by
    unfold C
    simp [show (1062882 * k + 764888) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 754591) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 754591)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_755071 : ∀ k : Nat,
    iterate (1048576 * k + 755071) 32 = 531441 * k + 382687 ∧
      531441 * k + 382687 < 1048576 * k + 755071 := by
  intro k
  have h1 : C (1048576 * k + 755071) = 3145728 * k + 2265214 := by
    unfold C
    simp [show (1048576 * k + 755071) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2265214) = 1572864 * k + 1132607 := by
    unfold C
    simp [show (3145728 * k + 2265214) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1132607) = 4718592 * k + 3397822 := by
    unfold C
    simp [show (1572864 * k + 1132607) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3397822) = 2359296 * k + 1698911 := by
    unfold C
    simp [show (4718592 * k + 3397822) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1698911) = 7077888 * k + 5096734 := by
    unfold C
    simp [show (2359296 * k + 1698911) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 5096734) = 3538944 * k + 2548367 := by
    unfold C
    simp [show (7077888 * k + 5096734) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2548367) = 10616832 * k + 7645102 := by
    unfold C
    simp [show (3538944 * k + 2548367) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 7645102) = 5308416 * k + 3822551 := by
    unfold C
    simp [show (10616832 * k + 7645102) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 3822551) = 15925248 * k + 11467654 := by
    unfold C
    simp [show (5308416 * k + 3822551) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 11467654) = 7962624 * k + 5733827 := by
    unfold C
    simp [show (15925248 * k + 11467654) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 5733827) = 23887872 * k + 17201482 := by
    unfold C
    simp [show (7962624 * k + 5733827) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 17201482) = 11943936 * k + 8600741 := by
    unfold C
    simp [show (23887872 * k + 17201482) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 8600741) = 35831808 * k + 25802224 := by
    unfold C
    simp [show (11943936 * k + 8600741) % 2 ≠ 0 by omega]
    omega
  have h14 : C (35831808 * k + 25802224) = 17915904 * k + 12901112 := by
    unfold C
    simp [show (35831808 * k + 25802224) % 2 = 0 by omega]
    omega
  have h15 : C (17915904 * k + 12901112) = 8957952 * k + 6450556 := by
    unfold C
    simp [show (17915904 * k + 12901112) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 6450556) = 4478976 * k + 3225278 := by
    unfold C
    simp [show (8957952 * k + 6450556) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 3225278) = 2239488 * k + 1612639 := by
    unfold C
    simp [show (4478976 * k + 3225278) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 1612639) = 6718464 * k + 4837918 := by
    unfold C
    simp [show (2239488 * k + 1612639) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 4837918) = 3359232 * k + 2418959 := by
    unfold C
    simp [show (6718464 * k + 4837918) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 2418959) = 10077696 * k + 7256878 := by
    unfold C
    simp [show (3359232 * k + 2418959) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 7256878) = 5038848 * k + 3628439 := by
    unfold C
    simp [show (10077696 * k + 7256878) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 3628439) = 15116544 * k + 10885318 := by
    unfold C
    simp [show (5038848 * k + 3628439) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 10885318) = 7558272 * k + 5442659 := by
    unfold C
    simp [show (15116544 * k + 10885318) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 5442659) = 22674816 * k + 16327978 := by
    unfold C
    simp [show (7558272 * k + 5442659) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 16327978) = 11337408 * k + 8163989 := by
    unfold C
    simp [show (22674816 * k + 16327978) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 8163989) = 34012224 * k + 24491968 := by
    unfold C
    simp [show (11337408 * k + 8163989) % 2 ≠ 0 by omega]
    omega
  have h27 : C (34012224 * k + 24491968) = 17006112 * k + 12245984 := by
    unfold C
    simp [show (34012224 * k + 24491968) % 2 = 0 by omega]
    omega
  have h28 : C (17006112 * k + 12245984) = 8503056 * k + 6122992 := by
    unfold C
    simp [show (17006112 * k + 12245984) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 6122992) = 4251528 * k + 3061496 := by
    unfold C
    simp [show (8503056 * k + 6122992) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 3061496) = 2125764 * k + 1530748 := by
    unfold C
    simp [show (4251528 * k + 3061496) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1530748) = 1062882 * k + 765374 := by
    unfold C
    simp [show (2125764 * k + 1530748) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 765374) = 531441 * k + 382687 := by
    unfold C
    simp [show (1062882 * k + 765374) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 755071) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 755071)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_755183 : ∀ k : Nat,
    iterate (1048576 * k + 755183) 32 = 531441 * k + 382744 ∧
      531441 * k + 382744 < 1048576 * k + 755183 := by
  intro k
  have h1 : C (1048576 * k + 755183) = 3145728 * k + 2265550 := by
    unfold C
    simp [show (1048576 * k + 755183) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2265550) = 1572864 * k + 1132775 := by
    unfold C
    simp [show (3145728 * k + 2265550) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1132775) = 4718592 * k + 3398326 := by
    unfold C
    simp [show (1572864 * k + 1132775) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3398326) = 2359296 * k + 1699163 := by
    unfold C
    simp [show (4718592 * k + 3398326) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1699163) = 7077888 * k + 5097490 := by
    unfold C
    simp [show (2359296 * k + 1699163) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 5097490) = 3538944 * k + 2548745 := by
    unfold C
    simp [show (7077888 * k + 5097490) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2548745) = 10616832 * k + 7646236 := by
    unfold C
    simp [show (3538944 * k + 2548745) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 7646236) = 5308416 * k + 3823118 := by
    unfold C
    simp [show (10616832 * k + 7646236) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 3823118) = 2654208 * k + 1911559 := by
    unfold C
    simp [show (5308416 * k + 3823118) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1911559) = 7962624 * k + 5734678 := by
    unfold C
    simp [show (2654208 * k + 1911559) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 5734678) = 3981312 * k + 2867339 := by
    unfold C
    simp [show (7962624 * k + 5734678) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 2867339) = 11943936 * k + 8602018 := by
    unfold C
    simp [show (3981312 * k + 2867339) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 8602018) = 5971968 * k + 4301009 := by
    unfold C
    simp [show (11943936 * k + 8602018) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 4301009) = 17915904 * k + 12903028 := by
    unfold C
    simp [show (5971968 * k + 4301009) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 12903028) = 8957952 * k + 6451514 := by
    unfold C
    simp [show (17915904 * k + 12903028) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 6451514) = 4478976 * k + 3225757 := by
    unfold C
    simp [show (8957952 * k + 6451514) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 3225757) = 13436928 * k + 9677272 := by
    unfold C
    simp [show (4478976 * k + 3225757) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 9677272) = 6718464 * k + 4838636 := by
    unfold C
    simp [show (13436928 * k + 9677272) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 4838636) = 3359232 * k + 2419318 := by
    unfold C
    simp [show (6718464 * k + 4838636) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 2419318) = 1679616 * k + 1209659 := by
    unfold C
    simp [show (3359232 * k + 2419318) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 1209659) = 5038848 * k + 3628978 := by
    unfold C
    simp [show (1679616 * k + 1209659) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 3628978) = 2519424 * k + 1814489 := by
    unfold C
    simp [show (5038848 * k + 3628978) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1814489) = 7558272 * k + 5443468 := by
    unfold C
    simp [show (2519424 * k + 1814489) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 5443468) = 3779136 * k + 2721734 := by
    unfold C
    simp [show (7558272 * k + 5443468) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 2721734) = 1889568 * k + 1360867 := by
    unfold C
    simp [show (3779136 * k + 2721734) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1360867) = 5668704 * k + 4082602 := by
    unfold C
    simp [show (1889568 * k + 1360867) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 4082602) = 2834352 * k + 2041301 := by
    unfold C
    simp [show (5668704 * k + 4082602) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2041301) = 8503056 * k + 6123904 := by
    unfold C
    simp [show (2834352 * k + 2041301) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 6123904) = 4251528 * k + 3061952 := by
    unfold C
    simp [show (8503056 * k + 6123904) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 3061952) = 2125764 * k + 1530976 := by
    unfold C
    simp [show (4251528 * k + 3061952) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1530976) = 1062882 * k + 765488 := by
    unfold C
    simp [show (2125764 * k + 1530976) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 765488) = 531441 * k + 382744 := by
    unfold C
    simp [show (1062882 * k + 765488) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 755183) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 755183)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_756071 : ∀ k : Nat,
    iterate (1048576 * k + 756071) 32 = 531441 * k + 383194 ∧
      531441 * k + 383194 < 1048576 * k + 756071 := by
  intro k
  have h1 : C (1048576 * k + 756071) = 3145728 * k + 2268214 := by
    unfold C
    simp [show (1048576 * k + 756071) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2268214) = 1572864 * k + 1134107 := by
    unfold C
    simp [show (3145728 * k + 2268214) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1134107) = 4718592 * k + 3402322 := by
    unfold C
    simp [show (1572864 * k + 1134107) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3402322) = 2359296 * k + 1701161 := by
    unfold C
    simp [show (4718592 * k + 3402322) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1701161) = 7077888 * k + 5103484 := by
    unfold C
    simp [show (2359296 * k + 1701161) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 5103484) = 3538944 * k + 2551742 := by
    unfold C
    simp [show (7077888 * k + 5103484) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2551742) = 1769472 * k + 1275871 := by
    unfold C
    simp [show (3538944 * k + 2551742) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1275871) = 5308416 * k + 3827614 := by
    unfold C
    simp [show (1769472 * k + 1275871) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 3827614) = 2654208 * k + 1913807 := by
    unfold C
    simp [show (5308416 * k + 3827614) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1913807) = 7962624 * k + 5741422 := by
    unfold C
    simp [show (2654208 * k + 1913807) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 5741422) = 3981312 * k + 2870711 := by
    unfold C
    simp [show (7962624 * k + 5741422) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 2870711) = 11943936 * k + 8612134 := by
    unfold C
    simp [show (3981312 * k + 2870711) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 8612134) = 5971968 * k + 4306067 := by
    unfold C
    simp [show (11943936 * k + 8612134) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 4306067) = 17915904 * k + 12918202 := by
    unfold C
    simp [show (5971968 * k + 4306067) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 12918202) = 8957952 * k + 6459101 := by
    unfold C
    simp [show (17915904 * k + 12918202) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 6459101) = 26873856 * k + 19377304 := by
    unfold C
    simp [show (8957952 * k + 6459101) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 19377304) = 13436928 * k + 9688652 := by
    unfold C
    simp [show (26873856 * k + 19377304) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 9688652) = 6718464 * k + 4844326 := by
    unfold C
    simp [show (13436928 * k + 9688652) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 4844326) = 3359232 * k + 2422163 := by
    unfold C
    simp [show (6718464 * k + 4844326) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 2422163) = 10077696 * k + 7266490 := by
    unfold C
    simp [show (3359232 * k + 2422163) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 7266490) = 5038848 * k + 3633245 := by
    unfold C
    simp [show (10077696 * k + 7266490) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 3633245) = 15116544 * k + 10899736 := by
    unfold C
    simp [show (5038848 * k + 3633245) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 10899736) = 7558272 * k + 5449868 := by
    unfold C
    simp [show (15116544 * k + 10899736) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 5449868) = 3779136 * k + 2724934 := by
    unfold C
    simp [show (7558272 * k + 5449868) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 2724934) = 1889568 * k + 1362467 := by
    unfold C
    simp [show (3779136 * k + 2724934) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1362467) = 5668704 * k + 4087402 := by
    unfold C
    simp [show (1889568 * k + 1362467) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 4087402) = 2834352 * k + 2043701 := by
    unfold C
    simp [show (5668704 * k + 4087402) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2043701) = 8503056 * k + 6131104 := by
    unfold C
    simp [show (2834352 * k + 2043701) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 6131104) = 4251528 * k + 3065552 := by
    unfold C
    simp [show (8503056 * k + 6131104) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 3065552) = 2125764 * k + 1532776 := by
    unfold C
    simp [show (4251528 * k + 3065552) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1532776) = 1062882 * k + 766388 := by
    unfold C
    simp [show (2125764 * k + 1532776) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 766388) = 531441 * k + 383194 := by
    unfold C
    simp [show (1062882 * k + 766388) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 756071) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 756071)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_756991 : ∀ k : Nat,
    iterate (1048576 * k + 756991) 32 = 531441 * k + 383660 ∧
      531441 * k + 383660 < 1048576 * k + 756991 := by
  intro k
  have h1 : C (1048576 * k + 756991) = 3145728 * k + 2270974 := by
    unfold C
    simp [show (1048576 * k + 756991) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2270974) = 1572864 * k + 1135487 := by
    unfold C
    simp [show (3145728 * k + 2270974) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1135487) = 4718592 * k + 3406462 := by
    unfold C
    simp [show (1572864 * k + 1135487) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3406462) = 2359296 * k + 1703231 := by
    unfold C
    simp [show (4718592 * k + 3406462) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1703231) = 7077888 * k + 5109694 := by
    unfold C
    simp [show (2359296 * k + 1703231) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 5109694) = 3538944 * k + 2554847 := by
    unfold C
    simp [show (7077888 * k + 5109694) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2554847) = 10616832 * k + 7664542 := by
    unfold C
    simp [show (3538944 * k + 2554847) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 7664542) = 5308416 * k + 3832271 := by
    unfold C
    simp [show (10616832 * k + 7664542) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 3832271) = 15925248 * k + 11496814 := by
    unfold C
    simp [show (5308416 * k + 3832271) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 11496814) = 7962624 * k + 5748407 := by
    unfold C
    simp [show (15925248 * k + 11496814) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 5748407) = 23887872 * k + 17245222 := by
    unfold C
    simp [show (7962624 * k + 5748407) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 17245222) = 11943936 * k + 8622611 := by
    unfold C
    simp [show (23887872 * k + 17245222) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 8622611) = 35831808 * k + 25867834 := by
    unfold C
    simp [show (11943936 * k + 8622611) % 2 ≠ 0 by omega]
    omega
  have h14 : C (35831808 * k + 25867834) = 17915904 * k + 12933917 := by
    unfold C
    simp [show (35831808 * k + 25867834) % 2 = 0 by omega]
    omega
  have h15 : C (17915904 * k + 12933917) = 53747712 * k + 38801752 := by
    unfold C
    simp [show (17915904 * k + 12933917) % 2 ≠ 0 by omega]
    omega
  have h16 : C (53747712 * k + 38801752) = 26873856 * k + 19400876 := by
    unfold C
    simp [show (53747712 * k + 38801752) % 2 = 0 by omega]
    omega
  have h17 : C (26873856 * k + 19400876) = 13436928 * k + 9700438 := by
    unfold C
    simp [show (26873856 * k + 19400876) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 9700438) = 6718464 * k + 4850219 := by
    unfold C
    simp [show (13436928 * k + 9700438) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 4850219) = 20155392 * k + 14550658 := by
    unfold C
    simp [show (6718464 * k + 4850219) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 14550658) = 10077696 * k + 7275329 := by
    unfold C
    simp [show (20155392 * k + 14550658) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 7275329) = 30233088 * k + 21825988 := by
    unfold C
    simp [show (10077696 * k + 7275329) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 21825988) = 15116544 * k + 10912994 := by
    unfold C
    simp [show (30233088 * k + 21825988) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 10912994) = 7558272 * k + 5456497 := by
    unfold C
    simp [show (15116544 * k + 10912994) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 5456497) = 22674816 * k + 16369492 := by
    unfold C
    simp [show (7558272 * k + 5456497) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 16369492) = 11337408 * k + 8184746 := by
    unfold C
    simp [show (22674816 * k + 16369492) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 8184746) = 5668704 * k + 4092373 := by
    unfold C
    simp [show (11337408 * k + 8184746) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 4092373) = 17006112 * k + 12277120 := by
    unfold C
    simp [show (5668704 * k + 4092373) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 12277120) = 8503056 * k + 6138560 := by
    unfold C
    simp [show (17006112 * k + 12277120) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 6138560) = 4251528 * k + 3069280 := by
    unfold C
    simp [show (8503056 * k + 6138560) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 3069280) = 2125764 * k + 1534640 := by
    unfold C
    simp [show (4251528 * k + 3069280) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1534640) = 1062882 * k + 767320 := by
    unfold C
    simp [show (2125764 * k + 1534640) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 767320) = 531441 * k + 383660 := by
    unfold C
    simp [show (1062882 * k + 767320) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 756991) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 756991)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_758831 : ∀ k : Nat,
    iterate (1048576 * k + 758831) 32 = 531441 * k + 384593 ∧
      531441 * k + 384593 < 1048576 * k + 758831 := by
  intro k
  have h1 : C (1048576 * k + 758831) = 3145728 * k + 2276494 := by
    unfold C
    simp [show (1048576 * k + 758831) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2276494) = 1572864 * k + 1138247 := by
    unfold C
    simp [show (3145728 * k + 2276494) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1138247) = 4718592 * k + 3414742 := by
    unfold C
    simp [show (1572864 * k + 1138247) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3414742) = 2359296 * k + 1707371 := by
    unfold C
    simp [show (4718592 * k + 3414742) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1707371) = 7077888 * k + 5122114 := by
    unfold C
    simp [show (2359296 * k + 1707371) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 5122114) = 3538944 * k + 2561057 := by
    unfold C
    simp [show (7077888 * k + 5122114) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2561057) = 10616832 * k + 7683172 := by
    unfold C
    simp [show (3538944 * k + 2561057) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 7683172) = 5308416 * k + 3841586 := by
    unfold C
    simp [show (10616832 * k + 7683172) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 3841586) = 2654208 * k + 1920793 := by
    unfold C
    simp [show (5308416 * k + 3841586) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1920793) = 7962624 * k + 5762380 := by
    unfold C
    simp [show (2654208 * k + 1920793) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 5762380) = 3981312 * k + 2881190 := by
    unfold C
    simp [show (7962624 * k + 5762380) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 2881190) = 1990656 * k + 1440595 := by
    unfold C
    simp [show (3981312 * k + 2881190) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 1440595) = 5971968 * k + 4321786 := by
    unfold C
    simp [show (1990656 * k + 1440595) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 4321786) = 2985984 * k + 2160893 := by
    unfold C
    simp [show (5971968 * k + 4321786) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 2160893) = 8957952 * k + 6482680 := by
    unfold C
    simp [show (2985984 * k + 2160893) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 6482680) = 4478976 * k + 3241340 := by
    unfold C
    simp [show (8957952 * k + 6482680) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 3241340) = 2239488 * k + 1620670 := by
    unfold C
    simp [show (4478976 * k + 3241340) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 1620670) = 1119744 * k + 810335 := by
    unfold C
    simp [show (2239488 * k + 1620670) % 2 = 0 by omega]
    omega
  have h19 : C (1119744 * k + 810335) = 3359232 * k + 2431006 := by
    unfold C
    simp [show (1119744 * k + 810335) % 2 ≠ 0 by omega]
    omega
  have h20 : C (3359232 * k + 2431006) = 1679616 * k + 1215503 := by
    unfold C
    simp [show (3359232 * k + 2431006) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 1215503) = 5038848 * k + 3646510 := by
    unfold C
    simp [show (1679616 * k + 1215503) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 3646510) = 2519424 * k + 1823255 := by
    unfold C
    simp [show (5038848 * k + 3646510) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1823255) = 7558272 * k + 5469766 := by
    unfold C
    simp [show (2519424 * k + 1823255) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 5469766) = 3779136 * k + 2734883 := by
    unfold C
    simp [show (7558272 * k + 5469766) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 2734883) = 11337408 * k + 8204650 := by
    unfold C
    simp [show (3779136 * k + 2734883) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 8204650) = 5668704 * k + 4102325 := by
    unfold C
    simp [show (11337408 * k + 8204650) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 4102325) = 17006112 * k + 12306976 := by
    unfold C
    simp [show (5668704 * k + 4102325) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 12306976) = 8503056 * k + 6153488 := by
    unfold C
    simp [show (17006112 * k + 12306976) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 6153488) = 4251528 * k + 3076744 := by
    unfold C
    simp [show (8503056 * k + 6153488) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 3076744) = 2125764 * k + 1538372 := by
    unfold C
    simp [show (4251528 * k + 3076744) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1538372) = 1062882 * k + 769186 := by
    unfold C
    simp [show (2125764 * k + 1538372) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 769186) = 531441 * k + 384593 := by
    unfold C
    simp [show (1062882 * k + 769186) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 758831) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 758831)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_759719 : ∀ k : Nat,
    iterate (1048576 * k + 759719) 32 = 531441 * k + 385043 ∧
      531441 * k + 385043 < 1048576 * k + 759719 := by
  intro k
  have h1 : C (1048576 * k + 759719) = 3145728 * k + 2279158 := by
    unfold C
    simp [show (1048576 * k + 759719) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2279158) = 1572864 * k + 1139579 := by
    unfold C
    simp [show (3145728 * k + 2279158) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1139579) = 4718592 * k + 3418738 := by
    unfold C
    simp [show (1572864 * k + 1139579) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3418738) = 2359296 * k + 1709369 := by
    unfold C
    simp [show (4718592 * k + 3418738) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1709369) = 7077888 * k + 5128108 := by
    unfold C
    simp [show (2359296 * k + 1709369) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 5128108) = 3538944 * k + 2564054 := by
    unfold C
    simp [show (7077888 * k + 5128108) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2564054) = 1769472 * k + 1282027 := by
    unfold C
    simp [show (3538944 * k + 2564054) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1282027) = 5308416 * k + 3846082 := by
    unfold C
    simp [show (1769472 * k + 1282027) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 3846082) = 2654208 * k + 1923041 := by
    unfold C
    simp [show (5308416 * k + 3846082) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1923041) = 7962624 * k + 5769124 := by
    unfold C
    simp [show (2654208 * k + 1923041) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 5769124) = 3981312 * k + 2884562 := by
    unfold C
    simp [show (7962624 * k + 5769124) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 2884562) = 1990656 * k + 1442281 := by
    unfold C
    simp [show (3981312 * k + 2884562) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 1442281) = 5971968 * k + 4326844 := by
    unfold C
    simp [show (1990656 * k + 1442281) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 4326844) = 2985984 * k + 2163422 := by
    unfold C
    simp [show (5971968 * k + 4326844) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 2163422) = 1492992 * k + 1081711 := by
    unfold C
    simp [show (2985984 * k + 2163422) % 2 = 0 by omega]
    omega
  have h16 : C (1492992 * k + 1081711) = 4478976 * k + 3245134 := by
    unfold C
    simp [show (1492992 * k + 1081711) % 2 ≠ 0 by omega]
    omega
  have h17 : C (4478976 * k + 3245134) = 2239488 * k + 1622567 := by
    unfold C
    simp [show (4478976 * k + 3245134) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 1622567) = 6718464 * k + 4867702 := by
    unfold C
    simp [show (2239488 * k + 1622567) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 4867702) = 3359232 * k + 2433851 := by
    unfold C
    simp [show (6718464 * k + 4867702) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 2433851) = 10077696 * k + 7301554 := by
    unfold C
    simp [show (3359232 * k + 2433851) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 7301554) = 5038848 * k + 3650777 := by
    unfold C
    simp [show (10077696 * k + 7301554) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 3650777) = 15116544 * k + 10952332 := by
    unfold C
    simp [show (5038848 * k + 3650777) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 10952332) = 7558272 * k + 5476166 := by
    unfold C
    simp [show (15116544 * k + 10952332) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 5476166) = 3779136 * k + 2738083 := by
    unfold C
    simp [show (7558272 * k + 5476166) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 2738083) = 11337408 * k + 8214250 := by
    unfold C
    simp [show (3779136 * k + 2738083) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 8214250) = 5668704 * k + 4107125 := by
    unfold C
    simp [show (11337408 * k + 8214250) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 4107125) = 17006112 * k + 12321376 := by
    unfold C
    simp [show (5668704 * k + 4107125) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 12321376) = 8503056 * k + 6160688 := by
    unfold C
    simp [show (17006112 * k + 12321376) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 6160688) = 4251528 * k + 3080344 := by
    unfold C
    simp [show (8503056 * k + 6160688) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 3080344) = 2125764 * k + 1540172 := by
    unfold C
    simp [show (4251528 * k + 3080344) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1540172) = 1062882 * k + 770086 := by
    unfold C
    simp [show (2125764 * k + 1540172) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 770086) = 531441 * k + 385043 := by
    unfold C
    simp [show (1062882 * k + 770086) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 759719) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 759719)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_759855 : ∀ k : Nat,
    iterate (1048576 * k + 759855) 32 = 531441 * k + 385112 ∧
      531441 * k + 385112 < 1048576 * k + 759855 := by
  intro k
  have h1 : C (1048576 * k + 759855) = 3145728 * k + 2279566 := by
    unfold C
    simp [show (1048576 * k + 759855) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2279566) = 1572864 * k + 1139783 := by
    unfold C
    simp [show (3145728 * k + 2279566) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1139783) = 4718592 * k + 3419350 := by
    unfold C
    simp [show (1572864 * k + 1139783) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3419350) = 2359296 * k + 1709675 := by
    unfold C
    simp [show (4718592 * k + 3419350) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1709675) = 7077888 * k + 5129026 := by
    unfold C
    simp [show (2359296 * k + 1709675) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 5129026) = 3538944 * k + 2564513 := by
    unfold C
    simp [show (7077888 * k + 5129026) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2564513) = 10616832 * k + 7693540 := by
    unfold C
    simp [show (3538944 * k + 2564513) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 7693540) = 5308416 * k + 3846770 := by
    unfold C
    simp [show (10616832 * k + 7693540) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 3846770) = 2654208 * k + 1923385 := by
    unfold C
    simp [show (5308416 * k + 3846770) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1923385) = 7962624 * k + 5770156 := by
    unfold C
    simp [show (2654208 * k + 1923385) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 5770156) = 3981312 * k + 2885078 := by
    unfold C
    simp [show (7962624 * k + 5770156) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 2885078) = 1990656 * k + 1442539 := by
    unfold C
    simp [show (3981312 * k + 2885078) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 1442539) = 5971968 * k + 4327618 := by
    unfold C
    simp [show (1990656 * k + 1442539) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 4327618) = 2985984 * k + 2163809 := by
    unfold C
    simp [show (5971968 * k + 4327618) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 2163809) = 8957952 * k + 6491428 := by
    unfold C
    simp [show (2985984 * k + 2163809) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 6491428) = 4478976 * k + 3245714 := by
    unfold C
    simp [show (8957952 * k + 6491428) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 3245714) = 2239488 * k + 1622857 := by
    unfold C
    simp [show (4478976 * k + 3245714) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 1622857) = 6718464 * k + 4868572 := by
    unfold C
    simp [show (2239488 * k + 1622857) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 4868572) = 3359232 * k + 2434286 := by
    unfold C
    simp [show (6718464 * k + 4868572) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 2434286) = 1679616 * k + 1217143 := by
    unfold C
    simp [show (3359232 * k + 2434286) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 1217143) = 5038848 * k + 3651430 := by
    unfold C
    simp [show (1679616 * k + 1217143) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 3651430) = 2519424 * k + 1825715 := by
    unfold C
    simp [show (5038848 * k + 3651430) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1825715) = 7558272 * k + 5477146 := by
    unfold C
    simp [show (2519424 * k + 1825715) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 5477146) = 3779136 * k + 2738573 := by
    unfold C
    simp [show (7558272 * k + 5477146) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 2738573) = 11337408 * k + 8215720 := by
    unfold C
    simp [show (3779136 * k + 2738573) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 8215720) = 5668704 * k + 4107860 := by
    unfold C
    simp [show (11337408 * k + 8215720) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 4107860) = 2834352 * k + 2053930 := by
    unfold C
    simp [show (5668704 * k + 4107860) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2053930) = 1417176 * k + 1026965 := by
    unfold C
    simp [show (2834352 * k + 2053930) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 1026965) = 4251528 * k + 3080896 := by
    unfold C
    simp [show (1417176 * k + 1026965) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 3080896) = 2125764 * k + 1540448 := by
    unfold C
    simp [show (4251528 * k + 3080896) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1540448) = 1062882 * k + 770224 := by
    unfold C
    simp [show (2125764 * k + 1540448) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 770224) = 531441 * k + 385112 := by
    unfold C
    simp [show (1062882 * k + 770224) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 759855) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 759855)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_759871 : ∀ k : Nat,
    iterate (1048576 * k + 759871) 32 = 531441 * k + 385120 ∧
      531441 * k + 385120 < 1048576 * k + 759871 := by
  intro k
  have h1 : C (1048576 * k + 759871) = 3145728 * k + 2279614 := by
    unfold C
    simp [show (1048576 * k + 759871) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2279614) = 1572864 * k + 1139807 := by
    unfold C
    simp [show (3145728 * k + 2279614) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1139807) = 4718592 * k + 3419422 := by
    unfold C
    simp [show (1572864 * k + 1139807) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3419422) = 2359296 * k + 1709711 := by
    unfold C
    simp [show (4718592 * k + 3419422) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1709711) = 7077888 * k + 5129134 := by
    unfold C
    simp [show (2359296 * k + 1709711) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 5129134) = 3538944 * k + 2564567 := by
    unfold C
    simp [show (7077888 * k + 5129134) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2564567) = 10616832 * k + 7693702 := by
    unfold C
    simp [show (3538944 * k + 2564567) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 7693702) = 5308416 * k + 3846851 := by
    unfold C
    simp [show (10616832 * k + 7693702) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 3846851) = 15925248 * k + 11540554 := by
    unfold C
    simp [show (5308416 * k + 3846851) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 11540554) = 7962624 * k + 5770277 := by
    unfold C
    simp [show (15925248 * k + 11540554) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 5770277) = 23887872 * k + 17310832 := by
    unfold C
    simp [show (7962624 * k + 5770277) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 17310832) = 11943936 * k + 8655416 := by
    unfold C
    simp [show (23887872 * k + 17310832) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 8655416) = 5971968 * k + 4327708 := by
    unfold C
    simp [show (11943936 * k + 8655416) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 4327708) = 2985984 * k + 2163854 := by
    unfold C
    simp [show (5971968 * k + 4327708) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 2163854) = 1492992 * k + 1081927 := by
    unfold C
    simp [show (2985984 * k + 2163854) % 2 = 0 by omega]
    omega
  have h16 : C (1492992 * k + 1081927) = 4478976 * k + 3245782 := by
    unfold C
    simp [show (1492992 * k + 1081927) % 2 ≠ 0 by omega]
    omega
  have h17 : C (4478976 * k + 3245782) = 2239488 * k + 1622891 := by
    unfold C
    simp [show (4478976 * k + 3245782) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 1622891) = 6718464 * k + 4868674 := by
    unfold C
    simp [show (2239488 * k + 1622891) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 4868674) = 3359232 * k + 2434337 := by
    unfold C
    simp [show (6718464 * k + 4868674) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 2434337) = 10077696 * k + 7303012 := by
    unfold C
    simp [show (3359232 * k + 2434337) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 7303012) = 5038848 * k + 3651506 := by
    unfold C
    simp [show (10077696 * k + 7303012) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 3651506) = 2519424 * k + 1825753 := by
    unfold C
    simp [show (5038848 * k + 3651506) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1825753) = 7558272 * k + 5477260 := by
    unfold C
    simp [show (2519424 * k + 1825753) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 5477260) = 3779136 * k + 2738630 := by
    unfold C
    simp [show (7558272 * k + 5477260) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 2738630) = 1889568 * k + 1369315 := by
    unfold C
    simp [show (3779136 * k + 2738630) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1369315) = 5668704 * k + 4107946 := by
    unfold C
    simp [show (1889568 * k + 1369315) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 4107946) = 2834352 * k + 2053973 := by
    unfold C
    simp [show (5668704 * k + 4107946) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2053973) = 8503056 * k + 6161920 := by
    unfold C
    simp [show (2834352 * k + 2053973) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 6161920) = 4251528 * k + 3080960 := by
    unfold C
    simp [show (8503056 * k + 6161920) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 3080960) = 2125764 * k + 1540480 := by
    unfold C
    simp [show (4251528 * k + 3080960) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1540480) = 1062882 * k + 770240 := by
    unfold C
    simp [show (2125764 * k + 1540480) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 770240) = 531441 * k + 385120 := by
    unfold C
    simp [show (1062882 * k + 770240) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 759871) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 759871)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_760063 : ∀ k : Nat,
    iterate (1048576 * k + 760063) 32 = 531441 * k + 385217 ∧
      531441 * k + 385217 < 1048576 * k + 760063 := by
  intro k
  have h1 : C (1048576 * k + 760063) = 3145728 * k + 2280190 := by
    unfold C
    simp [show (1048576 * k + 760063) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2280190) = 1572864 * k + 1140095 := by
    unfold C
    simp [show (3145728 * k + 2280190) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1140095) = 4718592 * k + 3420286 := by
    unfold C
    simp [show (1572864 * k + 1140095) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3420286) = 2359296 * k + 1710143 := by
    unfold C
    simp [show (4718592 * k + 3420286) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1710143) = 7077888 * k + 5130430 := by
    unfold C
    simp [show (2359296 * k + 1710143) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 5130430) = 3538944 * k + 2565215 := by
    unfold C
    simp [show (7077888 * k + 5130430) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2565215) = 10616832 * k + 7695646 := by
    unfold C
    simp [show (3538944 * k + 2565215) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 7695646) = 5308416 * k + 3847823 := by
    unfold C
    simp [show (10616832 * k + 7695646) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 3847823) = 15925248 * k + 11543470 := by
    unfold C
    simp [show (5308416 * k + 3847823) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 11543470) = 7962624 * k + 5771735 := by
    unfold C
    simp [show (15925248 * k + 11543470) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 5771735) = 23887872 * k + 17315206 := by
    unfold C
    simp [show (7962624 * k + 5771735) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 17315206) = 11943936 * k + 8657603 := by
    unfold C
    simp [show (23887872 * k + 17315206) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 8657603) = 35831808 * k + 25972810 := by
    unfold C
    simp [show (11943936 * k + 8657603) % 2 ≠ 0 by omega]
    omega
  have h14 : C (35831808 * k + 25972810) = 17915904 * k + 12986405 := by
    unfold C
    simp [show (35831808 * k + 25972810) % 2 = 0 by omega]
    omega
  have h15 : C (17915904 * k + 12986405) = 53747712 * k + 38959216 := by
    unfold C
    simp [show (17915904 * k + 12986405) % 2 ≠ 0 by omega]
    omega
  have h16 : C (53747712 * k + 38959216) = 26873856 * k + 19479608 := by
    unfold C
    simp [show (53747712 * k + 38959216) % 2 = 0 by omega]
    omega
  have h17 : C (26873856 * k + 19479608) = 13436928 * k + 9739804 := by
    unfold C
    simp [show (26873856 * k + 19479608) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 9739804) = 6718464 * k + 4869902 := by
    unfold C
    simp [show (13436928 * k + 9739804) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 4869902) = 3359232 * k + 2434951 := by
    unfold C
    simp [show (6718464 * k + 4869902) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 2434951) = 10077696 * k + 7304854 := by
    unfold C
    simp [show (3359232 * k + 2434951) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 7304854) = 5038848 * k + 3652427 := by
    unfold C
    simp [show (10077696 * k + 7304854) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 3652427) = 15116544 * k + 10957282 := by
    unfold C
    simp [show (5038848 * k + 3652427) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 10957282) = 7558272 * k + 5478641 := by
    unfold C
    simp [show (15116544 * k + 10957282) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 5478641) = 22674816 * k + 16435924 := by
    unfold C
    simp [show (7558272 * k + 5478641) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 16435924) = 11337408 * k + 8217962 := by
    unfold C
    simp [show (22674816 * k + 16435924) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 8217962) = 5668704 * k + 4108981 := by
    unfold C
    simp [show (11337408 * k + 8217962) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 4108981) = 17006112 * k + 12326944 := by
    unfold C
    simp [show (5668704 * k + 4108981) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 12326944) = 8503056 * k + 6163472 := by
    unfold C
    simp [show (17006112 * k + 12326944) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 6163472) = 4251528 * k + 3081736 := by
    unfold C
    simp [show (8503056 * k + 6163472) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 3081736) = 2125764 * k + 1540868 := by
    unfold C
    simp [show (4251528 * k + 3081736) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1540868) = 1062882 * k + 770434 := by
    unfold C
    simp [show (2125764 * k + 1540868) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 770434) = 531441 * k + 385217 := by
    unfold C
    simp [show (1062882 * k + 770434) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 760063) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 760063)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_760607 : ∀ k : Nat,
    iterate (1048576 * k + 760607) 32 = 531441 * k + 385493 ∧
      531441 * k + 385493 < 1048576 * k + 760607 := by
  intro k
  have h1 : C (1048576 * k + 760607) = 3145728 * k + 2281822 := by
    unfold C
    simp [show (1048576 * k + 760607) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2281822) = 1572864 * k + 1140911 := by
    unfold C
    simp [show (3145728 * k + 2281822) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1140911) = 4718592 * k + 3422734 := by
    unfold C
    simp [show (1572864 * k + 1140911) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3422734) = 2359296 * k + 1711367 := by
    unfold C
    simp [show (4718592 * k + 3422734) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1711367) = 7077888 * k + 5134102 := by
    unfold C
    simp [show (2359296 * k + 1711367) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 5134102) = 3538944 * k + 2567051 := by
    unfold C
    simp [show (7077888 * k + 5134102) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2567051) = 10616832 * k + 7701154 := by
    unfold C
    simp [show (3538944 * k + 2567051) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 7701154) = 5308416 * k + 3850577 := by
    unfold C
    simp [show (10616832 * k + 7701154) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 3850577) = 15925248 * k + 11551732 := by
    unfold C
    simp [show (5308416 * k + 3850577) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 11551732) = 7962624 * k + 5775866 := by
    unfold C
    simp [show (15925248 * k + 11551732) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 5775866) = 3981312 * k + 2887933 := by
    unfold C
    simp [show (7962624 * k + 5775866) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 2887933) = 11943936 * k + 8663800 := by
    unfold C
    simp [show (3981312 * k + 2887933) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 8663800) = 5971968 * k + 4331900 := by
    unfold C
    simp [show (11943936 * k + 8663800) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 4331900) = 2985984 * k + 2165950 := by
    unfold C
    simp [show (5971968 * k + 4331900) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 2165950) = 1492992 * k + 1082975 := by
    unfold C
    simp [show (2985984 * k + 2165950) % 2 = 0 by omega]
    omega
  have h16 : C (1492992 * k + 1082975) = 4478976 * k + 3248926 := by
    unfold C
    simp [show (1492992 * k + 1082975) % 2 ≠ 0 by omega]
    omega
  have h17 : C (4478976 * k + 3248926) = 2239488 * k + 1624463 := by
    unfold C
    simp [show (4478976 * k + 3248926) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 1624463) = 6718464 * k + 4873390 := by
    unfold C
    simp [show (2239488 * k + 1624463) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 4873390) = 3359232 * k + 2436695 := by
    unfold C
    simp [show (6718464 * k + 4873390) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 2436695) = 10077696 * k + 7310086 := by
    unfold C
    simp [show (3359232 * k + 2436695) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 7310086) = 5038848 * k + 3655043 := by
    unfold C
    simp [show (10077696 * k + 7310086) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 3655043) = 15116544 * k + 10965130 := by
    unfold C
    simp [show (5038848 * k + 3655043) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 10965130) = 7558272 * k + 5482565 := by
    unfold C
    simp [show (15116544 * k + 10965130) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 5482565) = 22674816 * k + 16447696 := by
    unfold C
    simp [show (7558272 * k + 5482565) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 16447696) = 11337408 * k + 8223848 := by
    unfold C
    simp [show (22674816 * k + 16447696) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 8223848) = 5668704 * k + 4111924 := by
    unfold C
    simp [show (11337408 * k + 8223848) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 4111924) = 2834352 * k + 2055962 := by
    unfold C
    simp [show (5668704 * k + 4111924) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2055962) = 1417176 * k + 1027981 := by
    unfold C
    simp [show (2834352 * k + 2055962) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 1027981) = 4251528 * k + 3083944 := by
    unfold C
    simp [show (1417176 * k + 1027981) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 3083944) = 2125764 * k + 1541972 := by
    unfold C
    simp [show (4251528 * k + 3083944) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1541972) = 1062882 * k + 770986 := by
    unfold C
    simp [show (2125764 * k + 1541972) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 770986) = 531441 * k + 385493 := by
    unfold C
    simp [show (1062882 * k + 770986) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 760607) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 760607)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_760767 : ∀ k : Nat,
    iterate (1048576 * k + 760767) 32 = 531441 * k + 385574 ∧
      531441 * k + 385574 < 1048576 * k + 760767 := by
  intro k
  have h1 : C (1048576 * k + 760767) = 3145728 * k + 2282302 := by
    unfold C
    simp [show (1048576 * k + 760767) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2282302) = 1572864 * k + 1141151 := by
    unfold C
    simp [show (3145728 * k + 2282302) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1141151) = 4718592 * k + 3423454 := by
    unfold C
    simp [show (1572864 * k + 1141151) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3423454) = 2359296 * k + 1711727 := by
    unfold C
    simp [show (4718592 * k + 3423454) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1711727) = 7077888 * k + 5135182 := by
    unfold C
    simp [show (2359296 * k + 1711727) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 5135182) = 3538944 * k + 2567591 := by
    unfold C
    simp [show (7077888 * k + 5135182) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2567591) = 10616832 * k + 7702774 := by
    unfold C
    simp [show (3538944 * k + 2567591) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 7702774) = 5308416 * k + 3851387 := by
    unfold C
    simp [show (10616832 * k + 7702774) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 3851387) = 15925248 * k + 11554162 := by
    unfold C
    simp [show (5308416 * k + 3851387) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 11554162) = 7962624 * k + 5777081 := by
    unfold C
    simp [show (15925248 * k + 11554162) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 5777081) = 23887872 * k + 17331244 := by
    unfold C
    simp [show (7962624 * k + 5777081) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 17331244) = 11943936 * k + 8665622 := by
    unfold C
    simp [show (23887872 * k + 17331244) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 8665622) = 5971968 * k + 4332811 := by
    unfold C
    simp [show (11943936 * k + 8665622) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 4332811) = 17915904 * k + 12998434 := by
    unfold C
    simp [show (5971968 * k + 4332811) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 12998434) = 8957952 * k + 6499217 := by
    unfold C
    simp [show (17915904 * k + 12998434) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 6499217) = 26873856 * k + 19497652 := by
    unfold C
    simp [show (8957952 * k + 6499217) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 19497652) = 13436928 * k + 9748826 := by
    unfold C
    simp [show (26873856 * k + 19497652) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 9748826) = 6718464 * k + 4874413 := by
    unfold C
    simp [show (13436928 * k + 9748826) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 4874413) = 20155392 * k + 14623240 := by
    unfold C
    simp [show (6718464 * k + 4874413) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 14623240) = 10077696 * k + 7311620 := by
    unfold C
    simp [show (20155392 * k + 14623240) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 7311620) = 5038848 * k + 3655810 := by
    unfold C
    simp [show (10077696 * k + 7311620) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 3655810) = 2519424 * k + 1827905 := by
    unfold C
    simp [show (5038848 * k + 3655810) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1827905) = 7558272 * k + 5483716 := by
    unfold C
    simp [show (2519424 * k + 1827905) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 5483716) = 3779136 * k + 2741858 := by
    unfold C
    simp [show (7558272 * k + 5483716) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 2741858) = 1889568 * k + 1370929 := by
    unfold C
    simp [show (3779136 * k + 2741858) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1370929) = 5668704 * k + 4112788 := by
    unfold C
    simp [show (1889568 * k + 1370929) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 4112788) = 2834352 * k + 2056394 := by
    unfold C
    simp [show (5668704 * k + 4112788) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2056394) = 1417176 * k + 1028197 := by
    unfold C
    simp [show (2834352 * k + 2056394) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 1028197) = 4251528 * k + 3084592 := by
    unfold C
    simp [show (1417176 * k + 1028197) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 3084592) = 2125764 * k + 1542296 := by
    unfold C
    simp [show (4251528 * k + 3084592) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1542296) = 1062882 * k + 771148 := by
    unfold C
    simp [show (2125764 * k + 1542296) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 771148) = 531441 * k + 385574 := by
    unfold C
    simp [show (1062882 * k + 771148) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 760767) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 760767)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_762215 : ∀ k : Nat,
    iterate (1048576 * k + 762215) 32 = 531441 * k + 386308 ∧
      531441 * k + 386308 < 1048576 * k + 762215 := by
  intro k
  have h1 : C (1048576 * k + 762215) = 3145728 * k + 2286646 := by
    unfold C
    simp [show (1048576 * k + 762215) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2286646) = 1572864 * k + 1143323 := by
    unfold C
    simp [show (3145728 * k + 2286646) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1143323) = 4718592 * k + 3429970 := by
    unfold C
    simp [show (1572864 * k + 1143323) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3429970) = 2359296 * k + 1714985 := by
    unfold C
    simp [show (4718592 * k + 3429970) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1714985) = 7077888 * k + 5144956 := by
    unfold C
    simp [show (2359296 * k + 1714985) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 5144956) = 3538944 * k + 2572478 := by
    unfold C
    simp [show (7077888 * k + 5144956) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2572478) = 1769472 * k + 1286239 := by
    unfold C
    simp [show (3538944 * k + 2572478) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1286239) = 5308416 * k + 3858718 := by
    unfold C
    simp [show (1769472 * k + 1286239) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 3858718) = 2654208 * k + 1929359 := by
    unfold C
    simp [show (5308416 * k + 3858718) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1929359) = 7962624 * k + 5788078 := by
    unfold C
    simp [show (2654208 * k + 1929359) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 5788078) = 3981312 * k + 2894039 := by
    unfold C
    simp [show (7962624 * k + 5788078) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 2894039) = 11943936 * k + 8682118 := by
    unfold C
    simp [show (3981312 * k + 2894039) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 8682118) = 5971968 * k + 4341059 := by
    unfold C
    simp [show (11943936 * k + 8682118) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 4341059) = 17915904 * k + 13023178 := by
    unfold C
    simp [show (5971968 * k + 4341059) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 13023178) = 8957952 * k + 6511589 := by
    unfold C
    simp [show (17915904 * k + 13023178) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 6511589) = 26873856 * k + 19534768 := by
    unfold C
    simp [show (8957952 * k + 6511589) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 19534768) = 13436928 * k + 9767384 := by
    unfold C
    simp [show (26873856 * k + 19534768) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 9767384) = 6718464 * k + 4883692 := by
    unfold C
    simp [show (13436928 * k + 9767384) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 4883692) = 3359232 * k + 2441846 := by
    unfold C
    simp [show (6718464 * k + 4883692) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 2441846) = 1679616 * k + 1220923 := by
    unfold C
    simp [show (3359232 * k + 2441846) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 1220923) = 5038848 * k + 3662770 := by
    unfold C
    simp [show (1679616 * k + 1220923) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 3662770) = 2519424 * k + 1831385 := by
    unfold C
    simp [show (5038848 * k + 3662770) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1831385) = 7558272 * k + 5494156 := by
    unfold C
    simp [show (2519424 * k + 1831385) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 5494156) = 3779136 * k + 2747078 := by
    unfold C
    simp [show (7558272 * k + 5494156) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 2747078) = 1889568 * k + 1373539 := by
    unfold C
    simp [show (3779136 * k + 2747078) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1373539) = 5668704 * k + 4120618 := by
    unfold C
    simp [show (1889568 * k + 1373539) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 4120618) = 2834352 * k + 2060309 := by
    unfold C
    simp [show (5668704 * k + 4120618) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2060309) = 8503056 * k + 6180928 := by
    unfold C
    simp [show (2834352 * k + 2060309) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 6180928) = 4251528 * k + 3090464 := by
    unfold C
    simp [show (8503056 * k + 6180928) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 3090464) = 2125764 * k + 1545232 := by
    unfold C
    simp [show (4251528 * k + 3090464) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1545232) = 1062882 * k + 772616 := by
    unfold C
    simp [show (2125764 * k + 1545232) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 772616) = 531441 * k + 386308 := by
    unfold C
    simp [show (1062882 * k + 772616) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 762215) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 762215)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_762559 : ∀ k : Nat,
    iterate (1048576 * k + 762559) 32 = 531441 * k + 386482 ∧
      531441 * k + 386482 < 1048576 * k + 762559 := by
  intro k
  have h1 : C (1048576 * k + 762559) = 3145728 * k + 2287678 := by
    unfold C
    simp [show (1048576 * k + 762559) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2287678) = 1572864 * k + 1143839 := by
    unfold C
    simp [show (3145728 * k + 2287678) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1143839) = 4718592 * k + 3431518 := by
    unfold C
    simp [show (1572864 * k + 1143839) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3431518) = 2359296 * k + 1715759 := by
    unfold C
    simp [show (4718592 * k + 3431518) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1715759) = 7077888 * k + 5147278 := by
    unfold C
    simp [show (2359296 * k + 1715759) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 5147278) = 3538944 * k + 2573639 := by
    unfold C
    simp [show (7077888 * k + 5147278) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2573639) = 10616832 * k + 7720918 := by
    unfold C
    simp [show (3538944 * k + 2573639) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 7720918) = 5308416 * k + 3860459 := by
    unfold C
    simp [show (10616832 * k + 7720918) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 3860459) = 15925248 * k + 11581378 := by
    unfold C
    simp [show (5308416 * k + 3860459) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 11581378) = 7962624 * k + 5790689 := by
    unfold C
    simp [show (15925248 * k + 11581378) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 5790689) = 23887872 * k + 17372068 := by
    unfold C
    simp [show (7962624 * k + 5790689) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 17372068) = 11943936 * k + 8686034 := by
    unfold C
    simp [show (23887872 * k + 17372068) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 8686034) = 5971968 * k + 4343017 := by
    unfold C
    simp [show (11943936 * k + 8686034) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 4343017) = 17915904 * k + 13029052 := by
    unfold C
    simp [show (5971968 * k + 4343017) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 13029052) = 8957952 * k + 6514526 := by
    unfold C
    simp [show (17915904 * k + 13029052) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 6514526) = 4478976 * k + 3257263 := by
    unfold C
    simp [show (8957952 * k + 6514526) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 3257263) = 13436928 * k + 9771790 := by
    unfold C
    simp [show (4478976 * k + 3257263) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 9771790) = 6718464 * k + 4885895 := by
    unfold C
    simp [show (13436928 * k + 9771790) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 4885895) = 20155392 * k + 14657686 := by
    unfold C
    simp [show (6718464 * k + 4885895) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 14657686) = 10077696 * k + 7328843 := by
    unfold C
    simp [show (20155392 * k + 14657686) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 7328843) = 30233088 * k + 21986530 := by
    unfold C
    simp [show (10077696 * k + 7328843) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 21986530) = 15116544 * k + 10993265 := by
    unfold C
    simp [show (30233088 * k + 21986530) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 10993265) = 45349632 * k + 32979796 := by
    unfold C
    simp [show (15116544 * k + 10993265) % 2 ≠ 0 by omega]
    omega
  have h24 : C (45349632 * k + 32979796) = 22674816 * k + 16489898 := by
    unfold C
    simp [show (45349632 * k + 32979796) % 2 = 0 by omega]
    omega
  have h25 : C (22674816 * k + 16489898) = 11337408 * k + 8244949 := by
    unfold C
    simp [show (22674816 * k + 16489898) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 8244949) = 34012224 * k + 24734848 := by
    unfold C
    simp [show (11337408 * k + 8244949) % 2 ≠ 0 by omega]
    omega
  have h27 : C (34012224 * k + 24734848) = 17006112 * k + 12367424 := by
    unfold C
    simp [show (34012224 * k + 24734848) % 2 = 0 by omega]
    omega
  have h28 : C (17006112 * k + 12367424) = 8503056 * k + 6183712 := by
    unfold C
    simp [show (17006112 * k + 12367424) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 6183712) = 4251528 * k + 3091856 := by
    unfold C
    simp [show (8503056 * k + 6183712) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 3091856) = 2125764 * k + 1545928 := by
    unfold C
    simp [show (4251528 * k + 3091856) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1545928) = 1062882 * k + 772964 := by
    unfold C
    simp [show (2125764 * k + 1545928) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 772964) = 531441 * k + 386482 := by
    unfold C
    simp [show (1062882 * k + 772964) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 762559) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 762559)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_762783 : ∀ k : Nat,
    iterate (1048576 * k + 762783) 32 = 531441 * k + 386596 ∧
      531441 * k + 386596 < 1048576 * k + 762783 := by
  intro k
  have h1 : C (1048576 * k + 762783) = 3145728 * k + 2288350 := by
    unfold C
    simp [show (1048576 * k + 762783) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2288350) = 1572864 * k + 1144175 := by
    unfold C
    simp [show (3145728 * k + 2288350) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1144175) = 4718592 * k + 3432526 := by
    unfold C
    simp [show (1572864 * k + 1144175) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3432526) = 2359296 * k + 1716263 := by
    unfold C
    simp [show (4718592 * k + 3432526) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1716263) = 7077888 * k + 5148790 := by
    unfold C
    simp [show (2359296 * k + 1716263) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 5148790) = 3538944 * k + 2574395 := by
    unfold C
    simp [show (7077888 * k + 5148790) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2574395) = 10616832 * k + 7723186 := by
    unfold C
    simp [show (3538944 * k + 2574395) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 7723186) = 5308416 * k + 3861593 := by
    unfold C
    simp [show (10616832 * k + 7723186) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 3861593) = 15925248 * k + 11584780 := by
    unfold C
    simp [show (5308416 * k + 3861593) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 11584780) = 7962624 * k + 5792390 := by
    unfold C
    simp [show (15925248 * k + 11584780) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 5792390) = 3981312 * k + 2896195 := by
    unfold C
    simp [show (7962624 * k + 5792390) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 2896195) = 11943936 * k + 8688586 := by
    unfold C
    simp [show (3981312 * k + 2896195) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 8688586) = 5971968 * k + 4344293 := by
    unfold C
    simp [show (11943936 * k + 8688586) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 4344293) = 17915904 * k + 13032880 := by
    unfold C
    simp [show (5971968 * k + 4344293) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 13032880) = 8957952 * k + 6516440 := by
    unfold C
    simp [show (17915904 * k + 13032880) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 6516440) = 4478976 * k + 3258220 := by
    unfold C
    simp [show (8957952 * k + 6516440) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 3258220) = 2239488 * k + 1629110 := by
    unfold C
    simp [show (4478976 * k + 3258220) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 1629110) = 1119744 * k + 814555 := by
    unfold C
    simp [show (2239488 * k + 1629110) % 2 = 0 by omega]
    omega
  have h19 : C (1119744 * k + 814555) = 3359232 * k + 2443666 := by
    unfold C
    simp [show (1119744 * k + 814555) % 2 ≠ 0 by omega]
    omega
  have h20 : C (3359232 * k + 2443666) = 1679616 * k + 1221833 := by
    unfold C
    simp [show (3359232 * k + 2443666) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 1221833) = 5038848 * k + 3665500 := by
    unfold C
    simp [show (1679616 * k + 1221833) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 3665500) = 2519424 * k + 1832750 := by
    unfold C
    simp [show (5038848 * k + 3665500) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1832750) = 1259712 * k + 916375 := by
    unfold C
    simp [show (2519424 * k + 1832750) % 2 = 0 by omega]
    omega
  have h24 : C (1259712 * k + 916375) = 3779136 * k + 2749126 := by
    unfold C
    simp [show (1259712 * k + 916375) % 2 ≠ 0 by omega]
    omega
  have h25 : C (3779136 * k + 2749126) = 1889568 * k + 1374563 := by
    unfold C
    simp [show (3779136 * k + 2749126) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1374563) = 5668704 * k + 4123690 := by
    unfold C
    simp [show (1889568 * k + 1374563) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 4123690) = 2834352 * k + 2061845 := by
    unfold C
    simp [show (5668704 * k + 4123690) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2061845) = 8503056 * k + 6185536 := by
    unfold C
    simp [show (2834352 * k + 2061845) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 6185536) = 4251528 * k + 3092768 := by
    unfold C
    simp [show (8503056 * k + 6185536) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 3092768) = 2125764 * k + 1546384 := by
    unfold C
    simp [show (4251528 * k + 3092768) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1546384) = 1062882 * k + 773192 := by
    unfold C
    simp [show (2125764 * k + 1546384) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 773192) = 531441 * k + 386596 := by
    unfold C
    simp [show (1062882 * k + 773192) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 762783) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 762783)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_763263 : ∀ k : Nat,
    iterate (1048576 * k + 763263) 32 = 531441 * k + 386839 ∧
      531441 * k + 386839 < 1048576 * k + 763263 := by
  intro k
  have h1 : C (1048576 * k + 763263) = 3145728 * k + 2289790 := by
    unfold C
    simp [show (1048576 * k + 763263) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2289790) = 1572864 * k + 1144895 := by
    unfold C
    simp [show (3145728 * k + 2289790) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1144895) = 4718592 * k + 3434686 := by
    unfold C
    simp [show (1572864 * k + 1144895) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3434686) = 2359296 * k + 1717343 := by
    unfold C
    simp [show (4718592 * k + 3434686) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1717343) = 7077888 * k + 5152030 := by
    unfold C
    simp [show (2359296 * k + 1717343) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 5152030) = 3538944 * k + 2576015 := by
    unfold C
    simp [show (7077888 * k + 5152030) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2576015) = 10616832 * k + 7728046 := by
    unfold C
    simp [show (3538944 * k + 2576015) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 7728046) = 5308416 * k + 3864023 := by
    unfold C
    simp [show (10616832 * k + 7728046) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 3864023) = 15925248 * k + 11592070 := by
    unfold C
    simp [show (5308416 * k + 3864023) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 11592070) = 7962624 * k + 5796035 := by
    unfold C
    simp [show (15925248 * k + 11592070) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 5796035) = 23887872 * k + 17388106 := by
    unfold C
    simp [show (7962624 * k + 5796035) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 17388106) = 11943936 * k + 8694053 := by
    unfold C
    simp [show (23887872 * k + 17388106) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 8694053) = 35831808 * k + 26082160 := by
    unfold C
    simp [show (11943936 * k + 8694053) % 2 ≠ 0 by omega]
    omega
  have h14 : C (35831808 * k + 26082160) = 17915904 * k + 13041080 := by
    unfold C
    simp [show (35831808 * k + 26082160) % 2 = 0 by omega]
    omega
  have h15 : C (17915904 * k + 13041080) = 8957952 * k + 6520540 := by
    unfold C
    simp [show (17915904 * k + 13041080) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 6520540) = 4478976 * k + 3260270 := by
    unfold C
    simp [show (8957952 * k + 6520540) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 3260270) = 2239488 * k + 1630135 := by
    unfold C
    simp [show (4478976 * k + 3260270) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 1630135) = 6718464 * k + 4890406 := by
    unfold C
    simp [show (2239488 * k + 1630135) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 4890406) = 3359232 * k + 2445203 := by
    unfold C
    simp [show (6718464 * k + 4890406) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 2445203) = 10077696 * k + 7335610 := by
    unfold C
    simp [show (3359232 * k + 2445203) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 7335610) = 5038848 * k + 3667805 := by
    unfold C
    simp [show (10077696 * k + 7335610) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 3667805) = 15116544 * k + 11003416 := by
    unfold C
    simp [show (5038848 * k + 3667805) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 11003416) = 7558272 * k + 5501708 := by
    unfold C
    simp [show (15116544 * k + 11003416) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 5501708) = 3779136 * k + 2750854 := by
    unfold C
    simp [show (7558272 * k + 5501708) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 2750854) = 1889568 * k + 1375427 := by
    unfold C
    simp [show (3779136 * k + 2750854) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1375427) = 5668704 * k + 4126282 := by
    unfold C
    simp [show (1889568 * k + 1375427) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 4126282) = 2834352 * k + 2063141 := by
    unfold C
    simp [show (5668704 * k + 4126282) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2063141) = 8503056 * k + 6189424 := by
    unfold C
    simp [show (2834352 * k + 2063141) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 6189424) = 4251528 * k + 3094712 := by
    unfold C
    simp [show (8503056 * k + 6189424) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 3094712) = 2125764 * k + 1547356 := by
    unfold C
    simp [show (4251528 * k + 3094712) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1547356) = 1062882 * k + 773678 := by
    unfold C
    simp [show (2125764 * k + 1547356) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 773678) = 531441 * k + 386839 := by
    unfold C
    simp [show (1062882 * k + 773678) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 763263) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 763263)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_763483 : ∀ k : Nat,
    iterate (1048576 * k + 763483) 32 = 531441 * k + 386951 ∧
      531441 * k + 386951 < 1048576 * k + 763483 := by
  intro k
  have h1 : C (1048576 * k + 763483) = 3145728 * k + 2290450 := by
    unfold C
    simp [show (1048576 * k + 763483) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2290450) = 1572864 * k + 1145225 := by
    unfold C
    simp [show (3145728 * k + 2290450) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1145225) = 4718592 * k + 3435676 := by
    unfold C
    simp [show (1572864 * k + 1145225) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3435676) = 2359296 * k + 1717838 := by
    unfold C
    simp [show (4718592 * k + 3435676) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1717838) = 1179648 * k + 858919 := by
    unfold C
    simp [show (2359296 * k + 1717838) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 858919) = 3538944 * k + 2576758 := by
    unfold C
    simp [show (1179648 * k + 858919) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 2576758) = 1769472 * k + 1288379 := by
    unfold C
    simp [show (3538944 * k + 2576758) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1288379) = 5308416 * k + 3865138 := by
    unfold C
    simp [show (1769472 * k + 1288379) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 3865138) = 2654208 * k + 1932569 := by
    unfold C
    simp [show (5308416 * k + 3865138) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1932569) = 7962624 * k + 5797708 := by
    unfold C
    simp [show (2654208 * k + 1932569) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 5797708) = 3981312 * k + 2898854 := by
    unfold C
    simp [show (7962624 * k + 5797708) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 2898854) = 1990656 * k + 1449427 := by
    unfold C
    simp [show (3981312 * k + 2898854) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 1449427) = 5971968 * k + 4348282 := by
    unfold C
    simp [show (1990656 * k + 1449427) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 4348282) = 2985984 * k + 2174141 := by
    unfold C
    simp [show (5971968 * k + 4348282) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 2174141) = 8957952 * k + 6522424 := by
    unfold C
    simp [show (2985984 * k + 2174141) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 6522424) = 4478976 * k + 3261212 := by
    unfold C
    simp [show (8957952 * k + 6522424) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 3261212) = 2239488 * k + 1630606 := by
    unfold C
    simp [show (4478976 * k + 3261212) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 1630606) = 1119744 * k + 815303 := by
    unfold C
    simp [show (2239488 * k + 1630606) % 2 = 0 by omega]
    omega
  have h19 : C (1119744 * k + 815303) = 3359232 * k + 2445910 := by
    unfold C
    simp [show (1119744 * k + 815303) % 2 ≠ 0 by omega]
    omega
  have h20 : C (3359232 * k + 2445910) = 1679616 * k + 1222955 := by
    unfold C
    simp [show (3359232 * k + 2445910) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 1222955) = 5038848 * k + 3668866 := by
    unfold C
    simp [show (1679616 * k + 1222955) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 3668866) = 2519424 * k + 1834433 := by
    unfold C
    simp [show (5038848 * k + 3668866) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1834433) = 7558272 * k + 5503300 := by
    unfold C
    simp [show (2519424 * k + 1834433) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 5503300) = 3779136 * k + 2751650 := by
    unfold C
    simp [show (7558272 * k + 5503300) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 2751650) = 1889568 * k + 1375825 := by
    unfold C
    simp [show (3779136 * k + 2751650) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1375825) = 5668704 * k + 4127476 := by
    unfold C
    simp [show (1889568 * k + 1375825) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 4127476) = 2834352 * k + 2063738 := by
    unfold C
    simp [show (5668704 * k + 4127476) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2063738) = 1417176 * k + 1031869 := by
    unfold C
    simp [show (2834352 * k + 2063738) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 1031869) = 4251528 * k + 3095608 := by
    unfold C
    simp [show (1417176 * k + 1031869) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 3095608) = 2125764 * k + 1547804 := by
    unfold C
    simp [show (4251528 * k + 3095608) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1547804) = 1062882 * k + 773902 := by
    unfold C
    simp [show (2125764 * k + 1547804) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 773902) = 531441 * k + 386951 := by
    unfold C
    simp [show (1062882 * k + 773902) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 763483) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 763483)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

end CollatzM20Shard097
