import Mathlib.Data.Nat.Prime.Basic

namespace CollatzM20Shard039

def C (n : Nat) : Nat := if n % 2 = 0 then n / 2 else 3 * n + 1

def iterate (n t : Nat) : Nat := Nat.rec n (fun _ previous => C previous) t

theorem descent_mod1048576_291359 : ∀ k : Nat,
    iterate (1048576 * k + 291359) 32 = 531441 * k + 147668 ∧
      531441 * k + 147668 < 1048576 * k + 291359 := by
  intro k
  have h1 : C (1048576 * k + 291359) = 3145728 * k + 874078 := by
    unfold C
    simp [show (1048576 * k + 291359) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 874078) = 1572864 * k + 437039 := by
    unfold C
    simp [show (3145728 * k + 874078) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 437039) = 4718592 * k + 1311118 := by
    unfold C
    simp [show (1572864 * k + 437039) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1311118) = 2359296 * k + 655559 := by
    unfold C
    simp [show (4718592 * k + 1311118) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 655559) = 7077888 * k + 1966678 := by
    unfold C
    simp [show (2359296 * k + 655559) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 1966678) = 3538944 * k + 983339 := by
    unfold C
    simp [show (7077888 * k + 1966678) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 983339) = 10616832 * k + 2950018 := by
    unfold C
    simp [show (3538944 * k + 983339) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 2950018) = 5308416 * k + 1475009 := by
    unfold C
    simp [show (10616832 * k + 2950018) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 1475009) = 15925248 * k + 4425028 := by
    unfold C
    simp [show (5308416 * k + 1475009) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 4425028) = 7962624 * k + 2212514 := by
    unfold C
    simp [show (15925248 * k + 4425028) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 2212514) = 3981312 * k + 1106257 := by
    unfold C
    simp [show (7962624 * k + 2212514) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 1106257) = 11943936 * k + 3318772 := by
    unfold C
    simp [show (3981312 * k + 1106257) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 3318772) = 5971968 * k + 1659386 := by
    unfold C
    simp [show (11943936 * k + 3318772) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 1659386) = 2985984 * k + 829693 := by
    unfold C
    simp [show (5971968 * k + 1659386) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 829693) = 8957952 * k + 2489080 := by
    unfold C
    simp [show (2985984 * k + 829693) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 2489080) = 4478976 * k + 1244540 := by
    unfold C
    simp [show (8957952 * k + 2489080) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 1244540) = 2239488 * k + 622270 := by
    unfold C
    simp [show (4478976 * k + 1244540) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 622270) = 1119744 * k + 311135 := by
    unfold C
    simp [show (2239488 * k + 622270) % 2 = 0 by omega]
    omega
  have h19 : C (1119744 * k + 311135) = 3359232 * k + 933406 := by
    unfold C
    simp [show (1119744 * k + 311135) % 2 ≠ 0 by omega]
    omega
  have h20 : C (3359232 * k + 933406) = 1679616 * k + 466703 := by
    unfold C
    simp [show (3359232 * k + 933406) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 466703) = 5038848 * k + 1400110 := by
    unfold C
    simp [show (1679616 * k + 466703) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 1400110) = 2519424 * k + 700055 := by
    unfold C
    simp [show (5038848 * k + 1400110) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 700055) = 7558272 * k + 2100166 := by
    unfold C
    simp [show (2519424 * k + 700055) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 2100166) = 3779136 * k + 1050083 := by
    unfold C
    simp [show (7558272 * k + 2100166) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 1050083) = 11337408 * k + 3150250 := by
    unfold C
    simp [show (3779136 * k + 1050083) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 3150250) = 5668704 * k + 1575125 := by
    unfold C
    simp [show (11337408 * k + 3150250) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 1575125) = 17006112 * k + 4725376 := by
    unfold C
    simp [show (5668704 * k + 1575125) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 4725376) = 8503056 * k + 2362688 := by
    unfold C
    simp [show (17006112 * k + 4725376) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 2362688) = 4251528 * k + 1181344 := by
    unfold C
    simp [show (8503056 * k + 2362688) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 1181344) = 2125764 * k + 590672 := by
    unfold C
    simp [show (4251528 * k + 1181344) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 590672) = 1062882 * k + 295336 := by
    unfold C
    simp [show (2125764 * k + 590672) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 295336) = 531441 * k + 147668 := by
    unfold C
    simp [show (1062882 * k + 295336) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 291359) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 291359)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_291807 : ∀ k : Nat,
    iterate (1048576 * k + 291807) 32 = 531441 * k + 147895 ∧
      531441 * k + 147895 < 1048576 * k + 291807 := by
  intro k
  have h1 : C (1048576 * k + 291807) = 3145728 * k + 875422 := by
    unfold C
    simp [show (1048576 * k + 291807) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 875422) = 1572864 * k + 437711 := by
    unfold C
    simp [show (3145728 * k + 875422) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 437711) = 4718592 * k + 1313134 := by
    unfold C
    simp [show (1572864 * k + 437711) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1313134) = 2359296 * k + 656567 := by
    unfold C
    simp [show (4718592 * k + 1313134) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 656567) = 7077888 * k + 1969702 := by
    unfold C
    simp [show (2359296 * k + 656567) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 1969702) = 3538944 * k + 984851 := by
    unfold C
    simp [show (7077888 * k + 1969702) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 984851) = 10616832 * k + 2954554 := by
    unfold C
    simp [show (3538944 * k + 984851) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 2954554) = 5308416 * k + 1477277 := by
    unfold C
    simp [show (10616832 * k + 2954554) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 1477277) = 15925248 * k + 4431832 := by
    unfold C
    simp [show (5308416 * k + 1477277) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 4431832) = 7962624 * k + 2215916 := by
    unfold C
    simp [show (15925248 * k + 4431832) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 2215916) = 3981312 * k + 1107958 := by
    unfold C
    simp [show (7962624 * k + 2215916) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 1107958) = 1990656 * k + 553979 := by
    unfold C
    simp [show (3981312 * k + 1107958) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 553979) = 5971968 * k + 1661938 := by
    unfold C
    simp [show (1990656 * k + 553979) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 1661938) = 2985984 * k + 830969 := by
    unfold C
    simp [show (5971968 * k + 1661938) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 830969) = 8957952 * k + 2492908 := by
    unfold C
    simp [show (2985984 * k + 830969) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 2492908) = 4478976 * k + 1246454 := by
    unfold C
    simp [show (8957952 * k + 2492908) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 1246454) = 2239488 * k + 623227 := by
    unfold C
    simp [show (4478976 * k + 1246454) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 623227) = 6718464 * k + 1869682 := by
    unfold C
    simp [show (2239488 * k + 623227) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 1869682) = 3359232 * k + 934841 := by
    unfold C
    simp [show (6718464 * k + 1869682) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 934841) = 10077696 * k + 2804524 := by
    unfold C
    simp [show (3359232 * k + 934841) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 2804524) = 5038848 * k + 1402262 := by
    unfold C
    simp [show (10077696 * k + 2804524) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 1402262) = 2519424 * k + 701131 := by
    unfold C
    simp [show (5038848 * k + 1402262) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 701131) = 7558272 * k + 2103394 := by
    unfold C
    simp [show (2519424 * k + 701131) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 2103394) = 3779136 * k + 1051697 := by
    unfold C
    simp [show (7558272 * k + 2103394) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 1051697) = 11337408 * k + 3155092 := by
    unfold C
    simp [show (3779136 * k + 1051697) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 3155092) = 5668704 * k + 1577546 := by
    unfold C
    simp [show (11337408 * k + 3155092) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 1577546) = 2834352 * k + 788773 := by
    unfold C
    simp [show (5668704 * k + 1577546) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 788773) = 8503056 * k + 2366320 := by
    unfold C
    simp [show (2834352 * k + 788773) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 2366320) = 4251528 * k + 1183160 := by
    unfold C
    simp [show (8503056 * k + 2366320) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 1183160) = 2125764 * k + 591580 := by
    unfold C
    simp [show (4251528 * k + 1183160) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 591580) = 1062882 * k + 295790 := by
    unfold C
    simp [show (2125764 * k + 591580) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 295790) = 531441 * k + 147895 := by
    unfold C
    simp [show (1062882 * k + 295790) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 291807) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 291807)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_292063 : ∀ k : Nat,
    iterate (1048576 * k + 292063) 32 = 531441 * k + 148025 ∧
      531441 * k + 148025 < 1048576 * k + 292063 := by
  intro k
  have h1 : C (1048576 * k + 292063) = 3145728 * k + 876190 := by
    unfold C
    simp [show (1048576 * k + 292063) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 876190) = 1572864 * k + 438095 := by
    unfold C
    simp [show (3145728 * k + 876190) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 438095) = 4718592 * k + 1314286 := by
    unfold C
    simp [show (1572864 * k + 438095) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1314286) = 2359296 * k + 657143 := by
    unfold C
    simp [show (4718592 * k + 1314286) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 657143) = 7077888 * k + 1971430 := by
    unfold C
    simp [show (2359296 * k + 657143) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 1971430) = 3538944 * k + 985715 := by
    unfold C
    simp [show (7077888 * k + 1971430) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 985715) = 10616832 * k + 2957146 := by
    unfold C
    simp [show (3538944 * k + 985715) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 2957146) = 5308416 * k + 1478573 := by
    unfold C
    simp [show (10616832 * k + 2957146) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 1478573) = 15925248 * k + 4435720 := by
    unfold C
    simp [show (5308416 * k + 1478573) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 4435720) = 7962624 * k + 2217860 := by
    unfold C
    simp [show (15925248 * k + 4435720) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 2217860) = 3981312 * k + 1108930 := by
    unfold C
    simp [show (7962624 * k + 2217860) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 1108930) = 1990656 * k + 554465 := by
    unfold C
    simp [show (3981312 * k + 1108930) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 554465) = 5971968 * k + 1663396 := by
    unfold C
    simp [show (1990656 * k + 554465) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 1663396) = 2985984 * k + 831698 := by
    unfold C
    simp [show (5971968 * k + 1663396) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 831698) = 1492992 * k + 415849 := by
    unfold C
    simp [show (2985984 * k + 831698) % 2 = 0 by omega]
    omega
  have h16 : C (1492992 * k + 415849) = 4478976 * k + 1247548 := by
    unfold C
    simp [show (1492992 * k + 415849) % 2 ≠ 0 by omega]
    omega
  have h17 : C (4478976 * k + 1247548) = 2239488 * k + 623774 := by
    unfold C
    simp [show (4478976 * k + 1247548) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 623774) = 1119744 * k + 311887 := by
    unfold C
    simp [show (2239488 * k + 623774) % 2 = 0 by omega]
    omega
  have h19 : C (1119744 * k + 311887) = 3359232 * k + 935662 := by
    unfold C
    simp [show (1119744 * k + 311887) % 2 ≠ 0 by omega]
    omega
  have h20 : C (3359232 * k + 935662) = 1679616 * k + 467831 := by
    unfold C
    simp [show (3359232 * k + 935662) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 467831) = 5038848 * k + 1403494 := by
    unfold C
    simp [show (1679616 * k + 467831) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 1403494) = 2519424 * k + 701747 := by
    unfold C
    simp [show (5038848 * k + 1403494) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 701747) = 7558272 * k + 2105242 := by
    unfold C
    simp [show (2519424 * k + 701747) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 2105242) = 3779136 * k + 1052621 := by
    unfold C
    simp [show (7558272 * k + 2105242) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 1052621) = 11337408 * k + 3157864 := by
    unfold C
    simp [show (3779136 * k + 1052621) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 3157864) = 5668704 * k + 1578932 := by
    unfold C
    simp [show (11337408 * k + 3157864) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 1578932) = 2834352 * k + 789466 := by
    unfold C
    simp [show (5668704 * k + 1578932) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 789466) = 1417176 * k + 394733 := by
    unfold C
    simp [show (2834352 * k + 789466) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 394733) = 4251528 * k + 1184200 := by
    unfold C
    simp [show (1417176 * k + 394733) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 1184200) = 2125764 * k + 592100 := by
    unfold C
    simp [show (4251528 * k + 1184200) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 592100) = 1062882 * k + 296050 := by
    unfold C
    simp [show (2125764 * k + 592100) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 296050) = 531441 * k + 148025 := by
    unfold C
    simp [show (1062882 * k + 296050) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 292063) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 292063)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_292383 : ∀ k : Nat,
    iterate (1048576 * k + 292383) 32 = 531441 * k + 148187 ∧
      531441 * k + 148187 < 1048576 * k + 292383 := by
  intro k
  have h1 : C (1048576 * k + 292383) = 3145728 * k + 877150 := by
    unfold C
    simp [show (1048576 * k + 292383) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 877150) = 1572864 * k + 438575 := by
    unfold C
    simp [show (3145728 * k + 877150) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 438575) = 4718592 * k + 1315726 := by
    unfold C
    simp [show (1572864 * k + 438575) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1315726) = 2359296 * k + 657863 := by
    unfold C
    simp [show (4718592 * k + 1315726) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 657863) = 7077888 * k + 1973590 := by
    unfold C
    simp [show (2359296 * k + 657863) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 1973590) = 3538944 * k + 986795 := by
    unfold C
    simp [show (7077888 * k + 1973590) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 986795) = 10616832 * k + 2960386 := by
    unfold C
    simp [show (3538944 * k + 986795) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 2960386) = 5308416 * k + 1480193 := by
    unfold C
    simp [show (10616832 * k + 2960386) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 1480193) = 15925248 * k + 4440580 := by
    unfold C
    simp [show (5308416 * k + 1480193) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 4440580) = 7962624 * k + 2220290 := by
    unfold C
    simp [show (15925248 * k + 4440580) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 2220290) = 3981312 * k + 1110145 := by
    unfold C
    simp [show (7962624 * k + 2220290) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 1110145) = 11943936 * k + 3330436 := by
    unfold C
    simp [show (3981312 * k + 1110145) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 3330436) = 5971968 * k + 1665218 := by
    unfold C
    simp [show (11943936 * k + 3330436) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 1665218) = 2985984 * k + 832609 := by
    unfold C
    simp [show (5971968 * k + 1665218) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 832609) = 8957952 * k + 2497828 := by
    unfold C
    simp [show (2985984 * k + 832609) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 2497828) = 4478976 * k + 1248914 := by
    unfold C
    simp [show (8957952 * k + 2497828) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 1248914) = 2239488 * k + 624457 := by
    unfold C
    simp [show (4478976 * k + 1248914) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 624457) = 6718464 * k + 1873372 := by
    unfold C
    simp [show (2239488 * k + 624457) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 1873372) = 3359232 * k + 936686 := by
    unfold C
    simp [show (6718464 * k + 1873372) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 936686) = 1679616 * k + 468343 := by
    unfold C
    simp [show (3359232 * k + 936686) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 468343) = 5038848 * k + 1405030 := by
    unfold C
    simp [show (1679616 * k + 468343) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 1405030) = 2519424 * k + 702515 := by
    unfold C
    simp [show (5038848 * k + 1405030) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 702515) = 7558272 * k + 2107546 := by
    unfold C
    simp [show (2519424 * k + 702515) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 2107546) = 3779136 * k + 1053773 := by
    unfold C
    simp [show (7558272 * k + 2107546) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 1053773) = 11337408 * k + 3161320 := by
    unfold C
    simp [show (3779136 * k + 1053773) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 3161320) = 5668704 * k + 1580660 := by
    unfold C
    simp [show (11337408 * k + 3161320) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 1580660) = 2834352 * k + 790330 := by
    unfold C
    simp [show (5668704 * k + 1580660) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 790330) = 1417176 * k + 395165 := by
    unfold C
    simp [show (2834352 * k + 790330) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 395165) = 4251528 * k + 1185496 := by
    unfold C
    simp [show (1417176 * k + 395165) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 1185496) = 2125764 * k + 592748 := by
    unfold C
    simp [show (4251528 * k + 1185496) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 592748) = 1062882 * k + 296374 := by
    unfold C
    simp [show (2125764 * k + 592748) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 296374) = 531441 * k + 148187 := by
    unfold C
    simp [show (1062882 * k + 296374) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 292383) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 292383)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_292399 : ∀ k : Nat,
    iterate (1048576 * k + 292399) 32 = 531441 * k + 148195 ∧
      531441 * k + 148195 < 1048576 * k + 292399 := by
  intro k
  have h1 : C (1048576 * k + 292399) = 3145728 * k + 877198 := by
    unfold C
    simp [show (1048576 * k + 292399) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 877198) = 1572864 * k + 438599 := by
    unfold C
    simp [show (3145728 * k + 877198) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 438599) = 4718592 * k + 1315798 := by
    unfold C
    simp [show (1572864 * k + 438599) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1315798) = 2359296 * k + 657899 := by
    unfold C
    simp [show (4718592 * k + 1315798) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 657899) = 7077888 * k + 1973698 := by
    unfold C
    simp [show (2359296 * k + 657899) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 1973698) = 3538944 * k + 986849 := by
    unfold C
    simp [show (7077888 * k + 1973698) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 986849) = 10616832 * k + 2960548 := by
    unfold C
    simp [show (3538944 * k + 986849) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 2960548) = 5308416 * k + 1480274 := by
    unfold C
    simp [show (10616832 * k + 2960548) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 1480274) = 2654208 * k + 740137 := by
    unfold C
    simp [show (5308416 * k + 1480274) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 740137) = 7962624 * k + 2220412 := by
    unfold C
    simp [show (2654208 * k + 740137) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 2220412) = 3981312 * k + 1110206 := by
    unfold C
    simp [show (7962624 * k + 2220412) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 1110206) = 1990656 * k + 555103 := by
    unfold C
    simp [show (3981312 * k + 1110206) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 555103) = 5971968 * k + 1665310 := by
    unfold C
    simp [show (1990656 * k + 555103) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 1665310) = 2985984 * k + 832655 := by
    unfold C
    simp [show (5971968 * k + 1665310) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 832655) = 8957952 * k + 2497966 := by
    unfold C
    simp [show (2985984 * k + 832655) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 2497966) = 4478976 * k + 1248983 := by
    unfold C
    simp [show (8957952 * k + 2497966) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 1248983) = 13436928 * k + 3746950 := by
    unfold C
    simp [show (4478976 * k + 1248983) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 3746950) = 6718464 * k + 1873475 := by
    unfold C
    simp [show (13436928 * k + 3746950) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 1873475) = 20155392 * k + 5620426 := by
    unfold C
    simp [show (6718464 * k + 1873475) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 5620426) = 10077696 * k + 2810213 := by
    unfold C
    simp [show (20155392 * k + 5620426) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 2810213) = 30233088 * k + 8430640 := by
    unfold C
    simp [show (10077696 * k + 2810213) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 8430640) = 15116544 * k + 4215320 := by
    unfold C
    simp [show (30233088 * k + 8430640) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 4215320) = 7558272 * k + 2107660 := by
    unfold C
    simp [show (15116544 * k + 4215320) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 2107660) = 3779136 * k + 1053830 := by
    unfold C
    simp [show (7558272 * k + 2107660) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 1053830) = 1889568 * k + 526915 := by
    unfold C
    simp [show (3779136 * k + 1053830) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 526915) = 5668704 * k + 1580746 := by
    unfold C
    simp [show (1889568 * k + 526915) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 1580746) = 2834352 * k + 790373 := by
    unfold C
    simp [show (5668704 * k + 1580746) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 790373) = 8503056 * k + 2371120 := by
    unfold C
    simp [show (2834352 * k + 790373) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 2371120) = 4251528 * k + 1185560 := by
    unfold C
    simp [show (8503056 * k + 2371120) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 1185560) = 2125764 * k + 592780 := by
    unfold C
    simp [show (4251528 * k + 1185560) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 592780) = 1062882 * k + 296390 := by
    unfold C
    simp [show (2125764 * k + 592780) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 296390) = 531441 * k + 148195 := by
    unfold C
    simp [show (1062882 * k + 296390) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 292399) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 292399)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_292543 : ∀ k : Nat,
    iterate (1048576 * k + 292543) 32 = 531441 * k + 148268 ∧
      531441 * k + 148268 < 1048576 * k + 292543 := by
  intro k
  have h1 : C (1048576 * k + 292543) = 3145728 * k + 877630 := by
    unfold C
    simp [show (1048576 * k + 292543) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 877630) = 1572864 * k + 438815 := by
    unfold C
    simp [show (3145728 * k + 877630) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 438815) = 4718592 * k + 1316446 := by
    unfold C
    simp [show (1572864 * k + 438815) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1316446) = 2359296 * k + 658223 := by
    unfold C
    simp [show (4718592 * k + 1316446) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 658223) = 7077888 * k + 1974670 := by
    unfold C
    simp [show (2359296 * k + 658223) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 1974670) = 3538944 * k + 987335 := by
    unfold C
    simp [show (7077888 * k + 1974670) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 987335) = 10616832 * k + 2962006 := by
    unfold C
    simp [show (3538944 * k + 987335) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 2962006) = 5308416 * k + 1481003 := by
    unfold C
    simp [show (10616832 * k + 2962006) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 1481003) = 15925248 * k + 4443010 := by
    unfold C
    simp [show (5308416 * k + 1481003) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 4443010) = 7962624 * k + 2221505 := by
    unfold C
    simp [show (15925248 * k + 4443010) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 2221505) = 23887872 * k + 6664516 := by
    unfold C
    simp [show (7962624 * k + 2221505) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 6664516) = 11943936 * k + 3332258 := by
    unfold C
    simp [show (23887872 * k + 6664516) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 3332258) = 5971968 * k + 1666129 := by
    unfold C
    simp [show (11943936 * k + 3332258) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 1666129) = 17915904 * k + 4998388 := by
    unfold C
    simp [show (5971968 * k + 1666129) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 4998388) = 8957952 * k + 2499194 := by
    unfold C
    simp [show (17915904 * k + 4998388) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 2499194) = 4478976 * k + 1249597 := by
    unfold C
    simp [show (8957952 * k + 2499194) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 1249597) = 13436928 * k + 3748792 := by
    unfold C
    simp [show (4478976 * k + 1249597) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 3748792) = 6718464 * k + 1874396 := by
    unfold C
    simp [show (13436928 * k + 3748792) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 1874396) = 3359232 * k + 937198 := by
    unfold C
    simp [show (6718464 * k + 1874396) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 937198) = 1679616 * k + 468599 := by
    unfold C
    simp [show (3359232 * k + 937198) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 468599) = 5038848 * k + 1405798 := by
    unfold C
    simp [show (1679616 * k + 468599) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 1405798) = 2519424 * k + 702899 := by
    unfold C
    simp [show (5038848 * k + 1405798) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 702899) = 7558272 * k + 2108698 := by
    unfold C
    simp [show (2519424 * k + 702899) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 2108698) = 3779136 * k + 1054349 := by
    unfold C
    simp [show (7558272 * k + 2108698) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 1054349) = 11337408 * k + 3163048 := by
    unfold C
    simp [show (3779136 * k + 1054349) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 3163048) = 5668704 * k + 1581524 := by
    unfold C
    simp [show (11337408 * k + 3163048) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 1581524) = 2834352 * k + 790762 := by
    unfold C
    simp [show (5668704 * k + 1581524) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 790762) = 1417176 * k + 395381 := by
    unfold C
    simp [show (2834352 * k + 790762) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 395381) = 4251528 * k + 1186144 := by
    unfold C
    simp [show (1417176 * k + 395381) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 1186144) = 2125764 * k + 593072 := by
    unfold C
    simp [show (4251528 * k + 1186144) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 593072) = 1062882 * k + 296536 := by
    unfold C
    simp [show (2125764 * k + 593072) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 296536) = 531441 * k + 148268 := by
    unfold C
    simp [show (1062882 * k + 296536) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 292543) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 292543)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_292967 : ∀ k : Nat,
    iterate (1048576 * k + 292967) 32 = 531441 * k + 148483 ∧
      531441 * k + 148483 < 1048576 * k + 292967 := by
  intro k
  have h1 : C (1048576 * k + 292967) = 3145728 * k + 878902 := by
    unfold C
    simp [show (1048576 * k + 292967) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 878902) = 1572864 * k + 439451 := by
    unfold C
    simp [show (3145728 * k + 878902) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 439451) = 4718592 * k + 1318354 := by
    unfold C
    simp [show (1572864 * k + 439451) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1318354) = 2359296 * k + 659177 := by
    unfold C
    simp [show (4718592 * k + 1318354) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 659177) = 7077888 * k + 1977532 := by
    unfold C
    simp [show (2359296 * k + 659177) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 1977532) = 3538944 * k + 988766 := by
    unfold C
    simp [show (7077888 * k + 1977532) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 988766) = 1769472 * k + 494383 := by
    unfold C
    simp [show (3538944 * k + 988766) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 494383) = 5308416 * k + 1483150 := by
    unfold C
    simp [show (1769472 * k + 494383) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 1483150) = 2654208 * k + 741575 := by
    unfold C
    simp [show (5308416 * k + 1483150) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 741575) = 7962624 * k + 2224726 := by
    unfold C
    simp [show (2654208 * k + 741575) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 2224726) = 3981312 * k + 1112363 := by
    unfold C
    simp [show (7962624 * k + 2224726) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 1112363) = 11943936 * k + 3337090 := by
    unfold C
    simp [show (3981312 * k + 1112363) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 3337090) = 5971968 * k + 1668545 := by
    unfold C
    simp [show (11943936 * k + 3337090) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 1668545) = 17915904 * k + 5005636 := by
    unfold C
    simp [show (5971968 * k + 1668545) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 5005636) = 8957952 * k + 2502818 := by
    unfold C
    simp [show (17915904 * k + 5005636) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 2502818) = 4478976 * k + 1251409 := by
    unfold C
    simp [show (8957952 * k + 2502818) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 1251409) = 13436928 * k + 3754228 := by
    unfold C
    simp [show (4478976 * k + 1251409) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 3754228) = 6718464 * k + 1877114 := by
    unfold C
    simp [show (13436928 * k + 3754228) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 1877114) = 3359232 * k + 938557 := by
    unfold C
    simp [show (6718464 * k + 1877114) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 938557) = 10077696 * k + 2815672 := by
    unfold C
    simp [show (3359232 * k + 938557) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 2815672) = 5038848 * k + 1407836 := by
    unfold C
    simp [show (10077696 * k + 2815672) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 1407836) = 2519424 * k + 703918 := by
    unfold C
    simp [show (5038848 * k + 1407836) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 703918) = 1259712 * k + 351959 := by
    unfold C
    simp [show (2519424 * k + 703918) % 2 = 0 by omega]
    omega
  have h24 : C (1259712 * k + 351959) = 3779136 * k + 1055878 := by
    unfold C
    simp [show (1259712 * k + 351959) % 2 ≠ 0 by omega]
    omega
  have h25 : C (3779136 * k + 1055878) = 1889568 * k + 527939 := by
    unfold C
    simp [show (3779136 * k + 1055878) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 527939) = 5668704 * k + 1583818 := by
    unfold C
    simp [show (1889568 * k + 527939) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 1583818) = 2834352 * k + 791909 := by
    unfold C
    simp [show (5668704 * k + 1583818) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 791909) = 8503056 * k + 2375728 := by
    unfold C
    simp [show (2834352 * k + 791909) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 2375728) = 4251528 * k + 1187864 := by
    unfold C
    simp [show (8503056 * k + 2375728) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 1187864) = 2125764 * k + 593932 := by
    unfold C
    simp [show (4251528 * k + 1187864) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 593932) = 1062882 * k + 296966 := by
    unfold C
    simp [show (2125764 * k + 593932) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 296966) = 531441 * k + 148483 := by
    unfold C
    simp [show (1062882 * k + 296966) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 292967) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 292967)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_292975 : ∀ k : Nat,
    iterate (1048576 * k + 292975) 32 = 531441 * k + 148487 ∧
      531441 * k + 148487 < 1048576 * k + 292975 := by
  intro k
  have h1 : C (1048576 * k + 292975) = 3145728 * k + 878926 := by
    unfold C
    simp [show (1048576 * k + 292975) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 878926) = 1572864 * k + 439463 := by
    unfold C
    simp [show (3145728 * k + 878926) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 439463) = 4718592 * k + 1318390 := by
    unfold C
    simp [show (1572864 * k + 439463) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1318390) = 2359296 * k + 659195 := by
    unfold C
    simp [show (4718592 * k + 1318390) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 659195) = 7077888 * k + 1977586 := by
    unfold C
    simp [show (2359296 * k + 659195) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 1977586) = 3538944 * k + 988793 := by
    unfold C
    simp [show (7077888 * k + 1977586) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 988793) = 10616832 * k + 2966380 := by
    unfold C
    simp [show (3538944 * k + 988793) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 2966380) = 5308416 * k + 1483190 := by
    unfold C
    simp [show (10616832 * k + 2966380) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 1483190) = 2654208 * k + 741595 := by
    unfold C
    simp [show (5308416 * k + 1483190) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 741595) = 7962624 * k + 2224786 := by
    unfold C
    simp [show (2654208 * k + 741595) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 2224786) = 3981312 * k + 1112393 := by
    unfold C
    simp [show (7962624 * k + 2224786) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 1112393) = 11943936 * k + 3337180 := by
    unfold C
    simp [show (3981312 * k + 1112393) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 3337180) = 5971968 * k + 1668590 := by
    unfold C
    simp [show (11943936 * k + 3337180) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 1668590) = 2985984 * k + 834295 := by
    unfold C
    simp [show (5971968 * k + 1668590) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 834295) = 8957952 * k + 2502886 := by
    unfold C
    simp [show (2985984 * k + 834295) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 2502886) = 4478976 * k + 1251443 := by
    unfold C
    simp [show (8957952 * k + 2502886) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 1251443) = 13436928 * k + 3754330 := by
    unfold C
    simp [show (4478976 * k + 1251443) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 3754330) = 6718464 * k + 1877165 := by
    unfold C
    simp [show (13436928 * k + 3754330) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 1877165) = 20155392 * k + 5631496 := by
    unfold C
    simp [show (6718464 * k + 1877165) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 5631496) = 10077696 * k + 2815748 := by
    unfold C
    simp [show (20155392 * k + 5631496) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 2815748) = 5038848 * k + 1407874 := by
    unfold C
    simp [show (10077696 * k + 2815748) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 1407874) = 2519424 * k + 703937 := by
    unfold C
    simp [show (5038848 * k + 1407874) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 703937) = 7558272 * k + 2111812 := by
    unfold C
    simp [show (2519424 * k + 703937) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 2111812) = 3779136 * k + 1055906 := by
    unfold C
    simp [show (7558272 * k + 2111812) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 1055906) = 1889568 * k + 527953 := by
    unfold C
    simp [show (3779136 * k + 1055906) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 527953) = 5668704 * k + 1583860 := by
    unfold C
    simp [show (1889568 * k + 527953) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 1583860) = 2834352 * k + 791930 := by
    unfold C
    simp [show (5668704 * k + 1583860) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 791930) = 1417176 * k + 395965 := by
    unfold C
    simp [show (2834352 * k + 791930) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 395965) = 4251528 * k + 1187896 := by
    unfold C
    simp [show (1417176 * k + 395965) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 1187896) = 2125764 * k + 593948 := by
    unfold C
    simp [show (4251528 * k + 1187896) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 593948) = 1062882 * k + 296974 := by
    unfold C
    simp [show (2125764 * k + 593948) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 296974) = 531441 * k + 148487 := by
    unfold C
    simp [show (1062882 * k + 296974) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 292975) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 292975)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_293543 : ∀ k : Nat,
    iterate (1048576 * k + 293543) 32 = 531441 * k + 148775 ∧
      531441 * k + 148775 < 1048576 * k + 293543 := by
  intro k
  have h1 : C (1048576 * k + 293543) = 3145728 * k + 880630 := by
    unfold C
    simp [show (1048576 * k + 293543) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 880630) = 1572864 * k + 440315 := by
    unfold C
    simp [show (3145728 * k + 880630) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 440315) = 4718592 * k + 1320946 := by
    unfold C
    simp [show (1572864 * k + 440315) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1320946) = 2359296 * k + 660473 := by
    unfold C
    simp [show (4718592 * k + 1320946) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 660473) = 7077888 * k + 1981420 := by
    unfold C
    simp [show (2359296 * k + 660473) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 1981420) = 3538944 * k + 990710 := by
    unfold C
    simp [show (7077888 * k + 1981420) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 990710) = 1769472 * k + 495355 := by
    unfold C
    simp [show (3538944 * k + 990710) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 495355) = 5308416 * k + 1486066 := by
    unfold C
    simp [show (1769472 * k + 495355) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 1486066) = 2654208 * k + 743033 := by
    unfold C
    simp [show (5308416 * k + 1486066) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 743033) = 7962624 * k + 2229100 := by
    unfold C
    simp [show (2654208 * k + 743033) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 2229100) = 3981312 * k + 1114550 := by
    unfold C
    simp [show (7962624 * k + 2229100) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 1114550) = 1990656 * k + 557275 := by
    unfold C
    simp [show (3981312 * k + 1114550) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 557275) = 5971968 * k + 1671826 := by
    unfold C
    simp [show (1990656 * k + 557275) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 1671826) = 2985984 * k + 835913 := by
    unfold C
    simp [show (5971968 * k + 1671826) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 835913) = 8957952 * k + 2507740 := by
    unfold C
    simp [show (2985984 * k + 835913) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 2507740) = 4478976 * k + 1253870 := by
    unfold C
    simp [show (8957952 * k + 2507740) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 1253870) = 2239488 * k + 626935 := by
    unfold C
    simp [show (4478976 * k + 1253870) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 626935) = 6718464 * k + 1880806 := by
    unfold C
    simp [show (2239488 * k + 626935) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 1880806) = 3359232 * k + 940403 := by
    unfold C
    simp [show (6718464 * k + 1880806) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 940403) = 10077696 * k + 2821210 := by
    unfold C
    simp [show (3359232 * k + 940403) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 2821210) = 5038848 * k + 1410605 := by
    unfold C
    simp [show (10077696 * k + 2821210) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 1410605) = 15116544 * k + 4231816 := by
    unfold C
    simp [show (5038848 * k + 1410605) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 4231816) = 7558272 * k + 2115908 := by
    unfold C
    simp [show (15116544 * k + 4231816) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 2115908) = 3779136 * k + 1057954 := by
    unfold C
    simp [show (7558272 * k + 2115908) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 1057954) = 1889568 * k + 528977 := by
    unfold C
    simp [show (3779136 * k + 1057954) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 528977) = 5668704 * k + 1586932 := by
    unfold C
    simp [show (1889568 * k + 528977) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 1586932) = 2834352 * k + 793466 := by
    unfold C
    simp [show (5668704 * k + 1586932) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 793466) = 1417176 * k + 396733 := by
    unfold C
    simp [show (2834352 * k + 793466) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 396733) = 4251528 * k + 1190200 := by
    unfold C
    simp [show (1417176 * k + 396733) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 1190200) = 2125764 * k + 595100 := by
    unfold C
    simp [show (4251528 * k + 1190200) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 595100) = 1062882 * k + 297550 := by
    unfold C
    simp [show (2125764 * k + 595100) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 297550) = 531441 * k + 148775 := by
    unfold C
    simp [show (1062882 * k + 297550) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 293543) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 293543)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_294047 : ∀ k : Nat,
    iterate (1048576 * k + 294047) 32 = 531441 * k + 149030 ∧
      531441 * k + 149030 < 1048576 * k + 294047 := by
  intro k
  have h1 : C (1048576 * k + 294047) = 3145728 * k + 882142 := by
    unfold C
    simp [show (1048576 * k + 294047) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 882142) = 1572864 * k + 441071 := by
    unfold C
    simp [show (3145728 * k + 882142) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 441071) = 4718592 * k + 1323214 := by
    unfold C
    simp [show (1572864 * k + 441071) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1323214) = 2359296 * k + 661607 := by
    unfold C
    simp [show (4718592 * k + 1323214) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 661607) = 7077888 * k + 1984822 := by
    unfold C
    simp [show (2359296 * k + 661607) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 1984822) = 3538944 * k + 992411 := by
    unfold C
    simp [show (7077888 * k + 1984822) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 992411) = 10616832 * k + 2977234 := by
    unfold C
    simp [show (3538944 * k + 992411) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 2977234) = 5308416 * k + 1488617 := by
    unfold C
    simp [show (10616832 * k + 2977234) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 1488617) = 15925248 * k + 4465852 := by
    unfold C
    simp [show (5308416 * k + 1488617) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 4465852) = 7962624 * k + 2232926 := by
    unfold C
    simp [show (15925248 * k + 4465852) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 2232926) = 3981312 * k + 1116463 := by
    unfold C
    simp [show (7962624 * k + 2232926) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 1116463) = 11943936 * k + 3349390 := by
    unfold C
    simp [show (3981312 * k + 1116463) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 3349390) = 5971968 * k + 1674695 := by
    unfold C
    simp [show (11943936 * k + 3349390) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 1674695) = 17915904 * k + 5024086 := by
    unfold C
    simp [show (5971968 * k + 1674695) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 5024086) = 8957952 * k + 2512043 := by
    unfold C
    simp [show (17915904 * k + 5024086) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 2512043) = 26873856 * k + 7536130 := by
    unfold C
    simp [show (8957952 * k + 2512043) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 7536130) = 13436928 * k + 3768065 := by
    unfold C
    simp [show (26873856 * k + 7536130) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 3768065) = 40310784 * k + 11304196 := by
    unfold C
    simp [show (13436928 * k + 3768065) % 2 ≠ 0 by omega]
    omega
  have h19 : C (40310784 * k + 11304196) = 20155392 * k + 5652098 := by
    unfold C
    simp [show (40310784 * k + 11304196) % 2 = 0 by omega]
    omega
  have h20 : C (20155392 * k + 5652098) = 10077696 * k + 2826049 := by
    unfold C
    simp [show (20155392 * k + 5652098) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 2826049) = 30233088 * k + 8478148 := by
    unfold C
    simp [show (10077696 * k + 2826049) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 8478148) = 15116544 * k + 4239074 := by
    unfold C
    simp [show (30233088 * k + 8478148) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 4239074) = 7558272 * k + 2119537 := by
    unfold C
    simp [show (15116544 * k + 4239074) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 2119537) = 22674816 * k + 6358612 := by
    unfold C
    simp [show (7558272 * k + 2119537) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 6358612) = 11337408 * k + 3179306 := by
    unfold C
    simp [show (22674816 * k + 6358612) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 3179306) = 5668704 * k + 1589653 := by
    unfold C
    simp [show (11337408 * k + 3179306) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 1589653) = 17006112 * k + 4768960 := by
    unfold C
    simp [show (5668704 * k + 1589653) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 4768960) = 8503056 * k + 2384480 := by
    unfold C
    simp [show (17006112 * k + 4768960) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 2384480) = 4251528 * k + 1192240 := by
    unfold C
    simp [show (8503056 * k + 2384480) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 1192240) = 2125764 * k + 596120 := by
    unfold C
    simp [show (4251528 * k + 1192240) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 596120) = 1062882 * k + 298060 := by
    unfold C
    simp [show (2125764 * k + 596120) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 298060) = 531441 * k + 149030 := by
    unfold C
    simp [show (1062882 * k + 298060) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 294047) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 294047)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_294555 : ∀ k : Nat,
    iterate (1048576 * k + 294555) 32 = 531441 * k + 149288 ∧
      531441 * k + 149288 < 1048576 * k + 294555 := by
  intro k
  have h1 : C (1048576 * k + 294555) = 3145728 * k + 883666 := by
    unfold C
    simp [show (1048576 * k + 294555) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 883666) = 1572864 * k + 441833 := by
    unfold C
    simp [show (3145728 * k + 883666) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 441833) = 4718592 * k + 1325500 := by
    unfold C
    simp [show (1572864 * k + 441833) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1325500) = 2359296 * k + 662750 := by
    unfold C
    simp [show (4718592 * k + 1325500) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 662750) = 1179648 * k + 331375 := by
    unfold C
    simp [show (2359296 * k + 662750) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 331375) = 3538944 * k + 994126 := by
    unfold C
    simp [show (1179648 * k + 331375) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 994126) = 1769472 * k + 497063 := by
    unfold C
    simp [show (3538944 * k + 994126) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 497063) = 5308416 * k + 1491190 := by
    unfold C
    simp [show (1769472 * k + 497063) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 1491190) = 2654208 * k + 745595 := by
    unfold C
    simp [show (5308416 * k + 1491190) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 745595) = 7962624 * k + 2236786 := by
    unfold C
    simp [show (2654208 * k + 745595) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 2236786) = 3981312 * k + 1118393 := by
    unfold C
    simp [show (7962624 * k + 2236786) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 1118393) = 11943936 * k + 3355180 := by
    unfold C
    simp [show (3981312 * k + 1118393) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 3355180) = 5971968 * k + 1677590 := by
    unfold C
    simp [show (11943936 * k + 3355180) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 1677590) = 2985984 * k + 838795 := by
    unfold C
    simp [show (5971968 * k + 1677590) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 838795) = 8957952 * k + 2516386 := by
    unfold C
    simp [show (2985984 * k + 838795) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 2516386) = 4478976 * k + 1258193 := by
    unfold C
    simp [show (8957952 * k + 2516386) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 1258193) = 13436928 * k + 3774580 := by
    unfold C
    simp [show (4478976 * k + 1258193) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 3774580) = 6718464 * k + 1887290 := by
    unfold C
    simp [show (13436928 * k + 3774580) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 1887290) = 3359232 * k + 943645 := by
    unfold C
    simp [show (6718464 * k + 1887290) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 943645) = 10077696 * k + 2830936 := by
    unfold C
    simp [show (3359232 * k + 943645) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 2830936) = 5038848 * k + 1415468 := by
    unfold C
    simp [show (10077696 * k + 2830936) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 1415468) = 2519424 * k + 707734 := by
    unfold C
    simp [show (5038848 * k + 1415468) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 707734) = 1259712 * k + 353867 := by
    unfold C
    simp [show (2519424 * k + 707734) % 2 = 0 by omega]
    omega
  have h24 : C (1259712 * k + 353867) = 3779136 * k + 1061602 := by
    unfold C
    simp [show (1259712 * k + 353867) % 2 ≠ 0 by omega]
    omega
  have h25 : C (3779136 * k + 1061602) = 1889568 * k + 530801 := by
    unfold C
    simp [show (3779136 * k + 1061602) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 530801) = 5668704 * k + 1592404 := by
    unfold C
    simp [show (1889568 * k + 530801) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 1592404) = 2834352 * k + 796202 := by
    unfold C
    simp [show (5668704 * k + 1592404) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 796202) = 1417176 * k + 398101 := by
    unfold C
    simp [show (2834352 * k + 796202) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 398101) = 4251528 * k + 1194304 := by
    unfold C
    simp [show (1417176 * k + 398101) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 1194304) = 2125764 * k + 597152 := by
    unfold C
    simp [show (4251528 * k + 1194304) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 597152) = 1062882 * k + 298576 := by
    unfold C
    simp [show (2125764 * k + 597152) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 298576) = 531441 * k + 149288 := by
    unfold C
    simp [show (1062882 * k + 298576) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 294555) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 294555)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_294607 : ∀ k : Nat,
    iterate (1048576 * k + 294607) 32 = 531441 * k + 149314 ∧
      531441 * k + 149314 < 1048576 * k + 294607 := by
  intro k
  have h1 : C (1048576 * k + 294607) = 3145728 * k + 883822 := by
    unfold C
    simp [show (1048576 * k + 294607) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 883822) = 1572864 * k + 441911 := by
    unfold C
    simp [show (3145728 * k + 883822) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 441911) = 4718592 * k + 1325734 := by
    unfold C
    simp [show (1572864 * k + 441911) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1325734) = 2359296 * k + 662867 := by
    unfold C
    simp [show (4718592 * k + 1325734) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 662867) = 7077888 * k + 1988602 := by
    unfold C
    simp [show (2359296 * k + 662867) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 1988602) = 3538944 * k + 994301 := by
    unfold C
    simp [show (7077888 * k + 1988602) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 994301) = 10616832 * k + 2982904 := by
    unfold C
    simp [show (3538944 * k + 994301) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 2982904) = 5308416 * k + 1491452 := by
    unfold C
    simp [show (10616832 * k + 2982904) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 1491452) = 2654208 * k + 745726 := by
    unfold C
    simp [show (5308416 * k + 1491452) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 745726) = 1327104 * k + 372863 := by
    unfold C
    simp [show (2654208 * k + 745726) % 2 = 0 by omega]
    omega
  have h11 : C (1327104 * k + 372863) = 3981312 * k + 1118590 := by
    unfold C
    simp [show (1327104 * k + 372863) % 2 ≠ 0 by omega]
    omega
  have h12 : C (3981312 * k + 1118590) = 1990656 * k + 559295 := by
    unfold C
    simp [show (3981312 * k + 1118590) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 559295) = 5971968 * k + 1677886 := by
    unfold C
    simp [show (1990656 * k + 559295) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 1677886) = 2985984 * k + 838943 := by
    unfold C
    simp [show (5971968 * k + 1677886) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 838943) = 8957952 * k + 2516830 := by
    unfold C
    simp [show (2985984 * k + 838943) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 2516830) = 4478976 * k + 1258415 := by
    unfold C
    simp [show (8957952 * k + 2516830) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 1258415) = 13436928 * k + 3775246 := by
    unfold C
    simp [show (4478976 * k + 1258415) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 3775246) = 6718464 * k + 1887623 := by
    unfold C
    simp [show (13436928 * k + 3775246) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 1887623) = 20155392 * k + 5662870 := by
    unfold C
    simp [show (6718464 * k + 1887623) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 5662870) = 10077696 * k + 2831435 := by
    unfold C
    simp [show (20155392 * k + 5662870) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 2831435) = 30233088 * k + 8494306 := by
    unfold C
    simp [show (10077696 * k + 2831435) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 8494306) = 15116544 * k + 4247153 := by
    unfold C
    simp [show (30233088 * k + 8494306) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 4247153) = 45349632 * k + 12741460 := by
    unfold C
    simp [show (15116544 * k + 4247153) % 2 ≠ 0 by omega]
    omega
  have h24 : C (45349632 * k + 12741460) = 22674816 * k + 6370730 := by
    unfold C
    simp [show (45349632 * k + 12741460) % 2 = 0 by omega]
    omega
  have h25 : C (22674816 * k + 6370730) = 11337408 * k + 3185365 := by
    unfold C
    simp [show (22674816 * k + 6370730) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 3185365) = 34012224 * k + 9556096 := by
    unfold C
    simp [show (11337408 * k + 3185365) % 2 ≠ 0 by omega]
    omega
  have h27 : C (34012224 * k + 9556096) = 17006112 * k + 4778048 := by
    unfold C
    simp [show (34012224 * k + 9556096) % 2 = 0 by omega]
    omega
  have h28 : C (17006112 * k + 4778048) = 8503056 * k + 2389024 := by
    unfold C
    simp [show (17006112 * k + 4778048) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 2389024) = 4251528 * k + 1194512 := by
    unfold C
    simp [show (8503056 * k + 2389024) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 1194512) = 2125764 * k + 597256 := by
    unfold C
    simp [show (4251528 * k + 1194512) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 597256) = 1062882 * k + 298628 := by
    unfold C
    simp [show (2125764 * k + 597256) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 298628) = 531441 * k + 149314 := by
    unfold C
    simp [show (1062882 * k + 298628) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 294607) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 294607)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_295071 : ∀ k : Nat,
    iterate (1048576 * k + 295071) 32 = 531441 * k + 149549 ∧
      531441 * k + 149549 < 1048576 * k + 295071 := by
  intro k
  have h1 : C (1048576 * k + 295071) = 3145728 * k + 885214 := by
    unfold C
    simp [show (1048576 * k + 295071) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 885214) = 1572864 * k + 442607 := by
    unfold C
    simp [show (3145728 * k + 885214) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 442607) = 4718592 * k + 1327822 := by
    unfold C
    simp [show (1572864 * k + 442607) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1327822) = 2359296 * k + 663911 := by
    unfold C
    simp [show (4718592 * k + 1327822) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 663911) = 7077888 * k + 1991734 := by
    unfold C
    simp [show (2359296 * k + 663911) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 1991734) = 3538944 * k + 995867 := by
    unfold C
    simp [show (7077888 * k + 1991734) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 995867) = 10616832 * k + 2987602 := by
    unfold C
    simp [show (3538944 * k + 995867) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 2987602) = 5308416 * k + 1493801 := by
    unfold C
    simp [show (10616832 * k + 2987602) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 1493801) = 15925248 * k + 4481404 := by
    unfold C
    simp [show (5308416 * k + 1493801) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 4481404) = 7962624 * k + 2240702 := by
    unfold C
    simp [show (15925248 * k + 4481404) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 2240702) = 3981312 * k + 1120351 := by
    unfold C
    simp [show (7962624 * k + 2240702) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 1120351) = 11943936 * k + 3361054 := by
    unfold C
    simp [show (3981312 * k + 1120351) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 3361054) = 5971968 * k + 1680527 := by
    unfold C
    simp [show (11943936 * k + 3361054) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 1680527) = 17915904 * k + 5041582 := by
    unfold C
    simp [show (5971968 * k + 1680527) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 5041582) = 8957952 * k + 2520791 := by
    unfold C
    simp [show (17915904 * k + 5041582) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 2520791) = 26873856 * k + 7562374 := by
    unfold C
    simp [show (8957952 * k + 2520791) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 7562374) = 13436928 * k + 3781187 := by
    unfold C
    simp [show (26873856 * k + 7562374) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 3781187) = 40310784 * k + 11343562 := by
    unfold C
    simp [show (13436928 * k + 3781187) % 2 ≠ 0 by omega]
    omega
  have h19 : C (40310784 * k + 11343562) = 20155392 * k + 5671781 := by
    unfold C
    simp [show (40310784 * k + 11343562) % 2 = 0 by omega]
    omega
  have h20 : C (20155392 * k + 5671781) = 60466176 * k + 17015344 := by
    unfold C
    simp [show (20155392 * k + 5671781) % 2 ≠ 0 by omega]
    omega
  have h21 : C (60466176 * k + 17015344) = 30233088 * k + 8507672 := by
    unfold C
    simp [show (60466176 * k + 17015344) % 2 = 0 by omega]
    omega
  have h22 : C (30233088 * k + 8507672) = 15116544 * k + 4253836 := by
    unfold C
    simp [show (30233088 * k + 8507672) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 4253836) = 7558272 * k + 2126918 := by
    unfold C
    simp [show (15116544 * k + 4253836) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 2126918) = 3779136 * k + 1063459 := by
    unfold C
    simp [show (7558272 * k + 2126918) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 1063459) = 11337408 * k + 3190378 := by
    unfold C
    simp [show (3779136 * k + 1063459) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 3190378) = 5668704 * k + 1595189 := by
    unfold C
    simp [show (11337408 * k + 3190378) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 1595189) = 17006112 * k + 4785568 := by
    unfold C
    simp [show (5668704 * k + 1595189) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 4785568) = 8503056 * k + 2392784 := by
    unfold C
    simp [show (17006112 * k + 4785568) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 2392784) = 4251528 * k + 1196392 := by
    unfold C
    simp [show (8503056 * k + 2392784) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 1196392) = 2125764 * k + 598196 := by
    unfold C
    simp [show (4251528 * k + 1196392) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 598196) = 1062882 * k + 299098 := by
    unfold C
    simp [show (2125764 * k + 598196) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 299098) = 531441 * k + 149549 := by
    unfold C
    simp [show (1062882 * k + 299098) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 295071) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 295071)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_295163 : ∀ k : Nat,
    iterate (1048576 * k + 295163) 32 = 531441 * k + 149596 ∧
      531441 * k + 149596 < 1048576 * k + 295163 := by
  intro k
  have h1 : C (1048576 * k + 295163) = 3145728 * k + 885490 := by
    unfold C
    simp [show (1048576 * k + 295163) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 885490) = 1572864 * k + 442745 := by
    unfold C
    simp [show (3145728 * k + 885490) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 442745) = 4718592 * k + 1328236 := by
    unfold C
    simp [show (1572864 * k + 442745) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1328236) = 2359296 * k + 664118 := by
    unfold C
    simp [show (4718592 * k + 1328236) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 664118) = 1179648 * k + 332059 := by
    unfold C
    simp [show (2359296 * k + 664118) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 332059) = 3538944 * k + 996178 := by
    unfold C
    simp [show (1179648 * k + 332059) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 996178) = 1769472 * k + 498089 := by
    unfold C
    simp [show (3538944 * k + 996178) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 498089) = 5308416 * k + 1494268 := by
    unfold C
    simp [show (1769472 * k + 498089) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 1494268) = 2654208 * k + 747134 := by
    unfold C
    simp [show (5308416 * k + 1494268) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 747134) = 1327104 * k + 373567 := by
    unfold C
    simp [show (2654208 * k + 747134) % 2 = 0 by omega]
    omega
  have h11 : C (1327104 * k + 373567) = 3981312 * k + 1120702 := by
    unfold C
    simp [show (1327104 * k + 373567) % 2 ≠ 0 by omega]
    omega
  have h12 : C (3981312 * k + 1120702) = 1990656 * k + 560351 := by
    unfold C
    simp [show (3981312 * k + 1120702) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 560351) = 5971968 * k + 1681054 := by
    unfold C
    simp [show (1990656 * k + 560351) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 1681054) = 2985984 * k + 840527 := by
    unfold C
    simp [show (5971968 * k + 1681054) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 840527) = 8957952 * k + 2521582 := by
    unfold C
    simp [show (2985984 * k + 840527) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 2521582) = 4478976 * k + 1260791 := by
    unfold C
    simp [show (8957952 * k + 2521582) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 1260791) = 13436928 * k + 3782374 := by
    unfold C
    simp [show (4478976 * k + 1260791) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 3782374) = 6718464 * k + 1891187 := by
    unfold C
    simp [show (13436928 * k + 3782374) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 1891187) = 20155392 * k + 5673562 := by
    unfold C
    simp [show (6718464 * k + 1891187) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 5673562) = 10077696 * k + 2836781 := by
    unfold C
    simp [show (20155392 * k + 5673562) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 2836781) = 30233088 * k + 8510344 := by
    unfold C
    simp [show (10077696 * k + 2836781) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 8510344) = 15116544 * k + 4255172 := by
    unfold C
    simp [show (30233088 * k + 8510344) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 4255172) = 7558272 * k + 2127586 := by
    unfold C
    simp [show (15116544 * k + 4255172) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 2127586) = 3779136 * k + 1063793 := by
    unfold C
    simp [show (7558272 * k + 2127586) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 1063793) = 11337408 * k + 3191380 := by
    unfold C
    simp [show (3779136 * k + 1063793) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 3191380) = 5668704 * k + 1595690 := by
    unfold C
    simp [show (11337408 * k + 3191380) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 1595690) = 2834352 * k + 797845 := by
    unfold C
    simp [show (5668704 * k + 1595690) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 797845) = 8503056 * k + 2393536 := by
    unfold C
    simp [show (2834352 * k + 797845) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 2393536) = 4251528 * k + 1196768 := by
    unfold C
    simp [show (8503056 * k + 2393536) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 1196768) = 2125764 * k + 598384 := by
    unfold C
    simp [show (4251528 * k + 1196768) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 598384) = 1062882 * k + 299192 := by
    unfold C
    simp [show (2125764 * k + 598384) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 299192) = 531441 * k + 149596 := by
    unfold C
    simp [show (1062882 * k + 299192) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 295163) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 295163)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_295359 : ∀ k : Nat,
    iterate (1048576 * k + 295359) 32 = 531441 * k + 149695 ∧
      531441 * k + 149695 < 1048576 * k + 295359 := by
  intro k
  have h1 : C (1048576 * k + 295359) = 3145728 * k + 886078 := by
    unfold C
    simp [show (1048576 * k + 295359) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 886078) = 1572864 * k + 443039 := by
    unfold C
    simp [show (3145728 * k + 886078) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 443039) = 4718592 * k + 1329118 := by
    unfold C
    simp [show (1572864 * k + 443039) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1329118) = 2359296 * k + 664559 := by
    unfold C
    simp [show (4718592 * k + 1329118) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 664559) = 7077888 * k + 1993678 := by
    unfold C
    simp [show (2359296 * k + 664559) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 1993678) = 3538944 * k + 996839 := by
    unfold C
    simp [show (7077888 * k + 1993678) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 996839) = 10616832 * k + 2990518 := by
    unfold C
    simp [show (3538944 * k + 996839) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 2990518) = 5308416 * k + 1495259 := by
    unfold C
    simp [show (10616832 * k + 2990518) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 1495259) = 15925248 * k + 4485778 := by
    unfold C
    simp [show (5308416 * k + 1495259) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 4485778) = 7962624 * k + 2242889 := by
    unfold C
    simp [show (15925248 * k + 4485778) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 2242889) = 23887872 * k + 6728668 := by
    unfold C
    simp [show (7962624 * k + 2242889) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 6728668) = 11943936 * k + 3364334 := by
    unfold C
    simp [show (23887872 * k + 6728668) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 3364334) = 5971968 * k + 1682167 := by
    unfold C
    simp [show (11943936 * k + 3364334) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 1682167) = 17915904 * k + 5046502 := by
    unfold C
    simp [show (5971968 * k + 1682167) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 5046502) = 8957952 * k + 2523251 := by
    unfold C
    simp [show (17915904 * k + 5046502) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 2523251) = 26873856 * k + 7569754 := by
    unfold C
    simp [show (8957952 * k + 2523251) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 7569754) = 13436928 * k + 3784877 := by
    unfold C
    simp [show (26873856 * k + 7569754) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 3784877) = 40310784 * k + 11354632 := by
    unfold C
    simp [show (13436928 * k + 3784877) % 2 ≠ 0 by omega]
    omega
  have h19 : C (40310784 * k + 11354632) = 20155392 * k + 5677316 := by
    unfold C
    simp [show (40310784 * k + 11354632) % 2 = 0 by omega]
    omega
  have h20 : C (20155392 * k + 5677316) = 10077696 * k + 2838658 := by
    unfold C
    simp [show (20155392 * k + 5677316) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 2838658) = 5038848 * k + 1419329 := by
    unfold C
    simp [show (10077696 * k + 2838658) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 1419329) = 15116544 * k + 4257988 := by
    unfold C
    simp [show (5038848 * k + 1419329) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 4257988) = 7558272 * k + 2128994 := by
    unfold C
    simp [show (15116544 * k + 4257988) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 2128994) = 3779136 * k + 1064497 := by
    unfold C
    simp [show (7558272 * k + 2128994) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 1064497) = 11337408 * k + 3193492 := by
    unfold C
    simp [show (3779136 * k + 1064497) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 3193492) = 5668704 * k + 1596746 := by
    unfold C
    simp [show (11337408 * k + 3193492) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 1596746) = 2834352 * k + 798373 := by
    unfold C
    simp [show (5668704 * k + 1596746) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 798373) = 8503056 * k + 2395120 := by
    unfold C
    simp [show (2834352 * k + 798373) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 2395120) = 4251528 * k + 1197560 := by
    unfold C
    simp [show (8503056 * k + 2395120) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 1197560) = 2125764 * k + 598780 := by
    unfold C
    simp [show (4251528 * k + 1197560) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 598780) = 1062882 * k + 299390 := by
    unfold C
    simp [show (2125764 * k + 598780) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 299390) = 531441 * k + 149695 := by
    unfold C
    simp [show (1062882 * k + 299390) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 295359) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 295359)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_295471 : ∀ k : Nat,
    iterate (1048576 * k + 295471) 32 = 531441 * k + 149752 ∧
      531441 * k + 149752 < 1048576 * k + 295471 := by
  intro k
  have h1 : C (1048576 * k + 295471) = 3145728 * k + 886414 := by
    unfold C
    simp [show (1048576 * k + 295471) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 886414) = 1572864 * k + 443207 := by
    unfold C
    simp [show (3145728 * k + 886414) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 443207) = 4718592 * k + 1329622 := by
    unfold C
    simp [show (1572864 * k + 443207) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1329622) = 2359296 * k + 664811 := by
    unfold C
    simp [show (4718592 * k + 1329622) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 664811) = 7077888 * k + 1994434 := by
    unfold C
    simp [show (2359296 * k + 664811) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 1994434) = 3538944 * k + 997217 := by
    unfold C
    simp [show (7077888 * k + 1994434) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 997217) = 10616832 * k + 2991652 := by
    unfold C
    simp [show (3538944 * k + 997217) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 2991652) = 5308416 * k + 1495826 := by
    unfold C
    simp [show (10616832 * k + 2991652) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 1495826) = 2654208 * k + 747913 := by
    unfold C
    simp [show (5308416 * k + 1495826) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 747913) = 7962624 * k + 2243740 := by
    unfold C
    simp [show (2654208 * k + 747913) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 2243740) = 3981312 * k + 1121870 := by
    unfold C
    simp [show (7962624 * k + 2243740) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 1121870) = 1990656 * k + 560935 := by
    unfold C
    simp [show (3981312 * k + 1121870) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 560935) = 5971968 * k + 1682806 := by
    unfold C
    simp [show (1990656 * k + 560935) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 1682806) = 2985984 * k + 841403 := by
    unfold C
    simp [show (5971968 * k + 1682806) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 841403) = 8957952 * k + 2524210 := by
    unfold C
    simp [show (2985984 * k + 841403) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 2524210) = 4478976 * k + 1262105 := by
    unfold C
    simp [show (8957952 * k + 2524210) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 1262105) = 13436928 * k + 3786316 := by
    unfold C
    simp [show (4478976 * k + 1262105) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 3786316) = 6718464 * k + 1893158 := by
    unfold C
    simp [show (13436928 * k + 3786316) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 1893158) = 3359232 * k + 946579 := by
    unfold C
    simp [show (6718464 * k + 1893158) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 946579) = 10077696 * k + 2839738 := by
    unfold C
    simp [show (3359232 * k + 946579) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 2839738) = 5038848 * k + 1419869 := by
    unfold C
    simp [show (10077696 * k + 2839738) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 1419869) = 15116544 * k + 4259608 := by
    unfold C
    simp [show (5038848 * k + 1419869) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 4259608) = 7558272 * k + 2129804 := by
    unfold C
    simp [show (15116544 * k + 4259608) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 2129804) = 3779136 * k + 1064902 := by
    unfold C
    simp [show (7558272 * k + 2129804) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 1064902) = 1889568 * k + 532451 := by
    unfold C
    simp [show (3779136 * k + 1064902) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 532451) = 5668704 * k + 1597354 := by
    unfold C
    simp [show (1889568 * k + 532451) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 1597354) = 2834352 * k + 798677 := by
    unfold C
    simp [show (5668704 * k + 1597354) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 798677) = 8503056 * k + 2396032 := by
    unfold C
    simp [show (2834352 * k + 798677) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 2396032) = 4251528 * k + 1198016 := by
    unfold C
    simp [show (8503056 * k + 2396032) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 1198016) = 2125764 * k + 599008 := by
    unfold C
    simp [show (4251528 * k + 1198016) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 599008) = 1062882 * k + 299504 := by
    unfold C
    simp [show (2125764 * k + 599008) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 299504) = 531441 * k + 149752 := by
    unfold C
    simp [show (1062882 * k + 299504) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 295471) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 295471)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_296655 : ∀ k : Nat,
    iterate (1048576 * k + 296655) 32 = 531441 * k + 150352 ∧
      531441 * k + 150352 < 1048576 * k + 296655 := by
  intro k
  have h1 : C (1048576 * k + 296655) = 3145728 * k + 889966 := by
    unfold C
    simp [show (1048576 * k + 296655) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 889966) = 1572864 * k + 444983 := by
    unfold C
    simp [show (3145728 * k + 889966) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 444983) = 4718592 * k + 1334950 := by
    unfold C
    simp [show (1572864 * k + 444983) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1334950) = 2359296 * k + 667475 := by
    unfold C
    simp [show (4718592 * k + 1334950) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 667475) = 7077888 * k + 2002426 := by
    unfold C
    simp [show (2359296 * k + 667475) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 2002426) = 3538944 * k + 1001213 := by
    unfold C
    simp [show (7077888 * k + 2002426) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1001213) = 10616832 * k + 3003640 := by
    unfold C
    simp [show (3538944 * k + 1001213) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 3003640) = 5308416 * k + 1501820 := by
    unfold C
    simp [show (10616832 * k + 3003640) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 1501820) = 2654208 * k + 750910 := by
    unfold C
    simp [show (5308416 * k + 1501820) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 750910) = 1327104 * k + 375455 := by
    unfold C
    simp [show (2654208 * k + 750910) % 2 = 0 by omega]
    omega
  have h11 : C (1327104 * k + 375455) = 3981312 * k + 1126366 := by
    unfold C
    simp [show (1327104 * k + 375455) % 2 ≠ 0 by omega]
    omega
  have h12 : C (3981312 * k + 1126366) = 1990656 * k + 563183 := by
    unfold C
    simp [show (3981312 * k + 1126366) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 563183) = 5971968 * k + 1689550 := by
    unfold C
    simp [show (1990656 * k + 563183) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 1689550) = 2985984 * k + 844775 := by
    unfold C
    simp [show (5971968 * k + 1689550) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 844775) = 8957952 * k + 2534326 := by
    unfold C
    simp [show (2985984 * k + 844775) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 2534326) = 4478976 * k + 1267163 := by
    unfold C
    simp [show (8957952 * k + 2534326) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 1267163) = 13436928 * k + 3801490 := by
    unfold C
    simp [show (4478976 * k + 1267163) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 3801490) = 6718464 * k + 1900745 := by
    unfold C
    simp [show (13436928 * k + 3801490) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 1900745) = 20155392 * k + 5702236 := by
    unfold C
    simp [show (6718464 * k + 1900745) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 5702236) = 10077696 * k + 2851118 := by
    unfold C
    simp [show (20155392 * k + 5702236) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 2851118) = 5038848 * k + 1425559 := by
    unfold C
    simp [show (10077696 * k + 2851118) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 1425559) = 15116544 * k + 4276678 := by
    unfold C
    simp [show (5038848 * k + 1425559) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 4276678) = 7558272 * k + 2138339 := by
    unfold C
    simp [show (15116544 * k + 4276678) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 2138339) = 22674816 * k + 6415018 := by
    unfold C
    simp [show (7558272 * k + 2138339) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 6415018) = 11337408 * k + 3207509 := by
    unfold C
    simp [show (22674816 * k + 6415018) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 3207509) = 34012224 * k + 9622528 := by
    unfold C
    simp [show (11337408 * k + 3207509) % 2 ≠ 0 by omega]
    omega
  have h27 : C (34012224 * k + 9622528) = 17006112 * k + 4811264 := by
    unfold C
    simp [show (34012224 * k + 9622528) % 2 = 0 by omega]
    omega
  have h28 : C (17006112 * k + 4811264) = 8503056 * k + 2405632 := by
    unfold C
    simp [show (17006112 * k + 4811264) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 2405632) = 4251528 * k + 1202816 := by
    unfold C
    simp [show (8503056 * k + 2405632) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 1202816) = 2125764 * k + 601408 := by
    unfold C
    simp [show (4251528 * k + 1202816) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 601408) = 1062882 * k + 300704 := by
    unfold C
    simp [show (2125764 * k + 601408) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 300704) = 531441 * k + 150352 := by
    unfold C
    simp [show (1062882 * k + 300704) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 296655) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 296655)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_297407 : ∀ k : Nat,
    iterate (1048576 * k + 297407) 32 = 531441 * k + 150733 ∧
      531441 * k + 150733 < 1048576 * k + 297407 := by
  intro k
  have h1 : C (1048576 * k + 297407) = 3145728 * k + 892222 := by
    unfold C
    simp [show (1048576 * k + 297407) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 892222) = 1572864 * k + 446111 := by
    unfold C
    simp [show (3145728 * k + 892222) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 446111) = 4718592 * k + 1338334 := by
    unfold C
    simp [show (1572864 * k + 446111) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1338334) = 2359296 * k + 669167 := by
    unfold C
    simp [show (4718592 * k + 1338334) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 669167) = 7077888 * k + 2007502 := by
    unfold C
    simp [show (2359296 * k + 669167) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 2007502) = 3538944 * k + 1003751 := by
    unfold C
    simp [show (7077888 * k + 2007502) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1003751) = 10616832 * k + 3011254 := by
    unfold C
    simp [show (3538944 * k + 1003751) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 3011254) = 5308416 * k + 1505627 := by
    unfold C
    simp [show (10616832 * k + 3011254) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 1505627) = 15925248 * k + 4516882 := by
    unfold C
    simp [show (5308416 * k + 1505627) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 4516882) = 7962624 * k + 2258441 := by
    unfold C
    simp [show (15925248 * k + 4516882) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 2258441) = 23887872 * k + 6775324 := by
    unfold C
    simp [show (7962624 * k + 2258441) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 6775324) = 11943936 * k + 3387662 := by
    unfold C
    simp [show (23887872 * k + 6775324) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 3387662) = 5971968 * k + 1693831 := by
    unfold C
    simp [show (11943936 * k + 3387662) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 1693831) = 17915904 * k + 5081494 := by
    unfold C
    simp [show (5971968 * k + 1693831) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 5081494) = 8957952 * k + 2540747 := by
    unfold C
    simp [show (17915904 * k + 5081494) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 2540747) = 26873856 * k + 7622242 := by
    unfold C
    simp [show (8957952 * k + 2540747) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 7622242) = 13436928 * k + 3811121 := by
    unfold C
    simp [show (26873856 * k + 7622242) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 3811121) = 40310784 * k + 11433364 := by
    unfold C
    simp [show (13436928 * k + 3811121) % 2 ≠ 0 by omega]
    omega
  have h19 : C (40310784 * k + 11433364) = 20155392 * k + 5716682 := by
    unfold C
    simp [show (40310784 * k + 11433364) % 2 = 0 by omega]
    omega
  have h20 : C (20155392 * k + 5716682) = 10077696 * k + 2858341 := by
    unfold C
    simp [show (20155392 * k + 5716682) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 2858341) = 30233088 * k + 8575024 := by
    unfold C
    simp [show (10077696 * k + 2858341) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 8575024) = 15116544 * k + 4287512 := by
    unfold C
    simp [show (30233088 * k + 8575024) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 4287512) = 7558272 * k + 2143756 := by
    unfold C
    simp [show (15116544 * k + 4287512) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 2143756) = 3779136 * k + 1071878 := by
    unfold C
    simp [show (7558272 * k + 2143756) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 1071878) = 1889568 * k + 535939 := by
    unfold C
    simp [show (3779136 * k + 1071878) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 535939) = 5668704 * k + 1607818 := by
    unfold C
    simp [show (1889568 * k + 535939) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 1607818) = 2834352 * k + 803909 := by
    unfold C
    simp [show (5668704 * k + 1607818) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 803909) = 8503056 * k + 2411728 := by
    unfold C
    simp [show (2834352 * k + 803909) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 2411728) = 4251528 * k + 1205864 := by
    unfold C
    simp [show (8503056 * k + 2411728) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 1205864) = 2125764 * k + 602932 := by
    unfold C
    simp [show (4251528 * k + 1205864) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 602932) = 1062882 * k + 301466 := by
    unfold C
    simp [show (2125764 * k + 602932) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 301466) = 531441 * k + 150733 := by
    unfold C
    simp [show (1062882 * k + 301466) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 297407) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 297407)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_298235 : ∀ k : Nat,
    iterate (1048576 * k + 298235) 32 = 531441 * k + 151153 ∧
      531441 * k + 151153 < 1048576 * k + 298235 := by
  intro k
  have h1 : C (1048576 * k + 298235) = 3145728 * k + 894706 := by
    unfold C
    simp [show (1048576 * k + 298235) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 894706) = 1572864 * k + 447353 := by
    unfold C
    simp [show (3145728 * k + 894706) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 447353) = 4718592 * k + 1342060 := by
    unfold C
    simp [show (1572864 * k + 447353) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1342060) = 2359296 * k + 671030 := by
    unfold C
    simp [show (4718592 * k + 1342060) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 671030) = 1179648 * k + 335515 := by
    unfold C
    simp [show (2359296 * k + 671030) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 335515) = 3538944 * k + 1006546 := by
    unfold C
    simp [show (1179648 * k + 335515) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 1006546) = 1769472 * k + 503273 := by
    unfold C
    simp [show (3538944 * k + 1006546) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 503273) = 5308416 * k + 1509820 := by
    unfold C
    simp [show (1769472 * k + 503273) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 1509820) = 2654208 * k + 754910 := by
    unfold C
    simp [show (5308416 * k + 1509820) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 754910) = 1327104 * k + 377455 := by
    unfold C
    simp [show (2654208 * k + 754910) % 2 = 0 by omega]
    omega
  have h11 : C (1327104 * k + 377455) = 3981312 * k + 1132366 := by
    unfold C
    simp [show (1327104 * k + 377455) % 2 ≠ 0 by omega]
    omega
  have h12 : C (3981312 * k + 1132366) = 1990656 * k + 566183 := by
    unfold C
    simp [show (3981312 * k + 1132366) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 566183) = 5971968 * k + 1698550 := by
    unfold C
    simp [show (1990656 * k + 566183) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 1698550) = 2985984 * k + 849275 := by
    unfold C
    simp [show (5971968 * k + 1698550) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 849275) = 8957952 * k + 2547826 := by
    unfold C
    simp [show (2985984 * k + 849275) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 2547826) = 4478976 * k + 1273913 := by
    unfold C
    simp [show (8957952 * k + 2547826) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 1273913) = 13436928 * k + 3821740 := by
    unfold C
    simp [show (4478976 * k + 1273913) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 3821740) = 6718464 * k + 1910870 := by
    unfold C
    simp [show (13436928 * k + 3821740) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 1910870) = 3359232 * k + 955435 := by
    unfold C
    simp [show (6718464 * k + 1910870) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 955435) = 10077696 * k + 2866306 := by
    unfold C
    simp [show (3359232 * k + 955435) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 2866306) = 5038848 * k + 1433153 := by
    unfold C
    simp [show (10077696 * k + 2866306) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 1433153) = 15116544 * k + 4299460 := by
    unfold C
    simp [show (5038848 * k + 1433153) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 4299460) = 7558272 * k + 2149730 := by
    unfold C
    simp [show (15116544 * k + 4299460) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 2149730) = 3779136 * k + 1074865 := by
    unfold C
    simp [show (7558272 * k + 2149730) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 1074865) = 11337408 * k + 3224596 := by
    unfold C
    simp [show (3779136 * k + 1074865) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 3224596) = 5668704 * k + 1612298 := by
    unfold C
    simp [show (11337408 * k + 3224596) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 1612298) = 2834352 * k + 806149 := by
    unfold C
    simp [show (5668704 * k + 1612298) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 806149) = 8503056 * k + 2418448 := by
    unfold C
    simp [show (2834352 * k + 806149) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 2418448) = 4251528 * k + 1209224 := by
    unfold C
    simp [show (8503056 * k + 2418448) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 1209224) = 2125764 * k + 604612 := by
    unfold C
    simp [show (4251528 * k + 1209224) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 604612) = 1062882 * k + 302306 := by
    unfold C
    simp [show (2125764 * k + 604612) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 302306) = 531441 * k + 151153 := by
    unfold C
    simp [show (1062882 * k + 302306) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 298235) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 298235)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_298267 : ∀ k : Nat,
    iterate (1048576 * k + 298267) 32 = 531441 * k + 151169 ∧
      531441 * k + 151169 < 1048576 * k + 298267 := by
  intro k
  have h1 : C (1048576 * k + 298267) = 3145728 * k + 894802 := by
    unfold C
    simp [show (1048576 * k + 298267) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 894802) = 1572864 * k + 447401 := by
    unfold C
    simp [show (3145728 * k + 894802) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 447401) = 4718592 * k + 1342204 := by
    unfold C
    simp [show (1572864 * k + 447401) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1342204) = 2359296 * k + 671102 := by
    unfold C
    simp [show (4718592 * k + 1342204) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 671102) = 1179648 * k + 335551 := by
    unfold C
    simp [show (2359296 * k + 671102) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 335551) = 3538944 * k + 1006654 := by
    unfold C
    simp [show (1179648 * k + 335551) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 1006654) = 1769472 * k + 503327 := by
    unfold C
    simp [show (3538944 * k + 1006654) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 503327) = 5308416 * k + 1509982 := by
    unfold C
    simp [show (1769472 * k + 503327) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 1509982) = 2654208 * k + 754991 := by
    unfold C
    simp [show (5308416 * k + 1509982) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 754991) = 7962624 * k + 2264974 := by
    unfold C
    simp [show (2654208 * k + 754991) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 2264974) = 3981312 * k + 1132487 := by
    unfold C
    simp [show (7962624 * k + 2264974) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 1132487) = 11943936 * k + 3397462 := by
    unfold C
    simp [show (3981312 * k + 1132487) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 3397462) = 5971968 * k + 1698731 := by
    unfold C
    simp [show (11943936 * k + 3397462) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 1698731) = 17915904 * k + 5096194 := by
    unfold C
    simp [show (5971968 * k + 1698731) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 5096194) = 8957952 * k + 2548097 := by
    unfold C
    simp [show (17915904 * k + 5096194) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 2548097) = 26873856 * k + 7644292 := by
    unfold C
    simp [show (8957952 * k + 2548097) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 7644292) = 13436928 * k + 3822146 := by
    unfold C
    simp [show (26873856 * k + 7644292) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 3822146) = 6718464 * k + 1911073 := by
    unfold C
    simp [show (13436928 * k + 3822146) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 1911073) = 20155392 * k + 5733220 := by
    unfold C
    simp [show (6718464 * k + 1911073) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 5733220) = 10077696 * k + 2866610 := by
    unfold C
    simp [show (20155392 * k + 5733220) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 2866610) = 5038848 * k + 1433305 := by
    unfold C
    simp [show (10077696 * k + 2866610) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 1433305) = 15116544 * k + 4299916 := by
    unfold C
    simp [show (5038848 * k + 1433305) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 4299916) = 7558272 * k + 2149958 := by
    unfold C
    simp [show (15116544 * k + 4299916) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 2149958) = 3779136 * k + 1074979 := by
    unfold C
    simp [show (7558272 * k + 2149958) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 1074979) = 11337408 * k + 3224938 := by
    unfold C
    simp [show (3779136 * k + 1074979) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 3224938) = 5668704 * k + 1612469 := by
    unfold C
    simp [show (11337408 * k + 3224938) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 1612469) = 17006112 * k + 4837408 := by
    unfold C
    simp [show (5668704 * k + 1612469) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 4837408) = 8503056 * k + 2418704 := by
    unfold C
    simp [show (17006112 * k + 4837408) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 2418704) = 4251528 * k + 1209352 := by
    unfold C
    simp [show (8503056 * k + 2418704) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 1209352) = 2125764 * k + 604676 := by
    unfold C
    simp [show (4251528 * k + 1209352) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 604676) = 1062882 * k + 302338 := by
    unfold C
    simp [show (2125764 * k + 604676) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 302338) = 531441 * k + 151169 := by
    unfold C
    simp [show (1062882 * k + 302338) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 298267) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 298267)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

end CollatzM20Shard039
