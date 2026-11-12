import Mathlib.Data.Nat.Prime.Basic

namespace CollatzM20Shard025

def C (n : Nat) : Nat := if n % 2 = 0 then n / 2 else 3 * n + 1

def iterate (n t : Nat) : Nat := Nat.rec n (fun _ previous => C previous) t

theorem descent_mod1048576_184351 : ∀ k : Nat,
    iterate (1048576 * k + 184351) 32 = 531441 * k + 93434 ∧
      531441 * k + 93434 < 1048576 * k + 184351 := by
  intro k
  have h1 : C (1048576 * k + 184351) = 3145728 * k + 553054 := by
    unfold C
    simp [show (1048576 * k + 184351) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 553054) = 1572864 * k + 276527 := by
    unfold C
    simp [show (3145728 * k + 553054) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 276527) = 4718592 * k + 829582 := by
    unfold C
    simp [show (1572864 * k + 276527) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 829582) = 2359296 * k + 414791 := by
    unfold C
    simp [show (4718592 * k + 829582) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 414791) = 7077888 * k + 1244374 := by
    unfold C
    simp [show (2359296 * k + 414791) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 1244374) = 3538944 * k + 622187 := by
    unfold C
    simp [show (7077888 * k + 1244374) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 622187) = 10616832 * k + 1866562 := by
    unfold C
    simp [show (3538944 * k + 622187) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 1866562) = 5308416 * k + 933281 := by
    unfold C
    simp [show (10616832 * k + 1866562) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 933281) = 15925248 * k + 2799844 := by
    unfold C
    simp [show (5308416 * k + 933281) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 2799844) = 7962624 * k + 1399922 := by
    unfold C
    simp [show (15925248 * k + 2799844) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 1399922) = 3981312 * k + 699961 := by
    unfold C
    simp [show (7962624 * k + 1399922) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 699961) = 11943936 * k + 2099884 := by
    unfold C
    simp [show (3981312 * k + 699961) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 2099884) = 5971968 * k + 1049942 := by
    unfold C
    simp [show (11943936 * k + 2099884) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 1049942) = 2985984 * k + 524971 := by
    unfold C
    simp [show (5971968 * k + 1049942) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 524971) = 8957952 * k + 1574914 := by
    unfold C
    simp [show (2985984 * k + 524971) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 1574914) = 4478976 * k + 787457 := by
    unfold C
    simp [show (8957952 * k + 1574914) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 787457) = 13436928 * k + 2362372 := by
    unfold C
    simp [show (4478976 * k + 787457) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 2362372) = 6718464 * k + 1181186 := by
    unfold C
    simp [show (13436928 * k + 2362372) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 1181186) = 3359232 * k + 590593 := by
    unfold C
    simp [show (6718464 * k + 1181186) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 590593) = 10077696 * k + 1771780 := by
    unfold C
    simp [show (3359232 * k + 590593) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 1771780) = 5038848 * k + 885890 := by
    unfold C
    simp [show (10077696 * k + 1771780) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 885890) = 2519424 * k + 442945 := by
    unfold C
    simp [show (5038848 * k + 885890) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 442945) = 7558272 * k + 1328836 := by
    unfold C
    simp [show (2519424 * k + 442945) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 1328836) = 3779136 * k + 664418 := by
    unfold C
    simp [show (7558272 * k + 1328836) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 664418) = 1889568 * k + 332209 := by
    unfold C
    simp [show (3779136 * k + 664418) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 332209) = 5668704 * k + 996628 := by
    unfold C
    simp [show (1889568 * k + 332209) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 996628) = 2834352 * k + 498314 := by
    unfold C
    simp [show (5668704 * k + 996628) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 498314) = 1417176 * k + 249157 := by
    unfold C
    simp [show (2834352 * k + 498314) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 249157) = 4251528 * k + 747472 := by
    unfold C
    simp [show (1417176 * k + 249157) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 747472) = 2125764 * k + 373736 := by
    unfold C
    simp [show (4251528 * k + 747472) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 373736) = 1062882 * k + 186868 := by
    unfold C
    simp [show (2125764 * k + 373736) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 186868) = 531441 * k + 93434 := by
    unfold C
    simp [show (1062882 * k + 186868) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 184351) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 184351)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_184831 : ∀ k : Nat,
    iterate (1048576 * k + 184831) 32 = 531441 * k + 93677 ∧
      531441 * k + 93677 < 1048576 * k + 184831 := by
  intro k
  have h1 : C (1048576 * k + 184831) = 3145728 * k + 554494 := by
    unfold C
    simp [show (1048576 * k + 184831) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 554494) = 1572864 * k + 277247 := by
    unfold C
    simp [show (3145728 * k + 554494) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 277247) = 4718592 * k + 831742 := by
    unfold C
    simp [show (1572864 * k + 277247) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 831742) = 2359296 * k + 415871 := by
    unfold C
    simp [show (4718592 * k + 831742) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 415871) = 7077888 * k + 1247614 := by
    unfold C
    simp [show (2359296 * k + 415871) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 1247614) = 3538944 * k + 623807 := by
    unfold C
    simp [show (7077888 * k + 1247614) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 623807) = 10616832 * k + 1871422 := by
    unfold C
    simp [show (3538944 * k + 623807) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 1871422) = 5308416 * k + 935711 := by
    unfold C
    simp [show (10616832 * k + 1871422) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 935711) = 15925248 * k + 2807134 := by
    unfold C
    simp [show (5308416 * k + 935711) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 2807134) = 7962624 * k + 1403567 := by
    unfold C
    simp [show (15925248 * k + 2807134) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 1403567) = 23887872 * k + 4210702 := by
    unfold C
    simp [show (7962624 * k + 1403567) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 4210702) = 11943936 * k + 2105351 := by
    unfold C
    simp [show (23887872 * k + 4210702) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 2105351) = 35831808 * k + 6316054 := by
    unfold C
    simp [show (11943936 * k + 2105351) % 2 ≠ 0 by omega]
    omega
  have h14 : C (35831808 * k + 6316054) = 17915904 * k + 3158027 := by
    unfold C
    simp [show (35831808 * k + 6316054) % 2 = 0 by omega]
    omega
  have h15 : C (17915904 * k + 3158027) = 53747712 * k + 9474082 := by
    unfold C
    simp [show (17915904 * k + 3158027) % 2 ≠ 0 by omega]
    omega
  have h16 : C (53747712 * k + 9474082) = 26873856 * k + 4737041 := by
    unfold C
    simp [show (53747712 * k + 9474082) % 2 = 0 by omega]
    omega
  have h17 : C (26873856 * k + 4737041) = 80621568 * k + 14211124 := by
    unfold C
    simp [show (26873856 * k + 4737041) % 2 ≠ 0 by omega]
    omega
  have h18 : C (80621568 * k + 14211124) = 40310784 * k + 7105562 := by
    unfold C
    simp [show (80621568 * k + 14211124) % 2 = 0 by omega]
    omega
  have h19 : C (40310784 * k + 7105562) = 20155392 * k + 3552781 := by
    unfold C
    simp [show (40310784 * k + 7105562) % 2 = 0 by omega]
    omega
  have h20 : C (20155392 * k + 3552781) = 60466176 * k + 10658344 := by
    unfold C
    simp [show (20155392 * k + 3552781) % 2 ≠ 0 by omega]
    omega
  have h21 : C (60466176 * k + 10658344) = 30233088 * k + 5329172 := by
    unfold C
    simp [show (60466176 * k + 10658344) % 2 = 0 by omega]
    omega
  have h22 : C (30233088 * k + 5329172) = 15116544 * k + 2664586 := by
    unfold C
    simp [show (30233088 * k + 5329172) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 2664586) = 7558272 * k + 1332293 := by
    unfold C
    simp [show (15116544 * k + 2664586) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 1332293) = 22674816 * k + 3996880 := by
    unfold C
    simp [show (7558272 * k + 1332293) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 3996880) = 11337408 * k + 1998440 := by
    unfold C
    simp [show (22674816 * k + 3996880) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 1998440) = 5668704 * k + 999220 := by
    unfold C
    simp [show (11337408 * k + 1998440) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 999220) = 2834352 * k + 499610 := by
    unfold C
    simp [show (5668704 * k + 999220) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 499610) = 1417176 * k + 249805 := by
    unfold C
    simp [show (2834352 * k + 499610) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 249805) = 4251528 * k + 749416 := by
    unfold C
    simp [show (1417176 * k + 249805) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 749416) = 2125764 * k + 374708 := by
    unfold C
    simp [show (4251528 * k + 749416) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 374708) = 1062882 * k + 187354 := by
    unfold C
    simp [show (2125764 * k + 374708) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 187354) = 531441 * k + 93677 := by
    unfold C
    simp [show (1062882 * k + 187354) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 184831) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 184831)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_184923 : ∀ k : Nat,
    iterate (1048576 * k + 184923) 32 = 531441 * k + 93724 ∧
      531441 * k + 93724 < 1048576 * k + 184923 := by
  intro k
  have h1 : C (1048576 * k + 184923) = 3145728 * k + 554770 := by
    unfold C
    simp [show (1048576 * k + 184923) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 554770) = 1572864 * k + 277385 := by
    unfold C
    simp [show (3145728 * k + 554770) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 277385) = 4718592 * k + 832156 := by
    unfold C
    simp [show (1572864 * k + 277385) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 832156) = 2359296 * k + 416078 := by
    unfold C
    simp [show (4718592 * k + 832156) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 416078) = 1179648 * k + 208039 := by
    unfold C
    simp [show (2359296 * k + 416078) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 208039) = 3538944 * k + 624118 := by
    unfold C
    simp [show (1179648 * k + 208039) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 624118) = 1769472 * k + 312059 := by
    unfold C
    simp [show (3538944 * k + 624118) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 312059) = 5308416 * k + 936178 := by
    unfold C
    simp [show (1769472 * k + 312059) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 936178) = 2654208 * k + 468089 := by
    unfold C
    simp [show (5308416 * k + 936178) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 468089) = 7962624 * k + 1404268 := by
    unfold C
    simp [show (2654208 * k + 468089) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 1404268) = 3981312 * k + 702134 := by
    unfold C
    simp [show (7962624 * k + 1404268) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 702134) = 1990656 * k + 351067 := by
    unfold C
    simp [show (3981312 * k + 702134) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 351067) = 5971968 * k + 1053202 := by
    unfold C
    simp [show (1990656 * k + 351067) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 1053202) = 2985984 * k + 526601 := by
    unfold C
    simp [show (5971968 * k + 1053202) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 526601) = 8957952 * k + 1579804 := by
    unfold C
    simp [show (2985984 * k + 526601) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 1579804) = 4478976 * k + 789902 := by
    unfold C
    simp [show (8957952 * k + 1579804) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 789902) = 2239488 * k + 394951 := by
    unfold C
    simp [show (4478976 * k + 789902) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 394951) = 6718464 * k + 1184854 := by
    unfold C
    simp [show (2239488 * k + 394951) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 1184854) = 3359232 * k + 592427 := by
    unfold C
    simp [show (6718464 * k + 1184854) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 592427) = 10077696 * k + 1777282 := by
    unfold C
    simp [show (3359232 * k + 592427) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 1777282) = 5038848 * k + 888641 := by
    unfold C
    simp [show (10077696 * k + 1777282) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 888641) = 15116544 * k + 2665924 := by
    unfold C
    simp [show (5038848 * k + 888641) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 2665924) = 7558272 * k + 1332962 := by
    unfold C
    simp [show (15116544 * k + 2665924) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 1332962) = 3779136 * k + 666481 := by
    unfold C
    simp [show (7558272 * k + 1332962) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 666481) = 11337408 * k + 1999444 := by
    unfold C
    simp [show (3779136 * k + 666481) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 1999444) = 5668704 * k + 999722 := by
    unfold C
    simp [show (11337408 * k + 1999444) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 999722) = 2834352 * k + 499861 := by
    unfold C
    simp [show (5668704 * k + 999722) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 499861) = 8503056 * k + 1499584 := by
    unfold C
    simp [show (2834352 * k + 499861) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 1499584) = 4251528 * k + 749792 := by
    unfold C
    simp [show (8503056 * k + 1499584) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 749792) = 2125764 * k + 374896 := by
    unfold C
    simp [show (4251528 * k + 749792) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 374896) = 1062882 * k + 187448 := by
    unfold C
    simp [show (2125764 * k + 374896) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 187448) = 531441 * k + 93724 := by
    unfold C
    simp [show (1062882 * k + 187448) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 184923) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 184923)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_185279 : ∀ k : Nat,
    iterate (1048576 * k + 185279) 32 = 531441 * k + 93904 ∧
      531441 * k + 93904 < 1048576 * k + 185279 := by
  intro k
  have h1 : C (1048576 * k + 185279) = 3145728 * k + 555838 := by
    unfold C
    simp [show (1048576 * k + 185279) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 555838) = 1572864 * k + 277919 := by
    unfold C
    simp [show (3145728 * k + 555838) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 277919) = 4718592 * k + 833758 := by
    unfold C
    simp [show (1572864 * k + 277919) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 833758) = 2359296 * k + 416879 := by
    unfold C
    simp [show (4718592 * k + 833758) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 416879) = 7077888 * k + 1250638 := by
    unfold C
    simp [show (2359296 * k + 416879) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 1250638) = 3538944 * k + 625319 := by
    unfold C
    simp [show (7077888 * k + 1250638) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 625319) = 10616832 * k + 1875958 := by
    unfold C
    simp [show (3538944 * k + 625319) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 1875958) = 5308416 * k + 937979 := by
    unfold C
    simp [show (10616832 * k + 1875958) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 937979) = 15925248 * k + 2813938 := by
    unfold C
    simp [show (5308416 * k + 937979) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 2813938) = 7962624 * k + 1406969 := by
    unfold C
    simp [show (15925248 * k + 2813938) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 1406969) = 23887872 * k + 4220908 := by
    unfold C
    simp [show (7962624 * k + 1406969) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 4220908) = 11943936 * k + 2110454 := by
    unfold C
    simp [show (23887872 * k + 4220908) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 2110454) = 5971968 * k + 1055227 := by
    unfold C
    simp [show (11943936 * k + 2110454) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 1055227) = 17915904 * k + 3165682 := by
    unfold C
    simp [show (5971968 * k + 1055227) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 3165682) = 8957952 * k + 1582841 := by
    unfold C
    simp [show (17915904 * k + 3165682) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 1582841) = 26873856 * k + 4748524 := by
    unfold C
    simp [show (8957952 * k + 1582841) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 4748524) = 13436928 * k + 2374262 := by
    unfold C
    simp [show (26873856 * k + 4748524) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 2374262) = 6718464 * k + 1187131 := by
    unfold C
    simp [show (13436928 * k + 2374262) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 1187131) = 20155392 * k + 3561394 := by
    unfold C
    simp [show (6718464 * k + 1187131) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 3561394) = 10077696 * k + 1780697 := by
    unfold C
    simp [show (20155392 * k + 3561394) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 1780697) = 30233088 * k + 5342092 := by
    unfold C
    simp [show (10077696 * k + 1780697) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 5342092) = 15116544 * k + 2671046 := by
    unfold C
    simp [show (30233088 * k + 5342092) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 2671046) = 7558272 * k + 1335523 := by
    unfold C
    simp [show (15116544 * k + 2671046) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 1335523) = 22674816 * k + 4006570 := by
    unfold C
    simp [show (7558272 * k + 1335523) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 4006570) = 11337408 * k + 2003285 := by
    unfold C
    simp [show (22674816 * k + 4006570) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 2003285) = 34012224 * k + 6009856 := by
    unfold C
    simp [show (11337408 * k + 2003285) % 2 ≠ 0 by omega]
    omega
  have h27 : C (34012224 * k + 6009856) = 17006112 * k + 3004928 := by
    unfold C
    simp [show (34012224 * k + 6009856) % 2 = 0 by omega]
    omega
  have h28 : C (17006112 * k + 3004928) = 8503056 * k + 1502464 := by
    unfold C
    simp [show (17006112 * k + 3004928) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 1502464) = 4251528 * k + 751232 := by
    unfold C
    simp [show (8503056 * k + 1502464) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 751232) = 2125764 * k + 375616 := by
    unfold C
    simp [show (4251528 * k + 751232) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 375616) = 1062882 * k + 187808 := by
    unfold C
    simp [show (2125764 * k + 375616) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 187808) = 531441 * k + 93904 := by
    unfold C
    simp [show (1062882 * k + 187808) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 185279) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 185279)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_185671 : ∀ k : Nat,
    iterate (1048576 * k + 185671) 32 = 531441 * k + 94103 ∧
      531441 * k + 94103 < 1048576 * k + 185671 := by
  intro k
  have h1 : C (1048576 * k + 185671) = 3145728 * k + 557014 := by
    unfold C
    simp [show (1048576 * k + 185671) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 557014) = 1572864 * k + 278507 := by
    unfold C
    simp [show (3145728 * k + 557014) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 278507) = 4718592 * k + 835522 := by
    unfold C
    simp [show (1572864 * k + 278507) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 835522) = 2359296 * k + 417761 := by
    unfold C
    simp [show (4718592 * k + 835522) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 417761) = 7077888 * k + 1253284 := by
    unfold C
    simp [show (2359296 * k + 417761) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 1253284) = 3538944 * k + 626642 := by
    unfold C
    simp [show (7077888 * k + 1253284) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 626642) = 1769472 * k + 313321 := by
    unfold C
    simp [show (3538944 * k + 626642) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 313321) = 5308416 * k + 939964 := by
    unfold C
    simp [show (1769472 * k + 313321) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 939964) = 2654208 * k + 469982 := by
    unfold C
    simp [show (5308416 * k + 939964) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 469982) = 1327104 * k + 234991 := by
    unfold C
    simp [show (2654208 * k + 469982) % 2 = 0 by omega]
    omega
  have h11 : C (1327104 * k + 234991) = 3981312 * k + 704974 := by
    unfold C
    simp [show (1327104 * k + 234991) % 2 ≠ 0 by omega]
    omega
  have h12 : C (3981312 * k + 704974) = 1990656 * k + 352487 := by
    unfold C
    simp [show (3981312 * k + 704974) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 352487) = 5971968 * k + 1057462 := by
    unfold C
    simp [show (1990656 * k + 352487) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 1057462) = 2985984 * k + 528731 := by
    unfold C
    simp [show (5971968 * k + 1057462) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 528731) = 8957952 * k + 1586194 := by
    unfold C
    simp [show (2985984 * k + 528731) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 1586194) = 4478976 * k + 793097 := by
    unfold C
    simp [show (8957952 * k + 1586194) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 793097) = 13436928 * k + 2379292 := by
    unfold C
    simp [show (4478976 * k + 793097) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 2379292) = 6718464 * k + 1189646 := by
    unfold C
    simp [show (13436928 * k + 2379292) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 1189646) = 3359232 * k + 594823 := by
    unfold C
    simp [show (6718464 * k + 1189646) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 594823) = 10077696 * k + 1784470 := by
    unfold C
    simp [show (3359232 * k + 594823) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 1784470) = 5038848 * k + 892235 := by
    unfold C
    simp [show (10077696 * k + 1784470) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 892235) = 15116544 * k + 2676706 := by
    unfold C
    simp [show (5038848 * k + 892235) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 2676706) = 7558272 * k + 1338353 := by
    unfold C
    simp [show (15116544 * k + 2676706) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 1338353) = 22674816 * k + 4015060 := by
    unfold C
    simp [show (7558272 * k + 1338353) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 4015060) = 11337408 * k + 2007530 := by
    unfold C
    simp [show (22674816 * k + 4015060) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 2007530) = 5668704 * k + 1003765 := by
    unfold C
    simp [show (11337408 * k + 2007530) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 1003765) = 17006112 * k + 3011296 := by
    unfold C
    simp [show (5668704 * k + 1003765) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 3011296) = 8503056 * k + 1505648 := by
    unfold C
    simp [show (17006112 * k + 3011296) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 1505648) = 4251528 * k + 752824 := by
    unfold C
    simp [show (8503056 * k + 1505648) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 752824) = 2125764 * k + 376412 := by
    unfold C
    simp [show (4251528 * k + 752824) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 376412) = 1062882 * k + 188206 := by
    unfold C
    simp [show (2125764 * k + 376412) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 188206) = 531441 * k + 94103 := by
    unfold C
    simp [show (1062882 * k + 188206) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 185671) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 185671)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_185807 : ∀ k : Nat,
    iterate (1048576 * k + 185807) 32 = 531441 * k + 94172 ∧
      531441 * k + 94172 < 1048576 * k + 185807 := by
  intro k
  have h1 : C (1048576 * k + 185807) = 3145728 * k + 557422 := by
    unfold C
    simp [show (1048576 * k + 185807) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 557422) = 1572864 * k + 278711 := by
    unfold C
    simp [show (3145728 * k + 557422) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 278711) = 4718592 * k + 836134 := by
    unfold C
    simp [show (1572864 * k + 278711) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 836134) = 2359296 * k + 418067 := by
    unfold C
    simp [show (4718592 * k + 836134) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 418067) = 7077888 * k + 1254202 := by
    unfold C
    simp [show (2359296 * k + 418067) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 1254202) = 3538944 * k + 627101 := by
    unfold C
    simp [show (7077888 * k + 1254202) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 627101) = 10616832 * k + 1881304 := by
    unfold C
    simp [show (3538944 * k + 627101) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 1881304) = 5308416 * k + 940652 := by
    unfold C
    simp [show (10616832 * k + 1881304) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 940652) = 2654208 * k + 470326 := by
    unfold C
    simp [show (5308416 * k + 940652) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 470326) = 1327104 * k + 235163 := by
    unfold C
    simp [show (2654208 * k + 470326) % 2 = 0 by omega]
    omega
  have h11 : C (1327104 * k + 235163) = 3981312 * k + 705490 := by
    unfold C
    simp [show (1327104 * k + 235163) % 2 ≠ 0 by omega]
    omega
  have h12 : C (3981312 * k + 705490) = 1990656 * k + 352745 := by
    unfold C
    simp [show (3981312 * k + 705490) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 352745) = 5971968 * k + 1058236 := by
    unfold C
    simp [show (1990656 * k + 352745) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 1058236) = 2985984 * k + 529118 := by
    unfold C
    simp [show (5971968 * k + 1058236) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 529118) = 1492992 * k + 264559 := by
    unfold C
    simp [show (2985984 * k + 529118) % 2 = 0 by omega]
    omega
  have h16 : C (1492992 * k + 264559) = 4478976 * k + 793678 := by
    unfold C
    simp [show (1492992 * k + 264559) % 2 ≠ 0 by omega]
    omega
  have h17 : C (4478976 * k + 793678) = 2239488 * k + 396839 := by
    unfold C
    simp [show (4478976 * k + 793678) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 396839) = 6718464 * k + 1190518 := by
    unfold C
    simp [show (2239488 * k + 396839) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 1190518) = 3359232 * k + 595259 := by
    unfold C
    simp [show (6718464 * k + 1190518) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 595259) = 10077696 * k + 1785778 := by
    unfold C
    simp [show (3359232 * k + 595259) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 1785778) = 5038848 * k + 892889 := by
    unfold C
    simp [show (10077696 * k + 1785778) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 892889) = 15116544 * k + 2678668 := by
    unfold C
    simp [show (5038848 * k + 892889) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 2678668) = 7558272 * k + 1339334 := by
    unfold C
    simp [show (15116544 * k + 2678668) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 1339334) = 3779136 * k + 669667 := by
    unfold C
    simp [show (7558272 * k + 1339334) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 669667) = 11337408 * k + 2009002 := by
    unfold C
    simp [show (3779136 * k + 669667) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 2009002) = 5668704 * k + 1004501 := by
    unfold C
    simp [show (11337408 * k + 2009002) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 1004501) = 17006112 * k + 3013504 := by
    unfold C
    simp [show (5668704 * k + 1004501) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 3013504) = 8503056 * k + 1506752 := by
    unfold C
    simp [show (17006112 * k + 3013504) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 1506752) = 4251528 * k + 753376 := by
    unfold C
    simp [show (8503056 * k + 1506752) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 753376) = 2125764 * k + 376688 := by
    unfold C
    simp [show (4251528 * k + 753376) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 376688) = 1062882 * k + 188344 := by
    unfold C
    simp [show (2125764 * k + 376688) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 188344) = 531441 * k + 94172 := by
    unfold C
    simp [show (1062882 * k + 188344) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 185807) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 185807)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_185959 : ∀ k : Nat,
    iterate (1048576 * k + 185959) 32 = 531441 * k + 94249 ∧
      531441 * k + 94249 < 1048576 * k + 185959 := by
  intro k
  have h1 : C (1048576 * k + 185959) = 3145728 * k + 557878 := by
    unfold C
    simp [show (1048576 * k + 185959) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 557878) = 1572864 * k + 278939 := by
    unfold C
    simp [show (3145728 * k + 557878) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 278939) = 4718592 * k + 836818 := by
    unfold C
    simp [show (1572864 * k + 278939) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 836818) = 2359296 * k + 418409 := by
    unfold C
    simp [show (4718592 * k + 836818) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 418409) = 7077888 * k + 1255228 := by
    unfold C
    simp [show (2359296 * k + 418409) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 1255228) = 3538944 * k + 627614 := by
    unfold C
    simp [show (7077888 * k + 1255228) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 627614) = 1769472 * k + 313807 := by
    unfold C
    simp [show (3538944 * k + 627614) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 313807) = 5308416 * k + 941422 := by
    unfold C
    simp [show (1769472 * k + 313807) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 941422) = 2654208 * k + 470711 := by
    unfold C
    simp [show (5308416 * k + 941422) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 470711) = 7962624 * k + 1412134 := by
    unfold C
    simp [show (2654208 * k + 470711) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 1412134) = 3981312 * k + 706067 := by
    unfold C
    simp [show (7962624 * k + 1412134) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 706067) = 11943936 * k + 2118202 := by
    unfold C
    simp [show (3981312 * k + 706067) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 2118202) = 5971968 * k + 1059101 := by
    unfold C
    simp [show (11943936 * k + 2118202) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 1059101) = 17915904 * k + 3177304 := by
    unfold C
    simp [show (5971968 * k + 1059101) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 3177304) = 8957952 * k + 1588652 := by
    unfold C
    simp [show (17915904 * k + 3177304) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 1588652) = 4478976 * k + 794326 := by
    unfold C
    simp [show (8957952 * k + 1588652) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 794326) = 2239488 * k + 397163 := by
    unfold C
    simp [show (4478976 * k + 794326) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 397163) = 6718464 * k + 1191490 := by
    unfold C
    simp [show (2239488 * k + 397163) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 1191490) = 3359232 * k + 595745 := by
    unfold C
    simp [show (6718464 * k + 1191490) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 595745) = 10077696 * k + 1787236 := by
    unfold C
    simp [show (3359232 * k + 595745) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 1787236) = 5038848 * k + 893618 := by
    unfold C
    simp [show (10077696 * k + 1787236) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 893618) = 2519424 * k + 446809 := by
    unfold C
    simp [show (5038848 * k + 893618) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 446809) = 7558272 * k + 1340428 := by
    unfold C
    simp [show (2519424 * k + 446809) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 1340428) = 3779136 * k + 670214 := by
    unfold C
    simp [show (7558272 * k + 1340428) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 670214) = 1889568 * k + 335107 := by
    unfold C
    simp [show (3779136 * k + 670214) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 335107) = 5668704 * k + 1005322 := by
    unfold C
    simp [show (1889568 * k + 335107) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 1005322) = 2834352 * k + 502661 := by
    unfold C
    simp [show (5668704 * k + 1005322) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 502661) = 8503056 * k + 1507984 := by
    unfold C
    simp [show (2834352 * k + 502661) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 1507984) = 4251528 * k + 753992 := by
    unfold C
    simp [show (8503056 * k + 1507984) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 753992) = 2125764 * k + 376996 := by
    unfold C
    simp [show (4251528 * k + 753992) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 376996) = 1062882 * k + 188498 := by
    unfold C
    simp [show (2125764 * k + 376996) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 188498) = 531441 * k + 94249 := by
    unfold C
    simp [show (1062882 * k + 188498) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 185959) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 185959)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_186139 : ∀ k : Nat,
    iterate (1048576 * k + 186139) 32 = 531441 * k + 94340 ∧
      531441 * k + 94340 < 1048576 * k + 186139 := by
  intro k
  have h1 : C (1048576 * k + 186139) = 3145728 * k + 558418 := by
    unfold C
    simp [show (1048576 * k + 186139) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 558418) = 1572864 * k + 279209 := by
    unfold C
    simp [show (3145728 * k + 558418) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 279209) = 4718592 * k + 837628 := by
    unfold C
    simp [show (1572864 * k + 279209) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 837628) = 2359296 * k + 418814 := by
    unfold C
    simp [show (4718592 * k + 837628) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 418814) = 1179648 * k + 209407 := by
    unfold C
    simp [show (2359296 * k + 418814) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 209407) = 3538944 * k + 628222 := by
    unfold C
    simp [show (1179648 * k + 209407) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 628222) = 1769472 * k + 314111 := by
    unfold C
    simp [show (3538944 * k + 628222) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 314111) = 5308416 * k + 942334 := by
    unfold C
    simp [show (1769472 * k + 314111) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 942334) = 2654208 * k + 471167 := by
    unfold C
    simp [show (5308416 * k + 942334) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 471167) = 7962624 * k + 1413502 := by
    unfold C
    simp [show (2654208 * k + 471167) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 1413502) = 3981312 * k + 706751 := by
    unfold C
    simp [show (7962624 * k + 1413502) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 706751) = 11943936 * k + 2120254 := by
    unfold C
    simp [show (3981312 * k + 706751) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 2120254) = 5971968 * k + 1060127 := by
    unfold C
    simp [show (11943936 * k + 2120254) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 1060127) = 17915904 * k + 3180382 := by
    unfold C
    simp [show (5971968 * k + 1060127) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 3180382) = 8957952 * k + 1590191 := by
    unfold C
    simp [show (17915904 * k + 3180382) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 1590191) = 26873856 * k + 4770574 := by
    unfold C
    simp [show (8957952 * k + 1590191) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 4770574) = 13436928 * k + 2385287 := by
    unfold C
    simp [show (26873856 * k + 4770574) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 2385287) = 40310784 * k + 7155862 := by
    unfold C
    simp [show (13436928 * k + 2385287) % 2 ≠ 0 by omega]
    omega
  have h19 : C (40310784 * k + 7155862) = 20155392 * k + 3577931 := by
    unfold C
    simp [show (40310784 * k + 7155862) % 2 = 0 by omega]
    omega
  have h20 : C (20155392 * k + 3577931) = 60466176 * k + 10733794 := by
    unfold C
    simp [show (20155392 * k + 3577931) % 2 ≠ 0 by omega]
    omega
  have h21 : C (60466176 * k + 10733794) = 30233088 * k + 5366897 := by
    unfold C
    simp [show (60466176 * k + 10733794) % 2 = 0 by omega]
    omega
  have h22 : C (30233088 * k + 5366897) = 90699264 * k + 16100692 := by
    unfold C
    simp [show (30233088 * k + 5366897) % 2 ≠ 0 by omega]
    omega
  have h23 : C (90699264 * k + 16100692) = 45349632 * k + 8050346 := by
    unfold C
    simp [show (90699264 * k + 16100692) % 2 = 0 by omega]
    omega
  have h24 : C (45349632 * k + 8050346) = 22674816 * k + 4025173 := by
    unfold C
    simp [show (45349632 * k + 8050346) % 2 = 0 by omega]
    omega
  have h25 : C (22674816 * k + 4025173) = 68024448 * k + 12075520 := by
    unfold C
    simp [show (22674816 * k + 4025173) % 2 ≠ 0 by omega]
    omega
  have h26 : C (68024448 * k + 12075520) = 34012224 * k + 6037760 := by
    unfold C
    simp [show (68024448 * k + 12075520) % 2 = 0 by omega]
    omega
  have h27 : C (34012224 * k + 6037760) = 17006112 * k + 3018880 := by
    unfold C
    simp [show (34012224 * k + 6037760) % 2 = 0 by omega]
    omega
  have h28 : C (17006112 * k + 3018880) = 8503056 * k + 1509440 := by
    unfold C
    simp [show (17006112 * k + 3018880) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 1509440) = 4251528 * k + 754720 := by
    unfold C
    simp [show (8503056 * k + 1509440) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 754720) = 2125764 * k + 377360 := by
    unfold C
    simp [show (4251528 * k + 754720) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 377360) = 1062882 * k + 188680 := by
    unfold C
    simp [show (2125764 * k + 377360) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 188680) = 531441 * k + 94340 := by
    unfold C
    simp [show (1062882 * k + 188680) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 186139) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 186139)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_186535 : ∀ k : Nat,
    iterate (1048576 * k + 186535) 32 = 531441 * k + 94541 ∧
      531441 * k + 94541 < 1048576 * k + 186535 := by
  intro k
  have h1 : C (1048576 * k + 186535) = 3145728 * k + 559606 := by
    unfold C
    simp [show (1048576 * k + 186535) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 559606) = 1572864 * k + 279803 := by
    unfold C
    simp [show (3145728 * k + 559606) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 279803) = 4718592 * k + 839410 := by
    unfold C
    simp [show (1572864 * k + 279803) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 839410) = 2359296 * k + 419705 := by
    unfold C
    simp [show (4718592 * k + 839410) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 419705) = 7077888 * k + 1259116 := by
    unfold C
    simp [show (2359296 * k + 419705) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 1259116) = 3538944 * k + 629558 := by
    unfold C
    simp [show (7077888 * k + 1259116) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 629558) = 1769472 * k + 314779 := by
    unfold C
    simp [show (3538944 * k + 629558) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 314779) = 5308416 * k + 944338 := by
    unfold C
    simp [show (1769472 * k + 314779) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 944338) = 2654208 * k + 472169 := by
    unfold C
    simp [show (5308416 * k + 944338) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 472169) = 7962624 * k + 1416508 := by
    unfold C
    simp [show (2654208 * k + 472169) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 1416508) = 3981312 * k + 708254 := by
    unfold C
    simp [show (7962624 * k + 1416508) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 708254) = 1990656 * k + 354127 := by
    unfold C
    simp [show (3981312 * k + 708254) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 354127) = 5971968 * k + 1062382 := by
    unfold C
    simp [show (1990656 * k + 354127) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 1062382) = 2985984 * k + 531191 := by
    unfold C
    simp [show (5971968 * k + 1062382) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 531191) = 8957952 * k + 1593574 := by
    unfold C
    simp [show (2985984 * k + 531191) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 1593574) = 4478976 * k + 796787 := by
    unfold C
    simp [show (8957952 * k + 1593574) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 796787) = 13436928 * k + 2390362 := by
    unfold C
    simp [show (4478976 * k + 796787) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 2390362) = 6718464 * k + 1195181 := by
    unfold C
    simp [show (13436928 * k + 2390362) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 1195181) = 20155392 * k + 3585544 := by
    unfold C
    simp [show (6718464 * k + 1195181) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 3585544) = 10077696 * k + 1792772 := by
    unfold C
    simp [show (20155392 * k + 3585544) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 1792772) = 5038848 * k + 896386 := by
    unfold C
    simp [show (10077696 * k + 1792772) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 896386) = 2519424 * k + 448193 := by
    unfold C
    simp [show (5038848 * k + 896386) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 448193) = 7558272 * k + 1344580 := by
    unfold C
    simp [show (2519424 * k + 448193) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 1344580) = 3779136 * k + 672290 := by
    unfold C
    simp [show (7558272 * k + 1344580) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 672290) = 1889568 * k + 336145 := by
    unfold C
    simp [show (3779136 * k + 672290) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 336145) = 5668704 * k + 1008436 := by
    unfold C
    simp [show (1889568 * k + 336145) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 1008436) = 2834352 * k + 504218 := by
    unfold C
    simp [show (5668704 * k + 1008436) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 504218) = 1417176 * k + 252109 := by
    unfold C
    simp [show (2834352 * k + 504218) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 252109) = 4251528 * k + 756328 := by
    unfold C
    simp [show (1417176 * k + 252109) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 756328) = 2125764 * k + 378164 := by
    unfold C
    simp [show (4251528 * k + 756328) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 378164) = 1062882 * k + 189082 := by
    unfold C
    simp [show (2125764 * k + 378164) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 189082) = 531441 * k + 94541 := by
    unfold C
    simp [show (1062882 * k + 189082) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 186535) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 186535)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_186991 : ∀ k : Nat,
    iterate (1048576 * k + 186991) 32 = 531441 * k + 94772 ∧
      531441 * k + 94772 < 1048576 * k + 186991 := by
  intro k
  have h1 : C (1048576 * k + 186991) = 3145728 * k + 560974 := by
    unfold C
    simp [show (1048576 * k + 186991) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 560974) = 1572864 * k + 280487 := by
    unfold C
    simp [show (3145728 * k + 560974) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 280487) = 4718592 * k + 841462 := by
    unfold C
    simp [show (1572864 * k + 280487) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 841462) = 2359296 * k + 420731 := by
    unfold C
    simp [show (4718592 * k + 841462) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 420731) = 7077888 * k + 1262194 := by
    unfold C
    simp [show (2359296 * k + 420731) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 1262194) = 3538944 * k + 631097 := by
    unfold C
    simp [show (7077888 * k + 1262194) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 631097) = 10616832 * k + 1893292 := by
    unfold C
    simp [show (3538944 * k + 631097) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 1893292) = 5308416 * k + 946646 := by
    unfold C
    simp [show (10616832 * k + 1893292) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 946646) = 2654208 * k + 473323 := by
    unfold C
    simp [show (5308416 * k + 946646) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 473323) = 7962624 * k + 1419970 := by
    unfold C
    simp [show (2654208 * k + 473323) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 1419970) = 3981312 * k + 709985 := by
    unfold C
    simp [show (7962624 * k + 1419970) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 709985) = 11943936 * k + 2129956 := by
    unfold C
    simp [show (3981312 * k + 709985) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 2129956) = 5971968 * k + 1064978 := by
    unfold C
    simp [show (11943936 * k + 2129956) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 1064978) = 2985984 * k + 532489 := by
    unfold C
    simp [show (5971968 * k + 1064978) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 532489) = 8957952 * k + 1597468 := by
    unfold C
    simp [show (2985984 * k + 532489) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 1597468) = 4478976 * k + 798734 := by
    unfold C
    simp [show (8957952 * k + 1597468) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 798734) = 2239488 * k + 399367 := by
    unfold C
    simp [show (4478976 * k + 798734) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 399367) = 6718464 * k + 1198102 := by
    unfold C
    simp [show (2239488 * k + 399367) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 1198102) = 3359232 * k + 599051 := by
    unfold C
    simp [show (6718464 * k + 1198102) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 599051) = 10077696 * k + 1797154 := by
    unfold C
    simp [show (3359232 * k + 599051) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 1797154) = 5038848 * k + 898577 := by
    unfold C
    simp [show (10077696 * k + 1797154) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 898577) = 15116544 * k + 2695732 := by
    unfold C
    simp [show (5038848 * k + 898577) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 2695732) = 7558272 * k + 1347866 := by
    unfold C
    simp [show (15116544 * k + 2695732) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 1347866) = 3779136 * k + 673933 := by
    unfold C
    simp [show (7558272 * k + 1347866) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 673933) = 11337408 * k + 2021800 := by
    unfold C
    simp [show (3779136 * k + 673933) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 2021800) = 5668704 * k + 1010900 := by
    unfold C
    simp [show (11337408 * k + 2021800) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 1010900) = 2834352 * k + 505450 := by
    unfold C
    simp [show (5668704 * k + 1010900) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 505450) = 1417176 * k + 252725 := by
    unfold C
    simp [show (2834352 * k + 505450) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 252725) = 4251528 * k + 758176 := by
    unfold C
    simp [show (1417176 * k + 252725) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 758176) = 2125764 * k + 379088 := by
    unfold C
    simp [show (4251528 * k + 758176) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 379088) = 1062882 * k + 189544 := by
    unfold C
    simp [show (2125764 * k + 379088) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 189544) = 531441 * k + 94772 := by
    unfold C
    simp [show (1062882 * k + 189544) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 186991) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 186991)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_187007 : ∀ k : Nat,
    iterate (1048576 * k + 187007) 32 = 531441 * k + 94780 ∧
      531441 * k + 94780 < 1048576 * k + 187007 := by
  intro k
  have h1 : C (1048576 * k + 187007) = 3145728 * k + 561022 := by
    unfold C
    simp [show (1048576 * k + 187007) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 561022) = 1572864 * k + 280511 := by
    unfold C
    simp [show (3145728 * k + 561022) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 280511) = 4718592 * k + 841534 := by
    unfold C
    simp [show (1572864 * k + 280511) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 841534) = 2359296 * k + 420767 := by
    unfold C
    simp [show (4718592 * k + 841534) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 420767) = 7077888 * k + 1262302 := by
    unfold C
    simp [show (2359296 * k + 420767) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 1262302) = 3538944 * k + 631151 := by
    unfold C
    simp [show (7077888 * k + 1262302) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 631151) = 10616832 * k + 1893454 := by
    unfold C
    simp [show (3538944 * k + 631151) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 1893454) = 5308416 * k + 946727 := by
    unfold C
    simp [show (10616832 * k + 1893454) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 946727) = 15925248 * k + 2840182 := by
    unfold C
    simp [show (5308416 * k + 946727) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 2840182) = 7962624 * k + 1420091 := by
    unfold C
    simp [show (15925248 * k + 2840182) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 1420091) = 23887872 * k + 4260274 := by
    unfold C
    simp [show (7962624 * k + 1420091) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 4260274) = 11943936 * k + 2130137 := by
    unfold C
    simp [show (23887872 * k + 4260274) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 2130137) = 35831808 * k + 6390412 := by
    unfold C
    simp [show (11943936 * k + 2130137) % 2 ≠ 0 by omega]
    omega
  have h14 : C (35831808 * k + 6390412) = 17915904 * k + 3195206 := by
    unfold C
    simp [show (35831808 * k + 6390412) % 2 = 0 by omega]
    omega
  have h15 : C (17915904 * k + 3195206) = 8957952 * k + 1597603 := by
    unfold C
    simp [show (17915904 * k + 3195206) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 1597603) = 26873856 * k + 4792810 := by
    unfold C
    simp [show (8957952 * k + 1597603) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 4792810) = 13436928 * k + 2396405 := by
    unfold C
    simp [show (26873856 * k + 4792810) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 2396405) = 40310784 * k + 7189216 := by
    unfold C
    simp [show (13436928 * k + 2396405) % 2 ≠ 0 by omega]
    omega
  have h19 : C (40310784 * k + 7189216) = 20155392 * k + 3594608 := by
    unfold C
    simp [show (40310784 * k + 7189216) % 2 = 0 by omega]
    omega
  have h20 : C (20155392 * k + 3594608) = 10077696 * k + 1797304 := by
    unfold C
    simp [show (20155392 * k + 3594608) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 1797304) = 5038848 * k + 898652 := by
    unfold C
    simp [show (10077696 * k + 1797304) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 898652) = 2519424 * k + 449326 := by
    unfold C
    simp [show (5038848 * k + 898652) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 449326) = 1259712 * k + 224663 := by
    unfold C
    simp [show (2519424 * k + 449326) % 2 = 0 by omega]
    omega
  have h24 : C (1259712 * k + 224663) = 3779136 * k + 673990 := by
    unfold C
    simp [show (1259712 * k + 224663) % 2 ≠ 0 by omega]
    omega
  have h25 : C (3779136 * k + 673990) = 1889568 * k + 336995 := by
    unfold C
    simp [show (3779136 * k + 673990) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 336995) = 5668704 * k + 1010986 := by
    unfold C
    simp [show (1889568 * k + 336995) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 1010986) = 2834352 * k + 505493 := by
    unfold C
    simp [show (5668704 * k + 1010986) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 505493) = 8503056 * k + 1516480 := by
    unfold C
    simp [show (2834352 * k + 505493) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 1516480) = 4251528 * k + 758240 := by
    unfold C
    simp [show (8503056 * k + 1516480) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 758240) = 2125764 * k + 379120 := by
    unfold C
    simp [show (4251528 * k + 758240) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 379120) = 1062882 * k + 189560 := by
    unfold C
    simp [show (2125764 * k + 379120) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 189560) = 531441 * k + 94780 := by
    unfold C
    simp [show (1062882 * k + 189560) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 187007) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 187007)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_187163 : ∀ k : Nat,
    iterate (1048576 * k + 187163) 32 = 531441 * k + 94859 ∧
      531441 * k + 94859 < 1048576 * k + 187163 := by
  intro k
  have h1 : C (1048576 * k + 187163) = 3145728 * k + 561490 := by
    unfold C
    simp [show (1048576 * k + 187163) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 561490) = 1572864 * k + 280745 := by
    unfold C
    simp [show (3145728 * k + 561490) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 280745) = 4718592 * k + 842236 := by
    unfold C
    simp [show (1572864 * k + 280745) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 842236) = 2359296 * k + 421118 := by
    unfold C
    simp [show (4718592 * k + 842236) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 421118) = 1179648 * k + 210559 := by
    unfold C
    simp [show (2359296 * k + 421118) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 210559) = 3538944 * k + 631678 := by
    unfold C
    simp [show (1179648 * k + 210559) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 631678) = 1769472 * k + 315839 := by
    unfold C
    simp [show (3538944 * k + 631678) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 315839) = 5308416 * k + 947518 := by
    unfold C
    simp [show (1769472 * k + 315839) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 947518) = 2654208 * k + 473759 := by
    unfold C
    simp [show (5308416 * k + 947518) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 473759) = 7962624 * k + 1421278 := by
    unfold C
    simp [show (2654208 * k + 473759) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 1421278) = 3981312 * k + 710639 := by
    unfold C
    simp [show (7962624 * k + 1421278) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 710639) = 11943936 * k + 2131918 := by
    unfold C
    simp [show (3981312 * k + 710639) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 2131918) = 5971968 * k + 1065959 := by
    unfold C
    simp [show (11943936 * k + 2131918) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 1065959) = 17915904 * k + 3197878 := by
    unfold C
    simp [show (5971968 * k + 1065959) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 3197878) = 8957952 * k + 1598939 := by
    unfold C
    simp [show (17915904 * k + 3197878) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 1598939) = 26873856 * k + 4796818 := by
    unfold C
    simp [show (8957952 * k + 1598939) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 4796818) = 13436928 * k + 2398409 := by
    unfold C
    simp [show (26873856 * k + 4796818) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 2398409) = 40310784 * k + 7195228 := by
    unfold C
    simp [show (13436928 * k + 2398409) % 2 ≠ 0 by omega]
    omega
  have h19 : C (40310784 * k + 7195228) = 20155392 * k + 3597614 := by
    unfold C
    simp [show (40310784 * k + 7195228) % 2 = 0 by omega]
    omega
  have h20 : C (20155392 * k + 3597614) = 10077696 * k + 1798807 := by
    unfold C
    simp [show (20155392 * k + 3597614) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 1798807) = 30233088 * k + 5396422 := by
    unfold C
    simp [show (10077696 * k + 1798807) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 5396422) = 15116544 * k + 2698211 := by
    unfold C
    simp [show (30233088 * k + 5396422) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 2698211) = 45349632 * k + 8094634 := by
    unfold C
    simp [show (15116544 * k + 2698211) % 2 ≠ 0 by omega]
    omega
  have h24 : C (45349632 * k + 8094634) = 22674816 * k + 4047317 := by
    unfold C
    simp [show (45349632 * k + 8094634) % 2 = 0 by omega]
    omega
  have h25 : C (22674816 * k + 4047317) = 68024448 * k + 12141952 := by
    unfold C
    simp [show (22674816 * k + 4047317) % 2 ≠ 0 by omega]
    omega
  have h26 : C (68024448 * k + 12141952) = 34012224 * k + 6070976 := by
    unfold C
    simp [show (68024448 * k + 12141952) % 2 = 0 by omega]
    omega
  have h27 : C (34012224 * k + 6070976) = 17006112 * k + 3035488 := by
    unfold C
    simp [show (34012224 * k + 6070976) % 2 = 0 by omega]
    omega
  have h28 : C (17006112 * k + 3035488) = 8503056 * k + 1517744 := by
    unfold C
    simp [show (17006112 * k + 3035488) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 1517744) = 4251528 * k + 758872 := by
    unfold C
    simp [show (8503056 * k + 1517744) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 758872) = 2125764 * k + 379436 := by
    unfold C
    simp [show (4251528 * k + 758872) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 379436) = 1062882 * k + 189718 := by
    unfold C
    simp [show (2125764 * k + 379436) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 189718) = 531441 * k + 94859 := by
    unfold C
    simp [show (1062882 * k + 189718) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 187163) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 187163)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_187423 : ∀ k : Nat,
    iterate (1048576 * k + 187423) 32 = 531441 * k + 94991 ∧
      531441 * k + 94991 < 1048576 * k + 187423 := by
  intro k
  have h1 : C (1048576 * k + 187423) = 3145728 * k + 562270 := by
    unfold C
    simp [show (1048576 * k + 187423) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 562270) = 1572864 * k + 281135 := by
    unfold C
    simp [show (3145728 * k + 562270) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 281135) = 4718592 * k + 843406 := by
    unfold C
    simp [show (1572864 * k + 281135) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 843406) = 2359296 * k + 421703 := by
    unfold C
    simp [show (4718592 * k + 843406) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 421703) = 7077888 * k + 1265110 := by
    unfold C
    simp [show (2359296 * k + 421703) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 1265110) = 3538944 * k + 632555 := by
    unfold C
    simp [show (7077888 * k + 1265110) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 632555) = 10616832 * k + 1897666 := by
    unfold C
    simp [show (3538944 * k + 632555) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 1897666) = 5308416 * k + 948833 := by
    unfold C
    simp [show (10616832 * k + 1897666) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 948833) = 15925248 * k + 2846500 := by
    unfold C
    simp [show (5308416 * k + 948833) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 2846500) = 7962624 * k + 1423250 := by
    unfold C
    simp [show (15925248 * k + 2846500) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 1423250) = 3981312 * k + 711625 := by
    unfold C
    simp [show (7962624 * k + 1423250) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 711625) = 11943936 * k + 2134876 := by
    unfold C
    simp [show (3981312 * k + 711625) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 2134876) = 5971968 * k + 1067438 := by
    unfold C
    simp [show (11943936 * k + 2134876) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 1067438) = 2985984 * k + 533719 := by
    unfold C
    simp [show (5971968 * k + 1067438) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 533719) = 8957952 * k + 1601158 := by
    unfold C
    simp [show (2985984 * k + 533719) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 1601158) = 4478976 * k + 800579 := by
    unfold C
    simp [show (8957952 * k + 1601158) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 800579) = 13436928 * k + 2401738 := by
    unfold C
    simp [show (4478976 * k + 800579) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 2401738) = 6718464 * k + 1200869 := by
    unfold C
    simp [show (13436928 * k + 2401738) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 1200869) = 20155392 * k + 3602608 := by
    unfold C
    simp [show (6718464 * k + 1200869) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 3602608) = 10077696 * k + 1801304 := by
    unfold C
    simp [show (20155392 * k + 3602608) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 1801304) = 5038848 * k + 900652 := by
    unfold C
    simp [show (10077696 * k + 1801304) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 900652) = 2519424 * k + 450326 := by
    unfold C
    simp [show (5038848 * k + 900652) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 450326) = 1259712 * k + 225163 := by
    unfold C
    simp [show (2519424 * k + 450326) % 2 = 0 by omega]
    omega
  have h24 : C (1259712 * k + 225163) = 3779136 * k + 675490 := by
    unfold C
    simp [show (1259712 * k + 225163) % 2 ≠ 0 by omega]
    omega
  have h25 : C (3779136 * k + 675490) = 1889568 * k + 337745 := by
    unfold C
    simp [show (3779136 * k + 675490) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 337745) = 5668704 * k + 1013236 := by
    unfold C
    simp [show (1889568 * k + 337745) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 1013236) = 2834352 * k + 506618 := by
    unfold C
    simp [show (5668704 * k + 1013236) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 506618) = 1417176 * k + 253309 := by
    unfold C
    simp [show (2834352 * k + 506618) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 253309) = 4251528 * k + 759928 := by
    unfold C
    simp [show (1417176 * k + 253309) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 759928) = 2125764 * k + 379964 := by
    unfold C
    simp [show (4251528 * k + 759928) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 379964) = 1062882 * k + 189982 := by
    unfold C
    simp [show (2125764 * k + 379964) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 189982) = 531441 * k + 94991 := by
    unfold C
    simp [show (1062882 * k + 189982) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 187423) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 187423)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_187547 : ∀ k : Nat,
    iterate (1048576 * k + 187547) 32 = 531441 * k + 95054 ∧
      531441 * k + 95054 < 1048576 * k + 187547 := by
  intro k
  have h1 : C (1048576 * k + 187547) = 3145728 * k + 562642 := by
    unfold C
    simp [show (1048576 * k + 187547) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 562642) = 1572864 * k + 281321 := by
    unfold C
    simp [show (3145728 * k + 562642) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 281321) = 4718592 * k + 843964 := by
    unfold C
    simp [show (1572864 * k + 281321) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 843964) = 2359296 * k + 421982 := by
    unfold C
    simp [show (4718592 * k + 843964) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 421982) = 1179648 * k + 210991 := by
    unfold C
    simp [show (2359296 * k + 421982) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 210991) = 3538944 * k + 632974 := by
    unfold C
    simp [show (1179648 * k + 210991) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 632974) = 1769472 * k + 316487 := by
    unfold C
    simp [show (3538944 * k + 632974) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 316487) = 5308416 * k + 949462 := by
    unfold C
    simp [show (1769472 * k + 316487) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 949462) = 2654208 * k + 474731 := by
    unfold C
    simp [show (5308416 * k + 949462) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 474731) = 7962624 * k + 1424194 := by
    unfold C
    simp [show (2654208 * k + 474731) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 1424194) = 3981312 * k + 712097 := by
    unfold C
    simp [show (7962624 * k + 1424194) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 712097) = 11943936 * k + 2136292 := by
    unfold C
    simp [show (3981312 * k + 712097) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 2136292) = 5971968 * k + 1068146 := by
    unfold C
    simp [show (11943936 * k + 2136292) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 1068146) = 2985984 * k + 534073 := by
    unfold C
    simp [show (5971968 * k + 1068146) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 534073) = 8957952 * k + 1602220 := by
    unfold C
    simp [show (2985984 * k + 534073) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 1602220) = 4478976 * k + 801110 := by
    unfold C
    simp [show (8957952 * k + 1602220) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 801110) = 2239488 * k + 400555 := by
    unfold C
    simp [show (4478976 * k + 801110) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 400555) = 6718464 * k + 1201666 := by
    unfold C
    simp [show (2239488 * k + 400555) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 1201666) = 3359232 * k + 600833 := by
    unfold C
    simp [show (6718464 * k + 1201666) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 600833) = 10077696 * k + 1802500 := by
    unfold C
    simp [show (3359232 * k + 600833) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 1802500) = 5038848 * k + 901250 := by
    unfold C
    simp [show (10077696 * k + 1802500) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 901250) = 2519424 * k + 450625 := by
    unfold C
    simp [show (5038848 * k + 901250) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 450625) = 7558272 * k + 1351876 := by
    unfold C
    simp [show (2519424 * k + 450625) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 1351876) = 3779136 * k + 675938 := by
    unfold C
    simp [show (7558272 * k + 1351876) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 675938) = 1889568 * k + 337969 := by
    unfold C
    simp [show (3779136 * k + 675938) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 337969) = 5668704 * k + 1013908 := by
    unfold C
    simp [show (1889568 * k + 337969) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 1013908) = 2834352 * k + 506954 := by
    unfold C
    simp [show (5668704 * k + 1013908) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 506954) = 1417176 * k + 253477 := by
    unfold C
    simp [show (2834352 * k + 506954) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 253477) = 4251528 * k + 760432 := by
    unfold C
    simp [show (1417176 * k + 253477) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 760432) = 2125764 * k + 380216 := by
    unfold C
    simp [show (4251528 * k + 760432) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 380216) = 1062882 * k + 190108 := by
    unfold C
    simp [show (2125764 * k + 380216) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 190108) = 531441 * k + 95054 := by
    unfold C
    simp [show (1062882 * k + 190108) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 187547) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 187547)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_187583 : ∀ k : Nat,
    iterate (1048576 * k + 187583) 32 = 531441 * k + 95072 ∧
      531441 * k + 95072 < 1048576 * k + 187583 := by
  intro k
  have h1 : C (1048576 * k + 187583) = 3145728 * k + 562750 := by
    unfold C
    simp [show (1048576 * k + 187583) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 562750) = 1572864 * k + 281375 := by
    unfold C
    simp [show (3145728 * k + 562750) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 281375) = 4718592 * k + 844126 := by
    unfold C
    simp [show (1572864 * k + 281375) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 844126) = 2359296 * k + 422063 := by
    unfold C
    simp [show (4718592 * k + 844126) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 422063) = 7077888 * k + 1266190 := by
    unfold C
    simp [show (2359296 * k + 422063) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 1266190) = 3538944 * k + 633095 := by
    unfold C
    simp [show (7077888 * k + 1266190) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 633095) = 10616832 * k + 1899286 := by
    unfold C
    simp [show (3538944 * k + 633095) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 1899286) = 5308416 * k + 949643 := by
    unfold C
    simp [show (10616832 * k + 1899286) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 949643) = 15925248 * k + 2848930 := by
    unfold C
    simp [show (5308416 * k + 949643) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 2848930) = 7962624 * k + 1424465 := by
    unfold C
    simp [show (15925248 * k + 2848930) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 1424465) = 23887872 * k + 4273396 := by
    unfold C
    simp [show (7962624 * k + 1424465) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 4273396) = 11943936 * k + 2136698 := by
    unfold C
    simp [show (23887872 * k + 4273396) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 2136698) = 5971968 * k + 1068349 := by
    unfold C
    simp [show (11943936 * k + 2136698) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 1068349) = 17915904 * k + 3205048 := by
    unfold C
    simp [show (5971968 * k + 1068349) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 3205048) = 8957952 * k + 1602524 := by
    unfold C
    simp [show (17915904 * k + 3205048) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 1602524) = 4478976 * k + 801262 := by
    unfold C
    simp [show (8957952 * k + 1602524) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 801262) = 2239488 * k + 400631 := by
    unfold C
    simp [show (4478976 * k + 801262) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 400631) = 6718464 * k + 1201894 := by
    unfold C
    simp [show (2239488 * k + 400631) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 1201894) = 3359232 * k + 600947 := by
    unfold C
    simp [show (6718464 * k + 1201894) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 600947) = 10077696 * k + 1802842 := by
    unfold C
    simp [show (3359232 * k + 600947) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 1802842) = 5038848 * k + 901421 := by
    unfold C
    simp [show (10077696 * k + 1802842) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 901421) = 15116544 * k + 2704264 := by
    unfold C
    simp [show (5038848 * k + 901421) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 2704264) = 7558272 * k + 1352132 := by
    unfold C
    simp [show (15116544 * k + 2704264) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 1352132) = 3779136 * k + 676066 := by
    unfold C
    simp [show (7558272 * k + 1352132) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 676066) = 1889568 * k + 338033 := by
    unfold C
    simp [show (3779136 * k + 676066) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 338033) = 5668704 * k + 1014100 := by
    unfold C
    simp [show (1889568 * k + 338033) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 1014100) = 2834352 * k + 507050 := by
    unfold C
    simp [show (5668704 * k + 1014100) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 507050) = 1417176 * k + 253525 := by
    unfold C
    simp [show (2834352 * k + 507050) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 253525) = 4251528 * k + 760576 := by
    unfold C
    simp [show (1417176 * k + 253525) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 760576) = 2125764 * k + 380288 := by
    unfold C
    simp [show (4251528 * k + 760576) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 380288) = 1062882 * k + 190144 := by
    unfold C
    simp [show (2125764 * k + 380288) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 190144) = 531441 * k + 95072 := by
    unfold C
    simp [show (1062882 * k + 190144) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 187583) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 187583)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_187871 : ∀ k : Nat,
    iterate (1048576 * k + 187871) 32 = 531441 * k + 95218 ∧
      531441 * k + 95218 < 1048576 * k + 187871 := by
  intro k
  have h1 : C (1048576 * k + 187871) = 3145728 * k + 563614 := by
    unfold C
    simp [show (1048576 * k + 187871) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 563614) = 1572864 * k + 281807 := by
    unfold C
    simp [show (3145728 * k + 563614) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 281807) = 4718592 * k + 845422 := by
    unfold C
    simp [show (1572864 * k + 281807) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 845422) = 2359296 * k + 422711 := by
    unfold C
    simp [show (4718592 * k + 845422) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 422711) = 7077888 * k + 1268134 := by
    unfold C
    simp [show (2359296 * k + 422711) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 1268134) = 3538944 * k + 634067 := by
    unfold C
    simp [show (7077888 * k + 1268134) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 634067) = 10616832 * k + 1902202 := by
    unfold C
    simp [show (3538944 * k + 634067) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 1902202) = 5308416 * k + 951101 := by
    unfold C
    simp [show (10616832 * k + 1902202) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 951101) = 15925248 * k + 2853304 := by
    unfold C
    simp [show (5308416 * k + 951101) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 2853304) = 7962624 * k + 1426652 := by
    unfold C
    simp [show (15925248 * k + 2853304) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 1426652) = 3981312 * k + 713326 := by
    unfold C
    simp [show (7962624 * k + 1426652) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 713326) = 1990656 * k + 356663 := by
    unfold C
    simp [show (3981312 * k + 713326) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 356663) = 5971968 * k + 1069990 := by
    unfold C
    simp [show (1990656 * k + 356663) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 1069990) = 2985984 * k + 534995 := by
    unfold C
    simp [show (5971968 * k + 1069990) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 534995) = 8957952 * k + 1604986 := by
    unfold C
    simp [show (2985984 * k + 534995) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 1604986) = 4478976 * k + 802493 := by
    unfold C
    simp [show (8957952 * k + 1604986) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 802493) = 13436928 * k + 2407480 := by
    unfold C
    simp [show (4478976 * k + 802493) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 2407480) = 6718464 * k + 1203740 := by
    unfold C
    simp [show (13436928 * k + 2407480) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 1203740) = 3359232 * k + 601870 := by
    unfold C
    simp [show (6718464 * k + 1203740) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 601870) = 1679616 * k + 300935 := by
    unfold C
    simp [show (3359232 * k + 601870) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 300935) = 5038848 * k + 902806 := by
    unfold C
    simp [show (1679616 * k + 300935) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 902806) = 2519424 * k + 451403 := by
    unfold C
    simp [show (5038848 * k + 902806) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 451403) = 7558272 * k + 1354210 := by
    unfold C
    simp [show (2519424 * k + 451403) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 1354210) = 3779136 * k + 677105 := by
    unfold C
    simp [show (7558272 * k + 1354210) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 677105) = 11337408 * k + 2031316 := by
    unfold C
    simp [show (3779136 * k + 677105) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 2031316) = 5668704 * k + 1015658 := by
    unfold C
    simp [show (11337408 * k + 2031316) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 1015658) = 2834352 * k + 507829 := by
    unfold C
    simp [show (5668704 * k + 1015658) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 507829) = 8503056 * k + 1523488 := by
    unfold C
    simp [show (2834352 * k + 507829) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 1523488) = 4251528 * k + 761744 := by
    unfold C
    simp [show (8503056 * k + 1523488) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 761744) = 2125764 * k + 380872 := by
    unfold C
    simp [show (4251528 * k + 761744) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 380872) = 1062882 * k + 190436 := by
    unfold C
    simp [show (2125764 * k + 380872) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 190436) = 531441 * k + 95218 := by
    unfold C
    simp [show (1062882 * k + 190436) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 187871) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 187871)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_188187 : ∀ k : Nat,
    iterate (1048576 * k + 188187) 32 = 531441 * k + 95378 ∧
      531441 * k + 95378 < 1048576 * k + 188187 := by
  intro k
  have h1 : C (1048576 * k + 188187) = 3145728 * k + 564562 := by
    unfold C
    simp [show (1048576 * k + 188187) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 564562) = 1572864 * k + 282281 := by
    unfold C
    simp [show (3145728 * k + 564562) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 282281) = 4718592 * k + 846844 := by
    unfold C
    simp [show (1572864 * k + 282281) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 846844) = 2359296 * k + 423422 := by
    unfold C
    simp [show (4718592 * k + 846844) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 423422) = 1179648 * k + 211711 := by
    unfold C
    simp [show (2359296 * k + 423422) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 211711) = 3538944 * k + 635134 := by
    unfold C
    simp [show (1179648 * k + 211711) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 635134) = 1769472 * k + 317567 := by
    unfold C
    simp [show (3538944 * k + 635134) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 317567) = 5308416 * k + 952702 := by
    unfold C
    simp [show (1769472 * k + 317567) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 952702) = 2654208 * k + 476351 := by
    unfold C
    simp [show (5308416 * k + 952702) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 476351) = 7962624 * k + 1429054 := by
    unfold C
    simp [show (2654208 * k + 476351) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 1429054) = 3981312 * k + 714527 := by
    unfold C
    simp [show (7962624 * k + 1429054) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 714527) = 11943936 * k + 2143582 := by
    unfold C
    simp [show (3981312 * k + 714527) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 2143582) = 5971968 * k + 1071791 := by
    unfold C
    simp [show (11943936 * k + 2143582) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 1071791) = 17915904 * k + 3215374 := by
    unfold C
    simp [show (5971968 * k + 1071791) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 3215374) = 8957952 * k + 1607687 := by
    unfold C
    simp [show (17915904 * k + 3215374) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 1607687) = 26873856 * k + 4823062 := by
    unfold C
    simp [show (8957952 * k + 1607687) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 4823062) = 13436928 * k + 2411531 := by
    unfold C
    simp [show (26873856 * k + 4823062) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 2411531) = 40310784 * k + 7234594 := by
    unfold C
    simp [show (13436928 * k + 2411531) % 2 ≠ 0 by omega]
    omega
  have h19 : C (40310784 * k + 7234594) = 20155392 * k + 3617297 := by
    unfold C
    simp [show (40310784 * k + 7234594) % 2 = 0 by omega]
    omega
  have h20 : C (20155392 * k + 3617297) = 60466176 * k + 10851892 := by
    unfold C
    simp [show (20155392 * k + 3617297) % 2 ≠ 0 by omega]
    omega
  have h21 : C (60466176 * k + 10851892) = 30233088 * k + 5425946 := by
    unfold C
    simp [show (60466176 * k + 10851892) % 2 = 0 by omega]
    omega
  have h22 : C (30233088 * k + 5425946) = 15116544 * k + 2712973 := by
    unfold C
    simp [show (30233088 * k + 5425946) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 2712973) = 45349632 * k + 8138920 := by
    unfold C
    simp [show (15116544 * k + 2712973) % 2 ≠ 0 by omega]
    omega
  have h24 : C (45349632 * k + 8138920) = 22674816 * k + 4069460 := by
    unfold C
    simp [show (45349632 * k + 8138920) % 2 = 0 by omega]
    omega
  have h25 : C (22674816 * k + 4069460) = 11337408 * k + 2034730 := by
    unfold C
    simp [show (22674816 * k + 4069460) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 2034730) = 5668704 * k + 1017365 := by
    unfold C
    simp [show (11337408 * k + 2034730) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 1017365) = 17006112 * k + 3052096 := by
    unfold C
    simp [show (5668704 * k + 1017365) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 3052096) = 8503056 * k + 1526048 := by
    unfold C
    simp [show (17006112 * k + 3052096) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 1526048) = 4251528 * k + 763024 := by
    unfold C
    simp [show (8503056 * k + 1526048) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 763024) = 2125764 * k + 381512 := by
    unfold C
    simp [show (4251528 * k + 763024) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 381512) = 1062882 * k + 190756 := by
    unfold C
    simp [show (2125764 * k + 381512) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 190756) = 531441 * k + 95378 := by
    unfold C
    simp [show (1062882 * k + 190756) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 188187) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 188187)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_188351 : ∀ k : Nat,
    iterate (1048576 * k + 188351) 32 = 531441 * k + 95461 ∧
      531441 * k + 95461 < 1048576 * k + 188351 := by
  intro k
  have h1 : C (1048576 * k + 188351) = 3145728 * k + 565054 := by
    unfold C
    simp [show (1048576 * k + 188351) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 565054) = 1572864 * k + 282527 := by
    unfold C
    simp [show (3145728 * k + 565054) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 282527) = 4718592 * k + 847582 := by
    unfold C
    simp [show (1572864 * k + 282527) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 847582) = 2359296 * k + 423791 := by
    unfold C
    simp [show (4718592 * k + 847582) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 423791) = 7077888 * k + 1271374 := by
    unfold C
    simp [show (2359296 * k + 423791) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 1271374) = 3538944 * k + 635687 := by
    unfold C
    simp [show (7077888 * k + 1271374) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 635687) = 10616832 * k + 1907062 := by
    unfold C
    simp [show (3538944 * k + 635687) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 1907062) = 5308416 * k + 953531 := by
    unfold C
    simp [show (10616832 * k + 1907062) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 953531) = 15925248 * k + 2860594 := by
    unfold C
    simp [show (5308416 * k + 953531) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 2860594) = 7962624 * k + 1430297 := by
    unfold C
    simp [show (15925248 * k + 2860594) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 1430297) = 23887872 * k + 4290892 := by
    unfold C
    simp [show (7962624 * k + 1430297) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 4290892) = 11943936 * k + 2145446 := by
    unfold C
    simp [show (23887872 * k + 4290892) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 2145446) = 5971968 * k + 1072723 := by
    unfold C
    simp [show (11943936 * k + 2145446) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 1072723) = 17915904 * k + 3218170 := by
    unfold C
    simp [show (5971968 * k + 1072723) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 3218170) = 8957952 * k + 1609085 := by
    unfold C
    simp [show (17915904 * k + 3218170) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 1609085) = 26873856 * k + 4827256 := by
    unfold C
    simp [show (8957952 * k + 1609085) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 4827256) = 13436928 * k + 2413628 := by
    unfold C
    simp [show (26873856 * k + 4827256) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 2413628) = 6718464 * k + 1206814 := by
    unfold C
    simp [show (13436928 * k + 2413628) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 1206814) = 3359232 * k + 603407 := by
    unfold C
    simp [show (6718464 * k + 1206814) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 603407) = 10077696 * k + 1810222 := by
    unfold C
    simp [show (3359232 * k + 603407) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 1810222) = 5038848 * k + 905111 := by
    unfold C
    simp [show (10077696 * k + 1810222) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 905111) = 15116544 * k + 2715334 := by
    unfold C
    simp [show (5038848 * k + 905111) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 2715334) = 7558272 * k + 1357667 := by
    unfold C
    simp [show (15116544 * k + 2715334) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 1357667) = 22674816 * k + 4073002 := by
    unfold C
    simp [show (7558272 * k + 1357667) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 4073002) = 11337408 * k + 2036501 := by
    unfold C
    simp [show (22674816 * k + 4073002) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 2036501) = 34012224 * k + 6109504 := by
    unfold C
    simp [show (11337408 * k + 2036501) % 2 ≠ 0 by omega]
    omega
  have h27 : C (34012224 * k + 6109504) = 17006112 * k + 3054752 := by
    unfold C
    simp [show (34012224 * k + 6109504) % 2 = 0 by omega]
    omega
  have h28 : C (17006112 * k + 3054752) = 8503056 * k + 1527376 := by
    unfold C
    simp [show (17006112 * k + 3054752) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 1527376) = 4251528 * k + 763688 := by
    unfold C
    simp [show (8503056 * k + 1527376) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 763688) = 2125764 * k + 381844 := by
    unfold C
    simp [show (4251528 * k + 763688) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 381844) = 1062882 * k + 190922 := by
    unfold C
    simp [show (2125764 * k + 381844) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 190922) = 531441 * k + 95461 := by
    unfold C
    simp [show (1062882 * k + 190922) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 188351) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 188351)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_188463 : ∀ k : Nat,
    iterate (1048576 * k + 188463) 32 = 531441 * k + 95518 ∧
      531441 * k + 95518 < 1048576 * k + 188463 := by
  intro k
  have h1 : C (1048576 * k + 188463) = 3145728 * k + 565390 := by
    unfold C
    simp [show (1048576 * k + 188463) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 565390) = 1572864 * k + 282695 := by
    unfold C
    simp [show (3145728 * k + 565390) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 282695) = 4718592 * k + 848086 := by
    unfold C
    simp [show (1572864 * k + 282695) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 848086) = 2359296 * k + 424043 := by
    unfold C
    simp [show (4718592 * k + 848086) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 424043) = 7077888 * k + 1272130 := by
    unfold C
    simp [show (2359296 * k + 424043) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 1272130) = 3538944 * k + 636065 := by
    unfold C
    simp [show (7077888 * k + 1272130) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 636065) = 10616832 * k + 1908196 := by
    unfold C
    simp [show (3538944 * k + 636065) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 1908196) = 5308416 * k + 954098 := by
    unfold C
    simp [show (10616832 * k + 1908196) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 954098) = 2654208 * k + 477049 := by
    unfold C
    simp [show (5308416 * k + 954098) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 477049) = 7962624 * k + 1431148 := by
    unfold C
    simp [show (2654208 * k + 477049) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 1431148) = 3981312 * k + 715574 := by
    unfold C
    simp [show (7962624 * k + 1431148) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 715574) = 1990656 * k + 357787 := by
    unfold C
    simp [show (3981312 * k + 715574) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 357787) = 5971968 * k + 1073362 := by
    unfold C
    simp [show (1990656 * k + 357787) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 1073362) = 2985984 * k + 536681 := by
    unfold C
    simp [show (5971968 * k + 1073362) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 536681) = 8957952 * k + 1610044 := by
    unfold C
    simp [show (2985984 * k + 536681) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 1610044) = 4478976 * k + 805022 := by
    unfold C
    simp [show (8957952 * k + 1610044) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 805022) = 2239488 * k + 402511 := by
    unfold C
    simp [show (4478976 * k + 805022) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 402511) = 6718464 * k + 1207534 := by
    unfold C
    simp [show (2239488 * k + 402511) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 1207534) = 3359232 * k + 603767 := by
    unfold C
    simp [show (6718464 * k + 1207534) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 603767) = 10077696 * k + 1811302 := by
    unfold C
    simp [show (3359232 * k + 603767) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 1811302) = 5038848 * k + 905651 := by
    unfold C
    simp [show (10077696 * k + 1811302) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 905651) = 15116544 * k + 2716954 := by
    unfold C
    simp [show (5038848 * k + 905651) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 2716954) = 7558272 * k + 1358477 := by
    unfold C
    simp [show (15116544 * k + 2716954) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 1358477) = 22674816 * k + 4075432 := by
    unfold C
    simp [show (7558272 * k + 1358477) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 4075432) = 11337408 * k + 2037716 := by
    unfold C
    simp [show (22674816 * k + 4075432) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 2037716) = 5668704 * k + 1018858 := by
    unfold C
    simp [show (11337408 * k + 2037716) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 1018858) = 2834352 * k + 509429 := by
    unfold C
    simp [show (5668704 * k + 1018858) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 509429) = 8503056 * k + 1528288 := by
    unfold C
    simp [show (2834352 * k + 509429) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 1528288) = 4251528 * k + 764144 := by
    unfold C
    simp [show (8503056 * k + 1528288) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 764144) = 2125764 * k + 382072 := by
    unfold C
    simp [show (4251528 * k + 764144) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 382072) = 1062882 * k + 191036 := by
    unfold C
    simp [show (2125764 * k + 382072) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 191036) = 531441 * k + 95518 := by
    unfold C
    simp [show (1062882 * k + 191036) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 188463) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 188463)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_189767 : ∀ k : Nat,
    iterate (1048576 * k + 189767) 32 = 531441 * k + 96179 ∧
      531441 * k + 96179 < 1048576 * k + 189767 := by
  intro k
  have h1 : C (1048576 * k + 189767) = 3145728 * k + 569302 := by
    unfold C
    simp [show (1048576 * k + 189767) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 569302) = 1572864 * k + 284651 := by
    unfold C
    simp [show (3145728 * k + 569302) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 284651) = 4718592 * k + 853954 := by
    unfold C
    simp [show (1572864 * k + 284651) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 853954) = 2359296 * k + 426977 := by
    unfold C
    simp [show (4718592 * k + 853954) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 426977) = 7077888 * k + 1280932 := by
    unfold C
    simp [show (2359296 * k + 426977) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 1280932) = 3538944 * k + 640466 := by
    unfold C
    simp [show (7077888 * k + 1280932) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 640466) = 1769472 * k + 320233 := by
    unfold C
    simp [show (3538944 * k + 640466) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 320233) = 5308416 * k + 960700 := by
    unfold C
    simp [show (1769472 * k + 320233) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 960700) = 2654208 * k + 480350 := by
    unfold C
    simp [show (5308416 * k + 960700) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 480350) = 1327104 * k + 240175 := by
    unfold C
    simp [show (2654208 * k + 480350) % 2 = 0 by omega]
    omega
  have h11 : C (1327104 * k + 240175) = 3981312 * k + 720526 := by
    unfold C
    simp [show (1327104 * k + 240175) % 2 ≠ 0 by omega]
    omega
  have h12 : C (3981312 * k + 720526) = 1990656 * k + 360263 := by
    unfold C
    simp [show (3981312 * k + 720526) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 360263) = 5971968 * k + 1080790 := by
    unfold C
    simp [show (1990656 * k + 360263) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 1080790) = 2985984 * k + 540395 := by
    unfold C
    simp [show (5971968 * k + 1080790) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 540395) = 8957952 * k + 1621186 := by
    unfold C
    simp [show (2985984 * k + 540395) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 1621186) = 4478976 * k + 810593 := by
    unfold C
    simp [show (8957952 * k + 1621186) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 810593) = 13436928 * k + 2431780 := by
    unfold C
    simp [show (4478976 * k + 810593) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 2431780) = 6718464 * k + 1215890 := by
    unfold C
    simp [show (13436928 * k + 2431780) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 1215890) = 3359232 * k + 607945 := by
    unfold C
    simp [show (6718464 * k + 1215890) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 607945) = 10077696 * k + 1823836 := by
    unfold C
    simp [show (3359232 * k + 607945) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 1823836) = 5038848 * k + 911918 := by
    unfold C
    simp [show (10077696 * k + 1823836) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 911918) = 2519424 * k + 455959 := by
    unfold C
    simp [show (5038848 * k + 911918) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 455959) = 7558272 * k + 1367878 := by
    unfold C
    simp [show (2519424 * k + 455959) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 1367878) = 3779136 * k + 683939 := by
    unfold C
    simp [show (7558272 * k + 1367878) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 683939) = 11337408 * k + 2051818 := by
    unfold C
    simp [show (3779136 * k + 683939) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 2051818) = 5668704 * k + 1025909 := by
    unfold C
    simp [show (11337408 * k + 2051818) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 1025909) = 17006112 * k + 3077728 := by
    unfold C
    simp [show (5668704 * k + 1025909) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 3077728) = 8503056 * k + 1538864 := by
    unfold C
    simp [show (17006112 * k + 3077728) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 1538864) = 4251528 * k + 769432 := by
    unfold C
    simp [show (8503056 * k + 1538864) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 769432) = 2125764 * k + 384716 := by
    unfold C
    simp [show (4251528 * k + 769432) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 384716) = 1062882 * k + 192358 := by
    unfold C
    simp [show (2125764 * k + 384716) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 192358) = 531441 * k + 96179 := by
    unfold C
    simp [show (1062882 * k + 192358) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 189767) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 189767)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

end CollatzM20Shard025
