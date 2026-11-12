import Mathlib.Data.Nat.Prime.Basic

namespace CollatzM20Shard104

def C (n : Nat) : Nat := if n % 2 = 0 then n / 2 else 3 * n + 1

def iterate (n t : Nat) : Nat := Nat.rec n (fun _ previous => C previous) t

theorem descent_mod1048576_814235 : ∀ k : Nat,
    iterate (1048576 * k + 814235) 32 = 531441 * k + 412673 ∧
      531441 * k + 412673 < 1048576 * k + 814235 := by
  intro k
  have h1 : C (1048576 * k + 814235) = 3145728 * k + 2442706 := by
    unfold C
    simp [show (1048576 * k + 814235) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2442706) = 1572864 * k + 1221353 := by
    unfold C
    simp [show (3145728 * k + 2442706) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1221353) = 4718592 * k + 3664060 := by
    unfold C
    simp [show (1572864 * k + 1221353) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3664060) = 2359296 * k + 1832030 := by
    unfold C
    simp [show (4718592 * k + 3664060) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1832030) = 1179648 * k + 916015 := by
    unfold C
    simp [show (2359296 * k + 1832030) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 916015) = 3538944 * k + 2748046 := by
    unfold C
    simp [show (1179648 * k + 916015) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 2748046) = 1769472 * k + 1374023 := by
    unfold C
    simp [show (3538944 * k + 2748046) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1374023) = 5308416 * k + 4122070 := by
    unfold C
    simp [show (1769472 * k + 1374023) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 4122070) = 2654208 * k + 2061035 := by
    unfold C
    simp [show (5308416 * k + 4122070) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 2061035) = 7962624 * k + 6183106 := by
    unfold C
    simp [show (2654208 * k + 2061035) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 6183106) = 3981312 * k + 3091553 := by
    unfold C
    simp [show (7962624 * k + 6183106) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 3091553) = 11943936 * k + 9274660 := by
    unfold C
    simp [show (3981312 * k + 3091553) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 9274660) = 5971968 * k + 4637330 := by
    unfold C
    simp [show (11943936 * k + 9274660) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 4637330) = 2985984 * k + 2318665 := by
    unfold C
    simp [show (5971968 * k + 4637330) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 2318665) = 8957952 * k + 6955996 := by
    unfold C
    simp [show (2985984 * k + 2318665) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 6955996) = 4478976 * k + 3477998 := by
    unfold C
    simp [show (8957952 * k + 6955996) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 3477998) = 2239488 * k + 1738999 := by
    unfold C
    simp [show (4478976 * k + 3477998) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 1738999) = 6718464 * k + 5216998 := by
    unfold C
    simp [show (2239488 * k + 1738999) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 5216998) = 3359232 * k + 2608499 := by
    unfold C
    simp [show (6718464 * k + 5216998) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 2608499) = 10077696 * k + 7825498 := by
    unfold C
    simp [show (3359232 * k + 2608499) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 7825498) = 5038848 * k + 3912749 := by
    unfold C
    simp [show (10077696 * k + 7825498) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 3912749) = 15116544 * k + 11738248 := by
    unfold C
    simp [show (5038848 * k + 3912749) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 11738248) = 7558272 * k + 5869124 := by
    unfold C
    simp [show (15116544 * k + 11738248) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 5869124) = 3779136 * k + 2934562 := by
    unfold C
    simp [show (7558272 * k + 5869124) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 2934562) = 1889568 * k + 1467281 := by
    unfold C
    simp [show (3779136 * k + 2934562) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1467281) = 5668704 * k + 4401844 := by
    unfold C
    simp [show (1889568 * k + 1467281) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 4401844) = 2834352 * k + 2200922 := by
    unfold C
    simp [show (5668704 * k + 4401844) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2200922) = 1417176 * k + 1100461 := by
    unfold C
    simp [show (2834352 * k + 2200922) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 1100461) = 4251528 * k + 3301384 := by
    unfold C
    simp [show (1417176 * k + 1100461) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 3301384) = 2125764 * k + 1650692 := by
    unfold C
    simp [show (4251528 * k + 3301384) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1650692) = 1062882 * k + 825346 := by
    unfold C
    simp [show (2125764 * k + 1650692) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 825346) = 531441 * k + 412673 := by
    unfold C
    simp [show (1062882 * k + 825346) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 814235) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 814235)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_814247 : ∀ k : Nat,
    iterate (1048576 * k + 814247) 32 = 531441 * k + 412679 ∧
      531441 * k + 412679 < 1048576 * k + 814247 := by
  intro k
  have h1 : C (1048576 * k + 814247) = 3145728 * k + 2442742 := by
    unfold C
    simp [show (1048576 * k + 814247) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2442742) = 1572864 * k + 1221371 := by
    unfold C
    simp [show (3145728 * k + 2442742) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1221371) = 4718592 * k + 3664114 := by
    unfold C
    simp [show (1572864 * k + 1221371) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3664114) = 2359296 * k + 1832057 := by
    unfold C
    simp [show (4718592 * k + 3664114) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1832057) = 7077888 * k + 5496172 := by
    unfold C
    simp [show (2359296 * k + 1832057) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 5496172) = 3538944 * k + 2748086 := by
    unfold C
    simp [show (7077888 * k + 5496172) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2748086) = 1769472 * k + 1374043 := by
    unfold C
    simp [show (3538944 * k + 2748086) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1374043) = 5308416 * k + 4122130 := by
    unfold C
    simp [show (1769472 * k + 1374043) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 4122130) = 2654208 * k + 2061065 := by
    unfold C
    simp [show (5308416 * k + 4122130) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 2061065) = 7962624 * k + 6183196 := by
    unfold C
    simp [show (2654208 * k + 2061065) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 6183196) = 3981312 * k + 3091598 := by
    unfold C
    simp [show (7962624 * k + 6183196) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 3091598) = 1990656 * k + 1545799 := by
    unfold C
    simp [show (3981312 * k + 3091598) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 1545799) = 5971968 * k + 4637398 := by
    unfold C
    simp [show (1990656 * k + 1545799) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 4637398) = 2985984 * k + 2318699 := by
    unfold C
    simp [show (5971968 * k + 4637398) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 2318699) = 8957952 * k + 6956098 := by
    unfold C
    simp [show (2985984 * k + 2318699) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 6956098) = 4478976 * k + 3478049 := by
    unfold C
    simp [show (8957952 * k + 6956098) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 3478049) = 13436928 * k + 10434148 := by
    unfold C
    simp [show (4478976 * k + 3478049) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 10434148) = 6718464 * k + 5217074 := by
    unfold C
    simp [show (13436928 * k + 10434148) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 5217074) = 3359232 * k + 2608537 := by
    unfold C
    simp [show (6718464 * k + 5217074) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 2608537) = 10077696 * k + 7825612 := by
    unfold C
    simp [show (3359232 * k + 2608537) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 7825612) = 5038848 * k + 3912806 := by
    unfold C
    simp [show (10077696 * k + 7825612) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 3912806) = 2519424 * k + 1956403 := by
    unfold C
    simp [show (5038848 * k + 3912806) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1956403) = 7558272 * k + 5869210 := by
    unfold C
    simp [show (2519424 * k + 1956403) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 5869210) = 3779136 * k + 2934605 := by
    unfold C
    simp [show (7558272 * k + 5869210) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 2934605) = 11337408 * k + 8803816 := by
    unfold C
    simp [show (3779136 * k + 2934605) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 8803816) = 5668704 * k + 4401908 := by
    unfold C
    simp [show (11337408 * k + 8803816) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 4401908) = 2834352 * k + 2200954 := by
    unfold C
    simp [show (5668704 * k + 4401908) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2200954) = 1417176 * k + 1100477 := by
    unfold C
    simp [show (2834352 * k + 2200954) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 1100477) = 4251528 * k + 3301432 := by
    unfold C
    simp [show (1417176 * k + 1100477) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 3301432) = 2125764 * k + 1650716 := by
    unfold C
    simp [show (4251528 * k + 3301432) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1650716) = 1062882 * k + 825358 := by
    unfold C
    simp [show (2125764 * k + 1650716) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 825358) = 531441 * k + 412679 := by
    unfold C
    simp [show (1062882 * k + 825358) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 814247) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 814247)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_814591 : ∀ k : Nat,
    iterate (1048576 * k + 814591) 32 = 531441 * k + 412853 ∧
      531441 * k + 412853 < 1048576 * k + 814591 := by
  intro k
  have h1 : C (1048576 * k + 814591) = 3145728 * k + 2443774 := by
    unfold C
    simp [show (1048576 * k + 814591) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2443774) = 1572864 * k + 1221887 := by
    unfold C
    simp [show (3145728 * k + 2443774) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1221887) = 4718592 * k + 3665662 := by
    unfold C
    simp [show (1572864 * k + 1221887) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3665662) = 2359296 * k + 1832831 := by
    unfold C
    simp [show (4718592 * k + 3665662) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1832831) = 7077888 * k + 5498494 := by
    unfold C
    simp [show (2359296 * k + 1832831) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 5498494) = 3538944 * k + 2749247 := by
    unfold C
    simp [show (7077888 * k + 5498494) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2749247) = 10616832 * k + 8247742 := by
    unfold C
    simp [show (3538944 * k + 2749247) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 8247742) = 5308416 * k + 4123871 := by
    unfold C
    simp [show (10616832 * k + 8247742) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 4123871) = 15925248 * k + 12371614 := by
    unfold C
    simp [show (5308416 * k + 4123871) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 12371614) = 7962624 * k + 6185807 := by
    unfold C
    simp [show (15925248 * k + 12371614) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 6185807) = 23887872 * k + 18557422 := by
    unfold C
    simp [show (7962624 * k + 6185807) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 18557422) = 11943936 * k + 9278711 := by
    unfold C
    simp [show (23887872 * k + 18557422) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 9278711) = 35831808 * k + 27836134 := by
    unfold C
    simp [show (11943936 * k + 9278711) % 2 ≠ 0 by omega]
    omega
  have h14 : C (35831808 * k + 27836134) = 17915904 * k + 13918067 := by
    unfold C
    simp [show (35831808 * k + 27836134) % 2 = 0 by omega]
    omega
  have h15 : C (17915904 * k + 13918067) = 53747712 * k + 41754202 := by
    unfold C
    simp [show (17915904 * k + 13918067) % 2 ≠ 0 by omega]
    omega
  have h16 : C (53747712 * k + 41754202) = 26873856 * k + 20877101 := by
    unfold C
    simp [show (53747712 * k + 41754202) % 2 = 0 by omega]
    omega
  have h17 : C (26873856 * k + 20877101) = 80621568 * k + 62631304 := by
    unfold C
    simp [show (26873856 * k + 20877101) % 2 ≠ 0 by omega]
    omega
  have h18 : C (80621568 * k + 62631304) = 40310784 * k + 31315652 := by
    unfold C
    simp [show (80621568 * k + 62631304) % 2 = 0 by omega]
    omega
  have h19 : C (40310784 * k + 31315652) = 20155392 * k + 15657826 := by
    unfold C
    simp [show (40310784 * k + 31315652) % 2 = 0 by omega]
    omega
  have h20 : C (20155392 * k + 15657826) = 10077696 * k + 7828913 := by
    unfold C
    simp [show (20155392 * k + 15657826) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 7828913) = 30233088 * k + 23486740 := by
    unfold C
    simp [show (10077696 * k + 7828913) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 23486740) = 15116544 * k + 11743370 := by
    unfold C
    simp [show (30233088 * k + 23486740) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 11743370) = 7558272 * k + 5871685 := by
    unfold C
    simp [show (15116544 * k + 11743370) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 5871685) = 22674816 * k + 17615056 := by
    unfold C
    simp [show (7558272 * k + 5871685) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 17615056) = 11337408 * k + 8807528 := by
    unfold C
    simp [show (22674816 * k + 17615056) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 8807528) = 5668704 * k + 4403764 := by
    unfold C
    simp [show (11337408 * k + 8807528) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 4403764) = 2834352 * k + 2201882 := by
    unfold C
    simp [show (5668704 * k + 4403764) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2201882) = 1417176 * k + 1100941 := by
    unfold C
    simp [show (2834352 * k + 2201882) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 1100941) = 4251528 * k + 3302824 := by
    unfold C
    simp [show (1417176 * k + 1100941) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 3302824) = 2125764 * k + 1651412 := by
    unfold C
    simp [show (4251528 * k + 3302824) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1651412) = 1062882 * k + 825706 := by
    unfold C
    simp [show (2125764 * k + 1651412) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 825706) = 531441 * k + 412853 := by
    unfold C
    simp [show (1062882 * k + 825706) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 814591) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 814591)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_815407 : ∀ k : Nat,
    iterate (1048576 * k + 815407) 32 = 531441 * k + 413267 ∧
      531441 * k + 413267 < 1048576 * k + 815407 := by
  intro k
  have h1 : C (1048576 * k + 815407) = 3145728 * k + 2446222 := by
    unfold C
    simp [show (1048576 * k + 815407) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2446222) = 1572864 * k + 1223111 := by
    unfold C
    simp [show (3145728 * k + 2446222) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1223111) = 4718592 * k + 3669334 := by
    unfold C
    simp [show (1572864 * k + 1223111) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3669334) = 2359296 * k + 1834667 := by
    unfold C
    simp [show (4718592 * k + 3669334) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1834667) = 7077888 * k + 5504002 := by
    unfold C
    simp [show (2359296 * k + 1834667) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 5504002) = 3538944 * k + 2752001 := by
    unfold C
    simp [show (7077888 * k + 5504002) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2752001) = 10616832 * k + 8256004 := by
    unfold C
    simp [show (3538944 * k + 2752001) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 8256004) = 5308416 * k + 4128002 := by
    unfold C
    simp [show (10616832 * k + 8256004) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 4128002) = 2654208 * k + 2064001 := by
    unfold C
    simp [show (5308416 * k + 4128002) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 2064001) = 7962624 * k + 6192004 := by
    unfold C
    simp [show (2654208 * k + 2064001) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 6192004) = 3981312 * k + 3096002 := by
    unfold C
    simp [show (7962624 * k + 6192004) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 3096002) = 1990656 * k + 1548001 := by
    unfold C
    simp [show (3981312 * k + 3096002) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 1548001) = 5971968 * k + 4644004 := by
    unfold C
    simp [show (1990656 * k + 1548001) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 4644004) = 2985984 * k + 2322002 := by
    unfold C
    simp [show (5971968 * k + 4644004) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 2322002) = 1492992 * k + 1161001 := by
    unfold C
    simp [show (2985984 * k + 2322002) % 2 = 0 by omega]
    omega
  have h16 : C (1492992 * k + 1161001) = 4478976 * k + 3483004 := by
    unfold C
    simp [show (1492992 * k + 1161001) % 2 ≠ 0 by omega]
    omega
  have h17 : C (4478976 * k + 3483004) = 2239488 * k + 1741502 := by
    unfold C
    simp [show (4478976 * k + 3483004) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 1741502) = 1119744 * k + 870751 := by
    unfold C
    simp [show (2239488 * k + 1741502) % 2 = 0 by omega]
    omega
  have h19 : C (1119744 * k + 870751) = 3359232 * k + 2612254 := by
    unfold C
    simp [show (1119744 * k + 870751) % 2 ≠ 0 by omega]
    omega
  have h20 : C (3359232 * k + 2612254) = 1679616 * k + 1306127 := by
    unfold C
    simp [show (3359232 * k + 2612254) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 1306127) = 5038848 * k + 3918382 := by
    unfold C
    simp [show (1679616 * k + 1306127) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 3918382) = 2519424 * k + 1959191 := by
    unfold C
    simp [show (5038848 * k + 3918382) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1959191) = 7558272 * k + 5877574 := by
    unfold C
    simp [show (2519424 * k + 1959191) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 5877574) = 3779136 * k + 2938787 := by
    unfold C
    simp [show (7558272 * k + 5877574) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 2938787) = 11337408 * k + 8816362 := by
    unfold C
    simp [show (3779136 * k + 2938787) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 8816362) = 5668704 * k + 4408181 := by
    unfold C
    simp [show (11337408 * k + 8816362) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 4408181) = 17006112 * k + 13224544 := by
    unfold C
    simp [show (5668704 * k + 4408181) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 13224544) = 8503056 * k + 6612272 := by
    unfold C
    simp [show (17006112 * k + 13224544) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 6612272) = 4251528 * k + 3306136 := by
    unfold C
    simp [show (8503056 * k + 6612272) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 3306136) = 2125764 * k + 1653068 := by
    unfold C
    simp [show (4251528 * k + 3306136) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1653068) = 1062882 * k + 826534 := by
    unfold C
    simp [show (2125764 * k + 1653068) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 826534) = 531441 * k + 413267 := by
    unfold C
    simp [show (1062882 * k + 826534) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 815407) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 815407)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_815615 : ∀ k : Nat,
    iterate (1048576 * k + 815615) 32 = 531441 * k + 413372 ∧
      531441 * k + 413372 < 1048576 * k + 815615 := by
  intro k
  have h1 : C (1048576 * k + 815615) = 3145728 * k + 2446846 := by
    unfold C
    simp [show (1048576 * k + 815615) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2446846) = 1572864 * k + 1223423 := by
    unfold C
    simp [show (3145728 * k + 2446846) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1223423) = 4718592 * k + 3670270 := by
    unfold C
    simp [show (1572864 * k + 1223423) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3670270) = 2359296 * k + 1835135 := by
    unfold C
    simp [show (4718592 * k + 3670270) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1835135) = 7077888 * k + 5505406 := by
    unfold C
    simp [show (2359296 * k + 1835135) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 5505406) = 3538944 * k + 2752703 := by
    unfold C
    simp [show (7077888 * k + 5505406) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2752703) = 10616832 * k + 8258110 := by
    unfold C
    simp [show (3538944 * k + 2752703) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 8258110) = 5308416 * k + 4129055 := by
    unfold C
    simp [show (10616832 * k + 8258110) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 4129055) = 15925248 * k + 12387166 := by
    unfold C
    simp [show (5308416 * k + 4129055) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 12387166) = 7962624 * k + 6193583 := by
    unfold C
    simp [show (15925248 * k + 12387166) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 6193583) = 23887872 * k + 18580750 := by
    unfold C
    simp [show (7962624 * k + 6193583) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 18580750) = 11943936 * k + 9290375 := by
    unfold C
    simp [show (23887872 * k + 18580750) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 9290375) = 35831808 * k + 27871126 := by
    unfold C
    simp [show (11943936 * k + 9290375) % 2 ≠ 0 by omega]
    omega
  have h14 : C (35831808 * k + 27871126) = 17915904 * k + 13935563 := by
    unfold C
    simp [show (35831808 * k + 27871126) % 2 = 0 by omega]
    omega
  have h15 : C (17915904 * k + 13935563) = 53747712 * k + 41806690 := by
    unfold C
    simp [show (17915904 * k + 13935563) % 2 ≠ 0 by omega]
    omega
  have h16 : C (53747712 * k + 41806690) = 26873856 * k + 20903345 := by
    unfold C
    simp [show (53747712 * k + 41806690) % 2 = 0 by omega]
    omega
  have h17 : C (26873856 * k + 20903345) = 80621568 * k + 62710036 := by
    unfold C
    simp [show (26873856 * k + 20903345) % 2 ≠ 0 by omega]
    omega
  have h18 : C (80621568 * k + 62710036) = 40310784 * k + 31355018 := by
    unfold C
    simp [show (80621568 * k + 62710036) % 2 = 0 by omega]
    omega
  have h19 : C (40310784 * k + 31355018) = 20155392 * k + 15677509 := by
    unfold C
    simp [show (40310784 * k + 31355018) % 2 = 0 by omega]
    omega
  have h20 : C (20155392 * k + 15677509) = 60466176 * k + 47032528 := by
    unfold C
    simp [show (20155392 * k + 15677509) % 2 ≠ 0 by omega]
    omega
  have h21 : C (60466176 * k + 47032528) = 30233088 * k + 23516264 := by
    unfold C
    simp [show (60466176 * k + 47032528) % 2 = 0 by omega]
    omega
  have h22 : C (30233088 * k + 23516264) = 15116544 * k + 11758132 := by
    unfold C
    simp [show (30233088 * k + 23516264) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 11758132) = 7558272 * k + 5879066 := by
    unfold C
    simp [show (15116544 * k + 11758132) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 5879066) = 3779136 * k + 2939533 := by
    unfold C
    simp [show (7558272 * k + 5879066) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 2939533) = 11337408 * k + 8818600 := by
    unfold C
    simp [show (3779136 * k + 2939533) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 8818600) = 5668704 * k + 4409300 := by
    unfold C
    simp [show (11337408 * k + 8818600) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 4409300) = 2834352 * k + 2204650 := by
    unfold C
    simp [show (5668704 * k + 4409300) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2204650) = 1417176 * k + 1102325 := by
    unfold C
    simp [show (2834352 * k + 2204650) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 1102325) = 4251528 * k + 3306976 := by
    unfold C
    simp [show (1417176 * k + 1102325) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 3306976) = 2125764 * k + 1653488 := by
    unfold C
    simp [show (4251528 * k + 3306976) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1653488) = 1062882 * k + 826744 := by
    unfold C
    simp [show (2125764 * k + 1653488) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 826744) = 531441 * k + 413372 := by
    unfold C
    simp [show (1062882 * k + 826744) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 815615) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 815615)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_815727 : ∀ k : Nat,
    iterate (1048576 * k + 815727) 32 = 531441 * k + 413429 ∧
      531441 * k + 413429 < 1048576 * k + 815727 := by
  intro k
  have h1 : C (1048576 * k + 815727) = 3145728 * k + 2447182 := by
    unfold C
    simp [show (1048576 * k + 815727) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2447182) = 1572864 * k + 1223591 := by
    unfold C
    simp [show (3145728 * k + 2447182) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1223591) = 4718592 * k + 3670774 := by
    unfold C
    simp [show (1572864 * k + 1223591) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3670774) = 2359296 * k + 1835387 := by
    unfold C
    simp [show (4718592 * k + 3670774) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1835387) = 7077888 * k + 5506162 := by
    unfold C
    simp [show (2359296 * k + 1835387) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 5506162) = 3538944 * k + 2753081 := by
    unfold C
    simp [show (7077888 * k + 5506162) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2753081) = 10616832 * k + 8259244 := by
    unfold C
    simp [show (3538944 * k + 2753081) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 8259244) = 5308416 * k + 4129622 := by
    unfold C
    simp [show (10616832 * k + 8259244) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 4129622) = 2654208 * k + 2064811 := by
    unfold C
    simp [show (5308416 * k + 4129622) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 2064811) = 7962624 * k + 6194434 := by
    unfold C
    simp [show (2654208 * k + 2064811) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 6194434) = 3981312 * k + 3097217 := by
    unfold C
    simp [show (7962624 * k + 6194434) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 3097217) = 11943936 * k + 9291652 := by
    unfold C
    simp [show (3981312 * k + 3097217) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 9291652) = 5971968 * k + 4645826 := by
    unfold C
    simp [show (11943936 * k + 9291652) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 4645826) = 2985984 * k + 2322913 := by
    unfold C
    simp [show (5971968 * k + 4645826) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 2322913) = 8957952 * k + 6968740 := by
    unfold C
    simp [show (2985984 * k + 2322913) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 6968740) = 4478976 * k + 3484370 := by
    unfold C
    simp [show (8957952 * k + 6968740) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 3484370) = 2239488 * k + 1742185 := by
    unfold C
    simp [show (4478976 * k + 3484370) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 1742185) = 6718464 * k + 5226556 := by
    unfold C
    simp [show (2239488 * k + 1742185) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 5226556) = 3359232 * k + 2613278 := by
    unfold C
    simp [show (6718464 * k + 5226556) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 2613278) = 1679616 * k + 1306639 := by
    unfold C
    simp [show (3359232 * k + 2613278) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 1306639) = 5038848 * k + 3919918 := by
    unfold C
    simp [show (1679616 * k + 1306639) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 3919918) = 2519424 * k + 1959959 := by
    unfold C
    simp [show (5038848 * k + 3919918) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1959959) = 7558272 * k + 5879878 := by
    unfold C
    simp [show (2519424 * k + 1959959) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 5879878) = 3779136 * k + 2939939 := by
    unfold C
    simp [show (7558272 * k + 5879878) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 2939939) = 11337408 * k + 8819818 := by
    unfold C
    simp [show (3779136 * k + 2939939) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 8819818) = 5668704 * k + 4409909 := by
    unfold C
    simp [show (11337408 * k + 8819818) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 4409909) = 17006112 * k + 13229728 := by
    unfold C
    simp [show (5668704 * k + 4409909) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 13229728) = 8503056 * k + 6614864 := by
    unfold C
    simp [show (17006112 * k + 13229728) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 6614864) = 4251528 * k + 3307432 := by
    unfold C
    simp [show (8503056 * k + 6614864) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 3307432) = 2125764 * k + 1653716 := by
    unfold C
    simp [show (4251528 * k + 3307432) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1653716) = 1062882 * k + 826858 := by
    unfold C
    simp [show (2125764 * k + 1653716) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 826858) = 531441 * k + 413429 := by
    unfold C
    simp [show (1062882 * k + 826858) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 815727) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 815727)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_816431 : ∀ k : Nat,
    iterate (1048576 * k + 816431) 32 = 531441 * k + 413786 ∧
      531441 * k + 413786 < 1048576 * k + 816431 := by
  intro k
  have h1 : C (1048576 * k + 816431) = 3145728 * k + 2449294 := by
    unfold C
    simp [show (1048576 * k + 816431) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2449294) = 1572864 * k + 1224647 := by
    unfold C
    simp [show (3145728 * k + 2449294) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1224647) = 4718592 * k + 3673942 := by
    unfold C
    simp [show (1572864 * k + 1224647) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3673942) = 2359296 * k + 1836971 := by
    unfold C
    simp [show (4718592 * k + 3673942) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1836971) = 7077888 * k + 5510914 := by
    unfold C
    simp [show (2359296 * k + 1836971) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 5510914) = 3538944 * k + 2755457 := by
    unfold C
    simp [show (7077888 * k + 5510914) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2755457) = 10616832 * k + 8266372 := by
    unfold C
    simp [show (3538944 * k + 2755457) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 8266372) = 5308416 * k + 4133186 := by
    unfold C
    simp [show (10616832 * k + 8266372) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 4133186) = 2654208 * k + 2066593 := by
    unfold C
    simp [show (5308416 * k + 4133186) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 2066593) = 7962624 * k + 6199780 := by
    unfold C
    simp [show (2654208 * k + 2066593) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 6199780) = 3981312 * k + 3099890 := by
    unfold C
    simp [show (7962624 * k + 6199780) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 3099890) = 1990656 * k + 1549945 := by
    unfold C
    simp [show (3981312 * k + 3099890) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 1549945) = 5971968 * k + 4649836 := by
    unfold C
    simp [show (1990656 * k + 1549945) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 4649836) = 2985984 * k + 2324918 := by
    unfold C
    simp [show (5971968 * k + 4649836) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 2324918) = 1492992 * k + 1162459 := by
    unfold C
    simp [show (2985984 * k + 2324918) % 2 = 0 by omega]
    omega
  have h16 : C (1492992 * k + 1162459) = 4478976 * k + 3487378 := by
    unfold C
    simp [show (1492992 * k + 1162459) % 2 ≠ 0 by omega]
    omega
  have h17 : C (4478976 * k + 3487378) = 2239488 * k + 1743689 := by
    unfold C
    simp [show (4478976 * k + 3487378) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 1743689) = 6718464 * k + 5231068 := by
    unfold C
    simp [show (2239488 * k + 1743689) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 5231068) = 3359232 * k + 2615534 := by
    unfold C
    simp [show (6718464 * k + 5231068) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 2615534) = 1679616 * k + 1307767 := by
    unfold C
    simp [show (3359232 * k + 2615534) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 1307767) = 5038848 * k + 3923302 := by
    unfold C
    simp [show (1679616 * k + 1307767) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 3923302) = 2519424 * k + 1961651 := by
    unfold C
    simp [show (5038848 * k + 3923302) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1961651) = 7558272 * k + 5884954 := by
    unfold C
    simp [show (2519424 * k + 1961651) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 5884954) = 3779136 * k + 2942477 := by
    unfold C
    simp [show (7558272 * k + 5884954) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 2942477) = 11337408 * k + 8827432 := by
    unfold C
    simp [show (3779136 * k + 2942477) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 8827432) = 5668704 * k + 4413716 := by
    unfold C
    simp [show (11337408 * k + 8827432) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 4413716) = 2834352 * k + 2206858 := by
    unfold C
    simp [show (5668704 * k + 4413716) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2206858) = 1417176 * k + 1103429 := by
    unfold C
    simp [show (2834352 * k + 2206858) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 1103429) = 4251528 * k + 3310288 := by
    unfold C
    simp [show (1417176 * k + 1103429) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 3310288) = 2125764 * k + 1655144 := by
    unfold C
    simp [show (4251528 * k + 3310288) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1655144) = 1062882 * k + 827572 := by
    unfold C
    simp [show (2125764 * k + 1655144) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 827572) = 531441 * k + 413786 := by
    unfold C
    simp [show (1062882 * k + 827572) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 816431) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 816431)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_816455 : ∀ k : Nat,
    iterate (1048576 * k + 816455) 32 = 531441 * k + 413798 ∧
      531441 * k + 413798 < 1048576 * k + 816455 := by
  intro k
  have h1 : C (1048576 * k + 816455) = 3145728 * k + 2449366 := by
    unfold C
    simp [show (1048576 * k + 816455) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2449366) = 1572864 * k + 1224683 := by
    unfold C
    simp [show (3145728 * k + 2449366) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1224683) = 4718592 * k + 3674050 := by
    unfold C
    simp [show (1572864 * k + 1224683) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3674050) = 2359296 * k + 1837025 := by
    unfold C
    simp [show (4718592 * k + 3674050) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1837025) = 7077888 * k + 5511076 := by
    unfold C
    simp [show (2359296 * k + 1837025) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 5511076) = 3538944 * k + 2755538 := by
    unfold C
    simp [show (7077888 * k + 5511076) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2755538) = 1769472 * k + 1377769 := by
    unfold C
    simp [show (3538944 * k + 2755538) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1377769) = 5308416 * k + 4133308 := by
    unfold C
    simp [show (1769472 * k + 1377769) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 4133308) = 2654208 * k + 2066654 := by
    unfold C
    simp [show (5308416 * k + 4133308) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 2066654) = 1327104 * k + 1033327 := by
    unfold C
    simp [show (2654208 * k + 2066654) % 2 = 0 by omega]
    omega
  have h11 : C (1327104 * k + 1033327) = 3981312 * k + 3099982 := by
    unfold C
    simp [show (1327104 * k + 1033327) % 2 ≠ 0 by omega]
    omega
  have h12 : C (3981312 * k + 3099982) = 1990656 * k + 1549991 := by
    unfold C
    simp [show (3981312 * k + 3099982) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 1549991) = 5971968 * k + 4649974 := by
    unfold C
    simp [show (1990656 * k + 1549991) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 4649974) = 2985984 * k + 2324987 := by
    unfold C
    simp [show (5971968 * k + 4649974) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 2324987) = 8957952 * k + 6974962 := by
    unfold C
    simp [show (2985984 * k + 2324987) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 6974962) = 4478976 * k + 3487481 := by
    unfold C
    simp [show (8957952 * k + 6974962) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 3487481) = 13436928 * k + 10462444 := by
    unfold C
    simp [show (4478976 * k + 3487481) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 10462444) = 6718464 * k + 5231222 := by
    unfold C
    simp [show (13436928 * k + 10462444) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 5231222) = 3359232 * k + 2615611 := by
    unfold C
    simp [show (6718464 * k + 5231222) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 2615611) = 10077696 * k + 7846834 := by
    unfold C
    simp [show (3359232 * k + 2615611) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 7846834) = 5038848 * k + 3923417 := by
    unfold C
    simp [show (10077696 * k + 7846834) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 3923417) = 15116544 * k + 11770252 := by
    unfold C
    simp [show (5038848 * k + 3923417) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 11770252) = 7558272 * k + 5885126 := by
    unfold C
    simp [show (15116544 * k + 11770252) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 5885126) = 3779136 * k + 2942563 := by
    unfold C
    simp [show (7558272 * k + 5885126) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 2942563) = 11337408 * k + 8827690 := by
    unfold C
    simp [show (3779136 * k + 2942563) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 8827690) = 5668704 * k + 4413845 := by
    unfold C
    simp [show (11337408 * k + 8827690) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 4413845) = 17006112 * k + 13241536 := by
    unfold C
    simp [show (5668704 * k + 4413845) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 13241536) = 8503056 * k + 6620768 := by
    unfold C
    simp [show (17006112 * k + 13241536) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 6620768) = 4251528 * k + 3310384 := by
    unfold C
    simp [show (8503056 * k + 6620768) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 3310384) = 2125764 * k + 1655192 := by
    unfold C
    simp [show (4251528 * k + 3310384) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1655192) = 1062882 * k + 827596 := by
    unfold C
    simp [show (2125764 * k + 1655192) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 827596) = 531441 * k + 413798 := by
    unfold C
    simp [show (1062882 * k + 827596) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 816455) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 816455)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_816607 : ∀ k : Nat,
    iterate (1048576 * k + 816607) 32 = 531441 * k + 413875 ∧
      531441 * k + 413875 < 1048576 * k + 816607 := by
  intro k
  have h1 : C (1048576 * k + 816607) = 3145728 * k + 2449822 := by
    unfold C
    simp [show (1048576 * k + 816607) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2449822) = 1572864 * k + 1224911 := by
    unfold C
    simp [show (3145728 * k + 2449822) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1224911) = 4718592 * k + 3674734 := by
    unfold C
    simp [show (1572864 * k + 1224911) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3674734) = 2359296 * k + 1837367 := by
    unfold C
    simp [show (4718592 * k + 3674734) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1837367) = 7077888 * k + 5512102 := by
    unfold C
    simp [show (2359296 * k + 1837367) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 5512102) = 3538944 * k + 2756051 := by
    unfold C
    simp [show (7077888 * k + 5512102) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2756051) = 10616832 * k + 8268154 := by
    unfold C
    simp [show (3538944 * k + 2756051) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 8268154) = 5308416 * k + 4134077 := by
    unfold C
    simp [show (10616832 * k + 8268154) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 4134077) = 15925248 * k + 12402232 := by
    unfold C
    simp [show (5308416 * k + 4134077) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 12402232) = 7962624 * k + 6201116 := by
    unfold C
    simp [show (15925248 * k + 12402232) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 6201116) = 3981312 * k + 3100558 := by
    unfold C
    simp [show (7962624 * k + 6201116) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 3100558) = 1990656 * k + 1550279 := by
    unfold C
    simp [show (3981312 * k + 3100558) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 1550279) = 5971968 * k + 4650838 := by
    unfold C
    simp [show (1990656 * k + 1550279) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 4650838) = 2985984 * k + 2325419 := by
    unfold C
    simp [show (5971968 * k + 4650838) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 2325419) = 8957952 * k + 6976258 := by
    unfold C
    simp [show (2985984 * k + 2325419) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 6976258) = 4478976 * k + 3488129 := by
    unfold C
    simp [show (8957952 * k + 6976258) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 3488129) = 13436928 * k + 10464388 := by
    unfold C
    simp [show (4478976 * k + 3488129) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 10464388) = 6718464 * k + 5232194 := by
    unfold C
    simp [show (13436928 * k + 10464388) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 5232194) = 3359232 * k + 2616097 := by
    unfold C
    simp [show (6718464 * k + 5232194) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 2616097) = 10077696 * k + 7848292 := by
    unfold C
    simp [show (3359232 * k + 2616097) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 7848292) = 5038848 * k + 3924146 := by
    unfold C
    simp [show (10077696 * k + 7848292) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 3924146) = 2519424 * k + 1962073 := by
    unfold C
    simp [show (5038848 * k + 3924146) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1962073) = 7558272 * k + 5886220 := by
    unfold C
    simp [show (2519424 * k + 1962073) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 5886220) = 3779136 * k + 2943110 := by
    unfold C
    simp [show (7558272 * k + 5886220) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 2943110) = 1889568 * k + 1471555 := by
    unfold C
    simp [show (3779136 * k + 2943110) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1471555) = 5668704 * k + 4414666 := by
    unfold C
    simp [show (1889568 * k + 1471555) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 4414666) = 2834352 * k + 2207333 := by
    unfold C
    simp [show (5668704 * k + 4414666) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2207333) = 8503056 * k + 6622000 := by
    unfold C
    simp [show (2834352 * k + 2207333) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 6622000) = 4251528 * k + 3311000 := by
    unfold C
    simp [show (8503056 * k + 6622000) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 3311000) = 2125764 * k + 1655500 := by
    unfold C
    simp [show (4251528 * k + 3311000) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1655500) = 1062882 * k + 827750 := by
    unfold C
    simp [show (2125764 * k + 1655500) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 827750) = 531441 * k + 413875 := by
    unfold C
    simp [show (1062882 * k + 827750) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 816607) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 816607)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_816799 : ∀ k : Nat,
    iterate (1048576 * k + 816799) 32 = 531441 * k + 413972 ∧
      531441 * k + 413972 < 1048576 * k + 816799 := by
  intro k
  have h1 : C (1048576 * k + 816799) = 3145728 * k + 2450398 := by
    unfold C
    simp [show (1048576 * k + 816799) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2450398) = 1572864 * k + 1225199 := by
    unfold C
    simp [show (3145728 * k + 2450398) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1225199) = 4718592 * k + 3675598 := by
    unfold C
    simp [show (1572864 * k + 1225199) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3675598) = 2359296 * k + 1837799 := by
    unfold C
    simp [show (4718592 * k + 3675598) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1837799) = 7077888 * k + 5513398 := by
    unfold C
    simp [show (2359296 * k + 1837799) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 5513398) = 3538944 * k + 2756699 := by
    unfold C
    simp [show (7077888 * k + 5513398) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2756699) = 10616832 * k + 8270098 := by
    unfold C
    simp [show (3538944 * k + 2756699) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 8270098) = 5308416 * k + 4135049 := by
    unfold C
    simp [show (10616832 * k + 8270098) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 4135049) = 15925248 * k + 12405148 := by
    unfold C
    simp [show (5308416 * k + 4135049) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 12405148) = 7962624 * k + 6202574 := by
    unfold C
    simp [show (15925248 * k + 12405148) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 6202574) = 3981312 * k + 3101287 := by
    unfold C
    simp [show (7962624 * k + 6202574) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 3101287) = 11943936 * k + 9303862 := by
    unfold C
    simp [show (3981312 * k + 3101287) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 9303862) = 5971968 * k + 4651931 := by
    unfold C
    simp [show (11943936 * k + 9303862) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 4651931) = 17915904 * k + 13955794 := by
    unfold C
    simp [show (5971968 * k + 4651931) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 13955794) = 8957952 * k + 6977897 := by
    unfold C
    simp [show (17915904 * k + 13955794) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 6977897) = 26873856 * k + 20933692 := by
    unfold C
    simp [show (8957952 * k + 6977897) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 20933692) = 13436928 * k + 10466846 := by
    unfold C
    simp [show (26873856 * k + 20933692) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 10466846) = 6718464 * k + 5233423 := by
    unfold C
    simp [show (13436928 * k + 10466846) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 5233423) = 20155392 * k + 15700270 := by
    unfold C
    simp [show (6718464 * k + 5233423) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 15700270) = 10077696 * k + 7850135 := by
    unfold C
    simp [show (20155392 * k + 15700270) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 7850135) = 30233088 * k + 23550406 := by
    unfold C
    simp [show (10077696 * k + 7850135) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 23550406) = 15116544 * k + 11775203 := by
    unfold C
    simp [show (30233088 * k + 23550406) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 11775203) = 45349632 * k + 35325610 := by
    unfold C
    simp [show (15116544 * k + 11775203) % 2 ≠ 0 by omega]
    omega
  have h24 : C (45349632 * k + 35325610) = 22674816 * k + 17662805 := by
    unfold C
    simp [show (45349632 * k + 35325610) % 2 = 0 by omega]
    omega
  have h25 : C (22674816 * k + 17662805) = 68024448 * k + 52988416 := by
    unfold C
    simp [show (22674816 * k + 17662805) % 2 ≠ 0 by omega]
    omega
  have h26 : C (68024448 * k + 52988416) = 34012224 * k + 26494208 := by
    unfold C
    simp [show (68024448 * k + 52988416) % 2 = 0 by omega]
    omega
  have h27 : C (34012224 * k + 26494208) = 17006112 * k + 13247104 := by
    unfold C
    simp [show (34012224 * k + 26494208) % 2 = 0 by omega]
    omega
  have h28 : C (17006112 * k + 13247104) = 8503056 * k + 6623552 := by
    unfold C
    simp [show (17006112 * k + 13247104) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 6623552) = 4251528 * k + 3311776 := by
    unfold C
    simp [show (8503056 * k + 6623552) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 3311776) = 2125764 * k + 1655888 := by
    unfold C
    simp [show (4251528 * k + 3311776) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1655888) = 1062882 * k + 827944 := by
    unfold C
    simp [show (2125764 * k + 1655888) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 827944) = 531441 * k + 413972 := by
    unfold C
    simp [show (1062882 * k + 827944) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 816799) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 816799)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_816923 : ∀ k : Nat,
    iterate (1048576 * k + 816923) 32 = 531441 * k + 414035 ∧
      531441 * k + 414035 < 1048576 * k + 816923 := by
  intro k
  have h1 : C (1048576 * k + 816923) = 3145728 * k + 2450770 := by
    unfold C
    simp [show (1048576 * k + 816923) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2450770) = 1572864 * k + 1225385 := by
    unfold C
    simp [show (3145728 * k + 2450770) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1225385) = 4718592 * k + 3676156 := by
    unfold C
    simp [show (1572864 * k + 1225385) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3676156) = 2359296 * k + 1838078 := by
    unfold C
    simp [show (4718592 * k + 3676156) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1838078) = 1179648 * k + 919039 := by
    unfold C
    simp [show (2359296 * k + 1838078) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 919039) = 3538944 * k + 2757118 := by
    unfold C
    simp [show (1179648 * k + 919039) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 2757118) = 1769472 * k + 1378559 := by
    unfold C
    simp [show (3538944 * k + 2757118) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1378559) = 5308416 * k + 4135678 := by
    unfold C
    simp [show (1769472 * k + 1378559) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 4135678) = 2654208 * k + 2067839 := by
    unfold C
    simp [show (5308416 * k + 4135678) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 2067839) = 7962624 * k + 6203518 := by
    unfold C
    simp [show (2654208 * k + 2067839) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 6203518) = 3981312 * k + 3101759 := by
    unfold C
    simp [show (7962624 * k + 6203518) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 3101759) = 11943936 * k + 9305278 := by
    unfold C
    simp [show (3981312 * k + 3101759) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 9305278) = 5971968 * k + 4652639 := by
    unfold C
    simp [show (11943936 * k + 9305278) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 4652639) = 17915904 * k + 13957918 := by
    unfold C
    simp [show (5971968 * k + 4652639) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 13957918) = 8957952 * k + 6978959 := by
    unfold C
    simp [show (17915904 * k + 13957918) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 6978959) = 26873856 * k + 20936878 := by
    unfold C
    simp [show (8957952 * k + 6978959) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 20936878) = 13436928 * k + 10468439 := by
    unfold C
    simp [show (26873856 * k + 20936878) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 10468439) = 40310784 * k + 31405318 := by
    unfold C
    simp [show (13436928 * k + 10468439) % 2 ≠ 0 by omega]
    omega
  have h19 : C (40310784 * k + 31405318) = 20155392 * k + 15702659 := by
    unfold C
    simp [show (40310784 * k + 31405318) % 2 = 0 by omega]
    omega
  have h20 : C (20155392 * k + 15702659) = 60466176 * k + 47107978 := by
    unfold C
    simp [show (20155392 * k + 15702659) % 2 ≠ 0 by omega]
    omega
  have h21 : C (60466176 * k + 47107978) = 30233088 * k + 23553989 := by
    unfold C
    simp [show (60466176 * k + 47107978) % 2 = 0 by omega]
    omega
  have h22 : C (30233088 * k + 23553989) = 90699264 * k + 70661968 := by
    unfold C
    simp [show (30233088 * k + 23553989) % 2 ≠ 0 by omega]
    omega
  have h23 : C (90699264 * k + 70661968) = 45349632 * k + 35330984 := by
    unfold C
    simp [show (90699264 * k + 70661968) % 2 = 0 by omega]
    omega
  have h24 : C (45349632 * k + 35330984) = 22674816 * k + 17665492 := by
    unfold C
    simp [show (45349632 * k + 35330984) % 2 = 0 by omega]
    omega
  have h25 : C (22674816 * k + 17665492) = 11337408 * k + 8832746 := by
    unfold C
    simp [show (22674816 * k + 17665492) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 8832746) = 5668704 * k + 4416373 := by
    unfold C
    simp [show (11337408 * k + 8832746) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 4416373) = 17006112 * k + 13249120 := by
    unfold C
    simp [show (5668704 * k + 4416373) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 13249120) = 8503056 * k + 6624560 := by
    unfold C
    simp [show (17006112 * k + 13249120) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 6624560) = 4251528 * k + 3312280 := by
    unfold C
    simp [show (8503056 * k + 6624560) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 3312280) = 2125764 * k + 1656140 := by
    unfold C
    simp [show (4251528 * k + 3312280) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1656140) = 1062882 * k + 828070 := by
    unfold C
    simp [show (2125764 * k + 1656140) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 828070) = 531441 * k + 414035 := by
    unfold C
    simp [show (1062882 * k + 828070) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 816923) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 816923)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_817183 : ∀ k : Nat,
    iterate (1048576 * k + 817183) 32 = 531441 * k + 414167 ∧
      531441 * k + 414167 < 1048576 * k + 817183 := by
  intro k
  have h1 : C (1048576 * k + 817183) = 3145728 * k + 2451550 := by
    unfold C
    simp [show (1048576 * k + 817183) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2451550) = 1572864 * k + 1225775 := by
    unfold C
    simp [show (3145728 * k + 2451550) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1225775) = 4718592 * k + 3677326 := by
    unfold C
    simp [show (1572864 * k + 1225775) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3677326) = 2359296 * k + 1838663 := by
    unfold C
    simp [show (4718592 * k + 3677326) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1838663) = 7077888 * k + 5515990 := by
    unfold C
    simp [show (2359296 * k + 1838663) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 5515990) = 3538944 * k + 2757995 := by
    unfold C
    simp [show (7077888 * k + 5515990) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2757995) = 10616832 * k + 8273986 := by
    unfold C
    simp [show (3538944 * k + 2757995) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 8273986) = 5308416 * k + 4136993 := by
    unfold C
    simp [show (10616832 * k + 8273986) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 4136993) = 15925248 * k + 12410980 := by
    unfold C
    simp [show (5308416 * k + 4136993) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 12410980) = 7962624 * k + 6205490 := by
    unfold C
    simp [show (15925248 * k + 12410980) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 6205490) = 3981312 * k + 3102745 := by
    unfold C
    simp [show (7962624 * k + 6205490) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 3102745) = 11943936 * k + 9308236 := by
    unfold C
    simp [show (3981312 * k + 3102745) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 9308236) = 5971968 * k + 4654118 := by
    unfold C
    simp [show (11943936 * k + 9308236) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 4654118) = 2985984 * k + 2327059 := by
    unfold C
    simp [show (5971968 * k + 4654118) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 2327059) = 8957952 * k + 6981178 := by
    unfold C
    simp [show (2985984 * k + 2327059) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 6981178) = 4478976 * k + 3490589 := by
    unfold C
    simp [show (8957952 * k + 6981178) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 3490589) = 13436928 * k + 10471768 := by
    unfold C
    simp [show (4478976 * k + 3490589) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 10471768) = 6718464 * k + 5235884 := by
    unfold C
    simp [show (13436928 * k + 10471768) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 5235884) = 3359232 * k + 2617942 := by
    unfold C
    simp [show (6718464 * k + 5235884) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 2617942) = 1679616 * k + 1308971 := by
    unfold C
    simp [show (3359232 * k + 2617942) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 1308971) = 5038848 * k + 3926914 := by
    unfold C
    simp [show (1679616 * k + 1308971) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 3926914) = 2519424 * k + 1963457 := by
    unfold C
    simp [show (5038848 * k + 3926914) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1963457) = 7558272 * k + 5890372 := by
    unfold C
    simp [show (2519424 * k + 1963457) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 5890372) = 3779136 * k + 2945186 := by
    unfold C
    simp [show (7558272 * k + 5890372) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 2945186) = 1889568 * k + 1472593 := by
    unfold C
    simp [show (3779136 * k + 2945186) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1472593) = 5668704 * k + 4417780 := by
    unfold C
    simp [show (1889568 * k + 1472593) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 4417780) = 2834352 * k + 2208890 := by
    unfold C
    simp [show (5668704 * k + 4417780) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2208890) = 1417176 * k + 1104445 := by
    unfold C
    simp [show (2834352 * k + 2208890) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 1104445) = 4251528 * k + 3313336 := by
    unfold C
    simp [show (1417176 * k + 1104445) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 3313336) = 2125764 * k + 1656668 := by
    unfold C
    simp [show (4251528 * k + 3313336) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1656668) = 1062882 * k + 828334 := by
    unfold C
    simp [show (2125764 * k + 1656668) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 828334) = 531441 * k + 414167 := by
    unfold C
    simp [show (1062882 * k + 828334) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 817183) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 817183)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_817479 : ∀ k : Nat,
    iterate (1048576 * k + 817479) 32 = 531441 * k + 414317 ∧
      531441 * k + 414317 < 1048576 * k + 817479 := by
  intro k
  have h1 : C (1048576 * k + 817479) = 3145728 * k + 2452438 := by
    unfold C
    simp [show (1048576 * k + 817479) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2452438) = 1572864 * k + 1226219 := by
    unfold C
    simp [show (3145728 * k + 2452438) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1226219) = 4718592 * k + 3678658 := by
    unfold C
    simp [show (1572864 * k + 1226219) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3678658) = 2359296 * k + 1839329 := by
    unfold C
    simp [show (4718592 * k + 3678658) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1839329) = 7077888 * k + 5517988 := by
    unfold C
    simp [show (2359296 * k + 1839329) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 5517988) = 3538944 * k + 2758994 := by
    unfold C
    simp [show (7077888 * k + 5517988) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2758994) = 1769472 * k + 1379497 := by
    unfold C
    simp [show (3538944 * k + 2758994) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1379497) = 5308416 * k + 4138492 := by
    unfold C
    simp [show (1769472 * k + 1379497) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 4138492) = 2654208 * k + 2069246 := by
    unfold C
    simp [show (5308416 * k + 4138492) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 2069246) = 1327104 * k + 1034623 := by
    unfold C
    simp [show (2654208 * k + 2069246) % 2 = 0 by omega]
    omega
  have h11 : C (1327104 * k + 1034623) = 3981312 * k + 3103870 := by
    unfold C
    simp [show (1327104 * k + 1034623) % 2 ≠ 0 by omega]
    omega
  have h12 : C (3981312 * k + 3103870) = 1990656 * k + 1551935 := by
    unfold C
    simp [show (3981312 * k + 3103870) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 1551935) = 5971968 * k + 4655806 := by
    unfold C
    simp [show (1990656 * k + 1551935) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 4655806) = 2985984 * k + 2327903 := by
    unfold C
    simp [show (5971968 * k + 4655806) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 2327903) = 8957952 * k + 6983710 := by
    unfold C
    simp [show (2985984 * k + 2327903) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 6983710) = 4478976 * k + 3491855 := by
    unfold C
    simp [show (8957952 * k + 6983710) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 3491855) = 13436928 * k + 10475566 := by
    unfold C
    simp [show (4478976 * k + 3491855) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 10475566) = 6718464 * k + 5237783 := by
    unfold C
    simp [show (13436928 * k + 10475566) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 5237783) = 20155392 * k + 15713350 := by
    unfold C
    simp [show (6718464 * k + 5237783) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 15713350) = 10077696 * k + 7856675 := by
    unfold C
    simp [show (20155392 * k + 15713350) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 7856675) = 30233088 * k + 23570026 := by
    unfold C
    simp [show (10077696 * k + 7856675) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 23570026) = 15116544 * k + 11785013 := by
    unfold C
    simp [show (30233088 * k + 23570026) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 11785013) = 45349632 * k + 35355040 := by
    unfold C
    simp [show (15116544 * k + 11785013) % 2 ≠ 0 by omega]
    omega
  have h24 : C (45349632 * k + 35355040) = 22674816 * k + 17677520 := by
    unfold C
    simp [show (45349632 * k + 35355040) % 2 = 0 by omega]
    omega
  have h25 : C (22674816 * k + 17677520) = 11337408 * k + 8838760 := by
    unfold C
    simp [show (22674816 * k + 17677520) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 8838760) = 5668704 * k + 4419380 := by
    unfold C
    simp [show (11337408 * k + 8838760) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 4419380) = 2834352 * k + 2209690 := by
    unfold C
    simp [show (5668704 * k + 4419380) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2209690) = 1417176 * k + 1104845 := by
    unfold C
    simp [show (2834352 * k + 2209690) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 1104845) = 4251528 * k + 3314536 := by
    unfold C
    simp [show (1417176 * k + 1104845) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 3314536) = 2125764 * k + 1657268 := by
    unfold C
    simp [show (4251528 * k + 3314536) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1657268) = 1062882 * k + 828634 := by
    unfold C
    simp [show (2125764 * k + 1657268) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 828634) = 531441 * k + 414317 := by
    unfold C
    simp [show (1062882 * k + 828634) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 817479) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 817479)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_817947 : ∀ k : Nat,
    iterate (1048576 * k + 817947) 32 = 531441 * k + 414554 ∧
      531441 * k + 414554 < 1048576 * k + 817947 := by
  intro k
  have h1 : C (1048576 * k + 817947) = 3145728 * k + 2453842 := by
    unfold C
    simp [show (1048576 * k + 817947) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2453842) = 1572864 * k + 1226921 := by
    unfold C
    simp [show (3145728 * k + 2453842) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1226921) = 4718592 * k + 3680764 := by
    unfold C
    simp [show (1572864 * k + 1226921) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3680764) = 2359296 * k + 1840382 := by
    unfold C
    simp [show (4718592 * k + 3680764) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1840382) = 1179648 * k + 920191 := by
    unfold C
    simp [show (2359296 * k + 1840382) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 920191) = 3538944 * k + 2760574 := by
    unfold C
    simp [show (1179648 * k + 920191) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 2760574) = 1769472 * k + 1380287 := by
    unfold C
    simp [show (3538944 * k + 2760574) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1380287) = 5308416 * k + 4140862 := by
    unfold C
    simp [show (1769472 * k + 1380287) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 4140862) = 2654208 * k + 2070431 := by
    unfold C
    simp [show (5308416 * k + 4140862) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 2070431) = 7962624 * k + 6211294 := by
    unfold C
    simp [show (2654208 * k + 2070431) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 6211294) = 3981312 * k + 3105647 := by
    unfold C
    simp [show (7962624 * k + 6211294) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 3105647) = 11943936 * k + 9316942 := by
    unfold C
    simp [show (3981312 * k + 3105647) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 9316942) = 5971968 * k + 4658471 := by
    unfold C
    simp [show (11943936 * k + 9316942) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 4658471) = 17915904 * k + 13975414 := by
    unfold C
    simp [show (5971968 * k + 4658471) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 13975414) = 8957952 * k + 6987707 := by
    unfold C
    simp [show (17915904 * k + 13975414) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 6987707) = 26873856 * k + 20963122 := by
    unfold C
    simp [show (8957952 * k + 6987707) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 20963122) = 13436928 * k + 10481561 := by
    unfold C
    simp [show (26873856 * k + 20963122) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 10481561) = 40310784 * k + 31444684 := by
    unfold C
    simp [show (13436928 * k + 10481561) % 2 ≠ 0 by omega]
    omega
  have h19 : C (40310784 * k + 31444684) = 20155392 * k + 15722342 := by
    unfold C
    simp [show (40310784 * k + 31444684) % 2 = 0 by omega]
    omega
  have h20 : C (20155392 * k + 15722342) = 10077696 * k + 7861171 := by
    unfold C
    simp [show (20155392 * k + 15722342) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 7861171) = 30233088 * k + 23583514 := by
    unfold C
    simp [show (10077696 * k + 7861171) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 23583514) = 15116544 * k + 11791757 := by
    unfold C
    simp [show (30233088 * k + 23583514) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 11791757) = 45349632 * k + 35375272 := by
    unfold C
    simp [show (15116544 * k + 11791757) % 2 ≠ 0 by omega]
    omega
  have h24 : C (45349632 * k + 35375272) = 22674816 * k + 17687636 := by
    unfold C
    simp [show (45349632 * k + 35375272) % 2 = 0 by omega]
    omega
  have h25 : C (22674816 * k + 17687636) = 11337408 * k + 8843818 := by
    unfold C
    simp [show (22674816 * k + 17687636) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 8843818) = 5668704 * k + 4421909 := by
    unfold C
    simp [show (11337408 * k + 8843818) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 4421909) = 17006112 * k + 13265728 := by
    unfold C
    simp [show (5668704 * k + 4421909) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 13265728) = 8503056 * k + 6632864 := by
    unfold C
    simp [show (17006112 * k + 13265728) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 6632864) = 4251528 * k + 3316432 := by
    unfold C
    simp [show (8503056 * k + 6632864) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 3316432) = 2125764 * k + 1658216 := by
    unfold C
    simp [show (4251528 * k + 3316432) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1658216) = 1062882 * k + 829108 := by
    unfold C
    simp [show (2125764 * k + 1658216) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 829108) = 531441 * k + 414554 := by
    unfold C
    simp [show (1062882 * k + 829108) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 817947) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 817947)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_818791 : ∀ k : Nat,
    iterate (1048576 * k + 818791) 32 = 531441 * k + 414982 ∧
      531441 * k + 414982 < 1048576 * k + 818791 := by
  intro k
  have h1 : C (1048576 * k + 818791) = 3145728 * k + 2456374 := by
    unfold C
    simp [show (1048576 * k + 818791) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2456374) = 1572864 * k + 1228187 := by
    unfold C
    simp [show (3145728 * k + 2456374) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1228187) = 4718592 * k + 3684562 := by
    unfold C
    simp [show (1572864 * k + 1228187) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3684562) = 2359296 * k + 1842281 := by
    unfold C
    simp [show (4718592 * k + 3684562) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1842281) = 7077888 * k + 5526844 := by
    unfold C
    simp [show (2359296 * k + 1842281) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 5526844) = 3538944 * k + 2763422 := by
    unfold C
    simp [show (7077888 * k + 5526844) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2763422) = 1769472 * k + 1381711 := by
    unfold C
    simp [show (3538944 * k + 2763422) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1381711) = 5308416 * k + 4145134 := by
    unfold C
    simp [show (1769472 * k + 1381711) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 4145134) = 2654208 * k + 2072567 := by
    unfold C
    simp [show (5308416 * k + 4145134) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 2072567) = 7962624 * k + 6217702 := by
    unfold C
    simp [show (2654208 * k + 2072567) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 6217702) = 3981312 * k + 3108851 := by
    unfold C
    simp [show (7962624 * k + 6217702) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 3108851) = 11943936 * k + 9326554 := by
    unfold C
    simp [show (3981312 * k + 3108851) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 9326554) = 5971968 * k + 4663277 := by
    unfold C
    simp [show (11943936 * k + 9326554) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 4663277) = 17915904 * k + 13989832 := by
    unfold C
    simp [show (5971968 * k + 4663277) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 13989832) = 8957952 * k + 6994916 := by
    unfold C
    simp [show (17915904 * k + 13989832) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 6994916) = 4478976 * k + 3497458 := by
    unfold C
    simp [show (8957952 * k + 6994916) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 3497458) = 2239488 * k + 1748729 := by
    unfold C
    simp [show (4478976 * k + 3497458) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 1748729) = 6718464 * k + 5246188 := by
    unfold C
    simp [show (2239488 * k + 1748729) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 5246188) = 3359232 * k + 2623094 := by
    unfold C
    simp [show (6718464 * k + 5246188) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 2623094) = 1679616 * k + 1311547 := by
    unfold C
    simp [show (3359232 * k + 2623094) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 1311547) = 5038848 * k + 3934642 := by
    unfold C
    simp [show (1679616 * k + 1311547) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 3934642) = 2519424 * k + 1967321 := by
    unfold C
    simp [show (5038848 * k + 3934642) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1967321) = 7558272 * k + 5901964 := by
    unfold C
    simp [show (2519424 * k + 1967321) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 5901964) = 3779136 * k + 2950982 := by
    unfold C
    simp [show (7558272 * k + 5901964) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 2950982) = 1889568 * k + 1475491 := by
    unfold C
    simp [show (3779136 * k + 2950982) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1475491) = 5668704 * k + 4426474 := by
    unfold C
    simp [show (1889568 * k + 1475491) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 4426474) = 2834352 * k + 2213237 := by
    unfold C
    simp [show (5668704 * k + 4426474) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2213237) = 8503056 * k + 6639712 := by
    unfold C
    simp [show (2834352 * k + 2213237) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 6639712) = 4251528 * k + 3319856 := by
    unfold C
    simp [show (8503056 * k + 6639712) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 3319856) = 2125764 * k + 1659928 := by
    unfold C
    simp [show (4251528 * k + 3319856) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1659928) = 1062882 * k + 829964 := by
    unfold C
    simp [show (2125764 * k + 1659928) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 829964) = 531441 * k + 414982 := by
    unfold C
    simp [show (1062882 * k + 829964) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 818791) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 818791)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_819247 : ∀ k : Nat,
    iterate (1048576 * k + 819247) 32 = 531441 * k + 415213 ∧
      531441 * k + 415213 < 1048576 * k + 819247 := by
  intro k
  have h1 : C (1048576 * k + 819247) = 3145728 * k + 2457742 := by
    unfold C
    simp [show (1048576 * k + 819247) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2457742) = 1572864 * k + 1228871 := by
    unfold C
    simp [show (3145728 * k + 2457742) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1228871) = 4718592 * k + 3686614 := by
    unfold C
    simp [show (1572864 * k + 1228871) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3686614) = 2359296 * k + 1843307 := by
    unfold C
    simp [show (4718592 * k + 3686614) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1843307) = 7077888 * k + 5529922 := by
    unfold C
    simp [show (2359296 * k + 1843307) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 5529922) = 3538944 * k + 2764961 := by
    unfold C
    simp [show (7077888 * k + 5529922) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2764961) = 10616832 * k + 8294884 := by
    unfold C
    simp [show (3538944 * k + 2764961) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 8294884) = 5308416 * k + 4147442 := by
    unfold C
    simp [show (10616832 * k + 8294884) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 4147442) = 2654208 * k + 2073721 := by
    unfold C
    simp [show (5308416 * k + 4147442) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 2073721) = 7962624 * k + 6221164 := by
    unfold C
    simp [show (2654208 * k + 2073721) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 6221164) = 3981312 * k + 3110582 := by
    unfold C
    simp [show (7962624 * k + 6221164) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 3110582) = 1990656 * k + 1555291 := by
    unfold C
    simp [show (3981312 * k + 3110582) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 1555291) = 5971968 * k + 4665874 := by
    unfold C
    simp [show (1990656 * k + 1555291) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 4665874) = 2985984 * k + 2332937 := by
    unfold C
    simp [show (5971968 * k + 4665874) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 2332937) = 8957952 * k + 6998812 := by
    unfold C
    simp [show (2985984 * k + 2332937) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 6998812) = 4478976 * k + 3499406 := by
    unfold C
    simp [show (8957952 * k + 6998812) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 3499406) = 2239488 * k + 1749703 := by
    unfold C
    simp [show (4478976 * k + 3499406) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 1749703) = 6718464 * k + 5249110 := by
    unfold C
    simp [show (2239488 * k + 1749703) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 5249110) = 3359232 * k + 2624555 := by
    unfold C
    simp [show (6718464 * k + 5249110) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 2624555) = 10077696 * k + 7873666 := by
    unfold C
    simp [show (3359232 * k + 2624555) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 7873666) = 5038848 * k + 3936833 := by
    unfold C
    simp [show (10077696 * k + 7873666) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 3936833) = 15116544 * k + 11810500 := by
    unfold C
    simp [show (5038848 * k + 3936833) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 11810500) = 7558272 * k + 5905250 := by
    unfold C
    simp [show (15116544 * k + 11810500) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 5905250) = 3779136 * k + 2952625 := by
    unfold C
    simp [show (7558272 * k + 5905250) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 2952625) = 11337408 * k + 8857876 := by
    unfold C
    simp [show (3779136 * k + 2952625) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 8857876) = 5668704 * k + 4428938 := by
    unfold C
    simp [show (11337408 * k + 8857876) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 4428938) = 2834352 * k + 2214469 := by
    unfold C
    simp [show (5668704 * k + 4428938) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2214469) = 8503056 * k + 6643408 := by
    unfold C
    simp [show (2834352 * k + 2214469) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 6643408) = 4251528 * k + 3321704 := by
    unfold C
    simp [show (8503056 * k + 6643408) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 3321704) = 2125764 * k + 1660852 := by
    unfold C
    simp [show (4251528 * k + 3321704) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1660852) = 1062882 * k + 830426 := by
    unfold C
    simp [show (2125764 * k + 1660852) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 830426) = 531441 * k + 415213 := by
    unfold C
    simp [show (1062882 * k + 830426) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 819247) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 819247)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_819527 : ∀ k : Nat,
    iterate (1048576 * k + 819527) 32 = 531441 * k + 415355 ∧
      531441 * k + 415355 < 1048576 * k + 819527 := by
  intro k
  have h1 : C (1048576 * k + 819527) = 3145728 * k + 2458582 := by
    unfold C
    simp [show (1048576 * k + 819527) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2458582) = 1572864 * k + 1229291 := by
    unfold C
    simp [show (3145728 * k + 2458582) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1229291) = 4718592 * k + 3687874 := by
    unfold C
    simp [show (1572864 * k + 1229291) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3687874) = 2359296 * k + 1843937 := by
    unfold C
    simp [show (4718592 * k + 3687874) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1843937) = 7077888 * k + 5531812 := by
    unfold C
    simp [show (2359296 * k + 1843937) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 5531812) = 3538944 * k + 2765906 := by
    unfold C
    simp [show (7077888 * k + 5531812) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2765906) = 1769472 * k + 1382953 := by
    unfold C
    simp [show (3538944 * k + 2765906) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1382953) = 5308416 * k + 4148860 := by
    unfold C
    simp [show (1769472 * k + 1382953) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 4148860) = 2654208 * k + 2074430 := by
    unfold C
    simp [show (5308416 * k + 4148860) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 2074430) = 1327104 * k + 1037215 := by
    unfold C
    simp [show (2654208 * k + 2074430) % 2 = 0 by omega]
    omega
  have h11 : C (1327104 * k + 1037215) = 3981312 * k + 3111646 := by
    unfold C
    simp [show (1327104 * k + 1037215) % 2 ≠ 0 by omega]
    omega
  have h12 : C (3981312 * k + 3111646) = 1990656 * k + 1555823 := by
    unfold C
    simp [show (3981312 * k + 3111646) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 1555823) = 5971968 * k + 4667470 := by
    unfold C
    simp [show (1990656 * k + 1555823) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 4667470) = 2985984 * k + 2333735 := by
    unfold C
    simp [show (5971968 * k + 4667470) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 2333735) = 8957952 * k + 7001206 := by
    unfold C
    simp [show (2985984 * k + 2333735) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 7001206) = 4478976 * k + 3500603 := by
    unfold C
    simp [show (8957952 * k + 7001206) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 3500603) = 13436928 * k + 10501810 := by
    unfold C
    simp [show (4478976 * k + 3500603) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 10501810) = 6718464 * k + 5250905 := by
    unfold C
    simp [show (13436928 * k + 10501810) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 5250905) = 20155392 * k + 15752716 := by
    unfold C
    simp [show (6718464 * k + 5250905) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 15752716) = 10077696 * k + 7876358 := by
    unfold C
    simp [show (20155392 * k + 15752716) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 7876358) = 5038848 * k + 3938179 := by
    unfold C
    simp [show (10077696 * k + 7876358) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 3938179) = 15116544 * k + 11814538 := by
    unfold C
    simp [show (5038848 * k + 3938179) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 11814538) = 7558272 * k + 5907269 := by
    unfold C
    simp [show (15116544 * k + 11814538) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 5907269) = 22674816 * k + 17721808 := by
    unfold C
    simp [show (7558272 * k + 5907269) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 17721808) = 11337408 * k + 8860904 := by
    unfold C
    simp [show (22674816 * k + 17721808) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 8860904) = 5668704 * k + 4430452 := by
    unfold C
    simp [show (11337408 * k + 8860904) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 4430452) = 2834352 * k + 2215226 := by
    unfold C
    simp [show (5668704 * k + 4430452) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2215226) = 1417176 * k + 1107613 := by
    unfold C
    simp [show (2834352 * k + 2215226) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 1107613) = 4251528 * k + 3322840 := by
    unfold C
    simp [show (1417176 * k + 1107613) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 3322840) = 2125764 * k + 1661420 := by
    unfold C
    simp [show (4251528 * k + 3322840) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1661420) = 1062882 * k + 830710 := by
    unfold C
    simp [show (2125764 * k + 1661420) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 830710) = 531441 * k + 415355 := by
    unfold C
    simp [show (1062882 * k + 830710) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 819527) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 819527)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_819679 : ∀ k : Nat,
    iterate (1048576 * k + 819679) 32 = 531441 * k + 415432 ∧
      531441 * k + 415432 < 1048576 * k + 819679 := by
  intro k
  have h1 : C (1048576 * k + 819679) = 3145728 * k + 2459038 := by
    unfold C
    simp [show (1048576 * k + 819679) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2459038) = 1572864 * k + 1229519 := by
    unfold C
    simp [show (3145728 * k + 2459038) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1229519) = 4718592 * k + 3688558 := by
    unfold C
    simp [show (1572864 * k + 1229519) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3688558) = 2359296 * k + 1844279 := by
    unfold C
    simp [show (4718592 * k + 3688558) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1844279) = 7077888 * k + 5532838 := by
    unfold C
    simp [show (2359296 * k + 1844279) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 5532838) = 3538944 * k + 2766419 := by
    unfold C
    simp [show (7077888 * k + 5532838) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2766419) = 10616832 * k + 8299258 := by
    unfold C
    simp [show (3538944 * k + 2766419) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 8299258) = 5308416 * k + 4149629 := by
    unfold C
    simp [show (10616832 * k + 8299258) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 4149629) = 15925248 * k + 12448888 := by
    unfold C
    simp [show (5308416 * k + 4149629) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 12448888) = 7962624 * k + 6224444 := by
    unfold C
    simp [show (15925248 * k + 12448888) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 6224444) = 3981312 * k + 3112222 := by
    unfold C
    simp [show (7962624 * k + 6224444) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 3112222) = 1990656 * k + 1556111 := by
    unfold C
    simp [show (3981312 * k + 3112222) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 1556111) = 5971968 * k + 4668334 := by
    unfold C
    simp [show (1990656 * k + 1556111) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 4668334) = 2985984 * k + 2334167 := by
    unfold C
    simp [show (5971968 * k + 4668334) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 2334167) = 8957952 * k + 7002502 := by
    unfold C
    simp [show (2985984 * k + 2334167) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 7002502) = 4478976 * k + 3501251 := by
    unfold C
    simp [show (8957952 * k + 7002502) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 3501251) = 13436928 * k + 10503754 := by
    unfold C
    simp [show (4478976 * k + 3501251) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 10503754) = 6718464 * k + 5251877 := by
    unfold C
    simp [show (13436928 * k + 10503754) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 5251877) = 20155392 * k + 15755632 := by
    unfold C
    simp [show (6718464 * k + 5251877) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 15755632) = 10077696 * k + 7877816 := by
    unfold C
    simp [show (20155392 * k + 15755632) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 7877816) = 5038848 * k + 3938908 := by
    unfold C
    simp [show (10077696 * k + 7877816) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 3938908) = 2519424 * k + 1969454 := by
    unfold C
    simp [show (5038848 * k + 3938908) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1969454) = 1259712 * k + 984727 := by
    unfold C
    simp [show (2519424 * k + 1969454) % 2 = 0 by omega]
    omega
  have h24 : C (1259712 * k + 984727) = 3779136 * k + 2954182 := by
    unfold C
    simp [show (1259712 * k + 984727) % 2 ≠ 0 by omega]
    omega
  have h25 : C (3779136 * k + 2954182) = 1889568 * k + 1477091 := by
    unfold C
    simp [show (3779136 * k + 2954182) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1477091) = 5668704 * k + 4431274 := by
    unfold C
    simp [show (1889568 * k + 1477091) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 4431274) = 2834352 * k + 2215637 := by
    unfold C
    simp [show (5668704 * k + 4431274) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2215637) = 8503056 * k + 6646912 := by
    unfold C
    simp [show (2834352 * k + 2215637) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 6646912) = 4251528 * k + 3323456 := by
    unfold C
    simp [show (8503056 * k + 6646912) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 3323456) = 2125764 * k + 1661728 := by
    unfold C
    simp [show (4251528 * k + 3323456) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1661728) = 1062882 * k + 830864 := by
    unfold C
    simp [show (2125764 * k + 1661728) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 830864) = 531441 * k + 415432 := by
    unfold C
    simp [show (1062882 * k + 830864) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 819679) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 819679)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_819803 : ∀ k : Nat,
    iterate (1048576 * k + 819803) 32 = 531441 * k + 415495 ∧
      531441 * k + 415495 < 1048576 * k + 819803 := by
  intro k
  have h1 : C (1048576 * k + 819803) = 3145728 * k + 2459410 := by
    unfold C
    simp [show (1048576 * k + 819803) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2459410) = 1572864 * k + 1229705 := by
    unfold C
    simp [show (3145728 * k + 2459410) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1229705) = 4718592 * k + 3689116 := by
    unfold C
    simp [show (1572864 * k + 1229705) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3689116) = 2359296 * k + 1844558 := by
    unfold C
    simp [show (4718592 * k + 3689116) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1844558) = 1179648 * k + 922279 := by
    unfold C
    simp [show (2359296 * k + 1844558) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 922279) = 3538944 * k + 2766838 := by
    unfold C
    simp [show (1179648 * k + 922279) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 2766838) = 1769472 * k + 1383419 := by
    unfold C
    simp [show (3538944 * k + 2766838) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1383419) = 5308416 * k + 4150258 := by
    unfold C
    simp [show (1769472 * k + 1383419) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 4150258) = 2654208 * k + 2075129 := by
    unfold C
    simp [show (5308416 * k + 4150258) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 2075129) = 7962624 * k + 6225388 := by
    unfold C
    simp [show (2654208 * k + 2075129) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 6225388) = 3981312 * k + 3112694 := by
    unfold C
    simp [show (7962624 * k + 6225388) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 3112694) = 1990656 * k + 1556347 := by
    unfold C
    simp [show (3981312 * k + 3112694) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 1556347) = 5971968 * k + 4669042 := by
    unfold C
    simp [show (1990656 * k + 1556347) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 4669042) = 2985984 * k + 2334521 := by
    unfold C
    simp [show (5971968 * k + 4669042) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 2334521) = 8957952 * k + 7003564 := by
    unfold C
    simp [show (2985984 * k + 2334521) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 7003564) = 4478976 * k + 3501782 := by
    unfold C
    simp [show (8957952 * k + 7003564) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 3501782) = 2239488 * k + 1750891 := by
    unfold C
    simp [show (4478976 * k + 3501782) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 1750891) = 6718464 * k + 5252674 := by
    unfold C
    simp [show (2239488 * k + 1750891) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 5252674) = 3359232 * k + 2626337 := by
    unfold C
    simp [show (6718464 * k + 5252674) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 2626337) = 10077696 * k + 7879012 := by
    unfold C
    simp [show (3359232 * k + 2626337) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 7879012) = 5038848 * k + 3939506 := by
    unfold C
    simp [show (10077696 * k + 7879012) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 3939506) = 2519424 * k + 1969753 := by
    unfold C
    simp [show (5038848 * k + 3939506) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1969753) = 7558272 * k + 5909260 := by
    unfold C
    simp [show (2519424 * k + 1969753) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 5909260) = 3779136 * k + 2954630 := by
    unfold C
    simp [show (7558272 * k + 5909260) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 2954630) = 1889568 * k + 1477315 := by
    unfold C
    simp [show (3779136 * k + 2954630) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1477315) = 5668704 * k + 4431946 := by
    unfold C
    simp [show (1889568 * k + 1477315) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 4431946) = 2834352 * k + 2215973 := by
    unfold C
    simp [show (5668704 * k + 4431946) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2215973) = 8503056 * k + 6647920 := by
    unfold C
    simp [show (2834352 * k + 2215973) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 6647920) = 4251528 * k + 3323960 := by
    unfold C
    simp [show (8503056 * k + 6647920) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 3323960) = 2125764 * k + 1661980 := by
    unfold C
    simp [show (4251528 * k + 3323960) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1661980) = 1062882 * k + 830990 := by
    unfold C
    simp [show (2125764 * k + 1661980) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 830990) = 531441 * k + 415495 := by
    unfold C
    simp [show (1062882 * k + 830990) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 819803) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 819803)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_819995 : ∀ k : Nat,
    iterate (1048576 * k + 819995) 32 = 531441 * k + 415592 ∧
      531441 * k + 415592 < 1048576 * k + 819995 := by
  intro k
  have h1 : C (1048576 * k + 819995) = 3145728 * k + 2459986 := by
    unfold C
    simp [show (1048576 * k + 819995) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2459986) = 1572864 * k + 1229993 := by
    unfold C
    simp [show (3145728 * k + 2459986) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1229993) = 4718592 * k + 3689980 := by
    unfold C
    simp [show (1572864 * k + 1229993) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3689980) = 2359296 * k + 1844990 := by
    unfold C
    simp [show (4718592 * k + 3689980) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1844990) = 1179648 * k + 922495 := by
    unfold C
    simp [show (2359296 * k + 1844990) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 922495) = 3538944 * k + 2767486 := by
    unfold C
    simp [show (1179648 * k + 922495) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 2767486) = 1769472 * k + 1383743 := by
    unfold C
    simp [show (3538944 * k + 2767486) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1383743) = 5308416 * k + 4151230 := by
    unfold C
    simp [show (1769472 * k + 1383743) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 4151230) = 2654208 * k + 2075615 := by
    unfold C
    simp [show (5308416 * k + 4151230) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 2075615) = 7962624 * k + 6226846 := by
    unfold C
    simp [show (2654208 * k + 2075615) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 6226846) = 3981312 * k + 3113423 := by
    unfold C
    simp [show (7962624 * k + 6226846) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 3113423) = 11943936 * k + 9340270 := by
    unfold C
    simp [show (3981312 * k + 3113423) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 9340270) = 5971968 * k + 4670135 := by
    unfold C
    simp [show (11943936 * k + 9340270) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 4670135) = 17915904 * k + 14010406 := by
    unfold C
    simp [show (5971968 * k + 4670135) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 14010406) = 8957952 * k + 7005203 := by
    unfold C
    simp [show (17915904 * k + 14010406) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 7005203) = 26873856 * k + 21015610 := by
    unfold C
    simp [show (8957952 * k + 7005203) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 21015610) = 13436928 * k + 10507805 := by
    unfold C
    simp [show (26873856 * k + 21015610) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 10507805) = 40310784 * k + 31523416 := by
    unfold C
    simp [show (13436928 * k + 10507805) % 2 ≠ 0 by omega]
    omega
  have h19 : C (40310784 * k + 31523416) = 20155392 * k + 15761708 := by
    unfold C
    simp [show (40310784 * k + 31523416) % 2 = 0 by omega]
    omega
  have h20 : C (20155392 * k + 15761708) = 10077696 * k + 7880854 := by
    unfold C
    simp [show (20155392 * k + 15761708) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 7880854) = 5038848 * k + 3940427 := by
    unfold C
    simp [show (10077696 * k + 7880854) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 3940427) = 15116544 * k + 11821282 := by
    unfold C
    simp [show (5038848 * k + 3940427) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 11821282) = 7558272 * k + 5910641 := by
    unfold C
    simp [show (15116544 * k + 11821282) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 5910641) = 22674816 * k + 17731924 := by
    unfold C
    simp [show (7558272 * k + 5910641) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 17731924) = 11337408 * k + 8865962 := by
    unfold C
    simp [show (22674816 * k + 17731924) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 8865962) = 5668704 * k + 4432981 := by
    unfold C
    simp [show (11337408 * k + 8865962) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 4432981) = 17006112 * k + 13298944 := by
    unfold C
    simp [show (5668704 * k + 4432981) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 13298944) = 8503056 * k + 6649472 := by
    unfold C
    simp [show (17006112 * k + 13298944) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 6649472) = 4251528 * k + 3324736 := by
    unfold C
    simp [show (8503056 * k + 6649472) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 3324736) = 2125764 * k + 1662368 := by
    unfold C
    simp [show (4251528 * k + 3324736) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1662368) = 1062882 * k + 831184 := by
    unfold C
    simp [show (2125764 * k + 1662368) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 831184) = 531441 * k + 415592 := by
    unfold C
    simp [show (1062882 * k + 831184) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 819995) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 819995)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

end CollatzM20Shard104
