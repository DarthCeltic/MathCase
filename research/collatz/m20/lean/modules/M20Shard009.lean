import Mathlib.Data.Nat.Prime.Basic

namespace CollatzM20Shard009

def C (n : Nat) : Nat := if n % 2 = 0 then n / 2 else 3 * n + 1

def iterate (n t : Nat) : Nat := Nat.rec n (fun _ previous => C previous) t

theorem descent_mod1048576_53019 : ∀ k : Nat,
    iterate (1048576 * k + 53019) 32 = 531441 * k + 26872 ∧
      531441 * k + 26872 < 1048576 * k + 53019 := by
  intro k
  have h1 : C (1048576 * k + 53019) = 3145728 * k + 159058 := by
    unfold C
    simp [show (1048576 * k + 53019) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 159058) = 1572864 * k + 79529 := by
    unfold C
    simp [show (3145728 * k + 159058) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 79529) = 4718592 * k + 238588 := by
    unfold C
    simp [show (1572864 * k + 79529) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 238588) = 2359296 * k + 119294 := by
    unfold C
    simp [show (4718592 * k + 238588) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 119294) = 1179648 * k + 59647 := by
    unfold C
    simp [show (2359296 * k + 119294) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 59647) = 3538944 * k + 178942 := by
    unfold C
    simp [show (1179648 * k + 59647) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 178942) = 1769472 * k + 89471 := by
    unfold C
    simp [show (3538944 * k + 178942) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 89471) = 5308416 * k + 268414 := by
    unfold C
    simp [show (1769472 * k + 89471) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 268414) = 2654208 * k + 134207 := by
    unfold C
    simp [show (5308416 * k + 268414) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 134207) = 7962624 * k + 402622 := by
    unfold C
    simp [show (2654208 * k + 134207) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 402622) = 3981312 * k + 201311 := by
    unfold C
    simp [show (7962624 * k + 402622) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 201311) = 11943936 * k + 603934 := by
    unfold C
    simp [show (3981312 * k + 201311) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 603934) = 5971968 * k + 301967 := by
    unfold C
    simp [show (11943936 * k + 603934) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 301967) = 17915904 * k + 905902 := by
    unfold C
    simp [show (5971968 * k + 301967) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 905902) = 8957952 * k + 452951 := by
    unfold C
    simp [show (17915904 * k + 905902) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 452951) = 26873856 * k + 1358854 := by
    unfold C
    simp [show (8957952 * k + 452951) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 1358854) = 13436928 * k + 679427 := by
    unfold C
    simp [show (26873856 * k + 1358854) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 679427) = 40310784 * k + 2038282 := by
    unfold C
    simp [show (13436928 * k + 679427) % 2 ≠ 0 by omega]
    omega
  have h19 : C (40310784 * k + 2038282) = 20155392 * k + 1019141 := by
    unfold C
    simp [show (40310784 * k + 2038282) % 2 = 0 by omega]
    omega
  have h20 : C (20155392 * k + 1019141) = 60466176 * k + 3057424 := by
    unfold C
    simp [show (20155392 * k + 1019141) % 2 ≠ 0 by omega]
    omega
  have h21 : C (60466176 * k + 3057424) = 30233088 * k + 1528712 := by
    unfold C
    simp [show (60466176 * k + 3057424) % 2 = 0 by omega]
    omega
  have h22 : C (30233088 * k + 1528712) = 15116544 * k + 764356 := by
    unfold C
    simp [show (30233088 * k + 1528712) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 764356) = 7558272 * k + 382178 := by
    unfold C
    simp [show (15116544 * k + 764356) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 382178) = 3779136 * k + 191089 := by
    unfold C
    simp [show (7558272 * k + 382178) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 191089) = 11337408 * k + 573268 := by
    unfold C
    simp [show (3779136 * k + 191089) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 573268) = 5668704 * k + 286634 := by
    unfold C
    simp [show (11337408 * k + 573268) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 286634) = 2834352 * k + 143317 := by
    unfold C
    simp [show (5668704 * k + 286634) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 143317) = 8503056 * k + 429952 := by
    unfold C
    simp [show (2834352 * k + 143317) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 429952) = 4251528 * k + 214976 := by
    unfold C
    simp [show (8503056 * k + 429952) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 214976) = 2125764 * k + 107488 := by
    unfold C
    simp [show (4251528 * k + 214976) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 107488) = 1062882 * k + 53744 := by
    unfold C
    simp [show (2125764 * k + 107488) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 53744) = 531441 * k + 26872 := by
    unfold C
    simp [show (1062882 * k + 53744) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 53019) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 53019)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_53575 : ∀ k : Nat,
    iterate (1048576 * k + 53575) 32 = 531441 * k + 27154 ∧
      531441 * k + 27154 < 1048576 * k + 53575 := by
  intro k
  have h1 : C (1048576 * k + 53575) = 3145728 * k + 160726 := by
    unfold C
    simp [show (1048576 * k + 53575) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 160726) = 1572864 * k + 80363 := by
    unfold C
    simp [show (3145728 * k + 160726) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 80363) = 4718592 * k + 241090 := by
    unfold C
    simp [show (1572864 * k + 80363) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 241090) = 2359296 * k + 120545 := by
    unfold C
    simp [show (4718592 * k + 241090) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 120545) = 7077888 * k + 361636 := by
    unfold C
    simp [show (2359296 * k + 120545) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 361636) = 3538944 * k + 180818 := by
    unfold C
    simp [show (7077888 * k + 361636) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 180818) = 1769472 * k + 90409 := by
    unfold C
    simp [show (3538944 * k + 180818) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 90409) = 5308416 * k + 271228 := by
    unfold C
    simp [show (1769472 * k + 90409) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 271228) = 2654208 * k + 135614 := by
    unfold C
    simp [show (5308416 * k + 271228) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 135614) = 1327104 * k + 67807 := by
    unfold C
    simp [show (2654208 * k + 135614) % 2 = 0 by omega]
    omega
  have h11 : C (1327104 * k + 67807) = 3981312 * k + 203422 := by
    unfold C
    simp [show (1327104 * k + 67807) % 2 ≠ 0 by omega]
    omega
  have h12 : C (3981312 * k + 203422) = 1990656 * k + 101711 := by
    unfold C
    simp [show (3981312 * k + 203422) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 101711) = 5971968 * k + 305134 := by
    unfold C
    simp [show (1990656 * k + 101711) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 305134) = 2985984 * k + 152567 := by
    unfold C
    simp [show (5971968 * k + 305134) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 152567) = 8957952 * k + 457702 := by
    unfold C
    simp [show (2985984 * k + 152567) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 457702) = 4478976 * k + 228851 := by
    unfold C
    simp [show (8957952 * k + 457702) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 228851) = 13436928 * k + 686554 := by
    unfold C
    simp [show (4478976 * k + 228851) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 686554) = 6718464 * k + 343277 := by
    unfold C
    simp [show (13436928 * k + 686554) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 343277) = 20155392 * k + 1029832 := by
    unfold C
    simp [show (6718464 * k + 343277) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 1029832) = 10077696 * k + 514916 := by
    unfold C
    simp [show (20155392 * k + 1029832) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 514916) = 5038848 * k + 257458 := by
    unfold C
    simp [show (10077696 * k + 514916) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 257458) = 2519424 * k + 128729 := by
    unfold C
    simp [show (5038848 * k + 257458) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 128729) = 7558272 * k + 386188 := by
    unfold C
    simp [show (2519424 * k + 128729) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 386188) = 3779136 * k + 193094 := by
    unfold C
    simp [show (7558272 * k + 386188) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 193094) = 1889568 * k + 96547 := by
    unfold C
    simp [show (3779136 * k + 193094) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 96547) = 5668704 * k + 289642 := by
    unfold C
    simp [show (1889568 * k + 96547) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 289642) = 2834352 * k + 144821 := by
    unfold C
    simp [show (5668704 * k + 289642) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 144821) = 8503056 * k + 434464 := by
    unfold C
    simp [show (2834352 * k + 144821) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 434464) = 4251528 * k + 217232 := by
    unfold C
    simp [show (8503056 * k + 434464) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 217232) = 2125764 * k + 108616 := by
    unfold C
    simp [show (4251528 * k + 217232) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 108616) = 1062882 * k + 54308 := by
    unfold C
    simp [show (2125764 * k + 108616) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 54308) = 531441 * k + 27154 := by
    unfold C
    simp [show (1062882 * k + 54308) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 53575) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 53575)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_53735 : ∀ k : Nat,
    iterate (1048576 * k + 53735) 32 = 531441 * k + 27235 ∧
      531441 * k + 27235 < 1048576 * k + 53735 := by
  intro k
  have h1 : C (1048576 * k + 53735) = 3145728 * k + 161206 := by
    unfold C
    simp [show (1048576 * k + 53735) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 161206) = 1572864 * k + 80603 := by
    unfold C
    simp [show (3145728 * k + 161206) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 80603) = 4718592 * k + 241810 := by
    unfold C
    simp [show (1572864 * k + 80603) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 241810) = 2359296 * k + 120905 := by
    unfold C
    simp [show (4718592 * k + 241810) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 120905) = 7077888 * k + 362716 := by
    unfold C
    simp [show (2359296 * k + 120905) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 362716) = 3538944 * k + 181358 := by
    unfold C
    simp [show (7077888 * k + 362716) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 181358) = 1769472 * k + 90679 := by
    unfold C
    simp [show (3538944 * k + 181358) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 90679) = 5308416 * k + 272038 := by
    unfold C
    simp [show (1769472 * k + 90679) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 272038) = 2654208 * k + 136019 := by
    unfold C
    simp [show (5308416 * k + 272038) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 136019) = 7962624 * k + 408058 := by
    unfold C
    simp [show (2654208 * k + 136019) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 408058) = 3981312 * k + 204029 := by
    unfold C
    simp [show (7962624 * k + 408058) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 204029) = 11943936 * k + 612088 := by
    unfold C
    simp [show (3981312 * k + 204029) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 612088) = 5971968 * k + 306044 := by
    unfold C
    simp [show (11943936 * k + 612088) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 306044) = 2985984 * k + 153022 := by
    unfold C
    simp [show (5971968 * k + 306044) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 153022) = 1492992 * k + 76511 := by
    unfold C
    simp [show (2985984 * k + 153022) % 2 = 0 by omega]
    omega
  have h16 : C (1492992 * k + 76511) = 4478976 * k + 229534 := by
    unfold C
    simp [show (1492992 * k + 76511) % 2 ≠ 0 by omega]
    omega
  have h17 : C (4478976 * k + 229534) = 2239488 * k + 114767 := by
    unfold C
    simp [show (4478976 * k + 229534) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 114767) = 6718464 * k + 344302 := by
    unfold C
    simp [show (2239488 * k + 114767) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 344302) = 3359232 * k + 172151 := by
    unfold C
    simp [show (6718464 * k + 344302) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 172151) = 10077696 * k + 516454 := by
    unfold C
    simp [show (3359232 * k + 172151) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 516454) = 5038848 * k + 258227 := by
    unfold C
    simp [show (10077696 * k + 516454) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 258227) = 15116544 * k + 774682 := by
    unfold C
    simp [show (5038848 * k + 258227) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 774682) = 7558272 * k + 387341 := by
    unfold C
    simp [show (15116544 * k + 774682) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 387341) = 22674816 * k + 1162024 := by
    unfold C
    simp [show (7558272 * k + 387341) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 1162024) = 11337408 * k + 581012 := by
    unfold C
    simp [show (22674816 * k + 1162024) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 581012) = 5668704 * k + 290506 := by
    unfold C
    simp [show (11337408 * k + 581012) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 290506) = 2834352 * k + 145253 := by
    unfold C
    simp [show (5668704 * k + 290506) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 145253) = 8503056 * k + 435760 := by
    unfold C
    simp [show (2834352 * k + 145253) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 435760) = 4251528 * k + 217880 := by
    unfold C
    simp [show (8503056 * k + 435760) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 217880) = 2125764 * k + 108940 := by
    unfold C
    simp [show (4251528 * k + 217880) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 108940) = 1062882 * k + 54470 := by
    unfold C
    simp [show (2125764 * k + 108940) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 54470) = 531441 * k + 27235 := by
    unfold C
    simp [show (1062882 * k + 54470) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 53735) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 53735)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_54463 : ∀ k : Nat,
    iterate (1048576 * k + 54463) 32 = 531441 * k + 27604 ∧
      531441 * k + 27604 < 1048576 * k + 54463 := by
  intro k
  have h1 : C (1048576 * k + 54463) = 3145728 * k + 163390 := by
    unfold C
    simp [show (1048576 * k + 54463) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 163390) = 1572864 * k + 81695 := by
    unfold C
    simp [show (3145728 * k + 163390) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 81695) = 4718592 * k + 245086 := by
    unfold C
    simp [show (1572864 * k + 81695) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 245086) = 2359296 * k + 122543 := by
    unfold C
    simp [show (4718592 * k + 245086) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 122543) = 7077888 * k + 367630 := by
    unfold C
    simp [show (2359296 * k + 122543) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 367630) = 3538944 * k + 183815 := by
    unfold C
    simp [show (7077888 * k + 367630) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 183815) = 10616832 * k + 551446 := by
    unfold C
    simp [show (3538944 * k + 183815) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 551446) = 5308416 * k + 275723 := by
    unfold C
    simp [show (10616832 * k + 551446) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 275723) = 15925248 * k + 827170 := by
    unfold C
    simp [show (5308416 * k + 275723) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 827170) = 7962624 * k + 413585 := by
    unfold C
    simp [show (15925248 * k + 827170) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 413585) = 23887872 * k + 1240756 := by
    unfold C
    simp [show (7962624 * k + 413585) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 1240756) = 11943936 * k + 620378 := by
    unfold C
    simp [show (23887872 * k + 1240756) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 620378) = 5971968 * k + 310189 := by
    unfold C
    simp [show (11943936 * k + 620378) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 310189) = 17915904 * k + 930568 := by
    unfold C
    simp [show (5971968 * k + 310189) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 930568) = 8957952 * k + 465284 := by
    unfold C
    simp [show (17915904 * k + 930568) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 465284) = 4478976 * k + 232642 := by
    unfold C
    simp [show (8957952 * k + 465284) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 232642) = 2239488 * k + 116321 := by
    unfold C
    simp [show (4478976 * k + 232642) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 116321) = 6718464 * k + 348964 := by
    unfold C
    simp [show (2239488 * k + 116321) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 348964) = 3359232 * k + 174482 := by
    unfold C
    simp [show (6718464 * k + 348964) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 174482) = 1679616 * k + 87241 := by
    unfold C
    simp [show (3359232 * k + 174482) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 87241) = 5038848 * k + 261724 := by
    unfold C
    simp [show (1679616 * k + 87241) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 261724) = 2519424 * k + 130862 := by
    unfold C
    simp [show (5038848 * k + 261724) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 130862) = 1259712 * k + 65431 := by
    unfold C
    simp [show (2519424 * k + 130862) % 2 = 0 by omega]
    omega
  have h24 : C (1259712 * k + 65431) = 3779136 * k + 196294 := by
    unfold C
    simp [show (1259712 * k + 65431) % 2 ≠ 0 by omega]
    omega
  have h25 : C (3779136 * k + 196294) = 1889568 * k + 98147 := by
    unfold C
    simp [show (3779136 * k + 196294) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 98147) = 5668704 * k + 294442 := by
    unfold C
    simp [show (1889568 * k + 98147) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 294442) = 2834352 * k + 147221 := by
    unfold C
    simp [show (5668704 * k + 294442) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 147221) = 8503056 * k + 441664 := by
    unfold C
    simp [show (2834352 * k + 147221) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 441664) = 4251528 * k + 220832 := by
    unfold C
    simp [show (8503056 * k + 441664) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 220832) = 2125764 * k + 110416 := by
    unfold C
    simp [show (4251528 * k + 220832) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 110416) = 1062882 * k + 55208 := by
    unfold C
    simp [show (2125764 * k + 110416) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 55208) = 531441 * k + 27604 := by
    unfold C
    simp [show (1062882 * k + 55208) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 54463) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 54463)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_54631 : ∀ k : Nat,
    iterate (1048576 * k + 54631) 32 = 531441 * k + 27689 ∧
      531441 * k + 27689 < 1048576 * k + 54631 := by
  intro k
  have h1 : C (1048576 * k + 54631) = 3145728 * k + 163894 := by
    unfold C
    simp [show (1048576 * k + 54631) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 163894) = 1572864 * k + 81947 := by
    unfold C
    simp [show (3145728 * k + 163894) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 81947) = 4718592 * k + 245842 := by
    unfold C
    simp [show (1572864 * k + 81947) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 245842) = 2359296 * k + 122921 := by
    unfold C
    simp [show (4718592 * k + 245842) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 122921) = 7077888 * k + 368764 := by
    unfold C
    simp [show (2359296 * k + 122921) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 368764) = 3538944 * k + 184382 := by
    unfold C
    simp [show (7077888 * k + 368764) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 184382) = 1769472 * k + 92191 := by
    unfold C
    simp [show (3538944 * k + 184382) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 92191) = 5308416 * k + 276574 := by
    unfold C
    simp [show (1769472 * k + 92191) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 276574) = 2654208 * k + 138287 := by
    unfold C
    simp [show (5308416 * k + 276574) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 138287) = 7962624 * k + 414862 := by
    unfold C
    simp [show (2654208 * k + 138287) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 414862) = 3981312 * k + 207431 := by
    unfold C
    simp [show (7962624 * k + 414862) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 207431) = 11943936 * k + 622294 := by
    unfold C
    simp [show (3981312 * k + 207431) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 622294) = 5971968 * k + 311147 := by
    unfold C
    simp [show (11943936 * k + 622294) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 311147) = 17915904 * k + 933442 := by
    unfold C
    simp [show (5971968 * k + 311147) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 933442) = 8957952 * k + 466721 := by
    unfold C
    simp [show (17915904 * k + 933442) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 466721) = 26873856 * k + 1400164 := by
    unfold C
    simp [show (8957952 * k + 466721) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 1400164) = 13436928 * k + 700082 := by
    unfold C
    simp [show (26873856 * k + 1400164) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 700082) = 6718464 * k + 350041 := by
    unfold C
    simp [show (13436928 * k + 700082) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 350041) = 20155392 * k + 1050124 := by
    unfold C
    simp [show (6718464 * k + 350041) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 1050124) = 10077696 * k + 525062 := by
    unfold C
    simp [show (20155392 * k + 1050124) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 525062) = 5038848 * k + 262531 := by
    unfold C
    simp [show (10077696 * k + 525062) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 262531) = 15116544 * k + 787594 := by
    unfold C
    simp [show (5038848 * k + 262531) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 787594) = 7558272 * k + 393797 := by
    unfold C
    simp [show (15116544 * k + 787594) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 393797) = 22674816 * k + 1181392 := by
    unfold C
    simp [show (7558272 * k + 393797) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 1181392) = 11337408 * k + 590696 := by
    unfold C
    simp [show (22674816 * k + 1181392) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 590696) = 5668704 * k + 295348 := by
    unfold C
    simp [show (11337408 * k + 590696) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 295348) = 2834352 * k + 147674 := by
    unfold C
    simp [show (5668704 * k + 295348) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 147674) = 1417176 * k + 73837 := by
    unfold C
    simp [show (2834352 * k + 147674) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 73837) = 4251528 * k + 221512 := by
    unfold C
    simp [show (1417176 * k + 73837) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 221512) = 2125764 * k + 110756 := by
    unfold C
    simp [show (4251528 * k + 221512) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 110756) = 1062882 * k + 55378 := by
    unfold C
    simp [show (2125764 * k + 110756) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 55378) = 531441 * k + 27689 := by
    unfold C
    simp [show (1062882 * k + 55378) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 54631) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 54631)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_54783 : ∀ k : Nat,
    iterate (1048576 * k + 54783) 32 = 531441 * k + 27766 ∧
      531441 * k + 27766 < 1048576 * k + 54783 := by
  intro k
  have h1 : C (1048576 * k + 54783) = 3145728 * k + 164350 := by
    unfold C
    simp [show (1048576 * k + 54783) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 164350) = 1572864 * k + 82175 := by
    unfold C
    simp [show (3145728 * k + 164350) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 82175) = 4718592 * k + 246526 := by
    unfold C
    simp [show (1572864 * k + 82175) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 246526) = 2359296 * k + 123263 := by
    unfold C
    simp [show (4718592 * k + 246526) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 123263) = 7077888 * k + 369790 := by
    unfold C
    simp [show (2359296 * k + 123263) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 369790) = 3538944 * k + 184895 := by
    unfold C
    simp [show (7077888 * k + 369790) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 184895) = 10616832 * k + 554686 := by
    unfold C
    simp [show (3538944 * k + 184895) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 554686) = 5308416 * k + 277343 := by
    unfold C
    simp [show (10616832 * k + 554686) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 277343) = 15925248 * k + 832030 := by
    unfold C
    simp [show (5308416 * k + 277343) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 832030) = 7962624 * k + 416015 := by
    unfold C
    simp [show (15925248 * k + 832030) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 416015) = 23887872 * k + 1248046 := by
    unfold C
    simp [show (7962624 * k + 416015) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 1248046) = 11943936 * k + 624023 := by
    unfold C
    simp [show (23887872 * k + 1248046) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 624023) = 35831808 * k + 1872070 := by
    unfold C
    simp [show (11943936 * k + 624023) % 2 ≠ 0 by omega]
    omega
  have h14 : C (35831808 * k + 1872070) = 17915904 * k + 936035 := by
    unfold C
    simp [show (35831808 * k + 1872070) % 2 = 0 by omega]
    omega
  have h15 : C (17915904 * k + 936035) = 53747712 * k + 2808106 := by
    unfold C
    simp [show (17915904 * k + 936035) % 2 ≠ 0 by omega]
    omega
  have h16 : C (53747712 * k + 2808106) = 26873856 * k + 1404053 := by
    unfold C
    simp [show (53747712 * k + 2808106) % 2 = 0 by omega]
    omega
  have h17 : C (26873856 * k + 1404053) = 80621568 * k + 4212160 := by
    unfold C
    simp [show (26873856 * k + 1404053) % 2 ≠ 0 by omega]
    omega
  have h18 : C (80621568 * k + 4212160) = 40310784 * k + 2106080 := by
    unfold C
    simp [show (80621568 * k + 4212160) % 2 = 0 by omega]
    omega
  have h19 : C (40310784 * k + 2106080) = 20155392 * k + 1053040 := by
    unfold C
    simp [show (40310784 * k + 2106080) % 2 = 0 by omega]
    omega
  have h20 : C (20155392 * k + 1053040) = 10077696 * k + 526520 := by
    unfold C
    simp [show (20155392 * k + 1053040) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 526520) = 5038848 * k + 263260 := by
    unfold C
    simp [show (10077696 * k + 526520) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 263260) = 2519424 * k + 131630 := by
    unfold C
    simp [show (5038848 * k + 263260) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 131630) = 1259712 * k + 65815 := by
    unfold C
    simp [show (2519424 * k + 131630) % 2 = 0 by omega]
    omega
  have h24 : C (1259712 * k + 65815) = 3779136 * k + 197446 := by
    unfold C
    simp [show (1259712 * k + 65815) % 2 ≠ 0 by omega]
    omega
  have h25 : C (3779136 * k + 197446) = 1889568 * k + 98723 := by
    unfold C
    simp [show (3779136 * k + 197446) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 98723) = 5668704 * k + 296170 := by
    unfold C
    simp [show (1889568 * k + 98723) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 296170) = 2834352 * k + 148085 := by
    unfold C
    simp [show (5668704 * k + 296170) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 148085) = 8503056 * k + 444256 := by
    unfold C
    simp [show (2834352 * k + 148085) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 444256) = 4251528 * k + 222128 := by
    unfold C
    simp [show (8503056 * k + 444256) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 222128) = 2125764 * k + 111064 := by
    unfold C
    simp [show (4251528 * k + 222128) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 111064) = 1062882 * k + 55532 := by
    unfold C
    simp [show (2125764 * k + 111064) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 55532) = 531441 * k + 27766 := by
    unfold C
    simp [show (1062882 * k + 55532) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 54783) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 54783)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_55323 : ∀ k : Nat,
    iterate (1048576 * k + 55323) 32 = 531441 * k + 28040 ∧
      531441 * k + 28040 < 1048576 * k + 55323 := by
  intro k
  have h1 : C (1048576 * k + 55323) = 3145728 * k + 165970 := by
    unfold C
    simp [show (1048576 * k + 55323) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 165970) = 1572864 * k + 82985 := by
    unfold C
    simp [show (3145728 * k + 165970) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 82985) = 4718592 * k + 248956 := by
    unfold C
    simp [show (1572864 * k + 82985) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 248956) = 2359296 * k + 124478 := by
    unfold C
    simp [show (4718592 * k + 248956) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 124478) = 1179648 * k + 62239 := by
    unfold C
    simp [show (2359296 * k + 124478) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 62239) = 3538944 * k + 186718 := by
    unfold C
    simp [show (1179648 * k + 62239) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 186718) = 1769472 * k + 93359 := by
    unfold C
    simp [show (3538944 * k + 186718) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 93359) = 5308416 * k + 280078 := by
    unfold C
    simp [show (1769472 * k + 93359) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 280078) = 2654208 * k + 140039 := by
    unfold C
    simp [show (5308416 * k + 280078) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 140039) = 7962624 * k + 420118 := by
    unfold C
    simp [show (2654208 * k + 140039) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 420118) = 3981312 * k + 210059 := by
    unfold C
    simp [show (7962624 * k + 420118) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 210059) = 11943936 * k + 630178 := by
    unfold C
    simp [show (3981312 * k + 210059) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 630178) = 5971968 * k + 315089 := by
    unfold C
    simp [show (11943936 * k + 630178) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 315089) = 17915904 * k + 945268 := by
    unfold C
    simp [show (5971968 * k + 315089) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 945268) = 8957952 * k + 472634 := by
    unfold C
    simp [show (17915904 * k + 945268) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 472634) = 4478976 * k + 236317 := by
    unfold C
    simp [show (8957952 * k + 472634) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 236317) = 13436928 * k + 708952 := by
    unfold C
    simp [show (4478976 * k + 236317) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 708952) = 6718464 * k + 354476 := by
    unfold C
    simp [show (13436928 * k + 708952) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 354476) = 3359232 * k + 177238 := by
    unfold C
    simp [show (6718464 * k + 354476) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 177238) = 1679616 * k + 88619 := by
    unfold C
    simp [show (3359232 * k + 177238) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 88619) = 5038848 * k + 265858 := by
    unfold C
    simp [show (1679616 * k + 88619) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 265858) = 2519424 * k + 132929 := by
    unfold C
    simp [show (5038848 * k + 265858) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 132929) = 7558272 * k + 398788 := by
    unfold C
    simp [show (2519424 * k + 132929) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 398788) = 3779136 * k + 199394 := by
    unfold C
    simp [show (7558272 * k + 398788) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 199394) = 1889568 * k + 99697 := by
    unfold C
    simp [show (3779136 * k + 199394) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 99697) = 5668704 * k + 299092 := by
    unfold C
    simp [show (1889568 * k + 99697) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 299092) = 2834352 * k + 149546 := by
    unfold C
    simp [show (5668704 * k + 299092) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 149546) = 1417176 * k + 74773 := by
    unfold C
    simp [show (2834352 * k + 149546) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 74773) = 4251528 * k + 224320 := by
    unfold C
    simp [show (1417176 * k + 74773) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 224320) = 2125764 * k + 112160 := by
    unfold C
    simp [show (4251528 * k + 224320) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 112160) = 1062882 * k + 56080 := by
    unfold C
    simp [show (2125764 * k + 112160) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 56080) = 531441 * k + 28040 := by
    unfold C
    simp [show (1062882 * k + 56080) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 55323) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 55323)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_55359 : ∀ k : Nat,
    iterate (1048576 * k + 55359) 32 = 531441 * k + 28058 ∧
      531441 * k + 28058 < 1048576 * k + 55359 := by
  intro k
  have h1 : C (1048576 * k + 55359) = 3145728 * k + 166078 := by
    unfold C
    simp [show (1048576 * k + 55359) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 166078) = 1572864 * k + 83039 := by
    unfold C
    simp [show (3145728 * k + 166078) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 83039) = 4718592 * k + 249118 := by
    unfold C
    simp [show (1572864 * k + 83039) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 249118) = 2359296 * k + 124559 := by
    unfold C
    simp [show (4718592 * k + 249118) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 124559) = 7077888 * k + 373678 := by
    unfold C
    simp [show (2359296 * k + 124559) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 373678) = 3538944 * k + 186839 := by
    unfold C
    simp [show (7077888 * k + 373678) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 186839) = 10616832 * k + 560518 := by
    unfold C
    simp [show (3538944 * k + 186839) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 560518) = 5308416 * k + 280259 := by
    unfold C
    simp [show (10616832 * k + 560518) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 280259) = 15925248 * k + 840778 := by
    unfold C
    simp [show (5308416 * k + 280259) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 840778) = 7962624 * k + 420389 := by
    unfold C
    simp [show (15925248 * k + 840778) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 420389) = 23887872 * k + 1261168 := by
    unfold C
    simp [show (7962624 * k + 420389) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 1261168) = 11943936 * k + 630584 := by
    unfold C
    simp [show (23887872 * k + 1261168) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 630584) = 5971968 * k + 315292 := by
    unfold C
    simp [show (11943936 * k + 630584) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 315292) = 2985984 * k + 157646 := by
    unfold C
    simp [show (5971968 * k + 315292) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 157646) = 1492992 * k + 78823 := by
    unfold C
    simp [show (2985984 * k + 157646) % 2 = 0 by omega]
    omega
  have h16 : C (1492992 * k + 78823) = 4478976 * k + 236470 := by
    unfold C
    simp [show (1492992 * k + 78823) % 2 ≠ 0 by omega]
    omega
  have h17 : C (4478976 * k + 236470) = 2239488 * k + 118235 := by
    unfold C
    simp [show (4478976 * k + 236470) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 118235) = 6718464 * k + 354706 := by
    unfold C
    simp [show (2239488 * k + 118235) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 354706) = 3359232 * k + 177353 := by
    unfold C
    simp [show (6718464 * k + 354706) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 177353) = 10077696 * k + 532060 := by
    unfold C
    simp [show (3359232 * k + 177353) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 532060) = 5038848 * k + 266030 := by
    unfold C
    simp [show (10077696 * k + 532060) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 266030) = 2519424 * k + 133015 := by
    unfold C
    simp [show (5038848 * k + 266030) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 133015) = 7558272 * k + 399046 := by
    unfold C
    simp [show (2519424 * k + 133015) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 399046) = 3779136 * k + 199523 := by
    unfold C
    simp [show (7558272 * k + 399046) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 199523) = 11337408 * k + 598570 := by
    unfold C
    simp [show (3779136 * k + 199523) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 598570) = 5668704 * k + 299285 := by
    unfold C
    simp [show (11337408 * k + 598570) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 299285) = 17006112 * k + 897856 := by
    unfold C
    simp [show (5668704 * k + 299285) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 897856) = 8503056 * k + 448928 := by
    unfold C
    simp [show (17006112 * k + 897856) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 448928) = 4251528 * k + 224464 := by
    unfold C
    simp [show (8503056 * k + 448928) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 224464) = 2125764 * k + 112232 := by
    unfold C
    simp [show (4251528 * k + 224464) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 112232) = 1062882 * k + 56116 := by
    unfold C
    simp [show (2125764 * k + 112232) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 56116) = 531441 * k + 28058 := by
    unfold C
    simp [show (1062882 * k + 56116) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 55359) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 55359)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_56559 : ∀ k : Nat,
    iterate (1048576 * k + 56559) 32 = 531441 * k + 28666 ∧
      531441 * k + 28666 < 1048576 * k + 56559 := by
  intro k
  have h1 : C (1048576 * k + 56559) = 3145728 * k + 169678 := by
    unfold C
    simp [show (1048576 * k + 56559) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 169678) = 1572864 * k + 84839 := by
    unfold C
    simp [show (3145728 * k + 169678) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 84839) = 4718592 * k + 254518 := by
    unfold C
    simp [show (1572864 * k + 84839) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 254518) = 2359296 * k + 127259 := by
    unfold C
    simp [show (4718592 * k + 254518) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 127259) = 7077888 * k + 381778 := by
    unfold C
    simp [show (2359296 * k + 127259) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 381778) = 3538944 * k + 190889 := by
    unfold C
    simp [show (7077888 * k + 381778) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 190889) = 10616832 * k + 572668 := by
    unfold C
    simp [show (3538944 * k + 190889) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 572668) = 5308416 * k + 286334 := by
    unfold C
    simp [show (10616832 * k + 572668) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 286334) = 2654208 * k + 143167 := by
    unfold C
    simp [show (5308416 * k + 286334) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 143167) = 7962624 * k + 429502 := by
    unfold C
    simp [show (2654208 * k + 143167) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 429502) = 3981312 * k + 214751 := by
    unfold C
    simp [show (7962624 * k + 429502) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 214751) = 11943936 * k + 644254 := by
    unfold C
    simp [show (3981312 * k + 214751) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 644254) = 5971968 * k + 322127 := by
    unfold C
    simp [show (11943936 * k + 644254) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 322127) = 17915904 * k + 966382 := by
    unfold C
    simp [show (5971968 * k + 322127) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 966382) = 8957952 * k + 483191 := by
    unfold C
    simp [show (17915904 * k + 966382) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 483191) = 26873856 * k + 1449574 := by
    unfold C
    simp [show (8957952 * k + 483191) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 1449574) = 13436928 * k + 724787 := by
    unfold C
    simp [show (26873856 * k + 1449574) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 724787) = 40310784 * k + 2174362 := by
    unfold C
    simp [show (13436928 * k + 724787) % 2 ≠ 0 by omega]
    omega
  have h19 : C (40310784 * k + 2174362) = 20155392 * k + 1087181 := by
    unfold C
    simp [show (40310784 * k + 2174362) % 2 = 0 by omega]
    omega
  have h20 : C (20155392 * k + 1087181) = 60466176 * k + 3261544 := by
    unfold C
    simp [show (20155392 * k + 1087181) % 2 ≠ 0 by omega]
    omega
  have h21 : C (60466176 * k + 3261544) = 30233088 * k + 1630772 := by
    unfold C
    simp [show (60466176 * k + 3261544) % 2 = 0 by omega]
    omega
  have h22 : C (30233088 * k + 1630772) = 15116544 * k + 815386 := by
    unfold C
    simp [show (30233088 * k + 1630772) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 815386) = 7558272 * k + 407693 := by
    unfold C
    simp [show (15116544 * k + 815386) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 407693) = 22674816 * k + 1223080 := by
    unfold C
    simp [show (7558272 * k + 407693) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 1223080) = 11337408 * k + 611540 := by
    unfold C
    simp [show (22674816 * k + 1223080) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 611540) = 5668704 * k + 305770 := by
    unfold C
    simp [show (11337408 * k + 611540) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 305770) = 2834352 * k + 152885 := by
    unfold C
    simp [show (5668704 * k + 305770) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 152885) = 8503056 * k + 458656 := by
    unfold C
    simp [show (2834352 * k + 152885) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 458656) = 4251528 * k + 229328 := by
    unfold C
    simp [show (8503056 * k + 458656) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 229328) = 2125764 * k + 114664 := by
    unfold C
    simp [show (4251528 * k + 229328) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 114664) = 1062882 * k + 57332 := by
    unfold C
    simp [show (2125764 * k + 114664) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 57332) = 531441 * k + 28666 := by
    unfold C
    simp [show (1062882 * k + 57332) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 56559) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 56559)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_56815 : ∀ k : Nat,
    iterate (1048576 * k + 56815) 32 = 531441 * k + 28796 ∧
      531441 * k + 28796 < 1048576 * k + 56815 := by
  intro k
  have h1 : C (1048576 * k + 56815) = 3145728 * k + 170446 := by
    unfold C
    simp [show (1048576 * k + 56815) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 170446) = 1572864 * k + 85223 := by
    unfold C
    simp [show (3145728 * k + 170446) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 85223) = 4718592 * k + 255670 := by
    unfold C
    simp [show (1572864 * k + 85223) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 255670) = 2359296 * k + 127835 := by
    unfold C
    simp [show (4718592 * k + 255670) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 127835) = 7077888 * k + 383506 := by
    unfold C
    simp [show (2359296 * k + 127835) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 383506) = 3538944 * k + 191753 := by
    unfold C
    simp [show (7077888 * k + 383506) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 191753) = 10616832 * k + 575260 := by
    unfold C
    simp [show (3538944 * k + 191753) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 575260) = 5308416 * k + 287630 := by
    unfold C
    simp [show (10616832 * k + 575260) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 287630) = 2654208 * k + 143815 := by
    unfold C
    simp [show (5308416 * k + 287630) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 143815) = 7962624 * k + 431446 := by
    unfold C
    simp [show (2654208 * k + 143815) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 431446) = 3981312 * k + 215723 := by
    unfold C
    simp [show (7962624 * k + 431446) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 215723) = 11943936 * k + 647170 := by
    unfold C
    simp [show (3981312 * k + 215723) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 647170) = 5971968 * k + 323585 := by
    unfold C
    simp [show (11943936 * k + 647170) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 323585) = 17915904 * k + 970756 := by
    unfold C
    simp [show (5971968 * k + 323585) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 970756) = 8957952 * k + 485378 := by
    unfold C
    simp [show (17915904 * k + 970756) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 485378) = 4478976 * k + 242689 := by
    unfold C
    simp [show (8957952 * k + 485378) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 242689) = 13436928 * k + 728068 := by
    unfold C
    simp [show (4478976 * k + 242689) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 728068) = 6718464 * k + 364034 := by
    unfold C
    simp [show (13436928 * k + 728068) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 364034) = 3359232 * k + 182017 := by
    unfold C
    simp [show (6718464 * k + 364034) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 182017) = 10077696 * k + 546052 := by
    unfold C
    simp [show (3359232 * k + 182017) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 546052) = 5038848 * k + 273026 := by
    unfold C
    simp [show (10077696 * k + 546052) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 273026) = 2519424 * k + 136513 := by
    unfold C
    simp [show (5038848 * k + 273026) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 136513) = 7558272 * k + 409540 := by
    unfold C
    simp [show (2519424 * k + 136513) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 409540) = 3779136 * k + 204770 := by
    unfold C
    simp [show (7558272 * k + 409540) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 204770) = 1889568 * k + 102385 := by
    unfold C
    simp [show (3779136 * k + 204770) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 102385) = 5668704 * k + 307156 := by
    unfold C
    simp [show (1889568 * k + 102385) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 307156) = 2834352 * k + 153578 := by
    unfold C
    simp [show (5668704 * k + 307156) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 153578) = 1417176 * k + 76789 := by
    unfold C
    simp [show (2834352 * k + 153578) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 76789) = 4251528 * k + 230368 := by
    unfold C
    simp [show (1417176 * k + 76789) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 230368) = 2125764 * k + 115184 := by
    unfold C
    simp [show (4251528 * k + 230368) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 115184) = 1062882 * k + 57592 := by
    unfold C
    simp [show (2125764 * k + 115184) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 57592) = 531441 * k + 28796 := by
    unfold C
    simp [show (1062882 * k + 57592) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 56815) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 56815)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_57339 : ∀ k : Nat,
    iterate (1048576 * k + 57339) 32 = 531441 * k + 29062 ∧
      531441 * k + 29062 < 1048576 * k + 57339 := by
  intro k
  have h1 : C (1048576 * k + 57339) = 3145728 * k + 172018 := by
    unfold C
    simp [show (1048576 * k + 57339) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 172018) = 1572864 * k + 86009 := by
    unfold C
    simp [show (3145728 * k + 172018) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 86009) = 4718592 * k + 258028 := by
    unfold C
    simp [show (1572864 * k + 86009) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 258028) = 2359296 * k + 129014 := by
    unfold C
    simp [show (4718592 * k + 258028) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 129014) = 1179648 * k + 64507 := by
    unfold C
    simp [show (2359296 * k + 129014) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 64507) = 3538944 * k + 193522 := by
    unfold C
    simp [show (1179648 * k + 64507) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 193522) = 1769472 * k + 96761 := by
    unfold C
    simp [show (3538944 * k + 193522) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 96761) = 5308416 * k + 290284 := by
    unfold C
    simp [show (1769472 * k + 96761) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 290284) = 2654208 * k + 145142 := by
    unfold C
    simp [show (5308416 * k + 290284) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 145142) = 1327104 * k + 72571 := by
    unfold C
    simp [show (2654208 * k + 145142) % 2 = 0 by omega]
    omega
  have h11 : C (1327104 * k + 72571) = 3981312 * k + 217714 := by
    unfold C
    simp [show (1327104 * k + 72571) % 2 ≠ 0 by omega]
    omega
  have h12 : C (3981312 * k + 217714) = 1990656 * k + 108857 := by
    unfold C
    simp [show (3981312 * k + 217714) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 108857) = 5971968 * k + 326572 := by
    unfold C
    simp [show (1990656 * k + 108857) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 326572) = 2985984 * k + 163286 := by
    unfold C
    simp [show (5971968 * k + 326572) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 163286) = 1492992 * k + 81643 := by
    unfold C
    simp [show (2985984 * k + 163286) % 2 = 0 by omega]
    omega
  have h16 : C (1492992 * k + 81643) = 4478976 * k + 244930 := by
    unfold C
    simp [show (1492992 * k + 81643) % 2 ≠ 0 by omega]
    omega
  have h17 : C (4478976 * k + 244930) = 2239488 * k + 122465 := by
    unfold C
    simp [show (4478976 * k + 244930) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 122465) = 6718464 * k + 367396 := by
    unfold C
    simp [show (2239488 * k + 122465) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 367396) = 3359232 * k + 183698 := by
    unfold C
    simp [show (6718464 * k + 367396) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 183698) = 1679616 * k + 91849 := by
    unfold C
    simp [show (3359232 * k + 183698) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 91849) = 5038848 * k + 275548 := by
    unfold C
    simp [show (1679616 * k + 91849) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 275548) = 2519424 * k + 137774 := by
    unfold C
    simp [show (5038848 * k + 275548) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 137774) = 1259712 * k + 68887 := by
    unfold C
    simp [show (2519424 * k + 137774) % 2 = 0 by omega]
    omega
  have h24 : C (1259712 * k + 68887) = 3779136 * k + 206662 := by
    unfold C
    simp [show (1259712 * k + 68887) % 2 ≠ 0 by omega]
    omega
  have h25 : C (3779136 * k + 206662) = 1889568 * k + 103331 := by
    unfold C
    simp [show (3779136 * k + 206662) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 103331) = 5668704 * k + 309994 := by
    unfold C
    simp [show (1889568 * k + 103331) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 309994) = 2834352 * k + 154997 := by
    unfold C
    simp [show (5668704 * k + 309994) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 154997) = 8503056 * k + 464992 := by
    unfold C
    simp [show (2834352 * k + 154997) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 464992) = 4251528 * k + 232496 := by
    unfold C
    simp [show (8503056 * k + 464992) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 232496) = 2125764 * k + 116248 := by
    unfold C
    simp [show (4251528 * k + 232496) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 116248) = 1062882 * k + 58124 := by
    unfold C
    simp [show (2125764 * k + 116248) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 58124) = 531441 * k + 29062 := by
    unfold C
    simp [show (1062882 * k + 58124) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 57339) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 57339)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_57499 : ∀ k : Nat,
    iterate (1048576 * k + 57499) 32 = 531441 * k + 29143 ∧
      531441 * k + 29143 < 1048576 * k + 57499 := by
  intro k
  have h1 : C (1048576 * k + 57499) = 3145728 * k + 172498 := by
    unfold C
    simp [show (1048576 * k + 57499) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 172498) = 1572864 * k + 86249 := by
    unfold C
    simp [show (3145728 * k + 172498) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 86249) = 4718592 * k + 258748 := by
    unfold C
    simp [show (1572864 * k + 86249) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 258748) = 2359296 * k + 129374 := by
    unfold C
    simp [show (4718592 * k + 258748) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 129374) = 1179648 * k + 64687 := by
    unfold C
    simp [show (2359296 * k + 129374) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 64687) = 3538944 * k + 194062 := by
    unfold C
    simp [show (1179648 * k + 64687) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 194062) = 1769472 * k + 97031 := by
    unfold C
    simp [show (3538944 * k + 194062) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 97031) = 5308416 * k + 291094 := by
    unfold C
    simp [show (1769472 * k + 97031) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 291094) = 2654208 * k + 145547 := by
    unfold C
    simp [show (5308416 * k + 291094) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 145547) = 7962624 * k + 436642 := by
    unfold C
    simp [show (2654208 * k + 145547) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 436642) = 3981312 * k + 218321 := by
    unfold C
    simp [show (7962624 * k + 436642) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 218321) = 11943936 * k + 654964 := by
    unfold C
    simp [show (3981312 * k + 218321) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 654964) = 5971968 * k + 327482 := by
    unfold C
    simp [show (11943936 * k + 654964) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 327482) = 2985984 * k + 163741 := by
    unfold C
    simp [show (5971968 * k + 327482) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 163741) = 8957952 * k + 491224 := by
    unfold C
    simp [show (2985984 * k + 163741) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 491224) = 4478976 * k + 245612 := by
    unfold C
    simp [show (8957952 * k + 491224) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 245612) = 2239488 * k + 122806 := by
    unfold C
    simp [show (4478976 * k + 245612) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 122806) = 1119744 * k + 61403 := by
    unfold C
    simp [show (2239488 * k + 122806) % 2 = 0 by omega]
    omega
  have h19 : C (1119744 * k + 61403) = 3359232 * k + 184210 := by
    unfold C
    simp [show (1119744 * k + 61403) % 2 ≠ 0 by omega]
    omega
  have h20 : C (3359232 * k + 184210) = 1679616 * k + 92105 := by
    unfold C
    simp [show (3359232 * k + 184210) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 92105) = 5038848 * k + 276316 := by
    unfold C
    simp [show (1679616 * k + 92105) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 276316) = 2519424 * k + 138158 := by
    unfold C
    simp [show (5038848 * k + 276316) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 138158) = 1259712 * k + 69079 := by
    unfold C
    simp [show (2519424 * k + 138158) % 2 = 0 by omega]
    omega
  have h24 : C (1259712 * k + 69079) = 3779136 * k + 207238 := by
    unfold C
    simp [show (1259712 * k + 69079) % 2 ≠ 0 by omega]
    omega
  have h25 : C (3779136 * k + 207238) = 1889568 * k + 103619 := by
    unfold C
    simp [show (3779136 * k + 207238) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 103619) = 5668704 * k + 310858 := by
    unfold C
    simp [show (1889568 * k + 103619) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 310858) = 2834352 * k + 155429 := by
    unfold C
    simp [show (5668704 * k + 310858) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 155429) = 8503056 * k + 466288 := by
    unfold C
    simp [show (2834352 * k + 155429) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 466288) = 4251528 * k + 233144 := by
    unfold C
    simp [show (8503056 * k + 466288) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 233144) = 2125764 * k + 116572 := by
    unfold C
    simp [show (4251528 * k + 233144) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 116572) = 1062882 * k + 58286 := by
    unfold C
    simp [show (2125764 * k + 116572) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 58286) = 531441 * k + 29143 := by
    unfold C
    simp [show (1062882 * k + 58286) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 57499) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 57499)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_57703 : ∀ k : Nat,
    iterate (1048576 * k + 57703) 32 = 531441 * k + 29246 ∧
      531441 * k + 29246 < 1048576 * k + 57703 := by
  intro k
  have h1 : C (1048576 * k + 57703) = 3145728 * k + 173110 := by
    unfold C
    simp [show (1048576 * k + 57703) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 173110) = 1572864 * k + 86555 := by
    unfold C
    simp [show (3145728 * k + 173110) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 86555) = 4718592 * k + 259666 := by
    unfold C
    simp [show (1572864 * k + 86555) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 259666) = 2359296 * k + 129833 := by
    unfold C
    simp [show (4718592 * k + 259666) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 129833) = 7077888 * k + 389500 := by
    unfold C
    simp [show (2359296 * k + 129833) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 389500) = 3538944 * k + 194750 := by
    unfold C
    simp [show (7077888 * k + 389500) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 194750) = 1769472 * k + 97375 := by
    unfold C
    simp [show (3538944 * k + 194750) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 97375) = 5308416 * k + 292126 := by
    unfold C
    simp [show (1769472 * k + 97375) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 292126) = 2654208 * k + 146063 := by
    unfold C
    simp [show (5308416 * k + 292126) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 146063) = 7962624 * k + 438190 := by
    unfold C
    simp [show (2654208 * k + 146063) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 438190) = 3981312 * k + 219095 := by
    unfold C
    simp [show (7962624 * k + 438190) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 219095) = 11943936 * k + 657286 := by
    unfold C
    simp [show (3981312 * k + 219095) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 657286) = 5971968 * k + 328643 := by
    unfold C
    simp [show (11943936 * k + 657286) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 328643) = 17915904 * k + 985930 := by
    unfold C
    simp [show (5971968 * k + 328643) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 985930) = 8957952 * k + 492965 := by
    unfold C
    simp [show (17915904 * k + 985930) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 492965) = 26873856 * k + 1478896 := by
    unfold C
    simp [show (8957952 * k + 492965) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 1478896) = 13436928 * k + 739448 := by
    unfold C
    simp [show (26873856 * k + 1478896) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 739448) = 6718464 * k + 369724 := by
    unfold C
    simp [show (13436928 * k + 739448) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 369724) = 3359232 * k + 184862 := by
    unfold C
    simp [show (6718464 * k + 369724) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 184862) = 1679616 * k + 92431 := by
    unfold C
    simp [show (3359232 * k + 184862) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 92431) = 5038848 * k + 277294 := by
    unfold C
    simp [show (1679616 * k + 92431) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 277294) = 2519424 * k + 138647 := by
    unfold C
    simp [show (5038848 * k + 277294) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 138647) = 7558272 * k + 415942 := by
    unfold C
    simp [show (2519424 * k + 138647) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 415942) = 3779136 * k + 207971 := by
    unfold C
    simp [show (7558272 * k + 415942) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 207971) = 11337408 * k + 623914 := by
    unfold C
    simp [show (3779136 * k + 207971) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 623914) = 5668704 * k + 311957 := by
    unfold C
    simp [show (11337408 * k + 623914) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 311957) = 17006112 * k + 935872 := by
    unfold C
    simp [show (5668704 * k + 311957) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 935872) = 8503056 * k + 467936 := by
    unfold C
    simp [show (17006112 * k + 935872) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 467936) = 4251528 * k + 233968 := by
    unfold C
    simp [show (8503056 * k + 467936) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 233968) = 2125764 * k + 116984 := by
    unfold C
    simp [show (4251528 * k + 233968) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 116984) = 1062882 * k + 58492 := by
    unfold C
    simp [show (2125764 * k + 116984) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 58492) = 531441 * k + 29246 := by
    unfold C
    simp [show (1062882 * k + 58492) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 57703) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 57703)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_57831 : ∀ k : Nat,
    iterate (1048576 * k + 57831) 32 = 531441 * k + 29311 ∧
      531441 * k + 29311 < 1048576 * k + 57831 := by
  intro k
  have h1 : C (1048576 * k + 57831) = 3145728 * k + 173494 := by
    unfold C
    simp [show (1048576 * k + 57831) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 173494) = 1572864 * k + 86747 := by
    unfold C
    simp [show (3145728 * k + 173494) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 86747) = 4718592 * k + 260242 := by
    unfold C
    simp [show (1572864 * k + 86747) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 260242) = 2359296 * k + 130121 := by
    unfold C
    simp [show (4718592 * k + 260242) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 130121) = 7077888 * k + 390364 := by
    unfold C
    simp [show (2359296 * k + 130121) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 390364) = 3538944 * k + 195182 := by
    unfold C
    simp [show (7077888 * k + 390364) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 195182) = 1769472 * k + 97591 := by
    unfold C
    simp [show (3538944 * k + 195182) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 97591) = 5308416 * k + 292774 := by
    unfold C
    simp [show (1769472 * k + 97591) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 292774) = 2654208 * k + 146387 := by
    unfold C
    simp [show (5308416 * k + 292774) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 146387) = 7962624 * k + 439162 := by
    unfold C
    simp [show (2654208 * k + 146387) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 439162) = 3981312 * k + 219581 := by
    unfold C
    simp [show (7962624 * k + 439162) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 219581) = 11943936 * k + 658744 := by
    unfold C
    simp [show (3981312 * k + 219581) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 658744) = 5971968 * k + 329372 := by
    unfold C
    simp [show (11943936 * k + 658744) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 329372) = 2985984 * k + 164686 := by
    unfold C
    simp [show (5971968 * k + 329372) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 164686) = 1492992 * k + 82343 := by
    unfold C
    simp [show (2985984 * k + 164686) % 2 = 0 by omega]
    omega
  have h16 : C (1492992 * k + 82343) = 4478976 * k + 247030 := by
    unfold C
    simp [show (1492992 * k + 82343) % 2 ≠ 0 by omega]
    omega
  have h17 : C (4478976 * k + 247030) = 2239488 * k + 123515 := by
    unfold C
    simp [show (4478976 * k + 247030) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 123515) = 6718464 * k + 370546 := by
    unfold C
    simp [show (2239488 * k + 123515) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 370546) = 3359232 * k + 185273 := by
    unfold C
    simp [show (6718464 * k + 370546) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 185273) = 10077696 * k + 555820 := by
    unfold C
    simp [show (3359232 * k + 185273) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 555820) = 5038848 * k + 277910 := by
    unfold C
    simp [show (10077696 * k + 555820) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 277910) = 2519424 * k + 138955 := by
    unfold C
    simp [show (5038848 * k + 277910) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 138955) = 7558272 * k + 416866 := by
    unfold C
    simp [show (2519424 * k + 138955) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 416866) = 3779136 * k + 208433 := by
    unfold C
    simp [show (7558272 * k + 416866) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 208433) = 11337408 * k + 625300 := by
    unfold C
    simp [show (3779136 * k + 208433) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 625300) = 5668704 * k + 312650 := by
    unfold C
    simp [show (11337408 * k + 625300) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 312650) = 2834352 * k + 156325 := by
    unfold C
    simp [show (5668704 * k + 312650) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 156325) = 8503056 * k + 468976 := by
    unfold C
    simp [show (2834352 * k + 156325) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 468976) = 4251528 * k + 234488 := by
    unfold C
    simp [show (8503056 * k + 468976) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 234488) = 2125764 * k + 117244 := by
    unfold C
    simp [show (4251528 * k + 234488) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 117244) = 1062882 * k + 58622 := by
    unfold C
    simp [show (2125764 * k + 117244) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 58622) = 531441 * k + 29311 := by
    unfold C
    simp [show (1062882 * k + 58622) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 57831) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 57831)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_58139 : ∀ k : Nat,
    iterate (1048576 * k + 58139) 32 = 531441 * k + 29467 ∧
      531441 * k + 29467 < 1048576 * k + 58139 := by
  intro k
  have h1 : C (1048576 * k + 58139) = 3145728 * k + 174418 := by
    unfold C
    simp [show (1048576 * k + 58139) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 174418) = 1572864 * k + 87209 := by
    unfold C
    simp [show (3145728 * k + 174418) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 87209) = 4718592 * k + 261628 := by
    unfold C
    simp [show (1572864 * k + 87209) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 261628) = 2359296 * k + 130814 := by
    unfold C
    simp [show (4718592 * k + 261628) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 130814) = 1179648 * k + 65407 := by
    unfold C
    simp [show (2359296 * k + 130814) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 65407) = 3538944 * k + 196222 := by
    unfold C
    simp [show (1179648 * k + 65407) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 196222) = 1769472 * k + 98111 := by
    unfold C
    simp [show (3538944 * k + 196222) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 98111) = 5308416 * k + 294334 := by
    unfold C
    simp [show (1769472 * k + 98111) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 294334) = 2654208 * k + 147167 := by
    unfold C
    simp [show (5308416 * k + 294334) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 147167) = 7962624 * k + 441502 := by
    unfold C
    simp [show (2654208 * k + 147167) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 441502) = 3981312 * k + 220751 := by
    unfold C
    simp [show (7962624 * k + 441502) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 220751) = 11943936 * k + 662254 := by
    unfold C
    simp [show (3981312 * k + 220751) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 662254) = 5971968 * k + 331127 := by
    unfold C
    simp [show (11943936 * k + 662254) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 331127) = 17915904 * k + 993382 := by
    unfold C
    simp [show (5971968 * k + 331127) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 993382) = 8957952 * k + 496691 := by
    unfold C
    simp [show (17915904 * k + 993382) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 496691) = 26873856 * k + 1490074 := by
    unfold C
    simp [show (8957952 * k + 496691) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 1490074) = 13436928 * k + 745037 := by
    unfold C
    simp [show (26873856 * k + 1490074) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 745037) = 40310784 * k + 2235112 := by
    unfold C
    simp [show (13436928 * k + 745037) % 2 ≠ 0 by omega]
    omega
  have h19 : C (40310784 * k + 2235112) = 20155392 * k + 1117556 := by
    unfold C
    simp [show (40310784 * k + 2235112) % 2 = 0 by omega]
    omega
  have h20 : C (20155392 * k + 1117556) = 10077696 * k + 558778 := by
    unfold C
    simp [show (20155392 * k + 1117556) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 558778) = 5038848 * k + 279389 := by
    unfold C
    simp [show (10077696 * k + 558778) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 279389) = 15116544 * k + 838168 := by
    unfold C
    simp [show (5038848 * k + 279389) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 838168) = 7558272 * k + 419084 := by
    unfold C
    simp [show (15116544 * k + 838168) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 419084) = 3779136 * k + 209542 := by
    unfold C
    simp [show (7558272 * k + 419084) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 209542) = 1889568 * k + 104771 := by
    unfold C
    simp [show (3779136 * k + 209542) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 104771) = 5668704 * k + 314314 := by
    unfold C
    simp [show (1889568 * k + 104771) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 314314) = 2834352 * k + 157157 := by
    unfold C
    simp [show (5668704 * k + 314314) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 157157) = 8503056 * k + 471472 := by
    unfold C
    simp [show (2834352 * k + 157157) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 471472) = 4251528 * k + 235736 := by
    unfold C
    simp [show (8503056 * k + 471472) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 235736) = 2125764 * k + 117868 := by
    unfold C
    simp [show (4251528 * k + 235736) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 117868) = 1062882 * k + 58934 := by
    unfold C
    simp [show (2125764 * k + 117868) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 58934) = 531441 * k + 29467 := by
    unfold C
    simp [show (1062882 * k + 58934) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 58139) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 58139)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_58727 : ∀ k : Nat,
    iterate (1048576 * k + 58727) 32 = 531441 * k + 29765 ∧
      531441 * k + 29765 < 1048576 * k + 58727 := by
  intro k
  have h1 : C (1048576 * k + 58727) = 3145728 * k + 176182 := by
    unfold C
    simp [show (1048576 * k + 58727) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 176182) = 1572864 * k + 88091 := by
    unfold C
    simp [show (3145728 * k + 176182) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 88091) = 4718592 * k + 264274 := by
    unfold C
    simp [show (1572864 * k + 88091) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 264274) = 2359296 * k + 132137 := by
    unfold C
    simp [show (4718592 * k + 264274) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 132137) = 7077888 * k + 396412 := by
    unfold C
    simp [show (2359296 * k + 132137) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 396412) = 3538944 * k + 198206 := by
    unfold C
    simp [show (7077888 * k + 396412) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 198206) = 1769472 * k + 99103 := by
    unfold C
    simp [show (3538944 * k + 198206) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 99103) = 5308416 * k + 297310 := by
    unfold C
    simp [show (1769472 * k + 99103) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 297310) = 2654208 * k + 148655 := by
    unfold C
    simp [show (5308416 * k + 297310) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 148655) = 7962624 * k + 445966 := by
    unfold C
    simp [show (2654208 * k + 148655) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 445966) = 3981312 * k + 222983 := by
    unfold C
    simp [show (7962624 * k + 445966) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 222983) = 11943936 * k + 668950 := by
    unfold C
    simp [show (3981312 * k + 222983) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 668950) = 5971968 * k + 334475 := by
    unfold C
    simp [show (11943936 * k + 668950) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 334475) = 17915904 * k + 1003426 := by
    unfold C
    simp [show (5971968 * k + 334475) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 1003426) = 8957952 * k + 501713 := by
    unfold C
    simp [show (17915904 * k + 1003426) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 501713) = 26873856 * k + 1505140 := by
    unfold C
    simp [show (8957952 * k + 501713) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 1505140) = 13436928 * k + 752570 := by
    unfold C
    simp [show (26873856 * k + 1505140) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 752570) = 6718464 * k + 376285 := by
    unfold C
    simp [show (13436928 * k + 752570) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 376285) = 20155392 * k + 1128856 := by
    unfold C
    simp [show (6718464 * k + 376285) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 1128856) = 10077696 * k + 564428 := by
    unfold C
    simp [show (20155392 * k + 1128856) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 564428) = 5038848 * k + 282214 := by
    unfold C
    simp [show (10077696 * k + 564428) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 282214) = 2519424 * k + 141107 := by
    unfold C
    simp [show (5038848 * k + 282214) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 141107) = 7558272 * k + 423322 := by
    unfold C
    simp [show (2519424 * k + 141107) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 423322) = 3779136 * k + 211661 := by
    unfold C
    simp [show (7558272 * k + 423322) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 211661) = 11337408 * k + 634984 := by
    unfold C
    simp [show (3779136 * k + 211661) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 634984) = 5668704 * k + 317492 := by
    unfold C
    simp [show (11337408 * k + 634984) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 317492) = 2834352 * k + 158746 := by
    unfold C
    simp [show (5668704 * k + 317492) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 158746) = 1417176 * k + 79373 := by
    unfold C
    simp [show (2834352 * k + 158746) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 79373) = 4251528 * k + 238120 := by
    unfold C
    simp [show (1417176 * k + 79373) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 238120) = 2125764 * k + 119060 := by
    unfold C
    simp [show (4251528 * k + 238120) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 119060) = 1062882 * k + 59530 := by
    unfold C
    simp [show (2125764 * k + 119060) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 59530) = 531441 * k + 29765 := by
    unfold C
    simp [show (1062882 * k + 59530) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 58727) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 58727)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_58751 : ∀ k : Nat,
    iterate (1048576 * k + 58751) 32 = 531441 * k + 29777 ∧
      531441 * k + 29777 < 1048576 * k + 58751 := by
  intro k
  have h1 : C (1048576 * k + 58751) = 3145728 * k + 176254 := by
    unfold C
    simp [show (1048576 * k + 58751) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 176254) = 1572864 * k + 88127 := by
    unfold C
    simp [show (3145728 * k + 176254) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 88127) = 4718592 * k + 264382 := by
    unfold C
    simp [show (1572864 * k + 88127) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 264382) = 2359296 * k + 132191 := by
    unfold C
    simp [show (4718592 * k + 264382) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 132191) = 7077888 * k + 396574 := by
    unfold C
    simp [show (2359296 * k + 132191) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 396574) = 3538944 * k + 198287 := by
    unfold C
    simp [show (7077888 * k + 396574) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 198287) = 10616832 * k + 594862 := by
    unfold C
    simp [show (3538944 * k + 198287) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 594862) = 5308416 * k + 297431 := by
    unfold C
    simp [show (10616832 * k + 594862) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 297431) = 15925248 * k + 892294 := by
    unfold C
    simp [show (5308416 * k + 297431) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 892294) = 7962624 * k + 446147 := by
    unfold C
    simp [show (15925248 * k + 892294) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 446147) = 23887872 * k + 1338442 := by
    unfold C
    simp [show (7962624 * k + 446147) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 1338442) = 11943936 * k + 669221 := by
    unfold C
    simp [show (23887872 * k + 1338442) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 669221) = 35831808 * k + 2007664 := by
    unfold C
    simp [show (11943936 * k + 669221) % 2 ≠ 0 by omega]
    omega
  have h14 : C (35831808 * k + 2007664) = 17915904 * k + 1003832 := by
    unfold C
    simp [show (35831808 * k + 2007664) % 2 = 0 by omega]
    omega
  have h15 : C (17915904 * k + 1003832) = 8957952 * k + 501916 := by
    unfold C
    simp [show (17915904 * k + 1003832) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 501916) = 4478976 * k + 250958 := by
    unfold C
    simp [show (8957952 * k + 501916) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 250958) = 2239488 * k + 125479 := by
    unfold C
    simp [show (4478976 * k + 250958) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 125479) = 6718464 * k + 376438 := by
    unfold C
    simp [show (2239488 * k + 125479) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 376438) = 3359232 * k + 188219 := by
    unfold C
    simp [show (6718464 * k + 376438) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 188219) = 10077696 * k + 564658 := by
    unfold C
    simp [show (3359232 * k + 188219) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 564658) = 5038848 * k + 282329 := by
    unfold C
    simp [show (10077696 * k + 564658) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 282329) = 15116544 * k + 846988 := by
    unfold C
    simp [show (5038848 * k + 282329) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 846988) = 7558272 * k + 423494 := by
    unfold C
    simp [show (15116544 * k + 846988) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 423494) = 3779136 * k + 211747 := by
    unfold C
    simp [show (7558272 * k + 423494) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 211747) = 11337408 * k + 635242 := by
    unfold C
    simp [show (3779136 * k + 211747) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 635242) = 5668704 * k + 317621 := by
    unfold C
    simp [show (11337408 * k + 635242) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 317621) = 17006112 * k + 952864 := by
    unfold C
    simp [show (5668704 * k + 317621) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 952864) = 8503056 * k + 476432 := by
    unfold C
    simp [show (17006112 * k + 952864) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 476432) = 4251528 * k + 238216 := by
    unfold C
    simp [show (8503056 * k + 476432) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 238216) = 2125764 * k + 119108 := by
    unfold C
    simp [show (4251528 * k + 238216) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 119108) = 1062882 * k + 59554 := by
    unfold C
    simp [show (2125764 * k + 119108) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 59554) = 531441 * k + 29777 := by
    unfold C
    simp [show (1062882 * k + 59554) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 58751) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 58751)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_58831 : ∀ k : Nat,
    iterate (1048576 * k + 58831) 32 = 531441 * k + 29818 ∧
      531441 * k + 29818 < 1048576 * k + 58831 := by
  intro k
  have h1 : C (1048576 * k + 58831) = 3145728 * k + 176494 := by
    unfold C
    simp [show (1048576 * k + 58831) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 176494) = 1572864 * k + 88247 := by
    unfold C
    simp [show (3145728 * k + 176494) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 88247) = 4718592 * k + 264742 := by
    unfold C
    simp [show (1572864 * k + 88247) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 264742) = 2359296 * k + 132371 := by
    unfold C
    simp [show (4718592 * k + 264742) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 132371) = 7077888 * k + 397114 := by
    unfold C
    simp [show (2359296 * k + 132371) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 397114) = 3538944 * k + 198557 := by
    unfold C
    simp [show (7077888 * k + 397114) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 198557) = 10616832 * k + 595672 := by
    unfold C
    simp [show (3538944 * k + 198557) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 595672) = 5308416 * k + 297836 := by
    unfold C
    simp [show (10616832 * k + 595672) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 297836) = 2654208 * k + 148918 := by
    unfold C
    simp [show (5308416 * k + 297836) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 148918) = 1327104 * k + 74459 := by
    unfold C
    simp [show (2654208 * k + 148918) % 2 = 0 by omega]
    omega
  have h11 : C (1327104 * k + 74459) = 3981312 * k + 223378 := by
    unfold C
    simp [show (1327104 * k + 74459) % 2 ≠ 0 by omega]
    omega
  have h12 : C (3981312 * k + 223378) = 1990656 * k + 111689 := by
    unfold C
    simp [show (3981312 * k + 223378) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 111689) = 5971968 * k + 335068 := by
    unfold C
    simp [show (1990656 * k + 111689) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 335068) = 2985984 * k + 167534 := by
    unfold C
    simp [show (5971968 * k + 335068) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 167534) = 1492992 * k + 83767 := by
    unfold C
    simp [show (2985984 * k + 167534) % 2 = 0 by omega]
    omega
  have h16 : C (1492992 * k + 83767) = 4478976 * k + 251302 := by
    unfold C
    simp [show (1492992 * k + 83767) % 2 ≠ 0 by omega]
    omega
  have h17 : C (4478976 * k + 251302) = 2239488 * k + 125651 := by
    unfold C
    simp [show (4478976 * k + 251302) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 125651) = 6718464 * k + 376954 := by
    unfold C
    simp [show (2239488 * k + 125651) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 376954) = 3359232 * k + 188477 := by
    unfold C
    simp [show (6718464 * k + 376954) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 188477) = 10077696 * k + 565432 := by
    unfold C
    simp [show (3359232 * k + 188477) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 565432) = 5038848 * k + 282716 := by
    unfold C
    simp [show (10077696 * k + 565432) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 282716) = 2519424 * k + 141358 := by
    unfold C
    simp [show (5038848 * k + 282716) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 141358) = 1259712 * k + 70679 := by
    unfold C
    simp [show (2519424 * k + 141358) % 2 = 0 by omega]
    omega
  have h24 : C (1259712 * k + 70679) = 3779136 * k + 212038 := by
    unfold C
    simp [show (1259712 * k + 70679) % 2 ≠ 0 by omega]
    omega
  have h25 : C (3779136 * k + 212038) = 1889568 * k + 106019 := by
    unfold C
    simp [show (3779136 * k + 212038) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 106019) = 5668704 * k + 318058 := by
    unfold C
    simp [show (1889568 * k + 106019) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 318058) = 2834352 * k + 159029 := by
    unfold C
    simp [show (5668704 * k + 318058) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 159029) = 8503056 * k + 477088 := by
    unfold C
    simp [show (2834352 * k + 159029) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 477088) = 4251528 * k + 238544 := by
    unfold C
    simp [show (8503056 * k + 477088) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 238544) = 2125764 * k + 119272 := by
    unfold C
    simp [show (4251528 * k + 238544) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 119272) = 1062882 * k + 59636 := by
    unfold C
    simp [show (2125764 * k + 119272) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 59636) = 531441 * k + 29818 := by
    unfold C
    simp [show (1062882 * k + 59636) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 58831) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 58831)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_59455 : ∀ k : Nat,
    iterate (1048576 * k + 59455) 32 = 531441 * k + 30134 ∧
      531441 * k + 30134 < 1048576 * k + 59455 := by
  intro k
  have h1 : C (1048576 * k + 59455) = 3145728 * k + 178366 := by
    unfold C
    simp [show (1048576 * k + 59455) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 178366) = 1572864 * k + 89183 := by
    unfold C
    simp [show (3145728 * k + 178366) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 89183) = 4718592 * k + 267550 := by
    unfold C
    simp [show (1572864 * k + 89183) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 267550) = 2359296 * k + 133775 := by
    unfold C
    simp [show (4718592 * k + 267550) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 133775) = 7077888 * k + 401326 := by
    unfold C
    simp [show (2359296 * k + 133775) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 401326) = 3538944 * k + 200663 := by
    unfold C
    simp [show (7077888 * k + 401326) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 200663) = 10616832 * k + 601990 := by
    unfold C
    simp [show (3538944 * k + 200663) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 601990) = 5308416 * k + 300995 := by
    unfold C
    simp [show (10616832 * k + 601990) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 300995) = 15925248 * k + 902986 := by
    unfold C
    simp [show (5308416 * k + 300995) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 902986) = 7962624 * k + 451493 := by
    unfold C
    simp [show (15925248 * k + 902986) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 451493) = 23887872 * k + 1354480 := by
    unfold C
    simp [show (7962624 * k + 451493) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 1354480) = 11943936 * k + 677240 := by
    unfold C
    simp [show (23887872 * k + 1354480) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 677240) = 5971968 * k + 338620 := by
    unfold C
    simp [show (11943936 * k + 677240) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 338620) = 2985984 * k + 169310 := by
    unfold C
    simp [show (5971968 * k + 338620) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 169310) = 1492992 * k + 84655 := by
    unfold C
    simp [show (2985984 * k + 169310) % 2 = 0 by omega]
    omega
  have h16 : C (1492992 * k + 84655) = 4478976 * k + 253966 := by
    unfold C
    simp [show (1492992 * k + 84655) % 2 ≠ 0 by omega]
    omega
  have h17 : C (4478976 * k + 253966) = 2239488 * k + 126983 := by
    unfold C
    simp [show (4478976 * k + 253966) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 126983) = 6718464 * k + 380950 := by
    unfold C
    simp [show (2239488 * k + 126983) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 380950) = 3359232 * k + 190475 := by
    unfold C
    simp [show (6718464 * k + 380950) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 190475) = 10077696 * k + 571426 := by
    unfold C
    simp [show (3359232 * k + 190475) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 571426) = 5038848 * k + 285713 := by
    unfold C
    simp [show (10077696 * k + 571426) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 285713) = 15116544 * k + 857140 := by
    unfold C
    simp [show (5038848 * k + 285713) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 857140) = 7558272 * k + 428570 := by
    unfold C
    simp [show (15116544 * k + 857140) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 428570) = 3779136 * k + 214285 := by
    unfold C
    simp [show (7558272 * k + 428570) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 214285) = 11337408 * k + 642856 := by
    unfold C
    simp [show (3779136 * k + 214285) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 642856) = 5668704 * k + 321428 := by
    unfold C
    simp [show (11337408 * k + 642856) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 321428) = 2834352 * k + 160714 := by
    unfold C
    simp [show (5668704 * k + 321428) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 160714) = 1417176 * k + 80357 := by
    unfold C
    simp [show (2834352 * k + 160714) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 80357) = 4251528 * k + 241072 := by
    unfold C
    simp [show (1417176 * k + 80357) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 241072) = 2125764 * k + 120536 := by
    unfold C
    simp [show (4251528 * k + 241072) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 120536) = 1062882 * k + 60268 := by
    unfold C
    simp [show (2125764 * k + 120536) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 60268) = 531441 * k + 30134 := by
    unfold C
    simp [show (1062882 * k + 60268) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 59455) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 59455)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_59855 : ∀ k : Nat,
    iterate (1048576 * k + 59855) 32 = 531441 * k + 30337 ∧
      531441 * k + 30337 < 1048576 * k + 59855 := by
  intro k
  have h1 : C (1048576 * k + 59855) = 3145728 * k + 179566 := by
    unfold C
    simp [show (1048576 * k + 59855) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 179566) = 1572864 * k + 89783 := by
    unfold C
    simp [show (3145728 * k + 179566) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 89783) = 4718592 * k + 269350 := by
    unfold C
    simp [show (1572864 * k + 89783) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 269350) = 2359296 * k + 134675 := by
    unfold C
    simp [show (4718592 * k + 269350) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 134675) = 7077888 * k + 404026 := by
    unfold C
    simp [show (2359296 * k + 134675) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 404026) = 3538944 * k + 202013 := by
    unfold C
    simp [show (7077888 * k + 404026) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 202013) = 10616832 * k + 606040 := by
    unfold C
    simp [show (3538944 * k + 202013) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 606040) = 5308416 * k + 303020 := by
    unfold C
    simp [show (10616832 * k + 606040) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 303020) = 2654208 * k + 151510 := by
    unfold C
    simp [show (5308416 * k + 303020) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 151510) = 1327104 * k + 75755 := by
    unfold C
    simp [show (2654208 * k + 151510) % 2 = 0 by omega]
    omega
  have h11 : C (1327104 * k + 75755) = 3981312 * k + 227266 := by
    unfold C
    simp [show (1327104 * k + 75755) % 2 ≠ 0 by omega]
    omega
  have h12 : C (3981312 * k + 227266) = 1990656 * k + 113633 := by
    unfold C
    simp [show (3981312 * k + 227266) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 113633) = 5971968 * k + 340900 := by
    unfold C
    simp [show (1990656 * k + 113633) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 340900) = 2985984 * k + 170450 := by
    unfold C
    simp [show (5971968 * k + 340900) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 170450) = 1492992 * k + 85225 := by
    unfold C
    simp [show (2985984 * k + 170450) % 2 = 0 by omega]
    omega
  have h16 : C (1492992 * k + 85225) = 4478976 * k + 255676 := by
    unfold C
    simp [show (1492992 * k + 85225) % 2 ≠ 0 by omega]
    omega
  have h17 : C (4478976 * k + 255676) = 2239488 * k + 127838 := by
    unfold C
    simp [show (4478976 * k + 255676) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 127838) = 1119744 * k + 63919 := by
    unfold C
    simp [show (2239488 * k + 127838) % 2 = 0 by omega]
    omega
  have h19 : C (1119744 * k + 63919) = 3359232 * k + 191758 := by
    unfold C
    simp [show (1119744 * k + 63919) % 2 ≠ 0 by omega]
    omega
  have h20 : C (3359232 * k + 191758) = 1679616 * k + 95879 := by
    unfold C
    simp [show (3359232 * k + 191758) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 95879) = 5038848 * k + 287638 := by
    unfold C
    simp [show (1679616 * k + 95879) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 287638) = 2519424 * k + 143819 := by
    unfold C
    simp [show (5038848 * k + 287638) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 143819) = 7558272 * k + 431458 := by
    unfold C
    simp [show (2519424 * k + 143819) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 431458) = 3779136 * k + 215729 := by
    unfold C
    simp [show (7558272 * k + 431458) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 215729) = 11337408 * k + 647188 := by
    unfold C
    simp [show (3779136 * k + 215729) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 647188) = 5668704 * k + 323594 := by
    unfold C
    simp [show (11337408 * k + 647188) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 323594) = 2834352 * k + 161797 := by
    unfold C
    simp [show (5668704 * k + 323594) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 161797) = 8503056 * k + 485392 := by
    unfold C
    simp [show (2834352 * k + 161797) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 485392) = 4251528 * k + 242696 := by
    unfold C
    simp [show (8503056 * k + 485392) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 242696) = 2125764 * k + 121348 := by
    unfold C
    simp [show (4251528 * k + 242696) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 121348) = 1062882 * k + 60674 := by
    unfold C
    simp [show (2125764 * k + 121348) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 60674) = 531441 * k + 30337 := by
    unfold C
    simp [show (1062882 * k + 60674) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 59855) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 59855)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

end CollatzM20Shard009
