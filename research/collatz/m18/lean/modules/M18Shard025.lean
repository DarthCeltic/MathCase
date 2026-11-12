import Mathlib.Data.Nat.Prime.Basic

namespace CollatzM18Shard025

def C (n : Nat) : Nat := if n % 2 = 0 then n / 2 else 3 * n + 1

def iterate (n t : Nat) : Nat := Nat.rec n (fun _ previous => C previous) t

theorem descent_mod262144_124319 : ∀ k : Nat,
    iterate (262144 * k + 124319) 29 = 177147 * k + 84011 ∧
      177147 * k + 84011 < 262144 * k + 124319 := by
  intro k
  have h1 : C (262144 * k + 124319) = 786432 * k + 372958 := by
    unfold C
    simp [show (262144 * k + 124319) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 372958) = 393216 * k + 186479 := by
    unfold C
    simp [show (786432 * k + 372958) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 186479) = 1179648 * k + 559438 := by
    unfold C
    simp [show (393216 * k + 186479) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 559438) = 589824 * k + 279719 := by
    unfold C
    simp [show (1179648 * k + 559438) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 279719) = 1769472 * k + 839158 := by
    unfold C
    simp [show (589824 * k + 279719) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 839158) = 884736 * k + 419579 := by
    unfold C
    simp [show (1769472 * k + 839158) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 419579) = 2654208 * k + 1258738 := by
    unfold C
    simp [show (884736 * k + 419579) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 1258738) = 1327104 * k + 629369 := by
    unfold C
    simp [show (2654208 * k + 1258738) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 629369) = 3981312 * k + 1888108 := by
    unfold C
    simp [show (1327104 * k + 629369) % 2 ≠ 0 by omega]
    omega
  have h10 : C (3981312 * k + 1888108) = 1990656 * k + 944054 := by
    unfold C
    simp [show (3981312 * k + 1888108) % 2 = 0 by omega]
    omega
  have h11 : C (1990656 * k + 944054) = 995328 * k + 472027 := by
    unfold C
    simp [show (1990656 * k + 944054) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 472027) = 2985984 * k + 1416082 := by
    unfold C
    simp [show (995328 * k + 472027) % 2 ≠ 0 by omega]
    omega
  have h13 : C (2985984 * k + 1416082) = 1492992 * k + 708041 := by
    unfold C
    simp [show (2985984 * k + 1416082) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 708041) = 4478976 * k + 2124124 := by
    unfold C
    simp [show (1492992 * k + 708041) % 2 ≠ 0 by omega]
    omega
  have h15 : C (4478976 * k + 2124124) = 2239488 * k + 1062062 := by
    unfold C
    simp [show (4478976 * k + 2124124) % 2 = 0 by omega]
    omega
  have h16 : C (2239488 * k + 1062062) = 1119744 * k + 531031 := by
    unfold C
    simp [show (2239488 * k + 1062062) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 531031) = 3359232 * k + 1593094 := by
    unfold C
    simp [show (1119744 * k + 531031) % 2 ≠ 0 by omega]
    omega
  have h18 : C (3359232 * k + 1593094) = 1679616 * k + 796547 := by
    unfold C
    simp [show (3359232 * k + 1593094) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 796547) = 5038848 * k + 2389642 := by
    unfold C
    simp [show (1679616 * k + 796547) % 2 ≠ 0 by omega]
    omega
  have h20 : C (5038848 * k + 2389642) = 2519424 * k + 1194821 := by
    unfold C
    simp [show (5038848 * k + 2389642) % 2 = 0 by omega]
    omega
  have h21 : C (2519424 * k + 1194821) = 7558272 * k + 3584464 := by
    unfold C
    simp [show (2519424 * k + 1194821) % 2 ≠ 0 by omega]
    omega
  have h22 : C (7558272 * k + 3584464) = 3779136 * k + 1792232 := by
    unfold C
    simp [show (7558272 * k + 3584464) % 2 = 0 by omega]
    omega
  have h23 : C (3779136 * k + 1792232) = 1889568 * k + 896116 := by
    unfold C
    simp [show (3779136 * k + 1792232) % 2 = 0 by omega]
    omega
  have h24 : C (1889568 * k + 896116) = 944784 * k + 448058 := by
    unfold C
    simp [show (1889568 * k + 896116) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 448058) = 472392 * k + 224029 := by
    unfold C
    simp [show (944784 * k + 448058) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 224029) = 1417176 * k + 672088 := by
    unfold C
    simp [show (472392 * k + 224029) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 672088) = 708588 * k + 336044 := by
    unfold C
    simp [show (1417176 * k + 672088) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 336044) = 354294 * k + 168022 := by
    unfold C
    simp [show (708588 * k + 336044) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 168022) = 177147 * k + 84011 := by
    unfold C
    simp [show (354294 * k + 168022) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 124319) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 124319))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_124367 : ∀ k : Nat,
    iterate (262144 * k + 124367) 29 = 177147 * k + 84044 ∧
      177147 * k + 84044 < 262144 * k + 124367 := by
  intro k
  have h1 : C (262144 * k + 124367) = 786432 * k + 373102 := by
    unfold C
    simp [show (262144 * k + 124367) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 373102) = 393216 * k + 186551 := by
    unfold C
    simp [show (786432 * k + 373102) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 186551) = 1179648 * k + 559654 := by
    unfold C
    simp [show (393216 * k + 186551) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 559654) = 589824 * k + 279827 := by
    unfold C
    simp [show (1179648 * k + 559654) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 279827) = 1769472 * k + 839482 := by
    unfold C
    simp [show (589824 * k + 279827) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 839482) = 884736 * k + 419741 := by
    unfold C
    simp [show (1769472 * k + 839482) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 419741) = 2654208 * k + 1259224 := by
    unfold C
    simp [show (884736 * k + 419741) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 1259224) = 1327104 * k + 629612 := by
    unfold C
    simp [show (2654208 * k + 1259224) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 629612) = 663552 * k + 314806 := by
    unfold C
    simp [show (1327104 * k + 629612) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 314806) = 331776 * k + 157403 := by
    unfold C
    simp [show (663552 * k + 314806) % 2 = 0 by omega]
    omega
  have h11 : C (331776 * k + 157403) = 995328 * k + 472210 := by
    unfold C
    simp [show (331776 * k + 157403) % 2 ≠ 0 by omega]
    omega
  have h12 : C (995328 * k + 472210) = 497664 * k + 236105 := by
    unfold C
    simp [show (995328 * k + 472210) % 2 = 0 by omega]
    omega
  have h13 : C (497664 * k + 236105) = 1492992 * k + 708316 := by
    unfold C
    simp [show (497664 * k + 236105) % 2 ≠ 0 by omega]
    omega
  have h14 : C (1492992 * k + 708316) = 746496 * k + 354158 := by
    unfold C
    simp [show (1492992 * k + 708316) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 354158) = 373248 * k + 177079 := by
    unfold C
    simp [show (746496 * k + 354158) % 2 = 0 by omega]
    omega
  have h16 : C (373248 * k + 177079) = 1119744 * k + 531238 := by
    unfold C
    simp [show (373248 * k + 177079) % 2 ≠ 0 by omega]
    omega
  have h17 : C (1119744 * k + 531238) = 559872 * k + 265619 := by
    unfold C
    simp [show (1119744 * k + 531238) % 2 = 0 by omega]
    omega
  have h18 : C (559872 * k + 265619) = 1679616 * k + 796858 := by
    unfold C
    simp [show (559872 * k + 265619) % 2 ≠ 0 by omega]
    omega
  have h19 : C (1679616 * k + 796858) = 839808 * k + 398429 := by
    unfold C
    simp [show (1679616 * k + 796858) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 398429) = 2519424 * k + 1195288 := by
    unfold C
    simp [show (839808 * k + 398429) % 2 ≠ 0 by omega]
    omega
  have h21 : C (2519424 * k + 1195288) = 1259712 * k + 597644 := by
    unfold C
    simp [show (2519424 * k + 1195288) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 597644) = 629856 * k + 298822 := by
    unfold C
    simp [show (1259712 * k + 597644) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 298822) = 314928 * k + 149411 := by
    unfold C
    simp [show (629856 * k + 298822) % 2 = 0 by omega]
    omega
  have h24 : C (314928 * k + 149411) = 944784 * k + 448234 := by
    unfold C
    simp [show (314928 * k + 149411) % 2 ≠ 0 by omega]
    omega
  have h25 : C (944784 * k + 448234) = 472392 * k + 224117 := by
    unfold C
    simp [show (944784 * k + 448234) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 224117) = 1417176 * k + 672352 := by
    unfold C
    simp [show (472392 * k + 224117) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 672352) = 708588 * k + 336176 := by
    unfold C
    simp [show (1417176 * k + 672352) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 336176) = 354294 * k + 168088 := by
    unfold C
    simp [show (708588 * k + 336176) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 168088) = 177147 * k + 84044 := by
    unfold C
    simp [show (354294 * k + 168088) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 124367) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 124367))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_124647 : ∀ k : Nat,
    iterate (262144 * k + 124647) 29 = 177147 * k + 84233 ∧
      177147 * k + 84233 < 262144 * k + 124647 := by
  intro k
  have h1 : C (262144 * k + 124647) = 786432 * k + 373942 := by
    unfold C
    simp [show (262144 * k + 124647) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 373942) = 393216 * k + 186971 := by
    unfold C
    simp [show (786432 * k + 373942) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 186971) = 1179648 * k + 560914 := by
    unfold C
    simp [show (393216 * k + 186971) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 560914) = 589824 * k + 280457 := by
    unfold C
    simp [show (1179648 * k + 560914) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 280457) = 1769472 * k + 841372 := by
    unfold C
    simp [show (589824 * k + 280457) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 841372) = 884736 * k + 420686 := by
    unfold C
    simp [show (1769472 * k + 841372) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 420686) = 442368 * k + 210343 := by
    unfold C
    simp [show (884736 * k + 420686) % 2 = 0 by omega]
    omega
  have h8 : C (442368 * k + 210343) = 1327104 * k + 631030 := by
    unfold C
    simp [show (442368 * k + 210343) % 2 ≠ 0 by omega]
    omega
  have h9 : C (1327104 * k + 631030) = 663552 * k + 315515 := by
    unfold C
    simp [show (1327104 * k + 631030) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 315515) = 1990656 * k + 946546 := by
    unfold C
    simp [show (663552 * k + 315515) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 946546) = 995328 * k + 473273 := by
    unfold C
    simp [show (1990656 * k + 946546) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 473273) = 2985984 * k + 1419820 := by
    unfold C
    simp [show (995328 * k + 473273) % 2 ≠ 0 by omega]
    omega
  have h13 : C (2985984 * k + 1419820) = 1492992 * k + 709910 := by
    unfold C
    simp [show (2985984 * k + 1419820) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 709910) = 746496 * k + 354955 := by
    unfold C
    simp [show (1492992 * k + 709910) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 354955) = 2239488 * k + 1064866 := by
    unfold C
    simp [show (746496 * k + 354955) % 2 ≠ 0 by omega]
    omega
  have h16 : C (2239488 * k + 1064866) = 1119744 * k + 532433 := by
    unfold C
    simp [show (2239488 * k + 1064866) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 532433) = 3359232 * k + 1597300 := by
    unfold C
    simp [show (1119744 * k + 532433) % 2 ≠ 0 by omega]
    omega
  have h18 : C (3359232 * k + 1597300) = 1679616 * k + 798650 := by
    unfold C
    simp [show (3359232 * k + 1597300) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 798650) = 839808 * k + 399325 := by
    unfold C
    simp [show (1679616 * k + 798650) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 399325) = 2519424 * k + 1197976 := by
    unfold C
    simp [show (839808 * k + 399325) % 2 ≠ 0 by omega]
    omega
  have h21 : C (2519424 * k + 1197976) = 1259712 * k + 598988 := by
    unfold C
    simp [show (2519424 * k + 1197976) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 598988) = 629856 * k + 299494 := by
    unfold C
    simp [show (1259712 * k + 598988) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 299494) = 314928 * k + 149747 := by
    unfold C
    simp [show (629856 * k + 299494) % 2 = 0 by omega]
    omega
  have h24 : C (314928 * k + 149747) = 944784 * k + 449242 := by
    unfold C
    simp [show (314928 * k + 149747) % 2 ≠ 0 by omega]
    omega
  have h25 : C (944784 * k + 449242) = 472392 * k + 224621 := by
    unfold C
    simp [show (944784 * k + 449242) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 224621) = 1417176 * k + 673864 := by
    unfold C
    simp [show (472392 * k + 224621) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 673864) = 708588 * k + 336932 := by
    unfold C
    simp [show (1417176 * k + 673864) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 336932) = 354294 * k + 168466 := by
    unfold C
    simp [show (708588 * k + 336932) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 168466) = 177147 * k + 84233 := by
    unfold C
    simp [show (354294 * k + 168466) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 124647) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 124647))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_125391 : ∀ k : Nat,
    iterate (262144 * k + 125391) 29 = 177147 * k + 84736 ∧
      177147 * k + 84736 < 262144 * k + 125391 := by
  intro k
  have h1 : C (262144 * k + 125391) = 786432 * k + 376174 := by
    unfold C
    simp [show (262144 * k + 125391) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 376174) = 393216 * k + 188087 := by
    unfold C
    simp [show (786432 * k + 376174) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 188087) = 1179648 * k + 564262 := by
    unfold C
    simp [show (393216 * k + 188087) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 564262) = 589824 * k + 282131 := by
    unfold C
    simp [show (1179648 * k + 564262) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 282131) = 1769472 * k + 846394 := by
    unfold C
    simp [show (589824 * k + 282131) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 846394) = 884736 * k + 423197 := by
    unfold C
    simp [show (1769472 * k + 846394) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 423197) = 2654208 * k + 1269592 := by
    unfold C
    simp [show (884736 * k + 423197) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 1269592) = 1327104 * k + 634796 := by
    unfold C
    simp [show (2654208 * k + 1269592) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 634796) = 663552 * k + 317398 := by
    unfold C
    simp [show (1327104 * k + 634796) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 317398) = 331776 * k + 158699 := by
    unfold C
    simp [show (663552 * k + 317398) % 2 = 0 by omega]
    omega
  have h11 : C (331776 * k + 158699) = 995328 * k + 476098 := by
    unfold C
    simp [show (331776 * k + 158699) % 2 ≠ 0 by omega]
    omega
  have h12 : C (995328 * k + 476098) = 497664 * k + 238049 := by
    unfold C
    simp [show (995328 * k + 476098) % 2 = 0 by omega]
    omega
  have h13 : C (497664 * k + 238049) = 1492992 * k + 714148 := by
    unfold C
    simp [show (497664 * k + 238049) % 2 ≠ 0 by omega]
    omega
  have h14 : C (1492992 * k + 714148) = 746496 * k + 357074 := by
    unfold C
    simp [show (1492992 * k + 714148) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 357074) = 373248 * k + 178537 := by
    unfold C
    simp [show (746496 * k + 357074) % 2 = 0 by omega]
    omega
  have h16 : C (373248 * k + 178537) = 1119744 * k + 535612 := by
    unfold C
    simp [show (373248 * k + 178537) % 2 ≠ 0 by omega]
    omega
  have h17 : C (1119744 * k + 535612) = 559872 * k + 267806 := by
    unfold C
    simp [show (1119744 * k + 535612) % 2 = 0 by omega]
    omega
  have h18 : C (559872 * k + 267806) = 279936 * k + 133903 := by
    unfold C
    simp [show (559872 * k + 267806) % 2 = 0 by omega]
    omega
  have h19 : C (279936 * k + 133903) = 839808 * k + 401710 := by
    unfold C
    simp [show (279936 * k + 133903) % 2 ≠ 0 by omega]
    omega
  have h20 : C (839808 * k + 401710) = 419904 * k + 200855 := by
    unfold C
    simp [show (839808 * k + 401710) % 2 = 0 by omega]
    omega
  have h21 : C (419904 * k + 200855) = 1259712 * k + 602566 := by
    unfold C
    simp [show (419904 * k + 200855) % 2 ≠ 0 by omega]
    omega
  have h22 : C (1259712 * k + 602566) = 629856 * k + 301283 := by
    unfold C
    simp [show (1259712 * k + 602566) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 301283) = 1889568 * k + 903850 := by
    unfold C
    simp [show (629856 * k + 301283) % 2 ≠ 0 by omega]
    omega
  have h24 : C (1889568 * k + 903850) = 944784 * k + 451925 := by
    unfold C
    simp [show (1889568 * k + 903850) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 451925) = 2834352 * k + 1355776 := by
    unfold C
    simp [show (944784 * k + 451925) % 2 ≠ 0 by omega]
    omega
  have h26 : C (2834352 * k + 1355776) = 1417176 * k + 677888 := by
    unfold C
    simp [show (2834352 * k + 1355776) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 677888) = 708588 * k + 338944 := by
    unfold C
    simp [show (1417176 * k + 677888) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 338944) = 354294 * k + 169472 := by
    unfold C
    simp [show (708588 * k + 338944) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 169472) = 177147 * k + 84736 := by
    unfold C
    simp [show (354294 * k + 169472) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 125391) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 125391))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_125863 : ∀ k : Nat,
    iterate (262144 * k + 125863) 29 = 177147 * k + 85055 ∧
      177147 * k + 85055 < 262144 * k + 125863 := by
  intro k
  have h1 : C (262144 * k + 125863) = 786432 * k + 377590 := by
    unfold C
    simp [show (262144 * k + 125863) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 377590) = 393216 * k + 188795 := by
    unfold C
    simp [show (786432 * k + 377590) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 188795) = 1179648 * k + 566386 := by
    unfold C
    simp [show (393216 * k + 188795) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 566386) = 589824 * k + 283193 := by
    unfold C
    simp [show (1179648 * k + 566386) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 283193) = 1769472 * k + 849580 := by
    unfold C
    simp [show (589824 * k + 283193) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 849580) = 884736 * k + 424790 := by
    unfold C
    simp [show (1769472 * k + 849580) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 424790) = 442368 * k + 212395 := by
    unfold C
    simp [show (884736 * k + 424790) % 2 = 0 by omega]
    omega
  have h8 : C (442368 * k + 212395) = 1327104 * k + 637186 := by
    unfold C
    simp [show (442368 * k + 212395) % 2 ≠ 0 by omega]
    omega
  have h9 : C (1327104 * k + 637186) = 663552 * k + 318593 := by
    unfold C
    simp [show (1327104 * k + 637186) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 318593) = 1990656 * k + 955780 := by
    unfold C
    simp [show (663552 * k + 318593) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 955780) = 995328 * k + 477890 := by
    unfold C
    simp [show (1990656 * k + 955780) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 477890) = 497664 * k + 238945 := by
    unfold C
    simp [show (995328 * k + 477890) % 2 = 0 by omega]
    omega
  have h13 : C (497664 * k + 238945) = 1492992 * k + 716836 := by
    unfold C
    simp [show (497664 * k + 238945) % 2 ≠ 0 by omega]
    omega
  have h14 : C (1492992 * k + 716836) = 746496 * k + 358418 := by
    unfold C
    simp [show (1492992 * k + 716836) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 358418) = 373248 * k + 179209 := by
    unfold C
    simp [show (746496 * k + 358418) % 2 = 0 by omega]
    omega
  have h16 : C (373248 * k + 179209) = 1119744 * k + 537628 := by
    unfold C
    simp [show (373248 * k + 179209) % 2 ≠ 0 by omega]
    omega
  have h17 : C (1119744 * k + 537628) = 559872 * k + 268814 := by
    unfold C
    simp [show (1119744 * k + 537628) % 2 = 0 by omega]
    omega
  have h18 : C (559872 * k + 268814) = 279936 * k + 134407 := by
    unfold C
    simp [show (559872 * k + 268814) % 2 = 0 by omega]
    omega
  have h19 : C (279936 * k + 134407) = 839808 * k + 403222 := by
    unfold C
    simp [show (279936 * k + 134407) % 2 ≠ 0 by omega]
    omega
  have h20 : C (839808 * k + 403222) = 419904 * k + 201611 := by
    unfold C
    simp [show (839808 * k + 403222) % 2 = 0 by omega]
    omega
  have h21 : C (419904 * k + 201611) = 1259712 * k + 604834 := by
    unfold C
    simp [show (419904 * k + 201611) % 2 ≠ 0 by omega]
    omega
  have h22 : C (1259712 * k + 604834) = 629856 * k + 302417 := by
    unfold C
    simp [show (1259712 * k + 604834) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 302417) = 1889568 * k + 907252 := by
    unfold C
    simp [show (629856 * k + 302417) % 2 ≠ 0 by omega]
    omega
  have h24 : C (1889568 * k + 907252) = 944784 * k + 453626 := by
    unfold C
    simp [show (1889568 * k + 907252) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 453626) = 472392 * k + 226813 := by
    unfold C
    simp [show (944784 * k + 453626) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 226813) = 1417176 * k + 680440 := by
    unfold C
    simp [show (472392 * k + 226813) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 680440) = 708588 * k + 340220 := by
    unfold C
    simp [show (1417176 * k + 680440) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 340220) = 354294 * k + 170110 := by
    unfold C
    simp [show (708588 * k + 340220) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 170110) = 177147 * k + 85055 := by
    unfold C
    simp [show (354294 * k + 170110) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 125863) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 125863))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_125979 : ∀ k : Nat,
    iterate (262144 * k + 125979) 29 = 177147 * k + 85133 ∧
      177147 * k + 85133 < 262144 * k + 125979 := by
  intro k
  have h1 : C (262144 * k + 125979) = 786432 * k + 377938 := by
    unfold C
    simp [show (262144 * k + 125979) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 377938) = 393216 * k + 188969 := by
    unfold C
    simp [show (786432 * k + 377938) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 188969) = 1179648 * k + 566908 := by
    unfold C
    simp [show (393216 * k + 188969) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 566908) = 589824 * k + 283454 := by
    unfold C
    simp [show (1179648 * k + 566908) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 283454) = 294912 * k + 141727 := by
    unfold C
    simp [show (589824 * k + 283454) % 2 = 0 by omega]
    omega
  have h6 : C (294912 * k + 141727) = 884736 * k + 425182 := by
    unfold C
    simp [show (294912 * k + 141727) % 2 ≠ 0 by omega]
    omega
  have h7 : C (884736 * k + 425182) = 442368 * k + 212591 := by
    unfold C
    simp [show (884736 * k + 425182) % 2 = 0 by omega]
    omega
  have h8 : C (442368 * k + 212591) = 1327104 * k + 637774 := by
    unfold C
    simp [show (442368 * k + 212591) % 2 ≠ 0 by omega]
    omega
  have h9 : C (1327104 * k + 637774) = 663552 * k + 318887 := by
    unfold C
    simp [show (1327104 * k + 637774) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 318887) = 1990656 * k + 956662 := by
    unfold C
    simp [show (663552 * k + 318887) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 956662) = 995328 * k + 478331 := by
    unfold C
    simp [show (1990656 * k + 956662) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 478331) = 2985984 * k + 1434994 := by
    unfold C
    simp [show (995328 * k + 478331) % 2 ≠ 0 by omega]
    omega
  have h13 : C (2985984 * k + 1434994) = 1492992 * k + 717497 := by
    unfold C
    simp [show (2985984 * k + 1434994) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 717497) = 4478976 * k + 2152492 := by
    unfold C
    simp [show (1492992 * k + 717497) % 2 ≠ 0 by omega]
    omega
  have h15 : C (4478976 * k + 2152492) = 2239488 * k + 1076246 := by
    unfold C
    simp [show (4478976 * k + 2152492) % 2 = 0 by omega]
    omega
  have h16 : C (2239488 * k + 1076246) = 1119744 * k + 538123 := by
    unfold C
    simp [show (2239488 * k + 1076246) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 538123) = 3359232 * k + 1614370 := by
    unfold C
    simp [show (1119744 * k + 538123) % 2 ≠ 0 by omega]
    omega
  have h18 : C (3359232 * k + 1614370) = 1679616 * k + 807185 := by
    unfold C
    simp [show (3359232 * k + 1614370) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 807185) = 5038848 * k + 2421556 := by
    unfold C
    simp [show (1679616 * k + 807185) % 2 ≠ 0 by omega]
    omega
  have h20 : C (5038848 * k + 2421556) = 2519424 * k + 1210778 := by
    unfold C
    simp [show (5038848 * k + 2421556) % 2 = 0 by omega]
    omega
  have h21 : C (2519424 * k + 1210778) = 1259712 * k + 605389 := by
    unfold C
    simp [show (2519424 * k + 1210778) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 605389) = 3779136 * k + 1816168 := by
    unfold C
    simp [show (1259712 * k + 605389) % 2 ≠ 0 by omega]
    omega
  have h23 : C (3779136 * k + 1816168) = 1889568 * k + 908084 := by
    unfold C
    simp [show (3779136 * k + 1816168) % 2 = 0 by omega]
    omega
  have h24 : C (1889568 * k + 908084) = 944784 * k + 454042 := by
    unfold C
    simp [show (1889568 * k + 908084) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 454042) = 472392 * k + 227021 := by
    unfold C
    simp [show (944784 * k + 454042) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 227021) = 1417176 * k + 681064 := by
    unfold C
    simp [show (472392 * k + 227021) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 681064) = 708588 * k + 340532 := by
    unfold C
    simp [show (1417176 * k + 681064) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 340532) = 354294 * k + 170266 := by
    unfold C
    simp [show (708588 * k + 340532) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 170266) = 177147 * k + 85133 := by
    unfold C
    simp [show (354294 * k + 170266) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 125979) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 125979))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_126183 : ∀ k : Nat,
    iterate (262144 * k + 126183) 29 = 177147 * k + 85271 ∧
      177147 * k + 85271 < 262144 * k + 126183 := by
  intro k
  have h1 : C (262144 * k + 126183) = 786432 * k + 378550 := by
    unfold C
    simp [show (262144 * k + 126183) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 378550) = 393216 * k + 189275 := by
    unfold C
    simp [show (786432 * k + 378550) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 189275) = 1179648 * k + 567826 := by
    unfold C
    simp [show (393216 * k + 189275) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 567826) = 589824 * k + 283913 := by
    unfold C
    simp [show (1179648 * k + 567826) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 283913) = 1769472 * k + 851740 := by
    unfold C
    simp [show (589824 * k + 283913) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 851740) = 884736 * k + 425870 := by
    unfold C
    simp [show (1769472 * k + 851740) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 425870) = 442368 * k + 212935 := by
    unfold C
    simp [show (884736 * k + 425870) % 2 = 0 by omega]
    omega
  have h8 : C (442368 * k + 212935) = 1327104 * k + 638806 := by
    unfold C
    simp [show (442368 * k + 212935) % 2 ≠ 0 by omega]
    omega
  have h9 : C (1327104 * k + 638806) = 663552 * k + 319403 := by
    unfold C
    simp [show (1327104 * k + 638806) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 319403) = 1990656 * k + 958210 := by
    unfold C
    simp [show (663552 * k + 319403) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 958210) = 995328 * k + 479105 := by
    unfold C
    simp [show (1990656 * k + 958210) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 479105) = 2985984 * k + 1437316 := by
    unfold C
    simp [show (995328 * k + 479105) % 2 ≠ 0 by omega]
    omega
  have h13 : C (2985984 * k + 1437316) = 1492992 * k + 718658 := by
    unfold C
    simp [show (2985984 * k + 1437316) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 718658) = 746496 * k + 359329 := by
    unfold C
    simp [show (1492992 * k + 718658) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 359329) = 2239488 * k + 1077988 := by
    unfold C
    simp [show (746496 * k + 359329) % 2 ≠ 0 by omega]
    omega
  have h16 : C (2239488 * k + 1077988) = 1119744 * k + 538994 := by
    unfold C
    simp [show (2239488 * k + 1077988) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 538994) = 559872 * k + 269497 := by
    unfold C
    simp [show (1119744 * k + 538994) % 2 = 0 by omega]
    omega
  have h18 : C (559872 * k + 269497) = 1679616 * k + 808492 := by
    unfold C
    simp [show (559872 * k + 269497) % 2 ≠ 0 by omega]
    omega
  have h19 : C (1679616 * k + 808492) = 839808 * k + 404246 := by
    unfold C
    simp [show (1679616 * k + 808492) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 404246) = 419904 * k + 202123 := by
    unfold C
    simp [show (839808 * k + 404246) % 2 = 0 by omega]
    omega
  have h21 : C (419904 * k + 202123) = 1259712 * k + 606370 := by
    unfold C
    simp [show (419904 * k + 202123) % 2 ≠ 0 by omega]
    omega
  have h22 : C (1259712 * k + 606370) = 629856 * k + 303185 := by
    unfold C
    simp [show (1259712 * k + 606370) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 303185) = 1889568 * k + 909556 := by
    unfold C
    simp [show (629856 * k + 303185) % 2 ≠ 0 by omega]
    omega
  have h24 : C (1889568 * k + 909556) = 944784 * k + 454778 := by
    unfold C
    simp [show (1889568 * k + 909556) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 454778) = 472392 * k + 227389 := by
    unfold C
    simp [show (944784 * k + 454778) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 227389) = 1417176 * k + 682168 := by
    unfold C
    simp [show (472392 * k + 227389) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 682168) = 708588 * k + 341084 := by
    unfold C
    simp [show (1417176 * k + 682168) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 341084) = 354294 * k + 170542 := by
    unfold C
    simp [show (708588 * k + 341084) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 170542) = 177147 * k + 85271 := by
    unfold C
    simp [show (354294 * k + 170542) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 126183) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 126183))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_126623 : ∀ k : Nat,
    iterate (262144 * k + 126623) 29 = 177147 * k + 85568 ∧
      177147 * k + 85568 < 262144 * k + 126623 := by
  intro k
  have h1 : C (262144 * k + 126623) = 786432 * k + 379870 := by
    unfold C
    simp [show (262144 * k + 126623) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 379870) = 393216 * k + 189935 := by
    unfold C
    simp [show (786432 * k + 379870) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 189935) = 1179648 * k + 569806 := by
    unfold C
    simp [show (393216 * k + 189935) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 569806) = 589824 * k + 284903 := by
    unfold C
    simp [show (1179648 * k + 569806) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 284903) = 1769472 * k + 854710 := by
    unfold C
    simp [show (589824 * k + 284903) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 854710) = 884736 * k + 427355 := by
    unfold C
    simp [show (1769472 * k + 854710) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 427355) = 2654208 * k + 1282066 := by
    unfold C
    simp [show (884736 * k + 427355) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 1282066) = 1327104 * k + 641033 := by
    unfold C
    simp [show (2654208 * k + 1282066) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 641033) = 3981312 * k + 1923100 := by
    unfold C
    simp [show (1327104 * k + 641033) % 2 ≠ 0 by omega]
    omega
  have h10 : C (3981312 * k + 1923100) = 1990656 * k + 961550 := by
    unfold C
    simp [show (3981312 * k + 1923100) % 2 = 0 by omega]
    omega
  have h11 : C (1990656 * k + 961550) = 995328 * k + 480775 := by
    unfold C
    simp [show (1990656 * k + 961550) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 480775) = 2985984 * k + 1442326 := by
    unfold C
    simp [show (995328 * k + 480775) % 2 ≠ 0 by omega]
    omega
  have h13 : C (2985984 * k + 1442326) = 1492992 * k + 721163 := by
    unfold C
    simp [show (2985984 * k + 1442326) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 721163) = 4478976 * k + 2163490 := by
    unfold C
    simp [show (1492992 * k + 721163) % 2 ≠ 0 by omega]
    omega
  have h15 : C (4478976 * k + 2163490) = 2239488 * k + 1081745 := by
    unfold C
    simp [show (4478976 * k + 2163490) % 2 = 0 by omega]
    omega
  have h16 : C (2239488 * k + 1081745) = 6718464 * k + 3245236 := by
    unfold C
    simp [show (2239488 * k + 1081745) % 2 ≠ 0 by omega]
    omega
  have h17 : C (6718464 * k + 3245236) = 3359232 * k + 1622618 := by
    unfold C
    simp [show (6718464 * k + 3245236) % 2 = 0 by omega]
    omega
  have h18 : C (3359232 * k + 1622618) = 1679616 * k + 811309 := by
    unfold C
    simp [show (3359232 * k + 1622618) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 811309) = 5038848 * k + 2433928 := by
    unfold C
    simp [show (1679616 * k + 811309) % 2 ≠ 0 by omega]
    omega
  have h20 : C (5038848 * k + 2433928) = 2519424 * k + 1216964 := by
    unfold C
    simp [show (5038848 * k + 2433928) % 2 = 0 by omega]
    omega
  have h21 : C (2519424 * k + 1216964) = 1259712 * k + 608482 := by
    unfold C
    simp [show (2519424 * k + 1216964) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 608482) = 629856 * k + 304241 := by
    unfold C
    simp [show (1259712 * k + 608482) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 304241) = 1889568 * k + 912724 := by
    unfold C
    simp [show (629856 * k + 304241) % 2 ≠ 0 by omega]
    omega
  have h24 : C (1889568 * k + 912724) = 944784 * k + 456362 := by
    unfold C
    simp [show (1889568 * k + 912724) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 456362) = 472392 * k + 228181 := by
    unfold C
    simp [show (944784 * k + 456362) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 228181) = 1417176 * k + 684544 := by
    unfold C
    simp [show (472392 * k + 228181) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 684544) = 708588 * k + 342272 := by
    unfold C
    simp [show (1417176 * k + 684544) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 342272) = 354294 * k + 171136 := by
    unfold C
    simp [show (708588 * k + 342272) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 171136) = 177147 * k + 85568 := by
    unfold C
    simp [show (354294 * k + 171136) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 126623) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 126623))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_126631 : ∀ k : Nat,
    iterate (262144 * k + 126631) 29 = 177147 * k + 85574 ∧
      177147 * k + 85574 < 262144 * k + 126631 := by
  intro k
  have h1 : C (262144 * k + 126631) = 786432 * k + 379894 := by
    unfold C
    simp [show (262144 * k + 126631) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 379894) = 393216 * k + 189947 := by
    unfold C
    simp [show (786432 * k + 379894) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 189947) = 1179648 * k + 569842 := by
    unfold C
    simp [show (393216 * k + 189947) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 569842) = 589824 * k + 284921 := by
    unfold C
    simp [show (1179648 * k + 569842) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 284921) = 1769472 * k + 854764 := by
    unfold C
    simp [show (589824 * k + 284921) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 854764) = 884736 * k + 427382 := by
    unfold C
    simp [show (1769472 * k + 854764) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 427382) = 442368 * k + 213691 := by
    unfold C
    simp [show (884736 * k + 427382) % 2 = 0 by omega]
    omega
  have h8 : C (442368 * k + 213691) = 1327104 * k + 641074 := by
    unfold C
    simp [show (442368 * k + 213691) % 2 ≠ 0 by omega]
    omega
  have h9 : C (1327104 * k + 641074) = 663552 * k + 320537 := by
    unfold C
    simp [show (1327104 * k + 641074) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 320537) = 1990656 * k + 961612 := by
    unfold C
    simp [show (663552 * k + 320537) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 961612) = 995328 * k + 480806 := by
    unfold C
    simp [show (1990656 * k + 961612) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 480806) = 497664 * k + 240403 := by
    unfold C
    simp [show (995328 * k + 480806) % 2 = 0 by omega]
    omega
  have h13 : C (497664 * k + 240403) = 1492992 * k + 721210 := by
    unfold C
    simp [show (497664 * k + 240403) % 2 ≠ 0 by omega]
    omega
  have h14 : C (1492992 * k + 721210) = 746496 * k + 360605 := by
    unfold C
    simp [show (1492992 * k + 721210) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 360605) = 2239488 * k + 1081816 := by
    unfold C
    simp [show (746496 * k + 360605) % 2 ≠ 0 by omega]
    omega
  have h16 : C (2239488 * k + 1081816) = 1119744 * k + 540908 := by
    unfold C
    simp [show (2239488 * k + 1081816) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 540908) = 559872 * k + 270454 := by
    unfold C
    simp [show (1119744 * k + 540908) % 2 = 0 by omega]
    omega
  have h18 : C (559872 * k + 270454) = 279936 * k + 135227 := by
    unfold C
    simp [show (559872 * k + 270454) % 2 = 0 by omega]
    omega
  have h19 : C (279936 * k + 135227) = 839808 * k + 405682 := by
    unfold C
    simp [show (279936 * k + 135227) % 2 ≠ 0 by omega]
    omega
  have h20 : C (839808 * k + 405682) = 419904 * k + 202841 := by
    unfold C
    simp [show (839808 * k + 405682) % 2 = 0 by omega]
    omega
  have h21 : C (419904 * k + 202841) = 1259712 * k + 608524 := by
    unfold C
    simp [show (419904 * k + 202841) % 2 ≠ 0 by omega]
    omega
  have h22 : C (1259712 * k + 608524) = 629856 * k + 304262 := by
    unfold C
    simp [show (1259712 * k + 608524) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 304262) = 314928 * k + 152131 := by
    unfold C
    simp [show (629856 * k + 304262) % 2 = 0 by omega]
    omega
  have h24 : C (314928 * k + 152131) = 944784 * k + 456394 := by
    unfold C
    simp [show (314928 * k + 152131) % 2 ≠ 0 by omega]
    omega
  have h25 : C (944784 * k + 456394) = 472392 * k + 228197 := by
    unfold C
    simp [show (944784 * k + 456394) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 228197) = 1417176 * k + 684592 := by
    unfold C
    simp [show (472392 * k + 228197) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 684592) = 708588 * k + 342296 := by
    unfold C
    simp [show (1417176 * k + 684592) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 342296) = 354294 * k + 171148 := by
    unfold C
    simp [show (708588 * k + 342296) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 171148) = 177147 * k + 85574 := by
    unfold C
    simp [show (354294 * k + 171148) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 126631) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 126631))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_126703 : ∀ k : Nat,
    iterate (262144 * k + 126703) 29 = 177147 * k + 85622 ∧
      177147 * k + 85622 < 262144 * k + 126703 := by
  intro k
  have h1 : C (262144 * k + 126703) = 786432 * k + 380110 := by
    unfold C
    simp [show (262144 * k + 126703) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 380110) = 393216 * k + 190055 := by
    unfold C
    simp [show (786432 * k + 380110) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 190055) = 1179648 * k + 570166 := by
    unfold C
    simp [show (393216 * k + 190055) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 570166) = 589824 * k + 285083 := by
    unfold C
    simp [show (1179648 * k + 570166) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 285083) = 1769472 * k + 855250 := by
    unfold C
    simp [show (589824 * k + 285083) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 855250) = 884736 * k + 427625 := by
    unfold C
    simp [show (1769472 * k + 855250) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 427625) = 2654208 * k + 1282876 := by
    unfold C
    simp [show (884736 * k + 427625) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 1282876) = 1327104 * k + 641438 := by
    unfold C
    simp [show (2654208 * k + 1282876) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 641438) = 663552 * k + 320719 := by
    unfold C
    simp [show (1327104 * k + 641438) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 320719) = 1990656 * k + 962158 := by
    unfold C
    simp [show (663552 * k + 320719) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 962158) = 995328 * k + 481079 := by
    unfold C
    simp [show (1990656 * k + 962158) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 481079) = 2985984 * k + 1443238 := by
    unfold C
    simp [show (995328 * k + 481079) % 2 ≠ 0 by omega]
    omega
  have h13 : C (2985984 * k + 1443238) = 1492992 * k + 721619 := by
    unfold C
    simp [show (2985984 * k + 1443238) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 721619) = 4478976 * k + 2164858 := by
    unfold C
    simp [show (1492992 * k + 721619) % 2 ≠ 0 by omega]
    omega
  have h15 : C (4478976 * k + 2164858) = 2239488 * k + 1082429 := by
    unfold C
    simp [show (4478976 * k + 2164858) % 2 = 0 by omega]
    omega
  have h16 : C (2239488 * k + 1082429) = 6718464 * k + 3247288 := by
    unfold C
    simp [show (2239488 * k + 1082429) % 2 ≠ 0 by omega]
    omega
  have h17 : C (6718464 * k + 3247288) = 3359232 * k + 1623644 := by
    unfold C
    simp [show (6718464 * k + 3247288) % 2 = 0 by omega]
    omega
  have h18 : C (3359232 * k + 1623644) = 1679616 * k + 811822 := by
    unfold C
    simp [show (3359232 * k + 1623644) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 811822) = 839808 * k + 405911 := by
    unfold C
    simp [show (1679616 * k + 811822) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 405911) = 2519424 * k + 1217734 := by
    unfold C
    simp [show (839808 * k + 405911) % 2 ≠ 0 by omega]
    omega
  have h21 : C (2519424 * k + 1217734) = 1259712 * k + 608867 := by
    unfold C
    simp [show (2519424 * k + 1217734) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 608867) = 3779136 * k + 1826602 := by
    unfold C
    simp [show (1259712 * k + 608867) % 2 ≠ 0 by omega]
    omega
  have h23 : C (3779136 * k + 1826602) = 1889568 * k + 913301 := by
    unfold C
    simp [show (3779136 * k + 1826602) % 2 = 0 by omega]
    omega
  have h24 : C (1889568 * k + 913301) = 5668704 * k + 2739904 := by
    unfold C
    simp [show (1889568 * k + 913301) % 2 ≠ 0 by omega]
    omega
  have h25 : C (5668704 * k + 2739904) = 2834352 * k + 1369952 := by
    unfold C
    simp [show (5668704 * k + 2739904) % 2 = 0 by omega]
    omega
  have h26 : C (2834352 * k + 1369952) = 1417176 * k + 684976 := by
    unfold C
    simp [show (2834352 * k + 1369952) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 684976) = 708588 * k + 342488 := by
    unfold C
    simp [show (1417176 * k + 684976) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 342488) = 354294 * k + 171244 := by
    unfold C
    simp [show (708588 * k + 342488) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 171244) = 177147 * k + 85622 := by
    unfold C
    simp [show (354294 * k + 171244) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 126703) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 126703))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_126751 : ∀ k : Nat,
    iterate (262144 * k + 126751) 29 = 177147 * k + 85655 ∧
      177147 * k + 85655 < 262144 * k + 126751 := by
  intro k
  have h1 : C (262144 * k + 126751) = 786432 * k + 380254 := by
    unfold C
    simp [show (262144 * k + 126751) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 380254) = 393216 * k + 190127 := by
    unfold C
    simp [show (786432 * k + 380254) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 190127) = 1179648 * k + 570382 := by
    unfold C
    simp [show (393216 * k + 190127) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 570382) = 589824 * k + 285191 := by
    unfold C
    simp [show (1179648 * k + 570382) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 285191) = 1769472 * k + 855574 := by
    unfold C
    simp [show (589824 * k + 285191) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 855574) = 884736 * k + 427787 := by
    unfold C
    simp [show (1769472 * k + 855574) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 427787) = 2654208 * k + 1283362 := by
    unfold C
    simp [show (884736 * k + 427787) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 1283362) = 1327104 * k + 641681 := by
    unfold C
    simp [show (2654208 * k + 1283362) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 641681) = 3981312 * k + 1925044 := by
    unfold C
    simp [show (1327104 * k + 641681) % 2 ≠ 0 by omega]
    omega
  have h10 : C (3981312 * k + 1925044) = 1990656 * k + 962522 := by
    unfold C
    simp [show (3981312 * k + 1925044) % 2 = 0 by omega]
    omega
  have h11 : C (1990656 * k + 962522) = 995328 * k + 481261 := by
    unfold C
    simp [show (1990656 * k + 962522) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 481261) = 2985984 * k + 1443784 := by
    unfold C
    simp [show (995328 * k + 481261) % 2 ≠ 0 by omega]
    omega
  have h13 : C (2985984 * k + 1443784) = 1492992 * k + 721892 := by
    unfold C
    simp [show (2985984 * k + 1443784) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 721892) = 746496 * k + 360946 := by
    unfold C
    simp [show (1492992 * k + 721892) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 360946) = 373248 * k + 180473 := by
    unfold C
    simp [show (746496 * k + 360946) % 2 = 0 by omega]
    omega
  have h16 : C (373248 * k + 180473) = 1119744 * k + 541420 := by
    unfold C
    simp [show (373248 * k + 180473) % 2 ≠ 0 by omega]
    omega
  have h17 : C (1119744 * k + 541420) = 559872 * k + 270710 := by
    unfold C
    simp [show (1119744 * k + 541420) % 2 = 0 by omega]
    omega
  have h18 : C (559872 * k + 270710) = 279936 * k + 135355 := by
    unfold C
    simp [show (559872 * k + 270710) % 2 = 0 by omega]
    omega
  have h19 : C (279936 * k + 135355) = 839808 * k + 406066 := by
    unfold C
    simp [show (279936 * k + 135355) % 2 ≠ 0 by omega]
    omega
  have h20 : C (839808 * k + 406066) = 419904 * k + 203033 := by
    unfold C
    simp [show (839808 * k + 406066) % 2 = 0 by omega]
    omega
  have h21 : C (419904 * k + 203033) = 1259712 * k + 609100 := by
    unfold C
    simp [show (419904 * k + 203033) % 2 ≠ 0 by omega]
    omega
  have h22 : C (1259712 * k + 609100) = 629856 * k + 304550 := by
    unfold C
    simp [show (1259712 * k + 609100) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 304550) = 314928 * k + 152275 := by
    unfold C
    simp [show (629856 * k + 304550) % 2 = 0 by omega]
    omega
  have h24 : C (314928 * k + 152275) = 944784 * k + 456826 := by
    unfold C
    simp [show (314928 * k + 152275) % 2 ≠ 0 by omega]
    omega
  have h25 : C (944784 * k + 456826) = 472392 * k + 228413 := by
    unfold C
    simp [show (944784 * k + 456826) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 228413) = 1417176 * k + 685240 := by
    unfold C
    simp [show (472392 * k + 228413) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 685240) = 708588 * k + 342620 := by
    unfold C
    simp [show (1417176 * k + 685240) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 342620) = 354294 * k + 171310 := by
    unfold C
    simp [show (708588 * k + 342620) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 171310) = 177147 * k + 85655 := by
    unfold C
    simp [show (354294 * k + 171310) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 126751) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 126751))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_126831 : ∀ k : Nat,
    iterate (262144 * k + 126831) 29 = 177147 * k + 85709 ∧
      177147 * k + 85709 < 262144 * k + 126831 := by
  intro k
  have h1 : C (262144 * k + 126831) = 786432 * k + 380494 := by
    unfold C
    simp [show (262144 * k + 126831) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 380494) = 393216 * k + 190247 := by
    unfold C
    simp [show (786432 * k + 380494) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 190247) = 1179648 * k + 570742 := by
    unfold C
    simp [show (393216 * k + 190247) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 570742) = 589824 * k + 285371 := by
    unfold C
    simp [show (1179648 * k + 570742) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 285371) = 1769472 * k + 856114 := by
    unfold C
    simp [show (589824 * k + 285371) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 856114) = 884736 * k + 428057 := by
    unfold C
    simp [show (1769472 * k + 856114) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 428057) = 2654208 * k + 1284172 := by
    unfold C
    simp [show (884736 * k + 428057) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 1284172) = 1327104 * k + 642086 := by
    unfold C
    simp [show (2654208 * k + 1284172) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 642086) = 663552 * k + 321043 := by
    unfold C
    simp [show (1327104 * k + 642086) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 321043) = 1990656 * k + 963130 := by
    unfold C
    simp [show (663552 * k + 321043) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 963130) = 995328 * k + 481565 := by
    unfold C
    simp [show (1990656 * k + 963130) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 481565) = 2985984 * k + 1444696 := by
    unfold C
    simp [show (995328 * k + 481565) % 2 ≠ 0 by omega]
    omega
  have h13 : C (2985984 * k + 1444696) = 1492992 * k + 722348 := by
    unfold C
    simp [show (2985984 * k + 1444696) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 722348) = 746496 * k + 361174 := by
    unfold C
    simp [show (1492992 * k + 722348) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 361174) = 373248 * k + 180587 := by
    unfold C
    simp [show (746496 * k + 361174) % 2 = 0 by omega]
    omega
  have h16 : C (373248 * k + 180587) = 1119744 * k + 541762 := by
    unfold C
    simp [show (373248 * k + 180587) % 2 ≠ 0 by omega]
    omega
  have h17 : C (1119744 * k + 541762) = 559872 * k + 270881 := by
    unfold C
    simp [show (1119744 * k + 541762) % 2 = 0 by omega]
    omega
  have h18 : C (559872 * k + 270881) = 1679616 * k + 812644 := by
    unfold C
    simp [show (559872 * k + 270881) % 2 ≠ 0 by omega]
    omega
  have h19 : C (1679616 * k + 812644) = 839808 * k + 406322 := by
    unfold C
    simp [show (1679616 * k + 812644) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 406322) = 419904 * k + 203161 := by
    unfold C
    simp [show (839808 * k + 406322) % 2 = 0 by omega]
    omega
  have h21 : C (419904 * k + 203161) = 1259712 * k + 609484 := by
    unfold C
    simp [show (419904 * k + 203161) % 2 ≠ 0 by omega]
    omega
  have h22 : C (1259712 * k + 609484) = 629856 * k + 304742 := by
    unfold C
    simp [show (1259712 * k + 609484) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 304742) = 314928 * k + 152371 := by
    unfold C
    simp [show (629856 * k + 304742) % 2 = 0 by omega]
    omega
  have h24 : C (314928 * k + 152371) = 944784 * k + 457114 := by
    unfold C
    simp [show (314928 * k + 152371) % 2 ≠ 0 by omega]
    omega
  have h25 : C (944784 * k + 457114) = 472392 * k + 228557 := by
    unfold C
    simp [show (944784 * k + 457114) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 228557) = 1417176 * k + 685672 := by
    unfold C
    simp [show (472392 * k + 228557) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 685672) = 708588 * k + 342836 := by
    unfold C
    simp [show (1417176 * k + 685672) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 342836) = 354294 * k + 171418 := by
    unfold C
    simp [show (708588 * k + 342836) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 171418) = 177147 * k + 85709 := by
    unfold C
    simp [show (354294 * k + 171418) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 126831) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 126831))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_126879 : ∀ k : Nat,
    iterate (262144 * k + 126879) 29 = 177147 * k + 85741 ∧
      177147 * k + 85741 < 262144 * k + 126879 := by
  intro k
  have h1 : C (262144 * k + 126879) = 786432 * k + 380638 := by
    unfold C
    simp [show (262144 * k + 126879) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 380638) = 393216 * k + 190319 := by
    unfold C
    simp [show (786432 * k + 380638) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 190319) = 1179648 * k + 570958 := by
    unfold C
    simp [show (393216 * k + 190319) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 570958) = 589824 * k + 285479 := by
    unfold C
    simp [show (1179648 * k + 570958) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 285479) = 1769472 * k + 856438 := by
    unfold C
    simp [show (589824 * k + 285479) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 856438) = 884736 * k + 428219 := by
    unfold C
    simp [show (1769472 * k + 856438) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 428219) = 2654208 * k + 1284658 := by
    unfold C
    simp [show (884736 * k + 428219) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 1284658) = 1327104 * k + 642329 := by
    unfold C
    simp [show (2654208 * k + 1284658) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 642329) = 3981312 * k + 1926988 := by
    unfold C
    simp [show (1327104 * k + 642329) % 2 ≠ 0 by omega]
    omega
  have h10 : C (3981312 * k + 1926988) = 1990656 * k + 963494 := by
    unfold C
    simp [show (3981312 * k + 1926988) % 2 = 0 by omega]
    omega
  have h11 : C (1990656 * k + 963494) = 995328 * k + 481747 := by
    unfold C
    simp [show (1990656 * k + 963494) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 481747) = 2985984 * k + 1445242 := by
    unfold C
    simp [show (995328 * k + 481747) % 2 ≠ 0 by omega]
    omega
  have h13 : C (2985984 * k + 1445242) = 1492992 * k + 722621 := by
    unfold C
    simp [show (2985984 * k + 1445242) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 722621) = 4478976 * k + 2167864 := by
    unfold C
    simp [show (1492992 * k + 722621) % 2 ≠ 0 by omega]
    omega
  have h15 : C (4478976 * k + 2167864) = 2239488 * k + 1083932 := by
    unfold C
    simp [show (4478976 * k + 2167864) % 2 = 0 by omega]
    omega
  have h16 : C (2239488 * k + 1083932) = 1119744 * k + 541966 := by
    unfold C
    simp [show (2239488 * k + 1083932) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 541966) = 559872 * k + 270983 := by
    unfold C
    simp [show (1119744 * k + 541966) % 2 = 0 by omega]
    omega
  have h18 : C (559872 * k + 270983) = 1679616 * k + 812950 := by
    unfold C
    simp [show (559872 * k + 270983) % 2 ≠ 0 by omega]
    omega
  have h19 : C (1679616 * k + 812950) = 839808 * k + 406475 := by
    unfold C
    simp [show (1679616 * k + 812950) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 406475) = 2519424 * k + 1219426 := by
    unfold C
    simp [show (839808 * k + 406475) % 2 ≠ 0 by omega]
    omega
  have h21 : C (2519424 * k + 1219426) = 1259712 * k + 609713 := by
    unfold C
    simp [show (2519424 * k + 1219426) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 609713) = 3779136 * k + 1829140 := by
    unfold C
    simp [show (1259712 * k + 609713) % 2 ≠ 0 by omega]
    omega
  have h23 : C (3779136 * k + 1829140) = 1889568 * k + 914570 := by
    unfold C
    simp [show (3779136 * k + 1829140) % 2 = 0 by omega]
    omega
  have h24 : C (1889568 * k + 914570) = 944784 * k + 457285 := by
    unfold C
    simp [show (1889568 * k + 914570) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 457285) = 2834352 * k + 1371856 := by
    unfold C
    simp [show (944784 * k + 457285) % 2 ≠ 0 by omega]
    omega
  have h26 : C (2834352 * k + 1371856) = 1417176 * k + 685928 := by
    unfold C
    simp [show (2834352 * k + 1371856) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 685928) = 708588 * k + 342964 := by
    unfold C
    simp [show (1417176 * k + 685928) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 342964) = 354294 * k + 171482 := by
    unfold C
    simp [show (708588 * k + 342964) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 171482) = 177147 * k + 85741 := by
    unfold C
    simp [show (354294 * k + 171482) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 126879) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 126879))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_127003 : ∀ k : Nat,
    iterate (262144 * k + 127003) 29 = 177147 * k + 85825 ∧
      177147 * k + 85825 < 262144 * k + 127003 := by
  intro k
  have h1 : C (262144 * k + 127003) = 786432 * k + 381010 := by
    unfold C
    simp [show (262144 * k + 127003) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 381010) = 393216 * k + 190505 := by
    unfold C
    simp [show (786432 * k + 381010) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 190505) = 1179648 * k + 571516 := by
    unfold C
    simp [show (393216 * k + 190505) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 571516) = 589824 * k + 285758 := by
    unfold C
    simp [show (1179648 * k + 571516) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 285758) = 294912 * k + 142879 := by
    unfold C
    simp [show (589824 * k + 285758) % 2 = 0 by omega]
    omega
  have h6 : C (294912 * k + 142879) = 884736 * k + 428638 := by
    unfold C
    simp [show (294912 * k + 142879) % 2 ≠ 0 by omega]
    omega
  have h7 : C (884736 * k + 428638) = 442368 * k + 214319 := by
    unfold C
    simp [show (884736 * k + 428638) % 2 = 0 by omega]
    omega
  have h8 : C (442368 * k + 214319) = 1327104 * k + 642958 := by
    unfold C
    simp [show (442368 * k + 214319) % 2 ≠ 0 by omega]
    omega
  have h9 : C (1327104 * k + 642958) = 663552 * k + 321479 := by
    unfold C
    simp [show (1327104 * k + 642958) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 321479) = 1990656 * k + 964438 := by
    unfold C
    simp [show (663552 * k + 321479) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 964438) = 995328 * k + 482219 := by
    unfold C
    simp [show (1990656 * k + 964438) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 482219) = 2985984 * k + 1446658 := by
    unfold C
    simp [show (995328 * k + 482219) % 2 ≠ 0 by omega]
    omega
  have h13 : C (2985984 * k + 1446658) = 1492992 * k + 723329 := by
    unfold C
    simp [show (2985984 * k + 1446658) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 723329) = 4478976 * k + 2169988 := by
    unfold C
    simp [show (1492992 * k + 723329) % 2 ≠ 0 by omega]
    omega
  have h15 : C (4478976 * k + 2169988) = 2239488 * k + 1084994 := by
    unfold C
    simp [show (4478976 * k + 2169988) % 2 = 0 by omega]
    omega
  have h16 : C (2239488 * k + 1084994) = 1119744 * k + 542497 := by
    unfold C
    simp [show (2239488 * k + 1084994) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 542497) = 3359232 * k + 1627492 := by
    unfold C
    simp [show (1119744 * k + 542497) % 2 ≠ 0 by omega]
    omega
  have h18 : C (3359232 * k + 1627492) = 1679616 * k + 813746 := by
    unfold C
    simp [show (3359232 * k + 1627492) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 813746) = 839808 * k + 406873 := by
    unfold C
    simp [show (1679616 * k + 813746) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 406873) = 2519424 * k + 1220620 := by
    unfold C
    simp [show (839808 * k + 406873) % 2 ≠ 0 by omega]
    omega
  have h21 : C (2519424 * k + 1220620) = 1259712 * k + 610310 := by
    unfold C
    simp [show (2519424 * k + 1220620) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 610310) = 629856 * k + 305155 := by
    unfold C
    simp [show (1259712 * k + 610310) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 305155) = 1889568 * k + 915466 := by
    unfold C
    simp [show (629856 * k + 305155) % 2 ≠ 0 by omega]
    omega
  have h24 : C (1889568 * k + 915466) = 944784 * k + 457733 := by
    unfold C
    simp [show (1889568 * k + 915466) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 457733) = 2834352 * k + 1373200 := by
    unfold C
    simp [show (944784 * k + 457733) % 2 ≠ 0 by omega]
    omega
  have h26 : C (2834352 * k + 1373200) = 1417176 * k + 686600 := by
    unfold C
    simp [show (2834352 * k + 1373200) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 686600) = 708588 * k + 343300 := by
    unfold C
    simp [show (1417176 * k + 686600) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 343300) = 354294 * k + 171650 := by
    unfold C
    simp [show (708588 * k + 343300) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 171650) = 177147 * k + 85825 := by
    unfold C
    simp [show (354294 * k + 171650) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 127003) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 127003))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_127231 : ∀ k : Nat,
    iterate (262144 * k + 127231) 29 = 177147 * k + 85979 ∧
      177147 * k + 85979 < 262144 * k + 127231 := by
  intro k
  have h1 : C (262144 * k + 127231) = 786432 * k + 381694 := by
    unfold C
    simp [show (262144 * k + 127231) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 381694) = 393216 * k + 190847 := by
    unfold C
    simp [show (786432 * k + 381694) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 190847) = 1179648 * k + 572542 := by
    unfold C
    simp [show (393216 * k + 190847) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 572542) = 589824 * k + 286271 := by
    unfold C
    simp [show (1179648 * k + 572542) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 286271) = 1769472 * k + 858814 := by
    unfold C
    simp [show (589824 * k + 286271) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 858814) = 884736 * k + 429407 := by
    unfold C
    simp [show (1769472 * k + 858814) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 429407) = 2654208 * k + 1288222 := by
    unfold C
    simp [show (884736 * k + 429407) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 1288222) = 1327104 * k + 644111 := by
    unfold C
    simp [show (2654208 * k + 1288222) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 644111) = 3981312 * k + 1932334 := by
    unfold C
    simp [show (1327104 * k + 644111) % 2 ≠ 0 by omega]
    omega
  have h10 : C (3981312 * k + 1932334) = 1990656 * k + 966167 := by
    unfold C
    simp [show (3981312 * k + 1932334) % 2 = 0 by omega]
    omega
  have h11 : C (1990656 * k + 966167) = 5971968 * k + 2898502 := by
    unfold C
    simp [show (1990656 * k + 966167) % 2 ≠ 0 by omega]
    omega
  have h12 : C (5971968 * k + 2898502) = 2985984 * k + 1449251 := by
    unfold C
    simp [show (5971968 * k + 2898502) % 2 = 0 by omega]
    omega
  have h13 : C (2985984 * k + 1449251) = 8957952 * k + 4347754 := by
    unfold C
    simp [show (2985984 * k + 1449251) % 2 ≠ 0 by omega]
    omega
  have h14 : C (8957952 * k + 4347754) = 4478976 * k + 2173877 := by
    unfold C
    simp [show (8957952 * k + 4347754) % 2 = 0 by omega]
    omega
  have h15 : C (4478976 * k + 2173877) = 13436928 * k + 6521632 := by
    unfold C
    simp [show (4478976 * k + 2173877) % 2 ≠ 0 by omega]
    omega
  have h16 : C (13436928 * k + 6521632) = 6718464 * k + 3260816 := by
    unfold C
    simp [show (13436928 * k + 6521632) % 2 = 0 by omega]
    omega
  have h17 : C (6718464 * k + 3260816) = 3359232 * k + 1630408 := by
    unfold C
    simp [show (6718464 * k + 3260816) % 2 = 0 by omega]
    omega
  have h18 : C (3359232 * k + 1630408) = 1679616 * k + 815204 := by
    unfold C
    simp [show (3359232 * k + 1630408) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 815204) = 839808 * k + 407602 := by
    unfold C
    simp [show (1679616 * k + 815204) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 407602) = 419904 * k + 203801 := by
    unfold C
    simp [show (839808 * k + 407602) % 2 = 0 by omega]
    omega
  have h21 : C (419904 * k + 203801) = 1259712 * k + 611404 := by
    unfold C
    simp [show (419904 * k + 203801) % 2 ≠ 0 by omega]
    omega
  have h22 : C (1259712 * k + 611404) = 629856 * k + 305702 := by
    unfold C
    simp [show (1259712 * k + 611404) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 305702) = 314928 * k + 152851 := by
    unfold C
    simp [show (629856 * k + 305702) % 2 = 0 by omega]
    omega
  have h24 : C (314928 * k + 152851) = 944784 * k + 458554 := by
    unfold C
    simp [show (314928 * k + 152851) % 2 ≠ 0 by omega]
    omega
  have h25 : C (944784 * k + 458554) = 472392 * k + 229277 := by
    unfold C
    simp [show (944784 * k + 458554) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 229277) = 1417176 * k + 687832 := by
    unfold C
    simp [show (472392 * k + 229277) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 687832) = 708588 * k + 343916 := by
    unfold C
    simp [show (1417176 * k + 687832) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 343916) = 354294 * k + 171958 := by
    unfold C
    simp [show (708588 * k + 343916) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 171958) = 177147 * k + 85979 := by
    unfold C
    simp [show (354294 * k + 171958) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 127231) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 127231))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_127391 : ∀ k : Nat,
    iterate (262144 * k + 127391) 29 = 177147 * k + 86087 ∧
      177147 * k + 86087 < 262144 * k + 127391 := by
  intro k
  have h1 : C (262144 * k + 127391) = 786432 * k + 382174 := by
    unfold C
    simp [show (262144 * k + 127391) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 382174) = 393216 * k + 191087 := by
    unfold C
    simp [show (786432 * k + 382174) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 191087) = 1179648 * k + 573262 := by
    unfold C
    simp [show (393216 * k + 191087) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 573262) = 589824 * k + 286631 := by
    unfold C
    simp [show (1179648 * k + 573262) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 286631) = 1769472 * k + 859894 := by
    unfold C
    simp [show (589824 * k + 286631) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 859894) = 884736 * k + 429947 := by
    unfold C
    simp [show (1769472 * k + 859894) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 429947) = 2654208 * k + 1289842 := by
    unfold C
    simp [show (884736 * k + 429947) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 1289842) = 1327104 * k + 644921 := by
    unfold C
    simp [show (2654208 * k + 1289842) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 644921) = 3981312 * k + 1934764 := by
    unfold C
    simp [show (1327104 * k + 644921) % 2 ≠ 0 by omega]
    omega
  have h10 : C (3981312 * k + 1934764) = 1990656 * k + 967382 := by
    unfold C
    simp [show (3981312 * k + 1934764) % 2 = 0 by omega]
    omega
  have h11 : C (1990656 * k + 967382) = 995328 * k + 483691 := by
    unfold C
    simp [show (1990656 * k + 967382) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 483691) = 2985984 * k + 1451074 := by
    unfold C
    simp [show (995328 * k + 483691) % 2 ≠ 0 by omega]
    omega
  have h13 : C (2985984 * k + 1451074) = 1492992 * k + 725537 := by
    unfold C
    simp [show (2985984 * k + 1451074) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 725537) = 4478976 * k + 2176612 := by
    unfold C
    simp [show (1492992 * k + 725537) % 2 ≠ 0 by omega]
    omega
  have h15 : C (4478976 * k + 2176612) = 2239488 * k + 1088306 := by
    unfold C
    simp [show (4478976 * k + 2176612) % 2 = 0 by omega]
    omega
  have h16 : C (2239488 * k + 1088306) = 1119744 * k + 544153 := by
    unfold C
    simp [show (2239488 * k + 1088306) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 544153) = 3359232 * k + 1632460 := by
    unfold C
    simp [show (1119744 * k + 544153) % 2 ≠ 0 by omega]
    omega
  have h18 : C (3359232 * k + 1632460) = 1679616 * k + 816230 := by
    unfold C
    simp [show (3359232 * k + 1632460) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 816230) = 839808 * k + 408115 := by
    unfold C
    simp [show (1679616 * k + 816230) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 408115) = 2519424 * k + 1224346 := by
    unfold C
    simp [show (839808 * k + 408115) % 2 ≠ 0 by omega]
    omega
  have h21 : C (2519424 * k + 1224346) = 1259712 * k + 612173 := by
    unfold C
    simp [show (2519424 * k + 1224346) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 612173) = 3779136 * k + 1836520 := by
    unfold C
    simp [show (1259712 * k + 612173) % 2 ≠ 0 by omega]
    omega
  have h23 : C (3779136 * k + 1836520) = 1889568 * k + 918260 := by
    unfold C
    simp [show (3779136 * k + 1836520) % 2 = 0 by omega]
    omega
  have h24 : C (1889568 * k + 918260) = 944784 * k + 459130 := by
    unfold C
    simp [show (1889568 * k + 918260) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 459130) = 472392 * k + 229565 := by
    unfold C
    simp [show (944784 * k + 459130) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 229565) = 1417176 * k + 688696 := by
    unfold C
    simp [show (472392 * k + 229565) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 688696) = 708588 * k + 344348 := by
    unfold C
    simp [show (1417176 * k + 688696) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 344348) = 354294 * k + 172174 := by
    unfold C
    simp [show (708588 * k + 344348) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 172174) = 177147 * k + 86087 := by
    unfold C
    simp [show (354294 * k + 172174) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 127391) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 127391))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_129307 : ∀ k : Nat,
    iterate (262144 * k + 129307) 29 = 177147 * k + 87382 ∧
      177147 * k + 87382 < 262144 * k + 129307 := by
  intro k
  have h1 : C (262144 * k + 129307) = 786432 * k + 387922 := by
    unfold C
    simp [show (262144 * k + 129307) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 387922) = 393216 * k + 193961 := by
    unfold C
    simp [show (786432 * k + 387922) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 193961) = 1179648 * k + 581884 := by
    unfold C
    simp [show (393216 * k + 193961) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 581884) = 589824 * k + 290942 := by
    unfold C
    simp [show (1179648 * k + 581884) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 290942) = 294912 * k + 145471 := by
    unfold C
    simp [show (589824 * k + 290942) % 2 = 0 by omega]
    omega
  have h6 : C (294912 * k + 145471) = 884736 * k + 436414 := by
    unfold C
    simp [show (294912 * k + 145471) % 2 ≠ 0 by omega]
    omega
  have h7 : C (884736 * k + 436414) = 442368 * k + 218207 := by
    unfold C
    simp [show (884736 * k + 436414) % 2 = 0 by omega]
    omega
  have h8 : C (442368 * k + 218207) = 1327104 * k + 654622 := by
    unfold C
    simp [show (442368 * k + 218207) % 2 ≠ 0 by omega]
    omega
  have h9 : C (1327104 * k + 654622) = 663552 * k + 327311 := by
    unfold C
    simp [show (1327104 * k + 654622) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 327311) = 1990656 * k + 981934 := by
    unfold C
    simp [show (663552 * k + 327311) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 981934) = 995328 * k + 490967 := by
    unfold C
    simp [show (1990656 * k + 981934) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 490967) = 2985984 * k + 1472902 := by
    unfold C
    simp [show (995328 * k + 490967) % 2 ≠ 0 by omega]
    omega
  have h13 : C (2985984 * k + 1472902) = 1492992 * k + 736451 := by
    unfold C
    simp [show (2985984 * k + 1472902) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 736451) = 4478976 * k + 2209354 := by
    unfold C
    simp [show (1492992 * k + 736451) % 2 ≠ 0 by omega]
    omega
  have h15 : C (4478976 * k + 2209354) = 2239488 * k + 1104677 := by
    unfold C
    simp [show (4478976 * k + 2209354) % 2 = 0 by omega]
    omega
  have h16 : C (2239488 * k + 1104677) = 6718464 * k + 3314032 := by
    unfold C
    simp [show (2239488 * k + 1104677) % 2 ≠ 0 by omega]
    omega
  have h17 : C (6718464 * k + 3314032) = 3359232 * k + 1657016 := by
    unfold C
    simp [show (6718464 * k + 3314032) % 2 = 0 by omega]
    omega
  have h18 : C (3359232 * k + 1657016) = 1679616 * k + 828508 := by
    unfold C
    simp [show (3359232 * k + 1657016) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 828508) = 839808 * k + 414254 := by
    unfold C
    simp [show (1679616 * k + 828508) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 414254) = 419904 * k + 207127 := by
    unfold C
    simp [show (839808 * k + 414254) % 2 = 0 by omega]
    omega
  have h21 : C (419904 * k + 207127) = 1259712 * k + 621382 := by
    unfold C
    simp [show (419904 * k + 207127) % 2 ≠ 0 by omega]
    omega
  have h22 : C (1259712 * k + 621382) = 629856 * k + 310691 := by
    unfold C
    simp [show (1259712 * k + 621382) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 310691) = 1889568 * k + 932074 := by
    unfold C
    simp [show (629856 * k + 310691) % 2 ≠ 0 by omega]
    omega
  have h24 : C (1889568 * k + 932074) = 944784 * k + 466037 := by
    unfold C
    simp [show (1889568 * k + 932074) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 466037) = 2834352 * k + 1398112 := by
    unfold C
    simp [show (944784 * k + 466037) % 2 ≠ 0 by omega]
    omega
  have h26 : C (2834352 * k + 1398112) = 1417176 * k + 699056 := by
    unfold C
    simp [show (2834352 * k + 1398112) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 699056) = 708588 * k + 349528 := by
    unfold C
    simp [show (1417176 * k + 699056) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 349528) = 354294 * k + 174764 := by
    unfold C
    simp [show (708588 * k + 349528) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 174764) = 177147 * k + 87382 := by
    unfold C
    simp [show (354294 * k + 174764) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 129307) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 129307))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_129343 : ∀ k : Nat,
    iterate (262144 * k + 129343) 29 = 177147 * k + 87406 ∧
      177147 * k + 87406 < 262144 * k + 129343 := by
  intro k
  have h1 : C (262144 * k + 129343) = 786432 * k + 388030 := by
    unfold C
    simp [show (262144 * k + 129343) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 388030) = 393216 * k + 194015 := by
    unfold C
    simp [show (786432 * k + 388030) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 194015) = 1179648 * k + 582046 := by
    unfold C
    simp [show (393216 * k + 194015) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 582046) = 589824 * k + 291023 := by
    unfold C
    simp [show (1179648 * k + 582046) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 291023) = 1769472 * k + 873070 := by
    unfold C
    simp [show (589824 * k + 291023) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 873070) = 884736 * k + 436535 := by
    unfold C
    simp [show (1769472 * k + 873070) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 436535) = 2654208 * k + 1309606 := by
    unfold C
    simp [show (884736 * k + 436535) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 1309606) = 1327104 * k + 654803 := by
    unfold C
    simp [show (2654208 * k + 1309606) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 654803) = 3981312 * k + 1964410 := by
    unfold C
    simp [show (1327104 * k + 654803) % 2 ≠ 0 by omega]
    omega
  have h10 : C (3981312 * k + 1964410) = 1990656 * k + 982205 := by
    unfold C
    simp [show (3981312 * k + 1964410) % 2 = 0 by omega]
    omega
  have h11 : C (1990656 * k + 982205) = 5971968 * k + 2946616 := by
    unfold C
    simp [show (1990656 * k + 982205) % 2 ≠ 0 by omega]
    omega
  have h12 : C (5971968 * k + 2946616) = 2985984 * k + 1473308 := by
    unfold C
    simp [show (5971968 * k + 2946616) % 2 = 0 by omega]
    omega
  have h13 : C (2985984 * k + 1473308) = 1492992 * k + 736654 := by
    unfold C
    simp [show (2985984 * k + 1473308) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 736654) = 746496 * k + 368327 := by
    unfold C
    simp [show (1492992 * k + 736654) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 368327) = 2239488 * k + 1104982 := by
    unfold C
    simp [show (746496 * k + 368327) % 2 ≠ 0 by omega]
    omega
  have h16 : C (2239488 * k + 1104982) = 1119744 * k + 552491 := by
    unfold C
    simp [show (2239488 * k + 1104982) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 552491) = 3359232 * k + 1657474 := by
    unfold C
    simp [show (1119744 * k + 552491) % 2 ≠ 0 by omega]
    omega
  have h18 : C (3359232 * k + 1657474) = 1679616 * k + 828737 := by
    unfold C
    simp [show (3359232 * k + 1657474) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 828737) = 5038848 * k + 2486212 := by
    unfold C
    simp [show (1679616 * k + 828737) % 2 ≠ 0 by omega]
    omega
  have h20 : C (5038848 * k + 2486212) = 2519424 * k + 1243106 := by
    unfold C
    simp [show (5038848 * k + 2486212) % 2 = 0 by omega]
    omega
  have h21 : C (2519424 * k + 1243106) = 1259712 * k + 621553 := by
    unfold C
    simp [show (2519424 * k + 1243106) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 621553) = 3779136 * k + 1864660 := by
    unfold C
    simp [show (1259712 * k + 621553) % 2 ≠ 0 by omega]
    omega
  have h23 : C (3779136 * k + 1864660) = 1889568 * k + 932330 := by
    unfold C
    simp [show (3779136 * k + 1864660) % 2 = 0 by omega]
    omega
  have h24 : C (1889568 * k + 932330) = 944784 * k + 466165 := by
    unfold C
    simp [show (1889568 * k + 932330) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 466165) = 2834352 * k + 1398496 := by
    unfold C
    simp [show (944784 * k + 466165) % 2 ≠ 0 by omega]
    omega
  have h26 : C (2834352 * k + 1398496) = 1417176 * k + 699248 := by
    unfold C
    simp [show (2834352 * k + 1398496) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 699248) = 708588 * k + 349624 := by
    unfold C
    simp [show (1417176 * k + 699248) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 349624) = 354294 * k + 174812 := by
    unfold C
    simp [show (708588 * k + 349624) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 174812) = 177147 * k + 87406 := by
    unfold C
    simp [show (354294 * k + 174812) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 129343) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 129343))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_129775 : ∀ k : Nat,
    iterate (262144 * k + 129775) 29 = 177147 * k + 87698 ∧
      177147 * k + 87698 < 262144 * k + 129775 := by
  intro k
  have h1 : C (262144 * k + 129775) = 786432 * k + 389326 := by
    unfold C
    simp [show (262144 * k + 129775) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 389326) = 393216 * k + 194663 := by
    unfold C
    simp [show (786432 * k + 389326) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 194663) = 1179648 * k + 583990 := by
    unfold C
    simp [show (393216 * k + 194663) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 583990) = 589824 * k + 291995 := by
    unfold C
    simp [show (1179648 * k + 583990) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 291995) = 1769472 * k + 875986 := by
    unfold C
    simp [show (589824 * k + 291995) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 875986) = 884736 * k + 437993 := by
    unfold C
    simp [show (1769472 * k + 875986) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 437993) = 2654208 * k + 1313980 := by
    unfold C
    simp [show (884736 * k + 437993) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 1313980) = 1327104 * k + 656990 := by
    unfold C
    simp [show (2654208 * k + 1313980) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 656990) = 663552 * k + 328495 := by
    unfold C
    simp [show (1327104 * k + 656990) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 328495) = 1990656 * k + 985486 := by
    unfold C
    simp [show (663552 * k + 328495) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 985486) = 995328 * k + 492743 := by
    unfold C
    simp [show (1990656 * k + 985486) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 492743) = 2985984 * k + 1478230 := by
    unfold C
    simp [show (995328 * k + 492743) % 2 ≠ 0 by omega]
    omega
  have h13 : C (2985984 * k + 1478230) = 1492992 * k + 739115 := by
    unfold C
    simp [show (2985984 * k + 1478230) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 739115) = 4478976 * k + 2217346 := by
    unfold C
    simp [show (1492992 * k + 739115) % 2 ≠ 0 by omega]
    omega
  have h15 : C (4478976 * k + 2217346) = 2239488 * k + 1108673 := by
    unfold C
    simp [show (4478976 * k + 2217346) % 2 = 0 by omega]
    omega
  have h16 : C (2239488 * k + 1108673) = 6718464 * k + 3326020 := by
    unfold C
    simp [show (2239488 * k + 1108673) % 2 ≠ 0 by omega]
    omega
  have h17 : C (6718464 * k + 3326020) = 3359232 * k + 1663010 := by
    unfold C
    simp [show (6718464 * k + 3326020) % 2 = 0 by omega]
    omega
  have h18 : C (3359232 * k + 1663010) = 1679616 * k + 831505 := by
    unfold C
    simp [show (3359232 * k + 1663010) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 831505) = 5038848 * k + 2494516 := by
    unfold C
    simp [show (1679616 * k + 831505) % 2 ≠ 0 by omega]
    omega
  have h20 : C (5038848 * k + 2494516) = 2519424 * k + 1247258 := by
    unfold C
    simp [show (5038848 * k + 2494516) % 2 = 0 by omega]
    omega
  have h21 : C (2519424 * k + 1247258) = 1259712 * k + 623629 := by
    unfold C
    simp [show (2519424 * k + 1247258) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 623629) = 3779136 * k + 1870888 := by
    unfold C
    simp [show (1259712 * k + 623629) % 2 ≠ 0 by omega]
    omega
  have h23 : C (3779136 * k + 1870888) = 1889568 * k + 935444 := by
    unfold C
    simp [show (3779136 * k + 1870888) % 2 = 0 by omega]
    omega
  have h24 : C (1889568 * k + 935444) = 944784 * k + 467722 := by
    unfold C
    simp [show (1889568 * k + 935444) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 467722) = 472392 * k + 233861 := by
    unfold C
    simp [show (944784 * k + 467722) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 233861) = 1417176 * k + 701584 := by
    unfold C
    simp [show (472392 * k + 233861) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 701584) = 708588 * k + 350792 := by
    unfold C
    simp [show (1417176 * k + 701584) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 350792) = 354294 * k + 175396 := by
    unfold C
    simp [show (708588 * k + 350792) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 175396) = 177147 * k + 87698 := by
    unfold C
    simp [show (354294 * k + 175396) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 129775) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 129775))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_130587 : ∀ k : Nat,
    iterate (262144 * k + 130587) 29 = 177147 * k + 88247 ∧
      177147 * k + 88247 < 262144 * k + 130587 := by
  intro k
  have h1 : C (262144 * k + 130587) = 786432 * k + 391762 := by
    unfold C
    simp [show (262144 * k + 130587) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 391762) = 393216 * k + 195881 := by
    unfold C
    simp [show (786432 * k + 391762) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 195881) = 1179648 * k + 587644 := by
    unfold C
    simp [show (393216 * k + 195881) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 587644) = 589824 * k + 293822 := by
    unfold C
    simp [show (1179648 * k + 587644) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 293822) = 294912 * k + 146911 := by
    unfold C
    simp [show (589824 * k + 293822) % 2 = 0 by omega]
    omega
  have h6 : C (294912 * k + 146911) = 884736 * k + 440734 := by
    unfold C
    simp [show (294912 * k + 146911) % 2 ≠ 0 by omega]
    omega
  have h7 : C (884736 * k + 440734) = 442368 * k + 220367 := by
    unfold C
    simp [show (884736 * k + 440734) % 2 = 0 by omega]
    omega
  have h8 : C (442368 * k + 220367) = 1327104 * k + 661102 := by
    unfold C
    simp [show (442368 * k + 220367) % 2 ≠ 0 by omega]
    omega
  have h9 : C (1327104 * k + 661102) = 663552 * k + 330551 := by
    unfold C
    simp [show (1327104 * k + 661102) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 330551) = 1990656 * k + 991654 := by
    unfold C
    simp [show (663552 * k + 330551) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 991654) = 995328 * k + 495827 := by
    unfold C
    simp [show (1990656 * k + 991654) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 495827) = 2985984 * k + 1487482 := by
    unfold C
    simp [show (995328 * k + 495827) % 2 ≠ 0 by omega]
    omega
  have h13 : C (2985984 * k + 1487482) = 1492992 * k + 743741 := by
    unfold C
    simp [show (2985984 * k + 1487482) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 743741) = 4478976 * k + 2231224 := by
    unfold C
    simp [show (1492992 * k + 743741) % 2 ≠ 0 by omega]
    omega
  have h15 : C (4478976 * k + 2231224) = 2239488 * k + 1115612 := by
    unfold C
    simp [show (4478976 * k + 2231224) % 2 = 0 by omega]
    omega
  have h16 : C (2239488 * k + 1115612) = 1119744 * k + 557806 := by
    unfold C
    simp [show (2239488 * k + 1115612) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 557806) = 559872 * k + 278903 := by
    unfold C
    simp [show (1119744 * k + 557806) % 2 = 0 by omega]
    omega
  have h18 : C (559872 * k + 278903) = 1679616 * k + 836710 := by
    unfold C
    simp [show (559872 * k + 278903) % 2 ≠ 0 by omega]
    omega
  have h19 : C (1679616 * k + 836710) = 839808 * k + 418355 := by
    unfold C
    simp [show (1679616 * k + 836710) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 418355) = 2519424 * k + 1255066 := by
    unfold C
    simp [show (839808 * k + 418355) % 2 ≠ 0 by omega]
    omega
  have h21 : C (2519424 * k + 1255066) = 1259712 * k + 627533 := by
    unfold C
    simp [show (2519424 * k + 1255066) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 627533) = 3779136 * k + 1882600 := by
    unfold C
    simp [show (1259712 * k + 627533) % 2 ≠ 0 by omega]
    omega
  have h23 : C (3779136 * k + 1882600) = 1889568 * k + 941300 := by
    unfold C
    simp [show (3779136 * k + 1882600) % 2 = 0 by omega]
    omega
  have h24 : C (1889568 * k + 941300) = 944784 * k + 470650 := by
    unfold C
    simp [show (1889568 * k + 941300) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 470650) = 472392 * k + 235325 := by
    unfold C
    simp [show (944784 * k + 470650) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 235325) = 1417176 * k + 705976 := by
    unfold C
    simp [show (472392 * k + 235325) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 705976) = 708588 * k + 352988 := by
    unfold C
    simp [show (1417176 * k + 705976) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 352988) = 354294 * k + 176494 := by
    unfold C
    simp [show (708588 * k + 352988) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 176494) = 177147 * k + 88247 := by
    unfold C
    simp [show (354294 * k + 176494) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 130587) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 130587))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

end CollatzM18Shard025
