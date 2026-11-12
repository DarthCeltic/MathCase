import Mathlib.Data.Nat.Prime.Basic

namespace CollatzM20Shard047

def C (n : Nat) : Nat := if n % 2 = 0 then n / 2 else 3 * n + 1

def iterate (n t : Nat) : Nat := Nat.rec n (fun _ previous => C previous) t

theorem descent_mod1048576_365223 : ∀ k : Nat,
    iterate (1048576 * k + 365223) 32 = 531441 * k + 185104 ∧
      531441 * k + 185104 < 1048576 * k + 365223 := by
  intro k
  have h1 : C (1048576 * k + 365223) = 3145728 * k + 1095670 := by
    unfold C
    simp [show (1048576 * k + 365223) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1095670) = 1572864 * k + 547835 := by
    unfold C
    simp [show (3145728 * k + 1095670) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 547835) = 4718592 * k + 1643506 := by
    unfold C
    simp [show (1572864 * k + 547835) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1643506) = 2359296 * k + 821753 := by
    unfold C
    simp [show (4718592 * k + 1643506) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 821753) = 7077888 * k + 2465260 := by
    unfold C
    simp [show (2359296 * k + 821753) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 2465260) = 3538944 * k + 1232630 := by
    unfold C
    simp [show (7077888 * k + 2465260) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1232630) = 1769472 * k + 616315 := by
    unfold C
    simp [show (3538944 * k + 1232630) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 616315) = 5308416 * k + 1848946 := by
    unfold C
    simp [show (1769472 * k + 616315) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 1848946) = 2654208 * k + 924473 := by
    unfold C
    simp [show (5308416 * k + 1848946) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 924473) = 7962624 * k + 2773420 := by
    unfold C
    simp [show (2654208 * k + 924473) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 2773420) = 3981312 * k + 1386710 := by
    unfold C
    simp [show (7962624 * k + 2773420) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 1386710) = 1990656 * k + 693355 := by
    unfold C
    simp [show (3981312 * k + 1386710) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 693355) = 5971968 * k + 2080066 := by
    unfold C
    simp [show (1990656 * k + 693355) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 2080066) = 2985984 * k + 1040033 := by
    unfold C
    simp [show (5971968 * k + 2080066) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1040033) = 8957952 * k + 3120100 := by
    unfold C
    simp [show (2985984 * k + 1040033) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 3120100) = 4478976 * k + 1560050 := by
    unfold C
    simp [show (8957952 * k + 3120100) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 1560050) = 2239488 * k + 780025 := by
    unfold C
    simp [show (4478976 * k + 1560050) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 780025) = 6718464 * k + 2340076 := by
    unfold C
    simp [show (2239488 * k + 780025) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 2340076) = 3359232 * k + 1170038 := by
    unfold C
    simp [show (6718464 * k + 2340076) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 1170038) = 1679616 * k + 585019 := by
    unfold C
    simp [show (3359232 * k + 1170038) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 585019) = 5038848 * k + 1755058 := by
    unfold C
    simp [show (1679616 * k + 585019) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 1755058) = 2519424 * k + 877529 := by
    unfold C
    simp [show (5038848 * k + 1755058) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 877529) = 7558272 * k + 2632588 := by
    unfold C
    simp [show (2519424 * k + 877529) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 2632588) = 3779136 * k + 1316294 := by
    unfold C
    simp [show (7558272 * k + 2632588) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 1316294) = 1889568 * k + 658147 := by
    unfold C
    simp [show (3779136 * k + 1316294) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 658147) = 5668704 * k + 1974442 := by
    unfold C
    simp [show (1889568 * k + 658147) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 1974442) = 2834352 * k + 987221 := by
    unfold C
    simp [show (5668704 * k + 1974442) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 987221) = 8503056 * k + 2961664 := by
    unfold C
    simp [show (2834352 * k + 987221) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 2961664) = 4251528 * k + 1480832 := by
    unfold C
    simp [show (8503056 * k + 2961664) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 1480832) = 2125764 * k + 740416 := by
    unfold C
    simp [show (4251528 * k + 1480832) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 740416) = 1062882 * k + 370208 := by
    unfold C
    simp [show (2125764 * k + 740416) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 370208) = 531441 * k + 185104 := by
    unfold C
    simp [show (1062882 * k + 370208) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 365223) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 365223)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_365383 : ∀ k : Nat,
    iterate (1048576 * k + 365383) 32 = 531441 * k + 185185 ∧
      531441 * k + 185185 < 1048576 * k + 365383 := by
  intro k
  have h1 : C (1048576 * k + 365383) = 3145728 * k + 1096150 := by
    unfold C
    simp [show (1048576 * k + 365383) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1096150) = 1572864 * k + 548075 := by
    unfold C
    simp [show (3145728 * k + 1096150) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 548075) = 4718592 * k + 1644226 := by
    unfold C
    simp [show (1572864 * k + 548075) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1644226) = 2359296 * k + 822113 := by
    unfold C
    simp [show (4718592 * k + 1644226) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 822113) = 7077888 * k + 2466340 := by
    unfold C
    simp [show (2359296 * k + 822113) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 2466340) = 3538944 * k + 1233170 := by
    unfold C
    simp [show (7077888 * k + 2466340) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1233170) = 1769472 * k + 616585 := by
    unfold C
    simp [show (3538944 * k + 1233170) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 616585) = 5308416 * k + 1849756 := by
    unfold C
    simp [show (1769472 * k + 616585) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 1849756) = 2654208 * k + 924878 := by
    unfold C
    simp [show (5308416 * k + 1849756) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 924878) = 1327104 * k + 462439 := by
    unfold C
    simp [show (2654208 * k + 924878) % 2 = 0 by omega]
    omega
  have h11 : C (1327104 * k + 462439) = 3981312 * k + 1387318 := by
    unfold C
    simp [show (1327104 * k + 462439) % 2 ≠ 0 by omega]
    omega
  have h12 : C (3981312 * k + 1387318) = 1990656 * k + 693659 := by
    unfold C
    simp [show (3981312 * k + 1387318) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 693659) = 5971968 * k + 2080978 := by
    unfold C
    simp [show (1990656 * k + 693659) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 2080978) = 2985984 * k + 1040489 := by
    unfold C
    simp [show (5971968 * k + 2080978) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1040489) = 8957952 * k + 3121468 := by
    unfold C
    simp [show (2985984 * k + 1040489) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 3121468) = 4478976 * k + 1560734 := by
    unfold C
    simp [show (8957952 * k + 3121468) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 1560734) = 2239488 * k + 780367 := by
    unfold C
    simp [show (4478976 * k + 1560734) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 780367) = 6718464 * k + 2341102 := by
    unfold C
    simp [show (2239488 * k + 780367) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 2341102) = 3359232 * k + 1170551 := by
    unfold C
    simp [show (6718464 * k + 2341102) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 1170551) = 10077696 * k + 3511654 := by
    unfold C
    simp [show (3359232 * k + 1170551) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 3511654) = 5038848 * k + 1755827 := by
    unfold C
    simp [show (10077696 * k + 3511654) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 1755827) = 15116544 * k + 5267482 := by
    unfold C
    simp [show (5038848 * k + 1755827) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 5267482) = 7558272 * k + 2633741 := by
    unfold C
    simp [show (15116544 * k + 5267482) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 2633741) = 22674816 * k + 7901224 := by
    unfold C
    simp [show (7558272 * k + 2633741) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 7901224) = 11337408 * k + 3950612 := by
    unfold C
    simp [show (22674816 * k + 7901224) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 3950612) = 5668704 * k + 1975306 := by
    unfold C
    simp [show (11337408 * k + 3950612) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 1975306) = 2834352 * k + 987653 := by
    unfold C
    simp [show (5668704 * k + 1975306) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 987653) = 8503056 * k + 2962960 := by
    unfold C
    simp [show (2834352 * k + 987653) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 2962960) = 4251528 * k + 1481480 := by
    unfold C
    simp [show (8503056 * k + 2962960) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 1481480) = 2125764 * k + 740740 := by
    unfold C
    simp [show (4251528 * k + 1481480) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 740740) = 1062882 * k + 370370 := by
    unfold C
    simp [show (2125764 * k + 740740) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 370370) = 531441 * k + 185185 := by
    unfold C
    simp [show (1062882 * k + 370370) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 365383) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 365383)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_365791 : ∀ k : Nat,
    iterate (1048576 * k + 365791) 32 = 531441 * k + 185392 ∧
      531441 * k + 185392 < 1048576 * k + 365791 := by
  intro k
  have h1 : C (1048576 * k + 365791) = 3145728 * k + 1097374 := by
    unfold C
    simp [show (1048576 * k + 365791) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1097374) = 1572864 * k + 548687 := by
    unfold C
    simp [show (3145728 * k + 1097374) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 548687) = 4718592 * k + 1646062 := by
    unfold C
    simp [show (1572864 * k + 548687) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1646062) = 2359296 * k + 823031 := by
    unfold C
    simp [show (4718592 * k + 1646062) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 823031) = 7077888 * k + 2469094 := by
    unfold C
    simp [show (2359296 * k + 823031) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 2469094) = 3538944 * k + 1234547 := by
    unfold C
    simp [show (7077888 * k + 2469094) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1234547) = 10616832 * k + 3703642 := by
    unfold C
    simp [show (3538944 * k + 1234547) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 3703642) = 5308416 * k + 1851821 := by
    unfold C
    simp [show (10616832 * k + 3703642) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 1851821) = 15925248 * k + 5555464 := by
    unfold C
    simp [show (5308416 * k + 1851821) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 5555464) = 7962624 * k + 2777732 := by
    unfold C
    simp [show (15925248 * k + 5555464) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 2777732) = 3981312 * k + 1388866 := by
    unfold C
    simp [show (7962624 * k + 2777732) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 1388866) = 1990656 * k + 694433 := by
    unfold C
    simp [show (3981312 * k + 1388866) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 694433) = 5971968 * k + 2083300 := by
    unfold C
    simp [show (1990656 * k + 694433) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 2083300) = 2985984 * k + 1041650 := by
    unfold C
    simp [show (5971968 * k + 2083300) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1041650) = 1492992 * k + 520825 := by
    unfold C
    simp [show (2985984 * k + 1041650) % 2 = 0 by omega]
    omega
  have h16 : C (1492992 * k + 520825) = 4478976 * k + 1562476 := by
    unfold C
    simp [show (1492992 * k + 520825) % 2 ≠ 0 by omega]
    omega
  have h17 : C (4478976 * k + 1562476) = 2239488 * k + 781238 := by
    unfold C
    simp [show (4478976 * k + 1562476) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 781238) = 1119744 * k + 390619 := by
    unfold C
    simp [show (2239488 * k + 781238) % 2 = 0 by omega]
    omega
  have h19 : C (1119744 * k + 390619) = 3359232 * k + 1171858 := by
    unfold C
    simp [show (1119744 * k + 390619) % 2 ≠ 0 by omega]
    omega
  have h20 : C (3359232 * k + 1171858) = 1679616 * k + 585929 := by
    unfold C
    simp [show (3359232 * k + 1171858) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 585929) = 5038848 * k + 1757788 := by
    unfold C
    simp [show (1679616 * k + 585929) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 1757788) = 2519424 * k + 878894 := by
    unfold C
    simp [show (5038848 * k + 1757788) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 878894) = 1259712 * k + 439447 := by
    unfold C
    simp [show (2519424 * k + 878894) % 2 = 0 by omega]
    omega
  have h24 : C (1259712 * k + 439447) = 3779136 * k + 1318342 := by
    unfold C
    simp [show (1259712 * k + 439447) % 2 ≠ 0 by omega]
    omega
  have h25 : C (3779136 * k + 1318342) = 1889568 * k + 659171 := by
    unfold C
    simp [show (3779136 * k + 1318342) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 659171) = 5668704 * k + 1977514 := by
    unfold C
    simp [show (1889568 * k + 659171) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 1977514) = 2834352 * k + 988757 := by
    unfold C
    simp [show (5668704 * k + 1977514) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 988757) = 8503056 * k + 2966272 := by
    unfold C
    simp [show (2834352 * k + 988757) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 2966272) = 4251528 * k + 1483136 := by
    unfold C
    simp [show (8503056 * k + 2966272) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 1483136) = 2125764 * k + 741568 := by
    unfold C
    simp [show (4251528 * k + 1483136) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 741568) = 1062882 * k + 370784 := by
    unfold C
    simp [show (2125764 * k + 741568) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 370784) = 531441 * k + 185392 := by
    unfold C
    simp [show (1062882 * k + 370784) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 365791) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 365791)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_366111 : ∀ k : Nat,
    iterate (1048576 * k + 366111) 32 = 531441 * k + 185554 ∧
      531441 * k + 185554 < 1048576 * k + 366111 := by
  intro k
  have h1 : C (1048576 * k + 366111) = 3145728 * k + 1098334 := by
    unfold C
    simp [show (1048576 * k + 366111) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1098334) = 1572864 * k + 549167 := by
    unfold C
    simp [show (3145728 * k + 1098334) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 549167) = 4718592 * k + 1647502 := by
    unfold C
    simp [show (1572864 * k + 549167) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1647502) = 2359296 * k + 823751 := by
    unfold C
    simp [show (4718592 * k + 1647502) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 823751) = 7077888 * k + 2471254 := by
    unfold C
    simp [show (2359296 * k + 823751) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 2471254) = 3538944 * k + 1235627 := by
    unfold C
    simp [show (7077888 * k + 2471254) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1235627) = 10616832 * k + 3706882 := by
    unfold C
    simp [show (3538944 * k + 1235627) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 3706882) = 5308416 * k + 1853441 := by
    unfold C
    simp [show (10616832 * k + 3706882) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 1853441) = 15925248 * k + 5560324 := by
    unfold C
    simp [show (5308416 * k + 1853441) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 5560324) = 7962624 * k + 2780162 := by
    unfold C
    simp [show (15925248 * k + 5560324) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 2780162) = 3981312 * k + 1390081 := by
    unfold C
    simp [show (7962624 * k + 2780162) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 1390081) = 11943936 * k + 4170244 := by
    unfold C
    simp [show (3981312 * k + 1390081) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 4170244) = 5971968 * k + 2085122 := by
    unfold C
    simp [show (11943936 * k + 4170244) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 2085122) = 2985984 * k + 1042561 := by
    unfold C
    simp [show (5971968 * k + 2085122) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1042561) = 8957952 * k + 3127684 := by
    unfold C
    simp [show (2985984 * k + 1042561) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 3127684) = 4478976 * k + 1563842 := by
    unfold C
    simp [show (8957952 * k + 3127684) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 1563842) = 2239488 * k + 781921 := by
    unfold C
    simp [show (4478976 * k + 1563842) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 781921) = 6718464 * k + 2345764 := by
    unfold C
    simp [show (2239488 * k + 781921) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 2345764) = 3359232 * k + 1172882 := by
    unfold C
    simp [show (6718464 * k + 2345764) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 1172882) = 1679616 * k + 586441 := by
    unfold C
    simp [show (3359232 * k + 1172882) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 586441) = 5038848 * k + 1759324 := by
    unfold C
    simp [show (1679616 * k + 586441) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 1759324) = 2519424 * k + 879662 := by
    unfold C
    simp [show (5038848 * k + 1759324) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 879662) = 1259712 * k + 439831 := by
    unfold C
    simp [show (2519424 * k + 879662) % 2 = 0 by omega]
    omega
  have h24 : C (1259712 * k + 439831) = 3779136 * k + 1319494 := by
    unfold C
    simp [show (1259712 * k + 439831) % 2 ≠ 0 by omega]
    omega
  have h25 : C (3779136 * k + 1319494) = 1889568 * k + 659747 := by
    unfold C
    simp [show (3779136 * k + 1319494) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 659747) = 5668704 * k + 1979242 := by
    unfold C
    simp [show (1889568 * k + 659747) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 1979242) = 2834352 * k + 989621 := by
    unfold C
    simp [show (5668704 * k + 1979242) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 989621) = 8503056 * k + 2968864 := by
    unfold C
    simp [show (2834352 * k + 989621) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 2968864) = 4251528 * k + 1484432 := by
    unfold C
    simp [show (8503056 * k + 2968864) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 1484432) = 2125764 * k + 742216 := by
    unfold C
    simp [show (4251528 * k + 1484432) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 742216) = 1062882 * k + 371108 := by
    unfold C
    simp [show (2125764 * k + 742216) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 371108) = 531441 * k + 185554 := by
    unfold C
    simp [show (1062882 * k + 371108) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 366111) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 366111)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_366271 : ∀ k : Nat,
    iterate (1048576 * k + 366271) 32 = 531441 * k + 185635 ∧
      531441 * k + 185635 < 1048576 * k + 366271 := by
  intro k
  have h1 : C (1048576 * k + 366271) = 3145728 * k + 1098814 := by
    unfold C
    simp [show (1048576 * k + 366271) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1098814) = 1572864 * k + 549407 := by
    unfold C
    simp [show (3145728 * k + 1098814) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 549407) = 4718592 * k + 1648222 := by
    unfold C
    simp [show (1572864 * k + 549407) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1648222) = 2359296 * k + 824111 := by
    unfold C
    simp [show (4718592 * k + 1648222) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 824111) = 7077888 * k + 2472334 := by
    unfold C
    simp [show (2359296 * k + 824111) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 2472334) = 3538944 * k + 1236167 := by
    unfold C
    simp [show (7077888 * k + 2472334) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1236167) = 10616832 * k + 3708502 := by
    unfold C
    simp [show (3538944 * k + 1236167) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 3708502) = 5308416 * k + 1854251 := by
    unfold C
    simp [show (10616832 * k + 3708502) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 1854251) = 15925248 * k + 5562754 := by
    unfold C
    simp [show (5308416 * k + 1854251) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 5562754) = 7962624 * k + 2781377 := by
    unfold C
    simp [show (15925248 * k + 5562754) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 2781377) = 23887872 * k + 8344132 := by
    unfold C
    simp [show (7962624 * k + 2781377) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 8344132) = 11943936 * k + 4172066 := by
    unfold C
    simp [show (23887872 * k + 8344132) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 4172066) = 5971968 * k + 2086033 := by
    unfold C
    simp [show (11943936 * k + 4172066) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 2086033) = 17915904 * k + 6258100 := by
    unfold C
    simp [show (5971968 * k + 2086033) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 6258100) = 8957952 * k + 3129050 := by
    unfold C
    simp [show (17915904 * k + 6258100) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 3129050) = 4478976 * k + 1564525 := by
    unfold C
    simp [show (8957952 * k + 3129050) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 1564525) = 13436928 * k + 4693576 := by
    unfold C
    simp [show (4478976 * k + 1564525) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 4693576) = 6718464 * k + 2346788 := by
    unfold C
    simp [show (13436928 * k + 4693576) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 2346788) = 3359232 * k + 1173394 := by
    unfold C
    simp [show (6718464 * k + 2346788) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 1173394) = 1679616 * k + 586697 := by
    unfold C
    simp [show (3359232 * k + 1173394) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 586697) = 5038848 * k + 1760092 := by
    unfold C
    simp [show (1679616 * k + 586697) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 1760092) = 2519424 * k + 880046 := by
    unfold C
    simp [show (5038848 * k + 1760092) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 880046) = 1259712 * k + 440023 := by
    unfold C
    simp [show (2519424 * k + 880046) % 2 = 0 by omega]
    omega
  have h24 : C (1259712 * k + 440023) = 3779136 * k + 1320070 := by
    unfold C
    simp [show (1259712 * k + 440023) % 2 ≠ 0 by omega]
    omega
  have h25 : C (3779136 * k + 1320070) = 1889568 * k + 660035 := by
    unfold C
    simp [show (3779136 * k + 1320070) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 660035) = 5668704 * k + 1980106 := by
    unfold C
    simp [show (1889568 * k + 660035) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 1980106) = 2834352 * k + 990053 := by
    unfold C
    simp [show (5668704 * k + 1980106) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 990053) = 8503056 * k + 2970160 := by
    unfold C
    simp [show (2834352 * k + 990053) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 2970160) = 4251528 * k + 1485080 := by
    unfold C
    simp [show (8503056 * k + 2970160) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 1485080) = 2125764 * k + 742540 := by
    unfold C
    simp [show (4251528 * k + 1485080) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 742540) = 1062882 * k + 371270 := by
    unfold C
    simp [show (2125764 * k + 742540) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 371270) = 531441 * k + 185635 := by
    unfold C
    simp [show (1062882 * k + 371270) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 366271) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 366271)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_366439 : ∀ k : Nat,
    iterate (1048576 * k + 366439) 32 = 531441 * k + 185720 ∧
      531441 * k + 185720 < 1048576 * k + 366439 := by
  intro k
  have h1 : C (1048576 * k + 366439) = 3145728 * k + 1099318 := by
    unfold C
    simp [show (1048576 * k + 366439) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1099318) = 1572864 * k + 549659 := by
    unfold C
    simp [show (3145728 * k + 1099318) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 549659) = 4718592 * k + 1648978 := by
    unfold C
    simp [show (1572864 * k + 549659) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1648978) = 2359296 * k + 824489 := by
    unfold C
    simp [show (4718592 * k + 1648978) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 824489) = 7077888 * k + 2473468 := by
    unfold C
    simp [show (2359296 * k + 824489) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 2473468) = 3538944 * k + 1236734 := by
    unfold C
    simp [show (7077888 * k + 2473468) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1236734) = 1769472 * k + 618367 := by
    unfold C
    simp [show (3538944 * k + 1236734) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 618367) = 5308416 * k + 1855102 := by
    unfold C
    simp [show (1769472 * k + 618367) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 1855102) = 2654208 * k + 927551 := by
    unfold C
    simp [show (5308416 * k + 1855102) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 927551) = 7962624 * k + 2782654 := by
    unfold C
    simp [show (2654208 * k + 927551) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 2782654) = 3981312 * k + 1391327 := by
    unfold C
    simp [show (7962624 * k + 2782654) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 1391327) = 11943936 * k + 4173982 := by
    unfold C
    simp [show (3981312 * k + 1391327) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 4173982) = 5971968 * k + 2086991 := by
    unfold C
    simp [show (11943936 * k + 4173982) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 2086991) = 17915904 * k + 6260974 := by
    unfold C
    simp [show (5971968 * k + 2086991) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 6260974) = 8957952 * k + 3130487 := by
    unfold C
    simp [show (17915904 * k + 6260974) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 3130487) = 26873856 * k + 9391462 := by
    unfold C
    simp [show (8957952 * k + 3130487) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 9391462) = 13436928 * k + 4695731 := by
    unfold C
    simp [show (26873856 * k + 9391462) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 4695731) = 40310784 * k + 14087194 := by
    unfold C
    simp [show (13436928 * k + 4695731) % 2 ≠ 0 by omega]
    omega
  have h19 : C (40310784 * k + 14087194) = 20155392 * k + 7043597 := by
    unfold C
    simp [show (40310784 * k + 14087194) % 2 = 0 by omega]
    omega
  have h20 : C (20155392 * k + 7043597) = 60466176 * k + 21130792 := by
    unfold C
    simp [show (20155392 * k + 7043597) % 2 ≠ 0 by omega]
    omega
  have h21 : C (60466176 * k + 21130792) = 30233088 * k + 10565396 := by
    unfold C
    simp [show (60466176 * k + 21130792) % 2 = 0 by omega]
    omega
  have h22 : C (30233088 * k + 10565396) = 15116544 * k + 5282698 := by
    unfold C
    simp [show (30233088 * k + 10565396) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 5282698) = 7558272 * k + 2641349 := by
    unfold C
    simp [show (15116544 * k + 5282698) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 2641349) = 22674816 * k + 7924048 := by
    unfold C
    simp [show (7558272 * k + 2641349) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 7924048) = 11337408 * k + 3962024 := by
    unfold C
    simp [show (22674816 * k + 7924048) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 3962024) = 5668704 * k + 1981012 := by
    unfold C
    simp [show (11337408 * k + 3962024) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 1981012) = 2834352 * k + 990506 := by
    unfold C
    simp [show (5668704 * k + 1981012) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 990506) = 1417176 * k + 495253 := by
    unfold C
    simp [show (2834352 * k + 990506) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 495253) = 4251528 * k + 1485760 := by
    unfold C
    simp [show (1417176 * k + 495253) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 1485760) = 2125764 * k + 742880 := by
    unfold C
    simp [show (4251528 * k + 1485760) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 742880) = 1062882 * k + 371440 := by
    unfold C
    simp [show (2125764 * k + 742880) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 371440) = 531441 * k + 185720 := by
    unfold C
    simp [show (1062882 * k + 371440) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 366439) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 366439)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_367487 : ∀ k : Nat,
    iterate (1048576 * k + 367487) 32 = 531441 * k + 186251 ∧
      531441 * k + 186251 < 1048576 * k + 367487 := by
  intro k
  have h1 : C (1048576 * k + 367487) = 3145728 * k + 1102462 := by
    unfold C
    simp [show (1048576 * k + 367487) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1102462) = 1572864 * k + 551231 := by
    unfold C
    simp [show (3145728 * k + 1102462) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 551231) = 4718592 * k + 1653694 := by
    unfold C
    simp [show (1572864 * k + 551231) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1653694) = 2359296 * k + 826847 := by
    unfold C
    simp [show (4718592 * k + 1653694) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 826847) = 7077888 * k + 2480542 := by
    unfold C
    simp [show (2359296 * k + 826847) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 2480542) = 3538944 * k + 1240271 := by
    unfold C
    simp [show (7077888 * k + 2480542) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1240271) = 10616832 * k + 3720814 := by
    unfold C
    simp [show (3538944 * k + 1240271) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 3720814) = 5308416 * k + 1860407 := by
    unfold C
    simp [show (10616832 * k + 3720814) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 1860407) = 15925248 * k + 5581222 := by
    unfold C
    simp [show (5308416 * k + 1860407) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 5581222) = 7962624 * k + 2790611 := by
    unfold C
    simp [show (15925248 * k + 5581222) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 2790611) = 23887872 * k + 8371834 := by
    unfold C
    simp [show (7962624 * k + 2790611) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 8371834) = 11943936 * k + 4185917 := by
    unfold C
    simp [show (23887872 * k + 8371834) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 4185917) = 35831808 * k + 12557752 := by
    unfold C
    simp [show (11943936 * k + 4185917) % 2 ≠ 0 by omega]
    omega
  have h14 : C (35831808 * k + 12557752) = 17915904 * k + 6278876 := by
    unfold C
    simp [show (35831808 * k + 12557752) % 2 = 0 by omega]
    omega
  have h15 : C (17915904 * k + 6278876) = 8957952 * k + 3139438 := by
    unfold C
    simp [show (17915904 * k + 6278876) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 3139438) = 4478976 * k + 1569719 := by
    unfold C
    simp [show (8957952 * k + 3139438) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 1569719) = 13436928 * k + 4709158 := by
    unfold C
    simp [show (4478976 * k + 1569719) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 4709158) = 6718464 * k + 2354579 := by
    unfold C
    simp [show (13436928 * k + 4709158) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 2354579) = 20155392 * k + 7063738 := by
    unfold C
    simp [show (6718464 * k + 2354579) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 7063738) = 10077696 * k + 3531869 := by
    unfold C
    simp [show (20155392 * k + 7063738) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 3531869) = 30233088 * k + 10595608 := by
    unfold C
    simp [show (10077696 * k + 3531869) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 10595608) = 15116544 * k + 5297804 := by
    unfold C
    simp [show (30233088 * k + 10595608) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 5297804) = 7558272 * k + 2648902 := by
    unfold C
    simp [show (15116544 * k + 5297804) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 2648902) = 3779136 * k + 1324451 := by
    unfold C
    simp [show (7558272 * k + 2648902) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 1324451) = 11337408 * k + 3973354 := by
    unfold C
    simp [show (3779136 * k + 1324451) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 3973354) = 5668704 * k + 1986677 := by
    unfold C
    simp [show (11337408 * k + 3973354) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 1986677) = 17006112 * k + 5960032 := by
    unfold C
    simp [show (5668704 * k + 1986677) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 5960032) = 8503056 * k + 2980016 := by
    unfold C
    simp [show (17006112 * k + 5960032) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 2980016) = 4251528 * k + 1490008 := by
    unfold C
    simp [show (8503056 * k + 2980016) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 1490008) = 2125764 * k + 745004 := by
    unfold C
    simp [show (4251528 * k + 1490008) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 745004) = 1062882 * k + 372502 := by
    unfold C
    simp [show (2125764 * k + 745004) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 372502) = 531441 * k + 186251 := by
    unfold C
    simp [show (1062882 * k + 372502) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 367487) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 367487)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_367775 : ∀ k : Nat,
    iterate (1048576 * k + 367775) 32 = 531441 * k + 186397 ∧
      531441 * k + 186397 < 1048576 * k + 367775 := by
  intro k
  have h1 : C (1048576 * k + 367775) = 3145728 * k + 1103326 := by
    unfold C
    simp [show (1048576 * k + 367775) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1103326) = 1572864 * k + 551663 := by
    unfold C
    simp [show (3145728 * k + 1103326) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 551663) = 4718592 * k + 1654990 := by
    unfold C
    simp [show (1572864 * k + 551663) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1654990) = 2359296 * k + 827495 := by
    unfold C
    simp [show (4718592 * k + 1654990) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 827495) = 7077888 * k + 2482486 := by
    unfold C
    simp [show (2359296 * k + 827495) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 2482486) = 3538944 * k + 1241243 := by
    unfold C
    simp [show (7077888 * k + 2482486) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1241243) = 10616832 * k + 3723730 := by
    unfold C
    simp [show (3538944 * k + 1241243) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 3723730) = 5308416 * k + 1861865 := by
    unfold C
    simp [show (10616832 * k + 3723730) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 1861865) = 15925248 * k + 5585596 := by
    unfold C
    simp [show (5308416 * k + 1861865) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 5585596) = 7962624 * k + 2792798 := by
    unfold C
    simp [show (15925248 * k + 5585596) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 2792798) = 3981312 * k + 1396399 := by
    unfold C
    simp [show (7962624 * k + 2792798) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 1396399) = 11943936 * k + 4189198 := by
    unfold C
    simp [show (3981312 * k + 1396399) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 4189198) = 5971968 * k + 2094599 := by
    unfold C
    simp [show (11943936 * k + 4189198) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 2094599) = 17915904 * k + 6283798 := by
    unfold C
    simp [show (5971968 * k + 2094599) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 6283798) = 8957952 * k + 3141899 := by
    unfold C
    simp [show (17915904 * k + 6283798) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 3141899) = 26873856 * k + 9425698 := by
    unfold C
    simp [show (8957952 * k + 3141899) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 9425698) = 13436928 * k + 4712849 := by
    unfold C
    simp [show (26873856 * k + 9425698) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 4712849) = 40310784 * k + 14138548 := by
    unfold C
    simp [show (13436928 * k + 4712849) % 2 ≠ 0 by omega]
    omega
  have h19 : C (40310784 * k + 14138548) = 20155392 * k + 7069274 := by
    unfold C
    simp [show (40310784 * k + 14138548) % 2 = 0 by omega]
    omega
  have h20 : C (20155392 * k + 7069274) = 10077696 * k + 3534637 := by
    unfold C
    simp [show (20155392 * k + 7069274) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 3534637) = 30233088 * k + 10603912 := by
    unfold C
    simp [show (10077696 * k + 3534637) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 10603912) = 15116544 * k + 5301956 := by
    unfold C
    simp [show (30233088 * k + 10603912) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 5301956) = 7558272 * k + 2650978 := by
    unfold C
    simp [show (15116544 * k + 5301956) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 2650978) = 3779136 * k + 1325489 := by
    unfold C
    simp [show (7558272 * k + 2650978) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 1325489) = 11337408 * k + 3976468 := by
    unfold C
    simp [show (3779136 * k + 1325489) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 3976468) = 5668704 * k + 1988234 := by
    unfold C
    simp [show (11337408 * k + 3976468) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 1988234) = 2834352 * k + 994117 := by
    unfold C
    simp [show (5668704 * k + 1988234) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 994117) = 8503056 * k + 2982352 := by
    unfold C
    simp [show (2834352 * k + 994117) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 2982352) = 4251528 * k + 1491176 := by
    unfold C
    simp [show (8503056 * k + 2982352) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 1491176) = 2125764 * k + 745588 := by
    unfold C
    simp [show (4251528 * k + 1491176) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 745588) = 1062882 * k + 372794 := by
    unfold C
    simp [show (2125764 * k + 745588) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 372794) = 531441 * k + 186397 := by
    unfold C
    simp [show (1062882 * k + 372794) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 367775) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 367775)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_368711 : ∀ k : Nat,
    iterate (1048576 * k + 368711) 32 = 531441 * k + 186872 ∧
      531441 * k + 186872 < 1048576 * k + 368711 := by
  intro k
  have h1 : C (1048576 * k + 368711) = 3145728 * k + 1106134 := by
    unfold C
    simp [show (1048576 * k + 368711) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1106134) = 1572864 * k + 553067 := by
    unfold C
    simp [show (3145728 * k + 1106134) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 553067) = 4718592 * k + 1659202 := by
    unfold C
    simp [show (1572864 * k + 553067) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1659202) = 2359296 * k + 829601 := by
    unfold C
    simp [show (4718592 * k + 1659202) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 829601) = 7077888 * k + 2488804 := by
    unfold C
    simp [show (2359296 * k + 829601) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 2488804) = 3538944 * k + 1244402 := by
    unfold C
    simp [show (7077888 * k + 2488804) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1244402) = 1769472 * k + 622201 := by
    unfold C
    simp [show (3538944 * k + 1244402) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 622201) = 5308416 * k + 1866604 := by
    unfold C
    simp [show (1769472 * k + 622201) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 1866604) = 2654208 * k + 933302 := by
    unfold C
    simp [show (5308416 * k + 1866604) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 933302) = 1327104 * k + 466651 := by
    unfold C
    simp [show (2654208 * k + 933302) % 2 = 0 by omega]
    omega
  have h11 : C (1327104 * k + 466651) = 3981312 * k + 1399954 := by
    unfold C
    simp [show (1327104 * k + 466651) % 2 ≠ 0 by omega]
    omega
  have h12 : C (3981312 * k + 1399954) = 1990656 * k + 699977 := by
    unfold C
    simp [show (3981312 * k + 1399954) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 699977) = 5971968 * k + 2099932 := by
    unfold C
    simp [show (1990656 * k + 699977) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 2099932) = 2985984 * k + 1049966 := by
    unfold C
    simp [show (5971968 * k + 2099932) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1049966) = 1492992 * k + 524983 := by
    unfold C
    simp [show (2985984 * k + 1049966) % 2 = 0 by omega]
    omega
  have h16 : C (1492992 * k + 524983) = 4478976 * k + 1574950 := by
    unfold C
    simp [show (1492992 * k + 524983) % 2 ≠ 0 by omega]
    omega
  have h17 : C (4478976 * k + 1574950) = 2239488 * k + 787475 := by
    unfold C
    simp [show (4478976 * k + 1574950) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 787475) = 6718464 * k + 2362426 := by
    unfold C
    simp [show (2239488 * k + 787475) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 2362426) = 3359232 * k + 1181213 := by
    unfold C
    simp [show (6718464 * k + 2362426) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 1181213) = 10077696 * k + 3543640 := by
    unfold C
    simp [show (3359232 * k + 1181213) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 3543640) = 5038848 * k + 1771820 := by
    unfold C
    simp [show (10077696 * k + 3543640) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 1771820) = 2519424 * k + 885910 := by
    unfold C
    simp [show (5038848 * k + 1771820) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 885910) = 1259712 * k + 442955 := by
    unfold C
    simp [show (2519424 * k + 885910) % 2 = 0 by omega]
    omega
  have h24 : C (1259712 * k + 442955) = 3779136 * k + 1328866 := by
    unfold C
    simp [show (1259712 * k + 442955) % 2 ≠ 0 by omega]
    omega
  have h25 : C (3779136 * k + 1328866) = 1889568 * k + 664433 := by
    unfold C
    simp [show (3779136 * k + 1328866) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 664433) = 5668704 * k + 1993300 := by
    unfold C
    simp [show (1889568 * k + 664433) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 1993300) = 2834352 * k + 996650 := by
    unfold C
    simp [show (5668704 * k + 1993300) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 996650) = 1417176 * k + 498325 := by
    unfold C
    simp [show (2834352 * k + 996650) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 498325) = 4251528 * k + 1494976 := by
    unfold C
    simp [show (1417176 * k + 498325) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 1494976) = 2125764 * k + 747488 := by
    unfold C
    simp [show (4251528 * k + 1494976) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 747488) = 1062882 * k + 373744 := by
    unfold C
    simp [show (2125764 * k + 747488) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 373744) = 531441 * k + 186872 := by
    unfold C
    simp [show (1062882 * k + 373744) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 368711) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 368711)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_369391 : ∀ k : Nat,
    iterate (1048576 * k + 369391) 32 = 531441 * k + 187216 ∧
      531441 * k + 187216 < 1048576 * k + 369391 := by
  intro k
  have h1 : C (1048576 * k + 369391) = 3145728 * k + 1108174 := by
    unfold C
    simp [show (1048576 * k + 369391) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1108174) = 1572864 * k + 554087 := by
    unfold C
    simp [show (3145728 * k + 1108174) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 554087) = 4718592 * k + 1662262 := by
    unfold C
    simp [show (1572864 * k + 554087) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1662262) = 2359296 * k + 831131 := by
    unfold C
    simp [show (4718592 * k + 1662262) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 831131) = 7077888 * k + 2493394 := by
    unfold C
    simp [show (2359296 * k + 831131) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 2493394) = 3538944 * k + 1246697 := by
    unfold C
    simp [show (7077888 * k + 2493394) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1246697) = 10616832 * k + 3740092 := by
    unfold C
    simp [show (3538944 * k + 1246697) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 3740092) = 5308416 * k + 1870046 := by
    unfold C
    simp [show (10616832 * k + 3740092) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 1870046) = 2654208 * k + 935023 := by
    unfold C
    simp [show (5308416 * k + 1870046) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 935023) = 7962624 * k + 2805070 := by
    unfold C
    simp [show (2654208 * k + 935023) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 2805070) = 3981312 * k + 1402535 := by
    unfold C
    simp [show (7962624 * k + 2805070) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 1402535) = 11943936 * k + 4207606 := by
    unfold C
    simp [show (3981312 * k + 1402535) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 4207606) = 5971968 * k + 2103803 := by
    unfold C
    simp [show (11943936 * k + 4207606) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 2103803) = 17915904 * k + 6311410 := by
    unfold C
    simp [show (5971968 * k + 2103803) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 6311410) = 8957952 * k + 3155705 := by
    unfold C
    simp [show (17915904 * k + 6311410) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 3155705) = 26873856 * k + 9467116 := by
    unfold C
    simp [show (8957952 * k + 3155705) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 9467116) = 13436928 * k + 4733558 := by
    unfold C
    simp [show (26873856 * k + 9467116) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 4733558) = 6718464 * k + 2366779 := by
    unfold C
    simp [show (13436928 * k + 4733558) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 2366779) = 20155392 * k + 7100338 := by
    unfold C
    simp [show (6718464 * k + 2366779) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 7100338) = 10077696 * k + 3550169 := by
    unfold C
    simp [show (20155392 * k + 7100338) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 3550169) = 30233088 * k + 10650508 := by
    unfold C
    simp [show (10077696 * k + 3550169) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 10650508) = 15116544 * k + 5325254 := by
    unfold C
    simp [show (30233088 * k + 10650508) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 5325254) = 7558272 * k + 2662627 := by
    unfold C
    simp [show (15116544 * k + 5325254) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 2662627) = 22674816 * k + 7987882 := by
    unfold C
    simp [show (7558272 * k + 2662627) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 7987882) = 11337408 * k + 3993941 := by
    unfold C
    simp [show (22674816 * k + 7987882) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 3993941) = 34012224 * k + 11981824 := by
    unfold C
    simp [show (11337408 * k + 3993941) % 2 ≠ 0 by omega]
    omega
  have h27 : C (34012224 * k + 11981824) = 17006112 * k + 5990912 := by
    unfold C
    simp [show (34012224 * k + 11981824) % 2 = 0 by omega]
    omega
  have h28 : C (17006112 * k + 5990912) = 8503056 * k + 2995456 := by
    unfold C
    simp [show (17006112 * k + 5990912) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 2995456) = 4251528 * k + 1497728 := by
    unfold C
    simp [show (8503056 * k + 2995456) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 1497728) = 2125764 * k + 748864 := by
    unfold C
    simp [show (4251528 * k + 1497728) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 748864) = 1062882 * k + 374432 := by
    unfold C
    simp [show (2125764 * k + 748864) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 374432) = 531441 * k + 187216 := by
    unfold C
    simp [show (1062882 * k + 374432) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 369391) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 369391)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_369479 : ∀ k : Nat,
    iterate (1048576 * k + 369479) 32 = 531441 * k + 187261 ∧
      531441 * k + 187261 < 1048576 * k + 369479 := by
  intro k
  have h1 : C (1048576 * k + 369479) = 3145728 * k + 1108438 := by
    unfold C
    simp [show (1048576 * k + 369479) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1108438) = 1572864 * k + 554219 := by
    unfold C
    simp [show (3145728 * k + 1108438) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 554219) = 4718592 * k + 1662658 := by
    unfold C
    simp [show (1572864 * k + 554219) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1662658) = 2359296 * k + 831329 := by
    unfold C
    simp [show (4718592 * k + 1662658) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 831329) = 7077888 * k + 2493988 := by
    unfold C
    simp [show (2359296 * k + 831329) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 2493988) = 3538944 * k + 1246994 := by
    unfold C
    simp [show (7077888 * k + 2493988) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1246994) = 1769472 * k + 623497 := by
    unfold C
    simp [show (3538944 * k + 1246994) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 623497) = 5308416 * k + 1870492 := by
    unfold C
    simp [show (1769472 * k + 623497) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 1870492) = 2654208 * k + 935246 := by
    unfold C
    simp [show (5308416 * k + 1870492) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 935246) = 1327104 * k + 467623 := by
    unfold C
    simp [show (2654208 * k + 935246) % 2 = 0 by omega]
    omega
  have h11 : C (1327104 * k + 467623) = 3981312 * k + 1402870 := by
    unfold C
    simp [show (1327104 * k + 467623) % 2 ≠ 0 by omega]
    omega
  have h12 : C (3981312 * k + 1402870) = 1990656 * k + 701435 := by
    unfold C
    simp [show (3981312 * k + 1402870) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 701435) = 5971968 * k + 2104306 := by
    unfold C
    simp [show (1990656 * k + 701435) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 2104306) = 2985984 * k + 1052153 := by
    unfold C
    simp [show (5971968 * k + 2104306) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1052153) = 8957952 * k + 3156460 := by
    unfold C
    simp [show (2985984 * k + 1052153) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 3156460) = 4478976 * k + 1578230 := by
    unfold C
    simp [show (8957952 * k + 3156460) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 1578230) = 2239488 * k + 789115 := by
    unfold C
    simp [show (4478976 * k + 1578230) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 789115) = 6718464 * k + 2367346 := by
    unfold C
    simp [show (2239488 * k + 789115) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 2367346) = 3359232 * k + 1183673 := by
    unfold C
    simp [show (6718464 * k + 2367346) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 1183673) = 10077696 * k + 3551020 := by
    unfold C
    simp [show (3359232 * k + 1183673) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 3551020) = 5038848 * k + 1775510 := by
    unfold C
    simp [show (10077696 * k + 3551020) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 1775510) = 2519424 * k + 887755 := by
    unfold C
    simp [show (5038848 * k + 1775510) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 887755) = 7558272 * k + 2663266 := by
    unfold C
    simp [show (2519424 * k + 887755) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 2663266) = 3779136 * k + 1331633 := by
    unfold C
    simp [show (7558272 * k + 2663266) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 1331633) = 11337408 * k + 3994900 := by
    unfold C
    simp [show (3779136 * k + 1331633) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 3994900) = 5668704 * k + 1997450 := by
    unfold C
    simp [show (11337408 * k + 3994900) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 1997450) = 2834352 * k + 998725 := by
    unfold C
    simp [show (5668704 * k + 1997450) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 998725) = 8503056 * k + 2996176 := by
    unfold C
    simp [show (2834352 * k + 998725) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 2996176) = 4251528 * k + 1498088 := by
    unfold C
    simp [show (8503056 * k + 2996176) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 1498088) = 2125764 * k + 749044 := by
    unfold C
    simp [show (4251528 * k + 1498088) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 749044) = 1062882 * k + 374522 := by
    unfold C
    simp [show (2125764 * k + 749044) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 374522) = 531441 * k + 187261 := by
    unfold C
    simp [show (1062882 * k + 374522) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 369479) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 369479)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_369735 : ∀ k : Nat,
    iterate (1048576 * k + 369735) 32 = 531441 * k + 187391 ∧
      531441 * k + 187391 < 1048576 * k + 369735 := by
  intro k
  have h1 : C (1048576 * k + 369735) = 3145728 * k + 1109206 := by
    unfold C
    simp [show (1048576 * k + 369735) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1109206) = 1572864 * k + 554603 := by
    unfold C
    simp [show (3145728 * k + 1109206) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 554603) = 4718592 * k + 1663810 := by
    unfold C
    simp [show (1572864 * k + 554603) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1663810) = 2359296 * k + 831905 := by
    unfold C
    simp [show (4718592 * k + 1663810) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 831905) = 7077888 * k + 2495716 := by
    unfold C
    simp [show (2359296 * k + 831905) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 2495716) = 3538944 * k + 1247858 := by
    unfold C
    simp [show (7077888 * k + 2495716) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1247858) = 1769472 * k + 623929 := by
    unfold C
    simp [show (3538944 * k + 1247858) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 623929) = 5308416 * k + 1871788 := by
    unfold C
    simp [show (1769472 * k + 623929) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 1871788) = 2654208 * k + 935894 := by
    unfold C
    simp [show (5308416 * k + 1871788) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 935894) = 1327104 * k + 467947 := by
    unfold C
    simp [show (2654208 * k + 935894) % 2 = 0 by omega]
    omega
  have h11 : C (1327104 * k + 467947) = 3981312 * k + 1403842 := by
    unfold C
    simp [show (1327104 * k + 467947) % 2 ≠ 0 by omega]
    omega
  have h12 : C (3981312 * k + 1403842) = 1990656 * k + 701921 := by
    unfold C
    simp [show (3981312 * k + 1403842) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 701921) = 5971968 * k + 2105764 := by
    unfold C
    simp [show (1990656 * k + 701921) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 2105764) = 2985984 * k + 1052882 := by
    unfold C
    simp [show (5971968 * k + 2105764) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1052882) = 1492992 * k + 526441 := by
    unfold C
    simp [show (2985984 * k + 1052882) % 2 = 0 by omega]
    omega
  have h16 : C (1492992 * k + 526441) = 4478976 * k + 1579324 := by
    unfold C
    simp [show (1492992 * k + 526441) % 2 ≠ 0 by omega]
    omega
  have h17 : C (4478976 * k + 1579324) = 2239488 * k + 789662 := by
    unfold C
    simp [show (4478976 * k + 1579324) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 789662) = 1119744 * k + 394831 := by
    unfold C
    simp [show (2239488 * k + 789662) % 2 = 0 by omega]
    omega
  have h19 : C (1119744 * k + 394831) = 3359232 * k + 1184494 := by
    unfold C
    simp [show (1119744 * k + 394831) % 2 ≠ 0 by omega]
    omega
  have h20 : C (3359232 * k + 1184494) = 1679616 * k + 592247 := by
    unfold C
    simp [show (3359232 * k + 1184494) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 592247) = 5038848 * k + 1776742 := by
    unfold C
    simp [show (1679616 * k + 592247) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 1776742) = 2519424 * k + 888371 := by
    unfold C
    simp [show (5038848 * k + 1776742) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 888371) = 7558272 * k + 2665114 := by
    unfold C
    simp [show (2519424 * k + 888371) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 2665114) = 3779136 * k + 1332557 := by
    unfold C
    simp [show (7558272 * k + 2665114) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 1332557) = 11337408 * k + 3997672 := by
    unfold C
    simp [show (3779136 * k + 1332557) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 3997672) = 5668704 * k + 1998836 := by
    unfold C
    simp [show (11337408 * k + 3997672) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 1998836) = 2834352 * k + 999418 := by
    unfold C
    simp [show (5668704 * k + 1998836) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 999418) = 1417176 * k + 499709 := by
    unfold C
    simp [show (2834352 * k + 999418) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 499709) = 4251528 * k + 1499128 := by
    unfold C
    simp [show (1417176 * k + 499709) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 1499128) = 2125764 * k + 749564 := by
    unfold C
    simp [show (4251528 * k + 1499128) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 749564) = 1062882 * k + 374782 := by
    unfold C
    simp [show (2125764 * k + 749564) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 374782) = 531441 * k + 187391 := by
    unfold C
    simp [show (1062882 * k + 374782) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 369735) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 369735)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_370559 : ∀ k : Nat,
    iterate (1048576 * k + 370559) 32 = 531441 * k + 187808 ∧
      531441 * k + 187808 < 1048576 * k + 370559 := by
  intro k
  have h1 : C (1048576 * k + 370559) = 3145728 * k + 1111678 := by
    unfold C
    simp [show (1048576 * k + 370559) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1111678) = 1572864 * k + 555839 := by
    unfold C
    simp [show (3145728 * k + 1111678) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 555839) = 4718592 * k + 1667518 := by
    unfold C
    simp [show (1572864 * k + 555839) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1667518) = 2359296 * k + 833759 := by
    unfold C
    simp [show (4718592 * k + 1667518) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 833759) = 7077888 * k + 2501278 := by
    unfold C
    simp [show (2359296 * k + 833759) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 2501278) = 3538944 * k + 1250639 := by
    unfold C
    simp [show (7077888 * k + 2501278) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1250639) = 10616832 * k + 3751918 := by
    unfold C
    simp [show (3538944 * k + 1250639) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 3751918) = 5308416 * k + 1875959 := by
    unfold C
    simp [show (10616832 * k + 3751918) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 1875959) = 15925248 * k + 5627878 := by
    unfold C
    simp [show (5308416 * k + 1875959) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 5627878) = 7962624 * k + 2813939 := by
    unfold C
    simp [show (15925248 * k + 5627878) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 2813939) = 23887872 * k + 8441818 := by
    unfold C
    simp [show (7962624 * k + 2813939) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 8441818) = 11943936 * k + 4220909 := by
    unfold C
    simp [show (23887872 * k + 8441818) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 4220909) = 35831808 * k + 12662728 := by
    unfold C
    simp [show (11943936 * k + 4220909) % 2 ≠ 0 by omega]
    omega
  have h14 : C (35831808 * k + 12662728) = 17915904 * k + 6331364 := by
    unfold C
    simp [show (35831808 * k + 12662728) % 2 = 0 by omega]
    omega
  have h15 : C (17915904 * k + 6331364) = 8957952 * k + 3165682 := by
    unfold C
    simp [show (17915904 * k + 6331364) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 3165682) = 4478976 * k + 1582841 := by
    unfold C
    simp [show (8957952 * k + 3165682) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 1582841) = 13436928 * k + 4748524 := by
    unfold C
    simp [show (4478976 * k + 1582841) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 4748524) = 6718464 * k + 2374262 := by
    unfold C
    simp [show (13436928 * k + 4748524) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 2374262) = 3359232 * k + 1187131 := by
    unfold C
    simp [show (6718464 * k + 2374262) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 1187131) = 10077696 * k + 3561394 := by
    unfold C
    simp [show (3359232 * k + 1187131) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 3561394) = 5038848 * k + 1780697 := by
    unfold C
    simp [show (10077696 * k + 3561394) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 1780697) = 15116544 * k + 5342092 := by
    unfold C
    simp [show (5038848 * k + 1780697) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 5342092) = 7558272 * k + 2671046 := by
    unfold C
    simp [show (15116544 * k + 5342092) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 2671046) = 3779136 * k + 1335523 := by
    unfold C
    simp [show (7558272 * k + 2671046) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 1335523) = 11337408 * k + 4006570 := by
    unfold C
    simp [show (3779136 * k + 1335523) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 4006570) = 5668704 * k + 2003285 := by
    unfold C
    simp [show (11337408 * k + 4006570) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 2003285) = 17006112 * k + 6009856 := by
    unfold C
    simp [show (5668704 * k + 2003285) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 6009856) = 8503056 * k + 3004928 := by
    unfold C
    simp [show (17006112 * k + 6009856) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 3004928) = 4251528 * k + 1502464 := by
    unfold C
    simp [show (8503056 * k + 3004928) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 1502464) = 2125764 * k + 751232 := by
    unfold C
    simp [show (4251528 * k + 1502464) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 751232) = 1062882 * k + 375616 := by
    unfold C
    simp [show (2125764 * k + 751232) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 375616) = 531441 * k + 187808 := by
    unfold C
    simp [show (1062882 * k + 375616) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 370559) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 370559)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_371583 : ∀ k : Nat,
    iterate (1048576 * k + 371583) 32 = 531441 * k + 188327 ∧
      531441 * k + 188327 < 1048576 * k + 371583 := by
  intro k
  have h1 : C (1048576 * k + 371583) = 3145728 * k + 1114750 := by
    unfold C
    simp [show (1048576 * k + 371583) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1114750) = 1572864 * k + 557375 := by
    unfold C
    simp [show (3145728 * k + 1114750) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 557375) = 4718592 * k + 1672126 := by
    unfold C
    simp [show (1572864 * k + 557375) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1672126) = 2359296 * k + 836063 := by
    unfold C
    simp [show (4718592 * k + 1672126) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 836063) = 7077888 * k + 2508190 := by
    unfold C
    simp [show (2359296 * k + 836063) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 2508190) = 3538944 * k + 1254095 := by
    unfold C
    simp [show (7077888 * k + 2508190) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1254095) = 10616832 * k + 3762286 := by
    unfold C
    simp [show (3538944 * k + 1254095) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 3762286) = 5308416 * k + 1881143 := by
    unfold C
    simp [show (10616832 * k + 3762286) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 1881143) = 15925248 * k + 5643430 := by
    unfold C
    simp [show (5308416 * k + 1881143) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 5643430) = 7962624 * k + 2821715 := by
    unfold C
    simp [show (15925248 * k + 5643430) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 2821715) = 23887872 * k + 8465146 := by
    unfold C
    simp [show (7962624 * k + 2821715) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 8465146) = 11943936 * k + 4232573 := by
    unfold C
    simp [show (23887872 * k + 8465146) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 4232573) = 35831808 * k + 12697720 := by
    unfold C
    simp [show (11943936 * k + 4232573) % 2 ≠ 0 by omega]
    omega
  have h14 : C (35831808 * k + 12697720) = 17915904 * k + 6348860 := by
    unfold C
    simp [show (35831808 * k + 12697720) % 2 = 0 by omega]
    omega
  have h15 : C (17915904 * k + 6348860) = 8957952 * k + 3174430 := by
    unfold C
    simp [show (17915904 * k + 6348860) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 3174430) = 4478976 * k + 1587215 := by
    unfold C
    simp [show (8957952 * k + 3174430) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 1587215) = 13436928 * k + 4761646 := by
    unfold C
    simp [show (4478976 * k + 1587215) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 4761646) = 6718464 * k + 2380823 := by
    unfold C
    simp [show (13436928 * k + 4761646) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 2380823) = 20155392 * k + 7142470 := by
    unfold C
    simp [show (6718464 * k + 2380823) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 7142470) = 10077696 * k + 3571235 := by
    unfold C
    simp [show (20155392 * k + 7142470) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 3571235) = 30233088 * k + 10713706 := by
    unfold C
    simp [show (10077696 * k + 3571235) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 10713706) = 15116544 * k + 5356853 := by
    unfold C
    simp [show (30233088 * k + 10713706) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 5356853) = 45349632 * k + 16070560 := by
    unfold C
    simp [show (15116544 * k + 5356853) % 2 ≠ 0 by omega]
    omega
  have h24 : C (45349632 * k + 16070560) = 22674816 * k + 8035280 := by
    unfold C
    simp [show (45349632 * k + 16070560) % 2 = 0 by omega]
    omega
  have h25 : C (22674816 * k + 8035280) = 11337408 * k + 4017640 := by
    unfold C
    simp [show (22674816 * k + 8035280) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 4017640) = 5668704 * k + 2008820 := by
    unfold C
    simp [show (11337408 * k + 4017640) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 2008820) = 2834352 * k + 1004410 := by
    unfold C
    simp [show (5668704 * k + 2008820) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1004410) = 1417176 * k + 502205 := by
    unfold C
    simp [show (2834352 * k + 1004410) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 502205) = 4251528 * k + 1506616 := by
    unfold C
    simp [show (1417176 * k + 502205) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 1506616) = 2125764 * k + 753308 := by
    unfold C
    simp [show (4251528 * k + 1506616) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 753308) = 1062882 * k + 376654 := by
    unfold C
    simp [show (2125764 * k + 753308) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 376654) = 531441 * k + 188327 := by
    unfold C
    simp [show (1062882 * k + 376654) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 371583) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 371583)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_371695 : ∀ k : Nat,
    iterate (1048576 * k + 371695) 32 = 531441 * k + 188384 ∧
      531441 * k + 188384 < 1048576 * k + 371695 := by
  intro k
  have h1 : C (1048576 * k + 371695) = 3145728 * k + 1115086 := by
    unfold C
    simp [show (1048576 * k + 371695) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1115086) = 1572864 * k + 557543 := by
    unfold C
    simp [show (3145728 * k + 1115086) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 557543) = 4718592 * k + 1672630 := by
    unfold C
    simp [show (1572864 * k + 557543) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1672630) = 2359296 * k + 836315 := by
    unfold C
    simp [show (4718592 * k + 1672630) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 836315) = 7077888 * k + 2508946 := by
    unfold C
    simp [show (2359296 * k + 836315) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 2508946) = 3538944 * k + 1254473 := by
    unfold C
    simp [show (7077888 * k + 2508946) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1254473) = 10616832 * k + 3763420 := by
    unfold C
    simp [show (3538944 * k + 1254473) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 3763420) = 5308416 * k + 1881710 := by
    unfold C
    simp [show (10616832 * k + 3763420) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 1881710) = 2654208 * k + 940855 := by
    unfold C
    simp [show (5308416 * k + 1881710) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 940855) = 7962624 * k + 2822566 := by
    unfold C
    simp [show (2654208 * k + 940855) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 2822566) = 3981312 * k + 1411283 := by
    unfold C
    simp [show (7962624 * k + 2822566) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 1411283) = 11943936 * k + 4233850 := by
    unfold C
    simp [show (3981312 * k + 1411283) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 4233850) = 5971968 * k + 2116925 := by
    unfold C
    simp [show (11943936 * k + 4233850) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 2116925) = 17915904 * k + 6350776 := by
    unfold C
    simp [show (5971968 * k + 2116925) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 6350776) = 8957952 * k + 3175388 := by
    unfold C
    simp [show (17915904 * k + 6350776) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 3175388) = 4478976 * k + 1587694 := by
    unfold C
    simp [show (8957952 * k + 3175388) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 1587694) = 2239488 * k + 793847 := by
    unfold C
    simp [show (4478976 * k + 1587694) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 793847) = 6718464 * k + 2381542 := by
    unfold C
    simp [show (2239488 * k + 793847) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 2381542) = 3359232 * k + 1190771 := by
    unfold C
    simp [show (6718464 * k + 2381542) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 1190771) = 10077696 * k + 3572314 := by
    unfold C
    simp [show (3359232 * k + 1190771) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 3572314) = 5038848 * k + 1786157 := by
    unfold C
    simp [show (10077696 * k + 3572314) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 1786157) = 15116544 * k + 5358472 := by
    unfold C
    simp [show (5038848 * k + 1786157) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 5358472) = 7558272 * k + 2679236 := by
    unfold C
    simp [show (15116544 * k + 5358472) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 2679236) = 3779136 * k + 1339618 := by
    unfold C
    simp [show (7558272 * k + 2679236) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 1339618) = 1889568 * k + 669809 := by
    unfold C
    simp [show (3779136 * k + 1339618) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 669809) = 5668704 * k + 2009428 := by
    unfold C
    simp [show (1889568 * k + 669809) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 2009428) = 2834352 * k + 1004714 := by
    unfold C
    simp [show (5668704 * k + 2009428) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1004714) = 1417176 * k + 502357 := by
    unfold C
    simp [show (2834352 * k + 1004714) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 502357) = 4251528 * k + 1507072 := by
    unfold C
    simp [show (1417176 * k + 502357) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 1507072) = 2125764 * k + 753536 := by
    unfold C
    simp [show (4251528 * k + 1507072) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 753536) = 1062882 * k + 376768 := by
    unfold C
    simp [show (2125764 * k + 753536) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 376768) = 531441 * k + 188384 := by
    unfold C
    simp [show (1062882 * k + 376768) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 371695) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 371695)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_372463 : ∀ k : Nat,
    iterate (1048576 * k + 372463) 32 = 531441 * k + 188773 ∧
      531441 * k + 188773 < 1048576 * k + 372463 := by
  intro k
  have h1 : C (1048576 * k + 372463) = 3145728 * k + 1117390 := by
    unfold C
    simp [show (1048576 * k + 372463) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1117390) = 1572864 * k + 558695 := by
    unfold C
    simp [show (3145728 * k + 1117390) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 558695) = 4718592 * k + 1676086 := by
    unfold C
    simp [show (1572864 * k + 558695) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1676086) = 2359296 * k + 838043 := by
    unfold C
    simp [show (4718592 * k + 1676086) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 838043) = 7077888 * k + 2514130 := by
    unfold C
    simp [show (2359296 * k + 838043) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 2514130) = 3538944 * k + 1257065 := by
    unfold C
    simp [show (7077888 * k + 2514130) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1257065) = 10616832 * k + 3771196 := by
    unfold C
    simp [show (3538944 * k + 1257065) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 3771196) = 5308416 * k + 1885598 := by
    unfold C
    simp [show (10616832 * k + 3771196) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 1885598) = 2654208 * k + 942799 := by
    unfold C
    simp [show (5308416 * k + 1885598) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 942799) = 7962624 * k + 2828398 := by
    unfold C
    simp [show (2654208 * k + 942799) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 2828398) = 3981312 * k + 1414199 := by
    unfold C
    simp [show (7962624 * k + 2828398) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 1414199) = 11943936 * k + 4242598 := by
    unfold C
    simp [show (3981312 * k + 1414199) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 4242598) = 5971968 * k + 2121299 := by
    unfold C
    simp [show (11943936 * k + 4242598) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 2121299) = 17915904 * k + 6363898 := by
    unfold C
    simp [show (5971968 * k + 2121299) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 6363898) = 8957952 * k + 3181949 := by
    unfold C
    simp [show (17915904 * k + 6363898) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 3181949) = 26873856 * k + 9545848 := by
    unfold C
    simp [show (8957952 * k + 3181949) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 9545848) = 13436928 * k + 4772924 := by
    unfold C
    simp [show (26873856 * k + 9545848) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 4772924) = 6718464 * k + 2386462 := by
    unfold C
    simp [show (13436928 * k + 4772924) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 2386462) = 3359232 * k + 1193231 := by
    unfold C
    simp [show (6718464 * k + 2386462) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 1193231) = 10077696 * k + 3579694 := by
    unfold C
    simp [show (3359232 * k + 1193231) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 3579694) = 5038848 * k + 1789847 := by
    unfold C
    simp [show (10077696 * k + 3579694) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 1789847) = 15116544 * k + 5369542 := by
    unfold C
    simp [show (5038848 * k + 1789847) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 5369542) = 7558272 * k + 2684771 := by
    unfold C
    simp [show (15116544 * k + 5369542) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 2684771) = 22674816 * k + 8054314 := by
    unfold C
    simp [show (7558272 * k + 2684771) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 8054314) = 11337408 * k + 4027157 := by
    unfold C
    simp [show (22674816 * k + 8054314) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 4027157) = 34012224 * k + 12081472 := by
    unfold C
    simp [show (11337408 * k + 4027157) % 2 ≠ 0 by omega]
    omega
  have h27 : C (34012224 * k + 12081472) = 17006112 * k + 6040736 := by
    unfold C
    simp [show (34012224 * k + 12081472) % 2 = 0 by omega]
    omega
  have h28 : C (17006112 * k + 6040736) = 8503056 * k + 3020368 := by
    unfold C
    simp [show (17006112 * k + 6040736) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 3020368) = 4251528 * k + 1510184 := by
    unfold C
    simp [show (8503056 * k + 3020368) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 1510184) = 2125764 * k + 755092 := by
    unfold C
    simp [show (4251528 * k + 1510184) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 755092) = 1062882 * k + 377546 := by
    unfold C
    simp [show (2125764 * k + 755092) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 377546) = 531441 * k + 188773 := by
    unfold C
    simp [show (1062882 * k + 377546) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 372463) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 372463)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_373631 : ∀ k : Nat,
    iterate (1048576 * k + 373631) 32 = 531441 * k + 189365 ∧
      531441 * k + 189365 < 1048576 * k + 373631 := by
  intro k
  have h1 : C (1048576 * k + 373631) = 3145728 * k + 1120894 := by
    unfold C
    simp [show (1048576 * k + 373631) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1120894) = 1572864 * k + 560447 := by
    unfold C
    simp [show (3145728 * k + 1120894) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 560447) = 4718592 * k + 1681342 := by
    unfold C
    simp [show (1572864 * k + 560447) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1681342) = 2359296 * k + 840671 := by
    unfold C
    simp [show (4718592 * k + 1681342) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 840671) = 7077888 * k + 2522014 := by
    unfold C
    simp [show (2359296 * k + 840671) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 2522014) = 3538944 * k + 1261007 := by
    unfold C
    simp [show (7077888 * k + 2522014) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1261007) = 10616832 * k + 3783022 := by
    unfold C
    simp [show (3538944 * k + 1261007) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 3783022) = 5308416 * k + 1891511 := by
    unfold C
    simp [show (10616832 * k + 3783022) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 1891511) = 15925248 * k + 5674534 := by
    unfold C
    simp [show (5308416 * k + 1891511) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 5674534) = 7962624 * k + 2837267 := by
    unfold C
    simp [show (15925248 * k + 5674534) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 2837267) = 23887872 * k + 8511802 := by
    unfold C
    simp [show (7962624 * k + 2837267) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 8511802) = 11943936 * k + 4255901 := by
    unfold C
    simp [show (23887872 * k + 8511802) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 4255901) = 35831808 * k + 12767704 := by
    unfold C
    simp [show (11943936 * k + 4255901) % 2 ≠ 0 by omega]
    omega
  have h14 : C (35831808 * k + 12767704) = 17915904 * k + 6383852 := by
    unfold C
    simp [show (35831808 * k + 12767704) % 2 = 0 by omega]
    omega
  have h15 : C (17915904 * k + 6383852) = 8957952 * k + 3191926 := by
    unfold C
    simp [show (17915904 * k + 6383852) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 3191926) = 4478976 * k + 1595963 := by
    unfold C
    simp [show (8957952 * k + 3191926) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 1595963) = 13436928 * k + 4787890 := by
    unfold C
    simp [show (4478976 * k + 1595963) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 4787890) = 6718464 * k + 2393945 := by
    unfold C
    simp [show (13436928 * k + 4787890) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 2393945) = 20155392 * k + 7181836 := by
    unfold C
    simp [show (6718464 * k + 2393945) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 7181836) = 10077696 * k + 3590918 := by
    unfold C
    simp [show (20155392 * k + 7181836) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 3590918) = 5038848 * k + 1795459 := by
    unfold C
    simp [show (10077696 * k + 3590918) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 1795459) = 15116544 * k + 5386378 := by
    unfold C
    simp [show (5038848 * k + 1795459) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 5386378) = 7558272 * k + 2693189 := by
    unfold C
    simp [show (15116544 * k + 5386378) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 2693189) = 22674816 * k + 8079568 := by
    unfold C
    simp [show (7558272 * k + 2693189) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 8079568) = 11337408 * k + 4039784 := by
    unfold C
    simp [show (22674816 * k + 8079568) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 4039784) = 5668704 * k + 2019892 := by
    unfold C
    simp [show (11337408 * k + 4039784) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 2019892) = 2834352 * k + 1009946 := by
    unfold C
    simp [show (5668704 * k + 2019892) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1009946) = 1417176 * k + 504973 := by
    unfold C
    simp [show (2834352 * k + 1009946) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 504973) = 4251528 * k + 1514920 := by
    unfold C
    simp [show (1417176 * k + 504973) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 1514920) = 2125764 * k + 757460 := by
    unfold C
    simp [show (4251528 * k + 1514920) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 757460) = 1062882 * k + 378730 := by
    unfold C
    simp [show (2125764 * k + 757460) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 378730) = 531441 * k + 189365 := by
    unfold C
    simp [show (1062882 * k + 378730) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 373631) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 373631)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_375535 : ∀ k : Nat,
    iterate (1048576 * k + 375535) 32 = 531441 * k + 190330 ∧
      531441 * k + 190330 < 1048576 * k + 375535 := by
  intro k
  have h1 : C (1048576 * k + 375535) = 3145728 * k + 1126606 := by
    unfold C
    simp [show (1048576 * k + 375535) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1126606) = 1572864 * k + 563303 := by
    unfold C
    simp [show (3145728 * k + 1126606) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 563303) = 4718592 * k + 1689910 := by
    unfold C
    simp [show (1572864 * k + 563303) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1689910) = 2359296 * k + 844955 := by
    unfold C
    simp [show (4718592 * k + 1689910) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 844955) = 7077888 * k + 2534866 := by
    unfold C
    simp [show (2359296 * k + 844955) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 2534866) = 3538944 * k + 1267433 := by
    unfold C
    simp [show (7077888 * k + 2534866) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1267433) = 10616832 * k + 3802300 := by
    unfold C
    simp [show (3538944 * k + 1267433) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 3802300) = 5308416 * k + 1901150 := by
    unfold C
    simp [show (10616832 * k + 3802300) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 1901150) = 2654208 * k + 950575 := by
    unfold C
    simp [show (5308416 * k + 1901150) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 950575) = 7962624 * k + 2851726 := by
    unfold C
    simp [show (2654208 * k + 950575) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 2851726) = 3981312 * k + 1425863 := by
    unfold C
    simp [show (7962624 * k + 2851726) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 1425863) = 11943936 * k + 4277590 := by
    unfold C
    simp [show (3981312 * k + 1425863) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 4277590) = 5971968 * k + 2138795 := by
    unfold C
    simp [show (11943936 * k + 4277590) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 2138795) = 17915904 * k + 6416386 := by
    unfold C
    simp [show (5971968 * k + 2138795) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 6416386) = 8957952 * k + 3208193 := by
    unfold C
    simp [show (17915904 * k + 6416386) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 3208193) = 26873856 * k + 9624580 := by
    unfold C
    simp [show (8957952 * k + 3208193) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 9624580) = 13436928 * k + 4812290 := by
    unfold C
    simp [show (26873856 * k + 9624580) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 4812290) = 6718464 * k + 2406145 := by
    unfold C
    simp [show (13436928 * k + 4812290) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 2406145) = 20155392 * k + 7218436 := by
    unfold C
    simp [show (6718464 * k + 2406145) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 7218436) = 10077696 * k + 3609218 := by
    unfold C
    simp [show (20155392 * k + 7218436) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 3609218) = 5038848 * k + 1804609 := by
    unfold C
    simp [show (10077696 * k + 3609218) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 1804609) = 15116544 * k + 5413828 := by
    unfold C
    simp [show (5038848 * k + 1804609) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 5413828) = 7558272 * k + 2706914 := by
    unfold C
    simp [show (15116544 * k + 5413828) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 2706914) = 3779136 * k + 1353457 := by
    unfold C
    simp [show (7558272 * k + 2706914) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 1353457) = 11337408 * k + 4060372 := by
    unfold C
    simp [show (3779136 * k + 1353457) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 4060372) = 5668704 * k + 2030186 := by
    unfold C
    simp [show (11337408 * k + 4060372) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 2030186) = 2834352 * k + 1015093 := by
    unfold C
    simp [show (5668704 * k + 2030186) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1015093) = 8503056 * k + 3045280 := by
    unfold C
    simp [show (2834352 * k + 1015093) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 3045280) = 4251528 * k + 1522640 := by
    unfold C
    simp [show (8503056 * k + 3045280) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 1522640) = 2125764 * k + 761320 := by
    unfold C
    simp [show (4251528 * k + 1522640) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 761320) = 1062882 * k + 380660 := by
    unfold C
    simp [show (2125764 * k + 761320) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 380660) = 531441 * k + 190330 := by
    unfold C
    simp [show (1062882 * k + 380660) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 375535) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 375535)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_375655 : ∀ k : Nat,
    iterate (1048576 * k + 375655) 32 = 531441 * k + 190391 ∧
      531441 * k + 190391 < 1048576 * k + 375655 := by
  intro k
  have h1 : C (1048576 * k + 375655) = 3145728 * k + 1126966 := by
    unfold C
    simp [show (1048576 * k + 375655) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1126966) = 1572864 * k + 563483 := by
    unfold C
    simp [show (3145728 * k + 1126966) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 563483) = 4718592 * k + 1690450 := by
    unfold C
    simp [show (1572864 * k + 563483) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1690450) = 2359296 * k + 845225 := by
    unfold C
    simp [show (4718592 * k + 1690450) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 845225) = 7077888 * k + 2535676 := by
    unfold C
    simp [show (2359296 * k + 845225) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 2535676) = 3538944 * k + 1267838 := by
    unfold C
    simp [show (7077888 * k + 2535676) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1267838) = 1769472 * k + 633919 := by
    unfold C
    simp [show (3538944 * k + 1267838) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 633919) = 5308416 * k + 1901758 := by
    unfold C
    simp [show (1769472 * k + 633919) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 1901758) = 2654208 * k + 950879 := by
    unfold C
    simp [show (5308416 * k + 1901758) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 950879) = 7962624 * k + 2852638 := by
    unfold C
    simp [show (2654208 * k + 950879) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 2852638) = 3981312 * k + 1426319 := by
    unfold C
    simp [show (7962624 * k + 2852638) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 1426319) = 11943936 * k + 4278958 := by
    unfold C
    simp [show (3981312 * k + 1426319) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 4278958) = 5971968 * k + 2139479 := by
    unfold C
    simp [show (11943936 * k + 4278958) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 2139479) = 17915904 * k + 6418438 := by
    unfold C
    simp [show (5971968 * k + 2139479) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 6418438) = 8957952 * k + 3209219 := by
    unfold C
    simp [show (17915904 * k + 6418438) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 3209219) = 26873856 * k + 9627658 := by
    unfold C
    simp [show (8957952 * k + 3209219) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 9627658) = 13436928 * k + 4813829 := by
    unfold C
    simp [show (26873856 * k + 9627658) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 4813829) = 40310784 * k + 14441488 := by
    unfold C
    simp [show (13436928 * k + 4813829) % 2 ≠ 0 by omega]
    omega
  have h19 : C (40310784 * k + 14441488) = 20155392 * k + 7220744 := by
    unfold C
    simp [show (40310784 * k + 14441488) % 2 = 0 by omega]
    omega
  have h20 : C (20155392 * k + 7220744) = 10077696 * k + 3610372 := by
    unfold C
    simp [show (20155392 * k + 7220744) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 3610372) = 5038848 * k + 1805186 := by
    unfold C
    simp [show (10077696 * k + 3610372) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 1805186) = 2519424 * k + 902593 := by
    unfold C
    simp [show (5038848 * k + 1805186) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 902593) = 7558272 * k + 2707780 := by
    unfold C
    simp [show (2519424 * k + 902593) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 2707780) = 3779136 * k + 1353890 := by
    unfold C
    simp [show (7558272 * k + 2707780) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 1353890) = 1889568 * k + 676945 := by
    unfold C
    simp [show (3779136 * k + 1353890) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 676945) = 5668704 * k + 2030836 := by
    unfold C
    simp [show (1889568 * k + 676945) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 2030836) = 2834352 * k + 1015418 := by
    unfold C
    simp [show (5668704 * k + 2030836) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1015418) = 1417176 * k + 507709 := by
    unfold C
    simp [show (2834352 * k + 1015418) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 507709) = 4251528 * k + 1523128 := by
    unfold C
    simp [show (1417176 * k + 507709) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 1523128) = 2125764 * k + 761564 := by
    unfold C
    simp [show (4251528 * k + 1523128) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 761564) = 1062882 * k + 380782 := by
    unfold C
    simp [show (2125764 * k + 761564) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 380782) = 531441 * k + 190391 := by
    unfold C
    simp [show (1062882 * k + 380782) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 375655) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 375655)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_376091 : ∀ k : Nat,
    iterate (1048576 * k + 376091) 32 = 531441 * k + 190612 ∧
      531441 * k + 190612 < 1048576 * k + 376091 := by
  intro k
  have h1 : C (1048576 * k + 376091) = 3145728 * k + 1128274 := by
    unfold C
    simp [show (1048576 * k + 376091) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1128274) = 1572864 * k + 564137 := by
    unfold C
    simp [show (3145728 * k + 1128274) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 564137) = 4718592 * k + 1692412 := by
    unfold C
    simp [show (1572864 * k + 564137) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1692412) = 2359296 * k + 846206 := by
    unfold C
    simp [show (4718592 * k + 1692412) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 846206) = 1179648 * k + 423103 := by
    unfold C
    simp [show (2359296 * k + 846206) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 423103) = 3538944 * k + 1269310 := by
    unfold C
    simp [show (1179648 * k + 423103) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 1269310) = 1769472 * k + 634655 := by
    unfold C
    simp [show (3538944 * k + 1269310) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 634655) = 5308416 * k + 1903966 := by
    unfold C
    simp [show (1769472 * k + 634655) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 1903966) = 2654208 * k + 951983 := by
    unfold C
    simp [show (5308416 * k + 1903966) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 951983) = 7962624 * k + 2855950 := by
    unfold C
    simp [show (2654208 * k + 951983) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 2855950) = 3981312 * k + 1427975 := by
    unfold C
    simp [show (7962624 * k + 2855950) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 1427975) = 11943936 * k + 4283926 := by
    unfold C
    simp [show (3981312 * k + 1427975) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 4283926) = 5971968 * k + 2141963 := by
    unfold C
    simp [show (11943936 * k + 4283926) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 2141963) = 17915904 * k + 6425890 := by
    unfold C
    simp [show (5971968 * k + 2141963) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 6425890) = 8957952 * k + 3212945 := by
    unfold C
    simp [show (17915904 * k + 6425890) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 3212945) = 26873856 * k + 9638836 := by
    unfold C
    simp [show (8957952 * k + 3212945) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 9638836) = 13436928 * k + 4819418 := by
    unfold C
    simp [show (26873856 * k + 9638836) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 4819418) = 6718464 * k + 2409709 := by
    unfold C
    simp [show (13436928 * k + 4819418) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 2409709) = 20155392 * k + 7229128 := by
    unfold C
    simp [show (6718464 * k + 2409709) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 7229128) = 10077696 * k + 3614564 := by
    unfold C
    simp [show (20155392 * k + 7229128) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 3614564) = 5038848 * k + 1807282 := by
    unfold C
    simp [show (10077696 * k + 3614564) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 1807282) = 2519424 * k + 903641 := by
    unfold C
    simp [show (5038848 * k + 1807282) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 903641) = 7558272 * k + 2710924 := by
    unfold C
    simp [show (2519424 * k + 903641) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 2710924) = 3779136 * k + 1355462 := by
    unfold C
    simp [show (7558272 * k + 2710924) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 1355462) = 1889568 * k + 677731 := by
    unfold C
    simp [show (3779136 * k + 1355462) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 677731) = 5668704 * k + 2033194 := by
    unfold C
    simp [show (1889568 * k + 677731) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 2033194) = 2834352 * k + 1016597 := by
    unfold C
    simp [show (5668704 * k + 2033194) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1016597) = 8503056 * k + 3049792 := by
    unfold C
    simp [show (2834352 * k + 1016597) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 3049792) = 4251528 * k + 1524896 := by
    unfold C
    simp [show (8503056 * k + 3049792) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 1524896) = 2125764 * k + 762448 := by
    unfold C
    simp [show (4251528 * k + 1524896) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 762448) = 1062882 * k + 381224 := by
    unfold C
    simp [show (2125764 * k + 762448) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 381224) = 531441 * k + 190612 := by
    unfold C
    simp [show (1062882 * k + 381224) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 376091) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 376091)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

end CollatzM20Shard047
