import Mathlib.Data.Nat.Prime.Basic

namespace CollatzM20Shard057

def C (n : Nat) : Nat := if n % 2 = 0 then n / 2 else 3 * n + 1

def iterate (n t : Nat) : Nat := Nat.rec n (fun _ previous => C previous) t

theorem descent_mod1048576_446299 : ∀ k : Nat,
    iterate (1048576 * k + 446299) 32 = 531441 * k + 226195 ∧
      531441 * k + 226195 < 1048576 * k + 446299 := by
  intro k
  have h1 : C (1048576 * k + 446299) = 3145728 * k + 1338898 := by
    unfold C
    simp [show (1048576 * k + 446299) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1338898) = 1572864 * k + 669449 := by
    unfold C
    simp [show (3145728 * k + 1338898) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 669449) = 4718592 * k + 2008348 := by
    unfold C
    simp [show (1572864 * k + 669449) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2008348) = 2359296 * k + 1004174 := by
    unfold C
    simp [show (4718592 * k + 2008348) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1004174) = 1179648 * k + 502087 := by
    unfold C
    simp [show (2359296 * k + 1004174) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 502087) = 3538944 * k + 1506262 := by
    unfold C
    simp [show (1179648 * k + 502087) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 1506262) = 1769472 * k + 753131 := by
    unfold C
    simp [show (3538944 * k + 1506262) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 753131) = 5308416 * k + 2259394 := by
    unfold C
    simp [show (1769472 * k + 753131) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 2259394) = 2654208 * k + 1129697 := by
    unfold C
    simp [show (5308416 * k + 2259394) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1129697) = 7962624 * k + 3389092 := by
    unfold C
    simp [show (2654208 * k + 1129697) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 3389092) = 3981312 * k + 1694546 := by
    unfold C
    simp [show (7962624 * k + 3389092) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 1694546) = 1990656 * k + 847273 := by
    unfold C
    simp [show (3981312 * k + 1694546) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 847273) = 5971968 * k + 2541820 := by
    unfold C
    simp [show (1990656 * k + 847273) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 2541820) = 2985984 * k + 1270910 := by
    unfold C
    simp [show (5971968 * k + 2541820) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1270910) = 1492992 * k + 635455 := by
    unfold C
    simp [show (2985984 * k + 1270910) % 2 = 0 by omega]
    omega
  have h16 : C (1492992 * k + 635455) = 4478976 * k + 1906366 := by
    unfold C
    simp [show (1492992 * k + 635455) % 2 ≠ 0 by omega]
    omega
  have h17 : C (4478976 * k + 1906366) = 2239488 * k + 953183 := by
    unfold C
    simp [show (4478976 * k + 1906366) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 953183) = 6718464 * k + 2859550 := by
    unfold C
    simp [show (2239488 * k + 953183) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 2859550) = 3359232 * k + 1429775 := by
    unfold C
    simp [show (6718464 * k + 2859550) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 1429775) = 10077696 * k + 4289326 := by
    unfold C
    simp [show (3359232 * k + 1429775) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 4289326) = 5038848 * k + 2144663 := by
    unfold C
    simp [show (10077696 * k + 4289326) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 2144663) = 15116544 * k + 6433990 := by
    unfold C
    simp [show (5038848 * k + 2144663) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 6433990) = 7558272 * k + 3216995 := by
    unfold C
    simp [show (15116544 * k + 6433990) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 3216995) = 22674816 * k + 9650986 := by
    unfold C
    simp [show (7558272 * k + 3216995) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 9650986) = 11337408 * k + 4825493 := by
    unfold C
    simp [show (22674816 * k + 9650986) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 4825493) = 34012224 * k + 14476480 := by
    unfold C
    simp [show (11337408 * k + 4825493) % 2 ≠ 0 by omega]
    omega
  have h27 : C (34012224 * k + 14476480) = 17006112 * k + 7238240 := by
    unfold C
    simp [show (34012224 * k + 14476480) % 2 = 0 by omega]
    omega
  have h28 : C (17006112 * k + 7238240) = 8503056 * k + 3619120 := by
    unfold C
    simp [show (17006112 * k + 7238240) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 3619120) = 4251528 * k + 1809560 := by
    unfold C
    simp [show (8503056 * k + 3619120) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 1809560) = 2125764 * k + 904780 := by
    unfold C
    simp [show (4251528 * k + 1809560) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 904780) = 1062882 * k + 452390 := by
    unfold C
    simp [show (2125764 * k + 904780) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 452390) = 531441 * k + 226195 := by
    unfold C
    simp [show (1062882 * k + 452390) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 446299) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 446299)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_447023 : ∀ k : Nat,
    iterate (1048576 * k + 447023) 32 = 531441 * k + 226562 ∧
      531441 * k + 226562 < 1048576 * k + 447023 := by
  intro k
  have h1 : C (1048576 * k + 447023) = 3145728 * k + 1341070 := by
    unfold C
    simp [show (1048576 * k + 447023) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1341070) = 1572864 * k + 670535 := by
    unfold C
    simp [show (3145728 * k + 1341070) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 670535) = 4718592 * k + 2011606 := by
    unfold C
    simp [show (1572864 * k + 670535) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2011606) = 2359296 * k + 1005803 := by
    unfold C
    simp [show (4718592 * k + 2011606) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1005803) = 7077888 * k + 3017410 := by
    unfold C
    simp [show (2359296 * k + 1005803) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 3017410) = 3538944 * k + 1508705 := by
    unfold C
    simp [show (7077888 * k + 3017410) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1508705) = 10616832 * k + 4526116 := by
    unfold C
    simp [show (3538944 * k + 1508705) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 4526116) = 5308416 * k + 2263058 := by
    unfold C
    simp [show (10616832 * k + 4526116) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 2263058) = 2654208 * k + 1131529 := by
    unfold C
    simp [show (5308416 * k + 2263058) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1131529) = 7962624 * k + 3394588 := by
    unfold C
    simp [show (2654208 * k + 1131529) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 3394588) = 3981312 * k + 1697294 := by
    unfold C
    simp [show (7962624 * k + 3394588) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 1697294) = 1990656 * k + 848647 := by
    unfold C
    simp [show (3981312 * k + 1697294) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 848647) = 5971968 * k + 2545942 := by
    unfold C
    simp [show (1990656 * k + 848647) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 2545942) = 2985984 * k + 1272971 := by
    unfold C
    simp [show (5971968 * k + 2545942) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1272971) = 8957952 * k + 3818914 := by
    unfold C
    simp [show (2985984 * k + 1272971) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 3818914) = 4478976 * k + 1909457 := by
    unfold C
    simp [show (8957952 * k + 3818914) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 1909457) = 13436928 * k + 5728372 := by
    unfold C
    simp [show (4478976 * k + 1909457) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 5728372) = 6718464 * k + 2864186 := by
    unfold C
    simp [show (13436928 * k + 5728372) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 2864186) = 3359232 * k + 1432093 := by
    unfold C
    simp [show (6718464 * k + 2864186) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 1432093) = 10077696 * k + 4296280 := by
    unfold C
    simp [show (3359232 * k + 1432093) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 4296280) = 5038848 * k + 2148140 := by
    unfold C
    simp [show (10077696 * k + 4296280) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 2148140) = 2519424 * k + 1074070 := by
    unfold C
    simp [show (5038848 * k + 2148140) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1074070) = 1259712 * k + 537035 := by
    unfold C
    simp [show (2519424 * k + 1074070) % 2 = 0 by omega]
    omega
  have h24 : C (1259712 * k + 537035) = 3779136 * k + 1611106 := by
    unfold C
    simp [show (1259712 * k + 537035) % 2 ≠ 0 by omega]
    omega
  have h25 : C (3779136 * k + 1611106) = 1889568 * k + 805553 := by
    unfold C
    simp [show (3779136 * k + 1611106) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 805553) = 5668704 * k + 2416660 := by
    unfold C
    simp [show (1889568 * k + 805553) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 2416660) = 2834352 * k + 1208330 := by
    unfold C
    simp [show (5668704 * k + 2416660) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1208330) = 1417176 * k + 604165 := by
    unfold C
    simp [show (2834352 * k + 1208330) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 604165) = 4251528 * k + 1812496 := by
    unfold C
    simp [show (1417176 * k + 604165) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 1812496) = 2125764 * k + 906248 := by
    unfold C
    simp [show (4251528 * k + 1812496) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 906248) = 1062882 * k + 453124 := by
    unfold C
    simp [show (2125764 * k + 906248) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 453124) = 531441 * k + 226562 := by
    unfold C
    simp [show (1062882 * k + 453124) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 447023) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 447023)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_447183 : ∀ k : Nat,
    iterate (1048576 * k + 447183) 32 = 531441 * k + 226643 ∧
      531441 * k + 226643 < 1048576 * k + 447183 := by
  intro k
  have h1 : C (1048576 * k + 447183) = 3145728 * k + 1341550 := by
    unfold C
    simp [show (1048576 * k + 447183) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1341550) = 1572864 * k + 670775 := by
    unfold C
    simp [show (3145728 * k + 1341550) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 670775) = 4718592 * k + 2012326 := by
    unfold C
    simp [show (1572864 * k + 670775) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2012326) = 2359296 * k + 1006163 := by
    unfold C
    simp [show (4718592 * k + 2012326) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1006163) = 7077888 * k + 3018490 := by
    unfold C
    simp [show (2359296 * k + 1006163) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 3018490) = 3538944 * k + 1509245 := by
    unfold C
    simp [show (7077888 * k + 3018490) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1509245) = 10616832 * k + 4527736 := by
    unfold C
    simp [show (3538944 * k + 1509245) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 4527736) = 5308416 * k + 2263868 := by
    unfold C
    simp [show (10616832 * k + 4527736) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 2263868) = 2654208 * k + 1131934 := by
    unfold C
    simp [show (5308416 * k + 2263868) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1131934) = 1327104 * k + 565967 := by
    unfold C
    simp [show (2654208 * k + 1131934) % 2 = 0 by omega]
    omega
  have h11 : C (1327104 * k + 565967) = 3981312 * k + 1697902 := by
    unfold C
    simp [show (1327104 * k + 565967) % 2 ≠ 0 by omega]
    omega
  have h12 : C (3981312 * k + 1697902) = 1990656 * k + 848951 := by
    unfold C
    simp [show (3981312 * k + 1697902) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 848951) = 5971968 * k + 2546854 := by
    unfold C
    simp [show (1990656 * k + 848951) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 2546854) = 2985984 * k + 1273427 := by
    unfold C
    simp [show (5971968 * k + 2546854) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1273427) = 8957952 * k + 3820282 := by
    unfold C
    simp [show (2985984 * k + 1273427) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 3820282) = 4478976 * k + 1910141 := by
    unfold C
    simp [show (8957952 * k + 3820282) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 1910141) = 13436928 * k + 5730424 := by
    unfold C
    simp [show (4478976 * k + 1910141) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 5730424) = 6718464 * k + 2865212 := by
    unfold C
    simp [show (13436928 * k + 5730424) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 2865212) = 3359232 * k + 1432606 := by
    unfold C
    simp [show (6718464 * k + 2865212) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 1432606) = 1679616 * k + 716303 := by
    unfold C
    simp [show (3359232 * k + 1432606) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 716303) = 5038848 * k + 2148910 := by
    unfold C
    simp [show (1679616 * k + 716303) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 2148910) = 2519424 * k + 1074455 := by
    unfold C
    simp [show (5038848 * k + 2148910) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1074455) = 7558272 * k + 3223366 := by
    unfold C
    simp [show (2519424 * k + 1074455) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 3223366) = 3779136 * k + 1611683 := by
    unfold C
    simp [show (7558272 * k + 3223366) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 1611683) = 11337408 * k + 4835050 := by
    unfold C
    simp [show (3779136 * k + 1611683) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 4835050) = 5668704 * k + 2417525 := by
    unfold C
    simp [show (11337408 * k + 4835050) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 2417525) = 17006112 * k + 7252576 := by
    unfold C
    simp [show (5668704 * k + 2417525) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 7252576) = 8503056 * k + 3626288 := by
    unfold C
    simp [show (17006112 * k + 7252576) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 3626288) = 4251528 * k + 1813144 := by
    unfold C
    simp [show (8503056 * k + 3626288) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 1813144) = 2125764 * k + 906572 := by
    unfold C
    simp [show (4251528 * k + 1813144) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 906572) = 1062882 * k + 453286 := by
    unfold C
    simp [show (2125764 * k + 906572) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 453286) = 531441 * k + 226643 := by
    unfold C
    simp [show (1062882 * k + 453286) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 447183) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 447183)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_447231 : ∀ k : Nat,
    iterate (1048576 * k + 447231) 32 = 531441 * k + 226667 ∧
      531441 * k + 226667 < 1048576 * k + 447231 := by
  intro k
  have h1 : C (1048576 * k + 447231) = 3145728 * k + 1341694 := by
    unfold C
    simp [show (1048576 * k + 447231) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1341694) = 1572864 * k + 670847 := by
    unfold C
    simp [show (3145728 * k + 1341694) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 670847) = 4718592 * k + 2012542 := by
    unfold C
    simp [show (1572864 * k + 670847) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2012542) = 2359296 * k + 1006271 := by
    unfold C
    simp [show (4718592 * k + 2012542) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1006271) = 7077888 * k + 3018814 := by
    unfold C
    simp [show (2359296 * k + 1006271) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 3018814) = 3538944 * k + 1509407 := by
    unfold C
    simp [show (7077888 * k + 3018814) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1509407) = 10616832 * k + 4528222 := by
    unfold C
    simp [show (3538944 * k + 1509407) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 4528222) = 5308416 * k + 2264111 := by
    unfold C
    simp [show (10616832 * k + 4528222) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 2264111) = 15925248 * k + 6792334 := by
    unfold C
    simp [show (5308416 * k + 2264111) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 6792334) = 7962624 * k + 3396167 := by
    unfold C
    simp [show (15925248 * k + 6792334) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 3396167) = 23887872 * k + 10188502 := by
    unfold C
    simp [show (7962624 * k + 3396167) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 10188502) = 11943936 * k + 5094251 := by
    unfold C
    simp [show (23887872 * k + 10188502) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 5094251) = 35831808 * k + 15282754 := by
    unfold C
    simp [show (11943936 * k + 5094251) % 2 ≠ 0 by omega]
    omega
  have h14 : C (35831808 * k + 15282754) = 17915904 * k + 7641377 := by
    unfold C
    simp [show (35831808 * k + 15282754) % 2 = 0 by omega]
    omega
  have h15 : C (17915904 * k + 7641377) = 53747712 * k + 22924132 := by
    unfold C
    simp [show (17915904 * k + 7641377) % 2 ≠ 0 by omega]
    omega
  have h16 : C (53747712 * k + 22924132) = 26873856 * k + 11462066 := by
    unfold C
    simp [show (53747712 * k + 22924132) % 2 = 0 by omega]
    omega
  have h17 : C (26873856 * k + 11462066) = 13436928 * k + 5731033 := by
    unfold C
    simp [show (26873856 * k + 11462066) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 5731033) = 40310784 * k + 17193100 := by
    unfold C
    simp [show (13436928 * k + 5731033) % 2 ≠ 0 by omega]
    omega
  have h19 : C (40310784 * k + 17193100) = 20155392 * k + 8596550 := by
    unfold C
    simp [show (40310784 * k + 17193100) % 2 = 0 by omega]
    omega
  have h20 : C (20155392 * k + 8596550) = 10077696 * k + 4298275 := by
    unfold C
    simp [show (20155392 * k + 8596550) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 4298275) = 30233088 * k + 12894826 := by
    unfold C
    simp [show (10077696 * k + 4298275) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 12894826) = 15116544 * k + 6447413 := by
    unfold C
    simp [show (30233088 * k + 12894826) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 6447413) = 45349632 * k + 19342240 := by
    unfold C
    simp [show (15116544 * k + 6447413) % 2 ≠ 0 by omega]
    omega
  have h24 : C (45349632 * k + 19342240) = 22674816 * k + 9671120 := by
    unfold C
    simp [show (45349632 * k + 19342240) % 2 = 0 by omega]
    omega
  have h25 : C (22674816 * k + 9671120) = 11337408 * k + 4835560 := by
    unfold C
    simp [show (22674816 * k + 9671120) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 4835560) = 5668704 * k + 2417780 := by
    unfold C
    simp [show (11337408 * k + 4835560) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 2417780) = 2834352 * k + 1208890 := by
    unfold C
    simp [show (5668704 * k + 2417780) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1208890) = 1417176 * k + 604445 := by
    unfold C
    simp [show (2834352 * k + 1208890) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 604445) = 4251528 * k + 1813336 := by
    unfold C
    simp [show (1417176 * k + 604445) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 1813336) = 2125764 * k + 906668 := by
    unfold C
    simp [show (4251528 * k + 1813336) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 906668) = 1062882 * k + 453334 := by
    unfold C
    simp [show (2125764 * k + 906668) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 453334) = 531441 * k + 226667 := by
    unfold C
    simp [show (1062882 * k + 453334) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 447231) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 447231)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_448207 : ∀ k : Nat,
    iterate (1048576 * k + 448207) 32 = 531441 * k + 227162 ∧
      531441 * k + 227162 < 1048576 * k + 448207 := by
  intro k
  have h1 : C (1048576 * k + 448207) = 3145728 * k + 1344622 := by
    unfold C
    simp [show (1048576 * k + 448207) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1344622) = 1572864 * k + 672311 := by
    unfold C
    simp [show (3145728 * k + 1344622) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 672311) = 4718592 * k + 2016934 := by
    unfold C
    simp [show (1572864 * k + 672311) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2016934) = 2359296 * k + 1008467 := by
    unfold C
    simp [show (4718592 * k + 2016934) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1008467) = 7077888 * k + 3025402 := by
    unfold C
    simp [show (2359296 * k + 1008467) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 3025402) = 3538944 * k + 1512701 := by
    unfold C
    simp [show (7077888 * k + 3025402) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1512701) = 10616832 * k + 4538104 := by
    unfold C
    simp [show (3538944 * k + 1512701) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 4538104) = 5308416 * k + 2269052 := by
    unfold C
    simp [show (10616832 * k + 4538104) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 2269052) = 2654208 * k + 1134526 := by
    unfold C
    simp [show (5308416 * k + 2269052) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1134526) = 1327104 * k + 567263 := by
    unfold C
    simp [show (2654208 * k + 1134526) % 2 = 0 by omega]
    omega
  have h11 : C (1327104 * k + 567263) = 3981312 * k + 1701790 := by
    unfold C
    simp [show (1327104 * k + 567263) % 2 ≠ 0 by omega]
    omega
  have h12 : C (3981312 * k + 1701790) = 1990656 * k + 850895 := by
    unfold C
    simp [show (3981312 * k + 1701790) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 850895) = 5971968 * k + 2552686 := by
    unfold C
    simp [show (1990656 * k + 850895) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 2552686) = 2985984 * k + 1276343 := by
    unfold C
    simp [show (5971968 * k + 2552686) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1276343) = 8957952 * k + 3829030 := by
    unfold C
    simp [show (2985984 * k + 1276343) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 3829030) = 4478976 * k + 1914515 := by
    unfold C
    simp [show (8957952 * k + 3829030) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 1914515) = 13436928 * k + 5743546 := by
    unfold C
    simp [show (4478976 * k + 1914515) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 5743546) = 6718464 * k + 2871773 := by
    unfold C
    simp [show (13436928 * k + 5743546) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 2871773) = 20155392 * k + 8615320 := by
    unfold C
    simp [show (6718464 * k + 2871773) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 8615320) = 10077696 * k + 4307660 := by
    unfold C
    simp [show (20155392 * k + 8615320) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 4307660) = 5038848 * k + 2153830 := by
    unfold C
    simp [show (10077696 * k + 4307660) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 2153830) = 2519424 * k + 1076915 := by
    unfold C
    simp [show (5038848 * k + 2153830) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1076915) = 7558272 * k + 3230746 := by
    unfold C
    simp [show (2519424 * k + 1076915) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 3230746) = 3779136 * k + 1615373 := by
    unfold C
    simp [show (7558272 * k + 3230746) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 1615373) = 11337408 * k + 4846120 := by
    unfold C
    simp [show (3779136 * k + 1615373) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 4846120) = 5668704 * k + 2423060 := by
    unfold C
    simp [show (11337408 * k + 4846120) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 2423060) = 2834352 * k + 1211530 := by
    unfold C
    simp [show (5668704 * k + 2423060) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1211530) = 1417176 * k + 605765 := by
    unfold C
    simp [show (2834352 * k + 1211530) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 605765) = 4251528 * k + 1817296 := by
    unfold C
    simp [show (1417176 * k + 605765) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 1817296) = 2125764 * k + 908648 := by
    unfold C
    simp [show (4251528 * k + 1817296) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 908648) = 1062882 * k + 454324 := by
    unfold C
    simp [show (2125764 * k + 908648) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 454324) = 531441 * k + 227162 := by
    unfold C
    simp [show (1062882 * k + 454324) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 448207) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 448207)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_448231 : ∀ k : Nat,
    iterate (1048576 * k + 448231) 32 = 531441 * k + 227174 ∧
      531441 * k + 227174 < 1048576 * k + 448231 := by
  intro k
  have h1 : C (1048576 * k + 448231) = 3145728 * k + 1344694 := by
    unfold C
    simp [show (1048576 * k + 448231) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1344694) = 1572864 * k + 672347 := by
    unfold C
    simp [show (3145728 * k + 1344694) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 672347) = 4718592 * k + 2017042 := by
    unfold C
    simp [show (1572864 * k + 672347) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2017042) = 2359296 * k + 1008521 := by
    unfold C
    simp [show (4718592 * k + 2017042) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1008521) = 7077888 * k + 3025564 := by
    unfold C
    simp [show (2359296 * k + 1008521) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 3025564) = 3538944 * k + 1512782 := by
    unfold C
    simp [show (7077888 * k + 3025564) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1512782) = 1769472 * k + 756391 := by
    unfold C
    simp [show (3538944 * k + 1512782) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 756391) = 5308416 * k + 2269174 := by
    unfold C
    simp [show (1769472 * k + 756391) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 2269174) = 2654208 * k + 1134587 := by
    unfold C
    simp [show (5308416 * k + 2269174) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1134587) = 7962624 * k + 3403762 := by
    unfold C
    simp [show (2654208 * k + 1134587) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 3403762) = 3981312 * k + 1701881 := by
    unfold C
    simp [show (7962624 * k + 3403762) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 1701881) = 11943936 * k + 5105644 := by
    unfold C
    simp [show (3981312 * k + 1701881) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 5105644) = 5971968 * k + 2552822 := by
    unfold C
    simp [show (11943936 * k + 5105644) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 2552822) = 2985984 * k + 1276411 := by
    unfold C
    simp [show (5971968 * k + 2552822) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1276411) = 8957952 * k + 3829234 := by
    unfold C
    simp [show (2985984 * k + 1276411) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 3829234) = 4478976 * k + 1914617 := by
    unfold C
    simp [show (8957952 * k + 3829234) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 1914617) = 13436928 * k + 5743852 := by
    unfold C
    simp [show (4478976 * k + 1914617) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 5743852) = 6718464 * k + 2871926 := by
    unfold C
    simp [show (13436928 * k + 5743852) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 2871926) = 3359232 * k + 1435963 := by
    unfold C
    simp [show (6718464 * k + 2871926) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 1435963) = 10077696 * k + 4307890 := by
    unfold C
    simp [show (3359232 * k + 1435963) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 4307890) = 5038848 * k + 2153945 := by
    unfold C
    simp [show (10077696 * k + 4307890) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 2153945) = 15116544 * k + 6461836 := by
    unfold C
    simp [show (5038848 * k + 2153945) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 6461836) = 7558272 * k + 3230918 := by
    unfold C
    simp [show (15116544 * k + 6461836) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 3230918) = 3779136 * k + 1615459 := by
    unfold C
    simp [show (7558272 * k + 3230918) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 1615459) = 11337408 * k + 4846378 := by
    unfold C
    simp [show (3779136 * k + 1615459) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 4846378) = 5668704 * k + 2423189 := by
    unfold C
    simp [show (11337408 * k + 4846378) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 2423189) = 17006112 * k + 7269568 := by
    unfold C
    simp [show (5668704 * k + 2423189) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 7269568) = 8503056 * k + 3634784 := by
    unfold C
    simp [show (17006112 * k + 7269568) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 3634784) = 4251528 * k + 1817392 := by
    unfold C
    simp [show (8503056 * k + 3634784) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 1817392) = 2125764 * k + 908696 := by
    unfold C
    simp [show (4251528 * k + 1817392) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 908696) = 1062882 * k + 454348 := by
    unfold C
    simp [show (2125764 * k + 908696) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 454348) = 531441 * k + 227174 := by
    unfold C
    simp [show (1062882 * k + 454348) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 448231) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 448231)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_448383 : ∀ k : Nat,
    iterate (1048576 * k + 448383) 32 = 531441 * k + 227251 ∧
      531441 * k + 227251 < 1048576 * k + 448383 := by
  intro k
  have h1 : C (1048576 * k + 448383) = 3145728 * k + 1345150 := by
    unfold C
    simp [show (1048576 * k + 448383) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1345150) = 1572864 * k + 672575 := by
    unfold C
    simp [show (3145728 * k + 1345150) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 672575) = 4718592 * k + 2017726 := by
    unfold C
    simp [show (1572864 * k + 672575) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2017726) = 2359296 * k + 1008863 := by
    unfold C
    simp [show (4718592 * k + 2017726) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1008863) = 7077888 * k + 3026590 := by
    unfold C
    simp [show (2359296 * k + 1008863) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 3026590) = 3538944 * k + 1513295 := by
    unfold C
    simp [show (7077888 * k + 3026590) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1513295) = 10616832 * k + 4539886 := by
    unfold C
    simp [show (3538944 * k + 1513295) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 4539886) = 5308416 * k + 2269943 := by
    unfold C
    simp [show (10616832 * k + 4539886) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 2269943) = 15925248 * k + 6809830 := by
    unfold C
    simp [show (5308416 * k + 2269943) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 6809830) = 7962624 * k + 3404915 := by
    unfold C
    simp [show (15925248 * k + 6809830) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 3404915) = 23887872 * k + 10214746 := by
    unfold C
    simp [show (7962624 * k + 3404915) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 10214746) = 11943936 * k + 5107373 := by
    unfold C
    simp [show (23887872 * k + 10214746) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 5107373) = 35831808 * k + 15322120 := by
    unfold C
    simp [show (11943936 * k + 5107373) % 2 ≠ 0 by omega]
    omega
  have h14 : C (35831808 * k + 15322120) = 17915904 * k + 7661060 := by
    unfold C
    simp [show (35831808 * k + 15322120) % 2 = 0 by omega]
    omega
  have h15 : C (17915904 * k + 7661060) = 8957952 * k + 3830530 := by
    unfold C
    simp [show (17915904 * k + 7661060) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 3830530) = 4478976 * k + 1915265 := by
    unfold C
    simp [show (8957952 * k + 3830530) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 1915265) = 13436928 * k + 5745796 := by
    unfold C
    simp [show (4478976 * k + 1915265) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 5745796) = 6718464 * k + 2872898 := by
    unfold C
    simp [show (13436928 * k + 5745796) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 2872898) = 3359232 * k + 1436449 := by
    unfold C
    simp [show (6718464 * k + 2872898) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 1436449) = 10077696 * k + 4309348 := by
    unfold C
    simp [show (3359232 * k + 1436449) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 4309348) = 5038848 * k + 2154674 := by
    unfold C
    simp [show (10077696 * k + 4309348) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 2154674) = 2519424 * k + 1077337 := by
    unfold C
    simp [show (5038848 * k + 2154674) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1077337) = 7558272 * k + 3232012 := by
    unfold C
    simp [show (2519424 * k + 1077337) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 3232012) = 3779136 * k + 1616006 := by
    unfold C
    simp [show (7558272 * k + 3232012) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 1616006) = 1889568 * k + 808003 := by
    unfold C
    simp [show (3779136 * k + 1616006) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 808003) = 5668704 * k + 2424010 := by
    unfold C
    simp [show (1889568 * k + 808003) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 2424010) = 2834352 * k + 1212005 := by
    unfold C
    simp [show (5668704 * k + 2424010) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1212005) = 8503056 * k + 3636016 := by
    unfold C
    simp [show (2834352 * k + 1212005) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 3636016) = 4251528 * k + 1818008 := by
    unfold C
    simp [show (8503056 * k + 3636016) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 1818008) = 2125764 * k + 909004 := by
    unfold C
    simp [show (4251528 * k + 1818008) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 909004) = 1062882 * k + 454502 := by
    unfold C
    simp [show (2125764 * k + 909004) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 454502) = 531441 * k + 227251 := by
    unfold C
    simp [show (1062882 * k + 454502) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 448383) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 448383)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_448479 : ∀ k : Nat,
    iterate (1048576 * k + 448479) 32 = 531441 * k + 227300 ∧
      531441 * k + 227300 < 1048576 * k + 448479 := by
  intro k
  have h1 : C (1048576 * k + 448479) = 3145728 * k + 1345438 := by
    unfold C
    simp [show (1048576 * k + 448479) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1345438) = 1572864 * k + 672719 := by
    unfold C
    simp [show (3145728 * k + 1345438) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 672719) = 4718592 * k + 2018158 := by
    unfold C
    simp [show (1572864 * k + 672719) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2018158) = 2359296 * k + 1009079 := by
    unfold C
    simp [show (4718592 * k + 2018158) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1009079) = 7077888 * k + 3027238 := by
    unfold C
    simp [show (2359296 * k + 1009079) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 3027238) = 3538944 * k + 1513619 := by
    unfold C
    simp [show (7077888 * k + 3027238) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1513619) = 10616832 * k + 4540858 := by
    unfold C
    simp [show (3538944 * k + 1513619) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 4540858) = 5308416 * k + 2270429 := by
    unfold C
    simp [show (10616832 * k + 4540858) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 2270429) = 15925248 * k + 6811288 := by
    unfold C
    simp [show (5308416 * k + 2270429) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 6811288) = 7962624 * k + 3405644 := by
    unfold C
    simp [show (15925248 * k + 6811288) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 3405644) = 3981312 * k + 1702822 := by
    unfold C
    simp [show (7962624 * k + 3405644) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 1702822) = 1990656 * k + 851411 := by
    unfold C
    simp [show (3981312 * k + 1702822) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 851411) = 5971968 * k + 2554234 := by
    unfold C
    simp [show (1990656 * k + 851411) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 2554234) = 2985984 * k + 1277117 := by
    unfold C
    simp [show (5971968 * k + 2554234) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1277117) = 8957952 * k + 3831352 := by
    unfold C
    simp [show (2985984 * k + 1277117) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 3831352) = 4478976 * k + 1915676 := by
    unfold C
    simp [show (8957952 * k + 3831352) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 1915676) = 2239488 * k + 957838 := by
    unfold C
    simp [show (4478976 * k + 1915676) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 957838) = 1119744 * k + 478919 := by
    unfold C
    simp [show (2239488 * k + 957838) % 2 = 0 by omega]
    omega
  have h19 : C (1119744 * k + 478919) = 3359232 * k + 1436758 := by
    unfold C
    simp [show (1119744 * k + 478919) % 2 ≠ 0 by omega]
    omega
  have h20 : C (3359232 * k + 1436758) = 1679616 * k + 718379 := by
    unfold C
    simp [show (3359232 * k + 1436758) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 718379) = 5038848 * k + 2155138 := by
    unfold C
    simp [show (1679616 * k + 718379) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 2155138) = 2519424 * k + 1077569 := by
    unfold C
    simp [show (5038848 * k + 2155138) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1077569) = 7558272 * k + 3232708 := by
    unfold C
    simp [show (2519424 * k + 1077569) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 3232708) = 3779136 * k + 1616354 := by
    unfold C
    simp [show (7558272 * k + 3232708) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 1616354) = 1889568 * k + 808177 := by
    unfold C
    simp [show (3779136 * k + 1616354) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 808177) = 5668704 * k + 2424532 := by
    unfold C
    simp [show (1889568 * k + 808177) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 2424532) = 2834352 * k + 1212266 := by
    unfold C
    simp [show (5668704 * k + 2424532) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1212266) = 1417176 * k + 606133 := by
    unfold C
    simp [show (2834352 * k + 1212266) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 606133) = 4251528 * k + 1818400 := by
    unfold C
    simp [show (1417176 * k + 606133) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 1818400) = 2125764 * k + 909200 := by
    unfold C
    simp [show (4251528 * k + 1818400) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 909200) = 1062882 * k + 454600 := by
    unfold C
    simp [show (2125764 * k + 909200) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 454600) = 531441 * k + 227300 := by
    unfold C
    simp [show (1062882 * k + 454600) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 448479) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 448479)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_449255 : ∀ k : Nat,
    iterate (1048576 * k + 449255) 32 = 531441 * k + 227693 ∧
      531441 * k + 227693 < 1048576 * k + 449255 := by
  intro k
  have h1 : C (1048576 * k + 449255) = 3145728 * k + 1347766 := by
    unfold C
    simp [show (1048576 * k + 449255) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1347766) = 1572864 * k + 673883 := by
    unfold C
    simp [show (3145728 * k + 1347766) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 673883) = 4718592 * k + 2021650 := by
    unfold C
    simp [show (1572864 * k + 673883) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2021650) = 2359296 * k + 1010825 := by
    unfold C
    simp [show (4718592 * k + 2021650) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1010825) = 7077888 * k + 3032476 := by
    unfold C
    simp [show (2359296 * k + 1010825) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 3032476) = 3538944 * k + 1516238 := by
    unfold C
    simp [show (7077888 * k + 3032476) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1516238) = 1769472 * k + 758119 := by
    unfold C
    simp [show (3538944 * k + 1516238) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 758119) = 5308416 * k + 2274358 := by
    unfold C
    simp [show (1769472 * k + 758119) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 2274358) = 2654208 * k + 1137179 := by
    unfold C
    simp [show (5308416 * k + 2274358) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1137179) = 7962624 * k + 3411538 := by
    unfold C
    simp [show (2654208 * k + 1137179) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 3411538) = 3981312 * k + 1705769 := by
    unfold C
    simp [show (7962624 * k + 3411538) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 1705769) = 11943936 * k + 5117308 := by
    unfold C
    simp [show (3981312 * k + 1705769) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 5117308) = 5971968 * k + 2558654 := by
    unfold C
    simp [show (11943936 * k + 5117308) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 2558654) = 2985984 * k + 1279327 := by
    unfold C
    simp [show (5971968 * k + 2558654) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1279327) = 8957952 * k + 3837982 := by
    unfold C
    simp [show (2985984 * k + 1279327) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 3837982) = 4478976 * k + 1918991 := by
    unfold C
    simp [show (8957952 * k + 3837982) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 1918991) = 13436928 * k + 5756974 := by
    unfold C
    simp [show (4478976 * k + 1918991) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 5756974) = 6718464 * k + 2878487 := by
    unfold C
    simp [show (13436928 * k + 5756974) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 2878487) = 20155392 * k + 8635462 := by
    unfold C
    simp [show (6718464 * k + 2878487) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 8635462) = 10077696 * k + 4317731 := by
    unfold C
    simp [show (20155392 * k + 8635462) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 4317731) = 30233088 * k + 12953194 := by
    unfold C
    simp [show (10077696 * k + 4317731) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 12953194) = 15116544 * k + 6476597 := by
    unfold C
    simp [show (30233088 * k + 12953194) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 6476597) = 45349632 * k + 19429792 := by
    unfold C
    simp [show (15116544 * k + 6476597) % 2 ≠ 0 by omega]
    omega
  have h24 : C (45349632 * k + 19429792) = 22674816 * k + 9714896 := by
    unfold C
    simp [show (45349632 * k + 19429792) % 2 = 0 by omega]
    omega
  have h25 : C (22674816 * k + 9714896) = 11337408 * k + 4857448 := by
    unfold C
    simp [show (22674816 * k + 9714896) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 4857448) = 5668704 * k + 2428724 := by
    unfold C
    simp [show (11337408 * k + 4857448) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 2428724) = 2834352 * k + 1214362 := by
    unfold C
    simp [show (5668704 * k + 2428724) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1214362) = 1417176 * k + 607181 := by
    unfold C
    simp [show (2834352 * k + 1214362) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 607181) = 4251528 * k + 1821544 := by
    unfold C
    simp [show (1417176 * k + 607181) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 1821544) = 2125764 * k + 910772 := by
    unfold C
    simp [show (4251528 * k + 1821544) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 910772) = 1062882 * k + 455386 := by
    unfold C
    simp [show (2125764 * k + 910772) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 455386) = 531441 * k + 227693 := by
    unfold C
    simp [show (1062882 * k + 455386) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 449255) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 449255)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_449279 : ∀ k : Nat,
    iterate (1048576 * k + 449279) 32 = 531441 * k + 227705 ∧
      531441 * k + 227705 < 1048576 * k + 449279 := by
  intro k
  have h1 : C (1048576 * k + 449279) = 3145728 * k + 1347838 := by
    unfold C
    simp [show (1048576 * k + 449279) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1347838) = 1572864 * k + 673919 := by
    unfold C
    simp [show (3145728 * k + 1347838) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 673919) = 4718592 * k + 2021758 := by
    unfold C
    simp [show (1572864 * k + 673919) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2021758) = 2359296 * k + 1010879 := by
    unfold C
    simp [show (4718592 * k + 2021758) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1010879) = 7077888 * k + 3032638 := by
    unfold C
    simp [show (2359296 * k + 1010879) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 3032638) = 3538944 * k + 1516319 := by
    unfold C
    simp [show (7077888 * k + 3032638) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1516319) = 10616832 * k + 4548958 := by
    unfold C
    simp [show (3538944 * k + 1516319) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 4548958) = 5308416 * k + 2274479 := by
    unfold C
    simp [show (10616832 * k + 4548958) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 2274479) = 15925248 * k + 6823438 := by
    unfold C
    simp [show (5308416 * k + 2274479) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 6823438) = 7962624 * k + 3411719 := by
    unfold C
    simp [show (15925248 * k + 6823438) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 3411719) = 23887872 * k + 10235158 := by
    unfold C
    simp [show (7962624 * k + 3411719) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 10235158) = 11943936 * k + 5117579 := by
    unfold C
    simp [show (23887872 * k + 10235158) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 5117579) = 35831808 * k + 15352738 := by
    unfold C
    simp [show (11943936 * k + 5117579) % 2 ≠ 0 by omega]
    omega
  have h14 : C (35831808 * k + 15352738) = 17915904 * k + 7676369 := by
    unfold C
    simp [show (35831808 * k + 15352738) % 2 = 0 by omega]
    omega
  have h15 : C (17915904 * k + 7676369) = 53747712 * k + 23029108 := by
    unfold C
    simp [show (17915904 * k + 7676369) % 2 ≠ 0 by omega]
    omega
  have h16 : C (53747712 * k + 23029108) = 26873856 * k + 11514554 := by
    unfold C
    simp [show (53747712 * k + 23029108) % 2 = 0 by omega]
    omega
  have h17 : C (26873856 * k + 11514554) = 13436928 * k + 5757277 := by
    unfold C
    simp [show (26873856 * k + 11514554) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 5757277) = 40310784 * k + 17271832 := by
    unfold C
    simp [show (13436928 * k + 5757277) % 2 ≠ 0 by omega]
    omega
  have h19 : C (40310784 * k + 17271832) = 20155392 * k + 8635916 := by
    unfold C
    simp [show (40310784 * k + 17271832) % 2 = 0 by omega]
    omega
  have h20 : C (20155392 * k + 8635916) = 10077696 * k + 4317958 := by
    unfold C
    simp [show (20155392 * k + 8635916) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 4317958) = 5038848 * k + 2158979 := by
    unfold C
    simp [show (10077696 * k + 4317958) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 2158979) = 15116544 * k + 6476938 := by
    unfold C
    simp [show (5038848 * k + 2158979) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 6476938) = 7558272 * k + 3238469 := by
    unfold C
    simp [show (15116544 * k + 6476938) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 3238469) = 22674816 * k + 9715408 := by
    unfold C
    simp [show (7558272 * k + 3238469) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 9715408) = 11337408 * k + 4857704 := by
    unfold C
    simp [show (22674816 * k + 9715408) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 4857704) = 5668704 * k + 2428852 := by
    unfold C
    simp [show (11337408 * k + 4857704) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 2428852) = 2834352 * k + 1214426 := by
    unfold C
    simp [show (5668704 * k + 2428852) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1214426) = 1417176 * k + 607213 := by
    unfold C
    simp [show (2834352 * k + 1214426) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 607213) = 4251528 * k + 1821640 := by
    unfold C
    simp [show (1417176 * k + 607213) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 1821640) = 2125764 * k + 910820 := by
    unfold C
    simp [show (4251528 * k + 1821640) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 910820) = 1062882 * k + 455410 := by
    unfold C
    simp [show (2125764 * k + 910820) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 455410) = 531441 * k + 227705 := by
    unfold C
    simp [show (1062882 * k + 455410) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 449279) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 449279)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_451303 : ∀ k : Nat,
    iterate (1048576 * k + 451303) 32 = 531441 * k + 228731 ∧
      531441 * k + 228731 < 1048576 * k + 451303 := by
  intro k
  have h1 : C (1048576 * k + 451303) = 3145728 * k + 1353910 := by
    unfold C
    simp [show (1048576 * k + 451303) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1353910) = 1572864 * k + 676955 := by
    unfold C
    simp [show (3145728 * k + 1353910) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 676955) = 4718592 * k + 2030866 := by
    unfold C
    simp [show (1572864 * k + 676955) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2030866) = 2359296 * k + 1015433 := by
    unfold C
    simp [show (4718592 * k + 2030866) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1015433) = 7077888 * k + 3046300 := by
    unfold C
    simp [show (2359296 * k + 1015433) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 3046300) = 3538944 * k + 1523150 := by
    unfold C
    simp [show (7077888 * k + 3046300) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1523150) = 1769472 * k + 761575 := by
    unfold C
    simp [show (3538944 * k + 1523150) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 761575) = 5308416 * k + 2284726 := by
    unfold C
    simp [show (1769472 * k + 761575) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 2284726) = 2654208 * k + 1142363 := by
    unfold C
    simp [show (5308416 * k + 2284726) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1142363) = 7962624 * k + 3427090 := by
    unfold C
    simp [show (2654208 * k + 1142363) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 3427090) = 3981312 * k + 1713545 := by
    unfold C
    simp [show (7962624 * k + 3427090) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 1713545) = 11943936 * k + 5140636 := by
    unfold C
    simp [show (3981312 * k + 1713545) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 5140636) = 5971968 * k + 2570318 := by
    unfold C
    simp [show (11943936 * k + 5140636) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 2570318) = 2985984 * k + 1285159 := by
    unfold C
    simp [show (5971968 * k + 2570318) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1285159) = 8957952 * k + 3855478 := by
    unfold C
    simp [show (2985984 * k + 1285159) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 3855478) = 4478976 * k + 1927739 := by
    unfold C
    simp [show (8957952 * k + 3855478) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 1927739) = 13436928 * k + 5783218 := by
    unfold C
    simp [show (4478976 * k + 1927739) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 5783218) = 6718464 * k + 2891609 := by
    unfold C
    simp [show (13436928 * k + 5783218) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 2891609) = 20155392 * k + 8674828 := by
    unfold C
    simp [show (6718464 * k + 2891609) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 8674828) = 10077696 * k + 4337414 := by
    unfold C
    simp [show (20155392 * k + 8674828) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 4337414) = 5038848 * k + 2168707 := by
    unfold C
    simp [show (10077696 * k + 4337414) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 2168707) = 15116544 * k + 6506122 := by
    unfold C
    simp [show (5038848 * k + 2168707) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 6506122) = 7558272 * k + 3253061 := by
    unfold C
    simp [show (15116544 * k + 6506122) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 3253061) = 22674816 * k + 9759184 := by
    unfold C
    simp [show (7558272 * k + 3253061) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 9759184) = 11337408 * k + 4879592 := by
    unfold C
    simp [show (22674816 * k + 9759184) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 4879592) = 5668704 * k + 2439796 := by
    unfold C
    simp [show (11337408 * k + 4879592) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 2439796) = 2834352 * k + 1219898 := by
    unfold C
    simp [show (5668704 * k + 2439796) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1219898) = 1417176 * k + 609949 := by
    unfold C
    simp [show (2834352 * k + 1219898) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 609949) = 4251528 * k + 1829848 := by
    unfold C
    simp [show (1417176 * k + 609949) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 1829848) = 2125764 * k + 914924 := by
    unfold C
    simp [show (4251528 * k + 1829848) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 914924) = 1062882 * k + 457462 := by
    unfold C
    simp [show (2125764 * k + 914924) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 457462) = 531441 * k + 228731 := by
    unfold C
    simp [show (1062882 * k + 457462) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 451303) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 451303)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_451455 : ∀ k : Nat,
    iterate (1048576 * k + 451455) 32 = 531441 * k + 228808 ∧
      531441 * k + 228808 < 1048576 * k + 451455 := by
  intro k
  have h1 : C (1048576 * k + 451455) = 3145728 * k + 1354366 := by
    unfold C
    simp [show (1048576 * k + 451455) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1354366) = 1572864 * k + 677183 := by
    unfold C
    simp [show (3145728 * k + 1354366) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 677183) = 4718592 * k + 2031550 := by
    unfold C
    simp [show (1572864 * k + 677183) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2031550) = 2359296 * k + 1015775 := by
    unfold C
    simp [show (4718592 * k + 2031550) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1015775) = 7077888 * k + 3047326 := by
    unfold C
    simp [show (2359296 * k + 1015775) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 3047326) = 3538944 * k + 1523663 := by
    unfold C
    simp [show (7077888 * k + 3047326) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1523663) = 10616832 * k + 4570990 := by
    unfold C
    simp [show (3538944 * k + 1523663) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 4570990) = 5308416 * k + 2285495 := by
    unfold C
    simp [show (10616832 * k + 4570990) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 2285495) = 15925248 * k + 6856486 := by
    unfold C
    simp [show (5308416 * k + 2285495) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 6856486) = 7962624 * k + 3428243 := by
    unfold C
    simp [show (15925248 * k + 6856486) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 3428243) = 23887872 * k + 10284730 := by
    unfold C
    simp [show (7962624 * k + 3428243) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 10284730) = 11943936 * k + 5142365 := by
    unfold C
    simp [show (23887872 * k + 10284730) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 5142365) = 35831808 * k + 15427096 := by
    unfold C
    simp [show (11943936 * k + 5142365) % 2 ≠ 0 by omega]
    omega
  have h14 : C (35831808 * k + 15427096) = 17915904 * k + 7713548 := by
    unfold C
    simp [show (35831808 * k + 15427096) % 2 = 0 by omega]
    omega
  have h15 : C (17915904 * k + 7713548) = 8957952 * k + 3856774 := by
    unfold C
    simp [show (17915904 * k + 7713548) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 3856774) = 4478976 * k + 1928387 := by
    unfold C
    simp [show (8957952 * k + 3856774) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 1928387) = 13436928 * k + 5785162 := by
    unfold C
    simp [show (4478976 * k + 1928387) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 5785162) = 6718464 * k + 2892581 := by
    unfold C
    simp [show (13436928 * k + 5785162) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 2892581) = 20155392 * k + 8677744 := by
    unfold C
    simp [show (6718464 * k + 2892581) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 8677744) = 10077696 * k + 4338872 := by
    unfold C
    simp [show (20155392 * k + 8677744) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 4338872) = 5038848 * k + 2169436 := by
    unfold C
    simp [show (10077696 * k + 4338872) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 2169436) = 2519424 * k + 1084718 := by
    unfold C
    simp [show (5038848 * k + 2169436) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1084718) = 1259712 * k + 542359 := by
    unfold C
    simp [show (2519424 * k + 1084718) % 2 = 0 by omega]
    omega
  have h24 : C (1259712 * k + 542359) = 3779136 * k + 1627078 := by
    unfold C
    simp [show (1259712 * k + 542359) % 2 ≠ 0 by omega]
    omega
  have h25 : C (3779136 * k + 1627078) = 1889568 * k + 813539 := by
    unfold C
    simp [show (3779136 * k + 1627078) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 813539) = 5668704 * k + 2440618 := by
    unfold C
    simp [show (1889568 * k + 813539) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 2440618) = 2834352 * k + 1220309 := by
    unfold C
    simp [show (5668704 * k + 2440618) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1220309) = 8503056 * k + 3660928 := by
    unfold C
    simp [show (2834352 * k + 1220309) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 3660928) = 4251528 * k + 1830464 := by
    unfold C
    simp [show (8503056 * k + 3660928) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 1830464) = 2125764 * k + 915232 := by
    unfold C
    simp [show (4251528 * k + 1830464) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 915232) = 1062882 * k + 457616 := by
    unfold C
    simp [show (2125764 * k + 915232) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 457616) = 531441 * k + 228808 := by
    unfold C
    simp [show (1062882 * k + 457616) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 451455) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 451455)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_451611 : ∀ k : Nat,
    iterate (1048576 * k + 451611) 32 = 531441 * k + 228887 ∧
      531441 * k + 228887 < 1048576 * k + 451611 := by
  intro k
  have h1 : C (1048576 * k + 451611) = 3145728 * k + 1354834 := by
    unfold C
    simp [show (1048576 * k + 451611) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1354834) = 1572864 * k + 677417 := by
    unfold C
    simp [show (3145728 * k + 1354834) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 677417) = 4718592 * k + 2032252 := by
    unfold C
    simp [show (1572864 * k + 677417) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2032252) = 2359296 * k + 1016126 := by
    unfold C
    simp [show (4718592 * k + 2032252) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1016126) = 1179648 * k + 508063 := by
    unfold C
    simp [show (2359296 * k + 1016126) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 508063) = 3538944 * k + 1524190 := by
    unfold C
    simp [show (1179648 * k + 508063) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 1524190) = 1769472 * k + 762095 := by
    unfold C
    simp [show (3538944 * k + 1524190) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 762095) = 5308416 * k + 2286286 := by
    unfold C
    simp [show (1769472 * k + 762095) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 2286286) = 2654208 * k + 1143143 := by
    unfold C
    simp [show (5308416 * k + 2286286) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1143143) = 7962624 * k + 3429430 := by
    unfold C
    simp [show (2654208 * k + 1143143) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 3429430) = 3981312 * k + 1714715 := by
    unfold C
    simp [show (7962624 * k + 3429430) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 1714715) = 11943936 * k + 5144146 := by
    unfold C
    simp [show (3981312 * k + 1714715) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 5144146) = 5971968 * k + 2572073 := by
    unfold C
    simp [show (11943936 * k + 5144146) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 2572073) = 17915904 * k + 7716220 := by
    unfold C
    simp [show (5971968 * k + 2572073) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 7716220) = 8957952 * k + 3858110 := by
    unfold C
    simp [show (17915904 * k + 7716220) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 3858110) = 4478976 * k + 1929055 := by
    unfold C
    simp [show (8957952 * k + 3858110) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 1929055) = 13436928 * k + 5787166 := by
    unfold C
    simp [show (4478976 * k + 1929055) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 5787166) = 6718464 * k + 2893583 := by
    unfold C
    simp [show (13436928 * k + 5787166) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 2893583) = 20155392 * k + 8680750 := by
    unfold C
    simp [show (6718464 * k + 2893583) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 8680750) = 10077696 * k + 4340375 := by
    unfold C
    simp [show (20155392 * k + 8680750) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 4340375) = 30233088 * k + 13021126 := by
    unfold C
    simp [show (10077696 * k + 4340375) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 13021126) = 15116544 * k + 6510563 := by
    unfold C
    simp [show (30233088 * k + 13021126) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 6510563) = 45349632 * k + 19531690 := by
    unfold C
    simp [show (15116544 * k + 6510563) % 2 ≠ 0 by omega]
    omega
  have h24 : C (45349632 * k + 19531690) = 22674816 * k + 9765845 := by
    unfold C
    simp [show (45349632 * k + 19531690) % 2 = 0 by omega]
    omega
  have h25 : C (22674816 * k + 9765845) = 68024448 * k + 29297536 := by
    unfold C
    simp [show (22674816 * k + 9765845) % 2 ≠ 0 by omega]
    omega
  have h26 : C (68024448 * k + 29297536) = 34012224 * k + 14648768 := by
    unfold C
    simp [show (68024448 * k + 29297536) % 2 = 0 by omega]
    omega
  have h27 : C (34012224 * k + 14648768) = 17006112 * k + 7324384 := by
    unfold C
    simp [show (34012224 * k + 14648768) % 2 = 0 by omega]
    omega
  have h28 : C (17006112 * k + 7324384) = 8503056 * k + 3662192 := by
    unfold C
    simp [show (17006112 * k + 7324384) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 3662192) = 4251528 * k + 1831096 := by
    unfold C
    simp [show (8503056 * k + 3662192) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 1831096) = 2125764 * k + 915548 := by
    unfold C
    simp [show (4251528 * k + 1831096) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 915548) = 1062882 * k + 457774 := by
    unfold C
    simp [show (2125764 * k + 915548) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 457774) = 531441 * k + 228887 := by
    unfold C
    simp [show (1062882 * k + 457774) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 451611) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 451611)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_451835 : ∀ k : Nat,
    iterate (1048576 * k + 451835) 32 = 531441 * k + 229001 ∧
      531441 * k + 229001 < 1048576 * k + 451835 := by
  intro k
  have h1 : C (1048576 * k + 451835) = 3145728 * k + 1355506 := by
    unfold C
    simp [show (1048576 * k + 451835) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1355506) = 1572864 * k + 677753 := by
    unfold C
    simp [show (3145728 * k + 1355506) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 677753) = 4718592 * k + 2033260 := by
    unfold C
    simp [show (1572864 * k + 677753) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2033260) = 2359296 * k + 1016630 := by
    unfold C
    simp [show (4718592 * k + 2033260) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1016630) = 1179648 * k + 508315 := by
    unfold C
    simp [show (2359296 * k + 1016630) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 508315) = 3538944 * k + 1524946 := by
    unfold C
    simp [show (1179648 * k + 508315) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 1524946) = 1769472 * k + 762473 := by
    unfold C
    simp [show (3538944 * k + 1524946) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 762473) = 5308416 * k + 2287420 := by
    unfold C
    simp [show (1769472 * k + 762473) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 2287420) = 2654208 * k + 1143710 := by
    unfold C
    simp [show (5308416 * k + 2287420) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1143710) = 1327104 * k + 571855 := by
    unfold C
    simp [show (2654208 * k + 1143710) % 2 = 0 by omega]
    omega
  have h11 : C (1327104 * k + 571855) = 3981312 * k + 1715566 := by
    unfold C
    simp [show (1327104 * k + 571855) % 2 ≠ 0 by omega]
    omega
  have h12 : C (3981312 * k + 1715566) = 1990656 * k + 857783 := by
    unfold C
    simp [show (3981312 * k + 1715566) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 857783) = 5971968 * k + 2573350 := by
    unfold C
    simp [show (1990656 * k + 857783) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 2573350) = 2985984 * k + 1286675 := by
    unfold C
    simp [show (5971968 * k + 2573350) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1286675) = 8957952 * k + 3860026 := by
    unfold C
    simp [show (2985984 * k + 1286675) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 3860026) = 4478976 * k + 1930013 := by
    unfold C
    simp [show (8957952 * k + 3860026) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 1930013) = 13436928 * k + 5790040 := by
    unfold C
    simp [show (4478976 * k + 1930013) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 5790040) = 6718464 * k + 2895020 := by
    unfold C
    simp [show (13436928 * k + 5790040) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 2895020) = 3359232 * k + 1447510 := by
    unfold C
    simp [show (6718464 * k + 2895020) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 1447510) = 1679616 * k + 723755 := by
    unfold C
    simp [show (3359232 * k + 1447510) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 723755) = 5038848 * k + 2171266 := by
    unfold C
    simp [show (1679616 * k + 723755) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 2171266) = 2519424 * k + 1085633 := by
    unfold C
    simp [show (5038848 * k + 2171266) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1085633) = 7558272 * k + 3256900 := by
    unfold C
    simp [show (2519424 * k + 1085633) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 3256900) = 3779136 * k + 1628450 := by
    unfold C
    simp [show (7558272 * k + 3256900) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 1628450) = 1889568 * k + 814225 := by
    unfold C
    simp [show (3779136 * k + 1628450) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 814225) = 5668704 * k + 2442676 := by
    unfold C
    simp [show (1889568 * k + 814225) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 2442676) = 2834352 * k + 1221338 := by
    unfold C
    simp [show (5668704 * k + 2442676) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1221338) = 1417176 * k + 610669 := by
    unfold C
    simp [show (2834352 * k + 1221338) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 610669) = 4251528 * k + 1832008 := by
    unfold C
    simp [show (1417176 * k + 610669) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 1832008) = 2125764 * k + 916004 := by
    unfold C
    simp [show (4251528 * k + 1832008) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 916004) = 1062882 * k + 458002 := by
    unfold C
    simp [show (2125764 * k + 916004) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 458002) = 531441 * k + 229001 := by
    unfold C
    simp [show (1062882 * k + 458002) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 451835) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 451835)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_452351 : ∀ k : Nat,
    iterate (1048576 * k + 452351) 32 = 531441 * k + 229262 ∧
      531441 * k + 229262 < 1048576 * k + 452351 := by
  intro k
  have h1 : C (1048576 * k + 452351) = 3145728 * k + 1357054 := by
    unfold C
    simp [show (1048576 * k + 452351) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1357054) = 1572864 * k + 678527 := by
    unfold C
    simp [show (3145728 * k + 1357054) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 678527) = 4718592 * k + 2035582 := by
    unfold C
    simp [show (1572864 * k + 678527) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2035582) = 2359296 * k + 1017791 := by
    unfold C
    simp [show (4718592 * k + 2035582) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1017791) = 7077888 * k + 3053374 := by
    unfold C
    simp [show (2359296 * k + 1017791) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 3053374) = 3538944 * k + 1526687 := by
    unfold C
    simp [show (7077888 * k + 3053374) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1526687) = 10616832 * k + 4580062 := by
    unfold C
    simp [show (3538944 * k + 1526687) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 4580062) = 5308416 * k + 2290031 := by
    unfold C
    simp [show (10616832 * k + 4580062) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 2290031) = 15925248 * k + 6870094 := by
    unfold C
    simp [show (5308416 * k + 2290031) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 6870094) = 7962624 * k + 3435047 := by
    unfold C
    simp [show (15925248 * k + 6870094) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 3435047) = 23887872 * k + 10305142 := by
    unfold C
    simp [show (7962624 * k + 3435047) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 10305142) = 11943936 * k + 5152571 := by
    unfold C
    simp [show (23887872 * k + 10305142) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 5152571) = 35831808 * k + 15457714 := by
    unfold C
    simp [show (11943936 * k + 5152571) % 2 ≠ 0 by omega]
    omega
  have h14 : C (35831808 * k + 15457714) = 17915904 * k + 7728857 := by
    unfold C
    simp [show (35831808 * k + 15457714) % 2 = 0 by omega]
    omega
  have h15 : C (17915904 * k + 7728857) = 53747712 * k + 23186572 := by
    unfold C
    simp [show (17915904 * k + 7728857) % 2 ≠ 0 by omega]
    omega
  have h16 : C (53747712 * k + 23186572) = 26873856 * k + 11593286 := by
    unfold C
    simp [show (53747712 * k + 23186572) % 2 = 0 by omega]
    omega
  have h17 : C (26873856 * k + 11593286) = 13436928 * k + 5796643 := by
    unfold C
    simp [show (26873856 * k + 11593286) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 5796643) = 40310784 * k + 17389930 := by
    unfold C
    simp [show (13436928 * k + 5796643) % 2 ≠ 0 by omega]
    omega
  have h19 : C (40310784 * k + 17389930) = 20155392 * k + 8694965 := by
    unfold C
    simp [show (40310784 * k + 17389930) % 2 = 0 by omega]
    omega
  have h20 : C (20155392 * k + 8694965) = 60466176 * k + 26084896 := by
    unfold C
    simp [show (20155392 * k + 8694965) % 2 ≠ 0 by omega]
    omega
  have h21 : C (60466176 * k + 26084896) = 30233088 * k + 13042448 := by
    unfold C
    simp [show (60466176 * k + 26084896) % 2 = 0 by omega]
    omega
  have h22 : C (30233088 * k + 13042448) = 15116544 * k + 6521224 := by
    unfold C
    simp [show (30233088 * k + 13042448) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 6521224) = 7558272 * k + 3260612 := by
    unfold C
    simp [show (15116544 * k + 6521224) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 3260612) = 3779136 * k + 1630306 := by
    unfold C
    simp [show (7558272 * k + 3260612) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 1630306) = 1889568 * k + 815153 := by
    unfold C
    simp [show (3779136 * k + 1630306) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 815153) = 5668704 * k + 2445460 := by
    unfold C
    simp [show (1889568 * k + 815153) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 2445460) = 2834352 * k + 1222730 := by
    unfold C
    simp [show (5668704 * k + 2445460) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1222730) = 1417176 * k + 611365 := by
    unfold C
    simp [show (2834352 * k + 1222730) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 611365) = 4251528 * k + 1834096 := by
    unfold C
    simp [show (1417176 * k + 611365) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 1834096) = 2125764 * k + 917048 := by
    unfold C
    simp [show (4251528 * k + 1834096) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 917048) = 1062882 * k + 458524 := by
    unfold C
    simp [show (2125764 * k + 917048) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 458524) = 531441 * k + 229262 := by
    unfold C
    simp [show (1062882 * k + 458524) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 452351) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 452351)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_453327 : ∀ k : Nat,
    iterate (1048576 * k + 453327) 32 = 531441 * k + 229757 ∧
      531441 * k + 229757 < 1048576 * k + 453327 := by
  intro k
  have h1 : C (1048576 * k + 453327) = 3145728 * k + 1359982 := by
    unfold C
    simp [show (1048576 * k + 453327) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1359982) = 1572864 * k + 679991 := by
    unfold C
    simp [show (3145728 * k + 1359982) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 679991) = 4718592 * k + 2039974 := by
    unfold C
    simp [show (1572864 * k + 679991) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2039974) = 2359296 * k + 1019987 := by
    unfold C
    simp [show (4718592 * k + 2039974) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1019987) = 7077888 * k + 3059962 := by
    unfold C
    simp [show (2359296 * k + 1019987) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 3059962) = 3538944 * k + 1529981 := by
    unfold C
    simp [show (7077888 * k + 3059962) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1529981) = 10616832 * k + 4589944 := by
    unfold C
    simp [show (3538944 * k + 1529981) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 4589944) = 5308416 * k + 2294972 := by
    unfold C
    simp [show (10616832 * k + 4589944) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 2294972) = 2654208 * k + 1147486 := by
    unfold C
    simp [show (5308416 * k + 2294972) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1147486) = 1327104 * k + 573743 := by
    unfold C
    simp [show (2654208 * k + 1147486) % 2 = 0 by omega]
    omega
  have h11 : C (1327104 * k + 573743) = 3981312 * k + 1721230 := by
    unfold C
    simp [show (1327104 * k + 573743) % 2 ≠ 0 by omega]
    omega
  have h12 : C (3981312 * k + 1721230) = 1990656 * k + 860615 := by
    unfold C
    simp [show (3981312 * k + 1721230) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 860615) = 5971968 * k + 2581846 := by
    unfold C
    simp [show (1990656 * k + 860615) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 2581846) = 2985984 * k + 1290923 := by
    unfold C
    simp [show (5971968 * k + 2581846) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1290923) = 8957952 * k + 3872770 := by
    unfold C
    simp [show (2985984 * k + 1290923) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 3872770) = 4478976 * k + 1936385 := by
    unfold C
    simp [show (8957952 * k + 3872770) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 1936385) = 13436928 * k + 5809156 := by
    unfold C
    simp [show (4478976 * k + 1936385) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 5809156) = 6718464 * k + 2904578 := by
    unfold C
    simp [show (13436928 * k + 5809156) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 2904578) = 3359232 * k + 1452289 := by
    unfold C
    simp [show (6718464 * k + 2904578) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 1452289) = 10077696 * k + 4356868 := by
    unfold C
    simp [show (3359232 * k + 1452289) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 4356868) = 5038848 * k + 2178434 := by
    unfold C
    simp [show (10077696 * k + 4356868) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 2178434) = 2519424 * k + 1089217 := by
    unfold C
    simp [show (5038848 * k + 2178434) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1089217) = 7558272 * k + 3267652 := by
    unfold C
    simp [show (2519424 * k + 1089217) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 3267652) = 3779136 * k + 1633826 := by
    unfold C
    simp [show (7558272 * k + 3267652) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 1633826) = 1889568 * k + 816913 := by
    unfold C
    simp [show (3779136 * k + 1633826) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 816913) = 5668704 * k + 2450740 := by
    unfold C
    simp [show (1889568 * k + 816913) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 2450740) = 2834352 * k + 1225370 := by
    unfold C
    simp [show (5668704 * k + 2450740) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1225370) = 1417176 * k + 612685 := by
    unfold C
    simp [show (2834352 * k + 1225370) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 612685) = 4251528 * k + 1838056 := by
    unfold C
    simp [show (1417176 * k + 612685) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 1838056) = 2125764 * k + 919028 := by
    unfold C
    simp [show (4251528 * k + 1838056) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 919028) = 1062882 * k + 459514 := by
    unfold C
    simp [show (2125764 * k + 919028) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 459514) = 531441 * k + 229757 := by
    unfold C
    simp [show (1062882 * k + 459514) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 453327) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 453327)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_453375 : ∀ k : Nat,
    iterate (1048576 * k + 453375) 32 = 531441 * k + 229781 ∧
      531441 * k + 229781 < 1048576 * k + 453375 := by
  intro k
  have h1 : C (1048576 * k + 453375) = 3145728 * k + 1360126 := by
    unfold C
    simp [show (1048576 * k + 453375) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1360126) = 1572864 * k + 680063 := by
    unfold C
    simp [show (3145728 * k + 1360126) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 680063) = 4718592 * k + 2040190 := by
    unfold C
    simp [show (1572864 * k + 680063) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2040190) = 2359296 * k + 1020095 := by
    unfold C
    simp [show (4718592 * k + 2040190) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1020095) = 7077888 * k + 3060286 := by
    unfold C
    simp [show (2359296 * k + 1020095) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 3060286) = 3538944 * k + 1530143 := by
    unfold C
    simp [show (7077888 * k + 3060286) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1530143) = 10616832 * k + 4590430 := by
    unfold C
    simp [show (3538944 * k + 1530143) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 4590430) = 5308416 * k + 2295215 := by
    unfold C
    simp [show (10616832 * k + 4590430) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 2295215) = 15925248 * k + 6885646 := by
    unfold C
    simp [show (5308416 * k + 2295215) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 6885646) = 7962624 * k + 3442823 := by
    unfold C
    simp [show (15925248 * k + 6885646) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 3442823) = 23887872 * k + 10328470 := by
    unfold C
    simp [show (7962624 * k + 3442823) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 10328470) = 11943936 * k + 5164235 := by
    unfold C
    simp [show (23887872 * k + 10328470) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 5164235) = 35831808 * k + 15492706 := by
    unfold C
    simp [show (11943936 * k + 5164235) % 2 ≠ 0 by omega]
    omega
  have h14 : C (35831808 * k + 15492706) = 17915904 * k + 7746353 := by
    unfold C
    simp [show (35831808 * k + 15492706) % 2 = 0 by omega]
    omega
  have h15 : C (17915904 * k + 7746353) = 53747712 * k + 23239060 := by
    unfold C
    simp [show (17915904 * k + 7746353) % 2 ≠ 0 by omega]
    omega
  have h16 : C (53747712 * k + 23239060) = 26873856 * k + 11619530 := by
    unfold C
    simp [show (53747712 * k + 23239060) % 2 = 0 by omega]
    omega
  have h17 : C (26873856 * k + 11619530) = 13436928 * k + 5809765 := by
    unfold C
    simp [show (26873856 * k + 11619530) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 5809765) = 40310784 * k + 17429296 := by
    unfold C
    simp [show (13436928 * k + 5809765) % 2 ≠ 0 by omega]
    omega
  have h19 : C (40310784 * k + 17429296) = 20155392 * k + 8714648 := by
    unfold C
    simp [show (40310784 * k + 17429296) % 2 = 0 by omega]
    omega
  have h20 : C (20155392 * k + 8714648) = 10077696 * k + 4357324 := by
    unfold C
    simp [show (20155392 * k + 8714648) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 4357324) = 5038848 * k + 2178662 := by
    unfold C
    simp [show (10077696 * k + 4357324) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 2178662) = 2519424 * k + 1089331 := by
    unfold C
    simp [show (5038848 * k + 2178662) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1089331) = 7558272 * k + 3267994 := by
    unfold C
    simp [show (2519424 * k + 1089331) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 3267994) = 3779136 * k + 1633997 := by
    unfold C
    simp [show (7558272 * k + 3267994) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 1633997) = 11337408 * k + 4901992 := by
    unfold C
    simp [show (3779136 * k + 1633997) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 4901992) = 5668704 * k + 2450996 := by
    unfold C
    simp [show (11337408 * k + 4901992) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 2450996) = 2834352 * k + 1225498 := by
    unfold C
    simp [show (5668704 * k + 2450996) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1225498) = 1417176 * k + 612749 := by
    unfold C
    simp [show (2834352 * k + 1225498) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 612749) = 4251528 * k + 1838248 := by
    unfold C
    simp [show (1417176 * k + 612749) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 1838248) = 2125764 * k + 919124 := by
    unfold C
    simp [show (4251528 * k + 1838248) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 919124) = 1062882 * k + 459562 := by
    unfold C
    simp [show (2125764 * k + 919124) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 459562) = 531441 * k + 229781 := by
    unfold C
    simp [show (1062882 * k + 459562) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 453375) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 453375)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_454375 : ∀ k : Nat,
    iterate (1048576 * k + 454375) 32 = 531441 * k + 230288 ∧
      531441 * k + 230288 < 1048576 * k + 454375 := by
  intro k
  have h1 : C (1048576 * k + 454375) = 3145728 * k + 1363126 := by
    unfold C
    simp [show (1048576 * k + 454375) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1363126) = 1572864 * k + 681563 := by
    unfold C
    simp [show (3145728 * k + 1363126) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 681563) = 4718592 * k + 2044690 := by
    unfold C
    simp [show (1572864 * k + 681563) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2044690) = 2359296 * k + 1022345 := by
    unfold C
    simp [show (4718592 * k + 2044690) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1022345) = 7077888 * k + 3067036 := by
    unfold C
    simp [show (2359296 * k + 1022345) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 3067036) = 3538944 * k + 1533518 := by
    unfold C
    simp [show (7077888 * k + 3067036) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1533518) = 1769472 * k + 766759 := by
    unfold C
    simp [show (3538944 * k + 1533518) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 766759) = 5308416 * k + 2300278 := by
    unfold C
    simp [show (1769472 * k + 766759) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 2300278) = 2654208 * k + 1150139 := by
    unfold C
    simp [show (5308416 * k + 2300278) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1150139) = 7962624 * k + 3450418 := by
    unfold C
    simp [show (2654208 * k + 1150139) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 3450418) = 3981312 * k + 1725209 := by
    unfold C
    simp [show (7962624 * k + 3450418) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 1725209) = 11943936 * k + 5175628 := by
    unfold C
    simp [show (3981312 * k + 1725209) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 5175628) = 5971968 * k + 2587814 := by
    unfold C
    simp [show (11943936 * k + 5175628) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 2587814) = 2985984 * k + 1293907 := by
    unfold C
    simp [show (5971968 * k + 2587814) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1293907) = 8957952 * k + 3881722 := by
    unfold C
    simp [show (2985984 * k + 1293907) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 3881722) = 4478976 * k + 1940861 := by
    unfold C
    simp [show (8957952 * k + 3881722) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 1940861) = 13436928 * k + 5822584 := by
    unfold C
    simp [show (4478976 * k + 1940861) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 5822584) = 6718464 * k + 2911292 := by
    unfold C
    simp [show (13436928 * k + 5822584) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 2911292) = 3359232 * k + 1455646 := by
    unfold C
    simp [show (6718464 * k + 2911292) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 1455646) = 1679616 * k + 727823 := by
    unfold C
    simp [show (3359232 * k + 1455646) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 727823) = 5038848 * k + 2183470 := by
    unfold C
    simp [show (1679616 * k + 727823) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 2183470) = 2519424 * k + 1091735 := by
    unfold C
    simp [show (5038848 * k + 2183470) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1091735) = 7558272 * k + 3275206 := by
    unfold C
    simp [show (2519424 * k + 1091735) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 3275206) = 3779136 * k + 1637603 := by
    unfold C
    simp [show (7558272 * k + 3275206) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 1637603) = 11337408 * k + 4912810 := by
    unfold C
    simp [show (3779136 * k + 1637603) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 4912810) = 5668704 * k + 2456405 := by
    unfold C
    simp [show (11337408 * k + 4912810) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 2456405) = 17006112 * k + 7369216 := by
    unfold C
    simp [show (5668704 * k + 2456405) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 7369216) = 8503056 * k + 3684608 := by
    unfold C
    simp [show (17006112 * k + 7369216) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 3684608) = 4251528 * k + 1842304 := by
    unfold C
    simp [show (8503056 * k + 3684608) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 1842304) = 2125764 * k + 921152 := by
    unfold C
    simp [show (4251528 * k + 1842304) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 921152) = 1062882 * k + 460576 := by
    unfold C
    simp [show (2125764 * k + 921152) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 460576) = 531441 * k + 230288 := by
    unfold C
    simp [show (1062882 * k + 460576) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 454375) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 454375)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_454491 : ∀ k : Nat,
    iterate (1048576 * k + 454491) 32 = 531441 * k + 230347 ∧
      531441 * k + 230347 < 1048576 * k + 454491 := by
  intro k
  have h1 : C (1048576 * k + 454491) = 3145728 * k + 1363474 := by
    unfold C
    simp [show (1048576 * k + 454491) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1363474) = 1572864 * k + 681737 := by
    unfold C
    simp [show (3145728 * k + 1363474) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 681737) = 4718592 * k + 2045212 := by
    unfold C
    simp [show (1572864 * k + 681737) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2045212) = 2359296 * k + 1022606 := by
    unfold C
    simp [show (4718592 * k + 2045212) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1022606) = 1179648 * k + 511303 := by
    unfold C
    simp [show (2359296 * k + 1022606) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 511303) = 3538944 * k + 1533910 := by
    unfold C
    simp [show (1179648 * k + 511303) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 1533910) = 1769472 * k + 766955 := by
    unfold C
    simp [show (3538944 * k + 1533910) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 766955) = 5308416 * k + 2300866 := by
    unfold C
    simp [show (1769472 * k + 766955) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 2300866) = 2654208 * k + 1150433 := by
    unfold C
    simp [show (5308416 * k + 2300866) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1150433) = 7962624 * k + 3451300 := by
    unfold C
    simp [show (2654208 * k + 1150433) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 3451300) = 3981312 * k + 1725650 := by
    unfold C
    simp [show (7962624 * k + 3451300) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 1725650) = 1990656 * k + 862825 := by
    unfold C
    simp [show (3981312 * k + 1725650) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 862825) = 5971968 * k + 2588476 := by
    unfold C
    simp [show (1990656 * k + 862825) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 2588476) = 2985984 * k + 1294238 := by
    unfold C
    simp [show (5971968 * k + 2588476) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1294238) = 1492992 * k + 647119 := by
    unfold C
    simp [show (2985984 * k + 1294238) % 2 = 0 by omega]
    omega
  have h16 : C (1492992 * k + 647119) = 4478976 * k + 1941358 := by
    unfold C
    simp [show (1492992 * k + 647119) % 2 ≠ 0 by omega]
    omega
  have h17 : C (4478976 * k + 1941358) = 2239488 * k + 970679 := by
    unfold C
    simp [show (4478976 * k + 1941358) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 970679) = 6718464 * k + 2912038 := by
    unfold C
    simp [show (2239488 * k + 970679) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 2912038) = 3359232 * k + 1456019 := by
    unfold C
    simp [show (6718464 * k + 2912038) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 1456019) = 10077696 * k + 4368058 := by
    unfold C
    simp [show (3359232 * k + 1456019) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 4368058) = 5038848 * k + 2184029 := by
    unfold C
    simp [show (10077696 * k + 4368058) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 2184029) = 15116544 * k + 6552088 := by
    unfold C
    simp [show (5038848 * k + 2184029) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 6552088) = 7558272 * k + 3276044 := by
    unfold C
    simp [show (15116544 * k + 6552088) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 3276044) = 3779136 * k + 1638022 := by
    unfold C
    simp [show (7558272 * k + 3276044) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 1638022) = 1889568 * k + 819011 := by
    unfold C
    simp [show (3779136 * k + 1638022) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 819011) = 5668704 * k + 2457034 := by
    unfold C
    simp [show (1889568 * k + 819011) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 2457034) = 2834352 * k + 1228517 := by
    unfold C
    simp [show (5668704 * k + 2457034) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1228517) = 8503056 * k + 3685552 := by
    unfold C
    simp [show (2834352 * k + 1228517) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 3685552) = 4251528 * k + 1842776 := by
    unfold C
    simp [show (8503056 * k + 3685552) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 1842776) = 2125764 * k + 921388 := by
    unfold C
    simp [show (4251528 * k + 1842776) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 921388) = 1062882 * k + 460694 := by
    unfold C
    simp [show (2125764 * k + 921388) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 460694) = 531441 * k + 230347 := by
    unfold C
    simp [show (1062882 * k + 460694) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 454491) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 454491)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_454823 : ∀ k : Nat,
    iterate (1048576 * k + 454823) 32 = 531441 * k + 230515 ∧
      531441 * k + 230515 < 1048576 * k + 454823 := by
  intro k
  have h1 : C (1048576 * k + 454823) = 3145728 * k + 1364470 := by
    unfold C
    simp [show (1048576 * k + 454823) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1364470) = 1572864 * k + 682235 := by
    unfold C
    simp [show (3145728 * k + 1364470) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 682235) = 4718592 * k + 2046706 := by
    unfold C
    simp [show (1572864 * k + 682235) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2046706) = 2359296 * k + 1023353 := by
    unfold C
    simp [show (4718592 * k + 2046706) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1023353) = 7077888 * k + 3070060 := by
    unfold C
    simp [show (2359296 * k + 1023353) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 3070060) = 3538944 * k + 1535030 := by
    unfold C
    simp [show (7077888 * k + 3070060) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1535030) = 1769472 * k + 767515 := by
    unfold C
    simp [show (3538944 * k + 1535030) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 767515) = 5308416 * k + 2302546 := by
    unfold C
    simp [show (1769472 * k + 767515) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 2302546) = 2654208 * k + 1151273 := by
    unfold C
    simp [show (5308416 * k + 2302546) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1151273) = 7962624 * k + 3453820 := by
    unfold C
    simp [show (2654208 * k + 1151273) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 3453820) = 3981312 * k + 1726910 := by
    unfold C
    simp [show (7962624 * k + 3453820) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 1726910) = 1990656 * k + 863455 := by
    unfold C
    simp [show (3981312 * k + 1726910) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 863455) = 5971968 * k + 2590366 := by
    unfold C
    simp [show (1990656 * k + 863455) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 2590366) = 2985984 * k + 1295183 := by
    unfold C
    simp [show (5971968 * k + 2590366) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1295183) = 8957952 * k + 3885550 := by
    unfold C
    simp [show (2985984 * k + 1295183) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 3885550) = 4478976 * k + 1942775 := by
    unfold C
    simp [show (8957952 * k + 3885550) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 1942775) = 13436928 * k + 5828326 := by
    unfold C
    simp [show (4478976 * k + 1942775) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 5828326) = 6718464 * k + 2914163 := by
    unfold C
    simp [show (13436928 * k + 5828326) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 2914163) = 20155392 * k + 8742490 := by
    unfold C
    simp [show (6718464 * k + 2914163) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 8742490) = 10077696 * k + 4371245 := by
    unfold C
    simp [show (20155392 * k + 8742490) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 4371245) = 30233088 * k + 13113736 := by
    unfold C
    simp [show (10077696 * k + 4371245) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 13113736) = 15116544 * k + 6556868 := by
    unfold C
    simp [show (30233088 * k + 13113736) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 6556868) = 7558272 * k + 3278434 := by
    unfold C
    simp [show (15116544 * k + 6556868) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 3278434) = 3779136 * k + 1639217 := by
    unfold C
    simp [show (7558272 * k + 3278434) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 1639217) = 11337408 * k + 4917652 := by
    unfold C
    simp [show (3779136 * k + 1639217) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 4917652) = 5668704 * k + 2458826 := by
    unfold C
    simp [show (11337408 * k + 4917652) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 2458826) = 2834352 * k + 1229413 := by
    unfold C
    simp [show (5668704 * k + 2458826) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1229413) = 8503056 * k + 3688240 := by
    unfold C
    simp [show (2834352 * k + 1229413) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 3688240) = 4251528 * k + 1844120 := by
    unfold C
    simp [show (8503056 * k + 3688240) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 1844120) = 2125764 * k + 922060 := by
    unfold C
    simp [show (4251528 * k + 1844120) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 922060) = 1062882 * k + 461030 := by
    unfold C
    simp [show (2125764 * k + 922060) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 461030) = 531441 * k + 230515 := by
    unfold C
    simp [show (1062882 * k + 461030) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 454823) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 454823)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

end CollatzM20Shard057
