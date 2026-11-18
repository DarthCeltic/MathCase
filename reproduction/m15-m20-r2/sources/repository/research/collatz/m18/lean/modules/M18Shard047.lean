import Mathlib.Data.Nat.Prime.Basic

namespace CollatzM18Shard047

def C (n : Nat) : Nat := if n % 2 = 0 then n / 2 else 3 * n + 1

def iterate (n t : Nat) : Nat := Nat.rec n (fun _ previous => C previous) t

theorem descent_mod262144_252351 : ∀ k : Nat,
    iterate (262144 * k + 252351) 29 = 177147 * k + 170530 ∧
      177147 * k + 170530 < 262144 * k + 252351 := by
  intro k
  have h1 : C (262144 * k + 252351) = 786432 * k + 757054 := by
    unfold C
    simp [show (262144 * k + 252351) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 757054) = 393216 * k + 378527 := by
    unfold C
    simp [show (786432 * k + 757054) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 378527) = 1179648 * k + 1135582 := by
    unfold C
    simp [show (393216 * k + 378527) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 1135582) = 589824 * k + 567791 := by
    unfold C
    simp [show (1179648 * k + 1135582) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 567791) = 1769472 * k + 1703374 := by
    unfold C
    simp [show (589824 * k + 567791) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 1703374) = 884736 * k + 851687 := by
    unfold C
    simp [show (1769472 * k + 1703374) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 851687) = 2654208 * k + 2555062 := by
    unfold C
    simp [show (884736 * k + 851687) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 2555062) = 1327104 * k + 1277531 := by
    unfold C
    simp [show (2654208 * k + 2555062) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 1277531) = 3981312 * k + 3832594 := by
    unfold C
    simp [show (1327104 * k + 1277531) % 2 ≠ 0 by omega]
    omega
  have h10 : C (3981312 * k + 3832594) = 1990656 * k + 1916297 := by
    unfold C
    simp [show (3981312 * k + 3832594) % 2 = 0 by omega]
    omega
  have h11 : C (1990656 * k + 1916297) = 5971968 * k + 5748892 := by
    unfold C
    simp [show (1990656 * k + 1916297) % 2 ≠ 0 by omega]
    omega
  have h12 : C (5971968 * k + 5748892) = 2985984 * k + 2874446 := by
    unfold C
    simp [show (5971968 * k + 5748892) % 2 = 0 by omega]
    omega
  have h13 : C (2985984 * k + 2874446) = 1492992 * k + 1437223 := by
    unfold C
    simp [show (2985984 * k + 2874446) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 1437223) = 4478976 * k + 4311670 := by
    unfold C
    simp [show (1492992 * k + 1437223) % 2 ≠ 0 by omega]
    omega
  have h15 : C (4478976 * k + 4311670) = 2239488 * k + 2155835 := by
    unfold C
    simp [show (4478976 * k + 4311670) % 2 = 0 by omega]
    omega
  have h16 : C (2239488 * k + 2155835) = 6718464 * k + 6467506 := by
    unfold C
    simp [show (2239488 * k + 2155835) % 2 ≠ 0 by omega]
    omega
  have h17 : C (6718464 * k + 6467506) = 3359232 * k + 3233753 := by
    unfold C
    simp [show (6718464 * k + 6467506) % 2 = 0 by omega]
    omega
  have h18 : C (3359232 * k + 3233753) = 10077696 * k + 9701260 := by
    unfold C
    simp [show (3359232 * k + 3233753) % 2 ≠ 0 by omega]
    omega
  have h19 : C (10077696 * k + 9701260) = 5038848 * k + 4850630 := by
    unfold C
    simp [show (10077696 * k + 9701260) % 2 = 0 by omega]
    omega
  have h20 : C (5038848 * k + 4850630) = 2519424 * k + 2425315 := by
    unfold C
    simp [show (5038848 * k + 4850630) % 2 = 0 by omega]
    omega
  have h21 : C (2519424 * k + 2425315) = 7558272 * k + 7275946 := by
    unfold C
    simp [show (2519424 * k + 2425315) % 2 ≠ 0 by omega]
    omega
  have h22 : C (7558272 * k + 7275946) = 3779136 * k + 3637973 := by
    unfold C
    simp [show (7558272 * k + 7275946) % 2 = 0 by omega]
    omega
  have h23 : C (3779136 * k + 3637973) = 11337408 * k + 10913920 := by
    unfold C
    simp [show (3779136 * k + 3637973) % 2 ≠ 0 by omega]
    omega
  have h24 : C (11337408 * k + 10913920) = 5668704 * k + 5456960 := by
    unfold C
    simp [show (11337408 * k + 10913920) % 2 = 0 by omega]
    omega
  have h25 : C (5668704 * k + 5456960) = 2834352 * k + 2728480 := by
    unfold C
    simp [show (5668704 * k + 5456960) % 2 = 0 by omega]
    omega
  have h26 : C (2834352 * k + 2728480) = 1417176 * k + 1364240 := by
    unfold C
    simp [show (2834352 * k + 2728480) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 1364240) = 708588 * k + 682120 := by
    unfold C
    simp [show (1417176 * k + 1364240) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 682120) = 354294 * k + 341060 := by
    unfold C
    simp [show (708588 * k + 682120) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 341060) = 177147 * k + 170530 := by
    unfold C
    simp [show (354294 * k + 341060) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 252351) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 252351))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_252543 : ∀ k : Nat,
    iterate (262144 * k + 252543) 29 = 177147 * k + 170660 ∧
      177147 * k + 170660 < 262144 * k + 252543 := by
  intro k
  have h1 : C (262144 * k + 252543) = 786432 * k + 757630 := by
    unfold C
    simp [show (262144 * k + 252543) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 757630) = 393216 * k + 378815 := by
    unfold C
    simp [show (786432 * k + 757630) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 378815) = 1179648 * k + 1136446 := by
    unfold C
    simp [show (393216 * k + 378815) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 1136446) = 589824 * k + 568223 := by
    unfold C
    simp [show (1179648 * k + 1136446) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 568223) = 1769472 * k + 1704670 := by
    unfold C
    simp [show (589824 * k + 568223) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 1704670) = 884736 * k + 852335 := by
    unfold C
    simp [show (1769472 * k + 1704670) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 852335) = 2654208 * k + 2557006 := by
    unfold C
    simp [show (884736 * k + 852335) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 2557006) = 1327104 * k + 1278503 := by
    unfold C
    simp [show (2654208 * k + 2557006) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 1278503) = 3981312 * k + 3835510 := by
    unfold C
    simp [show (1327104 * k + 1278503) % 2 ≠ 0 by omega]
    omega
  have h10 : C (3981312 * k + 3835510) = 1990656 * k + 1917755 := by
    unfold C
    simp [show (3981312 * k + 3835510) % 2 = 0 by omega]
    omega
  have h11 : C (1990656 * k + 1917755) = 5971968 * k + 5753266 := by
    unfold C
    simp [show (1990656 * k + 1917755) % 2 ≠ 0 by omega]
    omega
  have h12 : C (5971968 * k + 5753266) = 2985984 * k + 2876633 := by
    unfold C
    simp [show (5971968 * k + 5753266) % 2 = 0 by omega]
    omega
  have h13 : C (2985984 * k + 2876633) = 8957952 * k + 8629900 := by
    unfold C
    simp [show (2985984 * k + 2876633) % 2 ≠ 0 by omega]
    omega
  have h14 : C (8957952 * k + 8629900) = 4478976 * k + 4314950 := by
    unfold C
    simp [show (8957952 * k + 8629900) % 2 = 0 by omega]
    omega
  have h15 : C (4478976 * k + 4314950) = 2239488 * k + 2157475 := by
    unfold C
    simp [show (4478976 * k + 4314950) % 2 = 0 by omega]
    omega
  have h16 : C (2239488 * k + 2157475) = 6718464 * k + 6472426 := by
    unfold C
    simp [show (2239488 * k + 2157475) % 2 ≠ 0 by omega]
    omega
  have h17 : C (6718464 * k + 6472426) = 3359232 * k + 3236213 := by
    unfold C
    simp [show (6718464 * k + 6472426) % 2 = 0 by omega]
    omega
  have h18 : C (3359232 * k + 3236213) = 10077696 * k + 9708640 := by
    unfold C
    simp [show (3359232 * k + 3236213) % 2 ≠ 0 by omega]
    omega
  have h19 : C (10077696 * k + 9708640) = 5038848 * k + 4854320 := by
    unfold C
    simp [show (10077696 * k + 9708640) % 2 = 0 by omega]
    omega
  have h20 : C (5038848 * k + 4854320) = 2519424 * k + 2427160 := by
    unfold C
    simp [show (5038848 * k + 4854320) % 2 = 0 by omega]
    omega
  have h21 : C (2519424 * k + 2427160) = 1259712 * k + 1213580 := by
    unfold C
    simp [show (2519424 * k + 2427160) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 1213580) = 629856 * k + 606790 := by
    unfold C
    simp [show (1259712 * k + 1213580) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 606790) = 314928 * k + 303395 := by
    unfold C
    simp [show (629856 * k + 606790) % 2 = 0 by omega]
    omega
  have h24 : C (314928 * k + 303395) = 944784 * k + 910186 := by
    unfold C
    simp [show (314928 * k + 303395) % 2 ≠ 0 by omega]
    omega
  have h25 : C (944784 * k + 910186) = 472392 * k + 455093 := by
    unfold C
    simp [show (944784 * k + 910186) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 455093) = 1417176 * k + 1365280 := by
    unfold C
    simp [show (472392 * k + 455093) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 1365280) = 708588 * k + 682640 := by
    unfold C
    simp [show (1417176 * k + 1365280) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 682640) = 354294 * k + 341320 := by
    unfold C
    simp [show (708588 * k + 682640) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 341320) = 177147 * k + 170660 := by
    unfold C
    simp [show (354294 * k + 341320) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 252543) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 252543))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_253407 : ∀ k : Nat,
    iterate (262144 * k + 253407) 29 = 177147 * k + 171244 ∧
      177147 * k + 171244 < 262144 * k + 253407 := by
  intro k
  have h1 : C (262144 * k + 253407) = 786432 * k + 760222 := by
    unfold C
    simp [show (262144 * k + 253407) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 760222) = 393216 * k + 380111 := by
    unfold C
    simp [show (786432 * k + 760222) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 380111) = 1179648 * k + 1140334 := by
    unfold C
    simp [show (393216 * k + 380111) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 1140334) = 589824 * k + 570167 := by
    unfold C
    simp [show (1179648 * k + 1140334) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 570167) = 1769472 * k + 1710502 := by
    unfold C
    simp [show (589824 * k + 570167) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 1710502) = 884736 * k + 855251 := by
    unfold C
    simp [show (1769472 * k + 1710502) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 855251) = 2654208 * k + 2565754 := by
    unfold C
    simp [show (884736 * k + 855251) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 2565754) = 1327104 * k + 1282877 := by
    unfold C
    simp [show (2654208 * k + 2565754) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 1282877) = 3981312 * k + 3848632 := by
    unfold C
    simp [show (1327104 * k + 1282877) % 2 ≠ 0 by omega]
    omega
  have h10 : C (3981312 * k + 3848632) = 1990656 * k + 1924316 := by
    unfold C
    simp [show (3981312 * k + 3848632) % 2 = 0 by omega]
    omega
  have h11 : C (1990656 * k + 1924316) = 995328 * k + 962158 := by
    unfold C
    simp [show (1990656 * k + 1924316) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 962158) = 497664 * k + 481079 := by
    unfold C
    simp [show (995328 * k + 962158) % 2 = 0 by omega]
    omega
  have h13 : C (497664 * k + 481079) = 1492992 * k + 1443238 := by
    unfold C
    simp [show (497664 * k + 481079) % 2 ≠ 0 by omega]
    omega
  have h14 : C (1492992 * k + 1443238) = 746496 * k + 721619 := by
    unfold C
    simp [show (1492992 * k + 1443238) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 721619) = 2239488 * k + 2164858 := by
    unfold C
    simp [show (746496 * k + 721619) % 2 ≠ 0 by omega]
    omega
  have h16 : C (2239488 * k + 2164858) = 1119744 * k + 1082429 := by
    unfold C
    simp [show (2239488 * k + 2164858) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 1082429) = 3359232 * k + 3247288 := by
    unfold C
    simp [show (1119744 * k + 1082429) % 2 ≠ 0 by omega]
    omega
  have h18 : C (3359232 * k + 3247288) = 1679616 * k + 1623644 := by
    unfold C
    simp [show (3359232 * k + 3247288) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 1623644) = 839808 * k + 811822 := by
    unfold C
    simp [show (1679616 * k + 1623644) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 811822) = 419904 * k + 405911 := by
    unfold C
    simp [show (839808 * k + 811822) % 2 = 0 by omega]
    omega
  have h21 : C (419904 * k + 405911) = 1259712 * k + 1217734 := by
    unfold C
    simp [show (419904 * k + 405911) % 2 ≠ 0 by omega]
    omega
  have h22 : C (1259712 * k + 1217734) = 629856 * k + 608867 := by
    unfold C
    simp [show (1259712 * k + 1217734) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 608867) = 1889568 * k + 1826602 := by
    unfold C
    simp [show (629856 * k + 608867) % 2 ≠ 0 by omega]
    omega
  have h24 : C (1889568 * k + 1826602) = 944784 * k + 913301 := by
    unfold C
    simp [show (1889568 * k + 1826602) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 913301) = 2834352 * k + 2739904 := by
    unfold C
    simp [show (944784 * k + 913301) % 2 ≠ 0 by omega]
    omega
  have h26 : C (2834352 * k + 2739904) = 1417176 * k + 1369952 := by
    unfold C
    simp [show (2834352 * k + 2739904) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 1369952) = 708588 * k + 684976 := by
    unfold C
    simp [show (1417176 * k + 1369952) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 684976) = 354294 * k + 342488 := by
    unfold C
    simp [show (708588 * k + 684976) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 342488) = 177147 * k + 171244 := by
    unfold C
    simp [show (354294 * k + 342488) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 253407) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 253407))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_253487 : ∀ k : Nat,
    iterate (262144 * k + 253487) 29 = 177147 * k + 171298 ∧
      177147 * k + 171298 < 262144 * k + 253487 := by
  intro k
  have h1 : C (262144 * k + 253487) = 786432 * k + 760462 := by
    unfold C
    simp [show (262144 * k + 253487) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 760462) = 393216 * k + 380231 := by
    unfold C
    simp [show (786432 * k + 760462) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 380231) = 1179648 * k + 1140694 := by
    unfold C
    simp [show (393216 * k + 380231) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 1140694) = 589824 * k + 570347 := by
    unfold C
    simp [show (1179648 * k + 1140694) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 570347) = 1769472 * k + 1711042 := by
    unfold C
    simp [show (589824 * k + 570347) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 1711042) = 884736 * k + 855521 := by
    unfold C
    simp [show (1769472 * k + 1711042) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 855521) = 2654208 * k + 2566564 := by
    unfold C
    simp [show (884736 * k + 855521) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 2566564) = 1327104 * k + 1283282 := by
    unfold C
    simp [show (2654208 * k + 2566564) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 1283282) = 663552 * k + 641641 := by
    unfold C
    simp [show (1327104 * k + 1283282) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 641641) = 1990656 * k + 1924924 := by
    unfold C
    simp [show (663552 * k + 641641) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 1924924) = 995328 * k + 962462 := by
    unfold C
    simp [show (1990656 * k + 1924924) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 962462) = 497664 * k + 481231 := by
    unfold C
    simp [show (995328 * k + 962462) % 2 = 0 by omega]
    omega
  have h13 : C (497664 * k + 481231) = 1492992 * k + 1443694 := by
    unfold C
    simp [show (497664 * k + 481231) % 2 ≠ 0 by omega]
    omega
  have h14 : C (1492992 * k + 1443694) = 746496 * k + 721847 := by
    unfold C
    simp [show (1492992 * k + 1443694) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 721847) = 2239488 * k + 2165542 := by
    unfold C
    simp [show (746496 * k + 721847) % 2 ≠ 0 by omega]
    omega
  have h16 : C (2239488 * k + 2165542) = 1119744 * k + 1082771 := by
    unfold C
    simp [show (2239488 * k + 2165542) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 1082771) = 3359232 * k + 3248314 := by
    unfold C
    simp [show (1119744 * k + 1082771) % 2 ≠ 0 by omega]
    omega
  have h18 : C (3359232 * k + 3248314) = 1679616 * k + 1624157 := by
    unfold C
    simp [show (3359232 * k + 3248314) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 1624157) = 5038848 * k + 4872472 := by
    unfold C
    simp [show (1679616 * k + 1624157) % 2 ≠ 0 by omega]
    omega
  have h20 : C (5038848 * k + 4872472) = 2519424 * k + 2436236 := by
    unfold C
    simp [show (5038848 * k + 4872472) % 2 = 0 by omega]
    omega
  have h21 : C (2519424 * k + 2436236) = 1259712 * k + 1218118 := by
    unfold C
    simp [show (2519424 * k + 2436236) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 1218118) = 629856 * k + 609059 := by
    unfold C
    simp [show (1259712 * k + 1218118) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 609059) = 1889568 * k + 1827178 := by
    unfold C
    simp [show (629856 * k + 609059) % 2 ≠ 0 by omega]
    omega
  have h24 : C (1889568 * k + 1827178) = 944784 * k + 913589 := by
    unfold C
    simp [show (1889568 * k + 1827178) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 913589) = 2834352 * k + 2740768 := by
    unfold C
    simp [show (944784 * k + 913589) % 2 ≠ 0 by omega]
    omega
  have h26 : C (2834352 * k + 2740768) = 1417176 * k + 1370384 := by
    unfold C
    simp [show (2834352 * k + 2740768) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 1370384) = 708588 * k + 685192 := by
    unfold C
    simp [show (1417176 * k + 1370384) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 685192) = 354294 * k + 342596 := by
    unfold C
    simp [show (708588 * k + 685192) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 342596) = 177147 * k + 171298 := by
    unfold C
    simp [show (354294 * k + 342596) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 253487) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 253487))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_253759 : ∀ k : Nat,
    iterate (262144 * k + 253759) 29 = 177147 * k + 171482 ∧
      177147 * k + 171482 < 262144 * k + 253759 := by
  intro k
  have h1 : C (262144 * k + 253759) = 786432 * k + 761278 := by
    unfold C
    simp [show (262144 * k + 253759) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 761278) = 393216 * k + 380639 := by
    unfold C
    simp [show (786432 * k + 761278) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 380639) = 1179648 * k + 1141918 := by
    unfold C
    simp [show (393216 * k + 380639) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 1141918) = 589824 * k + 570959 := by
    unfold C
    simp [show (1179648 * k + 1141918) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 570959) = 1769472 * k + 1712878 := by
    unfold C
    simp [show (589824 * k + 570959) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 1712878) = 884736 * k + 856439 := by
    unfold C
    simp [show (1769472 * k + 1712878) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 856439) = 2654208 * k + 2569318 := by
    unfold C
    simp [show (884736 * k + 856439) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 2569318) = 1327104 * k + 1284659 := by
    unfold C
    simp [show (2654208 * k + 2569318) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 1284659) = 3981312 * k + 3853978 := by
    unfold C
    simp [show (1327104 * k + 1284659) % 2 ≠ 0 by omega]
    omega
  have h10 : C (3981312 * k + 3853978) = 1990656 * k + 1926989 := by
    unfold C
    simp [show (3981312 * k + 3853978) % 2 = 0 by omega]
    omega
  have h11 : C (1990656 * k + 1926989) = 5971968 * k + 5780968 := by
    unfold C
    simp [show (1990656 * k + 1926989) % 2 ≠ 0 by omega]
    omega
  have h12 : C (5971968 * k + 5780968) = 2985984 * k + 2890484 := by
    unfold C
    simp [show (5971968 * k + 5780968) % 2 = 0 by omega]
    omega
  have h13 : C (2985984 * k + 2890484) = 1492992 * k + 1445242 := by
    unfold C
    simp [show (2985984 * k + 2890484) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 1445242) = 746496 * k + 722621 := by
    unfold C
    simp [show (1492992 * k + 1445242) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 722621) = 2239488 * k + 2167864 := by
    unfold C
    simp [show (746496 * k + 722621) % 2 ≠ 0 by omega]
    omega
  have h16 : C (2239488 * k + 2167864) = 1119744 * k + 1083932 := by
    unfold C
    simp [show (2239488 * k + 2167864) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 1083932) = 559872 * k + 541966 := by
    unfold C
    simp [show (1119744 * k + 1083932) % 2 = 0 by omega]
    omega
  have h18 : C (559872 * k + 541966) = 279936 * k + 270983 := by
    unfold C
    simp [show (559872 * k + 541966) % 2 = 0 by omega]
    omega
  have h19 : C (279936 * k + 270983) = 839808 * k + 812950 := by
    unfold C
    simp [show (279936 * k + 270983) % 2 ≠ 0 by omega]
    omega
  have h20 : C (839808 * k + 812950) = 419904 * k + 406475 := by
    unfold C
    simp [show (839808 * k + 812950) % 2 = 0 by omega]
    omega
  have h21 : C (419904 * k + 406475) = 1259712 * k + 1219426 := by
    unfold C
    simp [show (419904 * k + 406475) % 2 ≠ 0 by omega]
    omega
  have h22 : C (1259712 * k + 1219426) = 629856 * k + 609713 := by
    unfold C
    simp [show (1259712 * k + 1219426) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 609713) = 1889568 * k + 1829140 := by
    unfold C
    simp [show (629856 * k + 609713) % 2 ≠ 0 by omega]
    omega
  have h24 : C (1889568 * k + 1829140) = 944784 * k + 914570 := by
    unfold C
    simp [show (1889568 * k + 1829140) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 914570) = 472392 * k + 457285 := by
    unfold C
    simp [show (944784 * k + 914570) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 457285) = 1417176 * k + 1371856 := by
    unfold C
    simp [show (472392 * k + 457285) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 1371856) = 708588 * k + 685928 := by
    unfold C
    simp [show (1417176 * k + 1371856) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 685928) = 354294 * k + 342964 := by
    unfold C
    simp [show (708588 * k + 685928) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 342964) = 177147 * k + 171482 := by
    unfold C
    simp [show (354294 * k + 342964) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 253759) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 253759))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_253999 : ∀ k : Nat,
    iterate (262144 * k + 253999) 29 = 177147 * k + 171644 ∧
      177147 * k + 171644 < 262144 * k + 253999 := by
  intro k
  have h1 : C (262144 * k + 253999) = 786432 * k + 761998 := by
    unfold C
    simp [show (262144 * k + 253999) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 761998) = 393216 * k + 380999 := by
    unfold C
    simp [show (786432 * k + 761998) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 380999) = 1179648 * k + 1142998 := by
    unfold C
    simp [show (393216 * k + 380999) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 1142998) = 589824 * k + 571499 := by
    unfold C
    simp [show (1179648 * k + 1142998) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 571499) = 1769472 * k + 1714498 := by
    unfold C
    simp [show (589824 * k + 571499) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 1714498) = 884736 * k + 857249 := by
    unfold C
    simp [show (1769472 * k + 1714498) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 857249) = 2654208 * k + 2571748 := by
    unfold C
    simp [show (884736 * k + 857249) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 2571748) = 1327104 * k + 1285874 := by
    unfold C
    simp [show (2654208 * k + 2571748) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 1285874) = 663552 * k + 642937 := by
    unfold C
    simp [show (1327104 * k + 1285874) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 642937) = 1990656 * k + 1928812 := by
    unfold C
    simp [show (663552 * k + 642937) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 1928812) = 995328 * k + 964406 := by
    unfold C
    simp [show (1990656 * k + 1928812) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 964406) = 497664 * k + 482203 := by
    unfold C
    simp [show (995328 * k + 964406) % 2 = 0 by omega]
    omega
  have h13 : C (497664 * k + 482203) = 1492992 * k + 1446610 := by
    unfold C
    simp [show (497664 * k + 482203) % 2 ≠ 0 by omega]
    omega
  have h14 : C (1492992 * k + 1446610) = 746496 * k + 723305 := by
    unfold C
    simp [show (1492992 * k + 1446610) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 723305) = 2239488 * k + 2169916 := by
    unfold C
    simp [show (746496 * k + 723305) % 2 ≠ 0 by omega]
    omega
  have h16 : C (2239488 * k + 2169916) = 1119744 * k + 1084958 := by
    unfold C
    simp [show (2239488 * k + 2169916) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 1084958) = 559872 * k + 542479 := by
    unfold C
    simp [show (1119744 * k + 1084958) % 2 = 0 by omega]
    omega
  have h18 : C (559872 * k + 542479) = 1679616 * k + 1627438 := by
    unfold C
    simp [show (559872 * k + 542479) % 2 ≠ 0 by omega]
    omega
  have h19 : C (1679616 * k + 1627438) = 839808 * k + 813719 := by
    unfold C
    simp [show (1679616 * k + 1627438) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 813719) = 2519424 * k + 2441158 := by
    unfold C
    simp [show (839808 * k + 813719) % 2 ≠ 0 by omega]
    omega
  have h21 : C (2519424 * k + 2441158) = 1259712 * k + 1220579 := by
    unfold C
    simp [show (2519424 * k + 2441158) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 1220579) = 3779136 * k + 3661738 := by
    unfold C
    simp [show (1259712 * k + 1220579) % 2 ≠ 0 by omega]
    omega
  have h23 : C (3779136 * k + 3661738) = 1889568 * k + 1830869 := by
    unfold C
    simp [show (3779136 * k + 3661738) % 2 = 0 by omega]
    omega
  have h24 : C (1889568 * k + 1830869) = 5668704 * k + 5492608 := by
    unfold C
    simp [show (1889568 * k + 1830869) % 2 ≠ 0 by omega]
    omega
  have h25 : C (5668704 * k + 5492608) = 2834352 * k + 2746304 := by
    unfold C
    simp [show (5668704 * k + 5492608) % 2 = 0 by omega]
    omega
  have h26 : C (2834352 * k + 2746304) = 1417176 * k + 1373152 := by
    unfold C
    simp [show (2834352 * k + 2746304) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 1373152) = 708588 * k + 686576 := by
    unfold C
    simp [show (1417176 * k + 1373152) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 686576) = 354294 * k + 343288 := by
    unfold C
    simp [show (708588 * k + 686576) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 343288) = 177147 * k + 171644 := by
    unfold C
    simp [show (354294 * k + 343288) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 253999) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 253999))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_254079 : ∀ k : Nat,
    iterate (262144 * k + 254079) 29 = 177147 * k + 171698 ∧
      177147 * k + 171698 < 262144 * k + 254079 := by
  intro k
  have h1 : C (262144 * k + 254079) = 786432 * k + 762238 := by
    unfold C
    simp [show (262144 * k + 254079) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 762238) = 393216 * k + 381119 := by
    unfold C
    simp [show (786432 * k + 762238) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 381119) = 1179648 * k + 1143358 := by
    unfold C
    simp [show (393216 * k + 381119) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 1143358) = 589824 * k + 571679 := by
    unfold C
    simp [show (1179648 * k + 1143358) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 571679) = 1769472 * k + 1715038 := by
    unfold C
    simp [show (589824 * k + 571679) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 1715038) = 884736 * k + 857519 := by
    unfold C
    simp [show (1769472 * k + 1715038) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 857519) = 2654208 * k + 2572558 := by
    unfold C
    simp [show (884736 * k + 857519) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 2572558) = 1327104 * k + 1286279 := by
    unfold C
    simp [show (2654208 * k + 2572558) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 1286279) = 3981312 * k + 3858838 := by
    unfold C
    simp [show (1327104 * k + 1286279) % 2 ≠ 0 by omega]
    omega
  have h10 : C (3981312 * k + 3858838) = 1990656 * k + 1929419 := by
    unfold C
    simp [show (3981312 * k + 3858838) % 2 = 0 by omega]
    omega
  have h11 : C (1990656 * k + 1929419) = 5971968 * k + 5788258 := by
    unfold C
    simp [show (1990656 * k + 1929419) % 2 ≠ 0 by omega]
    omega
  have h12 : C (5971968 * k + 5788258) = 2985984 * k + 2894129 := by
    unfold C
    simp [show (5971968 * k + 5788258) % 2 = 0 by omega]
    omega
  have h13 : C (2985984 * k + 2894129) = 8957952 * k + 8682388 := by
    unfold C
    simp [show (2985984 * k + 2894129) % 2 ≠ 0 by omega]
    omega
  have h14 : C (8957952 * k + 8682388) = 4478976 * k + 4341194 := by
    unfold C
    simp [show (8957952 * k + 8682388) % 2 = 0 by omega]
    omega
  have h15 : C (4478976 * k + 4341194) = 2239488 * k + 2170597 := by
    unfold C
    simp [show (4478976 * k + 4341194) % 2 = 0 by omega]
    omega
  have h16 : C (2239488 * k + 2170597) = 6718464 * k + 6511792 := by
    unfold C
    simp [show (2239488 * k + 2170597) % 2 ≠ 0 by omega]
    omega
  have h17 : C (6718464 * k + 6511792) = 3359232 * k + 3255896 := by
    unfold C
    simp [show (6718464 * k + 6511792) % 2 = 0 by omega]
    omega
  have h18 : C (3359232 * k + 3255896) = 1679616 * k + 1627948 := by
    unfold C
    simp [show (3359232 * k + 3255896) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 1627948) = 839808 * k + 813974 := by
    unfold C
    simp [show (1679616 * k + 1627948) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 813974) = 419904 * k + 406987 := by
    unfold C
    simp [show (839808 * k + 813974) % 2 = 0 by omega]
    omega
  have h21 : C (419904 * k + 406987) = 1259712 * k + 1220962 := by
    unfold C
    simp [show (419904 * k + 406987) % 2 ≠ 0 by omega]
    omega
  have h22 : C (1259712 * k + 1220962) = 629856 * k + 610481 := by
    unfold C
    simp [show (1259712 * k + 1220962) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 610481) = 1889568 * k + 1831444 := by
    unfold C
    simp [show (629856 * k + 610481) % 2 ≠ 0 by omega]
    omega
  have h24 : C (1889568 * k + 1831444) = 944784 * k + 915722 := by
    unfold C
    simp [show (1889568 * k + 1831444) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 915722) = 472392 * k + 457861 := by
    unfold C
    simp [show (944784 * k + 915722) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 457861) = 1417176 * k + 1373584 := by
    unfold C
    simp [show (472392 * k + 457861) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 1373584) = 708588 * k + 686792 := by
    unfold C
    simp [show (1417176 * k + 1373584) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 686792) = 354294 * k + 343396 := by
    unfold C
    simp [show (708588 * k + 686792) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 343396) = 177147 * k + 171698 := by
    unfold C
    simp [show (354294 * k + 343396) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 254079) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 254079))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_254175 : ∀ k : Nat,
    iterate (262144 * k + 254175) 29 = 177147 * k + 171763 ∧
      177147 * k + 171763 < 262144 * k + 254175 := by
  intro k
  have h1 : C (262144 * k + 254175) = 786432 * k + 762526 := by
    unfold C
    simp [show (262144 * k + 254175) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 762526) = 393216 * k + 381263 := by
    unfold C
    simp [show (786432 * k + 762526) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 381263) = 1179648 * k + 1143790 := by
    unfold C
    simp [show (393216 * k + 381263) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 1143790) = 589824 * k + 571895 := by
    unfold C
    simp [show (1179648 * k + 1143790) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 571895) = 1769472 * k + 1715686 := by
    unfold C
    simp [show (589824 * k + 571895) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 1715686) = 884736 * k + 857843 := by
    unfold C
    simp [show (1769472 * k + 1715686) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 857843) = 2654208 * k + 2573530 := by
    unfold C
    simp [show (884736 * k + 857843) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 2573530) = 1327104 * k + 1286765 := by
    unfold C
    simp [show (2654208 * k + 2573530) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 1286765) = 3981312 * k + 3860296 := by
    unfold C
    simp [show (1327104 * k + 1286765) % 2 ≠ 0 by omega]
    omega
  have h10 : C (3981312 * k + 3860296) = 1990656 * k + 1930148 := by
    unfold C
    simp [show (3981312 * k + 3860296) % 2 = 0 by omega]
    omega
  have h11 : C (1990656 * k + 1930148) = 995328 * k + 965074 := by
    unfold C
    simp [show (1990656 * k + 1930148) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 965074) = 497664 * k + 482537 := by
    unfold C
    simp [show (995328 * k + 965074) % 2 = 0 by omega]
    omega
  have h13 : C (497664 * k + 482537) = 1492992 * k + 1447612 := by
    unfold C
    simp [show (497664 * k + 482537) % 2 ≠ 0 by omega]
    omega
  have h14 : C (1492992 * k + 1447612) = 746496 * k + 723806 := by
    unfold C
    simp [show (1492992 * k + 1447612) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 723806) = 373248 * k + 361903 := by
    unfold C
    simp [show (746496 * k + 723806) % 2 = 0 by omega]
    omega
  have h16 : C (373248 * k + 361903) = 1119744 * k + 1085710 := by
    unfold C
    simp [show (373248 * k + 361903) % 2 ≠ 0 by omega]
    omega
  have h17 : C (1119744 * k + 1085710) = 559872 * k + 542855 := by
    unfold C
    simp [show (1119744 * k + 1085710) % 2 = 0 by omega]
    omega
  have h18 : C (559872 * k + 542855) = 1679616 * k + 1628566 := by
    unfold C
    simp [show (559872 * k + 542855) % 2 ≠ 0 by omega]
    omega
  have h19 : C (1679616 * k + 1628566) = 839808 * k + 814283 := by
    unfold C
    simp [show (1679616 * k + 1628566) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 814283) = 2519424 * k + 2442850 := by
    unfold C
    simp [show (839808 * k + 814283) % 2 ≠ 0 by omega]
    omega
  have h21 : C (2519424 * k + 2442850) = 1259712 * k + 1221425 := by
    unfold C
    simp [show (2519424 * k + 2442850) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 1221425) = 3779136 * k + 3664276 := by
    unfold C
    simp [show (1259712 * k + 1221425) % 2 ≠ 0 by omega]
    omega
  have h23 : C (3779136 * k + 3664276) = 1889568 * k + 1832138 := by
    unfold C
    simp [show (3779136 * k + 3664276) % 2 = 0 by omega]
    omega
  have h24 : C (1889568 * k + 1832138) = 944784 * k + 916069 := by
    unfold C
    simp [show (1889568 * k + 1832138) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 916069) = 2834352 * k + 2748208 := by
    unfold C
    simp [show (944784 * k + 916069) % 2 ≠ 0 by omega]
    omega
  have h26 : C (2834352 * k + 2748208) = 1417176 * k + 1374104 := by
    unfold C
    simp [show (2834352 * k + 2748208) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 1374104) = 708588 * k + 687052 := by
    unfold C
    simp [show (1417176 * k + 1374104) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 687052) = 354294 * k + 343526 := by
    unfold C
    simp [show (708588 * k + 687052) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 343526) = 177147 * k + 171763 := by
    unfold C
    simp [show (354294 * k + 343526) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 254175) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 254175))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_254203 : ∀ k : Nat,
    iterate (262144 * k + 254203) 29 = 177147 * k + 171782 ∧
      177147 * k + 171782 < 262144 * k + 254203 := by
  intro k
  have h1 : C (262144 * k + 254203) = 786432 * k + 762610 := by
    unfold C
    simp [show (262144 * k + 254203) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 762610) = 393216 * k + 381305 := by
    unfold C
    simp [show (786432 * k + 762610) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 381305) = 1179648 * k + 1143916 := by
    unfold C
    simp [show (393216 * k + 381305) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 1143916) = 589824 * k + 571958 := by
    unfold C
    simp [show (1179648 * k + 1143916) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 571958) = 294912 * k + 285979 := by
    unfold C
    simp [show (589824 * k + 571958) % 2 = 0 by omega]
    omega
  have h6 : C (294912 * k + 285979) = 884736 * k + 857938 := by
    unfold C
    simp [show (294912 * k + 285979) % 2 ≠ 0 by omega]
    omega
  have h7 : C (884736 * k + 857938) = 442368 * k + 428969 := by
    unfold C
    simp [show (884736 * k + 857938) % 2 = 0 by omega]
    omega
  have h8 : C (442368 * k + 428969) = 1327104 * k + 1286908 := by
    unfold C
    simp [show (442368 * k + 428969) % 2 ≠ 0 by omega]
    omega
  have h9 : C (1327104 * k + 1286908) = 663552 * k + 643454 := by
    unfold C
    simp [show (1327104 * k + 1286908) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 643454) = 331776 * k + 321727 := by
    unfold C
    simp [show (663552 * k + 643454) % 2 = 0 by omega]
    omega
  have h11 : C (331776 * k + 321727) = 995328 * k + 965182 := by
    unfold C
    simp [show (331776 * k + 321727) % 2 ≠ 0 by omega]
    omega
  have h12 : C (995328 * k + 965182) = 497664 * k + 482591 := by
    unfold C
    simp [show (995328 * k + 965182) % 2 = 0 by omega]
    omega
  have h13 : C (497664 * k + 482591) = 1492992 * k + 1447774 := by
    unfold C
    simp [show (497664 * k + 482591) % 2 ≠ 0 by omega]
    omega
  have h14 : C (1492992 * k + 1447774) = 746496 * k + 723887 := by
    unfold C
    simp [show (1492992 * k + 1447774) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 723887) = 2239488 * k + 2171662 := by
    unfold C
    simp [show (746496 * k + 723887) % 2 ≠ 0 by omega]
    omega
  have h16 : C (2239488 * k + 2171662) = 1119744 * k + 1085831 := by
    unfold C
    simp [show (2239488 * k + 2171662) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 1085831) = 3359232 * k + 3257494 := by
    unfold C
    simp [show (1119744 * k + 1085831) % 2 ≠ 0 by omega]
    omega
  have h18 : C (3359232 * k + 3257494) = 1679616 * k + 1628747 := by
    unfold C
    simp [show (3359232 * k + 3257494) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 1628747) = 5038848 * k + 4886242 := by
    unfold C
    simp [show (1679616 * k + 1628747) % 2 ≠ 0 by omega]
    omega
  have h20 : C (5038848 * k + 4886242) = 2519424 * k + 2443121 := by
    unfold C
    simp [show (5038848 * k + 4886242) % 2 = 0 by omega]
    omega
  have h21 : C (2519424 * k + 2443121) = 7558272 * k + 7329364 := by
    unfold C
    simp [show (2519424 * k + 2443121) % 2 ≠ 0 by omega]
    omega
  have h22 : C (7558272 * k + 7329364) = 3779136 * k + 3664682 := by
    unfold C
    simp [show (7558272 * k + 7329364) % 2 = 0 by omega]
    omega
  have h23 : C (3779136 * k + 3664682) = 1889568 * k + 1832341 := by
    unfold C
    simp [show (3779136 * k + 3664682) % 2 = 0 by omega]
    omega
  have h24 : C (1889568 * k + 1832341) = 5668704 * k + 5497024 := by
    unfold C
    simp [show (1889568 * k + 1832341) % 2 ≠ 0 by omega]
    omega
  have h25 : C (5668704 * k + 5497024) = 2834352 * k + 2748512 := by
    unfold C
    simp [show (5668704 * k + 5497024) % 2 = 0 by omega]
    omega
  have h26 : C (2834352 * k + 2748512) = 1417176 * k + 1374256 := by
    unfold C
    simp [show (2834352 * k + 2748512) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 1374256) = 708588 * k + 687128 := by
    unfold C
    simp [show (1417176 * k + 1374256) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 687128) = 354294 * k + 343564 := by
    unfold C
    simp [show (708588 * k + 687128) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 343564) = 177147 * k + 171782 := by
    unfold C
    simp [show (354294 * k + 343564) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 254203) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 254203))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_254399 : ∀ k : Nat,
    iterate (262144 * k + 254399) 29 = 177147 * k + 171914 ∧
      177147 * k + 171914 < 262144 * k + 254399 := by
  intro k
  have h1 : C (262144 * k + 254399) = 786432 * k + 763198 := by
    unfold C
    simp [show (262144 * k + 254399) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 763198) = 393216 * k + 381599 := by
    unfold C
    simp [show (786432 * k + 763198) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 381599) = 1179648 * k + 1144798 := by
    unfold C
    simp [show (393216 * k + 381599) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 1144798) = 589824 * k + 572399 := by
    unfold C
    simp [show (1179648 * k + 1144798) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 572399) = 1769472 * k + 1717198 := by
    unfold C
    simp [show (589824 * k + 572399) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 1717198) = 884736 * k + 858599 := by
    unfold C
    simp [show (1769472 * k + 1717198) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 858599) = 2654208 * k + 2575798 := by
    unfold C
    simp [show (884736 * k + 858599) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 2575798) = 1327104 * k + 1287899 := by
    unfold C
    simp [show (2654208 * k + 2575798) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 1287899) = 3981312 * k + 3863698 := by
    unfold C
    simp [show (1327104 * k + 1287899) % 2 ≠ 0 by omega]
    omega
  have h10 : C (3981312 * k + 3863698) = 1990656 * k + 1931849 := by
    unfold C
    simp [show (3981312 * k + 3863698) % 2 = 0 by omega]
    omega
  have h11 : C (1990656 * k + 1931849) = 5971968 * k + 5795548 := by
    unfold C
    simp [show (1990656 * k + 1931849) % 2 ≠ 0 by omega]
    omega
  have h12 : C (5971968 * k + 5795548) = 2985984 * k + 2897774 := by
    unfold C
    simp [show (5971968 * k + 5795548) % 2 = 0 by omega]
    omega
  have h13 : C (2985984 * k + 2897774) = 1492992 * k + 1448887 := by
    unfold C
    simp [show (2985984 * k + 2897774) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 1448887) = 4478976 * k + 4346662 := by
    unfold C
    simp [show (1492992 * k + 1448887) % 2 ≠ 0 by omega]
    omega
  have h15 : C (4478976 * k + 4346662) = 2239488 * k + 2173331 := by
    unfold C
    simp [show (4478976 * k + 4346662) % 2 = 0 by omega]
    omega
  have h16 : C (2239488 * k + 2173331) = 6718464 * k + 6519994 := by
    unfold C
    simp [show (2239488 * k + 2173331) % 2 ≠ 0 by omega]
    omega
  have h17 : C (6718464 * k + 6519994) = 3359232 * k + 3259997 := by
    unfold C
    simp [show (6718464 * k + 6519994) % 2 = 0 by omega]
    omega
  have h18 : C (3359232 * k + 3259997) = 10077696 * k + 9779992 := by
    unfold C
    simp [show (3359232 * k + 3259997) % 2 ≠ 0 by omega]
    omega
  have h19 : C (10077696 * k + 9779992) = 5038848 * k + 4889996 := by
    unfold C
    simp [show (10077696 * k + 9779992) % 2 = 0 by omega]
    omega
  have h20 : C (5038848 * k + 4889996) = 2519424 * k + 2444998 := by
    unfold C
    simp [show (5038848 * k + 4889996) % 2 = 0 by omega]
    omega
  have h21 : C (2519424 * k + 2444998) = 1259712 * k + 1222499 := by
    unfold C
    simp [show (2519424 * k + 2444998) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 1222499) = 3779136 * k + 3667498 := by
    unfold C
    simp [show (1259712 * k + 1222499) % 2 ≠ 0 by omega]
    omega
  have h23 : C (3779136 * k + 3667498) = 1889568 * k + 1833749 := by
    unfold C
    simp [show (3779136 * k + 3667498) % 2 = 0 by omega]
    omega
  have h24 : C (1889568 * k + 1833749) = 5668704 * k + 5501248 := by
    unfold C
    simp [show (1889568 * k + 1833749) % 2 ≠ 0 by omega]
    omega
  have h25 : C (5668704 * k + 5501248) = 2834352 * k + 2750624 := by
    unfold C
    simp [show (5668704 * k + 5501248) % 2 = 0 by omega]
    omega
  have h26 : C (2834352 * k + 2750624) = 1417176 * k + 1375312 := by
    unfold C
    simp [show (2834352 * k + 2750624) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 1375312) = 708588 * k + 687656 := by
    unfold C
    simp [show (1417176 * k + 1375312) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 687656) = 354294 * k + 343828 := by
    unfold C
    simp [show (708588 * k + 687656) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 343828) = 177147 * k + 171914 := by
    unfold C
    simp [show (354294 * k + 343828) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 254399) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 254399))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_254619 : ∀ k : Nat,
    iterate (262144 * k + 254619) 29 = 177147 * k + 172063 ∧
      177147 * k + 172063 < 262144 * k + 254619 := by
  intro k
  have h1 : C (262144 * k + 254619) = 786432 * k + 763858 := by
    unfold C
    simp [show (262144 * k + 254619) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 763858) = 393216 * k + 381929 := by
    unfold C
    simp [show (786432 * k + 763858) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 381929) = 1179648 * k + 1145788 := by
    unfold C
    simp [show (393216 * k + 381929) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 1145788) = 589824 * k + 572894 := by
    unfold C
    simp [show (1179648 * k + 1145788) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 572894) = 294912 * k + 286447 := by
    unfold C
    simp [show (589824 * k + 572894) % 2 = 0 by omega]
    omega
  have h6 : C (294912 * k + 286447) = 884736 * k + 859342 := by
    unfold C
    simp [show (294912 * k + 286447) % 2 ≠ 0 by omega]
    omega
  have h7 : C (884736 * k + 859342) = 442368 * k + 429671 := by
    unfold C
    simp [show (884736 * k + 859342) % 2 = 0 by omega]
    omega
  have h8 : C (442368 * k + 429671) = 1327104 * k + 1289014 := by
    unfold C
    simp [show (442368 * k + 429671) % 2 ≠ 0 by omega]
    omega
  have h9 : C (1327104 * k + 1289014) = 663552 * k + 644507 := by
    unfold C
    simp [show (1327104 * k + 1289014) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 644507) = 1990656 * k + 1933522 := by
    unfold C
    simp [show (663552 * k + 644507) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 1933522) = 995328 * k + 966761 := by
    unfold C
    simp [show (1990656 * k + 1933522) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 966761) = 2985984 * k + 2900284 := by
    unfold C
    simp [show (995328 * k + 966761) % 2 ≠ 0 by omega]
    omega
  have h13 : C (2985984 * k + 2900284) = 1492992 * k + 1450142 := by
    unfold C
    simp [show (2985984 * k + 2900284) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 1450142) = 746496 * k + 725071 := by
    unfold C
    simp [show (1492992 * k + 1450142) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 725071) = 2239488 * k + 2175214 := by
    unfold C
    simp [show (746496 * k + 725071) % 2 ≠ 0 by omega]
    omega
  have h16 : C (2239488 * k + 2175214) = 1119744 * k + 1087607 := by
    unfold C
    simp [show (2239488 * k + 2175214) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 1087607) = 3359232 * k + 3262822 := by
    unfold C
    simp [show (1119744 * k + 1087607) % 2 ≠ 0 by omega]
    omega
  have h18 : C (3359232 * k + 3262822) = 1679616 * k + 1631411 := by
    unfold C
    simp [show (3359232 * k + 3262822) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 1631411) = 5038848 * k + 4894234 := by
    unfold C
    simp [show (1679616 * k + 1631411) % 2 ≠ 0 by omega]
    omega
  have h20 : C (5038848 * k + 4894234) = 2519424 * k + 2447117 := by
    unfold C
    simp [show (5038848 * k + 4894234) % 2 = 0 by omega]
    omega
  have h21 : C (2519424 * k + 2447117) = 7558272 * k + 7341352 := by
    unfold C
    simp [show (2519424 * k + 2447117) % 2 ≠ 0 by omega]
    omega
  have h22 : C (7558272 * k + 7341352) = 3779136 * k + 3670676 := by
    unfold C
    simp [show (7558272 * k + 7341352) % 2 = 0 by omega]
    omega
  have h23 : C (3779136 * k + 3670676) = 1889568 * k + 1835338 := by
    unfold C
    simp [show (3779136 * k + 3670676) % 2 = 0 by omega]
    omega
  have h24 : C (1889568 * k + 1835338) = 944784 * k + 917669 := by
    unfold C
    simp [show (1889568 * k + 1835338) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 917669) = 2834352 * k + 2753008 := by
    unfold C
    simp [show (944784 * k + 917669) % 2 ≠ 0 by omega]
    omega
  have h26 : C (2834352 * k + 2753008) = 1417176 * k + 1376504 := by
    unfold C
    simp [show (2834352 * k + 2753008) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 1376504) = 708588 * k + 688252 := by
    unfold C
    simp [show (1417176 * k + 1376504) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 688252) = 354294 * k + 344126 := by
    unfold C
    simp [show (708588 * k + 688252) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 344126) = 177147 * k + 172063 := by
    unfold C
    simp [show (354294 * k + 344126) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 254619) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 254619))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_254655 : ∀ k : Nat,
    iterate (262144 * k + 254655) 29 = 177147 * k + 172087 ∧
      177147 * k + 172087 < 262144 * k + 254655 := by
  intro k
  have h1 : C (262144 * k + 254655) = 786432 * k + 763966 := by
    unfold C
    simp [show (262144 * k + 254655) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 763966) = 393216 * k + 381983 := by
    unfold C
    simp [show (786432 * k + 763966) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 381983) = 1179648 * k + 1145950 := by
    unfold C
    simp [show (393216 * k + 381983) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 1145950) = 589824 * k + 572975 := by
    unfold C
    simp [show (1179648 * k + 1145950) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 572975) = 1769472 * k + 1718926 := by
    unfold C
    simp [show (589824 * k + 572975) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 1718926) = 884736 * k + 859463 := by
    unfold C
    simp [show (1769472 * k + 1718926) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 859463) = 2654208 * k + 2578390 := by
    unfold C
    simp [show (884736 * k + 859463) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 2578390) = 1327104 * k + 1289195 := by
    unfold C
    simp [show (2654208 * k + 2578390) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 1289195) = 3981312 * k + 3867586 := by
    unfold C
    simp [show (1327104 * k + 1289195) % 2 ≠ 0 by omega]
    omega
  have h10 : C (3981312 * k + 3867586) = 1990656 * k + 1933793 := by
    unfold C
    simp [show (3981312 * k + 3867586) % 2 = 0 by omega]
    omega
  have h11 : C (1990656 * k + 1933793) = 5971968 * k + 5801380 := by
    unfold C
    simp [show (1990656 * k + 1933793) % 2 ≠ 0 by omega]
    omega
  have h12 : C (5971968 * k + 5801380) = 2985984 * k + 2900690 := by
    unfold C
    simp [show (5971968 * k + 5801380) % 2 = 0 by omega]
    omega
  have h13 : C (2985984 * k + 2900690) = 1492992 * k + 1450345 := by
    unfold C
    simp [show (2985984 * k + 2900690) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 1450345) = 4478976 * k + 4351036 := by
    unfold C
    simp [show (1492992 * k + 1450345) % 2 ≠ 0 by omega]
    omega
  have h15 : C (4478976 * k + 4351036) = 2239488 * k + 2175518 := by
    unfold C
    simp [show (4478976 * k + 4351036) % 2 = 0 by omega]
    omega
  have h16 : C (2239488 * k + 2175518) = 1119744 * k + 1087759 := by
    unfold C
    simp [show (2239488 * k + 2175518) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 1087759) = 3359232 * k + 3263278 := by
    unfold C
    simp [show (1119744 * k + 1087759) % 2 ≠ 0 by omega]
    omega
  have h18 : C (3359232 * k + 3263278) = 1679616 * k + 1631639 := by
    unfold C
    simp [show (3359232 * k + 3263278) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 1631639) = 5038848 * k + 4894918 := by
    unfold C
    simp [show (1679616 * k + 1631639) % 2 ≠ 0 by omega]
    omega
  have h20 : C (5038848 * k + 4894918) = 2519424 * k + 2447459 := by
    unfold C
    simp [show (5038848 * k + 4894918) % 2 = 0 by omega]
    omega
  have h21 : C (2519424 * k + 2447459) = 7558272 * k + 7342378 := by
    unfold C
    simp [show (2519424 * k + 2447459) % 2 ≠ 0 by omega]
    omega
  have h22 : C (7558272 * k + 7342378) = 3779136 * k + 3671189 := by
    unfold C
    simp [show (7558272 * k + 7342378) % 2 = 0 by omega]
    omega
  have h23 : C (3779136 * k + 3671189) = 11337408 * k + 11013568 := by
    unfold C
    simp [show (3779136 * k + 3671189) % 2 ≠ 0 by omega]
    omega
  have h24 : C (11337408 * k + 11013568) = 5668704 * k + 5506784 := by
    unfold C
    simp [show (11337408 * k + 11013568) % 2 = 0 by omega]
    omega
  have h25 : C (5668704 * k + 5506784) = 2834352 * k + 2753392 := by
    unfold C
    simp [show (5668704 * k + 5506784) % 2 = 0 by omega]
    omega
  have h26 : C (2834352 * k + 2753392) = 1417176 * k + 1376696 := by
    unfold C
    simp [show (2834352 * k + 2753392) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 1376696) = 708588 * k + 688348 := by
    unfold C
    simp [show (1417176 * k + 1376696) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 688348) = 354294 * k + 344174 := by
    unfold C
    simp [show (708588 * k + 688348) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 344174) = 177147 * k + 172087 := by
    unfold C
    simp [show (354294 * k + 344174) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 254655) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 254655))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_254847 : ∀ k : Nat,
    iterate (262144 * k + 254847) 29 = 177147 * k + 172217 ∧
      177147 * k + 172217 < 262144 * k + 254847 := by
  intro k
  have h1 : C (262144 * k + 254847) = 786432 * k + 764542 := by
    unfold C
    simp [show (262144 * k + 254847) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 764542) = 393216 * k + 382271 := by
    unfold C
    simp [show (786432 * k + 764542) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 382271) = 1179648 * k + 1146814 := by
    unfold C
    simp [show (393216 * k + 382271) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 1146814) = 589824 * k + 573407 := by
    unfold C
    simp [show (1179648 * k + 1146814) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 573407) = 1769472 * k + 1720222 := by
    unfold C
    simp [show (589824 * k + 573407) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 1720222) = 884736 * k + 860111 := by
    unfold C
    simp [show (1769472 * k + 1720222) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 860111) = 2654208 * k + 2580334 := by
    unfold C
    simp [show (884736 * k + 860111) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 2580334) = 1327104 * k + 1290167 := by
    unfold C
    simp [show (2654208 * k + 2580334) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 1290167) = 3981312 * k + 3870502 := by
    unfold C
    simp [show (1327104 * k + 1290167) % 2 ≠ 0 by omega]
    omega
  have h10 : C (3981312 * k + 3870502) = 1990656 * k + 1935251 := by
    unfold C
    simp [show (3981312 * k + 3870502) % 2 = 0 by omega]
    omega
  have h11 : C (1990656 * k + 1935251) = 5971968 * k + 5805754 := by
    unfold C
    simp [show (1990656 * k + 1935251) % 2 ≠ 0 by omega]
    omega
  have h12 : C (5971968 * k + 5805754) = 2985984 * k + 2902877 := by
    unfold C
    simp [show (5971968 * k + 5805754) % 2 = 0 by omega]
    omega
  have h13 : C (2985984 * k + 2902877) = 8957952 * k + 8708632 := by
    unfold C
    simp [show (2985984 * k + 2902877) % 2 ≠ 0 by omega]
    omega
  have h14 : C (8957952 * k + 8708632) = 4478976 * k + 4354316 := by
    unfold C
    simp [show (8957952 * k + 8708632) % 2 = 0 by omega]
    omega
  have h15 : C (4478976 * k + 4354316) = 2239488 * k + 2177158 := by
    unfold C
    simp [show (4478976 * k + 4354316) % 2 = 0 by omega]
    omega
  have h16 : C (2239488 * k + 2177158) = 1119744 * k + 1088579 := by
    unfold C
    simp [show (2239488 * k + 2177158) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 1088579) = 3359232 * k + 3265738 := by
    unfold C
    simp [show (1119744 * k + 1088579) % 2 ≠ 0 by omega]
    omega
  have h18 : C (3359232 * k + 3265738) = 1679616 * k + 1632869 := by
    unfold C
    simp [show (3359232 * k + 3265738) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 1632869) = 5038848 * k + 4898608 := by
    unfold C
    simp [show (1679616 * k + 1632869) % 2 ≠ 0 by omega]
    omega
  have h20 : C (5038848 * k + 4898608) = 2519424 * k + 2449304 := by
    unfold C
    simp [show (5038848 * k + 4898608) % 2 = 0 by omega]
    omega
  have h21 : C (2519424 * k + 2449304) = 1259712 * k + 1224652 := by
    unfold C
    simp [show (2519424 * k + 2449304) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 1224652) = 629856 * k + 612326 := by
    unfold C
    simp [show (1259712 * k + 1224652) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 612326) = 314928 * k + 306163 := by
    unfold C
    simp [show (629856 * k + 612326) % 2 = 0 by omega]
    omega
  have h24 : C (314928 * k + 306163) = 944784 * k + 918490 := by
    unfold C
    simp [show (314928 * k + 306163) % 2 ≠ 0 by omega]
    omega
  have h25 : C (944784 * k + 918490) = 472392 * k + 459245 := by
    unfold C
    simp [show (944784 * k + 918490) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 459245) = 1417176 * k + 1377736 := by
    unfold C
    simp [show (472392 * k + 459245) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 1377736) = 708588 * k + 688868 := by
    unfold C
    simp [show (1417176 * k + 1377736) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 688868) = 354294 * k + 344434 := by
    unfold C
    simp [show (708588 * k + 688868) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 344434) = 177147 * k + 172217 := by
    unfold C
    simp [show (354294 * k + 344434) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 254847) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 254847))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_256603 : ∀ k : Nat,
    iterate (262144 * k + 256603) 29 = 177147 * k + 173404 ∧
      177147 * k + 173404 < 262144 * k + 256603 := by
  intro k
  have h1 : C (262144 * k + 256603) = 786432 * k + 769810 := by
    unfold C
    simp [show (262144 * k + 256603) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 769810) = 393216 * k + 384905 := by
    unfold C
    simp [show (786432 * k + 769810) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 384905) = 1179648 * k + 1154716 := by
    unfold C
    simp [show (393216 * k + 384905) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 1154716) = 589824 * k + 577358 := by
    unfold C
    simp [show (1179648 * k + 1154716) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 577358) = 294912 * k + 288679 := by
    unfold C
    simp [show (589824 * k + 577358) % 2 = 0 by omega]
    omega
  have h6 : C (294912 * k + 288679) = 884736 * k + 866038 := by
    unfold C
    simp [show (294912 * k + 288679) % 2 ≠ 0 by omega]
    omega
  have h7 : C (884736 * k + 866038) = 442368 * k + 433019 := by
    unfold C
    simp [show (884736 * k + 866038) % 2 = 0 by omega]
    omega
  have h8 : C (442368 * k + 433019) = 1327104 * k + 1299058 := by
    unfold C
    simp [show (442368 * k + 433019) % 2 ≠ 0 by omega]
    omega
  have h9 : C (1327104 * k + 1299058) = 663552 * k + 649529 := by
    unfold C
    simp [show (1327104 * k + 1299058) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 649529) = 1990656 * k + 1948588 := by
    unfold C
    simp [show (663552 * k + 649529) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 1948588) = 995328 * k + 974294 := by
    unfold C
    simp [show (1990656 * k + 1948588) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 974294) = 497664 * k + 487147 := by
    unfold C
    simp [show (995328 * k + 974294) % 2 = 0 by omega]
    omega
  have h13 : C (497664 * k + 487147) = 1492992 * k + 1461442 := by
    unfold C
    simp [show (497664 * k + 487147) % 2 ≠ 0 by omega]
    omega
  have h14 : C (1492992 * k + 1461442) = 746496 * k + 730721 := by
    unfold C
    simp [show (1492992 * k + 1461442) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 730721) = 2239488 * k + 2192164 := by
    unfold C
    simp [show (746496 * k + 730721) % 2 ≠ 0 by omega]
    omega
  have h16 : C (2239488 * k + 2192164) = 1119744 * k + 1096082 := by
    unfold C
    simp [show (2239488 * k + 2192164) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 1096082) = 559872 * k + 548041 := by
    unfold C
    simp [show (1119744 * k + 1096082) % 2 = 0 by omega]
    omega
  have h18 : C (559872 * k + 548041) = 1679616 * k + 1644124 := by
    unfold C
    simp [show (559872 * k + 548041) % 2 ≠ 0 by omega]
    omega
  have h19 : C (1679616 * k + 1644124) = 839808 * k + 822062 := by
    unfold C
    simp [show (1679616 * k + 1644124) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 822062) = 419904 * k + 411031 := by
    unfold C
    simp [show (839808 * k + 822062) % 2 = 0 by omega]
    omega
  have h21 : C (419904 * k + 411031) = 1259712 * k + 1233094 := by
    unfold C
    simp [show (419904 * k + 411031) % 2 ≠ 0 by omega]
    omega
  have h22 : C (1259712 * k + 1233094) = 629856 * k + 616547 := by
    unfold C
    simp [show (1259712 * k + 1233094) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 616547) = 1889568 * k + 1849642 := by
    unfold C
    simp [show (629856 * k + 616547) % 2 ≠ 0 by omega]
    omega
  have h24 : C (1889568 * k + 1849642) = 944784 * k + 924821 := by
    unfold C
    simp [show (1889568 * k + 1849642) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 924821) = 2834352 * k + 2774464 := by
    unfold C
    simp [show (944784 * k + 924821) % 2 ≠ 0 by omega]
    omega
  have h26 : C (2834352 * k + 2774464) = 1417176 * k + 1387232 := by
    unfold C
    simp [show (2834352 * k + 2774464) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 1387232) = 708588 * k + 693616 := by
    unfold C
    simp [show (1417176 * k + 1387232) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 693616) = 354294 * k + 346808 := by
    unfold C
    simp [show (708588 * k + 693616) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 346808) = 177147 * k + 173404 := by
    unfold C
    simp [show (354294 * k + 346808) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 256603) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 256603))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_256703 : ∀ k : Nat,
    iterate (262144 * k + 256703) 29 = 177147 * k + 173471 ∧
      177147 * k + 173471 < 262144 * k + 256703 := by
  intro k
  have h1 : C (262144 * k + 256703) = 786432 * k + 770110 := by
    unfold C
    simp [show (262144 * k + 256703) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 770110) = 393216 * k + 385055 := by
    unfold C
    simp [show (786432 * k + 770110) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 385055) = 1179648 * k + 1155166 := by
    unfold C
    simp [show (393216 * k + 385055) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 1155166) = 589824 * k + 577583 := by
    unfold C
    simp [show (1179648 * k + 1155166) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 577583) = 1769472 * k + 1732750 := by
    unfold C
    simp [show (589824 * k + 577583) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 1732750) = 884736 * k + 866375 := by
    unfold C
    simp [show (1769472 * k + 1732750) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 866375) = 2654208 * k + 2599126 := by
    unfold C
    simp [show (884736 * k + 866375) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 2599126) = 1327104 * k + 1299563 := by
    unfold C
    simp [show (2654208 * k + 2599126) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 1299563) = 3981312 * k + 3898690 := by
    unfold C
    simp [show (1327104 * k + 1299563) % 2 ≠ 0 by omega]
    omega
  have h10 : C (3981312 * k + 3898690) = 1990656 * k + 1949345 := by
    unfold C
    simp [show (3981312 * k + 3898690) % 2 = 0 by omega]
    omega
  have h11 : C (1990656 * k + 1949345) = 5971968 * k + 5848036 := by
    unfold C
    simp [show (1990656 * k + 1949345) % 2 ≠ 0 by omega]
    omega
  have h12 : C (5971968 * k + 5848036) = 2985984 * k + 2924018 := by
    unfold C
    simp [show (5971968 * k + 5848036) % 2 = 0 by omega]
    omega
  have h13 : C (2985984 * k + 2924018) = 1492992 * k + 1462009 := by
    unfold C
    simp [show (2985984 * k + 2924018) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 1462009) = 4478976 * k + 4386028 := by
    unfold C
    simp [show (1492992 * k + 1462009) % 2 ≠ 0 by omega]
    omega
  have h15 : C (4478976 * k + 4386028) = 2239488 * k + 2193014 := by
    unfold C
    simp [show (4478976 * k + 4386028) % 2 = 0 by omega]
    omega
  have h16 : C (2239488 * k + 2193014) = 1119744 * k + 1096507 := by
    unfold C
    simp [show (2239488 * k + 2193014) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 1096507) = 3359232 * k + 3289522 := by
    unfold C
    simp [show (1119744 * k + 1096507) % 2 ≠ 0 by omega]
    omega
  have h18 : C (3359232 * k + 3289522) = 1679616 * k + 1644761 := by
    unfold C
    simp [show (3359232 * k + 3289522) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 1644761) = 5038848 * k + 4934284 := by
    unfold C
    simp [show (1679616 * k + 1644761) % 2 ≠ 0 by omega]
    omega
  have h20 : C (5038848 * k + 4934284) = 2519424 * k + 2467142 := by
    unfold C
    simp [show (5038848 * k + 4934284) % 2 = 0 by omega]
    omega
  have h21 : C (2519424 * k + 2467142) = 1259712 * k + 1233571 := by
    unfold C
    simp [show (2519424 * k + 2467142) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 1233571) = 3779136 * k + 3700714 := by
    unfold C
    simp [show (1259712 * k + 1233571) % 2 ≠ 0 by omega]
    omega
  have h23 : C (3779136 * k + 3700714) = 1889568 * k + 1850357 := by
    unfold C
    simp [show (3779136 * k + 3700714) % 2 = 0 by omega]
    omega
  have h24 : C (1889568 * k + 1850357) = 5668704 * k + 5551072 := by
    unfold C
    simp [show (1889568 * k + 1850357) % 2 ≠ 0 by omega]
    omega
  have h25 : C (5668704 * k + 5551072) = 2834352 * k + 2775536 := by
    unfold C
    simp [show (5668704 * k + 5551072) % 2 = 0 by omega]
    omega
  have h26 : C (2834352 * k + 2775536) = 1417176 * k + 1387768 := by
    unfold C
    simp [show (2834352 * k + 2775536) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 1387768) = 708588 * k + 693884 := by
    unfold C
    simp [show (1417176 * k + 1387768) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 693884) = 354294 * k + 346942 := by
    unfold C
    simp [show (708588 * k + 693884) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 346942) = 177147 * k + 173471 := by
    unfold C
    simp [show (354294 * k + 346942) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 256703) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 256703))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_256959 : ∀ k : Nat,
    iterate (262144 * k + 256959) 29 = 177147 * k + 173644 ∧
      177147 * k + 173644 < 262144 * k + 256959 := by
  intro k
  have h1 : C (262144 * k + 256959) = 786432 * k + 770878 := by
    unfold C
    simp [show (262144 * k + 256959) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 770878) = 393216 * k + 385439 := by
    unfold C
    simp [show (786432 * k + 770878) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 385439) = 1179648 * k + 1156318 := by
    unfold C
    simp [show (393216 * k + 385439) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 1156318) = 589824 * k + 578159 := by
    unfold C
    simp [show (1179648 * k + 1156318) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 578159) = 1769472 * k + 1734478 := by
    unfold C
    simp [show (589824 * k + 578159) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 1734478) = 884736 * k + 867239 := by
    unfold C
    simp [show (1769472 * k + 1734478) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 867239) = 2654208 * k + 2601718 := by
    unfold C
    simp [show (884736 * k + 867239) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 2601718) = 1327104 * k + 1300859 := by
    unfold C
    simp [show (2654208 * k + 2601718) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 1300859) = 3981312 * k + 3902578 := by
    unfold C
    simp [show (1327104 * k + 1300859) % 2 ≠ 0 by omega]
    omega
  have h10 : C (3981312 * k + 3902578) = 1990656 * k + 1951289 := by
    unfold C
    simp [show (3981312 * k + 3902578) % 2 = 0 by omega]
    omega
  have h11 : C (1990656 * k + 1951289) = 5971968 * k + 5853868 := by
    unfold C
    simp [show (1990656 * k + 1951289) % 2 ≠ 0 by omega]
    omega
  have h12 : C (5971968 * k + 5853868) = 2985984 * k + 2926934 := by
    unfold C
    simp [show (5971968 * k + 5853868) % 2 = 0 by omega]
    omega
  have h13 : C (2985984 * k + 2926934) = 1492992 * k + 1463467 := by
    unfold C
    simp [show (2985984 * k + 2926934) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 1463467) = 4478976 * k + 4390402 := by
    unfold C
    simp [show (1492992 * k + 1463467) % 2 ≠ 0 by omega]
    omega
  have h15 : C (4478976 * k + 4390402) = 2239488 * k + 2195201 := by
    unfold C
    simp [show (4478976 * k + 4390402) % 2 = 0 by omega]
    omega
  have h16 : C (2239488 * k + 2195201) = 6718464 * k + 6585604 := by
    unfold C
    simp [show (2239488 * k + 2195201) % 2 ≠ 0 by omega]
    omega
  have h17 : C (6718464 * k + 6585604) = 3359232 * k + 3292802 := by
    unfold C
    simp [show (6718464 * k + 6585604) % 2 = 0 by omega]
    omega
  have h18 : C (3359232 * k + 3292802) = 1679616 * k + 1646401 := by
    unfold C
    simp [show (3359232 * k + 3292802) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 1646401) = 5038848 * k + 4939204 := by
    unfold C
    simp [show (1679616 * k + 1646401) % 2 ≠ 0 by omega]
    omega
  have h20 : C (5038848 * k + 4939204) = 2519424 * k + 2469602 := by
    unfold C
    simp [show (5038848 * k + 4939204) % 2 = 0 by omega]
    omega
  have h21 : C (2519424 * k + 2469602) = 1259712 * k + 1234801 := by
    unfold C
    simp [show (2519424 * k + 2469602) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 1234801) = 3779136 * k + 3704404 := by
    unfold C
    simp [show (1259712 * k + 1234801) % 2 ≠ 0 by omega]
    omega
  have h23 : C (3779136 * k + 3704404) = 1889568 * k + 1852202 := by
    unfold C
    simp [show (3779136 * k + 3704404) % 2 = 0 by omega]
    omega
  have h24 : C (1889568 * k + 1852202) = 944784 * k + 926101 := by
    unfold C
    simp [show (1889568 * k + 1852202) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 926101) = 2834352 * k + 2778304 := by
    unfold C
    simp [show (944784 * k + 926101) % 2 ≠ 0 by omega]
    omega
  have h26 : C (2834352 * k + 2778304) = 1417176 * k + 1389152 := by
    unfold C
    simp [show (2834352 * k + 2778304) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 1389152) = 708588 * k + 694576 := by
    unfold C
    simp [show (1417176 * k + 1389152) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 694576) = 354294 * k + 347288 := by
    unfold C
    simp [show (708588 * k + 694576) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 347288) = 177147 * k + 173644 := by
    unfold C
    simp [show (354294 * k + 347288) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 256959) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 256959))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_257115 : ∀ k : Nat,
    iterate (262144 * k + 257115) 29 = 177147 * k + 173750 ∧
      177147 * k + 173750 < 262144 * k + 257115 := by
  intro k
  have h1 : C (262144 * k + 257115) = 786432 * k + 771346 := by
    unfold C
    simp [show (262144 * k + 257115) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 771346) = 393216 * k + 385673 := by
    unfold C
    simp [show (786432 * k + 771346) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 385673) = 1179648 * k + 1157020 := by
    unfold C
    simp [show (393216 * k + 385673) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 1157020) = 589824 * k + 578510 := by
    unfold C
    simp [show (1179648 * k + 1157020) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 578510) = 294912 * k + 289255 := by
    unfold C
    simp [show (589824 * k + 578510) % 2 = 0 by omega]
    omega
  have h6 : C (294912 * k + 289255) = 884736 * k + 867766 := by
    unfold C
    simp [show (294912 * k + 289255) % 2 ≠ 0 by omega]
    omega
  have h7 : C (884736 * k + 867766) = 442368 * k + 433883 := by
    unfold C
    simp [show (884736 * k + 867766) % 2 = 0 by omega]
    omega
  have h8 : C (442368 * k + 433883) = 1327104 * k + 1301650 := by
    unfold C
    simp [show (442368 * k + 433883) % 2 ≠ 0 by omega]
    omega
  have h9 : C (1327104 * k + 1301650) = 663552 * k + 650825 := by
    unfold C
    simp [show (1327104 * k + 1301650) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 650825) = 1990656 * k + 1952476 := by
    unfold C
    simp [show (663552 * k + 650825) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 1952476) = 995328 * k + 976238 := by
    unfold C
    simp [show (1990656 * k + 1952476) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 976238) = 497664 * k + 488119 := by
    unfold C
    simp [show (995328 * k + 976238) % 2 = 0 by omega]
    omega
  have h13 : C (497664 * k + 488119) = 1492992 * k + 1464358 := by
    unfold C
    simp [show (497664 * k + 488119) % 2 ≠ 0 by omega]
    omega
  have h14 : C (1492992 * k + 1464358) = 746496 * k + 732179 := by
    unfold C
    simp [show (1492992 * k + 1464358) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 732179) = 2239488 * k + 2196538 := by
    unfold C
    simp [show (746496 * k + 732179) % 2 ≠ 0 by omega]
    omega
  have h16 : C (2239488 * k + 2196538) = 1119744 * k + 1098269 := by
    unfold C
    simp [show (2239488 * k + 2196538) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 1098269) = 3359232 * k + 3294808 := by
    unfold C
    simp [show (1119744 * k + 1098269) % 2 ≠ 0 by omega]
    omega
  have h18 : C (3359232 * k + 3294808) = 1679616 * k + 1647404 := by
    unfold C
    simp [show (3359232 * k + 3294808) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 1647404) = 839808 * k + 823702 := by
    unfold C
    simp [show (1679616 * k + 1647404) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 823702) = 419904 * k + 411851 := by
    unfold C
    simp [show (839808 * k + 823702) % 2 = 0 by omega]
    omega
  have h21 : C (419904 * k + 411851) = 1259712 * k + 1235554 := by
    unfold C
    simp [show (419904 * k + 411851) % 2 ≠ 0 by omega]
    omega
  have h22 : C (1259712 * k + 1235554) = 629856 * k + 617777 := by
    unfold C
    simp [show (1259712 * k + 1235554) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 617777) = 1889568 * k + 1853332 := by
    unfold C
    simp [show (629856 * k + 617777) % 2 ≠ 0 by omega]
    omega
  have h24 : C (1889568 * k + 1853332) = 944784 * k + 926666 := by
    unfold C
    simp [show (1889568 * k + 1853332) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 926666) = 472392 * k + 463333 := by
    unfold C
    simp [show (944784 * k + 926666) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 463333) = 1417176 * k + 1390000 := by
    unfold C
    simp [show (472392 * k + 463333) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 1390000) = 708588 * k + 695000 := by
    unfold C
    simp [show (1417176 * k + 1390000) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 695000) = 354294 * k + 347500 := by
    unfold C
    simp [show (708588 * k + 695000) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 347500) = 177147 * k + 173750 := by
    unfold C
    simp [show (354294 * k + 347500) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 257115) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 257115))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_257275 : ∀ k : Nat,
    iterate (262144 * k + 257275) 29 = 177147 * k + 173858 ∧
      177147 * k + 173858 < 262144 * k + 257275 := by
  intro k
  have h1 : C (262144 * k + 257275) = 786432 * k + 771826 := by
    unfold C
    simp [show (262144 * k + 257275) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 771826) = 393216 * k + 385913 := by
    unfold C
    simp [show (786432 * k + 771826) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 385913) = 1179648 * k + 1157740 := by
    unfold C
    simp [show (393216 * k + 385913) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 1157740) = 589824 * k + 578870 := by
    unfold C
    simp [show (1179648 * k + 1157740) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 578870) = 294912 * k + 289435 := by
    unfold C
    simp [show (589824 * k + 578870) % 2 = 0 by omega]
    omega
  have h6 : C (294912 * k + 289435) = 884736 * k + 868306 := by
    unfold C
    simp [show (294912 * k + 289435) % 2 ≠ 0 by omega]
    omega
  have h7 : C (884736 * k + 868306) = 442368 * k + 434153 := by
    unfold C
    simp [show (884736 * k + 868306) % 2 = 0 by omega]
    omega
  have h8 : C (442368 * k + 434153) = 1327104 * k + 1302460 := by
    unfold C
    simp [show (442368 * k + 434153) % 2 ≠ 0 by omega]
    omega
  have h9 : C (1327104 * k + 1302460) = 663552 * k + 651230 := by
    unfold C
    simp [show (1327104 * k + 1302460) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 651230) = 331776 * k + 325615 := by
    unfold C
    simp [show (663552 * k + 651230) % 2 = 0 by omega]
    omega
  have h11 : C (331776 * k + 325615) = 995328 * k + 976846 := by
    unfold C
    simp [show (331776 * k + 325615) % 2 ≠ 0 by omega]
    omega
  have h12 : C (995328 * k + 976846) = 497664 * k + 488423 := by
    unfold C
    simp [show (995328 * k + 976846) % 2 = 0 by omega]
    omega
  have h13 : C (497664 * k + 488423) = 1492992 * k + 1465270 := by
    unfold C
    simp [show (497664 * k + 488423) % 2 ≠ 0 by omega]
    omega
  have h14 : C (1492992 * k + 1465270) = 746496 * k + 732635 := by
    unfold C
    simp [show (1492992 * k + 1465270) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 732635) = 2239488 * k + 2197906 := by
    unfold C
    simp [show (746496 * k + 732635) % 2 ≠ 0 by omega]
    omega
  have h16 : C (2239488 * k + 2197906) = 1119744 * k + 1098953 := by
    unfold C
    simp [show (2239488 * k + 2197906) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 1098953) = 3359232 * k + 3296860 := by
    unfold C
    simp [show (1119744 * k + 1098953) % 2 ≠ 0 by omega]
    omega
  have h18 : C (3359232 * k + 3296860) = 1679616 * k + 1648430 := by
    unfold C
    simp [show (3359232 * k + 3296860) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 1648430) = 839808 * k + 824215 := by
    unfold C
    simp [show (1679616 * k + 1648430) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 824215) = 2519424 * k + 2472646 := by
    unfold C
    simp [show (839808 * k + 824215) % 2 ≠ 0 by omega]
    omega
  have h21 : C (2519424 * k + 2472646) = 1259712 * k + 1236323 := by
    unfold C
    simp [show (2519424 * k + 2472646) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 1236323) = 3779136 * k + 3708970 := by
    unfold C
    simp [show (1259712 * k + 1236323) % 2 ≠ 0 by omega]
    omega
  have h23 : C (3779136 * k + 3708970) = 1889568 * k + 1854485 := by
    unfold C
    simp [show (3779136 * k + 3708970) % 2 = 0 by omega]
    omega
  have h24 : C (1889568 * k + 1854485) = 5668704 * k + 5563456 := by
    unfold C
    simp [show (1889568 * k + 1854485) % 2 ≠ 0 by omega]
    omega
  have h25 : C (5668704 * k + 5563456) = 2834352 * k + 2781728 := by
    unfold C
    simp [show (5668704 * k + 5563456) % 2 = 0 by omega]
    omega
  have h26 : C (2834352 * k + 2781728) = 1417176 * k + 1390864 := by
    unfold C
    simp [show (2834352 * k + 2781728) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 1390864) = 708588 * k + 695432 := by
    unfold C
    simp [show (1417176 * k + 1390864) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 695432) = 354294 * k + 347716 := by
    unfold C
    simp [show (708588 * k + 695432) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 347716) = 177147 * k + 173858 := by
    unfold C
    simp [show (354294 * k + 347716) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 257275) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 257275))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_257471 : ∀ k : Nat,
    iterate (262144 * k + 257471) 29 = 177147 * k + 173990 ∧
      177147 * k + 173990 < 262144 * k + 257471 := by
  intro k
  have h1 : C (262144 * k + 257471) = 786432 * k + 772414 := by
    unfold C
    simp [show (262144 * k + 257471) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 772414) = 393216 * k + 386207 := by
    unfold C
    simp [show (786432 * k + 772414) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 386207) = 1179648 * k + 1158622 := by
    unfold C
    simp [show (393216 * k + 386207) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 1158622) = 589824 * k + 579311 := by
    unfold C
    simp [show (1179648 * k + 1158622) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 579311) = 1769472 * k + 1737934 := by
    unfold C
    simp [show (589824 * k + 579311) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 1737934) = 884736 * k + 868967 := by
    unfold C
    simp [show (1769472 * k + 1737934) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 868967) = 2654208 * k + 2606902 := by
    unfold C
    simp [show (884736 * k + 868967) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 2606902) = 1327104 * k + 1303451 := by
    unfold C
    simp [show (2654208 * k + 2606902) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 1303451) = 3981312 * k + 3910354 := by
    unfold C
    simp [show (1327104 * k + 1303451) % 2 ≠ 0 by omega]
    omega
  have h10 : C (3981312 * k + 3910354) = 1990656 * k + 1955177 := by
    unfold C
    simp [show (3981312 * k + 3910354) % 2 = 0 by omega]
    omega
  have h11 : C (1990656 * k + 1955177) = 5971968 * k + 5865532 := by
    unfold C
    simp [show (1990656 * k + 1955177) % 2 ≠ 0 by omega]
    omega
  have h12 : C (5971968 * k + 5865532) = 2985984 * k + 2932766 := by
    unfold C
    simp [show (5971968 * k + 5865532) % 2 = 0 by omega]
    omega
  have h13 : C (2985984 * k + 2932766) = 1492992 * k + 1466383 := by
    unfold C
    simp [show (2985984 * k + 2932766) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 1466383) = 4478976 * k + 4399150 := by
    unfold C
    simp [show (1492992 * k + 1466383) % 2 ≠ 0 by omega]
    omega
  have h15 : C (4478976 * k + 4399150) = 2239488 * k + 2199575 := by
    unfold C
    simp [show (4478976 * k + 4399150) % 2 = 0 by omega]
    omega
  have h16 : C (2239488 * k + 2199575) = 6718464 * k + 6598726 := by
    unfold C
    simp [show (2239488 * k + 2199575) % 2 ≠ 0 by omega]
    omega
  have h17 : C (6718464 * k + 6598726) = 3359232 * k + 3299363 := by
    unfold C
    simp [show (6718464 * k + 6598726) % 2 = 0 by omega]
    omega
  have h18 : C (3359232 * k + 3299363) = 10077696 * k + 9898090 := by
    unfold C
    simp [show (3359232 * k + 3299363) % 2 ≠ 0 by omega]
    omega
  have h19 : C (10077696 * k + 9898090) = 5038848 * k + 4949045 := by
    unfold C
    simp [show (10077696 * k + 9898090) % 2 = 0 by omega]
    omega
  have h20 : C (5038848 * k + 4949045) = 15116544 * k + 14847136 := by
    unfold C
    simp [show (5038848 * k + 4949045) % 2 ≠ 0 by omega]
    omega
  have h21 : C (15116544 * k + 14847136) = 7558272 * k + 7423568 := by
    unfold C
    simp [show (15116544 * k + 14847136) % 2 = 0 by omega]
    omega
  have h22 : C (7558272 * k + 7423568) = 3779136 * k + 3711784 := by
    unfold C
    simp [show (7558272 * k + 7423568) % 2 = 0 by omega]
    omega
  have h23 : C (3779136 * k + 3711784) = 1889568 * k + 1855892 := by
    unfold C
    simp [show (3779136 * k + 3711784) % 2 = 0 by omega]
    omega
  have h24 : C (1889568 * k + 1855892) = 944784 * k + 927946 := by
    unfold C
    simp [show (1889568 * k + 1855892) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 927946) = 472392 * k + 463973 := by
    unfold C
    simp [show (944784 * k + 927946) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 463973) = 1417176 * k + 1391920 := by
    unfold C
    simp [show (472392 * k + 463973) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 1391920) = 708588 * k + 695960 := by
    unfold C
    simp [show (1417176 * k + 1391920) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 695960) = 354294 * k + 347980 := by
    unfold C
    simp [show (708588 * k + 695960) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 347980) = 177147 * k + 173990 := by
    unfold C
    simp [show (354294 * k + 347980) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 257471) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 257471))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_257691 : ∀ k : Nat,
    iterate (262144 * k + 257691) 29 = 177147 * k + 174139 ∧
      177147 * k + 174139 < 262144 * k + 257691 := by
  intro k
  have h1 : C (262144 * k + 257691) = 786432 * k + 773074 := by
    unfold C
    simp [show (262144 * k + 257691) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 773074) = 393216 * k + 386537 := by
    unfold C
    simp [show (786432 * k + 773074) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 386537) = 1179648 * k + 1159612 := by
    unfold C
    simp [show (393216 * k + 386537) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 1159612) = 589824 * k + 579806 := by
    unfold C
    simp [show (1179648 * k + 1159612) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 579806) = 294912 * k + 289903 := by
    unfold C
    simp [show (589824 * k + 579806) % 2 = 0 by omega]
    omega
  have h6 : C (294912 * k + 289903) = 884736 * k + 869710 := by
    unfold C
    simp [show (294912 * k + 289903) % 2 ≠ 0 by omega]
    omega
  have h7 : C (884736 * k + 869710) = 442368 * k + 434855 := by
    unfold C
    simp [show (884736 * k + 869710) % 2 = 0 by omega]
    omega
  have h8 : C (442368 * k + 434855) = 1327104 * k + 1304566 := by
    unfold C
    simp [show (442368 * k + 434855) % 2 ≠ 0 by omega]
    omega
  have h9 : C (1327104 * k + 1304566) = 663552 * k + 652283 := by
    unfold C
    simp [show (1327104 * k + 1304566) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 652283) = 1990656 * k + 1956850 := by
    unfold C
    simp [show (663552 * k + 652283) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 1956850) = 995328 * k + 978425 := by
    unfold C
    simp [show (1990656 * k + 1956850) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 978425) = 2985984 * k + 2935276 := by
    unfold C
    simp [show (995328 * k + 978425) % 2 ≠ 0 by omega]
    omega
  have h13 : C (2985984 * k + 2935276) = 1492992 * k + 1467638 := by
    unfold C
    simp [show (2985984 * k + 2935276) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 1467638) = 746496 * k + 733819 := by
    unfold C
    simp [show (1492992 * k + 1467638) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 733819) = 2239488 * k + 2201458 := by
    unfold C
    simp [show (746496 * k + 733819) % 2 ≠ 0 by omega]
    omega
  have h16 : C (2239488 * k + 2201458) = 1119744 * k + 1100729 := by
    unfold C
    simp [show (2239488 * k + 2201458) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 1100729) = 3359232 * k + 3302188 := by
    unfold C
    simp [show (1119744 * k + 1100729) % 2 ≠ 0 by omega]
    omega
  have h18 : C (3359232 * k + 3302188) = 1679616 * k + 1651094 := by
    unfold C
    simp [show (3359232 * k + 3302188) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 1651094) = 839808 * k + 825547 := by
    unfold C
    simp [show (1679616 * k + 1651094) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 825547) = 2519424 * k + 2476642 := by
    unfold C
    simp [show (839808 * k + 825547) % 2 ≠ 0 by omega]
    omega
  have h21 : C (2519424 * k + 2476642) = 1259712 * k + 1238321 := by
    unfold C
    simp [show (2519424 * k + 2476642) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 1238321) = 3779136 * k + 3714964 := by
    unfold C
    simp [show (1259712 * k + 1238321) % 2 ≠ 0 by omega]
    omega
  have h23 : C (3779136 * k + 3714964) = 1889568 * k + 1857482 := by
    unfold C
    simp [show (3779136 * k + 3714964) % 2 = 0 by omega]
    omega
  have h24 : C (1889568 * k + 1857482) = 944784 * k + 928741 := by
    unfold C
    simp [show (1889568 * k + 1857482) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 928741) = 2834352 * k + 2786224 := by
    unfold C
    simp [show (944784 * k + 928741) % 2 ≠ 0 by omega]
    omega
  have h26 : C (2834352 * k + 2786224) = 1417176 * k + 1393112 := by
    unfold C
    simp [show (2834352 * k + 2786224) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 1393112) = 708588 * k + 696556 := by
    unfold C
    simp [show (1417176 * k + 1393112) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 696556) = 354294 * k + 348278 := by
    unfold C
    simp [show (708588 * k + 696556) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 348278) = 177147 * k + 174139 := by
    unfold C
    simp [show (354294 * k + 348278) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 257691) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 257691))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

end CollatzM18Shard047
