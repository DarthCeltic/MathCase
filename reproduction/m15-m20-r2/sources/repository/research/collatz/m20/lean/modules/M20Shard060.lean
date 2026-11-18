import Mathlib.Data.Nat.Prime.Basic

namespace CollatzM20Shard060

def C (n : Nat) : Nat := if n % 2 = 0 then n / 2 else 3 * n + 1

def iterate (n t : Nat) : Nat := Nat.rec n (fun _ previous => C previous) t

theorem descent_mod1048576_470811 : ∀ k : Nat,
    iterate (1048576 * k + 470811) 32 = 531441 * k + 238618 ∧
      531441 * k + 238618 < 1048576 * k + 470811 := by
  intro k
  have h1 : C (1048576 * k + 470811) = 3145728 * k + 1412434 := by
    unfold C
    simp [show (1048576 * k + 470811) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1412434) = 1572864 * k + 706217 := by
    unfold C
    simp [show (3145728 * k + 1412434) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 706217) = 4718592 * k + 2118652 := by
    unfold C
    simp [show (1572864 * k + 706217) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2118652) = 2359296 * k + 1059326 := by
    unfold C
    simp [show (4718592 * k + 2118652) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1059326) = 1179648 * k + 529663 := by
    unfold C
    simp [show (2359296 * k + 1059326) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 529663) = 3538944 * k + 1588990 := by
    unfold C
    simp [show (1179648 * k + 529663) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 1588990) = 1769472 * k + 794495 := by
    unfold C
    simp [show (3538944 * k + 1588990) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 794495) = 5308416 * k + 2383486 := by
    unfold C
    simp [show (1769472 * k + 794495) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 2383486) = 2654208 * k + 1191743 := by
    unfold C
    simp [show (5308416 * k + 2383486) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1191743) = 7962624 * k + 3575230 := by
    unfold C
    simp [show (2654208 * k + 1191743) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 3575230) = 3981312 * k + 1787615 := by
    unfold C
    simp [show (7962624 * k + 3575230) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 1787615) = 11943936 * k + 5362846 := by
    unfold C
    simp [show (3981312 * k + 1787615) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 5362846) = 5971968 * k + 2681423 := by
    unfold C
    simp [show (11943936 * k + 5362846) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 2681423) = 17915904 * k + 8044270 := by
    unfold C
    simp [show (5971968 * k + 2681423) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 8044270) = 8957952 * k + 4022135 := by
    unfold C
    simp [show (17915904 * k + 8044270) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 4022135) = 26873856 * k + 12066406 := by
    unfold C
    simp [show (8957952 * k + 4022135) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 12066406) = 13436928 * k + 6033203 := by
    unfold C
    simp [show (26873856 * k + 12066406) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 6033203) = 40310784 * k + 18099610 := by
    unfold C
    simp [show (13436928 * k + 6033203) % 2 ≠ 0 by omega]
    omega
  have h19 : C (40310784 * k + 18099610) = 20155392 * k + 9049805 := by
    unfold C
    simp [show (40310784 * k + 18099610) % 2 = 0 by omega]
    omega
  have h20 : C (20155392 * k + 9049805) = 60466176 * k + 27149416 := by
    unfold C
    simp [show (20155392 * k + 9049805) % 2 ≠ 0 by omega]
    omega
  have h21 : C (60466176 * k + 27149416) = 30233088 * k + 13574708 := by
    unfold C
    simp [show (60466176 * k + 27149416) % 2 = 0 by omega]
    omega
  have h22 : C (30233088 * k + 13574708) = 15116544 * k + 6787354 := by
    unfold C
    simp [show (30233088 * k + 13574708) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 6787354) = 7558272 * k + 3393677 := by
    unfold C
    simp [show (15116544 * k + 6787354) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 3393677) = 22674816 * k + 10181032 := by
    unfold C
    simp [show (7558272 * k + 3393677) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 10181032) = 11337408 * k + 5090516 := by
    unfold C
    simp [show (22674816 * k + 10181032) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 5090516) = 5668704 * k + 2545258 := by
    unfold C
    simp [show (11337408 * k + 5090516) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 2545258) = 2834352 * k + 1272629 := by
    unfold C
    simp [show (5668704 * k + 2545258) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1272629) = 8503056 * k + 3817888 := by
    unfold C
    simp [show (2834352 * k + 1272629) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 3817888) = 4251528 * k + 1908944 := by
    unfold C
    simp [show (8503056 * k + 3817888) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 1908944) = 2125764 * k + 954472 := by
    unfold C
    simp [show (4251528 * k + 1908944) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 954472) = 1062882 * k + 477236 := by
    unfold C
    simp [show (2125764 * k + 954472) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 477236) = 531441 * k + 238618 := by
    unfold C
    simp [show (1062882 * k + 477236) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 470811) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 470811)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_470943 : ∀ k : Nat,
    iterate (1048576 * k + 470943) 32 = 531441 * k + 238685 ∧
      531441 * k + 238685 < 1048576 * k + 470943 := by
  intro k
  have h1 : C (1048576 * k + 470943) = 3145728 * k + 1412830 := by
    unfold C
    simp [show (1048576 * k + 470943) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1412830) = 1572864 * k + 706415 := by
    unfold C
    simp [show (3145728 * k + 1412830) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 706415) = 4718592 * k + 2119246 := by
    unfold C
    simp [show (1572864 * k + 706415) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2119246) = 2359296 * k + 1059623 := by
    unfold C
    simp [show (4718592 * k + 2119246) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1059623) = 7077888 * k + 3178870 := by
    unfold C
    simp [show (2359296 * k + 1059623) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 3178870) = 3538944 * k + 1589435 := by
    unfold C
    simp [show (7077888 * k + 3178870) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1589435) = 10616832 * k + 4768306 := by
    unfold C
    simp [show (3538944 * k + 1589435) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 4768306) = 5308416 * k + 2384153 := by
    unfold C
    simp [show (10616832 * k + 4768306) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 2384153) = 15925248 * k + 7152460 := by
    unfold C
    simp [show (5308416 * k + 2384153) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 7152460) = 7962624 * k + 3576230 := by
    unfold C
    simp [show (15925248 * k + 7152460) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 3576230) = 3981312 * k + 1788115 := by
    unfold C
    simp [show (7962624 * k + 3576230) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 1788115) = 11943936 * k + 5364346 := by
    unfold C
    simp [show (3981312 * k + 1788115) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 5364346) = 5971968 * k + 2682173 := by
    unfold C
    simp [show (11943936 * k + 5364346) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 2682173) = 17915904 * k + 8046520 := by
    unfold C
    simp [show (5971968 * k + 2682173) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 8046520) = 8957952 * k + 4023260 := by
    unfold C
    simp [show (17915904 * k + 8046520) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 4023260) = 4478976 * k + 2011630 := by
    unfold C
    simp [show (8957952 * k + 4023260) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 2011630) = 2239488 * k + 1005815 := by
    unfold C
    simp [show (4478976 * k + 2011630) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 1005815) = 6718464 * k + 3017446 := by
    unfold C
    simp [show (2239488 * k + 1005815) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 3017446) = 3359232 * k + 1508723 := by
    unfold C
    simp [show (6718464 * k + 3017446) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 1508723) = 10077696 * k + 4526170 := by
    unfold C
    simp [show (3359232 * k + 1508723) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 4526170) = 5038848 * k + 2263085 := by
    unfold C
    simp [show (10077696 * k + 4526170) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 2263085) = 15116544 * k + 6789256 := by
    unfold C
    simp [show (5038848 * k + 2263085) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 6789256) = 7558272 * k + 3394628 := by
    unfold C
    simp [show (15116544 * k + 6789256) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 3394628) = 3779136 * k + 1697314 := by
    unfold C
    simp [show (7558272 * k + 3394628) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 1697314) = 1889568 * k + 848657 := by
    unfold C
    simp [show (3779136 * k + 1697314) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 848657) = 5668704 * k + 2545972 := by
    unfold C
    simp [show (1889568 * k + 848657) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 2545972) = 2834352 * k + 1272986 := by
    unfold C
    simp [show (5668704 * k + 2545972) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1272986) = 1417176 * k + 636493 := by
    unfold C
    simp [show (2834352 * k + 1272986) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 636493) = 4251528 * k + 1909480 := by
    unfold C
    simp [show (1417176 * k + 636493) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 1909480) = 2125764 * k + 954740 := by
    unfold C
    simp [show (4251528 * k + 1909480) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 954740) = 1062882 * k + 477370 := by
    unfold C
    simp [show (2125764 * k + 954740) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 477370) = 531441 * k + 238685 := by
    unfold C
    simp [show (1062882 * k + 477370) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 470943) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 470943)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_471067 : ∀ k : Nat,
    iterate (1048576 * k + 471067) 32 = 531441 * k + 238748 ∧
      531441 * k + 238748 < 1048576 * k + 471067 := by
  intro k
  have h1 : C (1048576 * k + 471067) = 3145728 * k + 1413202 := by
    unfold C
    simp [show (1048576 * k + 471067) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1413202) = 1572864 * k + 706601 := by
    unfold C
    simp [show (3145728 * k + 1413202) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 706601) = 4718592 * k + 2119804 := by
    unfold C
    simp [show (1572864 * k + 706601) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2119804) = 2359296 * k + 1059902 := by
    unfold C
    simp [show (4718592 * k + 2119804) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1059902) = 1179648 * k + 529951 := by
    unfold C
    simp [show (2359296 * k + 1059902) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 529951) = 3538944 * k + 1589854 := by
    unfold C
    simp [show (1179648 * k + 529951) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 1589854) = 1769472 * k + 794927 := by
    unfold C
    simp [show (3538944 * k + 1589854) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 794927) = 5308416 * k + 2384782 := by
    unfold C
    simp [show (1769472 * k + 794927) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 2384782) = 2654208 * k + 1192391 := by
    unfold C
    simp [show (5308416 * k + 2384782) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1192391) = 7962624 * k + 3577174 := by
    unfold C
    simp [show (2654208 * k + 1192391) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 3577174) = 3981312 * k + 1788587 := by
    unfold C
    simp [show (7962624 * k + 3577174) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 1788587) = 11943936 * k + 5365762 := by
    unfold C
    simp [show (3981312 * k + 1788587) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 5365762) = 5971968 * k + 2682881 := by
    unfold C
    simp [show (11943936 * k + 5365762) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 2682881) = 17915904 * k + 8048644 := by
    unfold C
    simp [show (5971968 * k + 2682881) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 8048644) = 8957952 * k + 4024322 := by
    unfold C
    simp [show (17915904 * k + 8048644) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 4024322) = 4478976 * k + 2012161 := by
    unfold C
    simp [show (8957952 * k + 4024322) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 2012161) = 13436928 * k + 6036484 := by
    unfold C
    simp [show (4478976 * k + 2012161) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 6036484) = 6718464 * k + 3018242 := by
    unfold C
    simp [show (13436928 * k + 6036484) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 3018242) = 3359232 * k + 1509121 := by
    unfold C
    simp [show (6718464 * k + 3018242) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 1509121) = 10077696 * k + 4527364 := by
    unfold C
    simp [show (3359232 * k + 1509121) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 4527364) = 5038848 * k + 2263682 := by
    unfold C
    simp [show (10077696 * k + 4527364) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 2263682) = 2519424 * k + 1131841 := by
    unfold C
    simp [show (5038848 * k + 2263682) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1131841) = 7558272 * k + 3395524 := by
    unfold C
    simp [show (2519424 * k + 1131841) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 3395524) = 3779136 * k + 1697762 := by
    unfold C
    simp [show (7558272 * k + 3395524) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 1697762) = 1889568 * k + 848881 := by
    unfold C
    simp [show (3779136 * k + 1697762) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 848881) = 5668704 * k + 2546644 := by
    unfold C
    simp [show (1889568 * k + 848881) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 2546644) = 2834352 * k + 1273322 := by
    unfold C
    simp [show (5668704 * k + 2546644) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1273322) = 1417176 * k + 636661 := by
    unfold C
    simp [show (2834352 * k + 1273322) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 636661) = 4251528 * k + 1909984 := by
    unfold C
    simp [show (1417176 * k + 636661) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 1909984) = 2125764 * k + 954992 := by
    unfold C
    simp [show (4251528 * k + 1909984) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 954992) = 1062882 * k + 477496 := by
    unfold C
    simp [show (2125764 * k + 954992) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 477496) = 531441 * k + 238748 := by
    unfold C
    simp [show (1062882 * k + 477496) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 471067) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 471067)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_471231 : ∀ k : Nat,
    iterate (1048576 * k + 471231) 32 = 531441 * k + 238831 ∧
      531441 * k + 238831 < 1048576 * k + 471231 := by
  intro k
  have h1 : C (1048576 * k + 471231) = 3145728 * k + 1413694 := by
    unfold C
    simp [show (1048576 * k + 471231) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1413694) = 1572864 * k + 706847 := by
    unfold C
    simp [show (3145728 * k + 1413694) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 706847) = 4718592 * k + 2120542 := by
    unfold C
    simp [show (1572864 * k + 706847) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2120542) = 2359296 * k + 1060271 := by
    unfold C
    simp [show (4718592 * k + 2120542) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1060271) = 7077888 * k + 3180814 := by
    unfold C
    simp [show (2359296 * k + 1060271) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 3180814) = 3538944 * k + 1590407 := by
    unfold C
    simp [show (7077888 * k + 3180814) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1590407) = 10616832 * k + 4771222 := by
    unfold C
    simp [show (3538944 * k + 1590407) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 4771222) = 5308416 * k + 2385611 := by
    unfold C
    simp [show (10616832 * k + 4771222) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 2385611) = 15925248 * k + 7156834 := by
    unfold C
    simp [show (5308416 * k + 2385611) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 7156834) = 7962624 * k + 3578417 := by
    unfold C
    simp [show (15925248 * k + 7156834) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 3578417) = 23887872 * k + 10735252 := by
    unfold C
    simp [show (7962624 * k + 3578417) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 10735252) = 11943936 * k + 5367626 := by
    unfold C
    simp [show (23887872 * k + 10735252) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 5367626) = 5971968 * k + 2683813 := by
    unfold C
    simp [show (11943936 * k + 5367626) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 2683813) = 17915904 * k + 8051440 := by
    unfold C
    simp [show (5971968 * k + 2683813) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 8051440) = 8957952 * k + 4025720 := by
    unfold C
    simp [show (17915904 * k + 8051440) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 4025720) = 4478976 * k + 2012860 := by
    unfold C
    simp [show (8957952 * k + 4025720) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 2012860) = 2239488 * k + 1006430 := by
    unfold C
    simp [show (4478976 * k + 2012860) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 1006430) = 1119744 * k + 503215 := by
    unfold C
    simp [show (2239488 * k + 1006430) % 2 = 0 by omega]
    omega
  have h19 : C (1119744 * k + 503215) = 3359232 * k + 1509646 := by
    unfold C
    simp [show (1119744 * k + 503215) % 2 ≠ 0 by omega]
    omega
  have h20 : C (3359232 * k + 1509646) = 1679616 * k + 754823 := by
    unfold C
    simp [show (3359232 * k + 1509646) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 754823) = 5038848 * k + 2264470 := by
    unfold C
    simp [show (1679616 * k + 754823) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 2264470) = 2519424 * k + 1132235 := by
    unfold C
    simp [show (5038848 * k + 2264470) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1132235) = 7558272 * k + 3396706 := by
    unfold C
    simp [show (2519424 * k + 1132235) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 3396706) = 3779136 * k + 1698353 := by
    unfold C
    simp [show (7558272 * k + 3396706) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 1698353) = 11337408 * k + 5095060 := by
    unfold C
    simp [show (3779136 * k + 1698353) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 5095060) = 5668704 * k + 2547530 := by
    unfold C
    simp [show (11337408 * k + 5095060) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 2547530) = 2834352 * k + 1273765 := by
    unfold C
    simp [show (5668704 * k + 2547530) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1273765) = 8503056 * k + 3821296 := by
    unfold C
    simp [show (2834352 * k + 1273765) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 3821296) = 4251528 * k + 1910648 := by
    unfold C
    simp [show (8503056 * k + 3821296) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 1910648) = 2125764 * k + 955324 := by
    unfold C
    simp [show (4251528 * k + 1910648) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 955324) = 1062882 * k + 477662 := by
    unfold C
    simp [show (2125764 * k + 955324) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 477662) = 531441 * k + 238831 := by
    unfold C
    simp [show (1062882 * k + 477662) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 471231) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 471231)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_471343 : ∀ k : Nat,
    iterate (1048576 * k + 471343) 32 = 531441 * k + 238888 ∧
      531441 * k + 238888 < 1048576 * k + 471343 := by
  intro k
  have h1 : C (1048576 * k + 471343) = 3145728 * k + 1414030 := by
    unfold C
    simp [show (1048576 * k + 471343) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1414030) = 1572864 * k + 707015 := by
    unfold C
    simp [show (3145728 * k + 1414030) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 707015) = 4718592 * k + 2121046 := by
    unfold C
    simp [show (1572864 * k + 707015) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2121046) = 2359296 * k + 1060523 := by
    unfold C
    simp [show (4718592 * k + 2121046) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1060523) = 7077888 * k + 3181570 := by
    unfold C
    simp [show (2359296 * k + 1060523) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 3181570) = 3538944 * k + 1590785 := by
    unfold C
    simp [show (7077888 * k + 3181570) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1590785) = 10616832 * k + 4772356 := by
    unfold C
    simp [show (3538944 * k + 1590785) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 4772356) = 5308416 * k + 2386178 := by
    unfold C
    simp [show (10616832 * k + 4772356) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 2386178) = 2654208 * k + 1193089 := by
    unfold C
    simp [show (5308416 * k + 2386178) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1193089) = 7962624 * k + 3579268 := by
    unfold C
    simp [show (2654208 * k + 1193089) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 3579268) = 3981312 * k + 1789634 := by
    unfold C
    simp [show (7962624 * k + 3579268) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 1789634) = 1990656 * k + 894817 := by
    unfold C
    simp [show (3981312 * k + 1789634) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 894817) = 5971968 * k + 2684452 := by
    unfold C
    simp [show (1990656 * k + 894817) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 2684452) = 2985984 * k + 1342226 := by
    unfold C
    simp [show (5971968 * k + 2684452) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1342226) = 1492992 * k + 671113 := by
    unfold C
    simp [show (2985984 * k + 1342226) % 2 = 0 by omega]
    omega
  have h16 : C (1492992 * k + 671113) = 4478976 * k + 2013340 := by
    unfold C
    simp [show (1492992 * k + 671113) % 2 ≠ 0 by omega]
    omega
  have h17 : C (4478976 * k + 2013340) = 2239488 * k + 1006670 := by
    unfold C
    simp [show (4478976 * k + 2013340) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 1006670) = 1119744 * k + 503335 := by
    unfold C
    simp [show (2239488 * k + 1006670) % 2 = 0 by omega]
    omega
  have h19 : C (1119744 * k + 503335) = 3359232 * k + 1510006 := by
    unfold C
    simp [show (1119744 * k + 503335) % 2 ≠ 0 by omega]
    omega
  have h20 : C (3359232 * k + 1510006) = 1679616 * k + 755003 := by
    unfold C
    simp [show (3359232 * k + 1510006) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 755003) = 5038848 * k + 2265010 := by
    unfold C
    simp [show (1679616 * k + 755003) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 2265010) = 2519424 * k + 1132505 := by
    unfold C
    simp [show (5038848 * k + 2265010) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1132505) = 7558272 * k + 3397516 := by
    unfold C
    simp [show (2519424 * k + 1132505) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 3397516) = 3779136 * k + 1698758 := by
    unfold C
    simp [show (7558272 * k + 3397516) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 1698758) = 1889568 * k + 849379 := by
    unfold C
    simp [show (3779136 * k + 1698758) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 849379) = 5668704 * k + 2548138 := by
    unfold C
    simp [show (1889568 * k + 849379) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 2548138) = 2834352 * k + 1274069 := by
    unfold C
    simp [show (5668704 * k + 2548138) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1274069) = 8503056 * k + 3822208 := by
    unfold C
    simp [show (2834352 * k + 1274069) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 3822208) = 4251528 * k + 1911104 := by
    unfold C
    simp [show (8503056 * k + 3822208) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 1911104) = 2125764 * k + 955552 := by
    unfold C
    simp [show (4251528 * k + 1911104) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 955552) = 1062882 * k + 477776 := by
    unfold C
    simp [show (2125764 * k + 955552) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 477776) = 531441 * k + 238888 := by
    unfold C
    simp [show (1062882 * k + 477776) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 471343) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 471343)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_471663 : ∀ k : Nat,
    iterate (1048576 * k + 471663) 32 = 531441 * k + 239050 ∧
      531441 * k + 239050 < 1048576 * k + 471663 := by
  intro k
  have h1 : C (1048576 * k + 471663) = 3145728 * k + 1414990 := by
    unfold C
    simp [show (1048576 * k + 471663) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1414990) = 1572864 * k + 707495 := by
    unfold C
    simp [show (3145728 * k + 1414990) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 707495) = 4718592 * k + 2122486 := by
    unfold C
    simp [show (1572864 * k + 707495) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2122486) = 2359296 * k + 1061243 := by
    unfold C
    simp [show (4718592 * k + 2122486) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1061243) = 7077888 * k + 3183730 := by
    unfold C
    simp [show (2359296 * k + 1061243) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 3183730) = 3538944 * k + 1591865 := by
    unfold C
    simp [show (7077888 * k + 3183730) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1591865) = 10616832 * k + 4775596 := by
    unfold C
    simp [show (3538944 * k + 1591865) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 4775596) = 5308416 * k + 2387798 := by
    unfold C
    simp [show (10616832 * k + 4775596) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 2387798) = 2654208 * k + 1193899 := by
    unfold C
    simp [show (5308416 * k + 2387798) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1193899) = 7962624 * k + 3581698 := by
    unfold C
    simp [show (2654208 * k + 1193899) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 3581698) = 3981312 * k + 1790849 := by
    unfold C
    simp [show (7962624 * k + 3581698) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 1790849) = 11943936 * k + 5372548 := by
    unfold C
    simp [show (3981312 * k + 1790849) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 5372548) = 5971968 * k + 2686274 := by
    unfold C
    simp [show (11943936 * k + 5372548) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 2686274) = 2985984 * k + 1343137 := by
    unfold C
    simp [show (5971968 * k + 2686274) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1343137) = 8957952 * k + 4029412 := by
    unfold C
    simp [show (2985984 * k + 1343137) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 4029412) = 4478976 * k + 2014706 := by
    unfold C
    simp [show (8957952 * k + 4029412) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 2014706) = 2239488 * k + 1007353 := by
    unfold C
    simp [show (4478976 * k + 2014706) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 1007353) = 6718464 * k + 3022060 := by
    unfold C
    simp [show (2239488 * k + 1007353) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 3022060) = 3359232 * k + 1511030 := by
    unfold C
    simp [show (6718464 * k + 3022060) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 1511030) = 1679616 * k + 755515 := by
    unfold C
    simp [show (3359232 * k + 1511030) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 755515) = 5038848 * k + 2266546 := by
    unfold C
    simp [show (1679616 * k + 755515) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 2266546) = 2519424 * k + 1133273 := by
    unfold C
    simp [show (5038848 * k + 2266546) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1133273) = 7558272 * k + 3399820 := by
    unfold C
    simp [show (2519424 * k + 1133273) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 3399820) = 3779136 * k + 1699910 := by
    unfold C
    simp [show (7558272 * k + 3399820) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 1699910) = 1889568 * k + 849955 := by
    unfold C
    simp [show (3779136 * k + 1699910) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 849955) = 5668704 * k + 2549866 := by
    unfold C
    simp [show (1889568 * k + 849955) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 2549866) = 2834352 * k + 1274933 := by
    unfold C
    simp [show (5668704 * k + 2549866) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1274933) = 8503056 * k + 3824800 := by
    unfold C
    simp [show (2834352 * k + 1274933) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 3824800) = 4251528 * k + 1912400 := by
    unfold C
    simp [show (8503056 * k + 3824800) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 1912400) = 2125764 * k + 956200 := by
    unfold C
    simp [show (4251528 * k + 1912400) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 956200) = 1062882 * k + 478100 := by
    unfold C
    simp [show (2125764 * k + 956200) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 478100) = 531441 * k + 239050 := by
    unfold C
    simp [show (1062882 * k + 478100) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 471663) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 471663)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_471711 : ∀ k : Nat,
    iterate (1048576 * k + 471711) 32 = 531441 * k + 239074 ∧
      531441 * k + 239074 < 1048576 * k + 471711 := by
  intro k
  have h1 : C (1048576 * k + 471711) = 3145728 * k + 1415134 := by
    unfold C
    simp [show (1048576 * k + 471711) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1415134) = 1572864 * k + 707567 := by
    unfold C
    simp [show (3145728 * k + 1415134) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 707567) = 4718592 * k + 2122702 := by
    unfold C
    simp [show (1572864 * k + 707567) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2122702) = 2359296 * k + 1061351 := by
    unfold C
    simp [show (4718592 * k + 2122702) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1061351) = 7077888 * k + 3184054 := by
    unfold C
    simp [show (2359296 * k + 1061351) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 3184054) = 3538944 * k + 1592027 := by
    unfold C
    simp [show (7077888 * k + 3184054) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1592027) = 10616832 * k + 4776082 := by
    unfold C
    simp [show (3538944 * k + 1592027) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 4776082) = 5308416 * k + 2388041 := by
    unfold C
    simp [show (10616832 * k + 4776082) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 2388041) = 15925248 * k + 7164124 := by
    unfold C
    simp [show (5308416 * k + 2388041) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 7164124) = 7962624 * k + 3582062 := by
    unfold C
    simp [show (15925248 * k + 7164124) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 3582062) = 3981312 * k + 1791031 := by
    unfold C
    simp [show (7962624 * k + 3582062) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 1791031) = 11943936 * k + 5373094 := by
    unfold C
    simp [show (3981312 * k + 1791031) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 5373094) = 5971968 * k + 2686547 := by
    unfold C
    simp [show (11943936 * k + 5373094) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 2686547) = 17915904 * k + 8059642 := by
    unfold C
    simp [show (5971968 * k + 2686547) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 8059642) = 8957952 * k + 4029821 := by
    unfold C
    simp [show (17915904 * k + 8059642) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 4029821) = 26873856 * k + 12089464 := by
    unfold C
    simp [show (8957952 * k + 4029821) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 12089464) = 13436928 * k + 6044732 := by
    unfold C
    simp [show (26873856 * k + 12089464) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 6044732) = 6718464 * k + 3022366 := by
    unfold C
    simp [show (13436928 * k + 6044732) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 3022366) = 3359232 * k + 1511183 := by
    unfold C
    simp [show (6718464 * k + 3022366) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 1511183) = 10077696 * k + 4533550 := by
    unfold C
    simp [show (3359232 * k + 1511183) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 4533550) = 5038848 * k + 2266775 := by
    unfold C
    simp [show (10077696 * k + 4533550) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 2266775) = 15116544 * k + 6800326 := by
    unfold C
    simp [show (5038848 * k + 2266775) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 6800326) = 7558272 * k + 3400163 := by
    unfold C
    simp [show (15116544 * k + 6800326) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 3400163) = 22674816 * k + 10200490 := by
    unfold C
    simp [show (7558272 * k + 3400163) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 10200490) = 11337408 * k + 5100245 := by
    unfold C
    simp [show (22674816 * k + 10200490) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 5100245) = 34012224 * k + 15300736 := by
    unfold C
    simp [show (11337408 * k + 5100245) % 2 ≠ 0 by omega]
    omega
  have h27 : C (34012224 * k + 15300736) = 17006112 * k + 7650368 := by
    unfold C
    simp [show (34012224 * k + 15300736) % 2 = 0 by omega]
    omega
  have h28 : C (17006112 * k + 7650368) = 8503056 * k + 3825184 := by
    unfold C
    simp [show (17006112 * k + 7650368) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 3825184) = 4251528 * k + 1912592 := by
    unfold C
    simp [show (8503056 * k + 3825184) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 1912592) = 2125764 * k + 956296 := by
    unfold C
    simp [show (4251528 * k + 1912592) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 956296) = 1062882 * k + 478148 := by
    unfold C
    simp [show (2125764 * k + 956296) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 478148) = 531441 * k + 239074 := by
    unfold C
    simp [show (1062882 * k + 478148) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 471711) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 471711)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_472231 : ∀ k : Nat,
    iterate (1048576 * k + 472231) 32 = 531441 * k + 239338 ∧
      531441 * k + 239338 < 1048576 * k + 472231 := by
  intro k
  have h1 : C (1048576 * k + 472231) = 3145728 * k + 1416694 := by
    unfold C
    simp [show (1048576 * k + 472231) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1416694) = 1572864 * k + 708347 := by
    unfold C
    simp [show (3145728 * k + 1416694) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 708347) = 4718592 * k + 2125042 := by
    unfold C
    simp [show (1572864 * k + 708347) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2125042) = 2359296 * k + 1062521 := by
    unfold C
    simp [show (4718592 * k + 2125042) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1062521) = 7077888 * k + 3187564 := by
    unfold C
    simp [show (2359296 * k + 1062521) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 3187564) = 3538944 * k + 1593782 := by
    unfold C
    simp [show (7077888 * k + 3187564) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1593782) = 1769472 * k + 796891 := by
    unfold C
    simp [show (3538944 * k + 1593782) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 796891) = 5308416 * k + 2390674 := by
    unfold C
    simp [show (1769472 * k + 796891) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 2390674) = 2654208 * k + 1195337 := by
    unfold C
    simp [show (5308416 * k + 2390674) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1195337) = 7962624 * k + 3586012 := by
    unfold C
    simp [show (2654208 * k + 1195337) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 3586012) = 3981312 * k + 1793006 := by
    unfold C
    simp [show (7962624 * k + 3586012) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 1793006) = 1990656 * k + 896503 := by
    unfold C
    simp [show (3981312 * k + 1793006) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 896503) = 5971968 * k + 2689510 := by
    unfold C
    simp [show (1990656 * k + 896503) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 2689510) = 2985984 * k + 1344755 := by
    unfold C
    simp [show (5971968 * k + 2689510) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1344755) = 8957952 * k + 4034266 := by
    unfold C
    simp [show (2985984 * k + 1344755) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 4034266) = 4478976 * k + 2017133 := by
    unfold C
    simp [show (8957952 * k + 4034266) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 2017133) = 13436928 * k + 6051400 := by
    unfold C
    simp [show (4478976 * k + 2017133) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 6051400) = 6718464 * k + 3025700 := by
    unfold C
    simp [show (13436928 * k + 6051400) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 3025700) = 3359232 * k + 1512850 := by
    unfold C
    simp [show (6718464 * k + 3025700) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 1512850) = 1679616 * k + 756425 := by
    unfold C
    simp [show (3359232 * k + 1512850) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 756425) = 5038848 * k + 2269276 := by
    unfold C
    simp [show (1679616 * k + 756425) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 2269276) = 2519424 * k + 1134638 := by
    unfold C
    simp [show (5038848 * k + 2269276) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1134638) = 1259712 * k + 567319 := by
    unfold C
    simp [show (2519424 * k + 1134638) % 2 = 0 by omega]
    omega
  have h24 : C (1259712 * k + 567319) = 3779136 * k + 1701958 := by
    unfold C
    simp [show (1259712 * k + 567319) % 2 ≠ 0 by omega]
    omega
  have h25 : C (3779136 * k + 1701958) = 1889568 * k + 850979 := by
    unfold C
    simp [show (3779136 * k + 1701958) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 850979) = 5668704 * k + 2552938 := by
    unfold C
    simp [show (1889568 * k + 850979) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 2552938) = 2834352 * k + 1276469 := by
    unfold C
    simp [show (5668704 * k + 2552938) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1276469) = 8503056 * k + 3829408 := by
    unfold C
    simp [show (2834352 * k + 1276469) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 3829408) = 4251528 * k + 1914704 := by
    unfold C
    simp [show (8503056 * k + 3829408) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 1914704) = 2125764 * k + 957352 := by
    unfold C
    simp [show (4251528 * k + 1914704) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 957352) = 1062882 * k + 478676 := by
    unfold C
    simp [show (2125764 * k + 957352) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 478676) = 531441 * k + 239338 := by
    unfold C
    simp [show (1062882 * k + 478676) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 472231) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 472231)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_472391 : ∀ k : Nat,
    iterate (1048576 * k + 472391) 32 = 531441 * k + 239419 ∧
      531441 * k + 239419 < 1048576 * k + 472391 := by
  intro k
  have h1 : C (1048576 * k + 472391) = 3145728 * k + 1417174 := by
    unfold C
    simp [show (1048576 * k + 472391) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1417174) = 1572864 * k + 708587 := by
    unfold C
    simp [show (3145728 * k + 1417174) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 708587) = 4718592 * k + 2125762 := by
    unfold C
    simp [show (1572864 * k + 708587) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2125762) = 2359296 * k + 1062881 := by
    unfold C
    simp [show (4718592 * k + 2125762) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1062881) = 7077888 * k + 3188644 := by
    unfold C
    simp [show (2359296 * k + 1062881) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 3188644) = 3538944 * k + 1594322 := by
    unfold C
    simp [show (7077888 * k + 3188644) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1594322) = 1769472 * k + 797161 := by
    unfold C
    simp [show (3538944 * k + 1594322) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 797161) = 5308416 * k + 2391484 := by
    unfold C
    simp [show (1769472 * k + 797161) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 2391484) = 2654208 * k + 1195742 := by
    unfold C
    simp [show (5308416 * k + 2391484) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1195742) = 1327104 * k + 597871 := by
    unfold C
    simp [show (2654208 * k + 1195742) % 2 = 0 by omega]
    omega
  have h11 : C (1327104 * k + 597871) = 3981312 * k + 1793614 := by
    unfold C
    simp [show (1327104 * k + 597871) % 2 ≠ 0 by omega]
    omega
  have h12 : C (3981312 * k + 1793614) = 1990656 * k + 896807 := by
    unfold C
    simp [show (3981312 * k + 1793614) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 896807) = 5971968 * k + 2690422 := by
    unfold C
    simp [show (1990656 * k + 896807) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 2690422) = 2985984 * k + 1345211 := by
    unfold C
    simp [show (5971968 * k + 2690422) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1345211) = 8957952 * k + 4035634 := by
    unfold C
    simp [show (2985984 * k + 1345211) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 4035634) = 4478976 * k + 2017817 := by
    unfold C
    simp [show (8957952 * k + 4035634) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 2017817) = 13436928 * k + 6053452 := by
    unfold C
    simp [show (4478976 * k + 2017817) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 6053452) = 6718464 * k + 3026726 := by
    unfold C
    simp [show (13436928 * k + 6053452) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 3026726) = 3359232 * k + 1513363 := by
    unfold C
    simp [show (6718464 * k + 3026726) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 1513363) = 10077696 * k + 4540090 := by
    unfold C
    simp [show (3359232 * k + 1513363) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 4540090) = 5038848 * k + 2270045 := by
    unfold C
    simp [show (10077696 * k + 4540090) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 2270045) = 15116544 * k + 6810136 := by
    unfold C
    simp [show (5038848 * k + 2270045) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 6810136) = 7558272 * k + 3405068 := by
    unfold C
    simp [show (15116544 * k + 6810136) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 3405068) = 3779136 * k + 1702534 := by
    unfold C
    simp [show (7558272 * k + 3405068) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 1702534) = 1889568 * k + 851267 := by
    unfold C
    simp [show (3779136 * k + 1702534) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 851267) = 5668704 * k + 2553802 := by
    unfold C
    simp [show (1889568 * k + 851267) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 2553802) = 2834352 * k + 1276901 := by
    unfold C
    simp [show (5668704 * k + 2553802) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1276901) = 8503056 * k + 3830704 := by
    unfold C
    simp [show (2834352 * k + 1276901) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 3830704) = 4251528 * k + 1915352 := by
    unfold C
    simp [show (8503056 * k + 3830704) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 1915352) = 2125764 * k + 957676 := by
    unfold C
    simp [show (4251528 * k + 1915352) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 957676) = 1062882 * k + 478838 := by
    unfold C
    simp [show (2125764 * k + 957676) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 478838) = 531441 * k + 239419 := by
    unfold C
    simp [show (1062882 * k + 478838) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 472391) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 472391)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_473083 : ∀ k : Nat,
    iterate (1048576 * k + 473083) 32 = 531441 * k + 239770 ∧
      531441 * k + 239770 < 1048576 * k + 473083 := by
  intro k
  have h1 : C (1048576 * k + 473083) = 3145728 * k + 1419250 := by
    unfold C
    simp [show (1048576 * k + 473083) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1419250) = 1572864 * k + 709625 := by
    unfold C
    simp [show (3145728 * k + 1419250) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 709625) = 4718592 * k + 2128876 := by
    unfold C
    simp [show (1572864 * k + 709625) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2128876) = 2359296 * k + 1064438 := by
    unfold C
    simp [show (4718592 * k + 2128876) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1064438) = 1179648 * k + 532219 := by
    unfold C
    simp [show (2359296 * k + 1064438) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 532219) = 3538944 * k + 1596658 := by
    unfold C
    simp [show (1179648 * k + 532219) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 1596658) = 1769472 * k + 798329 := by
    unfold C
    simp [show (3538944 * k + 1596658) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 798329) = 5308416 * k + 2394988 := by
    unfold C
    simp [show (1769472 * k + 798329) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 2394988) = 2654208 * k + 1197494 := by
    unfold C
    simp [show (5308416 * k + 2394988) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1197494) = 1327104 * k + 598747 := by
    unfold C
    simp [show (2654208 * k + 1197494) % 2 = 0 by omega]
    omega
  have h11 : C (1327104 * k + 598747) = 3981312 * k + 1796242 := by
    unfold C
    simp [show (1327104 * k + 598747) % 2 ≠ 0 by omega]
    omega
  have h12 : C (3981312 * k + 1796242) = 1990656 * k + 898121 := by
    unfold C
    simp [show (3981312 * k + 1796242) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 898121) = 5971968 * k + 2694364 := by
    unfold C
    simp [show (1990656 * k + 898121) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 2694364) = 2985984 * k + 1347182 := by
    unfold C
    simp [show (5971968 * k + 2694364) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1347182) = 1492992 * k + 673591 := by
    unfold C
    simp [show (2985984 * k + 1347182) % 2 = 0 by omega]
    omega
  have h16 : C (1492992 * k + 673591) = 4478976 * k + 2020774 := by
    unfold C
    simp [show (1492992 * k + 673591) % 2 ≠ 0 by omega]
    omega
  have h17 : C (4478976 * k + 2020774) = 2239488 * k + 1010387 := by
    unfold C
    simp [show (4478976 * k + 2020774) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 1010387) = 6718464 * k + 3031162 := by
    unfold C
    simp [show (2239488 * k + 1010387) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 3031162) = 3359232 * k + 1515581 := by
    unfold C
    simp [show (6718464 * k + 3031162) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 1515581) = 10077696 * k + 4546744 := by
    unfold C
    simp [show (3359232 * k + 1515581) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 4546744) = 5038848 * k + 2273372 := by
    unfold C
    simp [show (10077696 * k + 4546744) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 2273372) = 2519424 * k + 1136686 := by
    unfold C
    simp [show (5038848 * k + 2273372) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1136686) = 1259712 * k + 568343 := by
    unfold C
    simp [show (2519424 * k + 1136686) % 2 = 0 by omega]
    omega
  have h24 : C (1259712 * k + 568343) = 3779136 * k + 1705030 := by
    unfold C
    simp [show (1259712 * k + 568343) % 2 ≠ 0 by omega]
    omega
  have h25 : C (3779136 * k + 1705030) = 1889568 * k + 852515 := by
    unfold C
    simp [show (3779136 * k + 1705030) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 852515) = 5668704 * k + 2557546 := by
    unfold C
    simp [show (1889568 * k + 852515) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 2557546) = 2834352 * k + 1278773 := by
    unfold C
    simp [show (5668704 * k + 2557546) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1278773) = 8503056 * k + 3836320 := by
    unfold C
    simp [show (2834352 * k + 1278773) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 3836320) = 4251528 * k + 1918160 := by
    unfold C
    simp [show (8503056 * k + 3836320) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 1918160) = 2125764 * k + 959080 := by
    unfold C
    simp [show (4251528 * k + 1918160) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 959080) = 1062882 * k + 479540 := by
    unfold C
    simp [show (2125764 * k + 959080) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 479540) = 531441 * k + 239770 := by
    unfold C
    simp [show (1062882 * k + 479540) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 473083) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 473083)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_473327 : ∀ k : Nat,
    iterate (1048576 * k + 473327) 32 = 531441 * k + 239893 ∧
      531441 * k + 239893 < 1048576 * k + 473327 := by
  intro k
  have h1 : C (1048576 * k + 473327) = 3145728 * k + 1419982 := by
    unfold C
    simp [show (1048576 * k + 473327) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1419982) = 1572864 * k + 709991 := by
    unfold C
    simp [show (3145728 * k + 1419982) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 709991) = 4718592 * k + 2129974 := by
    unfold C
    simp [show (1572864 * k + 709991) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2129974) = 2359296 * k + 1064987 := by
    unfold C
    simp [show (4718592 * k + 2129974) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1064987) = 7077888 * k + 3194962 := by
    unfold C
    simp [show (2359296 * k + 1064987) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 3194962) = 3538944 * k + 1597481 := by
    unfold C
    simp [show (7077888 * k + 3194962) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1597481) = 10616832 * k + 4792444 := by
    unfold C
    simp [show (3538944 * k + 1597481) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 4792444) = 5308416 * k + 2396222 := by
    unfold C
    simp [show (10616832 * k + 4792444) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 2396222) = 2654208 * k + 1198111 := by
    unfold C
    simp [show (5308416 * k + 2396222) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1198111) = 7962624 * k + 3594334 := by
    unfold C
    simp [show (2654208 * k + 1198111) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 3594334) = 3981312 * k + 1797167 := by
    unfold C
    simp [show (7962624 * k + 3594334) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 1797167) = 11943936 * k + 5391502 := by
    unfold C
    simp [show (3981312 * k + 1797167) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 5391502) = 5971968 * k + 2695751 := by
    unfold C
    simp [show (11943936 * k + 5391502) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 2695751) = 17915904 * k + 8087254 := by
    unfold C
    simp [show (5971968 * k + 2695751) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 8087254) = 8957952 * k + 4043627 := by
    unfold C
    simp [show (17915904 * k + 8087254) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 4043627) = 26873856 * k + 12130882 := by
    unfold C
    simp [show (8957952 * k + 4043627) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 12130882) = 13436928 * k + 6065441 := by
    unfold C
    simp [show (26873856 * k + 12130882) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 6065441) = 40310784 * k + 18196324 := by
    unfold C
    simp [show (13436928 * k + 6065441) % 2 ≠ 0 by omega]
    omega
  have h19 : C (40310784 * k + 18196324) = 20155392 * k + 9098162 := by
    unfold C
    simp [show (40310784 * k + 18196324) % 2 = 0 by omega]
    omega
  have h20 : C (20155392 * k + 9098162) = 10077696 * k + 4549081 := by
    unfold C
    simp [show (20155392 * k + 9098162) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 4549081) = 30233088 * k + 13647244 := by
    unfold C
    simp [show (10077696 * k + 4549081) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 13647244) = 15116544 * k + 6823622 := by
    unfold C
    simp [show (30233088 * k + 13647244) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 6823622) = 7558272 * k + 3411811 := by
    unfold C
    simp [show (15116544 * k + 6823622) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 3411811) = 22674816 * k + 10235434 := by
    unfold C
    simp [show (7558272 * k + 3411811) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 10235434) = 11337408 * k + 5117717 := by
    unfold C
    simp [show (22674816 * k + 10235434) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 5117717) = 34012224 * k + 15353152 := by
    unfold C
    simp [show (11337408 * k + 5117717) % 2 ≠ 0 by omega]
    omega
  have h27 : C (34012224 * k + 15353152) = 17006112 * k + 7676576 := by
    unfold C
    simp [show (34012224 * k + 15353152) % 2 = 0 by omega]
    omega
  have h28 : C (17006112 * k + 7676576) = 8503056 * k + 3838288 := by
    unfold C
    simp [show (17006112 * k + 7676576) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 3838288) = 4251528 * k + 1919144 := by
    unfold C
    simp [show (8503056 * k + 3838288) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 1919144) = 2125764 * k + 959572 := by
    unfold C
    simp [show (4251528 * k + 1919144) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 959572) = 1062882 * k + 479786 := by
    unfold C
    simp [show (2125764 * k + 959572) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 479786) = 531441 * k + 239893 := by
    unfold C
    simp [show (1062882 * k + 479786) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 473327) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 473327)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_473447 : ∀ k : Nat,
    iterate (1048576 * k + 473447) 32 = 531441 * k + 239954 ∧
      531441 * k + 239954 < 1048576 * k + 473447 := by
  intro k
  have h1 : C (1048576 * k + 473447) = 3145728 * k + 1420342 := by
    unfold C
    simp [show (1048576 * k + 473447) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1420342) = 1572864 * k + 710171 := by
    unfold C
    simp [show (3145728 * k + 1420342) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 710171) = 4718592 * k + 2130514 := by
    unfold C
    simp [show (1572864 * k + 710171) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2130514) = 2359296 * k + 1065257 := by
    unfold C
    simp [show (4718592 * k + 2130514) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1065257) = 7077888 * k + 3195772 := by
    unfold C
    simp [show (2359296 * k + 1065257) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 3195772) = 3538944 * k + 1597886 := by
    unfold C
    simp [show (7077888 * k + 3195772) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1597886) = 1769472 * k + 798943 := by
    unfold C
    simp [show (3538944 * k + 1597886) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 798943) = 5308416 * k + 2396830 := by
    unfold C
    simp [show (1769472 * k + 798943) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 2396830) = 2654208 * k + 1198415 := by
    unfold C
    simp [show (5308416 * k + 2396830) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1198415) = 7962624 * k + 3595246 := by
    unfold C
    simp [show (2654208 * k + 1198415) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 3595246) = 3981312 * k + 1797623 := by
    unfold C
    simp [show (7962624 * k + 3595246) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 1797623) = 11943936 * k + 5392870 := by
    unfold C
    simp [show (3981312 * k + 1797623) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 5392870) = 5971968 * k + 2696435 := by
    unfold C
    simp [show (11943936 * k + 5392870) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 2696435) = 17915904 * k + 8089306 := by
    unfold C
    simp [show (5971968 * k + 2696435) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 8089306) = 8957952 * k + 4044653 := by
    unfold C
    simp [show (17915904 * k + 8089306) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 4044653) = 26873856 * k + 12133960 := by
    unfold C
    simp [show (8957952 * k + 4044653) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 12133960) = 13436928 * k + 6066980 := by
    unfold C
    simp [show (26873856 * k + 12133960) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 6066980) = 6718464 * k + 3033490 := by
    unfold C
    simp [show (13436928 * k + 6066980) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 3033490) = 3359232 * k + 1516745 := by
    unfold C
    simp [show (6718464 * k + 3033490) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 1516745) = 10077696 * k + 4550236 := by
    unfold C
    simp [show (3359232 * k + 1516745) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 4550236) = 5038848 * k + 2275118 := by
    unfold C
    simp [show (10077696 * k + 4550236) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 2275118) = 2519424 * k + 1137559 := by
    unfold C
    simp [show (5038848 * k + 2275118) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1137559) = 7558272 * k + 3412678 := by
    unfold C
    simp [show (2519424 * k + 1137559) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 3412678) = 3779136 * k + 1706339 := by
    unfold C
    simp [show (7558272 * k + 3412678) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 1706339) = 11337408 * k + 5119018 := by
    unfold C
    simp [show (3779136 * k + 1706339) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 5119018) = 5668704 * k + 2559509 := by
    unfold C
    simp [show (11337408 * k + 5119018) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 2559509) = 17006112 * k + 7678528 := by
    unfold C
    simp [show (5668704 * k + 2559509) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 7678528) = 8503056 * k + 3839264 := by
    unfold C
    simp [show (17006112 * k + 7678528) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 3839264) = 4251528 * k + 1919632 := by
    unfold C
    simp [show (8503056 * k + 3839264) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 1919632) = 2125764 * k + 959816 := by
    unfold C
    simp [show (4251528 * k + 1919632) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 959816) = 1062882 * k + 479908 := by
    unfold C
    simp [show (2125764 * k + 959816) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 479908) = 531441 * k + 239954 := by
    unfold C
    simp [show (1062882 * k + 479908) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 473447) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 473447)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_474107 : ∀ k : Nat,
    iterate (1048576 * k + 474107) 32 = 531441 * k + 240289 ∧
      531441 * k + 240289 < 1048576 * k + 474107 := by
  intro k
  have h1 : C (1048576 * k + 474107) = 3145728 * k + 1422322 := by
    unfold C
    simp [show (1048576 * k + 474107) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1422322) = 1572864 * k + 711161 := by
    unfold C
    simp [show (3145728 * k + 1422322) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 711161) = 4718592 * k + 2133484 := by
    unfold C
    simp [show (1572864 * k + 711161) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2133484) = 2359296 * k + 1066742 := by
    unfold C
    simp [show (4718592 * k + 2133484) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1066742) = 1179648 * k + 533371 := by
    unfold C
    simp [show (2359296 * k + 1066742) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 533371) = 3538944 * k + 1600114 := by
    unfold C
    simp [show (1179648 * k + 533371) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 1600114) = 1769472 * k + 800057 := by
    unfold C
    simp [show (3538944 * k + 1600114) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 800057) = 5308416 * k + 2400172 := by
    unfold C
    simp [show (1769472 * k + 800057) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 2400172) = 2654208 * k + 1200086 := by
    unfold C
    simp [show (5308416 * k + 2400172) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1200086) = 1327104 * k + 600043 := by
    unfold C
    simp [show (2654208 * k + 1200086) % 2 = 0 by omega]
    omega
  have h11 : C (1327104 * k + 600043) = 3981312 * k + 1800130 := by
    unfold C
    simp [show (1327104 * k + 600043) % 2 ≠ 0 by omega]
    omega
  have h12 : C (3981312 * k + 1800130) = 1990656 * k + 900065 := by
    unfold C
    simp [show (3981312 * k + 1800130) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 900065) = 5971968 * k + 2700196 := by
    unfold C
    simp [show (1990656 * k + 900065) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 2700196) = 2985984 * k + 1350098 := by
    unfold C
    simp [show (5971968 * k + 2700196) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1350098) = 1492992 * k + 675049 := by
    unfold C
    simp [show (2985984 * k + 1350098) % 2 = 0 by omega]
    omega
  have h16 : C (1492992 * k + 675049) = 4478976 * k + 2025148 := by
    unfold C
    simp [show (1492992 * k + 675049) % 2 ≠ 0 by omega]
    omega
  have h17 : C (4478976 * k + 2025148) = 2239488 * k + 1012574 := by
    unfold C
    simp [show (4478976 * k + 2025148) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 1012574) = 1119744 * k + 506287 := by
    unfold C
    simp [show (2239488 * k + 1012574) % 2 = 0 by omega]
    omega
  have h19 : C (1119744 * k + 506287) = 3359232 * k + 1518862 := by
    unfold C
    simp [show (1119744 * k + 506287) % 2 ≠ 0 by omega]
    omega
  have h20 : C (3359232 * k + 1518862) = 1679616 * k + 759431 := by
    unfold C
    simp [show (3359232 * k + 1518862) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 759431) = 5038848 * k + 2278294 := by
    unfold C
    simp [show (1679616 * k + 759431) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 2278294) = 2519424 * k + 1139147 := by
    unfold C
    simp [show (5038848 * k + 2278294) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1139147) = 7558272 * k + 3417442 := by
    unfold C
    simp [show (2519424 * k + 1139147) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 3417442) = 3779136 * k + 1708721 := by
    unfold C
    simp [show (7558272 * k + 3417442) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 1708721) = 11337408 * k + 5126164 := by
    unfold C
    simp [show (3779136 * k + 1708721) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 5126164) = 5668704 * k + 2563082 := by
    unfold C
    simp [show (11337408 * k + 5126164) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 2563082) = 2834352 * k + 1281541 := by
    unfold C
    simp [show (5668704 * k + 2563082) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1281541) = 8503056 * k + 3844624 := by
    unfold C
    simp [show (2834352 * k + 1281541) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 3844624) = 4251528 * k + 1922312 := by
    unfold C
    simp [show (8503056 * k + 3844624) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 1922312) = 2125764 * k + 961156 := by
    unfold C
    simp [show (4251528 * k + 1922312) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 961156) = 1062882 * k + 480578 := by
    unfold C
    simp [show (2125764 * k + 961156) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 480578) = 531441 * k + 240289 := by
    unfold C
    simp [show (1062882 * k + 480578) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 474107) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 474107)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_474139 : ∀ k : Nat,
    iterate (1048576 * k + 474139) 32 = 531441 * k + 240305 ∧
      531441 * k + 240305 < 1048576 * k + 474139 := by
  intro k
  have h1 : C (1048576 * k + 474139) = 3145728 * k + 1422418 := by
    unfold C
    simp [show (1048576 * k + 474139) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1422418) = 1572864 * k + 711209 := by
    unfold C
    simp [show (3145728 * k + 1422418) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 711209) = 4718592 * k + 2133628 := by
    unfold C
    simp [show (1572864 * k + 711209) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2133628) = 2359296 * k + 1066814 := by
    unfold C
    simp [show (4718592 * k + 2133628) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1066814) = 1179648 * k + 533407 := by
    unfold C
    simp [show (2359296 * k + 1066814) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 533407) = 3538944 * k + 1600222 := by
    unfold C
    simp [show (1179648 * k + 533407) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 1600222) = 1769472 * k + 800111 := by
    unfold C
    simp [show (3538944 * k + 1600222) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 800111) = 5308416 * k + 2400334 := by
    unfold C
    simp [show (1769472 * k + 800111) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 2400334) = 2654208 * k + 1200167 := by
    unfold C
    simp [show (5308416 * k + 2400334) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1200167) = 7962624 * k + 3600502 := by
    unfold C
    simp [show (2654208 * k + 1200167) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 3600502) = 3981312 * k + 1800251 := by
    unfold C
    simp [show (7962624 * k + 3600502) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 1800251) = 11943936 * k + 5400754 := by
    unfold C
    simp [show (3981312 * k + 1800251) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 5400754) = 5971968 * k + 2700377 := by
    unfold C
    simp [show (11943936 * k + 5400754) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 2700377) = 17915904 * k + 8101132 := by
    unfold C
    simp [show (5971968 * k + 2700377) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 8101132) = 8957952 * k + 4050566 := by
    unfold C
    simp [show (17915904 * k + 8101132) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 4050566) = 4478976 * k + 2025283 := by
    unfold C
    simp [show (8957952 * k + 4050566) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 2025283) = 13436928 * k + 6075850 := by
    unfold C
    simp [show (4478976 * k + 2025283) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 6075850) = 6718464 * k + 3037925 := by
    unfold C
    simp [show (13436928 * k + 6075850) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 3037925) = 20155392 * k + 9113776 := by
    unfold C
    simp [show (6718464 * k + 3037925) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 9113776) = 10077696 * k + 4556888 := by
    unfold C
    simp [show (20155392 * k + 9113776) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 4556888) = 5038848 * k + 2278444 := by
    unfold C
    simp [show (10077696 * k + 4556888) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 2278444) = 2519424 * k + 1139222 := by
    unfold C
    simp [show (5038848 * k + 2278444) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1139222) = 1259712 * k + 569611 := by
    unfold C
    simp [show (2519424 * k + 1139222) % 2 = 0 by omega]
    omega
  have h24 : C (1259712 * k + 569611) = 3779136 * k + 1708834 := by
    unfold C
    simp [show (1259712 * k + 569611) % 2 ≠ 0 by omega]
    omega
  have h25 : C (3779136 * k + 1708834) = 1889568 * k + 854417 := by
    unfold C
    simp [show (3779136 * k + 1708834) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 854417) = 5668704 * k + 2563252 := by
    unfold C
    simp [show (1889568 * k + 854417) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 2563252) = 2834352 * k + 1281626 := by
    unfold C
    simp [show (5668704 * k + 2563252) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1281626) = 1417176 * k + 640813 := by
    unfold C
    simp [show (2834352 * k + 1281626) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 640813) = 4251528 * k + 1922440 := by
    unfold C
    simp [show (1417176 * k + 640813) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 1922440) = 2125764 * k + 961220 := by
    unfold C
    simp [show (4251528 * k + 1922440) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 961220) = 1062882 * k + 480610 := by
    unfold C
    simp [show (2125764 * k + 961220) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 480610) = 531441 * k + 240305 := by
    unfold C
    simp [show (1062882 * k + 480610) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 474139) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 474139)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_474471 : ∀ k : Nat,
    iterate (1048576 * k + 474471) 32 = 531441 * k + 240473 ∧
      531441 * k + 240473 < 1048576 * k + 474471 := by
  intro k
  have h1 : C (1048576 * k + 474471) = 3145728 * k + 1423414 := by
    unfold C
    simp [show (1048576 * k + 474471) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1423414) = 1572864 * k + 711707 := by
    unfold C
    simp [show (3145728 * k + 1423414) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 711707) = 4718592 * k + 2135122 := by
    unfold C
    simp [show (1572864 * k + 711707) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2135122) = 2359296 * k + 1067561 := by
    unfold C
    simp [show (4718592 * k + 2135122) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1067561) = 7077888 * k + 3202684 := by
    unfold C
    simp [show (2359296 * k + 1067561) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 3202684) = 3538944 * k + 1601342 := by
    unfold C
    simp [show (7077888 * k + 3202684) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1601342) = 1769472 * k + 800671 := by
    unfold C
    simp [show (3538944 * k + 1601342) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 800671) = 5308416 * k + 2402014 := by
    unfold C
    simp [show (1769472 * k + 800671) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 2402014) = 2654208 * k + 1201007 := by
    unfold C
    simp [show (5308416 * k + 2402014) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1201007) = 7962624 * k + 3603022 := by
    unfold C
    simp [show (2654208 * k + 1201007) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 3603022) = 3981312 * k + 1801511 := by
    unfold C
    simp [show (7962624 * k + 3603022) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 1801511) = 11943936 * k + 5404534 := by
    unfold C
    simp [show (3981312 * k + 1801511) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 5404534) = 5971968 * k + 2702267 := by
    unfold C
    simp [show (11943936 * k + 5404534) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 2702267) = 17915904 * k + 8106802 := by
    unfold C
    simp [show (5971968 * k + 2702267) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 8106802) = 8957952 * k + 4053401 := by
    unfold C
    simp [show (17915904 * k + 8106802) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 4053401) = 26873856 * k + 12160204 := by
    unfold C
    simp [show (8957952 * k + 4053401) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 12160204) = 13436928 * k + 6080102 := by
    unfold C
    simp [show (26873856 * k + 12160204) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 6080102) = 6718464 * k + 3040051 := by
    unfold C
    simp [show (13436928 * k + 6080102) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 3040051) = 20155392 * k + 9120154 := by
    unfold C
    simp [show (6718464 * k + 3040051) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 9120154) = 10077696 * k + 4560077 := by
    unfold C
    simp [show (20155392 * k + 9120154) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 4560077) = 30233088 * k + 13680232 := by
    unfold C
    simp [show (10077696 * k + 4560077) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 13680232) = 15116544 * k + 6840116 := by
    unfold C
    simp [show (30233088 * k + 13680232) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 6840116) = 7558272 * k + 3420058 := by
    unfold C
    simp [show (15116544 * k + 6840116) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 3420058) = 3779136 * k + 1710029 := by
    unfold C
    simp [show (7558272 * k + 3420058) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 1710029) = 11337408 * k + 5130088 := by
    unfold C
    simp [show (3779136 * k + 1710029) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 5130088) = 5668704 * k + 2565044 := by
    unfold C
    simp [show (11337408 * k + 5130088) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 2565044) = 2834352 * k + 1282522 := by
    unfold C
    simp [show (5668704 * k + 2565044) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1282522) = 1417176 * k + 641261 := by
    unfold C
    simp [show (2834352 * k + 1282522) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 641261) = 4251528 * k + 1923784 := by
    unfold C
    simp [show (1417176 * k + 641261) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 1923784) = 2125764 * k + 961892 := by
    unfold C
    simp [show (4251528 * k + 1923784) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 961892) = 1062882 * k + 480946 := by
    unfold C
    simp [show (2125764 * k + 961892) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 480946) = 531441 * k + 240473 := by
    unfold C
    simp [show (1062882 * k + 480946) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 474471) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 474471)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_474783 : ∀ k : Nat,
    iterate (1048576 * k + 474783) 32 = 531441 * k + 240631 ∧
      531441 * k + 240631 < 1048576 * k + 474783 := by
  intro k
  have h1 : C (1048576 * k + 474783) = 3145728 * k + 1424350 := by
    unfold C
    simp [show (1048576 * k + 474783) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1424350) = 1572864 * k + 712175 := by
    unfold C
    simp [show (3145728 * k + 1424350) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 712175) = 4718592 * k + 2136526 := by
    unfold C
    simp [show (1572864 * k + 712175) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2136526) = 2359296 * k + 1068263 := by
    unfold C
    simp [show (4718592 * k + 2136526) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1068263) = 7077888 * k + 3204790 := by
    unfold C
    simp [show (2359296 * k + 1068263) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 3204790) = 3538944 * k + 1602395 := by
    unfold C
    simp [show (7077888 * k + 3204790) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1602395) = 10616832 * k + 4807186 := by
    unfold C
    simp [show (3538944 * k + 1602395) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 4807186) = 5308416 * k + 2403593 := by
    unfold C
    simp [show (10616832 * k + 4807186) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 2403593) = 15925248 * k + 7210780 := by
    unfold C
    simp [show (5308416 * k + 2403593) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 7210780) = 7962624 * k + 3605390 := by
    unfold C
    simp [show (15925248 * k + 7210780) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 3605390) = 3981312 * k + 1802695 := by
    unfold C
    simp [show (7962624 * k + 3605390) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 1802695) = 11943936 * k + 5408086 := by
    unfold C
    simp [show (3981312 * k + 1802695) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 5408086) = 5971968 * k + 2704043 := by
    unfold C
    simp [show (11943936 * k + 5408086) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 2704043) = 17915904 * k + 8112130 := by
    unfold C
    simp [show (5971968 * k + 2704043) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 8112130) = 8957952 * k + 4056065 := by
    unfold C
    simp [show (17915904 * k + 8112130) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 4056065) = 26873856 * k + 12168196 := by
    unfold C
    simp [show (8957952 * k + 4056065) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 12168196) = 13436928 * k + 6084098 := by
    unfold C
    simp [show (26873856 * k + 12168196) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 6084098) = 6718464 * k + 3042049 := by
    unfold C
    simp [show (13436928 * k + 6084098) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 3042049) = 20155392 * k + 9126148 := by
    unfold C
    simp [show (6718464 * k + 3042049) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 9126148) = 10077696 * k + 4563074 := by
    unfold C
    simp [show (20155392 * k + 9126148) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 4563074) = 5038848 * k + 2281537 := by
    unfold C
    simp [show (10077696 * k + 4563074) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 2281537) = 15116544 * k + 6844612 := by
    unfold C
    simp [show (5038848 * k + 2281537) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 6844612) = 7558272 * k + 3422306 := by
    unfold C
    simp [show (15116544 * k + 6844612) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 3422306) = 3779136 * k + 1711153 := by
    unfold C
    simp [show (7558272 * k + 3422306) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 1711153) = 11337408 * k + 5133460 := by
    unfold C
    simp [show (3779136 * k + 1711153) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 5133460) = 5668704 * k + 2566730 := by
    unfold C
    simp [show (11337408 * k + 5133460) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 2566730) = 2834352 * k + 1283365 := by
    unfold C
    simp [show (5668704 * k + 2566730) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1283365) = 8503056 * k + 3850096 := by
    unfold C
    simp [show (2834352 * k + 1283365) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 3850096) = 4251528 * k + 1925048 := by
    unfold C
    simp [show (8503056 * k + 3850096) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 1925048) = 2125764 * k + 962524 := by
    unfold C
    simp [show (4251528 * k + 1925048) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 962524) = 1062882 * k + 481262 := by
    unfold C
    simp [show (2125764 * k + 962524) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 481262) = 531441 * k + 240631 := by
    unfold C
    simp [show (1062882 * k + 481262) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 474783) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 474783)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_476543 : ∀ k : Nat,
    iterate (1048576 * k + 476543) 32 = 531441 * k + 241523 ∧
      531441 * k + 241523 < 1048576 * k + 476543 := by
  intro k
  have h1 : C (1048576 * k + 476543) = 3145728 * k + 1429630 := by
    unfold C
    simp [show (1048576 * k + 476543) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1429630) = 1572864 * k + 714815 := by
    unfold C
    simp [show (3145728 * k + 1429630) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 714815) = 4718592 * k + 2144446 := by
    unfold C
    simp [show (1572864 * k + 714815) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2144446) = 2359296 * k + 1072223 := by
    unfold C
    simp [show (4718592 * k + 2144446) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1072223) = 7077888 * k + 3216670 := by
    unfold C
    simp [show (2359296 * k + 1072223) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 3216670) = 3538944 * k + 1608335 := by
    unfold C
    simp [show (7077888 * k + 3216670) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1608335) = 10616832 * k + 4825006 := by
    unfold C
    simp [show (3538944 * k + 1608335) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 4825006) = 5308416 * k + 2412503 := by
    unfold C
    simp [show (10616832 * k + 4825006) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 2412503) = 15925248 * k + 7237510 := by
    unfold C
    simp [show (5308416 * k + 2412503) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 7237510) = 7962624 * k + 3618755 := by
    unfold C
    simp [show (15925248 * k + 7237510) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 3618755) = 23887872 * k + 10856266 := by
    unfold C
    simp [show (7962624 * k + 3618755) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 10856266) = 11943936 * k + 5428133 := by
    unfold C
    simp [show (23887872 * k + 10856266) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 5428133) = 35831808 * k + 16284400 := by
    unfold C
    simp [show (11943936 * k + 5428133) % 2 ≠ 0 by omega]
    omega
  have h14 : C (35831808 * k + 16284400) = 17915904 * k + 8142200 := by
    unfold C
    simp [show (35831808 * k + 16284400) % 2 = 0 by omega]
    omega
  have h15 : C (17915904 * k + 8142200) = 8957952 * k + 4071100 := by
    unfold C
    simp [show (17915904 * k + 8142200) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 4071100) = 4478976 * k + 2035550 := by
    unfold C
    simp [show (8957952 * k + 4071100) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 2035550) = 2239488 * k + 1017775 := by
    unfold C
    simp [show (4478976 * k + 2035550) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 1017775) = 6718464 * k + 3053326 := by
    unfold C
    simp [show (2239488 * k + 1017775) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 3053326) = 3359232 * k + 1526663 := by
    unfold C
    simp [show (6718464 * k + 3053326) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 1526663) = 10077696 * k + 4579990 := by
    unfold C
    simp [show (3359232 * k + 1526663) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 4579990) = 5038848 * k + 2289995 := by
    unfold C
    simp [show (10077696 * k + 4579990) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 2289995) = 15116544 * k + 6869986 := by
    unfold C
    simp [show (5038848 * k + 2289995) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 6869986) = 7558272 * k + 3434993 := by
    unfold C
    simp [show (15116544 * k + 6869986) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 3434993) = 22674816 * k + 10304980 := by
    unfold C
    simp [show (7558272 * k + 3434993) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 10304980) = 11337408 * k + 5152490 := by
    unfold C
    simp [show (22674816 * k + 10304980) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 5152490) = 5668704 * k + 2576245 := by
    unfold C
    simp [show (11337408 * k + 5152490) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 2576245) = 17006112 * k + 7728736 := by
    unfold C
    simp [show (5668704 * k + 2576245) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 7728736) = 8503056 * k + 3864368 := by
    unfold C
    simp [show (17006112 * k + 7728736) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 3864368) = 4251528 * k + 1932184 := by
    unfold C
    simp [show (8503056 * k + 3864368) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 1932184) = 2125764 * k + 966092 := by
    unfold C
    simp [show (4251528 * k + 1932184) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 966092) = 1062882 * k + 483046 := by
    unfold C
    simp [show (2125764 * k + 966092) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 483046) = 531441 * k + 241523 := by
    unfold C
    simp [show (1062882 * k + 483046) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 476543) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 476543)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_476655 : ∀ k : Nat,
    iterate (1048576 * k + 476655) 32 = 531441 * k + 241580 ∧
      531441 * k + 241580 < 1048576 * k + 476655 := by
  intro k
  have h1 : C (1048576 * k + 476655) = 3145728 * k + 1429966 := by
    unfold C
    simp [show (1048576 * k + 476655) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1429966) = 1572864 * k + 714983 := by
    unfold C
    simp [show (3145728 * k + 1429966) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 714983) = 4718592 * k + 2144950 := by
    unfold C
    simp [show (1572864 * k + 714983) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2144950) = 2359296 * k + 1072475 := by
    unfold C
    simp [show (4718592 * k + 2144950) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1072475) = 7077888 * k + 3217426 := by
    unfold C
    simp [show (2359296 * k + 1072475) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 3217426) = 3538944 * k + 1608713 := by
    unfold C
    simp [show (7077888 * k + 3217426) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1608713) = 10616832 * k + 4826140 := by
    unfold C
    simp [show (3538944 * k + 1608713) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 4826140) = 5308416 * k + 2413070 := by
    unfold C
    simp [show (10616832 * k + 4826140) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 2413070) = 2654208 * k + 1206535 := by
    unfold C
    simp [show (5308416 * k + 2413070) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1206535) = 7962624 * k + 3619606 := by
    unfold C
    simp [show (2654208 * k + 1206535) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 3619606) = 3981312 * k + 1809803 := by
    unfold C
    simp [show (7962624 * k + 3619606) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 1809803) = 11943936 * k + 5429410 := by
    unfold C
    simp [show (3981312 * k + 1809803) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 5429410) = 5971968 * k + 2714705 := by
    unfold C
    simp [show (11943936 * k + 5429410) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 2714705) = 17915904 * k + 8144116 := by
    unfold C
    simp [show (5971968 * k + 2714705) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 8144116) = 8957952 * k + 4072058 := by
    unfold C
    simp [show (17915904 * k + 8144116) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 4072058) = 4478976 * k + 2036029 := by
    unfold C
    simp [show (8957952 * k + 4072058) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 2036029) = 13436928 * k + 6108088 := by
    unfold C
    simp [show (4478976 * k + 2036029) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 6108088) = 6718464 * k + 3054044 := by
    unfold C
    simp [show (13436928 * k + 6108088) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 3054044) = 3359232 * k + 1527022 := by
    unfold C
    simp [show (6718464 * k + 3054044) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 1527022) = 1679616 * k + 763511 := by
    unfold C
    simp [show (3359232 * k + 1527022) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 763511) = 5038848 * k + 2290534 := by
    unfold C
    simp [show (1679616 * k + 763511) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 2290534) = 2519424 * k + 1145267 := by
    unfold C
    simp [show (5038848 * k + 2290534) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1145267) = 7558272 * k + 3435802 := by
    unfold C
    simp [show (2519424 * k + 1145267) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 3435802) = 3779136 * k + 1717901 := by
    unfold C
    simp [show (7558272 * k + 3435802) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 1717901) = 11337408 * k + 5153704 := by
    unfold C
    simp [show (3779136 * k + 1717901) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 5153704) = 5668704 * k + 2576852 := by
    unfold C
    simp [show (11337408 * k + 5153704) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 2576852) = 2834352 * k + 1288426 := by
    unfold C
    simp [show (5668704 * k + 2576852) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1288426) = 1417176 * k + 644213 := by
    unfold C
    simp [show (2834352 * k + 1288426) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 644213) = 4251528 * k + 1932640 := by
    unfold C
    simp [show (1417176 * k + 644213) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 1932640) = 2125764 * k + 966320 := by
    unfold C
    simp [show (4251528 * k + 1932640) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 966320) = 1062882 * k + 483160 := by
    unfold C
    simp [show (2125764 * k + 966320) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 483160) = 531441 * k + 241580 := by
    unfold C
    simp [show (1062882 * k + 483160) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 476655) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 476655)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_476831 : ∀ k : Nat,
    iterate (1048576 * k + 476831) 32 = 531441 * k + 241669 ∧
      531441 * k + 241669 < 1048576 * k + 476831 := by
  intro k
  have h1 : C (1048576 * k + 476831) = 3145728 * k + 1430494 := by
    unfold C
    simp [show (1048576 * k + 476831) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1430494) = 1572864 * k + 715247 := by
    unfold C
    simp [show (3145728 * k + 1430494) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 715247) = 4718592 * k + 2145742 := by
    unfold C
    simp [show (1572864 * k + 715247) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2145742) = 2359296 * k + 1072871 := by
    unfold C
    simp [show (4718592 * k + 2145742) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1072871) = 7077888 * k + 3218614 := by
    unfold C
    simp [show (2359296 * k + 1072871) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 3218614) = 3538944 * k + 1609307 := by
    unfold C
    simp [show (7077888 * k + 3218614) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1609307) = 10616832 * k + 4827922 := by
    unfold C
    simp [show (3538944 * k + 1609307) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 4827922) = 5308416 * k + 2413961 := by
    unfold C
    simp [show (10616832 * k + 4827922) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 2413961) = 15925248 * k + 7241884 := by
    unfold C
    simp [show (5308416 * k + 2413961) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 7241884) = 7962624 * k + 3620942 := by
    unfold C
    simp [show (15925248 * k + 7241884) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 3620942) = 3981312 * k + 1810471 := by
    unfold C
    simp [show (7962624 * k + 3620942) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 1810471) = 11943936 * k + 5431414 := by
    unfold C
    simp [show (3981312 * k + 1810471) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 5431414) = 5971968 * k + 2715707 := by
    unfold C
    simp [show (11943936 * k + 5431414) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 2715707) = 17915904 * k + 8147122 := by
    unfold C
    simp [show (5971968 * k + 2715707) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 8147122) = 8957952 * k + 4073561 := by
    unfold C
    simp [show (17915904 * k + 8147122) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 4073561) = 26873856 * k + 12220684 := by
    unfold C
    simp [show (8957952 * k + 4073561) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 12220684) = 13436928 * k + 6110342 := by
    unfold C
    simp [show (26873856 * k + 12220684) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 6110342) = 6718464 * k + 3055171 := by
    unfold C
    simp [show (13436928 * k + 6110342) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 3055171) = 20155392 * k + 9165514 := by
    unfold C
    simp [show (6718464 * k + 3055171) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 9165514) = 10077696 * k + 4582757 := by
    unfold C
    simp [show (20155392 * k + 9165514) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 4582757) = 30233088 * k + 13748272 := by
    unfold C
    simp [show (10077696 * k + 4582757) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 13748272) = 15116544 * k + 6874136 := by
    unfold C
    simp [show (30233088 * k + 13748272) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 6874136) = 7558272 * k + 3437068 := by
    unfold C
    simp [show (15116544 * k + 6874136) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 3437068) = 3779136 * k + 1718534 := by
    unfold C
    simp [show (7558272 * k + 3437068) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 1718534) = 1889568 * k + 859267 := by
    unfold C
    simp [show (3779136 * k + 1718534) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 859267) = 5668704 * k + 2577802 := by
    unfold C
    simp [show (1889568 * k + 859267) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 2577802) = 2834352 * k + 1288901 := by
    unfold C
    simp [show (5668704 * k + 2577802) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1288901) = 8503056 * k + 3866704 := by
    unfold C
    simp [show (2834352 * k + 1288901) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 3866704) = 4251528 * k + 1933352 := by
    unfold C
    simp [show (8503056 * k + 3866704) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 1933352) = 2125764 * k + 966676 := by
    unfold C
    simp [show (4251528 * k + 1933352) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 966676) = 1062882 * k + 483338 := by
    unfold C
    simp [show (2125764 * k + 966676) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 483338) = 531441 * k + 241669 := by
    unfold C
    simp [show (1062882 * k + 483338) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 476831) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 476831)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_477087 : ∀ k : Nat,
    iterate (1048576 * k + 477087) 32 = 531441 * k + 241799 ∧
      531441 * k + 241799 < 1048576 * k + 477087 := by
  intro k
  have h1 : C (1048576 * k + 477087) = 3145728 * k + 1431262 := by
    unfold C
    simp [show (1048576 * k + 477087) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1431262) = 1572864 * k + 715631 := by
    unfold C
    simp [show (3145728 * k + 1431262) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 715631) = 4718592 * k + 2146894 := by
    unfold C
    simp [show (1572864 * k + 715631) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2146894) = 2359296 * k + 1073447 := by
    unfold C
    simp [show (4718592 * k + 2146894) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1073447) = 7077888 * k + 3220342 := by
    unfold C
    simp [show (2359296 * k + 1073447) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 3220342) = 3538944 * k + 1610171 := by
    unfold C
    simp [show (7077888 * k + 3220342) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1610171) = 10616832 * k + 4830514 := by
    unfold C
    simp [show (3538944 * k + 1610171) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 4830514) = 5308416 * k + 2415257 := by
    unfold C
    simp [show (10616832 * k + 4830514) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 2415257) = 15925248 * k + 7245772 := by
    unfold C
    simp [show (5308416 * k + 2415257) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 7245772) = 7962624 * k + 3622886 := by
    unfold C
    simp [show (15925248 * k + 7245772) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 3622886) = 3981312 * k + 1811443 := by
    unfold C
    simp [show (7962624 * k + 3622886) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 1811443) = 11943936 * k + 5434330 := by
    unfold C
    simp [show (3981312 * k + 1811443) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 5434330) = 5971968 * k + 2717165 := by
    unfold C
    simp [show (11943936 * k + 5434330) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 2717165) = 17915904 * k + 8151496 := by
    unfold C
    simp [show (5971968 * k + 2717165) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 8151496) = 8957952 * k + 4075748 := by
    unfold C
    simp [show (17915904 * k + 8151496) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 4075748) = 4478976 * k + 2037874 := by
    unfold C
    simp [show (8957952 * k + 4075748) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 2037874) = 2239488 * k + 1018937 := by
    unfold C
    simp [show (4478976 * k + 2037874) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 1018937) = 6718464 * k + 3056812 := by
    unfold C
    simp [show (2239488 * k + 1018937) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 3056812) = 3359232 * k + 1528406 := by
    unfold C
    simp [show (6718464 * k + 3056812) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 1528406) = 1679616 * k + 764203 := by
    unfold C
    simp [show (3359232 * k + 1528406) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 764203) = 5038848 * k + 2292610 := by
    unfold C
    simp [show (1679616 * k + 764203) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 2292610) = 2519424 * k + 1146305 := by
    unfold C
    simp [show (5038848 * k + 2292610) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1146305) = 7558272 * k + 3438916 := by
    unfold C
    simp [show (2519424 * k + 1146305) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 3438916) = 3779136 * k + 1719458 := by
    unfold C
    simp [show (7558272 * k + 3438916) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 1719458) = 1889568 * k + 859729 := by
    unfold C
    simp [show (3779136 * k + 1719458) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 859729) = 5668704 * k + 2579188 := by
    unfold C
    simp [show (1889568 * k + 859729) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 2579188) = 2834352 * k + 1289594 := by
    unfold C
    simp [show (5668704 * k + 2579188) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1289594) = 1417176 * k + 644797 := by
    unfold C
    simp [show (2834352 * k + 1289594) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 644797) = 4251528 * k + 1934392 := by
    unfold C
    simp [show (1417176 * k + 644797) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 1934392) = 2125764 * k + 967196 := by
    unfold C
    simp [show (4251528 * k + 1934392) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 967196) = 1062882 * k + 483598 := by
    unfold C
    simp [show (2125764 * k + 967196) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 483598) = 531441 * k + 241799 := by
    unfold C
    simp [show (1062882 * k + 483598) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 477087) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 477087)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

end CollatzM20Shard060
