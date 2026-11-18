import Mathlib.Data.Nat.Prime.Basic

namespace CollatzM18Shard045

def C (n : Nat) : Nat := if n % 2 = 0 then n / 2 else 3 * n + 1

def iterate (n t : Nat) : Nat := Nat.rec n (fun _ previous => C previous) t

theorem descent_mod262144_238663 : ∀ k : Nat,
    iterate (262144 * k + 238663) 29 = 177147 * k + 161281 ∧
      177147 * k + 161281 < 262144 * k + 238663 := by
  intro k
  have h1 : C (262144 * k + 238663) = 786432 * k + 715990 := by
    unfold C
    simp [show (262144 * k + 238663) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 715990) = 393216 * k + 357995 := by
    unfold C
    simp [show (786432 * k + 715990) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 357995) = 1179648 * k + 1073986 := by
    unfold C
    simp [show (393216 * k + 357995) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 1073986) = 589824 * k + 536993 := by
    unfold C
    simp [show (1179648 * k + 1073986) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 536993) = 1769472 * k + 1610980 := by
    unfold C
    simp [show (589824 * k + 536993) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 1610980) = 884736 * k + 805490 := by
    unfold C
    simp [show (1769472 * k + 1610980) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 805490) = 442368 * k + 402745 := by
    unfold C
    simp [show (884736 * k + 805490) % 2 = 0 by omega]
    omega
  have h8 : C (442368 * k + 402745) = 1327104 * k + 1208236 := by
    unfold C
    simp [show (442368 * k + 402745) % 2 ≠ 0 by omega]
    omega
  have h9 : C (1327104 * k + 1208236) = 663552 * k + 604118 := by
    unfold C
    simp [show (1327104 * k + 1208236) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 604118) = 331776 * k + 302059 := by
    unfold C
    simp [show (663552 * k + 604118) % 2 = 0 by omega]
    omega
  have h11 : C (331776 * k + 302059) = 995328 * k + 906178 := by
    unfold C
    simp [show (331776 * k + 302059) % 2 ≠ 0 by omega]
    omega
  have h12 : C (995328 * k + 906178) = 497664 * k + 453089 := by
    unfold C
    simp [show (995328 * k + 906178) % 2 = 0 by omega]
    omega
  have h13 : C (497664 * k + 453089) = 1492992 * k + 1359268 := by
    unfold C
    simp [show (497664 * k + 453089) % 2 ≠ 0 by omega]
    omega
  have h14 : C (1492992 * k + 1359268) = 746496 * k + 679634 := by
    unfold C
    simp [show (1492992 * k + 1359268) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 679634) = 373248 * k + 339817 := by
    unfold C
    simp [show (746496 * k + 679634) % 2 = 0 by omega]
    omega
  have h16 : C (373248 * k + 339817) = 1119744 * k + 1019452 := by
    unfold C
    simp [show (373248 * k + 339817) % 2 ≠ 0 by omega]
    omega
  have h17 : C (1119744 * k + 1019452) = 559872 * k + 509726 := by
    unfold C
    simp [show (1119744 * k + 1019452) % 2 = 0 by omega]
    omega
  have h18 : C (559872 * k + 509726) = 279936 * k + 254863 := by
    unfold C
    simp [show (559872 * k + 509726) % 2 = 0 by omega]
    omega
  have h19 : C (279936 * k + 254863) = 839808 * k + 764590 := by
    unfold C
    simp [show (279936 * k + 254863) % 2 ≠ 0 by omega]
    omega
  have h20 : C (839808 * k + 764590) = 419904 * k + 382295 := by
    unfold C
    simp [show (839808 * k + 764590) % 2 = 0 by omega]
    omega
  have h21 : C (419904 * k + 382295) = 1259712 * k + 1146886 := by
    unfold C
    simp [show (419904 * k + 382295) % 2 ≠ 0 by omega]
    omega
  have h22 : C (1259712 * k + 1146886) = 629856 * k + 573443 := by
    unfold C
    simp [show (1259712 * k + 1146886) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 573443) = 1889568 * k + 1720330 := by
    unfold C
    simp [show (629856 * k + 573443) % 2 ≠ 0 by omega]
    omega
  have h24 : C (1889568 * k + 1720330) = 944784 * k + 860165 := by
    unfold C
    simp [show (1889568 * k + 1720330) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 860165) = 2834352 * k + 2580496 := by
    unfold C
    simp [show (944784 * k + 860165) % 2 ≠ 0 by omega]
    omega
  have h26 : C (2834352 * k + 2580496) = 1417176 * k + 1290248 := by
    unfold C
    simp [show (2834352 * k + 2580496) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 1290248) = 708588 * k + 645124 := by
    unfold C
    simp [show (1417176 * k + 1290248) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 645124) = 354294 * k + 322562 := by
    unfold C
    simp [show (708588 * k + 645124) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 322562) = 177147 * k + 161281 := by
    unfold C
    simp [show (354294 * k + 322562) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 238663) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 238663))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_239343 : ∀ k : Nat,
    iterate (262144 * k + 239343) 29 = 177147 * k + 161740 ∧
      177147 * k + 161740 < 262144 * k + 239343 := by
  intro k
  have h1 : C (262144 * k + 239343) = 786432 * k + 718030 := by
    unfold C
    simp [show (262144 * k + 239343) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 718030) = 393216 * k + 359015 := by
    unfold C
    simp [show (786432 * k + 718030) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 359015) = 1179648 * k + 1077046 := by
    unfold C
    simp [show (393216 * k + 359015) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 1077046) = 589824 * k + 538523 := by
    unfold C
    simp [show (1179648 * k + 1077046) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 538523) = 1769472 * k + 1615570 := by
    unfold C
    simp [show (589824 * k + 538523) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 1615570) = 884736 * k + 807785 := by
    unfold C
    simp [show (1769472 * k + 1615570) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 807785) = 2654208 * k + 2423356 := by
    unfold C
    simp [show (884736 * k + 807785) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 2423356) = 1327104 * k + 1211678 := by
    unfold C
    simp [show (2654208 * k + 2423356) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 1211678) = 663552 * k + 605839 := by
    unfold C
    simp [show (1327104 * k + 1211678) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 605839) = 1990656 * k + 1817518 := by
    unfold C
    simp [show (663552 * k + 605839) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 1817518) = 995328 * k + 908759 := by
    unfold C
    simp [show (1990656 * k + 1817518) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 908759) = 2985984 * k + 2726278 := by
    unfold C
    simp [show (995328 * k + 908759) % 2 ≠ 0 by omega]
    omega
  have h13 : C (2985984 * k + 2726278) = 1492992 * k + 1363139 := by
    unfold C
    simp [show (2985984 * k + 2726278) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 1363139) = 4478976 * k + 4089418 := by
    unfold C
    simp [show (1492992 * k + 1363139) % 2 ≠ 0 by omega]
    omega
  have h15 : C (4478976 * k + 4089418) = 2239488 * k + 2044709 := by
    unfold C
    simp [show (4478976 * k + 4089418) % 2 = 0 by omega]
    omega
  have h16 : C (2239488 * k + 2044709) = 6718464 * k + 6134128 := by
    unfold C
    simp [show (2239488 * k + 2044709) % 2 ≠ 0 by omega]
    omega
  have h17 : C (6718464 * k + 6134128) = 3359232 * k + 3067064 := by
    unfold C
    simp [show (6718464 * k + 6134128) % 2 = 0 by omega]
    omega
  have h18 : C (3359232 * k + 3067064) = 1679616 * k + 1533532 := by
    unfold C
    simp [show (3359232 * k + 3067064) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 1533532) = 839808 * k + 766766 := by
    unfold C
    simp [show (1679616 * k + 1533532) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 766766) = 419904 * k + 383383 := by
    unfold C
    simp [show (839808 * k + 766766) % 2 = 0 by omega]
    omega
  have h21 : C (419904 * k + 383383) = 1259712 * k + 1150150 := by
    unfold C
    simp [show (419904 * k + 383383) % 2 ≠ 0 by omega]
    omega
  have h22 : C (1259712 * k + 1150150) = 629856 * k + 575075 := by
    unfold C
    simp [show (1259712 * k + 1150150) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 575075) = 1889568 * k + 1725226 := by
    unfold C
    simp [show (629856 * k + 575075) % 2 ≠ 0 by omega]
    omega
  have h24 : C (1889568 * k + 1725226) = 944784 * k + 862613 := by
    unfold C
    simp [show (1889568 * k + 1725226) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 862613) = 2834352 * k + 2587840 := by
    unfold C
    simp [show (944784 * k + 862613) % 2 ≠ 0 by omega]
    omega
  have h26 : C (2834352 * k + 2587840) = 1417176 * k + 1293920 := by
    unfold C
    simp [show (2834352 * k + 2587840) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 1293920) = 708588 * k + 646960 := by
    unfold C
    simp [show (1417176 * k + 1293920) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 646960) = 354294 * k + 323480 := by
    unfold C
    simp [show (708588 * k + 646960) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 323480) = 177147 * k + 161740 := by
    unfold C
    simp [show (354294 * k + 323480) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 239343) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 239343))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_239935 : ∀ k : Nat,
    iterate (262144 * k + 239935) 29 = 177147 * k + 162140 ∧
      177147 * k + 162140 < 262144 * k + 239935 := by
  intro k
  have h1 : C (262144 * k + 239935) = 786432 * k + 719806 := by
    unfold C
    simp [show (262144 * k + 239935) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 719806) = 393216 * k + 359903 := by
    unfold C
    simp [show (786432 * k + 719806) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 359903) = 1179648 * k + 1079710 := by
    unfold C
    simp [show (393216 * k + 359903) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 1079710) = 589824 * k + 539855 := by
    unfold C
    simp [show (1179648 * k + 1079710) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 539855) = 1769472 * k + 1619566 := by
    unfold C
    simp [show (589824 * k + 539855) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 1619566) = 884736 * k + 809783 := by
    unfold C
    simp [show (1769472 * k + 1619566) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 809783) = 2654208 * k + 2429350 := by
    unfold C
    simp [show (884736 * k + 809783) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 2429350) = 1327104 * k + 1214675 := by
    unfold C
    simp [show (2654208 * k + 2429350) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 1214675) = 3981312 * k + 3644026 := by
    unfold C
    simp [show (1327104 * k + 1214675) % 2 ≠ 0 by omega]
    omega
  have h10 : C (3981312 * k + 3644026) = 1990656 * k + 1822013 := by
    unfold C
    simp [show (3981312 * k + 3644026) % 2 = 0 by omega]
    omega
  have h11 : C (1990656 * k + 1822013) = 5971968 * k + 5466040 := by
    unfold C
    simp [show (1990656 * k + 1822013) % 2 ≠ 0 by omega]
    omega
  have h12 : C (5971968 * k + 5466040) = 2985984 * k + 2733020 := by
    unfold C
    simp [show (5971968 * k + 5466040) % 2 = 0 by omega]
    omega
  have h13 : C (2985984 * k + 2733020) = 1492992 * k + 1366510 := by
    unfold C
    simp [show (2985984 * k + 2733020) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 1366510) = 746496 * k + 683255 := by
    unfold C
    simp [show (1492992 * k + 1366510) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 683255) = 2239488 * k + 2049766 := by
    unfold C
    simp [show (746496 * k + 683255) % 2 ≠ 0 by omega]
    omega
  have h16 : C (2239488 * k + 2049766) = 1119744 * k + 1024883 := by
    unfold C
    simp [show (2239488 * k + 2049766) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 1024883) = 3359232 * k + 3074650 := by
    unfold C
    simp [show (1119744 * k + 1024883) % 2 ≠ 0 by omega]
    omega
  have h18 : C (3359232 * k + 3074650) = 1679616 * k + 1537325 := by
    unfold C
    simp [show (3359232 * k + 3074650) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 1537325) = 5038848 * k + 4611976 := by
    unfold C
    simp [show (1679616 * k + 1537325) % 2 ≠ 0 by omega]
    omega
  have h20 : C (5038848 * k + 4611976) = 2519424 * k + 2305988 := by
    unfold C
    simp [show (5038848 * k + 4611976) % 2 = 0 by omega]
    omega
  have h21 : C (2519424 * k + 2305988) = 1259712 * k + 1152994 := by
    unfold C
    simp [show (2519424 * k + 2305988) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 1152994) = 629856 * k + 576497 := by
    unfold C
    simp [show (1259712 * k + 1152994) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 576497) = 1889568 * k + 1729492 := by
    unfold C
    simp [show (629856 * k + 576497) % 2 ≠ 0 by omega]
    omega
  have h24 : C (1889568 * k + 1729492) = 944784 * k + 864746 := by
    unfold C
    simp [show (1889568 * k + 1729492) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 864746) = 472392 * k + 432373 := by
    unfold C
    simp [show (944784 * k + 864746) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 432373) = 1417176 * k + 1297120 := by
    unfold C
    simp [show (472392 * k + 432373) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 1297120) = 708588 * k + 648560 := by
    unfold C
    simp [show (1417176 * k + 1297120) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 648560) = 354294 * k + 324280 := by
    unfold C
    simp [show (708588 * k + 648560) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 324280) = 177147 * k + 162140 := by
    unfold C
    simp [show (354294 * k + 324280) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 239935) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 239935))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_239975 : ∀ k : Nat,
    iterate (262144 * k + 239975) 29 = 177147 * k + 162167 ∧
      177147 * k + 162167 < 262144 * k + 239975 := by
  intro k
  have h1 : C (262144 * k + 239975) = 786432 * k + 719926 := by
    unfold C
    simp [show (262144 * k + 239975) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 719926) = 393216 * k + 359963 := by
    unfold C
    simp [show (786432 * k + 719926) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 359963) = 1179648 * k + 1079890 := by
    unfold C
    simp [show (393216 * k + 359963) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 1079890) = 589824 * k + 539945 := by
    unfold C
    simp [show (1179648 * k + 1079890) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 539945) = 1769472 * k + 1619836 := by
    unfold C
    simp [show (589824 * k + 539945) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 1619836) = 884736 * k + 809918 := by
    unfold C
    simp [show (1769472 * k + 1619836) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 809918) = 442368 * k + 404959 := by
    unfold C
    simp [show (884736 * k + 809918) % 2 = 0 by omega]
    omega
  have h8 : C (442368 * k + 404959) = 1327104 * k + 1214878 := by
    unfold C
    simp [show (442368 * k + 404959) % 2 ≠ 0 by omega]
    omega
  have h9 : C (1327104 * k + 1214878) = 663552 * k + 607439 := by
    unfold C
    simp [show (1327104 * k + 1214878) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 607439) = 1990656 * k + 1822318 := by
    unfold C
    simp [show (663552 * k + 607439) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 1822318) = 995328 * k + 911159 := by
    unfold C
    simp [show (1990656 * k + 1822318) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 911159) = 2985984 * k + 2733478 := by
    unfold C
    simp [show (995328 * k + 911159) % 2 ≠ 0 by omega]
    omega
  have h13 : C (2985984 * k + 2733478) = 1492992 * k + 1366739 := by
    unfold C
    simp [show (2985984 * k + 2733478) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 1366739) = 4478976 * k + 4100218 := by
    unfold C
    simp [show (1492992 * k + 1366739) % 2 ≠ 0 by omega]
    omega
  have h15 : C (4478976 * k + 4100218) = 2239488 * k + 2050109 := by
    unfold C
    simp [show (4478976 * k + 4100218) % 2 = 0 by omega]
    omega
  have h16 : C (2239488 * k + 2050109) = 6718464 * k + 6150328 := by
    unfold C
    simp [show (2239488 * k + 2050109) % 2 ≠ 0 by omega]
    omega
  have h17 : C (6718464 * k + 6150328) = 3359232 * k + 3075164 := by
    unfold C
    simp [show (6718464 * k + 6150328) % 2 = 0 by omega]
    omega
  have h18 : C (3359232 * k + 3075164) = 1679616 * k + 1537582 := by
    unfold C
    simp [show (3359232 * k + 3075164) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 1537582) = 839808 * k + 768791 := by
    unfold C
    simp [show (1679616 * k + 1537582) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 768791) = 2519424 * k + 2306374 := by
    unfold C
    simp [show (839808 * k + 768791) % 2 ≠ 0 by omega]
    omega
  have h21 : C (2519424 * k + 2306374) = 1259712 * k + 1153187 := by
    unfold C
    simp [show (2519424 * k + 2306374) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 1153187) = 3779136 * k + 3459562 := by
    unfold C
    simp [show (1259712 * k + 1153187) % 2 ≠ 0 by omega]
    omega
  have h23 : C (3779136 * k + 3459562) = 1889568 * k + 1729781 := by
    unfold C
    simp [show (3779136 * k + 3459562) % 2 = 0 by omega]
    omega
  have h24 : C (1889568 * k + 1729781) = 5668704 * k + 5189344 := by
    unfold C
    simp [show (1889568 * k + 1729781) % 2 ≠ 0 by omega]
    omega
  have h25 : C (5668704 * k + 5189344) = 2834352 * k + 2594672 := by
    unfold C
    simp [show (5668704 * k + 5189344) % 2 = 0 by omega]
    omega
  have h26 : C (2834352 * k + 2594672) = 1417176 * k + 1297336 := by
    unfold C
    simp [show (2834352 * k + 2594672) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 1297336) = 708588 * k + 648668 := by
    unfold C
    simp [show (1417176 * k + 1297336) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 648668) = 354294 * k + 324334 := by
    unfold C
    simp [show (708588 * k + 648668) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 324334) = 177147 * k + 162167 := by
    unfold C
    simp [show (354294 * k + 324334) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 239975) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 239975))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_240103 : ∀ k : Nat,
    iterate (262144 * k + 240103) 29 = 177147 * k + 162254 ∧
      177147 * k + 162254 < 262144 * k + 240103 := by
  intro k
  have h1 : C (262144 * k + 240103) = 786432 * k + 720310 := by
    unfold C
    simp [show (262144 * k + 240103) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 720310) = 393216 * k + 360155 := by
    unfold C
    simp [show (786432 * k + 720310) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 360155) = 1179648 * k + 1080466 := by
    unfold C
    simp [show (393216 * k + 360155) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 1080466) = 589824 * k + 540233 := by
    unfold C
    simp [show (1179648 * k + 1080466) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 540233) = 1769472 * k + 1620700 := by
    unfold C
    simp [show (589824 * k + 540233) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 1620700) = 884736 * k + 810350 := by
    unfold C
    simp [show (1769472 * k + 1620700) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 810350) = 442368 * k + 405175 := by
    unfold C
    simp [show (884736 * k + 810350) % 2 = 0 by omega]
    omega
  have h8 : C (442368 * k + 405175) = 1327104 * k + 1215526 := by
    unfold C
    simp [show (442368 * k + 405175) % 2 ≠ 0 by omega]
    omega
  have h9 : C (1327104 * k + 1215526) = 663552 * k + 607763 := by
    unfold C
    simp [show (1327104 * k + 1215526) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 607763) = 1990656 * k + 1823290 := by
    unfold C
    simp [show (663552 * k + 607763) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 1823290) = 995328 * k + 911645 := by
    unfold C
    simp [show (1990656 * k + 1823290) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 911645) = 2985984 * k + 2734936 := by
    unfold C
    simp [show (995328 * k + 911645) % 2 ≠ 0 by omega]
    omega
  have h13 : C (2985984 * k + 2734936) = 1492992 * k + 1367468 := by
    unfold C
    simp [show (2985984 * k + 2734936) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 1367468) = 746496 * k + 683734 := by
    unfold C
    simp [show (1492992 * k + 1367468) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 683734) = 373248 * k + 341867 := by
    unfold C
    simp [show (746496 * k + 683734) % 2 = 0 by omega]
    omega
  have h16 : C (373248 * k + 341867) = 1119744 * k + 1025602 := by
    unfold C
    simp [show (373248 * k + 341867) % 2 ≠ 0 by omega]
    omega
  have h17 : C (1119744 * k + 1025602) = 559872 * k + 512801 := by
    unfold C
    simp [show (1119744 * k + 1025602) % 2 = 0 by omega]
    omega
  have h18 : C (559872 * k + 512801) = 1679616 * k + 1538404 := by
    unfold C
    simp [show (559872 * k + 512801) % 2 ≠ 0 by omega]
    omega
  have h19 : C (1679616 * k + 1538404) = 839808 * k + 769202 := by
    unfold C
    simp [show (1679616 * k + 1538404) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 769202) = 419904 * k + 384601 := by
    unfold C
    simp [show (839808 * k + 769202) % 2 = 0 by omega]
    omega
  have h21 : C (419904 * k + 384601) = 1259712 * k + 1153804 := by
    unfold C
    simp [show (419904 * k + 384601) % 2 ≠ 0 by omega]
    omega
  have h22 : C (1259712 * k + 1153804) = 629856 * k + 576902 := by
    unfold C
    simp [show (1259712 * k + 1153804) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 576902) = 314928 * k + 288451 := by
    unfold C
    simp [show (629856 * k + 576902) % 2 = 0 by omega]
    omega
  have h24 : C (314928 * k + 288451) = 944784 * k + 865354 := by
    unfold C
    simp [show (314928 * k + 288451) % 2 ≠ 0 by omega]
    omega
  have h25 : C (944784 * k + 865354) = 472392 * k + 432677 := by
    unfold C
    simp [show (944784 * k + 865354) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 432677) = 1417176 * k + 1298032 := by
    unfold C
    simp [show (472392 * k + 432677) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 1298032) = 708588 * k + 649016 := by
    unfold C
    simp [show (1417176 * k + 1298032) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 649016) = 354294 * k + 324508 := by
    unfold C
    simp [show (708588 * k + 649016) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 324508) = 177147 * k + 162254 := by
    unfold C
    simp [show (354294 * k + 324508) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 240103) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 240103))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_240255 : ∀ k : Nat,
    iterate (262144 * k + 240255) 29 = 177147 * k + 162356 ∧
      177147 * k + 162356 < 262144 * k + 240255 := by
  intro k
  have h1 : C (262144 * k + 240255) = 786432 * k + 720766 := by
    unfold C
    simp [show (262144 * k + 240255) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 720766) = 393216 * k + 360383 := by
    unfold C
    simp [show (786432 * k + 720766) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 360383) = 1179648 * k + 1081150 := by
    unfold C
    simp [show (393216 * k + 360383) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 1081150) = 589824 * k + 540575 := by
    unfold C
    simp [show (1179648 * k + 1081150) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 540575) = 1769472 * k + 1621726 := by
    unfold C
    simp [show (589824 * k + 540575) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 1621726) = 884736 * k + 810863 := by
    unfold C
    simp [show (1769472 * k + 1621726) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 810863) = 2654208 * k + 2432590 := by
    unfold C
    simp [show (884736 * k + 810863) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 2432590) = 1327104 * k + 1216295 := by
    unfold C
    simp [show (2654208 * k + 2432590) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 1216295) = 3981312 * k + 3648886 := by
    unfold C
    simp [show (1327104 * k + 1216295) % 2 ≠ 0 by omega]
    omega
  have h10 : C (3981312 * k + 3648886) = 1990656 * k + 1824443 := by
    unfold C
    simp [show (3981312 * k + 3648886) % 2 = 0 by omega]
    omega
  have h11 : C (1990656 * k + 1824443) = 5971968 * k + 5473330 := by
    unfold C
    simp [show (1990656 * k + 1824443) % 2 ≠ 0 by omega]
    omega
  have h12 : C (5971968 * k + 5473330) = 2985984 * k + 2736665 := by
    unfold C
    simp [show (5971968 * k + 5473330) % 2 = 0 by omega]
    omega
  have h13 : C (2985984 * k + 2736665) = 8957952 * k + 8209996 := by
    unfold C
    simp [show (2985984 * k + 2736665) % 2 ≠ 0 by omega]
    omega
  have h14 : C (8957952 * k + 8209996) = 4478976 * k + 4104998 := by
    unfold C
    simp [show (8957952 * k + 8209996) % 2 = 0 by omega]
    omega
  have h15 : C (4478976 * k + 4104998) = 2239488 * k + 2052499 := by
    unfold C
    simp [show (4478976 * k + 4104998) % 2 = 0 by omega]
    omega
  have h16 : C (2239488 * k + 2052499) = 6718464 * k + 6157498 := by
    unfold C
    simp [show (2239488 * k + 2052499) % 2 ≠ 0 by omega]
    omega
  have h17 : C (6718464 * k + 6157498) = 3359232 * k + 3078749 := by
    unfold C
    simp [show (6718464 * k + 6157498) % 2 = 0 by omega]
    omega
  have h18 : C (3359232 * k + 3078749) = 10077696 * k + 9236248 := by
    unfold C
    simp [show (3359232 * k + 3078749) % 2 ≠ 0 by omega]
    omega
  have h19 : C (10077696 * k + 9236248) = 5038848 * k + 4618124 := by
    unfold C
    simp [show (10077696 * k + 9236248) % 2 = 0 by omega]
    omega
  have h20 : C (5038848 * k + 4618124) = 2519424 * k + 2309062 := by
    unfold C
    simp [show (5038848 * k + 4618124) % 2 = 0 by omega]
    omega
  have h21 : C (2519424 * k + 2309062) = 1259712 * k + 1154531 := by
    unfold C
    simp [show (2519424 * k + 2309062) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 1154531) = 3779136 * k + 3463594 := by
    unfold C
    simp [show (1259712 * k + 1154531) % 2 ≠ 0 by omega]
    omega
  have h23 : C (3779136 * k + 3463594) = 1889568 * k + 1731797 := by
    unfold C
    simp [show (3779136 * k + 3463594) % 2 = 0 by omega]
    omega
  have h24 : C (1889568 * k + 1731797) = 5668704 * k + 5195392 := by
    unfold C
    simp [show (1889568 * k + 1731797) % 2 ≠ 0 by omega]
    omega
  have h25 : C (5668704 * k + 5195392) = 2834352 * k + 2597696 := by
    unfold C
    simp [show (5668704 * k + 5195392) % 2 = 0 by omega]
    omega
  have h26 : C (2834352 * k + 2597696) = 1417176 * k + 1298848 := by
    unfold C
    simp [show (2834352 * k + 2597696) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 1298848) = 708588 * k + 649424 := by
    unfold C
    simp [show (1417176 * k + 1298848) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 649424) = 354294 * k + 324712 := by
    unfold C
    simp [show (708588 * k + 649424) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 324712) = 177147 * k + 162356 := by
    unfold C
    simp [show (354294 * k + 324712) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 240255) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 240255))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_240511 : ∀ k : Nat,
    iterate (262144 * k + 240511) 29 = 177147 * k + 162529 ∧
      177147 * k + 162529 < 262144 * k + 240511 := by
  intro k
  have h1 : C (262144 * k + 240511) = 786432 * k + 721534 := by
    unfold C
    simp [show (262144 * k + 240511) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 721534) = 393216 * k + 360767 := by
    unfold C
    simp [show (786432 * k + 721534) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 360767) = 1179648 * k + 1082302 := by
    unfold C
    simp [show (393216 * k + 360767) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 1082302) = 589824 * k + 541151 := by
    unfold C
    simp [show (1179648 * k + 1082302) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 541151) = 1769472 * k + 1623454 := by
    unfold C
    simp [show (589824 * k + 541151) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 1623454) = 884736 * k + 811727 := by
    unfold C
    simp [show (1769472 * k + 1623454) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 811727) = 2654208 * k + 2435182 := by
    unfold C
    simp [show (884736 * k + 811727) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 2435182) = 1327104 * k + 1217591 := by
    unfold C
    simp [show (2654208 * k + 2435182) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 1217591) = 3981312 * k + 3652774 := by
    unfold C
    simp [show (1327104 * k + 1217591) % 2 ≠ 0 by omega]
    omega
  have h10 : C (3981312 * k + 3652774) = 1990656 * k + 1826387 := by
    unfold C
    simp [show (3981312 * k + 3652774) % 2 = 0 by omega]
    omega
  have h11 : C (1990656 * k + 1826387) = 5971968 * k + 5479162 := by
    unfold C
    simp [show (1990656 * k + 1826387) % 2 ≠ 0 by omega]
    omega
  have h12 : C (5971968 * k + 5479162) = 2985984 * k + 2739581 := by
    unfold C
    simp [show (5971968 * k + 5479162) % 2 = 0 by omega]
    omega
  have h13 : C (2985984 * k + 2739581) = 8957952 * k + 8218744 := by
    unfold C
    simp [show (2985984 * k + 2739581) % 2 ≠ 0 by omega]
    omega
  have h14 : C (8957952 * k + 8218744) = 4478976 * k + 4109372 := by
    unfold C
    simp [show (8957952 * k + 8218744) % 2 = 0 by omega]
    omega
  have h15 : C (4478976 * k + 4109372) = 2239488 * k + 2054686 := by
    unfold C
    simp [show (4478976 * k + 4109372) % 2 = 0 by omega]
    omega
  have h16 : C (2239488 * k + 2054686) = 1119744 * k + 1027343 := by
    unfold C
    simp [show (2239488 * k + 2054686) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 1027343) = 3359232 * k + 3082030 := by
    unfold C
    simp [show (1119744 * k + 1027343) % 2 ≠ 0 by omega]
    omega
  have h18 : C (3359232 * k + 3082030) = 1679616 * k + 1541015 := by
    unfold C
    simp [show (3359232 * k + 3082030) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 1541015) = 5038848 * k + 4623046 := by
    unfold C
    simp [show (1679616 * k + 1541015) % 2 ≠ 0 by omega]
    omega
  have h20 : C (5038848 * k + 4623046) = 2519424 * k + 2311523 := by
    unfold C
    simp [show (5038848 * k + 4623046) % 2 = 0 by omega]
    omega
  have h21 : C (2519424 * k + 2311523) = 7558272 * k + 6934570 := by
    unfold C
    simp [show (2519424 * k + 2311523) % 2 ≠ 0 by omega]
    omega
  have h22 : C (7558272 * k + 6934570) = 3779136 * k + 3467285 := by
    unfold C
    simp [show (7558272 * k + 6934570) % 2 = 0 by omega]
    omega
  have h23 : C (3779136 * k + 3467285) = 11337408 * k + 10401856 := by
    unfold C
    simp [show (3779136 * k + 3467285) % 2 ≠ 0 by omega]
    omega
  have h24 : C (11337408 * k + 10401856) = 5668704 * k + 5200928 := by
    unfold C
    simp [show (11337408 * k + 10401856) % 2 = 0 by omega]
    omega
  have h25 : C (5668704 * k + 5200928) = 2834352 * k + 2600464 := by
    unfold C
    simp [show (5668704 * k + 5200928) % 2 = 0 by omega]
    omega
  have h26 : C (2834352 * k + 2600464) = 1417176 * k + 1300232 := by
    unfold C
    simp [show (2834352 * k + 2600464) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 1300232) = 708588 * k + 650116 := by
    unfold C
    simp [show (1417176 * k + 1300232) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 650116) = 354294 * k + 325058 := by
    unfold C
    simp [show (708588 * k + 650116) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 325058) = 177147 * k + 162529 := by
    unfold C
    simp [show (354294 * k + 325058) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 240511) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 240511))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_240623 : ∀ k : Nat,
    iterate (262144 * k + 240623) 29 = 177147 * k + 162605 ∧
      177147 * k + 162605 < 262144 * k + 240623 := by
  intro k
  have h1 : C (262144 * k + 240623) = 786432 * k + 721870 := by
    unfold C
    simp [show (262144 * k + 240623) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 721870) = 393216 * k + 360935 := by
    unfold C
    simp [show (786432 * k + 721870) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 360935) = 1179648 * k + 1082806 := by
    unfold C
    simp [show (393216 * k + 360935) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 1082806) = 589824 * k + 541403 := by
    unfold C
    simp [show (1179648 * k + 1082806) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 541403) = 1769472 * k + 1624210 := by
    unfold C
    simp [show (589824 * k + 541403) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 1624210) = 884736 * k + 812105 := by
    unfold C
    simp [show (1769472 * k + 1624210) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 812105) = 2654208 * k + 2436316 := by
    unfold C
    simp [show (884736 * k + 812105) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 2436316) = 1327104 * k + 1218158 := by
    unfold C
    simp [show (2654208 * k + 2436316) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 1218158) = 663552 * k + 609079 := by
    unfold C
    simp [show (1327104 * k + 1218158) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 609079) = 1990656 * k + 1827238 := by
    unfold C
    simp [show (663552 * k + 609079) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 1827238) = 995328 * k + 913619 := by
    unfold C
    simp [show (1990656 * k + 1827238) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 913619) = 2985984 * k + 2740858 := by
    unfold C
    simp [show (995328 * k + 913619) % 2 ≠ 0 by omega]
    omega
  have h13 : C (2985984 * k + 2740858) = 1492992 * k + 1370429 := by
    unfold C
    simp [show (2985984 * k + 2740858) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 1370429) = 4478976 * k + 4111288 := by
    unfold C
    simp [show (1492992 * k + 1370429) % 2 ≠ 0 by omega]
    omega
  have h15 : C (4478976 * k + 4111288) = 2239488 * k + 2055644 := by
    unfold C
    simp [show (4478976 * k + 4111288) % 2 = 0 by omega]
    omega
  have h16 : C (2239488 * k + 2055644) = 1119744 * k + 1027822 := by
    unfold C
    simp [show (2239488 * k + 2055644) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 1027822) = 559872 * k + 513911 := by
    unfold C
    simp [show (1119744 * k + 1027822) % 2 = 0 by omega]
    omega
  have h18 : C (559872 * k + 513911) = 1679616 * k + 1541734 := by
    unfold C
    simp [show (559872 * k + 513911) % 2 ≠ 0 by omega]
    omega
  have h19 : C (1679616 * k + 1541734) = 839808 * k + 770867 := by
    unfold C
    simp [show (1679616 * k + 1541734) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 770867) = 2519424 * k + 2312602 := by
    unfold C
    simp [show (839808 * k + 770867) % 2 ≠ 0 by omega]
    omega
  have h21 : C (2519424 * k + 2312602) = 1259712 * k + 1156301 := by
    unfold C
    simp [show (2519424 * k + 2312602) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 1156301) = 3779136 * k + 3468904 := by
    unfold C
    simp [show (1259712 * k + 1156301) % 2 ≠ 0 by omega]
    omega
  have h23 : C (3779136 * k + 3468904) = 1889568 * k + 1734452 := by
    unfold C
    simp [show (3779136 * k + 3468904) % 2 = 0 by omega]
    omega
  have h24 : C (1889568 * k + 1734452) = 944784 * k + 867226 := by
    unfold C
    simp [show (1889568 * k + 1734452) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 867226) = 472392 * k + 433613 := by
    unfold C
    simp [show (944784 * k + 867226) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 433613) = 1417176 * k + 1300840 := by
    unfold C
    simp [show (472392 * k + 433613) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 1300840) = 708588 * k + 650420 := by
    unfold C
    simp [show (1417176 * k + 1300840) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 650420) = 354294 * k + 325210 := by
    unfold C
    simp [show (708588 * k + 650420) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 325210) = 177147 * k + 162605 := by
    unfold C
    simp [show (354294 * k + 325210) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 240623) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 240623))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_242559 : ∀ k : Nat,
    iterate (262144 * k + 242559) 29 = 177147 * k + 163913 ∧
      177147 * k + 163913 < 262144 * k + 242559 := by
  intro k
  have h1 : C (262144 * k + 242559) = 786432 * k + 727678 := by
    unfold C
    simp [show (262144 * k + 242559) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 727678) = 393216 * k + 363839 := by
    unfold C
    simp [show (786432 * k + 727678) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 363839) = 1179648 * k + 1091518 := by
    unfold C
    simp [show (393216 * k + 363839) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 1091518) = 589824 * k + 545759 := by
    unfold C
    simp [show (1179648 * k + 1091518) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 545759) = 1769472 * k + 1637278 := by
    unfold C
    simp [show (589824 * k + 545759) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 1637278) = 884736 * k + 818639 := by
    unfold C
    simp [show (1769472 * k + 1637278) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 818639) = 2654208 * k + 2455918 := by
    unfold C
    simp [show (884736 * k + 818639) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 2455918) = 1327104 * k + 1227959 := by
    unfold C
    simp [show (2654208 * k + 2455918) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 1227959) = 3981312 * k + 3683878 := by
    unfold C
    simp [show (1327104 * k + 1227959) % 2 ≠ 0 by omega]
    omega
  have h10 : C (3981312 * k + 3683878) = 1990656 * k + 1841939 := by
    unfold C
    simp [show (3981312 * k + 3683878) % 2 = 0 by omega]
    omega
  have h11 : C (1990656 * k + 1841939) = 5971968 * k + 5525818 := by
    unfold C
    simp [show (1990656 * k + 1841939) % 2 ≠ 0 by omega]
    omega
  have h12 : C (5971968 * k + 5525818) = 2985984 * k + 2762909 := by
    unfold C
    simp [show (5971968 * k + 5525818) % 2 = 0 by omega]
    omega
  have h13 : C (2985984 * k + 2762909) = 8957952 * k + 8288728 := by
    unfold C
    simp [show (2985984 * k + 2762909) % 2 ≠ 0 by omega]
    omega
  have h14 : C (8957952 * k + 8288728) = 4478976 * k + 4144364 := by
    unfold C
    simp [show (8957952 * k + 8288728) % 2 = 0 by omega]
    omega
  have h15 : C (4478976 * k + 4144364) = 2239488 * k + 2072182 := by
    unfold C
    simp [show (4478976 * k + 4144364) % 2 = 0 by omega]
    omega
  have h16 : C (2239488 * k + 2072182) = 1119744 * k + 1036091 := by
    unfold C
    simp [show (2239488 * k + 2072182) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 1036091) = 3359232 * k + 3108274 := by
    unfold C
    simp [show (1119744 * k + 1036091) % 2 ≠ 0 by omega]
    omega
  have h18 : C (3359232 * k + 3108274) = 1679616 * k + 1554137 := by
    unfold C
    simp [show (3359232 * k + 3108274) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 1554137) = 5038848 * k + 4662412 := by
    unfold C
    simp [show (1679616 * k + 1554137) % 2 ≠ 0 by omega]
    omega
  have h20 : C (5038848 * k + 4662412) = 2519424 * k + 2331206 := by
    unfold C
    simp [show (5038848 * k + 4662412) % 2 = 0 by omega]
    omega
  have h21 : C (2519424 * k + 2331206) = 1259712 * k + 1165603 := by
    unfold C
    simp [show (2519424 * k + 2331206) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 1165603) = 3779136 * k + 3496810 := by
    unfold C
    simp [show (1259712 * k + 1165603) % 2 ≠ 0 by omega]
    omega
  have h23 : C (3779136 * k + 3496810) = 1889568 * k + 1748405 := by
    unfold C
    simp [show (3779136 * k + 3496810) % 2 = 0 by omega]
    omega
  have h24 : C (1889568 * k + 1748405) = 5668704 * k + 5245216 := by
    unfold C
    simp [show (1889568 * k + 1748405) % 2 ≠ 0 by omega]
    omega
  have h25 : C (5668704 * k + 5245216) = 2834352 * k + 2622608 := by
    unfold C
    simp [show (5668704 * k + 5245216) % 2 = 0 by omega]
    omega
  have h26 : C (2834352 * k + 2622608) = 1417176 * k + 1311304 := by
    unfold C
    simp [show (2834352 * k + 2622608) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 1311304) = 708588 * k + 655652 := by
    unfold C
    simp [show (1417176 * k + 1311304) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 655652) = 354294 * k + 327826 := by
    unfold C
    simp [show (708588 * k + 655652) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 327826) = 177147 * k + 163913 := by
    unfold C
    simp [show (354294 * k + 327826) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 242559) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 242559))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_242815 : ∀ k : Nat,
    iterate (262144 * k + 242815) 29 = 177147 * k + 164086 ∧
      177147 * k + 164086 < 262144 * k + 242815 := by
  intro k
  have h1 : C (262144 * k + 242815) = 786432 * k + 728446 := by
    unfold C
    simp [show (262144 * k + 242815) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 728446) = 393216 * k + 364223 := by
    unfold C
    simp [show (786432 * k + 728446) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 364223) = 1179648 * k + 1092670 := by
    unfold C
    simp [show (393216 * k + 364223) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 1092670) = 589824 * k + 546335 := by
    unfold C
    simp [show (1179648 * k + 1092670) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 546335) = 1769472 * k + 1639006 := by
    unfold C
    simp [show (589824 * k + 546335) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 1639006) = 884736 * k + 819503 := by
    unfold C
    simp [show (1769472 * k + 1639006) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 819503) = 2654208 * k + 2458510 := by
    unfold C
    simp [show (884736 * k + 819503) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 2458510) = 1327104 * k + 1229255 := by
    unfold C
    simp [show (2654208 * k + 2458510) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 1229255) = 3981312 * k + 3687766 := by
    unfold C
    simp [show (1327104 * k + 1229255) % 2 ≠ 0 by omega]
    omega
  have h10 : C (3981312 * k + 3687766) = 1990656 * k + 1843883 := by
    unfold C
    simp [show (3981312 * k + 3687766) % 2 = 0 by omega]
    omega
  have h11 : C (1990656 * k + 1843883) = 5971968 * k + 5531650 := by
    unfold C
    simp [show (1990656 * k + 1843883) % 2 ≠ 0 by omega]
    omega
  have h12 : C (5971968 * k + 5531650) = 2985984 * k + 2765825 := by
    unfold C
    simp [show (5971968 * k + 5531650) % 2 = 0 by omega]
    omega
  have h13 : C (2985984 * k + 2765825) = 8957952 * k + 8297476 := by
    unfold C
    simp [show (2985984 * k + 2765825) % 2 ≠ 0 by omega]
    omega
  have h14 : C (8957952 * k + 8297476) = 4478976 * k + 4148738 := by
    unfold C
    simp [show (8957952 * k + 8297476) % 2 = 0 by omega]
    omega
  have h15 : C (4478976 * k + 4148738) = 2239488 * k + 2074369 := by
    unfold C
    simp [show (4478976 * k + 4148738) % 2 = 0 by omega]
    omega
  have h16 : C (2239488 * k + 2074369) = 6718464 * k + 6223108 := by
    unfold C
    simp [show (2239488 * k + 2074369) % 2 ≠ 0 by omega]
    omega
  have h17 : C (6718464 * k + 6223108) = 3359232 * k + 3111554 := by
    unfold C
    simp [show (6718464 * k + 6223108) % 2 = 0 by omega]
    omega
  have h18 : C (3359232 * k + 3111554) = 1679616 * k + 1555777 := by
    unfold C
    simp [show (3359232 * k + 3111554) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 1555777) = 5038848 * k + 4667332 := by
    unfold C
    simp [show (1679616 * k + 1555777) % 2 ≠ 0 by omega]
    omega
  have h20 : C (5038848 * k + 4667332) = 2519424 * k + 2333666 := by
    unfold C
    simp [show (5038848 * k + 4667332) % 2 = 0 by omega]
    omega
  have h21 : C (2519424 * k + 2333666) = 1259712 * k + 1166833 := by
    unfold C
    simp [show (2519424 * k + 2333666) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 1166833) = 3779136 * k + 3500500 := by
    unfold C
    simp [show (1259712 * k + 1166833) % 2 ≠ 0 by omega]
    omega
  have h23 : C (3779136 * k + 3500500) = 1889568 * k + 1750250 := by
    unfold C
    simp [show (3779136 * k + 3500500) % 2 = 0 by omega]
    omega
  have h24 : C (1889568 * k + 1750250) = 944784 * k + 875125 := by
    unfold C
    simp [show (1889568 * k + 1750250) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 875125) = 2834352 * k + 2625376 := by
    unfold C
    simp [show (944784 * k + 875125) % 2 ≠ 0 by omega]
    omega
  have h26 : C (2834352 * k + 2625376) = 1417176 * k + 1312688 := by
    unfold C
    simp [show (2834352 * k + 2625376) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 1312688) = 708588 * k + 656344 := by
    unfold C
    simp [show (1417176 * k + 1312688) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 656344) = 354294 * k + 328172 := by
    unfold C
    simp [show (708588 * k + 656344) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 328172) = 177147 * k + 164086 := by
    unfold C
    simp [show (354294 * k + 328172) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 242815) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 242815))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_243047 : ∀ k : Nat,
    iterate (262144 * k + 243047) 29 = 177147 * k + 164243 ∧
      177147 * k + 164243 < 262144 * k + 243047 := by
  intro k
  have h1 : C (262144 * k + 243047) = 786432 * k + 729142 := by
    unfold C
    simp [show (262144 * k + 243047) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 729142) = 393216 * k + 364571 := by
    unfold C
    simp [show (786432 * k + 729142) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 364571) = 1179648 * k + 1093714 := by
    unfold C
    simp [show (393216 * k + 364571) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 1093714) = 589824 * k + 546857 := by
    unfold C
    simp [show (1179648 * k + 1093714) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 546857) = 1769472 * k + 1640572 := by
    unfold C
    simp [show (589824 * k + 546857) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 1640572) = 884736 * k + 820286 := by
    unfold C
    simp [show (1769472 * k + 1640572) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 820286) = 442368 * k + 410143 := by
    unfold C
    simp [show (884736 * k + 820286) % 2 = 0 by omega]
    omega
  have h8 : C (442368 * k + 410143) = 1327104 * k + 1230430 := by
    unfold C
    simp [show (442368 * k + 410143) % 2 ≠ 0 by omega]
    omega
  have h9 : C (1327104 * k + 1230430) = 663552 * k + 615215 := by
    unfold C
    simp [show (1327104 * k + 1230430) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 615215) = 1990656 * k + 1845646 := by
    unfold C
    simp [show (663552 * k + 615215) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 1845646) = 995328 * k + 922823 := by
    unfold C
    simp [show (1990656 * k + 1845646) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 922823) = 2985984 * k + 2768470 := by
    unfold C
    simp [show (995328 * k + 922823) % 2 ≠ 0 by omega]
    omega
  have h13 : C (2985984 * k + 2768470) = 1492992 * k + 1384235 := by
    unfold C
    simp [show (2985984 * k + 2768470) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 1384235) = 4478976 * k + 4152706 := by
    unfold C
    simp [show (1492992 * k + 1384235) % 2 ≠ 0 by omega]
    omega
  have h15 : C (4478976 * k + 4152706) = 2239488 * k + 2076353 := by
    unfold C
    simp [show (4478976 * k + 4152706) % 2 = 0 by omega]
    omega
  have h16 : C (2239488 * k + 2076353) = 6718464 * k + 6229060 := by
    unfold C
    simp [show (2239488 * k + 2076353) % 2 ≠ 0 by omega]
    omega
  have h17 : C (6718464 * k + 6229060) = 3359232 * k + 3114530 := by
    unfold C
    simp [show (6718464 * k + 6229060) % 2 = 0 by omega]
    omega
  have h18 : C (3359232 * k + 3114530) = 1679616 * k + 1557265 := by
    unfold C
    simp [show (3359232 * k + 3114530) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 1557265) = 5038848 * k + 4671796 := by
    unfold C
    simp [show (1679616 * k + 1557265) % 2 ≠ 0 by omega]
    omega
  have h20 : C (5038848 * k + 4671796) = 2519424 * k + 2335898 := by
    unfold C
    simp [show (5038848 * k + 4671796) % 2 = 0 by omega]
    omega
  have h21 : C (2519424 * k + 2335898) = 1259712 * k + 1167949 := by
    unfold C
    simp [show (2519424 * k + 2335898) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 1167949) = 3779136 * k + 3503848 := by
    unfold C
    simp [show (1259712 * k + 1167949) % 2 ≠ 0 by omega]
    omega
  have h23 : C (3779136 * k + 3503848) = 1889568 * k + 1751924 := by
    unfold C
    simp [show (3779136 * k + 3503848) % 2 = 0 by omega]
    omega
  have h24 : C (1889568 * k + 1751924) = 944784 * k + 875962 := by
    unfold C
    simp [show (1889568 * k + 1751924) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 875962) = 472392 * k + 437981 := by
    unfold C
    simp [show (944784 * k + 875962) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 437981) = 1417176 * k + 1313944 := by
    unfold C
    simp [show (472392 * k + 437981) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 1313944) = 708588 * k + 656972 := by
    unfold C
    simp [show (1417176 * k + 1313944) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 656972) = 354294 * k + 328486 := by
    unfold C
    simp [show (708588 * k + 656972) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 328486) = 177147 * k + 164243 := by
    unfold C
    simp [show (354294 * k + 328486) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 243047) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 243047))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_243327 : ∀ k : Nat,
    iterate (262144 * k + 243327) 29 = 177147 * k + 164432 ∧
      177147 * k + 164432 < 262144 * k + 243327 := by
  intro k
  have h1 : C (262144 * k + 243327) = 786432 * k + 729982 := by
    unfold C
    simp [show (262144 * k + 243327) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 729982) = 393216 * k + 364991 := by
    unfold C
    simp [show (786432 * k + 729982) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 364991) = 1179648 * k + 1094974 := by
    unfold C
    simp [show (393216 * k + 364991) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 1094974) = 589824 * k + 547487 := by
    unfold C
    simp [show (1179648 * k + 1094974) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 547487) = 1769472 * k + 1642462 := by
    unfold C
    simp [show (589824 * k + 547487) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 1642462) = 884736 * k + 821231 := by
    unfold C
    simp [show (1769472 * k + 1642462) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 821231) = 2654208 * k + 2463694 := by
    unfold C
    simp [show (884736 * k + 821231) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 2463694) = 1327104 * k + 1231847 := by
    unfold C
    simp [show (2654208 * k + 2463694) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 1231847) = 3981312 * k + 3695542 := by
    unfold C
    simp [show (1327104 * k + 1231847) % 2 ≠ 0 by omega]
    omega
  have h10 : C (3981312 * k + 3695542) = 1990656 * k + 1847771 := by
    unfold C
    simp [show (3981312 * k + 3695542) % 2 = 0 by omega]
    omega
  have h11 : C (1990656 * k + 1847771) = 5971968 * k + 5543314 := by
    unfold C
    simp [show (1990656 * k + 1847771) % 2 ≠ 0 by omega]
    omega
  have h12 : C (5971968 * k + 5543314) = 2985984 * k + 2771657 := by
    unfold C
    simp [show (5971968 * k + 5543314) % 2 = 0 by omega]
    omega
  have h13 : C (2985984 * k + 2771657) = 8957952 * k + 8314972 := by
    unfold C
    simp [show (2985984 * k + 2771657) % 2 ≠ 0 by omega]
    omega
  have h14 : C (8957952 * k + 8314972) = 4478976 * k + 4157486 := by
    unfold C
    simp [show (8957952 * k + 8314972) % 2 = 0 by omega]
    omega
  have h15 : C (4478976 * k + 4157486) = 2239488 * k + 2078743 := by
    unfold C
    simp [show (4478976 * k + 4157486) % 2 = 0 by omega]
    omega
  have h16 : C (2239488 * k + 2078743) = 6718464 * k + 6236230 := by
    unfold C
    simp [show (2239488 * k + 2078743) % 2 ≠ 0 by omega]
    omega
  have h17 : C (6718464 * k + 6236230) = 3359232 * k + 3118115 := by
    unfold C
    simp [show (6718464 * k + 6236230) % 2 = 0 by omega]
    omega
  have h18 : C (3359232 * k + 3118115) = 10077696 * k + 9354346 := by
    unfold C
    simp [show (3359232 * k + 3118115) % 2 ≠ 0 by omega]
    omega
  have h19 : C (10077696 * k + 9354346) = 5038848 * k + 4677173 := by
    unfold C
    simp [show (10077696 * k + 9354346) % 2 = 0 by omega]
    omega
  have h20 : C (5038848 * k + 4677173) = 15116544 * k + 14031520 := by
    unfold C
    simp [show (5038848 * k + 4677173) % 2 ≠ 0 by omega]
    omega
  have h21 : C (15116544 * k + 14031520) = 7558272 * k + 7015760 := by
    unfold C
    simp [show (15116544 * k + 14031520) % 2 = 0 by omega]
    omega
  have h22 : C (7558272 * k + 7015760) = 3779136 * k + 3507880 := by
    unfold C
    simp [show (7558272 * k + 7015760) % 2 = 0 by omega]
    omega
  have h23 : C (3779136 * k + 3507880) = 1889568 * k + 1753940 := by
    unfold C
    simp [show (3779136 * k + 3507880) % 2 = 0 by omega]
    omega
  have h24 : C (1889568 * k + 1753940) = 944784 * k + 876970 := by
    unfold C
    simp [show (1889568 * k + 1753940) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 876970) = 472392 * k + 438485 := by
    unfold C
    simp [show (944784 * k + 876970) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 438485) = 1417176 * k + 1315456 := by
    unfold C
    simp [show (472392 * k + 438485) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 1315456) = 708588 * k + 657728 := by
    unfold C
    simp [show (1417176 * k + 1315456) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 657728) = 354294 * k + 328864 := by
    unfold C
    simp [show (708588 * k + 657728) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 328864) = 177147 * k + 164432 := by
    unfold C
    simp [show (354294 * k + 328864) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 243327) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 243327))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_243739 : ∀ k : Nat,
    iterate (262144 * k + 243739) 29 = 177147 * k + 164711 ∧
      177147 * k + 164711 < 262144 * k + 243739 := by
  intro k
  have h1 : C (262144 * k + 243739) = 786432 * k + 731218 := by
    unfold C
    simp [show (262144 * k + 243739) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 731218) = 393216 * k + 365609 := by
    unfold C
    simp [show (786432 * k + 731218) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 365609) = 1179648 * k + 1096828 := by
    unfold C
    simp [show (393216 * k + 365609) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 1096828) = 589824 * k + 548414 := by
    unfold C
    simp [show (1179648 * k + 1096828) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 548414) = 294912 * k + 274207 := by
    unfold C
    simp [show (589824 * k + 548414) % 2 = 0 by omega]
    omega
  have h6 : C (294912 * k + 274207) = 884736 * k + 822622 := by
    unfold C
    simp [show (294912 * k + 274207) % 2 ≠ 0 by omega]
    omega
  have h7 : C (884736 * k + 822622) = 442368 * k + 411311 := by
    unfold C
    simp [show (884736 * k + 822622) % 2 = 0 by omega]
    omega
  have h8 : C (442368 * k + 411311) = 1327104 * k + 1233934 := by
    unfold C
    simp [show (442368 * k + 411311) % 2 ≠ 0 by omega]
    omega
  have h9 : C (1327104 * k + 1233934) = 663552 * k + 616967 := by
    unfold C
    simp [show (1327104 * k + 1233934) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 616967) = 1990656 * k + 1850902 := by
    unfold C
    simp [show (663552 * k + 616967) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 1850902) = 995328 * k + 925451 := by
    unfold C
    simp [show (1990656 * k + 1850902) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 925451) = 2985984 * k + 2776354 := by
    unfold C
    simp [show (995328 * k + 925451) % 2 ≠ 0 by omega]
    omega
  have h13 : C (2985984 * k + 2776354) = 1492992 * k + 1388177 := by
    unfold C
    simp [show (2985984 * k + 2776354) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 1388177) = 4478976 * k + 4164532 := by
    unfold C
    simp [show (1492992 * k + 1388177) % 2 ≠ 0 by omega]
    omega
  have h15 : C (4478976 * k + 4164532) = 2239488 * k + 2082266 := by
    unfold C
    simp [show (4478976 * k + 4164532) % 2 = 0 by omega]
    omega
  have h16 : C (2239488 * k + 2082266) = 1119744 * k + 1041133 := by
    unfold C
    simp [show (2239488 * k + 2082266) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 1041133) = 3359232 * k + 3123400 := by
    unfold C
    simp [show (1119744 * k + 1041133) % 2 ≠ 0 by omega]
    omega
  have h18 : C (3359232 * k + 3123400) = 1679616 * k + 1561700 := by
    unfold C
    simp [show (3359232 * k + 3123400) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 1561700) = 839808 * k + 780850 := by
    unfold C
    simp [show (1679616 * k + 1561700) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 780850) = 419904 * k + 390425 := by
    unfold C
    simp [show (839808 * k + 780850) % 2 = 0 by omega]
    omega
  have h21 : C (419904 * k + 390425) = 1259712 * k + 1171276 := by
    unfold C
    simp [show (419904 * k + 390425) % 2 ≠ 0 by omega]
    omega
  have h22 : C (1259712 * k + 1171276) = 629856 * k + 585638 := by
    unfold C
    simp [show (1259712 * k + 1171276) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 585638) = 314928 * k + 292819 := by
    unfold C
    simp [show (629856 * k + 585638) % 2 = 0 by omega]
    omega
  have h24 : C (314928 * k + 292819) = 944784 * k + 878458 := by
    unfold C
    simp [show (314928 * k + 292819) % 2 ≠ 0 by omega]
    omega
  have h25 : C (944784 * k + 878458) = 472392 * k + 439229 := by
    unfold C
    simp [show (944784 * k + 878458) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 439229) = 1417176 * k + 1317688 := by
    unfold C
    simp [show (472392 * k + 439229) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 1317688) = 708588 * k + 658844 := by
    unfold C
    simp [show (1417176 * k + 1317688) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 658844) = 354294 * k + 329422 := by
    unfold C
    simp [show (708588 * k + 658844) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 329422) = 177147 * k + 164711 := by
    unfold C
    simp [show (354294 * k + 329422) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 243739) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 243739))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_244071 : ∀ k : Nat,
    iterate (262144 * k + 244071) 29 = 177147 * k + 164935 ∧
      177147 * k + 164935 < 262144 * k + 244071 := by
  intro k
  have h1 : C (262144 * k + 244071) = 786432 * k + 732214 := by
    unfold C
    simp [show (262144 * k + 244071) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 732214) = 393216 * k + 366107 := by
    unfold C
    simp [show (786432 * k + 732214) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 366107) = 1179648 * k + 1098322 := by
    unfold C
    simp [show (393216 * k + 366107) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 1098322) = 589824 * k + 549161 := by
    unfold C
    simp [show (1179648 * k + 1098322) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 549161) = 1769472 * k + 1647484 := by
    unfold C
    simp [show (589824 * k + 549161) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 1647484) = 884736 * k + 823742 := by
    unfold C
    simp [show (1769472 * k + 1647484) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 823742) = 442368 * k + 411871 := by
    unfold C
    simp [show (884736 * k + 823742) % 2 = 0 by omega]
    omega
  have h8 : C (442368 * k + 411871) = 1327104 * k + 1235614 := by
    unfold C
    simp [show (442368 * k + 411871) % 2 ≠ 0 by omega]
    omega
  have h9 : C (1327104 * k + 1235614) = 663552 * k + 617807 := by
    unfold C
    simp [show (1327104 * k + 1235614) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 617807) = 1990656 * k + 1853422 := by
    unfold C
    simp [show (663552 * k + 617807) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 1853422) = 995328 * k + 926711 := by
    unfold C
    simp [show (1990656 * k + 1853422) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 926711) = 2985984 * k + 2780134 := by
    unfold C
    simp [show (995328 * k + 926711) % 2 ≠ 0 by omega]
    omega
  have h13 : C (2985984 * k + 2780134) = 1492992 * k + 1390067 := by
    unfold C
    simp [show (2985984 * k + 2780134) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 1390067) = 4478976 * k + 4170202 := by
    unfold C
    simp [show (1492992 * k + 1390067) % 2 ≠ 0 by omega]
    omega
  have h15 : C (4478976 * k + 4170202) = 2239488 * k + 2085101 := by
    unfold C
    simp [show (4478976 * k + 4170202) % 2 = 0 by omega]
    omega
  have h16 : C (2239488 * k + 2085101) = 6718464 * k + 6255304 := by
    unfold C
    simp [show (2239488 * k + 2085101) % 2 ≠ 0 by omega]
    omega
  have h17 : C (6718464 * k + 6255304) = 3359232 * k + 3127652 := by
    unfold C
    simp [show (6718464 * k + 6255304) % 2 = 0 by omega]
    omega
  have h18 : C (3359232 * k + 3127652) = 1679616 * k + 1563826 := by
    unfold C
    simp [show (3359232 * k + 3127652) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 1563826) = 839808 * k + 781913 := by
    unfold C
    simp [show (1679616 * k + 1563826) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 781913) = 2519424 * k + 2345740 := by
    unfold C
    simp [show (839808 * k + 781913) % 2 ≠ 0 by omega]
    omega
  have h21 : C (2519424 * k + 2345740) = 1259712 * k + 1172870 := by
    unfold C
    simp [show (2519424 * k + 2345740) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 1172870) = 629856 * k + 586435 := by
    unfold C
    simp [show (1259712 * k + 1172870) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 586435) = 1889568 * k + 1759306 := by
    unfold C
    simp [show (629856 * k + 586435) % 2 ≠ 0 by omega]
    omega
  have h24 : C (1889568 * k + 1759306) = 944784 * k + 879653 := by
    unfold C
    simp [show (1889568 * k + 1759306) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 879653) = 2834352 * k + 2638960 := by
    unfold C
    simp [show (944784 * k + 879653) % 2 ≠ 0 by omega]
    omega
  have h26 : C (2834352 * k + 2638960) = 1417176 * k + 1319480 := by
    unfold C
    simp [show (2834352 * k + 2638960) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 1319480) = 708588 * k + 659740 := by
    unfold C
    simp [show (1417176 * k + 1319480) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 659740) = 354294 * k + 329870 := by
    unfold C
    simp [show (708588 * k + 659740) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 329870) = 177147 * k + 164935 := by
    unfold C
    simp [show (354294 * k + 329870) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 244071) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 244071))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_244191 : ∀ k : Nat,
    iterate (262144 * k + 244191) 29 = 177147 * k + 165016 ∧
      177147 * k + 165016 < 262144 * k + 244191 := by
  intro k
  have h1 : C (262144 * k + 244191) = 786432 * k + 732574 := by
    unfold C
    simp [show (262144 * k + 244191) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 732574) = 393216 * k + 366287 := by
    unfold C
    simp [show (786432 * k + 732574) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 366287) = 1179648 * k + 1098862 := by
    unfold C
    simp [show (393216 * k + 366287) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 1098862) = 589824 * k + 549431 := by
    unfold C
    simp [show (1179648 * k + 1098862) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 549431) = 1769472 * k + 1648294 := by
    unfold C
    simp [show (589824 * k + 549431) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 1648294) = 884736 * k + 824147 := by
    unfold C
    simp [show (1769472 * k + 1648294) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 824147) = 2654208 * k + 2472442 := by
    unfold C
    simp [show (884736 * k + 824147) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 2472442) = 1327104 * k + 1236221 := by
    unfold C
    simp [show (2654208 * k + 2472442) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 1236221) = 3981312 * k + 3708664 := by
    unfold C
    simp [show (1327104 * k + 1236221) % 2 ≠ 0 by omega]
    omega
  have h10 : C (3981312 * k + 3708664) = 1990656 * k + 1854332 := by
    unfold C
    simp [show (3981312 * k + 3708664) % 2 = 0 by omega]
    omega
  have h11 : C (1990656 * k + 1854332) = 995328 * k + 927166 := by
    unfold C
    simp [show (1990656 * k + 1854332) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 927166) = 497664 * k + 463583 := by
    unfold C
    simp [show (995328 * k + 927166) % 2 = 0 by omega]
    omega
  have h13 : C (497664 * k + 463583) = 1492992 * k + 1390750 := by
    unfold C
    simp [show (497664 * k + 463583) % 2 ≠ 0 by omega]
    omega
  have h14 : C (1492992 * k + 1390750) = 746496 * k + 695375 := by
    unfold C
    simp [show (1492992 * k + 1390750) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 695375) = 2239488 * k + 2086126 := by
    unfold C
    simp [show (746496 * k + 695375) % 2 ≠ 0 by omega]
    omega
  have h16 : C (2239488 * k + 2086126) = 1119744 * k + 1043063 := by
    unfold C
    simp [show (2239488 * k + 2086126) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 1043063) = 3359232 * k + 3129190 := by
    unfold C
    simp [show (1119744 * k + 1043063) % 2 ≠ 0 by omega]
    omega
  have h18 : C (3359232 * k + 3129190) = 1679616 * k + 1564595 := by
    unfold C
    simp [show (3359232 * k + 3129190) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 1564595) = 5038848 * k + 4693786 := by
    unfold C
    simp [show (1679616 * k + 1564595) % 2 ≠ 0 by omega]
    omega
  have h20 : C (5038848 * k + 4693786) = 2519424 * k + 2346893 := by
    unfold C
    simp [show (5038848 * k + 4693786) % 2 = 0 by omega]
    omega
  have h21 : C (2519424 * k + 2346893) = 7558272 * k + 7040680 := by
    unfold C
    simp [show (2519424 * k + 2346893) % 2 ≠ 0 by omega]
    omega
  have h22 : C (7558272 * k + 7040680) = 3779136 * k + 3520340 := by
    unfold C
    simp [show (7558272 * k + 7040680) % 2 = 0 by omega]
    omega
  have h23 : C (3779136 * k + 3520340) = 1889568 * k + 1760170 := by
    unfold C
    simp [show (3779136 * k + 3520340) % 2 = 0 by omega]
    omega
  have h24 : C (1889568 * k + 1760170) = 944784 * k + 880085 := by
    unfold C
    simp [show (1889568 * k + 1760170) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 880085) = 2834352 * k + 2640256 := by
    unfold C
    simp [show (944784 * k + 880085) % 2 ≠ 0 by omega]
    omega
  have h26 : C (2834352 * k + 2640256) = 1417176 * k + 1320128 := by
    unfold C
    simp [show (2834352 * k + 2640256) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 1320128) = 708588 * k + 660064 := by
    unfold C
    simp [show (1417176 * k + 1320128) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 660064) = 354294 * k + 330032 := by
    unfold C
    simp [show (708588 * k + 660064) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 330032) = 177147 * k + 165016 := by
    unfold C
    simp [show (354294 * k + 330032) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 244191) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 244191))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_244351 : ∀ k : Nat,
    iterate (262144 * k + 244351) 29 = 177147 * k + 165124 ∧
      177147 * k + 165124 < 262144 * k + 244351 := by
  intro k
  have h1 : C (262144 * k + 244351) = 786432 * k + 733054 := by
    unfold C
    simp [show (262144 * k + 244351) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 733054) = 393216 * k + 366527 := by
    unfold C
    simp [show (786432 * k + 733054) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 366527) = 1179648 * k + 1099582 := by
    unfold C
    simp [show (393216 * k + 366527) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 1099582) = 589824 * k + 549791 := by
    unfold C
    simp [show (1179648 * k + 1099582) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 549791) = 1769472 * k + 1649374 := by
    unfold C
    simp [show (589824 * k + 549791) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 1649374) = 884736 * k + 824687 := by
    unfold C
    simp [show (1769472 * k + 1649374) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 824687) = 2654208 * k + 2474062 := by
    unfold C
    simp [show (884736 * k + 824687) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 2474062) = 1327104 * k + 1237031 := by
    unfold C
    simp [show (2654208 * k + 2474062) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 1237031) = 3981312 * k + 3711094 := by
    unfold C
    simp [show (1327104 * k + 1237031) % 2 ≠ 0 by omega]
    omega
  have h10 : C (3981312 * k + 3711094) = 1990656 * k + 1855547 := by
    unfold C
    simp [show (3981312 * k + 3711094) % 2 = 0 by omega]
    omega
  have h11 : C (1990656 * k + 1855547) = 5971968 * k + 5566642 := by
    unfold C
    simp [show (1990656 * k + 1855547) % 2 ≠ 0 by omega]
    omega
  have h12 : C (5971968 * k + 5566642) = 2985984 * k + 2783321 := by
    unfold C
    simp [show (5971968 * k + 5566642) % 2 = 0 by omega]
    omega
  have h13 : C (2985984 * k + 2783321) = 8957952 * k + 8349964 := by
    unfold C
    simp [show (2985984 * k + 2783321) % 2 ≠ 0 by omega]
    omega
  have h14 : C (8957952 * k + 8349964) = 4478976 * k + 4174982 := by
    unfold C
    simp [show (8957952 * k + 8349964) % 2 = 0 by omega]
    omega
  have h15 : C (4478976 * k + 4174982) = 2239488 * k + 2087491 := by
    unfold C
    simp [show (4478976 * k + 4174982) % 2 = 0 by omega]
    omega
  have h16 : C (2239488 * k + 2087491) = 6718464 * k + 6262474 := by
    unfold C
    simp [show (2239488 * k + 2087491) % 2 ≠ 0 by omega]
    omega
  have h17 : C (6718464 * k + 6262474) = 3359232 * k + 3131237 := by
    unfold C
    simp [show (6718464 * k + 6262474) % 2 = 0 by omega]
    omega
  have h18 : C (3359232 * k + 3131237) = 10077696 * k + 9393712 := by
    unfold C
    simp [show (3359232 * k + 3131237) % 2 ≠ 0 by omega]
    omega
  have h19 : C (10077696 * k + 9393712) = 5038848 * k + 4696856 := by
    unfold C
    simp [show (10077696 * k + 9393712) % 2 = 0 by omega]
    omega
  have h20 : C (5038848 * k + 4696856) = 2519424 * k + 2348428 := by
    unfold C
    simp [show (5038848 * k + 4696856) % 2 = 0 by omega]
    omega
  have h21 : C (2519424 * k + 2348428) = 1259712 * k + 1174214 := by
    unfold C
    simp [show (2519424 * k + 2348428) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 1174214) = 629856 * k + 587107 := by
    unfold C
    simp [show (1259712 * k + 1174214) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 587107) = 1889568 * k + 1761322 := by
    unfold C
    simp [show (629856 * k + 587107) % 2 ≠ 0 by omega]
    omega
  have h24 : C (1889568 * k + 1761322) = 944784 * k + 880661 := by
    unfold C
    simp [show (1889568 * k + 1761322) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 880661) = 2834352 * k + 2641984 := by
    unfold C
    simp [show (944784 * k + 880661) % 2 ≠ 0 by omega]
    omega
  have h26 : C (2834352 * k + 2641984) = 1417176 * k + 1320992 := by
    unfold C
    simp [show (2834352 * k + 2641984) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 1320992) = 708588 * k + 660496 := by
    unfold C
    simp [show (1417176 * k + 1320992) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 660496) = 354294 * k + 330248 := by
    unfold C
    simp [show (708588 * k + 660496) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 330248) = 177147 * k + 165124 := by
    unfold C
    simp [show (354294 * k + 330248) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 244351) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 244351))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_244543 : ∀ k : Nat,
    iterate (262144 * k + 244543) 29 = 177147 * k + 165254 ∧
      177147 * k + 165254 < 262144 * k + 244543 := by
  intro k
  have h1 : C (262144 * k + 244543) = 786432 * k + 733630 := by
    unfold C
    simp [show (262144 * k + 244543) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 733630) = 393216 * k + 366815 := by
    unfold C
    simp [show (786432 * k + 733630) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 366815) = 1179648 * k + 1100446 := by
    unfold C
    simp [show (393216 * k + 366815) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 1100446) = 589824 * k + 550223 := by
    unfold C
    simp [show (1179648 * k + 1100446) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 550223) = 1769472 * k + 1650670 := by
    unfold C
    simp [show (589824 * k + 550223) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 1650670) = 884736 * k + 825335 := by
    unfold C
    simp [show (1769472 * k + 1650670) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 825335) = 2654208 * k + 2476006 := by
    unfold C
    simp [show (884736 * k + 825335) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 2476006) = 1327104 * k + 1238003 := by
    unfold C
    simp [show (2654208 * k + 2476006) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 1238003) = 3981312 * k + 3714010 := by
    unfold C
    simp [show (1327104 * k + 1238003) % 2 ≠ 0 by omega]
    omega
  have h10 : C (3981312 * k + 3714010) = 1990656 * k + 1857005 := by
    unfold C
    simp [show (3981312 * k + 3714010) % 2 = 0 by omega]
    omega
  have h11 : C (1990656 * k + 1857005) = 5971968 * k + 5571016 := by
    unfold C
    simp [show (1990656 * k + 1857005) % 2 ≠ 0 by omega]
    omega
  have h12 : C (5971968 * k + 5571016) = 2985984 * k + 2785508 := by
    unfold C
    simp [show (5971968 * k + 5571016) % 2 = 0 by omega]
    omega
  have h13 : C (2985984 * k + 2785508) = 1492992 * k + 1392754 := by
    unfold C
    simp [show (2985984 * k + 2785508) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 1392754) = 746496 * k + 696377 := by
    unfold C
    simp [show (1492992 * k + 1392754) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 696377) = 2239488 * k + 2089132 := by
    unfold C
    simp [show (746496 * k + 696377) % 2 ≠ 0 by omega]
    omega
  have h16 : C (2239488 * k + 2089132) = 1119744 * k + 1044566 := by
    unfold C
    simp [show (2239488 * k + 2089132) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 1044566) = 559872 * k + 522283 := by
    unfold C
    simp [show (1119744 * k + 1044566) % 2 = 0 by omega]
    omega
  have h18 : C (559872 * k + 522283) = 1679616 * k + 1566850 := by
    unfold C
    simp [show (559872 * k + 522283) % 2 ≠ 0 by omega]
    omega
  have h19 : C (1679616 * k + 1566850) = 839808 * k + 783425 := by
    unfold C
    simp [show (1679616 * k + 1566850) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 783425) = 2519424 * k + 2350276 := by
    unfold C
    simp [show (839808 * k + 783425) % 2 ≠ 0 by omega]
    omega
  have h21 : C (2519424 * k + 2350276) = 1259712 * k + 1175138 := by
    unfold C
    simp [show (2519424 * k + 2350276) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 1175138) = 629856 * k + 587569 := by
    unfold C
    simp [show (1259712 * k + 1175138) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 587569) = 1889568 * k + 1762708 := by
    unfold C
    simp [show (629856 * k + 587569) % 2 ≠ 0 by omega]
    omega
  have h24 : C (1889568 * k + 1762708) = 944784 * k + 881354 := by
    unfold C
    simp [show (1889568 * k + 1762708) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 881354) = 472392 * k + 440677 := by
    unfold C
    simp [show (944784 * k + 881354) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 440677) = 1417176 * k + 1322032 := by
    unfold C
    simp [show (472392 * k + 440677) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 1322032) = 708588 * k + 661016 := by
    unfold C
    simp [show (1417176 * k + 1322032) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 661016) = 354294 * k + 330508 := by
    unfold C
    simp [show (708588 * k + 661016) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 330508) = 177147 * k + 165254 := by
    unfold C
    simp [show (354294 * k + 330508) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 244543) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 244543))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_244583 : ∀ k : Nat,
    iterate (262144 * k + 244583) 29 = 177147 * k + 165281 ∧
      177147 * k + 165281 < 262144 * k + 244583 := by
  intro k
  have h1 : C (262144 * k + 244583) = 786432 * k + 733750 := by
    unfold C
    simp [show (262144 * k + 244583) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 733750) = 393216 * k + 366875 := by
    unfold C
    simp [show (786432 * k + 733750) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 366875) = 1179648 * k + 1100626 := by
    unfold C
    simp [show (393216 * k + 366875) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 1100626) = 589824 * k + 550313 := by
    unfold C
    simp [show (1179648 * k + 1100626) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 550313) = 1769472 * k + 1650940 := by
    unfold C
    simp [show (589824 * k + 550313) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 1650940) = 884736 * k + 825470 := by
    unfold C
    simp [show (1769472 * k + 1650940) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 825470) = 442368 * k + 412735 := by
    unfold C
    simp [show (884736 * k + 825470) % 2 = 0 by omega]
    omega
  have h8 : C (442368 * k + 412735) = 1327104 * k + 1238206 := by
    unfold C
    simp [show (442368 * k + 412735) % 2 ≠ 0 by omega]
    omega
  have h9 : C (1327104 * k + 1238206) = 663552 * k + 619103 := by
    unfold C
    simp [show (1327104 * k + 1238206) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 619103) = 1990656 * k + 1857310 := by
    unfold C
    simp [show (663552 * k + 619103) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 1857310) = 995328 * k + 928655 := by
    unfold C
    simp [show (1990656 * k + 1857310) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 928655) = 2985984 * k + 2785966 := by
    unfold C
    simp [show (995328 * k + 928655) % 2 ≠ 0 by omega]
    omega
  have h13 : C (2985984 * k + 2785966) = 1492992 * k + 1392983 := by
    unfold C
    simp [show (2985984 * k + 2785966) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 1392983) = 4478976 * k + 4178950 := by
    unfold C
    simp [show (1492992 * k + 1392983) % 2 ≠ 0 by omega]
    omega
  have h15 : C (4478976 * k + 4178950) = 2239488 * k + 2089475 := by
    unfold C
    simp [show (4478976 * k + 4178950) % 2 = 0 by omega]
    omega
  have h16 : C (2239488 * k + 2089475) = 6718464 * k + 6268426 := by
    unfold C
    simp [show (2239488 * k + 2089475) % 2 ≠ 0 by omega]
    omega
  have h17 : C (6718464 * k + 6268426) = 3359232 * k + 3134213 := by
    unfold C
    simp [show (6718464 * k + 6268426) % 2 = 0 by omega]
    omega
  have h18 : C (3359232 * k + 3134213) = 10077696 * k + 9402640 := by
    unfold C
    simp [show (3359232 * k + 3134213) % 2 ≠ 0 by omega]
    omega
  have h19 : C (10077696 * k + 9402640) = 5038848 * k + 4701320 := by
    unfold C
    simp [show (10077696 * k + 9402640) % 2 = 0 by omega]
    omega
  have h20 : C (5038848 * k + 4701320) = 2519424 * k + 2350660 := by
    unfold C
    simp [show (5038848 * k + 4701320) % 2 = 0 by omega]
    omega
  have h21 : C (2519424 * k + 2350660) = 1259712 * k + 1175330 := by
    unfold C
    simp [show (2519424 * k + 2350660) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 1175330) = 629856 * k + 587665 := by
    unfold C
    simp [show (1259712 * k + 1175330) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 587665) = 1889568 * k + 1762996 := by
    unfold C
    simp [show (629856 * k + 587665) % 2 ≠ 0 by omega]
    omega
  have h24 : C (1889568 * k + 1762996) = 944784 * k + 881498 := by
    unfold C
    simp [show (1889568 * k + 1762996) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 881498) = 472392 * k + 440749 := by
    unfold C
    simp [show (944784 * k + 881498) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 440749) = 1417176 * k + 1322248 := by
    unfold C
    simp [show (472392 * k + 440749) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 1322248) = 708588 * k + 661124 := by
    unfold C
    simp [show (1417176 * k + 1322248) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 661124) = 354294 * k + 330562 := by
    unfold C
    simp [show (708588 * k + 661124) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 330562) = 177147 * k + 165281 := by
    unfold C
    simp [show (354294 * k + 330562) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 244583) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 244583))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_244863 : ∀ k : Nat,
    iterate (262144 * k + 244863) 29 = 177147 * k + 165470 ∧
      177147 * k + 165470 < 262144 * k + 244863 := by
  intro k
  have h1 : C (262144 * k + 244863) = 786432 * k + 734590 := by
    unfold C
    simp [show (262144 * k + 244863) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 734590) = 393216 * k + 367295 := by
    unfold C
    simp [show (786432 * k + 734590) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 367295) = 1179648 * k + 1101886 := by
    unfold C
    simp [show (393216 * k + 367295) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 1101886) = 589824 * k + 550943 := by
    unfold C
    simp [show (1179648 * k + 1101886) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 550943) = 1769472 * k + 1652830 := by
    unfold C
    simp [show (589824 * k + 550943) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 1652830) = 884736 * k + 826415 := by
    unfold C
    simp [show (1769472 * k + 1652830) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 826415) = 2654208 * k + 2479246 := by
    unfold C
    simp [show (884736 * k + 826415) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 2479246) = 1327104 * k + 1239623 := by
    unfold C
    simp [show (2654208 * k + 2479246) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 1239623) = 3981312 * k + 3718870 := by
    unfold C
    simp [show (1327104 * k + 1239623) % 2 ≠ 0 by omega]
    omega
  have h10 : C (3981312 * k + 3718870) = 1990656 * k + 1859435 := by
    unfold C
    simp [show (3981312 * k + 3718870) % 2 = 0 by omega]
    omega
  have h11 : C (1990656 * k + 1859435) = 5971968 * k + 5578306 := by
    unfold C
    simp [show (1990656 * k + 1859435) % 2 ≠ 0 by omega]
    omega
  have h12 : C (5971968 * k + 5578306) = 2985984 * k + 2789153 := by
    unfold C
    simp [show (5971968 * k + 5578306) % 2 = 0 by omega]
    omega
  have h13 : C (2985984 * k + 2789153) = 8957952 * k + 8367460 := by
    unfold C
    simp [show (2985984 * k + 2789153) % 2 ≠ 0 by omega]
    omega
  have h14 : C (8957952 * k + 8367460) = 4478976 * k + 4183730 := by
    unfold C
    simp [show (8957952 * k + 8367460) % 2 = 0 by omega]
    omega
  have h15 : C (4478976 * k + 4183730) = 2239488 * k + 2091865 := by
    unfold C
    simp [show (4478976 * k + 4183730) % 2 = 0 by omega]
    omega
  have h16 : C (2239488 * k + 2091865) = 6718464 * k + 6275596 := by
    unfold C
    simp [show (2239488 * k + 2091865) % 2 ≠ 0 by omega]
    omega
  have h17 : C (6718464 * k + 6275596) = 3359232 * k + 3137798 := by
    unfold C
    simp [show (6718464 * k + 6275596) % 2 = 0 by omega]
    omega
  have h18 : C (3359232 * k + 3137798) = 1679616 * k + 1568899 := by
    unfold C
    simp [show (3359232 * k + 3137798) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 1568899) = 5038848 * k + 4706698 := by
    unfold C
    simp [show (1679616 * k + 1568899) % 2 ≠ 0 by omega]
    omega
  have h20 : C (5038848 * k + 4706698) = 2519424 * k + 2353349 := by
    unfold C
    simp [show (5038848 * k + 4706698) % 2 = 0 by omega]
    omega
  have h21 : C (2519424 * k + 2353349) = 7558272 * k + 7060048 := by
    unfold C
    simp [show (2519424 * k + 2353349) % 2 ≠ 0 by omega]
    omega
  have h22 : C (7558272 * k + 7060048) = 3779136 * k + 3530024 := by
    unfold C
    simp [show (7558272 * k + 7060048) % 2 = 0 by omega]
    omega
  have h23 : C (3779136 * k + 3530024) = 1889568 * k + 1765012 := by
    unfold C
    simp [show (3779136 * k + 3530024) % 2 = 0 by omega]
    omega
  have h24 : C (1889568 * k + 1765012) = 944784 * k + 882506 := by
    unfold C
    simp [show (1889568 * k + 1765012) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 882506) = 472392 * k + 441253 := by
    unfold C
    simp [show (944784 * k + 882506) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 441253) = 1417176 * k + 1323760 := by
    unfold C
    simp [show (472392 * k + 441253) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 1323760) = 708588 * k + 661880 := by
    unfold C
    simp [show (1417176 * k + 1323760) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 661880) = 354294 * k + 330940 := by
    unfold C
    simp [show (708588 * k + 661880) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 330940) = 177147 * k + 165470 := by
    unfold C
    simp [show (354294 * k + 330940) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 244863) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 244863))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_245231 : ∀ k : Nat,
    iterate (262144 * k + 245231) 29 = 177147 * k + 165719 ∧
      177147 * k + 165719 < 262144 * k + 245231 := by
  intro k
  have h1 : C (262144 * k + 245231) = 786432 * k + 735694 := by
    unfold C
    simp [show (262144 * k + 245231) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 735694) = 393216 * k + 367847 := by
    unfold C
    simp [show (786432 * k + 735694) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 367847) = 1179648 * k + 1103542 := by
    unfold C
    simp [show (393216 * k + 367847) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 1103542) = 589824 * k + 551771 := by
    unfold C
    simp [show (1179648 * k + 1103542) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 551771) = 1769472 * k + 1655314 := by
    unfold C
    simp [show (589824 * k + 551771) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 1655314) = 884736 * k + 827657 := by
    unfold C
    simp [show (1769472 * k + 1655314) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 827657) = 2654208 * k + 2482972 := by
    unfold C
    simp [show (884736 * k + 827657) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 2482972) = 1327104 * k + 1241486 := by
    unfold C
    simp [show (2654208 * k + 2482972) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 1241486) = 663552 * k + 620743 := by
    unfold C
    simp [show (1327104 * k + 1241486) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 620743) = 1990656 * k + 1862230 := by
    unfold C
    simp [show (663552 * k + 620743) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 1862230) = 995328 * k + 931115 := by
    unfold C
    simp [show (1990656 * k + 1862230) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 931115) = 2985984 * k + 2793346 := by
    unfold C
    simp [show (995328 * k + 931115) % 2 ≠ 0 by omega]
    omega
  have h13 : C (2985984 * k + 2793346) = 1492992 * k + 1396673 := by
    unfold C
    simp [show (2985984 * k + 2793346) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 1396673) = 4478976 * k + 4190020 := by
    unfold C
    simp [show (1492992 * k + 1396673) % 2 ≠ 0 by omega]
    omega
  have h15 : C (4478976 * k + 4190020) = 2239488 * k + 2095010 := by
    unfold C
    simp [show (4478976 * k + 4190020) % 2 = 0 by omega]
    omega
  have h16 : C (2239488 * k + 2095010) = 1119744 * k + 1047505 := by
    unfold C
    simp [show (2239488 * k + 2095010) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 1047505) = 3359232 * k + 3142516 := by
    unfold C
    simp [show (1119744 * k + 1047505) % 2 ≠ 0 by omega]
    omega
  have h18 : C (3359232 * k + 3142516) = 1679616 * k + 1571258 := by
    unfold C
    simp [show (3359232 * k + 3142516) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 1571258) = 839808 * k + 785629 := by
    unfold C
    simp [show (1679616 * k + 1571258) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 785629) = 2519424 * k + 2356888 := by
    unfold C
    simp [show (839808 * k + 785629) % 2 ≠ 0 by omega]
    omega
  have h21 : C (2519424 * k + 2356888) = 1259712 * k + 1178444 := by
    unfold C
    simp [show (2519424 * k + 2356888) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 1178444) = 629856 * k + 589222 := by
    unfold C
    simp [show (1259712 * k + 1178444) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 589222) = 314928 * k + 294611 := by
    unfold C
    simp [show (629856 * k + 589222) % 2 = 0 by omega]
    omega
  have h24 : C (314928 * k + 294611) = 944784 * k + 883834 := by
    unfold C
    simp [show (314928 * k + 294611) % 2 ≠ 0 by omega]
    omega
  have h25 : C (944784 * k + 883834) = 472392 * k + 441917 := by
    unfold C
    simp [show (944784 * k + 883834) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 441917) = 1417176 * k + 1325752 := by
    unfold C
    simp [show (472392 * k + 441917) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 1325752) = 708588 * k + 662876 := by
    unfold C
    simp [show (1417176 * k + 1325752) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 662876) = 354294 * k + 331438 := by
    unfold C
    simp [show (708588 * k + 662876) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 331438) = 177147 * k + 165719 := by
    unfold C
    simp [show (354294 * k + 331438) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 245231) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 245231))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

end CollatzM18Shard045
