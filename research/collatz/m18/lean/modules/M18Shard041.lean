import Mathlib.Data.Nat.Prime.Basic

namespace CollatzM18Shard041

def C (n : Nat) : Nat := if n % 2 = 0 then n / 2 else 3 * n + 1

def iterate (n t : Nat) : Nat := Nat.rec n (fun _ previous => C previous) t

theorem descent_mod262144_216575 : ∀ k : Nat,
    iterate (262144 * k + 216575) 29 = 177147 * k + 146354 ∧
      177147 * k + 146354 < 262144 * k + 216575 := by
  intro k
  have h1 : C (262144 * k + 216575) = 786432 * k + 649726 := by
    unfold C
    simp [show (262144 * k + 216575) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 649726) = 393216 * k + 324863 := by
    unfold C
    simp [show (786432 * k + 649726) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 324863) = 1179648 * k + 974590 := by
    unfold C
    simp [show (393216 * k + 324863) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 974590) = 589824 * k + 487295 := by
    unfold C
    simp [show (1179648 * k + 974590) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 487295) = 1769472 * k + 1461886 := by
    unfold C
    simp [show (589824 * k + 487295) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 1461886) = 884736 * k + 730943 := by
    unfold C
    simp [show (1769472 * k + 1461886) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 730943) = 2654208 * k + 2192830 := by
    unfold C
    simp [show (884736 * k + 730943) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 2192830) = 1327104 * k + 1096415 := by
    unfold C
    simp [show (2654208 * k + 2192830) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 1096415) = 3981312 * k + 3289246 := by
    unfold C
    simp [show (1327104 * k + 1096415) % 2 ≠ 0 by omega]
    omega
  have h10 : C (3981312 * k + 3289246) = 1990656 * k + 1644623 := by
    unfold C
    simp [show (3981312 * k + 3289246) % 2 = 0 by omega]
    omega
  have h11 : C (1990656 * k + 1644623) = 5971968 * k + 4933870 := by
    unfold C
    simp [show (1990656 * k + 1644623) % 2 ≠ 0 by omega]
    omega
  have h12 : C (5971968 * k + 4933870) = 2985984 * k + 2466935 := by
    unfold C
    simp [show (5971968 * k + 4933870) % 2 = 0 by omega]
    omega
  have h13 : C (2985984 * k + 2466935) = 8957952 * k + 7400806 := by
    unfold C
    simp [show (2985984 * k + 2466935) % 2 ≠ 0 by omega]
    omega
  have h14 : C (8957952 * k + 7400806) = 4478976 * k + 3700403 := by
    unfold C
    simp [show (8957952 * k + 7400806) % 2 = 0 by omega]
    omega
  have h15 : C (4478976 * k + 3700403) = 13436928 * k + 11101210 := by
    unfold C
    simp [show (4478976 * k + 3700403) % 2 ≠ 0 by omega]
    omega
  have h16 : C (13436928 * k + 11101210) = 6718464 * k + 5550605 := by
    unfold C
    simp [show (13436928 * k + 11101210) % 2 = 0 by omega]
    omega
  have h17 : C (6718464 * k + 5550605) = 20155392 * k + 16651816 := by
    unfold C
    simp [show (6718464 * k + 5550605) % 2 ≠ 0 by omega]
    omega
  have h18 : C (20155392 * k + 16651816) = 10077696 * k + 8325908 := by
    unfold C
    simp [show (20155392 * k + 16651816) % 2 = 0 by omega]
    omega
  have h19 : C (10077696 * k + 8325908) = 5038848 * k + 4162954 := by
    unfold C
    simp [show (10077696 * k + 8325908) % 2 = 0 by omega]
    omega
  have h20 : C (5038848 * k + 4162954) = 2519424 * k + 2081477 := by
    unfold C
    simp [show (5038848 * k + 4162954) % 2 = 0 by omega]
    omega
  have h21 : C (2519424 * k + 2081477) = 7558272 * k + 6244432 := by
    unfold C
    simp [show (2519424 * k + 2081477) % 2 ≠ 0 by omega]
    omega
  have h22 : C (7558272 * k + 6244432) = 3779136 * k + 3122216 := by
    unfold C
    simp [show (7558272 * k + 6244432) % 2 = 0 by omega]
    omega
  have h23 : C (3779136 * k + 3122216) = 1889568 * k + 1561108 := by
    unfold C
    simp [show (3779136 * k + 3122216) % 2 = 0 by omega]
    omega
  have h24 : C (1889568 * k + 1561108) = 944784 * k + 780554 := by
    unfold C
    simp [show (1889568 * k + 1561108) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 780554) = 472392 * k + 390277 := by
    unfold C
    simp [show (944784 * k + 780554) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 390277) = 1417176 * k + 1170832 := by
    unfold C
    simp [show (472392 * k + 390277) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 1170832) = 708588 * k + 585416 := by
    unfold C
    simp [show (1417176 * k + 1170832) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 585416) = 354294 * k + 292708 := by
    unfold C
    simp [show (708588 * k + 585416) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 292708) = 177147 * k + 146354 := by
    unfold C
    simp [show (354294 * k + 292708) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 216575) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 216575))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_217023 : ∀ k : Nat,
    iterate (262144 * k + 217023) 29 = 177147 * k + 146657 ∧
      177147 * k + 146657 < 262144 * k + 217023 := by
  intro k
  have h1 : C (262144 * k + 217023) = 786432 * k + 651070 := by
    unfold C
    simp [show (262144 * k + 217023) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 651070) = 393216 * k + 325535 := by
    unfold C
    simp [show (786432 * k + 651070) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 325535) = 1179648 * k + 976606 := by
    unfold C
    simp [show (393216 * k + 325535) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 976606) = 589824 * k + 488303 := by
    unfold C
    simp [show (1179648 * k + 976606) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 488303) = 1769472 * k + 1464910 := by
    unfold C
    simp [show (589824 * k + 488303) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 1464910) = 884736 * k + 732455 := by
    unfold C
    simp [show (1769472 * k + 1464910) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 732455) = 2654208 * k + 2197366 := by
    unfold C
    simp [show (884736 * k + 732455) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 2197366) = 1327104 * k + 1098683 := by
    unfold C
    simp [show (2654208 * k + 2197366) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 1098683) = 3981312 * k + 3296050 := by
    unfold C
    simp [show (1327104 * k + 1098683) % 2 ≠ 0 by omega]
    omega
  have h10 : C (3981312 * k + 3296050) = 1990656 * k + 1648025 := by
    unfold C
    simp [show (3981312 * k + 3296050) % 2 = 0 by omega]
    omega
  have h11 : C (1990656 * k + 1648025) = 5971968 * k + 4944076 := by
    unfold C
    simp [show (1990656 * k + 1648025) % 2 ≠ 0 by omega]
    omega
  have h12 : C (5971968 * k + 4944076) = 2985984 * k + 2472038 := by
    unfold C
    simp [show (5971968 * k + 4944076) % 2 = 0 by omega]
    omega
  have h13 : C (2985984 * k + 2472038) = 1492992 * k + 1236019 := by
    unfold C
    simp [show (2985984 * k + 2472038) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 1236019) = 4478976 * k + 3708058 := by
    unfold C
    simp [show (1492992 * k + 1236019) % 2 ≠ 0 by omega]
    omega
  have h15 : C (4478976 * k + 3708058) = 2239488 * k + 1854029 := by
    unfold C
    simp [show (4478976 * k + 3708058) % 2 = 0 by omega]
    omega
  have h16 : C (2239488 * k + 1854029) = 6718464 * k + 5562088 := by
    unfold C
    simp [show (2239488 * k + 1854029) % 2 ≠ 0 by omega]
    omega
  have h17 : C (6718464 * k + 5562088) = 3359232 * k + 2781044 := by
    unfold C
    simp [show (6718464 * k + 5562088) % 2 = 0 by omega]
    omega
  have h18 : C (3359232 * k + 2781044) = 1679616 * k + 1390522 := by
    unfold C
    simp [show (3359232 * k + 2781044) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 1390522) = 839808 * k + 695261 := by
    unfold C
    simp [show (1679616 * k + 1390522) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 695261) = 2519424 * k + 2085784 := by
    unfold C
    simp [show (839808 * k + 695261) % 2 ≠ 0 by omega]
    omega
  have h21 : C (2519424 * k + 2085784) = 1259712 * k + 1042892 := by
    unfold C
    simp [show (2519424 * k + 2085784) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 1042892) = 629856 * k + 521446 := by
    unfold C
    simp [show (1259712 * k + 1042892) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 521446) = 314928 * k + 260723 := by
    unfold C
    simp [show (629856 * k + 521446) % 2 = 0 by omega]
    omega
  have h24 : C (314928 * k + 260723) = 944784 * k + 782170 := by
    unfold C
    simp [show (314928 * k + 260723) % 2 ≠ 0 by omega]
    omega
  have h25 : C (944784 * k + 782170) = 472392 * k + 391085 := by
    unfold C
    simp [show (944784 * k + 782170) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 391085) = 1417176 * k + 1173256 := by
    unfold C
    simp [show (472392 * k + 391085) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 1173256) = 708588 * k + 586628 := by
    unfold C
    simp [show (1417176 * k + 1173256) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 586628) = 354294 * k + 293314 := by
    unfold C
    simp [show (708588 * k + 586628) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 293314) = 177147 * k + 146657 := by
    unfold C
    simp [show (354294 * k + 293314) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 217023) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 217023))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_217767 : ∀ k : Nat,
    iterate (262144 * k + 217767) 29 = 177147 * k + 147160 ∧
      177147 * k + 147160 < 262144 * k + 217767 := by
  intro k
  have h1 : C (262144 * k + 217767) = 786432 * k + 653302 := by
    unfold C
    simp [show (262144 * k + 217767) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 653302) = 393216 * k + 326651 := by
    unfold C
    simp [show (786432 * k + 653302) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 326651) = 1179648 * k + 979954 := by
    unfold C
    simp [show (393216 * k + 326651) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 979954) = 589824 * k + 489977 := by
    unfold C
    simp [show (1179648 * k + 979954) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 489977) = 1769472 * k + 1469932 := by
    unfold C
    simp [show (589824 * k + 489977) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 1469932) = 884736 * k + 734966 := by
    unfold C
    simp [show (1769472 * k + 1469932) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 734966) = 442368 * k + 367483 := by
    unfold C
    simp [show (884736 * k + 734966) % 2 = 0 by omega]
    omega
  have h8 : C (442368 * k + 367483) = 1327104 * k + 1102450 := by
    unfold C
    simp [show (442368 * k + 367483) % 2 ≠ 0 by omega]
    omega
  have h9 : C (1327104 * k + 1102450) = 663552 * k + 551225 := by
    unfold C
    simp [show (1327104 * k + 1102450) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 551225) = 1990656 * k + 1653676 := by
    unfold C
    simp [show (663552 * k + 551225) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 1653676) = 995328 * k + 826838 := by
    unfold C
    simp [show (1990656 * k + 1653676) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 826838) = 497664 * k + 413419 := by
    unfold C
    simp [show (995328 * k + 826838) % 2 = 0 by omega]
    omega
  have h13 : C (497664 * k + 413419) = 1492992 * k + 1240258 := by
    unfold C
    simp [show (497664 * k + 413419) % 2 ≠ 0 by omega]
    omega
  have h14 : C (1492992 * k + 1240258) = 746496 * k + 620129 := by
    unfold C
    simp [show (1492992 * k + 1240258) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 620129) = 2239488 * k + 1860388 := by
    unfold C
    simp [show (746496 * k + 620129) % 2 ≠ 0 by omega]
    omega
  have h16 : C (2239488 * k + 1860388) = 1119744 * k + 930194 := by
    unfold C
    simp [show (2239488 * k + 1860388) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 930194) = 559872 * k + 465097 := by
    unfold C
    simp [show (1119744 * k + 930194) % 2 = 0 by omega]
    omega
  have h18 : C (559872 * k + 465097) = 1679616 * k + 1395292 := by
    unfold C
    simp [show (559872 * k + 465097) % 2 ≠ 0 by omega]
    omega
  have h19 : C (1679616 * k + 1395292) = 839808 * k + 697646 := by
    unfold C
    simp [show (1679616 * k + 1395292) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 697646) = 419904 * k + 348823 := by
    unfold C
    simp [show (839808 * k + 697646) % 2 = 0 by omega]
    omega
  have h21 : C (419904 * k + 348823) = 1259712 * k + 1046470 := by
    unfold C
    simp [show (419904 * k + 348823) % 2 ≠ 0 by omega]
    omega
  have h22 : C (1259712 * k + 1046470) = 629856 * k + 523235 := by
    unfold C
    simp [show (1259712 * k + 1046470) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 523235) = 1889568 * k + 1569706 := by
    unfold C
    simp [show (629856 * k + 523235) % 2 ≠ 0 by omega]
    omega
  have h24 : C (1889568 * k + 1569706) = 944784 * k + 784853 := by
    unfold C
    simp [show (1889568 * k + 1569706) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 784853) = 2834352 * k + 2354560 := by
    unfold C
    simp [show (944784 * k + 784853) % 2 ≠ 0 by omega]
    omega
  have h26 : C (2834352 * k + 2354560) = 1417176 * k + 1177280 := by
    unfold C
    simp [show (2834352 * k + 2354560) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 1177280) = 708588 * k + 588640 := by
    unfold C
    simp [show (1417176 * k + 1177280) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 588640) = 354294 * k + 294320 := by
    unfold C
    simp [show (708588 * k + 588640) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 294320) = 177147 * k + 147160 := by
    unfold C
    simp [show (354294 * k + 294320) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 217767) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 217767))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_217807 : ∀ k : Nat,
    iterate (262144 * k + 217807) 29 = 177147 * k + 147187 ∧
      177147 * k + 147187 < 262144 * k + 217807 := by
  intro k
  have h1 : C (262144 * k + 217807) = 786432 * k + 653422 := by
    unfold C
    simp [show (262144 * k + 217807) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 653422) = 393216 * k + 326711 := by
    unfold C
    simp [show (786432 * k + 653422) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 326711) = 1179648 * k + 980134 := by
    unfold C
    simp [show (393216 * k + 326711) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 980134) = 589824 * k + 490067 := by
    unfold C
    simp [show (1179648 * k + 980134) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 490067) = 1769472 * k + 1470202 := by
    unfold C
    simp [show (589824 * k + 490067) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 1470202) = 884736 * k + 735101 := by
    unfold C
    simp [show (1769472 * k + 1470202) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 735101) = 2654208 * k + 2205304 := by
    unfold C
    simp [show (884736 * k + 735101) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 2205304) = 1327104 * k + 1102652 := by
    unfold C
    simp [show (2654208 * k + 2205304) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 1102652) = 663552 * k + 551326 := by
    unfold C
    simp [show (1327104 * k + 1102652) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 551326) = 331776 * k + 275663 := by
    unfold C
    simp [show (663552 * k + 551326) % 2 = 0 by omega]
    omega
  have h11 : C (331776 * k + 275663) = 995328 * k + 826990 := by
    unfold C
    simp [show (331776 * k + 275663) % 2 ≠ 0 by omega]
    omega
  have h12 : C (995328 * k + 826990) = 497664 * k + 413495 := by
    unfold C
    simp [show (995328 * k + 826990) % 2 = 0 by omega]
    omega
  have h13 : C (497664 * k + 413495) = 1492992 * k + 1240486 := by
    unfold C
    simp [show (497664 * k + 413495) % 2 ≠ 0 by omega]
    omega
  have h14 : C (1492992 * k + 1240486) = 746496 * k + 620243 := by
    unfold C
    simp [show (1492992 * k + 1240486) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 620243) = 2239488 * k + 1860730 := by
    unfold C
    simp [show (746496 * k + 620243) % 2 ≠ 0 by omega]
    omega
  have h16 : C (2239488 * k + 1860730) = 1119744 * k + 930365 := by
    unfold C
    simp [show (2239488 * k + 1860730) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 930365) = 3359232 * k + 2791096 := by
    unfold C
    simp [show (1119744 * k + 930365) % 2 ≠ 0 by omega]
    omega
  have h18 : C (3359232 * k + 2791096) = 1679616 * k + 1395548 := by
    unfold C
    simp [show (3359232 * k + 2791096) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 1395548) = 839808 * k + 697774 := by
    unfold C
    simp [show (1679616 * k + 1395548) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 697774) = 419904 * k + 348887 := by
    unfold C
    simp [show (839808 * k + 697774) % 2 = 0 by omega]
    omega
  have h21 : C (419904 * k + 348887) = 1259712 * k + 1046662 := by
    unfold C
    simp [show (419904 * k + 348887) % 2 ≠ 0 by omega]
    omega
  have h22 : C (1259712 * k + 1046662) = 629856 * k + 523331 := by
    unfold C
    simp [show (1259712 * k + 1046662) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 523331) = 1889568 * k + 1569994 := by
    unfold C
    simp [show (629856 * k + 523331) % 2 ≠ 0 by omega]
    omega
  have h24 : C (1889568 * k + 1569994) = 944784 * k + 784997 := by
    unfold C
    simp [show (1889568 * k + 1569994) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 784997) = 2834352 * k + 2354992 := by
    unfold C
    simp [show (944784 * k + 784997) % 2 ≠ 0 by omega]
    omega
  have h26 : C (2834352 * k + 2354992) = 1417176 * k + 1177496 := by
    unfold C
    simp [show (2834352 * k + 2354992) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 1177496) = 708588 * k + 588748 := by
    unfold C
    simp [show (1417176 * k + 1177496) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 588748) = 354294 * k + 294374 := by
    unfold C
    simp [show (708588 * k + 588748) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 294374) = 177147 * k + 147187 := by
    unfold C
    simp [show (354294 * k + 294374) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 217807) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 217807))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_217887 : ∀ k : Nat,
    iterate (262144 * k + 217887) 29 = 177147 * k + 147241 ∧
      177147 * k + 147241 < 262144 * k + 217887 := by
  intro k
  have h1 : C (262144 * k + 217887) = 786432 * k + 653662 := by
    unfold C
    simp [show (262144 * k + 217887) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 653662) = 393216 * k + 326831 := by
    unfold C
    simp [show (786432 * k + 653662) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 326831) = 1179648 * k + 980494 := by
    unfold C
    simp [show (393216 * k + 326831) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 980494) = 589824 * k + 490247 := by
    unfold C
    simp [show (1179648 * k + 980494) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 490247) = 1769472 * k + 1470742 := by
    unfold C
    simp [show (589824 * k + 490247) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 1470742) = 884736 * k + 735371 := by
    unfold C
    simp [show (1769472 * k + 1470742) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 735371) = 2654208 * k + 2206114 := by
    unfold C
    simp [show (884736 * k + 735371) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 2206114) = 1327104 * k + 1103057 := by
    unfold C
    simp [show (2654208 * k + 2206114) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 1103057) = 3981312 * k + 3309172 := by
    unfold C
    simp [show (1327104 * k + 1103057) % 2 ≠ 0 by omega]
    omega
  have h10 : C (3981312 * k + 3309172) = 1990656 * k + 1654586 := by
    unfold C
    simp [show (3981312 * k + 3309172) % 2 = 0 by omega]
    omega
  have h11 : C (1990656 * k + 1654586) = 995328 * k + 827293 := by
    unfold C
    simp [show (1990656 * k + 1654586) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 827293) = 2985984 * k + 2481880 := by
    unfold C
    simp [show (995328 * k + 827293) % 2 ≠ 0 by omega]
    omega
  have h13 : C (2985984 * k + 2481880) = 1492992 * k + 1240940 := by
    unfold C
    simp [show (2985984 * k + 2481880) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 1240940) = 746496 * k + 620470 := by
    unfold C
    simp [show (1492992 * k + 1240940) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 620470) = 373248 * k + 310235 := by
    unfold C
    simp [show (746496 * k + 620470) % 2 = 0 by omega]
    omega
  have h16 : C (373248 * k + 310235) = 1119744 * k + 930706 := by
    unfold C
    simp [show (373248 * k + 310235) % 2 ≠ 0 by omega]
    omega
  have h17 : C (1119744 * k + 930706) = 559872 * k + 465353 := by
    unfold C
    simp [show (1119744 * k + 930706) % 2 = 0 by omega]
    omega
  have h18 : C (559872 * k + 465353) = 1679616 * k + 1396060 := by
    unfold C
    simp [show (559872 * k + 465353) % 2 ≠ 0 by omega]
    omega
  have h19 : C (1679616 * k + 1396060) = 839808 * k + 698030 := by
    unfold C
    simp [show (1679616 * k + 1396060) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 698030) = 419904 * k + 349015 := by
    unfold C
    simp [show (839808 * k + 698030) % 2 = 0 by omega]
    omega
  have h21 : C (419904 * k + 349015) = 1259712 * k + 1047046 := by
    unfold C
    simp [show (419904 * k + 349015) % 2 ≠ 0 by omega]
    omega
  have h22 : C (1259712 * k + 1047046) = 629856 * k + 523523 := by
    unfold C
    simp [show (1259712 * k + 1047046) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 523523) = 1889568 * k + 1570570 := by
    unfold C
    simp [show (629856 * k + 523523) % 2 ≠ 0 by omega]
    omega
  have h24 : C (1889568 * k + 1570570) = 944784 * k + 785285 := by
    unfold C
    simp [show (1889568 * k + 1570570) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 785285) = 2834352 * k + 2355856 := by
    unfold C
    simp [show (944784 * k + 785285) % 2 ≠ 0 by omega]
    omega
  have h26 : C (2834352 * k + 2355856) = 1417176 * k + 1177928 := by
    unfold C
    simp [show (2834352 * k + 2355856) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 1177928) = 708588 * k + 588964 := by
    unfold C
    simp [show (1417176 * k + 1177928) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 588964) = 354294 * k + 294482 := by
    unfold C
    simp [show (708588 * k + 588964) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 294482) = 177147 * k + 147241 := by
    unfold C
    simp [show (354294 * k + 294482) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 217887) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 217887))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_218159 : ∀ k : Nat,
    iterate (262144 * k + 218159) 29 = 177147 * k + 147425 ∧
      177147 * k + 147425 < 262144 * k + 218159 := by
  intro k
  have h1 : C (262144 * k + 218159) = 786432 * k + 654478 := by
    unfold C
    simp [show (262144 * k + 218159) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 654478) = 393216 * k + 327239 := by
    unfold C
    simp [show (786432 * k + 654478) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 327239) = 1179648 * k + 981718 := by
    unfold C
    simp [show (393216 * k + 327239) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 981718) = 589824 * k + 490859 := by
    unfold C
    simp [show (1179648 * k + 981718) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 490859) = 1769472 * k + 1472578 := by
    unfold C
    simp [show (589824 * k + 490859) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 1472578) = 884736 * k + 736289 := by
    unfold C
    simp [show (1769472 * k + 1472578) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 736289) = 2654208 * k + 2208868 := by
    unfold C
    simp [show (884736 * k + 736289) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 2208868) = 1327104 * k + 1104434 := by
    unfold C
    simp [show (2654208 * k + 2208868) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 1104434) = 663552 * k + 552217 := by
    unfold C
    simp [show (1327104 * k + 1104434) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 552217) = 1990656 * k + 1656652 := by
    unfold C
    simp [show (663552 * k + 552217) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 1656652) = 995328 * k + 828326 := by
    unfold C
    simp [show (1990656 * k + 1656652) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 828326) = 497664 * k + 414163 := by
    unfold C
    simp [show (995328 * k + 828326) % 2 = 0 by omega]
    omega
  have h13 : C (497664 * k + 414163) = 1492992 * k + 1242490 := by
    unfold C
    simp [show (497664 * k + 414163) % 2 ≠ 0 by omega]
    omega
  have h14 : C (1492992 * k + 1242490) = 746496 * k + 621245 := by
    unfold C
    simp [show (1492992 * k + 1242490) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 621245) = 2239488 * k + 1863736 := by
    unfold C
    simp [show (746496 * k + 621245) % 2 ≠ 0 by omega]
    omega
  have h16 : C (2239488 * k + 1863736) = 1119744 * k + 931868 := by
    unfold C
    simp [show (2239488 * k + 1863736) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 931868) = 559872 * k + 465934 := by
    unfold C
    simp [show (1119744 * k + 931868) % 2 = 0 by omega]
    omega
  have h18 : C (559872 * k + 465934) = 279936 * k + 232967 := by
    unfold C
    simp [show (559872 * k + 465934) % 2 = 0 by omega]
    omega
  have h19 : C (279936 * k + 232967) = 839808 * k + 698902 := by
    unfold C
    simp [show (279936 * k + 232967) % 2 ≠ 0 by omega]
    omega
  have h20 : C (839808 * k + 698902) = 419904 * k + 349451 := by
    unfold C
    simp [show (839808 * k + 698902) % 2 = 0 by omega]
    omega
  have h21 : C (419904 * k + 349451) = 1259712 * k + 1048354 := by
    unfold C
    simp [show (419904 * k + 349451) % 2 ≠ 0 by omega]
    omega
  have h22 : C (1259712 * k + 1048354) = 629856 * k + 524177 := by
    unfold C
    simp [show (1259712 * k + 1048354) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 524177) = 1889568 * k + 1572532 := by
    unfold C
    simp [show (629856 * k + 524177) % 2 ≠ 0 by omega]
    omega
  have h24 : C (1889568 * k + 1572532) = 944784 * k + 786266 := by
    unfold C
    simp [show (1889568 * k + 1572532) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 786266) = 472392 * k + 393133 := by
    unfold C
    simp [show (944784 * k + 786266) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 393133) = 1417176 * k + 1179400 := by
    unfold C
    simp [show (472392 * k + 393133) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 1179400) = 708588 * k + 589700 := by
    unfold C
    simp [show (1417176 * k + 1179400) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 589700) = 354294 * k + 294850 := by
    unfold C
    simp [show (708588 * k + 589700) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 294850) = 177147 * k + 147425 := by
    unfold C
    simp [show (354294 * k + 294850) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 218159) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 218159))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_218279 : ∀ k : Nat,
    iterate (262144 * k + 218279) 29 = 177147 * k + 147506 ∧
      177147 * k + 147506 < 262144 * k + 218279 := by
  intro k
  have h1 : C (262144 * k + 218279) = 786432 * k + 654838 := by
    unfold C
    simp [show (262144 * k + 218279) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 654838) = 393216 * k + 327419 := by
    unfold C
    simp [show (786432 * k + 654838) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 327419) = 1179648 * k + 982258 := by
    unfold C
    simp [show (393216 * k + 327419) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 982258) = 589824 * k + 491129 := by
    unfold C
    simp [show (1179648 * k + 982258) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 491129) = 1769472 * k + 1473388 := by
    unfold C
    simp [show (589824 * k + 491129) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 1473388) = 884736 * k + 736694 := by
    unfold C
    simp [show (1769472 * k + 1473388) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 736694) = 442368 * k + 368347 := by
    unfold C
    simp [show (884736 * k + 736694) % 2 = 0 by omega]
    omega
  have h8 : C (442368 * k + 368347) = 1327104 * k + 1105042 := by
    unfold C
    simp [show (442368 * k + 368347) % 2 ≠ 0 by omega]
    omega
  have h9 : C (1327104 * k + 1105042) = 663552 * k + 552521 := by
    unfold C
    simp [show (1327104 * k + 1105042) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 552521) = 1990656 * k + 1657564 := by
    unfold C
    simp [show (663552 * k + 552521) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 1657564) = 995328 * k + 828782 := by
    unfold C
    simp [show (1990656 * k + 1657564) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 828782) = 497664 * k + 414391 := by
    unfold C
    simp [show (995328 * k + 828782) % 2 = 0 by omega]
    omega
  have h13 : C (497664 * k + 414391) = 1492992 * k + 1243174 := by
    unfold C
    simp [show (497664 * k + 414391) % 2 ≠ 0 by omega]
    omega
  have h14 : C (1492992 * k + 1243174) = 746496 * k + 621587 := by
    unfold C
    simp [show (1492992 * k + 1243174) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 621587) = 2239488 * k + 1864762 := by
    unfold C
    simp [show (746496 * k + 621587) % 2 ≠ 0 by omega]
    omega
  have h16 : C (2239488 * k + 1864762) = 1119744 * k + 932381 := by
    unfold C
    simp [show (2239488 * k + 1864762) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 932381) = 3359232 * k + 2797144 := by
    unfold C
    simp [show (1119744 * k + 932381) % 2 ≠ 0 by omega]
    omega
  have h18 : C (3359232 * k + 2797144) = 1679616 * k + 1398572 := by
    unfold C
    simp [show (3359232 * k + 2797144) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 1398572) = 839808 * k + 699286 := by
    unfold C
    simp [show (1679616 * k + 1398572) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 699286) = 419904 * k + 349643 := by
    unfold C
    simp [show (839808 * k + 699286) % 2 = 0 by omega]
    omega
  have h21 : C (419904 * k + 349643) = 1259712 * k + 1048930 := by
    unfold C
    simp [show (419904 * k + 349643) % 2 ≠ 0 by omega]
    omega
  have h22 : C (1259712 * k + 1048930) = 629856 * k + 524465 := by
    unfold C
    simp [show (1259712 * k + 1048930) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 524465) = 1889568 * k + 1573396 := by
    unfold C
    simp [show (629856 * k + 524465) % 2 ≠ 0 by omega]
    omega
  have h24 : C (1889568 * k + 1573396) = 944784 * k + 786698 := by
    unfold C
    simp [show (1889568 * k + 1573396) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 786698) = 472392 * k + 393349 := by
    unfold C
    simp [show (944784 * k + 786698) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 393349) = 1417176 * k + 1180048 := by
    unfold C
    simp [show (472392 * k + 393349) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 1180048) = 708588 * k + 590024 := by
    unfold C
    simp [show (1417176 * k + 1180048) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 590024) = 354294 * k + 295012 := by
    unfold C
    simp [show (708588 * k + 590024) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 295012) = 177147 * k + 147506 := by
    unfold C
    simp [show (354294 * k + 295012) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 218279) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 218279))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_218367 : ∀ k : Nat,
    iterate (262144 * k + 218367) 29 = 177147 * k + 147565 ∧
      177147 * k + 147565 < 262144 * k + 218367 := by
  intro k
  have h1 : C (262144 * k + 218367) = 786432 * k + 655102 := by
    unfold C
    simp [show (262144 * k + 218367) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 655102) = 393216 * k + 327551 := by
    unfold C
    simp [show (786432 * k + 655102) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 327551) = 1179648 * k + 982654 := by
    unfold C
    simp [show (393216 * k + 327551) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 982654) = 589824 * k + 491327 := by
    unfold C
    simp [show (1179648 * k + 982654) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 491327) = 1769472 * k + 1473982 := by
    unfold C
    simp [show (589824 * k + 491327) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 1473982) = 884736 * k + 736991 := by
    unfold C
    simp [show (1769472 * k + 1473982) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 736991) = 2654208 * k + 2210974 := by
    unfold C
    simp [show (884736 * k + 736991) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 2210974) = 1327104 * k + 1105487 := by
    unfold C
    simp [show (2654208 * k + 2210974) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 1105487) = 3981312 * k + 3316462 := by
    unfold C
    simp [show (1327104 * k + 1105487) % 2 ≠ 0 by omega]
    omega
  have h10 : C (3981312 * k + 3316462) = 1990656 * k + 1658231 := by
    unfold C
    simp [show (3981312 * k + 3316462) % 2 = 0 by omega]
    omega
  have h11 : C (1990656 * k + 1658231) = 5971968 * k + 4974694 := by
    unfold C
    simp [show (1990656 * k + 1658231) % 2 ≠ 0 by omega]
    omega
  have h12 : C (5971968 * k + 4974694) = 2985984 * k + 2487347 := by
    unfold C
    simp [show (5971968 * k + 4974694) % 2 = 0 by omega]
    omega
  have h13 : C (2985984 * k + 2487347) = 8957952 * k + 7462042 := by
    unfold C
    simp [show (2985984 * k + 2487347) % 2 ≠ 0 by omega]
    omega
  have h14 : C (8957952 * k + 7462042) = 4478976 * k + 3731021 := by
    unfold C
    simp [show (8957952 * k + 7462042) % 2 = 0 by omega]
    omega
  have h15 : C (4478976 * k + 3731021) = 13436928 * k + 11193064 := by
    unfold C
    simp [show (4478976 * k + 3731021) % 2 ≠ 0 by omega]
    omega
  have h16 : C (13436928 * k + 11193064) = 6718464 * k + 5596532 := by
    unfold C
    simp [show (13436928 * k + 11193064) % 2 = 0 by omega]
    omega
  have h17 : C (6718464 * k + 5596532) = 3359232 * k + 2798266 := by
    unfold C
    simp [show (6718464 * k + 5596532) % 2 = 0 by omega]
    omega
  have h18 : C (3359232 * k + 2798266) = 1679616 * k + 1399133 := by
    unfold C
    simp [show (3359232 * k + 2798266) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 1399133) = 5038848 * k + 4197400 := by
    unfold C
    simp [show (1679616 * k + 1399133) % 2 ≠ 0 by omega]
    omega
  have h20 : C (5038848 * k + 4197400) = 2519424 * k + 2098700 := by
    unfold C
    simp [show (5038848 * k + 4197400) % 2 = 0 by omega]
    omega
  have h21 : C (2519424 * k + 2098700) = 1259712 * k + 1049350 := by
    unfold C
    simp [show (2519424 * k + 2098700) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 1049350) = 629856 * k + 524675 := by
    unfold C
    simp [show (1259712 * k + 1049350) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 524675) = 1889568 * k + 1574026 := by
    unfold C
    simp [show (629856 * k + 524675) % 2 ≠ 0 by omega]
    omega
  have h24 : C (1889568 * k + 1574026) = 944784 * k + 787013 := by
    unfold C
    simp [show (1889568 * k + 1574026) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 787013) = 2834352 * k + 2361040 := by
    unfold C
    simp [show (944784 * k + 787013) % 2 ≠ 0 by omega]
    omega
  have h26 : C (2834352 * k + 2361040) = 1417176 * k + 1180520 := by
    unfold C
    simp [show (2834352 * k + 2361040) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 1180520) = 708588 * k + 590260 := by
    unfold C
    simp [show (1417176 * k + 1180520) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 590260) = 354294 * k + 295130 := by
    unfold C
    simp [show (708588 * k + 590260) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 295130) = 177147 * k + 147565 := by
    unfold C
    simp [show (354294 * k + 295130) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 218367) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 218367))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_218439 : ∀ k : Nat,
    iterate (262144 * k + 218439) 29 = 177147 * k + 147614 ∧
      177147 * k + 147614 < 262144 * k + 218439 := by
  intro k
  have h1 : C (262144 * k + 218439) = 786432 * k + 655318 := by
    unfold C
    simp [show (262144 * k + 218439) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 655318) = 393216 * k + 327659 := by
    unfold C
    simp [show (786432 * k + 655318) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 327659) = 1179648 * k + 982978 := by
    unfold C
    simp [show (393216 * k + 327659) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 982978) = 589824 * k + 491489 := by
    unfold C
    simp [show (1179648 * k + 982978) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 491489) = 1769472 * k + 1474468 := by
    unfold C
    simp [show (589824 * k + 491489) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 1474468) = 884736 * k + 737234 := by
    unfold C
    simp [show (1769472 * k + 1474468) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 737234) = 442368 * k + 368617 := by
    unfold C
    simp [show (884736 * k + 737234) % 2 = 0 by omega]
    omega
  have h8 : C (442368 * k + 368617) = 1327104 * k + 1105852 := by
    unfold C
    simp [show (442368 * k + 368617) % 2 ≠ 0 by omega]
    omega
  have h9 : C (1327104 * k + 1105852) = 663552 * k + 552926 := by
    unfold C
    simp [show (1327104 * k + 1105852) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 552926) = 331776 * k + 276463 := by
    unfold C
    simp [show (663552 * k + 552926) % 2 = 0 by omega]
    omega
  have h11 : C (331776 * k + 276463) = 995328 * k + 829390 := by
    unfold C
    simp [show (331776 * k + 276463) % 2 ≠ 0 by omega]
    omega
  have h12 : C (995328 * k + 829390) = 497664 * k + 414695 := by
    unfold C
    simp [show (995328 * k + 829390) % 2 = 0 by omega]
    omega
  have h13 : C (497664 * k + 414695) = 1492992 * k + 1244086 := by
    unfold C
    simp [show (497664 * k + 414695) % 2 ≠ 0 by omega]
    omega
  have h14 : C (1492992 * k + 1244086) = 746496 * k + 622043 := by
    unfold C
    simp [show (1492992 * k + 1244086) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 622043) = 2239488 * k + 1866130 := by
    unfold C
    simp [show (746496 * k + 622043) % 2 ≠ 0 by omega]
    omega
  have h16 : C (2239488 * k + 1866130) = 1119744 * k + 933065 := by
    unfold C
    simp [show (2239488 * k + 1866130) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 933065) = 3359232 * k + 2799196 := by
    unfold C
    simp [show (1119744 * k + 933065) % 2 ≠ 0 by omega]
    omega
  have h18 : C (3359232 * k + 2799196) = 1679616 * k + 1399598 := by
    unfold C
    simp [show (3359232 * k + 2799196) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 1399598) = 839808 * k + 699799 := by
    unfold C
    simp [show (1679616 * k + 1399598) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 699799) = 2519424 * k + 2099398 := by
    unfold C
    simp [show (839808 * k + 699799) % 2 ≠ 0 by omega]
    omega
  have h21 : C (2519424 * k + 2099398) = 1259712 * k + 1049699 := by
    unfold C
    simp [show (2519424 * k + 2099398) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 1049699) = 3779136 * k + 3149098 := by
    unfold C
    simp [show (1259712 * k + 1049699) % 2 ≠ 0 by omega]
    omega
  have h23 : C (3779136 * k + 3149098) = 1889568 * k + 1574549 := by
    unfold C
    simp [show (3779136 * k + 3149098) % 2 = 0 by omega]
    omega
  have h24 : C (1889568 * k + 1574549) = 5668704 * k + 4723648 := by
    unfold C
    simp [show (1889568 * k + 1574549) % 2 ≠ 0 by omega]
    omega
  have h25 : C (5668704 * k + 4723648) = 2834352 * k + 2361824 := by
    unfold C
    simp [show (5668704 * k + 4723648) % 2 = 0 by omega]
    omega
  have h26 : C (2834352 * k + 2361824) = 1417176 * k + 1180912 := by
    unfold C
    simp [show (2834352 * k + 2361824) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 1180912) = 708588 * k + 590456 := by
    unfold C
    simp [show (1417176 * k + 1180912) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 590456) = 354294 * k + 295228 := by
    unfold C
    simp [show (708588 * k + 590456) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 295228) = 177147 * k + 147614 := by
    unfold C
    simp [show (354294 * k + 295228) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 218439) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 218439))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_218575 : ∀ k : Nat,
    iterate (262144 * k + 218575) 29 = 177147 * k + 147706 ∧
      177147 * k + 147706 < 262144 * k + 218575 := by
  intro k
  have h1 : C (262144 * k + 218575) = 786432 * k + 655726 := by
    unfold C
    simp [show (262144 * k + 218575) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 655726) = 393216 * k + 327863 := by
    unfold C
    simp [show (786432 * k + 655726) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 327863) = 1179648 * k + 983590 := by
    unfold C
    simp [show (393216 * k + 327863) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 983590) = 589824 * k + 491795 := by
    unfold C
    simp [show (1179648 * k + 983590) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 491795) = 1769472 * k + 1475386 := by
    unfold C
    simp [show (589824 * k + 491795) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 1475386) = 884736 * k + 737693 := by
    unfold C
    simp [show (1769472 * k + 1475386) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 737693) = 2654208 * k + 2213080 := by
    unfold C
    simp [show (884736 * k + 737693) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 2213080) = 1327104 * k + 1106540 := by
    unfold C
    simp [show (2654208 * k + 2213080) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 1106540) = 663552 * k + 553270 := by
    unfold C
    simp [show (1327104 * k + 1106540) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 553270) = 331776 * k + 276635 := by
    unfold C
    simp [show (663552 * k + 553270) % 2 = 0 by omega]
    omega
  have h11 : C (331776 * k + 276635) = 995328 * k + 829906 := by
    unfold C
    simp [show (331776 * k + 276635) % 2 ≠ 0 by omega]
    omega
  have h12 : C (995328 * k + 829906) = 497664 * k + 414953 := by
    unfold C
    simp [show (995328 * k + 829906) % 2 = 0 by omega]
    omega
  have h13 : C (497664 * k + 414953) = 1492992 * k + 1244860 := by
    unfold C
    simp [show (497664 * k + 414953) % 2 ≠ 0 by omega]
    omega
  have h14 : C (1492992 * k + 1244860) = 746496 * k + 622430 := by
    unfold C
    simp [show (1492992 * k + 1244860) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 622430) = 373248 * k + 311215 := by
    unfold C
    simp [show (746496 * k + 622430) % 2 = 0 by omega]
    omega
  have h16 : C (373248 * k + 311215) = 1119744 * k + 933646 := by
    unfold C
    simp [show (373248 * k + 311215) % 2 ≠ 0 by omega]
    omega
  have h17 : C (1119744 * k + 933646) = 559872 * k + 466823 := by
    unfold C
    simp [show (1119744 * k + 933646) % 2 = 0 by omega]
    omega
  have h18 : C (559872 * k + 466823) = 1679616 * k + 1400470 := by
    unfold C
    simp [show (559872 * k + 466823) % 2 ≠ 0 by omega]
    omega
  have h19 : C (1679616 * k + 1400470) = 839808 * k + 700235 := by
    unfold C
    simp [show (1679616 * k + 1400470) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 700235) = 2519424 * k + 2100706 := by
    unfold C
    simp [show (839808 * k + 700235) % 2 ≠ 0 by omega]
    omega
  have h21 : C (2519424 * k + 2100706) = 1259712 * k + 1050353 := by
    unfold C
    simp [show (2519424 * k + 2100706) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 1050353) = 3779136 * k + 3151060 := by
    unfold C
    simp [show (1259712 * k + 1050353) % 2 ≠ 0 by omega]
    omega
  have h23 : C (3779136 * k + 3151060) = 1889568 * k + 1575530 := by
    unfold C
    simp [show (3779136 * k + 3151060) % 2 = 0 by omega]
    omega
  have h24 : C (1889568 * k + 1575530) = 944784 * k + 787765 := by
    unfold C
    simp [show (1889568 * k + 1575530) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 787765) = 2834352 * k + 2363296 := by
    unfold C
    simp [show (944784 * k + 787765) % 2 ≠ 0 by omega]
    omega
  have h26 : C (2834352 * k + 2363296) = 1417176 * k + 1181648 := by
    unfold C
    simp [show (2834352 * k + 2363296) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 1181648) = 708588 * k + 590824 := by
    unfold C
    simp [show (1417176 * k + 1181648) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 590824) = 354294 * k + 295412 := by
    unfold C
    simp [show (708588 * k + 590824) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 295412) = 177147 * k + 147706 := by
    unfold C
    simp [show (354294 * k + 295412) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 218575) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 218575))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_218855 : ∀ k : Nat,
    iterate (262144 * k + 218855) 29 = 177147 * k + 147895 ∧
      177147 * k + 147895 < 262144 * k + 218855 := by
  intro k
  have h1 : C (262144 * k + 218855) = 786432 * k + 656566 := by
    unfold C
    simp [show (262144 * k + 218855) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 656566) = 393216 * k + 328283 := by
    unfold C
    simp [show (786432 * k + 656566) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 328283) = 1179648 * k + 984850 := by
    unfold C
    simp [show (393216 * k + 328283) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 984850) = 589824 * k + 492425 := by
    unfold C
    simp [show (1179648 * k + 984850) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 492425) = 1769472 * k + 1477276 := by
    unfold C
    simp [show (589824 * k + 492425) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 1477276) = 884736 * k + 738638 := by
    unfold C
    simp [show (1769472 * k + 1477276) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 738638) = 442368 * k + 369319 := by
    unfold C
    simp [show (884736 * k + 738638) % 2 = 0 by omega]
    omega
  have h8 : C (442368 * k + 369319) = 1327104 * k + 1107958 := by
    unfold C
    simp [show (442368 * k + 369319) % 2 ≠ 0 by omega]
    omega
  have h9 : C (1327104 * k + 1107958) = 663552 * k + 553979 := by
    unfold C
    simp [show (1327104 * k + 1107958) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 553979) = 1990656 * k + 1661938 := by
    unfold C
    simp [show (663552 * k + 553979) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 1661938) = 995328 * k + 830969 := by
    unfold C
    simp [show (1990656 * k + 1661938) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 830969) = 2985984 * k + 2492908 := by
    unfold C
    simp [show (995328 * k + 830969) % 2 ≠ 0 by omega]
    omega
  have h13 : C (2985984 * k + 2492908) = 1492992 * k + 1246454 := by
    unfold C
    simp [show (2985984 * k + 2492908) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 1246454) = 746496 * k + 623227 := by
    unfold C
    simp [show (1492992 * k + 1246454) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 623227) = 2239488 * k + 1869682 := by
    unfold C
    simp [show (746496 * k + 623227) % 2 ≠ 0 by omega]
    omega
  have h16 : C (2239488 * k + 1869682) = 1119744 * k + 934841 := by
    unfold C
    simp [show (2239488 * k + 1869682) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 934841) = 3359232 * k + 2804524 := by
    unfold C
    simp [show (1119744 * k + 934841) % 2 ≠ 0 by omega]
    omega
  have h18 : C (3359232 * k + 2804524) = 1679616 * k + 1402262 := by
    unfold C
    simp [show (3359232 * k + 2804524) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 1402262) = 839808 * k + 701131 := by
    unfold C
    simp [show (1679616 * k + 1402262) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 701131) = 2519424 * k + 2103394 := by
    unfold C
    simp [show (839808 * k + 701131) % 2 ≠ 0 by omega]
    omega
  have h21 : C (2519424 * k + 2103394) = 1259712 * k + 1051697 := by
    unfold C
    simp [show (2519424 * k + 2103394) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 1051697) = 3779136 * k + 3155092 := by
    unfold C
    simp [show (1259712 * k + 1051697) % 2 ≠ 0 by omega]
    omega
  have h23 : C (3779136 * k + 3155092) = 1889568 * k + 1577546 := by
    unfold C
    simp [show (3779136 * k + 3155092) % 2 = 0 by omega]
    omega
  have h24 : C (1889568 * k + 1577546) = 944784 * k + 788773 := by
    unfold C
    simp [show (1889568 * k + 1577546) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 788773) = 2834352 * k + 2366320 := by
    unfold C
    simp [show (944784 * k + 788773) % 2 ≠ 0 by omega]
    omega
  have h26 : C (2834352 * k + 2366320) = 1417176 * k + 1183160 := by
    unfold C
    simp [show (2834352 * k + 2366320) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 1183160) = 708588 * k + 591580 := by
    unfold C
    simp [show (1417176 * k + 1183160) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 591580) = 354294 * k + 295790 := by
    unfold C
    simp [show (708588 * k + 591580) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 295790) = 177147 * k + 147895 := by
    unfold C
    simp [show (354294 * k + 295790) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 218855) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 218855))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_219047 : ∀ k : Nat,
    iterate (262144 * k + 219047) 29 = 177147 * k + 148025 ∧
      177147 * k + 148025 < 262144 * k + 219047 := by
  intro k
  have h1 : C (262144 * k + 219047) = 786432 * k + 657142 := by
    unfold C
    simp [show (262144 * k + 219047) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 657142) = 393216 * k + 328571 := by
    unfold C
    simp [show (786432 * k + 657142) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 328571) = 1179648 * k + 985714 := by
    unfold C
    simp [show (393216 * k + 328571) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 985714) = 589824 * k + 492857 := by
    unfold C
    simp [show (1179648 * k + 985714) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 492857) = 1769472 * k + 1478572 := by
    unfold C
    simp [show (589824 * k + 492857) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 1478572) = 884736 * k + 739286 := by
    unfold C
    simp [show (1769472 * k + 1478572) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 739286) = 442368 * k + 369643 := by
    unfold C
    simp [show (884736 * k + 739286) % 2 = 0 by omega]
    omega
  have h8 : C (442368 * k + 369643) = 1327104 * k + 1108930 := by
    unfold C
    simp [show (442368 * k + 369643) % 2 ≠ 0 by omega]
    omega
  have h9 : C (1327104 * k + 1108930) = 663552 * k + 554465 := by
    unfold C
    simp [show (1327104 * k + 1108930) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 554465) = 1990656 * k + 1663396 := by
    unfold C
    simp [show (663552 * k + 554465) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 1663396) = 995328 * k + 831698 := by
    unfold C
    simp [show (1990656 * k + 1663396) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 831698) = 497664 * k + 415849 := by
    unfold C
    simp [show (995328 * k + 831698) % 2 = 0 by omega]
    omega
  have h13 : C (497664 * k + 415849) = 1492992 * k + 1247548 := by
    unfold C
    simp [show (497664 * k + 415849) % 2 ≠ 0 by omega]
    omega
  have h14 : C (1492992 * k + 1247548) = 746496 * k + 623774 := by
    unfold C
    simp [show (1492992 * k + 1247548) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 623774) = 373248 * k + 311887 := by
    unfold C
    simp [show (746496 * k + 623774) % 2 = 0 by omega]
    omega
  have h16 : C (373248 * k + 311887) = 1119744 * k + 935662 := by
    unfold C
    simp [show (373248 * k + 311887) % 2 ≠ 0 by omega]
    omega
  have h17 : C (1119744 * k + 935662) = 559872 * k + 467831 := by
    unfold C
    simp [show (1119744 * k + 935662) % 2 = 0 by omega]
    omega
  have h18 : C (559872 * k + 467831) = 1679616 * k + 1403494 := by
    unfold C
    simp [show (559872 * k + 467831) % 2 ≠ 0 by omega]
    omega
  have h19 : C (1679616 * k + 1403494) = 839808 * k + 701747 := by
    unfold C
    simp [show (1679616 * k + 1403494) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 701747) = 2519424 * k + 2105242 := by
    unfold C
    simp [show (839808 * k + 701747) % 2 ≠ 0 by omega]
    omega
  have h21 : C (2519424 * k + 2105242) = 1259712 * k + 1052621 := by
    unfold C
    simp [show (2519424 * k + 2105242) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 1052621) = 3779136 * k + 3157864 := by
    unfold C
    simp [show (1259712 * k + 1052621) % 2 ≠ 0 by omega]
    omega
  have h23 : C (3779136 * k + 3157864) = 1889568 * k + 1578932 := by
    unfold C
    simp [show (3779136 * k + 3157864) % 2 = 0 by omega]
    omega
  have h24 : C (1889568 * k + 1578932) = 944784 * k + 789466 := by
    unfold C
    simp [show (1889568 * k + 1578932) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 789466) = 472392 * k + 394733 := by
    unfold C
    simp [show (944784 * k + 789466) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 394733) = 1417176 * k + 1184200 := by
    unfold C
    simp [show (472392 * k + 394733) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 1184200) = 708588 * k + 592100 := by
    unfold C
    simp [show (1417176 * k + 1184200) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 592100) = 354294 * k + 296050 := by
    unfold C
    simp [show (708588 * k + 592100) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 296050) = 177147 * k + 148025 := by
    unfold C
    simp [show (354294 * k + 296050) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 219047) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 219047))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_219131 : ∀ k : Nat,
    iterate (262144 * k + 219131) 29 = 177147 * k + 148082 ∧
      177147 * k + 148082 < 262144 * k + 219131 := by
  intro k
  have h1 : C (262144 * k + 219131) = 786432 * k + 657394 := by
    unfold C
    simp [show (262144 * k + 219131) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 657394) = 393216 * k + 328697 := by
    unfold C
    simp [show (786432 * k + 657394) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 328697) = 1179648 * k + 986092 := by
    unfold C
    simp [show (393216 * k + 328697) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 986092) = 589824 * k + 493046 := by
    unfold C
    simp [show (1179648 * k + 986092) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 493046) = 294912 * k + 246523 := by
    unfold C
    simp [show (589824 * k + 493046) % 2 = 0 by omega]
    omega
  have h6 : C (294912 * k + 246523) = 884736 * k + 739570 := by
    unfold C
    simp [show (294912 * k + 246523) % 2 ≠ 0 by omega]
    omega
  have h7 : C (884736 * k + 739570) = 442368 * k + 369785 := by
    unfold C
    simp [show (884736 * k + 739570) % 2 = 0 by omega]
    omega
  have h8 : C (442368 * k + 369785) = 1327104 * k + 1109356 := by
    unfold C
    simp [show (442368 * k + 369785) % 2 ≠ 0 by omega]
    omega
  have h9 : C (1327104 * k + 1109356) = 663552 * k + 554678 := by
    unfold C
    simp [show (1327104 * k + 1109356) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 554678) = 331776 * k + 277339 := by
    unfold C
    simp [show (663552 * k + 554678) % 2 = 0 by omega]
    omega
  have h11 : C (331776 * k + 277339) = 995328 * k + 832018 := by
    unfold C
    simp [show (331776 * k + 277339) % 2 ≠ 0 by omega]
    omega
  have h12 : C (995328 * k + 832018) = 497664 * k + 416009 := by
    unfold C
    simp [show (995328 * k + 832018) % 2 = 0 by omega]
    omega
  have h13 : C (497664 * k + 416009) = 1492992 * k + 1248028 := by
    unfold C
    simp [show (497664 * k + 416009) % 2 ≠ 0 by omega]
    omega
  have h14 : C (1492992 * k + 1248028) = 746496 * k + 624014 := by
    unfold C
    simp [show (1492992 * k + 1248028) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 624014) = 373248 * k + 312007 := by
    unfold C
    simp [show (746496 * k + 624014) % 2 = 0 by omega]
    omega
  have h16 : C (373248 * k + 312007) = 1119744 * k + 936022 := by
    unfold C
    simp [show (373248 * k + 312007) % 2 ≠ 0 by omega]
    omega
  have h17 : C (1119744 * k + 936022) = 559872 * k + 468011 := by
    unfold C
    simp [show (1119744 * k + 936022) % 2 = 0 by omega]
    omega
  have h18 : C (559872 * k + 468011) = 1679616 * k + 1404034 := by
    unfold C
    simp [show (559872 * k + 468011) % 2 ≠ 0 by omega]
    omega
  have h19 : C (1679616 * k + 1404034) = 839808 * k + 702017 := by
    unfold C
    simp [show (1679616 * k + 1404034) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 702017) = 2519424 * k + 2106052 := by
    unfold C
    simp [show (839808 * k + 702017) % 2 ≠ 0 by omega]
    omega
  have h21 : C (2519424 * k + 2106052) = 1259712 * k + 1053026 := by
    unfold C
    simp [show (2519424 * k + 2106052) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 1053026) = 629856 * k + 526513 := by
    unfold C
    simp [show (1259712 * k + 1053026) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 526513) = 1889568 * k + 1579540 := by
    unfold C
    simp [show (629856 * k + 526513) % 2 ≠ 0 by omega]
    omega
  have h24 : C (1889568 * k + 1579540) = 944784 * k + 789770 := by
    unfold C
    simp [show (1889568 * k + 1579540) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 789770) = 472392 * k + 394885 := by
    unfold C
    simp [show (944784 * k + 789770) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 394885) = 1417176 * k + 1184656 := by
    unfold C
    simp [show (472392 * k + 394885) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 1184656) = 708588 * k + 592328 := by
    unfold C
    simp [show (1417176 * k + 1184656) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 592328) = 354294 * k + 296164 := by
    unfold C
    simp [show (708588 * k + 592328) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 296164) = 177147 * k + 148082 := by
    unfold C
    simp [show (354294 * k + 296164) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 219131) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 219131))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_219167 : ∀ k : Nat,
    iterate (262144 * k + 219167) 29 = 177147 * k + 148106 ∧
      177147 * k + 148106 < 262144 * k + 219167 := by
  intro k
  have h1 : C (262144 * k + 219167) = 786432 * k + 657502 := by
    unfold C
    simp [show (262144 * k + 219167) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 657502) = 393216 * k + 328751 := by
    unfold C
    simp [show (786432 * k + 657502) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 328751) = 1179648 * k + 986254 := by
    unfold C
    simp [show (393216 * k + 328751) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 986254) = 589824 * k + 493127 := by
    unfold C
    simp [show (1179648 * k + 986254) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 493127) = 1769472 * k + 1479382 := by
    unfold C
    simp [show (589824 * k + 493127) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 1479382) = 884736 * k + 739691 := by
    unfold C
    simp [show (1769472 * k + 1479382) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 739691) = 2654208 * k + 2219074 := by
    unfold C
    simp [show (884736 * k + 739691) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 2219074) = 1327104 * k + 1109537 := by
    unfold C
    simp [show (2654208 * k + 2219074) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 1109537) = 3981312 * k + 3328612 := by
    unfold C
    simp [show (1327104 * k + 1109537) % 2 ≠ 0 by omega]
    omega
  have h10 : C (3981312 * k + 3328612) = 1990656 * k + 1664306 := by
    unfold C
    simp [show (3981312 * k + 3328612) % 2 = 0 by omega]
    omega
  have h11 : C (1990656 * k + 1664306) = 995328 * k + 832153 := by
    unfold C
    simp [show (1990656 * k + 1664306) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 832153) = 2985984 * k + 2496460 := by
    unfold C
    simp [show (995328 * k + 832153) % 2 ≠ 0 by omega]
    omega
  have h13 : C (2985984 * k + 2496460) = 1492992 * k + 1248230 := by
    unfold C
    simp [show (2985984 * k + 2496460) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 1248230) = 746496 * k + 624115 := by
    unfold C
    simp [show (1492992 * k + 1248230) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 624115) = 2239488 * k + 1872346 := by
    unfold C
    simp [show (746496 * k + 624115) % 2 ≠ 0 by omega]
    omega
  have h16 : C (2239488 * k + 1872346) = 1119744 * k + 936173 := by
    unfold C
    simp [show (2239488 * k + 1872346) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 936173) = 3359232 * k + 2808520 := by
    unfold C
    simp [show (1119744 * k + 936173) % 2 ≠ 0 by omega]
    omega
  have h18 : C (3359232 * k + 2808520) = 1679616 * k + 1404260 := by
    unfold C
    simp [show (3359232 * k + 2808520) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 1404260) = 839808 * k + 702130 := by
    unfold C
    simp [show (1679616 * k + 1404260) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 702130) = 419904 * k + 351065 := by
    unfold C
    simp [show (839808 * k + 702130) % 2 = 0 by omega]
    omega
  have h21 : C (419904 * k + 351065) = 1259712 * k + 1053196 := by
    unfold C
    simp [show (419904 * k + 351065) % 2 ≠ 0 by omega]
    omega
  have h22 : C (1259712 * k + 1053196) = 629856 * k + 526598 := by
    unfold C
    simp [show (1259712 * k + 1053196) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 526598) = 314928 * k + 263299 := by
    unfold C
    simp [show (629856 * k + 526598) % 2 = 0 by omega]
    omega
  have h24 : C (314928 * k + 263299) = 944784 * k + 789898 := by
    unfold C
    simp [show (314928 * k + 263299) % 2 ≠ 0 by omega]
    omega
  have h25 : C (944784 * k + 789898) = 472392 * k + 394949 := by
    unfold C
    simp [show (944784 * k + 789898) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 394949) = 1417176 * k + 1184848 := by
    unfold C
    simp [show (472392 * k + 394949) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 1184848) = 708588 * k + 592424 := by
    unfold C
    simp [show (1417176 * k + 1184848) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 592424) = 354294 * k + 296212 := by
    unfold C
    simp [show (708588 * k + 592424) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 296212) = 177147 * k + 148106 := by
    unfold C
    simp [show (354294 * k + 296212) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 219167) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 219167))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_219247 : ∀ k : Nat,
    iterate (262144 * k + 219247) 29 = 177147 * k + 148160 ∧
      177147 * k + 148160 < 262144 * k + 219247 := by
  intro k
  have h1 : C (262144 * k + 219247) = 786432 * k + 657742 := by
    unfold C
    simp [show (262144 * k + 219247) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 657742) = 393216 * k + 328871 := by
    unfold C
    simp [show (786432 * k + 657742) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 328871) = 1179648 * k + 986614 := by
    unfold C
    simp [show (393216 * k + 328871) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 986614) = 589824 * k + 493307 := by
    unfold C
    simp [show (1179648 * k + 986614) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 493307) = 1769472 * k + 1479922 := by
    unfold C
    simp [show (589824 * k + 493307) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 1479922) = 884736 * k + 739961 := by
    unfold C
    simp [show (1769472 * k + 1479922) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 739961) = 2654208 * k + 2219884 := by
    unfold C
    simp [show (884736 * k + 739961) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 2219884) = 1327104 * k + 1109942 := by
    unfold C
    simp [show (2654208 * k + 2219884) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 1109942) = 663552 * k + 554971 := by
    unfold C
    simp [show (1327104 * k + 1109942) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 554971) = 1990656 * k + 1664914 := by
    unfold C
    simp [show (663552 * k + 554971) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 1664914) = 995328 * k + 832457 := by
    unfold C
    simp [show (1990656 * k + 1664914) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 832457) = 2985984 * k + 2497372 := by
    unfold C
    simp [show (995328 * k + 832457) % 2 ≠ 0 by omega]
    omega
  have h13 : C (2985984 * k + 2497372) = 1492992 * k + 1248686 := by
    unfold C
    simp [show (2985984 * k + 2497372) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 1248686) = 746496 * k + 624343 := by
    unfold C
    simp [show (1492992 * k + 1248686) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 624343) = 2239488 * k + 1873030 := by
    unfold C
    simp [show (746496 * k + 624343) % 2 ≠ 0 by omega]
    omega
  have h16 : C (2239488 * k + 1873030) = 1119744 * k + 936515 := by
    unfold C
    simp [show (2239488 * k + 1873030) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 936515) = 3359232 * k + 2809546 := by
    unfold C
    simp [show (1119744 * k + 936515) % 2 ≠ 0 by omega]
    omega
  have h18 : C (3359232 * k + 2809546) = 1679616 * k + 1404773 := by
    unfold C
    simp [show (3359232 * k + 2809546) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 1404773) = 5038848 * k + 4214320 := by
    unfold C
    simp [show (1679616 * k + 1404773) % 2 ≠ 0 by omega]
    omega
  have h20 : C (5038848 * k + 4214320) = 2519424 * k + 2107160 := by
    unfold C
    simp [show (5038848 * k + 4214320) % 2 = 0 by omega]
    omega
  have h21 : C (2519424 * k + 2107160) = 1259712 * k + 1053580 := by
    unfold C
    simp [show (2519424 * k + 2107160) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 1053580) = 629856 * k + 526790 := by
    unfold C
    simp [show (1259712 * k + 1053580) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 526790) = 314928 * k + 263395 := by
    unfold C
    simp [show (629856 * k + 526790) % 2 = 0 by omega]
    omega
  have h24 : C (314928 * k + 263395) = 944784 * k + 790186 := by
    unfold C
    simp [show (314928 * k + 263395) % 2 ≠ 0 by omega]
    omega
  have h25 : C (944784 * k + 790186) = 472392 * k + 395093 := by
    unfold C
    simp [show (944784 * k + 790186) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 395093) = 1417176 * k + 1185280 := by
    unfold C
    simp [show (472392 * k + 395093) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 1185280) = 708588 * k + 592640 := by
    unfold C
    simp [show (1417176 * k + 1185280) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 592640) = 354294 * k + 296320 := by
    unfold C
    simp [show (708588 * k + 592640) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 296320) = 177147 * k + 148160 := by
    unfold C
    simp [show (354294 * k + 296320) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 219247) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 219247))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_219899 : ∀ k : Nat,
    iterate (262144 * k + 219899) 29 = 177147 * k + 148601 ∧
      177147 * k + 148601 < 262144 * k + 219899 := by
  intro k
  have h1 : C (262144 * k + 219899) = 786432 * k + 659698 := by
    unfold C
    simp [show (262144 * k + 219899) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 659698) = 393216 * k + 329849 := by
    unfold C
    simp [show (786432 * k + 659698) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 329849) = 1179648 * k + 989548 := by
    unfold C
    simp [show (393216 * k + 329849) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 989548) = 589824 * k + 494774 := by
    unfold C
    simp [show (1179648 * k + 989548) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 494774) = 294912 * k + 247387 := by
    unfold C
    simp [show (589824 * k + 494774) % 2 = 0 by omega]
    omega
  have h6 : C (294912 * k + 247387) = 884736 * k + 742162 := by
    unfold C
    simp [show (294912 * k + 247387) % 2 ≠ 0 by omega]
    omega
  have h7 : C (884736 * k + 742162) = 442368 * k + 371081 := by
    unfold C
    simp [show (884736 * k + 742162) % 2 = 0 by omega]
    omega
  have h8 : C (442368 * k + 371081) = 1327104 * k + 1113244 := by
    unfold C
    simp [show (442368 * k + 371081) % 2 ≠ 0 by omega]
    omega
  have h9 : C (1327104 * k + 1113244) = 663552 * k + 556622 := by
    unfold C
    simp [show (1327104 * k + 1113244) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 556622) = 331776 * k + 278311 := by
    unfold C
    simp [show (663552 * k + 556622) % 2 = 0 by omega]
    omega
  have h11 : C (331776 * k + 278311) = 995328 * k + 834934 := by
    unfold C
    simp [show (331776 * k + 278311) % 2 ≠ 0 by omega]
    omega
  have h12 : C (995328 * k + 834934) = 497664 * k + 417467 := by
    unfold C
    simp [show (995328 * k + 834934) % 2 = 0 by omega]
    omega
  have h13 : C (497664 * k + 417467) = 1492992 * k + 1252402 := by
    unfold C
    simp [show (497664 * k + 417467) % 2 ≠ 0 by omega]
    omega
  have h14 : C (1492992 * k + 1252402) = 746496 * k + 626201 := by
    unfold C
    simp [show (1492992 * k + 1252402) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 626201) = 2239488 * k + 1878604 := by
    unfold C
    simp [show (746496 * k + 626201) % 2 ≠ 0 by omega]
    omega
  have h16 : C (2239488 * k + 1878604) = 1119744 * k + 939302 := by
    unfold C
    simp [show (2239488 * k + 1878604) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 939302) = 559872 * k + 469651 := by
    unfold C
    simp [show (1119744 * k + 939302) % 2 = 0 by omega]
    omega
  have h18 : C (559872 * k + 469651) = 1679616 * k + 1408954 := by
    unfold C
    simp [show (559872 * k + 469651) % 2 ≠ 0 by omega]
    omega
  have h19 : C (1679616 * k + 1408954) = 839808 * k + 704477 := by
    unfold C
    simp [show (1679616 * k + 1408954) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 704477) = 2519424 * k + 2113432 := by
    unfold C
    simp [show (839808 * k + 704477) % 2 ≠ 0 by omega]
    omega
  have h21 : C (2519424 * k + 2113432) = 1259712 * k + 1056716 := by
    unfold C
    simp [show (2519424 * k + 2113432) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 1056716) = 629856 * k + 528358 := by
    unfold C
    simp [show (1259712 * k + 1056716) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 528358) = 314928 * k + 264179 := by
    unfold C
    simp [show (629856 * k + 528358) % 2 = 0 by omega]
    omega
  have h24 : C (314928 * k + 264179) = 944784 * k + 792538 := by
    unfold C
    simp [show (314928 * k + 264179) % 2 ≠ 0 by omega]
    omega
  have h25 : C (944784 * k + 792538) = 472392 * k + 396269 := by
    unfold C
    simp [show (944784 * k + 792538) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 396269) = 1417176 * k + 1188808 := by
    unfold C
    simp [show (472392 * k + 396269) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 1188808) = 708588 * k + 594404 := by
    unfold C
    simp [show (1417176 * k + 1188808) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 594404) = 354294 * k + 297202 := by
    unfold C
    simp [show (708588 * k + 594404) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 297202) = 177147 * k + 148601 := by
    unfold C
    simp [show (354294 * k + 297202) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 219899) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 219899))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_220923 : ∀ k : Nat,
    iterate (262144 * k + 220923) 29 = 177147 * k + 149293 ∧
      177147 * k + 149293 < 262144 * k + 220923 := by
  intro k
  have h1 : C (262144 * k + 220923) = 786432 * k + 662770 := by
    unfold C
    simp [show (262144 * k + 220923) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 662770) = 393216 * k + 331385 := by
    unfold C
    simp [show (786432 * k + 662770) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 331385) = 1179648 * k + 994156 := by
    unfold C
    simp [show (393216 * k + 331385) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 994156) = 589824 * k + 497078 := by
    unfold C
    simp [show (1179648 * k + 994156) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 497078) = 294912 * k + 248539 := by
    unfold C
    simp [show (589824 * k + 497078) % 2 = 0 by omega]
    omega
  have h6 : C (294912 * k + 248539) = 884736 * k + 745618 := by
    unfold C
    simp [show (294912 * k + 248539) % 2 ≠ 0 by omega]
    omega
  have h7 : C (884736 * k + 745618) = 442368 * k + 372809 := by
    unfold C
    simp [show (884736 * k + 745618) % 2 = 0 by omega]
    omega
  have h8 : C (442368 * k + 372809) = 1327104 * k + 1118428 := by
    unfold C
    simp [show (442368 * k + 372809) % 2 ≠ 0 by omega]
    omega
  have h9 : C (1327104 * k + 1118428) = 663552 * k + 559214 := by
    unfold C
    simp [show (1327104 * k + 1118428) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 559214) = 331776 * k + 279607 := by
    unfold C
    simp [show (663552 * k + 559214) % 2 = 0 by omega]
    omega
  have h11 : C (331776 * k + 279607) = 995328 * k + 838822 := by
    unfold C
    simp [show (331776 * k + 279607) % 2 ≠ 0 by omega]
    omega
  have h12 : C (995328 * k + 838822) = 497664 * k + 419411 := by
    unfold C
    simp [show (995328 * k + 838822) % 2 = 0 by omega]
    omega
  have h13 : C (497664 * k + 419411) = 1492992 * k + 1258234 := by
    unfold C
    simp [show (497664 * k + 419411) % 2 ≠ 0 by omega]
    omega
  have h14 : C (1492992 * k + 1258234) = 746496 * k + 629117 := by
    unfold C
    simp [show (1492992 * k + 1258234) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 629117) = 2239488 * k + 1887352 := by
    unfold C
    simp [show (746496 * k + 629117) % 2 ≠ 0 by omega]
    omega
  have h16 : C (2239488 * k + 1887352) = 1119744 * k + 943676 := by
    unfold C
    simp [show (2239488 * k + 1887352) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 943676) = 559872 * k + 471838 := by
    unfold C
    simp [show (1119744 * k + 943676) % 2 = 0 by omega]
    omega
  have h18 : C (559872 * k + 471838) = 279936 * k + 235919 := by
    unfold C
    simp [show (559872 * k + 471838) % 2 = 0 by omega]
    omega
  have h19 : C (279936 * k + 235919) = 839808 * k + 707758 := by
    unfold C
    simp [show (279936 * k + 235919) % 2 ≠ 0 by omega]
    omega
  have h20 : C (839808 * k + 707758) = 419904 * k + 353879 := by
    unfold C
    simp [show (839808 * k + 707758) % 2 = 0 by omega]
    omega
  have h21 : C (419904 * k + 353879) = 1259712 * k + 1061638 := by
    unfold C
    simp [show (419904 * k + 353879) % 2 ≠ 0 by omega]
    omega
  have h22 : C (1259712 * k + 1061638) = 629856 * k + 530819 := by
    unfold C
    simp [show (1259712 * k + 1061638) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 530819) = 1889568 * k + 1592458 := by
    unfold C
    simp [show (629856 * k + 530819) % 2 ≠ 0 by omega]
    omega
  have h24 : C (1889568 * k + 1592458) = 944784 * k + 796229 := by
    unfold C
    simp [show (1889568 * k + 1592458) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 796229) = 2834352 * k + 2388688 := by
    unfold C
    simp [show (944784 * k + 796229) % 2 ≠ 0 by omega]
    omega
  have h26 : C (2834352 * k + 2388688) = 1417176 * k + 1194344 := by
    unfold C
    simp [show (2834352 * k + 2388688) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 1194344) = 708588 * k + 597172 := by
    unfold C
    simp [show (1417176 * k + 1194344) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 597172) = 354294 * k + 298586 := by
    unfold C
    simp [show (708588 * k + 597172) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 298586) = 177147 * k + 149293 := by
    unfold C
    simp [show (354294 * k + 298586) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 220923) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 220923))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_220955 : ∀ k : Nat,
    iterate (262144 * k + 220955) 29 = 177147 * k + 149314 ∧
      177147 * k + 149314 < 262144 * k + 220955 := by
  intro k
  have h1 : C (262144 * k + 220955) = 786432 * k + 662866 := by
    unfold C
    simp [show (262144 * k + 220955) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 662866) = 393216 * k + 331433 := by
    unfold C
    simp [show (786432 * k + 662866) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 331433) = 1179648 * k + 994300 := by
    unfold C
    simp [show (393216 * k + 331433) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 994300) = 589824 * k + 497150 := by
    unfold C
    simp [show (1179648 * k + 994300) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 497150) = 294912 * k + 248575 := by
    unfold C
    simp [show (589824 * k + 497150) % 2 = 0 by omega]
    omega
  have h6 : C (294912 * k + 248575) = 884736 * k + 745726 := by
    unfold C
    simp [show (294912 * k + 248575) % 2 ≠ 0 by omega]
    omega
  have h7 : C (884736 * k + 745726) = 442368 * k + 372863 := by
    unfold C
    simp [show (884736 * k + 745726) % 2 = 0 by omega]
    omega
  have h8 : C (442368 * k + 372863) = 1327104 * k + 1118590 := by
    unfold C
    simp [show (442368 * k + 372863) % 2 ≠ 0 by omega]
    omega
  have h9 : C (1327104 * k + 1118590) = 663552 * k + 559295 := by
    unfold C
    simp [show (1327104 * k + 1118590) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 559295) = 1990656 * k + 1677886 := by
    unfold C
    simp [show (663552 * k + 559295) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 1677886) = 995328 * k + 838943 := by
    unfold C
    simp [show (1990656 * k + 1677886) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 838943) = 2985984 * k + 2516830 := by
    unfold C
    simp [show (995328 * k + 838943) % 2 ≠ 0 by omega]
    omega
  have h13 : C (2985984 * k + 2516830) = 1492992 * k + 1258415 := by
    unfold C
    simp [show (2985984 * k + 2516830) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 1258415) = 4478976 * k + 3775246 := by
    unfold C
    simp [show (1492992 * k + 1258415) % 2 ≠ 0 by omega]
    omega
  have h15 : C (4478976 * k + 3775246) = 2239488 * k + 1887623 := by
    unfold C
    simp [show (4478976 * k + 3775246) % 2 = 0 by omega]
    omega
  have h16 : C (2239488 * k + 1887623) = 6718464 * k + 5662870 := by
    unfold C
    simp [show (2239488 * k + 1887623) % 2 ≠ 0 by omega]
    omega
  have h17 : C (6718464 * k + 5662870) = 3359232 * k + 2831435 := by
    unfold C
    simp [show (6718464 * k + 5662870) % 2 = 0 by omega]
    omega
  have h18 : C (3359232 * k + 2831435) = 10077696 * k + 8494306 := by
    unfold C
    simp [show (3359232 * k + 2831435) % 2 ≠ 0 by omega]
    omega
  have h19 : C (10077696 * k + 8494306) = 5038848 * k + 4247153 := by
    unfold C
    simp [show (10077696 * k + 8494306) % 2 = 0 by omega]
    omega
  have h20 : C (5038848 * k + 4247153) = 15116544 * k + 12741460 := by
    unfold C
    simp [show (5038848 * k + 4247153) % 2 ≠ 0 by omega]
    omega
  have h21 : C (15116544 * k + 12741460) = 7558272 * k + 6370730 := by
    unfold C
    simp [show (15116544 * k + 12741460) % 2 = 0 by omega]
    omega
  have h22 : C (7558272 * k + 6370730) = 3779136 * k + 3185365 := by
    unfold C
    simp [show (7558272 * k + 6370730) % 2 = 0 by omega]
    omega
  have h23 : C (3779136 * k + 3185365) = 11337408 * k + 9556096 := by
    unfold C
    simp [show (3779136 * k + 3185365) % 2 ≠ 0 by omega]
    omega
  have h24 : C (11337408 * k + 9556096) = 5668704 * k + 4778048 := by
    unfold C
    simp [show (11337408 * k + 9556096) % 2 = 0 by omega]
    omega
  have h25 : C (5668704 * k + 4778048) = 2834352 * k + 2389024 := by
    unfold C
    simp [show (5668704 * k + 4778048) % 2 = 0 by omega]
    omega
  have h26 : C (2834352 * k + 2389024) = 1417176 * k + 1194512 := by
    unfold C
    simp [show (2834352 * k + 2389024) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 1194512) = 708588 * k + 597256 := by
    unfold C
    simp [show (1417176 * k + 1194512) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 597256) = 354294 * k + 298628 := by
    unfold C
    simp [show (708588 * k + 597256) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 298628) = 177147 * k + 149314 := by
    unfold C
    simp [show (354294 * k + 298628) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 220955) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 220955))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_221343 : ∀ k : Nat,
    iterate (262144 * k + 221343) 29 = 177147 * k + 149576 ∧
      177147 * k + 149576 < 262144 * k + 221343 := by
  intro k
  have h1 : C (262144 * k + 221343) = 786432 * k + 664030 := by
    unfold C
    simp [show (262144 * k + 221343) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 664030) = 393216 * k + 332015 := by
    unfold C
    simp [show (786432 * k + 664030) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 332015) = 1179648 * k + 996046 := by
    unfold C
    simp [show (393216 * k + 332015) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 996046) = 589824 * k + 498023 := by
    unfold C
    simp [show (1179648 * k + 996046) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 498023) = 1769472 * k + 1494070 := by
    unfold C
    simp [show (589824 * k + 498023) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 1494070) = 884736 * k + 747035 := by
    unfold C
    simp [show (1769472 * k + 1494070) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 747035) = 2654208 * k + 2241106 := by
    unfold C
    simp [show (884736 * k + 747035) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 2241106) = 1327104 * k + 1120553 := by
    unfold C
    simp [show (2654208 * k + 2241106) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 1120553) = 3981312 * k + 3361660 := by
    unfold C
    simp [show (1327104 * k + 1120553) % 2 ≠ 0 by omega]
    omega
  have h10 : C (3981312 * k + 3361660) = 1990656 * k + 1680830 := by
    unfold C
    simp [show (3981312 * k + 3361660) % 2 = 0 by omega]
    omega
  have h11 : C (1990656 * k + 1680830) = 995328 * k + 840415 := by
    unfold C
    simp [show (1990656 * k + 1680830) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 840415) = 2985984 * k + 2521246 := by
    unfold C
    simp [show (995328 * k + 840415) % 2 ≠ 0 by omega]
    omega
  have h13 : C (2985984 * k + 2521246) = 1492992 * k + 1260623 := by
    unfold C
    simp [show (2985984 * k + 2521246) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 1260623) = 4478976 * k + 3781870 := by
    unfold C
    simp [show (1492992 * k + 1260623) % 2 ≠ 0 by omega]
    omega
  have h15 : C (4478976 * k + 3781870) = 2239488 * k + 1890935 := by
    unfold C
    simp [show (4478976 * k + 3781870) % 2 = 0 by omega]
    omega
  have h16 : C (2239488 * k + 1890935) = 6718464 * k + 5672806 := by
    unfold C
    simp [show (2239488 * k + 1890935) % 2 ≠ 0 by omega]
    omega
  have h17 : C (6718464 * k + 5672806) = 3359232 * k + 2836403 := by
    unfold C
    simp [show (6718464 * k + 5672806) % 2 = 0 by omega]
    omega
  have h18 : C (3359232 * k + 2836403) = 10077696 * k + 8509210 := by
    unfold C
    simp [show (3359232 * k + 2836403) % 2 ≠ 0 by omega]
    omega
  have h19 : C (10077696 * k + 8509210) = 5038848 * k + 4254605 := by
    unfold C
    simp [show (10077696 * k + 8509210) % 2 = 0 by omega]
    omega
  have h20 : C (5038848 * k + 4254605) = 15116544 * k + 12763816 := by
    unfold C
    simp [show (5038848 * k + 4254605) % 2 ≠ 0 by omega]
    omega
  have h21 : C (15116544 * k + 12763816) = 7558272 * k + 6381908 := by
    unfold C
    simp [show (15116544 * k + 12763816) % 2 = 0 by omega]
    omega
  have h22 : C (7558272 * k + 6381908) = 3779136 * k + 3190954 := by
    unfold C
    simp [show (7558272 * k + 6381908) % 2 = 0 by omega]
    omega
  have h23 : C (3779136 * k + 3190954) = 1889568 * k + 1595477 := by
    unfold C
    simp [show (3779136 * k + 3190954) % 2 = 0 by omega]
    omega
  have h24 : C (1889568 * k + 1595477) = 5668704 * k + 4786432 := by
    unfold C
    simp [show (1889568 * k + 1595477) % 2 ≠ 0 by omega]
    omega
  have h25 : C (5668704 * k + 4786432) = 2834352 * k + 2393216 := by
    unfold C
    simp [show (5668704 * k + 4786432) % 2 = 0 by omega]
    omega
  have h26 : C (2834352 * k + 2393216) = 1417176 * k + 1196608 := by
    unfold C
    simp [show (2834352 * k + 2393216) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 1196608) = 708588 * k + 598304 := by
    unfold C
    simp [show (1417176 * k + 1196608) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 598304) = 354294 * k + 299152 := by
    unfold C
    simp [show (708588 * k + 598304) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 299152) = 177147 * k + 149576 := by
    unfold C
    simp [show (354294 * k + 299152) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 221343) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 221343))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_221511 : ∀ k : Nat,
    iterate (262144 * k + 221511) 29 = 177147 * k + 149690 ∧
      177147 * k + 149690 < 262144 * k + 221511 := by
  intro k
  have h1 : C (262144 * k + 221511) = 786432 * k + 664534 := by
    unfold C
    simp [show (262144 * k + 221511) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 664534) = 393216 * k + 332267 := by
    unfold C
    simp [show (786432 * k + 664534) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 332267) = 1179648 * k + 996802 := by
    unfold C
    simp [show (393216 * k + 332267) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 996802) = 589824 * k + 498401 := by
    unfold C
    simp [show (1179648 * k + 996802) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 498401) = 1769472 * k + 1495204 := by
    unfold C
    simp [show (589824 * k + 498401) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 1495204) = 884736 * k + 747602 := by
    unfold C
    simp [show (1769472 * k + 1495204) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 747602) = 442368 * k + 373801 := by
    unfold C
    simp [show (884736 * k + 747602) % 2 = 0 by omega]
    omega
  have h8 : C (442368 * k + 373801) = 1327104 * k + 1121404 := by
    unfold C
    simp [show (442368 * k + 373801) % 2 ≠ 0 by omega]
    omega
  have h9 : C (1327104 * k + 1121404) = 663552 * k + 560702 := by
    unfold C
    simp [show (1327104 * k + 1121404) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 560702) = 331776 * k + 280351 := by
    unfold C
    simp [show (663552 * k + 560702) % 2 = 0 by omega]
    omega
  have h11 : C (331776 * k + 280351) = 995328 * k + 841054 := by
    unfold C
    simp [show (331776 * k + 280351) % 2 ≠ 0 by omega]
    omega
  have h12 : C (995328 * k + 841054) = 497664 * k + 420527 := by
    unfold C
    simp [show (995328 * k + 841054) % 2 = 0 by omega]
    omega
  have h13 : C (497664 * k + 420527) = 1492992 * k + 1261582 := by
    unfold C
    simp [show (497664 * k + 420527) % 2 ≠ 0 by omega]
    omega
  have h14 : C (1492992 * k + 1261582) = 746496 * k + 630791 := by
    unfold C
    simp [show (1492992 * k + 1261582) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 630791) = 2239488 * k + 1892374 := by
    unfold C
    simp [show (746496 * k + 630791) % 2 ≠ 0 by omega]
    omega
  have h16 : C (2239488 * k + 1892374) = 1119744 * k + 946187 := by
    unfold C
    simp [show (2239488 * k + 1892374) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 946187) = 3359232 * k + 2838562 := by
    unfold C
    simp [show (1119744 * k + 946187) % 2 ≠ 0 by omega]
    omega
  have h18 : C (3359232 * k + 2838562) = 1679616 * k + 1419281 := by
    unfold C
    simp [show (3359232 * k + 2838562) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 1419281) = 5038848 * k + 4257844 := by
    unfold C
    simp [show (1679616 * k + 1419281) % 2 ≠ 0 by omega]
    omega
  have h20 : C (5038848 * k + 4257844) = 2519424 * k + 2128922 := by
    unfold C
    simp [show (5038848 * k + 4257844) % 2 = 0 by omega]
    omega
  have h21 : C (2519424 * k + 2128922) = 1259712 * k + 1064461 := by
    unfold C
    simp [show (2519424 * k + 2128922) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 1064461) = 3779136 * k + 3193384 := by
    unfold C
    simp [show (1259712 * k + 1064461) % 2 ≠ 0 by omega]
    omega
  have h23 : C (3779136 * k + 3193384) = 1889568 * k + 1596692 := by
    unfold C
    simp [show (3779136 * k + 3193384) % 2 = 0 by omega]
    omega
  have h24 : C (1889568 * k + 1596692) = 944784 * k + 798346 := by
    unfold C
    simp [show (1889568 * k + 1596692) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 798346) = 472392 * k + 399173 := by
    unfold C
    simp [show (944784 * k + 798346) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 399173) = 1417176 * k + 1197520 := by
    unfold C
    simp [show (472392 * k + 399173) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 1197520) = 708588 * k + 598760 := by
    unfold C
    simp [show (1417176 * k + 1197520) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 598760) = 354294 * k + 299380 := by
    unfold C
    simp [show (708588 * k + 598760) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 299380) = 177147 * k + 149690 := by
    unfold C
    simp [show (354294 * k + 299380) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 221511) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 221511))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

end CollatzM18Shard041
