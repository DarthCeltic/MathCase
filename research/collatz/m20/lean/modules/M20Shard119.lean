import Mathlib.Data.Nat.Prime.Basic

namespace CollatzM20Shard119

def C (n : Nat) : Nat := if n % 2 = 0 then n / 2 else 3 * n + 1

def iterate (n t : Nat) : Nat := Nat.rec n (fun _ previous => C previous) t

theorem descent_mod1048576_927903 : ∀ k : Nat,
    iterate (1048576 * k + 927903) 32 = 531441 * k + 470282 ∧
      531441 * k + 470282 < 1048576 * k + 927903 := by
  intro k
  have h1 : C (1048576 * k + 927903) = 3145728 * k + 2783710 := by
    unfold C
    simp [show (1048576 * k + 927903) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2783710) = 1572864 * k + 1391855 := by
    unfold C
    simp [show (3145728 * k + 2783710) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1391855) = 4718592 * k + 4175566 := by
    unfold C
    simp [show (1572864 * k + 1391855) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 4175566) = 2359296 * k + 2087783 := by
    unfold C
    simp [show (4718592 * k + 4175566) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 2087783) = 7077888 * k + 6263350 := by
    unfold C
    simp [show (2359296 * k + 2087783) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 6263350) = 3538944 * k + 3131675 := by
    unfold C
    simp [show (7077888 * k + 6263350) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 3131675) = 10616832 * k + 9395026 := by
    unfold C
    simp [show (3538944 * k + 3131675) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 9395026) = 5308416 * k + 4697513 := by
    unfold C
    simp [show (10616832 * k + 9395026) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 4697513) = 15925248 * k + 14092540 := by
    unfold C
    simp [show (5308416 * k + 4697513) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 14092540) = 7962624 * k + 7046270 := by
    unfold C
    simp [show (15925248 * k + 14092540) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 7046270) = 3981312 * k + 3523135 := by
    unfold C
    simp [show (7962624 * k + 7046270) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 3523135) = 11943936 * k + 10569406 := by
    unfold C
    simp [show (3981312 * k + 3523135) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 10569406) = 5971968 * k + 5284703 := by
    unfold C
    simp [show (11943936 * k + 10569406) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 5284703) = 17915904 * k + 15854110 := by
    unfold C
    simp [show (5971968 * k + 5284703) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 15854110) = 8957952 * k + 7927055 := by
    unfold C
    simp [show (17915904 * k + 15854110) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 7927055) = 26873856 * k + 23781166 := by
    unfold C
    simp [show (8957952 * k + 7927055) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 23781166) = 13436928 * k + 11890583 := by
    unfold C
    simp [show (26873856 * k + 23781166) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 11890583) = 40310784 * k + 35671750 := by
    unfold C
    simp [show (13436928 * k + 11890583) % 2 ≠ 0 by omega]
    omega
  have h19 : C (40310784 * k + 35671750) = 20155392 * k + 17835875 := by
    unfold C
    simp [show (40310784 * k + 35671750) % 2 = 0 by omega]
    omega
  have h20 : C (20155392 * k + 17835875) = 60466176 * k + 53507626 := by
    unfold C
    simp [show (20155392 * k + 17835875) % 2 ≠ 0 by omega]
    omega
  have h21 : C (60466176 * k + 53507626) = 30233088 * k + 26753813 := by
    unfold C
    simp [show (60466176 * k + 53507626) % 2 = 0 by omega]
    omega
  have h22 : C (30233088 * k + 26753813) = 90699264 * k + 80261440 := by
    unfold C
    simp [show (30233088 * k + 26753813) % 2 ≠ 0 by omega]
    omega
  have h23 : C (90699264 * k + 80261440) = 45349632 * k + 40130720 := by
    unfold C
    simp [show (90699264 * k + 80261440) % 2 = 0 by omega]
    omega
  have h24 : C (45349632 * k + 40130720) = 22674816 * k + 20065360 := by
    unfold C
    simp [show (45349632 * k + 40130720) % 2 = 0 by omega]
    omega
  have h25 : C (22674816 * k + 20065360) = 11337408 * k + 10032680 := by
    unfold C
    simp [show (22674816 * k + 20065360) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 10032680) = 5668704 * k + 5016340 := by
    unfold C
    simp [show (11337408 * k + 10032680) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 5016340) = 2834352 * k + 2508170 := by
    unfold C
    simp [show (5668704 * k + 5016340) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2508170) = 1417176 * k + 1254085 := by
    unfold C
    simp [show (2834352 * k + 2508170) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 1254085) = 4251528 * k + 3762256 := by
    unfold C
    simp [show (1417176 * k + 1254085) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 3762256) = 2125764 * k + 1881128 := by
    unfold C
    simp [show (4251528 * k + 3762256) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1881128) = 1062882 * k + 940564 := by
    unfold C
    simp [show (2125764 * k + 1881128) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 940564) = 531441 * k + 470282 := by
    unfold C
    simp [show (1062882 * k + 940564) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 927903) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 927903)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_927995 : ∀ k : Nat,
    iterate (1048576 * k + 927995) 32 = 531441 * k + 470329 ∧
      531441 * k + 470329 < 1048576 * k + 927995 := by
  intro k
  have h1 : C (1048576 * k + 927995) = 3145728 * k + 2783986 := by
    unfold C
    simp [show (1048576 * k + 927995) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2783986) = 1572864 * k + 1391993 := by
    unfold C
    simp [show (3145728 * k + 2783986) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1391993) = 4718592 * k + 4175980 := by
    unfold C
    simp [show (1572864 * k + 1391993) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 4175980) = 2359296 * k + 2087990 := by
    unfold C
    simp [show (4718592 * k + 4175980) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 2087990) = 1179648 * k + 1043995 := by
    unfold C
    simp [show (2359296 * k + 2087990) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 1043995) = 3538944 * k + 3131986 := by
    unfold C
    simp [show (1179648 * k + 1043995) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 3131986) = 1769472 * k + 1565993 := by
    unfold C
    simp [show (3538944 * k + 3131986) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1565993) = 5308416 * k + 4697980 := by
    unfold C
    simp [show (1769472 * k + 1565993) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 4697980) = 2654208 * k + 2348990 := by
    unfold C
    simp [show (5308416 * k + 4697980) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 2348990) = 1327104 * k + 1174495 := by
    unfold C
    simp [show (2654208 * k + 2348990) % 2 = 0 by omega]
    omega
  have h11 : C (1327104 * k + 1174495) = 3981312 * k + 3523486 := by
    unfold C
    simp [show (1327104 * k + 1174495) % 2 ≠ 0 by omega]
    omega
  have h12 : C (3981312 * k + 3523486) = 1990656 * k + 1761743 := by
    unfold C
    simp [show (3981312 * k + 3523486) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 1761743) = 5971968 * k + 5285230 := by
    unfold C
    simp [show (1990656 * k + 1761743) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 5285230) = 2985984 * k + 2642615 := by
    unfold C
    simp [show (5971968 * k + 5285230) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 2642615) = 8957952 * k + 7927846 := by
    unfold C
    simp [show (2985984 * k + 2642615) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 7927846) = 4478976 * k + 3963923 := by
    unfold C
    simp [show (8957952 * k + 7927846) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 3963923) = 13436928 * k + 11891770 := by
    unfold C
    simp [show (4478976 * k + 3963923) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 11891770) = 6718464 * k + 5945885 := by
    unfold C
    simp [show (13436928 * k + 11891770) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 5945885) = 20155392 * k + 17837656 := by
    unfold C
    simp [show (6718464 * k + 5945885) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 17837656) = 10077696 * k + 8918828 := by
    unfold C
    simp [show (20155392 * k + 17837656) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 8918828) = 5038848 * k + 4459414 := by
    unfold C
    simp [show (10077696 * k + 8918828) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 4459414) = 2519424 * k + 2229707 := by
    unfold C
    simp [show (5038848 * k + 4459414) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 2229707) = 7558272 * k + 6689122 := by
    unfold C
    simp [show (2519424 * k + 2229707) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 6689122) = 3779136 * k + 3344561 := by
    unfold C
    simp [show (7558272 * k + 6689122) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 3344561) = 11337408 * k + 10033684 := by
    unfold C
    simp [show (3779136 * k + 3344561) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 10033684) = 5668704 * k + 5016842 := by
    unfold C
    simp [show (11337408 * k + 10033684) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 5016842) = 2834352 * k + 2508421 := by
    unfold C
    simp [show (5668704 * k + 5016842) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2508421) = 8503056 * k + 7525264 := by
    unfold C
    simp [show (2834352 * k + 2508421) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 7525264) = 4251528 * k + 3762632 := by
    unfold C
    simp [show (8503056 * k + 7525264) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 3762632) = 2125764 * k + 1881316 := by
    unfold C
    simp [show (4251528 * k + 3762632) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1881316) = 1062882 * k + 940658 := by
    unfold C
    simp [show (2125764 * k + 1881316) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 940658) = 531441 * k + 470329 := by
    unfold C
    simp [show (1062882 * k + 940658) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 927995) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 927995)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_928155 : ∀ k : Nat,
    iterate (1048576 * k + 928155) 32 = 531441 * k + 470410 ∧
      531441 * k + 470410 < 1048576 * k + 928155 := by
  intro k
  have h1 : C (1048576 * k + 928155) = 3145728 * k + 2784466 := by
    unfold C
    simp [show (1048576 * k + 928155) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2784466) = 1572864 * k + 1392233 := by
    unfold C
    simp [show (3145728 * k + 2784466) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1392233) = 4718592 * k + 4176700 := by
    unfold C
    simp [show (1572864 * k + 1392233) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 4176700) = 2359296 * k + 2088350 := by
    unfold C
    simp [show (4718592 * k + 4176700) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 2088350) = 1179648 * k + 1044175 := by
    unfold C
    simp [show (2359296 * k + 2088350) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 1044175) = 3538944 * k + 3132526 := by
    unfold C
    simp [show (1179648 * k + 1044175) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 3132526) = 1769472 * k + 1566263 := by
    unfold C
    simp [show (3538944 * k + 3132526) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1566263) = 5308416 * k + 4698790 := by
    unfold C
    simp [show (1769472 * k + 1566263) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 4698790) = 2654208 * k + 2349395 := by
    unfold C
    simp [show (5308416 * k + 4698790) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 2349395) = 7962624 * k + 7048186 := by
    unfold C
    simp [show (2654208 * k + 2349395) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 7048186) = 3981312 * k + 3524093 := by
    unfold C
    simp [show (7962624 * k + 7048186) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 3524093) = 11943936 * k + 10572280 := by
    unfold C
    simp [show (3981312 * k + 3524093) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 10572280) = 5971968 * k + 5286140 := by
    unfold C
    simp [show (11943936 * k + 10572280) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 5286140) = 2985984 * k + 2643070 := by
    unfold C
    simp [show (5971968 * k + 5286140) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 2643070) = 1492992 * k + 1321535 := by
    unfold C
    simp [show (2985984 * k + 2643070) % 2 = 0 by omega]
    omega
  have h16 : C (1492992 * k + 1321535) = 4478976 * k + 3964606 := by
    unfold C
    simp [show (1492992 * k + 1321535) % 2 ≠ 0 by omega]
    omega
  have h17 : C (4478976 * k + 3964606) = 2239488 * k + 1982303 := by
    unfold C
    simp [show (4478976 * k + 3964606) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 1982303) = 6718464 * k + 5946910 := by
    unfold C
    simp [show (2239488 * k + 1982303) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 5946910) = 3359232 * k + 2973455 := by
    unfold C
    simp [show (6718464 * k + 5946910) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 2973455) = 10077696 * k + 8920366 := by
    unfold C
    simp [show (3359232 * k + 2973455) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 8920366) = 5038848 * k + 4460183 := by
    unfold C
    simp [show (10077696 * k + 8920366) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 4460183) = 15116544 * k + 13380550 := by
    unfold C
    simp [show (5038848 * k + 4460183) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 13380550) = 7558272 * k + 6690275 := by
    unfold C
    simp [show (15116544 * k + 13380550) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 6690275) = 22674816 * k + 20070826 := by
    unfold C
    simp [show (7558272 * k + 6690275) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 20070826) = 11337408 * k + 10035413 := by
    unfold C
    simp [show (22674816 * k + 20070826) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 10035413) = 34012224 * k + 30106240 := by
    unfold C
    simp [show (11337408 * k + 10035413) % 2 ≠ 0 by omega]
    omega
  have h27 : C (34012224 * k + 30106240) = 17006112 * k + 15053120 := by
    unfold C
    simp [show (34012224 * k + 30106240) % 2 = 0 by omega]
    omega
  have h28 : C (17006112 * k + 15053120) = 8503056 * k + 7526560 := by
    unfold C
    simp [show (17006112 * k + 15053120) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 7526560) = 4251528 * k + 3763280 := by
    unfold C
    simp [show (8503056 * k + 7526560) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 3763280) = 2125764 * k + 1881640 := by
    unfold C
    simp [show (4251528 * k + 3763280) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1881640) = 1062882 * k + 940820 := by
    unfold C
    simp [show (2125764 * k + 1881640) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 940820) = 531441 * k + 470410 := by
    unfold C
    simp [show (1062882 * k + 940820) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 928155) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 928155)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_928879 : ∀ k : Nat,
    iterate (1048576 * k + 928879) 32 = 531441 * k + 470777 ∧
      531441 * k + 470777 < 1048576 * k + 928879 := by
  intro k
  have h1 : C (1048576 * k + 928879) = 3145728 * k + 2786638 := by
    unfold C
    simp [show (1048576 * k + 928879) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2786638) = 1572864 * k + 1393319 := by
    unfold C
    simp [show (3145728 * k + 2786638) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1393319) = 4718592 * k + 4179958 := by
    unfold C
    simp [show (1572864 * k + 1393319) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 4179958) = 2359296 * k + 2089979 := by
    unfold C
    simp [show (4718592 * k + 4179958) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 2089979) = 7077888 * k + 6269938 := by
    unfold C
    simp [show (2359296 * k + 2089979) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 6269938) = 3538944 * k + 3134969 := by
    unfold C
    simp [show (7077888 * k + 6269938) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 3134969) = 10616832 * k + 9404908 := by
    unfold C
    simp [show (3538944 * k + 3134969) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 9404908) = 5308416 * k + 4702454 := by
    unfold C
    simp [show (10616832 * k + 9404908) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 4702454) = 2654208 * k + 2351227 := by
    unfold C
    simp [show (5308416 * k + 4702454) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 2351227) = 7962624 * k + 7053682 := by
    unfold C
    simp [show (2654208 * k + 2351227) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 7053682) = 3981312 * k + 3526841 := by
    unfold C
    simp [show (7962624 * k + 7053682) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 3526841) = 11943936 * k + 10580524 := by
    unfold C
    simp [show (3981312 * k + 3526841) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 10580524) = 5971968 * k + 5290262 := by
    unfold C
    simp [show (11943936 * k + 10580524) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 5290262) = 2985984 * k + 2645131 := by
    unfold C
    simp [show (5971968 * k + 5290262) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 2645131) = 8957952 * k + 7935394 := by
    unfold C
    simp [show (2985984 * k + 2645131) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 7935394) = 4478976 * k + 3967697 := by
    unfold C
    simp [show (8957952 * k + 7935394) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 3967697) = 13436928 * k + 11903092 := by
    unfold C
    simp [show (4478976 * k + 3967697) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 11903092) = 6718464 * k + 5951546 := by
    unfold C
    simp [show (13436928 * k + 11903092) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 5951546) = 3359232 * k + 2975773 := by
    unfold C
    simp [show (6718464 * k + 5951546) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 2975773) = 10077696 * k + 8927320 := by
    unfold C
    simp [show (3359232 * k + 2975773) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 8927320) = 5038848 * k + 4463660 := by
    unfold C
    simp [show (10077696 * k + 8927320) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 4463660) = 2519424 * k + 2231830 := by
    unfold C
    simp [show (5038848 * k + 4463660) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 2231830) = 1259712 * k + 1115915 := by
    unfold C
    simp [show (2519424 * k + 2231830) % 2 = 0 by omega]
    omega
  have h24 : C (1259712 * k + 1115915) = 3779136 * k + 3347746 := by
    unfold C
    simp [show (1259712 * k + 1115915) % 2 ≠ 0 by omega]
    omega
  have h25 : C (3779136 * k + 3347746) = 1889568 * k + 1673873 := by
    unfold C
    simp [show (3779136 * k + 3347746) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1673873) = 5668704 * k + 5021620 := by
    unfold C
    simp [show (1889568 * k + 1673873) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 5021620) = 2834352 * k + 2510810 := by
    unfold C
    simp [show (5668704 * k + 5021620) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2510810) = 1417176 * k + 1255405 := by
    unfold C
    simp [show (2834352 * k + 2510810) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 1255405) = 4251528 * k + 3766216 := by
    unfold C
    simp [show (1417176 * k + 1255405) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 3766216) = 2125764 * k + 1883108 := by
    unfold C
    simp [show (4251528 * k + 3766216) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1883108) = 1062882 * k + 941554 := by
    unfold C
    simp [show (2125764 * k + 1883108) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 941554) = 531441 * k + 470777 := by
    unfold C
    simp [show (1062882 * k + 941554) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 928879) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 928879)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_928927 : ∀ k : Nat,
    iterate (1048576 * k + 928927) 32 = 531441 * k + 470801 ∧
      531441 * k + 470801 < 1048576 * k + 928927 := by
  intro k
  have h1 : C (1048576 * k + 928927) = 3145728 * k + 2786782 := by
    unfold C
    simp [show (1048576 * k + 928927) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2786782) = 1572864 * k + 1393391 := by
    unfold C
    simp [show (3145728 * k + 2786782) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1393391) = 4718592 * k + 4180174 := by
    unfold C
    simp [show (1572864 * k + 1393391) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 4180174) = 2359296 * k + 2090087 := by
    unfold C
    simp [show (4718592 * k + 4180174) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 2090087) = 7077888 * k + 6270262 := by
    unfold C
    simp [show (2359296 * k + 2090087) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 6270262) = 3538944 * k + 3135131 := by
    unfold C
    simp [show (7077888 * k + 6270262) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 3135131) = 10616832 * k + 9405394 := by
    unfold C
    simp [show (3538944 * k + 3135131) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 9405394) = 5308416 * k + 4702697 := by
    unfold C
    simp [show (10616832 * k + 9405394) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 4702697) = 15925248 * k + 14108092 := by
    unfold C
    simp [show (5308416 * k + 4702697) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 14108092) = 7962624 * k + 7054046 := by
    unfold C
    simp [show (15925248 * k + 14108092) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 7054046) = 3981312 * k + 3527023 := by
    unfold C
    simp [show (7962624 * k + 7054046) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 3527023) = 11943936 * k + 10581070 := by
    unfold C
    simp [show (3981312 * k + 3527023) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 10581070) = 5971968 * k + 5290535 := by
    unfold C
    simp [show (11943936 * k + 10581070) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 5290535) = 17915904 * k + 15871606 := by
    unfold C
    simp [show (5971968 * k + 5290535) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 15871606) = 8957952 * k + 7935803 := by
    unfold C
    simp [show (17915904 * k + 15871606) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 7935803) = 26873856 * k + 23807410 := by
    unfold C
    simp [show (8957952 * k + 7935803) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 23807410) = 13436928 * k + 11903705 := by
    unfold C
    simp [show (26873856 * k + 23807410) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 11903705) = 40310784 * k + 35711116 := by
    unfold C
    simp [show (13436928 * k + 11903705) % 2 ≠ 0 by omega]
    omega
  have h19 : C (40310784 * k + 35711116) = 20155392 * k + 17855558 := by
    unfold C
    simp [show (40310784 * k + 35711116) % 2 = 0 by omega]
    omega
  have h20 : C (20155392 * k + 17855558) = 10077696 * k + 8927779 := by
    unfold C
    simp [show (20155392 * k + 17855558) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 8927779) = 30233088 * k + 26783338 := by
    unfold C
    simp [show (10077696 * k + 8927779) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 26783338) = 15116544 * k + 13391669 := by
    unfold C
    simp [show (30233088 * k + 26783338) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 13391669) = 45349632 * k + 40175008 := by
    unfold C
    simp [show (15116544 * k + 13391669) % 2 ≠ 0 by omega]
    omega
  have h24 : C (45349632 * k + 40175008) = 22674816 * k + 20087504 := by
    unfold C
    simp [show (45349632 * k + 40175008) % 2 = 0 by omega]
    omega
  have h25 : C (22674816 * k + 20087504) = 11337408 * k + 10043752 := by
    unfold C
    simp [show (22674816 * k + 20087504) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 10043752) = 5668704 * k + 5021876 := by
    unfold C
    simp [show (11337408 * k + 10043752) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 5021876) = 2834352 * k + 2510938 := by
    unfold C
    simp [show (5668704 * k + 5021876) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2510938) = 1417176 * k + 1255469 := by
    unfold C
    simp [show (2834352 * k + 2510938) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 1255469) = 4251528 * k + 3766408 := by
    unfold C
    simp [show (1417176 * k + 1255469) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 3766408) = 2125764 * k + 1883204 := by
    unfold C
    simp [show (4251528 * k + 3766408) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1883204) = 1062882 * k + 941602 := by
    unfold C
    simp [show (2125764 * k + 1883204) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 941602) = 531441 * k + 470801 := by
    unfold C
    simp [show (1062882 * k + 941602) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 928927) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 928927)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_929487 : ∀ k : Nat,
    iterate (1048576 * k + 929487) 32 = 531441 * k + 471085 ∧
      531441 * k + 471085 < 1048576 * k + 929487 := by
  intro k
  have h1 : C (1048576 * k + 929487) = 3145728 * k + 2788462 := by
    unfold C
    simp [show (1048576 * k + 929487) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2788462) = 1572864 * k + 1394231 := by
    unfold C
    simp [show (3145728 * k + 2788462) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1394231) = 4718592 * k + 4182694 := by
    unfold C
    simp [show (1572864 * k + 1394231) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 4182694) = 2359296 * k + 2091347 := by
    unfold C
    simp [show (4718592 * k + 4182694) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 2091347) = 7077888 * k + 6274042 := by
    unfold C
    simp [show (2359296 * k + 2091347) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 6274042) = 3538944 * k + 3137021 := by
    unfold C
    simp [show (7077888 * k + 6274042) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 3137021) = 10616832 * k + 9411064 := by
    unfold C
    simp [show (3538944 * k + 3137021) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 9411064) = 5308416 * k + 4705532 := by
    unfold C
    simp [show (10616832 * k + 9411064) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 4705532) = 2654208 * k + 2352766 := by
    unfold C
    simp [show (5308416 * k + 4705532) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 2352766) = 1327104 * k + 1176383 := by
    unfold C
    simp [show (2654208 * k + 2352766) % 2 = 0 by omega]
    omega
  have h11 : C (1327104 * k + 1176383) = 3981312 * k + 3529150 := by
    unfold C
    simp [show (1327104 * k + 1176383) % 2 ≠ 0 by omega]
    omega
  have h12 : C (3981312 * k + 3529150) = 1990656 * k + 1764575 := by
    unfold C
    simp [show (3981312 * k + 3529150) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 1764575) = 5971968 * k + 5293726 := by
    unfold C
    simp [show (1990656 * k + 1764575) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 5293726) = 2985984 * k + 2646863 := by
    unfold C
    simp [show (5971968 * k + 5293726) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 2646863) = 8957952 * k + 7940590 := by
    unfold C
    simp [show (2985984 * k + 2646863) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 7940590) = 4478976 * k + 3970295 := by
    unfold C
    simp [show (8957952 * k + 7940590) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 3970295) = 13436928 * k + 11910886 := by
    unfold C
    simp [show (4478976 * k + 3970295) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 11910886) = 6718464 * k + 5955443 := by
    unfold C
    simp [show (13436928 * k + 11910886) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 5955443) = 20155392 * k + 17866330 := by
    unfold C
    simp [show (6718464 * k + 5955443) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 17866330) = 10077696 * k + 8933165 := by
    unfold C
    simp [show (20155392 * k + 17866330) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 8933165) = 30233088 * k + 26799496 := by
    unfold C
    simp [show (10077696 * k + 8933165) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 26799496) = 15116544 * k + 13399748 := by
    unfold C
    simp [show (30233088 * k + 26799496) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 13399748) = 7558272 * k + 6699874 := by
    unfold C
    simp [show (15116544 * k + 13399748) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 6699874) = 3779136 * k + 3349937 := by
    unfold C
    simp [show (7558272 * k + 6699874) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 3349937) = 11337408 * k + 10049812 := by
    unfold C
    simp [show (3779136 * k + 3349937) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 10049812) = 5668704 * k + 5024906 := by
    unfold C
    simp [show (11337408 * k + 10049812) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 5024906) = 2834352 * k + 2512453 := by
    unfold C
    simp [show (5668704 * k + 5024906) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2512453) = 8503056 * k + 7537360 := by
    unfold C
    simp [show (2834352 * k + 2512453) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 7537360) = 4251528 * k + 3768680 := by
    unfold C
    simp [show (8503056 * k + 7537360) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 3768680) = 2125764 * k + 1884340 := by
    unfold C
    simp [show (4251528 * k + 3768680) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1884340) = 1062882 * k + 942170 := by
    unfold C
    simp [show (2125764 * k + 1884340) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 942170) = 531441 * k + 471085 := by
    unfold C
    simp [show (1062882 * k + 942170) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 929487) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 929487)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_930111 : ∀ k : Nat,
    iterate (1048576 * k + 930111) 32 = 531441 * k + 471401 ∧
      531441 * k + 471401 < 1048576 * k + 930111 := by
  intro k
  have h1 : C (1048576 * k + 930111) = 3145728 * k + 2790334 := by
    unfold C
    simp [show (1048576 * k + 930111) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2790334) = 1572864 * k + 1395167 := by
    unfold C
    simp [show (3145728 * k + 2790334) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1395167) = 4718592 * k + 4185502 := by
    unfold C
    simp [show (1572864 * k + 1395167) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 4185502) = 2359296 * k + 2092751 := by
    unfold C
    simp [show (4718592 * k + 4185502) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 2092751) = 7077888 * k + 6278254 := by
    unfold C
    simp [show (2359296 * k + 2092751) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 6278254) = 3538944 * k + 3139127 := by
    unfold C
    simp [show (7077888 * k + 6278254) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 3139127) = 10616832 * k + 9417382 := by
    unfold C
    simp [show (3538944 * k + 3139127) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 9417382) = 5308416 * k + 4708691 := by
    unfold C
    simp [show (10616832 * k + 9417382) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 4708691) = 15925248 * k + 14126074 := by
    unfold C
    simp [show (5308416 * k + 4708691) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 14126074) = 7962624 * k + 7063037 := by
    unfold C
    simp [show (15925248 * k + 14126074) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 7063037) = 23887872 * k + 21189112 := by
    unfold C
    simp [show (7962624 * k + 7063037) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 21189112) = 11943936 * k + 10594556 := by
    unfold C
    simp [show (23887872 * k + 21189112) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 10594556) = 5971968 * k + 5297278 := by
    unfold C
    simp [show (11943936 * k + 10594556) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 5297278) = 2985984 * k + 2648639 := by
    unfold C
    simp [show (5971968 * k + 5297278) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 2648639) = 8957952 * k + 7945918 := by
    unfold C
    simp [show (2985984 * k + 2648639) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 7945918) = 4478976 * k + 3972959 := by
    unfold C
    simp [show (8957952 * k + 7945918) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 3972959) = 13436928 * k + 11918878 := by
    unfold C
    simp [show (4478976 * k + 3972959) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 11918878) = 6718464 * k + 5959439 := by
    unfold C
    simp [show (13436928 * k + 11918878) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 5959439) = 20155392 * k + 17878318 := by
    unfold C
    simp [show (6718464 * k + 5959439) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 17878318) = 10077696 * k + 8939159 := by
    unfold C
    simp [show (20155392 * k + 17878318) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 8939159) = 30233088 * k + 26817478 := by
    unfold C
    simp [show (10077696 * k + 8939159) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 26817478) = 15116544 * k + 13408739 := by
    unfold C
    simp [show (30233088 * k + 26817478) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 13408739) = 45349632 * k + 40226218 := by
    unfold C
    simp [show (15116544 * k + 13408739) % 2 ≠ 0 by omega]
    omega
  have h24 : C (45349632 * k + 40226218) = 22674816 * k + 20113109 := by
    unfold C
    simp [show (45349632 * k + 40226218) % 2 = 0 by omega]
    omega
  have h25 : C (22674816 * k + 20113109) = 68024448 * k + 60339328 := by
    unfold C
    simp [show (22674816 * k + 20113109) % 2 ≠ 0 by omega]
    omega
  have h26 : C (68024448 * k + 60339328) = 34012224 * k + 30169664 := by
    unfold C
    simp [show (68024448 * k + 60339328) % 2 = 0 by omega]
    omega
  have h27 : C (34012224 * k + 30169664) = 17006112 * k + 15084832 := by
    unfold C
    simp [show (34012224 * k + 30169664) % 2 = 0 by omega]
    omega
  have h28 : C (17006112 * k + 15084832) = 8503056 * k + 7542416 := by
    unfold C
    simp [show (17006112 * k + 15084832) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 7542416) = 4251528 * k + 3771208 := by
    unfold C
    simp [show (8503056 * k + 7542416) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 3771208) = 2125764 * k + 1885604 := by
    unfold C
    simp [show (4251528 * k + 3771208) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1885604) = 1062882 * k + 942802 := by
    unfold C
    simp [show (2125764 * k + 1885604) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 942802) = 531441 * k + 471401 := by
    unfold C
    simp [show (1062882 * k + 942802) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 930111) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 930111)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_930239 : ∀ k : Nat,
    iterate (1048576 * k + 930239) 32 = 531441 * k + 471466 ∧
      531441 * k + 471466 < 1048576 * k + 930239 := by
  intro k
  have h1 : C (1048576 * k + 930239) = 3145728 * k + 2790718 := by
    unfold C
    simp [show (1048576 * k + 930239) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2790718) = 1572864 * k + 1395359 := by
    unfold C
    simp [show (3145728 * k + 2790718) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1395359) = 4718592 * k + 4186078 := by
    unfold C
    simp [show (1572864 * k + 1395359) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 4186078) = 2359296 * k + 2093039 := by
    unfold C
    simp [show (4718592 * k + 4186078) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 2093039) = 7077888 * k + 6279118 := by
    unfold C
    simp [show (2359296 * k + 2093039) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 6279118) = 3538944 * k + 3139559 := by
    unfold C
    simp [show (7077888 * k + 6279118) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 3139559) = 10616832 * k + 9418678 := by
    unfold C
    simp [show (3538944 * k + 3139559) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 9418678) = 5308416 * k + 4709339 := by
    unfold C
    simp [show (10616832 * k + 9418678) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 4709339) = 15925248 * k + 14128018 := by
    unfold C
    simp [show (5308416 * k + 4709339) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 14128018) = 7962624 * k + 7064009 := by
    unfold C
    simp [show (15925248 * k + 14128018) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 7064009) = 23887872 * k + 21192028 := by
    unfold C
    simp [show (7962624 * k + 7064009) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 21192028) = 11943936 * k + 10596014 := by
    unfold C
    simp [show (23887872 * k + 21192028) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 10596014) = 5971968 * k + 5298007 := by
    unfold C
    simp [show (11943936 * k + 10596014) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 5298007) = 17915904 * k + 15894022 := by
    unfold C
    simp [show (5971968 * k + 5298007) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 15894022) = 8957952 * k + 7947011 := by
    unfold C
    simp [show (17915904 * k + 15894022) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 7947011) = 26873856 * k + 23841034 := by
    unfold C
    simp [show (8957952 * k + 7947011) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 23841034) = 13436928 * k + 11920517 := by
    unfold C
    simp [show (26873856 * k + 23841034) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 11920517) = 40310784 * k + 35761552 := by
    unfold C
    simp [show (13436928 * k + 11920517) % 2 ≠ 0 by omega]
    omega
  have h19 : C (40310784 * k + 35761552) = 20155392 * k + 17880776 := by
    unfold C
    simp [show (40310784 * k + 35761552) % 2 = 0 by omega]
    omega
  have h20 : C (20155392 * k + 17880776) = 10077696 * k + 8940388 := by
    unfold C
    simp [show (20155392 * k + 17880776) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 8940388) = 5038848 * k + 4470194 := by
    unfold C
    simp [show (10077696 * k + 8940388) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 4470194) = 2519424 * k + 2235097 := by
    unfold C
    simp [show (5038848 * k + 4470194) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 2235097) = 7558272 * k + 6705292 := by
    unfold C
    simp [show (2519424 * k + 2235097) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 6705292) = 3779136 * k + 3352646 := by
    unfold C
    simp [show (7558272 * k + 6705292) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 3352646) = 1889568 * k + 1676323 := by
    unfold C
    simp [show (3779136 * k + 3352646) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1676323) = 5668704 * k + 5028970 := by
    unfold C
    simp [show (1889568 * k + 1676323) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 5028970) = 2834352 * k + 2514485 := by
    unfold C
    simp [show (5668704 * k + 5028970) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2514485) = 8503056 * k + 7543456 := by
    unfold C
    simp [show (2834352 * k + 2514485) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 7543456) = 4251528 * k + 3771728 := by
    unfold C
    simp [show (8503056 * k + 7543456) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 3771728) = 2125764 * k + 1885864 := by
    unfold C
    simp [show (4251528 * k + 3771728) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1885864) = 1062882 * k + 942932 := by
    unfold C
    simp [show (2125764 * k + 1885864) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 942932) = 531441 * k + 471466 := by
    unfold C
    simp [show (1062882 * k + 942932) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 930239) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 930239)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_930335 : ∀ k : Nat,
    iterate (1048576 * k + 930335) 32 = 531441 * k + 471515 ∧
      531441 * k + 471515 < 1048576 * k + 930335 := by
  intro k
  have h1 : C (1048576 * k + 930335) = 3145728 * k + 2791006 := by
    unfold C
    simp [show (1048576 * k + 930335) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2791006) = 1572864 * k + 1395503 := by
    unfold C
    simp [show (3145728 * k + 2791006) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1395503) = 4718592 * k + 4186510 := by
    unfold C
    simp [show (1572864 * k + 1395503) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 4186510) = 2359296 * k + 2093255 := by
    unfold C
    simp [show (4718592 * k + 4186510) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 2093255) = 7077888 * k + 6279766 := by
    unfold C
    simp [show (2359296 * k + 2093255) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 6279766) = 3538944 * k + 3139883 := by
    unfold C
    simp [show (7077888 * k + 6279766) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 3139883) = 10616832 * k + 9419650 := by
    unfold C
    simp [show (3538944 * k + 3139883) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 9419650) = 5308416 * k + 4709825 := by
    unfold C
    simp [show (10616832 * k + 9419650) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 4709825) = 15925248 * k + 14129476 := by
    unfold C
    simp [show (5308416 * k + 4709825) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 14129476) = 7962624 * k + 7064738 := by
    unfold C
    simp [show (15925248 * k + 14129476) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 7064738) = 3981312 * k + 3532369 := by
    unfold C
    simp [show (7962624 * k + 7064738) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 3532369) = 11943936 * k + 10597108 := by
    unfold C
    simp [show (3981312 * k + 3532369) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 10597108) = 5971968 * k + 5298554 := by
    unfold C
    simp [show (11943936 * k + 10597108) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 5298554) = 2985984 * k + 2649277 := by
    unfold C
    simp [show (5971968 * k + 5298554) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 2649277) = 8957952 * k + 7947832 := by
    unfold C
    simp [show (2985984 * k + 2649277) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 7947832) = 4478976 * k + 3973916 := by
    unfold C
    simp [show (8957952 * k + 7947832) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 3973916) = 2239488 * k + 1986958 := by
    unfold C
    simp [show (4478976 * k + 3973916) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 1986958) = 1119744 * k + 993479 := by
    unfold C
    simp [show (2239488 * k + 1986958) % 2 = 0 by omega]
    omega
  have h19 : C (1119744 * k + 993479) = 3359232 * k + 2980438 := by
    unfold C
    simp [show (1119744 * k + 993479) % 2 ≠ 0 by omega]
    omega
  have h20 : C (3359232 * k + 2980438) = 1679616 * k + 1490219 := by
    unfold C
    simp [show (3359232 * k + 2980438) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 1490219) = 5038848 * k + 4470658 := by
    unfold C
    simp [show (1679616 * k + 1490219) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 4470658) = 2519424 * k + 2235329 := by
    unfold C
    simp [show (5038848 * k + 4470658) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 2235329) = 7558272 * k + 6705988 := by
    unfold C
    simp [show (2519424 * k + 2235329) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 6705988) = 3779136 * k + 3352994 := by
    unfold C
    simp [show (7558272 * k + 6705988) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 3352994) = 1889568 * k + 1676497 := by
    unfold C
    simp [show (3779136 * k + 3352994) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1676497) = 5668704 * k + 5029492 := by
    unfold C
    simp [show (1889568 * k + 1676497) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 5029492) = 2834352 * k + 2514746 := by
    unfold C
    simp [show (5668704 * k + 5029492) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2514746) = 1417176 * k + 1257373 := by
    unfold C
    simp [show (2834352 * k + 2514746) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 1257373) = 4251528 * k + 3772120 := by
    unfold C
    simp [show (1417176 * k + 1257373) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 3772120) = 2125764 * k + 1886060 := by
    unfold C
    simp [show (4251528 * k + 3772120) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1886060) = 1062882 * k + 943030 := by
    unfold C
    simp [show (2125764 * k + 1886060) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 943030) = 531441 * k + 471515 := by
    unfold C
    simp [show (1062882 * k + 943030) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 930335) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 930335)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_930631 : ∀ k : Nat,
    iterate (1048576 * k + 930631) 32 = 531441 * k + 471665 ∧
      531441 * k + 471665 < 1048576 * k + 930631 := by
  intro k
  have h1 : C (1048576 * k + 930631) = 3145728 * k + 2791894 := by
    unfold C
    simp [show (1048576 * k + 930631) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2791894) = 1572864 * k + 1395947 := by
    unfold C
    simp [show (3145728 * k + 2791894) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1395947) = 4718592 * k + 4187842 := by
    unfold C
    simp [show (1572864 * k + 1395947) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 4187842) = 2359296 * k + 2093921 := by
    unfold C
    simp [show (4718592 * k + 4187842) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 2093921) = 7077888 * k + 6281764 := by
    unfold C
    simp [show (2359296 * k + 2093921) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 6281764) = 3538944 * k + 3140882 := by
    unfold C
    simp [show (7077888 * k + 6281764) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 3140882) = 1769472 * k + 1570441 := by
    unfold C
    simp [show (3538944 * k + 3140882) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1570441) = 5308416 * k + 4711324 := by
    unfold C
    simp [show (1769472 * k + 1570441) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 4711324) = 2654208 * k + 2355662 := by
    unfold C
    simp [show (5308416 * k + 4711324) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 2355662) = 1327104 * k + 1177831 := by
    unfold C
    simp [show (2654208 * k + 2355662) % 2 = 0 by omega]
    omega
  have h11 : C (1327104 * k + 1177831) = 3981312 * k + 3533494 := by
    unfold C
    simp [show (1327104 * k + 1177831) % 2 ≠ 0 by omega]
    omega
  have h12 : C (3981312 * k + 3533494) = 1990656 * k + 1766747 := by
    unfold C
    simp [show (3981312 * k + 3533494) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 1766747) = 5971968 * k + 5300242 := by
    unfold C
    simp [show (1990656 * k + 1766747) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 5300242) = 2985984 * k + 2650121 := by
    unfold C
    simp [show (5971968 * k + 5300242) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 2650121) = 8957952 * k + 7950364 := by
    unfold C
    simp [show (2985984 * k + 2650121) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 7950364) = 4478976 * k + 3975182 := by
    unfold C
    simp [show (8957952 * k + 7950364) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 3975182) = 2239488 * k + 1987591 := by
    unfold C
    simp [show (4478976 * k + 3975182) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 1987591) = 6718464 * k + 5962774 := by
    unfold C
    simp [show (2239488 * k + 1987591) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 5962774) = 3359232 * k + 2981387 := by
    unfold C
    simp [show (6718464 * k + 5962774) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 2981387) = 10077696 * k + 8944162 := by
    unfold C
    simp [show (3359232 * k + 2981387) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 8944162) = 5038848 * k + 4472081 := by
    unfold C
    simp [show (10077696 * k + 8944162) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 4472081) = 15116544 * k + 13416244 := by
    unfold C
    simp [show (5038848 * k + 4472081) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 13416244) = 7558272 * k + 6708122 := by
    unfold C
    simp [show (15116544 * k + 13416244) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 6708122) = 3779136 * k + 3354061 := by
    unfold C
    simp [show (7558272 * k + 6708122) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 3354061) = 11337408 * k + 10062184 := by
    unfold C
    simp [show (3779136 * k + 3354061) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 10062184) = 5668704 * k + 5031092 := by
    unfold C
    simp [show (11337408 * k + 10062184) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 5031092) = 2834352 * k + 2515546 := by
    unfold C
    simp [show (5668704 * k + 5031092) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2515546) = 1417176 * k + 1257773 := by
    unfold C
    simp [show (2834352 * k + 2515546) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 1257773) = 4251528 * k + 3773320 := by
    unfold C
    simp [show (1417176 * k + 1257773) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 3773320) = 2125764 * k + 1886660 := by
    unfold C
    simp [show (4251528 * k + 3773320) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1886660) = 1062882 * k + 943330 := by
    unfold C
    simp [show (2125764 * k + 1886660) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 943330) = 531441 * k + 471665 := by
    unfold C
    simp [show (1062882 * k + 943330) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 930631) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 930631)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_930975 : ∀ k : Nat,
    iterate (1048576 * k + 930975) 32 = 531441 * k + 471839 ∧
      531441 * k + 471839 < 1048576 * k + 930975 := by
  intro k
  have h1 : C (1048576 * k + 930975) = 3145728 * k + 2792926 := by
    unfold C
    simp [show (1048576 * k + 930975) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2792926) = 1572864 * k + 1396463 := by
    unfold C
    simp [show (3145728 * k + 2792926) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1396463) = 4718592 * k + 4189390 := by
    unfold C
    simp [show (1572864 * k + 1396463) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 4189390) = 2359296 * k + 2094695 := by
    unfold C
    simp [show (4718592 * k + 4189390) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 2094695) = 7077888 * k + 6284086 := by
    unfold C
    simp [show (2359296 * k + 2094695) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 6284086) = 3538944 * k + 3142043 := by
    unfold C
    simp [show (7077888 * k + 6284086) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 3142043) = 10616832 * k + 9426130 := by
    unfold C
    simp [show (3538944 * k + 3142043) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 9426130) = 5308416 * k + 4713065 := by
    unfold C
    simp [show (10616832 * k + 9426130) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 4713065) = 15925248 * k + 14139196 := by
    unfold C
    simp [show (5308416 * k + 4713065) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 14139196) = 7962624 * k + 7069598 := by
    unfold C
    simp [show (15925248 * k + 14139196) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 7069598) = 3981312 * k + 3534799 := by
    unfold C
    simp [show (7962624 * k + 7069598) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 3534799) = 11943936 * k + 10604398 := by
    unfold C
    simp [show (3981312 * k + 3534799) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 10604398) = 5971968 * k + 5302199 := by
    unfold C
    simp [show (11943936 * k + 10604398) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 5302199) = 17915904 * k + 15906598 := by
    unfold C
    simp [show (5971968 * k + 5302199) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 15906598) = 8957952 * k + 7953299 := by
    unfold C
    simp [show (17915904 * k + 15906598) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 7953299) = 26873856 * k + 23859898 := by
    unfold C
    simp [show (8957952 * k + 7953299) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 23859898) = 13436928 * k + 11929949 := by
    unfold C
    simp [show (26873856 * k + 23859898) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 11929949) = 40310784 * k + 35789848 := by
    unfold C
    simp [show (13436928 * k + 11929949) % 2 ≠ 0 by omega]
    omega
  have h19 : C (40310784 * k + 35789848) = 20155392 * k + 17894924 := by
    unfold C
    simp [show (40310784 * k + 35789848) % 2 = 0 by omega]
    omega
  have h20 : C (20155392 * k + 17894924) = 10077696 * k + 8947462 := by
    unfold C
    simp [show (20155392 * k + 17894924) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 8947462) = 5038848 * k + 4473731 := by
    unfold C
    simp [show (10077696 * k + 8947462) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 4473731) = 15116544 * k + 13421194 := by
    unfold C
    simp [show (5038848 * k + 4473731) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 13421194) = 7558272 * k + 6710597 := by
    unfold C
    simp [show (15116544 * k + 13421194) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 6710597) = 22674816 * k + 20131792 := by
    unfold C
    simp [show (7558272 * k + 6710597) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 20131792) = 11337408 * k + 10065896 := by
    unfold C
    simp [show (22674816 * k + 20131792) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 10065896) = 5668704 * k + 5032948 := by
    unfold C
    simp [show (11337408 * k + 10065896) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 5032948) = 2834352 * k + 2516474 := by
    unfold C
    simp [show (5668704 * k + 5032948) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2516474) = 1417176 * k + 1258237 := by
    unfold C
    simp [show (2834352 * k + 2516474) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 1258237) = 4251528 * k + 3774712 := by
    unfold C
    simp [show (1417176 * k + 1258237) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 3774712) = 2125764 * k + 1887356 := by
    unfold C
    simp [show (4251528 * k + 3774712) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1887356) = 1062882 * k + 943678 := by
    unfold C
    simp [show (2125764 * k + 1887356) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 943678) = 531441 * k + 471839 := by
    unfold C
    simp [show (1062882 * k + 943678) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 930975) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 930975)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_931099 : ∀ k : Nat,
    iterate (1048576 * k + 931099) 32 = 531441 * k + 471902 ∧
      531441 * k + 471902 < 1048576 * k + 931099 := by
  intro k
  have h1 : C (1048576 * k + 931099) = 3145728 * k + 2793298 := by
    unfold C
    simp [show (1048576 * k + 931099) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2793298) = 1572864 * k + 1396649 := by
    unfold C
    simp [show (3145728 * k + 2793298) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1396649) = 4718592 * k + 4189948 := by
    unfold C
    simp [show (1572864 * k + 1396649) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 4189948) = 2359296 * k + 2094974 := by
    unfold C
    simp [show (4718592 * k + 4189948) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 2094974) = 1179648 * k + 1047487 := by
    unfold C
    simp [show (2359296 * k + 2094974) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 1047487) = 3538944 * k + 3142462 := by
    unfold C
    simp [show (1179648 * k + 1047487) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 3142462) = 1769472 * k + 1571231 := by
    unfold C
    simp [show (3538944 * k + 3142462) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1571231) = 5308416 * k + 4713694 := by
    unfold C
    simp [show (1769472 * k + 1571231) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 4713694) = 2654208 * k + 2356847 := by
    unfold C
    simp [show (5308416 * k + 4713694) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 2356847) = 7962624 * k + 7070542 := by
    unfold C
    simp [show (2654208 * k + 2356847) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 7070542) = 3981312 * k + 3535271 := by
    unfold C
    simp [show (7962624 * k + 7070542) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 3535271) = 11943936 * k + 10605814 := by
    unfold C
    simp [show (3981312 * k + 3535271) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 10605814) = 5971968 * k + 5302907 := by
    unfold C
    simp [show (11943936 * k + 10605814) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 5302907) = 17915904 * k + 15908722 := by
    unfold C
    simp [show (5971968 * k + 5302907) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 15908722) = 8957952 * k + 7954361 := by
    unfold C
    simp [show (17915904 * k + 15908722) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 7954361) = 26873856 * k + 23863084 := by
    unfold C
    simp [show (8957952 * k + 7954361) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 23863084) = 13436928 * k + 11931542 := by
    unfold C
    simp [show (26873856 * k + 23863084) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 11931542) = 6718464 * k + 5965771 := by
    unfold C
    simp [show (13436928 * k + 11931542) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 5965771) = 20155392 * k + 17897314 := by
    unfold C
    simp [show (6718464 * k + 5965771) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 17897314) = 10077696 * k + 8948657 := by
    unfold C
    simp [show (20155392 * k + 17897314) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 8948657) = 30233088 * k + 26845972 := by
    unfold C
    simp [show (10077696 * k + 8948657) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 26845972) = 15116544 * k + 13422986 := by
    unfold C
    simp [show (30233088 * k + 26845972) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 13422986) = 7558272 * k + 6711493 := by
    unfold C
    simp [show (15116544 * k + 13422986) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 6711493) = 22674816 * k + 20134480 := by
    unfold C
    simp [show (7558272 * k + 6711493) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 20134480) = 11337408 * k + 10067240 := by
    unfold C
    simp [show (22674816 * k + 20134480) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 10067240) = 5668704 * k + 5033620 := by
    unfold C
    simp [show (11337408 * k + 10067240) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 5033620) = 2834352 * k + 2516810 := by
    unfold C
    simp [show (5668704 * k + 5033620) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2516810) = 1417176 * k + 1258405 := by
    unfold C
    simp [show (2834352 * k + 2516810) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 1258405) = 4251528 * k + 3775216 := by
    unfold C
    simp [show (1417176 * k + 1258405) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 3775216) = 2125764 * k + 1887608 := by
    unfold C
    simp [show (4251528 * k + 3775216) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1887608) = 1062882 * k + 943804 := by
    unfold C
    simp [show (2125764 * k + 1887608) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 943804) = 531441 * k + 471902 := by
    unfold C
    simp [show (1062882 * k + 943804) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 931099) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 931099)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_931583 : ∀ k : Nat,
    iterate (1048576 * k + 931583) 32 = 531441 * k + 472147 ∧
      531441 * k + 472147 < 1048576 * k + 931583 := by
  intro k
  have h1 : C (1048576 * k + 931583) = 3145728 * k + 2794750 := by
    unfold C
    simp [show (1048576 * k + 931583) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2794750) = 1572864 * k + 1397375 := by
    unfold C
    simp [show (3145728 * k + 2794750) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1397375) = 4718592 * k + 4192126 := by
    unfold C
    simp [show (1572864 * k + 1397375) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 4192126) = 2359296 * k + 2096063 := by
    unfold C
    simp [show (4718592 * k + 4192126) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 2096063) = 7077888 * k + 6288190 := by
    unfold C
    simp [show (2359296 * k + 2096063) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 6288190) = 3538944 * k + 3144095 := by
    unfold C
    simp [show (7077888 * k + 6288190) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 3144095) = 10616832 * k + 9432286 := by
    unfold C
    simp [show (3538944 * k + 3144095) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 9432286) = 5308416 * k + 4716143 := by
    unfold C
    simp [show (10616832 * k + 9432286) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 4716143) = 15925248 * k + 14148430 := by
    unfold C
    simp [show (5308416 * k + 4716143) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 14148430) = 7962624 * k + 7074215 := by
    unfold C
    simp [show (15925248 * k + 14148430) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 7074215) = 23887872 * k + 21222646 := by
    unfold C
    simp [show (7962624 * k + 7074215) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 21222646) = 11943936 * k + 10611323 := by
    unfold C
    simp [show (23887872 * k + 21222646) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 10611323) = 35831808 * k + 31833970 := by
    unfold C
    simp [show (11943936 * k + 10611323) % 2 ≠ 0 by omega]
    omega
  have h14 : C (35831808 * k + 31833970) = 17915904 * k + 15916985 := by
    unfold C
    simp [show (35831808 * k + 31833970) % 2 = 0 by omega]
    omega
  have h15 : C (17915904 * k + 15916985) = 53747712 * k + 47750956 := by
    unfold C
    simp [show (17915904 * k + 15916985) % 2 ≠ 0 by omega]
    omega
  have h16 : C (53747712 * k + 47750956) = 26873856 * k + 23875478 := by
    unfold C
    simp [show (53747712 * k + 47750956) % 2 = 0 by omega]
    omega
  have h17 : C (26873856 * k + 23875478) = 13436928 * k + 11937739 := by
    unfold C
    simp [show (26873856 * k + 23875478) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 11937739) = 40310784 * k + 35813218 := by
    unfold C
    simp [show (13436928 * k + 11937739) % 2 ≠ 0 by omega]
    omega
  have h19 : C (40310784 * k + 35813218) = 20155392 * k + 17906609 := by
    unfold C
    simp [show (40310784 * k + 35813218) % 2 = 0 by omega]
    omega
  have h20 : C (20155392 * k + 17906609) = 60466176 * k + 53719828 := by
    unfold C
    simp [show (20155392 * k + 17906609) % 2 ≠ 0 by omega]
    omega
  have h21 : C (60466176 * k + 53719828) = 30233088 * k + 26859914 := by
    unfold C
    simp [show (60466176 * k + 53719828) % 2 = 0 by omega]
    omega
  have h22 : C (30233088 * k + 26859914) = 15116544 * k + 13429957 := by
    unfold C
    simp [show (30233088 * k + 26859914) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 13429957) = 45349632 * k + 40289872 := by
    unfold C
    simp [show (15116544 * k + 13429957) % 2 ≠ 0 by omega]
    omega
  have h24 : C (45349632 * k + 40289872) = 22674816 * k + 20144936 := by
    unfold C
    simp [show (45349632 * k + 40289872) % 2 = 0 by omega]
    omega
  have h25 : C (22674816 * k + 20144936) = 11337408 * k + 10072468 := by
    unfold C
    simp [show (22674816 * k + 20144936) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 10072468) = 5668704 * k + 5036234 := by
    unfold C
    simp [show (11337408 * k + 10072468) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 5036234) = 2834352 * k + 2518117 := by
    unfold C
    simp [show (5668704 * k + 5036234) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2518117) = 8503056 * k + 7554352 := by
    unfold C
    simp [show (2834352 * k + 2518117) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 7554352) = 4251528 * k + 3777176 := by
    unfold C
    simp [show (8503056 * k + 7554352) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 3777176) = 2125764 * k + 1888588 := by
    unfold C
    simp [show (4251528 * k + 3777176) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1888588) = 1062882 * k + 944294 := by
    unfold C
    simp [show (2125764 * k + 1888588) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 944294) = 531441 * k + 472147 := by
    unfold C
    simp [show (1062882 * k + 944294) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 931583) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 931583)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_932559 : ∀ k : Nat,
    iterate (1048576 * k + 932559) 32 = 531441 * k + 472642 ∧
      531441 * k + 472642 < 1048576 * k + 932559 := by
  intro k
  have h1 : C (1048576 * k + 932559) = 3145728 * k + 2797678 := by
    unfold C
    simp [show (1048576 * k + 932559) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2797678) = 1572864 * k + 1398839 := by
    unfold C
    simp [show (3145728 * k + 2797678) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1398839) = 4718592 * k + 4196518 := by
    unfold C
    simp [show (1572864 * k + 1398839) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 4196518) = 2359296 * k + 2098259 := by
    unfold C
    simp [show (4718592 * k + 4196518) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 2098259) = 7077888 * k + 6294778 := by
    unfold C
    simp [show (2359296 * k + 2098259) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 6294778) = 3538944 * k + 3147389 := by
    unfold C
    simp [show (7077888 * k + 6294778) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 3147389) = 10616832 * k + 9442168 := by
    unfold C
    simp [show (3538944 * k + 3147389) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 9442168) = 5308416 * k + 4721084 := by
    unfold C
    simp [show (10616832 * k + 9442168) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 4721084) = 2654208 * k + 2360542 := by
    unfold C
    simp [show (5308416 * k + 4721084) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 2360542) = 1327104 * k + 1180271 := by
    unfold C
    simp [show (2654208 * k + 2360542) % 2 = 0 by omega]
    omega
  have h11 : C (1327104 * k + 1180271) = 3981312 * k + 3540814 := by
    unfold C
    simp [show (1327104 * k + 1180271) % 2 ≠ 0 by omega]
    omega
  have h12 : C (3981312 * k + 3540814) = 1990656 * k + 1770407 := by
    unfold C
    simp [show (3981312 * k + 3540814) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 1770407) = 5971968 * k + 5311222 := by
    unfold C
    simp [show (1990656 * k + 1770407) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 5311222) = 2985984 * k + 2655611 := by
    unfold C
    simp [show (5971968 * k + 5311222) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 2655611) = 8957952 * k + 7966834 := by
    unfold C
    simp [show (2985984 * k + 2655611) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 7966834) = 4478976 * k + 3983417 := by
    unfold C
    simp [show (8957952 * k + 7966834) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 3983417) = 13436928 * k + 11950252 := by
    unfold C
    simp [show (4478976 * k + 3983417) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 11950252) = 6718464 * k + 5975126 := by
    unfold C
    simp [show (13436928 * k + 11950252) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 5975126) = 3359232 * k + 2987563 := by
    unfold C
    simp [show (6718464 * k + 5975126) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 2987563) = 10077696 * k + 8962690 := by
    unfold C
    simp [show (3359232 * k + 2987563) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 8962690) = 5038848 * k + 4481345 := by
    unfold C
    simp [show (10077696 * k + 8962690) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 4481345) = 15116544 * k + 13444036 := by
    unfold C
    simp [show (5038848 * k + 4481345) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 13444036) = 7558272 * k + 6722018 := by
    unfold C
    simp [show (15116544 * k + 13444036) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 6722018) = 3779136 * k + 3361009 := by
    unfold C
    simp [show (7558272 * k + 6722018) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 3361009) = 11337408 * k + 10083028 := by
    unfold C
    simp [show (3779136 * k + 3361009) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 10083028) = 5668704 * k + 5041514 := by
    unfold C
    simp [show (11337408 * k + 10083028) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 5041514) = 2834352 * k + 2520757 := by
    unfold C
    simp [show (5668704 * k + 5041514) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2520757) = 8503056 * k + 7562272 := by
    unfold C
    simp [show (2834352 * k + 2520757) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 7562272) = 4251528 * k + 3781136 := by
    unfold C
    simp [show (8503056 * k + 7562272) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 3781136) = 2125764 * k + 1890568 := by
    unfold C
    simp [show (4251528 * k + 3781136) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1890568) = 1062882 * k + 945284 := by
    unfold C
    simp [show (2125764 * k + 1890568) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 945284) = 531441 * k + 472642 := by
    unfold C
    simp [show (1062882 * k + 945284) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 932559) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 932559)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_932591 : ∀ k : Nat,
    iterate (1048576 * k + 932591) 32 = 531441 * k + 472658 ∧
      531441 * k + 472658 < 1048576 * k + 932591 := by
  intro k
  have h1 : C (1048576 * k + 932591) = 3145728 * k + 2797774 := by
    unfold C
    simp [show (1048576 * k + 932591) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2797774) = 1572864 * k + 1398887 := by
    unfold C
    simp [show (3145728 * k + 2797774) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1398887) = 4718592 * k + 4196662 := by
    unfold C
    simp [show (1572864 * k + 1398887) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 4196662) = 2359296 * k + 2098331 := by
    unfold C
    simp [show (4718592 * k + 4196662) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 2098331) = 7077888 * k + 6294994 := by
    unfold C
    simp [show (2359296 * k + 2098331) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 6294994) = 3538944 * k + 3147497 := by
    unfold C
    simp [show (7077888 * k + 6294994) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 3147497) = 10616832 * k + 9442492 := by
    unfold C
    simp [show (3538944 * k + 3147497) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 9442492) = 5308416 * k + 4721246 := by
    unfold C
    simp [show (10616832 * k + 9442492) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 4721246) = 2654208 * k + 2360623 := by
    unfold C
    simp [show (5308416 * k + 4721246) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 2360623) = 7962624 * k + 7081870 := by
    unfold C
    simp [show (2654208 * k + 2360623) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 7081870) = 3981312 * k + 3540935 := by
    unfold C
    simp [show (7962624 * k + 7081870) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 3540935) = 11943936 * k + 10622806 := by
    unfold C
    simp [show (3981312 * k + 3540935) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 10622806) = 5971968 * k + 5311403 := by
    unfold C
    simp [show (11943936 * k + 10622806) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 5311403) = 17915904 * k + 15934210 := by
    unfold C
    simp [show (5971968 * k + 5311403) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 15934210) = 8957952 * k + 7967105 := by
    unfold C
    simp [show (17915904 * k + 15934210) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 7967105) = 26873856 * k + 23901316 := by
    unfold C
    simp [show (8957952 * k + 7967105) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 23901316) = 13436928 * k + 11950658 := by
    unfold C
    simp [show (26873856 * k + 23901316) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 11950658) = 6718464 * k + 5975329 := by
    unfold C
    simp [show (13436928 * k + 11950658) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 5975329) = 20155392 * k + 17925988 := by
    unfold C
    simp [show (6718464 * k + 5975329) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 17925988) = 10077696 * k + 8962994 := by
    unfold C
    simp [show (20155392 * k + 17925988) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 8962994) = 5038848 * k + 4481497 := by
    unfold C
    simp [show (10077696 * k + 8962994) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 4481497) = 15116544 * k + 13444492 := by
    unfold C
    simp [show (5038848 * k + 4481497) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 13444492) = 7558272 * k + 6722246 := by
    unfold C
    simp [show (15116544 * k + 13444492) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 6722246) = 3779136 * k + 3361123 := by
    unfold C
    simp [show (7558272 * k + 6722246) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 3361123) = 11337408 * k + 10083370 := by
    unfold C
    simp [show (3779136 * k + 3361123) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 10083370) = 5668704 * k + 5041685 := by
    unfold C
    simp [show (11337408 * k + 10083370) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 5041685) = 17006112 * k + 15125056 := by
    unfold C
    simp [show (5668704 * k + 5041685) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 15125056) = 8503056 * k + 7562528 := by
    unfold C
    simp [show (17006112 * k + 15125056) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 7562528) = 4251528 * k + 3781264 := by
    unfold C
    simp [show (8503056 * k + 7562528) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 3781264) = 2125764 * k + 1890632 := by
    unfold C
    simp [show (4251528 * k + 3781264) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1890632) = 1062882 * k + 945316 := by
    unfold C
    simp [show (2125764 * k + 1890632) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 945316) = 531441 * k + 472658 := by
    unfold C
    simp [show (1062882 * k + 945316) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 932591) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 932591)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_932831 : ∀ k : Nat,
    iterate (1048576 * k + 932831) 32 = 531441 * k + 472780 ∧
      531441 * k + 472780 < 1048576 * k + 932831 := by
  intro k
  have h1 : C (1048576 * k + 932831) = 3145728 * k + 2798494 := by
    unfold C
    simp [show (1048576 * k + 932831) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2798494) = 1572864 * k + 1399247 := by
    unfold C
    simp [show (3145728 * k + 2798494) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1399247) = 4718592 * k + 4197742 := by
    unfold C
    simp [show (1572864 * k + 1399247) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 4197742) = 2359296 * k + 2098871 := by
    unfold C
    simp [show (4718592 * k + 4197742) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 2098871) = 7077888 * k + 6296614 := by
    unfold C
    simp [show (2359296 * k + 2098871) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 6296614) = 3538944 * k + 3148307 := by
    unfold C
    simp [show (7077888 * k + 6296614) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 3148307) = 10616832 * k + 9444922 := by
    unfold C
    simp [show (3538944 * k + 3148307) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 9444922) = 5308416 * k + 4722461 := by
    unfold C
    simp [show (10616832 * k + 9444922) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 4722461) = 15925248 * k + 14167384 := by
    unfold C
    simp [show (5308416 * k + 4722461) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 14167384) = 7962624 * k + 7083692 := by
    unfold C
    simp [show (15925248 * k + 14167384) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 7083692) = 3981312 * k + 3541846 := by
    unfold C
    simp [show (7962624 * k + 7083692) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 3541846) = 1990656 * k + 1770923 := by
    unfold C
    simp [show (3981312 * k + 3541846) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 1770923) = 5971968 * k + 5312770 := by
    unfold C
    simp [show (1990656 * k + 1770923) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 5312770) = 2985984 * k + 2656385 := by
    unfold C
    simp [show (5971968 * k + 5312770) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 2656385) = 8957952 * k + 7969156 := by
    unfold C
    simp [show (2985984 * k + 2656385) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 7969156) = 4478976 * k + 3984578 := by
    unfold C
    simp [show (8957952 * k + 7969156) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 3984578) = 2239488 * k + 1992289 := by
    unfold C
    simp [show (4478976 * k + 3984578) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 1992289) = 6718464 * k + 5976868 := by
    unfold C
    simp [show (2239488 * k + 1992289) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 5976868) = 3359232 * k + 2988434 := by
    unfold C
    simp [show (6718464 * k + 5976868) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 2988434) = 1679616 * k + 1494217 := by
    unfold C
    simp [show (3359232 * k + 2988434) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 1494217) = 5038848 * k + 4482652 := by
    unfold C
    simp [show (1679616 * k + 1494217) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 4482652) = 2519424 * k + 2241326 := by
    unfold C
    simp [show (5038848 * k + 4482652) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 2241326) = 1259712 * k + 1120663 := by
    unfold C
    simp [show (2519424 * k + 2241326) % 2 = 0 by omega]
    omega
  have h24 : C (1259712 * k + 1120663) = 3779136 * k + 3361990 := by
    unfold C
    simp [show (1259712 * k + 1120663) % 2 ≠ 0 by omega]
    omega
  have h25 : C (3779136 * k + 3361990) = 1889568 * k + 1680995 := by
    unfold C
    simp [show (3779136 * k + 3361990) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1680995) = 5668704 * k + 5042986 := by
    unfold C
    simp [show (1889568 * k + 1680995) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 5042986) = 2834352 * k + 2521493 := by
    unfold C
    simp [show (5668704 * k + 5042986) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2521493) = 8503056 * k + 7564480 := by
    unfold C
    simp [show (2834352 * k + 2521493) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 7564480) = 4251528 * k + 3782240 := by
    unfold C
    simp [show (8503056 * k + 7564480) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 3782240) = 2125764 * k + 1891120 := by
    unfold C
    simp [show (4251528 * k + 3782240) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1891120) = 1062882 * k + 945560 := by
    unfold C
    simp [show (2125764 * k + 1891120) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 945560) = 531441 * k + 472780 := by
    unfold C
    simp [show (1062882 * k + 945560) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 932831) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 932831)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_933115 : ∀ k : Nat,
    iterate (1048576 * k + 933115) 32 = 531441 * k + 472924 ∧
      531441 * k + 472924 < 1048576 * k + 933115 := by
  intro k
  have h1 : C (1048576 * k + 933115) = 3145728 * k + 2799346 := by
    unfold C
    simp [show (1048576 * k + 933115) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2799346) = 1572864 * k + 1399673 := by
    unfold C
    simp [show (3145728 * k + 2799346) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1399673) = 4718592 * k + 4199020 := by
    unfold C
    simp [show (1572864 * k + 1399673) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 4199020) = 2359296 * k + 2099510 := by
    unfold C
    simp [show (4718592 * k + 4199020) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 2099510) = 1179648 * k + 1049755 := by
    unfold C
    simp [show (2359296 * k + 2099510) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 1049755) = 3538944 * k + 3149266 := by
    unfold C
    simp [show (1179648 * k + 1049755) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 3149266) = 1769472 * k + 1574633 := by
    unfold C
    simp [show (3538944 * k + 3149266) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1574633) = 5308416 * k + 4723900 := by
    unfold C
    simp [show (1769472 * k + 1574633) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 4723900) = 2654208 * k + 2361950 := by
    unfold C
    simp [show (5308416 * k + 4723900) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 2361950) = 1327104 * k + 1180975 := by
    unfold C
    simp [show (2654208 * k + 2361950) % 2 = 0 by omega]
    omega
  have h11 : C (1327104 * k + 1180975) = 3981312 * k + 3542926 := by
    unfold C
    simp [show (1327104 * k + 1180975) % 2 ≠ 0 by omega]
    omega
  have h12 : C (3981312 * k + 3542926) = 1990656 * k + 1771463 := by
    unfold C
    simp [show (3981312 * k + 3542926) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 1771463) = 5971968 * k + 5314390 := by
    unfold C
    simp [show (1990656 * k + 1771463) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 5314390) = 2985984 * k + 2657195 := by
    unfold C
    simp [show (5971968 * k + 5314390) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 2657195) = 8957952 * k + 7971586 := by
    unfold C
    simp [show (2985984 * k + 2657195) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 7971586) = 4478976 * k + 3985793 := by
    unfold C
    simp [show (8957952 * k + 7971586) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 3985793) = 13436928 * k + 11957380 := by
    unfold C
    simp [show (4478976 * k + 3985793) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 11957380) = 6718464 * k + 5978690 := by
    unfold C
    simp [show (13436928 * k + 11957380) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 5978690) = 3359232 * k + 2989345 := by
    unfold C
    simp [show (6718464 * k + 5978690) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 2989345) = 10077696 * k + 8968036 := by
    unfold C
    simp [show (3359232 * k + 2989345) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 8968036) = 5038848 * k + 4484018 := by
    unfold C
    simp [show (10077696 * k + 8968036) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 4484018) = 2519424 * k + 2242009 := by
    unfold C
    simp [show (5038848 * k + 4484018) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 2242009) = 7558272 * k + 6726028 := by
    unfold C
    simp [show (2519424 * k + 2242009) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 6726028) = 3779136 * k + 3363014 := by
    unfold C
    simp [show (7558272 * k + 6726028) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 3363014) = 1889568 * k + 1681507 := by
    unfold C
    simp [show (3779136 * k + 3363014) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1681507) = 5668704 * k + 5044522 := by
    unfold C
    simp [show (1889568 * k + 1681507) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 5044522) = 2834352 * k + 2522261 := by
    unfold C
    simp [show (5668704 * k + 5044522) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2522261) = 8503056 * k + 7566784 := by
    unfold C
    simp [show (2834352 * k + 2522261) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 7566784) = 4251528 * k + 3783392 := by
    unfold C
    simp [show (8503056 * k + 7566784) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 3783392) = 2125764 * k + 1891696 := by
    unfold C
    simp [show (4251528 * k + 3783392) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1891696) = 1062882 * k + 945848 := by
    unfold C
    simp [show (2125764 * k + 1891696) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 945848) = 531441 * k + 472924 := by
    unfold C
    simp [show (1062882 * k + 945848) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 933115) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 933115)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_934047 : ∀ k : Nat,
    iterate (1048576 * k + 934047) 32 = 531441 * k + 473396 ∧
      531441 * k + 473396 < 1048576 * k + 934047 := by
  intro k
  have h1 : C (1048576 * k + 934047) = 3145728 * k + 2802142 := by
    unfold C
    simp [show (1048576 * k + 934047) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2802142) = 1572864 * k + 1401071 := by
    unfold C
    simp [show (3145728 * k + 2802142) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1401071) = 4718592 * k + 4203214 := by
    unfold C
    simp [show (1572864 * k + 1401071) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 4203214) = 2359296 * k + 2101607 := by
    unfold C
    simp [show (4718592 * k + 4203214) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 2101607) = 7077888 * k + 6304822 := by
    unfold C
    simp [show (2359296 * k + 2101607) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 6304822) = 3538944 * k + 3152411 := by
    unfold C
    simp [show (7077888 * k + 6304822) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 3152411) = 10616832 * k + 9457234 := by
    unfold C
    simp [show (3538944 * k + 3152411) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 9457234) = 5308416 * k + 4728617 := by
    unfold C
    simp [show (10616832 * k + 9457234) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 4728617) = 15925248 * k + 14185852 := by
    unfold C
    simp [show (5308416 * k + 4728617) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 14185852) = 7962624 * k + 7092926 := by
    unfold C
    simp [show (15925248 * k + 14185852) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 7092926) = 3981312 * k + 3546463 := by
    unfold C
    simp [show (7962624 * k + 7092926) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 3546463) = 11943936 * k + 10639390 := by
    unfold C
    simp [show (3981312 * k + 3546463) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 10639390) = 5971968 * k + 5319695 := by
    unfold C
    simp [show (11943936 * k + 10639390) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 5319695) = 17915904 * k + 15959086 := by
    unfold C
    simp [show (5971968 * k + 5319695) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 15959086) = 8957952 * k + 7979543 := by
    unfold C
    simp [show (17915904 * k + 15959086) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 7979543) = 26873856 * k + 23938630 := by
    unfold C
    simp [show (8957952 * k + 7979543) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 23938630) = 13436928 * k + 11969315 := by
    unfold C
    simp [show (26873856 * k + 23938630) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 11969315) = 40310784 * k + 35907946 := by
    unfold C
    simp [show (13436928 * k + 11969315) % 2 ≠ 0 by omega]
    omega
  have h19 : C (40310784 * k + 35907946) = 20155392 * k + 17953973 := by
    unfold C
    simp [show (40310784 * k + 35907946) % 2 = 0 by omega]
    omega
  have h20 : C (20155392 * k + 17953973) = 60466176 * k + 53861920 := by
    unfold C
    simp [show (20155392 * k + 17953973) % 2 ≠ 0 by omega]
    omega
  have h21 : C (60466176 * k + 53861920) = 30233088 * k + 26930960 := by
    unfold C
    simp [show (60466176 * k + 53861920) % 2 = 0 by omega]
    omega
  have h22 : C (30233088 * k + 26930960) = 15116544 * k + 13465480 := by
    unfold C
    simp [show (30233088 * k + 26930960) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 13465480) = 7558272 * k + 6732740 := by
    unfold C
    simp [show (15116544 * k + 13465480) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 6732740) = 3779136 * k + 3366370 := by
    unfold C
    simp [show (7558272 * k + 6732740) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 3366370) = 1889568 * k + 1683185 := by
    unfold C
    simp [show (3779136 * k + 3366370) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1683185) = 5668704 * k + 5049556 := by
    unfold C
    simp [show (1889568 * k + 1683185) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 5049556) = 2834352 * k + 2524778 := by
    unfold C
    simp [show (5668704 * k + 5049556) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2524778) = 1417176 * k + 1262389 := by
    unfold C
    simp [show (2834352 * k + 2524778) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 1262389) = 4251528 * k + 3787168 := by
    unfold C
    simp [show (1417176 * k + 1262389) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 3787168) = 2125764 * k + 1893584 := by
    unfold C
    simp [show (4251528 * k + 3787168) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1893584) = 1062882 * k + 946792 := by
    unfold C
    simp [show (2125764 * k + 1893584) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 946792) = 531441 * k + 473396 := by
    unfold C
    simp [show (1062882 * k + 946792) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 934047) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 934047)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_934171 : ∀ k : Nat,
    iterate (1048576 * k + 934171) 32 = 531441 * k + 473459 ∧
      531441 * k + 473459 < 1048576 * k + 934171 := by
  intro k
  have h1 : C (1048576 * k + 934171) = 3145728 * k + 2802514 := by
    unfold C
    simp [show (1048576 * k + 934171) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2802514) = 1572864 * k + 1401257 := by
    unfold C
    simp [show (3145728 * k + 2802514) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1401257) = 4718592 * k + 4203772 := by
    unfold C
    simp [show (1572864 * k + 1401257) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 4203772) = 2359296 * k + 2101886 := by
    unfold C
    simp [show (4718592 * k + 4203772) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 2101886) = 1179648 * k + 1050943 := by
    unfold C
    simp [show (2359296 * k + 2101886) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 1050943) = 3538944 * k + 3152830 := by
    unfold C
    simp [show (1179648 * k + 1050943) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 3152830) = 1769472 * k + 1576415 := by
    unfold C
    simp [show (3538944 * k + 3152830) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1576415) = 5308416 * k + 4729246 := by
    unfold C
    simp [show (1769472 * k + 1576415) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 4729246) = 2654208 * k + 2364623 := by
    unfold C
    simp [show (5308416 * k + 4729246) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 2364623) = 7962624 * k + 7093870 := by
    unfold C
    simp [show (2654208 * k + 2364623) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 7093870) = 3981312 * k + 3546935 := by
    unfold C
    simp [show (7962624 * k + 7093870) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 3546935) = 11943936 * k + 10640806 := by
    unfold C
    simp [show (3981312 * k + 3546935) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 10640806) = 5971968 * k + 5320403 := by
    unfold C
    simp [show (11943936 * k + 10640806) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 5320403) = 17915904 * k + 15961210 := by
    unfold C
    simp [show (5971968 * k + 5320403) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 15961210) = 8957952 * k + 7980605 := by
    unfold C
    simp [show (17915904 * k + 15961210) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 7980605) = 26873856 * k + 23941816 := by
    unfold C
    simp [show (8957952 * k + 7980605) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 23941816) = 13436928 * k + 11970908 := by
    unfold C
    simp [show (26873856 * k + 23941816) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 11970908) = 6718464 * k + 5985454 := by
    unfold C
    simp [show (13436928 * k + 11970908) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 5985454) = 3359232 * k + 2992727 := by
    unfold C
    simp [show (6718464 * k + 5985454) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 2992727) = 10077696 * k + 8978182 := by
    unfold C
    simp [show (3359232 * k + 2992727) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 8978182) = 5038848 * k + 4489091 := by
    unfold C
    simp [show (10077696 * k + 8978182) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 4489091) = 15116544 * k + 13467274 := by
    unfold C
    simp [show (5038848 * k + 4489091) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 13467274) = 7558272 * k + 6733637 := by
    unfold C
    simp [show (15116544 * k + 13467274) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 6733637) = 22674816 * k + 20200912 := by
    unfold C
    simp [show (7558272 * k + 6733637) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 20200912) = 11337408 * k + 10100456 := by
    unfold C
    simp [show (22674816 * k + 20200912) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 10100456) = 5668704 * k + 5050228 := by
    unfold C
    simp [show (11337408 * k + 10100456) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 5050228) = 2834352 * k + 2525114 := by
    unfold C
    simp [show (5668704 * k + 5050228) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2525114) = 1417176 * k + 1262557 := by
    unfold C
    simp [show (2834352 * k + 2525114) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 1262557) = 4251528 * k + 3787672 := by
    unfold C
    simp [show (1417176 * k + 1262557) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 3787672) = 2125764 * k + 1893836 := by
    unfold C
    simp [show (4251528 * k + 3787672) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1893836) = 1062882 * k + 946918 := by
    unfold C
    simp [show (2125764 * k + 1893836) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 946918) = 531441 * k + 473459 := by
    unfold C
    simp [show (1062882 * k + 946918) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 934171) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 934171)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_934207 : ∀ k : Nat,
    iterate (1048576 * k + 934207) 32 = 531441 * k + 473477 ∧
      531441 * k + 473477 < 1048576 * k + 934207 := by
  intro k
  have h1 : C (1048576 * k + 934207) = 3145728 * k + 2802622 := by
    unfold C
    simp [show (1048576 * k + 934207) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2802622) = 1572864 * k + 1401311 := by
    unfold C
    simp [show (3145728 * k + 2802622) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1401311) = 4718592 * k + 4203934 := by
    unfold C
    simp [show (1572864 * k + 1401311) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 4203934) = 2359296 * k + 2101967 := by
    unfold C
    simp [show (4718592 * k + 4203934) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 2101967) = 7077888 * k + 6305902 := by
    unfold C
    simp [show (2359296 * k + 2101967) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 6305902) = 3538944 * k + 3152951 := by
    unfold C
    simp [show (7077888 * k + 6305902) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 3152951) = 10616832 * k + 9458854 := by
    unfold C
    simp [show (3538944 * k + 3152951) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 9458854) = 5308416 * k + 4729427 := by
    unfold C
    simp [show (10616832 * k + 9458854) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 4729427) = 15925248 * k + 14188282 := by
    unfold C
    simp [show (5308416 * k + 4729427) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 14188282) = 7962624 * k + 7094141 := by
    unfold C
    simp [show (15925248 * k + 14188282) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 7094141) = 23887872 * k + 21282424 := by
    unfold C
    simp [show (7962624 * k + 7094141) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 21282424) = 11943936 * k + 10641212 := by
    unfold C
    simp [show (23887872 * k + 21282424) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 10641212) = 5971968 * k + 5320606 := by
    unfold C
    simp [show (11943936 * k + 10641212) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 5320606) = 2985984 * k + 2660303 := by
    unfold C
    simp [show (5971968 * k + 5320606) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 2660303) = 8957952 * k + 7980910 := by
    unfold C
    simp [show (2985984 * k + 2660303) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 7980910) = 4478976 * k + 3990455 := by
    unfold C
    simp [show (8957952 * k + 7980910) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 3990455) = 13436928 * k + 11971366 := by
    unfold C
    simp [show (4478976 * k + 3990455) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 11971366) = 6718464 * k + 5985683 := by
    unfold C
    simp [show (13436928 * k + 11971366) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 5985683) = 20155392 * k + 17957050 := by
    unfold C
    simp [show (6718464 * k + 5985683) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 17957050) = 10077696 * k + 8978525 := by
    unfold C
    simp [show (20155392 * k + 17957050) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 8978525) = 30233088 * k + 26935576 := by
    unfold C
    simp [show (10077696 * k + 8978525) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 26935576) = 15116544 * k + 13467788 := by
    unfold C
    simp [show (30233088 * k + 26935576) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 13467788) = 7558272 * k + 6733894 := by
    unfold C
    simp [show (15116544 * k + 13467788) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 6733894) = 3779136 * k + 3366947 := by
    unfold C
    simp [show (7558272 * k + 6733894) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 3366947) = 11337408 * k + 10100842 := by
    unfold C
    simp [show (3779136 * k + 3366947) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 10100842) = 5668704 * k + 5050421 := by
    unfold C
    simp [show (11337408 * k + 10100842) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 5050421) = 17006112 * k + 15151264 := by
    unfold C
    simp [show (5668704 * k + 5050421) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 15151264) = 8503056 * k + 7575632 := by
    unfold C
    simp [show (17006112 * k + 15151264) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 7575632) = 4251528 * k + 3787816 := by
    unfold C
    simp [show (8503056 * k + 7575632) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 3787816) = 2125764 * k + 1893908 := by
    unfold C
    simp [show (4251528 * k + 3787816) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1893908) = 1062882 * k + 946954 := by
    unfold C
    simp [show (2125764 * k + 1893908) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 946954) = 531441 * k + 473477 := by
    unfold C
    simp [show (1062882 * k + 946954) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 934207) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 934207)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

end CollatzM20Shard119
