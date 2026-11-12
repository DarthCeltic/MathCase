import Mathlib.Data.Nat.Prime.Basic

namespace CollatzM20Shard052

def C (n : Nat) : Nat := if n % 2 = 0 then n / 2 else 3 * n + 1

def iterate (n t : Nat) : Nat := Nat.rec n (fun _ previous => C previous) t

theorem descent_mod1048576_408315 : ∀ k : Nat,
    iterate (1048576 * k + 408315) 32 = 531441 * k + 206944 ∧
      531441 * k + 206944 < 1048576 * k + 408315 := by
  intro k
  have h1 : C (1048576 * k + 408315) = 3145728 * k + 1224946 := by
    unfold C
    simp [show (1048576 * k + 408315) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1224946) = 1572864 * k + 612473 := by
    unfold C
    simp [show (3145728 * k + 1224946) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 612473) = 4718592 * k + 1837420 := by
    unfold C
    simp [show (1572864 * k + 612473) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1837420) = 2359296 * k + 918710 := by
    unfold C
    simp [show (4718592 * k + 1837420) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 918710) = 1179648 * k + 459355 := by
    unfold C
    simp [show (2359296 * k + 918710) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 459355) = 3538944 * k + 1378066 := by
    unfold C
    simp [show (1179648 * k + 459355) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 1378066) = 1769472 * k + 689033 := by
    unfold C
    simp [show (3538944 * k + 1378066) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 689033) = 5308416 * k + 2067100 := by
    unfold C
    simp [show (1769472 * k + 689033) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 2067100) = 2654208 * k + 1033550 := by
    unfold C
    simp [show (5308416 * k + 2067100) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1033550) = 1327104 * k + 516775 := by
    unfold C
    simp [show (2654208 * k + 1033550) % 2 = 0 by omega]
    omega
  have h11 : C (1327104 * k + 516775) = 3981312 * k + 1550326 := by
    unfold C
    simp [show (1327104 * k + 516775) % 2 ≠ 0 by omega]
    omega
  have h12 : C (3981312 * k + 1550326) = 1990656 * k + 775163 := by
    unfold C
    simp [show (3981312 * k + 1550326) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 775163) = 5971968 * k + 2325490 := by
    unfold C
    simp [show (1990656 * k + 775163) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 2325490) = 2985984 * k + 1162745 := by
    unfold C
    simp [show (5971968 * k + 2325490) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1162745) = 8957952 * k + 3488236 := by
    unfold C
    simp [show (2985984 * k + 1162745) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 3488236) = 4478976 * k + 1744118 := by
    unfold C
    simp [show (8957952 * k + 3488236) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 1744118) = 2239488 * k + 872059 := by
    unfold C
    simp [show (4478976 * k + 1744118) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 872059) = 6718464 * k + 2616178 := by
    unfold C
    simp [show (2239488 * k + 872059) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 2616178) = 3359232 * k + 1308089 := by
    unfold C
    simp [show (6718464 * k + 2616178) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 1308089) = 10077696 * k + 3924268 := by
    unfold C
    simp [show (3359232 * k + 1308089) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 3924268) = 5038848 * k + 1962134 := by
    unfold C
    simp [show (10077696 * k + 3924268) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 1962134) = 2519424 * k + 981067 := by
    unfold C
    simp [show (5038848 * k + 1962134) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 981067) = 7558272 * k + 2943202 := by
    unfold C
    simp [show (2519424 * k + 981067) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 2943202) = 3779136 * k + 1471601 := by
    unfold C
    simp [show (7558272 * k + 2943202) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 1471601) = 11337408 * k + 4414804 := by
    unfold C
    simp [show (3779136 * k + 1471601) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 4414804) = 5668704 * k + 2207402 := by
    unfold C
    simp [show (11337408 * k + 4414804) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 2207402) = 2834352 * k + 1103701 := by
    unfold C
    simp [show (5668704 * k + 2207402) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1103701) = 8503056 * k + 3311104 := by
    unfold C
    simp [show (2834352 * k + 1103701) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 3311104) = 4251528 * k + 1655552 := by
    unfold C
    simp [show (8503056 * k + 3311104) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 1655552) = 2125764 * k + 827776 := by
    unfold C
    simp [show (4251528 * k + 1655552) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 827776) = 1062882 * k + 413888 := by
    unfold C
    simp [show (2125764 * k + 827776) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 413888) = 531441 * k + 206944 := by
    unfold C
    simp [show (1062882 * k + 413888) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 408315) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 408315)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_408351 : ∀ k : Nat,
    iterate (1048576 * k + 408351) 32 = 531441 * k + 206962 ∧
      531441 * k + 206962 < 1048576 * k + 408351 := by
  intro k
  have h1 : C (1048576 * k + 408351) = 3145728 * k + 1225054 := by
    unfold C
    simp [show (1048576 * k + 408351) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1225054) = 1572864 * k + 612527 := by
    unfold C
    simp [show (3145728 * k + 1225054) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 612527) = 4718592 * k + 1837582 := by
    unfold C
    simp [show (1572864 * k + 612527) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1837582) = 2359296 * k + 918791 := by
    unfold C
    simp [show (4718592 * k + 1837582) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 918791) = 7077888 * k + 2756374 := by
    unfold C
    simp [show (2359296 * k + 918791) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 2756374) = 3538944 * k + 1378187 := by
    unfold C
    simp [show (7077888 * k + 2756374) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1378187) = 10616832 * k + 4134562 := by
    unfold C
    simp [show (3538944 * k + 1378187) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 4134562) = 5308416 * k + 2067281 := by
    unfold C
    simp [show (10616832 * k + 4134562) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 2067281) = 15925248 * k + 6201844 := by
    unfold C
    simp [show (5308416 * k + 2067281) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 6201844) = 7962624 * k + 3100922 := by
    unfold C
    simp [show (15925248 * k + 6201844) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 3100922) = 3981312 * k + 1550461 := by
    unfold C
    simp [show (7962624 * k + 3100922) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 1550461) = 11943936 * k + 4651384 := by
    unfold C
    simp [show (3981312 * k + 1550461) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 4651384) = 5971968 * k + 2325692 := by
    unfold C
    simp [show (11943936 * k + 4651384) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 2325692) = 2985984 * k + 1162846 := by
    unfold C
    simp [show (5971968 * k + 2325692) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1162846) = 1492992 * k + 581423 := by
    unfold C
    simp [show (2985984 * k + 1162846) % 2 = 0 by omega]
    omega
  have h16 : C (1492992 * k + 581423) = 4478976 * k + 1744270 := by
    unfold C
    simp [show (1492992 * k + 581423) % 2 ≠ 0 by omega]
    omega
  have h17 : C (4478976 * k + 1744270) = 2239488 * k + 872135 := by
    unfold C
    simp [show (4478976 * k + 1744270) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 872135) = 6718464 * k + 2616406 := by
    unfold C
    simp [show (2239488 * k + 872135) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 2616406) = 3359232 * k + 1308203 := by
    unfold C
    simp [show (6718464 * k + 2616406) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 1308203) = 10077696 * k + 3924610 := by
    unfold C
    simp [show (3359232 * k + 1308203) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 3924610) = 5038848 * k + 1962305 := by
    unfold C
    simp [show (10077696 * k + 3924610) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 1962305) = 15116544 * k + 5886916 := by
    unfold C
    simp [show (5038848 * k + 1962305) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 5886916) = 7558272 * k + 2943458 := by
    unfold C
    simp [show (15116544 * k + 5886916) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 2943458) = 3779136 * k + 1471729 := by
    unfold C
    simp [show (7558272 * k + 2943458) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 1471729) = 11337408 * k + 4415188 := by
    unfold C
    simp [show (3779136 * k + 1471729) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 4415188) = 5668704 * k + 2207594 := by
    unfold C
    simp [show (11337408 * k + 4415188) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 2207594) = 2834352 * k + 1103797 := by
    unfold C
    simp [show (5668704 * k + 2207594) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1103797) = 8503056 * k + 3311392 := by
    unfold C
    simp [show (2834352 * k + 1103797) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 3311392) = 4251528 * k + 1655696 := by
    unfold C
    simp [show (8503056 * k + 3311392) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 1655696) = 2125764 * k + 827848 := by
    unfold C
    simp [show (4251528 * k + 1655696) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 827848) = 1062882 * k + 413924 := by
    unfold C
    simp [show (2125764 * k + 827848) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 413924) = 531441 * k + 206962 := by
    unfold C
    simp [show (1062882 * k + 413924) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 408351) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 408351)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_408571 : ∀ k : Nat,
    iterate (1048576 * k + 408571) 32 = 531441 * k + 207074 ∧
      531441 * k + 207074 < 1048576 * k + 408571 := by
  intro k
  have h1 : C (1048576 * k + 408571) = 3145728 * k + 1225714 := by
    unfold C
    simp [show (1048576 * k + 408571) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1225714) = 1572864 * k + 612857 := by
    unfold C
    simp [show (3145728 * k + 1225714) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 612857) = 4718592 * k + 1838572 := by
    unfold C
    simp [show (1572864 * k + 612857) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1838572) = 2359296 * k + 919286 := by
    unfold C
    simp [show (4718592 * k + 1838572) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 919286) = 1179648 * k + 459643 := by
    unfold C
    simp [show (2359296 * k + 919286) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 459643) = 3538944 * k + 1378930 := by
    unfold C
    simp [show (1179648 * k + 459643) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 1378930) = 1769472 * k + 689465 := by
    unfold C
    simp [show (3538944 * k + 1378930) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 689465) = 5308416 * k + 2068396 := by
    unfold C
    simp [show (1769472 * k + 689465) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 2068396) = 2654208 * k + 1034198 := by
    unfold C
    simp [show (5308416 * k + 2068396) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1034198) = 1327104 * k + 517099 := by
    unfold C
    simp [show (2654208 * k + 1034198) % 2 = 0 by omega]
    omega
  have h11 : C (1327104 * k + 517099) = 3981312 * k + 1551298 := by
    unfold C
    simp [show (1327104 * k + 517099) % 2 ≠ 0 by omega]
    omega
  have h12 : C (3981312 * k + 1551298) = 1990656 * k + 775649 := by
    unfold C
    simp [show (3981312 * k + 1551298) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 775649) = 5971968 * k + 2326948 := by
    unfold C
    simp [show (1990656 * k + 775649) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 2326948) = 2985984 * k + 1163474 := by
    unfold C
    simp [show (5971968 * k + 2326948) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1163474) = 1492992 * k + 581737 := by
    unfold C
    simp [show (2985984 * k + 1163474) % 2 = 0 by omega]
    omega
  have h16 : C (1492992 * k + 581737) = 4478976 * k + 1745212 := by
    unfold C
    simp [show (1492992 * k + 581737) % 2 ≠ 0 by omega]
    omega
  have h17 : C (4478976 * k + 1745212) = 2239488 * k + 872606 := by
    unfold C
    simp [show (4478976 * k + 1745212) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 872606) = 1119744 * k + 436303 := by
    unfold C
    simp [show (2239488 * k + 872606) % 2 = 0 by omega]
    omega
  have h19 : C (1119744 * k + 436303) = 3359232 * k + 1308910 := by
    unfold C
    simp [show (1119744 * k + 436303) % 2 ≠ 0 by omega]
    omega
  have h20 : C (3359232 * k + 1308910) = 1679616 * k + 654455 := by
    unfold C
    simp [show (3359232 * k + 1308910) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 654455) = 5038848 * k + 1963366 := by
    unfold C
    simp [show (1679616 * k + 654455) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 1963366) = 2519424 * k + 981683 := by
    unfold C
    simp [show (5038848 * k + 1963366) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 981683) = 7558272 * k + 2945050 := by
    unfold C
    simp [show (2519424 * k + 981683) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 2945050) = 3779136 * k + 1472525 := by
    unfold C
    simp [show (7558272 * k + 2945050) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 1472525) = 11337408 * k + 4417576 := by
    unfold C
    simp [show (3779136 * k + 1472525) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 4417576) = 5668704 * k + 2208788 := by
    unfold C
    simp [show (11337408 * k + 4417576) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 2208788) = 2834352 * k + 1104394 := by
    unfold C
    simp [show (5668704 * k + 2208788) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1104394) = 1417176 * k + 552197 := by
    unfold C
    simp [show (2834352 * k + 1104394) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 552197) = 4251528 * k + 1656592 := by
    unfold C
    simp [show (1417176 * k + 552197) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 1656592) = 2125764 * k + 828296 := by
    unfold C
    simp [show (4251528 * k + 1656592) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 828296) = 1062882 * k + 414148 := by
    unfold C
    simp [show (2125764 * k + 828296) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 414148) = 531441 * k + 207074 := by
    unfold C
    simp [show (1062882 * k + 414148) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 408571) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 408571)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_408831 : ∀ k : Nat,
    iterate (1048576 * k + 408831) 32 = 531441 * k + 207205 ∧
      531441 * k + 207205 < 1048576 * k + 408831 := by
  intro k
  have h1 : C (1048576 * k + 408831) = 3145728 * k + 1226494 := by
    unfold C
    simp [show (1048576 * k + 408831) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1226494) = 1572864 * k + 613247 := by
    unfold C
    simp [show (3145728 * k + 1226494) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 613247) = 4718592 * k + 1839742 := by
    unfold C
    simp [show (1572864 * k + 613247) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1839742) = 2359296 * k + 919871 := by
    unfold C
    simp [show (4718592 * k + 1839742) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 919871) = 7077888 * k + 2759614 := by
    unfold C
    simp [show (2359296 * k + 919871) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 2759614) = 3538944 * k + 1379807 := by
    unfold C
    simp [show (7077888 * k + 2759614) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1379807) = 10616832 * k + 4139422 := by
    unfold C
    simp [show (3538944 * k + 1379807) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 4139422) = 5308416 * k + 2069711 := by
    unfold C
    simp [show (10616832 * k + 4139422) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 2069711) = 15925248 * k + 6209134 := by
    unfold C
    simp [show (5308416 * k + 2069711) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 6209134) = 7962624 * k + 3104567 := by
    unfold C
    simp [show (15925248 * k + 6209134) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 3104567) = 23887872 * k + 9313702 := by
    unfold C
    simp [show (7962624 * k + 3104567) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 9313702) = 11943936 * k + 4656851 := by
    unfold C
    simp [show (23887872 * k + 9313702) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 4656851) = 35831808 * k + 13970554 := by
    unfold C
    simp [show (11943936 * k + 4656851) % 2 ≠ 0 by omega]
    omega
  have h14 : C (35831808 * k + 13970554) = 17915904 * k + 6985277 := by
    unfold C
    simp [show (35831808 * k + 13970554) % 2 = 0 by omega]
    omega
  have h15 : C (17915904 * k + 6985277) = 53747712 * k + 20955832 := by
    unfold C
    simp [show (17915904 * k + 6985277) % 2 ≠ 0 by omega]
    omega
  have h16 : C (53747712 * k + 20955832) = 26873856 * k + 10477916 := by
    unfold C
    simp [show (53747712 * k + 20955832) % 2 = 0 by omega]
    omega
  have h17 : C (26873856 * k + 10477916) = 13436928 * k + 5238958 := by
    unfold C
    simp [show (26873856 * k + 10477916) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 5238958) = 6718464 * k + 2619479 := by
    unfold C
    simp [show (13436928 * k + 5238958) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 2619479) = 20155392 * k + 7858438 := by
    unfold C
    simp [show (6718464 * k + 2619479) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 7858438) = 10077696 * k + 3929219 := by
    unfold C
    simp [show (20155392 * k + 7858438) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 3929219) = 30233088 * k + 11787658 := by
    unfold C
    simp [show (10077696 * k + 3929219) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 11787658) = 15116544 * k + 5893829 := by
    unfold C
    simp [show (30233088 * k + 11787658) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 5893829) = 45349632 * k + 17681488 := by
    unfold C
    simp [show (15116544 * k + 5893829) % 2 ≠ 0 by omega]
    omega
  have h24 : C (45349632 * k + 17681488) = 22674816 * k + 8840744 := by
    unfold C
    simp [show (45349632 * k + 17681488) % 2 = 0 by omega]
    omega
  have h25 : C (22674816 * k + 8840744) = 11337408 * k + 4420372 := by
    unfold C
    simp [show (22674816 * k + 8840744) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 4420372) = 5668704 * k + 2210186 := by
    unfold C
    simp [show (11337408 * k + 4420372) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 2210186) = 2834352 * k + 1105093 := by
    unfold C
    simp [show (5668704 * k + 2210186) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1105093) = 8503056 * k + 3315280 := by
    unfold C
    simp [show (2834352 * k + 1105093) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 3315280) = 4251528 * k + 1657640 := by
    unfold C
    simp [show (8503056 * k + 3315280) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 1657640) = 2125764 * k + 828820 := by
    unfold C
    simp [show (4251528 * k + 1657640) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 828820) = 1062882 * k + 414410 := by
    unfold C
    simp [show (2125764 * k + 828820) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 414410) = 531441 * k + 207205 := by
    unfold C
    simp [show (1062882 * k + 414410) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 408831) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 408831)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_409247 : ∀ k : Nat,
    iterate (1048576 * k + 409247) 32 = 531441 * k + 207416 ∧
      531441 * k + 207416 < 1048576 * k + 409247 := by
  intro k
  have h1 : C (1048576 * k + 409247) = 3145728 * k + 1227742 := by
    unfold C
    simp [show (1048576 * k + 409247) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1227742) = 1572864 * k + 613871 := by
    unfold C
    simp [show (3145728 * k + 1227742) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 613871) = 4718592 * k + 1841614 := by
    unfold C
    simp [show (1572864 * k + 613871) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1841614) = 2359296 * k + 920807 := by
    unfold C
    simp [show (4718592 * k + 1841614) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 920807) = 7077888 * k + 2762422 := by
    unfold C
    simp [show (2359296 * k + 920807) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 2762422) = 3538944 * k + 1381211 := by
    unfold C
    simp [show (7077888 * k + 2762422) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1381211) = 10616832 * k + 4143634 := by
    unfold C
    simp [show (3538944 * k + 1381211) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 4143634) = 5308416 * k + 2071817 := by
    unfold C
    simp [show (10616832 * k + 4143634) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 2071817) = 15925248 * k + 6215452 := by
    unfold C
    simp [show (5308416 * k + 2071817) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 6215452) = 7962624 * k + 3107726 := by
    unfold C
    simp [show (15925248 * k + 6215452) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 3107726) = 3981312 * k + 1553863 := by
    unfold C
    simp [show (7962624 * k + 3107726) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 1553863) = 11943936 * k + 4661590 := by
    unfold C
    simp [show (3981312 * k + 1553863) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 4661590) = 5971968 * k + 2330795 := by
    unfold C
    simp [show (11943936 * k + 4661590) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 2330795) = 17915904 * k + 6992386 := by
    unfold C
    simp [show (5971968 * k + 2330795) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 6992386) = 8957952 * k + 3496193 := by
    unfold C
    simp [show (17915904 * k + 6992386) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 3496193) = 26873856 * k + 10488580 := by
    unfold C
    simp [show (8957952 * k + 3496193) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 10488580) = 13436928 * k + 5244290 := by
    unfold C
    simp [show (26873856 * k + 10488580) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 5244290) = 6718464 * k + 2622145 := by
    unfold C
    simp [show (13436928 * k + 5244290) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 2622145) = 20155392 * k + 7866436 := by
    unfold C
    simp [show (6718464 * k + 2622145) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 7866436) = 10077696 * k + 3933218 := by
    unfold C
    simp [show (20155392 * k + 7866436) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 3933218) = 5038848 * k + 1966609 := by
    unfold C
    simp [show (10077696 * k + 3933218) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 1966609) = 15116544 * k + 5899828 := by
    unfold C
    simp [show (5038848 * k + 1966609) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 5899828) = 7558272 * k + 2949914 := by
    unfold C
    simp [show (15116544 * k + 5899828) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 2949914) = 3779136 * k + 1474957 := by
    unfold C
    simp [show (7558272 * k + 2949914) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 1474957) = 11337408 * k + 4424872 := by
    unfold C
    simp [show (3779136 * k + 1474957) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 4424872) = 5668704 * k + 2212436 := by
    unfold C
    simp [show (11337408 * k + 4424872) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 2212436) = 2834352 * k + 1106218 := by
    unfold C
    simp [show (5668704 * k + 2212436) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1106218) = 1417176 * k + 553109 := by
    unfold C
    simp [show (2834352 * k + 1106218) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 553109) = 4251528 * k + 1659328 := by
    unfold C
    simp [show (1417176 * k + 553109) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 1659328) = 2125764 * k + 829664 := by
    unfold C
    simp [show (4251528 * k + 1659328) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 829664) = 1062882 * k + 414832 := by
    unfold C
    simp [show (2125764 * k + 829664) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 414832) = 531441 * k + 207416 := by
    unfold C
    simp [show (1062882 * k + 414832) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 409247) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 409247)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_409839 : ∀ k : Nat,
    iterate (1048576 * k + 409839) 32 = 531441 * k + 207716 ∧
      531441 * k + 207716 < 1048576 * k + 409839 := by
  intro k
  have h1 : C (1048576 * k + 409839) = 3145728 * k + 1229518 := by
    unfold C
    simp [show (1048576 * k + 409839) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1229518) = 1572864 * k + 614759 := by
    unfold C
    simp [show (3145728 * k + 1229518) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 614759) = 4718592 * k + 1844278 := by
    unfold C
    simp [show (1572864 * k + 614759) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1844278) = 2359296 * k + 922139 := by
    unfold C
    simp [show (4718592 * k + 1844278) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 922139) = 7077888 * k + 2766418 := by
    unfold C
    simp [show (2359296 * k + 922139) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 2766418) = 3538944 * k + 1383209 := by
    unfold C
    simp [show (7077888 * k + 2766418) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1383209) = 10616832 * k + 4149628 := by
    unfold C
    simp [show (3538944 * k + 1383209) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 4149628) = 5308416 * k + 2074814 := by
    unfold C
    simp [show (10616832 * k + 4149628) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 2074814) = 2654208 * k + 1037407 := by
    unfold C
    simp [show (5308416 * k + 2074814) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1037407) = 7962624 * k + 3112222 := by
    unfold C
    simp [show (2654208 * k + 1037407) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 3112222) = 3981312 * k + 1556111 := by
    unfold C
    simp [show (7962624 * k + 3112222) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 1556111) = 11943936 * k + 4668334 := by
    unfold C
    simp [show (3981312 * k + 1556111) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 4668334) = 5971968 * k + 2334167 := by
    unfold C
    simp [show (11943936 * k + 4668334) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 2334167) = 17915904 * k + 7002502 := by
    unfold C
    simp [show (5971968 * k + 2334167) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 7002502) = 8957952 * k + 3501251 := by
    unfold C
    simp [show (17915904 * k + 7002502) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 3501251) = 26873856 * k + 10503754 := by
    unfold C
    simp [show (8957952 * k + 3501251) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 10503754) = 13436928 * k + 5251877 := by
    unfold C
    simp [show (26873856 * k + 10503754) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 5251877) = 40310784 * k + 15755632 := by
    unfold C
    simp [show (13436928 * k + 5251877) % 2 ≠ 0 by omega]
    omega
  have h19 : C (40310784 * k + 15755632) = 20155392 * k + 7877816 := by
    unfold C
    simp [show (40310784 * k + 15755632) % 2 = 0 by omega]
    omega
  have h20 : C (20155392 * k + 7877816) = 10077696 * k + 3938908 := by
    unfold C
    simp [show (20155392 * k + 7877816) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 3938908) = 5038848 * k + 1969454 := by
    unfold C
    simp [show (10077696 * k + 3938908) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 1969454) = 2519424 * k + 984727 := by
    unfold C
    simp [show (5038848 * k + 1969454) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 984727) = 7558272 * k + 2954182 := by
    unfold C
    simp [show (2519424 * k + 984727) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 2954182) = 3779136 * k + 1477091 := by
    unfold C
    simp [show (7558272 * k + 2954182) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 1477091) = 11337408 * k + 4431274 := by
    unfold C
    simp [show (3779136 * k + 1477091) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 4431274) = 5668704 * k + 2215637 := by
    unfold C
    simp [show (11337408 * k + 4431274) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 2215637) = 17006112 * k + 6646912 := by
    unfold C
    simp [show (5668704 * k + 2215637) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 6646912) = 8503056 * k + 3323456 := by
    unfold C
    simp [show (17006112 * k + 6646912) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 3323456) = 4251528 * k + 1661728 := by
    unfold C
    simp [show (8503056 * k + 3323456) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 1661728) = 2125764 * k + 830864 := by
    unfold C
    simp [show (4251528 * k + 1661728) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 830864) = 1062882 * k + 415432 := by
    unfold C
    simp [show (2125764 * k + 830864) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 415432) = 531441 * k + 207716 := by
    unfold C
    simp [show (1062882 * k + 415432) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 409839) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 409839)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_410879 : ∀ k : Nat,
    iterate (1048576 * k + 410879) 32 = 531441 * k + 208243 ∧
      531441 * k + 208243 < 1048576 * k + 410879 := by
  intro k
  have h1 : C (1048576 * k + 410879) = 3145728 * k + 1232638 := by
    unfold C
    simp [show (1048576 * k + 410879) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1232638) = 1572864 * k + 616319 := by
    unfold C
    simp [show (3145728 * k + 1232638) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 616319) = 4718592 * k + 1848958 := by
    unfold C
    simp [show (1572864 * k + 616319) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1848958) = 2359296 * k + 924479 := by
    unfold C
    simp [show (4718592 * k + 1848958) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 924479) = 7077888 * k + 2773438 := by
    unfold C
    simp [show (2359296 * k + 924479) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 2773438) = 3538944 * k + 1386719 := by
    unfold C
    simp [show (7077888 * k + 2773438) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1386719) = 10616832 * k + 4160158 := by
    unfold C
    simp [show (3538944 * k + 1386719) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 4160158) = 5308416 * k + 2080079 := by
    unfold C
    simp [show (10616832 * k + 4160158) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 2080079) = 15925248 * k + 6240238 := by
    unfold C
    simp [show (5308416 * k + 2080079) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 6240238) = 7962624 * k + 3120119 := by
    unfold C
    simp [show (15925248 * k + 6240238) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 3120119) = 23887872 * k + 9360358 := by
    unfold C
    simp [show (7962624 * k + 3120119) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 9360358) = 11943936 * k + 4680179 := by
    unfold C
    simp [show (23887872 * k + 9360358) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 4680179) = 35831808 * k + 14040538 := by
    unfold C
    simp [show (11943936 * k + 4680179) % 2 ≠ 0 by omega]
    omega
  have h14 : C (35831808 * k + 14040538) = 17915904 * k + 7020269 := by
    unfold C
    simp [show (35831808 * k + 14040538) % 2 = 0 by omega]
    omega
  have h15 : C (17915904 * k + 7020269) = 53747712 * k + 21060808 := by
    unfold C
    simp [show (17915904 * k + 7020269) % 2 ≠ 0 by omega]
    omega
  have h16 : C (53747712 * k + 21060808) = 26873856 * k + 10530404 := by
    unfold C
    simp [show (53747712 * k + 21060808) % 2 = 0 by omega]
    omega
  have h17 : C (26873856 * k + 10530404) = 13436928 * k + 5265202 := by
    unfold C
    simp [show (26873856 * k + 10530404) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 5265202) = 6718464 * k + 2632601 := by
    unfold C
    simp [show (13436928 * k + 5265202) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 2632601) = 20155392 * k + 7897804 := by
    unfold C
    simp [show (6718464 * k + 2632601) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 7897804) = 10077696 * k + 3948902 := by
    unfold C
    simp [show (20155392 * k + 7897804) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 3948902) = 5038848 * k + 1974451 := by
    unfold C
    simp [show (10077696 * k + 3948902) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 1974451) = 15116544 * k + 5923354 := by
    unfold C
    simp [show (5038848 * k + 1974451) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 5923354) = 7558272 * k + 2961677 := by
    unfold C
    simp [show (15116544 * k + 5923354) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 2961677) = 22674816 * k + 8885032 := by
    unfold C
    simp [show (7558272 * k + 2961677) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 8885032) = 11337408 * k + 4442516 := by
    unfold C
    simp [show (22674816 * k + 8885032) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 4442516) = 5668704 * k + 2221258 := by
    unfold C
    simp [show (11337408 * k + 4442516) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 2221258) = 2834352 * k + 1110629 := by
    unfold C
    simp [show (5668704 * k + 2221258) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1110629) = 8503056 * k + 3331888 := by
    unfold C
    simp [show (2834352 * k + 1110629) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 3331888) = 4251528 * k + 1665944 := by
    unfold C
    simp [show (8503056 * k + 3331888) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 1665944) = 2125764 * k + 832972 := by
    unfold C
    simp [show (4251528 * k + 1665944) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 832972) = 1062882 * k + 416486 := by
    unfold C
    simp [show (2125764 * k + 832972) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 416486) = 531441 * k + 208243 := by
    unfold C
    simp [show (1062882 * k + 416486) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 410879) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 410879)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_411295 : ∀ k : Nat,
    iterate (1048576 * k + 411295) 32 = 531441 * k + 208454 ∧
      531441 * k + 208454 < 1048576 * k + 411295 := by
  intro k
  have h1 : C (1048576 * k + 411295) = 3145728 * k + 1233886 := by
    unfold C
    simp [show (1048576 * k + 411295) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1233886) = 1572864 * k + 616943 := by
    unfold C
    simp [show (3145728 * k + 1233886) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 616943) = 4718592 * k + 1850830 := by
    unfold C
    simp [show (1572864 * k + 616943) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1850830) = 2359296 * k + 925415 := by
    unfold C
    simp [show (4718592 * k + 1850830) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 925415) = 7077888 * k + 2776246 := by
    unfold C
    simp [show (2359296 * k + 925415) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 2776246) = 3538944 * k + 1388123 := by
    unfold C
    simp [show (7077888 * k + 2776246) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1388123) = 10616832 * k + 4164370 := by
    unfold C
    simp [show (3538944 * k + 1388123) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 4164370) = 5308416 * k + 2082185 := by
    unfold C
    simp [show (10616832 * k + 4164370) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 2082185) = 15925248 * k + 6246556 := by
    unfold C
    simp [show (5308416 * k + 2082185) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 6246556) = 7962624 * k + 3123278 := by
    unfold C
    simp [show (15925248 * k + 6246556) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 3123278) = 3981312 * k + 1561639 := by
    unfold C
    simp [show (7962624 * k + 3123278) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 1561639) = 11943936 * k + 4684918 := by
    unfold C
    simp [show (3981312 * k + 1561639) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 4684918) = 5971968 * k + 2342459 := by
    unfold C
    simp [show (11943936 * k + 4684918) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 2342459) = 17915904 * k + 7027378 := by
    unfold C
    simp [show (5971968 * k + 2342459) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 7027378) = 8957952 * k + 3513689 := by
    unfold C
    simp [show (17915904 * k + 7027378) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 3513689) = 26873856 * k + 10541068 := by
    unfold C
    simp [show (8957952 * k + 3513689) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 10541068) = 13436928 * k + 5270534 := by
    unfold C
    simp [show (26873856 * k + 10541068) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 5270534) = 6718464 * k + 2635267 := by
    unfold C
    simp [show (13436928 * k + 5270534) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 2635267) = 20155392 * k + 7905802 := by
    unfold C
    simp [show (6718464 * k + 2635267) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 7905802) = 10077696 * k + 3952901 := by
    unfold C
    simp [show (20155392 * k + 7905802) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 3952901) = 30233088 * k + 11858704 := by
    unfold C
    simp [show (10077696 * k + 3952901) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 11858704) = 15116544 * k + 5929352 := by
    unfold C
    simp [show (30233088 * k + 11858704) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 5929352) = 7558272 * k + 2964676 := by
    unfold C
    simp [show (15116544 * k + 5929352) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 2964676) = 3779136 * k + 1482338 := by
    unfold C
    simp [show (7558272 * k + 2964676) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 1482338) = 1889568 * k + 741169 := by
    unfold C
    simp [show (3779136 * k + 1482338) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 741169) = 5668704 * k + 2223508 := by
    unfold C
    simp [show (1889568 * k + 741169) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 2223508) = 2834352 * k + 1111754 := by
    unfold C
    simp [show (5668704 * k + 2223508) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1111754) = 1417176 * k + 555877 := by
    unfold C
    simp [show (2834352 * k + 1111754) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 555877) = 4251528 * k + 1667632 := by
    unfold C
    simp [show (1417176 * k + 555877) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 1667632) = 2125764 * k + 833816 := by
    unfold C
    simp [show (4251528 * k + 1667632) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 833816) = 1062882 * k + 416908 := by
    unfold C
    simp [show (2125764 * k + 833816) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 416908) = 531441 * k + 208454 := by
    unfold C
    simp [show (1062882 * k + 416908) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 411295) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 411295)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_412775 : ∀ k : Nat,
    iterate (1048576 * k + 412775) 32 = 531441 * k + 209204 ∧
      531441 * k + 209204 < 1048576 * k + 412775 := by
  intro k
  have h1 : C (1048576 * k + 412775) = 3145728 * k + 1238326 := by
    unfold C
    simp [show (1048576 * k + 412775) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1238326) = 1572864 * k + 619163 := by
    unfold C
    simp [show (3145728 * k + 1238326) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 619163) = 4718592 * k + 1857490 := by
    unfold C
    simp [show (1572864 * k + 619163) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1857490) = 2359296 * k + 928745 := by
    unfold C
    simp [show (4718592 * k + 1857490) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 928745) = 7077888 * k + 2786236 := by
    unfold C
    simp [show (2359296 * k + 928745) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 2786236) = 3538944 * k + 1393118 := by
    unfold C
    simp [show (7077888 * k + 2786236) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1393118) = 1769472 * k + 696559 := by
    unfold C
    simp [show (3538944 * k + 1393118) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 696559) = 5308416 * k + 2089678 := by
    unfold C
    simp [show (1769472 * k + 696559) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 2089678) = 2654208 * k + 1044839 := by
    unfold C
    simp [show (5308416 * k + 2089678) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1044839) = 7962624 * k + 3134518 := by
    unfold C
    simp [show (2654208 * k + 1044839) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 3134518) = 3981312 * k + 1567259 := by
    unfold C
    simp [show (7962624 * k + 3134518) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 1567259) = 11943936 * k + 4701778 := by
    unfold C
    simp [show (3981312 * k + 1567259) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 4701778) = 5971968 * k + 2350889 := by
    unfold C
    simp [show (11943936 * k + 4701778) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 2350889) = 17915904 * k + 7052668 := by
    unfold C
    simp [show (5971968 * k + 2350889) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 7052668) = 8957952 * k + 3526334 := by
    unfold C
    simp [show (17915904 * k + 7052668) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 3526334) = 4478976 * k + 1763167 := by
    unfold C
    simp [show (8957952 * k + 3526334) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 1763167) = 13436928 * k + 5289502 := by
    unfold C
    simp [show (4478976 * k + 1763167) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 5289502) = 6718464 * k + 2644751 := by
    unfold C
    simp [show (13436928 * k + 5289502) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 2644751) = 20155392 * k + 7934254 := by
    unfold C
    simp [show (6718464 * k + 2644751) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 7934254) = 10077696 * k + 3967127 := by
    unfold C
    simp [show (20155392 * k + 7934254) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 3967127) = 30233088 * k + 11901382 := by
    unfold C
    simp [show (10077696 * k + 3967127) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 11901382) = 15116544 * k + 5950691 := by
    unfold C
    simp [show (30233088 * k + 11901382) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 5950691) = 45349632 * k + 17852074 := by
    unfold C
    simp [show (15116544 * k + 5950691) % 2 ≠ 0 by omega]
    omega
  have h24 : C (45349632 * k + 17852074) = 22674816 * k + 8926037 := by
    unfold C
    simp [show (45349632 * k + 17852074) % 2 = 0 by omega]
    omega
  have h25 : C (22674816 * k + 8926037) = 68024448 * k + 26778112 := by
    unfold C
    simp [show (22674816 * k + 8926037) % 2 ≠ 0 by omega]
    omega
  have h26 : C (68024448 * k + 26778112) = 34012224 * k + 13389056 := by
    unfold C
    simp [show (68024448 * k + 26778112) % 2 = 0 by omega]
    omega
  have h27 : C (34012224 * k + 13389056) = 17006112 * k + 6694528 := by
    unfold C
    simp [show (34012224 * k + 13389056) % 2 = 0 by omega]
    omega
  have h28 : C (17006112 * k + 6694528) = 8503056 * k + 3347264 := by
    unfold C
    simp [show (17006112 * k + 6694528) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 3347264) = 4251528 * k + 1673632 := by
    unfold C
    simp [show (8503056 * k + 3347264) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 1673632) = 2125764 * k + 836816 := by
    unfold C
    simp [show (4251528 * k + 1673632) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 836816) = 1062882 * k + 418408 := by
    unfold C
    simp [show (2125764 * k + 836816) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 418408) = 531441 * k + 209204 := by
    unfold C
    simp [show (1062882 * k + 418408) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 412775) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 412775)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_412999 : ∀ k : Nat,
    iterate (1048576 * k + 412999) 32 = 531441 * k + 209318 ∧
      531441 * k + 209318 < 1048576 * k + 412999 := by
  intro k
  have h1 : C (1048576 * k + 412999) = 3145728 * k + 1238998 := by
    unfold C
    simp [show (1048576 * k + 412999) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1238998) = 1572864 * k + 619499 := by
    unfold C
    simp [show (3145728 * k + 1238998) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 619499) = 4718592 * k + 1858498 := by
    unfold C
    simp [show (1572864 * k + 619499) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1858498) = 2359296 * k + 929249 := by
    unfold C
    simp [show (4718592 * k + 1858498) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 929249) = 7077888 * k + 2787748 := by
    unfold C
    simp [show (2359296 * k + 929249) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 2787748) = 3538944 * k + 1393874 := by
    unfold C
    simp [show (7077888 * k + 2787748) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1393874) = 1769472 * k + 696937 := by
    unfold C
    simp [show (3538944 * k + 1393874) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 696937) = 5308416 * k + 2090812 := by
    unfold C
    simp [show (1769472 * k + 696937) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 2090812) = 2654208 * k + 1045406 := by
    unfold C
    simp [show (5308416 * k + 2090812) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1045406) = 1327104 * k + 522703 := by
    unfold C
    simp [show (2654208 * k + 1045406) % 2 = 0 by omega]
    omega
  have h11 : C (1327104 * k + 522703) = 3981312 * k + 1568110 := by
    unfold C
    simp [show (1327104 * k + 522703) % 2 ≠ 0 by omega]
    omega
  have h12 : C (3981312 * k + 1568110) = 1990656 * k + 784055 := by
    unfold C
    simp [show (3981312 * k + 1568110) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 784055) = 5971968 * k + 2352166 := by
    unfold C
    simp [show (1990656 * k + 784055) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 2352166) = 2985984 * k + 1176083 := by
    unfold C
    simp [show (5971968 * k + 2352166) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1176083) = 8957952 * k + 3528250 := by
    unfold C
    simp [show (2985984 * k + 1176083) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 3528250) = 4478976 * k + 1764125 := by
    unfold C
    simp [show (8957952 * k + 3528250) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 1764125) = 13436928 * k + 5292376 := by
    unfold C
    simp [show (4478976 * k + 1764125) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 5292376) = 6718464 * k + 2646188 := by
    unfold C
    simp [show (13436928 * k + 5292376) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 2646188) = 3359232 * k + 1323094 := by
    unfold C
    simp [show (6718464 * k + 2646188) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 1323094) = 1679616 * k + 661547 := by
    unfold C
    simp [show (3359232 * k + 1323094) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 661547) = 5038848 * k + 1984642 := by
    unfold C
    simp [show (1679616 * k + 661547) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 1984642) = 2519424 * k + 992321 := by
    unfold C
    simp [show (5038848 * k + 1984642) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 992321) = 7558272 * k + 2976964 := by
    unfold C
    simp [show (2519424 * k + 992321) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 2976964) = 3779136 * k + 1488482 := by
    unfold C
    simp [show (7558272 * k + 2976964) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 1488482) = 1889568 * k + 744241 := by
    unfold C
    simp [show (3779136 * k + 1488482) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 744241) = 5668704 * k + 2232724 := by
    unfold C
    simp [show (1889568 * k + 744241) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 2232724) = 2834352 * k + 1116362 := by
    unfold C
    simp [show (5668704 * k + 2232724) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1116362) = 1417176 * k + 558181 := by
    unfold C
    simp [show (2834352 * k + 1116362) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 558181) = 4251528 * k + 1674544 := by
    unfold C
    simp [show (1417176 * k + 558181) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 1674544) = 2125764 * k + 837272 := by
    unfold C
    simp [show (4251528 * k + 1674544) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 837272) = 1062882 * k + 418636 := by
    unfold C
    simp [show (2125764 * k + 837272) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 418636) = 531441 * k + 209318 := by
    unfold C
    simp [show (1062882 * k + 418636) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 412999) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 412999)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_413631 : ∀ k : Nat,
    iterate (1048576 * k + 413631) 32 = 531441 * k + 209638 ∧
      531441 * k + 209638 < 1048576 * k + 413631 := by
  intro k
  have h1 : C (1048576 * k + 413631) = 3145728 * k + 1240894 := by
    unfold C
    simp [show (1048576 * k + 413631) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1240894) = 1572864 * k + 620447 := by
    unfold C
    simp [show (3145728 * k + 1240894) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 620447) = 4718592 * k + 1861342 := by
    unfold C
    simp [show (1572864 * k + 620447) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1861342) = 2359296 * k + 930671 := by
    unfold C
    simp [show (4718592 * k + 1861342) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 930671) = 7077888 * k + 2792014 := by
    unfold C
    simp [show (2359296 * k + 930671) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 2792014) = 3538944 * k + 1396007 := by
    unfold C
    simp [show (7077888 * k + 2792014) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1396007) = 10616832 * k + 4188022 := by
    unfold C
    simp [show (3538944 * k + 1396007) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 4188022) = 5308416 * k + 2094011 := by
    unfold C
    simp [show (10616832 * k + 4188022) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 2094011) = 15925248 * k + 6282034 := by
    unfold C
    simp [show (5308416 * k + 2094011) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 6282034) = 7962624 * k + 3141017 := by
    unfold C
    simp [show (15925248 * k + 6282034) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 3141017) = 23887872 * k + 9423052 := by
    unfold C
    simp [show (7962624 * k + 3141017) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 9423052) = 11943936 * k + 4711526 := by
    unfold C
    simp [show (23887872 * k + 9423052) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 4711526) = 5971968 * k + 2355763 := by
    unfold C
    simp [show (11943936 * k + 4711526) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 2355763) = 17915904 * k + 7067290 := by
    unfold C
    simp [show (5971968 * k + 2355763) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 7067290) = 8957952 * k + 3533645 := by
    unfold C
    simp [show (17915904 * k + 7067290) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 3533645) = 26873856 * k + 10600936 := by
    unfold C
    simp [show (8957952 * k + 3533645) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 10600936) = 13436928 * k + 5300468 := by
    unfold C
    simp [show (26873856 * k + 10600936) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 5300468) = 6718464 * k + 2650234 := by
    unfold C
    simp [show (13436928 * k + 5300468) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 2650234) = 3359232 * k + 1325117 := by
    unfold C
    simp [show (6718464 * k + 2650234) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 1325117) = 10077696 * k + 3975352 := by
    unfold C
    simp [show (3359232 * k + 1325117) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 3975352) = 5038848 * k + 1987676 := by
    unfold C
    simp [show (10077696 * k + 3975352) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 1987676) = 2519424 * k + 993838 := by
    unfold C
    simp [show (5038848 * k + 1987676) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 993838) = 1259712 * k + 496919 := by
    unfold C
    simp [show (2519424 * k + 993838) % 2 = 0 by omega]
    omega
  have h24 : C (1259712 * k + 496919) = 3779136 * k + 1490758 := by
    unfold C
    simp [show (1259712 * k + 496919) % 2 ≠ 0 by omega]
    omega
  have h25 : C (3779136 * k + 1490758) = 1889568 * k + 745379 := by
    unfold C
    simp [show (3779136 * k + 1490758) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 745379) = 5668704 * k + 2236138 := by
    unfold C
    simp [show (1889568 * k + 745379) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 2236138) = 2834352 * k + 1118069 := by
    unfold C
    simp [show (5668704 * k + 2236138) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1118069) = 8503056 * k + 3354208 := by
    unfold C
    simp [show (2834352 * k + 1118069) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 3354208) = 4251528 * k + 1677104 := by
    unfold C
    simp [show (8503056 * k + 3354208) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 1677104) = 2125764 * k + 838552 := by
    unfold C
    simp [show (4251528 * k + 1677104) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 838552) = 1062882 * k + 419276 := by
    unfold C
    simp [show (2125764 * k + 838552) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 419276) = 531441 * k + 209638 := by
    unfold C
    simp [show (1062882 * k + 419276) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 413631) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 413631)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_413887 : ∀ k : Nat,
    iterate (1048576 * k + 413887) 32 = 531441 * k + 209768 ∧
      531441 * k + 209768 < 1048576 * k + 413887 := by
  intro k
  have h1 : C (1048576 * k + 413887) = 3145728 * k + 1241662 := by
    unfold C
    simp [show (1048576 * k + 413887) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1241662) = 1572864 * k + 620831 := by
    unfold C
    simp [show (3145728 * k + 1241662) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 620831) = 4718592 * k + 1862494 := by
    unfold C
    simp [show (1572864 * k + 620831) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1862494) = 2359296 * k + 931247 := by
    unfold C
    simp [show (4718592 * k + 1862494) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 931247) = 7077888 * k + 2793742 := by
    unfold C
    simp [show (2359296 * k + 931247) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 2793742) = 3538944 * k + 1396871 := by
    unfold C
    simp [show (7077888 * k + 2793742) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1396871) = 10616832 * k + 4190614 := by
    unfold C
    simp [show (3538944 * k + 1396871) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 4190614) = 5308416 * k + 2095307 := by
    unfold C
    simp [show (10616832 * k + 4190614) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 2095307) = 15925248 * k + 6285922 := by
    unfold C
    simp [show (5308416 * k + 2095307) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 6285922) = 7962624 * k + 3142961 := by
    unfold C
    simp [show (15925248 * k + 6285922) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 3142961) = 23887872 * k + 9428884 := by
    unfold C
    simp [show (7962624 * k + 3142961) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 9428884) = 11943936 * k + 4714442 := by
    unfold C
    simp [show (23887872 * k + 9428884) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 4714442) = 5971968 * k + 2357221 := by
    unfold C
    simp [show (11943936 * k + 4714442) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 2357221) = 17915904 * k + 7071664 := by
    unfold C
    simp [show (5971968 * k + 2357221) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 7071664) = 8957952 * k + 3535832 := by
    unfold C
    simp [show (17915904 * k + 7071664) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 3535832) = 4478976 * k + 1767916 := by
    unfold C
    simp [show (8957952 * k + 3535832) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 1767916) = 2239488 * k + 883958 := by
    unfold C
    simp [show (4478976 * k + 1767916) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 883958) = 1119744 * k + 441979 := by
    unfold C
    simp [show (2239488 * k + 883958) % 2 = 0 by omega]
    omega
  have h19 : C (1119744 * k + 441979) = 3359232 * k + 1325938 := by
    unfold C
    simp [show (1119744 * k + 441979) % 2 ≠ 0 by omega]
    omega
  have h20 : C (3359232 * k + 1325938) = 1679616 * k + 662969 := by
    unfold C
    simp [show (3359232 * k + 1325938) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 662969) = 5038848 * k + 1988908 := by
    unfold C
    simp [show (1679616 * k + 662969) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 1988908) = 2519424 * k + 994454 := by
    unfold C
    simp [show (5038848 * k + 1988908) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 994454) = 1259712 * k + 497227 := by
    unfold C
    simp [show (2519424 * k + 994454) % 2 = 0 by omega]
    omega
  have h24 : C (1259712 * k + 497227) = 3779136 * k + 1491682 := by
    unfold C
    simp [show (1259712 * k + 497227) % 2 ≠ 0 by omega]
    omega
  have h25 : C (3779136 * k + 1491682) = 1889568 * k + 745841 := by
    unfold C
    simp [show (3779136 * k + 1491682) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 745841) = 5668704 * k + 2237524 := by
    unfold C
    simp [show (1889568 * k + 745841) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 2237524) = 2834352 * k + 1118762 := by
    unfold C
    simp [show (5668704 * k + 2237524) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1118762) = 1417176 * k + 559381 := by
    unfold C
    simp [show (2834352 * k + 1118762) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 559381) = 4251528 * k + 1678144 := by
    unfold C
    simp [show (1417176 * k + 559381) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 1678144) = 2125764 * k + 839072 := by
    unfold C
    simp [show (4251528 * k + 1678144) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 839072) = 1062882 * k + 419536 := by
    unfold C
    simp [show (2125764 * k + 839072) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 419536) = 531441 * k + 209768 := by
    unfold C
    simp [show (1062882 * k + 419536) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 413887) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 413887)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_413935 : ∀ k : Nat,
    iterate (1048576 * k + 413935) 32 = 531441 * k + 209792 ∧
      531441 * k + 209792 < 1048576 * k + 413935 := by
  intro k
  have h1 : C (1048576 * k + 413935) = 3145728 * k + 1241806 := by
    unfold C
    simp [show (1048576 * k + 413935) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1241806) = 1572864 * k + 620903 := by
    unfold C
    simp [show (3145728 * k + 1241806) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 620903) = 4718592 * k + 1862710 := by
    unfold C
    simp [show (1572864 * k + 620903) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1862710) = 2359296 * k + 931355 := by
    unfold C
    simp [show (4718592 * k + 1862710) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 931355) = 7077888 * k + 2794066 := by
    unfold C
    simp [show (2359296 * k + 931355) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 2794066) = 3538944 * k + 1397033 := by
    unfold C
    simp [show (7077888 * k + 2794066) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1397033) = 10616832 * k + 4191100 := by
    unfold C
    simp [show (3538944 * k + 1397033) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 4191100) = 5308416 * k + 2095550 := by
    unfold C
    simp [show (10616832 * k + 4191100) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 2095550) = 2654208 * k + 1047775 := by
    unfold C
    simp [show (5308416 * k + 2095550) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1047775) = 7962624 * k + 3143326 := by
    unfold C
    simp [show (2654208 * k + 1047775) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 3143326) = 3981312 * k + 1571663 := by
    unfold C
    simp [show (7962624 * k + 3143326) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 1571663) = 11943936 * k + 4714990 := by
    unfold C
    simp [show (3981312 * k + 1571663) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 4714990) = 5971968 * k + 2357495 := by
    unfold C
    simp [show (11943936 * k + 4714990) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 2357495) = 17915904 * k + 7072486 := by
    unfold C
    simp [show (5971968 * k + 2357495) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 7072486) = 8957952 * k + 3536243 := by
    unfold C
    simp [show (17915904 * k + 7072486) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 3536243) = 26873856 * k + 10608730 := by
    unfold C
    simp [show (8957952 * k + 3536243) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 10608730) = 13436928 * k + 5304365 := by
    unfold C
    simp [show (26873856 * k + 10608730) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 5304365) = 40310784 * k + 15913096 := by
    unfold C
    simp [show (13436928 * k + 5304365) % 2 ≠ 0 by omega]
    omega
  have h19 : C (40310784 * k + 15913096) = 20155392 * k + 7956548 := by
    unfold C
    simp [show (40310784 * k + 15913096) % 2 = 0 by omega]
    omega
  have h20 : C (20155392 * k + 7956548) = 10077696 * k + 3978274 := by
    unfold C
    simp [show (20155392 * k + 7956548) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 3978274) = 5038848 * k + 1989137 := by
    unfold C
    simp [show (10077696 * k + 3978274) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 1989137) = 15116544 * k + 5967412 := by
    unfold C
    simp [show (5038848 * k + 1989137) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 5967412) = 7558272 * k + 2983706 := by
    unfold C
    simp [show (15116544 * k + 5967412) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 2983706) = 3779136 * k + 1491853 := by
    unfold C
    simp [show (7558272 * k + 2983706) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 1491853) = 11337408 * k + 4475560 := by
    unfold C
    simp [show (3779136 * k + 1491853) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 4475560) = 5668704 * k + 2237780 := by
    unfold C
    simp [show (11337408 * k + 4475560) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 2237780) = 2834352 * k + 1118890 := by
    unfold C
    simp [show (5668704 * k + 2237780) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1118890) = 1417176 * k + 559445 := by
    unfold C
    simp [show (2834352 * k + 1118890) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 559445) = 4251528 * k + 1678336 := by
    unfold C
    simp [show (1417176 * k + 559445) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 1678336) = 2125764 * k + 839168 := by
    unfold C
    simp [show (4251528 * k + 1678336) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 839168) = 1062882 * k + 419584 := by
    unfold C
    simp [show (2125764 * k + 839168) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 419584) = 531441 * k + 209792 := by
    unfold C
    simp [show (1062882 * k + 419584) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 413935) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 413935)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_414367 : ∀ k : Nat,
    iterate (1048576 * k + 414367) 32 = 531441 * k + 210011 ∧
      531441 * k + 210011 < 1048576 * k + 414367 := by
  intro k
  have h1 : C (1048576 * k + 414367) = 3145728 * k + 1243102 := by
    unfold C
    simp [show (1048576 * k + 414367) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1243102) = 1572864 * k + 621551 := by
    unfold C
    simp [show (3145728 * k + 1243102) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 621551) = 4718592 * k + 1864654 := by
    unfold C
    simp [show (1572864 * k + 621551) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1864654) = 2359296 * k + 932327 := by
    unfold C
    simp [show (4718592 * k + 1864654) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 932327) = 7077888 * k + 2796982 := by
    unfold C
    simp [show (2359296 * k + 932327) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 2796982) = 3538944 * k + 1398491 := by
    unfold C
    simp [show (7077888 * k + 2796982) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1398491) = 10616832 * k + 4195474 := by
    unfold C
    simp [show (3538944 * k + 1398491) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 4195474) = 5308416 * k + 2097737 := by
    unfold C
    simp [show (10616832 * k + 4195474) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 2097737) = 15925248 * k + 6293212 := by
    unfold C
    simp [show (5308416 * k + 2097737) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 6293212) = 7962624 * k + 3146606 := by
    unfold C
    simp [show (15925248 * k + 6293212) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 3146606) = 3981312 * k + 1573303 := by
    unfold C
    simp [show (7962624 * k + 3146606) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 1573303) = 11943936 * k + 4719910 := by
    unfold C
    simp [show (3981312 * k + 1573303) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 4719910) = 5971968 * k + 2359955 := by
    unfold C
    simp [show (11943936 * k + 4719910) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 2359955) = 17915904 * k + 7079866 := by
    unfold C
    simp [show (5971968 * k + 2359955) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 7079866) = 8957952 * k + 3539933 := by
    unfold C
    simp [show (17915904 * k + 7079866) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 3539933) = 26873856 * k + 10619800 := by
    unfold C
    simp [show (8957952 * k + 3539933) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 10619800) = 13436928 * k + 5309900 := by
    unfold C
    simp [show (26873856 * k + 10619800) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 5309900) = 6718464 * k + 2654950 := by
    unfold C
    simp [show (13436928 * k + 5309900) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 2654950) = 3359232 * k + 1327475 := by
    unfold C
    simp [show (6718464 * k + 2654950) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 1327475) = 10077696 * k + 3982426 := by
    unfold C
    simp [show (3359232 * k + 1327475) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 3982426) = 5038848 * k + 1991213 := by
    unfold C
    simp [show (10077696 * k + 3982426) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 1991213) = 15116544 * k + 5973640 := by
    unfold C
    simp [show (5038848 * k + 1991213) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 5973640) = 7558272 * k + 2986820 := by
    unfold C
    simp [show (15116544 * k + 5973640) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 2986820) = 3779136 * k + 1493410 := by
    unfold C
    simp [show (7558272 * k + 2986820) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 1493410) = 1889568 * k + 746705 := by
    unfold C
    simp [show (3779136 * k + 1493410) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 746705) = 5668704 * k + 2240116 := by
    unfold C
    simp [show (1889568 * k + 746705) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 2240116) = 2834352 * k + 1120058 := by
    unfold C
    simp [show (5668704 * k + 2240116) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1120058) = 1417176 * k + 560029 := by
    unfold C
    simp [show (2834352 * k + 1120058) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 560029) = 4251528 * k + 1680088 := by
    unfold C
    simp [show (1417176 * k + 560029) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 1680088) = 2125764 * k + 840044 := by
    unfold C
    simp [show (4251528 * k + 1680088) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 840044) = 1062882 * k + 420022 := by
    unfold C
    simp [show (2125764 * k + 840044) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 420022) = 531441 * k + 210011 := by
    unfold C
    simp [show (1062882 * k + 420022) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 414367) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 414367)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_414491 : ∀ k : Nat,
    iterate (1048576 * k + 414491) 32 = 531441 * k + 210074 ∧
      531441 * k + 210074 < 1048576 * k + 414491 := by
  intro k
  have h1 : C (1048576 * k + 414491) = 3145728 * k + 1243474 := by
    unfold C
    simp [show (1048576 * k + 414491) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1243474) = 1572864 * k + 621737 := by
    unfold C
    simp [show (3145728 * k + 1243474) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 621737) = 4718592 * k + 1865212 := by
    unfold C
    simp [show (1572864 * k + 621737) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1865212) = 2359296 * k + 932606 := by
    unfold C
    simp [show (4718592 * k + 1865212) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 932606) = 1179648 * k + 466303 := by
    unfold C
    simp [show (2359296 * k + 932606) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 466303) = 3538944 * k + 1398910 := by
    unfold C
    simp [show (1179648 * k + 466303) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 1398910) = 1769472 * k + 699455 := by
    unfold C
    simp [show (3538944 * k + 1398910) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 699455) = 5308416 * k + 2098366 := by
    unfold C
    simp [show (1769472 * k + 699455) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 2098366) = 2654208 * k + 1049183 := by
    unfold C
    simp [show (5308416 * k + 2098366) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1049183) = 7962624 * k + 3147550 := by
    unfold C
    simp [show (2654208 * k + 1049183) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 3147550) = 3981312 * k + 1573775 := by
    unfold C
    simp [show (7962624 * k + 3147550) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 1573775) = 11943936 * k + 4721326 := by
    unfold C
    simp [show (3981312 * k + 1573775) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 4721326) = 5971968 * k + 2360663 := by
    unfold C
    simp [show (11943936 * k + 4721326) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 2360663) = 17915904 * k + 7081990 := by
    unfold C
    simp [show (5971968 * k + 2360663) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 7081990) = 8957952 * k + 3540995 := by
    unfold C
    simp [show (17915904 * k + 7081990) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 3540995) = 26873856 * k + 10622986 := by
    unfold C
    simp [show (8957952 * k + 3540995) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 10622986) = 13436928 * k + 5311493 := by
    unfold C
    simp [show (26873856 * k + 10622986) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 5311493) = 40310784 * k + 15934480 := by
    unfold C
    simp [show (13436928 * k + 5311493) % 2 ≠ 0 by omega]
    omega
  have h19 : C (40310784 * k + 15934480) = 20155392 * k + 7967240 := by
    unfold C
    simp [show (40310784 * k + 15934480) % 2 = 0 by omega]
    omega
  have h20 : C (20155392 * k + 7967240) = 10077696 * k + 3983620 := by
    unfold C
    simp [show (20155392 * k + 7967240) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 3983620) = 5038848 * k + 1991810 := by
    unfold C
    simp [show (10077696 * k + 3983620) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 1991810) = 2519424 * k + 995905 := by
    unfold C
    simp [show (5038848 * k + 1991810) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 995905) = 7558272 * k + 2987716 := by
    unfold C
    simp [show (2519424 * k + 995905) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 2987716) = 3779136 * k + 1493858 := by
    unfold C
    simp [show (7558272 * k + 2987716) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 1493858) = 1889568 * k + 746929 := by
    unfold C
    simp [show (3779136 * k + 1493858) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 746929) = 5668704 * k + 2240788 := by
    unfold C
    simp [show (1889568 * k + 746929) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 2240788) = 2834352 * k + 1120394 := by
    unfold C
    simp [show (5668704 * k + 2240788) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1120394) = 1417176 * k + 560197 := by
    unfold C
    simp [show (2834352 * k + 1120394) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 560197) = 4251528 * k + 1680592 := by
    unfold C
    simp [show (1417176 * k + 560197) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 1680592) = 2125764 * k + 840296 := by
    unfold C
    simp [show (4251528 * k + 1680592) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 840296) = 1062882 * k + 420148 := by
    unfold C
    simp [show (2125764 * k + 840296) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 420148) = 531441 * k + 210074 := by
    unfold C
    simp [show (1062882 * k + 420148) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 414491) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 414491)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_414495 : ∀ k : Nat,
    iterate (1048576 * k + 414495) 32 = 531441 * k + 210076 ∧
      531441 * k + 210076 < 1048576 * k + 414495 := by
  intro k
  have h1 : C (1048576 * k + 414495) = 3145728 * k + 1243486 := by
    unfold C
    simp [show (1048576 * k + 414495) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1243486) = 1572864 * k + 621743 := by
    unfold C
    simp [show (3145728 * k + 1243486) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 621743) = 4718592 * k + 1865230 := by
    unfold C
    simp [show (1572864 * k + 621743) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1865230) = 2359296 * k + 932615 := by
    unfold C
    simp [show (4718592 * k + 1865230) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 932615) = 7077888 * k + 2797846 := by
    unfold C
    simp [show (2359296 * k + 932615) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 2797846) = 3538944 * k + 1398923 := by
    unfold C
    simp [show (7077888 * k + 2797846) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1398923) = 10616832 * k + 4196770 := by
    unfold C
    simp [show (3538944 * k + 1398923) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 4196770) = 5308416 * k + 2098385 := by
    unfold C
    simp [show (10616832 * k + 4196770) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 2098385) = 15925248 * k + 6295156 := by
    unfold C
    simp [show (5308416 * k + 2098385) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 6295156) = 7962624 * k + 3147578 := by
    unfold C
    simp [show (15925248 * k + 6295156) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 3147578) = 3981312 * k + 1573789 := by
    unfold C
    simp [show (7962624 * k + 3147578) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 1573789) = 11943936 * k + 4721368 := by
    unfold C
    simp [show (3981312 * k + 1573789) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 4721368) = 5971968 * k + 2360684 := by
    unfold C
    simp [show (11943936 * k + 4721368) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 2360684) = 2985984 * k + 1180342 := by
    unfold C
    simp [show (5971968 * k + 2360684) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1180342) = 1492992 * k + 590171 := by
    unfold C
    simp [show (2985984 * k + 1180342) % 2 = 0 by omega]
    omega
  have h16 : C (1492992 * k + 590171) = 4478976 * k + 1770514 := by
    unfold C
    simp [show (1492992 * k + 590171) % 2 ≠ 0 by omega]
    omega
  have h17 : C (4478976 * k + 1770514) = 2239488 * k + 885257 := by
    unfold C
    simp [show (4478976 * k + 1770514) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 885257) = 6718464 * k + 2655772 := by
    unfold C
    simp [show (2239488 * k + 885257) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 2655772) = 3359232 * k + 1327886 := by
    unfold C
    simp [show (6718464 * k + 2655772) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 1327886) = 1679616 * k + 663943 := by
    unfold C
    simp [show (3359232 * k + 1327886) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 663943) = 5038848 * k + 1991830 := by
    unfold C
    simp [show (1679616 * k + 663943) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 1991830) = 2519424 * k + 995915 := by
    unfold C
    simp [show (5038848 * k + 1991830) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 995915) = 7558272 * k + 2987746 := by
    unfold C
    simp [show (2519424 * k + 995915) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 2987746) = 3779136 * k + 1493873 := by
    unfold C
    simp [show (7558272 * k + 2987746) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 1493873) = 11337408 * k + 4481620 := by
    unfold C
    simp [show (3779136 * k + 1493873) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 4481620) = 5668704 * k + 2240810 := by
    unfold C
    simp [show (11337408 * k + 4481620) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 2240810) = 2834352 * k + 1120405 := by
    unfold C
    simp [show (5668704 * k + 2240810) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1120405) = 8503056 * k + 3361216 := by
    unfold C
    simp [show (2834352 * k + 1120405) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 3361216) = 4251528 * k + 1680608 := by
    unfold C
    simp [show (8503056 * k + 3361216) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 1680608) = 2125764 * k + 840304 := by
    unfold C
    simp [show (4251528 * k + 1680608) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 840304) = 1062882 * k + 420152 := by
    unfold C
    simp [show (2125764 * k + 840304) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 420152) = 531441 * k + 210076 := by
    unfold C
    simp [show (1062882 * k + 420152) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 414495) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 414495)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_414767 : ∀ k : Nat,
    iterate (1048576 * k + 414767) 32 = 531441 * k + 210214 ∧
      531441 * k + 210214 < 1048576 * k + 414767 := by
  intro k
  have h1 : C (1048576 * k + 414767) = 3145728 * k + 1244302 := by
    unfold C
    simp [show (1048576 * k + 414767) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1244302) = 1572864 * k + 622151 := by
    unfold C
    simp [show (3145728 * k + 1244302) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 622151) = 4718592 * k + 1866454 := by
    unfold C
    simp [show (1572864 * k + 622151) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1866454) = 2359296 * k + 933227 := by
    unfold C
    simp [show (4718592 * k + 1866454) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 933227) = 7077888 * k + 2799682 := by
    unfold C
    simp [show (2359296 * k + 933227) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 2799682) = 3538944 * k + 1399841 := by
    unfold C
    simp [show (7077888 * k + 2799682) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1399841) = 10616832 * k + 4199524 := by
    unfold C
    simp [show (3538944 * k + 1399841) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 4199524) = 5308416 * k + 2099762 := by
    unfold C
    simp [show (10616832 * k + 4199524) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 2099762) = 2654208 * k + 1049881 := by
    unfold C
    simp [show (5308416 * k + 2099762) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1049881) = 7962624 * k + 3149644 := by
    unfold C
    simp [show (2654208 * k + 1049881) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 3149644) = 3981312 * k + 1574822 := by
    unfold C
    simp [show (7962624 * k + 3149644) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 1574822) = 1990656 * k + 787411 := by
    unfold C
    simp [show (3981312 * k + 1574822) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 787411) = 5971968 * k + 2362234 := by
    unfold C
    simp [show (1990656 * k + 787411) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 2362234) = 2985984 * k + 1181117 := by
    unfold C
    simp [show (5971968 * k + 2362234) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1181117) = 8957952 * k + 3543352 := by
    unfold C
    simp [show (2985984 * k + 1181117) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 3543352) = 4478976 * k + 1771676 := by
    unfold C
    simp [show (8957952 * k + 3543352) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 1771676) = 2239488 * k + 885838 := by
    unfold C
    simp [show (4478976 * k + 1771676) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 885838) = 1119744 * k + 442919 := by
    unfold C
    simp [show (2239488 * k + 885838) % 2 = 0 by omega]
    omega
  have h19 : C (1119744 * k + 442919) = 3359232 * k + 1328758 := by
    unfold C
    simp [show (1119744 * k + 442919) % 2 ≠ 0 by omega]
    omega
  have h20 : C (3359232 * k + 1328758) = 1679616 * k + 664379 := by
    unfold C
    simp [show (3359232 * k + 1328758) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 664379) = 5038848 * k + 1993138 := by
    unfold C
    simp [show (1679616 * k + 664379) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 1993138) = 2519424 * k + 996569 := by
    unfold C
    simp [show (5038848 * k + 1993138) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 996569) = 7558272 * k + 2989708 := by
    unfold C
    simp [show (2519424 * k + 996569) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 2989708) = 3779136 * k + 1494854 := by
    unfold C
    simp [show (7558272 * k + 2989708) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 1494854) = 1889568 * k + 747427 := by
    unfold C
    simp [show (3779136 * k + 1494854) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 747427) = 5668704 * k + 2242282 := by
    unfold C
    simp [show (1889568 * k + 747427) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 2242282) = 2834352 * k + 1121141 := by
    unfold C
    simp [show (5668704 * k + 2242282) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1121141) = 8503056 * k + 3363424 := by
    unfold C
    simp [show (2834352 * k + 1121141) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 3363424) = 4251528 * k + 1681712 := by
    unfold C
    simp [show (8503056 * k + 3363424) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 1681712) = 2125764 * k + 840856 := by
    unfold C
    simp [show (4251528 * k + 1681712) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 840856) = 1062882 * k + 420428 := by
    unfold C
    simp [show (2125764 * k + 840856) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 420428) = 531441 * k + 210214 := by
    unfold C
    simp [show (1062882 * k + 420428) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 414767) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 414767)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_414975 : ∀ k : Nat,
    iterate (1048576 * k + 414975) 32 = 531441 * k + 210319 ∧
      531441 * k + 210319 < 1048576 * k + 414975 := by
  intro k
  have h1 : C (1048576 * k + 414975) = 3145728 * k + 1244926 := by
    unfold C
    simp [show (1048576 * k + 414975) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1244926) = 1572864 * k + 622463 := by
    unfold C
    simp [show (3145728 * k + 1244926) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 622463) = 4718592 * k + 1867390 := by
    unfold C
    simp [show (1572864 * k + 622463) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1867390) = 2359296 * k + 933695 := by
    unfold C
    simp [show (4718592 * k + 1867390) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 933695) = 7077888 * k + 2801086 := by
    unfold C
    simp [show (2359296 * k + 933695) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 2801086) = 3538944 * k + 1400543 := by
    unfold C
    simp [show (7077888 * k + 2801086) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1400543) = 10616832 * k + 4201630 := by
    unfold C
    simp [show (3538944 * k + 1400543) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 4201630) = 5308416 * k + 2100815 := by
    unfold C
    simp [show (10616832 * k + 4201630) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 2100815) = 15925248 * k + 6302446 := by
    unfold C
    simp [show (5308416 * k + 2100815) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 6302446) = 7962624 * k + 3151223 := by
    unfold C
    simp [show (15925248 * k + 6302446) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 3151223) = 23887872 * k + 9453670 := by
    unfold C
    simp [show (7962624 * k + 3151223) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 9453670) = 11943936 * k + 4726835 := by
    unfold C
    simp [show (23887872 * k + 9453670) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 4726835) = 35831808 * k + 14180506 := by
    unfold C
    simp [show (11943936 * k + 4726835) % 2 ≠ 0 by omega]
    omega
  have h14 : C (35831808 * k + 14180506) = 17915904 * k + 7090253 := by
    unfold C
    simp [show (35831808 * k + 14180506) % 2 = 0 by omega]
    omega
  have h15 : C (17915904 * k + 7090253) = 53747712 * k + 21270760 := by
    unfold C
    simp [show (17915904 * k + 7090253) % 2 ≠ 0 by omega]
    omega
  have h16 : C (53747712 * k + 21270760) = 26873856 * k + 10635380 := by
    unfold C
    simp [show (53747712 * k + 21270760) % 2 = 0 by omega]
    omega
  have h17 : C (26873856 * k + 10635380) = 13436928 * k + 5317690 := by
    unfold C
    simp [show (26873856 * k + 10635380) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 5317690) = 6718464 * k + 2658845 := by
    unfold C
    simp [show (13436928 * k + 5317690) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 2658845) = 20155392 * k + 7976536 := by
    unfold C
    simp [show (6718464 * k + 2658845) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 7976536) = 10077696 * k + 3988268 := by
    unfold C
    simp [show (20155392 * k + 7976536) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 3988268) = 5038848 * k + 1994134 := by
    unfold C
    simp [show (10077696 * k + 3988268) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 1994134) = 2519424 * k + 997067 := by
    unfold C
    simp [show (5038848 * k + 1994134) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 997067) = 7558272 * k + 2991202 := by
    unfold C
    simp [show (2519424 * k + 997067) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 2991202) = 3779136 * k + 1495601 := by
    unfold C
    simp [show (7558272 * k + 2991202) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 1495601) = 11337408 * k + 4486804 := by
    unfold C
    simp [show (3779136 * k + 1495601) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 4486804) = 5668704 * k + 2243402 := by
    unfold C
    simp [show (11337408 * k + 4486804) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 2243402) = 2834352 * k + 1121701 := by
    unfold C
    simp [show (5668704 * k + 2243402) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1121701) = 8503056 * k + 3365104 := by
    unfold C
    simp [show (2834352 * k + 1121701) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 3365104) = 4251528 * k + 1682552 := by
    unfold C
    simp [show (8503056 * k + 3365104) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 1682552) = 2125764 * k + 841276 := by
    unfold C
    simp [show (4251528 * k + 1682552) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 841276) = 1062882 * k + 420638 := by
    unfold C
    simp [show (2125764 * k + 841276) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 420638) = 531441 * k + 210319 := by
    unfold C
    simp [show (1062882 * k + 420638) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 414975) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 414975)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_415655 : ∀ k : Nat,
    iterate (1048576 * k + 415655) 32 = 531441 * k + 210664 ∧
      531441 * k + 210664 < 1048576 * k + 415655 := by
  intro k
  have h1 : C (1048576 * k + 415655) = 3145728 * k + 1246966 := by
    unfold C
    simp [show (1048576 * k + 415655) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1246966) = 1572864 * k + 623483 := by
    unfold C
    simp [show (3145728 * k + 1246966) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 623483) = 4718592 * k + 1870450 := by
    unfold C
    simp [show (1572864 * k + 623483) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1870450) = 2359296 * k + 935225 := by
    unfold C
    simp [show (4718592 * k + 1870450) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 935225) = 7077888 * k + 2805676 := by
    unfold C
    simp [show (2359296 * k + 935225) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 2805676) = 3538944 * k + 1402838 := by
    unfold C
    simp [show (7077888 * k + 2805676) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1402838) = 1769472 * k + 701419 := by
    unfold C
    simp [show (3538944 * k + 1402838) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 701419) = 5308416 * k + 2104258 := by
    unfold C
    simp [show (1769472 * k + 701419) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 2104258) = 2654208 * k + 1052129 := by
    unfold C
    simp [show (5308416 * k + 2104258) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1052129) = 7962624 * k + 3156388 := by
    unfold C
    simp [show (2654208 * k + 1052129) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 3156388) = 3981312 * k + 1578194 := by
    unfold C
    simp [show (7962624 * k + 3156388) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 1578194) = 1990656 * k + 789097 := by
    unfold C
    simp [show (3981312 * k + 1578194) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 789097) = 5971968 * k + 2367292 := by
    unfold C
    simp [show (1990656 * k + 789097) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 2367292) = 2985984 * k + 1183646 := by
    unfold C
    simp [show (5971968 * k + 2367292) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1183646) = 1492992 * k + 591823 := by
    unfold C
    simp [show (2985984 * k + 1183646) % 2 = 0 by omega]
    omega
  have h16 : C (1492992 * k + 591823) = 4478976 * k + 1775470 := by
    unfold C
    simp [show (1492992 * k + 591823) % 2 ≠ 0 by omega]
    omega
  have h17 : C (4478976 * k + 1775470) = 2239488 * k + 887735 := by
    unfold C
    simp [show (4478976 * k + 1775470) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 887735) = 6718464 * k + 2663206 := by
    unfold C
    simp [show (2239488 * k + 887735) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 2663206) = 3359232 * k + 1331603 := by
    unfold C
    simp [show (6718464 * k + 2663206) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 1331603) = 10077696 * k + 3994810 := by
    unfold C
    simp [show (3359232 * k + 1331603) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 3994810) = 5038848 * k + 1997405 := by
    unfold C
    simp [show (10077696 * k + 3994810) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 1997405) = 15116544 * k + 5992216 := by
    unfold C
    simp [show (5038848 * k + 1997405) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 5992216) = 7558272 * k + 2996108 := by
    unfold C
    simp [show (15116544 * k + 5992216) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 2996108) = 3779136 * k + 1498054 := by
    unfold C
    simp [show (7558272 * k + 2996108) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 1498054) = 1889568 * k + 749027 := by
    unfold C
    simp [show (3779136 * k + 1498054) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 749027) = 5668704 * k + 2247082 := by
    unfold C
    simp [show (1889568 * k + 749027) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 2247082) = 2834352 * k + 1123541 := by
    unfold C
    simp [show (5668704 * k + 2247082) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1123541) = 8503056 * k + 3370624 := by
    unfold C
    simp [show (2834352 * k + 1123541) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 3370624) = 4251528 * k + 1685312 := by
    unfold C
    simp [show (8503056 * k + 3370624) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 1685312) = 2125764 * k + 842656 := by
    unfold C
    simp [show (4251528 * k + 1685312) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 842656) = 1062882 * k + 421328 := by
    unfold C
    simp [show (2125764 * k + 842656) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 421328) = 531441 * k + 210664 := by
    unfold C
    simp [show (1062882 * k + 421328) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 415655) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 415655)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_415983 : ∀ k : Nat,
    iterate (1048576 * k + 415983) 32 = 531441 * k + 210830 ∧
      531441 * k + 210830 < 1048576 * k + 415983 := by
  intro k
  have h1 : C (1048576 * k + 415983) = 3145728 * k + 1247950 := by
    unfold C
    simp [show (1048576 * k + 415983) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1247950) = 1572864 * k + 623975 := by
    unfold C
    simp [show (3145728 * k + 1247950) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 623975) = 4718592 * k + 1871926 := by
    unfold C
    simp [show (1572864 * k + 623975) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1871926) = 2359296 * k + 935963 := by
    unfold C
    simp [show (4718592 * k + 1871926) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 935963) = 7077888 * k + 2807890 := by
    unfold C
    simp [show (2359296 * k + 935963) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 2807890) = 3538944 * k + 1403945 := by
    unfold C
    simp [show (7077888 * k + 2807890) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1403945) = 10616832 * k + 4211836 := by
    unfold C
    simp [show (3538944 * k + 1403945) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 4211836) = 5308416 * k + 2105918 := by
    unfold C
    simp [show (10616832 * k + 4211836) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 2105918) = 2654208 * k + 1052959 := by
    unfold C
    simp [show (5308416 * k + 2105918) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1052959) = 7962624 * k + 3158878 := by
    unfold C
    simp [show (2654208 * k + 1052959) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 3158878) = 3981312 * k + 1579439 := by
    unfold C
    simp [show (7962624 * k + 3158878) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 1579439) = 11943936 * k + 4738318 := by
    unfold C
    simp [show (3981312 * k + 1579439) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 4738318) = 5971968 * k + 2369159 := by
    unfold C
    simp [show (11943936 * k + 4738318) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 2369159) = 17915904 * k + 7107478 := by
    unfold C
    simp [show (5971968 * k + 2369159) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 7107478) = 8957952 * k + 3553739 := by
    unfold C
    simp [show (17915904 * k + 7107478) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 3553739) = 26873856 * k + 10661218 := by
    unfold C
    simp [show (8957952 * k + 3553739) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 10661218) = 13436928 * k + 5330609 := by
    unfold C
    simp [show (26873856 * k + 10661218) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 5330609) = 40310784 * k + 15991828 := by
    unfold C
    simp [show (13436928 * k + 5330609) % 2 ≠ 0 by omega]
    omega
  have h19 : C (40310784 * k + 15991828) = 20155392 * k + 7995914 := by
    unfold C
    simp [show (40310784 * k + 15991828) % 2 = 0 by omega]
    omega
  have h20 : C (20155392 * k + 7995914) = 10077696 * k + 3997957 := by
    unfold C
    simp [show (20155392 * k + 7995914) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 3997957) = 30233088 * k + 11993872 := by
    unfold C
    simp [show (10077696 * k + 3997957) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 11993872) = 15116544 * k + 5996936 := by
    unfold C
    simp [show (30233088 * k + 11993872) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 5996936) = 7558272 * k + 2998468 := by
    unfold C
    simp [show (15116544 * k + 5996936) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 2998468) = 3779136 * k + 1499234 := by
    unfold C
    simp [show (7558272 * k + 2998468) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 1499234) = 1889568 * k + 749617 := by
    unfold C
    simp [show (3779136 * k + 1499234) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 749617) = 5668704 * k + 2248852 := by
    unfold C
    simp [show (1889568 * k + 749617) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 2248852) = 2834352 * k + 1124426 := by
    unfold C
    simp [show (5668704 * k + 2248852) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1124426) = 1417176 * k + 562213 := by
    unfold C
    simp [show (2834352 * k + 1124426) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 562213) = 4251528 * k + 1686640 := by
    unfold C
    simp [show (1417176 * k + 562213) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 1686640) = 2125764 * k + 843320 := by
    unfold C
    simp [show (4251528 * k + 1686640) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 843320) = 1062882 * k + 421660 := by
    unfold C
    simp [show (2125764 * k + 843320) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 421660) = 531441 * k + 210830 := by
    unfold C
    simp [show (1062882 * k + 421660) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 415983) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 415983)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

end CollatzM20Shard052
