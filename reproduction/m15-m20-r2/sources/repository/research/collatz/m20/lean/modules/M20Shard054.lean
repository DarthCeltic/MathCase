import Mathlib.Data.Nat.Prime.Basic

namespace CollatzM20Shard054

def C (n : Nat) : Nat := if n % 2 = 0 then n / 2 else 3 * n + 1

def iterate (n t : Nat) : Nat := Nat.rec n (fun _ previous => C previous) t

theorem descent_mod1048576_425087 : ∀ k : Nat,
    iterate (1048576 * k + 425087) 32 = 531441 * k + 215444 ∧
      531441 * k + 215444 < 1048576 * k + 425087 := by
  intro k
  have h1 : C (1048576 * k + 425087) = 3145728 * k + 1275262 := by
    unfold C
    simp [show (1048576 * k + 425087) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1275262) = 1572864 * k + 637631 := by
    unfold C
    simp [show (3145728 * k + 1275262) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 637631) = 4718592 * k + 1912894 := by
    unfold C
    simp [show (1572864 * k + 637631) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1912894) = 2359296 * k + 956447 := by
    unfold C
    simp [show (4718592 * k + 1912894) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 956447) = 7077888 * k + 2869342 := by
    unfold C
    simp [show (2359296 * k + 956447) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 2869342) = 3538944 * k + 1434671 := by
    unfold C
    simp [show (7077888 * k + 2869342) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1434671) = 10616832 * k + 4304014 := by
    unfold C
    simp [show (3538944 * k + 1434671) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 4304014) = 5308416 * k + 2152007 := by
    unfold C
    simp [show (10616832 * k + 4304014) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 2152007) = 15925248 * k + 6456022 := by
    unfold C
    simp [show (5308416 * k + 2152007) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 6456022) = 7962624 * k + 3228011 := by
    unfold C
    simp [show (15925248 * k + 6456022) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 3228011) = 23887872 * k + 9684034 := by
    unfold C
    simp [show (7962624 * k + 3228011) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 9684034) = 11943936 * k + 4842017 := by
    unfold C
    simp [show (23887872 * k + 9684034) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 4842017) = 35831808 * k + 14526052 := by
    unfold C
    simp [show (11943936 * k + 4842017) % 2 ≠ 0 by omega]
    omega
  have h14 : C (35831808 * k + 14526052) = 17915904 * k + 7263026 := by
    unfold C
    simp [show (35831808 * k + 14526052) % 2 = 0 by omega]
    omega
  have h15 : C (17915904 * k + 7263026) = 8957952 * k + 3631513 := by
    unfold C
    simp [show (17915904 * k + 7263026) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 3631513) = 26873856 * k + 10894540 := by
    unfold C
    simp [show (8957952 * k + 3631513) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 10894540) = 13436928 * k + 5447270 := by
    unfold C
    simp [show (26873856 * k + 10894540) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 5447270) = 6718464 * k + 2723635 := by
    unfold C
    simp [show (13436928 * k + 5447270) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 2723635) = 20155392 * k + 8170906 := by
    unfold C
    simp [show (6718464 * k + 2723635) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 8170906) = 10077696 * k + 4085453 := by
    unfold C
    simp [show (20155392 * k + 8170906) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 4085453) = 30233088 * k + 12256360 := by
    unfold C
    simp [show (10077696 * k + 4085453) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 12256360) = 15116544 * k + 6128180 := by
    unfold C
    simp [show (30233088 * k + 12256360) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 6128180) = 7558272 * k + 3064090 := by
    unfold C
    simp [show (15116544 * k + 6128180) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 3064090) = 3779136 * k + 1532045 := by
    unfold C
    simp [show (7558272 * k + 3064090) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 1532045) = 11337408 * k + 4596136 := by
    unfold C
    simp [show (3779136 * k + 1532045) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 4596136) = 5668704 * k + 2298068 := by
    unfold C
    simp [show (11337408 * k + 4596136) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 2298068) = 2834352 * k + 1149034 := by
    unfold C
    simp [show (5668704 * k + 2298068) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1149034) = 1417176 * k + 574517 := by
    unfold C
    simp [show (2834352 * k + 1149034) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 574517) = 4251528 * k + 1723552 := by
    unfold C
    simp [show (1417176 * k + 574517) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 1723552) = 2125764 * k + 861776 := by
    unfold C
    simp [show (4251528 * k + 1723552) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 861776) = 1062882 * k + 430888 := by
    unfold C
    simp [show (2125764 * k + 861776) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 430888) = 531441 * k + 215444 := by
    unfold C
    simp [show (1062882 * k + 430888) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 425087) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 425087)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_425723 : ∀ k : Nat,
    iterate (1048576 * k + 425723) 32 = 531441 * k + 215767 ∧
      531441 * k + 215767 < 1048576 * k + 425723 := by
  intro k
  have h1 : C (1048576 * k + 425723) = 3145728 * k + 1277170 := by
    unfold C
    simp [show (1048576 * k + 425723) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1277170) = 1572864 * k + 638585 := by
    unfold C
    simp [show (3145728 * k + 1277170) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 638585) = 4718592 * k + 1915756 := by
    unfold C
    simp [show (1572864 * k + 638585) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1915756) = 2359296 * k + 957878 := by
    unfold C
    simp [show (4718592 * k + 1915756) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 957878) = 1179648 * k + 478939 := by
    unfold C
    simp [show (2359296 * k + 957878) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 478939) = 3538944 * k + 1436818 := by
    unfold C
    simp [show (1179648 * k + 478939) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 1436818) = 1769472 * k + 718409 := by
    unfold C
    simp [show (3538944 * k + 1436818) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 718409) = 5308416 * k + 2155228 := by
    unfold C
    simp [show (1769472 * k + 718409) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 2155228) = 2654208 * k + 1077614 := by
    unfold C
    simp [show (5308416 * k + 2155228) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1077614) = 1327104 * k + 538807 := by
    unfold C
    simp [show (2654208 * k + 1077614) % 2 = 0 by omega]
    omega
  have h11 : C (1327104 * k + 538807) = 3981312 * k + 1616422 := by
    unfold C
    simp [show (1327104 * k + 538807) % 2 ≠ 0 by omega]
    omega
  have h12 : C (3981312 * k + 1616422) = 1990656 * k + 808211 := by
    unfold C
    simp [show (3981312 * k + 1616422) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 808211) = 5971968 * k + 2424634 := by
    unfold C
    simp [show (1990656 * k + 808211) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 2424634) = 2985984 * k + 1212317 := by
    unfold C
    simp [show (5971968 * k + 2424634) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1212317) = 8957952 * k + 3636952 := by
    unfold C
    simp [show (2985984 * k + 1212317) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 3636952) = 4478976 * k + 1818476 := by
    unfold C
    simp [show (8957952 * k + 3636952) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 1818476) = 2239488 * k + 909238 := by
    unfold C
    simp [show (4478976 * k + 1818476) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 909238) = 1119744 * k + 454619 := by
    unfold C
    simp [show (2239488 * k + 909238) % 2 = 0 by omega]
    omega
  have h19 : C (1119744 * k + 454619) = 3359232 * k + 1363858 := by
    unfold C
    simp [show (1119744 * k + 454619) % 2 ≠ 0 by omega]
    omega
  have h20 : C (3359232 * k + 1363858) = 1679616 * k + 681929 := by
    unfold C
    simp [show (3359232 * k + 1363858) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 681929) = 5038848 * k + 2045788 := by
    unfold C
    simp [show (1679616 * k + 681929) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 2045788) = 2519424 * k + 1022894 := by
    unfold C
    simp [show (5038848 * k + 2045788) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1022894) = 1259712 * k + 511447 := by
    unfold C
    simp [show (2519424 * k + 1022894) % 2 = 0 by omega]
    omega
  have h24 : C (1259712 * k + 511447) = 3779136 * k + 1534342 := by
    unfold C
    simp [show (1259712 * k + 511447) % 2 ≠ 0 by omega]
    omega
  have h25 : C (3779136 * k + 1534342) = 1889568 * k + 767171 := by
    unfold C
    simp [show (3779136 * k + 1534342) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 767171) = 5668704 * k + 2301514 := by
    unfold C
    simp [show (1889568 * k + 767171) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 2301514) = 2834352 * k + 1150757 := by
    unfold C
    simp [show (5668704 * k + 2301514) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1150757) = 8503056 * k + 3452272 := by
    unfold C
    simp [show (2834352 * k + 1150757) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 3452272) = 4251528 * k + 1726136 := by
    unfold C
    simp [show (8503056 * k + 3452272) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 1726136) = 2125764 * k + 863068 := by
    unfold C
    simp [show (4251528 * k + 1726136) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 863068) = 1062882 * k + 431534 := by
    unfold C
    simp [show (2125764 * k + 863068) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 431534) = 531441 * k + 215767 := by
    unfold C
    simp [show (1062882 * k + 431534) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 425723) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 425723)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_426055 : ∀ k : Nat,
    iterate (1048576 * k + 426055) 32 = 531441 * k + 215935 ∧
      531441 * k + 215935 < 1048576 * k + 426055 := by
  intro k
  have h1 : C (1048576 * k + 426055) = 3145728 * k + 1278166 := by
    unfold C
    simp [show (1048576 * k + 426055) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1278166) = 1572864 * k + 639083 := by
    unfold C
    simp [show (3145728 * k + 1278166) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 639083) = 4718592 * k + 1917250 := by
    unfold C
    simp [show (1572864 * k + 639083) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1917250) = 2359296 * k + 958625 := by
    unfold C
    simp [show (4718592 * k + 1917250) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 958625) = 7077888 * k + 2875876 := by
    unfold C
    simp [show (2359296 * k + 958625) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 2875876) = 3538944 * k + 1437938 := by
    unfold C
    simp [show (7077888 * k + 2875876) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1437938) = 1769472 * k + 718969 := by
    unfold C
    simp [show (3538944 * k + 1437938) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 718969) = 5308416 * k + 2156908 := by
    unfold C
    simp [show (1769472 * k + 718969) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 2156908) = 2654208 * k + 1078454 := by
    unfold C
    simp [show (5308416 * k + 2156908) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1078454) = 1327104 * k + 539227 := by
    unfold C
    simp [show (2654208 * k + 1078454) % 2 = 0 by omega]
    omega
  have h11 : C (1327104 * k + 539227) = 3981312 * k + 1617682 := by
    unfold C
    simp [show (1327104 * k + 539227) % 2 ≠ 0 by omega]
    omega
  have h12 : C (3981312 * k + 1617682) = 1990656 * k + 808841 := by
    unfold C
    simp [show (3981312 * k + 1617682) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 808841) = 5971968 * k + 2426524 := by
    unfold C
    simp [show (1990656 * k + 808841) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 2426524) = 2985984 * k + 1213262 := by
    unfold C
    simp [show (5971968 * k + 2426524) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1213262) = 1492992 * k + 606631 := by
    unfold C
    simp [show (2985984 * k + 1213262) % 2 = 0 by omega]
    omega
  have h16 : C (1492992 * k + 606631) = 4478976 * k + 1819894 := by
    unfold C
    simp [show (1492992 * k + 606631) % 2 ≠ 0 by omega]
    omega
  have h17 : C (4478976 * k + 1819894) = 2239488 * k + 909947 := by
    unfold C
    simp [show (4478976 * k + 1819894) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 909947) = 6718464 * k + 2729842 := by
    unfold C
    simp [show (2239488 * k + 909947) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 2729842) = 3359232 * k + 1364921 := by
    unfold C
    simp [show (6718464 * k + 2729842) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 1364921) = 10077696 * k + 4094764 := by
    unfold C
    simp [show (3359232 * k + 1364921) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 4094764) = 5038848 * k + 2047382 := by
    unfold C
    simp [show (10077696 * k + 4094764) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 2047382) = 2519424 * k + 1023691 := by
    unfold C
    simp [show (5038848 * k + 2047382) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1023691) = 7558272 * k + 3071074 := by
    unfold C
    simp [show (2519424 * k + 1023691) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 3071074) = 3779136 * k + 1535537 := by
    unfold C
    simp [show (7558272 * k + 3071074) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 1535537) = 11337408 * k + 4606612 := by
    unfold C
    simp [show (3779136 * k + 1535537) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 4606612) = 5668704 * k + 2303306 := by
    unfold C
    simp [show (11337408 * k + 4606612) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 2303306) = 2834352 * k + 1151653 := by
    unfold C
    simp [show (5668704 * k + 2303306) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1151653) = 8503056 * k + 3454960 := by
    unfold C
    simp [show (2834352 * k + 1151653) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 3454960) = 4251528 * k + 1727480 := by
    unfold C
    simp [show (8503056 * k + 3454960) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 1727480) = 2125764 * k + 863740 := by
    unfold C
    simp [show (4251528 * k + 1727480) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 863740) = 1062882 * k + 431870 := by
    unfold C
    simp [show (2125764 * k + 863740) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 431870) = 531441 * k + 215935 := by
    unfold C
    simp [show (1062882 * k + 431870) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 426055) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 426055)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_426087 : ∀ k : Nat,
    iterate (1048576 * k + 426087) 32 = 531441 * k + 215951 ∧
      531441 * k + 215951 < 1048576 * k + 426087 := by
  intro k
  have h1 : C (1048576 * k + 426087) = 3145728 * k + 1278262 := by
    unfold C
    simp [show (1048576 * k + 426087) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1278262) = 1572864 * k + 639131 := by
    unfold C
    simp [show (3145728 * k + 1278262) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 639131) = 4718592 * k + 1917394 := by
    unfold C
    simp [show (1572864 * k + 639131) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1917394) = 2359296 * k + 958697 := by
    unfold C
    simp [show (4718592 * k + 1917394) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 958697) = 7077888 * k + 2876092 := by
    unfold C
    simp [show (2359296 * k + 958697) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 2876092) = 3538944 * k + 1438046 := by
    unfold C
    simp [show (7077888 * k + 2876092) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1438046) = 1769472 * k + 719023 := by
    unfold C
    simp [show (3538944 * k + 1438046) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 719023) = 5308416 * k + 2157070 := by
    unfold C
    simp [show (1769472 * k + 719023) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 2157070) = 2654208 * k + 1078535 := by
    unfold C
    simp [show (5308416 * k + 2157070) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1078535) = 7962624 * k + 3235606 := by
    unfold C
    simp [show (2654208 * k + 1078535) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 3235606) = 3981312 * k + 1617803 := by
    unfold C
    simp [show (7962624 * k + 3235606) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 1617803) = 11943936 * k + 4853410 := by
    unfold C
    simp [show (3981312 * k + 1617803) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 4853410) = 5971968 * k + 2426705 := by
    unfold C
    simp [show (11943936 * k + 4853410) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 2426705) = 17915904 * k + 7280116 := by
    unfold C
    simp [show (5971968 * k + 2426705) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 7280116) = 8957952 * k + 3640058 := by
    unfold C
    simp [show (17915904 * k + 7280116) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 3640058) = 4478976 * k + 1820029 := by
    unfold C
    simp [show (8957952 * k + 3640058) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 1820029) = 13436928 * k + 5460088 := by
    unfold C
    simp [show (4478976 * k + 1820029) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 5460088) = 6718464 * k + 2730044 := by
    unfold C
    simp [show (13436928 * k + 5460088) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 2730044) = 3359232 * k + 1365022 := by
    unfold C
    simp [show (6718464 * k + 2730044) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 1365022) = 1679616 * k + 682511 := by
    unfold C
    simp [show (3359232 * k + 1365022) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 682511) = 5038848 * k + 2047534 := by
    unfold C
    simp [show (1679616 * k + 682511) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 2047534) = 2519424 * k + 1023767 := by
    unfold C
    simp [show (5038848 * k + 2047534) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1023767) = 7558272 * k + 3071302 := by
    unfold C
    simp [show (2519424 * k + 1023767) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 3071302) = 3779136 * k + 1535651 := by
    unfold C
    simp [show (7558272 * k + 3071302) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 1535651) = 11337408 * k + 4606954 := by
    unfold C
    simp [show (3779136 * k + 1535651) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 4606954) = 5668704 * k + 2303477 := by
    unfold C
    simp [show (11337408 * k + 4606954) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 2303477) = 17006112 * k + 6910432 := by
    unfold C
    simp [show (5668704 * k + 2303477) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 6910432) = 8503056 * k + 3455216 := by
    unfold C
    simp [show (17006112 * k + 6910432) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 3455216) = 4251528 * k + 1727608 := by
    unfold C
    simp [show (8503056 * k + 3455216) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 1727608) = 2125764 * k + 863804 := by
    unfold C
    simp [show (4251528 * k + 1727608) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 863804) = 1062882 * k + 431902 := by
    unfold C
    simp [show (2125764 * k + 863804) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 431902) = 531441 * k + 215951 := by
    unfold C
    simp [show (1062882 * k + 431902) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 426087) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 426087)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_426975 : ∀ k : Nat,
    iterate (1048576 * k + 426975) 32 = 531441 * k + 216401 ∧
      531441 * k + 216401 < 1048576 * k + 426975 := by
  intro k
  have h1 : C (1048576 * k + 426975) = 3145728 * k + 1280926 := by
    unfold C
    simp [show (1048576 * k + 426975) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1280926) = 1572864 * k + 640463 := by
    unfold C
    simp [show (3145728 * k + 1280926) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 640463) = 4718592 * k + 1921390 := by
    unfold C
    simp [show (1572864 * k + 640463) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1921390) = 2359296 * k + 960695 := by
    unfold C
    simp [show (4718592 * k + 1921390) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 960695) = 7077888 * k + 2882086 := by
    unfold C
    simp [show (2359296 * k + 960695) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 2882086) = 3538944 * k + 1441043 := by
    unfold C
    simp [show (7077888 * k + 2882086) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1441043) = 10616832 * k + 4323130 := by
    unfold C
    simp [show (3538944 * k + 1441043) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 4323130) = 5308416 * k + 2161565 := by
    unfold C
    simp [show (10616832 * k + 4323130) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 2161565) = 15925248 * k + 6484696 := by
    unfold C
    simp [show (5308416 * k + 2161565) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 6484696) = 7962624 * k + 3242348 := by
    unfold C
    simp [show (15925248 * k + 6484696) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 3242348) = 3981312 * k + 1621174 := by
    unfold C
    simp [show (7962624 * k + 3242348) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 1621174) = 1990656 * k + 810587 := by
    unfold C
    simp [show (3981312 * k + 1621174) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 810587) = 5971968 * k + 2431762 := by
    unfold C
    simp [show (1990656 * k + 810587) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 2431762) = 2985984 * k + 1215881 := by
    unfold C
    simp [show (5971968 * k + 2431762) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1215881) = 8957952 * k + 3647644 := by
    unfold C
    simp [show (2985984 * k + 1215881) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 3647644) = 4478976 * k + 1823822 := by
    unfold C
    simp [show (8957952 * k + 3647644) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 1823822) = 2239488 * k + 911911 := by
    unfold C
    simp [show (4478976 * k + 1823822) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 911911) = 6718464 * k + 2735734 := by
    unfold C
    simp [show (2239488 * k + 911911) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 2735734) = 3359232 * k + 1367867 := by
    unfold C
    simp [show (6718464 * k + 2735734) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 1367867) = 10077696 * k + 4103602 := by
    unfold C
    simp [show (3359232 * k + 1367867) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 4103602) = 5038848 * k + 2051801 := by
    unfold C
    simp [show (10077696 * k + 4103602) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 2051801) = 15116544 * k + 6155404 := by
    unfold C
    simp [show (5038848 * k + 2051801) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 6155404) = 7558272 * k + 3077702 := by
    unfold C
    simp [show (15116544 * k + 6155404) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 3077702) = 3779136 * k + 1538851 := by
    unfold C
    simp [show (7558272 * k + 3077702) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 1538851) = 11337408 * k + 4616554 := by
    unfold C
    simp [show (3779136 * k + 1538851) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 4616554) = 5668704 * k + 2308277 := by
    unfold C
    simp [show (11337408 * k + 4616554) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 2308277) = 17006112 * k + 6924832 := by
    unfold C
    simp [show (5668704 * k + 2308277) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 6924832) = 8503056 * k + 3462416 := by
    unfold C
    simp [show (17006112 * k + 6924832) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 3462416) = 4251528 * k + 1731208 := by
    unfold C
    simp [show (8503056 * k + 3462416) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 1731208) = 2125764 * k + 865604 := by
    unfold C
    simp [show (4251528 * k + 1731208) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 865604) = 1062882 * k + 432802 := by
    unfold C
    simp [show (2125764 * k + 865604) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 432802) = 531441 * k + 216401 := by
    unfold C
    simp [show (1062882 * k + 432802) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 426975) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 426975)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_427099 : ∀ k : Nat,
    iterate (1048576 * k + 427099) 32 = 531441 * k + 216464 ∧
      531441 * k + 216464 < 1048576 * k + 427099 := by
  intro k
  have h1 : C (1048576 * k + 427099) = 3145728 * k + 1281298 := by
    unfold C
    simp [show (1048576 * k + 427099) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1281298) = 1572864 * k + 640649 := by
    unfold C
    simp [show (3145728 * k + 1281298) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 640649) = 4718592 * k + 1921948 := by
    unfold C
    simp [show (1572864 * k + 640649) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1921948) = 2359296 * k + 960974 := by
    unfold C
    simp [show (4718592 * k + 1921948) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 960974) = 1179648 * k + 480487 := by
    unfold C
    simp [show (2359296 * k + 960974) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 480487) = 3538944 * k + 1441462 := by
    unfold C
    simp [show (1179648 * k + 480487) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 1441462) = 1769472 * k + 720731 := by
    unfold C
    simp [show (3538944 * k + 1441462) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 720731) = 5308416 * k + 2162194 := by
    unfold C
    simp [show (1769472 * k + 720731) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 2162194) = 2654208 * k + 1081097 := by
    unfold C
    simp [show (5308416 * k + 2162194) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1081097) = 7962624 * k + 3243292 := by
    unfold C
    simp [show (2654208 * k + 1081097) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 3243292) = 3981312 * k + 1621646 := by
    unfold C
    simp [show (7962624 * k + 3243292) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 1621646) = 1990656 * k + 810823 := by
    unfold C
    simp [show (3981312 * k + 1621646) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 810823) = 5971968 * k + 2432470 := by
    unfold C
    simp [show (1990656 * k + 810823) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 2432470) = 2985984 * k + 1216235 := by
    unfold C
    simp [show (5971968 * k + 2432470) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1216235) = 8957952 * k + 3648706 := by
    unfold C
    simp [show (2985984 * k + 1216235) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 3648706) = 4478976 * k + 1824353 := by
    unfold C
    simp [show (8957952 * k + 3648706) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 1824353) = 13436928 * k + 5473060 := by
    unfold C
    simp [show (4478976 * k + 1824353) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 5473060) = 6718464 * k + 2736530 := by
    unfold C
    simp [show (13436928 * k + 5473060) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 2736530) = 3359232 * k + 1368265 := by
    unfold C
    simp [show (6718464 * k + 2736530) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 1368265) = 10077696 * k + 4104796 := by
    unfold C
    simp [show (3359232 * k + 1368265) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 4104796) = 5038848 * k + 2052398 := by
    unfold C
    simp [show (10077696 * k + 4104796) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 2052398) = 2519424 * k + 1026199 := by
    unfold C
    simp [show (5038848 * k + 2052398) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1026199) = 7558272 * k + 3078598 := by
    unfold C
    simp [show (2519424 * k + 1026199) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 3078598) = 3779136 * k + 1539299 := by
    unfold C
    simp [show (7558272 * k + 3078598) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 1539299) = 11337408 * k + 4617898 := by
    unfold C
    simp [show (3779136 * k + 1539299) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 4617898) = 5668704 * k + 2308949 := by
    unfold C
    simp [show (11337408 * k + 4617898) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 2308949) = 17006112 * k + 6926848 := by
    unfold C
    simp [show (5668704 * k + 2308949) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 6926848) = 8503056 * k + 3463424 := by
    unfold C
    simp [show (17006112 * k + 6926848) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 3463424) = 4251528 * k + 1731712 := by
    unfold C
    simp [show (8503056 * k + 3463424) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 1731712) = 2125764 * k + 865856 := by
    unfold C
    simp [show (4251528 * k + 1731712) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 865856) = 1062882 * k + 432928 := by
    unfold C
    simp [show (2125764 * k + 865856) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 432928) = 531441 * k + 216464 := by
    unfold C
    simp [show (1062882 * k + 432928) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 427099) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 427099)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_427111 : ∀ k : Nat,
    iterate (1048576 * k + 427111) 32 = 531441 * k + 216470 ∧
      531441 * k + 216470 < 1048576 * k + 427111 := by
  intro k
  have h1 : C (1048576 * k + 427111) = 3145728 * k + 1281334 := by
    unfold C
    simp [show (1048576 * k + 427111) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1281334) = 1572864 * k + 640667 := by
    unfold C
    simp [show (3145728 * k + 1281334) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 640667) = 4718592 * k + 1922002 := by
    unfold C
    simp [show (1572864 * k + 640667) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1922002) = 2359296 * k + 961001 := by
    unfold C
    simp [show (4718592 * k + 1922002) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 961001) = 7077888 * k + 2883004 := by
    unfold C
    simp [show (2359296 * k + 961001) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 2883004) = 3538944 * k + 1441502 := by
    unfold C
    simp [show (7077888 * k + 2883004) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1441502) = 1769472 * k + 720751 := by
    unfold C
    simp [show (3538944 * k + 1441502) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 720751) = 5308416 * k + 2162254 := by
    unfold C
    simp [show (1769472 * k + 720751) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 2162254) = 2654208 * k + 1081127 := by
    unfold C
    simp [show (5308416 * k + 2162254) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1081127) = 7962624 * k + 3243382 := by
    unfold C
    simp [show (2654208 * k + 1081127) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 3243382) = 3981312 * k + 1621691 := by
    unfold C
    simp [show (7962624 * k + 3243382) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 1621691) = 11943936 * k + 4865074 := by
    unfold C
    simp [show (3981312 * k + 1621691) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 4865074) = 5971968 * k + 2432537 := by
    unfold C
    simp [show (11943936 * k + 4865074) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 2432537) = 17915904 * k + 7297612 := by
    unfold C
    simp [show (5971968 * k + 2432537) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 7297612) = 8957952 * k + 3648806 := by
    unfold C
    simp [show (17915904 * k + 7297612) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 3648806) = 4478976 * k + 1824403 := by
    unfold C
    simp [show (8957952 * k + 3648806) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 1824403) = 13436928 * k + 5473210 := by
    unfold C
    simp [show (4478976 * k + 1824403) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 5473210) = 6718464 * k + 2736605 := by
    unfold C
    simp [show (13436928 * k + 5473210) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 2736605) = 20155392 * k + 8209816 := by
    unfold C
    simp [show (6718464 * k + 2736605) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 8209816) = 10077696 * k + 4104908 := by
    unfold C
    simp [show (20155392 * k + 8209816) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 4104908) = 5038848 * k + 2052454 := by
    unfold C
    simp [show (10077696 * k + 4104908) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 2052454) = 2519424 * k + 1026227 := by
    unfold C
    simp [show (5038848 * k + 2052454) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1026227) = 7558272 * k + 3078682 := by
    unfold C
    simp [show (2519424 * k + 1026227) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 3078682) = 3779136 * k + 1539341 := by
    unfold C
    simp [show (7558272 * k + 3078682) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 1539341) = 11337408 * k + 4618024 := by
    unfold C
    simp [show (3779136 * k + 1539341) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 4618024) = 5668704 * k + 2309012 := by
    unfold C
    simp [show (11337408 * k + 4618024) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 2309012) = 2834352 * k + 1154506 := by
    unfold C
    simp [show (5668704 * k + 2309012) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1154506) = 1417176 * k + 577253 := by
    unfold C
    simp [show (2834352 * k + 1154506) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 577253) = 4251528 * k + 1731760 := by
    unfold C
    simp [show (1417176 * k + 577253) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 1731760) = 2125764 * k + 865880 := by
    unfold C
    simp [show (4251528 * k + 1731760) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 865880) = 1062882 * k + 432940 := by
    unfold C
    simp [show (2125764 * k + 865880) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 432940) = 531441 * k + 216470 := by
    unfold C
    simp [show (1062882 * k + 432940) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 427111) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 427111)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_427879 : ∀ k : Nat,
    iterate (1048576 * k + 427879) 32 = 531441 * k + 216859 ∧
      531441 * k + 216859 < 1048576 * k + 427879 := by
  intro k
  have h1 : C (1048576 * k + 427879) = 3145728 * k + 1283638 := by
    unfold C
    simp [show (1048576 * k + 427879) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1283638) = 1572864 * k + 641819 := by
    unfold C
    simp [show (3145728 * k + 1283638) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 641819) = 4718592 * k + 1925458 := by
    unfold C
    simp [show (1572864 * k + 641819) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1925458) = 2359296 * k + 962729 := by
    unfold C
    simp [show (4718592 * k + 1925458) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 962729) = 7077888 * k + 2888188 := by
    unfold C
    simp [show (2359296 * k + 962729) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 2888188) = 3538944 * k + 1444094 := by
    unfold C
    simp [show (7077888 * k + 2888188) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1444094) = 1769472 * k + 722047 := by
    unfold C
    simp [show (3538944 * k + 1444094) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 722047) = 5308416 * k + 2166142 := by
    unfold C
    simp [show (1769472 * k + 722047) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 2166142) = 2654208 * k + 1083071 := by
    unfold C
    simp [show (5308416 * k + 2166142) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1083071) = 7962624 * k + 3249214 := by
    unfold C
    simp [show (2654208 * k + 1083071) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 3249214) = 3981312 * k + 1624607 := by
    unfold C
    simp [show (7962624 * k + 3249214) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 1624607) = 11943936 * k + 4873822 := by
    unfold C
    simp [show (3981312 * k + 1624607) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 4873822) = 5971968 * k + 2436911 := by
    unfold C
    simp [show (11943936 * k + 4873822) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 2436911) = 17915904 * k + 7310734 := by
    unfold C
    simp [show (5971968 * k + 2436911) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 7310734) = 8957952 * k + 3655367 := by
    unfold C
    simp [show (17915904 * k + 7310734) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 3655367) = 26873856 * k + 10966102 := by
    unfold C
    simp [show (8957952 * k + 3655367) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 10966102) = 13436928 * k + 5483051 := by
    unfold C
    simp [show (26873856 * k + 10966102) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 5483051) = 40310784 * k + 16449154 := by
    unfold C
    simp [show (13436928 * k + 5483051) % 2 ≠ 0 by omega]
    omega
  have h19 : C (40310784 * k + 16449154) = 20155392 * k + 8224577 := by
    unfold C
    simp [show (40310784 * k + 16449154) % 2 = 0 by omega]
    omega
  have h20 : C (20155392 * k + 8224577) = 60466176 * k + 24673732 := by
    unfold C
    simp [show (20155392 * k + 8224577) % 2 ≠ 0 by omega]
    omega
  have h21 : C (60466176 * k + 24673732) = 30233088 * k + 12336866 := by
    unfold C
    simp [show (60466176 * k + 24673732) % 2 = 0 by omega]
    omega
  have h22 : C (30233088 * k + 12336866) = 15116544 * k + 6168433 := by
    unfold C
    simp [show (30233088 * k + 12336866) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 6168433) = 45349632 * k + 18505300 := by
    unfold C
    simp [show (15116544 * k + 6168433) % 2 ≠ 0 by omega]
    omega
  have h24 : C (45349632 * k + 18505300) = 22674816 * k + 9252650 := by
    unfold C
    simp [show (45349632 * k + 18505300) % 2 = 0 by omega]
    omega
  have h25 : C (22674816 * k + 9252650) = 11337408 * k + 4626325 := by
    unfold C
    simp [show (22674816 * k + 9252650) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 4626325) = 34012224 * k + 13878976 := by
    unfold C
    simp [show (11337408 * k + 4626325) % 2 ≠ 0 by omega]
    omega
  have h27 : C (34012224 * k + 13878976) = 17006112 * k + 6939488 := by
    unfold C
    simp [show (34012224 * k + 13878976) % 2 = 0 by omega]
    omega
  have h28 : C (17006112 * k + 6939488) = 8503056 * k + 3469744 := by
    unfold C
    simp [show (17006112 * k + 6939488) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 3469744) = 4251528 * k + 1734872 := by
    unfold C
    simp [show (8503056 * k + 3469744) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 1734872) = 2125764 * k + 867436 := by
    unfold C
    simp [show (4251528 * k + 1734872) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 867436) = 1062882 * k + 433718 := by
    unfold C
    simp [show (2125764 * k + 867436) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 433718) = 531441 * k + 216859 := by
    unfold C
    simp [show (1062882 * k + 433718) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 427879) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 427879)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_428123 : ∀ k : Nat,
    iterate (1048576 * k + 428123) 32 = 531441 * k + 216983 ∧
      531441 * k + 216983 < 1048576 * k + 428123 := by
  intro k
  have h1 : C (1048576 * k + 428123) = 3145728 * k + 1284370 := by
    unfold C
    simp [show (1048576 * k + 428123) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1284370) = 1572864 * k + 642185 := by
    unfold C
    simp [show (3145728 * k + 1284370) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 642185) = 4718592 * k + 1926556 := by
    unfold C
    simp [show (1572864 * k + 642185) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1926556) = 2359296 * k + 963278 := by
    unfold C
    simp [show (4718592 * k + 1926556) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 963278) = 1179648 * k + 481639 := by
    unfold C
    simp [show (2359296 * k + 963278) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 481639) = 3538944 * k + 1444918 := by
    unfold C
    simp [show (1179648 * k + 481639) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 1444918) = 1769472 * k + 722459 := by
    unfold C
    simp [show (3538944 * k + 1444918) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 722459) = 5308416 * k + 2167378 := by
    unfold C
    simp [show (1769472 * k + 722459) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 2167378) = 2654208 * k + 1083689 := by
    unfold C
    simp [show (5308416 * k + 2167378) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1083689) = 7962624 * k + 3251068 := by
    unfold C
    simp [show (2654208 * k + 1083689) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 3251068) = 3981312 * k + 1625534 := by
    unfold C
    simp [show (7962624 * k + 3251068) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 1625534) = 1990656 * k + 812767 := by
    unfold C
    simp [show (3981312 * k + 1625534) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 812767) = 5971968 * k + 2438302 := by
    unfold C
    simp [show (1990656 * k + 812767) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 2438302) = 2985984 * k + 1219151 := by
    unfold C
    simp [show (5971968 * k + 2438302) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1219151) = 8957952 * k + 3657454 := by
    unfold C
    simp [show (2985984 * k + 1219151) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 3657454) = 4478976 * k + 1828727 := by
    unfold C
    simp [show (8957952 * k + 3657454) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 1828727) = 13436928 * k + 5486182 := by
    unfold C
    simp [show (4478976 * k + 1828727) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 5486182) = 6718464 * k + 2743091 := by
    unfold C
    simp [show (13436928 * k + 5486182) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 2743091) = 20155392 * k + 8229274 := by
    unfold C
    simp [show (6718464 * k + 2743091) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 8229274) = 10077696 * k + 4114637 := by
    unfold C
    simp [show (20155392 * k + 8229274) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 4114637) = 30233088 * k + 12343912 := by
    unfold C
    simp [show (10077696 * k + 4114637) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 12343912) = 15116544 * k + 6171956 := by
    unfold C
    simp [show (30233088 * k + 12343912) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 6171956) = 7558272 * k + 3085978 := by
    unfold C
    simp [show (15116544 * k + 6171956) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 3085978) = 3779136 * k + 1542989 := by
    unfold C
    simp [show (7558272 * k + 3085978) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 1542989) = 11337408 * k + 4628968 := by
    unfold C
    simp [show (3779136 * k + 1542989) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 4628968) = 5668704 * k + 2314484 := by
    unfold C
    simp [show (11337408 * k + 4628968) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 2314484) = 2834352 * k + 1157242 := by
    unfold C
    simp [show (5668704 * k + 2314484) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1157242) = 1417176 * k + 578621 := by
    unfold C
    simp [show (2834352 * k + 1157242) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 578621) = 4251528 * k + 1735864 := by
    unfold C
    simp [show (1417176 * k + 578621) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 1735864) = 2125764 * k + 867932 := by
    unfold C
    simp [show (4251528 * k + 1735864) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 867932) = 1062882 * k + 433966 := by
    unfold C
    simp [show (2125764 * k + 867932) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 433966) = 531441 * k + 216983 := by
    unfold C
    simp [show (1062882 * k + 433966) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 428123) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 428123)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_428159 : ∀ k : Nat,
    iterate (1048576 * k + 428159) 32 = 531441 * k + 217001 ∧
      531441 * k + 217001 < 1048576 * k + 428159 := by
  intro k
  have h1 : C (1048576 * k + 428159) = 3145728 * k + 1284478 := by
    unfold C
    simp [show (1048576 * k + 428159) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1284478) = 1572864 * k + 642239 := by
    unfold C
    simp [show (3145728 * k + 1284478) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 642239) = 4718592 * k + 1926718 := by
    unfold C
    simp [show (1572864 * k + 642239) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1926718) = 2359296 * k + 963359 := by
    unfold C
    simp [show (4718592 * k + 1926718) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 963359) = 7077888 * k + 2890078 := by
    unfold C
    simp [show (2359296 * k + 963359) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 2890078) = 3538944 * k + 1445039 := by
    unfold C
    simp [show (7077888 * k + 2890078) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1445039) = 10616832 * k + 4335118 := by
    unfold C
    simp [show (3538944 * k + 1445039) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 4335118) = 5308416 * k + 2167559 := by
    unfold C
    simp [show (10616832 * k + 4335118) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 2167559) = 15925248 * k + 6502678 := by
    unfold C
    simp [show (5308416 * k + 2167559) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 6502678) = 7962624 * k + 3251339 := by
    unfold C
    simp [show (15925248 * k + 6502678) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 3251339) = 23887872 * k + 9754018 := by
    unfold C
    simp [show (7962624 * k + 3251339) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 9754018) = 11943936 * k + 4877009 := by
    unfold C
    simp [show (23887872 * k + 9754018) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 4877009) = 35831808 * k + 14631028 := by
    unfold C
    simp [show (11943936 * k + 4877009) % 2 ≠ 0 by omega]
    omega
  have h14 : C (35831808 * k + 14631028) = 17915904 * k + 7315514 := by
    unfold C
    simp [show (35831808 * k + 14631028) % 2 = 0 by omega]
    omega
  have h15 : C (17915904 * k + 7315514) = 8957952 * k + 3657757 := by
    unfold C
    simp [show (17915904 * k + 7315514) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 3657757) = 26873856 * k + 10973272 := by
    unfold C
    simp [show (8957952 * k + 3657757) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 10973272) = 13436928 * k + 5486636 := by
    unfold C
    simp [show (26873856 * k + 10973272) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 5486636) = 6718464 * k + 2743318 := by
    unfold C
    simp [show (13436928 * k + 5486636) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 2743318) = 3359232 * k + 1371659 := by
    unfold C
    simp [show (6718464 * k + 2743318) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 1371659) = 10077696 * k + 4114978 := by
    unfold C
    simp [show (3359232 * k + 1371659) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 4114978) = 5038848 * k + 2057489 := by
    unfold C
    simp [show (10077696 * k + 4114978) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 2057489) = 15116544 * k + 6172468 := by
    unfold C
    simp [show (5038848 * k + 2057489) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 6172468) = 7558272 * k + 3086234 := by
    unfold C
    simp [show (15116544 * k + 6172468) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 3086234) = 3779136 * k + 1543117 := by
    unfold C
    simp [show (7558272 * k + 3086234) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 1543117) = 11337408 * k + 4629352 := by
    unfold C
    simp [show (3779136 * k + 1543117) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 4629352) = 5668704 * k + 2314676 := by
    unfold C
    simp [show (11337408 * k + 4629352) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 2314676) = 2834352 * k + 1157338 := by
    unfold C
    simp [show (5668704 * k + 2314676) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1157338) = 1417176 * k + 578669 := by
    unfold C
    simp [show (2834352 * k + 1157338) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 578669) = 4251528 * k + 1736008 := by
    unfold C
    simp [show (1417176 * k + 578669) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 1736008) = 2125764 * k + 868004 := by
    unfold C
    simp [show (4251528 * k + 1736008) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 868004) = 1062882 * k + 434002 := by
    unfold C
    simp [show (2125764 * k + 868004) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 434002) = 531441 * k + 217001 := by
    unfold C
    simp [show (1062882 * k + 434002) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 428159) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 428159)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_429039 : ∀ k : Nat,
    iterate (1048576 * k + 429039) 32 = 531441 * k + 217447 ∧
      531441 * k + 217447 < 1048576 * k + 429039 := by
  intro k
  have h1 : C (1048576 * k + 429039) = 3145728 * k + 1287118 := by
    unfold C
    simp [show (1048576 * k + 429039) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1287118) = 1572864 * k + 643559 := by
    unfold C
    simp [show (3145728 * k + 1287118) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 643559) = 4718592 * k + 1930678 := by
    unfold C
    simp [show (1572864 * k + 643559) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1930678) = 2359296 * k + 965339 := by
    unfold C
    simp [show (4718592 * k + 1930678) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 965339) = 7077888 * k + 2896018 := by
    unfold C
    simp [show (2359296 * k + 965339) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 2896018) = 3538944 * k + 1448009 := by
    unfold C
    simp [show (7077888 * k + 2896018) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1448009) = 10616832 * k + 4344028 := by
    unfold C
    simp [show (3538944 * k + 1448009) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 4344028) = 5308416 * k + 2172014 := by
    unfold C
    simp [show (10616832 * k + 4344028) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 2172014) = 2654208 * k + 1086007 := by
    unfold C
    simp [show (5308416 * k + 2172014) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1086007) = 7962624 * k + 3258022 := by
    unfold C
    simp [show (2654208 * k + 1086007) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 3258022) = 3981312 * k + 1629011 := by
    unfold C
    simp [show (7962624 * k + 3258022) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 1629011) = 11943936 * k + 4887034 := by
    unfold C
    simp [show (3981312 * k + 1629011) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 4887034) = 5971968 * k + 2443517 := by
    unfold C
    simp [show (11943936 * k + 4887034) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 2443517) = 17915904 * k + 7330552 := by
    unfold C
    simp [show (5971968 * k + 2443517) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 7330552) = 8957952 * k + 3665276 := by
    unfold C
    simp [show (17915904 * k + 7330552) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 3665276) = 4478976 * k + 1832638 := by
    unfold C
    simp [show (8957952 * k + 3665276) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 1832638) = 2239488 * k + 916319 := by
    unfold C
    simp [show (4478976 * k + 1832638) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 916319) = 6718464 * k + 2748958 := by
    unfold C
    simp [show (2239488 * k + 916319) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 2748958) = 3359232 * k + 1374479 := by
    unfold C
    simp [show (6718464 * k + 2748958) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 1374479) = 10077696 * k + 4123438 := by
    unfold C
    simp [show (3359232 * k + 1374479) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 4123438) = 5038848 * k + 2061719 := by
    unfold C
    simp [show (10077696 * k + 4123438) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 2061719) = 15116544 * k + 6185158 := by
    unfold C
    simp [show (5038848 * k + 2061719) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 6185158) = 7558272 * k + 3092579 := by
    unfold C
    simp [show (15116544 * k + 6185158) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 3092579) = 22674816 * k + 9277738 := by
    unfold C
    simp [show (7558272 * k + 3092579) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 9277738) = 11337408 * k + 4638869 := by
    unfold C
    simp [show (22674816 * k + 9277738) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 4638869) = 34012224 * k + 13916608 := by
    unfold C
    simp [show (11337408 * k + 4638869) % 2 ≠ 0 by omega]
    omega
  have h27 : C (34012224 * k + 13916608) = 17006112 * k + 6958304 := by
    unfold C
    simp [show (34012224 * k + 13916608) % 2 = 0 by omega]
    omega
  have h28 : C (17006112 * k + 6958304) = 8503056 * k + 3479152 := by
    unfold C
    simp [show (17006112 * k + 6958304) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 3479152) = 4251528 * k + 1739576 := by
    unfold C
    simp [show (8503056 * k + 3479152) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 1739576) = 2125764 * k + 869788 := by
    unfold C
    simp [show (4251528 * k + 1739576) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 869788) = 1062882 * k + 434894 := by
    unfold C
    simp [show (2125764 * k + 869788) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 434894) = 531441 * k + 217447 := by
    unfold C
    simp [show (1062882 * k + 434894) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 429039) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 429039)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_429471 : ∀ k : Nat,
    iterate (1048576 * k + 429471) 32 = 531441 * k + 217666 ∧
      531441 * k + 217666 < 1048576 * k + 429471 := by
  intro k
  have h1 : C (1048576 * k + 429471) = 3145728 * k + 1288414 := by
    unfold C
    simp [show (1048576 * k + 429471) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1288414) = 1572864 * k + 644207 := by
    unfold C
    simp [show (3145728 * k + 1288414) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 644207) = 4718592 * k + 1932622 := by
    unfold C
    simp [show (1572864 * k + 644207) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1932622) = 2359296 * k + 966311 := by
    unfold C
    simp [show (4718592 * k + 1932622) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 966311) = 7077888 * k + 2898934 := by
    unfold C
    simp [show (2359296 * k + 966311) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 2898934) = 3538944 * k + 1449467 := by
    unfold C
    simp [show (7077888 * k + 2898934) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1449467) = 10616832 * k + 4348402 := by
    unfold C
    simp [show (3538944 * k + 1449467) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 4348402) = 5308416 * k + 2174201 := by
    unfold C
    simp [show (10616832 * k + 4348402) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 2174201) = 15925248 * k + 6522604 := by
    unfold C
    simp [show (5308416 * k + 2174201) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 6522604) = 7962624 * k + 3261302 := by
    unfold C
    simp [show (15925248 * k + 6522604) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 3261302) = 3981312 * k + 1630651 := by
    unfold C
    simp [show (7962624 * k + 3261302) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 1630651) = 11943936 * k + 4891954 := by
    unfold C
    simp [show (3981312 * k + 1630651) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 4891954) = 5971968 * k + 2445977 := by
    unfold C
    simp [show (11943936 * k + 4891954) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 2445977) = 17915904 * k + 7337932 := by
    unfold C
    simp [show (5971968 * k + 2445977) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 7337932) = 8957952 * k + 3668966 := by
    unfold C
    simp [show (17915904 * k + 7337932) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 3668966) = 4478976 * k + 1834483 := by
    unfold C
    simp [show (8957952 * k + 3668966) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 1834483) = 13436928 * k + 5503450 := by
    unfold C
    simp [show (4478976 * k + 1834483) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 5503450) = 6718464 * k + 2751725 := by
    unfold C
    simp [show (13436928 * k + 5503450) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 2751725) = 20155392 * k + 8255176 := by
    unfold C
    simp [show (6718464 * k + 2751725) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 8255176) = 10077696 * k + 4127588 := by
    unfold C
    simp [show (20155392 * k + 8255176) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 4127588) = 5038848 * k + 2063794 := by
    unfold C
    simp [show (10077696 * k + 4127588) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 2063794) = 2519424 * k + 1031897 := by
    unfold C
    simp [show (5038848 * k + 2063794) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1031897) = 7558272 * k + 3095692 := by
    unfold C
    simp [show (2519424 * k + 1031897) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 3095692) = 3779136 * k + 1547846 := by
    unfold C
    simp [show (7558272 * k + 3095692) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 1547846) = 1889568 * k + 773923 := by
    unfold C
    simp [show (3779136 * k + 1547846) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 773923) = 5668704 * k + 2321770 := by
    unfold C
    simp [show (1889568 * k + 773923) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 2321770) = 2834352 * k + 1160885 := by
    unfold C
    simp [show (5668704 * k + 2321770) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1160885) = 8503056 * k + 3482656 := by
    unfold C
    simp [show (2834352 * k + 1160885) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 3482656) = 4251528 * k + 1741328 := by
    unfold C
    simp [show (8503056 * k + 3482656) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 1741328) = 2125764 * k + 870664 := by
    unfold C
    simp [show (4251528 * k + 1741328) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 870664) = 1062882 * k + 435332 := by
    unfold C
    simp [show (2125764 * k + 870664) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 435332) = 531441 * k + 217666 := by
    unfold C
    simp [show (1062882 * k + 435332) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 429471) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 429471)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_429503 : ∀ k : Nat,
    iterate (1048576 * k + 429503) 32 = 531441 * k + 217682 ∧
      531441 * k + 217682 < 1048576 * k + 429503 := by
  intro k
  have h1 : C (1048576 * k + 429503) = 3145728 * k + 1288510 := by
    unfold C
    simp [show (1048576 * k + 429503) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1288510) = 1572864 * k + 644255 := by
    unfold C
    simp [show (3145728 * k + 1288510) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 644255) = 4718592 * k + 1932766 := by
    unfold C
    simp [show (1572864 * k + 644255) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1932766) = 2359296 * k + 966383 := by
    unfold C
    simp [show (4718592 * k + 1932766) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 966383) = 7077888 * k + 2899150 := by
    unfold C
    simp [show (2359296 * k + 966383) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 2899150) = 3538944 * k + 1449575 := by
    unfold C
    simp [show (7077888 * k + 2899150) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1449575) = 10616832 * k + 4348726 := by
    unfold C
    simp [show (3538944 * k + 1449575) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 4348726) = 5308416 * k + 2174363 := by
    unfold C
    simp [show (10616832 * k + 4348726) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 2174363) = 15925248 * k + 6523090 := by
    unfold C
    simp [show (5308416 * k + 2174363) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 6523090) = 7962624 * k + 3261545 := by
    unfold C
    simp [show (15925248 * k + 6523090) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 3261545) = 23887872 * k + 9784636 := by
    unfold C
    simp [show (7962624 * k + 3261545) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 9784636) = 11943936 * k + 4892318 := by
    unfold C
    simp [show (23887872 * k + 9784636) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 4892318) = 5971968 * k + 2446159 := by
    unfold C
    simp [show (11943936 * k + 4892318) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 2446159) = 17915904 * k + 7338478 := by
    unfold C
    simp [show (5971968 * k + 2446159) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 7338478) = 8957952 * k + 3669239 := by
    unfold C
    simp [show (17915904 * k + 7338478) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 3669239) = 26873856 * k + 11007718 := by
    unfold C
    simp [show (8957952 * k + 3669239) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 11007718) = 13436928 * k + 5503859 := by
    unfold C
    simp [show (26873856 * k + 11007718) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 5503859) = 40310784 * k + 16511578 := by
    unfold C
    simp [show (13436928 * k + 5503859) % 2 ≠ 0 by omega]
    omega
  have h19 : C (40310784 * k + 16511578) = 20155392 * k + 8255789 := by
    unfold C
    simp [show (40310784 * k + 16511578) % 2 = 0 by omega]
    omega
  have h20 : C (20155392 * k + 8255789) = 60466176 * k + 24767368 := by
    unfold C
    simp [show (20155392 * k + 8255789) % 2 ≠ 0 by omega]
    omega
  have h21 : C (60466176 * k + 24767368) = 30233088 * k + 12383684 := by
    unfold C
    simp [show (60466176 * k + 24767368) % 2 = 0 by omega]
    omega
  have h22 : C (30233088 * k + 12383684) = 15116544 * k + 6191842 := by
    unfold C
    simp [show (30233088 * k + 12383684) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 6191842) = 7558272 * k + 3095921 := by
    unfold C
    simp [show (15116544 * k + 6191842) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 3095921) = 22674816 * k + 9287764 := by
    unfold C
    simp [show (7558272 * k + 3095921) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 9287764) = 11337408 * k + 4643882 := by
    unfold C
    simp [show (22674816 * k + 9287764) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 4643882) = 5668704 * k + 2321941 := by
    unfold C
    simp [show (11337408 * k + 4643882) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 2321941) = 17006112 * k + 6965824 := by
    unfold C
    simp [show (5668704 * k + 2321941) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 6965824) = 8503056 * k + 3482912 := by
    unfold C
    simp [show (17006112 * k + 6965824) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 3482912) = 4251528 * k + 1741456 := by
    unfold C
    simp [show (8503056 * k + 3482912) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 1741456) = 2125764 * k + 870728 := by
    unfold C
    simp [show (4251528 * k + 1741456) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 870728) = 1062882 * k + 435364 := by
    unfold C
    simp [show (2125764 * k + 870728) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 435364) = 531441 * k + 217682 := by
    unfold C
    simp [show (1062882 * k + 435364) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 429503) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 429503)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_430331 : ∀ k : Nat,
    iterate (1048576 * k + 430331) 32 = 531441 * k + 218102 ∧
      531441 * k + 218102 < 1048576 * k + 430331 := by
  intro k
  have h1 : C (1048576 * k + 430331) = 3145728 * k + 1290994 := by
    unfold C
    simp [show (1048576 * k + 430331) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1290994) = 1572864 * k + 645497 := by
    unfold C
    simp [show (3145728 * k + 1290994) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 645497) = 4718592 * k + 1936492 := by
    unfold C
    simp [show (1572864 * k + 645497) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1936492) = 2359296 * k + 968246 := by
    unfold C
    simp [show (4718592 * k + 1936492) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 968246) = 1179648 * k + 484123 := by
    unfold C
    simp [show (2359296 * k + 968246) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 484123) = 3538944 * k + 1452370 := by
    unfold C
    simp [show (1179648 * k + 484123) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 1452370) = 1769472 * k + 726185 := by
    unfold C
    simp [show (3538944 * k + 1452370) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 726185) = 5308416 * k + 2178556 := by
    unfold C
    simp [show (1769472 * k + 726185) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 2178556) = 2654208 * k + 1089278 := by
    unfold C
    simp [show (5308416 * k + 2178556) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1089278) = 1327104 * k + 544639 := by
    unfold C
    simp [show (2654208 * k + 1089278) % 2 = 0 by omega]
    omega
  have h11 : C (1327104 * k + 544639) = 3981312 * k + 1633918 := by
    unfold C
    simp [show (1327104 * k + 544639) % 2 ≠ 0 by omega]
    omega
  have h12 : C (3981312 * k + 1633918) = 1990656 * k + 816959 := by
    unfold C
    simp [show (3981312 * k + 1633918) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 816959) = 5971968 * k + 2450878 := by
    unfold C
    simp [show (1990656 * k + 816959) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 2450878) = 2985984 * k + 1225439 := by
    unfold C
    simp [show (5971968 * k + 2450878) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1225439) = 8957952 * k + 3676318 := by
    unfold C
    simp [show (2985984 * k + 1225439) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 3676318) = 4478976 * k + 1838159 := by
    unfold C
    simp [show (8957952 * k + 3676318) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 1838159) = 13436928 * k + 5514478 := by
    unfold C
    simp [show (4478976 * k + 1838159) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 5514478) = 6718464 * k + 2757239 := by
    unfold C
    simp [show (13436928 * k + 5514478) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 2757239) = 20155392 * k + 8271718 := by
    unfold C
    simp [show (6718464 * k + 2757239) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 8271718) = 10077696 * k + 4135859 := by
    unfold C
    simp [show (20155392 * k + 8271718) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 4135859) = 30233088 * k + 12407578 := by
    unfold C
    simp [show (10077696 * k + 4135859) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 12407578) = 15116544 * k + 6203789 := by
    unfold C
    simp [show (30233088 * k + 12407578) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 6203789) = 45349632 * k + 18611368 := by
    unfold C
    simp [show (15116544 * k + 6203789) % 2 ≠ 0 by omega]
    omega
  have h24 : C (45349632 * k + 18611368) = 22674816 * k + 9305684 := by
    unfold C
    simp [show (45349632 * k + 18611368) % 2 = 0 by omega]
    omega
  have h25 : C (22674816 * k + 9305684) = 11337408 * k + 4652842 := by
    unfold C
    simp [show (22674816 * k + 9305684) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 4652842) = 5668704 * k + 2326421 := by
    unfold C
    simp [show (11337408 * k + 4652842) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 2326421) = 17006112 * k + 6979264 := by
    unfold C
    simp [show (5668704 * k + 2326421) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 6979264) = 8503056 * k + 3489632 := by
    unfold C
    simp [show (17006112 * k + 6979264) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 3489632) = 4251528 * k + 1744816 := by
    unfold C
    simp [show (8503056 * k + 3489632) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 1744816) = 2125764 * k + 872408 := by
    unfold C
    simp [show (4251528 * k + 1744816) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 872408) = 1062882 * k + 436204 := by
    unfold C
    simp [show (2125764 * k + 872408) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 436204) = 531441 * k + 218102 := by
    unfold C
    simp [show (1062882 * k + 436204) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 430331) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 430331)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_431195 : ∀ k : Nat,
    iterate (1048576 * k + 431195) 32 = 531441 * k + 218540 ∧
      531441 * k + 218540 < 1048576 * k + 431195 := by
  intro k
  have h1 : C (1048576 * k + 431195) = 3145728 * k + 1293586 := by
    unfold C
    simp [show (1048576 * k + 431195) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1293586) = 1572864 * k + 646793 := by
    unfold C
    simp [show (3145728 * k + 1293586) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 646793) = 4718592 * k + 1940380 := by
    unfold C
    simp [show (1572864 * k + 646793) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1940380) = 2359296 * k + 970190 := by
    unfold C
    simp [show (4718592 * k + 1940380) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 970190) = 1179648 * k + 485095 := by
    unfold C
    simp [show (2359296 * k + 970190) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 485095) = 3538944 * k + 1455286 := by
    unfold C
    simp [show (1179648 * k + 485095) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 1455286) = 1769472 * k + 727643 := by
    unfold C
    simp [show (3538944 * k + 1455286) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 727643) = 5308416 * k + 2182930 := by
    unfold C
    simp [show (1769472 * k + 727643) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 2182930) = 2654208 * k + 1091465 := by
    unfold C
    simp [show (5308416 * k + 2182930) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1091465) = 7962624 * k + 3274396 := by
    unfold C
    simp [show (2654208 * k + 1091465) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 3274396) = 3981312 * k + 1637198 := by
    unfold C
    simp [show (7962624 * k + 3274396) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 1637198) = 1990656 * k + 818599 := by
    unfold C
    simp [show (3981312 * k + 1637198) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 818599) = 5971968 * k + 2455798 := by
    unfold C
    simp [show (1990656 * k + 818599) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 2455798) = 2985984 * k + 1227899 := by
    unfold C
    simp [show (5971968 * k + 2455798) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1227899) = 8957952 * k + 3683698 := by
    unfold C
    simp [show (2985984 * k + 1227899) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 3683698) = 4478976 * k + 1841849 := by
    unfold C
    simp [show (8957952 * k + 3683698) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 1841849) = 13436928 * k + 5525548 := by
    unfold C
    simp [show (4478976 * k + 1841849) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 5525548) = 6718464 * k + 2762774 := by
    unfold C
    simp [show (13436928 * k + 5525548) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 2762774) = 3359232 * k + 1381387 := by
    unfold C
    simp [show (6718464 * k + 2762774) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 1381387) = 10077696 * k + 4144162 := by
    unfold C
    simp [show (3359232 * k + 1381387) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 4144162) = 5038848 * k + 2072081 := by
    unfold C
    simp [show (10077696 * k + 4144162) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 2072081) = 15116544 * k + 6216244 := by
    unfold C
    simp [show (5038848 * k + 2072081) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 6216244) = 7558272 * k + 3108122 := by
    unfold C
    simp [show (15116544 * k + 6216244) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 3108122) = 3779136 * k + 1554061 := by
    unfold C
    simp [show (7558272 * k + 3108122) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 1554061) = 11337408 * k + 4662184 := by
    unfold C
    simp [show (3779136 * k + 1554061) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 4662184) = 5668704 * k + 2331092 := by
    unfold C
    simp [show (11337408 * k + 4662184) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 2331092) = 2834352 * k + 1165546 := by
    unfold C
    simp [show (5668704 * k + 2331092) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1165546) = 1417176 * k + 582773 := by
    unfold C
    simp [show (2834352 * k + 1165546) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 582773) = 4251528 * k + 1748320 := by
    unfold C
    simp [show (1417176 * k + 582773) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 1748320) = 2125764 * k + 874160 := by
    unfold C
    simp [show (4251528 * k + 1748320) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 874160) = 1062882 * k + 437080 := by
    unfold C
    simp [show (2125764 * k + 874160) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 437080) = 531441 * k + 218540 := by
    unfold C
    simp [show (1062882 * k + 437080) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 431195) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 431195)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_431663 : ∀ k : Nat,
    iterate (1048576 * k + 431663) 32 = 531441 * k + 218777 ∧
      531441 * k + 218777 < 1048576 * k + 431663 := by
  intro k
  have h1 : C (1048576 * k + 431663) = 3145728 * k + 1294990 := by
    unfold C
    simp [show (1048576 * k + 431663) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1294990) = 1572864 * k + 647495 := by
    unfold C
    simp [show (3145728 * k + 1294990) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 647495) = 4718592 * k + 1942486 := by
    unfold C
    simp [show (1572864 * k + 647495) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1942486) = 2359296 * k + 971243 := by
    unfold C
    simp [show (4718592 * k + 1942486) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 971243) = 7077888 * k + 2913730 := by
    unfold C
    simp [show (2359296 * k + 971243) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 2913730) = 3538944 * k + 1456865 := by
    unfold C
    simp [show (7077888 * k + 2913730) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1456865) = 10616832 * k + 4370596 := by
    unfold C
    simp [show (3538944 * k + 1456865) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 4370596) = 5308416 * k + 2185298 := by
    unfold C
    simp [show (10616832 * k + 4370596) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 2185298) = 2654208 * k + 1092649 := by
    unfold C
    simp [show (5308416 * k + 2185298) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1092649) = 7962624 * k + 3277948 := by
    unfold C
    simp [show (2654208 * k + 1092649) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 3277948) = 3981312 * k + 1638974 := by
    unfold C
    simp [show (7962624 * k + 3277948) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 1638974) = 1990656 * k + 819487 := by
    unfold C
    simp [show (3981312 * k + 1638974) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 819487) = 5971968 * k + 2458462 := by
    unfold C
    simp [show (1990656 * k + 819487) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 2458462) = 2985984 * k + 1229231 := by
    unfold C
    simp [show (5971968 * k + 2458462) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1229231) = 8957952 * k + 3687694 := by
    unfold C
    simp [show (2985984 * k + 1229231) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 3687694) = 4478976 * k + 1843847 := by
    unfold C
    simp [show (8957952 * k + 3687694) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 1843847) = 13436928 * k + 5531542 := by
    unfold C
    simp [show (4478976 * k + 1843847) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 5531542) = 6718464 * k + 2765771 := by
    unfold C
    simp [show (13436928 * k + 5531542) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 2765771) = 20155392 * k + 8297314 := by
    unfold C
    simp [show (6718464 * k + 2765771) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 8297314) = 10077696 * k + 4148657 := by
    unfold C
    simp [show (20155392 * k + 8297314) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 4148657) = 30233088 * k + 12445972 := by
    unfold C
    simp [show (10077696 * k + 4148657) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 12445972) = 15116544 * k + 6222986 := by
    unfold C
    simp [show (30233088 * k + 12445972) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 6222986) = 7558272 * k + 3111493 := by
    unfold C
    simp [show (15116544 * k + 6222986) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 3111493) = 22674816 * k + 9334480 := by
    unfold C
    simp [show (7558272 * k + 3111493) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 9334480) = 11337408 * k + 4667240 := by
    unfold C
    simp [show (22674816 * k + 9334480) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 4667240) = 5668704 * k + 2333620 := by
    unfold C
    simp [show (11337408 * k + 4667240) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 2333620) = 2834352 * k + 1166810 := by
    unfold C
    simp [show (5668704 * k + 2333620) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1166810) = 1417176 * k + 583405 := by
    unfold C
    simp [show (2834352 * k + 1166810) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 583405) = 4251528 * k + 1750216 := by
    unfold C
    simp [show (1417176 * k + 583405) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 1750216) = 2125764 * k + 875108 := by
    unfold C
    simp [show (4251528 * k + 1750216) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 875108) = 1062882 * k + 437554 := by
    unfold C
    simp [show (2125764 * k + 875108) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 437554) = 531441 * k + 218777 := by
    unfold C
    simp [show (1062882 * k + 437554) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 431663) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 431663)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_431975 : ∀ k : Nat,
    iterate (1048576 * k + 431975) 32 = 531441 * k + 218935 ∧
      531441 * k + 218935 < 1048576 * k + 431975 := by
  intro k
  have h1 : C (1048576 * k + 431975) = 3145728 * k + 1295926 := by
    unfold C
    simp [show (1048576 * k + 431975) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1295926) = 1572864 * k + 647963 := by
    unfold C
    simp [show (3145728 * k + 1295926) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 647963) = 4718592 * k + 1943890 := by
    unfold C
    simp [show (1572864 * k + 647963) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1943890) = 2359296 * k + 971945 := by
    unfold C
    simp [show (4718592 * k + 1943890) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 971945) = 7077888 * k + 2915836 := by
    unfold C
    simp [show (2359296 * k + 971945) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 2915836) = 3538944 * k + 1457918 := by
    unfold C
    simp [show (7077888 * k + 2915836) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1457918) = 1769472 * k + 728959 := by
    unfold C
    simp [show (3538944 * k + 1457918) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 728959) = 5308416 * k + 2186878 := by
    unfold C
    simp [show (1769472 * k + 728959) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 2186878) = 2654208 * k + 1093439 := by
    unfold C
    simp [show (5308416 * k + 2186878) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1093439) = 7962624 * k + 3280318 := by
    unfold C
    simp [show (2654208 * k + 1093439) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 3280318) = 3981312 * k + 1640159 := by
    unfold C
    simp [show (7962624 * k + 3280318) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 1640159) = 11943936 * k + 4920478 := by
    unfold C
    simp [show (3981312 * k + 1640159) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 4920478) = 5971968 * k + 2460239 := by
    unfold C
    simp [show (11943936 * k + 4920478) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 2460239) = 17915904 * k + 7380718 := by
    unfold C
    simp [show (5971968 * k + 2460239) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 7380718) = 8957952 * k + 3690359 := by
    unfold C
    simp [show (17915904 * k + 7380718) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 3690359) = 26873856 * k + 11071078 := by
    unfold C
    simp [show (8957952 * k + 3690359) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 11071078) = 13436928 * k + 5535539 := by
    unfold C
    simp [show (26873856 * k + 11071078) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 5535539) = 40310784 * k + 16606618 := by
    unfold C
    simp [show (13436928 * k + 5535539) % 2 ≠ 0 by omega]
    omega
  have h19 : C (40310784 * k + 16606618) = 20155392 * k + 8303309 := by
    unfold C
    simp [show (40310784 * k + 16606618) % 2 = 0 by omega]
    omega
  have h20 : C (20155392 * k + 8303309) = 60466176 * k + 24909928 := by
    unfold C
    simp [show (20155392 * k + 8303309) % 2 ≠ 0 by omega]
    omega
  have h21 : C (60466176 * k + 24909928) = 30233088 * k + 12454964 := by
    unfold C
    simp [show (60466176 * k + 24909928) % 2 = 0 by omega]
    omega
  have h22 : C (30233088 * k + 12454964) = 15116544 * k + 6227482 := by
    unfold C
    simp [show (30233088 * k + 12454964) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 6227482) = 7558272 * k + 3113741 := by
    unfold C
    simp [show (15116544 * k + 6227482) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 3113741) = 22674816 * k + 9341224 := by
    unfold C
    simp [show (7558272 * k + 3113741) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 9341224) = 11337408 * k + 4670612 := by
    unfold C
    simp [show (22674816 * k + 9341224) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 4670612) = 5668704 * k + 2335306 := by
    unfold C
    simp [show (11337408 * k + 4670612) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 2335306) = 2834352 * k + 1167653 := by
    unfold C
    simp [show (5668704 * k + 2335306) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1167653) = 8503056 * k + 3502960 := by
    unfold C
    simp [show (2834352 * k + 1167653) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 3502960) = 4251528 * k + 1751480 := by
    unfold C
    simp [show (8503056 * k + 3502960) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 1751480) = 2125764 * k + 875740 := by
    unfold C
    simp [show (4251528 * k + 1751480) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 875740) = 1062882 * k + 437870 := by
    unfold C
    simp [show (2125764 * k + 875740) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 437870) = 531441 * k + 218935 := by
    unfold C
    simp [show (1062882 * k + 437870) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 431975) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 431975)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_432231 : ∀ k : Nat,
    iterate (1048576 * k + 432231) 32 = 531441 * k + 219065 ∧
      531441 * k + 219065 < 1048576 * k + 432231 := by
  intro k
  have h1 : C (1048576 * k + 432231) = 3145728 * k + 1296694 := by
    unfold C
    simp [show (1048576 * k + 432231) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1296694) = 1572864 * k + 648347 := by
    unfold C
    simp [show (3145728 * k + 1296694) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 648347) = 4718592 * k + 1945042 := by
    unfold C
    simp [show (1572864 * k + 648347) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1945042) = 2359296 * k + 972521 := by
    unfold C
    simp [show (4718592 * k + 1945042) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 972521) = 7077888 * k + 2917564 := by
    unfold C
    simp [show (2359296 * k + 972521) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 2917564) = 3538944 * k + 1458782 := by
    unfold C
    simp [show (7077888 * k + 2917564) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1458782) = 1769472 * k + 729391 := by
    unfold C
    simp [show (3538944 * k + 1458782) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 729391) = 5308416 * k + 2188174 := by
    unfold C
    simp [show (1769472 * k + 729391) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 2188174) = 2654208 * k + 1094087 := by
    unfold C
    simp [show (5308416 * k + 2188174) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1094087) = 7962624 * k + 3282262 := by
    unfold C
    simp [show (2654208 * k + 1094087) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 3282262) = 3981312 * k + 1641131 := by
    unfold C
    simp [show (7962624 * k + 3282262) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 1641131) = 11943936 * k + 4923394 := by
    unfold C
    simp [show (3981312 * k + 1641131) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 4923394) = 5971968 * k + 2461697 := by
    unfold C
    simp [show (11943936 * k + 4923394) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 2461697) = 17915904 * k + 7385092 := by
    unfold C
    simp [show (5971968 * k + 2461697) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 7385092) = 8957952 * k + 3692546 := by
    unfold C
    simp [show (17915904 * k + 7385092) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 3692546) = 4478976 * k + 1846273 := by
    unfold C
    simp [show (8957952 * k + 3692546) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 1846273) = 13436928 * k + 5538820 := by
    unfold C
    simp [show (4478976 * k + 1846273) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 5538820) = 6718464 * k + 2769410 := by
    unfold C
    simp [show (13436928 * k + 5538820) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 2769410) = 3359232 * k + 1384705 := by
    unfold C
    simp [show (6718464 * k + 2769410) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 1384705) = 10077696 * k + 4154116 := by
    unfold C
    simp [show (3359232 * k + 1384705) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 4154116) = 5038848 * k + 2077058 := by
    unfold C
    simp [show (10077696 * k + 4154116) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 2077058) = 2519424 * k + 1038529 := by
    unfold C
    simp [show (5038848 * k + 2077058) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1038529) = 7558272 * k + 3115588 := by
    unfold C
    simp [show (2519424 * k + 1038529) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 3115588) = 3779136 * k + 1557794 := by
    unfold C
    simp [show (7558272 * k + 3115588) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 1557794) = 1889568 * k + 778897 := by
    unfold C
    simp [show (3779136 * k + 1557794) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 778897) = 5668704 * k + 2336692 := by
    unfold C
    simp [show (1889568 * k + 778897) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 2336692) = 2834352 * k + 1168346 := by
    unfold C
    simp [show (5668704 * k + 2336692) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1168346) = 1417176 * k + 584173 := by
    unfold C
    simp [show (2834352 * k + 1168346) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 584173) = 4251528 * k + 1752520 := by
    unfold C
    simp [show (1417176 * k + 584173) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 1752520) = 2125764 * k + 876260 := by
    unfold C
    simp [show (4251528 * k + 1752520) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 876260) = 1062882 * k + 438130 := by
    unfold C
    simp [show (2125764 * k + 876260) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 438130) = 531441 * k + 219065 := by
    unfold C
    simp [show (1062882 * k + 438130) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 432231) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 432231)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_432379 : ∀ k : Nat,
    iterate (1048576 * k + 432379) 32 = 531441 * k + 219140 ∧
      531441 * k + 219140 < 1048576 * k + 432379 := by
  intro k
  have h1 : C (1048576 * k + 432379) = 3145728 * k + 1297138 := by
    unfold C
    simp [show (1048576 * k + 432379) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1297138) = 1572864 * k + 648569 := by
    unfold C
    simp [show (3145728 * k + 1297138) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 648569) = 4718592 * k + 1945708 := by
    unfold C
    simp [show (1572864 * k + 648569) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1945708) = 2359296 * k + 972854 := by
    unfold C
    simp [show (4718592 * k + 1945708) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 972854) = 1179648 * k + 486427 := by
    unfold C
    simp [show (2359296 * k + 972854) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 486427) = 3538944 * k + 1459282 := by
    unfold C
    simp [show (1179648 * k + 486427) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 1459282) = 1769472 * k + 729641 := by
    unfold C
    simp [show (3538944 * k + 1459282) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 729641) = 5308416 * k + 2188924 := by
    unfold C
    simp [show (1769472 * k + 729641) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 2188924) = 2654208 * k + 1094462 := by
    unfold C
    simp [show (5308416 * k + 2188924) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1094462) = 1327104 * k + 547231 := by
    unfold C
    simp [show (2654208 * k + 1094462) % 2 = 0 by omega]
    omega
  have h11 : C (1327104 * k + 547231) = 3981312 * k + 1641694 := by
    unfold C
    simp [show (1327104 * k + 547231) % 2 ≠ 0 by omega]
    omega
  have h12 : C (3981312 * k + 1641694) = 1990656 * k + 820847 := by
    unfold C
    simp [show (3981312 * k + 1641694) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 820847) = 5971968 * k + 2462542 := by
    unfold C
    simp [show (1990656 * k + 820847) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 2462542) = 2985984 * k + 1231271 := by
    unfold C
    simp [show (5971968 * k + 2462542) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1231271) = 8957952 * k + 3693814 := by
    unfold C
    simp [show (2985984 * k + 1231271) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 3693814) = 4478976 * k + 1846907 := by
    unfold C
    simp [show (8957952 * k + 3693814) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 1846907) = 13436928 * k + 5540722 := by
    unfold C
    simp [show (4478976 * k + 1846907) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 5540722) = 6718464 * k + 2770361 := by
    unfold C
    simp [show (13436928 * k + 5540722) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 2770361) = 20155392 * k + 8311084 := by
    unfold C
    simp [show (6718464 * k + 2770361) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 8311084) = 10077696 * k + 4155542 := by
    unfold C
    simp [show (20155392 * k + 8311084) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 4155542) = 5038848 * k + 2077771 := by
    unfold C
    simp [show (10077696 * k + 4155542) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 2077771) = 15116544 * k + 6233314 := by
    unfold C
    simp [show (5038848 * k + 2077771) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 6233314) = 7558272 * k + 3116657 := by
    unfold C
    simp [show (15116544 * k + 6233314) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 3116657) = 22674816 * k + 9349972 := by
    unfold C
    simp [show (7558272 * k + 3116657) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 9349972) = 11337408 * k + 4674986 := by
    unfold C
    simp [show (22674816 * k + 9349972) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 4674986) = 5668704 * k + 2337493 := by
    unfold C
    simp [show (11337408 * k + 4674986) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 2337493) = 17006112 * k + 7012480 := by
    unfold C
    simp [show (5668704 * k + 2337493) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 7012480) = 8503056 * k + 3506240 := by
    unfold C
    simp [show (17006112 * k + 7012480) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 3506240) = 4251528 * k + 1753120 := by
    unfold C
    simp [show (8503056 * k + 3506240) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 1753120) = 2125764 * k + 876560 := by
    unfold C
    simp [show (4251528 * k + 1753120) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 876560) = 1062882 * k + 438280 := by
    unfold C
    simp [show (2125764 * k + 876560) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 438280) = 531441 * k + 219140 := by
    unfold C
    simp [show (1062882 * k + 438280) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 432379) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 432379)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_432959 : ∀ k : Nat,
    iterate (1048576 * k + 432959) 32 = 531441 * k + 219434 ∧
      531441 * k + 219434 < 1048576 * k + 432959 := by
  intro k
  have h1 : C (1048576 * k + 432959) = 3145728 * k + 1298878 := by
    unfold C
    simp [show (1048576 * k + 432959) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1298878) = 1572864 * k + 649439 := by
    unfold C
    simp [show (3145728 * k + 1298878) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 649439) = 4718592 * k + 1948318 := by
    unfold C
    simp [show (1572864 * k + 649439) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1948318) = 2359296 * k + 974159 := by
    unfold C
    simp [show (4718592 * k + 1948318) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 974159) = 7077888 * k + 2922478 := by
    unfold C
    simp [show (2359296 * k + 974159) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 2922478) = 3538944 * k + 1461239 := by
    unfold C
    simp [show (7077888 * k + 2922478) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1461239) = 10616832 * k + 4383718 := by
    unfold C
    simp [show (3538944 * k + 1461239) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 4383718) = 5308416 * k + 2191859 := by
    unfold C
    simp [show (10616832 * k + 4383718) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 2191859) = 15925248 * k + 6575578 := by
    unfold C
    simp [show (5308416 * k + 2191859) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 6575578) = 7962624 * k + 3287789 := by
    unfold C
    simp [show (15925248 * k + 6575578) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 3287789) = 23887872 * k + 9863368 := by
    unfold C
    simp [show (7962624 * k + 3287789) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 9863368) = 11943936 * k + 4931684 := by
    unfold C
    simp [show (23887872 * k + 9863368) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 4931684) = 5971968 * k + 2465842 := by
    unfold C
    simp [show (11943936 * k + 4931684) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 2465842) = 2985984 * k + 1232921 := by
    unfold C
    simp [show (5971968 * k + 2465842) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1232921) = 8957952 * k + 3698764 := by
    unfold C
    simp [show (2985984 * k + 1232921) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 3698764) = 4478976 * k + 1849382 := by
    unfold C
    simp [show (8957952 * k + 3698764) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 1849382) = 2239488 * k + 924691 := by
    unfold C
    simp [show (4478976 * k + 1849382) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 924691) = 6718464 * k + 2774074 := by
    unfold C
    simp [show (2239488 * k + 924691) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 2774074) = 3359232 * k + 1387037 := by
    unfold C
    simp [show (6718464 * k + 2774074) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 1387037) = 10077696 * k + 4161112 := by
    unfold C
    simp [show (3359232 * k + 1387037) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 4161112) = 5038848 * k + 2080556 := by
    unfold C
    simp [show (10077696 * k + 4161112) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 2080556) = 2519424 * k + 1040278 := by
    unfold C
    simp [show (5038848 * k + 2080556) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1040278) = 1259712 * k + 520139 := by
    unfold C
    simp [show (2519424 * k + 1040278) % 2 = 0 by omega]
    omega
  have h24 : C (1259712 * k + 520139) = 3779136 * k + 1560418 := by
    unfold C
    simp [show (1259712 * k + 520139) % 2 ≠ 0 by omega]
    omega
  have h25 : C (3779136 * k + 1560418) = 1889568 * k + 780209 := by
    unfold C
    simp [show (3779136 * k + 1560418) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 780209) = 5668704 * k + 2340628 := by
    unfold C
    simp [show (1889568 * k + 780209) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 2340628) = 2834352 * k + 1170314 := by
    unfold C
    simp [show (5668704 * k + 2340628) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1170314) = 1417176 * k + 585157 := by
    unfold C
    simp [show (2834352 * k + 1170314) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 585157) = 4251528 * k + 1755472 := by
    unfold C
    simp [show (1417176 * k + 585157) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 1755472) = 2125764 * k + 877736 := by
    unfold C
    simp [show (4251528 * k + 1755472) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 877736) = 1062882 * k + 438868 := by
    unfold C
    simp [show (2125764 * k + 877736) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 438868) = 531441 * k + 219434 := by
    unfold C
    simp [show (1062882 * k + 438868) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 432959) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 432959)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

end CollatzM20Shard054
