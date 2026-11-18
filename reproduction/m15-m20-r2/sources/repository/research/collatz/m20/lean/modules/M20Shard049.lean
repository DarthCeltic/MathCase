import Mathlib.Data.Nat.Prime.Basic

namespace CollatzM20Shard049

def C (n : Nat) : Nat := if n % 2 = 0 then n / 2 else 3 * n + 1

def iterate (n t : Nat) : Nat := Nat.rec n (fun _ previous => C previous) t

theorem descent_mod1048576_386367 : ∀ k : Nat,
    iterate (1048576 * k + 386367) 32 = 531441 * k + 195820 ∧
      531441 * k + 195820 < 1048576 * k + 386367 := by
  intro k
  have h1 : C (1048576 * k + 386367) = 3145728 * k + 1159102 := by
    unfold C
    simp [show (1048576 * k + 386367) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1159102) = 1572864 * k + 579551 := by
    unfold C
    simp [show (3145728 * k + 1159102) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 579551) = 4718592 * k + 1738654 := by
    unfold C
    simp [show (1572864 * k + 579551) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1738654) = 2359296 * k + 869327 := by
    unfold C
    simp [show (4718592 * k + 1738654) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 869327) = 7077888 * k + 2607982 := by
    unfold C
    simp [show (2359296 * k + 869327) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 2607982) = 3538944 * k + 1303991 := by
    unfold C
    simp [show (7077888 * k + 2607982) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1303991) = 10616832 * k + 3911974 := by
    unfold C
    simp [show (3538944 * k + 1303991) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 3911974) = 5308416 * k + 1955987 := by
    unfold C
    simp [show (10616832 * k + 3911974) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 1955987) = 15925248 * k + 5867962 := by
    unfold C
    simp [show (5308416 * k + 1955987) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 5867962) = 7962624 * k + 2933981 := by
    unfold C
    simp [show (15925248 * k + 5867962) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 2933981) = 23887872 * k + 8801944 := by
    unfold C
    simp [show (7962624 * k + 2933981) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 8801944) = 11943936 * k + 4400972 := by
    unfold C
    simp [show (23887872 * k + 8801944) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 4400972) = 5971968 * k + 2200486 := by
    unfold C
    simp [show (11943936 * k + 4400972) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 2200486) = 2985984 * k + 1100243 := by
    unfold C
    simp [show (5971968 * k + 2200486) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1100243) = 8957952 * k + 3300730 := by
    unfold C
    simp [show (2985984 * k + 1100243) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 3300730) = 4478976 * k + 1650365 := by
    unfold C
    simp [show (8957952 * k + 3300730) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 1650365) = 13436928 * k + 4951096 := by
    unfold C
    simp [show (4478976 * k + 1650365) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 4951096) = 6718464 * k + 2475548 := by
    unfold C
    simp [show (13436928 * k + 4951096) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 2475548) = 3359232 * k + 1237774 := by
    unfold C
    simp [show (6718464 * k + 2475548) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 1237774) = 1679616 * k + 618887 := by
    unfold C
    simp [show (3359232 * k + 1237774) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 618887) = 5038848 * k + 1856662 := by
    unfold C
    simp [show (1679616 * k + 618887) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 1856662) = 2519424 * k + 928331 := by
    unfold C
    simp [show (5038848 * k + 1856662) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 928331) = 7558272 * k + 2784994 := by
    unfold C
    simp [show (2519424 * k + 928331) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 2784994) = 3779136 * k + 1392497 := by
    unfold C
    simp [show (7558272 * k + 2784994) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 1392497) = 11337408 * k + 4177492 := by
    unfold C
    simp [show (3779136 * k + 1392497) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 4177492) = 5668704 * k + 2088746 := by
    unfold C
    simp [show (11337408 * k + 4177492) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 2088746) = 2834352 * k + 1044373 := by
    unfold C
    simp [show (5668704 * k + 2088746) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1044373) = 8503056 * k + 3133120 := by
    unfold C
    simp [show (2834352 * k + 1044373) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 3133120) = 4251528 * k + 1566560 := by
    unfold C
    simp [show (8503056 * k + 3133120) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 1566560) = 2125764 * k + 783280 := by
    unfold C
    simp [show (4251528 * k + 1566560) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 783280) = 1062882 * k + 391640 := by
    unfold C
    simp [show (2125764 * k + 783280) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 391640) = 531441 * k + 195820 := by
    unfold C
    simp [show (1062882 * k + 391640) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 386367) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 386367)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_386527 : ∀ k : Nat,
    iterate (1048576 * k + 386527) 32 = 531441 * k + 195901 ∧
      531441 * k + 195901 < 1048576 * k + 386527 := by
  intro k
  have h1 : C (1048576 * k + 386527) = 3145728 * k + 1159582 := by
    unfold C
    simp [show (1048576 * k + 386527) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1159582) = 1572864 * k + 579791 := by
    unfold C
    simp [show (3145728 * k + 1159582) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 579791) = 4718592 * k + 1739374 := by
    unfold C
    simp [show (1572864 * k + 579791) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1739374) = 2359296 * k + 869687 := by
    unfold C
    simp [show (4718592 * k + 1739374) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 869687) = 7077888 * k + 2609062 := by
    unfold C
    simp [show (2359296 * k + 869687) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 2609062) = 3538944 * k + 1304531 := by
    unfold C
    simp [show (7077888 * k + 2609062) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1304531) = 10616832 * k + 3913594 := by
    unfold C
    simp [show (3538944 * k + 1304531) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 3913594) = 5308416 * k + 1956797 := by
    unfold C
    simp [show (10616832 * k + 3913594) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 1956797) = 15925248 * k + 5870392 := by
    unfold C
    simp [show (5308416 * k + 1956797) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 5870392) = 7962624 * k + 2935196 := by
    unfold C
    simp [show (15925248 * k + 5870392) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 2935196) = 3981312 * k + 1467598 := by
    unfold C
    simp [show (7962624 * k + 2935196) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 1467598) = 1990656 * k + 733799 := by
    unfold C
    simp [show (3981312 * k + 1467598) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 733799) = 5971968 * k + 2201398 := by
    unfold C
    simp [show (1990656 * k + 733799) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 2201398) = 2985984 * k + 1100699 := by
    unfold C
    simp [show (5971968 * k + 2201398) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1100699) = 8957952 * k + 3302098 := by
    unfold C
    simp [show (2985984 * k + 1100699) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 3302098) = 4478976 * k + 1651049 := by
    unfold C
    simp [show (8957952 * k + 3302098) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 1651049) = 13436928 * k + 4953148 := by
    unfold C
    simp [show (4478976 * k + 1651049) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 4953148) = 6718464 * k + 2476574 := by
    unfold C
    simp [show (13436928 * k + 4953148) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 2476574) = 3359232 * k + 1238287 := by
    unfold C
    simp [show (6718464 * k + 2476574) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 1238287) = 10077696 * k + 3714862 := by
    unfold C
    simp [show (3359232 * k + 1238287) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 3714862) = 5038848 * k + 1857431 := by
    unfold C
    simp [show (10077696 * k + 3714862) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 1857431) = 15116544 * k + 5572294 := by
    unfold C
    simp [show (5038848 * k + 1857431) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 5572294) = 7558272 * k + 2786147 := by
    unfold C
    simp [show (15116544 * k + 5572294) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 2786147) = 22674816 * k + 8358442 := by
    unfold C
    simp [show (7558272 * k + 2786147) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 8358442) = 11337408 * k + 4179221 := by
    unfold C
    simp [show (22674816 * k + 8358442) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 4179221) = 34012224 * k + 12537664 := by
    unfold C
    simp [show (11337408 * k + 4179221) % 2 ≠ 0 by omega]
    omega
  have h27 : C (34012224 * k + 12537664) = 17006112 * k + 6268832 := by
    unfold C
    simp [show (34012224 * k + 12537664) % 2 = 0 by omega]
    omega
  have h28 : C (17006112 * k + 6268832) = 8503056 * k + 3134416 := by
    unfold C
    simp [show (17006112 * k + 6268832) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 3134416) = 4251528 * k + 1567208 := by
    unfold C
    simp [show (8503056 * k + 3134416) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 1567208) = 2125764 * k + 783604 := by
    unfold C
    simp [show (4251528 * k + 1567208) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 783604) = 1062882 * k + 391802 := by
    unfold C
    simp [show (2125764 * k + 783604) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 391802) = 531441 * k + 195901 := by
    unfold C
    simp [show (1062882 * k + 391802) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 386527) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 386527)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_386799 : ∀ k : Nat,
    iterate (1048576 * k + 386799) 32 = 531441 * k + 196039 ∧
      531441 * k + 196039 < 1048576 * k + 386799 := by
  intro k
  have h1 : C (1048576 * k + 386799) = 3145728 * k + 1160398 := by
    unfold C
    simp [show (1048576 * k + 386799) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1160398) = 1572864 * k + 580199 := by
    unfold C
    simp [show (3145728 * k + 1160398) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 580199) = 4718592 * k + 1740598 := by
    unfold C
    simp [show (1572864 * k + 580199) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1740598) = 2359296 * k + 870299 := by
    unfold C
    simp [show (4718592 * k + 1740598) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 870299) = 7077888 * k + 2610898 := by
    unfold C
    simp [show (2359296 * k + 870299) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 2610898) = 3538944 * k + 1305449 := by
    unfold C
    simp [show (7077888 * k + 2610898) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1305449) = 10616832 * k + 3916348 := by
    unfold C
    simp [show (3538944 * k + 1305449) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 3916348) = 5308416 * k + 1958174 := by
    unfold C
    simp [show (10616832 * k + 3916348) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 1958174) = 2654208 * k + 979087 := by
    unfold C
    simp [show (5308416 * k + 1958174) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 979087) = 7962624 * k + 2937262 := by
    unfold C
    simp [show (2654208 * k + 979087) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 2937262) = 3981312 * k + 1468631 := by
    unfold C
    simp [show (7962624 * k + 2937262) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 1468631) = 11943936 * k + 4405894 := by
    unfold C
    simp [show (3981312 * k + 1468631) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 4405894) = 5971968 * k + 2202947 := by
    unfold C
    simp [show (11943936 * k + 4405894) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 2202947) = 17915904 * k + 6608842 := by
    unfold C
    simp [show (5971968 * k + 2202947) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 6608842) = 8957952 * k + 3304421 := by
    unfold C
    simp [show (17915904 * k + 6608842) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 3304421) = 26873856 * k + 9913264 := by
    unfold C
    simp [show (8957952 * k + 3304421) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 9913264) = 13436928 * k + 4956632 := by
    unfold C
    simp [show (26873856 * k + 9913264) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 4956632) = 6718464 * k + 2478316 := by
    unfold C
    simp [show (13436928 * k + 4956632) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 2478316) = 3359232 * k + 1239158 := by
    unfold C
    simp [show (6718464 * k + 2478316) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 1239158) = 1679616 * k + 619579 := by
    unfold C
    simp [show (3359232 * k + 1239158) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 619579) = 5038848 * k + 1858738 := by
    unfold C
    simp [show (1679616 * k + 619579) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 1858738) = 2519424 * k + 929369 := by
    unfold C
    simp [show (5038848 * k + 1858738) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 929369) = 7558272 * k + 2788108 := by
    unfold C
    simp [show (2519424 * k + 929369) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 2788108) = 3779136 * k + 1394054 := by
    unfold C
    simp [show (7558272 * k + 2788108) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 1394054) = 1889568 * k + 697027 := by
    unfold C
    simp [show (3779136 * k + 1394054) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 697027) = 5668704 * k + 2091082 := by
    unfold C
    simp [show (1889568 * k + 697027) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 2091082) = 2834352 * k + 1045541 := by
    unfold C
    simp [show (5668704 * k + 2091082) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1045541) = 8503056 * k + 3136624 := by
    unfold C
    simp [show (2834352 * k + 1045541) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 3136624) = 4251528 * k + 1568312 := by
    unfold C
    simp [show (8503056 * k + 3136624) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 1568312) = 2125764 * k + 784156 := by
    unfold C
    simp [show (4251528 * k + 1568312) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 784156) = 1062882 * k + 392078 := by
    unfold C
    simp [show (2125764 * k + 784156) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 392078) = 531441 * k + 196039 := by
    unfold C
    simp [show (1062882 * k + 392078) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 386799) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 386799)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_386887 : ∀ k : Nat,
    iterate (1048576 * k + 386887) 32 = 531441 * k + 196084 ∧
      531441 * k + 196084 < 1048576 * k + 386887 := by
  intro k
  have h1 : C (1048576 * k + 386887) = 3145728 * k + 1160662 := by
    unfold C
    simp [show (1048576 * k + 386887) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1160662) = 1572864 * k + 580331 := by
    unfold C
    simp [show (3145728 * k + 1160662) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 580331) = 4718592 * k + 1740994 := by
    unfold C
    simp [show (1572864 * k + 580331) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1740994) = 2359296 * k + 870497 := by
    unfold C
    simp [show (4718592 * k + 1740994) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 870497) = 7077888 * k + 2611492 := by
    unfold C
    simp [show (2359296 * k + 870497) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 2611492) = 3538944 * k + 1305746 := by
    unfold C
    simp [show (7077888 * k + 2611492) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1305746) = 1769472 * k + 652873 := by
    unfold C
    simp [show (3538944 * k + 1305746) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 652873) = 5308416 * k + 1958620 := by
    unfold C
    simp [show (1769472 * k + 652873) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 1958620) = 2654208 * k + 979310 := by
    unfold C
    simp [show (5308416 * k + 1958620) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 979310) = 1327104 * k + 489655 := by
    unfold C
    simp [show (2654208 * k + 979310) % 2 = 0 by omega]
    omega
  have h11 : C (1327104 * k + 489655) = 3981312 * k + 1468966 := by
    unfold C
    simp [show (1327104 * k + 489655) % 2 ≠ 0 by omega]
    omega
  have h12 : C (3981312 * k + 1468966) = 1990656 * k + 734483 := by
    unfold C
    simp [show (3981312 * k + 1468966) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 734483) = 5971968 * k + 2203450 := by
    unfold C
    simp [show (1990656 * k + 734483) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 2203450) = 2985984 * k + 1101725 := by
    unfold C
    simp [show (5971968 * k + 2203450) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1101725) = 8957952 * k + 3305176 := by
    unfold C
    simp [show (2985984 * k + 1101725) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 3305176) = 4478976 * k + 1652588 := by
    unfold C
    simp [show (8957952 * k + 3305176) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 1652588) = 2239488 * k + 826294 := by
    unfold C
    simp [show (4478976 * k + 1652588) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 826294) = 1119744 * k + 413147 := by
    unfold C
    simp [show (2239488 * k + 826294) % 2 = 0 by omega]
    omega
  have h19 : C (1119744 * k + 413147) = 3359232 * k + 1239442 := by
    unfold C
    simp [show (1119744 * k + 413147) % 2 ≠ 0 by omega]
    omega
  have h20 : C (3359232 * k + 1239442) = 1679616 * k + 619721 := by
    unfold C
    simp [show (3359232 * k + 1239442) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 619721) = 5038848 * k + 1859164 := by
    unfold C
    simp [show (1679616 * k + 619721) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 1859164) = 2519424 * k + 929582 := by
    unfold C
    simp [show (5038848 * k + 1859164) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 929582) = 1259712 * k + 464791 := by
    unfold C
    simp [show (2519424 * k + 929582) % 2 = 0 by omega]
    omega
  have h24 : C (1259712 * k + 464791) = 3779136 * k + 1394374 := by
    unfold C
    simp [show (1259712 * k + 464791) % 2 ≠ 0 by omega]
    omega
  have h25 : C (3779136 * k + 1394374) = 1889568 * k + 697187 := by
    unfold C
    simp [show (3779136 * k + 1394374) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 697187) = 5668704 * k + 2091562 := by
    unfold C
    simp [show (1889568 * k + 697187) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 2091562) = 2834352 * k + 1045781 := by
    unfold C
    simp [show (5668704 * k + 2091562) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1045781) = 8503056 * k + 3137344 := by
    unfold C
    simp [show (2834352 * k + 1045781) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 3137344) = 4251528 * k + 1568672 := by
    unfold C
    simp [show (8503056 * k + 3137344) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 1568672) = 2125764 * k + 784336 := by
    unfold C
    simp [show (4251528 * k + 1568672) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 784336) = 1062882 * k + 392168 := by
    unfold C
    simp [show (2125764 * k + 784336) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 392168) = 531441 * k + 196084 := by
    unfold C
    simp [show (1062882 * k + 392168) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 386887) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 386887)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_388263 : ∀ k : Nat,
    iterate (1048576 * k + 388263) 32 = 531441 * k + 196781 ∧
      531441 * k + 196781 < 1048576 * k + 388263 := by
  intro k
  have h1 : C (1048576 * k + 388263) = 3145728 * k + 1164790 := by
    unfold C
    simp [show (1048576 * k + 388263) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1164790) = 1572864 * k + 582395 := by
    unfold C
    simp [show (3145728 * k + 1164790) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 582395) = 4718592 * k + 1747186 := by
    unfold C
    simp [show (1572864 * k + 582395) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1747186) = 2359296 * k + 873593 := by
    unfold C
    simp [show (4718592 * k + 1747186) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 873593) = 7077888 * k + 2620780 := by
    unfold C
    simp [show (2359296 * k + 873593) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 2620780) = 3538944 * k + 1310390 := by
    unfold C
    simp [show (7077888 * k + 2620780) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1310390) = 1769472 * k + 655195 := by
    unfold C
    simp [show (3538944 * k + 1310390) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 655195) = 5308416 * k + 1965586 := by
    unfold C
    simp [show (1769472 * k + 655195) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 1965586) = 2654208 * k + 982793 := by
    unfold C
    simp [show (5308416 * k + 1965586) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 982793) = 7962624 * k + 2948380 := by
    unfold C
    simp [show (2654208 * k + 982793) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 2948380) = 3981312 * k + 1474190 := by
    unfold C
    simp [show (7962624 * k + 2948380) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 1474190) = 1990656 * k + 737095 := by
    unfold C
    simp [show (3981312 * k + 1474190) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 737095) = 5971968 * k + 2211286 := by
    unfold C
    simp [show (1990656 * k + 737095) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 2211286) = 2985984 * k + 1105643 := by
    unfold C
    simp [show (5971968 * k + 2211286) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1105643) = 8957952 * k + 3316930 := by
    unfold C
    simp [show (2985984 * k + 1105643) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 3316930) = 4478976 * k + 1658465 := by
    unfold C
    simp [show (8957952 * k + 3316930) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 1658465) = 13436928 * k + 4975396 := by
    unfold C
    simp [show (4478976 * k + 1658465) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 4975396) = 6718464 * k + 2487698 := by
    unfold C
    simp [show (13436928 * k + 4975396) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 2487698) = 3359232 * k + 1243849 := by
    unfold C
    simp [show (6718464 * k + 2487698) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 1243849) = 10077696 * k + 3731548 := by
    unfold C
    simp [show (3359232 * k + 1243849) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 3731548) = 5038848 * k + 1865774 := by
    unfold C
    simp [show (10077696 * k + 3731548) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 1865774) = 2519424 * k + 932887 := by
    unfold C
    simp [show (5038848 * k + 1865774) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 932887) = 7558272 * k + 2798662 := by
    unfold C
    simp [show (2519424 * k + 932887) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 2798662) = 3779136 * k + 1399331 := by
    unfold C
    simp [show (7558272 * k + 2798662) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 1399331) = 11337408 * k + 4197994 := by
    unfold C
    simp [show (3779136 * k + 1399331) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 4197994) = 5668704 * k + 2098997 := by
    unfold C
    simp [show (11337408 * k + 4197994) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 2098997) = 17006112 * k + 6296992 := by
    unfold C
    simp [show (5668704 * k + 2098997) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 6296992) = 8503056 * k + 3148496 := by
    unfold C
    simp [show (17006112 * k + 6296992) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 3148496) = 4251528 * k + 1574248 := by
    unfold C
    simp [show (8503056 * k + 3148496) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 1574248) = 2125764 * k + 787124 := by
    unfold C
    simp [show (4251528 * k + 1574248) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 787124) = 1062882 * k + 393562 := by
    unfold C
    simp [show (2125764 * k + 787124) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 393562) = 531441 * k + 196781 := by
    unfold C
    simp [show (1062882 * k + 393562) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 388263) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 388263)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_388607 : ∀ k : Nat,
    iterate (1048576 * k + 388607) 32 = 531441 * k + 196955 ∧
      531441 * k + 196955 < 1048576 * k + 388607 := by
  intro k
  have h1 : C (1048576 * k + 388607) = 3145728 * k + 1165822 := by
    unfold C
    simp [show (1048576 * k + 388607) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1165822) = 1572864 * k + 582911 := by
    unfold C
    simp [show (3145728 * k + 1165822) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 582911) = 4718592 * k + 1748734 := by
    unfold C
    simp [show (1572864 * k + 582911) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1748734) = 2359296 * k + 874367 := by
    unfold C
    simp [show (4718592 * k + 1748734) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 874367) = 7077888 * k + 2623102 := by
    unfold C
    simp [show (2359296 * k + 874367) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 2623102) = 3538944 * k + 1311551 := by
    unfold C
    simp [show (7077888 * k + 2623102) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1311551) = 10616832 * k + 3934654 := by
    unfold C
    simp [show (3538944 * k + 1311551) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 3934654) = 5308416 * k + 1967327 := by
    unfold C
    simp [show (10616832 * k + 3934654) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 1967327) = 15925248 * k + 5901982 := by
    unfold C
    simp [show (5308416 * k + 1967327) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 5901982) = 7962624 * k + 2950991 := by
    unfold C
    simp [show (15925248 * k + 5901982) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 2950991) = 23887872 * k + 8852974 := by
    unfold C
    simp [show (7962624 * k + 2950991) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 8852974) = 11943936 * k + 4426487 := by
    unfold C
    simp [show (23887872 * k + 8852974) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 4426487) = 35831808 * k + 13279462 := by
    unfold C
    simp [show (11943936 * k + 4426487) % 2 ≠ 0 by omega]
    omega
  have h14 : C (35831808 * k + 13279462) = 17915904 * k + 6639731 := by
    unfold C
    simp [show (35831808 * k + 13279462) % 2 = 0 by omega]
    omega
  have h15 : C (17915904 * k + 6639731) = 53747712 * k + 19919194 := by
    unfold C
    simp [show (17915904 * k + 6639731) % 2 ≠ 0 by omega]
    omega
  have h16 : C (53747712 * k + 19919194) = 26873856 * k + 9959597 := by
    unfold C
    simp [show (53747712 * k + 19919194) % 2 = 0 by omega]
    omega
  have h17 : C (26873856 * k + 9959597) = 80621568 * k + 29878792 := by
    unfold C
    simp [show (26873856 * k + 9959597) % 2 ≠ 0 by omega]
    omega
  have h18 : C (80621568 * k + 29878792) = 40310784 * k + 14939396 := by
    unfold C
    simp [show (80621568 * k + 29878792) % 2 = 0 by omega]
    omega
  have h19 : C (40310784 * k + 14939396) = 20155392 * k + 7469698 := by
    unfold C
    simp [show (40310784 * k + 14939396) % 2 = 0 by omega]
    omega
  have h20 : C (20155392 * k + 7469698) = 10077696 * k + 3734849 := by
    unfold C
    simp [show (20155392 * k + 7469698) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 3734849) = 30233088 * k + 11204548 := by
    unfold C
    simp [show (10077696 * k + 3734849) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 11204548) = 15116544 * k + 5602274 := by
    unfold C
    simp [show (30233088 * k + 11204548) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 5602274) = 7558272 * k + 2801137 := by
    unfold C
    simp [show (15116544 * k + 5602274) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 2801137) = 22674816 * k + 8403412 := by
    unfold C
    simp [show (7558272 * k + 2801137) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 8403412) = 11337408 * k + 4201706 := by
    unfold C
    simp [show (22674816 * k + 8403412) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 4201706) = 5668704 * k + 2100853 := by
    unfold C
    simp [show (11337408 * k + 4201706) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 2100853) = 17006112 * k + 6302560 := by
    unfold C
    simp [show (5668704 * k + 2100853) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 6302560) = 8503056 * k + 3151280 := by
    unfold C
    simp [show (17006112 * k + 6302560) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 3151280) = 4251528 * k + 1575640 := by
    unfold C
    simp [show (8503056 * k + 3151280) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 1575640) = 2125764 * k + 787820 := by
    unfold C
    simp [show (4251528 * k + 1575640) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 787820) = 1062882 * k + 393910 := by
    unfold C
    simp [show (2125764 * k + 787820) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 393910) = 531441 * k + 196955 := by
    unfold C
    simp [show (1062882 * k + 393910) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 388607) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 388607)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_388955 : ∀ k : Nat,
    iterate (1048576 * k + 388955) 32 = 531441 * k + 197132 ∧
      531441 * k + 197132 < 1048576 * k + 388955 := by
  intro k
  have h1 : C (1048576 * k + 388955) = 3145728 * k + 1166866 := by
    unfold C
    simp [show (1048576 * k + 388955) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1166866) = 1572864 * k + 583433 := by
    unfold C
    simp [show (3145728 * k + 1166866) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 583433) = 4718592 * k + 1750300 := by
    unfold C
    simp [show (1572864 * k + 583433) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1750300) = 2359296 * k + 875150 := by
    unfold C
    simp [show (4718592 * k + 1750300) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 875150) = 1179648 * k + 437575 := by
    unfold C
    simp [show (2359296 * k + 875150) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 437575) = 3538944 * k + 1312726 := by
    unfold C
    simp [show (1179648 * k + 437575) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 1312726) = 1769472 * k + 656363 := by
    unfold C
    simp [show (3538944 * k + 1312726) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 656363) = 5308416 * k + 1969090 := by
    unfold C
    simp [show (1769472 * k + 656363) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 1969090) = 2654208 * k + 984545 := by
    unfold C
    simp [show (5308416 * k + 1969090) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 984545) = 7962624 * k + 2953636 := by
    unfold C
    simp [show (2654208 * k + 984545) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 2953636) = 3981312 * k + 1476818 := by
    unfold C
    simp [show (7962624 * k + 2953636) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 1476818) = 1990656 * k + 738409 := by
    unfold C
    simp [show (3981312 * k + 1476818) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 738409) = 5971968 * k + 2215228 := by
    unfold C
    simp [show (1990656 * k + 738409) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 2215228) = 2985984 * k + 1107614 := by
    unfold C
    simp [show (5971968 * k + 2215228) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1107614) = 1492992 * k + 553807 := by
    unfold C
    simp [show (2985984 * k + 1107614) % 2 = 0 by omega]
    omega
  have h16 : C (1492992 * k + 553807) = 4478976 * k + 1661422 := by
    unfold C
    simp [show (1492992 * k + 553807) % 2 ≠ 0 by omega]
    omega
  have h17 : C (4478976 * k + 1661422) = 2239488 * k + 830711 := by
    unfold C
    simp [show (4478976 * k + 1661422) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 830711) = 6718464 * k + 2492134 := by
    unfold C
    simp [show (2239488 * k + 830711) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 2492134) = 3359232 * k + 1246067 := by
    unfold C
    simp [show (6718464 * k + 2492134) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 1246067) = 10077696 * k + 3738202 := by
    unfold C
    simp [show (3359232 * k + 1246067) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 3738202) = 5038848 * k + 1869101 := by
    unfold C
    simp [show (10077696 * k + 3738202) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 1869101) = 15116544 * k + 5607304 := by
    unfold C
    simp [show (5038848 * k + 1869101) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 5607304) = 7558272 * k + 2803652 := by
    unfold C
    simp [show (15116544 * k + 5607304) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 2803652) = 3779136 * k + 1401826 := by
    unfold C
    simp [show (7558272 * k + 2803652) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 1401826) = 1889568 * k + 700913 := by
    unfold C
    simp [show (3779136 * k + 1401826) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 700913) = 5668704 * k + 2102740 := by
    unfold C
    simp [show (1889568 * k + 700913) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 2102740) = 2834352 * k + 1051370 := by
    unfold C
    simp [show (5668704 * k + 2102740) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1051370) = 1417176 * k + 525685 := by
    unfold C
    simp [show (2834352 * k + 1051370) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 525685) = 4251528 * k + 1577056 := by
    unfold C
    simp [show (1417176 * k + 525685) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 1577056) = 2125764 * k + 788528 := by
    unfold C
    simp [show (4251528 * k + 1577056) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 788528) = 1062882 * k + 394264 := by
    unfold C
    simp [show (2125764 * k + 788528) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 394264) = 531441 * k + 197132 := by
    unfold C
    simp [show (1062882 * k + 394264) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 388955) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 388955)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_389287 : ∀ k : Nat,
    iterate (1048576 * k + 389287) 32 = 531441 * k + 197300 ∧
      531441 * k + 197300 < 1048576 * k + 389287 := by
  intro k
  have h1 : C (1048576 * k + 389287) = 3145728 * k + 1167862 := by
    unfold C
    simp [show (1048576 * k + 389287) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1167862) = 1572864 * k + 583931 := by
    unfold C
    simp [show (3145728 * k + 1167862) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 583931) = 4718592 * k + 1751794 := by
    unfold C
    simp [show (1572864 * k + 583931) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1751794) = 2359296 * k + 875897 := by
    unfold C
    simp [show (4718592 * k + 1751794) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 875897) = 7077888 * k + 2627692 := by
    unfold C
    simp [show (2359296 * k + 875897) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 2627692) = 3538944 * k + 1313846 := by
    unfold C
    simp [show (7077888 * k + 2627692) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1313846) = 1769472 * k + 656923 := by
    unfold C
    simp [show (3538944 * k + 1313846) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 656923) = 5308416 * k + 1970770 := by
    unfold C
    simp [show (1769472 * k + 656923) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 1970770) = 2654208 * k + 985385 := by
    unfold C
    simp [show (5308416 * k + 1970770) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 985385) = 7962624 * k + 2956156 := by
    unfold C
    simp [show (2654208 * k + 985385) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 2956156) = 3981312 * k + 1478078 := by
    unfold C
    simp [show (7962624 * k + 2956156) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 1478078) = 1990656 * k + 739039 := by
    unfold C
    simp [show (3981312 * k + 1478078) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 739039) = 5971968 * k + 2217118 := by
    unfold C
    simp [show (1990656 * k + 739039) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 2217118) = 2985984 * k + 1108559 := by
    unfold C
    simp [show (5971968 * k + 2217118) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1108559) = 8957952 * k + 3325678 := by
    unfold C
    simp [show (2985984 * k + 1108559) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 3325678) = 4478976 * k + 1662839 := by
    unfold C
    simp [show (8957952 * k + 3325678) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 1662839) = 13436928 * k + 4988518 := by
    unfold C
    simp [show (4478976 * k + 1662839) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 4988518) = 6718464 * k + 2494259 := by
    unfold C
    simp [show (13436928 * k + 4988518) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 2494259) = 20155392 * k + 7482778 := by
    unfold C
    simp [show (6718464 * k + 2494259) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 7482778) = 10077696 * k + 3741389 := by
    unfold C
    simp [show (20155392 * k + 7482778) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 3741389) = 30233088 * k + 11224168 := by
    unfold C
    simp [show (10077696 * k + 3741389) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 11224168) = 15116544 * k + 5612084 := by
    unfold C
    simp [show (30233088 * k + 11224168) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 5612084) = 7558272 * k + 2806042 := by
    unfold C
    simp [show (15116544 * k + 5612084) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 2806042) = 3779136 * k + 1403021 := by
    unfold C
    simp [show (7558272 * k + 2806042) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 1403021) = 11337408 * k + 4209064 := by
    unfold C
    simp [show (3779136 * k + 1403021) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 4209064) = 5668704 * k + 2104532 := by
    unfold C
    simp [show (11337408 * k + 4209064) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 2104532) = 2834352 * k + 1052266 := by
    unfold C
    simp [show (5668704 * k + 2104532) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1052266) = 1417176 * k + 526133 := by
    unfold C
    simp [show (2834352 * k + 1052266) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 526133) = 4251528 * k + 1578400 := by
    unfold C
    simp [show (1417176 * k + 526133) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 1578400) = 2125764 * k + 789200 := by
    unfold C
    simp [show (4251528 * k + 1578400) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 789200) = 1062882 * k + 394600 := by
    unfold C
    simp [show (2125764 * k + 789200) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 394600) = 531441 * k + 197300 := by
    unfold C
    simp [show (1062882 * k + 394600) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 389287) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 389287)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_389599 : ∀ k : Nat,
    iterate (1048576 * k + 389599) 32 = 531441 * k + 197458 ∧
      531441 * k + 197458 < 1048576 * k + 389599 := by
  intro k
  have h1 : C (1048576 * k + 389599) = 3145728 * k + 1168798 := by
    unfold C
    simp [show (1048576 * k + 389599) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1168798) = 1572864 * k + 584399 := by
    unfold C
    simp [show (3145728 * k + 1168798) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 584399) = 4718592 * k + 1753198 := by
    unfold C
    simp [show (1572864 * k + 584399) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1753198) = 2359296 * k + 876599 := by
    unfold C
    simp [show (4718592 * k + 1753198) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 876599) = 7077888 * k + 2629798 := by
    unfold C
    simp [show (2359296 * k + 876599) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 2629798) = 3538944 * k + 1314899 := by
    unfold C
    simp [show (7077888 * k + 2629798) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1314899) = 10616832 * k + 3944698 := by
    unfold C
    simp [show (3538944 * k + 1314899) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 3944698) = 5308416 * k + 1972349 := by
    unfold C
    simp [show (10616832 * k + 3944698) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 1972349) = 15925248 * k + 5917048 := by
    unfold C
    simp [show (5308416 * k + 1972349) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 5917048) = 7962624 * k + 2958524 := by
    unfold C
    simp [show (15925248 * k + 5917048) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 2958524) = 3981312 * k + 1479262 := by
    unfold C
    simp [show (7962624 * k + 2958524) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 1479262) = 1990656 * k + 739631 := by
    unfold C
    simp [show (3981312 * k + 1479262) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 739631) = 5971968 * k + 2218894 := by
    unfold C
    simp [show (1990656 * k + 739631) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 2218894) = 2985984 * k + 1109447 := by
    unfold C
    simp [show (5971968 * k + 2218894) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1109447) = 8957952 * k + 3328342 := by
    unfold C
    simp [show (2985984 * k + 1109447) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 3328342) = 4478976 * k + 1664171 := by
    unfold C
    simp [show (8957952 * k + 3328342) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 1664171) = 13436928 * k + 4992514 := by
    unfold C
    simp [show (4478976 * k + 1664171) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 4992514) = 6718464 * k + 2496257 := by
    unfold C
    simp [show (13436928 * k + 4992514) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 2496257) = 20155392 * k + 7488772 := by
    unfold C
    simp [show (6718464 * k + 2496257) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 7488772) = 10077696 * k + 3744386 := by
    unfold C
    simp [show (20155392 * k + 7488772) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 3744386) = 5038848 * k + 1872193 := by
    unfold C
    simp [show (10077696 * k + 3744386) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 1872193) = 15116544 * k + 5616580 := by
    unfold C
    simp [show (5038848 * k + 1872193) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 5616580) = 7558272 * k + 2808290 := by
    unfold C
    simp [show (15116544 * k + 5616580) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 2808290) = 3779136 * k + 1404145 := by
    unfold C
    simp [show (7558272 * k + 2808290) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 1404145) = 11337408 * k + 4212436 := by
    unfold C
    simp [show (3779136 * k + 1404145) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 4212436) = 5668704 * k + 2106218 := by
    unfold C
    simp [show (11337408 * k + 4212436) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 2106218) = 2834352 * k + 1053109 := by
    unfold C
    simp [show (5668704 * k + 2106218) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1053109) = 8503056 * k + 3159328 := by
    unfold C
    simp [show (2834352 * k + 1053109) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 3159328) = 4251528 * k + 1579664 := by
    unfold C
    simp [show (8503056 * k + 3159328) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 1579664) = 2125764 * k + 789832 := by
    unfold C
    simp [show (4251528 * k + 1579664) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 789832) = 1062882 * k + 394916 := by
    unfold C
    simp [show (2125764 * k + 789832) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 394916) = 531441 * k + 197458 := by
    unfold C
    simp [show (1062882 * k + 394916) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 389599) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 389599)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_389631 : ∀ k : Nat,
    iterate (1048576 * k + 389631) 32 = 531441 * k + 197474 ∧
      531441 * k + 197474 < 1048576 * k + 389631 := by
  intro k
  have h1 : C (1048576 * k + 389631) = 3145728 * k + 1168894 := by
    unfold C
    simp [show (1048576 * k + 389631) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1168894) = 1572864 * k + 584447 := by
    unfold C
    simp [show (3145728 * k + 1168894) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 584447) = 4718592 * k + 1753342 := by
    unfold C
    simp [show (1572864 * k + 584447) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1753342) = 2359296 * k + 876671 := by
    unfold C
    simp [show (4718592 * k + 1753342) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 876671) = 7077888 * k + 2630014 := by
    unfold C
    simp [show (2359296 * k + 876671) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 2630014) = 3538944 * k + 1315007 := by
    unfold C
    simp [show (7077888 * k + 2630014) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1315007) = 10616832 * k + 3945022 := by
    unfold C
    simp [show (3538944 * k + 1315007) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 3945022) = 5308416 * k + 1972511 := by
    unfold C
    simp [show (10616832 * k + 3945022) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 1972511) = 15925248 * k + 5917534 := by
    unfold C
    simp [show (5308416 * k + 1972511) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 5917534) = 7962624 * k + 2958767 := by
    unfold C
    simp [show (15925248 * k + 5917534) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 2958767) = 23887872 * k + 8876302 := by
    unfold C
    simp [show (7962624 * k + 2958767) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 8876302) = 11943936 * k + 4438151 := by
    unfold C
    simp [show (23887872 * k + 8876302) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 4438151) = 35831808 * k + 13314454 := by
    unfold C
    simp [show (11943936 * k + 4438151) % 2 ≠ 0 by omega]
    omega
  have h14 : C (35831808 * k + 13314454) = 17915904 * k + 6657227 := by
    unfold C
    simp [show (35831808 * k + 13314454) % 2 = 0 by omega]
    omega
  have h15 : C (17915904 * k + 6657227) = 53747712 * k + 19971682 := by
    unfold C
    simp [show (17915904 * k + 6657227) % 2 ≠ 0 by omega]
    omega
  have h16 : C (53747712 * k + 19971682) = 26873856 * k + 9985841 := by
    unfold C
    simp [show (53747712 * k + 19971682) % 2 = 0 by omega]
    omega
  have h17 : C (26873856 * k + 9985841) = 80621568 * k + 29957524 := by
    unfold C
    simp [show (26873856 * k + 9985841) % 2 ≠ 0 by omega]
    omega
  have h18 : C (80621568 * k + 29957524) = 40310784 * k + 14978762 := by
    unfold C
    simp [show (80621568 * k + 29957524) % 2 = 0 by omega]
    omega
  have h19 : C (40310784 * k + 14978762) = 20155392 * k + 7489381 := by
    unfold C
    simp [show (40310784 * k + 14978762) % 2 = 0 by omega]
    omega
  have h20 : C (20155392 * k + 7489381) = 60466176 * k + 22468144 := by
    unfold C
    simp [show (20155392 * k + 7489381) % 2 ≠ 0 by omega]
    omega
  have h21 : C (60466176 * k + 22468144) = 30233088 * k + 11234072 := by
    unfold C
    simp [show (60466176 * k + 22468144) % 2 = 0 by omega]
    omega
  have h22 : C (30233088 * k + 11234072) = 15116544 * k + 5617036 := by
    unfold C
    simp [show (30233088 * k + 11234072) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 5617036) = 7558272 * k + 2808518 := by
    unfold C
    simp [show (15116544 * k + 5617036) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 2808518) = 3779136 * k + 1404259 := by
    unfold C
    simp [show (7558272 * k + 2808518) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 1404259) = 11337408 * k + 4212778 := by
    unfold C
    simp [show (3779136 * k + 1404259) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 4212778) = 5668704 * k + 2106389 := by
    unfold C
    simp [show (11337408 * k + 4212778) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 2106389) = 17006112 * k + 6319168 := by
    unfold C
    simp [show (5668704 * k + 2106389) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 6319168) = 8503056 * k + 3159584 := by
    unfold C
    simp [show (17006112 * k + 6319168) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 3159584) = 4251528 * k + 1579792 := by
    unfold C
    simp [show (8503056 * k + 3159584) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 1579792) = 2125764 * k + 789896 := by
    unfold C
    simp [show (4251528 * k + 1579792) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 789896) = 1062882 * k + 394948 := by
    unfold C
    simp [show (2125764 * k + 789896) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 394948) = 531441 * k + 197474 := by
    unfold C
    simp [show (1062882 * k + 394948) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 389631) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 389631)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_389723 : ∀ k : Nat,
    iterate (1048576 * k + 389723) 32 = 531441 * k + 197521 ∧
      531441 * k + 197521 < 1048576 * k + 389723 := by
  intro k
  have h1 : C (1048576 * k + 389723) = 3145728 * k + 1169170 := by
    unfold C
    simp [show (1048576 * k + 389723) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1169170) = 1572864 * k + 584585 := by
    unfold C
    simp [show (3145728 * k + 1169170) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 584585) = 4718592 * k + 1753756 := by
    unfold C
    simp [show (1572864 * k + 584585) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1753756) = 2359296 * k + 876878 := by
    unfold C
    simp [show (4718592 * k + 1753756) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 876878) = 1179648 * k + 438439 := by
    unfold C
    simp [show (2359296 * k + 876878) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 438439) = 3538944 * k + 1315318 := by
    unfold C
    simp [show (1179648 * k + 438439) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 1315318) = 1769472 * k + 657659 := by
    unfold C
    simp [show (3538944 * k + 1315318) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 657659) = 5308416 * k + 1972978 := by
    unfold C
    simp [show (1769472 * k + 657659) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 1972978) = 2654208 * k + 986489 := by
    unfold C
    simp [show (5308416 * k + 1972978) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 986489) = 7962624 * k + 2959468 := by
    unfold C
    simp [show (2654208 * k + 986489) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 2959468) = 3981312 * k + 1479734 := by
    unfold C
    simp [show (7962624 * k + 2959468) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 1479734) = 1990656 * k + 739867 := by
    unfold C
    simp [show (3981312 * k + 1479734) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 739867) = 5971968 * k + 2219602 := by
    unfold C
    simp [show (1990656 * k + 739867) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 2219602) = 2985984 * k + 1109801 := by
    unfold C
    simp [show (5971968 * k + 2219602) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1109801) = 8957952 * k + 3329404 := by
    unfold C
    simp [show (2985984 * k + 1109801) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 3329404) = 4478976 * k + 1664702 := by
    unfold C
    simp [show (8957952 * k + 3329404) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 1664702) = 2239488 * k + 832351 := by
    unfold C
    simp [show (4478976 * k + 1664702) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 832351) = 6718464 * k + 2497054 := by
    unfold C
    simp [show (2239488 * k + 832351) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 2497054) = 3359232 * k + 1248527 := by
    unfold C
    simp [show (6718464 * k + 2497054) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 1248527) = 10077696 * k + 3745582 := by
    unfold C
    simp [show (3359232 * k + 1248527) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 3745582) = 5038848 * k + 1872791 := by
    unfold C
    simp [show (10077696 * k + 3745582) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 1872791) = 15116544 * k + 5618374 := by
    unfold C
    simp [show (5038848 * k + 1872791) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 5618374) = 7558272 * k + 2809187 := by
    unfold C
    simp [show (15116544 * k + 5618374) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 2809187) = 22674816 * k + 8427562 := by
    unfold C
    simp [show (7558272 * k + 2809187) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 8427562) = 11337408 * k + 4213781 := by
    unfold C
    simp [show (22674816 * k + 8427562) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 4213781) = 34012224 * k + 12641344 := by
    unfold C
    simp [show (11337408 * k + 4213781) % 2 ≠ 0 by omega]
    omega
  have h27 : C (34012224 * k + 12641344) = 17006112 * k + 6320672 := by
    unfold C
    simp [show (34012224 * k + 12641344) % 2 = 0 by omega]
    omega
  have h28 : C (17006112 * k + 6320672) = 8503056 * k + 3160336 := by
    unfold C
    simp [show (17006112 * k + 6320672) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 3160336) = 4251528 * k + 1580168 := by
    unfold C
    simp [show (8503056 * k + 3160336) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 1580168) = 2125764 * k + 790084 := by
    unfold C
    simp [show (4251528 * k + 1580168) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 790084) = 1062882 * k + 395042 := by
    unfold C
    simp [show (2125764 * k + 790084) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 395042) = 531441 * k + 197521 := by
    unfold C
    simp [show (1062882 * k + 395042) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 389723) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 389723)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_390447 : ∀ k : Nat,
    iterate (1048576 * k + 390447) 32 = 531441 * k + 197888 ∧
      531441 * k + 197888 < 1048576 * k + 390447 := by
  intro k
  have h1 : C (1048576 * k + 390447) = 3145728 * k + 1171342 := by
    unfold C
    simp [show (1048576 * k + 390447) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1171342) = 1572864 * k + 585671 := by
    unfold C
    simp [show (3145728 * k + 1171342) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 585671) = 4718592 * k + 1757014 := by
    unfold C
    simp [show (1572864 * k + 585671) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1757014) = 2359296 * k + 878507 := by
    unfold C
    simp [show (4718592 * k + 1757014) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 878507) = 7077888 * k + 2635522 := by
    unfold C
    simp [show (2359296 * k + 878507) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 2635522) = 3538944 * k + 1317761 := by
    unfold C
    simp [show (7077888 * k + 2635522) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1317761) = 10616832 * k + 3953284 := by
    unfold C
    simp [show (3538944 * k + 1317761) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 3953284) = 5308416 * k + 1976642 := by
    unfold C
    simp [show (10616832 * k + 3953284) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 1976642) = 2654208 * k + 988321 := by
    unfold C
    simp [show (5308416 * k + 1976642) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 988321) = 7962624 * k + 2964964 := by
    unfold C
    simp [show (2654208 * k + 988321) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 2964964) = 3981312 * k + 1482482 := by
    unfold C
    simp [show (7962624 * k + 2964964) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 1482482) = 1990656 * k + 741241 := by
    unfold C
    simp [show (3981312 * k + 1482482) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 741241) = 5971968 * k + 2223724 := by
    unfold C
    simp [show (1990656 * k + 741241) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 2223724) = 2985984 * k + 1111862 := by
    unfold C
    simp [show (5971968 * k + 2223724) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1111862) = 1492992 * k + 555931 := by
    unfold C
    simp [show (2985984 * k + 1111862) % 2 = 0 by omega]
    omega
  have h16 : C (1492992 * k + 555931) = 4478976 * k + 1667794 := by
    unfold C
    simp [show (1492992 * k + 555931) % 2 ≠ 0 by omega]
    omega
  have h17 : C (4478976 * k + 1667794) = 2239488 * k + 833897 := by
    unfold C
    simp [show (4478976 * k + 1667794) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 833897) = 6718464 * k + 2501692 := by
    unfold C
    simp [show (2239488 * k + 833897) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 2501692) = 3359232 * k + 1250846 := by
    unfold C
    simp [show (6718464 * k + 2501692) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 1250846) = 1679616 * k + 625423 := by
    unfold C
    simp [show (3359232 * k + 1250846) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 625423) = 5038848 * k + 1876270 := by
    unfold C
    simp [show (1679616 * k + 625423) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 1876270) = 2519424 * k + 938135 := by
    unfold C
    simp [show (5038848 * k + 1876270) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 938135) = 7558272 * k + 2814406 := by
    unfold C
    simp [show (2519424 * k + 938135) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 2814406) = 3779136 * k + 1407203 := by
    unfold C
    simp [show (7558272 * k + 2814406) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 1407203) = 11337408 * k + 4221610 := by
    unfold C
    simp [show (3779136 * k + 1407203) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 4221610) = 5668704 * k + 2110805 := by
    unfold C
    simp [show (11337408 * k + 4221610) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 2110805) = 17006112 * k + 6332416 := by
    unfold C
    simp [show (5668704 * k + 2110805) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 6332416) = 8503056 * k + 3166208 := by
    unfold C
    simp [show (17006112 * k + 6332416) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 3166208) = 4251528 * k + 1583104 := by
    unfold C
    simp [show (8503056 * k + 3166208) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 1583104) = 2125764 * k + 791552 := by
    unfold C
    simp [show (4251528 * k + 1583104) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 791552) = 1062882 * k + 395776 := by
    unfold C
    simp [show (2125764 * k + 791552) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 395776) = 531441 * k + 197888 := by
    unfold C
    simp [show (1062882 * k + 395776) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 390447) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 390447)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_391495 : ∀ k : Nat,
    iterate (1048576 * k + 391495) 32 = 531441 * k + 198419 ∧
      531441 * k + 198419 < 1048576 * k + 391495 := by
  intro k
  have h1 : C (1048576 * k + 391495) = 3145728 * k + 1174486 := by
    unfold C
    simp [show (1048576 * k + 391495) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1174486) = 1572864 * k + 587243 := by
    unfold C
    simp [show (3145728 * k + 1174486) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 587243) = 4718592 * k + 1761730 := by
    unfold C
    simp [show (1572864 * k + 587243) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1761730) = 2359296 * k + 880865 := by
    unfold C
    simp [show (4718592 * k + 1761730) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 880865) = 7077888 * k + 2642596 := by
    unfold C
    simp [show (2359296 * k + 880865) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 2642596) = 3538944 * k + 1321298 := by
    unfold C
    simp [show (7077888 * k + 2642596) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1321298) = 1769472 * k + 660649 := by
    unfold C
    simp [show (3538944 * k + 1321298) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 660649) = 5308416 * k + 1981948 := by
    unfold C
    simp [show (1769472 * k + 660649) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 1981948) = 2654208 * k + 990974 := by
    unfold C
    simp [show (5308416 * k + 1981948) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 990974) = 1327104 * k + 495487 := by
    unfold C
    simp [show (2654208 * k + 990974) % 2 = 0 by omega]
    omega
  have h11 : C (1327104 * k + 495487) = 3981312 * k + 1486462 := by
    unfold C
    simp [show (1327104 * k + 495487) % 2 ≠ 0 by omega]
    omega
  have h12 : C (3981312 * k + 1486462) = 1990656 * k + 743231 := by
    unfold C
    simp [show (3981312 * k + 1486462) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 743231) = 5971968 * k + 2229694 := by
    unfold C
    simp [show (1990656 * k + 743231) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 2229694) = 2985984 * k + 1114847 := by
    unfold C
    simp [show (5971968 * k + 2229694) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1114847) = 8957952 * k + 3344542 := by
    unfold C
    simp [show (2985984 * k + 1114847) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 3344542) = 4478976 * k + 1672271 := by
    unfold C
    simp [show (8957952 * k + 3344542) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 1672271) = 13436928 * k + 5016814 := by
    unfold C
    simp [show (4478976 * k + 1672271) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 5016814) = 6718464 * k + 2508407 := by
    unfold C
    simp [show (13436928 * k + 5016814) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 2508407) = 20155392 * k + 7525222 := by
    unfold C
    simp [show (6718464 * k + 2508407) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 7525222) = 10077696 * k + 3762611 := by
    unfold C
    simp [show (20155392 * k + 7525222) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 3762611) = 30233088 * k + 11287834 := by
    unfold C
    simp [show (10077696 * k + 3762611) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 11287834) = 15116544 * k + 5643917 := by
    unfold C
    simp [show (30233088 * k + 11287834) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 5643917) = 45349632 * k + 16931752 := by
    unfold C
    simp [show (15116544 * k + 5643917) % 2 ≠ 0 by omega]
    omega
  have h24 : C (45349632 * k + 16931752) = 22674816 * k + 8465876 := by
    unfold C
    simp [show (45349632 * k + 16931752) % 2 = 0 by omega]
    omega
  have h25 : C (22674816 * k + 8465876) = 11337408 * k + 4232938 := by
    unfold C
    simp [show (22674816 * k + 8465876) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 4232938) = 5668704 * k + 2116469 := by
    unfold C
    simp [show (11337408 * k + 4232938) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 2116469) = 17006112 * k + 6349408 := by
    unfold C
    simp [show (5668704 * k + 2116469) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 6349408) = 8503056 * k + 3174704 := by
    unfold C
    simp [show (17006112 * k + 6349408) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 3174704) = 4251528 * k + 1587352 := by
    unfold C
    simp [show (8503056 * k + 3174704) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 1587352) = 2125764 * k + 793676 := by
    unfold C
    simp [show (4251528 * k + 1587352) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 793676) = 1062882 * k + 396838 := by
    unfold C
    simp [show (2125764 * k + 793676) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 396838) = 531441 * k + 198419 := by
    unfold C
    simp [show (1062882 * k + 396838) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 391495) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 391495)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_391647 : ∀ k : Nat,
    iterate (1048576 * k + 391647) 32 = 531441 * k + 198496 ∧
      531441 * k + 198496 < 1048576 * k + 391647 := by
  intro k
  have h1 : C (1048576 * k + 391647) = 3145728 * k + 1174942 := by
    unfold C
    simp [show (1048576 * k + 391647) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1174942) = 1572864 * k + 587471 := by
    unfold C
    simp [show (3145728 * k + 1174942) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 587471) = 4718592 * k + 1762414 := by
    unfold C
    simp [show (1572864 * k + 587471) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1762414) = 2359296 * k + 881207 := by
    unfold C
    simp [show (4718592 * k + 1762414) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 881207) = 7077888 * k + 2643622 := by
    unfold C
    simp [show (2359296 * k + 881207) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 2643622) = 3538944 * k + 1321811 := by
    unfold C
    simp [show (7077888 * k + 2643622) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1321811) = 10616832 * k + 3965434 := by
    unfold C
    simp [show (3538944 * k + 1321811) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 3965434) = 5308416 * k + 1982717 := by
    unfold C
    simp [show (10616832 * k + 3965434) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 1982717) = 15925248 * k + 5948152 := by
    unfold C
    simp [show (5308416 * k + 1982717) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 5948152) = 7962624 * k + 2974076 := by
    unfold C
    simp [show (15925248 * k + 5948152) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 2974076) = 3981312 * k + 1487038 := by
    unfold C
    simp [show (7962624 * k + 2974076) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 1487038) = 1990656 * k + 743519 := by
    unfold C
    simp [show (3981312 * k + 1487038) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 743519) = 5971968 * k + 2230558 := by
    unfold C
    simp [show (1990656 * k + 743519) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 2230558) = 2985984 * k + 1115279 := by
    unfold C
    simp [show (5971968 * k + 2230558) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1115279) = 8957952 * k + 3345838 := by
    unfold C
    simp [show (2985984 * k + 1115279) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 3345838) = 4478976 * k + 1672919 := by
    unfold C
    simp [show (8957952 * k + 3345838) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 1672919) = 13436928 * k + 5018758 := by
    unfold C
    simp [show (4478976 * k + 1672919) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 5018758) = 6718464 * k + 2509379 := by
    unfold C
    simp [show (13436928 * k + 5018758) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 2509379) = 20155392 * k + 7528138 := by
    unfold C
    simp [show (6718464 * k + 2509379) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 7528138) = 10077696 * k + 3764069 := by
    unfold C
    simp [show (20155392 * k + 7528138) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 3764069) = 30233088 * k + 11292208 := by
    unfold C
    simp [show (10077696 * k + 3764069) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 11292208) = 15116544 * k + 5646104 := by
    unfold C
    simp [show (30233088 * k + 11292208) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 5646104) = 7558272 * k + 2823052 := by
    unfold C
    simp [show (15116544 * k + 5646104) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 2823052) = 3779136 * k + 1411526 := by
    unfold C
    simp [show (7558272 * k + 2823052) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 1411526) = 1889568 * k + 705763 := by
    unfold C
    simp [show (3779136 * k + 1411526) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 705763) = 5668704 * k + 2117290 := by
    unfold C
    simp [show (1889568 * k + 705763) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 2117290) = 2834352 * k + 1058645 := by
    unfold C
    simp [show (5668704 * k + 2117290) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1058645) = 8503056 * k + 3175936 := by
    unfold C
    simp [show (2834352 * k + 1058645) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 3175936) = 4251528 * k + 1587968 := by
    unfold C
    simp [show (8503056 * k + 3175936) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 1587968) = 2125764 * k + 793984 := by
    unfold C
    simp [show (4251528 * k + 1587968) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 793984) = 1062882 * k + 396992 := by
    unfold C
    simp [show (2125764 * k + 793984) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 396992) = 531441 * k + 198496 := by
    unfold C
    simp [show (1062882 * k + 396992) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 391647) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 391647)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_391807 : ∀ k : Nat,
    iterate (1048576 * k + 391807) 32 = 531441 * k + 198577 ∧
      531441 * k + 198577 < 1048576 * k + 391807 := by
  intro k
  have h1 : C (1048576 * k + 391807) = 3145728 * k + 1175422 := by
    unfold C
    simp [show (1048576 * k + 391807) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1175422) = 1572864 * k + 587711 := by
    unfold C
    simp [show (3145728 * k + 1175422) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 587711) = 4718592 * k + 1763134 := by
    unfold C
    simp [show (1572864 * k + 587711) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1763134) = 2359296 * k + 881567 := by
    unfold C
    simp [show (4718592 * k + 1763134) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 881567) = 7077888 * k + 2644702 := by
    unfold C
    simp [show (2359296 * k + 881567) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 2644702) = 3538944 * k + 1322351 := by
    unfold C
    simp [show (7077888 * k + 2644702) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1322351) = 10616832 * k + 3967054 := by
    unfold C
    simp [show (3538944 * k + 1322351) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 3967054) = 5308416 * k + 1983527 := by
    unfold C
    simp [show (10616832 * k + 3967054) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 1983527) = 15925248 * k + 5950582 := by
    unfold C
    simp [show (5308416 * k + 1983527) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 5950582) = 7962624 * k + 2975291 := by
    unfold C
    simp [show (15925248 * k + 5950582) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 2975291) = 23887872 * k + 8925874 := by
    unfold C
    simp [show (7962624 * k + 2975291) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 8925874) = 11943936 * k + 4462937 := by
    unfold C
    simp [show (23887872 * k + 8925874) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 4462937) = 35831808 * k + 13388812 := by
    unfold C
    simp [show (11943936 * k + 4462937) % 2 ≠ 0 by omega]
    omega
  have h14 : C (35831808 * k + 13388812) = 17915904 * k + 6694406 := by
    unfold C
    simp [show (35831808 * k + 13388812) % 2 = 0 by omega]
    omega
  have h15 : C (17915904 * k + 6694406) = 8957952 * k + 3347203 := by
    unfold C
    simp [show (17915904 * k + 6694406) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 3347203) = 26873856 * k + 10041610 := by
    unfold C
    simp [show (8957952 * k + 3347203) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 10041610) = 13436928 * k + 5020805 := by
    unfold C
    simp [show (26873856 * k + 10041610) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 5020805) = 40310784 * k + 15062416 := by
    unfold C
    simp [show (13436928 * k + 5020805) % 2 ≠ 0 by omega]
    omega
  have h19 : C (40310784 * k + 15062416) = 20155392 * k + 7531208 := by
    unfold C
    simp [show (40310784 * k + 15062416) % 2 = 0 by omega]
    omega
  have h20 : C (20155392 * k + 7531208) = 10077696 * k + 3765604 := by
    unfold C
    simp [show (20155392 * k + 7531208) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 3765604) = 5038848 * k + 1882802 := by
    unfold C
    simp [show (10077696 * k + 3765604) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 1882802) = 2519424 * k + 941401 := by
    unfold C
    simp [show (5038848 * k + 1882802) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 941401) = 7558272 * k + 2824204 := by
    unfold C
    simp [show (2519424 * k + 941401) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 2824204) = 3779136 * k + 1412102 := by
    unfold C
    simp [show (7558272 * k + 2824204) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 1412102) = 1889568 * k + 706051 := by
    unfold C
    simp [show (3779136 * k + 1412102) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 706051) = 5668704 * k + 2118154 := by
    unfold C
    simp [show (1889568 * k + 706051) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 2118154) = 2834352 * k + 1059077 := by
    unfold C
    simp [show (5668704 * k + 2118154) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1059077) = 8503056 * k + 3177232 := by
    unfold C
    simp [show (2834352 * k + 1059077) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 3177232) = 4251528 * k + 1588616 := by
    unfold C
    simp [show (8503056 * k + 3177232) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 1588616) = 2125764 * k + 794308 := by
    unfold C
    simp [show (4251528 * k + 1588616) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 794308) = 1062882 * k + 397154 := by
    unfold C
    simp [show (2125764 * k + 794308) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 397154) = 531441 * k + 198577 := by
    unfold C
    simp [show (1062882 * k + 397154) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 391807) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 391807)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_392223 : ∀ k : Nat,
    iterate (1048576 * k + 392223) 32 = 531441 * k + 198788 ∧
      531441 * k + 198788 < 1048576 * k + 392223 := by
  intro k
  have h1 : C (1048576 * k + 392223) = 3145728 * k + 1176670 := by
    unfold C
    simp [show (1048576 * k + 392223) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1176670) = 1572864 * k + 588335 := by
    unfold C
    simp [show (3145728 * k + 1176670) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 588335) = 4718592 * k + 1765006 := by
    unfold C
    simp [show (1572864 * k + 588335) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1765006) = 2359296 * k + 882503 := by
    unfold C
    simp [show (4718592 * k + 1765006) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 882503) = 7077888 * k + 2647510 := by
    unfold C
    simp [show (2359296 * k + 882503) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 2647510) = 3538944 * k + 1323755 := by
    unfold C
    simp [show (7077888 * k + 2647510) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1323755) = 10616832 * k + 3971266 := by
    unfold C
    simp [show (3538944 * k + 1323755) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 3971266) = 5308416 * k + 1985633 := by
    unfold C
    simp [show (10616832 * k + 3971266) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 1985633) = 15925248 * k + 5956900 := by
    unfold C
    simp [show (5308416 * k + 1985633) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 5956900) = 7962624 * k + 2978450 := by
    unfold C
    simp [show (15925248 * k + 5956900) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 2978450) = 3981312 * k + 1489225 := by
    unfold C
    simp [show (7962624 * k + 2978450) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 1489225) = 11943936 * k + 4467676 := by
    unfold C
    simp [show (3981312 * k + 1489225) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 4467676) = 5971968 * k + 2233838 := by
    unfold C
    simp [show (11943936 * k + 4467676) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 2233838) = 2985984 * k + 1116919 := by
    unfold C
    simp [show (5971968 * k + 2233838) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1116919) = 8957952 * k + 3350758 := by
    unfold C
    simp [show (2985984 * k + 1116919) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 3350758) = 4478976 * k + 1675379 := by
    unfold C
    simp [show (8957952 * k + 3350758) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 1675379) = 13436928 * k + 5026138 := by
    unfold C
    simp [show (4478976 * k + 1675379) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 5026138) = 6718464 * k + 2513069 := by
    unfold C
    simp [show (13436928 * k + 5026138) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 2513069) = 20155392 * k + 7539208 := by
    unfold C
    simp [show (6718464 * k + 2513069) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 7539208) = 10077696 * k + 3769604 := by
    unfold C
    simp [show (20155392 * k + 7539208) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 3769604) = 5038848 * k + 1884802 := by
    unfold C
    simp [show (10077696 * k + 3769604) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 1884802) = 2519424 * k + 942401 := by
    unfold C
    simp [show (5038848 * k + 1884802) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 942401) = 7558272 * k + 2827204 := by
    unfold C
    simp [show (2519424 * k + 942401) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 2827204) = 3779136 * k + 1413602 := by
    unfold C
    simp [show (7558272 * k + 2827204) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 1413602) = 1889568 * k + 706801 := by
    unfold C
    simp [show (3779136 * k + 1413602) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 706801) = 5668704 * k + 2120404 := by
    unfold C
    simp [show (1889568 * k + 706801) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 2120404) = 2834352 * k + 1060202 := by
    unfold C
    simp [show (5668704 * k + 2120404) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1060202) = 1417176 * k + 530101 := by
    unfold C
    simp [show (2834352 * k + 1060202) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 530101) = 4251528 * k + 1590304 := by
    unfold C
    simp [show (1417176 * k + 530101) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 1590304) = 2125764 * k + 795152 := by
    unfold C
    simp [show (4251528 * k + 1590304) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 795152) = 1062882 * k + 397576 := by
    unfold C
    simp [show (2125764 * k + 795152) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 397576) = 531441 * k + 198788 := by
    unfold C
    simp [show (1062882 * k + 397576) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 392223) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 392223)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_392359 : ∀ k : Nat,
    iterate (1048576 * k + 392359) 32 = 531441 * k + 198857 ∧
      531441 * k + 198857 < 1048576 * k + 392359 := by
  intro k
  have h1 : C (1048576 * k + 392359) = 3145728 * k + 1177078 := by
    unfold C
    simp [show (1048576 * k + 392359) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1177078) = 1572864 * k + 588539 := by
    unfold C
    simp [show (3145728 * k + 1177078) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 588539) = 4718592 * k + 1765618 := by
    unfold C
    simp [show (1572864 * k + 588539) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1765618) = 2359296 * k + 882809 := by
    unfold C
    simp [show (4718592 * k + 1765618) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 882809) = 7077888 * k + 2648428 := by
    unfold C
    simp [show (2359296 * k + 882809) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 2648428) = 3538944 * k + 1324214 := by
    unfold C
    simp [show (7077888 * k + 2648428) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1324214) = 1769472 * k + 662107 := by
    unfold C
    simp [show (3538944 * k + 1324214) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 662107) = 5308416 * k + 1986322 := by
    unfold C
    simp [show (1769472 * k + 662107) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 1986322) = 2654208 * k + 993161 := by
    unfold C
    simp [show (5308416 * k + 1986322) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 993161) = 7962624 * k + 2979484 := by
    unfold C
    simp [show (2654208 * k + 993161) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 2979484) = 3981312 * k + 1489742 := by
    unfold C
    simp [show (7962624 * k + 2979484) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 1489742) = 1990656 * k + 744871 := by
    unfold C
    simp [show (3981312 * k + 1489742) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 744871) = 5971968 * k + 2234614 := by
    unfold C
    simp [show (1990656 * k + 744871) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 2234614) = 2985984 * k + 1117307 := by
    unfold C
    simp [show (5971968 * k + 2234614) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1117307) = 8957952 * k + 3351922 := by
    unfold C
    simp [show (2985984 * k + 1117307) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 3351922) = 4478976 * k + 1675961 := by
    unfold C
    simp [show (8957952 * k + 3351922) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 1675961) = 13436928 * k + 5027884 := by
    unfold C
    simp [show (4478976 * k + 1675961) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 5027884) = 6718464 * k + 2513942 := by
    unfold C
    simp [show (13436928 * k + 5027884) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 2513942) = 3359232 * k + 1256971 := by
    unfold C
    simp [show (6718464 * k + 2513942) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 1256971) = 10077696 * k + 3770914 := by
    unfold C
    simp [show (3359232 * k + 1256971) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 3770914) = 5038848 * k + 1885457 := by
    unfold C
    simp [show (10077696 * k + 3770914) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 1885457) = 15116544 * k + 5656372 := by
    unfold C
    simp [show (5038848 * k + 1885457) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 5656372) = 7558272 * k + 2828186 := by
    unfold C
    simp [show (15116544 * k + 5656372) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 2828186) = 3779136 * k + 1414093 := by
    unfold C
    simp [show (7558272 * k + 2828186) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 1414093) = 11337408 * k + 4242280 := by
    unfold C
    simp [show (3779136 * k + 1414093) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 4242280) = 5668704 * k + 2121140 := by
    unfold C
    simp [show (11337408 * k + 4242280) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 2121140) = 2834352 * k + 1060570 := by
    unfold C
    simp [show (5668704 * k + 2121140) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1060570) = 1417176 * k + 530285 := by
    unfold C
    simp [show (2834352 * k + 1060570) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 530285) = 4251528 * k + 1590856 := by
    unfold C
    simp [show (1417176 * k + 530285) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 1590856) = 2125764 * k + 795428 := by
    unfold C
    simp [show (4251528 * k + 1590856) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 795428) = 1062882 * k + 397714 := by
    unfold C
    simp [show (2125764 * k + 795428) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 397714) = 531441 * k + 198857 := by
    unfold C
    simp [show (1062882 * k + 397714) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 392359) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 392359)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_392383 : ∀ k : Nat,
    iterate (1048576 * k + 392383) 32 = 531441 * k + 198869 ∧
      531441 * k + 198869 < 1048576 * k + 392383 := by
  intro k
  have h1 : C (1048576 * k + 392383) = 3145728 * k + 1177150 := by
    unfold C
    simp [show (1048576 * k + 392383) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1177150) = 1572864 * k + 588575 := by
    unfold C
    simp [show (3145728 * k + 1177150) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 588575) = 4718592 * k + 1765726 := by
    unfold C
    simp [show (1572864 * k + 588575) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1765726) = 2359296 * k + 882863 := by
    unfold C
    simp [show (4718592 * k + 1765726) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 882863) = 7077888 * k + 2648590 := by
    unfold C
    simp [show (2359296 * k + 882863) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 2648590) = 3538944 * k + 1324295 := by
    unfold C
    simp [show (7077888 * k + 2648590) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1324295) = 10616832 * k + 3972886 := by
    unfold C
    simp [show (3538944 * k + 1324295) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 3972886) = 5308416 * k + 1986443 := by
    unfold C
    simp [show (10616832 * k + 3972886) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 1986443) = 15925248 * k + 5959330 := by
    unfold C
    simp [show (5308416 * k + 1986443) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 5959330) = 7962624 * k + 2979665 := by
    unfold C
    simp [show (15925248 * k + 5959330) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 2979665) = 23887872 * k + 8938996 := by
    unfold C
    simp [show (7962624 * k + 2979665) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 8938996) = 11943936 * k + 4469498 := by
    unfold C
    simp [show (23887872 * k + 8938996) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 4469498) = 5971968 * k + 2234749 := by
    unfold C
    simp [show (11943936 * k + 4469498) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 2234749) = 17915904 * k + 6704248 := by
    unfold C
    simp [show (5971968 * k + 2234749) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 6704248) = 8957952 * k + 3352124 := by
    unfold C
    simp [show (17915904 * k + 6704248) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 3352124) = 4478976 * k + 1676062 := by
    unfold C
    simp [show (8957952 * k + 3352124) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 1676062) = 2239488 * k + 838031 := by
    unfold C
    simp [show (4478976 * k + 1676062) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 838031) = 6718464 * k + 2514094 := by
    unfold C
    simp [show (2239488 * k + 838031) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 2514094) = 3359232 * k + 1257047 := by
    unfold C
    simp [show (6718464 * k + 2514094) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 1257047) = 10077696 * k + 3771142 := by
    unfold C
    simp [show (3359232 * k + 1257047) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 3771142) = 5038848 * k + 1885571 := by
    unfold C
    simp [show (10077696 * k + 3771142) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 1885571) = 15116544 * k + 5656714 := by
    unfold C
    simp [show (5038848 * k + 1885571) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 5656714) = 7558272 * k + 2828357 := by
    unfold C
    simp [show (15116544 * k + 5656714) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 2828357) = 22674816 * k + 8485072 := by
    unfold C
    simp [show (7558272 * k + 2828357) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 8485072) = 11337408 * k + 4242536 := by
    unfold C
    simp [show (22674816 * k + 8485072) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 4242536) = 5668704 * k + 2121268 := by
    unfold C
    simp [show (11337408 * k + 4242536) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 2121268) = 2834352 * k + 1060634 := by
    unfold C
    simp [show (5668704 * k + 2121268) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1060634) = 1417176 * k + 530317 := by
    unfold C
    simp [show (2834352 * k + 1060634) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 530317) = 4251528 * k + 1590952 := by
    unfold C
    simp [show (1417176 * k + 530317) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 1590952) = 2125764 * k + 795476 := by
    unfold C
    simp [show (4251528 * k + 1590952) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 795476) = 1062882 * k + 397738 := by
    unfold C
    simp [show (2125764 * k + 795476) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 397738) = 531441 * k + 198869 := by
    unfold C
    simp [show (1062882 * k + 397738) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 392383) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 392383)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_393543 : ∀ k : Nat,
    iterate (1048576 * k + 393543) 32 = 531441 * k + 199457 ∧
      531441 * k + 199457 < 1048576 * k + 393543 := by
  intro k
  have h1 : C (1048576 * k + 393543) = 3145728 * k + 1180630 := by
    unfold C
    simp [show (1048576 * k + 393543) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1180630) = 1572864 * k + 590315 := by
    unfold C
    simp [show (3145728 * k + 1180630) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 590315) = 4718592 * k + 1770946 := by
    unfold C
    simp [show (1572864 * k + 590315) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1770946) = 2359296 * k + 885473 := by
    unfold C
    simp [show (4718592 * k + 1770946) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 885473) = 7077888 * k + 2656420 := by
    unfold C
    simp [show (2359296 * k + 885473) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 2656420) = 3538944 * k + 1328210 := by
    unfold C
    simp [show (7077888 * k + 2656420) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1328210) = 1769472 * k + 664105 := by
    unfold C
    simp [show (3538944 * k + 1328210) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 664105) = 5308416 * k + 1992316 := by
    unfold C
    simp [show (1769472 * k + 664105) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 1992316) = 2654208 * k + 996158 := by
    unfold C
    simp [show (5308416 * k + 1992316) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 996158) = 1327104 * k + 498079 := by
    unfold C
    simp [show (2654208 * k + 996158) % 2 = 0 by omega]
    omega
  have h11 : C (1327104 * k + 498079) = 3981312 * k + 1494238 := by
    unfold C
    simp [show (1327104 * k + 498079) % 2 ≠ 0 by omega]
    omega
  have h12 : C (3981312 * k + 1494238) = 1990656 * k + 747119 := by
    unfold C
    simp [show (3981312 * k + 1494238) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 747119) = 5971968 * k + 2241358 := by
    unfold C
    simp [show (1990656 * k + 747119) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 2241358) = 2985984 * k + 1120679 := by
    unfold C
    simp [show (5971968 * k + 2241358) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1120679) = 8957952 * k + 3362038 := by
    unfold C
    simp [show (2985984 * k + 1120679) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 3362038) = 4478976 * k + 1681019 := by
    unfold C
    simp [show (8957952 * k + 3362038) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 1681019) = 13436928 * k + 5043058 := by
    unfold C
    simp [show (4478976 * k + 1681019) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 5043058) = 6718464 * k + 2521529 := by
    unfold C
    simp [show (13436928 * k + 5043058) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 2521529) = 20155392 * k + 7564588 := by
    unfold C
    simp [show (6718464 * k + 2521529) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 7564588) = 10077696 * k + 3782294 := by
    unfold C
    simp [show (20155392 * k + 7564588) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 3782294) = 5038848 * k + 1891147 := by
    unfold C
    simp [show (10077696 * k + 3782294) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 1891147) = 15116544 * k + 5673442 := by
    unfold C
    simp [show (5038848 * k + 1891147) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 5673442) = 7558272 * k + 2836721 := by
    unfold C
    simp [show (15116544 * k + 5673442) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 2836721) = 22674816 * k + 8510164 := by
    unfold C
    simp [show (7558272 * k + 2836721) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 8510164) = 11337408 * k + 4255082 := by
    unfold C
    simp [show (22674816 * k + 8510164) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 4255082) = 5668704 * k + 2127541 := by
    unfold C
    simp [show (11337408 * k + 4255082) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 2127541) = 17006112 * k + 6382624 := by
    unfold C
    simp [show (5668704 * k + 2127541) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 6382624) = 8503056 * k + 3191312 := by
    unfold C
    simp [show (17006112 * k + 6382624) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 3191312) = 4251528 * k + 1595656 := by
    unfold C
    simp [show (8503056 * k + 3191312) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 1595656) = 2125764 * k + 797828 := by
    unfold C
    simp [show (4251528 * k + 1595656) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 797828) = 1062882 * k + 398914 := by
    unfold C
    simp [show (2125764 * k + 797828) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 398914) = 531441 * k + 199457 := by
    unfold C
    simp [show (1062882 * k + 398914) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 393543) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 393543)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_393727 : ∀ k : Nat,
    iterate (1048576 * k + 393727) 32 = 531441 * k + 199550 ∧
      531441 * k + 199550 < 1048576 * k + 393727 := by
  intro k
  have h1 : C (1048576 * k + 393727) = 3145728 * k + 1181182 := by
    unfold C
    simp [show (1048576 * k + 393727) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1181182) = 1572864 * k + 590591 := by
    unfold C
    simp [show (3145728 * k + 1181182) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 590591) = 4718592 * k + 1771774 := by
    unfold C
    simp [show (1572864 * k + 590591) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1771774) = 2359296 * k + 885887 := by
    unfold C
    simp [show (4718592 * k + 1771774) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 885887) = 7077888 * k + 2657662 := by
    unfold C
    simp [show (2359296 * k + 885887) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 2657662) = 3538944 * k + 1328831 := by
    unfold C
    simp [show (7077888 * k + 2657662) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1328831) = 10616832 * k + 3986494 := by
    unfold C
    simp [show (3538944 * k + 1328831) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 3986494) = 5308416 * k + 1993247 := by
    unfold C
    simp [show (10616832 * k + 3986494) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 1993247) = 15925248 * k + 5979742 := by
    unfold C
    simp [show (5308416 * k + 1993247) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 5979742) = 7962624 * k + 2989871 := by
    unfold C
    simp [show (15925248 * k + 5979742) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 2989871) = 23887872 * k + 8969614 := by
    unfold C
    simp [show (7962624 * k + 2989871) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 8969614) = 11943936 * k + 4484807 := by
    unfold C
    simp [show (23887872 * k + 8969614) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 4484807) = 35831808 * k + 13454422 := by
    unfold C
    simp [show (11943936 * k + 4484807) % 2 ≠ 0 by omega]
    omega
  have h14 : C (35831808 * k + 13454422) = 17915904 * k + 6727211 := by
    unfold C
    simp [show (35831808 * k + 13454422) % 2 = 0 by omega]
    omega
  have h15 : C (17915904 * k + 6727211) = 53747712 * k + 20181634 := by
    unfold C
    simp [show (17915904 * k + 6727211) % 2 ≠ 0 by omega]
    omega
  have h16 : C (53747712 * k + 20181634) = 26873856 * k + 10090817 := by
    unfold C
    simp [show (53747712 * k + 20181634) % 2 = 0 by omega]
    omega
  have h17 : C (26873856 * k + 10090817) = 80621568 * k + 30272452 := by
    unfold C
    simp [show (26873856 * k + 10090817) % 2 ≠ 0 by omega]
    omega
  have h18 : C (80621568 * k + 30272452) = 40310784 * k + 15136226 := by
    unfold C
    simp [show (80621568 * k + 30272452) % 2 = 0 by omega]
    omega
  have h19 : C (40310784 * k + 15136226) = 20155392 * k + 7568113 := by
    unfold C
    simp [show (40310784 * k + 15136226) % 2 = 0 by omega]
    omega
  have h20 : C (20155392 * k + 7568113) = 60466176 * k + 22704340 := by
    unfold C
    simp [show (20155392 * k + 7568113) % 2 ≠ 0 by omega]
    omega
  have h21 : C (60466176 * k + 22704340) = 30233088 * k + 11352170 := by
    unfold C
    simp [show (60466176 * k + 22704340) % 2 = 0 by omega]
    omega
  have h22 : C (30233088 * k + 11352170) = 15116544 * k + 5676085 := by
    unfold C
    simp [show (30233088 * k + 11352170) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 5676085) = 45349632 * k + 17028256 := by
    unfold C
    simp [show (15116544 * k + 5676085) % 2 ≠ 0 by omega]
    omega
  have h24 : C (45349632 * k + 17028256) = 22674816 * k + 8514128 := by
    unfold C
    simp [show (45349632 * k + 17028256) % 2 = 0 by omega]
    omega
  have h25 : C (22674816 * k + 8514128) = 11337408 * k + 4257064 := by
    unfold C
    simp [show (22674816 * k + 8514128) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 4257064) = 5668704 * k + 2128532 := by
    unfold C
    simp [show (11337408 * k + 4257064) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 2128532) = 2834352 * k + 1064266 := by
    unfold C
    simp [show (5668704 * k + 2128532) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1064266) = 1417176 * k + 532133 := by
    unfold C
    simp [show (2834352 * k + 1064266) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 532133) = 4251528 * k + 1596400 := by
    unfold C
    simp [show (1417176 * k + 532133) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 1596400) = 2125764 * k + 798200 := by
    unfold C
    simp [show (4251528 * k + 1596400) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 798200) = 1062882 * k + 399100 := by
    unfold C
    simp [show (2125764 * k + 798200) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 399100) = 531441 * k + 199550 := by
    unfold C
    simp [show (1062882 * k + 399100) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 393727) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 393727)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

end CollatzM20Shard049
