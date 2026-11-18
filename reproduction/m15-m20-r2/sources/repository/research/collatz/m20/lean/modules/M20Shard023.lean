import Mathlib.Data.Nat.Prime.Basic

namespace CollatzM20Shard023

def C (n : Nat) : Nat := if n % 2 = 0 then n / 2 else 3 * n + 1

def iterate (n t : Nat) : Nat := Nat.rec n (fun _ previous => C previous) t

theorem descent_mod1048576_167663 : ∀ k : Nat,
    iterate (1048576 * k + 167663) 32 = 531441 * k + 84976 ∧
      531441 * k + 84976 < 1048576 * k + 167663 := by
  intro k
  have h1 : C (1048576 * k + 167663) = 3145728 * k + 502990 := by
    unfold C
    simp [show (1048576 * k + 167663) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 502990) = 1572864 * k + 251495 := by
    unfold C
    simp [show (3145728 * k + 502990) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 251495) = 4718592 * k + 754486 := by
    unfold C
    simp [show (1572864 * k + 251495) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 754486) = 2359296 * k + 377243 := by
    unfold C
    simp [show (4718592 * k + 754486) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 377243) = 7077888 * k + 1131730 := by
    unfold C
    simp [show (2359296 * k + 377243) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 1131730) = 3538944 * k + 565865 := by
    unfold C
    simp [show (7077888 * k + 1131730) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 565865) = 10616832 * k + 1697596 := by
    unfold C
    simp [show (3538944 * k + 565865) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 1697596) = 5308416 * k + 848798 := by
    unfold C
    simp [show (10616832 * k + 1697596) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 848798) = 2654208 * k + 424399 := by
    unfold C
    simp [show (5308416 * k + 848798) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 424399) = 7962624 * k + 1273198 := by
    unfold C
    simp [show (2654208 * k + 424399) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 1273198) = 3981312 * k + 636599 := by
    unfold C
    simp [show (7962624 * k + 1273198) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 636599) = 11943936 * k + 1909798 := by
    unfold C
    simp [show (3981312 * k + 636599) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 1909798) = 5971968 * k + 954899 := by
    unfold C
    simp [show (11943936 * k + 1909798) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 954899) = 17915904 * k + 2864698 := by
    unfold C
    simp [show (5971968 * k + 954899) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 2864698) = 8957952 * k + 1432349 := by
    unfold C
    simp [show (17915904 * k + 2864698) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 1432349) = 26873856 * k + 4297048 := by
    unfold C
    simp [show (8957952 * k + 1432349) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 4297048) = 13436928 * k + 2148524 := by
    unfold C
    simp [show (26873856 * k + 4297048) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 2148524) = 6718464 * k + 1074262 := by
    unfold C
    simp [show (13436928 * k + 2148524) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 1074262) = 3359232 * k + 537131 := by
    unfold C
    simp [show (6718464 * k + 1074262) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 537131) = 10077696 * k + 1611394 := by
    unfold C
    simp [show (3359232 * k + 537131) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 1611394) = 5038848 * k + 805697 := by
    unfold C
    simp [show (10077696 * k + 1611394) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 805697) = 15116544 * k + 2417092 := by
    unfold C
    simp [show (5038848 * k + 805697) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 2417092) = 7558272 * k + 1208546 := by
    unfold C
    simp [show (15116544 * k + 2417092) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 1208546) = 3779136 * k + 604273 := by
    unfold C
    simp [show (7558272 * k + 1208546) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 604273) = 11337408 * k + 1812820 := by
    unfold C
    simp [show (3779136 * k + 604273) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 1812820) = 5668704 * k + 906410 := by
    unfold C
    simp [show (11337408 * k + 1812820) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 906410) = 2834352 * k + 453205 := by
    unfold C
    simp [show (5668704 * k + 906410) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 453205) = 8503056 * k + 1359616 := by
    unfold C
    simp [show (2834352 * k + 453205) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 1359616) = 4251528 * k + 679808 := by
    unfold C
    simp [show (8503056 * k + 1359616) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 679808) = 2125764 * k + 339904 := by
    unfold C
    simp [show (4251528 * k + 679808) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 339904) = 1062882 * k + 169952 := by
    unfold C
    simp [show (2125764 * k + 339904) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 169952) = 531441 * k + 84976 := by
    unfold C
    simp [show (1062882 * k + 169952) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 167663) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 167663)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_167771 : ∀ k : Nat,
    iterate (1048576 * k + 167771) 32 = 531441 * k + 85031 ∧
      531441 * k + 85031 < 1048576 * k + 167771 := by
  intro k
  have h1 : C (1048576 * k + 167771) = 3145728 * k + 503314 := by
    unfold C
    simp [show (1048576 * k + 167771) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 503314) = 1572864 * k + 251657 := by
    unfold C
    simp [show (3145728 * k + 503314) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 251657) = 4718592 * k + 754972 := by
    unfold C
    simp [show (1572864 * k + 251657) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 754972) = 2359296 * k + 377486 := by
    unfold C
    simp [show (4718592 * k + 754972) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 377486) = 1179648 * k + 188743 := by
    unfold C
    simp [show (2359296 * k + 377486) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 188743) = 3538944 * k + 566230 := by
    unfold C
    simp [show (1179648 * k + 188743) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 566230) = 1769472 * k + 283115 := by
    unfold C
    simp [show (3538944 * k + 566230) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 283115) = 5308416 * k + 849346 := by
    unfold C
    simp [show (1769472 * k + 283115) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 849346) = 2654208 * k + 424673 := by
    unfold C
    simp [show (5308416 * k + 849346) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 424673) = 7962624 * k + 1274020 := by
    unfold C
    simp [show (2654208 * k + 424673) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 1274020) = 3981312 * k + 637010 := by
    unfold C
    simp [show (7962624 * k + 1274020) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 637010) = 1990656 * k + 318505 := by
    unfold C
    simp [show (3981312 * k + 637010) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 318505) = 5971968 * k + 955516 := by
    unfold C
    simp [show (1990656 * k + 318505) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 955516) = 2985984 * k + 477758 := by
    unfold C
    simp [show (5971968 * k + 955516) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 477758) = 1492992 * k + 238879 := by
    unfold C
    simp [show (2985984 * k + 477758) % 2 = 0 by omega]
    omega
  have h16 : C (1492992 * k + 238879) = 4478976 * k + 716638 := by
    unfold C
    simp [show (1492992 * k + 238879) % 2 ≠ 0 by omega]
    omega
  have h17 : C (4478976 * k + 716638) = 2239488 * k + 358319 := by
    unfold C
    simp [show (4478976 * k + 716638) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 358319) = 6718464 * k + 1074958 := by
    unfold C
    simp [show (2239488 * k + 358319) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 1074958) = 3359232 * k + 537479 := by
    unfold C
    simp [show (6718464 * k + 1074958) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 537479) = 10077696 * k + 1612438 := by
    unfold C
    simp [show (3359232 * k + 537479) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 1612438) = 5038848 * k + 806219 := by
    unfold C
    simp [show (10077696 * k + 1612438) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 806219) = 15116544 * k + 2418658 := by
    unfold C
    simp [show (5038848 * k + 806219) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 2418658) = 7558272 * k + 1209329 := by
    unfold C
    simp [show (15116544 * k + 2418658) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 1209329) = 22674816 * k + 3627988 := by
    unfold C
    simp [show (7558272 * k + 1209329) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 3627988) = 11337408 * k + 1813994 := by
    unfold C
    simp [show (22674816 * k + 3627988) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 1813994) = 5668704 * k + 906997 := by
    unfold C
    simp [show (11337408 * k + 1813994) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 906997) = 17006112 * k + 2720992 := by
    unfold C
    simp [show (5668704 * k + 906997) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 2720992) = 8503056 * k + 1360496 := by
    unfold C
    simp [show (17006112 * k + 2720992) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 1360496) = 4251528 * k + 680248 := by
    unfold C
    simp [show (8503056 * k + 1360496) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 680248) = 2125764 * k + 340124 := by
    unfold C
    simp [show (4251528 * k + 680248) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 340124) = 1062882 * k + 170062 := by
    unfold C
    simp [show (2125764 * k + 340124) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 170062) = 531441 * k + 85031 := by
    unfold C
    simp [show (1062882 * k + 170062) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 167771) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 167771)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_168219 : ∀ k : Nat,
    iterate (1048576 * k + 168219) 32 = 531441 * k + 85258 ∧
      531441 * k + 85258 < 1048576 * k + 168219 := by
  intro k
  have h1 : C (1048576 * k + 168219) = 3145728 * k + 504658 := by
    unfold C
    simp [show (1048576 * k + 168219) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 504658) = 1572864 * k + 252329 := by
    unfold C
    simp [show (3145728 * k + 504658) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 252329) = 4718592 * k + 756988 := by
    unfold C
    simp [show (1572864 * k + 252329) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 756988) = 2359296 * k + 378494 := by
    unfold C
    simp [show (4718592 * k + 756988) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 378494) = 1179648 * k + 189247 := by
    unfold C
    simp [show (2359296 * k + 378494) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 189247) = 3538944 * k + 567742 := by
    unfold C
    simp [show (1179648 * k + 189247) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 567742) = 1769472 * k + 283871 := by
    unfold C
    simp [show (3538944 * k + 567742) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 283871) = 5308416 * k + 851614 := by
    unfold C
    simp [show (1769472 * k + 283871) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 851614) = 2654208 * k + 425807 := by
    unfold C
    simp [show (5308416 * k + 851614) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 425807) = 7962624 * k + 1277422 := by
    unfold C
    simp [show (2654208 * k + 425807) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 1277422) = 3981312 * k + 638711 := by
    unfold C
    simp [show (7962624 * k + 1277422) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 638711) = 11943936 * k + 1916134 := by
    unfold C
    simp [show (3981312 * k + 638711) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 1916134) = 5971968 * k + 958067 := by
    unfold C
    simp [show (11943936 * k + 1916134) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 958067) = 17915904 * k + 2874202 := by
    unfold C
    simp [show (5971968 * k + 958067) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 2874202) = 8957952 * k + 1437101 := by
    unfold C
    simp [show (17915904 * k + 2874202) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 1437101) = 26873856 * k + 4311304 := by
    unfold C
    simp [show (8957952 * k + 1437101) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 4311304) = 13436928 * k + 2155652 := by
    unfold C
    simp [show (26873856 * k + 4311304) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 2155652) = 6718464 * k + 1077826 := by
    unfold C
    simp [show (13436928 * k + 2155652) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 1077826) = 3359232 * k + 538913 := by
    unfold C
    simp [show (6718464 * k + 1077826) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 538913) = 10077696 * k + 1616740 := by
    unfold C
    simp [show (3359232 * k + 538913) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 1616740) = 5038848 * k + 808370 := by
    unfold C
    simp [show (10077696 * k + 1616740) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 808370) = 2519424 * k + 404185 := by
    unfold C
    simp [show (5038848 * k + 808370) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 404185) = 7558272 * k + 1212556 := by
    unfold C
    simp [show (2519424 * k + 404185) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 1212556) = 3779136 * k + 606278 := by
    unfold C
    simp [show (7558272 * k + 1212556) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 606278) = 1889568 * k + 303139 := by
    unfold C
    simp [show (3779136 * k + 606278) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 303139) = 5668704 * k + 909418 := by
    unfold C
    simp [show (1889568 * k + 303139) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 909418) = 2834352 * k + 454709 := by
    unfold C
    simp [show (5668704 * k + 909418) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 454709) = 8503056 * k + 1364128 := by
    unfold C
    simp [show (2834352 * k + 454709) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 1364128) = 4251528 * k + 682064 := by
    unfold C
    simp [show (8503056 * k + 1364128) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 682064) = 2125764 * k + 341032 := by
    unfold C
    simp [show (4251528 * k + 682064) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 341032) = 1062882 * k + 170516 := by
    unfold C
    simp [show (2125764 * k + 341032) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 170516) = 531441 * k + 85258 := by
    unfold C
    simp [show (1062882 * k + 170516) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 168219) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 168219)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_168475 : ∀ k : Nat,
    iterate (1048576 * k + 168475) 32 = 531441 * k + 85388 ∧
      531441 * k + 85388 < 1048576 * k + 168475 := by
  intro k
  have h1 : C (1048576 * k + 168475) = 3145728 * k + 505426 := by
    unfold C
    simp [show (1048576 * k + 168475) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 505426) = 1572864 * k + 252713 := by
    unfold C
    simp [show (3145728 * k + 505426) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 252713) = 4718592 * k + 758140 := by
    unfold C
    simp [show (1572864 * k + 252713) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 758140) = 2359296 * k + 379070 := by
    unfold C
    simp [show (4718592 * k + 758140) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 379070) = 1179648 * k + 189535 := by
    unfold C
    simp [show (2359296 * k + 379070) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 189535) = 3538944 * k + 568606 := by
    unfold C
    simp [show (1179648 * k + 189535) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 568606) = 1769472 * k + 284303 := by
    unfold C
    simp [show (3538944 * k + 568606) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 284303) = 5308416 * k + 852910 := by
    unfold C
    simp [show (1769472 * k + 284303) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 852910) = 2654208 * k + 426455 := by
    unfold C
    simp [show (5308416 * k + 852910) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 426455) = 7962624 * k + 1279366 := by
    unfold C
    simp [show (2654208 * k + 426455) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 1279366) = 3981312 * k + 639683 := by
    unfold C
    simp [show (7962624 * k + 1279366) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 639683) = 11943936 * k + 1919050 := by
    unfold C
    simp [show (3981312 * k + 639683) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 1919050) = 5971968 * k + 959525 := by
    unfold C
    simp [show (11943936 * k + 1919050) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 959525) = 17915904 * k + 2878576 := by
    unfold C
    simp [show (5971968 * k + 959525) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 2878576) = 8957952 * k + 1439288 := by
    unfold C
    simp [show (17915904 * k + 2878576) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 1439288) = 4478976 * k + 719644 := by
    unfold C
    simp [show (8957952 * k + 1439288) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 719644) = 2239488 * k + 359822 := by
    unfold C
    simp [show (4478976 * k + 719644) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 359822) = 1119744 * k + 179911 := by
    unfold C
    simp [show (2239488 * k + 359822) % 2 = 0 by omega]
    omega
  have h19 : C (1119744 * k + 179911) = 3359232 * k + 539734 := by
    unfold C
    simp [show (1119744 * k + 179911) % 2 ≠ 0 by omega]
    omega
  have h20 : C (3359232 * k + 539734) = 1679616 * k + 269867 := by
    unfold C
    simp [show (3359232 * k + 539734) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 269867) = 5038848 * k + 809602 := by
    unfold C
    simp [show (1679616 * k + 269867) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 809602) = 2519424 * k + 404801 := by
    unfold C
    simp [show (5038848 * k + 809602) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 404801) = 7558272 * k + 1214404 := by
    unfold C
    simp [show (2519424 * k + 404801) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 1214404) = 3779136 * k + 607202 := by
    unfold C
    simp [show (7558272 * k + 1214404) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 607202) = 1889568 * k + 303601 := by
    unfold C
    simp [show (3779136 * k + 607202) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 303601) = 5668704 * k + 910804 := by
    unfold C
    simp [show (1889568 * k + 303601) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 910804) = 2834352 * k + 455402 := by
    unfold C
    simp [show (5668704 * k + 910804) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 455402) = 1417176 * k + 227701 := by
    unfold C
    simp [show (2834352 * k + 455402) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 227701) = 4251528 * k + 683104 := by
    unfold C
    simp [show (1417176 * k + 227701) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 683104) = 2125764 * k + 341552 := by
    unfold C
    simp [show (4251528 * k + 683104) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 341552) = 1062882 * k + 170776 := by
    unfold C
    simp [show (2125764 * k + 341552) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 170776) = 531441 * k + 85388 := by
    unfold C
    simp [show (1062882 * k + 170776) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 168475) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 168475)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_168831 : ∀ k : Nat,
    iterate (1048576 * k + 168831) 32 = 531441 * k + 85568 ∧
      531441 * k + 85568 < 1048576 * k + 168831 := by
  intro k
  have h1 : C (1048576 * k + 168831) = 3145728 * k + 506494 := by
    unfold C
    simp [show (1048576 * k + 168831) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 506494) = 1572864 * k + 253247 := by
    unfold C
    simp [show (3145728 * k + 506494) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 253247) = 4718592 * k + 759742 := by
    unfold C
    simp [show (1572864 * k + 253247) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 759742) = 2359296 * k + 379871 := by
    unfold C
    simp [show (4718592 * k + 759742) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 379871) = 7077888 * k + 1139614 := by
    unfold C
    simp [show (2359296 * k + 379871) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 1139614) = 3538944 * k + 569807 := by
    unfold C
    simp [show (7077888 * k + 1139614) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 569807) = 10616832 * k + 1709422 := by
    unfold C
    simp [show (3538944 * k + 569807) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 1709422) = 5308416 * k + 854711 := by
    unfold C
    simp [show (10616832 * k + 1709422) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 854711) = 15925248 * k + 2564134 := by
    unfold C
    simp [show (5308416 * k + 854711) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 2564134) = 7962624 * k + 1282067 := by
    unfold C
    simp [show (15925248 * k + 2564134) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 1282067) = 23887872 * k + 3846202 := by
    unfold C
    simp [show (7962624 * k + 1282067) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 3846202) = 11943936 * k + 1923101 := by
    unfold C
    simp [show (23887872 * k + 3846202) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 1923101) = 35831808 * k + 5769304 := by
    unfold C
    simp [show (11943936 * k + 1923101) % 2 ≠ 0 by omega]
    omega
  have h14 : C (35831808 * k + 5769304) = 17915904 * k + 2884652 := by
    unfold C
    simp [show (35831808 * k + 5769304) % 2 = 0 by omega]
    omega
  have h15 : C (17915904 * k + 2884652) = 8957952 * k + 1442326 := by
    unfold C
    simp [show (17915904 * k + 2884652) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 1442326) = 4478976 * k + 721163 := by
    unfold C
    simp [show (8957952 * k + 1442326) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 721163) = 13436928 * k + 2163490 := by
    unfold C
    simp [show (4478976 * k + 721163) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 2163490) = 6718464 * k + 1081745 := by
    unfold C
    simp [show (13436928 * k + 2163490) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 1081745) = 20155392 * k + 3245236 := by
    unfold C
    simp [show (6718464 * k + 1081745) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 3245236) = 10077696 * k + 1622618 := by
    unfold C
    simp [show (20155392 * k + 3245236) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 1622618) = 5038848 * k + 811309 := by
    unfold C
    simp [show (10077696 * k + 1622618) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 811309) = 15116544 * k + 2433928 := by
    unfold C
    simp [show (5038848 * k + 811309) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 2433928) = 7558272 * k + 1216964 := by
    unfold C
    simp [show (15116544 * k + 2433928) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 1216964) = 3779136 * k + 608482 := by
    unfold C
    simp [show (7558272 * k + 1216964) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 608482) = 1889568 * k + 304241 := by
    unfold C
    simp [show (3779136 * k + 608482) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 304241) = 5668704 * k + 912724 := by
    unfold C
    simp [show (1889568 * k + 304241) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 912724) = 2834352 * k + 456362 := by
    unfold C
    simp [show (5668704 * k + 912724) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 456362) = 1417176 * k + 228181 := by
    unfold C
    simp [show (2834352 * k + 456362) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 228181) = 4251528 * k + 684544 := by
    unfold C
    simp [show (1417176 * k + 228181) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 684544) = 2125764 * k + 342272 := by
    unfold C
    simp [show (4251528 * k + 684544) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 342272) = 1062882 * k + 171136 := by
    unfold C
    simp [show (2125764 * k + 342272) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 171136) = 531441 * k + 85568 := by
    unfold C
    simp [show (1062882 * k + 171136) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 168831) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 168831)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_168991 : ∀ k : Nat,
    iterate (1048576 * k + 168991) 32 = 531441 * k + 85649 ∧
      531441 * k + 85649 < 1048576 * k + 168991 := by
  intro k
  have h1 : C (1048576 * k + 168991) = 3145728 * k + 506974 := by
    unfold C
    simp [show (1048576 * k + 168991) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 506974) = 1572864 * k + 253487 := by
    unfold C
    simp [show (3145728 * k + 506974) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 253487) = 4718592 * k + 760462 := by
    unfold C
    simp [show (1572864 * k + 253487) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 760462) = 2359296 * k + 380231 := by
    unfold C
    simp [show (4718592 * k + 760462) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 380231) = 7077888 * k + 1140694 := by
    unfold C
    simp [show (2359296 * k + 380231) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 1140694) = 3538944 * k + 570347 := by
    unfold C
    simp [show (7077888 * k + 1140694) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 570347) = 10616832 * k + 1711042 := by
    unfold C
    simp [show (3538944 * k + 570347) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 1711042) = 5308416 * k + 855521 := by
    unfold C
    simp [show (10616832 * k + 1711042) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 855521) = 15925248 * k + 2566564 := by
    unfold C
    simp [show (5308416 * k + 855521) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 2566564) = 7962624 * k + 1283282 := by
    unfold C
    simp [show (15925248 * k + 2566564) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 1283282) = 3981312 * k + 641641 := by
    unfold C
    simp [show (7962624 * k + 1283282) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 641641) = 11943936 * k + 1924924 := by
    unfold C
    simp [show (3981312 * k + 641641) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 1924924) = 5971968 * k + 962462 := by
    unfold C
    simp [show (11943936 * k + 1924924) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 962462) = 2985984 * k + 481231 := by
    unfold C
    simp [show (5971968 * k + 962462) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 481231) = 8957952 * k + 1443694 := by
    unfold C
    simp [show (2985984 * k + 481231) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 1443694) = 4478976 * k + 721847 := by
    unfold C
    simp [show (8957952 * k + 1443694) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 721847) = 13436928 * k + 2165542 := by
    unfold C
    simp [show (4478976 * k + 721847) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 2165542) = 6718464 * k + 1082771 := by
    unfold C
    simp [show (13436928 * k + 2165542) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 1082771) = 20155392 * k + 3248314 := by
    unfold C
    simp [show (6718464 * k + 1082771) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 3248314) = 10077696 * k + 1624157 := by
    unfold C
    simp [show (20155392 * k + 3248314) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 1624157) = 30233088 * k + 4872472 := by
    unfold C
    simp [show (10077696 * k + 1624157) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 4872472) = 15116544 * k + 2436236 := by
    unfold C
    simp [show (30233088 * k + 4872472) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 2436236) = 7558272 * k + 1218118 := by
    unfold C
    simp [show (15116544 * k + 2436236) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 1218118) = 3779136 * k + 609059 := by
    unfold C
    simp [show (7558272 * k + 1218118) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 609059) = 11337408 * k + 1827178 := by
    unfold C
    simp [show (3779136 * k + 609059) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 1827178) = 5668704 * k + 913589 := by
    unfold C
    simp [show (11337408 * k + 1827178) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 913589) = 17006112 * k + 2740768 := by
    unfold C
    simp [show (5668704 * k + 913589) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 2740768) = 8503056 * k + 1370384 := by
    unfold C
    simp [show (17006112 * k + 2740768) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 1370384) = 4251528 * k + 685192 := by
    unfold C
    simp [show (8503056 * k + 1370384) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 685192) = 2125764 * k + 342596 := by
    unfold C
    simp [show (4251528 * k + 685192) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 342596) = 1062882 * k + 171298 := by
    unfold C
    simp [show (2125764 * k + 342596) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 171298) = 531441 * k + 85649 := by
    unfold C
    simp [show (1062882 * k + 171298) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 168991) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 168991)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_169599 : ∀ k : Nat,
    iterate (1048576 * k + 169599) 32 = 531441 * k + 85957 ∧
      531441 * k + 85957 < 1048576 * k + 169599 := by
  intro k
  have h1 : C (1048576 * k + 169599) = 3145728 * k + 508798 := by
    unfold C
    simp [show (1048576 * k + 169599) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 508798) = 1572864 * k + 254399 := by
    unfold C
    simp [show (3145728 * k + 508798) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 254399) = 4718592 * k + 763198 := by
    unfold C
    simp [show (1572864 * k + 254399) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 763198) = 2359296 * k + 381599 := by
    unfold C
    simp [show (4718592 * k + 763198) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 381599) = 7077888 * k + 1144798 := by
    unfold C
    simp [show (2359296 * k + 381599) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 1144798) = 3538944 * k + 572399 := by
    unfold C
    simp [show (7077888 * k + 1144798) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 572399) = 10616832 * k + 1717198 := by
    unfold C
    simp [show (3538944 * k + 572399) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 1717198) = 5308416 * k + 858599 := by
    unfold C
    simp [show (10616832 * k + 1717198) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 858599) = 15925248 * k + 2575798 := by
    unfold C
    simp [show (5308416 * k + 858599) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 2575798) = 7962624 * k + 1287899 := by
    unfold C
    simp [show (15925248 * k + 2575798) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 1287899) = 23887872 * k + 3863698 := by
    unfold C
    simp [show (7962624 * k + 1287899) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 3863698) = 11943936 * k + 1931849 := by
    unfold C
    simp [show (23887872 * k + 3863698) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 1931849) = 35831808 * k + 5795548 := by
    unfold C
    simp [show (11943936 * k + 1931849) % 2 ≠ 0 by omega]
    omega
  have h14 : C (35831808 * k + 5795548) = 17915904 * k + 2897774 := by
    unfold C
    simp [show (35831808 * k + 5795548) % 2 = 0 by omega]
    omega
  have h15 : C (17915904 * k + 2897774) = 8957952 * k + 1448887 := by
    unfold C
    simp [show (17915904 * k + 2897774) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 1448887) = 26873856 * k + 4346662 := by
    unfold C
    simp [show (8957952 * k + 1448887) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 4346662) = 13436928 * k + 2173331 := by
    unfold C
    simp [show (26873856 * k + 4346662) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 2173331) = 40310784 * k + 6519994 := by
    unfold C
    simp [show (13436928 * k + 2173331) % 2 ≠ 0 by omega]
    omega
  have h19 : C (40310784 * k + 6519994) = 20155392 * k + 3259997 := by
    unfold C
    simp [show (40310784 * k + 6519994) % 2 = 0 by omega]
    omega
  have h20 : C (20155392 * k + 3259997) = 60466176 * k + 9779992 := by
    unfold C
    simp [show (20155392 * k + 3259997) % 2 ≠ 0 by omega]
    omega
  have h21 : C (60466176 * k + 9779992) = 30233088 * k + 4889996 := by
    unfold C
    simp [show (60466176 * k + 9779992) % 2 = 0 by omega]
    omega
  have h22 : C (30233088 * k + 4889996) = 15116544 * k + 2444998 := by
    unfold C
    simp [show (30233088 * k + 4889996) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 2444998) = 7558272 * k + 1222499 := by
    unfold C
    simp [show (15116544 * k + 2444998) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 1222499) = 22674816 * k + 3667498 := by
    unfold C
    simp [show (7558272 * k + 1222499) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 3667498) = 11337408 * k + 1833749 := by
    unfold C
    simp [show (22674816 * k + 3667498) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 1833749) = 34012224 * k + 5501248 := by
    unfold C
    simp [show (11337408 * k + 1833749) % 2 ≠ 0 by omega]
    omega
  have h27 : C (34012224 * k + 5501248) = 17006112 * k + 2750624 := by
    unfold C
    simp [show (34012224 * k + 5501248) % 2 = 0 by omega]
    omega
  have h28 : C (17006112 * k + 2750624) = 8503056 * k + 1375312 := by
    unfold C
    simp [show (17006112 * k + 2750624) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 1375312) = 4251528 * k + 687656 := by
    unfold C
    simp [show (8503056 * k + 1375312) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 687656) = 2125764 * k + 343828 := by
    unfold C
    simp [show (4251528 * k + 687656) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 343828) = 1062882 * k + 171914 := by
    unfold C
    simp [show (2125764 * k + 343828) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 171914) = 531441 * k + 85957 := by
    unfold C
    simp [show (1062882 * k + 171914) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 169599) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 169599)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_169855 : ∀ k : Nat,
    iterate (1048576 * k + 169855) 32 = 531441 * k + 86087 ∧
      531441 * k + 86087 < 1048576 * k + 169855 := by
  intro k
  have h1 : C (1048576 * k + 169855) = 3145728 * k + 509566 := by
    unfold C
    simp [show (1048576 * k + 169855) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 509566) = 1572864 * k + 254783 := by
    unfold C
    simp [show (3145728 * k + 509566) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 254783) = 4718592 * k + 764350 := by
    unfold C
    simp [show (1572864 * k + 254783) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 764350) = 2359296 * k + 382175 := by
    unfold C
    simp [show (4718592 * k + 764350) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 382175) = 7077888 * k + 1146526 := by
    unfold C
    simp [show (2359296 * k + 382175) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 1146526) = 3538944 * k + 573263 := by
    unfold C
    simp [show (7077888 * k + 1146526) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 573263) = 10616832 * k + 1719790 := by
    unfold C
    simp [show (3538944 * k + 573263) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 1719790) = 5308416 * k + 859895 := by
    unfold C
    simp [show (10616832 * k + 1719790) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 859895) = 15925248 * k + 2579686 := by
    unfold C
    simp [show (5308416 * k + 859895) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 2579686) = 7962624 * k + 1289843 := by
    unfold C
    simp [show (15925248 * k + 2579686) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 1289843) = 23887872 * k + 3869530 := by
    unfold C
    simp [show (7962624 * k + 1289843) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 3869530) = 11943936 * k + 1934765 := by
    unfold C
    simp [show (23887872 * k + 3869530) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 1934765) = 35831808 * k + 5804296 := by
    unfold C
    simp [show (11943936 * k + 1934765) % 2 ≠ 0 by omega]
    omega
  have h14 : C (35831808 * k + 5804296) = 17915904 * k + 2902148 := by
    unfold C
    simp [show (35831808 * k + 5804296) % 2 = 0 by omega]
    omega
  have h15 : C (17915904 * k + 2902148) = 8957952 * k + 1451074 := by
    unfold C
    simp [show (17915904 * k + 2902148) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 1451074) = 4478976 * k + 725537 := by
    unfold C
    simp [show (8957952 * k + 1451074) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 725537) = 13436928 * k + 2176612 := by
    unfold C
    simp [show (4478976 * k + 725537) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 2176612) = 6718464 * k + 1088306 := by
    unfold C
    simp [show (13436928 * k + 2176612) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 1088306) = 3359232 * k + 544153 := by
    unfold C
    simp [show (6718464 * k + 1088306) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 544153) = 10077696 * k + 1632460 := by
    unfold C
    simp [show (3359232 * k + 544153) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 1632460) = 5038848 * k + 816230 := by
    unfold C
    simp [show (10077696 * k + 1632460) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 816230) = 2519424 * k + 408115 := by
    unfold C
    simp [show (5038848 * k + 816230) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 408115) = 7558272 * k + 1224346 := by
    unfold C
    simp [show (2519424 * k + 408115) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 1224346) = 3779136 * k + 612173 := by
    unfold C
    simp [show (7558272 * k + 1224346) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 612173) = 11337408 * k + 1836520 := by
    unfold C
    simp [show (3779136 * k + 612173) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 1836520) = 5668704 * k + 918260 := by
    unfold C
    simp [show (11337408 * k + 1836520) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 918260) = 2834352 * k + 459130 := by
    unfold C
    simp [show (5668704 * k + 918260) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 459130) = 1417176 * k + 229565 := by
    unfold C
    simp [show (2834352 * k + 459130) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 229565) = 4251528 * k + 688696 := by
    unfold C
    simp [show (1417176 * k + 229565) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 688696) = 2125764 * k + 344348 := by
    unfold C
    simp [show (4251528 * k + 688696) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 344348) = 1062882 * k + 172174 := by
    unfold C
    simp [show (2125764 * k + 344348) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 172174) = 531441 * k + 86087 := by
    unfold C
    simp [show (1062882 * k + 172174) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 169855) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 169855)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_170855 : ∀ k : Nat,
    iterate (1048576 * k + 170855) 32 = 531441 * k + 86594 ∧
      531441 * k + 86594 < 1048576 * k + 170855 := by
  intro k
  have h1 : C (1048576 * k + 170855) = 3145728 * k + 512566 := by
    unfold C
    simp [show (1048576 * k + 170855) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 512566) = 1572864 * k + 256283 := by
    unfold C
    simp [show (3145728 * k + 512566) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 256283) = 4718592 * k + 768850 := by
    unfold C
    simp [show (1572864 * k + 256283) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 768850) = 2359296 * k + 384425 := by
    unfold C
    simp [show (4718592 * k + 768850) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 384425) = 7077888 * k + 1153276 := by
    unfold C
    simp [show (2359296 * k + 384425) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 1153276) = 3538944 * k + 576638 := by
    unfold C
    simp [show (7077888 * k + 1153276) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 576638) = 1769472 * k + 288319 := by
    unfold C
    simp [show (3538944 * k + 576638) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 288319) = 5308416 * k + 864958 := by
    unfold C
    simp [show (1769472 * k + 288319) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 864958) = 2654208 * k + 432479 := by
    unfold C
    simp [show (5308416 * k + 864958) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 432479) = 7962624 * k + 1297438 := by
    unfold C
    simp [show (2654208 * k + 432479) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 1297438) = 3981312 * k + 648719 := by
    unfold C
    simp [show (7962624 * k + 1297438) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 648719) = 11943936 * k + 1946158 := by
    unfold C
    simp [show (3981312 * k + 648719) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 1946158) = 5971968 * k + 973079 := by
    unfold C
    simp [show (11943936 * k + 1946158) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 973079) = 17915904 * k + 2919238 := by
    unfold C
    simp [show (5971968 * k + 973079) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 2919238) = 8957952 * k + 1459619 := by
    unfold C
    simp [show (17915904 * k + 2919238) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 1459619) = 26873856 * k + 4378858 := by
    unfold C
    simp [show (8957952 * k + 1459619) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 4378858) = 13436928 * k + 2189429 := by
    unfold C
    simp [show (26873856 * k + 4378858) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 2189429) = 40310784 * k + 6568288 := by
    unfold C
    simp [show (13436928 * k + 2189429) % 2 ≠ 0 by omega]
    omega
  have h19 : C (40310784 * k + 6568288) = 20155392 * k + 3284144 := by
    unfold C
    simp [show (40310784 * k + 6568288) % 2 = 0 by omega]
    omega
  have h20 : C (20155392 * k + 3284144) = 10077696 * k + 1642072 := by
    unfold C
    simp [show (20155392 * k + 3284144) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 1642072) = 5038848 * k + 821036 := by
    unfold C
    simp [show (10077696 * k + 1642072) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 821036) = 2519424 * k + 410518 := by
    unfold C
    simp [show (5038848 * k + 821036) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 410518) = 1259712 * k + 205259 := by
    unfold C
    simp [show (2519424 * k + 410518) % 2 = 0 by omega]
    omega
  have h24 : C (1259712 * k + 205259) = 3779136 * k + 615778 := by
    unfold C
    simp [show (1259712 * k + 205259) % 2 ≠ 0 by omega]
    omega
  have h25 : C (3779136 * k + 615778) = 1889568 * k + 307889 := by
    unfold C
    simp [show (3779136 * k + 615778) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 307889) = 5668704 * k + 923668 := by
    unfold C
    simp [show (1889568 * k + 307889) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 923668) = 2834352 * k + 461834 := by
    unfold C
    simp [show (5668704 * k + 923668) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 461834) = 1417176 * k + 230917 := by
    unfold C
    simp [show (2834352 * k + 461834) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 230917) = 4251528 * k + 692752 := by
    unfold C
    simp [show (1417176 * k + 230917) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 692752) = 2125764 * k + 346376 := by
    unfold C
    simp [show (4251528 * k + 692752) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 346376) = 1062882 * k + 173188 := by
    unfold C
    simp [show (2125764 * k + 346376) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 173188) = 531441 * k + 86594 := by
    unfold C
    simp [show (1062882 * k + 173188) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 170855) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 170855)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_171291 : ∀ k : Nat,
    iterate (1048576 * k + 171291) 32 = 531441 * k + 86815 ∧
      531441 * k + 86815 < 1048576 * k + 171291 := by
  intro k
  have h1 : C (1048576 * k + 171291) = 3145728 * k + 513874 := by
    unfold C
    simp [show (1048576 * k + 171291) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 513874) = 1572864 * k + 256937 := by
    unfold C
    simp [show (3145728 * k + 513874) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 256937) = 4718592 * k + 770812 := by
    unfold C
    simp [show (1572864 * k + 256937) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 770812) = 2359296 * k + 385406 := by
    unfold C
    simp [show (4718592 * k + 770812) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 385406) = 1179648 * k + 192703 := by
    unfold C
    simp [show (2359296 * k + 385406) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 192703) = 3538944 * k + 578110 := by
    unfold C
    simp [show (1179648 * k + 192703) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 578110) = 1769472 * k + 289055 := by
    unfold C
    simp [show (3538944 * k + 578110) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 289055) = 5308416 * k + 867166 := by
    unfold C
    simp [show (1769472 * k + 289055) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 867166) = 2654208 * k + 433583 := by
    unfold C
    simp [show (5308416 * k + 867166) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 433583) = 7962624 * k + 1300750 := by
    unfold C
    simp [show (2654208 * k + 433583) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 1300750) = 3981312 * k + 650375 := by
    unfold C
    simp [show (7962624 * k + 1300750) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 650375) = 11943936 * k + 1951126 := by
    unfold C
    simp [show (3981312 * k + 650375) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 1951126) = 5971968 * k + 975563 := by
    unfold C
    simp [show (11943936 * k + 1951126) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 975563) = 17915904 * k + 2926690 := by
    unfold C
    simp [show (5971968 * k + 975563) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 2926690) = 8957952 * k + 1463345 := by
    unfold C
    simp [show (17915904 * k + 2926690) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 1463345) = 26873856 * k + 4390036 := by
    unfold C
    simp [show (8957952 * k + 1463345) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 4390036) = 13436928 * k + 2195018 := by
    unfold C
    simp [show (26873856 * k + 4390036) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 2195018) = 6718464 * k + 1097509 := by
    unfold C
    simp [show (13436928 * k + 2195018) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 1097509) = 20155392 * k + 3292528 := by
    unfold C
    simp [show (6718464 * k + 1097509) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 3292528) = 10077696 * k + 1646264 := by
    unfold C
    simp [show (20155392 * k + 3292528) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 1646264) = 5038848 * k + 823132 := by
    unfold C
    simp [show (10077696 * k + 1646264) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 823132) = 2519424 * k + 411566 := by
    unfold C
    simp [show (5038848 * k + 823132) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 411566) = 1259712 * k + 205783 := by
    unfold C
    simp [show (2519424 * k + 411566) % 2 = 0 by omega]
    omega
  have h24 : C (1259712 * k + 205783) = 3779136 * k + 617350 := by
    unfold C
    simp [show (1259712 * k + 205783) % 2 ≠ 0 by omega]
    omega
  have h25 : C (3779136 * k + 617350) = 1889568 * k + 308675 := by
    unfold C
    simp [show (3779136 * k + 617350) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 308675) = 5668704 * k + 926026 := by
    unfold C
    simp [show (1889568 * k + 308675) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 926026) = 2834352 * k + 463013 := by
    unfold C
    simp [show (5668704 * k + 926026) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 463013) = 8503056 * k + 1389040 := by
    unfold C
    simp [show (2834352 * k + 463013) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 1389040) = 4251528 * k + 694520 := by
    unfold C
    simp [show (8503056 * k + 1389040) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 694520) = 2125764 * k + 347260 := by
    unfold C
    simp [show (4251528 * k + 694520) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 347260) = 1062882 * k + 173630 := by
    unfold C
    simp [show (2125764 * k + 347260) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 173630) = 531441 * k + 86815 := by
    unfold C
    simp [show (1062882 * k + 173630) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 171291) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 171291)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_171647 : ∀ k : Nat,
    iterate (1048576 * k + 171647) 32 = 531441 * k + 86995 ∧
      531441 * k + 86995 < 1048576 * k + 171647 := by
  intro k
  have h1 : C (1048576 * k + 171647) = 3145728 * k + 514942 := by
    unfold C
    simp [show (1048576 * k + 171647) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 514942) = 1572864 * k + 257471 := by
    unfold C
    simp [show (3145728 * k + 514942) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 257471) = 4718592 * k + 772414 := by
    unfold C
    simp [show (1572864 * k + 257471) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 772414) = 2359296 * k + 386207 := by
    unfold C
    simp [show (4718592 * k + 772414) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 386207) = 7077888 * k + 1158622 := by
    unfold C
    simp [show (2359296 * k + 386207) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 1158622) = 3538944 * k + 579311 := by
    unfold C
    simp [show (7077888 * k + 1158622) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 579311) = 10616832 * k + 1737934 := by
    unfold C
    simp [show (3538944 * k + 579311) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 1737934) = 5308416 * k + 868967 := by
    unfold C
    simp [show (10616832 * k + 1737934) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 868967) = 15925248 * k + 2606902 := by
    unfold C
    simp [show (5308416 * k + 868967) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 2606902) = 7962624 * k + 1303451 := by
    unfold C
    simp [show (15925248 * k + 2606902) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 1303451) = 23887872 * k + 3910354 := by
    unfold C
    simp [show (7962624 * k + 1303451) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 3910354) = 11943936 * k + 1955177 := by
    unfold C
    simp [show (23887872 * k + 3910354) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 1955177) = 35831808 * k + 5865532 := by
    unfold C
    simp [show (11943936 * k + 1955177) % 2 ≠ 0 by omega]
    omega
  have h14 : C (35831808 * k + 5865532) = 17915904 * k + 2932766 := by
    unfold C
    simp [show (35831808 * k + 5865532) % 2 = 0 by omega]
    omega
  have h15 : C (17915904 * k + 2932766) = 8957952 * k + 1466383 := by
    unfold C
    simp [show (17915904 * k + 2932766) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 1466383) = 26873856 * k + 4399150 := by
    unfold C
    simp [show (8957952 * k + 1466383) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 4399150) = 13436928 * k + 2199575 := by
    unfold C
    simp [show (26873856 * k + 4399150) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 2199575) = 40310784 * k + 6598726 := by
    unfold C
    simp [show (13436928 * k + 2199575) % 2 ≠ 0 by omega]
    omega
  have h19 : C (40310784 * k + 6598726) = 20155392 * k + 3299363 := by
    unfold C
    simp [show (40310784 * k + 6598726) % 2 = 0 by omega]
    omega
  have h20 : C (20155392 * k + 3299363) = 60466176 * k + 9898090 := by
    unfold C
    simp [show (20155392 * k + 3299363) % 2 ≠ 0 by omega]
    omega
  have h21 : C (60466176 * k + 9898090) = 30233088 * k + 4949045 := by
    unfold C
    simp [show (60466176 * k + 9898090) % 2 = 0 by omega]
    omega
  have h22 : C (30233088 * k + 4949045) = 90699264 * k + 14847136 := by
    unfold C
    simp [show (30233088 * k + 4949045) % 2 ≠ 0 by omega]
    omega
  have h23 : C (90699264 * k + 14847136) = 45349632 * k + 7423568 := by
    unfold C
    simp [show (90699264 * k + 14847136) % 2 = 0 by omega]
    omega
  have h24 : C (45349632 * k + 7423568) = 22674816 * k + 3711784 := by
    unfold C
    simp [show (45349632 * k + 7423568) % 2 = 0 by omega]
    omega
  have h25 : C (22674816 * k + 3711784) = 11337408 * k + 1855892 := by
    unfold C
    simp [show (22674816 * k + 3711784) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 1855892) = 5668704 * k + 927946 := by
    unfold C
    simp [show (11337408 * k + 1855892) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 927946) = 2834352 * k + 463973 := by
    unfold C
    simp [show (5668704 * k + 927946) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 463973) = 8503056 * k + 1391920 := by
    unfold C
    simp [show (2834352 * k + 463973) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 1391920) = 4251528 * k + 695960 := by
    unfold C
    simp [show (8503056 * k + 1391920) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 695960) = 2125764 * k + 347980 := by
    unfold C
    simp [show (4251528 * k + 695960) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 347980) = 1062882 * k + 173990 := by
    unfold C
    simp [show (2125764 * k + 347980) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 173990) = 531441 * k + 86995 := by
    unfold C
    simp [show (1062882 * k + 173990) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 171647) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 171647)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_171867 : ∀ k : Nat,
    iterate (1048576 * k + 171867) 32 = 531441 * k + 87107 ∧
      531441 * k + 87107 < 1048576 * k + 171867 := by
  intro k
  have h1 : C (1048576 * k + 171867) = 3145728 * k + 515602 := by
    unfold C
    simp [show (1048576 * k + 171867) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 515602) = 1572864 * k + 257801 := by
    unfold C
    simp [show (3145728 * k + 515602) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 257801) = 4718592 * k + 773404 := by
    unfold C
    simp [show (1572864 * k + 257801) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 773404) = 2359296 * k + 386702 := by
    unfold C
    simp [show (4718592 * k + 773404) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 386702) = 1179648 * k + 193351 := by
    unfold C
    simp [show (2359296 * k + 386702) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 193351) = 3538944 * k + 580054 := by
    unfold C
    simp [show (1179648 * k + 193351) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 580054) = 1769472 * k + 290027 := by
    unfold C
    simp [show (3538944 * k + 580054) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 290027) = 5308416 * k + 870082 := by
    unfold C
    simp [show (1769472 * k + 290027) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 870082) = 2654208 * k + 435041 := by
    unfold C
    simp [show (5308416 * k + 870082) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 435041) = 7962624 * k + 1305124 := by
    unfold C
    simp [show (2654208 * k + 435041) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 1305124) = 3981312 * k + 652562 := by
    unfold C
    simp [show (7962624 * k + 1305124) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 652562) = 1990656 * k + 326281 := by
    unfold C
    simp [show (3981312 * k + 652562) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 326281) = 5971968 * k + 978844 := by
    unfold C
    simp [show (1990656 * k + 326281) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 978844) = 2985984 * k + 489422 := by
    unfold C
    simp [show (5971968 * k + 978844) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 489422) = 1492992 * k + 244711 := by
    unfold C
    simp [show (2985984 * k + 489422) % 2 = 0 by omega]
    omega
  have h16 : C (1492992 * k + 244711) = 4478976 * k + 734134 := by
    unfold C
    simp [show (1492992 * k + 244711) % 2 ≠ 0 by omega]
    omega
  have h17 : C (4478976 * k + 734134) = 2239488 * k + 367067 := by
    unfold C
    simp [show (4478976 * k + 734134) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 367067) = 6718464 * k + 1101202 := by
    unfold C
    simp [show (2239488 * k + 367067) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 1101202) = 3359232 * k + 550601 := by
    unfold C
    simp [show (6718464 * k + 1101202) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 550601) = 10077696 * k + 1651804 := by
    unfold C
    simp [show (3359232 * k + 550601) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 1651804) = 5038848 * k + 825902 := by
    unfold C
    simp [show (10077696 * k + 1651804) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 825902) = 2519424 * k + 412951 := by
    unfold C
    simp [show (5038848 * k + 825902) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 412951) = 7558272 * k + 1238854 := by
    unfold C
    simp [show (2519424 * k + 412951) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 1238854) = 3779136 * k + 619427 := by
    unfold C
    simp [show (7558272 * k + 1238854) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 619427) = 11337408 * k + 1858282 := by
    unfold C
    simp [show (3779136 * k + 619427) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 1858282) = 5668704 * k + 929141 := by
    unfold C
    simp [show (11337408 * k + 1858282) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 929141) = 17006112 * k + 2787424 := by
    unfold C
    simp [show (5668704 * k + 929141) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 2787424) = 8503056 * k + 1393712 := by
    unfold C
    simp [show (17006112 * k + 2787424) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 1393712) = 4251528 * k + 696856 := by
    unfold C
    simp [show (8503056 * k + 1393712) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 696856) = 2125764 * k + 348428 := by
    unfold C
    simp [show (4251528 * k + 696856) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 348428) = 1062882 * k + 174214 := by
    unfold C
    simp [show (2125764 * k + 348428) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 174214) = 531441 * k + 87107 := by
    unfold C
    simp [show (1062882 * k + 174214) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 171867) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 171867)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_172063 : ∀ k : Nat,
    iterate (1048576 * k + 172063) 32 = 531441 * k + 87206 ∧
      531441 * k + 87206 < 1048576 * k + 172063 := by
  intro k
  have h1 : C (1048576 * k + 172063) = 3145728 * k + 516190 := by
    unfold C
    simp [show (1048576 * k + 172063) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 516190) = 1572864 * k + 258095 := by
    unfold C
    simp [show (3145728 * k + 516190) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 258095) = 4718592 * k + 774286 := by
    unfold C
    simp [show (1572864 * k + 258095) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 774286) = 2359296 * k + 387143 := by
    unfold C
    simp [show (4718592 * k + 774286) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 387143) = 7077888 * k + 1161430 := by
    unfold C
    simp [show (2359296 * k + 387143) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 1161430) = 3538944 * k + 580715 := by
    unfold C
    simp [show (7077888 * k + 1161430) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 580715) = 10616832 * k + 1742146 := by
    unfold C
    simp [show (3538944 * k + 580715) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 1742146) = 5308416 * k + 871073 := by
    unfold C
    simp [show (10616832 * k + 1742146) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 871073) = 15925248 * k + 2613220 := by
    unfold C
    simp [show (5308416 * k + 871073) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 2613220) = 7962624 * k + 1306610 := by
    unfold C
    simp [show (15925248 * k + 2613220) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 1306610) = 3981312 * k + 653305 := by
    unfold C
    simp [show (7962624 * k + 1306610) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 653305) = 11943936 * k + 1959916 := by
    unfold C
    simp [show (3981312 * k + 653305) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 1959916) = 5971968 * k + 979958 := by
    unfold C
    simp [show (11943936 * k + 1959916) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 979958) = 2985984 * k + 489979 := by
    unfold C
    simp [show (5971968 * k + 979958) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 489979) = 8957952 * k + 1469938 := by
    unfold C
    simp [show (2985984 * k + 489979) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 1469938) = 4478976 * k + 734969 := by
    unfold C
    simp [show (8957952 * k + 1469938) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 734969) = 13436928 * k + 2204908 := by
    unfold C
    simp [show (4478976 * k + 734969) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 2204908) = 6718464 * k + 1102454 := by
    unfold C
    simp [show (13436928 * k + 2204908) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 1102454) = 3359232 * k + 551227 := by
    unfold C
    simp [show (6718464 * k + 1102454) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 551227) = 10077696 * k + 1653682 := by
    unfold C
    simp [show (3359232 * k + 551227) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 1653682) = 5038848 * k + 826841 := by
    unfold C
    simp [show (10077696 * k + 1653682) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 826841) = 15116544 * k + 2480524 := by
    unfold C
    simp [show (5038848 * k + 826841) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 2480524) = 7558272 * k + 1240262 := by
    unfold C
    simp [show (15116544 * k + 2480524) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 1240262) = 3779136 * k + 620131 := by
    unfold C
    simp [show (7558272 * k + 1240262) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 620131) = 11337408 * k + 1860394 := by
    unfold C
    simp [show (3779136 * k + 620131) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 1860394) = 5668704 * k + 930197 := by
    unfold C
    simp [show (11337408 * k + 1860394) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 930197) = 17006112 * k + 2790592 := by
    unfold C
    simp [show (5668704 * k + 930197) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 2790592) = 8503056 * k + 1395296 := by
    unfold C
    simp [show (17006112 * k + 2790592) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 1395296) = 4251528 * k + 697648 := by
    unfold C
    simp [show (8503056 * k + 1395296) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 697648) = 2125764 * k + 348824 := by
    unfold C
    simp [show (4251528 * k + 697648) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 348824) = 1062882 * k + 174412 := by
    unfold C
    simp [show (2125764 * k + 348824) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 174412) = 531441 * k + 87206 := by
    unfold C
    simp [show (1062882 * k + 174412) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 172063) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 172063)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_172671 : ∀ k : Nat,
    iterate (1048576 * k + 172671) 32 = 531441 * k + 87514 ∧
      531441 * k + 87514 < 1048576 * k + 172671 := by
  intro k
  have h1 : C (1048576 * k + 172671) = 3145728 * k + 518014 := by
    unfold C
    simp [show (1048576 * k + 172671) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 518014) = 1572864 * k + 259007 := by
    unfold C
    simp [show (3145728 * k + 518014) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 259007) = 4718592 * k + 777022 := by
    unfold C
    simp [show (1572864 * k + 259007) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 777022) = 2359296 * k + 388511 := by
    unfold C
    simp [show (4718592 * k + 777022) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 388511) = 7077888 * k + 1165534 := by
    unfold C
    simp [show (2359296 * k + 388511) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 1165534) = 3538944 * k + 582767 := by
    unfold C
    simp [show (7077888 * k + 1165534) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 582767) = 10616832 * k + 1748302 := by
    unfold C
    simp [show (3538944 * k + 582767) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 1748302) = 5308416 * k + 874151 := by
    unfold C
    simp [show (10616832 * k + 1748302) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 874151) = 15925248 * k + 2622454 := by
    unfold C
    simp [show (5308416 * k + 874151) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 2622454) = 7962624 * k + 1311227 := by
    unfold C
    simp [show (15925248 * k + 2622454) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 1311227) = 23887872 * k + 3933682 := by
    unfold C
    simp [show (7962624 * k + 1311227) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 3933682) = 11943936 * k + 1966841 := by
    unfold C
    simp [show (23887872 * k + 3933682) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 1966841) = 35831808 * k + 5900524 := by
    unfold C
    simp [show (11943936 * k + 1966841) % 2 ≠ 0 by omega]
    omega
  have h14 : C (35831808 * k + 5900524) = 17915904 * k + 2950262 := by
    unfold C
    simp [show (35831808 * k + 5900524) % 2 = 0 by omega]
    omega
  have h15 : C (17915904 * k + 2950262) = 8957952 * k + 1475131 := by
    unfold C
    simp [show (17915904 * k + 2950262) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 1475131) = 26873856 * k + 4425394 := by
    unfold C
    simp [show (8957952 * k + 1475131) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 4425394) = 13436928 * k + 2212697 := by
    unfold C
    simp [show (26873856 * k + 4425394) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 2212697) = 40310784 * k + 6638092 := by
    unfold C
    simp [show (13436928 * k + 2212697) % 2 ≠ 0 by omega]
    omega
  have h19 : C (40310784 * k + 6638092) = 20155392 * k + 3319046 := by
    unfold C
    simp [show (40310784 * k + 6638092) % 2 = 0 by omega]
    omega
  have h20 : C (20155392 * k + 3319046) = 10077696 * k + 1659523 := by
    unfold C
    simp [show (20155392 * k + 3319046) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 1659523) = 30233088 * k + 4978570 := by
    unfold C
    simp [show (10077696 * k + 1659523) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 4978570) = 15116544 * k + 2489285 := by
    unfold C
    simp [show (30233088 * k + 4978570) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 2489285) = 45349632 * k + 7467856 := by
    unfold C
    simp [show (15116544 * k + 2489285) % 2 ≠ 0 by omega]
    omega
  have h24 : C (45349632 * k + 7467856) = 22674816 * k + 3733928 := by
    unfold C
    simp [show (45349632 * k + 7467856) % 2 = 0 by omega]
    omega
  have h25 : C (22674816 * k + 3733928) = 11337408 * k + 1866964 := by
    unfold C
    simp [show (22674816 * k + 3733928) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 1866964) = 5668704 * k + 933482 := by
    unfold C
    simp [show (11337408 * k + 1866964) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 933482) = 2834352 * k + 466741 := by
    unfold C
    simp [show (5668704 * k + 933482) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 466741) = 8503056 * k + 1400224 := by
    unfold C
    simp [show (2834352 * k + 466741) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 1400224) = 4251528 * k + 700112 := by
    unfold C
    simp [show (8503056 * k + 1400224) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 700112) = 2125764 * k + 350056 := by
    unfold C
    simp [show (4251528 * k + 700112) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 350056) = 1062882 * k + 175028 := by
    unfold C
    simp [show (2125764 * k + 350056) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 175028) = 531441 * k + 87514 := by
    unfold C
    simp [show (1062882 * k + 175028) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 172671) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 172671)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_173039 : ∀ k : Nat,
    iterate (1048576 * k + 173039) 32 = 531441 * k + 87701 ∧
      531441 * k + 87701 < 1048576 * k + 173039 := by
  intro k
  have h1 : C (1048576 * k + 173039) = 3145728 * k + 519118 := by
    unfold C
    simp [show (1048576 * k + 173039) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 519118) = 1572864 * k + 259559 := by
    unfold C
    simp [show (3145728 * k + 519118) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 259559) = 4718592 * k + 778678 := by
    unfold C
    simp [show (1572864 * k + 259559) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 778678) = 2359296 * k + 389339 := by
    unfold C
    simp [show (4718592 * k + 778678) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 389339) = 7077888 * k + 1168018 := by
    unfold C
    simp [show (2359296 * k + 389339) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 1168018) = 3538944 * k + 584009 := by
    unfold C
    simp [show (7077888 * k + 1168018) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 584009) = 10616832 * k + 1752028 := by
    unfold C
    simp [show (3538944 * k + 584009) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 1752028) = 5308416 * k + 876014 := by
    unfold C
    simp [show (10616832 * k + 1752028) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 876014) = 2654208 * k + 438007 := by
    unfold C
    simp [show (5308416 * k + 876014) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 438007) = 7962624 * k + 1314022 := by
    unfold C
    simp [show (2654208 * k + 438007) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 1314022) = 3981312 * k + 657011 := by
    unfold C
    simp [show (7962624 * k + 1314022) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 657011) = 11943936 * k + 1971034 := by
    unfold C
    simp [show (3981312 * k + 657011) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 1971034) = 5971968 * k + 985517 := by
    unfold C
    simp [show (11943936 * k + 1971034) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 985517) = 17915904 * k + 2956552 := by
    unfold C
    simp [show (5971968 * k + 985517) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 2956552) = 8957952 * k + 1478276 := by
    unfold C
    simp [show (17915904 * k + 2956552) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 1478276) = 4478976 * k + 739138 := by
    unfold C
    simp [show (8957952 * k + 1478276) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 739138) = 2239488 * k + 369569 := by
    unfold C
    simp [show (4478976 * k + 739138) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 369569) = 6718464 * k + 1108708 := by
    unfold C
    simp [show (2239488 * k + 369569) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 1108708) = 3359232 * k + 554354 := by
    unfold C
    simp [show (6718464 * k + 1108708) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 554354) = 1679616 * k + 277177 := by
    unfold C
    simp [show (3359232 * k + 554354) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 277177) = 5038848 * k + 831532 := by
    unfold C
    simp [show (1679616 * k + 277177) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 831532) = 2519424 * k + 415766 := by
    unfold C
    simp [show (5038848 * k + 831532) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 415766) = 1259712 * k + 207883 := by
    unfold C
    simp [show (2519424 * k + 415766) % 2 = 0 by omega]
    omega
  have h24 : C (1259712 * k + 207883) = 3779136 * k + 623650 := by
    unfold C
    simp [show (1259712 * k + 207883) % 2 ≠ 0 by omega]
    omega
  have h25 : C (3779136 * k + 623650) = 1889568 * k + 311825 := by
    unfold C
    simp [show (3779136 * k + 623650) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 311825) = 5668704 * k + 935476 := by
    unfold C
    simp [show (1889568 * k + 311825) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 935476) = 2834352 * k + 467738 := by
    unfold C
    simp [show (5668704 * k + 935476) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 467738) = 1417176 * k + 233869 := by
    unfold C
    simp [show (2834352 * k + 467738) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 233869) = 4251528 * k + 701608 := by
    unfold C
    simp [show (1417176 * k + 233869) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 701608) = 2125764 * k + 350804 := by
    unfold C
    simp [show (4251528 * k + 701608) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 350804) = 1062882 * k + 175402 := by
    unfold C
    simp [show (2125764 * k + 350804) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 175402) = 531441 * k + 87701 := by
    unfold C
    simp [show (1062882 * k + 175402) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 173039) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 173039)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_173087 : ∀ k : Nat,
    iterate (1048576 * k + 173087) 32 = 531441 * k + 87725 ∧
      531441 * k + 87725 < 1048576 * k + 173087 := by
  intro k
  have h1 : C (1048576 * k + 173087) = 3145728 * k + 519262 := by
    unfold C
    simp [show (1048576 * k + 173087) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 519262) = 1572864 * k + 259631 := by
    unfold C
    simp [show (3145728 * k + 519262) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 259631) = 4718592 * k + 778894 := by
    unfold C
    simp [show (1572864 * k + 259631) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 778894) = 2359296 * k + 389447 := by
    unfold C
    simp [show (4718592 * k + 778894) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 389447) = 7077888 * k + 1168342 := by
    unfold C
    simp [show (2359296 * k + 389447) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 1168342) = 3538944 * k + 584171 := by
    unfold C
    simp [show (7077888 * k + 1168342) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 584171) = 10616832 * k + 1752514 := by
    unfold C
    simp [show (3538944 * k + 584171) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 1752514) = 5308416 * k + 876257 := by
    unfold C
    simp [show (10616832 * k + 1752514) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 876257) = 15925248 * k + 2628772 := by
    unfold C
    simp [show (5308416 * k + 876257) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 2628772) = 7962624 * k + 1314386 := by
    unfold C
    simp [show (15925248 * k + 2628772) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 1314386) = 3981312 * k + 657193 := by
    unfold C
    simp [show (7962624 * k + 1314386) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 657193) = 11943936 * k + 1971580 := by
    unfold C
    simp [show (3981312 * k + 657193) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 1971580) = 5971968 * k + 985790 := by
    unfold C
    simp [show (11943936 * k + 1971580) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 985790) = 2985984 * k + 492895 := by
    unfold C
    simp [show (5971968 * k + 985790) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 492895) = 8957952 * k + 1478686 := by
    unfold C
    simp [show (2985984 * k + 492895) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 1478686) = 4478976 * k + 739343 := by
    unfold C
    simp [show (8957952 * k + 1478686) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 739343) = 13436928 * k + 2218030 := by
    unfold C
    simp [show (4478976 * k + 739343) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 2218030) = 6718464 * k + 1109015 := by
    unfold C
    simp [show (13436928 * k + 2218030) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 1109015) = 20155392 * k + 3327046 := by
    unfold C
    simp [show (6718464 * k + 1109015) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 3327046) = 10077696 * k + 1663523 := by
    unfold C
    simp [show (20155392 * k + 3327046) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 1663523) = 30233088 * k + 4990570 := by
    unfold C
    simp [show (10077696 * k + 1663523) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 4990570) = 15116544 * k + 2495285 := by
    unfold C
    simp [show (30233088 * k + 4990570) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 2495285) = 45349632 * k + 7485856 := by
    unfold C
    simp [show (15116544 * k + 2495285) % 2 ≠ 0 by omega]
    omega
  have h24 : C (45349632 * k + 7485856) = 22674816 * k + 3742928 := by
    unfold C
    simp [show (45349632 * k + 7485856) % 2 = 0 by omega]
    omega
  have h25 : C (22674816 * k + 3742928) = 11337408 * k + 1871464 := by
    unfold C
    simp [show (22674816 * k + 3742928) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 1871464) = 5668704 * k + 935732 := by
    unfold C
    simp [show (11337408 * k + 1871464) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 935732) = 2834352 * k + 467866 := by
    unfold C
    simp [show (5668704 * k + 935732) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 467866) = 1417176 * k + 233933 := by
    unfold C
    simp [show (2834352 * k + 467866) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 233933) = 4251528 * k + 701800 := by
    unfold C
    simp [show (1417176 * k + 233933) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 701800) = 2125764 * k + 350900 := by
    unfold C
    simp [show (4251528 * k + 701800) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 350900) = 1062882 * k + 175450 := by
    unfold C
    simp [show (2125764 * k + 350900) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 175450) = 531441 * k + 87725 := by
    unfold C
    simp [show (1062882 * k + 175450) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 173087) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 173087)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_173807 : ∀ k : Nat,
    iterate (1048576 * k + 173807) 32 = 531441 * k + 88090 ∧
      531441 * k + 88090 < 1048576 * k + 173807 := by
  intro k
  have h1 : C (1048576 * k + 173807) = 3145728 * k + 521422 := by
    unfold C
    simp [show (1048576 * k + 173807) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 521422) = 1572864 * k + 260711 := by
    unfold C
    simp [show (3145728 * k + 521422) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 260711) = 4718592 * k + 782134 := by
    unfold C
    simp [show (1572864 * k + 260711) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 782134) = 2359296 * k + 391067 := by
    unfold C
    simp [show (4718592 * k + 782134) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 391067) = 7077888 * k + 1173202 := by
    unfold C
    simp [show (2359296 * k + 391067) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 1173202) = 3538944 * k + 586601 := by
    unfold C
    simp [show (7077888 * k + 1173202) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 586601) = 10616832 * k + 1759804 := by
    unfold C
    simp [show (3538944 * k + 586601) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 1759804) = 5308416 * k + 879902 := by
    unfold C
    simp [show (10616832 * k + 1759804) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 879902) = 2654208 * k + 439951 := by
    unfold C
    simp [show (5308416 * k + 879902) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 439951) = 7962624 * k + 1319854 := by
    unfold C
    simp [show (2654208 * k + 439951) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 1319854) = 3981312 * k + 659927 := by
    unfold C
    simp [show (7962624 * k + 1319854) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 659927) = 11943936 * k + 1979782 := by
    unfold C
    simp [show (3981312 * k + 659927) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 1979782) = 5971968 * k + 989891 := by
    unfold C
    simp [show (11943936 * k + 1979782) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 989891) = 17915904 * k + 2969674 := by
    unfold C
    simp [show (5971968 * k + 989891) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 2969674) = 8957952 * k + 1484837 := by
    unfold C
    simp [show (17915904 * k + 2969674) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 1484837) = 26873856 * k + 4454512 := by
    unfold C
    simp [show (8957952 * k + 1484837) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 4454512) = 13436928 * k + 2227256 := by
    unfold C
    simp [show (26873856 * k + 4454512) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 2227256) = 6718464 * k + 1113628 := by
    unfold C
    simp [show (13436928 * k + 2227256) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 1113628) = 3359232 * k + 556814 := by
    unfold C
    simp [show (6718464 * k + 1113628) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 556814) = 1679616 * k + 278407 := by
    unfold C
    simp [show (3359232 * k + 556814) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 278407) = 5038848 * k + 835222 := by
    unfold C
    simp [show (1679616 * k + 278407) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 835222) = 2519424 * k + 417611 := by
    unfold C
    simp [show (5038848 * k + 835222) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 417611) = 7558272 * k + 1252834 := by
    unfold C
    simp [show (2519424 * k + 417611) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 1252834) = 3779136 * k + 626417 := by
    unfold C
    simp [show (7558272 * k + 1252834) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 626417) = 11337408 * k + 1879252 := by
    unfold C
    simp [show (3779136 * k + 626417) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 1879252) = 5668704 * k + 939626 := by
    unfold C
    simp [show (11337408 * k + 1879252) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 939626) = 2834352 * k + 469813 := by
    unfold C
    simp [show (5668704 * k + 939626) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 469813) = 8503056 * k + 1409440 := by
    unfold C
    simp [show (2834352 * k + 469813) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 1409440) = 4251528 * k + 704720 := by
    unfold C
    simp [show (8503056 * k + 1409440) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 704720) = 2125764 * k + 352360 := by
    unfold C
    simp [show (4251528 * k + 704720) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 352360) = 1062882 * k + 176180 := by
    unfold C
    simp [show (2125764 * k + 352360) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 176180) = 531441 * k + 88090 := by
    unfold C
    simp [show (1062882 * k + 176180) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 173807) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 173807)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_174247 : ∀ k : Nat,
    iterate (1048576 * k + 174247) 32 = 531441 * k + 88313 ∧
      531441 * k + 88313 < 1048576 * k + 174247 := by
  intro k
  have h1 : C (1048576 * k + 174247) = 3145728 * k + 522742 := by
    unfold C
    simp [show (1048576 * k + 174247) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 522742) = 1572864 * k + 261371 := by
    unfold C
    simp [show (3145728 * k + 522742) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 261371) = 4718592 * k + 784114 := by
    unfold C
    simp [show (1572864 * k + 261371) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 784114) = 2359296 * k + 392057 := by
    unfold C
    simp [show (4718592 * k + 784114) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 392057) = 7077888 * k + 1176172 := by
    unfold C
    simp [show (2359296 * k + 392057) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 1176172) = 3538944 * k + 588086 := by
    unfold C
    simp [show (7077888 * k + 1176172) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 588086) = 1769472 * k + 294043 := by
    unfold C
    simp [show (3538944 * k + 588086) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 294043) = 5308416 * k + 882130 := by
    unfold C
    simp [show (1769472 * k + 294043) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 882130) = 2654208 * k + 441065 := by
    unfold C
    simp [show (5308416 * k + 882130) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 441065) = 7962624 * k + 1323196 := by
    unfold C
    simp [show (2654208 * k + 441065) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 1323196) = 3981312 * k + 661598 := by
    unfold C
    simp [show (7962624 * k + 1323196) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 661598) = 1990656 * k + 330799 := by
    unfold C
    simp [show (3981312 * k + 661598) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 330799) = 5971968 * k + 992398 := by
    unfold C
    simp [show (1990656 * k + 330799) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 992398) = 2985984 * k + 496199 := by
    unfold C
    simp [show (5971968 * k + 992398) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 496199) = 8957952 * k + 1488598 := by
    unfold C
    simp [show (2985984 * k + 496199) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 1488598) = 4478976 * k + 744299 := by
    unfold C
    simp [show (8957952 * k + 1488598) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 744299) = 13436928 * k + 2232898 := by
    unfold C
    simp [show (4478976 * k + 744299) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 2232898) = 6718464 * k + 1116449 := by
    unfold C
    simp [show (13436928 * k + 2232898) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 1116449) = 20155392 * k + 3349348 := by
    unfold C
    simp [show (6718464 * k + 1116449) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 3349348) = 10077696 * k + 1674674 := by
    unfold C
    simp [show (20155392 * k + 3349348) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 1674674) = 5038848 * k + 837337 := by
    unfold C
    simp [show (10077696 * k + 1674674) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 837337) = 15116544 * k + 2512012 := by
    unfold C
    simp [show (5038848 * k + 837337) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 2512012) = 7558272 * k + 1256006 := by
    unfold C
    simp [show (15116544 * k + 2512012) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 1256006) = 3779136 * k + 628003 := by
    unfold C
    simp [show (7558272 * k + 1256006) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 628003) = 11337408 * k + 1884010 := by
    unfold C
    simp [show (3779136 * k + 628003) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 1884010) = 5668704 * k + 942005 := by
    unfold C
    simp [show (11337408 * k + 1884010) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 942005) = 17006112 * k + 2826016 := by
    unfold C
    simp [show (5668704 * k + 942005) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 2826016) = 8503056 * k + 1413008 := by
    unfold C
    simp [show (17006112 * k + 2826016) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 1413008) = 4251528 * k + 706504 := by
    unfold C
    simp [show (8503056 * k + 1413008) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 706504) = 2125764 * k + 353252 := by
    unfold C
    simp [show (4251528 * k + 706504) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 353252) = 1062882 * k + 176626 := by
    unfold C
    simp [show (2125764 * k + 353252) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 176626) = 531441 * k + 88313 := by
    unfold C
    simp [show (1062882 * k + 176626) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 174247) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 174247)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_174399 : ∀ k : Nat,
    iterate (1048576 * k + 174399) 32 = 531441 * k + 88390 ∧
      531441 * k + 88390 < 1048576 * k + 174399 := by
  intro k
  have h1 : C (1048576 * k + 174399) = 3145728 * k + 523198 := by
    unfold C
    simp [show (1048576 * k + 174399) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 523198) = 1572864 * k + 261599 := by
    unfold C
    simp [show (3145728 * k + 523198) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 261599) = 4718592 * k + 784798 := by
    unfold C
    simp [show (1572864 * k + 261599) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 784798) = 2359296 * k + 392399 := by
    unfold C
    simp [show (4718592 * k + 784798) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 392399) = 7077888 * k + 1177198 := by
    unfold C
    simp [show (2359296 * k + 392399) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 1177198) = 3538944 * k + 588599 := by
    unfold C
    simp [show (7077888 * k + 1177198) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 588599) = 10616832 * k + 1765798 := by
    unfold C
    simp [show (3538944 * k + 588599) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 1765798) = 5308416 * k + 882899 := by
    unfold C
    simp [show (10616832 * k + 1765798) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 882899) = 15925248 * k + 2648698 := by
    unfold C
    simp [show (5308416 * k + 882899) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 2648698) = 7962624 * k + 1324349 := by
    unfold C
    simp [show (15925248 * k + 2648698) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 1324349) = 23887872 * k + 3973048 := by
    unfold C
    simp [show (7962624 * k + 1324349) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 3973048) = 11943936 * k + 1986524 := by
    unfold C
    simp [show (23887872 * k + 3973048) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 1986524) = 5971968 * k + 993262 := by
    unfold C
    simp [show (11943936 * k + 1986524) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 993262) = 2985984 * k + 496631 := by
    unfold C
    simp [show (5971968 * k + 993262) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 496631) = 8957952 * k + 1489894 := by
    unfold C
    simp [show (2985984 * k + 496631) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 1489894) = 4478976 * k + 744947 := by
    unfold C
    simp [show (8957952 * k + 1489894) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 744947) = 13436928 * k + 2234842 := by
    unfold C
    simp [show (4478976 * k + 744947) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 2234842) = 6718464 * k + 1117421 := by
    unfold C
    simp [show (13436928 * k + 2234842) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 1117421) = 20155392 * k + 3352264 := by
    unfold C
    simp [show (6718464 * k + 1117421) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 3352264) = 10077696 * k + 1676132 := by
    unfold C
    simp [show (20155392 * k + 3352264) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 1676132) = 5038848 * k + 838066 := by
    unfold C
    simp [show (10077696 * k + 1676132) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 838066) = 2519424 * k + 419033 := by
    unfold C
    simp [show (5038848 * k + 838066) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 419033) = 7558272 * k + 1257100 := by
    unfold C
    simp [show (2519424 * k + 419033) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 1257100) = 3779136 * k + 628550 := by
    unfold C
    simp [show (7558272 * k + 1257100) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 628550) = 1889568 * k + 314275 := by
    unfold C
    simp [show (3779136 * k + 628550) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 314275) = 5668704 * k + 942826 := by
    unfold C
    simp [show (1889568 * k + 314275) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 942826) = 2834352 * k + 471413 := by
    unfold C
    simp [show (5668704 * k + 942826) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 471413) = 8503056 * k + 1414240 := by
    unfold C
    simp [show (2834352 * k + 471413) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 1414240) = 4251528 * k + 707120 := by
    unfold C
    simp [show (8503056 * k + 1414240) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 707120) = 2125764 * k + 353560 := by
    unfold C
    simp [show (4251528 * k + 707120) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 353560) = 1062882 * k + 176780 := by
    unfold C
    simp [show (2125764 * k + 353560) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 176780) = 531441 * k + 88390 := by
    unfold C
    simp [show (1062882 * k + 176780) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 174399) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 174399)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_174719 : ∀ k : Nat,
    iterate (1048576 * k + 174719) 32 = 531441 * k + 88552 ∧
      531441 * k + 88552 < 1048576 * k + 174719 := by
  intro k
  have h1 : C (1048576 * k + 174719) = 3145728 * k + 524158 := by
    unfold C
    simp [show (1048576 * k + 174719) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 524158) = 1572864 * k + 262079 := by
    unfold C
    simp [show (3145728 * k + 524158) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 262079) = 4718592 * k + 786238 := by
    unfold C
    simp [show (1572864 * k + 262079) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 786238) = 2359296 * k + 393119 := by
    unfold C
    simp [show (4718592 * k + 786238) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 393119) = 7077888 * k + 1179358 := by
    unfold C
    simp [show (2359296 * k + 393119) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 1179358) = 3538944 * k + 589679 := by
    unfold C
    simp [show (7077888 * k + 1179358) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 589679) = 10616832 * k + 1769038 := by
    unfold C
    simp [show (3538944 * k + 589679) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 1769038) = 5308416 * k + 884519 := by
    unfold C
    simp [show (10616832 * k + 1769038) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 884519) = 15925248 * k + 2653558 := by
    unfold C
    simp [show (5308416 * k + 884519) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 2653558) = 7962624 * k + 1326779 := by
    unfold C
    simp [show (15925248 * k + 2653558) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 1326779) = 23887872 * k + 3980338 := by
    unfold C
    simp [show (7962624 * k + 1326779) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 3980338) = 11943936 * k + 1990169 := by
    unfold C
    simp [show (23887872 * k + 3980338) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 1990169) = 35831808 * k + 5970508 := by
    unfold C
    simp [show (11943936 * k + 1990169) % 2 ≠ 0 by omega]
    omega
  have h14 : C (35831808 * k + 5970508) = 17915904 * k + 2985254 := by
    unfold C
    simp [show (35831808 * k + 5970508) % 2 = 0 by omega]
    omega
  have h15 : C (17915904 * k + 2985254) = 8957952 * k + 1492627 := by
    unfold C
    simp [show (17915904 * k + 2985254) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 1492627) = 26873856 * k + 4477882 := by
    unfold C
    simp [show (8957952 * k + 1492627) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 4477882) = 13436928 * k + 2238941 := by
    unfold C
    simp [show (26873856 * k + 4477882) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 2238941) = 40310784 * k + 6716824 := by
    unfold C
    simp [show (13436928 * k + 2238941) % 2 ≠ 0 by omega]
    omega
  have h19 : C (40310784 * k + 6716824) = 20155392 * k + 3358412 := by
    unfold C
    simp [show (40310784 * k + 6716824) % 2 = 0 by omega]
    omega
  have h20 : C (20155392 * k + 3358412) = 10077696 * k + 1679206 := by
    unfold C
    simp [show (20155392 * k + 3358412) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 1679206) = 5038848 * k + 839603 := by
    unfold C
    simp [show (10077696 * k + 1679206) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 839603) = 15116544 * k + 2518810 := by
    unfold C
    simp [show (5038848 * k + 839603) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 2518810) = 7558272 * k + 1259405 := by
    unfold C
    simp [show (15116544 * k + 2518810) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 1259405) = 22674816 * k + 3778216 := by
    unfold C
    simp [show (7558272 * k + 1259405) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 3778216) = 11337408 * k + 1889108 := by
    unfold C
    simp [show (22674816 * k + 3778216) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 1889108) = 5668704 * k + 944554 := by
    unfold C
    simp [show (11337408 * k + 1889108) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 944554) = 2834352 * k + 472277 := by
    unfold C
    simp [show (5668704 * k + 944554) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 472277) = 8503056 * k + 1416832 := by
    unfold C
    simp [show (2834352 * k + 472277) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 1416832) = 4251528 * k + 708416 := by
    unfold C
    simp [show (8503056 * k + 1416832) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 708416) = 2125764 * k + 354208 := by
    unfold C
    simp [show (4251528 * k + 708416) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 354208) = 1062882 * k + 177104 := by
    unfold C
    simp [show (2125764 * k + 354208) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 177104) = 531441 * k + 88552 := by
    unfold C
    simp [show (1062882 * k + 177104) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 174719) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 174719)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

end CollatzM20Shard023
