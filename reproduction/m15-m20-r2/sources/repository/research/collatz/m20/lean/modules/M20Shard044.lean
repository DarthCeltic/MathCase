import Mathlib.Data.Nat.Prime.Basic

namespace CollatzM20Shard044

def C (n : Nat) : Nat := if n % 2 = 0 then n / 2 else 3 * n + 1

def iterate (n t : Nat) : Nat := Nat.rec n (fun _ previous => C previous) t

theorem descent_mod1048576_335103 : ∀ k : Nat,
    iterate (1048576 * k + 335103) 32 = 531441 * k + 169838 ∧
      531441 * k + 169838 < 1048576 * k + 335103 := by
  intro k
  have h1 : C (1048576 * k + 335103) = 3145728 * k + 1005310 := by
    unfold C
    simp [show (1048576 * k + 335103) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1005310) = 1572864 * k + 502655 := by
    unfold C
    simp [show (3145728 * k + 1005310) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 502655) = 4718592 * k + 1507966 := by
    unfold C
    simp [show (1572864 * k + 502655) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1507966) = 2359296 * k + 753983 := by
    unfold C
    simp [show (4718592 * k + 1507966) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 753983) = 7077888 * k + 2261950 := by
    unfold C
    simp [show (2359296 * k + 753983) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 2261950) = 3538944 * k + 1130975 := by
    unfold C
    simp [show (7077888 * k + 2261950) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1130975) = 10616832 * k + 3392926 := by
    unfold C
    simp [show (3538944 * k + 1130975) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 3392926) = 5308416 * k + 1696463 := by
    unfold C
    simp [show (10616832 * k + 3392926) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 1696463) = 15925248 * k + 5089390 := by
    unfold C
    simp [show (5308416 * k + 1696463) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 5089390) = 7962624 * k + 2544695 := by
    unfold C
    simp [show (15925248 * k + 5089390) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 2544695) = 23887872 * k + 7634086 := by
    unfold C
    simp [show (7962624 * k + 2544695) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 7634086) = 11943936 * k + 3817043 := by
    unfold C
    simp [show (23887872 * k + 7634086) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 3817043) = 35831808 * k + 11451130 := by
    unfold C
    simp [show (11943936 * k + 3817043) % 2 ≠ 0 by omega]
    omega
  have h14 : C (35831808 * k + 11451130) = 17915904 * k + 5725565 := by
    unfold C
    simp [show (35831808 * k + 11451130) % 2 = 0 by omega]
    omega
  have h15 : C (17915904 * k + 5725565) = 53747712 * k + 17176696 := by
    unfold C
    simp [show (17915904 * k + 5725565) % 2 ≠ 0 by omega]
    omega
  have h16 : C (53747712 * k + 17176696) = 26873856 * k + 8588348 := by
    unfold C
    simp [show (53747712 * k + 17176696) % 2 = 0 by omega]
    omega
  have h17 : C (26873856 * k + 8588348) = 13436928 * k + 4294174 := by
    unfold C
    simp [show (26873856 * k + 8588348) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 4294174) = 6718464 * k + 2147087 := by
    unfold C
    simp [show (13436928 * k + 4294174) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 2147087) = 20155392 * k + 6441262 := by
    unfold C
    simp [show (6718464 * k + 2147087) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 6441262) = 10077696 * k + 3220631 := by
    unfold C
    simp [show (20155392 * k + 6441262) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 3220631) = 30233088 * k + 9661894 := by
    unfold C
    simp [show (10077696 * k + 3220631) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 9661894) = 15116544 * k + 4830947 := by
    unfold C
    simp [show (30233088 * k + 9661894) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 4830947) = 45349632 * k + 14492842 := by
    unfold C
    simp [show (15116544 * k + 4830947) % 2 ≠ 0 by omega]
    omega
  have h24 : C (45349632 * k + 14492842) = 22674816 * k + 7246421 := by
    unfold C
    simp [show (45349632 * k + 14492842) % 2 = 0 by omega]
    omega
  have h25 : C (22674816 * k + 7246421) = 68024448 * k + 21739264 := by
    unfold C
    simp [show (22674816 * k + 7246421) % 2 ≠ 0 by omega]
    omega
  have h26 : C (68024448 * k + 21739264) = 34012224 * k + 10869632 := by
    unfold C
    simp [show (68024448 * k + 21739264) % 2 = 0 by omega]
    omega
  have h27 : C (34012224 * k + 10869632) = 17006112 * k + 5434816 := by
    unfold C
    simp [show (34012224 * k + 10869632) % 2 = 0 by omega]
    omega
  have h28 : C (17006112 * k + 5434816) = 8503056 * k + 2717408 := by
    unfold C
    simp [show (17006112 * k + 5434816) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 2717408) = 4251528 * k + 1358704 := by
    unfold C
    simp [show (8503056 * k + 2717408) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 1358704) = 2125764 * k + 679352 := by
    unfold C
    simp [show (4251528 * k + 1358704) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 679352) = 1062882 * k + 339676 := by
    unfold C
    simp [show (2125764 * k + 679352) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 339676) = 531441 * k + 169838 := by
    unfold C
    simp [show (1062882 * k + 339676) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 335103) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 335103)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_335327 : ∀ k : Nat,
    iterate (1048576 * k + 335327) 32 = 531441 * k + 169952 ∧
      531441 * k + 169952 < 1048576 * k + 335327 := by
  intro k
  have h1 : C (1048576 * k + 335327) = 3145728 * k + 1005982 := by
    unfold C
    simp [show (1048576 * k + 335327) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1005982) = 1572864 * k + 502991 := by
    unfold C
    simp [show (3145728 * k + 1005982) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 502991) = 4718592 * k + 1508974 := by
    unfold C
    simp [show (1572864 * k + 502991) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1508974) = 2359296 * k + 754487 := by
    unfold C
    simp [show (4718592 * k + 1508974) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 754487) = 7077888 * k + 2263462 := by
    unfold C
    simp [show (2359296 * k + 754487) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 2263462) = 3538944 * k + 1131731 := by
    unfold C
    simp [show (7077888 * k + 2263462) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1131731) = 10616832 * k + 3395194 := by
    unfold C
    simp [show (3538944 * k + 1131731) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 3395194) = 5308416 * k + 1697597 := by
    unfold C
    simp [show (10616832 * k + 3395194) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 1697597) = 15925248 * k + 5092792 := by
    unfold C
    simp [show (5308416 * k + 1697597) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 5092792) = 7962624 * k + 2546396 := by
    unfold C
    simp [show (15925248 * k + 5092792) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 2546396) = 3981312 * k + 1273198 := by
    unfold C
    simp [show (7962624 * k + 2546396) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 1273198) = 1990656 * k + 636599 := by
    unfold C
    simp [show (3981312 * k + 1273198) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 636599) = 5971968 * k + 1909798 := by
    unfold C
    simp [show (1990656 * k + 636599) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 1909798) = 2985984 * k + 954899 := by
    unfold C
    simp [show (5971968 * k + 1909798) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 954899) = 8957952 * k + 2864698 := by
    unfold C
    simp [show (2985984 * k + 954899) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 2864698) = 4478976 * k + 1432349 := by
    unfold C
    simp [show (8957952 * k + 2864698) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 1432349) = 13436928 * k + 4297048 := by
    unfold C
    simp [show (4478976 * k + 1432349) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 4297048) = 6718464 * k + 2148524 := by
    unfold C
    simp [show (13436928 * k + 4297048) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 2148524) = 3359232 * k + 1074262 := by
    unfold C
    simp [show (6718464 * k + 2148524) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 1074262) = 1679616 * k + 537131 := by
    unfold C
    simp [show (3359232 * k + 1074262) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 537131) = 5038848 * k + 1611394 := by
    unfold C
    simp [show (1679616 * k + 537131) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 1611394) = 2519424 * k + 805697 := by
    unfold C
    simp [show (5038848 * k + 1611394) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 805697) = 7558272 * k + 2417092 := by
    unfold C
    simp [show (2519424 * k + 805697) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 2417092) = 3779136 * k + 1208546 := by
    unfold C
    simp [show (7558272 * k + 2417092) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 1208546) = 1889568 * k + 604273 := by
    unfold C
    simp [show (3779136 * k + 1208546) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 604273) = 5668704 * k + 1812820 := by
    unfold C
    simp [show (1889568 * k + 604273) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 1812820) = 2834352 * k + 906410 := by
    unfold C
    simp [show (5668704 * k + 1812820) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 906410) = 1417176 * k + 453205 := by
    unfold C
    simp [show (2834352 * k + 906410) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 453205) = 4251528 * k + 1359616 := by
    unfold C
    simp [show (1417176 * k + 453205) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 1359616) = 2125764 * k + 679808 := by
    unfold C
    simp [show (4251528 * k + 1359616) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 679808) = 1062882 * k + 339904 := by
    unfold C
    simp [show (2125764 * k + 679808) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 339904) = 531441 * k + 169952 := by
    unfold C
    simp [show (1062882 * k + 339904) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 335327) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 335327)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_335807 : ∀ k : Nat,
    iterate (1048576 * k + 335807) 32 = 531441 * k + 170195 ∧
      531441 * k + 170195 < 1048576 * k + 335807 := by
  intro k
  have h1 : C (1048576 * k + 335807) = 3145728 * k + 1007422 := by
    unfold C
    simp [show (1048576 * k + 335807) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1007422) = 1572864 * k + 503711 := by
    unfold C
    simp [show (3145728 * k + 1007422) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 503711) = 4718592 * k + 1511134 := by
    unfold C
    simp [show (1572864 * k + 503711) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1511134) = 2359296 * k + 755567 := by
    unfold C
    simp [show (4718592 * k + 1511134) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 755567) = 7077888 * k + 2266702 := by
    unfold C
    simp [show (2359296 * k + 755567) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 2266702) = 3538944 * k + 1133351 := by
    unfold C
    simp [show (7077888 * k + 2266702) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1133351) = 10616832 * k + 3400054 := by
    unfold C
    simp [show (3538944 * k + 1133351) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 3400054) = 5308416 * k + 1700027 := by
    unfold C
    simp [show (10616832 * k + 3400054) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 1700027) = 15925248 * k + 5100082 := by
    unfold C
    simp [show (5308416 * k + 1700027) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 5100082) = 7962624 * k + 2550041 := by
    unfold C
    simp [show (15925248 * k + 5100082) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 2550041) = 23887872 * k + 7650124 := by
    unfold C
    simp [show (7962624 * k + 2550041) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 7650124) = 11943936 * k + 3825062 := by
    unfold C
    simp [show (23887872 * k + 7650124) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 3825062) = 5971968 * k + 1912531 := by
    unfold C
    simp [show (11943936 * k + 3825062) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 1912531) = 17915904 * k + 5737594 := by
    unfold C
    simp [show (5971968 * k + 1912531) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 5737594) = 8957952 * k + 2868797 := by
    unfold C
    simp [show (17915904 * k + 5737594) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 2868797) = 26873856 * k + 8606392 := by
    unfold C
    simp [show (8957952 * k + 2868797) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 8606392) = 13436928 * k + 4303196 := by
    unfold C
    simp [show (26873856 * k + 8606392) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 4303196) = 6718464 * k + 2151598 := by
    unfold C
    simp [show (13436928 * k + 4303196) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 2151598) = 3359232 * k + 1075799 := by
    unfold C
    simp [show (6718464 * k + 2151598) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 1075799) = 10077696 * k + 3227398 := by
    unfold C
    simp [show (3359232 * k + 1075799) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 3227398) = 5038848 * k + 1613699 := by
    unfold C
    simp [show (10077696 * k + 3227398) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 1613699) = 15116544 * k + 4841098 := by
    unfold C
    simp [show (5038848 * k + 1613699) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 4841098) = 7558272 * k + 2420549 := by
    unfold C
    simp [show (15116544 * k + 4841098) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 2420549) = 22674816 * k + 7261648 := by
    unfold C
    simp [show (7558272 * k + 2420549) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 7261648) = 11337408 * k + 3630824 := by
    unfold C
    simp [show (22674816 * k + 7261648) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 3630824) = 5668704 * k + 1815412 := by
    unfold C
    simp [show (11337408 * k + 3630824) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 1815412) = 2834352 * k + 907706 := by
    unfold C
    simp [show (5668704 * k + 1815412) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 907706) = 1417176 * k + 453853 := by
    unfold C
    simp [show (2834352 * k + 907706) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 453853) = 4251528 * k + 1361560 := by
    unfold C
    simp [show (1417176 * k + 453853) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 1361560) = 2125764 * k + 680780 := by
    unfold C
    simp [show (4251528 * k + 1361560) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 680780) = 1062882 * k + 340390 := by
    unfold C
    simp [show (2125764 * k + 680780) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 340390) = 531441 * k + 170195 := by
    unfold C
    simp [show (1062882 * k + 340390) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 335807) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 335807)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_337255 : ∀ k : Nat,
    iterate (1048576 * k + 337255) 32 = 531441 * k + 170929 ∧
      531441 * k + 170929 < 1048576 * k + 337255 := by
  intro k
  have h1 : C (1048576 * k + 337255) = 3145728 * k + 1011766 := by
    unfold C
    simp [show (1048576 * k + 337255) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1011766) = 1572864 * k + 505883 := by
    unfold C
    simp [show (3145728 * k + 1011766) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 505883) = 4718592 * k + 1517650 := by
    unfold C
    simp [show (1572864 * k + 505883) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1517650) = 2359296 * k + 758825 := by
    unfold C
    simp [show (4718592 * k + 1517650) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 758825) = 7077888 * k + 2276476 := by
    unfold C
    simp [show (2359296 * k + 758825) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 2276476) = 3538944 * k + 1138238 := by
    unfold C
    simp [show (7077888 * k + 2276476) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1138238) = 1769472 * k + 569119 := by
    unfold C
    simp [show (3538944 * k + 1138238) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 569119) = 5308416 * k + 1707358 := by
    unfold C
    simp [show (1769472 * k + 569119) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 1707358) = 2654208 * k + 853679 := by
    unfold C
    simp [show (5308416 * k + 1707358) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 853679) = 7962624 * k + 2561038 := by
    unfold C
    simp [show (2654208 * k + 853679) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 2561038) = 3981312 * k + 1280519 := by
    unfold C
    simp [show (7962624 * k + 2561038) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 1280519) = 11943936 * k + 3841558 := by
    unfold C
    simp [show (3981312 * k + 1280519) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 3841558) = 5971968 * k + 1920779 := by
    unfold C
    simp [show (11943936 * k + 3841558) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 1920779) = 17915904 * k + 5762338 := by
    unfold C
    simp [show (5971968 * k + 1920779) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 5762338) = 8957952 * k + 2881169 := by
    unfold C
    simp [show (17915904 * k + 5762338) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 2881169) = 26873856 * k + 8643508 := by
    unfold C
    simp [show (8957952 * k + 2881169) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 8643508) = 13436928 * k + 4321754 := by
    unfold C
    simp [show (26873856 * k + 8643508) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 4321754) = 6718464 * k + 2160877 := by
    unfold C
    simp [show (13436928 * k + 4321754) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 2160877) = 20155392 * k + 6482632 := by
    unfold C
    simp [show (6718464 * k + 2160877) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 6482632) = 10077696 * k + 3241316 := by
    unfold C
    simp [show (20155392 * k + 6482632) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 3241316) = 5038848 * k + 1620658 := by
    unfold C
    simp [show (10077696 * k + 3241316) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 1620658) = 2519424 * k + 810329 := by
    unfold C
    simp [show (5038848 * k + 1620658) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 810329) = 7558272 * k + 2430988 := by
    unfold C
    simp [show (2519424 * k + 810329) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 2430988) = 3779136 * k + 1215494 := by
    unfold C
    simp [show (7558272 * k + 2430988) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 1215494) = 1889568 * k + 607747 := by
    unfold C
    simp [show (3779136 * k + 1215494) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 607747) = 5668704 * k + 1823242 := by
    unfold C
    simp [show (1889568 * k + 607747) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 1823242) = 2834352 * k + 911621 := by
    unfold C
    simp [show (5668704 * k + 1823242) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 911621) = 8503056 * k + 2734864 := by
    unfold C
    simp [show (2834352 * k + 911621) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 2734864) = 4251528 * k + 1367432 := by
    unfold C
    simp [show (8503056 * k + 2734864) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 1367432) = 2125764 * k + 683716 := by
    unfold C
    simp [show (4251528 * k + 1367432) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 683716) = 1062882 * k + 341858 := by
    unfold C
    simp [show (2125764 * k + 683716) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 341858) = 531441 * k + 170929 := by
    unfold C
    simp [show (1062882 * k + 341858) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 337255) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 337255)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_337823 : ∀ k : Nat,
    iterate (1048576 * k + 337823) 32 = 531441 * k + 171217 ∧
      531441 * k + 171217 < 1048576 * k + 337823 := by
  intro k
  have h1 : C (1048576 * k + 337823) = 3145728 * k + 1013470 := by
    unfold C
    simp [show (1048576 * k + 337823) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1013470) = 1572864 * k + 506735 := by
    unfold C
    simp [show (3145728 * k + 1013470) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 506735) = 4718592 * k + 1520206 := by
    unfold C
    simp [show (1572864 * k + 506735) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1520206) = 2359296 * k + 760103 := by
    unfold C
    simp [show (4718592 * k + 1520206) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 760103) = 7077888 * k + 2280310 := by
    unfold C
    simp [show (2359296 * k + 760103) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 2280310) = 3538944 * k + 1140155 := by
    unfold C
    simp [show (7077888 * k + 2280310) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1140155) = 10616832 * k + 3420466 := by
    unfold C
    simp [show (3538944 * k + 1140155) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 3420466) = 5308416 * k + 1710233 := by
    unfold C
    simp [show (10616832 * k + 3420466) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 1710233) = 15925248 * k + 5130700 := by
    unfold C
    simp [show (5308416 * k + 1710233) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 5130700) = 7962624 * k + 2565350 := by
    unfold C
    simp [show (15925248 * k + 5130700) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 2565350) = 3981312 * k + 1282675 := by
    unfold C
    simp [show (7962624 * k + 2565350) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 1282675) = 11943936 * k + 3848026 := by
    unfold C
    simp [show (3981312 * k + 1282675) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 3848026) = 5971968 * k + 1924013 := by
    unfold C
    simp [show (11943936 * k + 3848026) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 1924013) = 17915904 * k + 5772040 := by
    unfold C
    simp [show (5971968 * k + 1924013) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 5772040) = 8957952 * k + 2886020 := by
    unfold C
    simp [show (17915904 * k + 5772040) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 2886020) = 4478976 * k + 1443010 := by
    unfold C
    simp [show (8957952 * k + 2886020) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 1443010) = 2239488 * k + 721505 := by
    unfold C
    simp [show (4478976 * k + 1443010) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 721505) = 6718464 * k + 2164516 := by
    unfold C
    simp [show (2239488 * k + 721505) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 2164516) = 3359232 * k + 1082258 := by
    unfold C
    simp [show (6718464 * k + 2164516) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 1082258) = 1679616 * k + 541129 := by
    unfold C
    simp [show (3359232 * k + 1082258) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 541129) = 5038848 * k + 1623388 := by
    unfold C
    simp [show (1679616 * k + 541129) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 1623388) = 2519424 * k + 811694 := by
    unfold C
    simp [show (5038848 * k + 1623388) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 811694) = 1259712 * k + 405847 := by
    unfold C
    simp [show (2519424 * k + 811694) % 2 = 0 by omega]
    omega
  have h24 : C (1259712 * k + 405847) = 3779136 * k + 1217542 := by
    unfold C
    simp [show (1259712 * k + 405847) % 2 ≠ 0 by omega]
    omega
  have h25 : C (3779136 * k + 1217542) = 1889568 * k + 608771 := by
    unfold C
    simp [show (3779136 * k + 1217542) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 608771) = 5668704 * k + 1826314 := by
    unfold C
    simp [show (1889568 * k + 608771) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 1826314) = 2834352 * k + 913157 := by
    unfold C
    simp [show (5668704 * k + 1826314) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 913157) = 8503056 * k + 2739472 := by
    unfold C
    simp [show (2834352 * k + 913157) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 2739472) = 4251528 * k + 1369736 := by
    unfold C
    simp [show (8503056 * k + 2739472) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 1369736) = 2125764 * k + 684868 := by
    unfold C
    simp [show (4251528 * k + 1369736) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 684868) = 1062882 * k + 342434 := by
    unfold C
    simp [show (2125764 * k + 684868) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 342434) = 531441 * k + 171217 := by
    unfold C
    simp [show (1062882 * k + 342434) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 337823) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 337823)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_337983 : ∀ k : Nat,
    iterate (1048576 * k + 337983) 32 = 531441 * k + 171298 ∧
      531441 * k + 171298 < 1048576 * k + 337983 := by
  intro k
  have h1 : C (1048576 * k + 337983) = 3145728 * k + 1013950 := by
    unfold C
    simp [show (1048576 * k + 337983) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1013950) = 1572864 * k + 506975 := by
    unfold C
    simp [show (3145728 * k + 1013950) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 506975) = 4718592 * k + 1520926 := by
    unfold C
    simp [show (1572864 * k + 506975) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1520926) = 2359296 * k + 760463 := by
    unfold C
    simp [show (4718592 * k + 1520926) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 760463) = 7077888 * k + 2281390 := by
    unfold C
    simp [show (2359296 * k + 760463) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 2281390) = 3538944 * k + 1140695 := by
    unfold C
    simp [show (7077888 * k + 2281390) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1140695) = 10616832 * k + 3422086 := by
    unfold C
    simp [show (3538944 * k + 1140695) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 3422086) = 5308416 * k + 1711043 := by
    unfold C
    simp [show (10616832 * k + 3422086) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 1711043) = 15925248 * k + 5133130 := by
    unfold C
    simp [show (5308416 * k + 1711043) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 5133130) = 7962624 * k + 2566565 := by
    unfold C
    simp [show (15925248 * k + 5133130) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 2566565) = 23887872 * k + 7699696 := by
    unfold C
    simp [show (7962624 * k + 2566565) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 7699696) = 11943936 * k + 3849848 := by
    unfold C
    simp [show (23887872 * k + 7699696) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 3849848) = 5971968 * k + 1924924 := by
    unfold C
    simp [show (11943936 * k + 3849848) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 1924924) = 2985984 * k + 962462 := by
    unfold C
    simp [show (5971968 * k + 1924924) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 962462) = 1492992 * k + 481231 := by
    unfold C
    simp [show (2985984 * k + 962462) % 2 = 0 by omega]
    omega
  have h16 : C (1492992 * k + 481231) = 4478976 * k + 1443694 := by
    unfold C
    simp [show (1492992 * k + 481231) % 2 ≠ 0 by omega]
    omega
  have h17 : C (4478976 * k + 1443694) = 2239488 * k + 721847 := by
    unfold C
    simp [show (4478976 * k + 1443694) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 721847) = 6718464 * k + 2165542 := by
    unfold C
    simp [show (2239488 * k + 721847) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 2165542) = 3359232 * k + 1082771 := by
    unfold C
    simp [show (6718464 * k + 2165542) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 1082771) = 10077696 * k + 3248314 := by
    unfold C
    simp [show (3359232 * k + 1082771) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 3248314) = 5038848 * k + 1624157 := by
    unfold C
    simp [show (10077696 * k + 3248314) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 1624157) = 15116544 * k + 4872472 := by
    unfold C
    simp [show (5038848 * k + 1624157) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 4872472) = 7558272 * k + 2436236 := by
    unfold C
    simp [show (15116544 * k + 4872472) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 2436236) = 3779136 * k + 1218118 := by
    unfold C
    simp [show (7558272 * k + 2436236) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 1218118) = 1889568 * k + 609059 := by
    unfold C
    simp [show (3779136 * k + 1218118) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 609059) = 5668704 * k + 1827178 := by
    unfold C
    simp [show (1889568 * k + 609059) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 1827178) = 2834352 * k + 913589 := by
    unfold C
    simp [show (5668704 * k + 1827178) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 913589) = 8503056 * k + 2740768 := by
    unfold C
    simp [show (2834352 * k + 913589) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 2740768) = 4251528 * k + 1370384 := by
    unfold C
    simp [show (8503056 * k + 2740768) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 1370384) = 2125764 * k + 685192 := by
    unfold C
    simp [show (4251528 * k + 1370384) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 685192) = 1062882 * k + 342596 := by
    unfold C
    simp [show (2125764 * k + 685192) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 342596) = 531441 * k + 171298 := by
    unfold C
    simp [show (1062882 * k + 342596) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 337983) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 337983)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_338523 : ∀ k : Nat,
    iterate (1048576 * k + 338523) 32 = 531441 * k + 171572 ∧
      531441 * k + 171572 < 1048576 * k + 338523 := by
  intro k
  have h1 : C (1048576 * k + 338523) = 3145728 * k + 1015570 := by
    unfold C
    simp [show (1048576 * k + 338523) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1015570) = 1572864 * k + 507785 := by
    unfold C
    simp [show (3145728 * k + 1015570) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 507785) = 4718592 * k + 1523356 := by
    unfold C
    simp [show (1572864 * k + 507785) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1523356) = 2359296 * k + 761678 := by
    unfold C
    simp [show (4718592 * k + 1523356) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 761678) = 1179648 * k + 380839 := by
    unfold C
    simp [show (2359296 * k + 761678) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 380839) = 3538944 * k + 1142518 := by
    unfold C
    simp [show (1179648 * k + 380839) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 1142518) = 1769472 * k + 571259 := by
    unfold C
    simp [show (3538944 * k + 1142518) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 571259) = 5308416 * k + 1713778 := by
    unfold C
    simp [show (1769472 * k + 571259) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 1713778) = 2654208 * k + 856889 := by
    unfold C
    simp [show (5308416 * k + 1713778) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 856889) = 7962624 * k + 2570668 := by
    unfold C
    simp [show (2654208 * k + 856889) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 2570668) = 3981312 * k + 1285334 := by
    unfold C
    simp [show (7962624 * k + 2570668) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 1285334) = 1990656 * k + 642667 := by
    unfold C
    simp [show (3981312 * k + 1285334) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 642667) = 5971968 * k + 1928002 := by
    unfold C
    simp [show (1990656 * k + 642667) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 1928002) = 2985984 * k + 964001 := by
    unfold C
    simp [show (5971968 * k + 1928002) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 964001) = 8957952 * k + 2892004 := by
    unfold C
    simp [show (2985984 * k + 964001) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 2892004) = 4478976 * k + 1446002 := by
    unfold C
    simp [show (8957952 * k + 2892004) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 1446002) = 2239488 * k + 723001 := by
    unfold C
    simp [show (4478976 * k + 1446002) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 723001) = 6718464 * k + 2169004 := by
    unfold C
    simp [show (2239488 * k + 723001) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 2169004) = 3359232 * k + 1084502 := by
    unfold C
    simp [show (6718464 * k + 2169004) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 1084502) = 1679616 * k + 542251 := by
    unfold C
    simp [show (3359232 * k + 1084502) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 542251) = 5038848 * k + 1626754 := by
    unfold C
    simp [show (1679616 * k + 542251) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 1626754) = 2519424 * k + 813377 := by
    unfold C
    simp [show (5038848 * k + 1626754) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 813377) = 7558272 * k + 2440132 := by
    unfold C
    simp [show (2519424 * k + 813377) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 2440132) = 3779136 * k + 1220066 := by
    unfold C
    simp [show (7558272 * k + 2440132) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 1220066) = 1889568 * k + 610033 := by
    unfold C
    simp [show (3779136 * k + 1220066) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 610033) = 5668704 * k + 1830100 := by
    unfold C
    simp [show (1889568 * k + 610033) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 1830100) = 2834352 * k + 915050 := by
    unfold C
    simp [show (5668704 * k + 1830100) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 915050) = 1417176 * k + 457525 := by
    unfold C
    simp [show (2834352 * k + 915050) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 457525) = 4251528 * k + 1372576 := by
    unfold C
    simp [show (1417176 * k + 457525) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 1372576) = 2125764 * k + 686288 := by
    unfold C
    simp [show (4251528 * k + 1372576) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 686288) = 1062882 * k + 343144 := by
    unfold C
    simp [show (2125764 * k + 686288) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 343144) = 531441 * k + 171572 := by
    unfold C
    simp [show (1062882 * k + 343144) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 338523) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 338523)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_338683 : ∀ k : Nat,
    iterate (1048576 * k + 338683) 32 = 531441 * k + 171653 ∧
      531441 * k + 171653 < 1048576 * k + 338683 := by
  intro k
  have h1 : C (1048576 * k + 338683) = 3145728 * k + 1016050 := by
    unfold C
    simp [show (1048576 * k + 338683) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1016050) = 1572864 * k + 508025 := by
    unfold C
    simp [show (3145728 * k + 1016050) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 508025) = 4718592 * k + 1524076 := by
    unfold C
    simp [show (1572864 * k + 508025) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1524076) = 2359296 * k + 762038 := by
    unfold C
    simp [show (4718592 * k + 1524076) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 762038) = 1179648 * k + 381019 := by
    unfold C
    simp [show (2359296 * k + 762038) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 381019) = 3538944 * k + 1143058 := by
    unfold C
    simp [show (1179648 * k + 381019) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 1143058) = 1769472 * k + 571529 := by
    unfold C
    simp [show (3538944 * k + 1143058) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 571529) = 5308416 * k + 1714588 := by
    unfold C
    simp [show (1769472 * k + 571529) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 1714588) = 2654208 * k + 857294 := by
    unfold C
    simp [show (5308416 * k + 1714588) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 857294) = 1327104 * k + 428647 := by
    unfold C
    simp [show (2654208 * k + 857294) % 2 = 0 by omega]
    omega
  have h11 : C (1327104 * k + 428647) = 3981312 * k + 1285942 := by
    unfold C
    simp [show (1327104 * k + 428647) % 2 ≠ 0 by omega]
    omega
  have h12 : C (3981312 * k + 1285942) = 1990656 * k + 642971 := by
    unfold C
    simp [show (3981312 * k + 1285942) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 642971) = 5971968 * k + 1928914 := by
    unfold C
    simp [show (1990656 * k + 642971) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 1928914) = 2985984 * k + 964457 := by
    unfold C
    simp [show (5971968 * k + 1928914) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 964457) = 8957952 * k + 2893372 := by
    unfold C
    simp [show (2985984 * k + 964457) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 2893372) = 4478976 * k + 1446686 := by
    unfold C
    simp [show (8957952 * k + 2893372) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 1446686) = 2239488 * k + 723343 := by
    unfold C
    simp [show (4478976 * k + 1446686) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 723343) = 6718464 * k + 2170030 := by
    unfold C
    simp [show (2239488 * k + 723343) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 2170030) = 3359232 * k + 1085015 := by
    unfold C
    simp [show (6718464 * k + 2170030) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 1085015) = 10077696 * k + 3255046 := by
    unfold C
    simp [show (3359232 * k + 1085015) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 3255046) = 5038848 * k + 1627523 := by
    unfold C
    simp [show (10077696 * k + 3255046) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 1627523) = 15116544 * k + 4882570 := by
    unfold C
    simp [show (5038848 * k + 1627523) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 4882570) = 7558272 * k + 2441285 := by
    unfold C
    simp [show (15116544 * k + 4882570) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 2441285) = 22674816 * k + 7323856 := by
    unfold C
    simp [show (7558272 * k + 2441285) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 7323856) = 11337408 * k + 3661928 := by
    unfold C
    simp [show (22674816 * k + 7323856) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 3661928) = 5668704 * k + 1830964 := by
    unfold C
    simp [show (11337408 * k + 3661928) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 1830964) = 2834352 * k + 915482 := by
    unfold C
    simp [show (5668704 * k + 1830964) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 915482) = 1417176 * k + 457741 := by
    unfold C
    simp [show (2834352 * k + 915482) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 457741) = 4251528 * k + 1373224 := by
    unfold C
    simp [show (1417176 * k + 457741) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 1373224) = 2125764 * k + 686612 := by
    unfold C
    simp [show (4251528 * k + 1373224) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 686612) = 1062882 * k + 343306 := by
    unfold C
    simp [show (2125764 * k + 686612) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 343306) = 531441 * k + 171653 := by
    unfold C
    simp [show (1062882 * k + 343306) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 338683) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 338683)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_338719 : ∀ k : Nat,
    iterate (1048576 * k + 338719) 32 = 531441 * k + 171671 ∧
      531441 * k + 171671 < 1048576 * k + 338719 := by
  intro k
  have h1 : C (1048576 * k + 338719) = 3145728 * k + 1016158 := by
    unfold C
    simp [show (1048576 * k + 338719) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1016158) = 1572864 * k + 508079 := by
    unfold C
    simp [show (3145728 * k + 1016158) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 508079) = 4718592 * k + 1524238 := by
    unfold C
    simp [show (1572864 * k + 508079) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1524238) = 2359296 * k + 762119 := by
    unfold C
    simp [show (4718592 * k + 1524238) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 762119) = 7077888 * k + 2286358 := by
    unfold C
    simp [show (2359296 * k + 762119) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 2286358) = 3538944 * k + 1143179 := by
    unfold C
    simp [show (7077888 * k + 2286358) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1143179) = 10616832 * k + 3429538 := by
    unfold C
    simp [show (3538944 * k + 1143179) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 3429538) = 5308416 * k + 1714769 := by
    unfold C
    simp [show (10616832 * k + 3429538) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 1714769) = 15925248 * k + 5144308 := by
    unfold C
    simp [show (5308416 * k + 1714769) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 5144308) = 7962624 * k + 2572154 := by
    unfold C
    simp [show (15925248 * k + 5144308) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 2572154) = 3981312 * k + 1286077 := by
    unfold C
    simp [show (7962624 * k + 2572154) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 1286077) = 11943936 * k + 3858232 := by
    unfold C
    simp [show (3981312 * k + 1286077) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 3858232) = 5971968 * k + 1929116 := by
    unfold C
    simp [show (11943936 * k + 3858232) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 1929116) = 2985984 * k + 964558 := by
    unfold C
    simp [show (5971968 * k + 1929116) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 964558) = 1492992 * k + 482279 := by
    unfold C
    simp [show (2985984 * k + 964558) % 2 = 0 by omega]
    omega
  have h16 : C (1492992 * k + 482279) = 4478976 * k + 1446838 := by
    unfold C
    simp [show (1492992 * k + 482279) % 2 ≠ 0 by omega]
    omega
  have h17 : C (4478976 * k + 1446838) = 2239488 * k + 723419 := by
    unfold C
    simp [show (4478976 * k + 1446838) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 723419) = 6718464 * k + 2170258 := by
    unfold C
    simp [show (2239488 * k + 723419) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 2170258) = 3359232 * k + 1085129 := by
    unfold C
    simp [show (6718464 * k + 2170258) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 1085129) = 10077696 * k + 3255388 := by
    unfold C
    simp [show (3359232 * k + 1085129) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 3255388) = 5038848 * k + 1627694 := by
    unfold C
    simp [show (10077696 * k + 3255388) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 1627694) = 2519424 * k + 813847 := by
    unfold C
    simp [show (5038848 * k + 1627694) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 813847) = 7558272 * k + 2441542 := by
    unfold C
    simp [show (2519424 * k + 813847) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 2441542) = 3779136 * k + 1220771 := by
    unfold C
    simp [show (7558272 * k + 2441542) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 1220771) = 11337408 * k + 3662314 := by
    unfold C
    simp [show (3779136 * k + 1220771) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 3662314) = 5668704 * k + 1831157 := by
    unfold C
    simp [show (11337408 * k + 3662314) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 1831157) = 17006112 * k + 5493472 := by
    unfold C
    simp [show (5668704 * k + 1831157) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 5493472) = 8503056 * k + 2746736 := by
    unfold C
    simp [show (17006112 * k + 5493472) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 2746736) = 4251528 * k + 1373368 := by
    unfold C
    simp [show (8503056 * k + 2746736) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 1373368) = 2125764 * k + 686684 := by
    unfold C
    simp [show (4251528 * k + 1373368) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 686684) = 1062882 * k + 343342 := by
    unfold C
    simp [show (2125764 * k + 686684) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 343342) = 531441 * k + 171671 := by
    unfold C
    simp [show (1062882 * k + 343342) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 338719) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 338719)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_338879 : ∀ k : Nat,
    iterate (1048576 * k + 338879) 32 = 531441 * k + 171752 ∧
      531441 * k + 171752 < 1048576 * k + 338879 := by
  intro k
  have h1 : C (1048576 * k + 338879) = 3145728 * k + 1016638 := by
    unfold C
    simp [show (1048576 * k + 338879) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1016638) = 1572864 * k + 508319 := by
    unfold C
    simp [show (3145728 * k + 1016638) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 508319) = 4718592 * k + 1524958 := by
    unfold C
    simp [show (1572864 * k + 508319) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1524958) = 2359296 * k + 762479 := by
    unfold C
    simp [show (4718592 * k + 1524958) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 762479) = 7077888 * k + 2287438 := by
    unfold C
    simp [show (2359296 * k + 762479) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 2287438) = 3538944 * k + 1143719 := by
    unfold C
    simp [show (7077888 * k + 2287438) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1143719) = 10616832 * k + 3431158 := by
    unfold C
    simp [show (3538944 * k + 1143719) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 3431158) = 5308416 * k + 1715579 := by
    unfold C
    simp [show (10616832 * k + 3431158) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 1715579) = 15925248 * k + 5146738 := by
    unfold C
    simp [show (5308416 * k + 1715579) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 5146738) = 7962624 * k + 2573369 := by
    unfold C
    simp [show (15925248 * k + 5146738) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 2573369) = 23887872 * k + 7720108 := by
    unfold C
    simp [show (7962624 * k + 2573369) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 7720108) = 11943936 * k + 3860054 := by
    unfold C
    simp [show (23887872 * k + 7720108) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 3860054) = 5971968 * k + 1930027 := by
    unfold C
    simp [show (11943936 * k + 3860054) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 1930027) = 17915904 * k + 5790082 := by
    unfold C
    simp [show (5971968 * k + 1930027) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 5790082) = 8957952 * k + 2895041 := by
    unfold C
    simp [show (17915904 * k + 5790082) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 2895041) = 26873856 * k + 8685124 := by
    unfold C
    simp [show (8957952 * k + 2895041) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 8685124) = 13436928 * k + 4342562 := by
    unfold C
    simp [show (26873856 * k + 8685124) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 4342562) = 6718464 * k + 2171281 := by
    unfold C
    simp [show (13436928 * k + 4342562) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 2171281) = 20155392 * k + 6513844 := by
    unfold C
    simp [show (6718464 * k + 2171281) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 6513844) = 10077696 * k + 3256922 := by
    unfold C
    simp [show (20155392 * k + 6513844) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 3256922) = 5038848 * k + 1628461 := by
    unfold C
    simp [show (10077696 * k + 3256922) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 1628461) = 15116544 * k + 4885384 := by
    unfold C
    simp [show (5038848 * k + 1628461) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 4885384) = 7558272 * k + 2442692 := by
    unfold C
    simp [show (15116544 * k + 4885384) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 2442692) = 3779136 * k + 1221346 := by
    unfold C
    simp [show (7558272 * k + 2442692) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 1221346) = 1889568 * k + 610673 := by
    unfold C
    simp [show (3779136 * k + 1221346) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 610673) = 5668704 * k + 1832020 := by
    unfold C
    simp [show (1889568 * k + 610673) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 1832020) = 2834352 * k + 916010 := by
    unfold C
    simp [show (5668704 * k + 1832020) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 916010) = 1417176 * k + 458005 := by
    unfold C
    simp [show (2834352 * k + 916010) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 458005) = 4251528 * k + 1374016 := by
    unfold C
    simp [show (1417176 * k + 458005) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 1374016) = 2125764 * k + 687008 := by
    unfold C
    simp [show (4251528 * k + 1374016) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 687008) = 1062882 * k + 343504 := by
    unfold C
    simp [show (2125764 * k + 687008) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 343504) = 531441 * k + 171752 := by
    unfold C
    simp [show (1062882 * k + 343504) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 338879) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 338879)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_339199 : ∀ k : Nat,
    iterate (1048576 * k + 339199) 32 = 531441 * k + 171914 ∧
      531441 * k + 171914 < 1048576 * k + 339199 := by
  intro k
  have h1 : C (1048576 * k + 339199) = 3145728 * k + 1017598 := by
    unfold C
    simp [show (1048576 * k + 339199) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1017598) = 1572864 * k + 508799 := by
    unfold C
    simp [show (3145728 * k + 1017598) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 508799) = 4718592 * k + 1526398 := by
    unfold C
    simp [show (1572864 * k + 508799) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1526398) = 2359296 * k + 763199 := by
    unfold C
    simp [show (4718592 * k + 1526398) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 763199) = 7077888 * k + 2289598 := by
    unfold C
    simp [show (2359296 * k + 763199) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 2289598) = 3538944 * k + 1144799 := by
    unfold C
    simp [show (7077888 * k + 2289598) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1144799) = 10616832 * k + 3434398 := by
    unfold C
    simp [show (3538944 * k + 1144799) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 3434398) = 5308416 * k + 1717199 := by
    unfold C
    simp [show (10616832 * k + 3434398) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 1717199) = 15925248 * k + 5151598 := by
    unfold C
    simp [show (5308416 * k + 1717199) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 5151598) = 7962624 * k + 2575799 := by
    unfold C
    simp [show (15925248 * k + 5151598) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 2575799) = 23887872 * k + 7727398 := by
    unfold C
    simp [show (7962624 * k + 2575799) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 7727398) = 11943936 * k + 3863699 := by
    unfold C
    simp [show (23887872 * k + 7727398) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 3863699) = 35831808 * k + 11591098 := by
    unfold C
    simp [show (11943936 * k + 3863699) % 2 ≠ 0 by omega]
    omega
  have h14 : C (35831808 * k + 11591098) = 17915904 * k + 5795549 := by
    unfold C
    simp [show (35831808 * k + 11591098) % 2 = 0 by omega]
    omega
  have h15 : C (17915904 * k + 5795549) = 53747712 * k + 17386648 := by
    unfold C
    simp [show (17915904 * k + 5795549) % 2 ≠ 0 by omega]
    omega
  have h16 : C (53747712 * k + 17386648) = 26873856 * k + 8693324 := by
    unfold C
    simp [show (53747712 * k + 17386648) % 2 = 0 by omega]
    omega
  have h17 : C (26873856 * k + 8693324) = 13436928 * k + 4346662 := by
    unfold C
    simp [show (26873856 * k + 8693324) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 4346662) = 6718464 * k + 2173331 := by
    unfold C
    simp [show (13436928 * k + 4346662) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 2173331) = 20155392 * k + 6519994 := by
    unfold C
    simp [show (6718464 * k + 2173331) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 6519994) = 10077696 * k + 3259997 := by
    unfold C
    simp [show (20155392 * k + 6519994) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 3259997) = 30233088 * k + 9779992 := by
    unfold C
    simp [show (10077696 * k + 3259997) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 9779992) = 15116544 * k + 4889996 := by
    unfold C
    simp [show (30233088 * k + 9779992) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 4889996) = 7558272 * k + 2444998 := by
    unfold C
    simp [show (15116544 * k + 4889996) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 2444998) = 3779136 * k + 1222499 := by
    unfold C
    simp [show (7558272 * k + 2444998) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 1222499) = 11337408 * k + 3667498 := by
    unfold C
    simp [show (3779136 * k + 1222499) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 3667498) = 5668704 * k + 1833749 := by
    unfold C
    simp [show (11337408 * k + 3667498) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 1833749) = 17006112 * k + 5501248 := by
    unfold C
    simp [show (5668704 * k + 1833749) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 5501248) = 8503056 * k + 2750624 := by
    unfold C
    simp [show (17006112 * k + 5501248) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 2750624) = 4251528 * k + 1375312 := by
    unfold C
    simp [show (8503056 * k + 2750624) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 1375312) = 2125764 * k + 687656 := by
    unfold C
    simp [show (4251528 * k + 1375312) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 687656) = 1062882 * k + 343828 := by
    unfold C
    simp [show (2125764 * k + 687656) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 343828) = 531441 * k + 171914 := by
    unfold C
    simp [show (1062882 * k + 343828) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 339199) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 339199)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_339903 : ∀ k : Nat,
    iterate (1048576 * k + 339903) 32 = 531441 * k + 172271 ∧
      531441 * k + 172271 < 1048576 * k + 339903 := by
  intro k
  have h1 : C (1048576 * k + 339903) = 3145728 * k + 1019710 := by
    unfold C
    simp [show (1048576 * k + 339903) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1019710) = 1572864 * k + 509855 := by
    unfold C
    simp [show (3145728 * k + 1019710) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 509855) = 4718592 * k + 1529566 := by
    unfold C
    simp [show (1572864 * k + 509855) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1529566) = 2359296 * k + 764783 := by
    unfold C
    simp [show (4718592 * k + 1529566) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 764783) = 7077888 * k + 2294350 := by
    unfold C
    simp [show (2359296 * k + 764783) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 2294350) = 3538944 * k + 1147175 := by
    unfold C
    simp [show (7077888 * k + 2294350) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1147175) = 10616832 * k + 3441526 := by
    unfold C
    simp [show (3538944 * k + 1147175) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 3441526) = 5308416 * k + 1720763 := by
    unfold C
    simp [show (10616832 * k + 3441526) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 1720763) = 15925248 * k + 5162290 := by
    unfold C
    simp [show (5308416 * k + 1720763) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 5162290) = 7962624 * k + 2581145 := by
    unfold C
    simp [show (15925248 * k + 5162290) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 2581145) = 23887872 * k + 7743436 := by
    unfold C
    simp [show (7962624 * k + 2581145) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 7743436) = 11943936 * k + 3871718 := by
    unfold C
    simp [show (23887872 * k + 7743436) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 3871718) = 5971968 * k + 1935859 := by
    unfold C
    simp [show (11943936 * k + 3871718) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 1935859) = 17915904 * k + 5807578 := by
    unfold C
    simp [show (5971968 * k + 1935859) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 5807578) = 8957952 * k + 2903789 := by
    unfold C
    simp [show (17915904 * k + 5807578) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 2903789) = 26873856 * k + 8711368 := by
    unfold C
    simp [show (8957952 * k + 2903789) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 8711368) = 13436928 * k + 4355684 := by
    unfold C
    simp [show (26873856 * k + 8711368) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 4355684) = 6718464 * k + 2177842 := by
    unfold C
    simp [show (13436928 * k + 4355684) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 2177842) = 3359232 * k + 1088921 := by
    unfold C
    simp [show (6718464 * k + 2177842) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 1088921) = 10077696 * k + 3266764 := by
    unfold C
    simp [show (3359232 * k + 1088921) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 3266764) = 5038848 * k + 1633382 := by
    unfold C
    simp [show (10077696 * k + 3266764) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 1633382) = 2519424 * k + 816691 := by
    unfold C
    simp [show (5038848 * k + 1633382) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 816691) = 7558272 * k + 2450074 := by
    unfold C
    simp [show (2519424 * k + 816691) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 2450074) = 3779136 * k + 1225037 := by
    unfold C
    simp [show (7558272 * k + 2450074) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 1225037) = 11337408 * k + 3675112 := by
    unfold C
    simp [show (3779136 * k + 1225037) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 3675112) = 5668704 * k + 1837556 := by
    unfold C
    simp [show (11337408 * k + 3675112) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 1837556) = 2834352 * k + 918778 := by
    unfold C
    simp [show (5668704 * k + 1837556) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 918778) = 1417176 * k + 459389 := by
    unfold C
    simp [show (2834352 * k + 918778) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 459389) = 4251528 * k + 1378168 := by
    unfold C
    simp [show (1417176 * k + 459389) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 1378168) = 2125764 * k + 689084 := by
    unfold C
    simp [show (4251528 * k + 1378168) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 689084) = 1062882 * k + 344542 := by
    unfold C
    simp [show (2125764 * k + 689084) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 344542) = 531441 * k + 172271 := by
    unfold C
    simp [show (1062882 * k + 344542) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 339903) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 339903)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_340015 : ∀ k : Nat,
    iterate (1048576 * k + 340015) 32 = 531441 * k + 172328 ∧
      531441 * k + 172328 < 1048576 * k + 340015 := by
  intro k
  have h1 : C (1048576 * k + 340015) = 3145728 * k + 1020046 := by
    unfold C
    simp [show (1048576 * k + 340015) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1020046) = 1572864 * k + 510023 := by
    unfold C
    simp [show (3145728 * k + 1020046) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 510023) = 4718592 * k + 1530070 := by
    unfold C
    simp [show (1572864 * k + 510023) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1530070) = 2359296 * k + 765035 := by
    unfold C
    simp [show (4718592 * k + 1530070) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 765035) = 7077888 * k + 2295106 := by
    unfold C
    simp [show (2359296 * k + 765035) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 2295106) = 3538944 * k + 1147553 := by
    unfold C
    simp [show (7077888 * k + 2295106) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1147553) = 10616832 * k + 3442660 := by
    unfold C
    simp [show (3538944 * k + 1147553) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 3442660) = 5308416 * k + 1721330 := by
    unfold C
    simp [show (10616832 * k + 3442660) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 1721330) = 2654208 * k + 860665 := by
    unfold C
    simp [show (5308416 * k + 1721330) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 860665) = 7962624 * k + 2581996 := by
    unfold C
    simp [show (2654208 * k + 860665) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 2581996) = 3981312 * k + 1290998 := by
    unfold C
    simp [show (7962624 * k + 2581996) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 1290998) = 1990656 * k + 645499 := by
    unfold C
    simp [show (3981312 * k + 1290998) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 645499) = 5971968 * k + 1936498 := by
    unfold C
    simp [show (1990656 * k + 645499) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 1936498) = 2985984 * k + 968249 := by
    unfold C
    simp [show (5971968 * k + 1936498) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 968249) = 8957952 * k + 2904748 := by
    unfold C
    simp [show (2985984 * k + 968249) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 2904748) = 4478976 * k + 1452374 := by
    unfold C
    simp [show (8957952 * k + 2904748) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 1452374) = 2239488 * k + 726187 := by
    unfold C
    simp [show (4478976 * k + 1452374) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 726187) = 6718464 * k + 2178562 := by
    unfold C
    simp [show (2239488 * k + 726187) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 2178562) = 3359232 * k + 1089281 := by
    unfold C
    simp [show (6718464 * k + 2178562) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 1089281) = 10077696 * k + 3267844 := by
    unfold C
    simp [show (3359232 * k + 1089281) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 3267844) = 5038848 * k + 1633922 := by
    unfold C
    simp [show (10077696 * k + 3267844) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 1633922) = 2519424 * k + 816961 := by
    unfold C
    simp [show (5038848 * k + 1633922) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 816961) = 7558272 * k + 2450884 := by
    unfold C
    simp [show (2519424 * k + 816961) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 2450884) = 3779136 * k + 1225442 := by
    unfold C
    simp [show (7558272 * k + 2450884) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 1225442) = 1889568 * k + 612721 := by
    unfold C
    simp [show (3779136 * k + 1225442) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 612721) = 5668704 * k + 1838164 := by
    unfold C
    simp [show (1889568 * k + 612721) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 1838164) = 2834352 * k + 919082 := by
    unfold C
    simp [show (5668704 * k + 1838164) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 919082) = 1417176 * k + 459541 := by
    unfold C
    simp [show (2834352 * k + 919082) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 459541) = 4251528 * k + 1378624 := by
    unfold C
    simp [show (1417176 * k + 459541) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 1378624) = 2125764 * k + 689312 := by
    unfold C
    simp [show (4251528 * k + 1378624) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 689312) = 1062882 * k + 344656 := by
    unfold C
    simp [show (2125764 * k + 689312) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 344656) = 531441 * k + 172328 := by
    unfold C
    simp [show (1062882 * k + 344656) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 340015) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 340015)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_340635 : ∀ k : Nat,
    iterate (1048576 * k + 340635) 32 = 531441 * k + 172642 ∧
      531441 * k + 172642 < 1048576 * k + 340635 := by
  intro k
  have h1 : C (1048576 * k + 340635) = 3145728 * k + 1021906 := by
    unfold C
    simp [show (1048576 * k + 340635) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1021906) = 1572864 * k + 510953 := by
    unfold C
    simp [show (3145728 * k + 1021906) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 510953) = 4718592 * k + 1532860 := by
    unfold C
    simp [show (1572864 * k + 510953) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1532860) = 2359296 * k + 766430 := by
    unfold C
    simp [show (4718592 * k + 1532860) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 766430) = 1179648 * k + 383215 := by
    unfold C
    simp [show (2359296 * k + 766430) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 383215) = 3538944 * k + 1149646 := by
    unfold C
    simp [show (1179648 * k + 383215) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 1149646) = 1769472 * k + 574823 := by
    unfold C
    simp [show (3538944 * k + 1149646) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 574823) = 5308416 * k + 1724470 := by
    unfold C
    simp [show (1769472 * k + 574823) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 1724470) = 2654208 * k + 862235 := by
    unfold C
    simp [show (5308416 * k + 1724470) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 862235) = 7962624 * k + 2586706 := by
    unfold C
    simp [show (2654208 * k + 862235) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 2586706) = 3981312 * k + 1293353 := by
    unfold C
    simp [show (7962624 * k + 2586706) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 1293353) = 11943936 * k + 3880060 := by
    unfold C
    simp [show (3981312 * k + 1293353) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 3880060) = 5971968 * k + 1940030 := by
    unfold C
    simp [show (11943936 * k + 3880060) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 1940030) = 2985984 * k + 970015 := by
    unfold C
    simp [show (5971968 * k + 1940030) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 970015) = 8957952 * k + 2910046 := by
    unfold C
    simp [show (2985984 * k + 970015) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 2910046) = 4478976 * k + 1455023 := by
    unfold C
    simp [show (8957952 * k + 2910046) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 1455023) = 13436928 * k + 4365070 := by
    unfold C
    simp [show (4478976 * k + 1455023) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 4365070) = 6718464 * k + 2182535 := by
    unfold C
    simp [show (13436928 * k + 4365070) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 2182535) = 20155392 * k + 6547606 := by
    unfold C
    simp [show (6718464 * k + 2182535) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 6547606) = 10077696 * k + 3273803 := by
    unfold C
    simp [show (20155392 * k + 6547606) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 3273803) = 30233088 * k + 9821410 := by
    unfold C
    simp [show (10077696 * k + 3273803) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 9821410) = 15116544 * k + 4910705 := by
    unfold C
    simp [show (30233088 * k + 9821410) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 4910705) = 45349632 * k + 14732116 := by
    unfold C
    simp [show (15116544 * k + 4910705) % 2 ≠ 0 by omega]
    omega
  have h24 : C (45349632 * k + 14732116) = 22674816 * k + 7366058 := by
    unfold C
    simp [show (45349632 * k + 14732116) % 2 = 0 by omega]
    omega
  have h25 : C (22674816 * k + 7366058) = 11337408 * k + 3683029 := by
    unfold C
    simp [show (22674816 * k + 7366058) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 3683029) = 34012224 * k + 11049088 := by
    unfold C
    simp [show (11337408 * k + 3683029) % 2 ≠ 0 by omega]
    omega
  have h27 : C (34012224 * k + 11049088) = 17006112 * k + 5524544 := by
    unfold C
    simp [show (34012224 * k + 11049088) % 2 = 0 by omega]
    omega
  have h28 : C (17006112 * k + 5524544) = 8503056 * k + 2762272 := by
    unfold C
    simp [show (17006112 * k + 5524544) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 2762272) = 4251528 * k + 1381136 := by
    unfold C
    simp [show (8503056 * k + 2762272) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 1381136) = 2125764 * k + 690568 := by
    unfold C
    simp [show (4251528 * k + 1381136) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 690568) = 1062882 * k + 345284 := by
    unfold C
    simp [show (2125764 * k + 690568) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 345284) = 531441 * k + 172642 := by
    unfold C
    simp [show (1062882 * k + 345284) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 340635) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 340635)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_342271 : ∀ k : Nat,
    iterate (1048576 * k + 342271) 32 = 531441 * k + 173471 ∧
      531441 * k + 173471 < 1048576 * k + 342271 := by
  intro k
  have h1 : C (1048576 * k + 342271) = 3145728 * k + 1026814 := by
    unfold C
    simp [show (1048576 * k + 342271) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1026814) = 1572864 * k + 513407 := by
    unfold C
    simp [show (3145728 * k + 1026814) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 513407) = 4718592 * k + 1540222 := by
    unfold C
    simp [show (1572864 * k + 513407) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1540222) = 2359296 * k + 770111 := by
    unfold C
    simp [show (4718592 * k + 1540222) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 770111) = 7077888 * k + 2310334 := by
    unfold C
    simp [show (2359296 * k + 770111) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 2310334) = 3538944 * k + 1155167 := by
    unfold C
    simp [show (7077888 * k + 2310334) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1155167) = 10616832 * k + 3465502 := by
    unfold C
    simp [show (3538944 * k + 1155167) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 3465502) = 5308416 * k + 1732751 := by
    unfold C
    simp [show (10616832 * k + 3465502) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 1732751) = 15925248 * k + 5198254 := by
    unfold C
    simp [show (5308416 * k + 1732751) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 5198254) = 7962624 * k + 2599127 := by
    unfold C
    simp [show (15925248 * k + 5198254) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 2599127) = 23887872 * k + 7797382 := by
    unfold C
    simp [show (7962624 * k + 2599127) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 7797382) = 11943936 * k + 3898691 := by
    unfold C
    simp [show (23887872 * k + 7797382) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 3898691) = 35831808 * k + 11696074 := by
    unfold C
    simp [show (11943936 * k + 3898691) % 2 ≠ 0 by omega]
    omega
  have h14 : C (35831808 * k + 11696074) = 17915904 * k + 5848037 := by
    unfold C
    simp [show (35831808 * k + 11696074) % 2 = 0 by omega]
    omega
  have h15 : C (17915904 * k + 5848037) = 53747712 * k + 17544112 := by
    unfold C
    simp [show (17915904 * k + 5848037) % 2 ≠ 0 by omega]
    omega
  have h16 : C (53747712 * k + 17544112) = 26873856 * k + 8772056 := by
    unfold C
    simp [show (53747712 * k + 17544112) % 2 = 0 by omega]
    omega
  have h17 : C (26873856 * k + 8772056) = 13436928 * k + 4386028 := by
    unfold C
    simp [show (26873856 * k + 8772056) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 4386028) = 6718464 * k + 2193014 := by
    unfold C
    simp [show (13436928 * k + 4386028) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 2193014) = 3359232 * k + 1096507 := by
    unfold C
    simp [show (6718464 * k + 2193014) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 1096507) = 10077696 * k + 3289522 := by
    unfold C
    simp [show (3359232 * k + 1096507) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 3289522) = 5038848 * k + 1644761 := by
    unfold C
    simp [show (10077696 * k + 3289522) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 1644761) = 15116544 * k + 4934284 := by
    unfold C
    simp [show (5038848 * k + 1644761) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 4934284) = 7558272 * k + 2467142 := by
    unfold C
    simp [show (15116544 * k + 4934284) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 2467142) = 3779136 * k + 1233571 := by
    unfold C
    simp [show (7558272 * k + 2467142) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 1233571) = 11337408 * k + 3700714 := by
    unfold C
    simp [show (3779136 * k + 1233571) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 3700714) = 5668704 * k + 1850357 := by
    unfold C
    simp [show (11337408 * k + 3700714) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 1850357) = 17006112 * k + 5551072 := by
    unfold C
    simp [show (5668704 * k + 1850357) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 5551072) = 8503056 * k + 2775536 := by
    unfold C
    simp [show (17006112 * k + 5551072) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 2775536) = 4251528 * k + 1387768 := by
    unfold C
    simp [show (8503056 * k + 2775536) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 1387768) = 2125764 * k + 693884 := by
    unfold C
    simp [show (4251528 * k + 1387768) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 693884) = 1062882 * k + 346942 := by
    unfold C
    simp [show (2125764 * k + 693884) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 346942) = 531441 * k + 173471 := by
    unfold C
    simp [show (1062882 * k + 346942) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 342271) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 342271)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_342683 : ∀ k : Nat,
    iterate (1048576 * k + 342683) 32 = 531441 * k + 173680 ∧
      531441 * k + 173680 < 1048576 * k + 342683 := by
  intro k
  have h1 : C (1048576 * k + 342683) = 3145728 * k + 1028050 := by
    unfold C
    simp [show (1048576 * k + 342683) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1028050) = 1572864 * k + 514025 := by
    unfold C
    simp [show (3145728 * k + 1028050) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 514025) = 4718592 * k + 1542076 := by
    unfold C
    simp [show (1572864 * k + 514025) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1542076) = 2359296 * k + 771038 := by
    unfold C
    simp [show (4718592 * k + 1542076) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 771038) = 1179648 * k + 385519 := by
    unfold C
    simp [show (2359296 * k + 771038) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 385519) = 3538944 * k + 1156558 := by
    unfold C
    simp [show (1179648 * k + 385519) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 1156558) = 1769472 * k + 578279 := by
    unfold C
    simp [show (3538944 * k + 1156558) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 578279) = 5308416 * k + 1734838 := by
    unfold C
    simp [show (1769472 * k + 578279) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 1734838) = 2654208 * k + 867419 := by
    unfold C
    simp [show (5308416 * k + 1734838) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 867419) = 7962624 * k + 2602258 := by
    unfold C
    simp [show (2654208 * k + 867419) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 2602258) = 3981312 * k + 1301129 := by
    unfold C
    simp [show (7962624 * k + 2602258) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 1301129) = 11943936 * k + 3903388 := by
    unfold C
    simp [show (3981312 * k + 1301129) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 3903388) = 5971968 * k + 1951694 := by
    unfold C
    simp [show (11943936 * k + 3903388) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 1951694) = 2985984 * k + 975847 := by
    unfold C
    simp [show (5971968 * k + 1951694) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 975847) = 8957952 * k + 2927542 := by
    unfold C
    simp [show (2985984 * k + 975847) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 2927542) = 4478976 * k + 1463771 := by
    unfold C
    simp [show (8957952 * k + 2927542) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 1463771) = 13436928 * k + 4391314 := by
    unfold C
    simp [show (4478976 * k + 1463771) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 4391314) = 6718464 * k + 2195657 := by
    unfold C
    simp [show (13436928 * k + 4391314) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 2195657) = 20155392 * k + 6586972 := by
    unfold C
    simp [show (6718464 * k + 2195657) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 6586972) = 10077696 * k + 3293486 := by
    unfold C
    simp [show (20155392 * k + 6586972) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 3293486) = 5038848 * k + 1646743 := by
    unfold C
    simp [show (10077696 * k + 3293486) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 1646743) = 15116544 * k + 4940230 := by
    unfold C
    simp [show (5038848 * k + 1646743) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 4940230) = 7558272 * k + 2470115 := by
    unfold C
    simp [show (15116544 * k + 4940230) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 2470115) = 22674816 * k + 7410346 := by
    unfold C
    simp [show (7558272 * k + 2470115) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 7410346) = 11337408 * k + 3705173 := by
    unfold C
    simp [show (22674816 * k + 7410346) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 3705173) = 34012224 * k + 11115520 := by
    unfold C
    simp [show (11337408 * k + 3705173) % 2 ≠ 0 by omega]
    omega
  have h27 : C (34012224 * k + 11115520) = 17006112 * k + 5557760 := by
    unfold C
    simp [show (34012224 * k + 11115520) % 2 = 0 by omega]
    omega
  have h28 : C (17006112 * k + 5557760) = 8503056 * k + 2778880 := by
    unfold C
    simp [show (17006112 * k + 5557760) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 2778880) = 4251528 * k + 1389440 := by
    unfold C
    simp [show (8503056 * k + 2778880) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 1389440) = 2125764 * k + 694720 := by
    unfold C
    simp [show (4251528 * k + 1389440) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 694720) = 1062882 * k + 347360 := by
    unfold C
    simp [show (2125764 * k + 694720) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 347360) = 531441 * k + 173680 := by
    unfold C
    simp [show (1062882 * k + 347360) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 342683) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 342683)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_342779 : ∀ k : Nat,
    iterate (1048576 * k + 342779) 32 = 531441 * k + 173729 ∧
      531441 * k + 173729 < 1048576 * k + 342779 := by
  intro k
  have h1 : C (1048576 * k + 342779) = 3145728 * k + 1028338 := by
    unfold C
    simp [show (1048576 * k + 342779) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1028338) = 1572864 * k + 514169 := by
    unfold C
    simp [show (3145728 * k + 1028338) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 514169) = 4718592 * k + 1542508 := by
    unfold C
    simp [show (1572864 * k + 514169) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1542508) = 2359296 * k + 771254 := by
    unfold C
    simp [show (4718592 * k + 1542508) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 771254) = 1179648 * k + 385627 := by
    unfold C
    simp [show (2359296 * k + 771254) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 385627) = 3538944 * k + 1156882 := by
    unfold C
    simp [show (1179648 * k + 385627) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 1156882) = 1769472 * k + 578441 := by
    unfold C
    simp [show (3538944 * k + 1156882) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 578441) = 5308416 * k + 1735324 := by
    unfold C
    simp [show (1769472 * k + 578441) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 1735324) = 2654208 * k + 867662 := by
    unfold C
    simp [show (5308416 * k + 1735324) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 867662) = 1327104 * k + 433831 := by
    unfold C
    simp [show (2654208 * k + 867662) % 2 = 0 by omega]
    omega
  have h11 : C (1327104 * k + 433831) = 3981312 * k + 1301494 := by
    unfold C
    simp [show (1327104 * k + 433831) % 2 ≠ 0 by omega]
    omega
  have h12 : C (3981312 * k + 1301494) = 1990656 * k + 650747 := by
    unfold C
    simp [show (3981312 * k + 1301494) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 650747) = 5971968 * k + 1952242 := by
    unfold C
    simp [show (1990656 * k + 650747) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 1952242) = 2985984 * k + 976121 := by
    unfold C
    simp [show (5971968 * k + 1952242) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 976121) = 8957952 * k + 2928364 := by
    unfold C
    simp [show (2985984 * k + 976121) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 2928364) = 4478976 * k + 1464182 := by
    unfold C
    simp [show (8957952 * k + 2928364) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 1464182) = 2239488 * k + 732091 := by
    unfold C
    simp [show (4478976 * k + 1464182) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 732091) = 6718464 * k + 2196274 := by
    unfold C
    simp [show (2239488 * k + 732091) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 2196274) = 3359232 * k + 1098137 := by
    unfold C
    simp [show (6718464 * k + 2196274) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 1098137) = 10077696 * k + 3294412 := by
    unfold C
    simp [show (3359232 * k + 1098137) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 3294412) = 5038848 * k + 1647206 := by
    unfold C
    simp [show (10077696 * k + 3294412) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 1647206) = 2519424 * k + 823603 := by
    unfold C
    simp [show (5038848 * k + 1647206) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 823603) = 7558272 * k + 2470810 := by
    unfold C
    simp [show (2519424 * k + 823603) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 2470810) = 3779136 * k + 1235405 := by
    unfold C
    simp [show (7558272 * k + 2470810) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 1235405) = 11337408 * k + 3706216 := by
    unfold C
    simp [show (3779136 * k + 1235405) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 3706216) = 5668704 * k + 1853108 := by
    unfold C
    simp [show (11337408 * k + 3706216) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 1853108) = 2834352 * k + 926554 := by
    unfold C
    simp [show (5668704 * k + 1853108) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 926554) = 1417176 * k + 463277 := by
    unfold C
    simp [show (2834352 * k + 926554) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 463277) = 4251528 * k + 1389832 := by
    unfold C
    simp [show (1417176 * k + 463277) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 1389832) = 2125764 * k + 694916 := by
    unfold C
    simp [show (4251528 * k + 1389832) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 694916) = 1062882 * k + 347458 := by
    unfold C
    simp [show (2125764 * k + 694916) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 347458) = 531441 * k + 173729 := by
    unfold C
    simp [show (1062882 * k + 347458) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 342779) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 342779)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_342815 : ∀ k : Nat,
    iterate (1048576 * k + 342815) 32 = 531441 * k + 173747 ∧
      531441 * k + 173747 < 1048576 * k + 342815 := by
  intro k
  have h1 : C (1048576 * k + 342815) = 3145728 * k + 1028446 := by
    unfold C
    simp [show (1048576 * k + 342815) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1028446) = 1572864 * k + 514223 := by
    unfold C
    simp [show (3145728 * k + 1028446) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 514223) = 4718592 * k + 1542670 := by
    unfold C
    simp [show (1572864 * k + 514223) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1542670) = 2359296 * k + 771335 := by
    unfold C
    simp [show (4718592 * k + 1542670) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 771335) = 7077888 * k + 2314006 := by
    unfold C
    simp [show (2359296 * k + 771335) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 2314006) = 3538944 * k + 1157003 := by
    unfold C
    simp [show (7077888 * k + 2314006) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1157003) = 10616832 * k + 3471010 := by
    unfold C
    simp [show (3538944 * k + 1157003) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 3471010) = 5308416 * k + 1735505 := by
    unfold C
    simp [show (10616832 * k + 3471010) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 1735505) = 15925248 * k + 5206516 := by
    unfold C
    simp [show (5308416 * k + 1735505) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 5206516) = 7962624 * k + 2603258 := by
    unfold C
    simp [show (15925248 * k + 5206516) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 2603258) = 3981312 * k + 1301629 := by
    unfold C
    simp [show (7962624 * k + 2603258) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 1301629) = 11943936 * k + 3904888 := by
    unfold C
    simp [show (3981312 * k + 1301629) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 3904888) = 5971968 * k + 1952444 := by
    unfold C
    simp [show (11943936 * k + 3904888) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 1952444) = 2985984 * k + 976222 := by
    unfold C
    simp [show (5971968 * k + 1952444) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 976222) = 1492992 * k + 488111 := by
    unfold C
    simp [show (2985984 * k + 976222) % 2 = 0 by omega]
    omega
  have h16 : C (1492992 * k + 488111) = 4478976 * k + 1464334 := by
    unfold C
    simp [show (1492992 * k + 488111) % 2 ≠ 0 by omega]
    omega
  have h17 : C (4478976 * k + 1464334) = 2239488 * k + 732167 := by
    unfold C
    simp [show (4478976 * k + 1464334) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 732167) = 6718464 * k + 2196502 := by
    unfold C
    simp [show (2239488 * k + 732167) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 2196502) = 3359232 * k + 1098251 := by
    unfold C
    simp [show (6718464 * k + 2196502) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 1098251) = 10077696 * k + 3294754 := by
    unfold C
    simp [show (3359232 * k + 1098251) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 3294754) = 5038848 * k + 1647377 := by
    unfold C
    simp [show (10077696 * k + 3294754) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 1647377) = 15116544 * k + 4942132 := by
    unfold C
    simp [show (5038848 * k + 1647377) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 4942132) = 7558272 * k + 2471066 := by
    unfold C
    simp [show (15116544 * k + 4942132) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 2471066) = 3779136 * k + 1235533 := by
    unfold C
    simp [show (7558272 * k + 2471066) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 1235533) = 11337408 * k + 3706600 := by
    unfold C
    simp [show (3779136 * k + 1235533) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 3706600) = 5668704 * k + 1853300 := by
    unfold C
    simp [show (11337408 * k + 3706600) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 1853300) = 2834352 * k + 926650 := by
    unfold C
    simp [show (5668704 * k + 1853300) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 926650) = 1417176 * k + 463325 := by
    unfold C
    simp [show (2834352 * k + 926650) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 463325) = 4251528 * k + 1389976 := by
    unfold C
    simp [show (1417176 * k + 463325) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 1389976) = 2125764 * k + 694988 := by
    unfold C
    simp [show (4251528 * k + 1389976) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 694988) = 1062882 * k + 347494 := by
    unfold C
    simp [show (2125764 * k + 694988) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 347494) = 531441 * k + 173747 := by
    unfold C
    simp [show (1062882 * k + 347494) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 342815) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 342815)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_343295 : ∀ k : Nat,
    iterate (1048576 * k + 343295) 32 = 531441 * k + 173990 ∧
      531441 * k + 173990 < 1048576 * k + 343295 := by
  intro k
  have h1 : C (1048576 * k + 343295) = 3145728 * k + 1029886 := by
    unfold C
    simp [show (1048576 * k + 343295) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1029886) = 1572864 * k + 514943 := by
    unfold C
    simp [show (3145728 * k + 1029886) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 514943) = 4718592 * k + 1544830 := by
    unfold C
    simp [show (1572864 * k + 514943) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1544830) = 2359296 * k + 772415 := by
    unfold C
    simp [show (4718592 * k + 1544830) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 772415) = 7077888 * k + 2317246 := by
    unfold C
    simp [show (2359296 * k + 772415) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 2317246) = 3538944 * k + 1158623 := by
    unfold C
    simp [show (7077888 * k + 2317246) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1158623) = 10616832 * k + 3475870 := by
    unfold C
    simp [show (3538944 * k + 1158623) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 3475870) = 5308416 * k + 1737935 := by
    unfold C
    simp [show (10616832 * k + 3475870) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 1737935) = 15925248 * k + 5213806 := by
    unfold C
    simp [show (5308416 * k + 1737935) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 5213806) = 7962624 * k + 2606903 := by
    unfold C
    simp [show (15925248 * k + 5213806) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 2606903) = 23887872 * k + 7820710 := by
    unfold C
    simp [show (7962624 * k + 2606903) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 7820710) = 11943936 * k + 3910355 := by
    unfold C
    simp [show (23887872 * k + 7820710) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 3910355) = 35831808 * k + 11731066 := by
    unfold C
    simp [show (11943936 * k + 3910355) % 2 ≠ 0 by omega]
    omega
  have h14 : C (35831808 * k + 11731066) = 17915904 * k + 5865533 := by
    unfold C
    simp [show (35831808 * k + 11731066) % 2 = 0 by omega]
    omega
  have h15 : C (17915904 * k + 5865533) = 53747712 * k + 17596600 := by
    unfold C
    simp [show (17915904 * k + 5865533) % 2 ≠ 0 by omega]
    omega
  have h16 : C (53747712 * k + 17596600) = 26873856 * k + 8798300 := by
    unfold C
    simp [show (53747712 * k + 17596600) % 2 = 0 by omega]
    omega
  have h17 : C (26873856 * k + 8798300) = 13436928 * k + 4399150 := by
    unfold C
    simp [show (26873856 * k + 8798300) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 4399150) = 6718464 * k + 2199575 := by
    unfold C
    simp [show (13436928 * k + 4399150) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 2199575) = 20155392 * k + 6598726 := by
    unfold C
    simp [show (6718464 * k + 2199575) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 6598726) = 10077696 * k + 3299363 := by
    unfold C
    simp [show (20155392 * k + 6598726) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 3299363) = 30233088 * k + 9898090 := by
    unfold C
    simp [show (10077696 * k + 3299363) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 9898090) = 15116544 * k + 4949045 := by
    unfold C
    simp [show (30233088 * k + 9898090) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 4949045) = 45349632 * k + 14847136 := by
    unfold C
    simp [show (15116544 * k + 4949045) % 2 ≠ 0 by omega]
    omega
  have h24 : C (45349632 * k + 14847136) = 22674816 * k + 7423568 := by
    unfold C
    simp [show (45349632 * k + 14847136) % 2 = 0 by omega]
    omega
  have h25 : C (22674816 * k + 7423568) = 11337408 * k + 3711784 := by
    unfold C
    simp [show (22674816 * k + 7423568) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 3711784) = 5668704 * k + 1855892 := by
    unfold C
    simp [show (11337408 * k + 3711784) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 1855892) = 2834352 * k + 927946 := by
    unfold C
    simp [show (5668704 * k + 1855892) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 927946) = 1417176 * k + 463973 := by
    unfold C
    simp [show (2834352 * k + 927946) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 463973) = 4251528 * k + 1391920 := by
    unfold C
    simp [show (1417176 * k + 463973) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 1391920) = 2125764 * k + 695960 := by
    unfold C
    simp [show (4251528 * k + 1391920) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 695960) = 1062882 * k + 347980 := by
    unfold C
    simp [show (2125764 * k + 695960) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 347980) = 531441 * k + 173990 := by
    unfold C
    simp [show (1062882 * k + 347980) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 343295) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 343295)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_344127 : ∀ k : Nat,
    iterate (1048576 * k + 344127) 32 = 531441 * k + 174412 ∧
      531441 * k + 174412 < 1048576 * k + 344127 := by
  intro k
  have h1 : C (1048576 * k + 344127) = 3145728 * k + 1032382 := by
    unfold C
    simp [show (1048576 * k + 344127) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1032382) = 1572864 * k + 516191 := by
    unfold C
    simp [show (3145728 * k + 1032382) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 516191) = 4718592 * k + 1548574 := by
    unfold C
    simp [show (1572864 * k + 516191) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1548574) = 2359296 * k + 774287 := by
    unfold C
    simp [show (4718592 * k + 1548574) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 774287) = 7077888 * k + 2322862 := by
    unfold C
    simp [show (2359296 * k + 774287) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 2322862) = 3538944 * k + 1161431 := by
    unfold C
    simp [show (7077888 * k + 2322862) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1161431) = 10616832 * k + 3484294 := by
    unfold C
    simp [show (3538944 * k + 1161431) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 3484294) = 5308416 * k + 1742147 := by
    unfold C
    simp [show (10616832 * k + 3484294) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 1742147) = 15925248 * k + 5226442 := by
    unfold C
    simp [show (5308416 * k + 1742147) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 5226442) = 7962624 * k + 2613221 := by
    unfold C
    simp [show (15925248 * k + 5226442) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 2613221) = 23887872 * k + 7839664 := by
    unfold C
    simp [show (7962624 * k + 2613221) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 7839664) = 11943936 * k + 3919832 := by
    unfold C
    simp [show (23887872 * k + 7839664) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 3919832) = 5971968 * k + 1959916 := by
    unfold C
    simp [show (11943936 * k + 3919832) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 1959916) = 2985984 * k + 979958 := by
    unfold C
    simp [show (5971968 * k + 1959916) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 979958) = 1492992 * k + 489979 := by
    unfold C
    simp [show (2985984 * k + 979958) % 2 = 0 by omega]
    omega
  have h16 : C (1492992 * k + 489979) = 4478976 * k + 1469938 := by
    unfold C
    simp [show (1492992 * k + 489979) % 2 ≠ 0 by omega]
    omega
  have h17 : C (4478976 * k + 1469938) = 2239488 * k + 734969 := by
    unfold C
    simp [show (4478976 * k + 1469938) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 734969) = 6718464 * k + 2204908 := by
    unfold C
    simp [show (2239488 * k + 734969) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 2204908) = 3359232 * k + 1102454 := by
    unfold C
    simp [show (6718464 * k + 2204908) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 1102454) = 1679616 * k + 551227 := by
    unfold C
    simp [show (3359232 * k + 1102454) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 551227) = 5038848 * k + 1653682 := by
    unfold C
    simp [show (1679616 * k + 551227) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 1653682) = 2519424 * k + 826841 := by
    unfold C
    simp [show (5038848 * k + 1653682) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 826841) = 7558272 * k + 2480524 := by
    unfold C
    simp [show (2519424 * k + 826841) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 2480524) = 3779136 * k + 1240262 := by
    unfold C
    simp [show (7558272 * k + 2480524) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 1240262) = 1889568 * k + 620131 := by
    unfold C
    simp [show (3779136 * k + 1240262) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 620131) = 5668704 * k + 1860394 := by
    unfold C
    simp [show (1889568 * k + 620131) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 1860394) = 2834352 * k + 930197 := by
    unfold C
    simp [show (5668704 * k + 1860394) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 930197) = 8503056 * k + 2790592 := by
    unfold C
    simp [show (2834352 * k + 930197) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 2790592) = 4251528 * k + 1395296 := by
    unfold C
    simp [show (8503056 * k + 2790592) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 1395296) = 2125764 * k + 697648 := by
    unfold C
    simp [show (4251528 * k + 1395296) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 697648) = 1062882 * k + 348824 := by
    unfold C
    simp [show (2125764 * k + 697648) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 348824) = 531441 * k + 174412 := by
    unfold C
    simp [show (1062882 * k + 348824) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 344127) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 344127)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

end CollatzM20Shard044
