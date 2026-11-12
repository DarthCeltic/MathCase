import Mathlib.Data.Nat.Prime.Basic

namespace CollatzM18Shard034

def C (n : Nat) : Nat := if n % 2 = 0 then n / 2 else 3 * n + 1

def iterate (n t : Nat) : Nat := Nat.rec n (fun _ previous => C previous) t

theorem descent_mod262144_175775 : ∀ k : Nat,
    iterate (262144 * k + 175775) 29 = 177147 * k + 118783 ∧
      177147 * k + 118783 < 262144 * k + 175775 := by
  intro k
  have h1 : C (262144 * k + 175775) = 786432 * k + 527326 := by
    unfold C
    simp [show (262144 * k + 175775) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 527326) = 393216 * k + 263663 := by
    unfold C
    simp [show (786432 * k + 527326) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 263663) = 1179648 * k + 790990 := by
    unfold C
    simp [show (393216 * k + 263663) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 790990) = 589824 * k + 395495 := by
    unfold C
    simp [show (1179648 * k + 790990) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 395495) = 1769472 * k + 1186486 := by
    unfold C
    simp [show (589824 * k + 395495) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 1186486) = 884736 * k + 593243 := by
    unfold C
    simp [show (1769472 * k + 1186486) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 593243) = 2654208 * k + 1779730 := by
    unfold C
    simp [show (884736 * k + 593243) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 1779730) = 1327104 * k + 889865 := by
    unfold C
    simp [show (2654208 * k + 1779730) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 889865) = 3981312 * k + 2669596 := by
    unfold C
    simp [show (1327104 * k + 889865) % 2 ≠ 0 by omega]
    omega
  have h10 : C (3981312 * k + 2669596) = 1990656 * k + 1334798 := by
    unfold C
    simp [show (3981312 * k + 2669596) % 2 = 0 by omega]
    omega
  have h11 : C (1990656 * k + 1334798) = 995328 * k + 667399 := by
    unfold C
    simp [show (1990656 * k + 1334798) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 667399) = 2985984 * k + 2002198 := by
    unfold C
    simp [show (995328 * k + 667399) % 2 ≠ 0 by omega]
    omega
  have h13 : C (2985984 * k + 2002198) = 1492992 * k + 1001099 := by
    unfold C
    simp [show (2985984 * k + 2002198) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 1001099) = 4478976 * k + 3003298 := by
    unfold C
    simp [show (1492992 * k + 1001099) % 2 ≠ 0 by omega]
    omega
  have h15 : C (4478976 * k + 3003298) = 2239488 * k + 1501649 := by
    unfold C
    simp [show (4478976 * k + 3003298) % 2 = 0 by omega]
    omega
  have h16 : C (2239488 * k + 1501649) = 6718464 * k + 4504948 := by
    unfold C
    simp [show (2239488 * k + 1501649) % 2 ≠ 0 by omega]
    omega
  have h17 : C (6718464 * k + 4504948) = 3359232 * k + 2252474 := by
    unfold C
    simp [show (6718464 * k + 4504948) % 2 = 0 by omega]
    omega
  have h18 : C (3359232 * k + 2252474) = 1679616 * k + 1126237 := by
    unfold C
    simp [show (3359232 * k + 2252474) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 1126237) = 5038848 * k + 3378712 := by
    unfold C
    simp [show (1679616 * k + 1126237) % 2 ≠ 0 by omega]
    omega
  have h20 : C (5038848 * k + 3378712) = 2519424 * k + 1689356 := by
    unfold C
    simp [show (5038848 * k + 3378712) % 2 = 0 by omega]
    omega
  have h21 : C (2519424 * k + 1689356) = 1259712 * k + 844678 := by
    unfold C
    simp [show (2519424 * k + 1689356) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 844678) = 629856 * k + 422339 := by
    unfold C
    simp [show (1259712 * k + 844678) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 422339) = 1889568 * k + 1267018 := by
    unfold C
    simp [show (629856 * k + 422339) % 2 ≠ 0 by omega]
    omega
  have h24 : C (1889568 * k + 1267018) = 944784 * k + 633509 := by
    unfold C
    simp [show (1889568 * k + 1267018) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 633509) = 2834352 * k + 1900528 := by
    unfold C
    simp [show (944784 * k + 633509) % 2 ≠ 0 by omega]
    omega
  have h26 : C (2834352 * k + 1900528) = 1417176 * k + 950264 := by
    unfold C
    simp [show (2834352 * k + 1900528) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 950264) = 708588 * k + 475132 := by
    unfold C
    simp [show (1417176 * k + 950264) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 475132) = 354294 * k + 237566 := by
    unfold C
    simp [show (708588 * k + 475132) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 237566) = 177147 * k + 118783 := by
    unfold C
    simp [show (354294 * k + 237566) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 175775) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 175775))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_175847 : ∀ k : Nat,
    iterate (262144 * k + 175847) 29 = 177147 * k + 118832 ∧
      177147 * k + 118832 < 262144 * k + 175847 := by
  intro k
  have h1 : C (262144 * k + 175847) = 786432 * k + 527542 := by
    unfold C
    simp [show (262144 * k + 175847) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 527542) = 393216 * k + 263771 := by
    unfold C
    simp [show (786432 * k + 527542) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 263771) = 1179648 * k + 791314 := by
    unfold C
    simp [show (393216 * k + 263771) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 791314) = 589824 * k + 395657 := by
    unfold C
    simp [show (1179648 * k + 791314) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 395657) = 1769472 * k + 1186972 := by
    unfold C
    simp [show (589824 * k + 395657) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 1186972) = 884736 * k + 593486 := by
    unfold C
    simp [show (1769472 * k + 1186972) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 593486) = 442368 * k + 296743 := by
    unfold C
    simp [show (884736 * k + 593486) % 2 = 0 by omega]
    omega
  have h8 : C (442368 * k + 296743) = 1327104 * k + 890230 := by
    unfold C
    simp [show (442368 * k + 296743) % 2 ≠ 0 by omega]
    omega
  have h9 : C (1327104 * k + 890230) = 663552 * k + 445115 := by
    unfold C
    simp [show (1327104 * k + 890230) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 445115) = 1990656 * k + 1335346 := by
    unfold C
    simp [show (663552 * k + 445115) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 1335346) = 995328 * k + 667673 := by
    unfold C
    simp [show (1990656 * k + 1335346) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 667673) = 2985984 * k + 2003020 := by
    unfold C
    simp [show (995328 * k + 667673) % 2 ≠ 0 by omega]
    omega
  have h13 : C (2985984 * k + 2003020) = 1492992 * k + 1001510 := by
    unfold C
    simp [show (2985984 * k + 2003020) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 1001510) = 746496 * k + 500755 := by
    unfold C
    simp [show (1492992 * k + 1001510) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 500755) = 2239488 * k + 1502266 := by
    unfold C
    simp [show (746496 * k + 500755) % 2 ≠ 0 by omega]
    omega
  have h16 : C (2239488 * k + 1502266) = 1119744 * k + 751133 := by
    unfold C
    simp [show (2239488 * k + 1502266) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 751133) = 3359232 * k + 2253400 := by
    unfold C
    simp [show (1119744 * k + 751133) % 2 ≠ 0 by omega]
    omega
  have h18 : C (3359232 * k + 2253400) = 1679616 * k + 1126700 := by
    unfold C
    simp [show (3359232 * k + 2253400) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 1126700) = 839808 * k + 563350 := by
    unfold C
    simp [show (1679616 * k + 1126700) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 563350) = 419904 * k + 281675 := by
    unfold C
    simp [show (839808 * k + 563350) % 2 = 0 by omega]
    omega
  have h21 : C (419904 * k + 281675) = 1259712 * k + 845026 := by
    unfold C
    simp [show (419904 * k + 281675) % 2 ≠ 0 by omega]
    omega
  have h22 : C (1259712 * k + 845026) = 629856 * k + 422513 := by
    unfold C
    simp [show (1259712 * k + 845026) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 422513) = 1889568 * k + 1267540 := by
    unfold C
    simp [show (629856 * k + 422513) % 2 ≠ 0 by omega]
    omega
  have h24 : C (1889568 * k + 1267540) = 944784 * k + 633770 := by
    unfold C
    simp [show (1889568 * k + 1267540) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 633770) = 472392 * k + 316885 := by
    unfold C
    simp [show (944784 * k + 633770) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 316885) = 1417176 * k + 950656 := by
    unfold C
    simp [show (472392 * k + 316885) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 950656) = 708588 * k + 475328 := by
    unfold C
    simp [show (1417176 * k + 950656) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 475328) = 354294 * k + 237664 := by
    unfold C
    simp [show (708588 * k + 475328) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 237664) = 177147 * k + 118832 := by
    unfold C
    simp [show (354294 * k + 237664) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 175847) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 175847))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_176335 : ∀ k : Nat,
    iterate (262144 * k + 176335) 29 = 177147 * k + 119162 ∧
      177147 * k + 119162 < 262144 * k + 176335 := by
  intro k
  have h1 : C (262144 * k + 176335) = 786432 * k + 529006 := by
    unfold C
    simp [show (262144 * k + 176335) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 529006) = 393216 * k + 264503 := by
    unfold C
    simp [show (786432 * k + 529006) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 264503) = 1179648 * k + 793510 := by
    unfold C
    simp [show (393216 * k + 264503) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 793510) = 589824 * k + 396755 := by
    unfold C
    simp [show (1179648 * k + 793510) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 396755) = 1769472 * k + 1190266 := by
    unfold C
    simp [show (589824 * k + 396755) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 1190266) = 884736 * k + 595133 := by
    unfold C
    simp [show (1769472 * k + 1190266) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 595133) = 2654208 * k + 1785400 := by
    unfold C
    simp [show (884736 * k + 595133) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 1785400) = 1327104 * k + 892700 := by
    unfold C
    simp [show (2654208 * k + 1785400) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 892700) = 663552 * k + 446350 := by
    unfold C
    simp [show (1327104 * k + 892700) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 446350) = 331776 * k + 223175 := by
    unfold C
    simp [show (663552 * k + 446350) % 2 = 0 by omega]
    omega
  have h11 : C (331776 * k + 223175) = 995328 * k + 669526 := by
    unfold C
    simp [show (331776 * k + 223175) % 2 ≠ 0 by omega]
    omega
  have h12 : C (995328 * k + 669526) = 497664 * k + 334763 := by
    unfold C
    simp [show (995328 * k + 669526) % 2 = 0 by omega]
    omega
  have h13 : C (497664 * k + 334763) = 1492992 * k + 1004290 := by
    unfold C
    simp [show (497664 * k + 334763) % 2 ≠ 0 by omega]
    omega
  have h14 : C (1492992 * k + 1004290) = 746496 * k + 502145 := by
    unfold C
    simp [show (1492992 * k + 1004290) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 502145) = 2239488 * k + 1506436 := by
    unfold C
    simp [show (746496 * k + 502145) % 2 ≠ 0 by omega]
    omega
  have h16 : C (2239488 * k + 1506436) = 1119744 * k + 753218 := by
    unfold C
    simp [show (2239488 * k + 1506436) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 753218) = 559872 * k + 376609 := by
    unfold C
    simp [show (1119744 * k + 753218) % 2 = 0 by omega]
    omega
  have h18 : C (559872 * k + 376609) = 1679616 * k + 1129828 := by
    unfold C
    simp [show (559872 * k + 376609) % 2 ≠ 0 by omega]
    omega
  have h19 : C (1679616 * k + 1129828) = 839808 * k + 564914 := by
    unfold C
    simp [show (1679616 * k + 1129828) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 564914) = 419904 * k + 282457 := by
    unfold C
    simp [show (839808 * k + 564914) % 2 = 0 by omega]
    omega
  have h21 : C (419904 * k + 282457) = 1259712 * k + 847372 := by
    unfold C
    simp [show (419904 * k + 282457) % 2 ≠ 0 by omega]
    omega
  have h22 : C (1259712 * k + 847372) = 629856 * k + 423686 := by
    unfold C
    simp [show (1259712 * k + 847372) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 423686) = 314928 * k + 211843 := by
    unfold C
    simp [show (629856 * k + 423686) % 2 = 0 by omega]
    omega
  have h24 : C (314928 * k + 211843) = 944784 * k + 635530 := by
    unfold C
    simp [show (314928 * k + 211843) % 2 ≠ 0 by omega]
    omega
  have h25 : C (944784 * k + 635530) = 472392 * k + 317765 := by
    unfold C
    simp [show (944784 * k + 635530) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 317765) = 1417176 * k + 953296 := by
    unfold C
    simp [show (472392 * k + 317765) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 953296) = 708588 * k + 476648 := by
    unfold C
    simp [show (1417176 * k + 953296) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 476648) = 354294 * k + 238324 := by
    unfold C
    simp [show (708588 * k + 476648) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 238324) = 177147 * k + 119162 := by
    unfold C
    simp [show (354294 * k + 238324) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 176335) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 176335))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_176367 : ∀ k : Nat,
    iterate (262144 * k + 176367) 29 = 177147 * k + 119183 ∧
      177147 * k + 119183 < 262144 * k + 176367 := by
  intro k
  have h1 : C (262144 * k + 176367) = 786432 * k + 529102 := by
    unfold C
    simp [show (262144 * k + 176367) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 529102) = 393216 * k + 264551 := by
    unfold C
    simp [show (786432 * k + 529102) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 264551) = 1179648 * k + 793654 := by
    unfold C
    simp [show (393216 * k + 264551) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 793654) = 589824 * k + 396827 := by
    unfold C
    simp [show (1179648 * k + 793654) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 396827) = 1769472 * k + 1190482 := by
    unfold C
    simp [show (589824 * k + 396827) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 1190482) = 884736 * k + 595241 := by
    unfold C
    simp [show (1769472 * k + 1190482) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 595241) = 2654208 * k + 1785724 := by
    unfold C
    simp [show (884736 * k + 595241) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 1785724) = 1327104 * k + 892862 := by
    unfold C
    simp [show (2654208 * k + 1785724) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 892862) = 663552 * k + 446431 := by
    unfold C
    simp [show (1327104 * k + 892862) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 446431) = 1990656 * k + 1339294 := by
    unfold C
    simp [show (663552 * k + 446431) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 1339294) = 995328 * k + 669647 := by
    unfold C
    simp [show (1990656 * k + 1339294) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 669647) = 2985984 * k + 2008942 := by
    unfold C
    simp [show (995328 * k + 669647) % 2 ≠ 0 by omega]
    omega
  have h13 : C (2985984 * k + 2008942) = 1492992 * k + 1004471 := by
    unfold C
    simp [show (2985984 * k + 2008942) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 1004471) = 4478976 * k + 3013414 := by
    unfold C
    simp [show (1492992 * k + 1004471) % 2 ≠ 0 by omega]
    omega
  have h15 : C (4478976 * k + 3013414) = 2239488 * k + 1506707 := by
    unfold C
    simp [show (4478976 * k + 3013414) % 2 = 0 by omega]
    omega
  have h16 : C (2239488 * k + 1506707) = 6718464 * k + 4520122 := by
    unfold C
    simp [show (2239488 * k + 1506707) % 2 ≠ 0 by omega]
    omega
  have h17 : C (6718464 * k + 4520122) = 3359232 * k + 2260061 := by
    unfold C
    simp [show (6718464 * k + 4520122) % 2 = 0 by omega]
    omega
  have h18 : C (3359232 * k + 2260061) = 10077696 * k + 6780184 := by
    unfold C
    simp [show (3359232 * k + 2260061) % 2 ≠ 0 by omega]
    omega
  have h19 : C (10077696 * k + 6780184) = 5038848 * k + 3390092 := by
    unfold C
    simp [show (10077696 * k + 6780184) % 2 = 0 by omega]
    omega
  have h20 : C (5038848 * k + 3390092) = 2519424 * k + 1695046 := by
    unfold C
    simp [show (5038848 * k + 3390092) % 2 = 0 by omega]
    omega
  have h21 : C (2519424 * k + 1695046) = 1259712 * k + 847523 := by
    unfold C
    simp [show (2519424 * k + 1695046) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 847523) = 3779136 * k + 2542570 := by
    unfold C
    simp [show (1259712 * k + 847523) % 2 ≠ 0 by omega]
    omega
  have h23 : C (3779136 * k + 2542570) = 1889568 * k + 1271285 := by
    unfold C
    simp [show (3779136 * k + 2542570) % 2 = 0 by omega]
    omega
  have h24 : C (1889568 * k + 1271285) = 5668704 * k + 3813856 := by
    unfold C
    simp [show (1889568 * k + 1271285) % 2 ≠ 0 by omega]
    omega
  have h25 : C (5668704 * k + 3813856) = 2834352 * k + 1906928 := by
    unfold C
    simp [show (5668704 * k + 3813856) % 2 = 0 by omega]
    omega
  have h26 : C (2834352 * k + 1906928) = 1417176 * k + 953464 := by
    unfold C
    simp [show (2834352 * k + 1906928) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 953464) = 708588 * k + 476732 := by
    unfold C
    simp [show (1417176 * k + 953464) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 476732) = 354294 * k + 238366 := by
    unfold C
    simp [show (708588 * k + 476732) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 238366) = 177147 * k + 119183 := by
    unfold C
    simp [show (354294 * k + 238366) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 176367) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 176367))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_176455 : ∀ k : Nat,
    iterate (262144 * k + 176455) 29 = 177147 * k + 119243 ∧
      177147 * k + 119243 < 262144 * k + 176455 := by
  intro k
  have h1 : C (262144 * k + 176455) = 786432 * k + 529366 := by
    unfold C
    simp [show (262144 * k + 176455) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 529366) = 393216 * k + 264683 := by
    unfold C
    simp [show (786432 * k + 529366) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 264683) = 1179648 * k + 794050 := by
    unfold C
    simp [show (393216 * k + 264683) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 794050) = 589824 * k + 397025 := by
    unfold C
    simp [show (1179648 * k + 794050) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 397025) = 1769472 * k + 1191076 := by
    unfold C
    simp [show (589824 * k + 397025) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 1191076) = 884736 * k + 595538 := by
    unfold C
    simp [show (1769472 * k + 1191076) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 595538) = 442368 * k + 297769 := by
    unfold C
    simp [show (884736 * k + 595538) % 2 = 0 by omega]
    omega
  have h8 : C (442368 * k + 297769) = 1327104 * k + 893308 := by
    unfold C
    simp [show (442368 * k + 297769) % 2 ≠ 0 by omega]
    omega
  have h9 : C (1327104 * k + 893308) = 663552 * k + 446654 := by
    unfold C
    simp [show (1327104 * k + 893308) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 446654) = 331776 * k + 223327 := by
    unfold C
    simp [show (663552 * k + 446654) % 2 = 0 by omega]
    omega
  have h11 : C (331776 * k + 223327) = 995328 * k + 669982 := by
    unfold C
    simp [show (331776 * k + 223327) % 2 ≠ 0 by omega]
    omega
  have h12 : C (995328 * k + 669982) = 497664 * k + 334991 := by
    unfold C
    simp [show (995328 * k + 669982) % 2 = 0 by omega]
    omega
  have h13 : C (497664 * k + 334991) = 1492992 * k + 1004974 := by
    unfold C
    simp [show (497664 * k + 334991) % 2 ≠ 0 by omega]
    omega
  have h14 : C (1492992 * k + 1004974) = 746496 * k + 502487 := by
    unfold C
    simp [show (1492992 * k + 1004974) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 502487) = 2239488 * k + 1507462 := by
    unfold C
    simp [show (746496 * k + 502487) % 2 ≠ 0 by omega]
    omega
  have h16 : C (2239488 * k + 1507462) = 1119744 * k + 753731 := by
    unfold C
    simp [show (2239488 * k + 1507462) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 753731) = 3359232 * k + 2261194 := by
    unfold C
    simp [show (1119744 * k + 753731) % 2 ≠ 0 by omega]
    omega
  have h18 : C (3359232 * k + 2261194) = 1679616 * k + 1130597 := by
    unfold C
    simp [show (3359232 * k + 2261194) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 1130597) = 5038848 * k + 3391792 := by
    unfold C
    simp [show (1679616 * k + 1130597) % 2 ≠ 0 by omega]
    omega
  have h20 : C (5038848 * k + 3391792) = 2519424 * k + 1695896 := by
    unfold C
    simp [show (5038848 * k + 3391792) % 2 = 0 by omega]
    omega
  have h21 : C (2519424 * k + 1695896) = 1259712 * k + 847948 := by
    unfold C
    simp [show (2519424 * k + 1695896) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 847948) = 629856 * k + 423974 := by
    unfold C
    simp [show (1259712 * k + 847948) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 423974) = 314928 * k + 211987 := by
    unfold C
    simp [show (629856 * k + 423974) % 2 = 0 by omega]
    omega
  have h24 : C (314928 * k + 211987) = 944784 * k + 635962 := by
    unfold C
    simp [show (314928 * k + 211987) % 2 ≠ 0 by omega]
    omega
  have h25 : C (944784 * k + 635962) = 472392 * k + 317981 := by
    unfold C
    simp [show (944784 * k + 635962) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 317981) = 1417176 * k + 953944 := by
    unfold C
    simp [show (472392 * k + 317981) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 953944) = 708588 * k + 476972 := by
    unfold C
    simp [show (1417176 * k + 953944) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 476972) = 354294 * k + 238486 := by
    unfold C
    simp [show (708588 * k + 476972) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 238486) = 177147 * k + 119243 := by
    unfold C
    simp [show (354294 * k + 238486) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 176455) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 176455))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_176543 : ∀ k : Nat,
    iterate (262144 * k + 176543) 29 = 177147 * k + 119302 ∧
      177147 * k + 119302 < 262144 * k + 176543 := by
  intro k
  have h1 : C (262144 * k + 176543) = 786432 * k + 529630 := by
    unfold C
    simp [show (262144 * k + 176543) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 529630) = 393216 * k + 264815 := by
    unfold C
    simp [show (786432 * k + 529630) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 264815) = 1179648 * k + 794446 := by
    unfold C
    simp [show (393216 * k + 264815) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 794446) = 589824 * k + 397223 := by
    unfold C
    simp [show (1179648 * k + 794446) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 397223) = 1769472 * k + 1191670 := by
    unfold C
    simp [show (589824 * k + 397223) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 1191670) = 884736 * k + 595835 := by
    unfold C
    simp [show (1769472 * k + 1191670) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 595835) = 2654208 * k + 1787506 := by
    unfold C
    simp [show (884736 * k + 595835) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 1787506) = 1327104 * k + 893753 := by
    unfold C
    simp [show (2654208 * k + 1787506) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 893753) = 3981312 * k + 2681260 := by
    unfold C
    simp [show (1327104 * k + 893753) % 2 ≠ 0 by omega]
    omega
  have h10 : C (3981312 * k + 2681260) = 1990656 * k + 1340630 := by
    unfold C
    simp [show (3981312 * k + 2681260) % 2 = 0 by omega]
    omega
  have h11 : C (1990656 * k + 1340630) = 995328 * k + 670315 := by
    unfold C
    simp [show (1990656 * k + 1340630) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 670315) = 2985984 * k + 2010946 := by
    unfold C
    simp [show (995328 * k + 670315) % 2 ≠ 0 by omega]
    omega
  have h13 : C (2985984 * k + 2010946) = 1492992 * k + 1005473 := by
    unfold C
    simp [show (2985984 * k + 2010946) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 1005473) = 4478976 * k + 3016420 := by
    unfold C
    simp [show (1492992 * k + 1005473) % 2 ≠ 0 by omega]
    omega
  have h15 : C (4478976 * k + 3016420) = 2239488 * k + 1508210 := by
    unfold C
    simp [show (4478976 * k + 3016420) % 2 = 0 by omega]
    omega
  have h16 : C (2239488 * k + 1508210) = 1119744 * k + 754105 := by
    unfold C
    simp [show (2239488 * k + 1508210) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 754105) = 3359232 * k + 2262316 := by
    unfold C
    simp [show (1119744 * k + 754105) % 2 ≠ 0 by omega]
    omega
  have h18 : C (3359232 * k + 2262316) = 1679616 * k + 1131158 := by
    unfold C
    simp [show (3359232 * k + 2262316) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 1131158) = 839808 * k + 565579 := by
    unfold C
    simp [show (1679616 * k + 1131158) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 565579) = 2519424 * k + 1696738 := by
    unfold C
    simp [show (839808 * k + 565579) % 2 ≠ 0 by omega]
    omega
  have h21 : C (2519424 * k + 1696738) = 1259712 * k + 848369 := by
    unfold C
    simp [show (2519424 * k + 1696738) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 848369) = 3779136 * k + 2545108 := by
    unfold C
    simp [show (1259712 * k + 848369) % 2 ≠ 0 by omega]
    omega
  have h23 : C (3779136 * k + 2545108) = 1889568 * k + 1272554 := by
    unfold C
    simp [show (3779136 * k + 2545108) % 2 = 0 by omega]
    omega
  have h24 : C (1889568 * k + 1272554) = 944784 * k + 636277 := by
    unfold C
    simp [show (1889568 * k + 1272554) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 636277) = 2834352 * k + 1908832 := by
    unfold C
    simp [show (944784 * k + 636277) % 2 ≠ 0 by omega]
    omega
  have h26 : C (2834352 * k + 1908832) = 1417176 * k + 954416 := by
    unfold C
    simp [show (2834352 * k + 1908832) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 954416) = 708588 * k + 477208 := by
    unfold C
    simp [show (1417176 * k + 954416) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 477208) = 354294 * k + 238604 := by
    unfold C
    simp [show (708588 * k + 477208) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 238604) = 177147 * k + 119302 := by
    unfold C
    simp [show (354294 * k + 238604) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 176543) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 176543))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_176615 : ∀ k : Nat,
    iterate (262144 * k + 176615) 29 = 177147 * k + 119351 ∧
      177147 * k + 119351 < 262144 * k + 176615 := by
  intro k
  have h1 : C (262144 * k + 176615) = 786432 * k + 529846 := by
    unfold C
    simp [show (262144 * k + 176615) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 529846) = 393216 * k + 264923 := by
    unfold C
    simp [show (786432 * k + 529846) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 264923) = 1179648 * k + 794770 := by
    unfold C
    simp [show (393216 * k + 264923) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 794770) = 589824 * k + 397385 := by
    unfold C
    simp [show (1179648 * k + 794770) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 397385) = 1769472 * k + 1192156 := by
    unfold C
    simp [show (589824 * k + 397385) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 1192156) = 884736 * k + 596078 := by
    unfold C
    simp [show (1769472 * k + 1192156) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 596078) = 442368 * k + 298039 := by
    unfold C
    simp [show (884736 * k + 596078) % 2 = 0 by omega]
    omega
  have h8 : C (442368 * k + 298039) = 1327104 * k + 894118 := by
    unfold C
    simp [show (442368 * k + 298039) % 2 ≠ 0 by omega]
    omega
  have h9 : C (1327104 * k + 894118) = 663552 * k + 447059 := by
    unfold C
    simp [show (1327104 * k + 894118) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 447059) = 1990656 * k + 1341178 := by
    unfold C
    simp [show (663552 * k + 447059) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 1341178) = 995328 * k + 670589 := by
    unfold C
    simp [show (1990656 * k + 1341178) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 670589) = 2985984 * k + 2011768 := by
    unfold C
    simp [show (995328 * k + 670589) % 2 ≠ 0 by omega]
    omega
  have h13 : C (2985984 * k + 2011768) = 1492992 * k + 1005884 := by
    unfold C
    simp [show (2985984 * k + 2011768) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 1005884) = 746496 * k + 502942 := by
    unfold C
    simp [show (1492992 * k + 1005884) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 502942) = 373248 * k + 251471 := by
    unfold C
    simp [show (746496 * k + 502942) % 2 = 0 by omega]
    omega
  have h16 : C (373248 * k + 251471) = 1119744 * k + 754414 := by
    unfold C
    simp [show (373248 * k + 251471) % 2 ≠ 0 by omega]
    omega
  have h17 : C (1119744 * k + 754414) = 559872 * k + 377207 := by
    unfold C
    simp [show (1119744 * k + 754414) % 2 = 0 by omega]
    omega
  have h18 : C (559872 * k + 377207) = 1679616 * k + 1131622 := by
    unfold C
    simp [show (559872 * k + 377207) % 2 ≠ 0 by omega]
    omega
  have h19 : C (1679616 * k + 1131622) = 839808 * k + 565811 := by
    unfold C
    simp [show (1679616 * k + 1131622) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 565811) = 2519424 * k + 1697434 := by
    unfold C
    simp [show (839808 * k + 565811) % 2 ≠ 0 by omega]
    omega
  have h21 : C (2519424 * k + 1697434) = 1259712 * k + 848717 := by
    unfold C
    simp [show (2519424 * k + 1697434) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 848717) = 3779136 * k + 2546152 := by
    unfold C
    simp [show (1259712 * k + 848717) % 2 ≠ 0 by omega]
    omega
  have h23 : C (3779136 * k + 2546152) = 1889568 * k + 1273076 := by
    unfold C
    simp [show (3779136 * k + 2546152) % 2 = 0 by omega]
    omega
  have h24 : C (1889568 * k + 1273076) = 944784 * k + 636538 := by
    unfold C
    simp [show (1889568 * k + 1273076) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 636538) = 472392 * k + 318269 := by
    unfold C
    simp [show (944784 * k + 636538) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 318269) = 1417176 * k + 954808 := by
    unfold C
    simp [show (472392 * k + 318269) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 954808) = 708588 * k + 477404 := by
    unfold C
    simp [show (1417176 * k + 954808) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 477404) = 354294 * k + 238702 := by
    unfold C
    simp [show (708588 * k + 477404) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 238702) = 177147 * k + 119351 := by
    unfold C
    simp [show (354294 * k + 238702) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 176615) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 176615))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_176623 : ∀ k : Nat,
    iterate (262144 * k + 176623) 29 = 177147 * k + 119356 ∧
      177147 * k + 119356 < 262144 * k + 176623 := by
  intro k
  have h1 : C (262144 * k + 176623) = 786432 * k + 529870 := by
    unfold C
    simp [show (262144 * k + 176623) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 529870) = 393216 * k + 264935 := by
    unfold C
    simp [show (786432 * k + 529870) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 264935) = 1179648 * k + 794806 := by
    unfold C
    simp [show (393216 * k + 264935) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 794806) = 589824 * k + 397403 := by
    unfold C
    simp [show (1179648 * k + 794806) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 397403) = 1769472 * k + 1192210 := by
    unfold C
    simp [show (589824 * k + 397403) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 1192210) = 884736 * k + 596105 := by
    unfold C
    simp [show (1769472 * k + 1192210) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 596105) = 2654208 * k + 1788316 := by
    unfold C
    simp [show (884736 * k + 596105) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 1788316) = 1327104 * k + 894158 := by
    unfold C
    simp [show (2654208 * k + 1788316) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 894158) = 663552 * k + 447079 := by
    unfold C
    simp [show (1327104 * k + 894158) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 447079) = 1990656 * k + 1341238 := by
    unfold C
    simp [show (663552 * k + 447079) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 1341238) = 995328 * k + 670619 := by
    unfold C
    simp [show (1990656 * k + 1341238) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 670619) = 2985984 * k + 2011858 := by
    unfold C
    simp [show (995328 * k + 670619) % 2 ≠ 0 by omega]
    omega
  have h13 : C (2985984 * k + 2011858) = 1492992 * k + 1005929 := by
    unfold C
    simp [show (2985984 * k + 2011858) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 1005929) = 4478976 * k + 3017788 := by
    unfold C
    simp [show (1492992 * k + 1005929) % 2 ≠ 0 by omega]
    omega
  have h15 : C (4478976 * k + 3017788) = 2239488 * k + 1508894 := by
    unfold C
    simp [show (4478976 * k + 3017788) % 2 = 0 by omega]
    omega
  have h16 : C (2239488 * k + 1508894) = 1119744 * k + 754447 := by
    unfold C
    simp [show (2239488 * k + 1508894) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 754447) = 3359232 * k + 2263342 := by
    unfold C
    simp [show (1119744 * k + 754447) % 2 ≠ 0 by omega]
    omega
  have h18 : C (3359232 * k + 2263342) = 1679616 * k + 1131671 := by
    unfold C
    simp [show (3359232 * k + 2263342) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 1131671) = 5038848 * k + 3395014 := by
    unfold C
    simp [show (1679616 * k + 1131671) % 2 ≠ 0 by omega]
    omega
  have h20 : C (5038848 * k + 3395014) = 2519424 * k + 1697507 := by
    unfold C
    simp [show (5038848 * k + 3395014) % 2 = 0 by omega]
    omega
  have h21 : C (2519424 * k + 1697507) = 7558272 * k + 5092522 := by
    unfold C
    simp [show (2519424 * k + 1697507) % 2 ≠ 0 by omega]
    omega
  have h22 : C (7558272 * k + 5092522) = 3779136 * k + 2546261 := by
    unfold C
    simp [show (7558272 * k + 5092522) % 2 = 0 by omega]
    omega
  have h23 : C (3779136 * k + 2546261) = 11337408 * k + 7638784 := by
    unfold C
    simp [show (3779136 * k + 2546261) % 2 ≠ 0 by omega]
    omega
  have h24 : C (11337408 * k + 7638784) = 5668704 * k + 3819392 := by
    unfold C
    simp [show (11337408 * k + 7638784) % 2 = 0 by omega]
    omega
  have h25 : C (5668704 * k + 3819392) = 2834352 * k + 1909696 := by
    unfold C
    simp [show (5668704 * k + 3819392) % 2 = 0 by omega]
    omega
  have h26 : C (2834352 * k + 1909696) = 1417176 * k + 954848 := by
    unfold C
    simp [show (2834352 * k + 1909696) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 954848) = 708588 * k + 477424 := by
    unfold C
    simp [show (1417176 * k + 954848) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 477424) = 354294 * k + 238712 := by
    unfold C
    simp [show (708588 * k + 477424) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 238712) = 177147 * k + 119356 := by
    unfold C
    simp [show (354294 * k + 238712) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 176623) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 176623))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_177179 : ∀ k : Nat,
    iterate (262144 * k + 177179) 29 = 177147 * k + 119732 ∧
      177147 * k + 119732 < 262144 * k + 177179 := by
  intro k
  have h1 : C (262144 * k + 177179) = 786432 * k + 531538 := by
    unfold C
    simp [show (262144 * k + 177179) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 531538) = 393216 * k + 265769 := by
    unfold C
    simp [show (786432 * k + 531538) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 265769) = 1179648 * k + 797308 := by
    unfold C
    simp [show (393216 * k + 265769) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 797308) = 589824 * k + 398654 := by
    unfold C
    simp [show (1179648 * k + 797308) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 398654) = 294912 * k + 199327 := by
    unfold C
    simp [show (589824 * k + 398654) % 2 = 0 by omega]
    omega
  have h6 : C (294912 * k + 199327) = 884736 * k + 597982 := by
    unfold C
    simp [show (294912 * k + 199327) % 2 ≠ 0 by omega]
    omega
  have h7 : C (884736 * k + 597982) = 442368 * k + 298991 := by
    unfold C
    simp [show (884736 * k + 597982) % 2 = 0 by omega]
    omega
  have h8 : C (442368 * k + 298991) = 1327104 * k + 896974 := by
    unfold C
    simp [show (442368 * k + 298991) % 2 ≠ 0 by omega]
    omega
  have h9 : C (1327104 * k + 896974) = 663552 * k + 448487 := by
    unfold C
    simp [show (1327104 * k + 896974) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 448487) = 1990656 * k + 1345462 := by
    unfold C
    simp [show (663552 * k + 448487) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 1345462) = 995328 * k + 672731 := by
    unfold C
    simp [show (1990656 * k + 1345462) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 672731) = 2985984 * k + 2018194 := by
    unfold C
    simp [show (995328 * k + 672731) % 2 ≠ 0 by omega]
    omega
  have h13 : C (2985984 * k + 2018194) = 1492992 * k + 1009097 := by
    unfold C
    simp [show (2985984 * k + 2018194) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 1009097) = 4478976 * k + 3027292 := by
    unfold C
    simp [show (1492992 * k + 1009097) % 2 ≠ 0 by omega]
    omega
  have h15 : C (4478976 * k + 3027292) = 2239488 * k + 1513646 := by
    unfold C
    simp [show (4478976 * k + 3027292) % 2 = 0 by omega]
    omega
  have h16 : C (2239488 * k + 1513646) = 1119744 * k + 756823 := by
    unfold C
    simp [show (2239488 * k + 1513646) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 756823) = 3359232 * k + 2270470 := by
    unfold C
    simp [show (1119744 * k + 756823) % 2 ≠ 0 by omega]
    omega
  have h18 : C (3359232 * k + 2270470) = 1679616 * k + 1135235 := by
    unfold C
    simp [show (3359232 * k + 2270470) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 1135235) = 5038848 * k + 3405706 := by
    unfold C
    simp [show (1679616 * k + 1135235) % 2 ≠ 0 by omega]
    omega
  have h20 : C (5038848 * k + 3405706) = 2519424 * k + 1702853 := by
    unfold C
    simp [show (5038848 * k + 3405706) % 2 = 0 by omega]
    omega
  have h21 : C (2519424 * k + 1702853) = 7558272 * k + 5108560 := by
    unfold C
    simp [show (2519424 * k + 1702853) % 2 ≠ 0 by omega]
    omega
  have h22 : C (7558272 * k + 5108560) = 3779136 * k + 2554280 := by
    unfold C
    simp [show (7558272 * k + 5108560) % 2 = 0 by omega]
    omega
  have h23 : C (3779136 * k + 2554280) = 1889568 * k + 1277140 := by
    unfold C
    simp [show (3779136 * k + 2554280) % 2 = 0 by omega]
    omega
  have h24 : C (1889568 * k + 1277140) = 944784 * k + 638570 := by
    unfold C
    simp [show (1889568 * k + 1277140) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 638570) = 472392 * k + 319285 := by
    unfold C
    simp [show (944784 * k + 638570) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 319285) = 1417176 * k + 957856 := by
    unfold C
    simp [show (472392 * k + 319285) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 957856) = 708588 * k + 478928 := by
    unfold C
    simp [show (1417176 * k + 957856) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 478928) = 354294 * k + 239464 := by
    unfold C
    simp [show (708588 * k + 478928) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 239464) = 177147 * k + 119732 := by
    unfold C
    simp [show (354294 * k + 239464) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 177179) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 177179))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_178671 : ∀ k : Nat,
    iterate (262144 * k + 178671) 29 = 177147 * k + 120740 ∧
      177147 * k + 120740 < 262144 * k + 178671 := by
  intro k
  have h1 : C (262144 * k + 178671) = 786432 * k + 536014 := by
    unfold C
    simp [show (262144 * k + 178671) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 536014) = 393216 * k + 268007 := by
    unfold C
    simp [show (786432 * k + 536014) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 268007) = 1179648 * k + 804022 := by
    unfold C
    simp [show (393216 * k + 268007) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 804022) = 589824 * k + 402011 := by
    unfold C
    simp [show (1179648 * k + 804022) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 402011) = 1769472 * k + 1206034 := by
    unfold C
    simp [show (589824 * k + 402011) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 1206034) = 884736 * k + 603017 := by
    unfold C
    simp [show (1769472 * k + 1206034) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 603017) = 2654208 * k + 1809052 := by
    unfold C
    simp [show (884736 * k + 603017) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 1809052) = 1327104 * k + 904526 := by
    unfold C
    simp [show (2654208 * k + 1809052) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 904526) = 663552 * k + 452263 := by
    unfold C
    simp [show (1327104 * k + 904526) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 452263) = 1990656 * k + 1356790 := by
    unfold C
    simp [show (663552 * k + 452263) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 1356790) = 995328 * k + 678395 := by
    unfold C
    simp [show (1990656 * k + 1356790) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 678395) = 2985984 * k + 2035186 := by
    unfold C
    simp [show (995328 * k + 678395) % 2 ≠ 0 by omega]
    omega
  have h13 : C (2985984 * k + 2035186) = 1492992 * k + 1017593 := by
    unfold C
    simp [show (2985984 * k + 2035186) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 1017593) = 4478976 * k + 3052780 := by
    unfold C
    simp [show (1492992 * k + 1017593) % 2 ≠ 0 by omega]
    omega
  have h15 : C (4478976 * k + 3052780) = 2239488 * k + 1526390 := by
    unfold C
    simp [show (4478976 * k + 3052780) % 2 = 0 by omega]
    omega
  have h16 : C (2239488 * k + 1526390) = 1119744 * k + 763195 := by
    unfold C
    simp [show (2239488 * k + 1526390) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 763195) = 3359232 * k + 2289586 := by
    unfold C
    simp [show (1119744 * k + 763195) % 2 ≠ 0 by omega]
    omega
  have h18 : C (3359232 * k + 2289586) = 1679616 * k + 1144793 := by
    unfold C
    simp [show (3359232 * k + 2289586) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 1144793) = 5038848 * k + 3434380 := by
    unfold C
    simp [show (1679616 * k + 1144793) % 2 ≠ 0 by omega]
    omega
  have h20 : C (5038848 * k + 3434380) = 2519424 * k + 1717190 := by
    unfold C
    simp [show (5038848 * k + 3434380) % 2 = 0 by omega]
    omega
  have h21 : C (2519424 * k + 1717190) = 1259712 * k + 858595 := by
    unfold C
    simp [show (2519424 * k + 1717190) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 858595) = 3779136 * k + 2575786 := by
    unfold C
    simp [show (1259712 * k + 858595) % 2 ≠ 0 by omega]
    omega
  have h23 : C (3779136 * k + 2575786) = 1889568 * k + 1287893 := by
    unfold C
    simp [show (3779136 * k + 2575786) % 2 = 0 by omega]
    omega
  have h24 : C (1889568 * k + 1287893) = 5668704 * k + 3863680 := by
    unfold C
    simp [show (1889568 * k + 1287893) % 2 ≠ 0 by omega]
    omega
  have h25 : C (5668704 * k + 3863680) = 2834352 * k + 1931840 := by
    unfold C
    simp [show (5668704 * k + 3863680) % 2 = 0 by omega]
    omega
  have h26 : C (2834352 * k + 1931840) = 1417176 * k + 965920 := by
    unfold C
    simp [show (2834352 * k + 1931840) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 965920) = 708588 * k + 482960 := by
    unfold C
    simp [show (1417176 * k + 965920) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 482960) = 354294 * k + 241480 := by
    unfold C
    simp [show (708588 * k + 482960) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 241480) = 177147 * k + 120740 := by
    unfold C
    simp [show (354294 * k + 241480) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 178671) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 178671))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_178927 : ∀ k : Nat,
    iterate (262144 * k + 178927) 29 = 177147 * k + 120913 ∧
      177147 * k + 120913 < 262144 * k + 178927 := by
  intro k
  have h1 : C (262144 * k + 178927) = 786432 * k + 536782 := by
    unfold C
    simp [show (262144 * k + 178927) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 536782) = 393216 * k + 268391 := by
    unfold C
    simp [show (786432 * k + 536782) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 268391) = 1179648 * k + 805174 := by
    unfold C
    simp [show (393216 * k + 268391) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 805174) = 589824 * k + 402587 := by
    unfold C
    simp [show (1179648 * k + 805174) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 402587) = 1769472 * k + 1207762 := by
    unfold C
    simp [show (589824 * k + 402587) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 1207762) = 884736 * k + 603881 := by
    unfold C
    simp [show (1769472 * k + 1207762) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 603881) = 2654208 * k + 1811644 := by
    unfold C
    simp [show (884736 * k + 603881) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 1811644) = 1327104 * k + 905822 := by
    unfold C
    simp [show (2654208 * k + 1811644) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 905822) = 663552 * k + 452911 := by
    unfold C
    simp [show (1327104 * k + 905822) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 452911) = 1990656 * k + 1358734 := by
    unfold C
    simp [show (663552 * k + 452911) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 1358734) = 995328 * k + 679367 := by
    unfold C
    simp [show (1990656 * k + 1358734) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 679367) = 2985984 * k + 2038102 := by
    unfold C
    simp [show (995328 * k + 679367) % 2 ≠ 0 by omega]
    omega
  have h13 : C (2985984 * k + 2038102) = 1492992 * k + 1019051 := by
    unfold C
    simp [show (2985984 * k + 2038102) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 1019051) = 4478976 * k + 3057154 := by
    unfold C
    simp [show (1492992 * k + 1019051) % 2 ≠ 0 by omega]
    omega
  have h15 : C (4478976 * k + 3057154) = 2239488 * k + 1528577 := by
    unfold C
    simp [show (4478976 * k + 3057154) % 2 = 0 by omega]
    omega
  have h16 : C (2239488 * k + 1528577) = 6718464 * k + 4585732 := by
    unfold C
    simp [show (2239488 * k + 1528577) % 2 ≠ 0 by omega]
    omega
  have h17 : C (6718464 * k + 4585732) = 3359232 * k + 2292866 := by
    unfold C
    simp [show (6718464 * k + 4585732) % 2 = 0 by omega]
    omega
  have h18 : C (3359232 * k + 2292866) = 1679616 * k + 1146433 := by
    unfold C
    simp [show (3359232 * k + 2292866) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 1146433) = 5038848 * k + 3439300 := by
    unfold C
    simp [show (1679616 * k + 1146433) % 2 ≠ 0 by omega]
    omega
  have h20 : C (5038848 * k + 3439300) = 2519424 * k + 1719650 := by
    unfold C
    simp [show (5038848 * k + 3439300) % 2 = 0 by omega]
    omega
  have h21 : C (2519424 * k + 1719650) = 1259712 * k + 859825 := by
    unfold C
    simp [show (2519424 * k + 1719650) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 859825) = 3779136 * k + 2579476 := by
    unfold C
    simp [show (1259712 * k + 859825) % 2 ≠ 0 by omega]
    omega
  have h23 : C (3779136 * k + 2579476) = 1889568 * k + 1289738 := by
    unfold C
    simp [show (3779136 * k + 2579476) % 2 = 0 by omega]
    omega
  have h24 : C (1889568 * k + 1289738) = 944784 * k + 644869 := by
    unfold C
    simp [show (1889568 * k + 1289738) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 644869) = 2834352 * k + 1934608 := by
    unfold C
    simp [show (944784 * k + 644869) % 2 ≠ 0 by omega]
    omega
  have h26 : C (2834352 * k + 1934608) = 1417176 * k + 967304 := by
    unfold C
    simp [show (2834352 * k + 1934608) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 967304) = 708588 * k + 483652 := by
    unfold C
    simp [show (1417176 * k + 967304) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 483652) = 354294 * k + 241826 := by
    unfold C
    simp [show (708588 * k + 483652) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 241826) = 177147 * k + 120913 := by
    unfold C
    simp [show (354294 * k + 241826) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 178927) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 178927))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_179439 : ∀ k : Nat,
    iterate (262144 * k + 179439) 29 = 177147 * k + 121259 ∧
      177147 * k + 121259 < 262144 * k + 179439 := by
  intro k
  have h1 : C (262144 * k + 179439) = 786432 * k + 538318 := by
    unfold C
    simp [show (262144 * k + 179439) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 538318) = 393216 * k + 269159 := by
    unfold C
    simp [show (786432 * k + 538318) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 269159) = 1179648 * k + 807478 := by
    unfold C
    simp [show (393216 * k + 269159) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 807478) = 589824 * k + 403739 := by
    unfold C
    simp [show (1179648 * k + 807478) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 403739) = 1769472 * k + 1211218 := by
    unfold C
    simp [show (589824 * k + 403739) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 1211218) = 884736 * k + 605609 := by
    unfold C
    simp [show (1769472 * k + 1211218) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 605609) = 2654208 * k + 1816828 := by
    unfold C
    simp [show (884736 * k + 605609) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 1816828) = 1327104 * k + 908414 := by
    unfold C
    simp [show (2654208 * k + 1816828) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 908414) = 663552 * k + 454207 := by
    unfold C
    simp [show (1327104 * k + 908414) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 454207) = 1990656 * k + 1362622 := by
    unfold C
    simp [show (663552 * k + 454207) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 1362622) = 995328 * k + 681311 := by
    unfold C
    simp [show (1990656 * k + 1362622) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 681311) = 2985984 * k + 2043934 := by
    unfold C
    simp [show (995328 * k + 681311) % 2 ≠ 0 by omega]
    omega
  have h13 : C (2985984 * k + 2043934) = 1492992 * k + 1021967 := by
    unfold C
    simp [show (2985984 * k + 2043934) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 1021967) = 4478976 * k + 3065902 := by
    unfold C
    simp [show (1492992 * k + 1021967) % 2 ≠ 0 by omega]
    omega
  have h15 : C (4478976 * k + 3065902) = 2239488 * k + 1532951 := by
    unfold C
    simp [show (4478976 * k + 3065902) % 2 = 0 by omega]
    omega
  have h16 : C (2239488 * k + 1532951) = 6718464 * k + 4598854 := by
    unfold C
    simp [show (2239488 * k + 1532951) % 2 ≠ 0 by omega]
    omega
  have h17 : C (6718464 * k + 4598854) = 3359232 * k + 2299427 := by
    unfold C
    simp [show (6718464 * k + 4598854) % 2 = 0 by omega]
    omega
  have h18 : C (3359232 * k + 2299427) = 10077696 * k + 6898282 := by
    unfold C
    simp [show (3359232 * k + 2299427) % 2 ≠ 0 by omega]
    omega
  have h19 : C (10077696 * k + 6898282) = 5038848 * k + 3449141 := by
    unfold C
    simp [show (10077696 * k + 6898282) % 2 = 0 by omega]
    omega
  have h20 : C (5038848 * k + 3449141) = 15116544 * k + 10347424 := by
    unfold C
    simp [show (5038848 * k + 3449141) % 2 ≠ 0 by omega]
    omega
  have h21 : C (15116544 * k + 10347424) = 7558272 * k + 5173712 := by
    unfold C
    simp [show (15116544 * k + 10347424) % 2 = 0 by omega]
    omega
  have h22 : C (7558272 * k + 5173712) = 3779136 * k + 2586856 := by
    unfold C
    simp [show (7558272 * k + 5173712) % 2 = 0 by omega]
    omega
  have h23 : C (3779136 * k + 2586856) = 1889568 * k + 1293428 := by
    unfold C
    simp [show (3779136 * k + 2586856) % 2 = 0 by omega]
    omega
  have h24 : C (1889568 * k + 1293428) = 944784 * k + 646714 := by
    unfold C
    simp [show (1889568 * k + 1293428) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 646714) = 472392 * k + 323357 := by
    unfold C
    simp [show (944784 * k + 646714) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 323357) = 1417176 * k + 970072 := by
    unfold C
    simp [show (472392 * k + 323357) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 970072) = 708588 * k + 485036 := by
    unfold C
    simp [show (1417176 * k + 970072) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 485036) = 354294 * k + 242518 := by
    unfold C
    simp [show (708588 * k + 485036) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 242518) = 177147 * k + 121259 := by
    unfold C
    simp [show (354294 * k + 242518) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 179439) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 179439))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_179483 : ∀ k : Nat,
    iterate (262144 * k + 179483) 29 = 177147 * k + 121289 ∧
      177147 * k + 121289 < 262144 * k + 179483 := by
  intro k
  have h1 : C (262144 * k + 179483) = 786432 * k + 538450 := by
    unfold C
    simp [show (262144 * k + 179483) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 538450) = 393216 * k + 269225 := by
    unfold C
    simp [show (786432 * k + 538450) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 269225) = 1179648 * k + 807676 := by
    unfold C
    simp [show (393216 * k + 269225) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 807676) = 589824 * k + 403838 := by
    unfold C
    simp [show (1179648 * k + 807676) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 403838) = 294912 * k + 201919 := by
    unfold C
    simp [show (589824 * k + 403838) % 2 = 0 by omega]
    omega
  have h6 : C (294912 * k + 201919) = 884736 * k + 605758 := by
    unfold C
    simp [show (294912 * k + 201919) % 2 ≠ 0 by omega]
    omega
  have h7 : C (884736 * k + 605758) = 442368 * k + 302879 := by
    unfold C
    simp [show (884736 * k + 605758) % 2 = 0 by omega]
    omega
  have h8 : C (442368 * k + 302879) = 1327104 * k + 908638 := by
    unfold C
    simp [show (442368 * k + 302879) % 2 ≠ 0 by omega]
    omega
  have h9 : C (1327104 * k + 908638) = 663552 * k + 454319 := by
    unfold C
    simp [show (1327104 * k + 908638) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 454319) = 1990656 * k + 1362958 := by
    unfold C
    simp [show (663552 * k + 454319) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 1362958) = 995328 * k + 681479 := by
    unfold C
    simp [show (1990656 * k + 1362958) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 681479) = 2985984 * k + 2044438 := by
    unfold C
    simp [show (995328 * k + 681479) % 2 ≠ 0 by omega]
    omega
  have h13 : C (2985984 * k + 2044438) = 1492992 * k + 1022219 := by
    unfold C
    simp [show (2985984 * k + 2044438) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 1022219) = 4478976 * k + 3066658 := by
    unfold C
    simp [show (1492992 * k + 1022219) % 2 ≠ 0 by omega]
    omega
  have h15 : C (4478976 * k + 3066658) = 2239488 * k + 1533329 := by
    unfold C
    simp [show (4478976 * k + 3066658) % 2 = 0 by omega]
    omega
  have h16 : C (2239488 * k + 1533329) = 6718464 * k + 4599988 := by
    unfold C
    simp [show (2239488 * k + 1533329) % 2 ≠ 0 by omega]
    omega
  have h17 : C (6718464 * k + 4599988) = 3359232 * k + 2299994 := by
    unfold C
    simp [show (6718464 * k + 4599988) % 2 = 0 by omega]
    omega
  have h18 : C (3359232 * k + 2299994) = 1679616 * k + 1149997 := by
    unfold C
    simp [show (3359232 * k + 2299994) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 1149997) = 5038848 * k + 3449992 := by
    unfold C
    simp [show (1679616 * k + 1149997) % 2 ≠ 0 by omega]
    omega
  have h20 : C (5038848 * k + 3449992) = 2519424 * k + 1724996 := by
    unfold C
    simp [show (5038848 * k + 3449992) % 2 = 0 by omega]
    omega
  have h21 : C (2519424 * k + 1724996) = 1259712 * k + 862498 := by
    unfold C
    simp [show (2519424 * k + 1724996) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 862498) = 629856 * k + 431249 := by
    unfold C
    simp [show (1259712 * k + 862498) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 431249) = 1889568 * k + 1293748 := by
    unfold C
    simp [show (629856 * k + 431249) % 2 ≠ 0 by omega]
    omega
  have h24 : C (1889568 * k + 1293748) = 944784 * k + 646874 := by
    unfold C
    simp [show (1889568 * k + 1293748) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 646874) = 472392 * k + 323437 := by
    unfold C
    simp [show (944784 * k + 646874) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 323437) = 1417176 * k + 970312 := by
    unfold C
    simp [show (472392 * k + 323437) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 970312) = 708588 * k + 485156 := by
    unfold C
    simp [show (1417176 * k + 970312) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 485156) = 354294 * k + 242578 := by
    unfold C
    simp [show (708588 * k + 485156) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 242578) = 177147 * k + 121289 := by
    unfold C
    simp [show (354294 * k + 242578) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 179483) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 179483))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_179611 : ∀ k : Nat,
    iterate (262144 * k + 179611) 29 = 177147 * k + 121376 ∧
      177147 * k + 121376 < 262144 * k + 179611 := by
  intro k
  have h1 : C (262144 * k + 179611) = 786432 * k + 538834 := by
    unfold C
    simp [show (262144 * k + 179611) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 538834) = 393216 * k + 269417 := by
    unfold C
    simp [show (786432 * k + 538834) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 269417) = 1179648 * k + 808252 := by
    unfold C
    simp [show (393216 * k + 269417) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 808252) = 589824 * k + 404126 := by
    unfold C
    simp [show (1179648 * k + 808252) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 404126) = 294912 * k + 202063 := by
    unfold C
    simp [show (589824 * k + 404126) % 2 = 0 by omega]
    omega
  have h6 : C (294912 * k + 202063) = 884736 * k + 606190 := by
    unfold C
    simp [show (294912 * k + 202063) % 2 ≠ 0 by omega]
    omega
  have h7 : C (884736 * k + 606190) = 442368 * k + 303095 := by
    unfold C
    simp [show (884736 * k + 606190) % 2 = 0 by omega]
    omega
  have h8 : C (442368 * k + 303095) = 1327104 * k + 909286 := by
    unfold C
    simp [show (442368 * k + 303095) % 2 ≠ 0 by omega]
    omega
  have h9 : C (1327104 * k + 909286) = 663552 * k + 454643 := by
    unfold C
    simp [show (1327104 * k + 909286) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 454643) = 1990656 * k + 1363930 := by
    unfold C
    simp [show (663552 * k + 454643) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 1363930) = 995328 * k + 681965 := by
    unfold C
    simp [show (1990656 * k + 1363930) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 681965) = 2985984 * k + 2045896 := by
    unfold C
    simp [show (995328 * k + 681965) % 2 ≠ 0 by omega]
    omega
  have h13 : C (2985984 * k + 2045896) = 1492992 * k + 1022948 := by
    unfold C
    simp [show (2985984 * k + 2045896) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 1022948) = 746496 * k + 511474 := by
    unfold C
    simp [show (1492992 * k + 1022948) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 511474) = 373248 * k + 255737 := by
    unfold C
    simp [show (746496 * k + 511474) % 2 = 0 by omega]
    omega
  have h16 : C (373248 * k + 255737) = 1119744 * k + 767212 := by
    unfold C
    simp [show (373248 * k + 255737) % 2 ≠ 0 by omega]
    omega
  have h17 : C (1119744 * k + 767212) = 559872 * k + 383606 := by
    unfold C
    simp [show (1119744 * k + 767212) % 2 = 0 by omega]
    omega
  have h18 : C (559872 * k + 383606) = 279936 * k + 191803 := by
    unfold C
    simp [show (559872 * k + 383606) % 2 = 0 by omega]
    omega
  have h19 : C (279936 * k + 191803) = 839808 * k + 575410 := by
    unfold C
    simp [show (279936 * k + 191803) % 2 ≠ 0 by omega]
    omega
  have h20 : C (839808 * k + 575410) = 419904 * k + 287705 := by
    unfold C
    simp [show (839808 * k + 575410) % 2 = 0 by omega]
    omega
  have h21 : C (419904 * k + 287705) = 1259712 * k + 863116 := by
    unfold C
    simp [show (419904 * k + 287705) % 2 ≠ 0 by omega]
    omega
  have h22 : C (1259712 * k + 863116) = 629856 * k + 431558 := by
    unfold C
    simp [show (1259712 * k + 863116) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 431558) = 314928 * k + 215779 := by
    unfold C
    simp [show (629856 * k + 431558) % 2 = 0 by omega]
    omega
  have h24 : C (314928 * k + 215779) = 944784 * k + 647338 := by
    unfold C
    simp [show (314928 * k + 215779) % 2 ≠ 0 by omega]
    omega
  have h25 : C (944784 * k + 647338) = 472392 * k + 323669 := by
    unfold C
    simp [show (944784 * k + 647338) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 323669) = 1417176 * k + 971008 := by
    unfold C
    simp [show (472392 * k + 323669) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 971008) = 708588 * k + 485504 := by
    unfold C
    simp [show (1417176 * k + 971008) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 485504) = 354294 * k + 242752 := by
    unfold C
    simp [show (708588 * k + 485504) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 242752) = 177147 * k + 121376 := by
    unfold C
    simp [show (354294 * k + 242752) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 179611) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 179611))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_179739 : ∀ k : Nat,
    iterate (262144 * k + 179739) 29 = 177147 * k + 121462 ∧
      177147 * k + 121462 < 262144 * k + 179739 := by
  intro k
  have h1 : C (262144 * k + 179739) = 786432 * k + 539218 := by
    unfold C
    simp [show (262144 * k + 179739) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 539218) = 393216 * k + 269609 := by
    unfold C
    simp [show (786432 * k + 539218) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 269609) = 1179648 * k + 808828 := by
    unfold C
    simp [show (393216 * k + 269609) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 808828) = 589824 * k + 404414 := by
    unfold C
    simp [show (1179648 * k + 808828) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 404414) = 294912 * k + 202207 := by
    unfold C
    simp [show (589824 * k + 404414) % 2 = 0 by omega]
    omega
  have h6 : C (294912 * k + 202207) = 884736 * k + 606622 := by
    unfold C
    simp [show (294912 * k + 202207) % 2 ≠ 0 by omega]
    omega
  have h7 : C (884736 * k + 606622) = 442368 * k + 303311 := by
    unfold C
    simp [show (884736 * k + 606622) % 2 = 0 by omega]
    omega
  have h8 : C (442368 * k + 303311) = 1327104 * k + 909934 := by
    unfold C
    simp [show (442368 * k + 303311) % 2 ≠ 0 by omega]
    omega
  have h9 : C (1327104 * k + 909934) = 663552 * k + 454967 := by
    unfold C
    simp [show (1327104 * k + 909934) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 454967) = 1990656 * k + 1364902 := by
    unfold C
    simp [show (663552 * k + 454967) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 1364902) = 995328 * k + 682451 := by
    unfold C
    simp [show (1990656 * k + 1364902) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 682451) = 2985984 * k + 2047354 := by
    unfold C
    simp [show (995328 * k + 682451) % 2 ≠ 0 by omega]
    omega
  have h13 : C (2985984 * k + 2047354) = 1492992 * k + 1023677 := by
    unfold C
    simp [show (2985984 * k + 2047354) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 1023677) = 4478976 * k + 3071032 := by
    unfold C
    simp [show (1492992 * k + 1023677) % 2 ≠ 0 by omega]
    omega
  have h15 : C (4478976 * k + 3071032) = 2239488 * k + 1535516 := by
    unfold C
    simp [show (4478976 * k + 3071032) % 2 = 0 by omega]
    omega
  have h16 : C (2239488 * k + 1535516) = 1119744 * k + 767758 := by
    unfold C
    simp [show (2239488 * k + 1535516) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 767758) = 559872 * k + 383879 := by
    unfold C
    simp [show (1119744 * k + 767758) % 2 = 0 by omega]
    omega
  have h18 : C (559872 * k + 383879) = 1679616 * k + 1151638 := by
    unfold C
    simp [show (559872 * k + 383879) % 2 ≠ 0 by omega]
    omega
  have h19 : C (1679616 * k + 1151638) = 839808 * k + 575819 := by
    unfold C
    simp [show (1679616 * k + 1151638) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 575819) = 2519424 * k + 1727458 := by
    unfold C
    simp [show (839808 * k + 575819) % 2 ≠ 0 by omega]
    omega
  have h21 : C (2519424 * k + 1727458) = 1259712 * k + 863729 := by
    unfold C
    simp [show (2519424 * k + 1727458) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 863729) = 3779136 * k + 2591188 := by
    unfold C
    simp [show (1259712 * k + 863729) % 2 ≠ 0 by omega]
    omega
  have h23 : C (3779136 * k + 2591188) = 1889568 * k + 1295594 := by
    unfold C
    simp [show (3779136 * k + 2591188) % 2 = 0 by omega]
    omega
  have h24 : C (1889568 * k + 1295594) = 944784 * k + 647797 := by
    unfold C
    simp [show (1889568 * k + 1295594) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 647797) = 2834352 * k + 1943392 := by
    unfold C
    simp [show (944784 * k + 647797) % 2 ≠ 0 by omega]
    omega
  have h26 : C (2834352 * k + 1943392) = 1417176 * k + 971696 := by
    unfold C
    simp [show (2834352 * k + 1943392) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 971696) = 708588 * k + 485848 := by
    unfold C
    simp [show (1417176 * k + 971696) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 485848) = 354294 * k + 242924 := by
    unfold C
    simp [show (708588 * k + 485848) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 242924) = 177147 * k + 121462 := by
    unfold C
    simp [show (354294 * k + 242924) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 179739) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 179739))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_180251 : ∀ k : Nat,
    iterate (262144 * k + 180251) 29 = 177147 * k + 121808 ∧
      177147 * k + 121808 < 262144 * k + 180251 := by
  intro k
  have h1 : C (262144 * k + 180251) = 786432 * k + 540754 := by
    unfold C
    simp [show (262144 * k + 180251) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 540754) = 393216 * k + 270377 := by
    unfold C
    simp [show (786432 * k + 540754) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 270377) = 1179648 * k + 811132 := by
    unfold C
    simp [show (393216 * k + 270377) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 811132) = 589824 * k + 405566 := by
    unfold C
    simp [show (1179648 * k + 811132) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 405566) = 294912 * k + 202783 := by
    unfold C
    simp [show (589824 * k + 405566) % 2 = 0 by omega]
    omega
  have h6 : C (294912 * k + 202783) = 884736 * k + 608350 := by
    unfold C
    simp [show (294912 * k + 202783) % 2 ≠ 0 by omega]
    omega
  have h7 : C (884736 * k + 608350) = 442368 * k + 304175 := by
    unfold C
    simp [show (884736 * k + 608350) % 2 = 0 by omega]
    omega
  have h8 : C (442368 * k + 304175) = 1327104 * k + 912526 := by
    unfold C
    simp [show (442368 * k + 304175) % 2 ≠ 0 by omega]
    omega
  have h9 : C (1327104 * k + 912526) = 663552 * k + 456263 := by
    unfold C
    simp [show (1327104 * k + 912526) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 456263) = 1990656 * k + 1368790 := by
    unfold C
    simp [show (663552 * k + 456263) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 1368790) = 995328 * k + 684395 := by
    unfold C
    simp [show (1990656 * k + 1368790) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 684395) = 2985984 * k + 2053186 := by
    unfold C
    simp [show (995328 * k + 684395) % 2 ≠ 0 by omega]
    omega
  have h13 : C (2985984 * k + 2053186) = 1492992 * k + 1026593 := by
    unfold C
    simp [show (2985984 * k + 2053186) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 1026593) = 4478976 * k + 3079780 := by
    unfold C
    simp [show (1492992 * k + 1026593) % 2 ≠ 0 by omega]
    omega
  have h15 : C (4478976 * k + 3079780) = 2239488 * k + 1539890 := by
    unfold C
    simp [show (4478976 * k + 3079780) % 2 = 0 by omega]
    omega
  have h16 : C (2239488 * k + 1539890) = 1119744 * k + 769945 := by
    unfold C
    simp [show (2239488 * k + 1539890) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 769945) = 3359232 * k + 2309836 := by
    unfold C
    simp [show (1119744 * k + 769945) % 2 ≠ 0 by omega]
    omega
  have h18 : C (3359232 * k + 2309836) = 1679616 * k + 1154918 := by
    unfold C
    simp [show (3359232 * k + 2309836) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 1154918) = 839808 * k + 577459 := by
    unfold C
    simp [show (1679616 * k + 1154918) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 577459) = 2519424 * k + 1732378 := by
    unfold C
    simp [show (839808 * k + 577459) % 2 ≠ 0 by omega]
    omega
  have h21 : C (2519424 * k + 1732378) = 1259712 * k + 866189 := by
    unfold C
    simp [show (2519424 * k + 1732378) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 866189) = 3779136 * k + 2598568 := by
    unfold C
    simp [show (1259712 * k + 866189) % 2 ≠ 0 by omega]
    omega
  have h23 : C (3779136 * k + 2598568) = 1889568 * k + 1299284 := by
    unfold C
    simp [show (3779136 * k + 2598568) % 2 = 0 by omega]
    omega
  have h24 : C (1889568 * k + 1299284) = 944784 * k + 649642 := by
    unfold C
    simp [show (1889568 * k + 1299284) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 649642) = 472392 * k + 324821 := by
    unfold C
    simp [show (944784 * k + 649642) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 324821) = 1417176 * k + 974464 := by
    unfold C
    simp [show (472392 * k + 324821) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 974464) = 708588 * k + 487232 := by
    unfold C
    simp [show (1417176 * k + 974464) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 487232) = 354294 * k + 243616 := by
    unfold C
    simp [show (708588 * k + 487232) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 243616) = 177147 * k + 121808 := by
    unfold C
    simp [show (354294 * k + 243616) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 180251) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 180251))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_180295 : ∀ k : Nat,
    iterate (262144 * k + 180295) 29 = 177147 * k + 121838 ∧
      177147 * k + 121838 < 262144 * k + 180295 := by
  intro k
  have h1 : C (262144 * k + 180295) = 786432 * k + 540886 := by
    unfold C
    simp [show (262144 * k + 180295) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 540886) = 393216 * k + 270443 := by
    unfold C
    simp [show (786432 * k + 540886) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 270443) = 1179648 * k + 811330 := by
    unfold C
    simp [show (393216 * k + 270443) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 811330) = 589824 * k + 405665 := by
    unfold C
    simp [show (1179648 * k + 811330) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 405665) = 1769472 * k + 1216996 := by
    unfold C
    simp [show (589824 * k + 405665) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 1216996) = 884736 * k + 608498 := by
    unfold C
    simp [show (1769472 * k + 1216996) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 608498) = 442368 * k + 304249 := by
    unfold C
    simp [show (884736 * k + 608498) % 2 = 0 by omega]
    omega
  have h8 : C (442368 * k + 304249) = 1327104 * k + 912748 := by
    unfold C
    simp [show (442368 * k + 304249) % 2 ≠ 0 by omega]
    omega
  have h9 : C (1327104 * k + 912748) = 663552 * k + 456374 := by
    unfold C
    simp [show (1327104 * k + 912748) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 456374) = 331776 * k + 228187 := by
    unfold C
    simp [show (663552 * k + 456374) % 2 = 0 by omega]
    omega
  have h11 : C (331776 * k + 228187) = 995328 * k + 684562 := by
    unfold C
    simp [show (331776 * k + 228187) % 2 ≠ 0 by omega]
    omega
  have h12 : C (995328 * k + 684562) = 497664 * k + 342281 := by
    unfold C
    simp [show (995328 * k + 684562) % 2 = 0 by omega]
    omega
  have h13 : C (497664 * k + 342281) = 1492992 * k + 1026844 := by
    unfold C
    simp [show (497664 * k + 342281) % 2 ≠ 0 by omega]
    omega
  have h14 : C (1492992 * k + 1026844) = 746496 * k + 513422 := by
    unfold C
    simp [show (1492992 * k + 1026844) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 513422) = 373248 * k + 256711 := by
    unfold C
    simp [show (746496 * k + 513422) % 2 = 0 by omega]
    omega
  have h16 : C (373248 * k + 256711) = 1119744 * k + 770134 := by
    unfold C
    simp [show (373248 * k + 256711) % 2 ≠ 0 by omega]
    omega
  have h17 : C (1119744 * k + 770134) = 559872 * k + 385067 := by
    unfold C
    simp [show (1119744 * k + 770134) % 2 = 0 by omega]
    omega
  have h18 : C (559872 * k + 385067) = 1679616 * k + 1155202 := by
    unfold C
    simp [show (559872 * k + 385067) % 2 ≠ 0 by omega]
    omega
  have h19 : C (1679616 * k + 1155202) = 839808 * k + 577601 := by
    unfold C
    simp [show (1679616 * k + 1155202) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 577601) = 2519424 * k + 1732804 := by
    unfold C
    simp [show (839808 * k + 577601) % 2 ≠ 0 by omega]
    omega
  have h21 : C (2519424 * k + 1732804) = 1259712 * k + 866402 := by
    unfold C
    simp [show (2519424 * k + 1732804) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 866402) = 629856 * k + 433201 := by
    unfold C
    simp [show (1259712 * k + 866402) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 433201) = 1889568 * k + 1299604 := by
    unfold C
    simp [show (629856 * k + 433201) % 2 ≠ 0 by omega]
    omega
  have h24 : C (1889568 * k + 1299604) = 944784 * k + 649802 := by
    unfold C
    simp [show (1889568 * k + 1299604) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 649802) = 472392 * k + 324901 := by
    unfold C
    simp [show (944784 * k + 649802) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 324901) = 1417176 * k + 974704 := by
    unfold C
    simp [show (472392 * k + 324901) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 974704) = 708588 * k + 487352 := by
    unfold C
    simp [show (1417176 * k + 974704) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 487352) = 354294 * k + 243676 := by
    unfold C
    simp [show (708588 * k + 487352) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 243676) = 177147 * k + 121838 := by
    unfold C
    simp [show (354294 * k + 243676) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 180295) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 180295))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_180463 : ∀ k : Nat,
    iterate (262144 * k + 180463) 29 = 177147 * k + 121951 ∧
      177147 * k + 121951 < 262144 * k + 180463 := by
  intro k
  have h1 : C (262144 * k + 180463) = 786432 * k + 541390 := by
    unfold C
    simp [show (262144 * k + 180463) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 541390) = 393216 * k + 270695 := by
    unfold C
    simp [show (786432 * k + 541390) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 270695) = 1179648 * k + 812086 := by
    unfold C
    simp [show (393216 * k + 270695) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 812086) = 589824 * k + 406043 := by
    unfold C
    simp [show (1179648 * k + 812086) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 406043) = 1769472 * k + 1218130 := by
    unfold C
    simp [show (589824 * k + 406043) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 1218130) = 884736 * k + 609065 := by
    unfold C
    simp [show (1769472 * k + 1218130) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 609065) = 2654208 * k + 1827196 := by
    unfold C
    simp [show (884736 * k + 609065) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 1827196) = 1327104 * k + 913598 := by
    unfold C
    simp [show (2654208 * k + 1827196) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 913598) = 663552 * k + 456799 := by
    unfold C
    simp [show (1327104 * k + 913598) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 456799) = 1990656 * k + 1370398 := by
    unfold C
    simp [show (663552 * k + 456799) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 1370398) = 995328 * k + 685199 := by
    unfold C
    simp [show (1990656 * k + 1370398) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 685199) = 2985984 * k + 2055598 := by
    unfold C
    simp [show (995328 * k + 685199) % 2 ≠ 0 by omega]
    omega
  have h13 : C (2985984 * k + 2055598) = 1492992 * k + 1027799 := by
    unfold C
    simp [show (2985984 * k + 2055598) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 1027799) = 4478976 * k + 3083398 := by
    unfold C
    simp [show (1492992 * k + 1027799) % 2 ≠ 0 by omega]
    omega
  have h15 : C (4478976 * k + 3083398) = 2239488 * k + 1541699 := by
    unfold C
    simp [show (4478976 * k + 3083398) % 2 = 0 by omega]
    omega
  have h16 : C (2239488 * k + 1541699) = 6718464 * k + 4625098 := by
    unfold C
    simp [show (2239488 * k + 1541699) % 2 ≠ 0 by omega]
    omega
  have h17 : C (6718464 * k + 4625098) = 3359232 * k + 2312549 := by
    unfold C
    simp [show (6718464 * k + 4625098) % 2 = 0 by omega]
    omega
  have h18 : C (3359232 * k + 2312549) = 10077696 * k + 6937648 := by
    unfold C
    simp [show (3359232 * k + 2312549) % 2 ≠ 0 by omega]
    omega
  have h19 : C (10077696 * k + 6937648) = 5038848 * k + 3468824 := by
    unfold C
    simp [show (10077696 * k + 6937648) % 2 = 0 by omega]
    omega
  have h20 : C (5038848 * k + 3468824) = 2519424 * k + 1734412 := by
    unfold C
    simp [show (5038848 * k + 3468824) % 2 = 0 by omega]
    omega
  have h21 : C (2519424 * k + 1734412) = 1259712 * k + 867206 := by
    unfold C
    simp [show (2519424 * k + 1734412) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 867206) = 629856 * k + 433603 := by
    unfold C
    simp [show (1259712 * k + 867206) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 433603) = 1889568 * k + 1300810 := by
    unfold C
    simp [show (629856 * k + 433603) % 2 ≠ 0 by omega]
    omega
  have h24 : C (1889568 * k + 1300810) = 944784 * k + 650405 := by
    unfold C
    simp [show (1889568 * k + 1300810) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 650405) = 2834352 * k + 1951216 := by
    unfold C
    simp [show (944784 * k + 650405) % 2 ≠ 0 by omega]
    omega
  have h26 : C (2834352 * k + 1951216) = 1417176 * k + 975608 := by
    unfold C
    simp [show (2834352 * k + 1951216) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 975608) = 708588 * k + 487804 := by
    unfold C
    simp [show (1417176 * k + 975608) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 487804) = 354294 * k + 243902 := by
    unfold C
    simp [show (708588 * k + 487804) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 243902) = 177147 * k + 121951 := by
    unfold C
    simp [show (354294 * k + 243902) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 180463) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 180463))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_180543 : ∀ k : Nat,
    iterate (262144 * k + 180543) 29 = 177147 * k + 122005 ∧
      177147 * k + 122005 < 262144 * k + 180543 := by
  intro k
  have h1 : C (262144 * k + 180543) = 786432 * k + 541630 := by
    unfold C
    simp [show (262144 * k + 180543) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 541630) = 393216 * k + 270815 := by
    unfold C
    simp [show (786432 * k + 541630) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 270815) = 1179648 * k + 812446 := by
    unfold C
    simp [show (393216 * k + 270815) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 812446) = 589824 * k + 406223 := by
    unfold C
    simp [show (1179648 * k + 812446) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 406223) = 1769472 * k + 1218670 := by
    unfold C
    simp [show (589824 * k + 406223) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 1218670) = 884736 * k + 609335 := by
    unfold C
    simp [show (1769472 * k + 1218670) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 609335) = 2654208 * k + 1828006 := by
    unfold C
    simp [show (884736 * k + 609335) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 1828006) = 1327104 * k + 914003 := by
    unfold C
    simp [show (2654208 * k + 1828006) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 914003) = 3981312 * k + 2742010 := by
    unfold C
    simp [show (1327104 * k + 914003) % 2 ≠ 0 by omega]
    omega
  have h10 : C (3981312 * k + 2742010) = 1990656 * k + 1371005 := by
    unfold C
    simp [show (3981312 * k + 2742010) % 2 = 0 by omega]
    omega
  have h11 : C (1990656 * k + 1371005) = 5971968 * k + 4113016 := by
    unfold C
    simp [show (1990656 * k + 1371005) % 2 ≠ 0 by omega]
    omega
  have h12 : C (5971968 * k + 4113016) = 2985984 * k + 2056508 := by
    unfold C
    simp [show (5971968 * k + 4113016) % 2 = 0 by omega]
    omega
  have h13 : C (2985984 * k + 2056508) = 1492992 * k + 1028254 := by
    unfold C
    simp [show (2985984 * k + 2056508) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 1028254) = 746496 * k + 514127 := by
    unfold C
    simp [show (1492992 * k + 1028254) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 514127) = 2239488 * k + 1542382 := by
    unfold C
    simp [show (746496 * k + 514127) % 2 ≠ 0 by omega]
    omega
  have h16 : C (2239488 * k + 1542382) = 1119744 * k + 771191 := by
    unfold C
    simp [show (2239488 * k + 1542382) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 771191) = 3359232 * k + 2313574 := by
    unfold C
    simp [show (1119744 * k + 771191) % 2 ≠ 0 by omega]
    omega
  have h18 : C (3359232 * k + 2313574) = 1679616 * k + 1156787 := by
    unfold C
    simp [show (3359232 * k + 2313574) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 1156787) = 5038848 * k + 3470362 := by
    unfold C
    simp [show (1679616 * k + 1156787) % 2 ≠ 0 by omega]
    omega
  have h20 : C (5038848 * k + 3470362) = 2519424 * k + 1735181 := by
    unfold C
    simp [show (5038848 * k + 3470362) % 2 = 0 by omega]
    omega
  have h21 : C (2519424 * k + 1735181) = 7558272 * k + 5205544 := by
    unfold C
    simp [show (2519424 * k + 1735181) % 2 ≠ 0 by omega]
    omega
  have h22 : C (7558272 * k + 5205544) = 3779136 * k + 2602772 := by
    unfold C
    simp [show (7558272 * k + 5205544) % 2 = 0 by omega]
    omega
  have h23 : C (3779136 * k + 2602772) = 1889568 * k + 1301386 := by
    unfold C
    simp [show (3779136 * k + 2602772) % 2 = 0 by omega]
    omega
  have h24 : C (1889568 * k + 1301386) = 944784 * k + 650693 := by
    unfold C
    simp [show (1889568 * k + 1301386) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 650693) = 2834352 * k + 1952080 := by
    unfold C
    simp [show (944784 * k + 650693) % 2 ≠ 0 by omega]
    omega
  have h26 : C (2834352 * k + 1952080) = 1417176 * k + 976040 := by
    unfold C
    simp [show (2834352 * k + 1952080) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 976040) = 708588 * k + 488020 := by
    unfold C
    simp [show (1417176 * k + 976040) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 488020) = 354294 * k + 244010 := by
    unfold C
    simp [show (708588 * k + 488020) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 244010) = 177147 * k + 122005 := by
    unfold C
    simp [show (354294 * k + 244010) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 180543) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 180543))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_180895 : ∀ k : Nat,
    iterate (262144 * k + 180895) 29 = 177147 * k + 122243 ∧
      177147 * k + 122243 < 262144 * k + 180895 := by
  intro k
  have h1 : C (262144 * k + 180895) = 786432 * k + 542686 := by
    unfold C
    simp [show (262144 * k + 180895) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 542686) = 393216 * k + 271343 := by
    unfold C
    simp [show (786432 * k + 542686) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 271343) = 1179648 * k + 814030 := by
    unfold C
    simp [show (393216 * k + 271343) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 814030) = 589824 * k + 407015 := by
    unfold C
    simp [show (1179648 * k + 814030) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 407015) = 1769472 * k + 1221046 := by
    unfold C
    simp [show (589824 * k + 407015) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 1221046) = 884736 * k + 610523 := by
    unfold C
    simp [show (1769472 * k + 1221046) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 610523) = 2654208 * k + 1831570 := by
    unfold C
    simp [show (884736 * k + 610523) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 1831570) = 1327104 * k + 915785 := by
    unfold C
    simp [show (2654208 * k + 1831570) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 915785) = 3981312 * k + 2747356 := by
    unfold C
    simp [show (1327104 * k + 915785) % 2 ≠ 0 by omega]
    omega
  have h10 : C (3981312 * k + 2747356) = 1990656 * k + 1373678 := by
    unfold C
    simp [show (3981312 * k + 2747356) % 2 = 0 by omega]
    omega
  have h11 : C (1990656 * k + 1373678) = 995328 * k + 686839 := by
    unfold C
    simp [show (1990656 * k + 1373678) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 686839) = 2985984 * k + 2060518 := by
    unfold C
    simp [show (995328 * k + 686839) % 2 ≠ 0 by omega]
    omega
  have h13 : C (2985984 * k + 2060518) = 1492992 * k + 1030259 := by
    unfold C
    simp [show (2985984 * k + 2060518) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 1030259) = 4478976 * k + 3090778 := by
    unfold C
    simp [show (1492992 * k + 1030259) % 2 ≠ 0 by omega]
    omega
  have h15 : C (4478976 * k + 3090778) = 2239488 * k + 1545389 := by
    unfold C
    simp [show (4478976 * k + 3090778) % 2 = 0 by omega]
    omega
  have h16 : C (2239488 * k + 1545389) = 6718464 * k + 4636168 := by
    unfold C
    simp [show (2239488 * k + 1545389) % 2 ≠ 0 by omega]
    omega
  have h17 : C (6718464 * k + 4636168) = 3359232 * k + 2318084 := by
    unfold C
    simp [show (6718464 * k + 4636168) % 2 = 0 by omega]
    omega
  have h18 : C (3359232 * k + 2318084) = 1679616 * k + 1159042 := by
    unfold C
    simp [show (3359232 * k + 2318084) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 1159042) = 839808 * k + 579521 := by
    unfold C
    simp [show (1679616 * k + 1159042) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 579521) = 2519424 * k + 1738564 := by
    unfold C
    simp [show (839808 * k + 579521) % 2 ≠ 0 by omega]
    omega
  have h21 : C (2519424 * k + 1738564) = 1259712 * k + 869282 := by
    unfold C
    simp [show (2519424 * k + 1738564) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 869282) = 629856 * k + 434641 := by
    unfold C
    simp [show (1259712 * k + 869282) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 434641) = 1889568 * k + 1303924 := by
    unfold C
    simp [show (629856 * k + 434641) % 2 ≠ 0 by omega]
    omega
  have h24 : C (1889568 * k + 1303924) = 944784 * k + 651962 := by
    unfold C
    simp [show (1889568 * k + 1303924) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 651962) = 472392 * k + 325981 := by
    unfold C
    simp [show (944784 * k + 651962) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 325981) = 1417176 * k + 977944 := by
    unfold C
    simp [show (472392 * k + 325981) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 977944) = 708588 * k + 488972 := by
    unfold C
    simp [show (1417176 * k + 977944) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 488972) = 354294 * k + 244486 := by
    unfold C
    simp [show (708588 * k + 488972) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 244486) = 177147 * k + 122243 := by
    unfold C
    simp [show (354294 * k + 244486) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 180895) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 180895))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

end CollatzM18Shard034
