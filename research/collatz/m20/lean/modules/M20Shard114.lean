import Mathlib.Data.Nat.Prime.Basic

namespace CollatzM20Shard114

def C (n : Nat) : Nat := if n % 2 = 0 then n / 2 else 3 * n + 1

def iterate (n t : Nat) : Nat := Nat.rec n (fun _ previous => C previous) t

theorem descent_mod1048576_890159 : ∀ k : Nat,
    iterate (1048576 * k + 890159) 32 = 531441 * k + 451153 ∧
      531441 * k + 451153 < 1048576 * k + 890159 := by
  intro k
  have h1 : C (1048576 * k + 890159) = 3145728 * k + 2670478 := by
    unfold C
    simp [show (1048576 * k + 890159) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2670478) = 1572864 * k + 1335239 := by
    unfold C
    simp [show (3145728 * k + 2670478) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1335239) = 4718592 * k + 4005718 := by
    unfold C
    simp [show (1572864 * k + 1335239) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 4005718) = 2359296 * k + 2002859 := by
    unfold C
    simp [show (4718592 * k + 4005718) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 2002859) = 7077888 * k + 6008578 := by
    unfold C
    simp [show (2359296 * k + 2002859) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 6008578) = 3538944 * k + 3004289 := by
    unfold C
    simp [show (7077888 * k + 6008578) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 3004289) = 10616832 * k + 9012868 := by
    unfold C
    simp [show (3538944 * k + 3004289) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 9012868) = 5308416 * k + 4506434 := by
    unfold C
    simp [show (10616832 * k + 9012868) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 4506434) = 2654208 * k + 2253217 := by
    unfold C
    simp [show (5308416 * k + 4506434) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 2253217) = 7962624 * k + 6759652 := by
    unfold C
    simp [show (2654208 * k + 2253217) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 6759652) = 3981312 * k + 3379826 := by
    unfold C
    simp [show (7962624 * k + 6759652) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 3379826) = 1990656 * k + 1689913 := by
    unfold C
    simp [show (3981312 * k + 3379826) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 1689913) = 5971968 * k + 5069740 := by
    unfold C
    simp [show (1990656 * k + 1689913) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 5069740) = 2985984 * k + 2534870 := by
    unfold C
    simp [show (5971968 * k + 5069740) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 2534870) = 1492992 * k + 1267435 := by
    unfold C
    simp [show (2985984 * k + 2534870) % 2 = 0 by omega]
    omega
  have h16 : C (1492992 * k + 1267435) = 4478976 * k + 3802306 := by
    unfold C
    simp [show (1492992 * k + 1267435) % 2 ≠ 0 by omega]
    omega
  have h17 : C (4478976 * k + 3802306) = 2239488 * k + 1901153 := by
    unfold C
    simp [show (4478976 * k + 3802306) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 1901153) = 6718464 * k + 5703460 := by
    unfold C
    simp [show (2239488 * k + 1901153) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 5703460) = 3359232 * k + 2851730 := by
    unfold C
    simp [show (6718464 * k + 5703460) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 2851730) = 1679616 * k + 1425865 := by
    unfold C
    simp [show (3359232 * k + 2851730) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 1425865) = 5038848 * k + 4277596 := by
    unfold C
    simp [show (1679616 * k + 1425865) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 4277596) = 2519424 * k + 2138798 := by
    unfold C
    simp [show (5038848 * k + 4277596) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 2138798) = 1259712 * k + 1069399 := by
    unfold C
    simp [show (2519424 * k + 2138798) % 2 = 0 by omega]
    omega
  have h24 : C (1259712 * k + 1069399) = 3779136 * k + 3208198 := by
    unfold C
    simp [show (1259712 * k + 1069399) % 2 ≠ 0 by omega]
    omega
  have h25 : C (3779136 * k + 3208198) = 1889568 * k + 1604099 := by
    unfold C
    simp [show (3779136 * k + 3208198) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1604099) = 5668704 * k + 4812298 := by
    unfold C
    simp [show (1889568 * k + 1604099) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 4812298) = 2834352 * k + 2406149 := by
    unfold C
    simp [show (5668704 * k + 4812298) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2406149) = 8503056 * k + 7218448 := by
    unfold C
    simp [show (2834352 * k + 2406149) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 7218448) = 4251528 * k + 3609224 := by
    unfold C
    simp [show (8503056 * k + 7218448) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 3609224) = 2125764 * k + 1804612 := by
    unfold C
    simp [show (4251528 * k + 3609224) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1804612) = 1062882 * k + 902306 := by
    unfold C
    simp [show (2125764 * k + 1804612) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 902306) = 531441 * k + 451153 := by
    unfold C
    simp [show (1062882 * k + 902306) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 890159) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 890159)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_890319 : ∀ k : Nat,
    iterate (1048576 * k + 890319) 32 = 531441 * k + 451234 ∧
      531441 * k + 451234 < 1048576 * k + 890319 := by
  intro k
  have h1 : C (1048576 * k + 890319) = 3145728 * k + 2670958 := by
    unfold C
    simp [show (1048576 * k + 890319) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2670958) = 1572864 * k + 1335479 := by
    unfold C
    simp [show (3145728 * k + 2670958) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1335479) = 4718592 * k + 4006438 := by
    unfold C
    simp [show (1572864 * k + 1335479) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 4006438) = 2359296 * k + 2003219 := by
    unfold C
    simp [show (4718592 * k + 4006438) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 2003219) = 7077888 * k + 6009658 := by
    unfold C
    simp [show (2359296 * k + 2003219) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 6009658) = 3538944 * k + 3004829 := by
    unfold C
    simp [show (7077888 * k + 6009658) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 3004829) = 10616832 * k + 9014488 := by
    unfold C
    simp [show (3538944 * k + 3004829) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 9014488) = 5308416 * k + 4507244 := by
    unfold C
    simp [show (10616832 * k + 9014488) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 4507244) = 2654208 * k + 2253622 := by
    unfold C
    simp [show (5308416 * k + 4507244) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 2253622) = 1327104 * k + 1126811 := by
    unfold C
    simp [show (2654208 * k + 2253622) % 2 = 0 by omega]
    omega
  have h11 : C (1327104 * k + 1126811) = 3981312 * k + 3380434 := by
    unfold C
    simp [show (1327104 * k + 1126811) % 2 ≠ 0 by omega]
    omega
  have h12 : C (3981312 * k + 3380434) = 1990656 * k + 1690217 := by
    unfold C
    simp [show (3981312 * k + 3380434) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 1690217) = 5971968 * k + 5070652 := by
    unfold C
    simp [show (1990656 * k + 1690217) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 5070652) = 2985984 * k + 2535326 := by
    unfold C
    simp [show (5971968 * k + 5070652) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 2535326) = 1492992 * k + 1267663 := by
    unfold C
    simp [show (2985984 * k + 2535326) % 2 = 0 by omega]
    omega
  have h16 : C (1492992 * k + 1267663) = 4478976 * k + 3802990 := by
    unfold C
    simp [show (1492992 * k + 1267663) % 2 ≠ 0 by omega]
    omega
  have h17 : C (4478976 * k + 3802990) = 2239488 * k + 1901495 := by
    unfold C
    simp [show (4478976 * k + 3802990) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 1901495) = 6718464 * k + 5704486 := by
    unfold C
    simp [show (2239488 * k + 1901495) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 5704486) = 3359232 * k + 2852243 := by
    unfold C
    simp [show (6718464 * k + 5704486) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 2852243) = 10077696 * k + 8556730 := by
    unfold C
    simp [show (3359232 * k + 2852243) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 8556730) = 5038848 * k + 4278365 := by
    unfold C
    simp [show (10077696 * k + 8556730) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 4278365) = 15116544 * k + 12835096 := by
    unfold C
    simp [show (5038848 * k + 4278365) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 12835096) = 7558272 * k + 6417548 := by
    unfold C
    simp [show (15116544 * k + 12835096) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 6417548) = 3779136 * k + 3208774 := by
    unfold C
    simp [show (7558272 * k + 6417548) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 3208774) = 1889568 * k + 1604387 := by
    unfold C
    simp [show (3779136 * k + 3208774) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1604387) = 5668704 * k + 4813162 := by
    unfold C
    simp [show (1889568 * k + 1604387) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 4813162) = 2834352 * k + 2406581 := by
    unfold C
    simp [show (5668704 * k + 4813162) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2406581) = 8503056 * k + 7219744 := by
    unfold C
    simp [show (2834352 * k + 2406581) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 7219744) = 4251528 * k + 3609872 := by
    unfold C
    simp [show (8503056 * k + 7219744) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 3609872) = 2125764 * k + 1804936 := by
    unfold C
    simp [show (4251528 * k + 3609872) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1804936) = 1062882 * k + 902468 := by
    unfold C
    simp [show (2125764 * k + 1804936) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 902468) = 531441 * k + 451234 := by
    unfold C
    simp [show (1062882 * k + 902468) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 890319) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 890319)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_890527 : ∀ k : Nat,
    iterate (1048576 * k + 890527) 32 = 531441 * k + 451339 ∧
      531441 * k + 451339 < 1048576 * k + 890527 := by
  intro k
  have h1 : C (1048576 * k + 890527) = 3145728 * k + 2671582 := by
    unfold C
    simp [show (1048576 * k + 890527) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2671582) = 1572864 * k + 1335791 := by
    unfold C
    simp [show (3145728 * k + 2671582) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1335791) = 4718592 * k + 4007374 := by
    unfold C
    simp [show (1572864 * k + 1335791) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 4007374) = 2359296 * k + 2003687 := by
    unfold C
    simp [show (4718592 * k + 4007374) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 2003687) = 7077888 * k + 6011062 := by
    unfold C
    simp [show (2359296 * k + 2003687) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 6011062) = 3538944 * k + 3005531 := by
    unfold C
    simp [show (7077888 * k + 6011062) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 3005531) = 10616832 * k + 9016594 := by
    unfold C
    simp [show (3538944 * k + 3005531) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 9016594) = 5308416 * k + 4508297 := by
    unfold C
    simp [show (10616832 * k + 9016594) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 4508297) = 15925248 * k + 13524892 := by
    unfold C
    simp [show (5308416 * k + 4508297) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 13524892) = 7962624 * k + 6762446 := by
    unfold C
    simp [show (15925248 * k + 13524892) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 6762446) = 3981312 * k + 3381223 := by
    unfold C
    simp [show (7962624 * k + 6762446) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 3381223) = 11943936 * k + 10143670 := by
    unfold C
    simp [show (3981312 * k + 3381223) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 10143670) = 5971968 * k + 5071835 := by
    unfold C
    simp [show (11943936 * k + 10143670) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 5071835) = 17915904 * k + 15215506 := by
    unfold C
    simp [show (5971968 * k + 5071835) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 15215506) = 8957952 * k + 7607753 := by
    unfold C
    simp [show (17915904 * k + 15215506) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 7607753) = 26873856 * k + 22823260 := by
    unfold C
    simp [show (8957952 * k + 7607753) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 22823260) = 13436928 * k + 11411630 := by
    unfold C
    simp [show (26873856 * k + 22823260) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 11411630) = 6718464 * k + 5705815 := by
    unfold C
    simp [show (13436928 * k + 11411630) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 5705815) = 20155392 * k + 17117446 := by
    unfold C
    simp [show (6718464 * k + 5705815) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 17117446) = 10077696 * k + 8558723 := by
    unfold C
    simp [show (20155392 * k + 17117446) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 8558723) = 30233088 * k + 25676170 := by
    unfold C
    simp [show (10077696 * k + 8558723) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 25676170) = 15116544 * k + 12838085 := by
    unfold C
    simp [show (30233088 * k + 25676170) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 12838085) = 45349632 * k + 38514256 := by
    unfold C
    simp [show (15116544 * k + 12838085) % 2 ≠ 0 by omega]
    omega
  have h24 : C (45349632 * k + 38514256) = 22674816 * k + 19257128 := by
    unfold C
    simp [show (45349632 * k + 38514256) % 2 = 0 by omega]
    omega
  have h25 : C (22674816 * k + 19257128) = 11337408 * k + 9628564 := by
    unfold C
    simp [show (22674816 * k + 19257128) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 9628564) = 5668704 * k + 4814282 := by
    unfold C
    simp [show (11337408 * k + 9628564) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 4814282) = 2834352 * k + 2407141 := by
    unfold C
    simp [show (5668704 * k + 4814282) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2407141) = 8503056 * k + 7221424 := by
    unfold C
    simp [show (2834352 * k + 2407141) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 7221424) = 4251528 * k + 3610712 := by
    unfold C
    simp [show (8503056 * k + 7221424) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 3610712) = 2125764 * k + 1805356 := by
    unfold C
    simp [show (4251528 * k + 3610712) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1805356) = 1062882 * k + 902678 := by
    unfold C
    simp [show (2125764 * k + 1805356) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 902678) = 531441 * k + 451339 := by
    unfold C
    simp [show (1062882 * k + 902678) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 890527) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 890527)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_890907 : ∀ k : Nat,
    iterate (1048576 * k + 890907) 32 = 531441 * k + 451532 ∧
      531441 * k + 451532 < 1048576 * k + 890907 := by
  intro k
  have h1 : C (1048576 * k + 890907) = 3145728 * k + 2672722 := by
    unfold C
    simp [show (1048576 * k + 890907) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2672722) = 1572864 * k + 1336361 := by
    unfold C
    simp [show (3145728 * k + 2672722) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1336361) = 4718592 * k + 4009084 := by
    unfold C
    simp [show (1572864 * k + 1336361) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 4009084) = 2359296 * k + 2004542 := by
    unfold C
    simp [show (4718592 * k + 4009084) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 2004542) = 1179648 * k + 1002271 := by
    unfold C
    simp [show (2359296 * k + 2004542) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 1002271) = 3538944 * k + 3006814 := by
    unfold C
    simp [show (1179648 * k + 1002271) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 3006814) = 1769472 * k + 1503407 := by
    unfold C
    simp [show (3538944 * k + 3006814) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1503407) = 5308416 * k + 4510222 := by
    unfold C
    simp [show (1769472 * k + 1503407) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 4510222) = 2654208 * k + 2255111 := by
    unfold C
    simp [show (5308416 * k + 4510222) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 2255111) = 7962624 * k + 6765334 := by
    unfold C
    simp [show (2654208 * k + 2255111) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 6765334) = 3981312 * k + 3382667 := by
    unfold C
    simp [show (7962624 * k + 6765334) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 3382667) = 11943936 * k + 10148002 := by
    unfold C
    simp [show (3981312 * k + 3382667) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 10148002) = 5971968 * k + 5074001 := by
    unfold C
    simp [show (11943936 * k + 10148002) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 5074001) = 17915904 * k + 15222004 := by
    unfold C
    simp [show (5971968 * k + 5074001) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 15222004) = 8957952 * k + 7611002 := by
    unfold C
    simp [show (17915904 * k + 15222004) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 7611002) = 4478976 * k + 3805501 := by
    unfold C
    simp [show (8957952 * k + 7611002) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 3805501) = 13436928 * k + 11416504 := by
    unfold C
    simp [show (4478976 * k + 3805501) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 11416504) = 6718464 * k + 5708252 := by
    unfold C
    simp [show (13436928 * k + 11416504) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 5708252) = 3359232 * k + 2854126 := by
    unfold C
    simp [show (6718464 * k + 5708252) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 2854126) = 1679616 * k + 1427063 := by
    unfold C
    simp [show (3359232 * k + 2854126) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 1427063) = 5038848 * k + 4281190 := by
    unfold C
    simp [show (1679616 * k + 1427063) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 4281190) = 2519424 * k + 2140595 := by
    unfold C
    simp [show (5038848 * k + 4281190) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 2140595) = 7558272 * k + 6421786 := by
    unfold C
    simp [show (2519424 * k + 2140595) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 6421786) = 3779136 * k + 3210893 := by
    unfold C
    simp [show (7558272 * k + 6421786) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 3210893) = 11337408 * k + 9632680 := by
    unfold C
    simp [show (3779136 * k + 3210893) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 9632680) = 5668704 * k + 4816340 := by
    unfold C
    simp [show (11337408 * k + 9632680) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 4816340) = 2834352 * k + 2408170 := by
    unfold C
    simp [show (5668704 * k + 4816340) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2408170) = 1417176 * k + 1204085 := by
    unfold C
    simp [show (2834352 * k + 2408170) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 1204085) = 4251528 * k + 3612256 := by
    unfold C
    simp [show (1417176 * k + 1204085) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 3612256) = 2125764 * k + 1806128 := by
    unfold C
    simp [show (4251528 * k + 3612256) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1806128) = 1062882 * k + 903064 := by
    unfold C
    simp [show (2125764 * k + 1806128) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 903064) = 531441 * k + 451532 := by
    unfold C
    simp [show (1062882 * k + 903064) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 890907) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 890907)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_891375 : ∀ k : Nat,
    iterate (1048576 * k + 891375) 32 = 531441 * k + 451769 ∧
      531441 * k + 451769 < 1048576 * k + 891375 := by
  intro k
  have h1 : C (1048576 * k + 891375) = 3145728 * k + 2674126 := by
    unfold C
    simp [show (1048576 * k + 891375) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2674126) = 1572864 * k + 1337063 := by
    unfold C
    simp [show (3145728 * k + 2674126) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1337063) = 4718592 * k + 4011190 := by
    unfold C
    simp [show (1572864 * k + 1337063) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 4011190) = 2359296 * k + 2005595 := by
    unfold C
    simp [show (4718592 * k + 4011190) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 2005595) = 7077888 * k + 6016786 := by
    unfold C
    simp [show (2359296 * k + 2005595) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 6016786) = 3538944 * k + 3008393 := by
    unfold C
    simp [show (7077888 * k + 6016786) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 3008393) = 10616832 * k + 9025180 := by
    unfold C
    simp [show (3538944 * k + 3008393) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 9025180) = 5308416 * k + 4512590 := by
    unfold C
    simp [show (10616832 * k + 9025180) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 4512590) = 2654208 * k + 2256295 := by
    unfold C
    simp [show (5308416 * k + 4512590) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 2256295) = 7962624 * k + 6768886 := by
    unfold C
    simp [show (2654208 * k + 2256295) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 6768886) = 3981312 * k + 3384443 := by
    unfold C
    simp [show (7962624 * k + 6768886) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 3384443) = 11943936 * k + 10153330 := by
    unfold C
    simp [show (3981312 * k + 3384443) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 10153330) = 5971968 * k + 5076665 := by
    unfold C
    simp [show (11943936 * k + 10153330) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 5076665) = 17915904 * k + 15229996 := by
    unfold C
    simp [show (5971968 * k + 5076665) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 15229996) = 8957952 * k + 7614998 := by
    unfold C
    simp [show (17915904 * k + 15229996) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 7614998) = 4478976 * k + 3807499 := by
    unfold C
    simp [show (8957952 * k + 7614998) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 3807499) = 13436928 * k + 11422498 := by
    unfold C
    simp [show (4478976 * k + 3807499) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 11422498) = 6718464 * k + 5711249 := by
    unfold C
    simp [show (13436928 * k + 11422498) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 5711249) = 20155392 * k + 17133748 := by
    unfold C
    simp [show (6718464 * k + 5711249) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 17133748) = 10077696 * k + 8566874 := by
    unfold C
    simp [show (20155392 * k + 17133748) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 8566874) = 5038848 * k + 4283437 := by
    unfold C
    simp [show (10077696 * k + 8566874) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 4283437) = 15116544 * k + 12850312 := by
    unfold C
    simp [show (5038848 * k + 4283437) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 12850312) = 7558272 * k + 6425156 := by
    unfold C
    simp [show (15116544 * k + 12850312) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 6425156) = 3779136 * k + 3212578 := by
    unfold C
    simp [show (7558272 * k + 6425156) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 3212578) = 1889568 * k + 1606289 := by
    unfold C
    simp [show (3779136 * k + 3212578) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1606289) = 5668704 * k + 4818868 := by
    unfold C
    simp [show (1889568 * k + 1606289) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 4818868) = 2834352 * k + 2409434 := by
    unfold C
    simp [show (5668704 * k + 4818868) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2409434) = 1417176 * k + 1204717 := by
    unfold C
    simp [show (2834352 * k + 2409434) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 1204717) = 4251528 * k + 3614152 := by
    unfold C
    simp [show (1417176 * k + 1204717) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 3614152) = 2125764 * k + 1807076 := by
    unfold C
    simp [show (4251528 * k + 3614152) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1807076) = 1062882 * k + 903538 := by
    unfold C
    simp [show (2125764 * k + 1807076) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 903538) = 531441 * k + 451769 := by
    unfold C
    simp [show (1062882 * k + 903538) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 891375) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 891375)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_892143 : ∀ k : Nat,
    iterate (1048576 * k + 892143) 32 = 531441 * k + 452158 ∧
      531441 * k + 452158 < 1048576 * k + 892143 := by
  intro k
  have h1 : C (1048576 * k + 892143) = 3145728 * k + 2676430 := by
    unfold C
    simp [show (1048576 * k + 892143) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2676430) = 1572864 * k + 1338215 := by
    unfold C
    simp [show (3145728 * k + 2676430) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1338215) = 4718592 * k + 4014646 := by
    unfold C
    simp [show (1572864 * k + 1338215) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 4014646) = 2359296 * k + 2007323 := by
    unfold C
    simp [show (4718592 * k + 4014646) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 2007323) = 7077888 * k + 6021970 := by
    unfold C
    simp [show (2359296 * k + 2007323) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 6021970) = 3538944 * k + 3010985 := by
    unfold C
    simp [show (7077888 * k + 6021970) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 3010985) = 10616832 * k + 9032956 := by
    unfold C
    simp [show (3538944 * k + 3010985) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 9032956) = 5308416 * k + 4516478 := by
    unfold C
    simp [show (10616832 * k + 9032956) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 4516478) = 2654208 * k + 2258239 := by
    unfold C
    simp [show (5308416 * k + 4516478) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 2258239) = 7962624 * k + 6774718 := by
    unfold C
    simp [show (2654208 * k + 2258239) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 6774718) = 3981312 * k + 3387359 := by
    unfold C
    simp [show (7962624 * k + 6774718) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 3387359) = 11943936 * k + 10162078 := by
    unfold C
    simp [show (3981312 * k + 3387359) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 10162078) = 5971968 * k + 5081039 := by
    unfold C
    simp [show (11943936 * k + 10162078) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 5081039) = 17915904 * k + 15243118 := by
    unfold C
    simp [show (5971968 * k + 5081039) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 15243118) = 8957952 * k + 7621559 := by
    unfold C
    simp [show (17915904 * k + 15243118) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 7621559) = 26873856 * k + 22864678 := by
    unfold C
    simp [show (8957952 * k + 7621559) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 22864678) = 13436928 * k + 11432339 := by
    unfold C
    simp [show (26873856 * k + 22864678) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 11432339) = 40310784 * k + 34297018 := by
    unfold C
    simp [show (13436928 * k + 11432339) % 2 ≠ 0 by omega]
    omega
  have h19 : C (40310784 * k + 34297018) = 20155392 * k + 17148509 := by
    unfold C
    simp [show (40310784 * k + 34297018) % 2 = 0 by omega]
    omega
  have h20 : C (20155392 * k + 17148509) = 60466176 * k + 51445528 := by
    unfold C
    simp [show (20155392 * k + 17148509) % 2 ≠ 0 by omega]
    omega
  have h21 : C (60466176 * k + 51445528) = 30233088 * k + 25722764 := by
    unfold C
    simp [show (60466176 * k + 51445528) % 2 = 0 by omega]
    omega
  have h22 : C (30233088 * k + 25722764) = 15116544 * k + 12861382 := by
    unfold C
    simp [show (30233088 * k + 25722764) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 12861382) = 7558272 * k + 6430691 := by
    unfold C
    simp [show (15116544 * k + 12861382) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 6430691) = 22674816 * k + 19292074 := by
    unfold C
    simp [show (7558272 * k + 6430691) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 19292074) = 11337408 * k + 9646037 := by
    unfold C
    simp [show (22674816 * k + 19292074) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 9646037) = 34012224 * k + 28938112 := by
    unfold C
    simp [show (11337408 * k + 9646037) % 2 ≠ 0 by omega]
    omega
  have h27 : C (34012224 * k + 28938112) = 17006112 * k + 14469056 := by
    unfold C
    simp [show (34012224 * k + 28938112) % 2 = 0 by omega]
    omega
  have h28 : C (17006112 * k + 14469056) = 8503056 * k + 7234528 := by
    unfold C
    simp [show (17006112 * k + 14469056) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 7234528) = 4251528 * k + 3617264 := by
    unfold C
    simp [show (8503056 * k + 7234528) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 3617264) = 2125764 * k + 1808632 := by
    unfold C
    simp [show (4251528 * k + 3617264) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1808632) = 1062882 * k + 904316 := by
    unfold C
    simp [show (2125764 * k + 1808632) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 904316) = 531441 * k + 452158 := by
    unfold C
    simp [show (1062882 * k + 904316) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 892143) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 892143)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_892263 : ∀ k : Nat,
    iterate (1048576 * k + 892263) 32 = 531441 * k + 452219 ∧
      531441 * k + 452219 < 1048576 * k + 892263 := by
  intro k
  have h1 : C (1048576 * k + 892263) = 3145728 * k + 2676790 := by
    unfold C
    simp [show (1048576 * k + 892263) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2676790) = 1572864 * k + 1338395 := by
    unfold C
    simp [show (3145728 * k + 2676790) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1338395) = 4718592 * k + 4015186 := by
    unfold C
    simp [show (1572864 * k + 1338395) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 4015186) = 2359296 * k + 2007593 := by
    unfold C
    simp [show (4718592 * k + 4015186) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 2007593) = 7077888 * k + 6022780 := by
    unfold C
    simp [show (2359296 * k + 2007593) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 6022780) = 3538944 * k + 3011390 := by
    unfold C
    simp [show (7077888 * k + 6022780) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 3011390) = 1769472 * k + 1505695 := by
    unfold C
    simp [show (3538944 * k + 3011390) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1505695) = 5308416 * k + 4517086 := by
    unfold C
    simp [show (1769472 * k + 1505695) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 4517086) = 2654208 * k + 2258543 := by
    unfold C
    simp [show (5308416 * k + 4517086) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 2258543) = 7962624 * k + 6775630 := by
    unfold C
    simp [show (2654208 * k + 2258543) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 6775630) = 3981312 * k + 3387815 := by
    unfold C
    simp [show (7962624 * k + 6775630) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 3387815) = 11943936 * k + 10163446 := by
    unfold C
    simp [show (3981312 * k + 3387815) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 10163446) = 5971968 * k + 5081723 := by
    unfold C
    simp [show (11943936 * k + 10163446) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 5081723) = 17915904 * k + 15245170 := by
    unfold C
    simp [show (5971968 * k + 5081723) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 15245170) = 8957952 * k + 7622585 := by
    unfold C
    simp [show (17915904 * k + 15245170) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 7622585) = 26873856 * k + 22867756 := by
    unfold C
    simp [show (8957952 * k + 7622585) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 22867756) = 13436928 * k + 11433878 := by
    unfold C
    simp [show (26873856 * k + 22867756) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 11433878) = 6718464 * k + 5716939 := by
    unfold C
    simp [show (13436928 * k + 11433878) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 5716939) = 20155392 * k + 17150818 := by
    unfold C
    simp [show (6718464 * k + 5716939) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 17150818) = 10077696 * k + 8575409 := by
    unfold C
    simp [show (20155392 * k + 17150818) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 8575409) = 30233088 * k + 25726228 := by
    unfold C
    simp [show (10077696 * k + 8575409) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 25726228) = 15116544 * k + 12863114 := by
    unfold C
    simp [show (30233088 * k + 25726228) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 12863114) = 7558272 * k + 6431557 := by
    unfold C
    simp [show (15116544 * k + 12863114) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 6431557) = 22674816 * k + 19294672 := by
    unfold C
    simp [show (7558272 * k + 6431557) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 19294672) = 11337408 * k + 9647336 := by
    unfold C
    simp [show (22674816 * k + 19294672) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 9647336) = 5668704 * k + 4823668 := by
    unfold C
    simp [show (11337408 * k + 9647336) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 4823668) = 2834352 * k + 2411834 := by
    unfold C
    simp [show (5668704 * k + 4823668) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2411834) = 1417176 * k + 1205917 := by
    unfold C
    simp [show (2834352 * k + 2411834) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 1205917) = 4251528 * k + 3617752 := by
    unfold C
    simp [show (1417176 * k + 1205917) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 3617752) = 2125764 * k + 1808876 := by
    unfold C
    simp [show (4251528 * k + 3617752) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1808876) = 1062882 * k + 904438 := by
    unfold C
    simp [show (2125764 * k + 1808876) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 904438) = 531441 * k + 452219 := by
    unfold C
    simp [show (1062882 * k + 904438) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 892263) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 892263)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_892399 : ∀ k : Nat,
    iterate (1048576 * k + 892399) 32 = 531441 * k + 452288 ∧
      531441 * k + 452288 < 1048576 * k + 892399 := by
  intro k
  have h1 : C (1048576 * k + 892399) = 3145728 * k + 2677198 := by
    unfold C
    simp [show (1048576 * k + 892399) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2677198) = 1572864 * k + 1338599 := by
    unfold C
    simp [show (3145728 * k + 2677198) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1338599) = 4718592 * k + 4015798 := by
    unfold C
    simp [show (1572864 * k + 1338599) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 4015798) = 2359296 * k + 2007899 := by
    unfold C
    simp [show (4718592 * k + 4015798) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 2007899) = 7077888 * k + 6023698 := by
    unfold C
    simp [show (2359296 * k + 2007899) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 6023698) = 3538944 * k + 3011849 := by
    unfold C
    simp [show (7077888 * k + 6023698) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 3011849) = 10616832 * k + 9035548 := by
    unfold C
    simp [show (3538944 * k + 3011849) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 9035548) = 5308416 * k + 4517774 := by
    unfold C
    simp [show (10616832 * k + 9035548) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 4517774) = 2654208 * k + 2258887 := by
    unfold C
    simp [show (5308416 * k + 4517774) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 2258887) = 7962624 * k + 6776662 := by
    unfold C
    simp [show (2654208 * k + 2258887) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 6776662) = 3981312 * k + 3388331 := by
    unfold C
    simp [show (7962624 * k + 6776662) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 3388331) = 11943936 * k + 10164994 := by
    unfold C
    simp [show (3981312 * k + 3388331) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 10164994) = 5971968 * k + 5082497 := by
    unfold C
    simp [show (11943936 * k + 10164994) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 5082497) = 17915904 * k + 15247492 := by
    unfold C
    simp [show (5971968 * k + 5082497) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 15247492) = 8957952 * k + 7623746 := by
    unfold C
    simp [show (17915904 * k + 15247492) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 7623746) = 4478976 * k + 3811873 := by
    unfold C
    simp [show (8957952 * k + 7623746) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 3811873) = 13436928 * k + 11435620 := by
    unfold C
    simp [show (4478976 * k + 3811873) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 11435620) = 6718464 * k + 5717810 := by
    unfold C
    simp [show (13436928 * k + 11435620) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 5717810) = 3359232 * k + 2858905 := by
    unfold C
    simp [show (6718464 * k + 5717810) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 2858905) = 10077696 * k + 8576716 := by
    unfold C
    simp [show (3359232 * k + 2858905) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 8576716) = 5038848 * k + 4288358 := by
    unfold C
    simp [show (10077696 * k + 8576716) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 4288358) = 2519424 * k + 2144179 := by
    unfold C
    simp [show (5038848 * k + 4288358) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 2144179) = 7558272 * k + 6432538 := by
    unfold C
    simp [show (2519424 * k + 2144179) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 6432538) = 3779136 * k + 3216269 := by
    unfold C
    simp [show (7558272 * k + 6432538) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 3216269) = 11337408 * k + 9648808 := by
    unfold C
    simp [show (3779136 * k + 3216269) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 9648808) = 5668704 * k + 4824404 := by
    unfold C
    simp [show (11337408 * k + 9648808) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 4824404) = 2834352 * k + 2412202 := by
    unfold C
    simp [show (5668704 * k + 4824404) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2412202) = 1417176 * k + 1206101 := by
    unfold C
    simp [show (2834352 * k + 2412202) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 1206101) = 4251528 * k + 3618304 := by
    unfold C
    simp [show (1417176 * k + 1206101) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 3618304) = 2125764 * k + 1809152 := by
    unfold C
    simp [show (4251528 * k + 3618304) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1809152) = 1062882 * k + 904576 := by
    unfold C
    simp [show (2125764 * k + 1809152) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 904576) = 531441 * k + 452288 := by
    unfold C
    simp [show (1062882 * k + 904576) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 892399) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 892399)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_892575 : ∀ k : Nat,
    iterate (1048576 * k + 892575) 32 = 531441 * k + 452377 ∧
      531441 * k + 452377 < 1048576 * k + 892575 := by
  intro k
  have h1 : C (1048576 * k + 892575) = 3145728 * k + 2677726 := by
    unfold C
    simp [show (1048576 * k + 892575) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2677726) = 1572864 * k + 1338863 := by
    unfold C
    simp [show (3145728 * k + 2677726) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1338863) = 4718592 * k + 4016590 := by
    unfold C
    simp [show (1572864 * k + 1338863) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 4016590) = 2359296 * k + 2008295 := by
    unfold C
    simp [show (4718592 * k + 4016590) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 2008295) = 7077888 * k + 6024886 := by
    unfold C
    simp [show (2359296 * k + 2008295) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 6024886) = 3538944 * k + 3012443 := by
    unfold C
    simp [show (7077888 * k + 6024886) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 3012443) = 10616832 * k + 9037330 := by
    unfold C
    simp [show (3538944 * k + 3012443) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 9037330) = 5308416 * k + 4518665 := by
    unfold C
    simp [show (10616832 * k + 9037330) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 4518665) = 15925248 * k + 13555996 := by
    unfold C
    simp [show (5308416 * k + 4518665) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 13555996) = 7962624 * k + 6777998 := by
    unfold C
    simp [show (15925248 * k + 13555996) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 6777998) = 3981312 * k + 3388999 := by
    unfold C
    simp [show (7962624 * k + 6777998) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 3388999) = 11943936 * k + 10166998 := by
    unfold C
    simp [show (3981312 * k + 3388999) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 10166998) = 5971968 * k + 5083499 := by
    unfold C
    simp [show (11943936 * k + 10166998) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 5083499) = 17915904 * k + 15250498 := by
    unfold C
    simp [show (5971968 * k + 5083499) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 15250498) = 8957952 * k + 7625249 := by
    unfold C
    simp [show (17915904 * k + 15250498) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 7625249) = 26873856 * k + 22875748 := by
    unfold C
    simp [show (8957952 * k + 7625249) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 22875748) = 13436928 * k + 11437874 := by
    unfold C
    simp [show (26873856 * k + 22875748) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 11437874) = 6718464 * k + 5718937 := by
    unfold C
    simp [show (13436928 * k + 11437874) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 5718937) = 20155392 * k + 17156812 := by
    unfold C
    simp [show (6718464 * k + 5718937) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 17156812) = 10077696 * k + 8578406 := by
    unfold C
    simp [show (20155392 * k + 17156812) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 8578406) = 5038848 * k + 4289203 := by
    unfold C
    simp [show (10077696 * k + 8578406) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 4289203) = 15116544 * k + 12867610 := by
    unfold C
    simp [show (5038848 * k + 4289203) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 12867610) = 7558272 * k + 6433805 := by
    unfold C
    simp [show (15116544 * k + 12867610) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 6433805) = 22674816 * k + 19301416 := by
    unfold C
    simp [show (7558272 * k + 6433805) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 19301416) = 11337408 * k + 9650708 := by
    unfold C
    simp [show (22674816 * k + 19301416) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 9650708) = 5668704 * k + 4825354 := by
    unfold C
    simp [show (11337408 * k + 9650708) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 4825354) = 2834352 * k + 2412677 := by
    unfold C
    simp [show (5668704 * k + 4825354) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2412677) = 8503056 * k + 7238032 := by
    unfold C
    simp [show (2834352 * k + 2412677) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 7238032) = 4251528 * k + 3619016 := by
    unfold C
    simp [show (8503056 * k + 7238032) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 3619016) = 2125764 * k + 1809508 := by
    unfold C
    simp [show (4251528 * k + 3619016) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1809508) = 1062882 * k + 904754 := by
    unfold C
    simp [show (2125764 * k + 1809508) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 904754) = 531441 * k + 452377 := by
    unfold C
    simp [show (1062882 * k + 904754) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 892575) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 892575)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_892831 : ∀ k : Nat,
    iterate (1048576 * k + 892831) 32 = 531441 * k + 452507 ∧
      531441 * k + 452507 < 1048576 * k + 892831 := by
  intro k
  have h1 : C (1048576 * k + 892831) = 3145728 * k + 2678494 := by
    unfold C
    simp [show (1048576 * k + 892831) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2678494) = 1572864 * k + 1339247 := by
    unfold C
    simp [show (3145728 * k + 2678494) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1339247) = 4718592 * k + 4017742 := by
    unfold C
    simp [show (1572864 * k + 1339247) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 4017742) = 2359296 * k + 2008871 := by
    unfold C
    simp [show (4718592 * k + 4017742) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 2008871) = 7077888 * k + 6026614 := by
    unfold C
    simp [show (2359296 * k + 2008871) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 6026614) = 3538944 * k + 3013307 := by
    unfold C
    simp [show (7077888 * k + 6026614) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 3013307) = 10616832 * k + 9039922 := by
    unfold C
    simp [show (3538944 * k + 3013307) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 9039922) = 5308416 * k + 4519961 := by
    unfold C
    simp [show (10616832 * k + 9039922) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 4519961) = 15925248 * k + 13559884 := by
    unfold C
    simp [show (5308416 * k + 4519961) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 13559884) = 7962624 * k + 6779942 := by
    unfold C
    simp [show (15925248 * k + 13559884) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 6779942) = 3981312 * k + 3389971 := by
    unfold C
    simp [show (7962624 * k + 6779942) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 3389971) = 11943936 * k + 10169914 := by
    unfold C
    simp [show (3981312 * k + 3389971) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 10169914) = 5971968 * k + 5084957 := by
    unfold C
    simp [show (11943936 * k + 10169914) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 5084957) = 17915904 * k + 15254872 := by
    unfold C
    simp [show (5971968 * k + 5084957) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 15254872) = 8957952 * k + 7627436 := by
    unfold C
    simp [show (17915904 * k + 15254872) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 7627436) = 4478976 * k + 3813718 := by
    unfold C
    simp [show (8957952 * k + 7627436) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 3813718) = 2239488 * k + 1906859 := by
    unfold C
    simp [show (4478976 * k + 3813718) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 1906859) = 6718464 * k + 5720578 := by
    unfold C
    simp [show (2239488 * k + 1906859) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 5720578) = 3359232 * k + 2860289 := by
    unfold C
    simp [show (6718464 * k + 5720578) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 2860289) = 10077696 * k + 8580868 := by
    unfold C
    simp [show (3359232 * k + 2860289) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 8580868) = 5038848 * k + 4290434 := by
    unfold C
    simp [show (10077696 * k + 8580868) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 4290434) = 2519424 * k + 2145217 := by
    unfold C
    simp [show (5038848 * k + 4290434) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 2145217) = 7558272 * k + 6435652 := by
    unfold C
    simp [show (2519424 * k + 2145217) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 6435652) = 3779136 * k + 3217826 := by
    unfold C
    simp [show (7558272 * k + 6435652) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 3217826) = 1889568 * k + 1608913 := by
    unfold C
    simp [show (3779136 * k + 3217826) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1608913) = 5668704 * k + 4826740 := by
    unfold C
    simp [show (1889568 * k + 1608913) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 4826740) = 2834352 * k + 2413370 := by
    unfold C
    simp [show (5668704 * k + 4826740) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2413370) = 1417176 * k + 1206685 := by
    unfold C
    simp [show (2834352 * k + 2413370) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 1206685) = 4251528 * k + 3620056 := by
    unfold C
    simp [show (1417176 * k + 1206685) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 3620056) = 2125764 * k + 1810028 := by
    unfold C
    simp [show (4251528 * k + 3620056) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1810028) = 1062882 * k + 905014 := by
    unfold C
    simp [show (2125764 * k + 1810028) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 905014) = 531441 * k + 452507 := by
    unfold C
    simp [show (1062882 * k + 905014) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 892831) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 892831)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_893723 : ∀ k : Nat,
    iterate (1048576 * k + 893723) 32 = 531441 * k + 452959 ∧
      531441 * k + 452959 < 1048576 * k + 893723 := by
  intro k
  have h1 : C (1048576 * k + 893723) = 3145728 * k + 2681170 := by
    unfold C
    simp [show (1048576 * k + 893723) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2681170) = 1572864 * k + 1340585 := by
    unfold C
    simp [show (3145728 * k + 2681170) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1340585) = 4718592 * k + 4021756 := by
    unfold C
    simp [show (1572864 * k + 1340585) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 4021756) = 2359296 * k + 2010878 := by
    unfold C
    simp [show (4718592 * k + 4021756) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 2010878) = 1179648 * k + 1005439 := by
    unfold C
    simp [show (2359296 * k + 2010878) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 1005439) = 3538944 * k + 3016318 := by
    unfold C
    simp [show (1179648 * k + 1005439) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 3016318) = 1769472 * k + 1508159 := by
    unfold C
    simp [show (3538944 * k + 3016318) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1508159) = 5308416 * k + 4524478 := by
    unfold C
    simp [show (1769472 * k + 1508159) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 4524478) = 2654208 * k + 2262239 := by
    unfold C
    simp [show (5308416 * k + 4524478) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 2262239) = 7962624 * k + 6786718 := by
    unfold C
    simp [show (2654208 * k + 2262239) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 6786718) = 3981312 * k + 3393359 := by
    unfold C
    simp [show (7962624 * k + 6786718) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 3393359) = 11943936 * k + 10180078 := by
    unfold C
    simp [show (3981312 * k + 3393359) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 10180078) = 5971968 * k + 5090039 := by
    unfold C
    simp [show (11943936 * k + 10180078) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 5090039) = 17915904 * k + 15270118 := by
    unfold C
    simp [show (5971968 * k + 5090039) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 15270118) = 8957952 * k + 7635059 := by
    unfold C
    simp [show (17915904 * k + 15270118) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 7635059) = 26873856 * k + 22905178 := by
    unfold C
    simp [show (8957952 * k + 7635059) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 22905178) = 13436928 * k + 11452589 := by
    unfold C
    simp [show (26873856 * k + 22905178) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 11452589) = 40310784 * k + 34357768 := by
    unfold C
    simp [show (13436928 * k + 11452589) % 2 ≠ 0 by omega]
    omega
  have h19 : C (40310784 * k + 34357768) = 20155392 * k + 17178884 := by
    unfold C
    simp [show (40310784 * k + 34357768) % 2 = 0 by omega]
    omega
  have h20 : C (20155392 * k + 17178884) = 10077696 * k + 8589442 := by
    unfold C
    simp [show (20155392 * k + 17178884) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 8589442) = 5038848 * k + 4294721 := by
    unfold C
    simp [show (10077696 * k + 8589442) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 4294721) = 15116544 * k + 12884164 := by
    unfold C
    simp [show (5038848 * k + 4294721) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 12884164) = 7558272 * k + 6442082 := by
    unfold C
    simp [show (15116544 * k + 12884164) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 6442082) = 3779136 * k + 3221041 := by
    unfold C
    simp [show (7558272 * k + 6442082) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 3221041) = 11337408 * k + 9663124 := by
    unfold C
    simp [show (3779136 * k + 3221041) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 9663124) = 5668704 * k + 4831562 := by
    unfold C
    simp [show (11337408 * k + 9663124) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 4831562) = 2834352 * k + 2415781 := by
    unfold C
    simp [show (5668704 * k + 4831562) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2415781) = 8503056 * k + 7247344 := by
    unfold C
    simp [show (2834352 * k + 2415781) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 7247344) = 4251528 * k + 3623672 := by
    unfold C
    simp [show (8503056 * k + 7247344) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 3623672) = 2125764 * k + 1811836 := by
    unfold C
    simp [show (4251528 * k + 3623672) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1811836) = 1062882 * k + 905918 := by
    unfold C
    simp [show (2125764 * k + 1811836) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 905918) = 531441 * k + 452959 := by
    unfold C
    simp [show (1062882 * k + 905918) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 893723) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 893723)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_894191 : ∀ k : Nat,
    iterate (1048576 * k + 894191) 32 = 531441 * k + 453196 ∧
      531441 * k + 453196 < 1048576 * k + 894191 := by
  intro k
  have h1 : C (1048576 * k + 894191) = 3145728 * k + 2682574 := by
    unfold C
    simp [show (1048576 * k + 894191) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2682574) = 1572864 * k + 1341287 := by
    unfold C
    simp [show (3145728 * k + 2682574) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1341287) = 4718592 * k + 4023862 := by
    unfold C
    simp [show (1572864 * k + 1341287) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 4023862) = 2359296 * k + 2011931 := by
    unfold C
    simp [show (4718592 * k + 4023862) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 2011931) = 7077888 * k + 6035794 := by
    unfold C
    simp [show (2359296 * k + 2011931) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 6035794) = 3538944 * k + 3017897 := by
    unfold C
    simp [show (7077888 * k + 6035794) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 3017897) = 10616832 * k + 9053692 := by
    unfold C
    simp [show (3538944 * k + 3017897) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 9053692) = 5308416 * k + 4526846 := by
    unfold C
    simp [show (10616832 * k + 9053692) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 4526846) = 2654208 * k + 2263423 := by
    unfold C
    simp [show (5308416 * k + 4526846) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 2263423) = 7962624 * k + 6790270 := by
    unfold C
    simp [show (2654208 * k + 2263423) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 6790270) = 3981312 * k + 3395135 := by
    unfold C
    simp [show (7962624 * k + 6790270) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 3395135) = 11943936 * k + 10185406 := by
    unfold C
    simp [show (3981312 * k + 3395135) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 10185406) = 5971968 * k + 5092703 := by
    unfold C
    simp [show (11943936 * k + 10185406) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 5092703) = 17915904 * k + 15278110 := by
    unfold C
    simp [show (5971968 * k + 5092703) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 15278110) = 8957952 * k + 7639055 := by
    unfold C
    simp [show (17915904 * k + 15278110) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 7639055) = 26873856 * k + 22917166 := by
    unfold C
    simp [show (8957952 * k + 7639055) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 22917166) = 13436928 * k + 11458583 := by
    unfold C
    simp [show (26873856 * k + 22917166) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 11458583) = 40310784 * k + 34375750 := by
    unfold C
    simp [show (13436928 * k + 11458583) % 2 ≠ 0 by omega]
    omega
  have h19 : C (40310784 * k + 34375750) = 20155392 * k + 17187875 := by
    unfold C
    simp [show (40310784 * k + 34375750) % 2 = 0 by omega]
    omega
  have h20 : C (20155392 * k + 17187875) = 60466176 * k + 51563626 := by
    unfold C
    simp [show (20155392 * k + 17187875) % 2 ≠ 0 by omega]
    omega
  have h21 : C (60466176 * k + 51563626) = 30233088 * k + 25781813 := by
    unfold C
    simp [show (60466176 * k + 51563626) % 2 = 0 by omega]
    omega
  have h22 : C (30233088 * k + 25781813) = 90699264 * k + 77345440 := by
    unfold C
    simp [show (30233088 * k + 25781813) % 2 ≠ 0 by omega]
    omega
  have h23 : C (90699264 * k + 77345440) = 45349632 * k + 38672720 := by
    unfold C
    simp [show (90699264 * k + 77345440) % 2 = 0 by omega]
    omega
  have h24 : C (45349632 * k + 38672720) = 22674816 * k + 19336360 := by
    unfold C
    simp [show (45349632 * k + 38672720) % 2 = 0 by omega]
    omega
  have h25 : C (22674816 * k + 19336360) = 11337408 * k + 9668180 := by
    unfold C
    simp [show (22674816 * k + 19336360) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 9668180) = 5668704 * k + 4834090 := by
    unfold C
    simp [show (11337408 * k + 9668180) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 4834090) = 2834352 * k + 2417045 := by
    unfold C
    simp [show (5668704 * k + 4834090) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2417045) = 8503056 * k + 7251136 := by
    unfold C
    simp [show (2834352 * k + 2417045) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 7251136) = 4251528 * k + 3625568 := by
    unfold C
    simp [show (8503056 * k + 7251136) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 3625568) = 2125764 * k + 1812784 := by
    unfold C
    simp [show (4251528 * k + 3625568) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1812784) = 1062882 * k + 906392 := by
    unfold C
    simp [show (2125764 * k + 1812784) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 906392) = 531441 * k + 453196 := by
    unfold C
    simp [show (1062882 * k + 906392) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 894191) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 894191)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_894279 : ∀ k : Nat,
    iterate (1048576 * k + 894279) 32 = 531441 * k + 453241 ∧
      531441 * k + 453241 < 1048576 * k + 894279 := by
  intro k
  have h1 : C (1048576 * k + 894279) = 3145728 * k + 2682838 := by
    unfold C
    simp [show (1048576 * k + 894279) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2682838) = 1572864 * k + 1341419 := by
    unfold C
    simp [show (3145728 * k + 2682838) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1341419) = 4718592 * k + 4024258 := by
    unfold C
    simp [show (1572864 * k + 1341419) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 4024258) = 2359296 * k + 2012129 := by
    unfold C
    simp [show (4718592 * k + 4024258) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 2012129) = 7077888 * k + 6036388 := by
    unfold C
    simp [show (2359296 * k + 2012129) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 6036388) = 3538944 * k + 3018194 := by
    unfold C
    simp [show (7077888 * k + 6036388) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 3018194) = 1769472 * k + 1509097 := by
    unfold C
    simp [show (3538944 * k + 3018194) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1509097) = 5308416 * k + 4527292 := by
    unfold C
    simp [show (1769472 * k + 1509097) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 4527292) = 2654208 * k + 2263646 := by
    unfold C
    simp [show (5308416 * k + 4527292) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 2263646) = 1327104 * k + 1131823 := by
    unfold C
    simp [show (2654208 * k + 2263646) % 2 = 0 by omega]
    omega
  have h11 : C (1327104 * k + 1131823) = 3981312 * k + 3395470 := by
    unfold C
    simp [show (1327104 * k + 1131823) % 2 ≠ 0 by omega]
    omega
  have h12 : C (3981312 * k + 3395470) = 1990656 * k + 1697735 := by
    unfold C
    simp [show (3981312 * k + 3395470) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 1697735) = 5971968 * k + 5093206 := by
    unfold C
    simp [show (1990656 * k + 1697735) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 5093206) = 2985984 * k + 2546603 := by
    unfold C
    simp [show (5971968 * k + 5093206) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 2546603) = 8957952 * k + 7639810 := by
    unfold C
    simp [show (2985984 * k + 2546603) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 7639810) = 4478976 * k + 3819905 := by
    unfold C
    simp [show (8957952 * k + 7639810) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 3819905) = 13436928 * k + 11459716 := by
    unfold C
    simp [show (4478976 * k + 3819905) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 11459716) = 6718464 * k + 5729858 := by
    unfold C
    simp [show (13436928 * k + 11459716) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 5729858) = 3359232 * k + 2864929 := by
    unfold C
    simp [show (6718464 * k + 5729858) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 2864929) = 10077696 * k + 8594788 := by
    unfold C
    simp [show (3359232 * k + 2864929) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 8594788) = 5038848 * k + 4297394 := by
    unfold C
    simp [show (10077696 * k + 8594788) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 4297394) = 2519424 * k + 2148697 := by
    unfold C
    simp [show (5038848 * k + 4297394) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 2148697) = 7558272 * k + 6446092 := by
    unfold C
    simp [show (2519424 * k + 2148697) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 6446092) = 3779136 * k + 3223046 := by
    unfold C
    simp [show (7558272 * k + 6446092) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 3223046) = 1889568 * k + 1611523 := by
    unfold C
    simp [show (3779136 * k + 3223046) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1611523) = 5668704 * k + 4834570 := by
    unfold C
    simp [show (1889568 * k + 1611523) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 4834570) = 2834352 * k + 2417285 := by
    unfold C
    simp [show (5668704 * k + 4834570) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2417285) = 8503056 * k + 7251856 := by
    unfold C
    simp [show (2834352 * k + 2417285) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 7251856) = 4251528 * k + 3625928 := by
    unfold C
    simp [show (8503056 * k + 7251856) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 3625928) = 2125764 * k + 1812964 := by
    unfold C
    simp [show (4251528 * k + 3625928) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1812964) = 1062882 * k + 906482 := by
    unfold C
    simp [show (2125764 * k + 1812964) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 906482) = 531441 * k + 453241 := by
    unfold C
    simp [show (1062882 * k + 906482) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 894279) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 894279)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_895215 : ∀ k : Nat,
    iterate (1048576 * k + 895215) 32 = 531441 * k + 453715 ∧
      531441 * k + 453715 < 1048576 * k + 895215 := by
  intro k
  have h1 : C (1048576 * k + 895215) = 3145728 * k + 2685646 := by
    unfold C
    simp [show (1048576 * k + 895215) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2685646) = 1572864 * k + 1342823 := by
    unfold C
    simp [show (3145728 * k + 2685646) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1342823) = 4718592 * k + 4028470 := by
    unfold C
    simp [show (1572864 * k + 1342823) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 4028470) = 2359296 * k + 2014235 := by
    unfold C
    simp [show (4718592 * k + 4028470) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 2014235) = 7077888 * k + 6042706 := by
    unfold C
    simp [show (2359296 * k + 2014235) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 6042706) = 3538944 * k + 3021353 := by
    unfold C
    simp [show (7077888 * k + 6042706) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 3021353) = 10616832 * k + 9064060 := by
    unfold C
    simp [show (3538944 * k + 3021353) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 9064060) = 5308416 * k + 4532030 := by
    unfold C
    simp [show (10616832 * k + 9064060) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 4532030) = 2654208 * k + 2266015 := by
    unfold C
    simp [show (5308416 * k + 4532030) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 2266015) = 7962624 * k + 6798046 := by
    unfold C
    simp [show (2654208 * k + 2266015) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 6798046) = 3981312 * k + 3399023 := by
    unfold C
    simp [show (7962624 * k + 6798046) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 3399023) = 11943936 * k + 10197070 := by
    unfold C
    simp [show (3981312 * k + 3399023) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 10197070) = 5971968 * k + 5098535 := by
    unfold C
    simp [show (11943936 * k + 10197070) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 5098535) = 17915904 * k + 15295606 := by
    unfold C
    simp [show (5971968 * k + 5098535) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 15295606) = 8957952 * k + 7647803 := by
    unfold C
    simp [show (17915904 * k + 15295606) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 7647803) = 26873856 * k + 22943410 := by
    unfold C
    simp [show (8957952 * k + 7647803) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 22943410) = 13436928 * k + 11471705 := by
    unfold C
    simp [show (26873856 * k + 22943410) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 11471705) = 40310784 * k + 34415116 := by
    unfold C
    simp [show (13436928 * k + 11471705) % 2 ≠ 0 by omega]
    omega
  have h19 : C (40310784 * k + 34415116) = 20155392 * k + 17207558 := by
    unfold C
    simp [show (40310784 * k + 34415116) % 2 = 0 by omega]
    omega
  have h20 : C (20155392 * k + 17207558) = 10077696 * k + 8603779 := by
    unfold C
    simp [show (20155392 * k + 17207558) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 8603779) = 30233088 * k + 25811338 := by
    unfold C
    simp [show (10077696 * k + 8603779) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 25811338) = 15116544 * k + 12905669 := by
    unfold C
    simp [show (30233088 * k + 25811338) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 12905669) = 45349632 * k + 38717008 := by
    unfold C
    simp [show (15116544 * k + 12905669) % 2 ≠ 0 by omega]
    omega
  have h24 : C (45349632 * k + 38717008) = 22674816 * k + 19358504 := by
    unfold C
    simp [show (45349632 * k + 38717008) % 2 = 0 by omega]
    omega
  have h25 : C (22674816 * k + 19358504) = 11337408 * k + 9679252 := by
    unfold C
    simp [show (22674816 * k + 19358504) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 9679252) = 5668704 * k + 4839626 := by
    unfold C
    simp [show (11337408 * k + 9679252) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 4839626) = 2834352 * k + 2419813 := by
    unfold C
    simp [show (5668704 * k + 4839626) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2419813) = 8503056 * k + 7259440 := by
    unfold C
    simp [show (2834352 * k + 2419813) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 7259440) = 4251528 * k + 3629720 := by
    unfold C
    simp [show (8503056 * k + 7259440) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 3629720) = 2125764 * k + 1814860 := by
    unfold C
    simp [show (4251528 * k + 3629720) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1814860) = 1062882 * k + 907430 := by
    unfold C
    simp [show (2125764 * k + 1814860) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 907430) = 531441 * k + 453715 := by
    unfold C
    simp [show (1062882 * k + 907430) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 895215) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 895215)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_895335 : ∀ k : Nat,
    iterate (1048576 * k + 895335) 32 = 531441 * k + 453776 ∧
      531441 * k + 453776 < 1048576 * k + 895335 := by
  intro k
  have h1 : C (1048576 * k + 895335) = 3145728 * k + 2686006 := by
    unfold C
    simp [show (1048576 * k + 895335) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2686006) = 1572864 * k + 1343003 := by
    unfold C
    simp [show (3145728 * k + 2686006) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1343003) = 4718592 * k + 4029010 := by
    unfold C
    simp [show (1572864 * k + 1343003) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 4029010) = 2359296 * k + 2014505 := by
    unfold C
    simp [show (4718592 * k + 4029010) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 2014505) = 7077888 * k + 6043516 := by
    unfold C
    simp [show (2359296 * k + 2014505) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 6043516) = 3538944 * k + 3021758 := by
    unfold C
    simp [show (7077888 * k + 6043516) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 3021758) = 1769472 * k + 1510879 := by
    unfold C
    simp [show (3538944 * k + 3021758) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1510879) = 5308416 * k + 4532638 := by
    unfold C
    simp [show (1769472 * k + 1510879) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 4532638) = 2654208 * k + 2266319 := by
    unfold C
    simp [show (5308416 * k + 4532638) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 2266319) = 7962624 * k + 6798958 := by
    unfold C
    simp [show (2654208 * k + 2266319) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 6798958) = 3981312 * k + 3399479 := by
    unfold C
    simp [show (7962624 * k + 6798958) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 3399479) = 11943936 * k + 10198438 := by
    unfold C
    simp [show (3981312 * k + 3399479) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 10198438) = 5971968 * k + 5099219 := by
    unfold C
    simp [show (11943936 * k + 10198438) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 5099219) = 17915904 * k + 15297658 := by
    unfold C
    simp [show (5971968 * k + 5099219) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 15297658) = 8957952 * k + 7648829 := by
    unfold C
    simp [show (17915904 * k + 15297658) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 7648829) = 26873856 * k + 22946488 := by
    unfold C
    simp [show (8957952 * k + 7648829) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 22946488) = 13436928 * k + 11473244 := by
    unfold C
    simp [show (26873856 * k + 22946488) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 11473244) = 6718464 * k + 5736622 := by
    unfold C
    simp [show (13436928 * k + 11473244) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 5736622) = 3359232 * k + 2868311 := by
    unfold C
    simp [show (6718464 * k + 5736622) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 2868311) = 10077696 * k + 8604934 := by
    unfold C
    simp [show (3359232 * k + 2868311) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 8604934) = 5038848 * k + 4302467 := by
    unfold C
    simp [show (10077696 * k + 8604934) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 4302467) = 15116544 * k + 12907402 := by
    unfold C
    simp [show (5038848 * k + 4302467) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 12907402) = 7558272 * k + 6453701 := by
    unfold C
    simp [show (15116544 * k + 12907402) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 6453701) = 22674816 * k + 19361104 := by
    unfold C
    simp [show (7558272 * k + 6453701) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 19361104) = 11337408 * k + 9680552 := by
    unfold C
    simp [show (22674816 * k + 19361104) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 9680552) = 5668704 * k + 4840276 := by
    unfold C
    simp [show (11337408 * k + 9680552) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 4840276) = 2834352 * k + 2420138 := by
    unfold C
    simp [show (5668704 * k + 4840276) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2420138) = 1417176 * k + 1210069 := by
    unfold C
    simp [show (2834352 * k + 2420138) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 1210069) = 4251528 * k + 3630208 := by
    unfold C
    simp [show (1417176 * k + 1210069) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 3630208) = 2125764 * k + 1815104 := by
    unfold C
    simp [show (4251528 * k + 3630208) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1815104) = 1062882 * k + 907552 := by
    unfold C
    simp [show (2125764 * k + 1815104) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 907552) = 531441 * k + 453776 := by
    unfold C
    simp [show (1062882 * k + 907552) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 895335) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 895335)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_895771 : ∀ k : Nat,
    iterate (1048576 * k + 895771) 32 = 531441 * k + 453997 ∧
      531441 * k + 453997 < 1048576 * k + 895771 := by
  intro k
  have h1 : C (1048576 * k + 895771) = 3145728 * k + 2687314 := by
    unfold C
    simp [show (1048576 * k + 895771) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2687314) = 1572864 * k + 1343657 := by
    unfold C
    simp [show (3145728 * k + 2687314) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1343657) = 4718592 * k + 4030972 := by
    unfold C
    simp [show (1572864 * k + 1343657) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 4030972) = 2359296 * k + 2015486 := by
    unfold C
    simp [show (4718592 * k + 4030972) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 2015486) = 1179648 * k + 1007743 := by
    unfold C
    simp [show (2359296 * k + 2015486) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 1007743) = 3538944 * k + 3023230 := by
    unfold C
    simp [show (1179648 * k + 1007743) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 3023230) = 1769472 * k + 1511615 := by
    unfold C
    simp [show (3538944 * k + 3023230) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1511615) = 5308416 * k + 4534846 := by
    unfold C
    simp [show (1769472 * k + 1511615) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 4534846) = 2654208 * k + 2267423 := by
    unfold C
    simp [show (5308416 * k + 4534846) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 2267423) = 7962624 * k + 6802270 := by
    unfold C
    simp [show (2654208 * k + 2267423) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 6802270) = 3981312 * k + 3401135 := by
    unfold C
    simp [show (7962624 * k + 6802270) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 3401135) = 11943936 * k + 10203406 := by
    unfold C
    simp [show (3981312 * k + 3401135) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 10203406) = 5971968 * k + 5101703 := by
    unfold C
    simp [show (11943936 * k + 10203406) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 5101703) = 17915904 * k + 15305110 := by
    unfold C
    simp [show (5971968 * k + 5101703) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 15305110) = 8957952 * k + 7652555 := by
    unfold C
    simp [show (17915904 * k + 15305110) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 7652555) = 26873856 * k + 22957666 := by
    unfold C
    simp [show (8957952 * k + 7652555) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 22957666) = 13436928 * k + 11478833 := by
    unfold C
    simp [show (26873856 * k + 22957666) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 11478833) = 40310784 * k + 34436500 := by
    unfold C
    simp [show (13436928 * k + 11478833) % 2 ≠ 0 by omega]
    omega
  have h19 : C (40310784 * k + 34436500) = 20155392 * k + 17218250 := by
    unfold C
    simp [show (40310784 * k + 34436500) % 2 = 0 by omega]
    omega
  have h20 : C (20155392 * k + 17218250) = 10077696 * k + 8609125 := by
    unfold C
    simp [show (20155392 * k + 17218250) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 8609125) = 30233088 * k + 25827376 := by
    unfold C
    simp [show (10077696 * k + 8609125) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 25827376) = 15116544 * k + 12913688 := by
    unfold C
    simp [show (30233088 * k + 25827376) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 12913688) = 7558272 * k + 6456844 := by
    unfold C
    simp [show (15116544 * k + 12913688) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 6456844) = 3779136 * k + 3228422 := by
    unfold C
    simp [show (7558272 * k + 6456844) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 3228422) = 1889568 * k + 1614211 := by
    unfold C
    simp [show (3779136 * k + 3228422) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1614211) = 5668704 * k + 4842634 := by
    unfold C
    simp [show (1889568 * k + 1614211) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 4842634) = 2834352 * k + 2421317 := by
    unfold C
    simp [show (5668704 * k + 4842634) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2421317) = 8503056 * k + 7263952 := by
    unfold C
    simp [show (2834352 * k + 2421317) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 7263952) = 4251528 * k + 3631976 := by
    unfold C
    simp [show (8503056 * k + 7263952) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 3631976) = 2125764 * k + 1815988 := by
    unfold C
    simp [show (4251528 * k + 3631976) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1815988) = 1062882 * k + 907994 := by
    unfold C
    simp [show (2125764 * k + 1815988) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 907994) = 531441 * k + 453997 := by
    unfold C
    simp [show (1062882 * k + 907994) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 895771) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 895771)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_896463 : ∀ k : Nat,
    iterate (1048576 * k + 896463) 32 = 531441 * k + 454348 ∧
      531441 * k + 454348 < 1048576 * k + 896463 := by
  intro k
  have h1 : C (1048576 * k + 896463) = 3145728 * k + 2689390 := by
    unfold C
    simp [show (1048576 * k + 896463) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2689390) = 1572864 * k + 1344695 := by
    unfold C
    simp [show (3145728 * k + 2689390) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1344695) = 4718592 * k + 4034086 := by
    unfold C
    simp [show (1572864 * k + 1344695) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 4034086) = 2359296 * k + 2017043 := by
    unfold C
    simp [show (4718592 * k + 4034086) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 2017043) = 7077888 * k + 6051130 := by
    unfold C
    simp [show (2359296 * k + 2017043) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 6051130) = 3538944 * k + 3025565 := by
    unfold C
    simp [show (7077888 * k + 6051130) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 3025565) = 10616832 * k + 9076696 := by
    unfold C
    simp [show (3538944 * k + 3025565) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 9076696) = 5308416 * k + 4538348 := by
    unfold C
    simp [show (10616832 * k + 9076696) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 4538348) = 2654208 * k + 2269174 := by
    unfold C
    simp [show (5308416 * k + 4538348) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 2269174) = 1327104 * k + 1134587 := by
    unfold C
    simp [show (2654208 * k + 2269174) % 2 = 0 by omega]
    omega
  have h11 : C (1327104 * k + 1134587) = 3981312 * k + 3403762 := by
    unfold C
    simp [show (1327104 * k + 1134587) % 2 ≠ 0 by omega]
    omega
  have h12 : C (3981312 * k + 3403762) = 1990656 * k + 1701881 := by
    unfold C
    simp [show (3981312 * k + 3403762) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 1701881) = 5971968 * k + 5105644 := by
    unfold C
    simp [show (1990656 * k + 1701881) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 5105644) = 2985984 * k + 2552822 := by
    unfold C
    simp [show (5971968 * k + 5105644) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 2552822) = 1492992 * k + 1276411 := by
    unfold C
    simp [show (2985984 * k + 2552822) % 2 = 0 by omega]
    omega
  have h16 : C (1492992 * k + 1276411) = 4478976 * k + 3829234 := by
    unfold C
    simp [show (1492992 * k + 1276411) % 2 ≠ 0 by omega]
    omega
  have h17 : C (4478976 * k + 3829234) = 2239488 * k + 1914617 := by
    unfold C
    simp [show (4478976 * k + 3829234) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 1914617) = 6718464 * k + 5743852 := by
    unfold C
    simp [show (2239488 * k + 1914617) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 5743852) = 3359232 * k + 2871926 := by
    unfold C
    simp [show (6718464 * k + 5743852) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 2871926) = 1679616 * k + 1435963 := by
    unfold C
    simp [show (3359232 * k + 2871926) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 1435963) = 5038848 * k + 4307890 := by
    unfold C
    simp [show (1679616 * k + 1435963) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 4307890) = 2519424 * k + 2153945 := by
    unfold C
    simp [show (5038848 * k + 4307890) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 2153945) = 7558272 * k + 6461836 := by
    unfold C
    simp [show (2519424 * k + 2153945) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 6461836) = 3779136 * k + 3230918 := by
    unfold C
    simp [show (7558272 * k + 6461836) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 3230918) = 1889568 * k + 1615459 := by
    unfold C
    simp [show (3779136 * k + 3230918) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1615459) = 5668704 * k + 4846378 := by
    unfold C
    simp [show (1889568 * k + 1615459) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 4846378) = 2834352 * k + 2423189 := by
    unfold C
    simp [show (5668704 * k + 4846378) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2423189) = 8503056 * k + 7269568 := by
    unfold C
    simp [show (2834352 * k + 2423189) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 7269568) = 4251528 * k + 3634784 := by
    unfold C
    simp [show (8503056 * k + 7269568) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 3634784) = 2125764 * k + 1817392 := by
    unfold C
    simp [show (4251528 * k + 3634784) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1817392) = 1062882 * k + 908696 := by
    unfold C
    simp [show (2125764 * k + 1817392) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 908696) = 531441 * k + 454348 := by
    unfold C
    simp [show (1062882 * k + 908696) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 896463) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 896463)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_896623 : ∀ k : Nat,
    iterate (1048576 * k + 896623) 32 = 531441 * k + 454429 ∧
      531441 * k + 454429 < 1048576 * k + 896623 := by
  intro k
  have h1 : C (1048576 * k + 896623) = 3145728 * k + 2689870 := by
    unfold C
    simp [show (1048576 * k + 896623) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2689870) = 1572864 * k + 1344935 := by
    unfold C
    simp [show (3145728 * k + 2689870) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1344935) = 4718592 * k + 4034806 := by
    unfold C
    simp [show (1572864 * k + 1344935) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 4034806) = 2359296 * k + 2017403 := by
    unfold C
    simp [show (4718592 * k + 4034806) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 2017403) = 7077888 * k + 6052210 := by
    unfold C
    simp [show (2359296 * k + 2017403) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 6052210) = 3538944 * k + 3026105 := by
    unfold C
    simp [show (7077888 * k + 6052210) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 3026105) = 10616832 * k + 9078316 := by
    unfold C
    simp [show (3538944 * k + 3026105) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 9078316) = 5308416 * k + 4539158 := by
    unfold C
    simp [show (10616832 * k + 9078316) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 4539158) = 2654208 * k + 2269579 := by
    unfold C
    simp [show (5308416 * k + 4539158) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 2269579) = 7962624 * k + 6808738 := by
    unfold C
    simp [show (2654208 * k + 2269579) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 6808738) = 3981312 * k + 3404369 := by
    unfold C
    simp [show (7962624 * k + 6808738) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 3404369) = 11943936 * k + 10213108 := by
    unfold C
    simp [show (3981312 * k + 3404369) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 10213108) = 5971968 * k + 5106554 := by
    unfold C
    simp [show (11943936 * k + 10213108) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 5106554) = 2985984 * k + 2553277 := by
    unfold C
    simp [show (5971968 * k + 5106554) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 2553277) = 8957952 * k + 7659832 := by
    unfold C
    simp [show (2985984 * k + 2553277) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 7659832) = 4478976 * k + 3829916 := by
    unfold C
    simp [show (8957952 * k + 7659832) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 3829916) = 2239488 * k + 1914958 := by
    unfold C
    simp [show (4478976 * k + 3829916) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 1914958) = 1119744 * k + 957479 := by
    unfold C
    simp [show (2239488 * k + 1914958) % 2 = 0 by omega]
    omega
  have h19 : C (1119744 * k + 957479) = 3359232 * k + 2872438 := by
    unfold C
    simp [show (1119744 * k + 957479) % 2 ≠ 0 by omega]
    omega
  have h20 : C (3359232 * k + 2872438) = 1679616 * k + 1436219 := by
    unfold C
    simp [show (3359232 * k + 2872438) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 1436219) = 5038848 * k + 4308658 := by
    unfold C
    simp [show (1679616 * k + 1436219) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 4308658) = 2519424 * k + 2154329 := by
    unfold C
    simp [show (5038848 * k + 4308658) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 2154329) = 7558272 * k + 6462988 := by
    unfold C
    simp [show (2519424 * k + 2154329) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 6462988) = 3779136 * k + 3231494 := by
    unfold C
    simp [show (7558272 * k + 6462988) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 3231494) = 1889568 * k + 1615747 := by
    unfold C
    simp [show (3779136 * k + 3231494) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1615747) = 5668704 * k + 4847242 := by
    unfold C
    simp [show (1889568 * k + 1615747) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 4847242) = 2834352 * k + 2423621 := by
    unfold C
    simp [show (5668704 * k + 4847242) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2423621) = 8503056 * k + 7270864 := by
    unfold C
    simp [show (2834352 * k + 2423621) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 7270864) = 4251528 * k + 3635432 := by
    unfold C
    simp [show (8503056 * k + 7270864) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 3635432) = 2125764 * k + 1817716 := by
    unfold C
    simp [show (4251528 * k + 3635432) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1817716) = 1062882 * k + 908858 := by
    unfold C
    simp [show (2125764 * k + 1817716) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 908858) = 531441 * k + 454429 := by
    unfold C
    simp [show (1062882 * k + 908858) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 896623) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 896623)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_896671 : ∀ k : Nat,
    iterate (1048576 * k + 896671) 32 = 531441 * k + 454453 ∧
      531441 * k + 454453 < 1048576 * k + 896671 := by
  intro k
  have h1 : C (1048576 * k + 896671) = 3145728 * k + 2690014 := by
    unfold C
    simp [show (1048576 * k + 896671) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2690014) = 1572864 * k + 1345007 := by
    unfold C
    simp [show (3145728 * k + 2690014) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1345007) = 4718592 * k + 4035022 := by
    unfold C
    simp [show (1572864 * k + 1345007) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 4035022) = 2359296 * k + 2017511 := by
    unfold C
    simp [show (4718592 * k + 4035022) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 2017511) = 7077888 * k + 6052534 := by
    unfold C
    simp [show (2359296 * k + 2017511) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 6052534) = 3538944 * k + 3026267 := by
    unfold C
    simp [show (7077888 * k + 6052534) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 3026267) = 10616832 * k + 9078802 := by
    unfold C
    simp [show (3538944 * k + 3026267) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 9078802) = 5308416 * k + 4539401 := by
    unfold C
    simp [show (10616832 * k + 9078802) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 4539401) = 15925248 * k + 13618204 := by
    unfold C
    simp [show (5308416 * k + 4539401) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 13618204) = 7962624 * k + 6809102 := by
    unfold C
    simp [show (15925248 * k + 13618204) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 6809102) = 3981312 * k + 3404551 := by
    unfold C
    simp [show (7962624 * k + 6809102) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 3404551) = 11943936 * k + 10213654 := by
    unfold C
    simp [show (3981312 * k + 3404551) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 10213654) = 5971968 * k + 5106827 := by
    unfold C
    simp [show (11943936 * k + 10213654) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 5106827) = 17915904 * k + 15320482 := by
    unfold C
    simp [show (5971968 * k + 5106827) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 15320482) = 8957952 * k + 7660241 := by
    unfold C
    simp [show (17915904 * k + 15320482) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 7660241) = 26873856 * k + 22980724 := by
    unfold C
    simp [show (8957952 * k + 7660241) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 22980724) = 13436928 * k + 11490362 := by
    unfold C
    simp [show (26873856 * k + 22980724) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 11490362) = 6718464 * k + 5745181 := by
    unfold C
    simp [show (13436928 * k + 11490362) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 5745181) = 20155392 * k + 17235544 := by
    unfold C
    simp [show (6718464 * k + 5745181) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 17235544) = 10077696 * k + 8617772 := by
    unfold C
    simp [show (20155392 * k + 17235544) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 8617772) = 5038848 * k + 4308886 := by
    unfold C
    simp [show (10077696 * k + 8617772) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 4308886) = 2519424 * k + 2154443 := by
    unfold C
    simp [show (5038848 * k + 4308886) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 2154443) = 7558272 * k + 6463330 := by
    unfold C
    simp [show (2519424 * k + 2154443) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 6463330) = 3779136 * k + 3231665 := by
    unfold C
    simp [show (7558272 * k + 6463330) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 3231665) = 11337408 * k + 9694996 := by
    unfold C
    simp [show (3779136 * k + 3231665) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 9694996) = 5668704 * k + 4847498 := by
    unfold C
    simp [show (11337408 * k + 9694996) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 4847498) = 2834352 * k + 2423749 := by
    unfold C
    simp [show (5668704 * k + 4847498) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2423749) = 8503056 * k + 7271248 := by
    unfold C
    simp [show (2834352 * k + 2423749) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 7271248) = 4251528 * k + 3635624 := by
    unfold C
    simp [show (8503056 * k + 7271248) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 3635624) = 2125764 * k + 1817812 := by
    unfold C
    simp [show (4251528 * k + 3635624) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1817812) = 1062882 * k + 908906 := by
    unfold C
    simp [show (2125764 * k + 1817812) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 908906) = 531441 * k + 454453 := by
    unfold C
    simp [show (1062882 * k + 908906) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 896671) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 896671)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_897263 : ∀ k : Nat,
    iterate (1048576 * k + 897263) 32 = 531441 * k + 454753 ∧
      531441 * k + 454753 < 1048576 * k + 897263 := by
  intro k
  have h1 : C (1048576 * k + 897263) = 3145728 * k + 2691790 := by
    unfold C
    simp [show (1048576 * k + 897263) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2691790) = 1572864 * k + 1345895 := by
    unfold C
    simp [show (3145728 * k + 2691790) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1345895) = 4718592 * k + 4037686 := by
    unfold C
    simp [show (1572864 * k + 1345895) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 4037686) = 2359296 * k + 2018843 := by
    unfold C
    simp [show (4718592 * k + 4037686) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 2018843) = 7077888 * k + 6056530 := by
    unfold C
    simp [show (2359296 * k + 2018843) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 6056530) = 3538944 * k + 3028265 := by
    unfold C
    simp [show (7077888 * k + 6056530) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 3028265) = 10616832 * k + 9084796 := by
    unfold C
    simp [show (3538944 * k + 3028265) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 9084796) = 5308416 * k + 4542398 := by
    unfold C
    simp [show (10616832 * k + 9084796) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 4542398) = 2654208 * k + 2271199 := by
    unfold C
    simp [show (5308416 * k + 4542398) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 2271199) = 7962624 * k + 6813598 := by
    unfold C
    simp [show (2654208 * k + 2271199) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 6813598) = 3981312 * k + 3406799 := by
    unfold C
    simp [show (7962624 * k + 6813598) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 3406799) = 11943936 * k + 10220398 := by
    unfold C
    simp [show (3981312 * k + 3406799) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 10220398) = 5971968 * k + 5110199 := by
    unfold C
    simp [show (11943936 * k + 10220398) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 5110199) = 17915904 * k + 15330598 := by
    unfold C
    simp [show (5971968 * k + 5110199) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 15330598) = 8957952 * k + 7665299 := by
    unfold C
    simp [show (17915904 * k + 15330598) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 7665299) = 26873856 * k + 22995898 := by
    unfold C
    simp [show (8957952 * k + 7665299) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 22995898) = 13436928 * k + 11497949 := by
    unfold C
    simp [show (26873856 * k + 22995898) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 11497949) = 40310784 * k + 34493848 := by
    unfold C
    simp [show (13436928 * k + 11497949) % 2 ≠ 0 by omega]
    omega
  have h19 : C (40310784 * k + 34493848) = 20155392 * k + 17246924 := by
    unfold C
    simp [show (40310784 * k + 34493848) % 2 = 0 by omega]
    omega
  have h20 : C (20155392 * k + 17246924) = 10077696 * k + 8623462 := by
    unfold C
    simp [show (20155392 * k + 17246924) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 8623462) = 5038848 * k + 4311731 := by
    unfold C
    simp [show (10077696 * k + 8623462) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 4311731) = 15116544 * k + 12935194 := by
    unfold C
    simp [show (5038848 * k + 4311731) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 12935194) = 7558272 * k + 6467597 := by
    unfold C
    simp [show (15116544 * k + 12935194) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 6467597) = 22674816 * k + 19402792 := by
    unfold C
    simp [show (7558272 * k + 6467597) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 19402792) = 11337408 * k + 9701396 := by
    unfold C
    simp [show (22674816 * k + 19402792) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 9701396) = 5668704 * k + 4850698 := by
    unfold C
    simp [show (11337408 * k + 9701396) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 4850698) = 2834352 * k + 2425349 := by
    unfold C
    simp [show (5668704 * k + 4850698) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2425349) = 8503056 * k + 7276048 := by
    unfold C
    simp [show (2834352 * k + 2425349) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 7276048) = 4251528 * k + 3638024 := by
    unfold C
    simp [show (8503056 * k + 7276048) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 3638024) = 2125764 * k + 1819012 := by
    unfold C
    simp [show (4251528 * k + 3638024) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1819012) = 1062882 * k + 909506 := by
    unfold C
    simp [show (2125764 * k + 1819012) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 909506) = 531441 * k + 454753 := by
    unfold C
    simp [show (1062882 * k + 909506) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 897263) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 897263)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

end CollatzM20Shard114
