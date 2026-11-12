import Mathlib.Data.Nat.Prime.Basic

namespace CollatzM20Shard022

def C (n : Nat) : Nat := if n % 2 = 0 then n / 2 else 3 * n + 1

def iterate (n t : Nat) : Nat := Nat.rec n (fun _ previous => C previous) t

theorem descent_mod1048576_157927 : ∀ k : Nat,
    iterate (1048576 * k + 157927) 32 = 531441 * k + 80042 ∧
      531441 * k + 80042 < 1048576 * k + 157927 := by
  intro k
  have h1 : C (1048576 * k + 157927) = 3145728 * k + 473782 := by
    unfold C
    simp [show (1048576 * k + 157927) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 473782) = 1572864 * k + 236891 := by
    unfold C
    simp [show (3145728 * k + 473782) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 236891) = 4718592 * k + 710674 := by
    unfold C
    simp [show (1572864 * k + 236891) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 710674) = 2359296 * k + 355337 := by
    unfold C
    simp [show (4718592 * k + 710674) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 355337) = 7077888 * k + 1066012 := by
    unfold C
    simp [show (2359296 * k + 355337) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 1066012) = 3538944 * k + 533006 := by
    unfold C
    simp [show (7077888 * k + 1066012) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 533006) = 1769472 * k + 266503 := by
    unfold C
    simp [show (3538944 * k + 533006) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 266503) = 5308416 * k + 799510 := by
    unfold C
    simp [show (1769472 * k + 266503) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 799510) = 2654208 * k + 399755 := by
    unfold C
    simp [show (5308416 * k + 799510) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 399755) = 7962624 * k + 1199266 := by
    unfold C
    simp [show (2654208 * k + 399755) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 1199266) = 3981312 * k + 599633 := by
    unfold C
    simp [show (7962624 * k + 1199266) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 599633) = 11943936 * k + 1798900 := by
    unfold C
    simp [show (3981312 * k + 599633) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 1798900) = 5971968 * k + 899450 := by
    unfold C
    simp [show (11943936 * k + 1798900) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 899450) = 2985984 * k + 449725 := by
    unfold C
    simp [show (5971968 * k + 899450) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 449725) = 8957952 * k + 1349176 := by
    unfold C
    simp [show (2985984 * k + 449725) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 1349176) = 4478976 * k + 674588 := by
    unfold C
    simp [show (8957952 * k + 1349176) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 674588) = 2239488 * k + 337294 := by
    unfold C
    simp [show (4478976 * k + 674588) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 337294) = 1119744 * k + 168647 := by
    unfold C
    simp [show (2239488 * k + 337294) % 2 = 0 by omega]
    omega
  have h19 : C (1119744 * k + 168647) = 3359232 * k + 505942 := by
    unfold C
    simp [show (1119744 * k + 168647) % 2 ≠ 0 by omega]
    omega
  have h20 : C (3359232 * k + 505942) = 1679616 * k + 252971 := by
    unfold C
    simp [show (3359232 * k + 505942) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 252971) = 5038848 * k + 758914 := by
    unfold C
    simp [show (1679616 * k + 252971) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 758914) = 2519424 * k + 379457 := by
    unfold C
    simp [show (5038848 * k + 758914) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 379457) = 7558272 * k + 1138372 := by
    unfold C
    simp [show (2519424 * k + 379457) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 1138372) = 3779136 * k + 569186 := by
    unfold C
    simp [show (7558272 * k + 1138372) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 569186) = 1889568 * k + 284593 := by
    unfold C
    simp [show (3779136 * k + 569186) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 284593) = 5668704 * k + 853780 := by
    unfold C
    simp [show (1889568 * k + 284593) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 853780) = 2834352 * k + 426890 := by
    unfold C
    simp [show (5668704 * k + 853780) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 426890) = 1417176 * k + 213445 := by
    unfold C
    simp [show (2834352 * k + 426890) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 213445) = 4251528 * k + 640336 := by
    unfold C
    simp [show (1417176 * k + 213445) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 640336) = 2125764 * k + 320168 := by
    unfold C
    simp [show (4251528 * k + 640336) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 320168) = 1062882 * k + 160084 := by
    unfold C
    simp [show (2125764 * k + 320168) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 160084) = 531441 * k + 80042 := by
    unfold C
    simp [show (1062882 * k + 160084) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 157927) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 157927)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_158567 : ∀ k : Nat,
    iterate (1048576 * k + 158567) 32 = 531441 * k + 80366 ∧
      531441 * k + 80366 < 1048576 * k + 158567 := by
  intro k
  have h1 : C (1048576 * k + 158567) = 3145728 * k + 475702 := by
    unfold C
    simp [show (1048576 * k + 158567) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 475702) = 1572864 * k + 237851 := by
    unfold C
    simp [show (3145728 * k + 475702) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 237851) = 4718592 * k + 713554 := by
    unfold C
    simp [show (1572864 * k + 237851) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 713554) = 2359296 * k + 356777 := by
    unfold C
    simp [show (4718592 * k + 713554) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 356777) = 7077888 * k + 1070332 := by
    unfold C
    simp [show (2359296 * k + 356777) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 1070332) = 3538944 * k + 535166 := by
    unfold C
    simp [show (7077888 * k + 1070332) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 535166) = 1769472 * k + 267583 := by
    unfold C
    simp [show (3538944 * k + 535166) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 267583) = 5308416 * k + 802750 := by
    unfold C
    simp [show (1769472 * k + 267583) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 802750) = 2654208 * k + 401375 := by
    unfold C
    simp [show (5308416 * k + 802750) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 401375) = 7962624 * k + 1204126 := by
    unfold C
    simp [show (2654208 * k + 401375) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 1204126) = 3981312 * k + 602063 := by
    unfold C
    simp [show (7962624 * k + 1204126) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 602063) = 11943936 * k + 1806190 := by
    unfold C
    simp [show (3981312 * k + 602063) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 1806190) = 5971968 * k + 903095 := by
    unfold C
    simp [show (11943936 * k + 1806190) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 903095) = 17915904 * k + 2709286 := by
    unfold C
    simp [show (5971968 * k + 903095) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 2709286) = 8957952 * k + 1354643 := by
    unfold C
    simp [show (17915904 * k + 2709286) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 1354643) = 26873856 * k + 4063930 := by
    unfold C
    simp [show (8957952 * k + 1354643) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 4063930) = 13436928 * k + 2031965 := by
    unfold C
    simp [show (26873856 * k + 4063930) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 2031965) = 40310784 * k + 6095896 := by
    unfold C
    simp [show (13436928 * k + 2031965) % 2 ≠ 0 by omega]
    omega
  have h19 : C (40310784 * k + 6095896) = 20155392 * k + 3047948 := by
    unfold C
    simp [show (40310784 * k + 6095896) % 2 = 0 by omega]
    omega
  have h20 : C (20155392 * k + 3047948) = 10077696 * k + 1523974 := by
    unfold C
    simp [show (20155392 * k + 3047948) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 1523974) = 5038848 * k + 761987 := by
    unfold C
    simp [show (10077696 * k + 1523974) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 761987) = 15116544 * k + 2285962 := by
    unfold C
    simp [show (5038848 * k + 761987) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 2285962) = 7558272 * k + 1142981 := by
    unfold C
    simp [show (15116544 * k + 2285962) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 1142981) = 22674816 * k + 3428944 := by
    unfold C
    simp [show (7558272 * k + 1142981) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 3428944) = 11337408 * k + 1714472 := by
    unfold C
    simp [show (22674816 * k + 3428944) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 1714472) = 5668704 * k + 857236 := by
    unfold C
    simp [show (11337408 * k + 1714472) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 857236) = 2834352 * k + 428618 := by
    unfold C
    simp [show (5668704 * k + 857236) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 428618) = 1417176 * k + 214309 := by
    unfold C
    simp [show (2834352 * k + 428618) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 214309) = 4251528 * k + 642928 := by
    unfold C
    simp [show (1417176 * k + 214309) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 642928) = 2125764 * k + 321464 := by
    unfold C
    simp [show (4251528 * k + 642928) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 321464) = 1062882 * k + 160732 := by
    unfold C
    simp [show (2125764 * k + 321464) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 160732) = 531441 * k + 80366 := by
    unfold C
    simp [show (1062882 * k + 160732) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 158567) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 158567)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_158703 : ∀ k : Nat,
    iterate (1048576 * k + 158703) 32 = 531441 * k + 80435 ∧
      531441 * k + 80435 < 1048576 * k + 158703 := by
  intro k
  have h1 : C (1048576 * k + 158703) = 3145728 * k + 476110 := by
    unfold C
    simp [show (1048576 * k + 158703) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 476110) = 1572864 * k + 238055 := by
    unfold C
    simp [show (3145728 * k + 476110) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 238055) = 4718592 * k + 714166 := by
    unfold C
    simp [show (1572864 * k + 238055) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 714166) = 2359296 * k + 357083 := by
    unfold C
    simp [show (4718592 * k + 714166) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 357083) = 7077888 * k + 1071250 := by
    unfold C
    simp [show (2359296 * k + 357083) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 1071250) = 3538944 * k + 535625 := by
    unfold C
    simp [show (7077888 * k + 1071250) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 535625) = 10616832 * k + 1606876 := by
    unfold C
    simp [show (3538944 * k + 535625) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 1606876) = 5308416 * k + 803438 := by
    unfold C
    simp [show (10616832 * k + 1606876) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 803438) = 2654208 * k + 401719 := by
    unfold C
    simp [show (5308416 * k + 803438) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 401719) = 7962624 * k + 1205158 := by
    unfold C
    simp [show (2654208 * k + 401719) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 1205158) = 3981312 * k + 602579 := by
    unfold C
    simp [show (7962624 * k + 1205158) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 602579) = 11943936 * k + 1807738 := by
    unfold C
    simp [show (3981312 * k + 602579) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 1807738) = 5971968 * k + 903869 := by
    unfold C
    simp [show (11943936 * k + 1807738) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 903869) = 17915904 * k + 2711608 := by
    unfold C
    simp [show (5971968 * k + 903869) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 2711608) = 8957952 * k + 1355804 := by
    unfold C
    simp [show (17915904 * k + 2711608) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 1355804) = 4478976 * k + 677902 := by
    unfold C
    simp [show (8957952 * k + 1355804) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 677902) = 2239488 * k + 338951 := by
    unfold C
    simp [show (4478976 * k + 677902) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 338951) = 6718464 * k + 1016854 := by
    unfold C
    simp [show (2239488 * k + 338951) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 1016854) = 3359232 * k + 508427 := by
    unfold C
    simp [show (6718464 * k + 1016854) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 508427) = 10077696 * k + 1525282 := by
    unfold C
    simp [show (3359232 * k + 508427) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 1525282) = 5038848 * k + 762641 := by
    unfold C
    simp [show (10077696 * k + 1525282) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 762641) = 15116544 * k + 2287924 := by
    unfold C
    simp [show (5038848 * k + 762641) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 2287924) = 7558272 * k + 1143962 := by
    unfold C
    simp [show (15116544 * k + 2287924) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 1143962) = 3779136 * k + 571981 := by
    unfold C
    simp [show (7558272 * k + 1143962) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 571981) = 11337408 * k + 1715944 := by
    unfold C
    simp [show (3779136 * k + 571981) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 1715944) = 5668704 * k + 857972 := by
    unfold C
    simp [show (11337408 * k + 1715944) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 857972) = 2834352 * k + 428986 := by
    unfold C
    simp [show (5668704 * k + 857972) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 428986) = 1417176 * k + 214493 := by
    unfold C
    simp [show (2834352 * k + 428986) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 214493) = 4251528 * k + 643480 := by
    unfold C
    simp [show (1417176 * k + 214493) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 643480) = 2125764 * k + 321740 := by
    unfold C
    simp [show (4251528 * k + 643480) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 321740) = 1062882 * k + 160870 := by
    unfold C
    simp [show (2125764 * k + 321740) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 160870) = 531441 * k + 80435 := by
    unfold C
    simp [show (1062882 * k + 160870) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 158703) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 158703)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_159003 : ∀ k : Nat,
    iterate (1048576 * k + 159003) 32 = 531441 * k + 80587 ∧
      531441 * k + 80587 < 1048576 * k + 159003 := by
  intro k
  have h1 : C (1048576 * k + 159003) = 3145728 * k + 477010 := by
    unfold C
    simp [show (1048576 * k + 159003) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 477010) = 1572864 * k + 238505 := by
    unfold C
    simp [show (3145728 * k + 477010) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 238505) = 4718592 * k + 715516 := by
    unfold C
    simp [show (1572864 * k + 238505) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 715516) = 2359296 * k + 357758 := by
    unfold C
    simp [show (4718592 * k + 715516) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 357758) = 1179648 * k + 178879 := by
    unfold C
    simp [show (2359296 * k + 357758) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 178879) = 3538944 * k + 536638 := by
    unfold C
    simp [show (1179648 * k + 178879) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 536638) = 1769472 * k + 268319 := by
    unfold C
    simp [show (3538944 * k + 536638) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 268319) = 5308416 * k + 804958 := by
    unfold C
    simp [show (1769472 * k + 268319) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 804958) = 2654208 * k + 402479 := by
    unfold C
    simp [show (5308416 * k + 804958) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 402479) = 7962624 * k + 1207438 := by
    unfold C
    simp [show (2654208 * k + 402479) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 1207438) = 3981312 * k + 603719 := by
    unfold C
    simp [show (7962624 * k + 1207438) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 603719) = 11943936 * k + 1811158 := by
    unfold C
    simp [show (3981312 * k + 603719) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 1811158) = 5971968 * k + 905579 := by
    unfold C
    simp [show (11943936 * k + 1811158) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 905579) = 17915904 * k + 2716738 := by
    unfold C
    simp [show (5971968 * k + 905579) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 2716738) = 8957952 * k + 1358369 := by
    unfold C
    simp [show (17915904 * k + 2716738) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 1358369) = 26873856 * k + 4075108 := by
    unfold C
    simp [show (8957952 * k + 1358369) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 4075108) = 13436928 * k + 2037554 := by
    unfold C
    simp [show (26873856 * k + 4075108) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 2037554) = 6718464 * k + 1018777 := by
    unfold C
    simp [show (13436928 * k + 2037554) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 1018777) = 20155392 * k + 3056332 := by
    unfold C
    simp [show (6718464 * k + 1018777) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 3056332) = 10077696 * k + 1528166 := by
    unfold C
    simp [show (20155392 * k + 3056332) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 1528166) = 5038848 * k + 764083 := by
    unfold C
    simp [show (10077696 * k + 1528166) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 764083) = 15116544 * k + 2292250 := by
    unfold C
    simp [show (5038848 * k + 764083) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 2292250) = 7558272 * k + 1146125 := by
    unfold C
    simp [show (15116544 * k + 2292250) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 1146125) = 22674816 * k + 3438376 := by
    unfold C
    simp [show (7558272 * k + 1146125) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 3438376) = 11337408 * k + 1719188 := by
    unfold C
    simp [show (22674816 * k + 3438376) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 1719188) = 5668704 * k + 859594 := by
    unfold C
    simp [show (11337408 * k + 1719188) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 859594) = 2834352 * k + 429797 := by
    unfold C
    simp [show (5668704 * k + 859594) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 429797) = 8503056 * k + 1289392 := by
    unfold C
    simp [show (2834352 * k + 429797) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 1289392) = 4251528 * k + 644696 := by
    unfold C
    simp [show (8503056 * k + 1289392) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 644696) = 2125764 * k + 322348 := by
    unfold C
    simp [show (4251528 * k + 644696) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 322348) = 1062882 * k + 161174 := by
    unfold C
    simp [show (2125764 * k + 322348) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 161174) = 531441 * k + 80587 := by
    unfold C
    simp [show (1062882 * k + 161174) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 159003) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 159003)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_159135 : ∀ k : Nat,
    iterate (1048576 * k + 159135) 32 = 531441 * k + 80654 ∧
      531441 * k + 80654 < 1048576 * k + 159135 := by
  intro k
  have h1 : C (1048576 * k + 159135) = 3145728 * k + 477406 := by
    unfold C
    simp [show (1048576 * k + 159135) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 477406) = 1572864 * k + 238703 := by
    unfold C
    simp [show (3145728 * k + 477406) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 238703) = 4718592 * k + 716110 := by
    unfold C
    simp [show (1572864 * k + 238703) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 716110) = 2359296 * k + 358055 := by
    unfold C
    simp [show (4718592 * k + 716110) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 358055) = 7077888 * k + 1074166 := by
    unfold C
    simp [show (2359296 * k + 358055) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 1074166) = 3538944 * k + 537083 := by
    unfold C
    simp [show (7077888 * k + 1074166) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 537083) = 10616832 * k + 1611250 := by
    unfold C
    simp [show (3538944 * k + 537083) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 1611250) = 5308416 * k + 805625 := by
    unfold C
    simp [show (10616832 * k + 1611250) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 805625) = 15925248 * k + 2416876 := by
    unfold C
    simp [show (5308416 * k + 805625) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 2416876) = 7962624 * k + 1208438 := by
    unfold C
    simp [show (15925248 * k + 2416876) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 1208438) = 3981312 * k + 604219 := by
    unfold C
    simp [show (7962624 * k + 1208438) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 604219) = 11943936 * k + 1812658 := by
    unfold C
    simp [show (3981312 * k + 604219) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 1812658) = 5971968 * k + 906329 := by
    unfold C
    simp [show (11943936 * k + 1812658) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 906329) = 17915904 * k + 2718988 := by
    unfold C
    simp [show (5971968 * k + 906329) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 2718988) = 8957952 * k + 1359494 := by
    unfold C
    simp [show (17915904 * k + 2718988) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 1359494) = 4478976 * k + 679747 := by
    unfold C
    simp [show (8957952 * k + 1359494) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 679747) = 13436928 * k + 2039242 := by
    unfold C
    simp [show (4478976 * k + 679747) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 2039242) = 6718464 * k + 1019621 := by
    unfold C
    simp [show (13436928 * k + 2039242) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 1019621) = 20155392 * k + 3058864 := by
    unfold C
    simp [show (6718464 * k + 1019621) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 3058864) = 10077696 * k + 1529432 := by
    unfold C
    simp [show (20155392 * k + 3058864) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 1529432) = 5038848 * k + 764716 := by
    unfold C
    simp [show (10077696 * k + 1529432) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 764716) = 2519424 * k + 382358 := by
    unfold C
    simp [show (5038848 * k + 764716) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 382358) = 1259712 * k + 191179 := by
    unfold C
    simp [show (2519424 * k + 382358) % 2 = 0 by omega]
    omega
  have h24 : C (1259712 * k + 191179) = 3779136 * k + 573538 := by
    unfold C
    simp [show (1259712 * k + 191179) % 2 ≠ 0 by omega]
    omega
  have h25 : C (3779136 * k + 573538) = 1889568 * k + 286769 := by
    unfold C
    simp [show (3779136 * k + 573538) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 286769) = 5668704 * k + 860308 := by
    unfold C
    simp [show (1889568 * k + 286769) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 860308) = 2834352 * k + 430154 := by
    unfold C
    simp [show (5668704 * k + 860308) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 430154) = 1417176 * k + 215077 := by
    unfold C
    simp [show (2834352 * k + 430154) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 215077) = 4251528 * k + 645232 := by
    unfold C
    simp [show (1417176 * k + 215077) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 645232) = 2125764 * k + 322616 := by
    unfold C
    simp [show (4251528 * k + 645232) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 322616) = 1062882 * k + 161308 := by
    unfold C
    simp [show (2125764 * k + 322616) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 161308) = 531441 * k + 80654 := by
    unfold C
    simp [show (1062882 * k + 161308) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 159135) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 159135)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_159259 : ∀ k : Nat,
    iterate (1048576 * k + 159259) 32 = 531441 * k + 80717 ∧
      531441 * k + 80717 < 1048576 * k + 159259 := by
  intro k
  have h1 : C (1048576 * k + 159259) = 3145728 * k + 477778 := by
    unfold C
    simp [show (1048576 * k + 159259) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 477778) = 1572864 * k + 238889 := by
    unfold C
    simp [show (3145728 * k + 477778) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 238889) = 4718592 * k + 716668 := by
    unfold C
    simp [show (1572864 * k + 238889) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 716668) = 2359296 * k + 358334 := by
    unfold C
    simp [show (4718592 * k + 716668) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 358334) = 1179648 * k + 179167 := by
    unfold C
    simp [show (2359296 * k + 358334) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 179167) = 3538944 * k + 537502 := by
    unfold C
    simp [show (1179648 * k + 179167) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 537502) = 1769472 * k + 268751 := by
    unfold C
    simp [show (3538944 * k + 537502) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 268751) = 5308416 * k + 806254 := by
    unfold C
    simp [show (1769472 * k + 268751) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 806254) = 2654208 * k + 403127 := by
    unfold C
    simp [show (5308416 * k + 806254) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 403127) = 7962624 * k + 1209382 := by
    unfold C
    simp [show (2654208 * k + 403127) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 1209382) = 3981312 * k + 604691 := by
    unfold C
    simp [show (7962624 * k + 1209382) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 604691) = 11943936 * k + 1814074 := by
    unfold C
    simp [show (3981312 * k + 604691) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 1814074) = 5971968 * k + 907037 := by
    unfold C
    simp [show (11943936 * k + 1814074) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 907037) = 17915904 * k + 2721112 := by
    unfold C
    simp [show (5971968 * k + 907037) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 2721112) = 8957952 * k + 1360556 := by
    unfold C
    simp [show (17915904 * k + 2721112) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 1360556) = 4478976 * k + 680278 := by
    unfold C
    simp [show (8957952 * k + 1360556) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 680278) = 2239488 * k + 340139 := by
    unfold C
    simp [show (4478976 * k + 680278) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 340139) = 6718464 * k + 1020418 := by
    unfold C
    simp [show (2239488 * k + 340139) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 1020418) = 3359232 * k + 510209 := by
    unfold C
    simp [show (6718464 * k + 1020418) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 510209) = 10077696 * k + 1530628 := by
    unfold C
    simp [show (3359232 * k + 510209) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 1530628) = 5038848 * k + 765314 := by
    unfold C
    simp [show (10077696 * k + 1530628) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 765314) = 2519424 * k + 382657 := by
    unfold C
    simp [show (5038848 * k + 765314) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 382657) = 7558272 * k + 1147972 := by
    unfold C
    simp [show (2519424 * k + 382657) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 1147972) = 3779136 * k + 573986 := by
    unfold C
    simp [show (7558272 * k + 1147972) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 573986) = 1889568 * k + 286993 := by
    unfold C
    simp [show (3779136 * k + 573986) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 286993) = 5668704 * k + 860980 := by
    unfold C
    simp [show (1889568 * k + 286993) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 860980) = 2834352 * k + 430490 := by
    unfold C
    simp [show (5668704 * k + 860980) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 430490) = 1417176 * k + 215245 := by
    unfold C
    simp [show (2834352 * k + 430490) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 215245) = 4251528 * k + 645736 := by
    unfold C
    simp [show (1417176 * k + 215245) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 645736) = 2125764 * k + 322868 := by
    unfold C
    simp [show (4251528 * k + 645736) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 322868) = 1062882 * k + 161434 := by
    unfold C
    simp [show (2125764 * k + 322868) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 161434) = 531441 * k + 80717 := by
    unfold C
    simp [show (1062882 * k + 161434) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 159259) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 159259)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_160423 : ∀ k : Nat,
    iterate (1048576 * k + 160423) 32 = 531441 * k + 81307 ∧
      531441 * k + 81307 < 1048576 * k + 160423 := by
  intro k
  have h1 : C (1048576 * k + 160423) = 3145728 * k + 481270 := by
    unfold C
    simp [show (1048576 * k + 160423) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 481270) = 1572864 * k + 240635 := by
    unfold C
    simp [show (3145728 * k + 481270) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 240635) = 4718592 * k + 721906 := by
    unfold C
    simp [show (1572864 * k + 240635) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 721906) = 2359296 * k + 360953 := by
    unfold C
    simp [show (4718592 * k + 721906) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 360953) = 7077888 * k + 1082860 := by
    unfold C
    simp [show (2359296 * k + 360953) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 1082860) = 3538944 * k + 541430 := by
    unfold C
    simp [show (7077888 * k + 1082860) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 541430) = 1769472 * k + 270715 := by
    unfold C
    simp [show (3538944 * k + 541430) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 270715) = 5308416 * k + 812146 := by
    unfold C
    simp [show (1769472 * k + 270715) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 812146) = 2654208 * k + 406073 := by
    unfold C
    simp [show (5308416 * k + 812146) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 406073) = 7962624 * k + 1218220 := by
    unfold C
    simp [show (2654208 * k + 406073) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 1218220) = 3981312 * k + 609110 := by
    unfold C
    simp [show (7962624 * k + 1218220) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 609110) = 1990656 * k + 304555 := by
    unfold C
    simp [show (3981312 * k + 609110) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 304555) = 5971968 * k + 913666 := by
    unfold C
    simp [show (1990656 * k + 304555) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 913666) = 2985984 * k + 456833 := by
    unfold C
    simp [show (5971968 * k + 913666) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 456833) = 8957952 * k + 1370500 := by
    unfold C
    simp [show (2985984 * k + 456833) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 1370500) = 4478976 * k + 685250 := by
    unfold C
    simp [show (8957952 * k + 1370500) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 685250) = 2239488 * k + 342625 := by
    unfold C
    simp [show (4478976 * k + 685250) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 342625) = 6718464 * k + 1027876 := by
    unfold C
    simp [show (2239488 * k + 342625) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 1027876) = 3359232 * k + 513938 := by
    unfold C
    simp [show (6718464 * k + 1027876) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 513938) = 1679616 * k + 256969 := by
    unfold C
    simp [show (3359232 * k + 513938) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 256969) = 5038848 * k + 770908 := by
    unfold C
    simp [show (1679616 * k + 256969) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 770908) = 2519424 * k + 385454 := by
    unfold C
    simp [show (5038848 * k + 770908) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 385454) = 1259712 * k + 192727 := by
    unfold C
    simp [show (2519424 * k + 385454) % 2 = 0 by omega]
    omega
  have h24 : C (1259712 * k + 192727) = 3779136 * k + 578182 := by
    unfold C
    simp [show (1259712 * k + 192727) % 2 ≠ 0 by omega]
    omega
  have h25 : C (3779136 * k + 578182) = 1889568 * k + 289091 := by
    unfold C
    simp [show (3779136 * k + 578182) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 289091) = 5668704 * k + 867274 := by
    unfold C
    simp [show (1889568 * k + 289091) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 867274) = 2834352 * k + 433637 := by
    unfold C
    simp [show (5668704 * k + 867274) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 433637) = 8503056 * k + 1300912 := by
    unfold C
    simp [show (2834352 * k + 433637) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 1300912) = 4251528 * k + 650456 := by
    unfold C
    simp [show (8503056 * k + 1300912) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 650456) = 2125764 * k + 325228 := by
    unfold C
    simp [show (4251528 * k + 650456) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 325228) = 1062882 * k + 162614 := by
    unfold C
    simp [show (2125764 * k + 325228) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 162614) = 531441 * k + 81307 := by
    unfold C
    simp [show (1062882 * k + 162614) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 160423) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 160423)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_160583 : ∀ k : Nat,
    iterate (1048576 * k + 160583) 32 = 531441 * k + 81388 ∧
      531441 * k + 81388 < 1048576 * k + 160583 := by
  intro k
  have h1 : C (1048576 * k + 160583) = 3145728 * k + 481750 := by
    unfold C
    simp [show (1048576 * k + 160583) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 481750) = 1572864 * k + 240875 := by
    unfold C
    simp [show (3145728 * k + 481750) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 240875) = 4718592 * k + 722626 := by
    unfold C
    simp [show (1572864 * k + 240875) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 722626) = 2359296 * k + 361313 := by
    unfold C
    simp [show (4718592 * k + 722626) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 361313) = 7077888 * k + 1083940 := by
    unfold C
    simp [show (2359296 * k + 361313) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 1083940) = 3538944 * k + 541970 := by
    unfold C
    simp [show (7077888 * k + 1083940) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 541970) = 1769472 * k + 270985 := by
    unfold C
    simp [show (3538944 * k + 541970) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 270985) = 5308416 * k + 812956 := by
    unfold C
    simp [show (1769472 * k + 270985) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 812956) = 2654208 * k + 406478 := by
    unfold C
    simp [show (5308416 * k + 812956) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 406478) = 1327104 * k + 203239 := by
    unfold C
    simp [show (2654208 * k + 406478) % 2 = 0 by omega]
    omega
  have h11 : C (1327104 * k + 203239) = 3981312 * k + 609718 := by
    unfold C
    simp [show (1327104 * k + 203239) % 2 ≠ 0 by omega]
    omega
  have h12 : C (3981312 * k + 609718) = 1990656 * k + 304859 := by
    unfold C
    simp [show (3981312 * k + 609718) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 304859) = 5971968 * k + 914578 := by
    unfold C
    simp [show (1990656 * k + 304859) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 914578) = 2985984 * k + 457289 := by
    unfold C
    simp [show (5971968 * k + 914578) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 457289) = 8957952 * k + 1371868 := by
    unfold C
    simp [show (2985984 * k + 457289) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 1371868) = 4478976 * k + 685934 := by
    unfold C
    simp [show (8957952 * k + 1371868) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 685934) = 2239488 * k + 342967 := by
    unfold C
    simp [show (4478976 * k + 685934) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 342967) = 6718464 * k + 1028902 := by
    unfold C
    simp [show (2239488 * k + 342967) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 1028902) = 3359232 * k + 514451 := by
    unfold C
    simp [show (6718464 * k + 1028902) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 514451) = 10077696 * k + 1543354 := by
    unfold C
    simp [show (3359232 * k + 514451) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 1543354) = 5038848 * k + 771677 := by
    unfold C
    simp [show (10077696 * k + 1543354) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 771677) = 15116544 * k + 2315032 := by
    unfold C
    simp [show (5038848 * k + 771677) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 2315032) = 7558272 * k + 1157516 := by
    unfold C
    simp [show (15116544 * k + 2315032) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 1157516) = 3779136 * k + 578758 := by
    unfold C
    simp [show (7558272 * k + 1157516) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 578758) = 1889568 * k + 289379 := by
    unfold C
    simp [show (3779136 * k + 578758) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 289379) = 5668704 * k + 868138 := by
    unfold C
    simp [show (1889568 * k + 289379) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 868138) = 2834352 * k + 434069 := by
    unfold C
    simp [show (5668704 * k + 868138) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 434069) = 8503056 * k + 1302208 := by
    unfold C
    simp [show (2834352 * k + 434069) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 1302208) = 4251528 * k + 651104 := by
    unfold C
    simp [show (8503056 * k + 1302208) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 651104) = 2125764 * k + 325552 := by
    unfold C
    simp [show (4251528 * k + 651104) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 325552) = 1062882 * k + 162776 := by
    unfold C
    simp [show (2125764 * k + 325552) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 162776) = 531441 * k + 81388 := by
    unfold C
    simp [show (1062882 * k + 162776) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 160583) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 160583)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_161639 : ∀ k : Nat,
    iterate (1048576 * k + 161639) 32 = 531441 * k + 81923 ∧
      531441 * k + 81923 < 1048576 * k + 161639 := by
  intro k
  have h1 : C (1048576 * k + 161639) = 3145728 * k + 484918 := by
    unfold C
    simp [show (1048576 * k + 161639) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 484918) = 1572864 * k + 242459 := by
    unfold C
    simp [show (3145728 * k + 484918) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 242459) = 4718592 * k + 727378 := by
    unfold C
    simp [show (1572864 * k + 242459) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 727378) = 2359296 * k + 363689 := by
    unfold C
    simp [show (4718592 * k + 727378) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 363689) = 7077888 * k + 1091068 := by
    unfold C
    simp [show (2359296 * k + 363689) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 1091068) = 3538944 * k + 545534 := by
    unfold C
    simp [show (7077888 * k + 1091068) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 545534) = 1769472 * k + 272767 := by
    unfold C
    simp [show (3538944 * k + 545534) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 272767) = 5308416 * k + 818302 := by
    unfold C
    simp [show (1769472 * k + 272767) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 818302) = 2654208 * k + 409151 := by
    unfold C
    simp [show (5308416 * k + 818302) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 409151) = 7962624 * k + 1227454 := by
    unfold C
    simp [show (2654208 * k + 409151) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 1227454) = 3981312 * k + 613727 := by
    unfold C
    simp [show (7962624 * k + 1227454) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 613727) = 11943936 * k + 1841182 := by
    unfold C
    simp [show (3981312 * k + 613727) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 1841182) = 5971968 * k + 920591 := by
    unfold C
    simp [show (11943936 * k + 1841182) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 920591) = 17915904 * k + 2761774 := by
    unfold C
    simp [show (5971968 * k + 920591) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 2761774) = 8957952 * k + 1380887 := by
    unfold C
    simp [show (17915904 * k + 2761774) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 1380887) = 26873856 * k + 4142662 := by
    unfold C
    simp [show (8957952 * k + 1380887) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 4142662) = 13436928 * k + 2071331 := by
    unfold C
    simp [show (26873856 * k + 4142662) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 2071331) = 40310784 * k + 6213994 := by
    unfold C
    simp [show (13436928 * k + 2071331) % 2 ≠ 0 by omega]
    omega
  have h19 : C (40310784 * k + 6213994) = 20155392 * k + 3106997 := by
    unfold C
    simp [show (40310784 * k + 6213994) % 2 = 0 by omega]
    omega
  have h20 : C (20155392 * k + 3106997) = 60466176 * k + 9320992 := by
    unfold C
    simp [show (20155392 * k + 3106997) % 2 ≠ 0 by omega]
    omega
  have h21 : C (60466176 * k + 9320992) = 30233088 * k + 4660496 := by
    unfold C
    simp [show (60466176 * k + 9320992) % 2 = 0 by omega]
    omega
  have h22 : C (30233088 * k + 4660496) = 15116544 * k + 2330248 := by
    unfold C
    simp [show (30233088 * k + 4660496) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 2330248) = 7558272 * k + 1165124 := by
    unfold C
    simp [show (15116544 * k + 2330248) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 1165124) = 3779136 * k + 582562 := by
    unfold C
    simp [show (7558272 * k + 1165124) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 582562) = 1889568 * k + 291281 := by
    unfold C
    simp [show (3779136 * k + 582562) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 291281) = 5668704 * k + 873844 := by
    unfold C
    simp [show (1889568 * k + 291281) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 873844) = 2834352 * k + 436922 := by
    unfold C
    simp [show (5668704 * k + 873844) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 436922) = 1417176 * k + 218461 := by
    unfold C
    simp [show (2834352 * k + 436922) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 218461) = 4251528 * k + 655384 := by
    unfold C
    simp [show (1417176 * k + 218461) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 655384) = 2125764 * k + 327692 := by
    unfold C
    simp [show (4251528 * k + 655384) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 327692) = 1062882 * k + 163846 := by
    unfold C
    simp [show (2125764 * k + 327692) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 163846) = 531441 * k + 81923 := by
    unfold C
    simp [show (1062882 * k + 163846) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 161639) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 161639)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_162663 : ∀ k : Nat,
    iterate (1048576 * k + 162663) 32 = 531441 * k + 82442 ∧
      531441 * k + 82442 < 1048576 * k + 162663 := by
  intro k
  have h1 : C (1048576 * k + 162663) = 3145728 * k + 487990 := by
    unfold C
    simp [show (1048576 * k + 162663) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 487990) = 1572864 * k + 243995 := by
    unfold C
    simp [show (3145728 * k + 487990) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 243995) = 4718592 * k + 731986 := by
    unfold C
    simp [show (1572864 * k + 243995) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 731986) = 2359296 * k + 365993 := by
    unfold C
    simp [show (4718592 * k + 731986) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 365993) = 7077888 * k + 1097980 := by
    unfold C
    simp [show (2359296 * k + 365993) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 1097980) = 3538944 * k + 548990 := by
    unfold C
    simp [show (7077888 * k + 1097980) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 548990) = 1769472 * k + 274495 := by
    unfold C
    simp [show (3538944 * k + 548990) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 274495) = 5308416 * k + 823486 := by
    unfold C
    simp [show (1769472 * k + 274495) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 823486) = 2654208 * k + 411743 := by
    unfold C
    simp [show (5308416 * k + 823486) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 411743) = 7962624 * k + 1235230 := by
    unfold C
    simp [show (2654208 * k + 411743) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 1235230) = 3981312 * k + 617615 := by
    unfold C
    simp [show (7962624 * k + 1235230) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 617615) = 11943936 * k + 1852846 := by
    unfold C
    simp [show (3981312 * k + 617615) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 1852846) = 5971968 * k + 926423 := by
    unfold C
    simp [show (11943936 * k + 1852846) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 926423) = 17915904 * k + 2779270 := by
    unfold C
    simp [show (5971968 * k + 926423) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 2779270) = 8957952 * k + 1389635 := by
    unfold C
    simp [show (17915904 * k + 2779270) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 1389635) = 26873856 * k + 4168906 := by
    unfold C
    simp [show (8957952 * k + 1389635) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 4168906) = 13436928 * k + 2084453 := by
    unfold C
    simp [show (26873856 * k + 4168906) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 2084453) = 40310784 * k + 6253360 := by
    unfold C
    simp [show (13436928 * k + 2084453) % 2 ≠ 0 by omega]
    omega
  have h19 : C (40310784 * k + 6253360) = 20155392 * k + 3126680 := by
    unfold C
    simp [show (40310784 * k + 6253360) % 2 = 0 by omega]
    omega
  have h20 : C (20155392 * k + 3126680) = 10077696 * k + 1563340 := by
    unfold C
    simp [show (20155392 * k + 3126680) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 1563340) = 5038848 * k + 781670 := by
    unfold C
    simp [show (10077696 * k + 1563340) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 781670) = 2519424 * k + 390835 := by
    unfold C
    simp [show (5038848 * k + 781670) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 390835) = 7558272 * k + 1172506 := by
    unfold C
    simp [show (2519424 * k + 390835) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 1172506) = 3779136 * k + 586253 := by
    unfold C
    simp [show (7558272 * k + 1172506) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 586253) = 11337408 * k + 1758760 := by
    unfold C
    simp [show (3779136 * k + 586253) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 1758760) = 5668704 * k + 879380 := by
    unfold C
    simp [show (11337408 * k + 1758760) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 879380) = 2834352 * k + 439690 := by
    unfold C
    simp [show (5668704 * k + 879380) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 439690) = 1417176 * k + 219845 := by
    unfold C
    simp [show (2834352 * k + 439690) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 219845) = 4251528 * k + 659536 := by
    unfold C
    simp [show (1417176 * k + 219845) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 659536) = 2125764 * k + 329768 := by
    unfold C
    simp [show (4251528 * k + 659536) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 329768) = 1062882 * k + 164884 := by
    unfold C
    simp [show (2125764 * k + 329768) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 164884) = 531441 * k + 82442 := by
    unfold C
    simp [show (1062882 * k + 164884) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 162663) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 162663)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_162687 : ∀ k : Nat,
    iterate (1048576 * k + 162687) 32 = 531441 * k + 82454 ∧
      531441 * k + 82454 < 1048576 * k + 162687 := by
  intro k
  have h1 : C (1048576 * k + 162687) = 3145728 * k + 488062 := by
    unfold C
    simp [show (1048576 * k + 162687) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 488062) = 1572864 * k + 244031 := by
    unfold C
    simp [show (3145728 * k + 488062) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 244031) = 4718592 * k + 732094 := by
    unfold C
    simp [show (1572864 * k + 244031) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 732094) = 2359296 * k + 366047 := by
    unfold C
    simp [show (4718592 * k + 732094) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 366047) = 7077888 * k + 1098142 := by
    unfold C
    simp [show (2359296 * k + 366047) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 1098142) = 3538944 * k + 549071 := by
    unfold C
    simp [show (7077888 * k + 1098142) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 549071) = 10616832 * k + 1647214 := by
    unfold C
    simp [show (3538944 * k + 549071) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 1647214) = 5308416 * k + 823607 := by
    unfold C
    simp [show (10616832 * k + 1647214) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 823607) = 15925248 * k + 2470822 := by
    unfold C
    simp [show (5308416 * k + 823607) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 2470822) = 7962624 * k + 1235411 := by
    unfold C
    simp [show (15925248 * k + 2470822) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 1235411) = 23887872 * k + 3706234 := by
    unfold C
    simp [show (7962624 * k + 1235411) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 3706234) = 11943936 * k + 1853117 := by
    unfold C
    simp [show (23887872 * k + 3706234) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 1853117) = 35831808 * k + 5559352 := by
    unfold C
    simp [show (11943936 * k + 1853117) % 2 ≠ 0 by omega]
    omega
  have h14 : C (35831808 * k + 5559352) = 17915904 * k + 2779676 := by
    unfold C
    simp [show (35831808 * k + 5559352) % 2 = 0 by omega]
    omega
  have h15 : C (17915904 * k + 2779676) = 8957952 * k + 1389838 := by
    unfold C
    simp [show (17915904 * k + 2779676) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 1389838) = 4478976 * k + 694919 := by
    unfold C
    simp [show (8957952 * k + 1389838) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 694919) = 13436928 * k + 2084758 := by
    unfold C
    simp [show (4478976 * k + 694919) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 2084758) = 6718464 * k + 1042379 := by
    unfold C
    simp [show (13436928 * k + 2084758) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 1042379) = 20155392 * k + 3127138 := by
    unfold C
    simp [show (6718464 * k + 1042379) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 3127138) = 10077696 * k + 1563569 := by
    unfold C
    simp [show (20155392 * k + 3127138) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 1563569) = 30233088 * k + 4690708 := by
    unfold C
    simp [show (10077696 * k + 1563569) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 4690708) = 15116544 * k + 2345354 := by
    unfold C
    simp [show (30233088 * k + 4690708) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 2345354) = 7558272 * k + 1172677 := by
    unfold C
    simp [show (15116544 * k + 2345354) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 1172677) = 22674816 * k + 3518032 := by
    unfold C
    simp [show (7558272 * k + 1172677) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 3518032) = 11337408 * k + 1759016 := by
    unfold C
    simp [show (22674816 * k + 3518032) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 1759016) = 5668704 * k + 879508 := by
    unfold C
    simp [show (11337408 * k + 1759016) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 879508) = 2834352 * k + 439754 := by
    unfold C
    simp [show (5668704 * k + 879508) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 439754) = 1417176 * k + 219877 := by
    unfold C
    simp [show (2834352 * k + 439754) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 219877) = 4251528 * k + 659632 := by
    unfold C
    simp [show (1417176 * k + 219877) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 659632) = 2125764 * k + 329816 := by
    unfold C
    simp [show (4251528 * k + 659632) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 329816) = 1062882 * k + 164908 := by
    unfold C
    simp [show (2125764 * k + 329816) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 164908) = 531441 * k + 82454 := by
    unfold C
    simp [show (1062882 * k + 164908) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 162687) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 162687)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_163099 : ∀ k : Nat,
    iterate (1048576 * k + 163099) 32 = 531441 * k + 82663 ∧
      531441 * k + 82663 < 1048576 * k + 163099 := by
  intro k
  have h1 : C (1048576 * k + 163099) = 3145728 * k + 489298 := by
    unfold C
    simp [show (1048576 * k + 163099) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 489298) = 1572864 * k + 244649 := by
    unfold C
    simp [show (3145728 * k + 489298) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 244649) = 4718592 * k + 733948 := by
    unfold C
    simp [show (1572864 * k + 244649) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 733948) = 2359296 * k + 366974 := by
    unfold C
    simp [show (4718592 * k + 733948) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 366974) = 1179648 * k + 183487 := by
    unfold C
    simp [show (2359296 * k + 366974) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 183487) = 3538944 * k + 550462 := by
    unfold C
    simp [show (1179648 * k + 183487) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 550462) = 1769472 * k + 275231 := by
    unfold C
    simp [show (3538944 * k + 550462) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 275231) = 5308416 * k + 825694 := by
    unfold C
    simp [show (1769472 * k + 275231) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 825694) = 2654208 * k + 412847 := by
    unfold C
    simp [show (5308416 * k + 825694) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 412847) = 7962624 * k + 1238542 := by
    unfold C
    simp [show (2654208 * k + 412847) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 1238542) = 3981312 * k + 619271 := by
    unfold C
    simp [show (7962624 * k + 1238542) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 619271) = 11943936 * k + 1857814 := by
    unfold C
    simp [show (3981312 * k + 619271) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 1857814) = 5971968 * k + 928907 := by
    unfold C
    simp [show (11943936 * k + 1857814) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 928907) = 17915904 * k + 2786722 := by
    unfold C
    simp [show (5971968 * k + 928907) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 2786722) = 8957952 * k + 1393361 := by
    unfold C
    simp [show (17915904 * k + 2786722) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 1393361) = 26873856 * k + 4180084 := by
    unfold C
    simp [show (8957952 * k + 1393361) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 4180084) = 13436928 * k + 2090042 := by
    unfold C
    simp [show (26873856 * k + 4180084) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 2090042) = 6718464 * k + 1045021 := by
    unfold C
    simp [show (13436928 * k + 2090042) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 1045021) = 20155392 * k + 3135064 := by
    unfold C
    simp [show (6718464 * k + 1045021) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 3135064) = 10077696 * k + 1567532 := by
    unfold C
    simp [show (20155392 * k + 3135064) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 1567532) = 5038848 * k + 783766 := by
    unfold C
    simp [show (10077696 * k + 1567532) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 783766) = 2519424 * k + 391883 := by
    unfold C
    simp [show (5038848 * k + 783766) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 391883) = 7558272 * k + 1175650 := by
    unfold C
    simp [show (2519424 * k + 391883) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 1175650) = 3779136 * k + 587825 := by
    unfold C
    simp [show (7558272 * k + 1175650) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 587825) = 11337408 * k + 1763476 := by
    unfold C
    simp [show (3779136 * k + 587825) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 1763476) = 5668704 * k + 881738 := by
    unfold C
    simp [show (11337408 * k + 1763476) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 881738) = 2834352 * k + 440869 := by
    unfold C
    simp [show (5668704 * k + 881738) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 440869) = 8503056 * k + 1322608 := by
    unfold C
    simp [show (2834352 * k + 440869) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 1322608) = 4251528 * k + 661304 := by
    unfold C
    simp [show (8503056 * k + 1322608) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 661304) = 2125764 * k + 330652 := by
    unfold C
    simp [show (4251528 * k + 661304) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 330652) = 1062882 * k + 165326 := by
    unfold C
    simp [show (2125764 * k + 330652) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 165326) = 531441 * k + 82663 := by
    unfold C
    simp [show (1062882 * k + 165326) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 163099) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 163099)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_163823 : ∀ k : Nat,
    iterate (1048576 * k + 163823) 32 = 531441 * k + 83030 ∧
      531441 * k + 83030 < 1048576 * k + 163823 := by
  intro k
  have h1 : C (1048576 * k + 163823) = 3145728 * k + 491470 := by
    unfold C
    simp [show (1048576 * k + 163823) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 491470) = 1572864 * k + 245735 := by
    unfold C
    simp [show (3145728 * k + 491470) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 245735) = 4718592 * k + 737206 := by
    unfold C
    simp [show (1572864 * k + 245735) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 737206) = 2359296 * k + 368603 := by
    unfold C
    simp [show (4718592 * k + 737206) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 368603) = 7077888 * k + 1105810 := by
    unfold C
    simp [show (2359296 * k + 368603) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 1105810) = 3538944 * k + 552905 := by
    unfold C
    simp [show (7077888 * k + 1105810) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 552905) = 10616832 * k + 1658716 := by
    unfold C
    simp [show (3538944 * k + 552905) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 1658716) = 5308416 * k + 829358 := by
    unfold C
    simp [show (10616832 * k + 1658716) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 829358) = 2654208 * k + 414679 := by
    unfold C
    simp [show (5308416 * k + 829358) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 414679) = 7962624 * k + 1244038 := by
    unfold C
    simp [show (2654208 * k + 414679) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 1244038) = 3981312 * k + 622019 := by
    unfold C
    simp [show (7962624 * k + 1244038) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 622019) = 11943936 * k + 1866058 := by
    unfold C
    simp [show (3981312 * k + 622019) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 1866058) = 5971968 * k + 933029 := by
    unfold C
    simp [show (11943936 * k + 1866058) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 933029) = 17915904 * k + 2799088 := by
    unfold C
    simp [show (5971968 * k + 933029) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 2799088) = 8957952 * k + 1399544 := by
    unfold C
    simp [show (17915904 * k + 2799088) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 1399544) = 4478976 * k + 699772 := by
    unfold C
    simp [show (8957952 * k + 1399544) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 699772) = 2239488 * k + 349886 := by
    unfold C
    simp [show (4478976 * k + 699772) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 349886) = 1119744 * k + 174943 := by
    unfold C
    simp [show (2239488 * k + 349886) % 2 = 0 by omega]
    omega
  have h19 : C (1119744 * k + 174943) = 3359232 * k + 524830 := by
    unfold C
    simp [show (1119744 * k + 174943) % 2 ≠ 0 by omega]
    omega
  have h20 : C (3359232 * k + 524830) = 1679616 * k + 262415 := by
    unfold C
    simp [show (3359232 * k + 524830) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 262415) = 5038848 * k + 787246 := by
    unfold C
    simp [show (1679616 * k + 262415) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 787246) = 2519424 * k + 393623 := by
    unfold C
    simp [show (5038848 * k + 787246) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 393623) = 7558272 * k + 1180870 := by
    unfold C
    simp [show (2519424 * k + 393623) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 1180870) = 3779136 * k + 590435 := by
    unfold C
    simp [show (7558272 * k + 1180870) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 590435) = 11337408 * k + 1771306 := by
    unfold C
    simp [show (3779136 * k + 590435) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 1771306) = 5668704 * k + 885653 := by
    unfold C
    simp [show (11337408 * k + 1771306) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 885653) = 17006112 * k + 2656960 := by
    unfold C
    simp [show (5668704 * k + 885653) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 2656960) = 8503056 * k + 1328480 := by
    unfold C
    simp [show (17006112 * k + 2656960) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 1328480) = 4251528 * k + 664240 := by
    unfold C
    simp [show (8503056 * k + 1328480) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 664240) = 2125764 * k + 332120 := by
    unfold C
    simp [show (4251528 * k + 664240) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 332120) = 1062882 * k + 166060 := by
    unfold C
    simp [show (2125764 * k + 332120) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 166060) = 531441 * k + 83030 := by
    unfold C
    simp [show (1062882 * k + 166060) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 163823) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 163823)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_164591 : ∀ k : Nat,
    iterate (1048576 * k + 164591) 32 = 531441 * k + 83419 ∧
      531441 * k + 83419 < 1048576 * k + 164591 := by
  intro k
  have h1 : C (1048576 * k + 164591) = 3145728 * k + 493774 := by
    unfold C
    simp [show (1048576 * k + 164591) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 493774) = 1572864 * k + 246887 := by
    unfold C
    simp [show (3145728 * k + 493774) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 246887) = 4718592 * k + 740662 := by
    unfold C
    simp [show (1572864 * k + 246887) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 740662) = 2359296 * k + 370331 := by
    unfold C
    simp [show (4718592 * k + 740662) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 370331) = 7077888 * k + 1110994 := by
    unfold C
    simp [show (2359296 * k + 370331) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 1110994) = 3538944 * k + 555497 := by
    unfold C
    simp [show (7077888 * k + 1110994) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 555497) = 10616832 * k + 1666492 := by
    unfold C
    simp [show (3538944 * k + 555497) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 1666492) = 5308416 * k + 833246 := by
    unfold C
    simp [show (10616832 * k + 1666492) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 833246) = 2654208 * k + 416623 := by
    unfold C
    simp [show (5308416 * k + 833246) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 416623) = 7962624 * k + 1249870 := by
    unfold C
    simp [show (2654208 * k + 416623) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 1249870) = 3981312 * k + 624935 := by
    unfold C
    simp [show (7962624 * k + 1249870) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 624935) = 11943936 * k + 1874806 := by
    unfold C
    simp [show (3981312 * k + 624935) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 1874806) = 5971968 * k + 937403 := by
    unfold C
    simp [show (11943936 * k + 1874806) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 937403) = 17915904 * k + 2812210 := by
    unfold C
    simp [show (5971968 * k + 937403) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 2812210) = 8957952 * k + 1406105 := by
    unfold C
    simp [show (17915904 * k + 2812210) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 1406105) = 26873856 * k + 4218316 := by
    unfold C
    simp [show (8957952 * k + 1406105) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 4218316) = 13436928 * k + 2109158 := by
    unfold C
    simp [show (26873856 * k + 4218316) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 2109158) = 6718464 * k + 1054579 := by
    unfold C
    simp [show (13436928 * k + 2109158) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 1054579) = 20155392 * k + 3163738 := by
    unfold C
    simp [show (6718464 * k + 1054579) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 3163738) = 10077696 * k + 1581869 := by
    unfold C
    simp [show (20155392 * k + 3163738) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 1581869) = 30233088 * k + 4745608 := by
    unfold C
    simp [show (10077696 * k + 1581869) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 4745608) = 15116544 * k + 2372804 := by
    unfold C
    simp [show (30233088 * k + 4745608) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 2372804) = 7558272 * k + 1186402 := by
    unfold C
    simp [show (15116544 * k + 2372804) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 1186402) = 3779136 * k + 593201 := by
    unfold C
    simp [show (7558272 * k + 1186402) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 593201) = 11337408 * k + 1779604 := by
    unfold C
    simp [show (3779136 * k + 593201) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 1779604) = 5668704 * k + 889802 := by
    unfold C
    simp [show (11337408 * k + 1779604) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 889802) = 2834352 * k + 444901 := by
    unfold C
    simp [show (5668704 * k + 889802) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 444901) = 8503056 * k + 1334704 := by
    unfold C
    simp [show (2834352 * k + 444901) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 1334704) = 4251528 * k + 667352 := by
    unfold C
    simp [show (8503056 * k + 1334704) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 667352) = 2125764 * k + 333676 := by
    unfold C
    simp [show (4251528 * k + 667352) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 333676) = 1062882 * k + 166838 := by
    unfold C
    simp [show (2125764 * k + 333676) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 166838) = 531441 * k + 83419 := by
    unfold C
    simp [show (1062882 * k + 166838) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 164591) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 164591)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_164847 : ∀ k : Nat,
    iterate (1048576 * k + 164847) 32 = 531441 * k + 83549 ∧
      531441 * k + 83549 < 1048576 * k + 164847 := by
  intro k
  have h1 : C (1048576 * k + 164847) = 3145728 * k + 494542 := by
    unfold C
    simp [show (1048576 * k + 164847) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 494542) = 1572864 * k + 247271 := by
    unfold C
    simp [show (3145728 * k + 494542) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 247271) = 4718592 * k + 741814 := by
    unfold C
    simp [show (1572864 * k + 247271) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 741814) = 2359296 * k + 370907 := by
    unfold C
    simp [show (4718592 * k + 741814) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 370907) = 7077888 * k + 1112722 := by
    unfold C
    simp [show (2359296 * k + 370907) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 1112722) = 3538944 * k + 556361 := by
    unfold C
    simp [show (7077888 * k + 1112722) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 556361) = 10616832 * k + 1669084 := by
    unfold C
    simp [show (3538944 * k + 556361) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 1669084) = 5308416 * k + 834542 := by
    unfold C
    simp [show (10616832 * k + 1669084) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 834542) = 2654208 * k + 417271 := by
    unfold C
    simp [show (5308416 * k + 834542) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 417271) = 7962624 * k + 1251814 := by
    unfold C
    simp [show (2654208 * k + 417271) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 1251814) = 3981312 * k + 625907 := by
    unfold C
    simp [show (7962624 * k + 1251814) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 625907) = 11943936 * k + 1877722 := by
    unfold C
    simp [show (3981312 * k + 625907) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 1877722) = 5971968 * k + 938861 := by
    unfold C
    simp [show (11943936 * k + 1877722) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 938861) = 17915904 * k + 2816584 := by
    unfold C
    simp [show (5971968 * k + 938861) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 2816584) = 8957952 * k + 1408292 := by
    unfold C
    simp [show (17915904 * k + 2816584) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 1408292) = 4478976 * k + 704146 := by
    unfold C
    simp [show (8957952 * k + 1408292) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 704146) = 2239488 * k + 352073 := by
    unfold C
    simp [show (4478976 * k + 704146) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 352073) = 6718464 * k + 1056220 := by
    unfold C
    simp [show (2239488 * k + 352073) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 1056220) = 3359232 * k + 528110 := by
    unfold C
    simp [show (6718464 * k + 1056220) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 528110) = 1679616 * k + 264055 := by
    unfold C
    simp [show (3359232 * k + 528110) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 264055) = 5038848 * k + 792166 := by
    unfold C
    simp [show (1679616 * k + 264055) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 792166) = 2519424 * k + 396083 := by
    unfold C
    simp [show (5038848 * k + 792166) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 396083) = 7558272 * k + 1188250 := by
    unfold C
    simp [show (2519424 * k + 396083) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 1188250) = 3779136 * k + 594125 := by
    unfold C
    simp [show (7558272 * k + 1188250) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 594125) = 11337408 * k + 1782376 := by
    unfold C
    simp [show (3779136 * k + 594125) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 1782376) = 5668704 * k + 891188 := by
    unfold C
    simp [show (11337408 * k + 1782376) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 891188) = 2834352 * k + 445594 := by
    unfold C
    simp [show (5668704 * k + 891188) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 445594) = 1417176 * k + 222797 := by
    unfold C
    simp [show (2834352 * k + 445594) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 222797) = 4251528 * k + 668392 := by
    unfold C
    simp [show (1417176 * k + 222797) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 668392) = 2125764 * k + 334196 := by
    unfold C
    simp [show (4251528 * k + 668392) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 334196) = 1062882 * k + 167098 := by
    unfold C
    simp [show (2125764 * k + 334196) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 167098) = 531441 * k + 83549 := by
    unfold C
    simp [show (1062882 * k + 167098) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 164847) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 164847)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_164895 : ∀ k : Nat,
    iterate (1048576 * k + 164895) 32 = 531441 * k + 83573 ∧
      531441 * k + 83573 < 1048576 * k + 164895 := by
  intro k
  have h1 : C (1048576 * k + 164895) = 3145728 * k + 494686 := by
    unfold C
    simp [show (1048576 * k + 164895) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 494686) = 1572864 * k + 247343 := by
    unfold C
    simp [show (3145728 * k + 494686) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 247343) = 4718592 * k + 742030 := by
    unfold C
    simp [show (1572864 * k + 247343) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 742030) = 2359296 * k + 371015 := by
    unfold C
    simp [show (4718592 * k + 742030) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 371015) = 7077888 * k + 1113046 := by
    unfold C
    simp [show (2359296 * k + 371015) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 1113046) = 3538944 * k + 556523 := by
    unfold C
    simp [show (7077888 * k + 1113046) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 556523) = 10616832 * k + 1669570 := by
    unfold C
    simp [show (3538944 * k + 556523) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 1669570) = 5308416 * k + 834785 := by
    unfold C
    simp [show (10616832 * k + 1669570) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 834785) = 15925248 * k + 2504356 := by
    unfold C
    simp [show (5308416 * k + 834785) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 2504356) = 7962624 * k + 1252178 := by
    unfold C
    simp [show (15925248 * k + 2504356) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 1252178) = 3981312 * k + 626089 := by
    unfold C
    simp [show (7962624 * k + 1252178) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 626089) = 11943936 * k + 1878268 := by
    unfold C
    simp [show (3981312 * k + 626089) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 1878268) = 5971968 * k + 939134 := by
    unfold C
    simp [show (11943936 * k + 1878268) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 939134) = 2985984 * k + 469567 := by
    unfold C
    simp [show (5971968 * k + 939134) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 469567) = 8957952 * k + 1408702 := by
    unfold C
    simp [show (2985984 * k + 469567) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 1408702) = 4478976 * k + 704351 := by
    unfold C
    simp [show (8957952 * k + 1408702) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 704351) = 13436928 * k + 2113054 := by
    unfold C
    simp [show (4478976 * k + 704351) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 2113054) = 6718464 * k + 1056527 := by
    unfold C
    simp [show (13436928 * k + 2113054) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 1056527) = 20155392 * k + 3169582 := by
    unfold C
    simp [show (6718464 * k + 1056527) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 3169582) = 10077696 * k + 1584791 := by
    unfold C
    simp [show (20155392 * k + 3169582) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 1584791) = 30233088 * k + 4754374 := by
    unfold C
    simp [show (10077696 * k + 1584791) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 4754374) = 15116544 * k + 2377187 := by
    unfold C
    simp [show (30233088 * k + 4754374) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 2377187) = 45349632 * k + 7131562 := by
    unfold C
    simp [show (15116544 * k + 2377187) % 2 ≠ 0 by omega]
    omega
  have h24 : C (45349632 * k + 7131562) = 22674816 * k + 3565781 := by
    unfold C
    simp [show (45349632 * k + 7131562) % 2 = 0 by omega]
    omega
  have h25 : C (22674816 * k + 3565781) = 68024448 * k + 10697344 := by
    unfold C
    simp [show (22674816 * k + 3565781) % 2 ≠ 0 by omega]
    omega
  have h26 : C (68024448 * k + 10697344) = 34012224 * k + 5348672 := by
    unfold C
    simp [show (68024448 * k + 10697344) % 2 = 0 by omega]
    omega
  have h27 : C (34012224 * k + 5348672) = 17006112 * k + 2674336 := by
    unfold C
    simp [show (34012224 * k + 5348672) % 2 = 0 by omega]
    omega
  have h28 : C (17006112 * k + 2674336) = 8503056 * k + 1337168 := by
    unfold C
    simp [show (17006112 * k + 2674336) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 1337168) = 4251528 * k + 668584 := by
    unfold C
    simp [show (8503056 * k + 1337168) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 668584) = 2125764 * k + 334292 := by
    unfold C
    simp [show (4251528 * k + 668584) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 334292) = 1062882 * k + 167146 := by
    unfold C
    simp [show (2125764 * k + 334292) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 167146) = 531441 * k + 83573 := by
    unfold C
    simp [show (1062882 * k + 167146) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 164895) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 164895)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_165023 : ∀ k : Nat,
    iterate (1048576 * k + 165023) 32 = 531441 * k + 83638 ∧
      531441 * k + 83638 < 1048576 * k + 165023 := by
  intro k
  have h1 : C (1048576 * k + 165023) = 3145728 * k + 495070 := by
    unfold C
    simp [show (1048576 * k + 165023) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 495070) = 1572864 * k + 247535 := by
    unfold C
    simp [show (3145728 * k + 495070) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 247535) = 4718592 * k + 742606 := by
    unfold C
    simp [show (1572864 * k + 247535) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 742606) = 2359296 * k + 371303 := by
    unfold C
    simp [show (4718592 * k + 742606) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 371303) = 7077888 * k + 1113910 := by
    unfold C
    simp [show (2359296 * k + 371303) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 1113910) = 3538944 * k + 556955 := by
    unfold C
    simp [show (7077888 * k + 1113910) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 556955) = 10616832 * k + 1670866 := by
    unfold C
    simp [show (3538944 * k + 556955) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 1670866) = 5308416 * k + 835433 := by
    unfold C
    simp [show (10616832 * k + 1670866) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 835433) = 15925248 * k + 2506300 := by
    unfold C
    simp [show (5308416 * k + 835433) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 2506300) = 7962624 * k + 1253150 := by
    unfold C
    simp [show (15925248 * k + 2506300) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 1253150) = 3981312 * k + 626575 := by
    unfold C
    simp [show (7962624 * k + 1253150) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 626575) = 11943936 * k + 1879726 := by
    unfold C
    simp [show (3981312 * k + 626575) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 1879726) = 5971968 * k + 939863 := by
    unfold C
    simp [show (11943936 * k + 1879726) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 939863) = 17915904 * k + 2819590 := by
    unfold C
    simp [show (5971968 * k + 939863) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 2819590) = 8957952 * k + 1409795 := by
    unfold C
    simp [show (17915904 * k + 2819590) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 1409795) = 26873856 * k + 4229386 := by
    unfold C
    simp [show (8957952 * k + 1409795) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 4229386) = 13436928 * k + 2114693 := by
    unfold C
    simp [show (26873856 * k + 4229386) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 2114693) = 40310784 * k + 6344080 := by
    unfold C
    simp [show (13436928 * k + 2114693) % 2 ≠ 0 by omega]
    omega
  have h19 : C (40310784 * k + 6344080) = 20155392 * k + 3172040 := by
    unfold C
    simp [show (40310784 * k + 6344080) % 2 = 0 by omega]
    omega
  have h20 : C (20155392 * k + 3172040) = 10077696 * k + 1586020 := by
    unfold C
    simp [show (20155392 * k + 3172040) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 1586020) = 5038848 * k + 793010 := by
    unfold C
    simp [show (10077696 * k + 1586020) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 793010) = 2519424 * k + 396505 := by
    unfold C
    simp [show (5038848 * k + 793010) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 396505) = 7558272 * k + 1189516 := by
    unfold C
    simp [show (2519424 * k + 396505) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 1189516) = 3779136 * k + 594758 := by
    unfold C
    simp [show (7558272 * k + 1189516) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 594758) = 1889568 * k + 297379 := by
    unfold C
    simp [show (3779136 * k + 594758) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 297379) = 5668704 * k + 892138 := by
    unfold C
    simp [show (1889568 * k + 297379) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 892138) = 2834352 * k + 446069 := by
    unfold C
    simp [show (5668704 * k + 892138) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 446069) = 8503056 * k + 1338208 := by
    unfold C
    simp [show (2834352 * k + 446069) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 1338208) = 4251528 * k + 669104 := by
    unfold C
    simp [show (8503056 * k + 1338208) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 669104) = 2125764 * k + 334552 := by
    unfold C
    simp [show (4251528 * k + 669104) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 334552) = 1062882 * k + 167276 := by
    unfold C
    simp [show (2125764 * k + 334552) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 167276) = 531441 * k + 83638 := by
    unfold C
    simp [show (1062882 * k + 167276) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 165023) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 165023)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_165759 : ∀ k : Nat,
    iterate (1048576 * k + 165759) 32 = 531441 * k + 84011 ∧
      531441 * k + 84011 < 1048576 * k + 165759 := by
  intro k
  have h1 : C (1048576 * k + 165759) = 3145728 * k + 497278 := by
    unfold C
    simp [show (1048576 * k + 165759) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 497278) = 1572864 * k + 248639 := by
    unfold C
    simp [show (3145728 * k + 497278) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 248639) = 4718592 * k + 745918 := by
    unfold C
    simp [show (1572864 * k + 248639) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 745918) = 2359296 * k + 372959 := by
    unfold C
    simp [show (4718592 * k + 745918) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 372959) = 7077888 * k + 1118878 := by
    unfold C
    simp [show (2359296 * k + 372959) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 1118878) = 3538944 * k + 559439 := by
    unfold C
    simp [show (7077888 * k + 1118878) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 559439) = 10616832 * k + 1678318 := by
    unfold C
    simp [show (3538944 * k + 559439) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 1678318) = 5308416 * k + 839159 := by
    unfold C
    simp [show (10616832 * k + 1678318) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 839159) = 15925248 * k + 2517478 := by
    unfold C
    simp [show (5308416 * k + 839159) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 2517478) = 7962624 * k + 1258739 := by
    unfold C
    simp [show (15925248 * k + 2517478) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 1258739) = 23887872 * k + 3776218 := by
    unfold C
    simp [show (7962624 * k + 1258739) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 3776218) = 11943936 * k + 1888109 := by
    unfold C
    simp [show (23887872 * k + 3776218) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 1888109) = 35831808 * k + 5664328 := by
    unfold C
    simp [show (11943936 * k + 1888109) % 2 ≠ 0 by omega]
    omega
  have h14 : C (35831808 * k + 5664328) = 17915904 * k + 2832164 := by
    unfold C
    simp [show (35831808 * k + 5664328) % 2 = 0 by omega]
    omega
  have h15 : C (17915904 * k + 2832164) = 8957952 * k + 1416082 := by
    unfold C
    simp [show (17915904 * k + 2832164) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 1416082) = 4478976 * k + 708041 := by
    unfold C
    simp [show (8957952 * k + 1416082) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 708041) = 13436928 * k + 2124124 := by
    unfold C
    simp [show (4478976 * k + 708041) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 2124124) = 6718464 * k + 1062062 := by
    unfold C
    simp [show (13436928 * k + 2124124) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 1062062) = 3359232 * k + 531031 := by
    unfold C
    simp [show (6718464 * k + 1062062) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 531031) = 10077696 * k + 1593094 := by
    unfold C
    simp [show (3359232 * k + 531031) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 1593094) = 5038848 * k + 796547 := by
    unfold C
    simp [show (10077696 * k + 1593094) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 796547) = 15116544 * k + 2389642 := by
    unfold C
    simp [show (5038848 * k + 796547) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 2389642) = 7558272 * k + 1194821 := by
    unfold C
    simp [show (15116544 * k + 2389642) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 1194821) = 22674816 * k + 3584464 := by
    unfold C
    simp [show (7558272 * k + 1194821) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 3584464) = 11337408 * k + 1792232 := by
    unfold C
    simp [show (22674816 * k + 3584464) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 1792232) = 5668704 * k + 896116 := by
    unfold C
    simp [show (11337408 * k + 1792232) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 896116) = 2834352 * k + 448058 := by
    unfold C
    simp [show (5668704 * k + 896116) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 448058) = 1417176 * k + 224029 := by
    unfold C
    simp [show (2834352 * k + 448058) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 224029) = 4251528 * k + 672088 := by
    unfold C
    simp [show (1417176 * k + 224029) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 672088) = 2125764 * k + 336044 := by
    unfold C
    simp [show (4251528 * k + 672088) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 336044) = 1062882 * k + 168022 := by
    unfold C
    simp [show (2125764 * k + 336044) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 168022) = 531441 * k + 84011 := by
    unfold C
    simp [show (1062882 * k + 168022) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 165759) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 165759)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_166727 : ∀ k : Nat,
    iterate (1048576 * k + 166727) 32 = 531441 * k + 84502 ∧
      531441 * k + 84502 < 1048576 * k + 166727 := by
  intro k
  have h1 : C (1048576 * k + 166727) = 3145728 * k + 500182 := by
    unfold C
    simp [show (1048576 * k + 166727) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 500182) = 1572864 * k + 250091 := by
    unfold C
    simp [show (3145728 * k + 500182) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 250091) = 4718592 * k + 750274 := by
    unfold C
    simp [show (1572864 * k + 250091) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 750274) = 2359296 * k + 375137 := by
    unfold C
    simp [show (4718592 * k + 750274) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 375137) = 7077888 * k + 1125412 := by
    unfold C
    simp [show (2359296 * k + 375137) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 1125412) = 3538944 * k + 562706 := by
    unfold C
    simp [show (7077888 * k + 1125412) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 562706) = 1769472 * k + 281353 := by
    unfold C
    simp [show (3538944 * k + 562706) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 281353) = 5308416 * k + 844060 := by
    unfold C
    simp [show (1769472 * k + 281353) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 844060) = 2654208 * k + 422030 := by
    unfold C
    simp [show (5308416 * k + 844060) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 422030) = 1327104 * k + 211015 := by
    unfold C
    simp [show (2654208 * k + 422030) % 2 = 0 by omega]
    omega
  have h11 : C (1327104 * k + 211015) = 3981312 * k + 633046 := by
    unfold C
    simp [show (1327104 * k + 211015) % 2 ≠ 0 by omega]
    omega
  have h12 : C (3981312 * k + 633046) = 1990656 * k + 316523 := by
    unfold C
    simp [show (3981312 * k + 633046) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 316523) = 5971968 * k + 949570 := by
    unfold C
    simp [show (1990656 * k + 316523) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 949570) = 2985984 * k + 474785 := by
    unfold C
    simp [show (5971968 * k + 949570) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 474785) = 8957952 * k + 1424356 := by
    unfold C
    simp [show (2985984 * k + 474785) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 1424356) = 4478976 * k + 712178 := by
    unfold C
    simp [show (8957952 * k + 1424356) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 712178) = 2239488 * k + 356089 := by
    unfold C
    simp [show (4478976 * k + 712178) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 356089) = 6718464 * k + 1068268 := by
    unfold C
    simp [show (2239488 * k + 356089) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 1068268) = 3359232 * k + 534134 := by
    unfold C
    simp [show (6718464 * k + 1068268) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 534134) = 1679616 * k + 267067 := by
    unfold C
    simp [show (3359232 * k + 534134) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 267067) = 5038848 * k + 801202 := by
    unfold C
    simp [show (1679616 * k + 267067) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 801202) = 2519424 * k + 400601 := by
    unfold C
    simp [show (5038848 * k + 801202) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 400601) = 7558272 * k + 1201804 := by
    unfold C
    simp [show (2519424 * k + 400601) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 1201804) = 3779136 * k + 600902 := by
    unfold C
    simp [show (7558272 * k + 1201804) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 600902) = 1889568 * k + 300451 := by
    unfold C
    simp [show (3779136 * k + 600902) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 300451) = 5668704 * k + 901354 := by
    unfold C
    simp [show (1889568 * k + 300451) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 901354) = 2834352 * k + 450677 := by
    unfold C
    simp [show (5668704 * k + 901354) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 450677) = 8503056 * k + 1352032 := by
    unfold C
    simp [show (2834352 * k + 450677) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 1352032) = 4251528 * k + 676016 := by
    unfold C
    simp [show (8503056 * k + 1352032) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 676016) = 2125764 * k + 338008 := by
    unfold C
    simp [show (4251528 * k + 676016) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 338008) = 1062882 * k + 169004 := by
    unfold C
    simp [show (2125764 * k + 338008) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 169004) = 531441 * k + 84502 := by
    unfold C
    simp [show (1062882 * k + 169004) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 166727) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 166727)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_167551 : ∀ k : Nat,
    iterate (1048576 * k + 167551) 32 = 531441 * k + 84919 ∧
      531441 * k + 84919 < 1048576 * k + 167551 := by
  intro k
  have h1 : C (1048576 * k + 167551) = 3145728 * k + 502654 := by
    unfold C
    simp [show (1048576 * k + 167551) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 502654) = 1572864 * k + 251327 := by
    unfold C
    simp [show (3145728 * k + 502654) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 251327) = 4718592 * k + 753982 := by
    unfold C
    simp [show (1572864 * k + 251327) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 753982) = 2359296 * k + 376991 := by
    unfold C
    simp [show (4718592 * k + 753982) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 376991) = 7077888 * k + 1130974 := by
    unfold C
    simp [show (2359296 * k + 376991) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 1130974) = 3538944 * k + 565487 := by
    unfold C
    simp [show (7077888 * k + 1130974) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 565487) = 10616832 * k + 1696462 := by
    unfold C
    simp [show (3538944 * k + 565487) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 1696462) = 5308416 * k + 848231 := by
    unfold C
    simp [show (10616832 * k + 1696462) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 848231) = 15925248 * k + 2544694 := by
    unfold C
    simp [show (5308416 * k + 848231) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 2544694) = 7962624 * k + 1272347 := by
    unfold C
    simp [show (15925248 * k + 2544694) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 1272347) = 23887872 * k + 3817042 := by
    unfold C
    simp [show (7962624 * k + 1272347) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 3817042) = 11943936 * k + 1908521 := by
    unfold C
    simp [show (23887872 * k + 3817042) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 1908521) = 35831808 * k + 5725564 := by
    unfold C
    simp [show (11943936 * k + 1908521) % 2 ≠ 0 by omega]
    omega
  have h14 : C (35831808 * k + 5725564) = 17915904 * k + 2862782 := by
    unfold C
    simp [show (35831808 * k + 5725564) % 2 = 0 by omega]
    omega
  have h15 : C (17915904 * k + 2862782) = 8957952 * k + 1431391 := by
    unfold C
    simp [show (17915904 * k + 2862782) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 1431391) = 26873856 * k + 4294174 := by
    unfold C
    simp [show (8957952 * k + 1431391) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 4294174) = 13436928 * k + 2147087 := by
    unfold C
    simp [show (26873856 * k + 4294174) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 2147087) = 40310784 * k + 6441262 := by
    unfold C
    simp [show (13436928 * k + 2147087) % 2 ≠ 0 by omega]
    omega
  have h19 : C (40310784 * k + 6441262) = 20155392 * k + 3220631 := by
    unfold C
    simp [show (40310784 * k + 6441262) % 2 = 0 by omega]
    omega
  have h20 : C (20155392 * k + 3220631) = 60466176 * k + 9661894 := by
    unfold C
    simp [show (20155392 * k + 3220631) % 2 ≠ 0 by omega]
    omega
  have h21 : C (60466176 * k + 9661894) = 30233088 * k + 4830947 := by
    unfold C
    simp [show (60466176 * k + 9661894) % 2 = 0 by omega]
    omega
  have h22 : C (30233088 * k + 4830947) = 90699264 * k + 14492842 := by
    unfold C
    simp [show (30233088 * k + 4830947) % 2 ≠ 0 by omega]
    omega
  have h23 : C (90699264 * k + 14492842) = 45349632 * k + 7246421 := by
    unfold C
    simp [show (90699264 * k + 14492842) % 2 = 0 by omega]
    omega
  have h24 : C (45349632 * k + 7246421) = 136048896 * k + 21739264 := by
    unfold C
    simp [show (45349632 * k + 7246421) % 2 ≠ 0 by omega]
    omega
  have h25 : C (136048896 * k + 21739264) = 68024448 * k + 10869632 := by
    unfold C
    simp [show (136048896 * k + 21739264) % 2 = 0 by omega]
    omega
  have h26 : C (68024448 * k + 10869632) = 34012224 * k + 5434816 := by
    unfold C
    simp [show (68024448 * k + 10869632) % 2 = 0 by omega]
    omega
  have h27 : C (34012224 * k + 5434816) = 17006112 * k + 2717408 := by
    unfold C
    simp [show (34012224 * k + 5434816) % 2 = 0 by omega]
    omega
  have h28 : C (17006112 * k + 2717408) = 8503056 * k + 1358704 := by
    unfold C
    simp [show (17006112 * k + 2717408) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 1358704) = 4251528 * k + 679352 := by
    unfold C
    simp [show (8503056 * k + 1358704) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 679352) = 2125764 * k + 339676 := by
    unfold C
    simp [show (4251528 * k + 679352) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 339676) = 1062882 * k + 169838 := by
    unfold C
    simp [show (2125764 * k + 339676) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 169838) = 531441 * k + 84919 := by
    unfold C
    simp [show (1062882 * k + 169838) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 167551) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 167551)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

end CollatzM20Shard022
