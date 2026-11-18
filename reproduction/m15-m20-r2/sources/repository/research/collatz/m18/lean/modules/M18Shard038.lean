import Mathlib.Data.Nat.Prime.Basic

namespace CollatzM18Shard038

def C (n : Nat) : Nat := if n % 2 = 0 then n / 2 else 3 * n + 1

def iterate (n t : Nat) : Nat := Nat.rec n (fun _ previous => C previous) t

theorem descent_mod262144_202111 : ∀ k : Nat,
    iterate (262144 * k + 202111) 29 = 177147 * k + 136580 ∧
      177147 * k + 136580 < 262144 * k + 202111 := by
  intro k
  have h1 : C (262144 * k + 202111) = 786432 * k + 606334 := by
    unfold C
    simp [show (262144 * k + 202111) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 606334) = 393216 * k + 303167 := by
    unfold C
    simp [show (786432 * k + 606334) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 303167) = 1179648 * k + 909502 := by
    unfold C
    simp [show (393216 * k + 303167) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 909502) = 589824 * k + 454751 := by
    unfold C
    simp [show (1179648 * k + 909502) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 454751) = 1769472 * k + 1364254 := by
    unfold C
    simp [show (589824 * k + 454751) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 1364254) = 884736 * k + 682127 := by
    unfold C
    simp [show (1769472 * k + 1364254) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 682127) = 2654208 * k + 2046382 := by
    unfold C
    simp [show (884736 * k + 682127) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 2046382) = 1327104 * k + 1023191 := by
    unfold C
    simp [show (2654208 * k + 2046382) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 1023191) = 3981312 * k + 3069574 := by
    unfold C
    simp [show (1327104 * k + 1023191) % 2 ≠ 0 by omega]
    omega
  have h10 : C (3981312 * k + 3069574) = 1990656 * k + 1534787 := by
    unfold C
    simp [show (3981312 * k + 3069574) % 2 = 0 by omega]
    omega
  have h11 : C (1990656 * k + 1534787) = 5971968 * k + 4604362 := by
    unfold C
    simp [show (1990656 * k + 1534787) % 2 ≠ 0 by omega]
    omega
  have h12 : C (5971968 * k + 4604362) = 2985984 * k + 2302181 := by
    unfold C
    simp [show (5971968 * k + 4604362) % 2 = 0 by omega]
    omega
  have h13 : C (2985984 * k + 2302181) = 8957952 * k + 6906544 := by
    unfold C
    simp [show (2985984 * k + 2302181) % 2 ≠ 0 by omega]
    omega
  have h14 : C (8957952 * k + 6906544) = 4478976 * k + 3453272 := by
    unfold C
    simp [show (8957952 * k + 6906544) % 2 = 0 by omega]
    omega
  have h15 : C (4478976 * k + 3453272) = 2239488 * k + 1726636 := by
    unfold C
    simp [show (4478976 * k + 3453272) % 2 = 0 by omega]
    omega
  have h16 : C (2239488 * k + 1726636) = 1119744 * k + 863318 := by
    unfold C
    simp [show (2239488 * k + 1726636) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 863318) = 559872 * k + 431659 := by
    unfold C
    simp [show (1119744 * k + 863318) % 2 = 0 by omega]
    omega
  have h18 : C (559872 * k + 431659) = 1679616 * k + 1294978 := by
    unfold C
    simp [show (559872 * k + 431659) % 2 ≠ 0 by omega]
    omega
  have h19 : C (1679616 * k + 1294978) = 839808 * k + 647489 := by
    unfold C
    simp [show (1679616 * k + 1294978) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 647489) = 2519424 * k + 1942468 := by
    unfold C
    simp [show (839808 * k + 647489) % 2 ≠ 0 by omega]
    omega
  have h21 : C (2519424 * k + 1942468) = 1259712 * k + 971234 := by
    unfold C
    simp [show (2519424 * k + 1942468) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 971234) = 629856 * k + 485617 := by
    unfold C
    simp [show (1259712 * k + 971234) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 485617) = 1889568 * k + 1456852 := by
    unfold C
    simp [show (629856 * k + 485617) % 2 ≠ 0 by omega]
    omega
  have h24 : C (1889568 * k + 1456852) = 944784 * k + 728426 := by
    unfold C
    simp [show (1889568 * k + 1456852) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 728426) = 472392 * k + 364213 := by
    unfold C
    simp [show (944784 * k + 728426) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 364213) = 1417176 * k + 1092640 := by
    unfold C
    simp [show (472392 * k + 364213) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 1092640) = 708588 * k + 546320 := by
    unfold C
    simp [show (1417176 * k + 1092640) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 546320) = 354294 * k + 273160 := by
    unfold C
    simp [show (708588 * k + 546320) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 273160) = 177147 * k + 136580 := by
    unfold C
    simp [show (354294 * k + 273160) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 202111) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 202111))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_202879 : ∀ k : Nat,
    iterate (262144 * k + 202879) 29 = 177147 * k + 137099 ∧
      177147 * k + 137099 < 262144 * k + 202879 := by
  intro k
  have h1 : C (262144 * k + 202879) = 786432 * k + 608638 := by
    unfold C
    simp [show (262144 * k + 202879) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 608638) = 393216 * k + 304319 := by
    unfold C
    simp [show (786432 * k + 608638) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 304319) = 1179648 * k + 912958 := by
    unfold C
    simp [show (393216 * k + 304319) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 912958) = 589824 * k + 456479 := by
    unfold C
    simp [show (1179648 * k + 912958) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 456479) = 1769472 * k + 1369438 := by
    unfold C
    simp [show (589824 * k + 456479) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 1369438) = 884736 * k + 684719 := by
    unfold C
    simp [show (1769472 * k + 1369438) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 684719) = 2654208 * k + 2054158 := by
    unfold C
    simp [show (884736 * k + 684719) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 2054158) = 1327104 * k + 1027079 := by
    unfold C
    simp [show (2654208 * k + 2054158) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 1027079) = 3981312 * k + 3081238 := by
    unfold C
    simp [show (1327104 * k + 1027079) % 2 ≠ 0 by omega]
    omega
  have h10 : C (3981312 * k + 3081238) = 1990656 * k + 1540619 := by
    unfold C
    simp [show (3981312 * k + 3081238) % 2 = 0 by omega]
    omega
  have h11 : C (1990656 * k + 1540619) = 5971968 * k + 4621858 := by
    unfold C
    simp [show (1990656 * k + 1540619) % 2 ≠ 0 by omega]
    omega
  have h12 : C (5971968 * k + 4621858) = 2985984 * k + 2310929 := by
    unfold C
    simp [show (5971968 * k + 4621858) % 2 = 0 by omega]
    omega
  have h13 : C (2985984 * k + 2310929) = 8957952 * k + 6932788 := by
    unfold C
    simp [show (2985984 * k + 2310929) % 2 ≠ 0 by omega]
    omega
  have h14 : C (8957952 * k + 6932788) = 4478976 * k + 3466394 := by
    unfold C
    simp [show (8957952 * k + 6932788) % 2 = 0 by omega]
    omega
  have h15 : C (4478976 * k + 3466394) = 2239488 * k + 1733197 := by
    unfold C
    simp [show (4478976 * k + 3466394) % 2 = 0 by omega]
    omega
  have h16 : C (2239488 * k + 1733197) = 6718464 * k + 5199592 := by
    unfold C
    simp [show (2239488 * k + 1733197) % 2 ≠ 0 by omega]
    omega
  have h17 : C (6718464 * k + 5199592) = 3359232 * k + 2599796 := by
    unfold C
    simp [show (6718464 * k + 5199592) % 2 = 0 by omega]
    omega
  have h18 : C (3359232 * k + 2599796) = 1679616 * k + 1299898 := by
    unfold C
    simp [show (3359232 * k + 2599796) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 1299898) = 839808 * k + 649949 := by
    unfold C
    simp [show (1679616 * k + 1299898) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 649949) = 2519424 * k + 1949848 := by
    unfold C
    simp [show (839808 * k + 649949) % 2 ≠ 0 by omega]
    omega
  have h21 : C (2519424 * k + 1949848) = 1259712 * k + 974924 := by
    unfold C
    simp [show (2519424 * k + 1949848) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 974924) = 629856 * k + 487462 := by
    unfold C
    simp [show (1259712 * k + 974924) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 487462) = 314928 * k + 243731 := by
    unfold C
    simp [show (629856 * k + 487462) % 2 = 0 by omega]
    omega
  have h24 : C (314928 * k + 243731) = 944784 * k + 731194 := by
    unfold C
    simp [show (314928 * k + 243731) % 2 ≠ 0 by omega]
    omega
  have h25 : C (944784 * k + 731194) = 472392 * k + 365597 := by
    unfold C
    simp [show (944784 * k + 731194) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 365597) = 1417176 * k + 1096792 := by
    unfold C
    simp [show (472392 * k + 365597) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 1096792) = 708588 * k + 548396 := by
    unfold C
    simp [show (1417176 * k + 1096792) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 548396) = 354294 * k + 274198 := by
    unfold C
    simp [show (708588 * k + 548396) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 274198) = 177147 * k + 137099 := by
    unfold C
    simp [show (354294 * k + 274198) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 202879) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 202879))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_203003 : ∀ k : Nat,
    iterate (262144 * k + 203003) 29 = 177147 * k + 137183 ∧
      177147 * k + 137183 < 262144 * k + 203003 := by
  intro k
  have h1 : C (262144 * k + 203003) = 786432 * k + 609010 := by
    unfold C
    simp [show (262144 * k + 203003) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 609010) = 393216 * k + 304505 := by
    unfold C
    simp [show (786432 * k + 609010) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 304505) = 1179648 * k + 913516 := by
    unfold C
    simp [show (393216 * k + 304505) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 913516) = 589824 * k + 456758 := by
    unfold C
    simp [show (1179648 * k + 913516) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 456758) = 294912 * k + 228379 := by
    unfold C
    simp [show (589824 * k + 456758) % 2 = 0 by omega]
    omega
  have h6 : C (294912 * k + 228379) = 884736 * k + 685138 := by
    unfold C
    simp [show (294912 * k + 228379) % 2 ≠ 0 by omega]
    omega
  have h7 : C (884736 * k + 685138) = 442368 * k + 342569 := by
    unfold C
    simp [show (884736 * k + 685138) % 2 = 0 by omega]
    omega
  have h8 : C (442368 * k + 342569) = 1327104 * k + 1027708 := by
    unfold C
    simp [show (442368 * k + 342569) % 2 ≠ 0 by omega]
    omega
  have h9 : C (1327104 * k + 1027708) = 663552 * k + 513854 := by
    unfold C
    simp [show (1327104 * k + 1027708) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 513854) = 331776 * k + 256927 := by
    unfold C
    simp [show (663552 * k + 513854) % 2 = 0 by omega]
    omega
  have h11 : C (331776 * k + 256927) = 995328 * k + 770782 := by
    unfold C
    simp [show (331776 * k + 256927) % 2 ≠ 0 by omega]
    omega
  have h12 : C (995328 * k + 770782) = 497664 * k + 385391 := by
    unfold C
    simp [show (995328 * k + 770782) % 2 = 0 by omega]
    omega
  have h13 : C (497664 * k + 385391) = 1492992 * k + 1156174 := by
    unfold C
    simp [show (497664 * k + 385391) % 2 ≠ 0 by omega]
    omega
  have h14 : C (1492992 * k + 1156174) = 746496 * k + 578087 := by
    unfold C
    simp [show (1492992 * k + 1156174) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 578087) = 2239488 * k + 1734262 := by
    unfold C
    simp [show (746496 * k + 578087) % 2 ≠ 0 by omega]
    omega
  have h16 : C (2239488 * k + 1734262) = 1119744 * k + 867131 := by
    unfold C
    simp [show (2239488 * k + 1734262) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 867131) = 3359232 * k + 2601394 := by
    unfold C
    simp [show (1119744 * k + 867131) % 2 ≠ 0 by omega]
    omega
  have h18 : C (3359232 * k + 2601394) = 1679616 * k + 1300697 := by
    unfold C
    simp [show (3359232 * k + 2601394) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 1300697) = 5038848 * k + 3902092 := by
    unfold C
    simp [show (1679616 * k + 1300697) % 2 ≠ 0 by omega]
    omega
  have h20 : C (5038848 * k + 3902092) = 2519424 * k + 1951046 := by
    unfold C
    simp [show (5038848 * k + 3902092) % 2 = 0 by omega]
    omega
  have h21 : C (2519424 * k + 1951046) = 1259712 * k + 975523 := by
    unfold C
    simp [show (2519424 * k + 1951046) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 975523) = 3779136 * k + 2926570 := by
    unfold C
    simp [show (1259712 * k + 975523) % 2 ≠ 0 by omega]
    omega
  have h23 : C (3779136 * k + 2926570) = 1889568 * k + 1463285 := by
    unfold C
    simp [show (3779136 * k + 2926570) % 2 = 0 by omega]
    omega
  have h24 : C (1889568 * k + 1463285) = 5668704 * k + 4389856 := by
    unfold C
    simp [show (1889568 * k + 1463285) % 2 ≠ 0 by omega]
    omega
  have h25 : C (5668704 * k + 4389856) = 2834352 * k + 2194928 := by
    unfold C
    simp [show (5668704 * k + 4389856) % 2 = 0 by omega]
    omega
  have h26 : C (2834352 * k + 2194928) = 1417176 * k + 1097464 := by
    unfold C
    simp [show (2834352 * k + 2194928) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 1097464) = 708588 * k + 548732 := by
    unfold C
    simp [show (1417176 * k + 1097464) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 548732) = 354294 * k + 274366 := by
    unfold C
    simp [show (708588 * k + 548732) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 274366) = 177147 * k + 137183 := by
    unfold C
    simp [show (354294 * k + 274366) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 203003) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 203003))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_203419 : ∀ k : Nat,
    iterate (262144 * k + 203419) 29 = 177147 * k + 137464 ∧
      177147 * k + 137464 < 262144 * k + 203419 := by
  intro k
  have h1 : C (262144 * k + 203419) = 786432 * k + 610258 := by
    unfold C
    simp [show (262144 * k + 203419) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 610258) = 393216 * k + 305129 := by
    unfold C
    simp [show (786432 * k + 610258) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 305129) = 1179648 * k + 915388 := by
    unfold C
    simp [show (393216 * k + 305129) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 915388) = 589824 * k + 457694 := by
    unfold C
    simp [show (1179648 * k + 915388) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 457694) = 294912 * k + 228847 := by
    unfold C
    simp [show (589824 * k + 457694) % 2 = 0 by omega]
    omega
  have h6 : C (294912 * k + 228847) = 884736 * k + 686542 := by
    unfold C
    simp [show (294912 * k + 228847) % 2 ≠ 0 by omega]
    omega
  have h7 : C (884736 * k + 686542) = 442368 * k + 343271 := by
    unfold C
    simp [show (884736 * k + 686542) % 2 = 0 by omega]
    omega
  have h8 : C (442368 * k + 343271) = 1327104 * k + 1029814 := by
    unfold C
    simp [show (442368 * k + 343271) % 2 ≠ 0 by omega]
    omega
  have h9 : C (1327104 * k + 1029814) = 663552 * k + 514907 := by
    unfold C
    simp [show (1327104 * k + 1029814) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 514907) = 1990656 * k + 1544722 := by
    unfold C
    simp [show (663552 * k + 514907) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 1544722) = 995328 * k + 772361 := by
    unfold C
    simp [show (1990656 * k + 1544722) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 772361) = 2985984 * k + 2317084 := by
    unfold C
    simp [show (995328 * k + 772361) % 2 ≠ 0 by omega]
    omega
  have h13 : C (2985984 * k + 2317084) = 1492992 * k + 1158542 := by
    unfold C
    simp [show (2985984 * k + 2317084) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 1158542) = 746496 * k + 579271 := by
    unfold C
    simp [show (1492992 * k + 1158542) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 579271) = 2239488 * k + 1737814 := by
    unfold C
    simp [show (746496 * k + 579271) % 2 ≠ 0 by omega]
    omega
  have h16 : C (2239488 * k + 1737814) = 1119744 * k + 868907 := by
    unfold C
    simp [show (2239488 * k + 1737814) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 868907) = 3359232 * k + 2606722 := by
    unfold C
    simp [show (1119744 * k + 868907) % 2 ≠ 0 by omega]
    omega
  have h18 : C (3359232 * k + 2606722) = 1679616 * k + 1303361 := by
    unfold C
    simp [show (3359232 * k + 2606722) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 1303361) = 5038848 * k + 3910084 := by
    unfold C
    simp [show (1679616 * k + 1303361) % 2 ≠ 0 by omega]
    omega
  have h20 : C (5038848 * k + 3910084) = 2519424 * k + 1955042 := by
    unfold C
    simp [show (5038848 * k + 3910084) % 2 = 0 by omega]
    omega
  have h21 : C (2519424 * k + 1955042) = 1259712 * k + 977521 := by
    unfold C
    simp [show (2519424 * k + 1955042) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 977521) = 3779136 * k + 2932564 := by
    unfold C
    simp [show (1259712 * k + 977521) % 2 ≠ 0 by omega]
    omega
  have h23 : C (3779136 * k + 2932564) = 1889568 * k + 1466282 := by
    unfold C
    simp [show (3779136 * k + 2932564) % 2 = 0 by omega]
    omega
  have h24 : C (1889568 * k + 1466282) = 944784 * k + 733141 := by
    unfold C
    simp [show (1889568 * k + 1466282) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 733141) = 2834352 * k + 2199424 := by
    unfold C
    simp [show (944784 * k + 733141) % 2 ≠ 0 by omega]
    omega
  have h26 : C (2834352 * k + 2199424) = 1417176 * k + 1099712 := by
    unfold C
    simp [show (2834352 * k + 2199424) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 1099712) = 708588 * k + 549856 := by
    unfold C
    simp [show (1417176 * k + 1099712) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 549856) = 354294 * k + 274928 := by
    unfold C
    simp [show (708588 * k + 549856) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 274928) = 177147 * k + 137464 := by
    unfold C
    simp [show (354294 * k + 274928) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 203419) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 203419))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_203743 : ∀ k : Nat,
    iterate (262144 * k + 203743) 29 = 177147 * k + 137683 ∧
      177147 * k + 137683 < 262144 * k + 203743 := by
  intro k
  have h1 : C (262144 * k + 203743) = 786432 * k + 611230 := by
    unfold C
    simp [show (262144 * k + 203743) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 611230) = 393216 * k + 305615 := by
    unfold C
    simp [show (786432 * k + 611230) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 305615) = 1179648 * k + 916846 := by
    unfold C
    simp [show (393216 * k + 305615) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 916846) = 589824 * k + 458423 := by
    unfold C
    simp [show (1179648 * k + 916846) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 458423) = 1769472 * k + 1375270 := by
    unfold C
    simp [show (589824 * k + 458423) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 1375270) = 884736 * k + 687635 := by
    unfold C
    simp [show (1769472 * k + 1375270) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 687635) = 2654208 * k + 2062906 := by
    unfold C
    simp [show (884736 * k + 687635) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 2062906) = 1327104 * k + 1031453 := by
    unfold C
    simp [show (2654208 * k + 2062906) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 1031453) = 3981312 * k + 3094360 := by
    unfold C
    simp [show (1327104 * k + 1031453) % 2 ≠ 0 by omega]
    omega
  have h10 : C (3981312 * k + 3094360) = 1990656 * k + 1547180 := by
    unfold C
    simp [show (3981312 * k + 3094360) % 2 = 0 by omega]
    omega
  have h11 : C (1990656 * k + 1547180) = 995328 * k + 773590 := by
    unfold C
    simp [show (1990656 * k + 1547180) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 773590) = 497664 * k + 386795 := by
    unfold C
    simp [show (995328 * k + 773590) % 2 = 0 by omega]
    omega
  have h13 : C (497664 * k + 386795) = 1492992 * k + 1160386 := by
    unfold C
    simp [show (497664 * k + 386795) % 2 ≠ 0 by omega]
    omega
  have h14 : C (1492992 * k + 1160386) = 746496 * k + 580193 := by
    unfold C
    simp [show (1492992 * k + 1160386) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 580193) = 2239488 * k + 1740580 := by
    unfold C
    simp [show (746496 * k + 580193) % 2 ≠ 0 by omega]
    omega
  have h16 : C (2239488 * k + 1740580) = 1119744 * k + 870290 := by
    unfold C
    simp [show (2239488 * k + 1740580) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 870290) = 559872 * k + 435145 := by
    unfold C
    simp [show (1119744 * k + 870290) % 2 = 0 by omega]
    omega
  have h18 : C (559872 * k + 435145) = 1679616 * k + 1305436 := by
    unfold C
    simp [show (559872 * k + 435145) % 2 ≠ 0 by omega]
    omega
  have h19 : C (1679616 * k + 1305436) = 839808 * k + 652718 := by
    unfold C
    simp [show (1679616 * k + 1305436) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 652718) = 419904 * k + 326359 := by
    unfold C
    simp [show (839808 * k + 652718) % 2 = 0 by omega]
    omega
  have h21 : C (419904 * k + 326359) = 1259712 * k + 979078 := by
    unfold C
    simp [show (419904 * k + 326359) % 2 ≠ 0 by omega]
    omega
  have h22 : C (1259712 * k + 979078) = 629856 * k + 489539 := by
    unfold C
    simp [show (1259712 * k + 979078) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 489539) = 1889568 * k + 1468618 := by
    unfold C
    simp [show (629856 * k + 489539) % 2 ≠ 0 by omega]
    omega
  have h24 : C (1889568 * k + 1468618) = 944784 * k + 734309 := by
    unfold C
    simp [show (1889568 * k + 1468618) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 734309) = 2834352 * k + 2202928 := by
    unfold C
    simp [show (944784 * k + 734309) % 2 ≠ 0 by omega]
    omega
  have h26 : C (2834352 * k + 2202928) = 1417176 * k + 1101464 := by
    unfold C
    simp [show (2834352 * k + 2202928) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 1101464) = 708588 * k + 550732 := by
    unfold C
    simp [show (1417176 * k + 1101464) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 550732) = 354294 * k + 275366 := by
    unfold C
    simp [show (708588 * k + 550732) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 275366) = 177147 * k + 137683 := by
    unfold C
    simp [show (354294 * k + 275366) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 203743) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 203743))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_204255 : ∀ k : Nat,
    iterate (262144 * k + 204255) 29 = 177147 * k + 138029 ∧
      177147 * k + 138029 < 262144 * k + 204255 := by
  intro k
  have h1 : C (262144 * k + 204255) = 786432 * k + 612766 := by
    unfold C
    simp [show (262144 * k + 204255) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 612766) = 393216 * k + 306383 := by
    unfold C
    simp [show (786432 * k + 612766) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 306383) = 1179648 * k + 919150 := by
    unfold C
    simp [show (393216 * k + 306383) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 919150) = 589824 * k + 459575 := by
    unfold C
    simp [show (1179648 * k + 919150) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 459575) = 1769472 * k + 1378726 := by
    unfold C
    simp [show (589824 * k + 459575) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 1378726) = 884736 * k + 689363 := by
    unfold C
    simp [show (1769472 * k + 1378726) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 689363) = 2654208 * k + 2068090 := by
    unfold C
    simp [show (884736 * k + 689363) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 2068090) = 1327104 * k + 1034045 := by
    unfold C
    simp [show (2654208 * k + 2068090) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 1034045) = 3981312 * k + 3102136 := by
    unfold C
    simp [show (1327104 * k + 1034045) % 2 ≠ 0 by omega]
    omega
  have h10 : C (3981312 * k + 3102136) = 1990656 * k + 1551068 := by
    unfold C
    simp [show (3981312 * k + 3102136) % 2 = 0 by omega]
    omega
  have h11 : C (1990656 * k + 1551068) = 995328 * k + 775534 := by
    unfold C
    simp [show (1990656 * k + 1551068) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 775534) = 497664 * k + 387767 := by
    unfold C
    simp [show (995328 * k + 775534) % 2 = 0 by omega]
    omega
  have h13 : C (497664 * k + 387767) = 1492992 * k + 1163302 := by
    unfold C
    simp [show (497664 * k + 387767) % 2 ≠ 0 by omega]
    omega
  have h14 : C (1492992 * k + 1163302) = 746496 * k + 581651 := by
    unfold C
    simp [show (1492992 * k + 1163302) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 581651) = 2239488 * k + 1744954 := by
    unfold C
    simp [show (746496 * k + 581651) % 2 ≠ 0 by omega]
    omega
  have h16 : C (2239488 * k + 1744954) = 1119744 * k + 872477 := by
    unfold C
    simp [show (2239488 * k + 1744954) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 872477) = 3359232 * k + 2617432 := by
    unfold C
    simp [show (1119744 * k + 872477) % 2 ≠ 0 by omega]
    omega
  have h18 : C (3359232 * k + 2617432) = 1679616 * k + 1308716 := by
    unfold C
    simp [show (3359232 * k + 2617432) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 1308716) = 839808 * k + 654358 := by
    unfold C
    simp [show (1679616 * k + 1308716) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 654358) = 419904 * k + 327179 := by
    unfold C
    simp [show (839808 * k + 654358) % 2 = 0 by omega]
    omega
  have h21 : C (419904 * k + 327179) = 1259712 * k + 981538 := by
    unfold C
    simp [show (419904 * k + 327179) % 2 ≠ 0 by omega]
    omega
  have h22 : C (1259712 * k + 981538) = 629856 * k + 490769 := by
    unfold C
    simp [show (1259712 * k + 981538) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 490769) = 1889568 * k + 1472308 := by
    unfold C
    simp [show (629856 * k + 490769) % 2 ≠ 0 by omega]
    omega
  have h24 : C (1889568 * k + 1472308) = 944784 * k + 736154 := by
    unfold C
    simp [show (1889568 * k + 1472308) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 736154) = 472392 * k + 368077 := by
    unfold C
    simp [show (944784 * k + 736154) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 368077) = 1417176 * k + 1104232 := by
    unfold C
    simp [show (472392 * k + 368077) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 1104232) = 708588 * k + 552116 := by
    unfold C
    simp [show (1417176 * k + 1104232) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 552116) = 354294 * k + 276058 := by
    unfold C
    simp [show (708588 * k + 552116) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 276058) = 177147 * k + 138029 := by
    unfold C
    simp [show (354294 * k + 276058) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 204255) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 204255))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_204335 : ∀ k : Nat,
    iterate (262144 * k + 204335) 29 = 177147 * k + 138083 ∧
      177147 * k + 138083 < 262144 * k + 204335 := by
  intro k
  have h1 : C (262144 * k + 204335) = 786432 * k + 613006 := by
    unfold C
    simp [show (262144 * k + 204335) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 613006) = 393216 * k + 306503 := by
    unfold C
    simp [show (786432 * k + 613006) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 306503) = 1179648 * k + 919510 := by
    unfold C
    simp [show (393216 * k + 306503) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 919510) = 589824 * k + 459755 := by
    unfold C
    simp [show (1179648 * k + 919510) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 459755) = 1769472 * k + 1379266 := by
    unfold C
    simp [show (589824 * k + 459755) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 1379266) = 884736 * k + 689633 := by
    unfold C
    simp [show (1769472 * k + 1379266) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 689633) = 2654208 * k + 2068900 := by
    unfold C
    simp [show (884736 * k + 689633) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 2068900) = 1327104 * k + 1034450 := by
    unfold C
    simp [show (2654208 * k + 2068900) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 1034450) = 663552 * k + 517225 := by
    unfold C
    simp [show (1327104 * k + 1034450) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 517225) = 1990656 * k + 1551676 := by
    unfold C
    simp [show (663552 * k + 517225) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 1551676) = 995328 * k + 775838 := by
    unfold C
    simp [show (1990656 * k + 1551676) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 775838) = 497664 * k + 387919 := by
    unfold C
    simp [show (995328 * k + 775838) % 2 = 0 by omega]
    omega
  have h13 : C (497664 * k + 387919) = 1492992 * k + 1163758 := by
    unfold C
    simp [show (497664 * k + 387919) % 2 ≠ 0 by omega]
    omega
  have h14 : C (1492992 * k + 1163758) = 746496 * k + 581879 := by
    unfold C
    simp [show (1492992 * k + 1163758) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 581879) = 2239488 * k + 1745638 := by
    unfold C
    simp [show (746496 * k + 581879) % 2 ≠ 0 by omega]
    omega
  have h16 : C (2239488 * k + 1745638) = 1119744 * k + 872819 := by
    unfold C
    simp [show (2239488 * k + 1745638) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 872819) = 3359232 * k + 2618458 := by
    unfold C
    simp [show (1119744 * k + 872819) % 2 ≠ 0 by omega]
    omega
  have h18 : C (3359232 * k + 2618458) = 1679616 * k + 1309229 := by
    unfold C
    simp [show (3359232 * k + 2618458) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 1309229) = 5038848 * k + 3927688 := by
    unfold C
    simp [show (1679616 * k + 1309229) % 2 ≠ 0 by omega]
    omega
  have h20 : C (5038848 * k + 3927688) = 2519424 * k + 1963844 := by
    unfold C
    simp [show (5038848 * k + 3927688) % 2 = 0 by omega]
    omega
  have h21 : C (2519424 * k + 1963844) = 1259712 * k + 981922 := by
    unfold C
    simp [show (2519424 * k + 1963844) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 981922) = 629856 * k + 490961 := by
    unfold C
    simp [show (1259712 * k + 981922) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 490961) = 1889568 * k + 1472884 := by
    unfold C
    simp [show (629856 * k + 490961) % 2 ≠ 0 by omega]
    omega
  have h24 : C (1889568 * k + 1472884) = 944784 * k + 736442 := by
    unfold C
    simp [show (1889568 * k + 1472884) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 736442) = 472392 * k + 368221 := by
    unfold C
    simp [show (944784 * k + 736442) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 368221) = 1417176 * k + 1104664 := by
    unfold C
    simp [show (472392 * k + 368221) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 1104664) = 708588 * k + 552332 := by
    unfold C
    simp [show (1417176 * k + 1104664) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 552332) = 354294 * k + 276166 := by
    unfold C
    simp [show (708588 * k + 552332) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 276166) = 177147 * k + 138083 := by
    unfold C
    simp [show (354294 * k + 276166) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 204335) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 204335))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_204635 : ∀ k : Nat,
    iterate (262144 * k + 204635) 29 = 177147 * k + 138286 ∧
      177147 * k + 138286 < 262144 * k + 204635 := by
  intro k
  have h1 : C (262144 * k + 204635) = 786432 * k + 613906 := by
    unfold C
    simp [show (262144 * k + 204635) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 613906) = 393216 * k + 306953 := by
    unfold C
    simp [show (786432 * k + 613906) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 306953) = 1179648 * k + 920860 := by
    unfold C
    simp [show (393216 * k + 306953) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 920860) = 589824 * k + 460430 := by
    unfold C
    simp [show (1179648 * k + 920860) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 460430) = 294912 * k + 230215 := by
    unfold C
    simp [show (589824 * k + 460430) % 2 = 0 by omega]
    omega
  have h6 : C (294912 * k + 230215) = 884736 * k + 690646 := by
    unfold C
    simp [show (294912 * k + 230215) % 2 ≠ 0 by omega]
    omega
  have h7 : C (884736 * k + 690646) = 442368 * k + 345323 := by
    unfold C
    simp [show (884736 * k + 690646) % 2 = 0 by omega]
    omega
  have h8 : C (442368 * k + 345323) = 1327104 * k + 1035970 := by
    unfold C
    simp [show (442368 * k + 345323) % 2 ≠ 0 by omega]
    omega
  have h9 : C (1327104 * k + 1035970) = 663552 * k + 517985 := by
    unfold C
    simp [show (1327104 * k + 1035970) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 517985) = 1990656 * k + 1553956 := by
    unfold C
    simp [show (663552 * k + 517985) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 1553956) = 995328 * k + 776978 := by
    unfold C
    simp [show (1990656 * k + 1553956) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 776978) = 497664 * k + 388489 := by
    unfold C
    simp [show (995328 * k + 776978) % 2 = 0 by omega]
    omega
  have h13 : C (497664 * k + 388489) = 1492992 * k + 1165468 := by
    unfold C
    simp [show (497664 * k + 388489) % 2 ≠ 0 by omega]
    omega
  have h14 : C (1492992 * k + 1165468) = 746496 * k + 582734 := by
    unfold C
    simp [show (1492992 * k + 1165468) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 582734) = 373248 * k + 291367 := by
    unfold C
    simp [show (746496 * k + 582734) % 2 = 0 by omega]
    omega
  have h16 : C (373248 * k + 291367) = 1119744 * k + 874102 := by
    unfold C
    simp [show (373248 * k + 291367) % 2 ≠ 0 by omega]
    omega
  have h17 : C (1119744 * k + 874102) = 559872 * k + 437051 := by
    unfold C
    simp [show (1119744 * k + 874102) % 2 = 0 by omega]
    omega
  have h18 : C (559872 * k + 437051) = 1679616 * k + 1311154 := by
    unfold C
    simp [show (559872 * k + 437051) % 2 ≠ 0 by omega]
    omega
  have h19 : C (1679616 * k + 1311154) = 839808 * k + 655577 := by
    unfold C
    simp [show (1679616 * k + 1311154) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 655577) = 2519424 * k + 1966732 := by
    unfold C
    simp [show (839808 * k + 655577) % 2 ≠ 0 by omega]
    omega
  have h21 : C (2519424 * k + 1966732) = 1259712 * k + 983366 := by
    unfold C
    simp [show (2519424 * k + 1966732) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 983366) = 629856 * k + 491683 := by
    unfold C
    simp [show (1259712 * k + 983366) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 491683) = 1889568 * k + 1475050 := by
    unfold C
    simp [show (629856 * k + 491683) % 2 ≠ 0 by omega]
    omega
  have h24 : C (1889568 * k + 1475050) = 944784 * k + 737525 := by
    unfold C
    simp [show (1889568 * k + 1475050) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 737525) = 2834352 * k + 2212576 := by
    unfold C
    simp [show (944784 * k + 737525) % 2 ≠ 0 by omega]
    omega
  have h26 : C (2834352 * k + 2212576) = 1417176 * k + 1106288 := by
    unfold C
    simp [show (2834352 * k + 2212576) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 1106288) = 708588 * k + 553144 := by
    unfold C
    simp [show (1417176 * k + 1106288) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 553144) = 354294 * k + 276572 := by
    unfold C
    simp [show (708588 * k + 553144) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 276572) = 177147 * k + 138286 := by
    unfold C
    simp [show (354294 * k + 276572) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 204635) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 204635))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_204735 : ∀ k : Nat,
    iterate (262144 * k + 204735) 29 = 177147 * k + 138353 ∧
      177147 * k + 138353 < 262144 * k + 204735 := by
  intro k
  have h1 : C (262144 * k + 204735) = 786432 * k + 614206 := by
    unfold C
    simp [show (262144 * k + 204735) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 614206) = 393216 * k + 307103 := by
    unfold C
    simp [show (786432 * k + 614206) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 307103) = 1179648 * k + 921310 := by
    unfold C
    simp [show (393216 * k + 307103) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 921310) = 589824 * k + 460655 := by
    unfold C
    simp [show (1179648 * k + 921310) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 460655) = 1769472 * k + 1381966 := by
    unfold C
    simp [show (589824 * k + 460655) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 1381966) = 884736 * k + 690983 := by
    unfold C
    simp [show (1769472 * k + 1381966) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 690983) = 2654208 * k + 2072950 := by
    unfold C
    simp [show (884736 * k + 690983) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 2072950) = 1327104 * k + 1036475 := by
    unfold C
    simp [show (2654208 * k + 2072950) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 1036475) = 3981312 * k + 3109426 := by
    unfold C
    simp [show (1327104 * k + 1036475) % 2 ≠ 0 by omega]
    omega
  have h10 : C (3981312 * k + 3109426) = 1990656 * k + 1554713 := by
    unfold C
    simp [show (3981312 * k + 3109426) % 2 = 0 by omega]
    omega
  have h11 : C (1990656 * k + 1554713) = 5971968 * k + 4664140 := by
    unfold C
    simp [show (1990656 * k + 1554713) % 2 ≠ 0 by omega]
    omega
  have h12 : C (5971968 * k + 4664140) = 2985984 * k + 2332070 := by
    unfold C
    simp [show (5971968 * k + 4664140) % 2 = 0 by omega]
    omega
  have h13 : C (2985984 * k + 2332070) = 1492992 * k + 1166035 := by
    unfold C
    simp [show (2985984 * k + 2332070) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 1166035) = 4478976 * k + 3498106 := by
    unfold C
    simp [show (1492992 * k + 1166035) % 2 ≠ 0 by omega]
    omega
  have h15 : C (4478976 * k + 3498106) = 2239488 * k + 1749053 := by
    unfold C
    simp [show (4478976 * k + 3498106) % 2 = 0 by omega]
    omega
  have h16 : C (2239488 * k + 1749053) = 6718464 * k + 5247160 := by
    unfold C
    simp [show (2239488 * k + 1749053) % 2 ≠ 0 by omega]
    omega
  have h17 : C (6718464 * k + 5247160) = 3359232 * k + 2623580 := by
    unfold C
    simp [show (6718464 * k + 5247160) % 2 = 0 by omega]
    omega
  have h18 : C (3359232 * k + 2623580) = 1679616 * k + 1311790 := by
    unfold C
    simp [show (3359232 * k + 2623580) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 1311790) = 839808 * k + 655895 := by
    unfold C
    simp [show (1679616 * k + 1311790) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 655895) = 2519424 * k + 1967686 := by
    unfold C
    simp [show (839808 * k + 655895) % 2 ≠ 0 by omega]
    omega
  have h21 : C (2519424 * k + 1967686) = 1259712 * k + 983843 := by
    unfold C
    simp [show (2519424 * k + 1967686) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 983843) = 3779136 * k + 2951530 := by
    unfold C
    simp [show (1259712 * k + 983843) % 2 ≠ 0 by omega]
    omega
  have h23 : C (3779136 * k + 2951530) = 1889568 * k + 1475765 := by
    unfold C
    simp [show (3779136 * k + 2951530) % 2 = 0 by omega]
    omega
  have h24 : C (1889568 * k + 1475765) = 5668704 * k + 4427296 := by
    unfold C
    simp [show (1889568 * k + 1475765) % 2 ≠ 0 by omega]
    omega
  have h25 : C (5668704 * k + 4427296) = 2834352 * k + 2213648 := by
    unfold C
    simp [show (5668704 * k + 4427296) % 2 = 0 by omega]
    omega
  have h26 : C (2834352 * k + 2213648) = 1417176 * k + 1106824 := by
    unfold C
    simp [show (2834352 * k + 2213648) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 1106824) = 708588 * k + 553412 := by
    unfold C
    simp [show (1417176 * k + 1106824) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 553412) = 354294 * k + 276706 := by
    unfold C
    simp [show (708588 * k + 553412) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 276706) = 177147 * k + 138353 := by
    unfold C
    simp [show (354294 * k + 276706) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 204735) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 204735))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_204783 : ∀ k : Nat,
    iterate (262144 * k + 204783) 29 = 177147 * k + 138386 ∧
      177147 * k + 138386 < 262144 * k + 204783 := by
  intro k
  have h1 : C (262144 * k + 204783) = 786432 * k + 614350 := by
    unfold C
    simp [show (262144 * k + 204783) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 614350) = 393216 * k + 307175 := by
    unfold C
    simp [show (786432 * k + 614350) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 307175) = 1179648 * k + 921526 := by
    unfold C
    simp [show (393216 * k + 307175) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 921526) = 589824 * k + 460763 := by
    unfold C
    simp [show (1179648 * k + 921526) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 460763) = 1769472 * k + 1382290 := by
    unfold C
    simp [show (589824 * k + 460763) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 1382290) = 884736 * k + 691145 := by
    unfold C
    simp [show (1769472 * k + 1382290) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 691145) = 2654208 * k + 2073436 := by
    unfold C
    simp [show (884736 * k + 691145) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 2073436) = 1327104 * k + 1036718 := by
    unfold C
    simp [show (2654208 * k + 2073436) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 1036718) = 663552 * k + 518359 := by
    unfold C
    simp [show (1327104 * k + 1036718) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 518359) = 1990656 * k + 1555078 := by
    unfold C
    simp [show (663552 * k + 518359) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 1555078) = 995328 * k + 777539 := by
    unfold C
    simp [show (1990656 * k + 1555078) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 777539) = 2985984 * k + 2332618 := by
    unfold C
    simp [show (995328 * k + 777539) % 2 ≠ 0 by omega]
    omega
  have h13 : C (2985984 * k + 2332618) = 1492992 * k + 1166309 := by
    unfold C
    simp [show (2985984 * k + 2332618) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 1166309) = 4478976 * k + 3498928 := by
    unfold C
    simp [show (1492992 * k + 1166309) % 2 ≠ 0 by omega]
    omega
  have h15 : C (4478976 * k + 3498928) = 2239488 * k + 1749464 := by
    unfold C
    simp [show (4478976 * k + 3498928) % 2 = 0 by omega]
    omega
  have h16 : C (2239488 * k + 1749464) = 1119744 * k + 874732 := by
    unfold C
    simp [show (2239488 * k + 1749464) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 874732) = 559872 * k + 437366 := by
    unfold C
    simp [show (1119744 * k + 874732) % 2 = 0 by omega]
    omega
  have h18 : C (559872 * k + 437366) = 279936 * k + 218683 := by
    unfold C
    simp [show (559872 * k + 437366) % 2 = 0 by omega]
    omega
  have h19 : C (279936 * k + 218683) = 839808 * k + 656050 := by
    unfold C
    simp [show (279936 * k + 218683) % 2 ≠ 0 by omega]
    omega
  have h20 : C (839808 * k + 656050) = 419904 * k + 328025 := by
    unfold C
    simp [show (839808 * k + 656050) % 2 = 0 by omega]
    omega
  have h21 : C (419904 * k + 328025) = 1259712 * k + 984076 := by
    unfold C
    simp [show (419904 * k + 328025) % 2 ≠ 0 by omega]
    omega
  have h22 : C (1259712 * k + 984076) = 629856 * k + 492038 := by
    unfold C
    simp [show (1259712 * k + 984076) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 492038) = 314928 * k + 246019 := by
    unfold C
    simp [show (629856 * k + 492038) % 2 = 0 by omega]
    omega
  have h24 : C (314928 * k + 246019) = 944784 * k + 738058 := by
    unfold C
    simp [show (314928 * k + 246019) % 2 ≠ 0 by omega]
    omega
  have h25 : C (944784 * k + 738058) = 472392 * k + 369029 := by
    unfold C
    simp [show (944784 * k + 738058) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 369029) = 1417176 * k + 1107088 := by
    unfold C
    simp [show (472392 * k + 369029) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 1107088) = 708588 * k + 553544 := by
    unfold C
    simp [show (1417176 * k + 1107088) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 553544) = 354294 * k + 276772 := by
    unfold C
    simp [show (708588 * k + 553544) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 276772) = 177147 * k + 138386 := by
    unfold C
    simp [show (354294 * k + 276772) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 204783) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 204783))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_204831 : ∀ k : Nat,
    iterate (262144 * k + 204831) 29 = 177147 * k + 138418 ∧
      177147 * k + 138418 < 262144 * k + 204831 := by
  intro k
  have h1 : C (262144 * k + 204831) = 786432 * k + 614494 := by
    unfold C
    simp [show (262144 * k + 204831) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 614494) = 393216 * k + 307247 := by
    unfold C
    simp [show (786432 * k + 614494) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 307247) = 1179648 * k + 921742 := by
    unfold C
    simp [show (393216 * k + 307247) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 921742) = 589824 * k + 460871 := by
    unfold C
    simp [show (1179648 * k + 921742) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 460871) = 1769472 * k + 1382614 := by
    unfold C
    simp [show (589824 * k + 460871) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 1382614) = 884736 * k + 691307 := by
    unfold C
    simp [show (1769472 * k + 1382614) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 691307) = 2654208 * k + 2073922 := by
    unfold C
    simp [show (884736 * k + 691307) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 2073922) = 1327104 * k + 1036961 := by
    unfold C
    simp [show (2654208 * k + 2073922) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 1036961) = 3981312 * k + 3110884 := by
    unfold C
    simp [show (1327104 * k + 1036961) % 2 ≠ 0 by omega]
    omega
  have h10 : C (3981312 * k + 3110884) = 1990656 * k + 1555442 := by
    unfold C
    simp [show (3981312 * k + 3110884) % 2 = 0 by omega]
    omega
  have h11 : C (1990656 * k + 1555442) = 995328 * k + 777721 := by
    unfold C
    simp [show (1990656 * k + 1555442) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 777721) = 2985984 * k + 2333164 := by
    unfold C
    simp [show (995328 * k + 777721) % 2 ≠ 0 by omega]
    omega
  have h13 : C (2985984 * k + 2333164) = 1492992 * k + 1166582 := by
    unfold C
    simp [show (2985984 * k + 2333164) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 1166582) = 746496 * k + 583291 := by
    unfold C
    simp [show (1492992 * k + 1166582) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 583291) = 2239488 * k + 1749874 := by
    unfold C
    simp [show (746496 * k + 583291) % 2 ≠ 0 by omega]
    omega
  have h16 : C (2239488 * k + 1749874) = 1119744 * k + 874937 := by
    unfold C
    simp [show (2239488 * k + 1749874) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 874937) = 3359232 * k + 2624812 := by
    unfold C
    simp [show (1119744 * k + 874937) % 2 ≠ 0 by omega]
    omega
  have h18 : C (3359232 * k + 2624812) = 1679616 * k + 1312406 := by
    unfold C
    simp [show (3359232 * k + 2624812) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 1312406) = 839808 * k + 656203 := by
    unfold C
    simp [show (1679616 * k + 1312406) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 656203) = 2519424 * k + 1968610 := by
    unfold C
    simp [show (839808 * k + 656203) % 2 ≠ 0 by omega]
    omega
  have h21 : C (2519424 * k + 1968610) = 1259712 * k + 984305 := by
    unfold C
    simp [show (2519424 * k + 1968610) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 984305) = 3779136 * k + 2952916 := by
    unfold C
    simp [show (1259712 * k + 984305) % 2 ≠ 0 by omega]
    omega
  have h23 : C (3779136 * k + 2952916) = 1889568 * k + 1476458 := by
    unfold C
    simp [show (3779136 * k + 2952916) % 2 = 0 by omega]
    omega
  have h24 : C (1889568 * k + 1476458) = 944784 * k + 738229 := by
    unfold C
    simp [show (1889568 * k + 1476458) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 738229) = 2834352 * k + 2214688 := by
    unfold C
    simp [show (944784 * k + 738229) % 2 ≠ 0 by omega]
    omega
  have h26 : C (2834352 * k + 2214688) = 1417176 * k + 1107344 := by
    unfold C
    simp [show (2834352 * k + 2214688) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 1107344) = 708588 * k + 553672 := by
    unfold C
    simp [show (1417176 * k + 1107344) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 553672) = 354294 * k + 276836 := by
    unfold C
    simp [show (708588 * k + 553672) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 276836) = 177147 * k + 138418 := by
    unfold C
    simp [show (354294 * k + 276836) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 204831) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 204831))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_204863 : ∀ k : Nat,
    iterate (262144 * k + 204863) 29 = 177147 * k + 138440 ∧
      177147 * k + 138440 < 262144 * k + 204863 := by
  intro k
  have h1 : C (262144 * k + 204863) = 786432 * k + 614590 := by
    unfold C
    simp [show (262144 * k + 204863) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 614590) = 393216 * k + 307295 := by
    unfold C
    simp [show (786432 * k + 614590) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 307295) = 1179648 * k + 921886 := by
    unfold C
    simp [show (393216 * k + 307295) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 921886) = 589824 * k + 460943 := by
    unfold C
    simp [show (1179648 * k + 921886) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 460943) = 1769472 * k + 1382830 := by
    unfold C
    simp [show (589824 * k + 460943) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 1382830) = 884736 * k + 691415 := by
    unfold C
    simp [show (1769472 * k + 1382830) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 691415) = 2654208 * k + 2074246 := by
    unfold C
    simp [show (884736 * k + 691415) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 2074246) = 1327104 * k + 1037123 := by
    unfold C
    simp [show (2654208 * k + 2074246) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 1037123) = 3981312 * k + 3111370 := by
    unfold C
    simp [show (1327104 * k + 1037123) % 2 ≠ 0 by omega]
    omega
  have h10 : C (3981312 * k + 3111370) = 1990656 * k + 1555685 := by
    unfold C
    simp [show (3981312 * k + 3111370) % 2 = 0 by omega]
    omega
  have h11 : C (1990656 * k + 1555685) = 5971968 * k + 4667056 := by
    unfold C
    simp [show (1990656 * k + 1555685) % 2 ≠ 0 by omega]
    omega
  have h12 : C (5971968 * k + 4667056) = 2985984 * k + 2333528 := by
    unfold C
    simp [show (5971968 * k + 4667056) % 2 = 0 by omega]
    omega
  have h13 : C (2985984 * k + 2333528) = 1492992 * k + 1166764 := by
    unfold C
    simp [show (2985984 * k + 2333528) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 1166764) = 746496 * k + 583382 := by
    unfold C
    simp [show (1492992 * k + 1166764) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 583382) = 373248 * k + 291691 := by
    unfold C
    simp [show (746496 * k + 583382) % 2 = 0 by omega]
    omega
  have h16 : C (373248 * k + 291691) = 1119744 * k + 875074 := by
    unfold C
    simp [show (373248 * k + 291691) % 2 ≠ 0 by omega]
    omega
  have h17 : C (1119744 * k + 875074) = 559872 * k + 437537 := by
    unfold C
    simp [show (1119744 * k + 875074) % 2 = 0 by omega]
    omega
  have h18 : C (559872 * k + 437537) = 1679616 * k + 1312612 := by
    unfold C
    simp [show (559872 * k + 437537) % 2 ≠ 0 by omega]
    omega
  have h19 : C (1679616 * k + 1312612) = 839808 * k + 656306 := by
    unfold C
    simp [show (1679616 * k + 1312612) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 656306) = 419904 * k + 328153 := by
    unfold C
    simp [show (839808 * k + 656306) % 2 = 0 by omega]
    omega
  have h21 : C (419904 * k + 328153) = 1259712 * k + 984460 := by
    unfold C
    simp [show (419904 * k + 328153) % 2 ≠ 0 by omega]
    omega
  have h22 : C (1259712 * k + 984460) = 629856 * k + 492230 := by
    unfold C
    simp [show (1259712 * k + 984460) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 492230) = 314928 * k + 246115 := by
    unfold C
    simp [show (629856 * k + 492230) % 2 = 0 by omega]
    omega
  have h24 : C (314928 * k + 246115) = 944784 * k + 738346 := by
    unfold C
    simp [show (314928 * k + 246115) % 2 ≠ 0 by omega]
    omega
  have h25 : C (944784 * k + 738346) = 472392 * k + 369173 := by
    unfold C
    simp [show (944784 * k + 738346) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 369173) = 1417176 * k + 1107520 := by
    unfold C
    simp [show (472392 * k + 369173) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 1107520) = 708588 * k + 553760 := by
    unfold C
    simp [show (1417176 * k + 1107520) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 553760) = 354294 * k + 276880 := by
    unfold C
    simp [show (708588 * k + 553760) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 276880) = 177147 * k + 138440 := by
    unfold C
    simp [show (354294 * k + 276880) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 204863) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 204863))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_204903 : ∀ k : Nat,
    iterate (262144 * k + 204903) 29 = 177147 * k + 138467 ∧
      177147 * k + 138467 < 262144 * k + 204903 := by
  intro k
  have h1 : C (262144 * k + 204903) = 786432 * k + 614710 := by
    unfold C
    simp [show (262144 * k + 204903) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 614710) = 393216 * k + 307355 := by
    unfold C
    simp [show (786432 * k + 614710) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 307355) = 1179648 * k + 922066 := by
    unfold C
    simp [show (393216 * k + 307355) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 922066) = 589824 * k + 461033 := by
    unfold C
    simp [show (1179648 * k + 922066) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 461033) = 1769472 * k + 1383100 := by
    unfold C
    simp [show (589824 * k + 461033) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 1383100) = 884736 * k + 691550 := by
    unfold C
    simp [show (1769472 * k + 1383100) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 691550) = 442368 * k + 345775 := by
    unfold C
    simp [show (884736 * k + 691550) % 2 = 0 by omega]
    omega
  have h8 : C (442368 * k + 345775) = 1327104 * k + 1037326 := by
    unfold C
    simp [show (442368 * k + 345775) % 2 ≠ 0 by omega]
    omega
  have h9 : C (1327104 * k + 1037326) = 663552 * k + 518663 := by
    unfold C
    simp [show (1327104 * k + 1037326) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 518663) = 1990656 * k + 1555990 := by
    unfold C
    simp [show (663552 * k + 518663) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 1555990) = 995328 * k + 777995 := by
    unfold C
    simp [show (1990656 * k + 1555990) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 777995) = 2985984 * k + 2333986 := by
    unfold C
    simp [show (995328 * k + 777995) % 2 ≠ 0 by omega]
    omega
  have h13 : C (2985984 * k + 2333986) = 1492992 * k + 1166993 := by
    unfold C
    simp [show (2985984 * k + 2333986) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 1166993) = 4478976 * k + 3500980 := by
    unfold C
    simp [show (1492992 * k + 1166993) % 2 ≠ 0 by omega]
    omega
  have h15 : C (4478976 * k + 3500980) = 2239488 * k + 1750490 := by
    unfold C
    simp [show (4478976 * k + 3500980) % 2 = 0 by omega]
    omega
  have h16 : C (2239488 * k + 1750490) = 1119744 * k + 875245 := by
    unfold C
    simp [show (2239488 * k + 1750490) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 875245) = 3359232 * k + 2625736 := by
    unfold C
    simp [show (1119744 * k + 875245) % 2 ≠ 0 by omega]
    omega
  have h18 : C (3359232 * k + 2625736) = 1679616 * k + 1312868 := by
    unfold C
    simp [show (3359232 * k + 2625736) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 1312868) = 839808 * k + 656434 := by
    unfold C
    simp [show (1679616 * k + 1312868) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 656434) = 419904 * k + 328217 := by
    unfold C
    simp [show (839808 * k + 656434) % 2 = 0 by omega]
    omega
  have h21 : C (419904 * k + 328217) = 1259712 * k + 984652 := by
    unfold C
    simp [show (419904 * k + 328217) % 2 ≠ 0 by omega]
    omega
  have h22 : C (1259712 * k + 984652) = 629856 * k + 492326 := by
    unfold C
    simp [show (1259712 * k + 984652) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 492326) = 314928 * k + 246163 := by
    unfold C
    simp [show (629856 * k + 492326) % 2 = 0 by omega]
    omega
  have h24 : C (314928 * k + 246163) = 944784 * k + 738490 := by
    unfold C
    simp [show (314928 * k + 246163) % 2 ≠ 0 by omega]
    omega
  have h25 : C (944784 * k + 738490) = 472392 * k + 369245 := by
    unfold C
    simp [show (944784 * k + 738490) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 369245) = 1417176 * k + 1107736 := by
    unfold C
    simp [show (472392 * k + 369245) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 1107736) = 708588 * k + 553868 := by
    unfold C
    simp [show (1417176 * k + 1107736) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 553868) = 354294 * k + 276934 := by
    unfold C
    simp [show (708588 * k + 553868) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 276934) = 177147 * k + 138467 := by
    unfold C
    simp [show (354294 * k + 276934) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 204903) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 204903))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_204911 : ∀ k : Nat,
    iterate (262144 * k + 204911) 29 = 177147 * k + 138472 ∧
      177147 * k + 138472 < 262144 * k + 204911 := by
  intro k
  have h1 : C (262144 * k + 204911) = 786432 * k + 614734 := by
    unfold C
    simp [show (262144 * k + 204911) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 614734) = 393216 * k + 307367 := by
    unfold C
    simp [show (786432 * k + 614734) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 307367) = 1179648 * k + 922102 := by
    unfold C
    simp [show (393216 * k + 307367) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 922102) = 589824 * k + 461051 := by
    unfold C
    simp [show (1179648 * k + 922102) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 461051) = 1769472 * k + 1383154 := by
    unfold C
    simp [show (589824 * k + 461051) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 1383154) = 884736 * k + 691577 := by
    unfold C
    simp [show (1769472 * k + 1383154) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 691577) = 2654208 * k + 2074732 := by
    unfold C
    simp [show (884736 * k + 691577) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 2074732) = 1327104 * k + 1037366 := by
    unfold C
    simp [show (2654208 * k + 2074732) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 1037366) = 663552 * k + 518683 := by
    unfold C
    simp [show (1327104 * k + 1037366) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 518683) = 1990656 * k + 1556050 := by
    unfold C
    simp [show (663552 * k + 518683) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 1556050) = 995328 * k + 778025 := by
    unfold C
    simp [show (1990656 * k + 1556050) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 778025) = 2985984 * k + 2334076 := by
    unfold C
    simp [show (995328 * k + 778025) % 2 ≠ 0 by omega]
    omega
  have h13 : C (2985984 * k + 2334076) = 1492992 * k + 1167038 := by
    unfold C
    simp [show (2985984 * k + 2334076) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 1167038) = 746496 * k + 583519 := by
    unfold C
    simp [show (1492992 * k + 1167038) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 583519) = 2239488 * k + 1750558 := by
    unfold C
    simp [show (746496 * k + 583519) % 2 ≠ 0 by omega]
    omega
  have h16 : C (2239488 * k + 1750558) = 1119744 * k + 875279 := by
    unfold C
    simp [show (2239488 * k + 1750558) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 875279) = 3359232 * k + 2625838 := by
    unfold C
    simp [show (1119744 * k + 875279) % 2 ≠ 0 by omega]
    omega
  have h18 : C (3359232 * k + 2625838) = 1679616 * k + 1312919 := by
    unfold C
    simp [show (3359232 * k + 2625838) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 1312919) = 5038848 * k + 3938758 := by
    unfold C
    simp [show (1679616 * k + 1312919) % 2 ≠ 0 by omega]
    omega
  have h20 : C (5038848 * k + 3938758) = 2519424 * k + 1969379 := by
    unfold C
    simp [show (5038848 * k + 3938758) % 2 = 0 by omega]
    omega
  have h21 : C (2519424 * k + 1969379) = 7558272 * k + 5908138 := by
    unfold C
    simp [show (2519424 * k + 1969379) % 2 ≠ 0 by omega]
    omega
  have h22 : C (7558272 * k + 5908138) = 3779136 * k + 2954069 := by
    unfold C
    simp [show (7558272 * k + 5908138) % 2 = 0 by omega]
    omega
  have h23 : C (3779136 * k + 2954069) = 11337408 * k + 8862208 := by
    unfold C
    simp [show (3779136 * k + 2954069) % 2 ≠ 0 by omega]
    omega
  have h24 : C (11337408 * k + 8862208) = 5668704 * k + 4431104 := by
    unfold C
    simp [show (11337408 * k + 8862208) % 2 = 0 by omega]
    omega
  have h25 : C (5668704 * k + 4431104) = 2834352 * k + 2215552 := by
    unfold C
    simp [show (5668704 * k + 4431104) % 2 = 0 by omega]
    omega
  have h26 : C (2834352 * k + 2215552) = 1417176 * k + 1107776 := by
    unfold C
    simp [show (2834352 * k + 2215552) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 1107776) = 708588 * k + 553888 := by
    unfold C
    simp [show (1417176 * k + 1107776) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 553888) = 354294 * k + 276944 := by
    unfold C
    simp [show (708588 * k + 553888) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 276944) = 177147 * k + 138472 := by
    unfold C
    simp [show (354294 * k + 276944) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 204911) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 204911))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_205023 : ∀ k : Nat,
    iterate (262144 * k + 205023) 29 = 177147 * k + 138548 ∧
      177147 * k + 138548 < 262144 * k + 205023 := by
  intro k
  have h1 : C (262144 * k + 205023) = 786432 * k + 615070 := by
    unfold C
    simp [show (262144 * k + 205023) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 615070) = 393216 * k + 307535 := by
    unfold C
    simp [show (786432 * k + 615070) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 307535) = 1179648 * k + 922606 := by
    unfold C
    simp [show (393216 * k + 307535) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 922606) = 589824 * k + 461303 := by
    unfold C
    simp [show (1179648 * k + 922606) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 461303) = 1769472 * k + 1383910 := by
    unfold C
    simp [show (589824 * k + 461303) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 1383910) = 884736 * k + 691955 := by
    unfold C
    simp [show (1769472 * k + 1383910) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 691955) = 2654208 * k + 2075866 := by
    unfold C
    simp [show (884736 * k + 691955) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 2075866) = 1327104 * k + 1037933 := by
    unfold C
    simp [show (2654208 * k + 2075866) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 1037933) = 3981312 * k + 3113800 := by
    unfold C
    simp [show (1327104 * k + 1037933) % 2 ≠ 0 by omega]
    omega
  have h10 : C (3981312 * k + 3113800) = 1990656 * k + 1556900 := by
    unfold C
    simp [show (3981312 * k + 3113800) % 2 = 0 by omega]
    omega
  have h11 : C (1990656 * k + 1556900) = 995328 * k + 778450 := by
    unfold C
    simp [show (1990656 * k + 1556900) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 778450) = 497664 * k + 389225 := by
    unfold C
    simp [show (995328 * k + 778450) % 2 = 0 by omega]
    omega
  have h13 : C (497664 * k + 389225) = 1492992 * k + 1167676 := by
    unfold C
    simp [show (497664 * k + 389225) % 2 ≠ 0 by omega]
    omega
  have h14 : C (1492992 * k + 1167676) = 746496 * k + 583838 := by
    unfold C
    simp [show (1492992 * k + 1167676) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 583838) = 373248 * k + 291919 := by
    unfold C
    simp [show (746496 * k + 583838) % 2 = 0 by omega]
    omega
  have h16 : C (373248 * k + 291919) = 1119744 * k + 875758 := by
    unfold C
    simp [show (373248 * k + 291919) % 2 ≠ 0 by omega]
    omega
  have h17 : C (1119744 * k + 875758) = 559872 * k + 437879 := by
    unfold C
    simp [show (1119744 * k + 875758) % 2 = 0 by omega]
    omega
  have h18 : C (559872 * k + 437879) = 1679616 * k + 1313638 := by
    unfold C
    simp [show (559872 * k + 437879) % 2 ≠ 0 by omega]
    omega
  have h19 : C (1679616 * k + 1313638) = 839808 * k + 656819 := by
    unfold C
    simp [show (1679616 * k + 1313638) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 656819) = 2519424 * k + 1970458 := by
    unfold C
    simp [show (839808 * k + 656819) % 2 ≠ 0 by omega]
    omega
  have h21 : C (2519424 * k + 1970458) = 1259712 * k + 985229 := by
    unfold C
    simp [show (2519424 * k + 1970458) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 985229) = 3779136 * k + 2955688 := by
    unfold C
    simp [show (1259712 * k + 985229) % 2 ≠ 0 by omega]
    omega
  have h23 : C (3779136 * k + 2955688) = 1889568 * k + 1477844 := by
    unfold C
    simp [show (3779136 * k + 2955688) % 2 = 0 by omega]
    omega
  have h24 : C (1889568 * k + 1477844) = 944784 * k + 738922 := by
    unfold C
    simp [show (1889568 * k + 1477844) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 738922) = 472392 * k + 369461 := by
    unfold C
    simp [show (944784 * k + 738922) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 369461) = 1417176 * k + 1108384 := by
    unfold C
    simp [show (472392 * k + 369461) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 1108384) = 708588 * k + 554192 := by
    unfold C
    simp [show (1417176 * k + 1108384) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 554192) = 354294 * k + 277096 := by
    unfold C
    simp [show (708588 * k + 554192) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 277096) = 177147 * k + 138548 := by
    unfold C
    simp [show (354294 * k + 277096) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 205023) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 205023))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_205467 : ∀ k : Nat,
    iterate (262144 * k + 205467) 29 = 177147 * k + 138848 ∧
      177147 * k + 138848 < 262144 * k + 205467 := by
  intro k
  have h1 : C (262144 * k + 205467) = 786432 * k + 616402 := by
    unfold C
    simp [show (262144 * k + 205467) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 616402) = 393216 * k + 308201 := by
    unfold C
    simp [show (786432 * k + 616402) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 308201) = 1179648 * k + 924604 := by
    unfold C
    simp [show (393216 * k + 308201) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 924604) = 589824 * k + 462302 := by
    unfold C
    simp [show (1179648 * k + 924604) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 462302) = 294912 * k + 231151 := by
    unfold C
    simp [show (589824 * k + 462302) % 2 = 0 by omega]
    omega
  have h6 : C (294912 * k + 231151) = 884736 * k + 693454 := by
    unfold C
    simp [show (294912 * k + 231151) % 2 ≠ 0 by omega]
    omega
  have h7 : C (884736 * k + 693454) = 442368 * k + 346727 := by
    unfold C
    simp [show (884736 * k + 693454) % 2 = 0 by omega]
    omega
  have h8 : C (442368 * k + 346727) = 1327104 * k + 1040182 := by
    unfold C
    simp [show (442368 * k + 346727) % 2 ≠ 0 by omega]
    omega
  have h9 : C (1327104 * k + 1040182) = 663552 * k + 520091 := by
    unfold C
    simp [show (1327104 * k + 1040182) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 520091) = 1990656 * k + 1560274 := by
    unfold C
    simp [show (663552 * k + 520091) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 1560274) = 995328 * k + 780137 := by
    unfold C
    simp [show (1990656 * k + 1560274) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 780137) = 2985984 * k + 2340412 := by
    unfold C
    simp [show (995328 * k + 780137) % 2 ≠ 0 by omega]
    omega
  have h13 : C (2985984 * k + 2340412) = 1492992 * k + 1170206 := by
    unfold C
    simp [show (2985984 * k + 2340412) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 1170206) = 746496 * k + 585103 := by
    unfold C
    simp [show (1492992 * k + 1170206) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 585103) = 2239488 * k + 1755310 := by
    unfold C
    simp [show (746496 * k + 585103) % 2 ≠ 0 by omega]
    omega
  have h16 : C (2239488 * k + 1755310) = 1119744 * k + 877655 := by
    unfold C
    simp [show (2239488 * k + 1755310) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 877655) = 3359232 * k + 2632966 := by
    unfold C
    simp [show (1119744 * k + 877655) % 2 ≠ 0 by omega]
    omega
  have h18 : C (3359232 * k + 2632966) = 1679616 * k + 1316483 := by
    unfold C
    simp [show (3359232 * k + 2632966) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 1316483) = 5038848 * k + 3949450 := by
    unfold C
    simp [show (1679616 * k + 1316483) % 2 ≠ 0 by omega]
    omega
  have h20 : C (5038848 * k + 3949450) = 2519424 * k + 1974725 := by
    unfold C
    simp [show (5038848 * k + 3949450) % 2 = 0 by omega]
    omega
  have h21 : C (2519424 * k + 1974725) = 7558272 * k + 5924176 := by
    unfold C
    simp [show (2519424 * k + 1974725) % 2 ≠ 0 by omega]
    omega
  have h22 : C (7558272 * k + 5924176) = 3779136 * k + 2962088 := by
    unfold C
    simp [show (7558272 * k + 5924176) % 2 = 0 by omega]
    omega
  have h23 : C (3779136 * k + 2962088) = 1889568 * k + 1481044 := by
    unfold C
    simp [show (3779136 * k + 2962088) % 2 = 0 by omega]
    omega
  have h24 : C (1889568 * k + 1481044) = 944784 * k + 740522 := by
    unfold C
    simp [show (1889568 * k + 1481044) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 740522) = 472392 * k + 370261 := by
    unfold C
    simp [show (944784 * k + 740522) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 370261) = 1417176 * k + 1110784 := by
    unfold C
    simp [show (472392 * k + 370261) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 1110784) = 708588 * k + 555392 := by
    unfold C
    simp [show (1417176 * k + 1110784) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 555392) = 354294 * k + 277696 := by
    unfold C
    simp [show (708588 * k + 555392) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 277696) = 177147 * k + 138848 := by
    unfold C
    simp [show (354294 * k + 277696) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 205467) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 205467))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_205915 : ∀ k : Nat,
    iterate (262144 * k + 205915) 29 = 177147 * k + 139151 ∧
      177147 * k + 139151 < 262144 * k + 205915 := by
  intro k
  have h1 : C (262144 * k + 205915) = 786432 * k + 617746 := by
    unfold C
    simp [show (262144 * k + 205915) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 617746) = 393216 * k + 308873 := by
    unfold C
    simp [show (786432 * k + 617746) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 308873) = 1179648 * k + 926620 := by
    unfold C
    simp [show (393216 * k + 308873) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 926620) = 589824 * k + 463310 := by
    unfold C
    simp [show (1179648 * k + 926620) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 463310) = 294912 * k + 231655 := by
    unfold C
    simp [show (589824 * k + 463310) % 2 = 0 by omega]
    omega
  have h6 : C (294912 * k + 231655) = 884736 * k + 694966 := by
    unfold C
    simp [show (294912 * k + 231655) % 2 ≠ 0 by omega]
    omega
  have h7 : C (884736 * k + 694966) = 442368 * k + 347483 := by
    unfold C
    simp [show (884736 * k + 694966) % 2 = 0 by omega]
    omega
  have h8 : C (442368 * k + 347483) = 1327104 * k + 1042450 := by
    unfold C
    simp [show (442368 * k + 347483) % 2 ≠ 0 by omega]
    omega
  have h9 : C (1327104 * k + 1042450) = 663552 * k + 521225 := by
    unfold C
    simp [show (1327104 * k + 1042450) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 521225) = 1990656 * k + 1563676 := by
    unfold C
    simp [show (663552 * k + 521225) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 1563676) = 995328 * k + 781838 := by
    unfold C
    simp [show (1990656 * k + 1563676) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 781838) = 497664 * k + 390919 := by
    unfold C
    simp [show (995328 * k + 781838) % 2 = 0 by omega]
    omega
  have h13 : C (497664 * k + 390919) = 1492992 * k + 1172758 := by
    unfold C
    simp [show (497664 * k + 390919) % 2 ≠ 0 by omega]
    omega
  have h14 : C (1492992 * k + 1172758) = 746496 * k + 586379 := by
    unfold C
    simp [show (1492992 * k + 1172758) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 586379) = 2239488 * k + 1759138 := by
    unfold C
    simp [show (746496 * k + 586379) % 2 ≠ 0 by omega]
    omega
  have h16 : C (2239488 * k + 1759138) = 1119744 * k + 879569 := by
    unfold C
    simp [show (2239488 * k + 1759138) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 879569) = 3359232 * k + 2638708 := by
    unfold C
    simp [show (1119744 * k + 879569) % 2 ≠ 0 by omega]
    omega
  have h18 : C (3359232 * k + 2638708) = 1679616 * k + 1319354 := by
    unfold C
    simp [show (3359232 * k + 2638708) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 1319354) = 839808 * k + 659677 := by
    unfold C
    simp [show (1679616 * k + 1319354) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 659677) = 2519424 * k + 1979032 := by
    unfold C
    simp [show (839808 * k + 659677) % 2 ≠ 0 by omega]
    omega
  have h21 : C (2519424 * k + 1979032) = 1259712 * k + 989516 := by
    unfold C
    simp [show (2519424 * k + 1979032) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 989516) = 629856 * k + 494758 := by
    unfold C
    simp [show (1259712 * k + 989516) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 494758) = 314928 * k + 247379 := by
    unfold C
    simp [show (629856 * k + 494758) % 2 = 0 by omega]
    omega
  have h24 : C (314928 * k + 247379) = 944784 * k + 742138 := by
    unfold C
    simp [show (314928 * k + 247379) % 2 ≠ 0 by omega]
    omega
  have h25 : C (944784 * k + 742138) = 472392 * k + 371069 := by
    unfold C
    simp [show (944784 * k + 742138) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 371069) = 1417176 * k + 1113208 := by
    unfold C
    simp [show (472392 * k + 371069) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 1113208) = 708588 * k + 556604 := by
    unfold C
    simp [show (1417176 * k + 1113208) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 556604) = 354294 * k + 278302 := by
    unfold C
    simp [show (708588 * k + 556604) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 278302) = 177147 * k + 139151 := by
    unfold C
    simp [show (354294 * k + 278302) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 205915) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 205915))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_206959 : ∀ k : Nat,
    iterate (262144 * k + 206959) 29 = 177147 * k + 139856 ∧
      177147 * k + 139856 < 262144 * k + 206959 := by
  intro k
  have h1 : C (262144 * k + 206959) = 786432 * k + 620878 := by
    unfold C
    simp [show (262144 * k + 206959) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 620878) = 393216 * k + 310439 := by
    unfold C
    simp [show (786432 * k + 620878) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 310439) = 1179648 * k + 931318 := by
    unfold C
    simp [show (393216 * k + 310439) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 931318) = 589824 * k + 465659 := by
    unfold C
    simp [show (1179648 * k + 931318) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 465659) = 1769472 * k + 1396978 := by
    unfold C
    simp [show (589824 * k + 465659) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 1396978) = 884736 * k + 698489 := by
    unfold C
    simp [show (1769472 * k + 1396978) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 698489) = 2654208 * k + 2095468 := by
    unfold C
    simp [show (884736 * k + 698489) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 2095468) = 1327104 * k + 1047734 := by
    unfold C
    simp [show (2654208 * k + 2095468) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 1047734) = 663552 * k + 523867 := by
    unfold C
    simp [show (1327104 * k + 1047734) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 523867) = 1990656 * k + 1571602 := by
    unfold C
    simp [show (663552 * k + 523867) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 1571602) = 995328 * k + 785801 := by
    unfold C
    simp [show (1990656 * k + 1571602) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 785801) = 2985984 * k + 2357404 := by
    unfold C
    simp [show (995328 * k + 785801) % 2 ≠ 0 by omega]
    omega
  have h13 : C (2985984 * k + 2357404) = 1492992 * k + 1178702 := by
    unfold C
    simp [show (2985984 * k + 2357404) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 1178702) = 746496 * k + 589351 := by
    unfold C
    simp [show (1492992 * k + 1178702) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 589351) = 2239488 * k + 1768054 := by
    unfold C
    simp [show (746496 * k + 589351) % 2 ≠ 0 by omega]
    omega
  have h16 : C (2239488 * k + 1768054) = 1119744 * k + 884027 := by
    unfold C
    simp [show (2239488 * k + 1768054) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 884027) = 3359232 * k + 2652082 := by
    unfold C
    simp [show (1119744 * k + 884027) % 2 ≠ 0 by omega]
    omega
  have h18 : C (3359232 * k + 2652082) = 1679616 * k + 1326041 := by
    unfold C
    simp [show (3359232 * k + 2652082) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 1326041) = 5038848 * k + 3978124 := by
    unfold C
    simp [show (1679616 * k + 1326041) % 2 ≠ 0 by omega]
    omega
  have h20 : C (5038848 * k + 3978124) = 2519424 * k + 1989062 := by
    unfold C
    simp [show (5038848 * k + 3978124) % 2 = 0 by omega]
    omega
  have h21 : C (2519424 * k + 1989062) = 1259712 * k + 994531 := by
    unfold C
    simp [show (2519424 * k + 1989062) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 994531) = 3779136 * k + 2983594 := by
    unfold C
    simp [show (1259712 * k + 994531) % 2 ≠ 0 by omega]
    omega
  have h23 : C (3779136 * k + 2983594) = 1889568 * k + 1491797 := by
    unfold C
    simp [show (3779136 * k + 2983594) % 2 = 0 by omega]
    omega
  have h24 : C (1889568 * k + 1491797) = 5668704 * k + 4475392 := by
    unfold C
    simp [show (1889568 * k + 1491797) % 2 ≠ 0 by omega]
    omega
  have h25 : C (5668704 * k + 4475392) = 2834352 * k + 2237696 := by
    unfold C
    simp [show (5668704 * k + 4475392) % 2 = 0 by omega]
    omega
  have h26 : C (2834352 * k + 2237696) = 1417176 * k + 1118848 := by
    unfold C
    simp [show (2834352 * k + 2237696) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 1118848) = 708588 * k + 559424 := by
    unfold C
    simp [show (1417176 * k + 1118848) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 559424) = 354294 * k + 279712 := by
    unfold C
    simp [show (708588 * k + 559424) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 279712) = 177147 * k + 139856 := by
    unfold C
    simp [show (354294 * k + 279712) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 206959) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 206959))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_207015 : ∀ k : Nat,
    iterate (262144 * k + 207015) 29 = 177147 * k + 139894 ∧
      177147 * k + 139894 < 262144 * k + 207015 := by
  intro k
  have h1 : C (262144 * k + 207015) = 786432 * k + 621046 := by
    unfold C
    simp [show (262144 * k + 207015) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 621046) = 393216 * k + 310523 := by
    unfold C
    simp [show (786432 * k + 621046) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 310523) = 1179648 * k + 931570 := by
    unfold C
    simp [show (393216 * k + 310523) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 931570) = 589824 * k + 465785 := by
    unfold C
    simp [show (1179648 * k + 931570) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 465785) = 1769472 * k + 1397356 := by
    unfold C
    simp [show (589824 * k + 465785) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 1397356) = 884736 * k + 698678 := by
    unfold C
    simp [show (1769472 * k + 1397356) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 698678) = 442368 * k + 349339 := by
    unfold C
    simp [show (884736 * k + 698678) % 2 = 0 by omega]
    omega
  have h8 : C (442368 * k + 349339) = 1327104 * k + 1048018 := by
    unfold C
    simp [show (442368 * k + 349339) % 2 ≠ 0 by omega]
    omega
  have h9 : C (1327104 * k + 1048018) = 663552 * k + 524009 := by
    unfold C
    simp [show (1327104 * k + 1048018) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 524009) = 1990656 * k + 1572028 := by
    unfold C
    simp [show (663552 * k + 524009) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 1572028) = 995328 * k + 786014 := by
    unfold C
    simp [show (1990656 * k + 1572028) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 786014) = 497664 * k + 393007 := by
    unfold C
    simp [show (995328 * k + 786014) % 2 = 0 by omega]
    omega
  have h13 : C (497664 * k + 393007) = 1492992 * k + 1179022 := by
    unfold C
    simp [show (497664 * k + 393007) % 2 ≠ 0 by omega]
    omega
  have h14 : C (1492992 * k + 1179022) = 746496 * k + 589511 := by
    unfold C
    simp [show (1492992 * k + 1179022) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 589511) = 2239488 * k + 1768534 := by
    unfold C
    simp [show (746496 * k + 589511) % 2 ≠ 0 by omega]
    omega
  have h16 : C (2239488 * k + 1768534) = 1119744 * k + 884267 := by
    unfold C
    simp [show (2239488 * k + 1768534) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 884267) = 3359232 * k + 2652802 := by
    unfold C
    simp [show (1119744 * k + 884267) % 2 ≠ 0 by omega]
    omega
  have h18 : C (3359232 * k + 2652802) = 1679616 * k + 1326401 := by
    unfold C
    simp [show (3359232 * k + 2652802) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 1326401) = 5038848 * k + 3979204 := by
    unfold C
    simp [show (1679616 * k + 1326401) % 2 ≠ 0 by omega]
    omega
  have h20 : C (5038848 * k + 3979204) = 2519424 * k + 1989602 := by
    unfold C
    simp [show (5038848 * k + 3979204) % 2 = 0 by omega]
    omega
  have h21 : C (2519424 * k + 1989602) = 1259712 * k + 994801 := by
    unfold C
    simp [show (2519424 * k + 1989602) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 994801) = 3779136 * k + 2984404 := by
    unfold C
    simp [show (1259712 * k + 994801) % 2 ≠ 0 by omega]
    omega
  have h23 : C (3779136 * k + 2984404) = 1889568 * k + 1492202 := by
    unfold C
    simp [show (3779136 * k + 2984404) % 2 = 0 by omega]
    omega
  have h24 : C (1889568 * k + 1492202) = 944784 * k + 746101 := by
    unfold C
    simp [show (1889568 * k + 1492202) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 746101) = 2834352 * k + 2238304 := by
    unfold C
    simp [show (944784 * k + 746101) % 2 ≠ 0 by omega]
    omega
  have h26 : C (2834352 * k + 2238304) = 1417176 * k + 1119152 := by
    unfold C
    simp [show (2834352 * k + 2238304) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 1119152) = 708588 * k + 559576 := by
    unfold C
    simp [show (1417176 * k + 1119152) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 559576) = 354294 * k + 279788 := by
    unfold C
    simp [show (708588 * k + 559576) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 279788) = 177147 * k + 139894 := by
    unfold C
    simp [show (354294 * k + 279788) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 207015) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 207015))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_207099 : ∀ k : Nat,
    iterate (262144 * k + 207099) 29 = 177147 * k + 139951 ∧
      177147 * k + 139951 < 262144 * k + 207099 := by
  intro k
  have h1 : C (262144 * k + 207099) = 786432 * k + 621298 := by
    unfold C
    simp [show (262144 * k + 207099) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 621298) = 393216 * k + 310649 := by
    unfold C
    simp [show (786432 * k + 621298) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 310649) = 1179648 * k + 931948 := by
    unfold C
    simp [show (393216 * k + 310649) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 931948) = 589824 * k + 465974 := by
    unfold C
    simp [show (1179648 * k + 931948) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 465974) = 294912 * k + 232987 := by
    unfold C
    simp [show (589824 * k + 465974) % 2 = 0 by omega]
    omega
  have h6 : C (294912 * k + 232987) = 884736 * k + 698962 := by
    unfold C
    simp [show (294912 * k + 232987) % 2 ≠ 0 by omega]
    omega
  have h7 : C (884736 * k + 698962) = 442368 * k + 349481 := by
    unfold C
    simp [show (884736 * k + 698962) % 2 = 0 by omega]
    omega
  have h8 : C (442368 * k + 349481) = 1327104 * k + 1048444 := by
    unfold C
    simp [show (442368 * k + 349481) % 2 ≠ 0 by omega]
    omega
  have h9 : C (1327104 * k + 1048444) = 663552 * k + 524222 := by
    unfold C
    simp [show (1327104 * k + 1048444) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 524222) = 331776 * k + 262111 := by
    unfold C
    simp [show (663552 * k + 524222) % 2 = 0 by omega]
    omega
  have h11 : C (331776 * k + 262111) = 995328 * k + 786334 := by
    unfold C
    simp [show (331776 * k + 262111) % 2 ≠ 0 by omega]
    omega
  have h12 : C (995328 * k + 786334) = 497664 * k + 393167 := by
    unfold C
    simp [show (995328 * k + 786334) % 2 = 0 by omega]
    omega
  have h13 : C (497664 * k + 393167) = 1492992 * k + 1179502 := by
    unfold C
    simp [show (497664 * k + 393167) % 2 ≠ 0 by omega]
    omega
  have h14 : C (1492992 * k + 1179502) = 746496 * k + 589751 := by
    unfold C
    simp [show (1492992 * k + 1179502) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 589751) = 2239488 * k + 1769254 := by
    unfold C
    simp [show (746496 * k + 589751) % 2 ≠ 0 by omega]
    omega
  have h16 : C (2239488 * k + 1769254) = 1119744 * k + 884627 := by
    unfold C
    simp [show (2239488 * k + 1769254) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 884627) = 3359232 * k + 2653882 := by
    unfold C
    simp [show (1119744 * k + 884627) % 2 ≠ 0 by omega]
    omega
  have h18 : C (3359232 * k + 2653882) = 1679616 * k + 1326941 := by
    unfold C
    simp [show (3359232 * k + 2653882) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 1326941) = 5038848 * k + 3980824 := by
    unfold C
    simp [show (1679616 * k + 1326941) % 2 ≠ 0 by omega]
    omega
  have h20 : C (5038848 * k + 3980824) = 2519424 * k + 1990412 := by
    unfold C
    simp [show (5038848 * k + 3980824) % 2 = 0 by omega]
    omega
  have h21 : C (2519424 * k + 1990412) = 1259712 * k + 995206 := by
    unfold C
    simp [show (2519424 * k + 1990412) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 995206) = 629856 * k + 497603 := by
    unfold C
    simp [show (1259712 * k + 995206) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 497603) = 1889568 * k + 1492810 := by
    unfold C
    simp [show (629856 * k + 497603) % 2 ≠ 0 by omega]
    omega
  have h24 : C (1889568 * k + 1492810) = 944784 * k + 746405 := by
    unfold C
    simp [show (1889568 * k + 1492810) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 746405) = 2834352 * k + 2239216 := by
    unfold C
    simp [show (944784 * k + 746405) % 2 ≠ 0 by omega]
    omega
  have h26 : C (2834352 * k + 2239216) = 1417176 * k + 1119608 := by
    unfold C
    simp [show (2834352 * k + 2239216) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 1119608) = 708588 * k + 559804 := by
    unfold C
    simp [show (1417176 * k + 1119608) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 559804) = 354294 * k + 279902 := by
    unfold C
    simp [show (708588 * k + 559804) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 279902) = 177147 * k + 139951 := by
    unfold C
    simp [show (354294 * k + 279902) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 207099) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 207099))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

end CollatzM18Shard038
