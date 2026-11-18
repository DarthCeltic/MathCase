import Mathlib.Data.Nat.Prime.Basic

namespace CollatzM18Shard032

def C (n : Nat) : Nat := if n % 2 = 0 then n / 2 else 3 * n + 1

def iterate (n t : Nat) : Nat := Nat.rec n (fun _ previous => C previous) t

theorem descent_mod262144_165375 : ∀ k : Nat,
    iterate (262144 * k + 165375) 29 = 177147 * k + 111755 ∧
      177147 * k + 111755 < 262144 * k + 165375 := by
  intro k
  have h1 : C (262144 * k + 165375) = 786432 * k + 496126 := by
    unfold C
    simp [show (262144 * k + 165375) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 496126) = 393216 * k + 248063 := by
    unfold C
    simp [show (786432 * k + 496126) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 248063) = 1179648 * k + 744190 := by
    unfold C
    simp [show (393216 * k + 248063) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 744190) = 589824 * k + 372095 := by
    unfold C
    simp [show (1179648 * k + 744190) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 372095) = 1769472 * k + 1116286 := by
    unfold C
    simp [show (589824 * k + 372095) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 1116286) = 884736 * k + 558143 := by
    unfold C
    simp [show (1769472 * k + 1116286) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 558143) = 2654208 * k + 1674430 := by
    unfold C
    simp [show (884736 * k + 558143) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 1674430) = 1327104 * k + 837215 := by
    unfold C
    simp [show (2654208 * k + 1674430) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 837215) = 3981312 * k + 2511646 := by
    unfold C
    simp [show (1327104 * k + 837215) % 2 ≠ 0 by omega]
    omega
  have h10 : C (3981312 * k + 2511646) = 1990656 * k + 1255823 := by
    unfold C
    simp [show (3981312 * k + 2511646) % 2 = 0 by omega]
    omega
  have h11 : C (1990656 * k + 1255823) = 5971968 * k + 3767470 := by
    unfold C
    simp [show (1990656 * k + 1255823) % 2 ≠ 0 by omega]
    omega
  have h12 : C (5971968 * k + 3767470) = 2985984 * k + 1883735 := by
    unfold C
    simp [show (5971968 * k + 3767470) % 2 = 0 by omega]
    omega
  have h13 : C (2985984 * k + 1883735) = 8957952 * k + 5651206 := by
    unfold C
    simp [show (2985984 * k + 1883735) % 2 ≠ 0 by omega]
    omega
  have h14 : C (8957952 * k + 5651206) = 4478976 * k + 2825603 := by
    unfold C
    simp [show (8957952 * k + 5651206) % 2 = 0 by omega]
    omega
  have h15 : C (4478976 * k + 2825603) = 13436928 * k + 8476810 := by
    unfold C
    simp [show (4478976 * k + 2825603) % 2 ≠ 0 by omega]
    omega
  have h16 : C (13436928 * k + 8476810) = 6718464 * k + 4238405 := by
    unfold C
    simp [show (13436928 * k + 8476810) % 2 = 0 by omega]
    omega
  have h17 : C (6718464 * k + 4238405) = 20155392 * k + 12715216 := by
    unfold C
    simp [show (6718464 * k + 4238405) % 2 ≠ 0 by omega]
    omega
  have h18 : C (20155392 * k + 12715216) = 10077696 * k + 6357608 := by
    unfold C
    simp [show (20155392 * k + 12715216) % 2 = 0 by omega]
    omega
  have h19 : C (10077696 * k + 6357608) = 5038848 * k + 3178804 := by
    unfold C
    simp [show (10077696 * k + 6357608) % 2 = 0 by omega]
    omega
  have h20 : C (5038848 * k + 3178804) = 2519424 * k + 1589402 := by
    unfold C
    simp [show (5038848 * k + 3178804) % 2 = 0 by omega]
    omega
  have h21 : C (2519424 * k + 1589402) = 1259712 * k + 794701 := by
    unfold C
    simp [show (2519424 * k + 1589402) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 794701) = 3779136 * k + 2384104 := by
    unfold C
    simp [show (1259712 * k + 794701) % 2 ≠ 0 by omega]
    omega
  have h23 : C (3779136 * k + 2384104) = 1889568 * k + 1192052 := by
    unfold C
    simp [show (3779136 * k + 2384104) % 2 = 0 by omega]
    omega
  have h24 : C (1889568 * k + 1192052) = 944784 * k + 596026 := by
    unfold C
    simp [show (1889568 * k + 1192052) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 596026) = 472392 * k + 298013 := by
    unfold C
    simp [show (944784 * k + 596026) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 298013) = 1417176 * k + 894040 := by
    unfold C
    simp [show (472392 * k + 298013) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 894040) = 708588 * k + 447020 := by
    unfold C
    simp [show (1417176 * k + 894040) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 447020) = 354294 * k + 223510 := by
    unfold C
    simp [show (708588 * k + 447020) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 223510) = 177147 * k + 111755 := by
    unfold C
    simp [show (354294 * k + 223510) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 165375) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 165375))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_165467 : ∀ k : Nat,
    iterate (262144 * k + 165467) 29 = 177147 * k + 111818 ∧
      177147 * k + 111818 < 262144 * k + 165467 := by
  intro k
  have h1 : C (262144 * k + 165467) = 786432 * k + 496402 := by
    unfold C
    simp [show (262144 * k + 165467) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 496402) = 393216 * k + 248201 := by
    unfold C
    simp [show (786432 * k + 496402) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 248201) = 1179648 * k + 744604 := by
    unfold C
    simp [show (393216 * k + 248201) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 744604) = 589824 * k + 372302 := by
    unfold C
    simp [show (1179648 * k + 744604) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 372302) = 294912 * k + 186151 := by
    unfold C
    simp [show (589824 * k + 372302) % 2 = 0 by omega]
    omega
  have h6 : C (294912 * k + 186151) = 884736 * k + 558454 := by
    unfold C
    simp [show (294912 * k + 186151) % 2 ≠ 0 by omega]
    omega
  have h7 : C (884736 * k + 558454) = 442368 * k + 279227 := by
    unfold C
    simp [show (884736 * k + 558454) % 2 = 0 by omega]
    omega
  have h8 : C (442368 * k + 279227) = 1327104 * k + 837682 := by
    unfold C
    simp [show (442368 * k + 279227) % 2 ≠ 0 by omega]
    omega
  have h9 : C (1327104 * k + 837682) = 663552 * k + 418841 := by
    unfold C
    simp [show (1327104 * k + 837682) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 418841) = 1990656 * k + 1256524 := by
    unfold C
    simp [show (663552 * k + 418841) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 1256524) = 995328 * k + 628262 := by
    unfold C
    simp [show (1990656 * k + 1256524) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 628262) = 497664 * k + 314131 := by
    unfold C
    simp [show (995328 * k + 628262) % 2 = 0 by omega]
    omega
  have h13 : C (497664 * k + 314131) = 1492992 * k + 942394 := by
    unfold C
    simp [show (497664 * k + 314131) % 2 ≠ 0 by omega]
    omega
  have h14 : C (1492992 * k + 942394) = 746496 * k + 471197 := by
    unfold C
    simp [show (1492992 * k + 942394) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 471197) = 2239488 * k + 1413592 := by
    unfold C
    simp [show (746496 * k + 471197) % 2 ≠ 0 by omega]
    omega
  have h16 : C (2239488 * k + 1413592) = 1119744 * k + 706796 := by
    unfold C
    simp [show (2239488 * k + 1413592) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 706796) = 559872 * k + 353398 := by
    unfold C
    simp [show (1119744 * k + 706796) % 2 = 0 by omega]
    omega
  have h18 : C (559872 * k + 353398) = 279936 * k + 176699 := by
    unfold C
    simp [show (559872 * k + 353398) % 2 = 0 by omega]
    omega
  have h19 : C (279936 * k + 176699) = 839808 * k + 530098 := by
    unfold C
    simp [show (279936 * k + 176699) % 2 ≠ 0 by omega]
    omega
  have h20 : C (839808 * k + 530098) = 419904 * k + 265049 := by
    unfold C
    simp [show (839808 * k + 530098) % 2 = 0 by omega]
    omega
  have h21 : C (419904 * k + 265049) = 1259712 * k + 795148 := by
    unfold C
    simp [show (419904 * k + 265049) % 2 ≠ 0 by omega]
    omega
  have h22 : C (1259712 * k + 795148) = 629856 * k + 397574 := by
    unfold C
    simp [show (1259712 * k + 795148) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 397574) = 314928 * k + 198787 := by
    unfold C
    simp [show (629856 * k + 397574) % 2 = 0 by omega]
    omega
  have h24 : C (314928 * k + 198787) = 944784 * k + 596362 := by
    unfold C
    simp [show (314928 * k + 198787) % 2 ≠ 0 by omega]
    omega
  have h25 : C (944784 * k + 596362) = 472392 * k + 298181 := by
    unfold C
    simp [show (944784 * k + 596362) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 298181) = 1417176 * k + 894544 := by
    unfold C
    simp [show (472392 * k + 298181) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 894544) = 708588 * k + 447272 := by
    unfold C
    simp [show (1417176 * k + 894544) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 447272) = 354294 * k + 223636 := by
    unfold C
    simp [show (708588 * k + 447272) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 223636) = 177147 * k + 111818 := by
    unfold C
    simp [show (354294 * k + 223636) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 165467) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 165467))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_165799 : ∀ k : Nat,
    iterate (262144 * k + 165799) 29 = 177147 * k + 112042 ∧
      177147 * k + 112042 < 262144 * k + 165799 := by
  intro k
  have h1 : C (262144 * k + 165799) = 786432 * k + 497398 := by
    unfold C
    simp [show (262144 * k + 165799) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 497398) = 393216 * k + 248699 := by
    unfold C
    simp [show (786432 * k + 497398) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 248699) = 1179648 * k + 746098 := by
    unfold C
    simp [show (393216 * k + 248699) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 746098) = 589824 * k + 373049 := by
    unfold C
    simp [show (1179648 * k + 746098) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 373049) = 1769472 * k + 1119148 := by
    unfold C
    simp [show (589824 * k + 373049) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 1119148) = 884736 * k + 559574 := by
    unfold C
    simp [show (1769472 * k + 1119148) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 559574) = 442368 * k + 279787 := by
    unfold C
    simp [show (884736 * k + 559574) % 2 = 0 by omega]
    omega
  have h8 : C (442368 * k + 279787) = 1327104 * k + 839362 := by
    unfold C
    simp [show (442368 * k + 279787) % 2 ≠ 0 by omega]
    omega
  have h9 : C (1327104 * k + 839362) = 663552 * k + 419681 := by
    unfold C
    simp [show (1327104 * k + 839362) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 419681) = 1990656 * k + 1259044 := by
    unfold C
    simp [show (663552 * k + 419681) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 1259044) = 995328 * k + 629522 := by
    unfold C
    simp [show (1990656 * k + 1259044) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 629522) = 497664 * k + 314761 := by
    unfold C
    simp [show (995328 * k + 629522) % 2 = 0 by omega]
    omega
  have h13 : C (497664 * k + 314761) = 1492992 * k + 944284 := by
    unfold C
    simp [show (497664 * k + 314761) % 2 ≠ 0 by omega]
    omega
  have h14 : C (1492992 * k + 944284) = 746496 * k + 472142 := by
    unfold C
    simp [show (1492992 * k + 944284) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 472142) = 373248 * k + 236071 := by
    unfold C
    simp [show (746496 * k + 472142) % 2 = 0 by omega]
    omega
  have h16 : C (373248 * k + 236071) = 1119744 * k + 708214 := by
    unfold C
    simp [show (373248 * k + 236071) % 2 ≠ 0 by omega]
    omega
  have h17 : C (1119744 * k + 708214) = 559872 * k + 354107 := by
    unfold C
    simp [show (1119744 * k + 708214) % 2 = 0 by omega]
    omega
  have h18 : C (559872 * k + 354107) = 1679616 * k + 1062322 := by
    unfold C
    simp [show (559872 * k + 354107) % 2 ≠ 0 by omega]
    omega
  have h19 : C (1679616 * k + 1062322) = 839808 * k + 531161 := by
    unfold C
    simp [show (1679616 * k + 1062322) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 531161) = 2519424 * k + 1593484 := by
    unfold C
    simp [show (839808 * k + 531161) % 2 ≠ 0 by omega]
    omega
  have h21 : C (2519424 * k + 1593484) = 1259712 * k + 796742 := by
    unfold C
    simp [show (2519424 * k + 1593484) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 796742) = 629856 * k + 398371 := by
    unfold C
    simp [show (1259712 * k + 796742) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 398371) = 1889568 * k + 1195114 := by
    unfold C
    simp [show (629856 * k + 398371) % 2 ≠ 0 by omega]
    omega
  have h24 : C (1889568 * k + 1195114) = 944784 * k + 597557 := by
    unfold C
    simp [show (1889568 * k + 1195114) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 597557) = 2834352 * k + 1792672 := by
    unfold C
    simp [show (944784 * k + 597557) % 2 ≠ 0 by omega]
    omega
  have h26 : C (2834352 * k + 1792672) = 1417176 * k + 896336 := by
    unfold C
    simp [show (2834352 * k + 1792672) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 896336) = 708588 * k + 448168 := by
    unfold C
    simp [show (1417176 * k + 896336) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 448168) = 354294 * k + 224084 := by
    unfold C
    simp [show (708588 * k + 448168) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 224084) = 177147 * k + 112042 := by
    unfold C
    simp [show (354294 * k + 224084) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 165799) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 165799))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_166511 : ∀ k : Nat,
    iterate (262144 * k + 166511) 29 = 177147 * k + 112523 ∧
      177147 * k + 112523 < 262144 * k + 166511 := by
  intro k
  have h1 : C (262144 * k + 166511) = 786432 * k + 499534 := by
    unfold C
    simp [show (262144 * k + 166511) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 499534) = 393216 * k + 249767 := by
    unfold C
    simp [show (786432 * k + 499534) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 249767) = 1179648 * k + 749302 := by
    unfold C
    simp [show (393216 * k + 249767) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 749302) = 589824 * k + 374651 := by
    unfold C
    simp [show (1179648 * k + 749302) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 374651) = 1769472 * k + 1123954 := by
    unfold C
    simp [show (589824 * k + 374651) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 1123954) = 884736 * k + 561977 := by
    unfold C
    simp [show (1769472 * k + 1123954) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 561977) = 2654208 * k + 1685932 := by
    unfold C
    simp [show (884736 * k + 561977) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 1685932) = 1327104 * k + 842966 := by
    unfold C
    simp [show (2654208 * k + 1685932) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 842966) = 663552 * k + 421483 := by
    unfold C
    simp [show (1327104 * k + 842966) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 421483) = 1990656 * k + 1264450 := by
    unfold C
    simp [show (663552 * k + 421483) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 1264450) = 995328 * k + 632225 := by
    unfold C
    simp [show (1990656 * k + 1264450) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 632225) = 2985984 * k + 1896676 := by
    unfold C
    simp [show (995328 * k + 632225) % 2 ≠ 0 by omega]
    omega
  have h13 : C (2985984 * k + 1896676) = 1492992 * k + 948338 := by
    unfold C
    simp [show (2985984 * k + 1896676) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 948338) = 746496 * k + 474169 := by
    unfold C
    simp [show (1492992 * k + 948338) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 474169) = 2239488 * k + 1422508 := by
    unfold C
    simp [show (746496 * k + 474169) % 2 ≠ 0 by omega]
    omega
  have h16 : C (2239488 * k + 1422508) = 1119744 * k + 711254 := by
    unfold C
    simp [show (2239488 * k + 1422508) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 711254) = 559872 * k + 355627 := by
    unfold C
    simp [show (1119744 * k + 711254) % 2 = 0 by omega]
    omega
  have h18 : C (559872 * k + 355627) = 1679616 * k + 1066882 := by
    unfold C
    simp [show (559872 * k + 355627) % 2 ≠ 0 by omega]
    omega
  have h19 : C (1679616 * k + 1066882) = 839808 * k + 533441 := by
    unfold C
    simp [show (1679616 * k + 1066882) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 533441) = 2519424 * k + 1600324 := by
    unfold C
    simp [show (839808 * k + 533441) % 2 ≠ 0 by omega]
    omega
  have h21 : C (2519424 * k + 1600324) = 1259712 * k + 800162 := by
    unfold C
    simp [show (2519424 * k + 1600324) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 800162) = 629856 * k + 400081 := by
    unfold C
    simp [show (1259712 * k + 800162) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 400081) = 1889568 * k + 1200244 := by
    unfold C
    simp [show (629856 * k + 400081) % 2 ≠ 0 by omega]
    omega
  have h24 : C (1889568 * k + 1200244) = 944784 * k + 600122 := by
    unfold C
    simp [show (1889568 * k + 1200244) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 600122) = 472392 * k + 300061 := by
    unfold C
    simp [show (944784 * k + 600122) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 300061) = 1417176 * k + 900184 := by
    unfold C
    simp [show (472392 * k + 300061) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 900184) = 708588 * k + 450092 := by
    unfold C
    simp [show (1417176 * k + 900184) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 450092) = 354294 * k + 225046 := by
    unfold C
    simp [show (708588 * k + 450092) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 225046) = 177147 * k + 112523 := by
    unfold C
    simp [show (354294 * k + 225046) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 166511) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 166511))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_166631 : ∀ k : Nat,
    iterate (262144 * k + 166631) 29 = 177147 * k + 112604 ∧
      177147 * k + 112604 < 262144 * k + 166631 := by
  intro k
  have h1 : C (262144 * k + 166631) = 786432 * k + 499894 := by
    unfold C
    simp [show (262144 * k + 166631) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 499894) = 393216 * k + 249947 := by
    unfold C
    simp [show (786432 * k + 499894) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 249947) = 1179648 * k + 749842 := by
    unfold C
    simp [show (393216 * k + 249947) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 749842) = 589824 * k + 374921 := by
    unfold C
    simp [show (1179648 * k + 749842) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 374921) = 1769472 * k + 1124764 := by
    unfold C
    simp [show (589824 * k + 374921) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 1124764) = 884736 * k + 562382 := by
    unfold C
    simp [show (1769472 * k + 1124764) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 562382) = 442368 * k + 281191 := by
    unfold C
    simp [show (884736 * k + 562382) % 2 = 0 by omega]
    omega
  have h8 : C (442368 * k + 281191) = 1327104 * k + 843574 := by
    unfold C
    simp [show (442368 * k + 281191) % 2 ≠ 0 by omega]
    omega
  have h9 : C (1327104 * k + 843574) = 663552 * k + 421787 := by
    unfold C
    simp [show (1327104 * k + 843574) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 421787) = 1990656 * k + 1265362 := by
    unfold C
    simp [show (663552 * k + 421787) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 1265362) = 995328 * k + 632681 := by
    unfold C
    simp [show (1990656 * k + 1265362) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 632681) = 2985984 * k + 1898044 := by
    unfold C
    simp [show (995328 * k + 632681) % 2 ≠ 0 by omega]
    omega
  have h13 : C (2985984 * k + 1898044) = 1492992 * k + 949022 := by
    unfold C
    simp [show (2985984 * k + 1898044) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 949022) = 746496 * k + 474511 := by
    unfold C
    simp [show (1492992 * k + 949022) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 474511) = 2239488 * k + 1423534 := by
    unfold C
    simp [show (746496 * k + 474511) % 2 ≠ 0 by omega]
    omega
  have h16 : C (2239488 * k + 1423534) = 1119744 * k + 711767 := by
    unfold C
    simp [show (2239488 * k + 1423534) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 711767) = 3359232 * k + 2135302 := by
    unfold C
    simp [show (1119744 * k + 711767) % 2 ≠ 0 by omega]
    omega
  have h18 : C (3359232 * k + 2135302) = 1679616 * k + 1067651 := by
    unfold C
    simp [show (3359232 * k + 2135302) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 1067651) = 5038848 * k + 3202954 := by
    unfold C
    simp [show (1679616 * k + 1067651) % 2 ≠ 0 by omega]
    omega
  have h20 : C (5038848 * k + 3202954) = 2519424 * k + 1601477 := by
    unfold C
    simp [show (5038848 * k + 3202954) % 2 = 0 by omega]
    omega
  have h21 : C (2519424 * k + 1601477) = 7558272 * k + 4804432 := by
    unfold C
    simp [show (2519424 * k + 1601477) % 2 ≠ 0 by omega]
    omega
  have h22 : C (7558272 * k + 4804432) = 3779136 * k + 2402216 := by
    unfold C
    simp [show (7558272 * k + 4804432) % 2 = 0 by omega]
    omega
  have h23 : C (3779136 * k + 2402216) = 1889568 * k + 1201108 := by
    unfold C
    simp [show (3779136 * k + 2402216) % 2 = 0 by omega]
    omega
  have h24 : C (1889568 * k + 1201108) = 944784 * k + 600554 := by
    unfold C
    simp [show (1889568 * k + 1201108) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 600554) = 472392 * k + 300277 := by
    unfold C
    simp [show (944784 * k + 600554) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 300277) = 1417176 * k + 900832 := by
    unfold C
    simp [show (472392 * k + 300277) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 900832) = 708588 * k + 450416 := by
    unfold C
    simp [show (1417176 * k + 900832) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 450416) = 354294 * k + 225208 := by
    unfold C
    simp [show (708588 * k + 450416) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 225208) = 177147 * k + 112604 := by
    unfold C
    simp [show (354294 * k + 225208) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 166631) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 166631))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_167079 : ∀ k : Nat,
    iterate (262144 * k + 167079) 29 = 177147 * k + 112907 ∧
      177147 * k + 112907 < 262144 * k + 167079 := by
  intro k
  have h1 : C (262144 * k + 167079) = 786432 * k + 501238 := by
    unfold C
    simp [show (262144 * k + 167079) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 501238) = 393216 * k + 250619 := by
    unfold C
    simp [show (786432 * k + 501238) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 250619) = 1179648 * k + 751858 := by
    unfold C
    simp [show (393216 * k + 250619) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 751858) = 589824 * k + 375929 := by
    unfold C
    simp [show (1179648 * k + 751858) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 375929) = 1769472 * k + 1127788 := by
    unfold C
    simp [show (589824 * k + 375929) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 1127788) = 884736 * k + 563894 := by
    unfold C
    simp [show (1769472 * k + 1127788) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 563894) = 442368 * k + 281947 := by
    unfold C
    simp [show (884736 * k + 563894) % 2 = 0 by omega]
    omega
  have h8 : C (442368 * k + 281947) = 1327104 * k + 845842 := by
    unfold C
    simp [show (442368 * k + 281947) % 2 ≠ 0 by omega]
    omega
  have h9 : C (1327104 * k + 845842) = 663552 * k + 422921 := by
    unfold C
    simp [show (1327104 * k + 845842) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 422921) = 1990656 * k + 1268764 := by
    unfold C
    simp [show (663552 * k + 422921) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 1268764) = 995328 * k + 634382 := by
    unfold C
    simp [show (1990656 * k + 1268764) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 634382) = 497664 * k + 317191 := by
    unfold C
    simp [show (995328 * k + 634382) % 2 = 0 by omega]
    omega
  have h13 : C (497664 * k + 317191) = 1492992 * k + 951574 := by
    unfold C
    simp [show (497664 * k + 317191) % 2 ≠ 0 by omega]
    omega
  have h14 : C (1492992 * k + 951574) = 746496 * k + 475787 := by
    unfold C
    simp [show (1492992 * k + 951574) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 475787) = 2239488 * k + 1427362 := by
    unfold C
    simp [show (746496 * k + 475787) % 2 ≠ 0 by omega]
    omega
  have h16 : C (2239488 * k + 1427362) = 1119744 * k + 713681 := by
    unfold C
    simp [show (2239488 * k + 1427362) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 713681) = 3359232 * k + 2141044 := by
    unfold C
    simp [show (1119744 * k + 713681) % 2 ≠ 0 by omega]
    omega
  have h18 : C (3359232 * k + 2141044) = 1679616 * k + 1070522 := by
    unfold C
    simp [show (3359232 * k + 2141044) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 1070522) = 839808 * k + 535261 := by
    unfold C
    simp [show (1679616 * k + 1070522) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 535261) = 2519424 * k + 1605784 := by
    unfold C
    simp [show (839808 * k + 535261) % 2 ≠ 0 by omega]
    omega
  have h21 : C (2519424 * k + 1605784) = 1259712 * k + 802892 := by
    unfold C
    simp [show (2519424 * k + 1605784) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 802892) = 629856 * k + 401446 := by
    unfold C
    simp [show (1259712 * k + 802892) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 401446) = 314928 * k + 200723 := by
    unfold C
    simp [show (629856 * k + 401446) % 2 = 0 by omega]
    omega
  have h24 : C (314928 * k + 200723) = 944784 * k + 602170 := by
    unfold C
    simp [show (314928 * k + 200723) % 2 ≠ 0 by omega]
    omega
  have h25 : C (944784 * k + 602170) = 472392 * k + 301085 := by
    unfold C
    simp [show (944784 * k + 602170) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 301085) = 1417176 * k + 903256 := by
    unfold C
    simp [show (472392 * k + 301085) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 903256) = 708588 * k + 451628 := by
    unfold C
    simp [show (1417176 * k + 903256) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 451628) = 354294 * k + 225814 := by
    unfold C
    simp [show (708588 * k + 451628) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 225814) = 177147 * k + 112907 := by
    unfold C
    simp [show (354294 * k + 225814) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 167079) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 167079))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_168095 : ∀ k : Nat,
    iterate (262144 * k + 168095) 29 = 177147 * k + 113593 ∧
      177147 * k + 113593 < 262144 * k + 168095 := by
  intro k
  have h1 : C (262144 * k + 168095) = 786432 * k + 504286 := by
    unfold C
    simp [show (262144 * k + 168095) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 504286) = 393216 * k + 252143 := by
    unfold C
    simp [show (786432 * k + 504286) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 252143) = 1179648 * k + 756430 := by
    unfold C
    simp [show (393216 * k + 252143) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 756430) = 589824 * k + 378215 := by
    unfold C
    simp [show (1179648 * k + 756430) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 378215) = 1769472 * k + 1134646 := by
    unfold C
    simp [show (589824 * k + 378215) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 1134646) = 884736 * k + 567323 := by
    unfold C
    simp [show (1769472 * k + 1134646) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 567323) = 2654208 * k + 1701970 := by
    unfold C
    simp [show (884736 * k + 567323) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 1701970) = 1327104 * k + 850985 := by
    unfold C
    simp [show (2654208 * k + 1701970) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 850985) = 3981312 * k + 2552956 := by
    unfold C
    simp [show (1327104 * k + 850985) % 2 ≠ 0 by omega]
    omega
  have h10 : C (3981312 * k + 2552956) = 1990656 * k + 1276478 := by
    unfold C
    simp [show (3981312 * k + 2552956) % 2 = 0 by omega]
    omega
  have h11 : C (1990656 * k + 1276478) = 995328 * k + 638239 := by
    unfold C
    simp [show (1990656 * k + 1276478) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 638239) = 2985984 * k + 1914718 := by
    unfold C
    simp [show (995328 * k + 638239) % 2 ≠ 0 by omega]
    omega
  have h13 : C (2985984 * k + 1914718) = 1492992 * k + 957359 := by
    unfold C
    simp [show (2985984 * k + 1914718) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 957359) = 4478976 * k + 2872078 := by
    unfold C
    simp [show (1492992 * k + 957359) % 2 ≠ 0 by omega]
    omega
  have h15 : C (4478976 * k + 2872078) = 2239488 * k + 1436039 := by
    unfold C
    simp [show (4478976 * k + 2872078) % 2 = 0 by omega]
    omega
  have h16 : C (2239488 * k + 1436039) = 6718464 * k + 4308118 := by
    unfold C
    simp [show (2239488 * k + 1436039) % 2 ≠ 0 by omega]
    omega
  have h17 : C (6718464 * k + 4308118) = 3359232 * k + 2154059 := by
    unfold C
    simp [show (6718464 * k + 4308118) % 2 = 0 by omega]
    omega
  have h18 : C (3359232 * k + 2154059) = 10077696 * k + 6462178 := by
    unfold C
    simp [show (3359232 * k + 2154059) % 2 ≠ 0 by omega]
    omega
  have h19 : C (10077696 * k + 6462178) = 5038848 * k + 3231089 := by
    unfold C
    simp [show (10077696 * k + 6462178) % 2 = 0 by omega]
    omega
  have h20 : C (5038848 * k + 3231089) = 15116544 * k + 9693268 := by
    unfold C
    simp [show (5038848 * k + 3231089) % 2 ≠ 0 by omega]
    omega
  have h21 : C (15116544 * k + 9693268) = 7558272 * k + 4846634 := by
    unfold C
    simp [show (15116544 * k + 9693268) % 2 = 0 by omega]
    omega
  have h22 : C (7558272 * k + 4846634) = 3779136 * k + 2423317 := by
    unfold C
    simp [show (7558272 * k + 4846634) % 2 = 0 by omega]
    omega
  have h23 : C (3779136 * k + 2423317) = 11337408 * k + 7269952 := by
    unfold C
    simp [show (3779136 * k + 2423317) % 2 ≠ 0 by omega]
    omega
  have h24 : C (11337408 * k + 7269952) = 5668704 * k + 3634976 := by
    unfold C
    simp [show (11337408 * k + 7269952) % 2 = 0 by omega]
    omega
  have h25 : C (5668704 * k + 3634976) = 2834352 * k + 1817488 := by
    unfold C
    simp [show (5668704 * k + 3634976) % 2 = 0 by omega]
    omega
  have h26 : C (2834352 * k + 1817488) = 1417176 * k + 908744 := by
    unfold C
    simp [show (2834352 * k + 1817488) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 908744) = 708588 * k + 454372 := by
    unfold C
    simp [show (1417176 * k + 908744) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 454372) = 354294 * k + 227186 := by
    unfold C
    simp [show (708588 * k + 454372) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 227186) = 177147 * k + 113593 := by
    unfold C
    simp [show (354294 * k + 227186) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 168095) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 168095))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_168143 : ∀ k : Nat,
    iterate (262144 * k + 168143) 29 = 177147 * k + 113626 ∧
      177147 * k + 113626 < 262144 * k + 168143 := by
  intro k
  have h1 : C (262144 * k + 168143) = 786432 * k + 504430 := by
    unfold C
    simp [show (262144 * k + 168143) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 504430) = 393216 * k + 252215 := by
    unfold C
    simp [show (786432 * k + 504430) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 252215) = 1179648 * k + 756646 := by
    unfold C
    simp [show (393216 * k + 252215) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 756646) = 589824 * k + 378323 := by
    unfold C
    simp [show (1179648 * k + 756646) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 378323) = 1769472 * k + 1134970 := by
    unfold C
    simp [show (589824 * k + 378323) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 1134970) = 884736 * k + 567485 := by
    unfold C
    simp [show (1769472 * k + 1134970) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 567485) = 2654208 * k + 1702456 := by
    unfold C
    simp [show (884736 * k + 567485) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 1702456) = 1327104 * k + 851228 := by
    unfold C
    simp [show (2654208 * k + 1702456) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 851228) = 663552 * k + 425614 := by
    unfold C
    simp [show (1327104 * k + 851228) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 425614) = 331776 * k + 212807 := by
    unfold C
    simp [show (663552 * k + 425614) % 2 = 0 by omega]
    omega
  have h11 : C (331776 * k + 212807) = 995328 * k + 638422 := by
    unfold C
    simp [show (331776 * k + 212807) % 2 ≠ 0 by omega]
    omega
  have h12 : C (995328 * k + 638422) = 497664 * k + 319211 := by
    unfold C
    simp [show (995328 * k + 638422) % 2 = 0 by omega]
    omega
  have h13 : C (497664 * k + 319211) = 1492992 * k + 957634 := by
    unfold C
    simp [show (497664 * k + 319211) % 2 ≠ 0 by omega]
    omega
  have h14 : C (1492992 * k + 957634) = 746496 * k + 478817 := by
    unfold C
    simp [show (1492992 * k + 957634) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 478817) = 2239488 * k + 1436452 := by
    unfold C
    simp [show (746496 * k + 478817) % 2 ≠ 0 by omega]
    omega
  have h16 : C (2239488 * k + 1436452) = 1119744 * k + 718226 := by
    unfold C
    simp [show (2239488 * k + 1436452) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 718226) = 559872 * k + 359113 := by
    unfold C
    simp [show (1119744 * k + 718226) % 2 = 0 by omega]
    omega
  have h18 : C (559872 * k + 359113) = 1679616 * k + 1077340 := by
    unfold C
    simp [show (559872 * k + 359113) % 2 ≠ 0 by omega]
    omega
  have h19 : C (1679616 * k + 1077340) = 839808 * k + 538670 := by
    unfold C
    simp [show (1679616 * k + 1077340) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 538670) = 419904 * k + 269335 := by
    unfold C
    simp [show (839808 * k + 538670) % 2 = 0 by omega]
    omega
  have h21 : C (419904 * k + 269335) = 1259712 * k + 808006 := by
    unfold C
    simp [show (419904 * k + 269335) % 2 ≠ 0 by omega]
    omega
  have h22 : C (1259712 * k + 808006) = 629856 * k + 404003 := by
    unfold C
    simp [show (1259712 * k + 808006) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 404003) = 1889568 * k + 1212010 := by
    unfold C
    simp [show (629856 * k + 404003) % 2 ≠ 0 by omega]
    omega
  have h24 : C (1889568 * k + 1212010) = 944784 * k + 606005 := by
    unfold C
    simp [show (1889568 * k + 1212010) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 606005) = 2834352 * k + 1818016 := by
    unfold C
    simp [show (944784 * k + 606005) % 2 ≠ 0 by omega]
    omega
  have h26 : C (2834352 * k + 1818016) = 1417176 * k + 909008 := by
    unfold C
    simp [show (2834352 * k + 1818016) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 909008) = 708588 * k + 454504 := by
    unfold C
    simp [show (1417176 * k + 909008) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 454504) = 354294 * k + 227252 := by
    unfold C
    simp [show (708588 * k + 454504) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 227252) = 177147 * k + 113626 := by
    unfold C
    simp [show (354294 * k + 227252) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 168143) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 168143))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_168263 : ∀ k : Nat,
    iterate (262144 * k + 168263) 29 = 177147 * k + 113707 ∧
      177147 * k + 113707 < 262144 * k + 168263 := by
  intro k
  have h1 : C (262144 * k + 168263) = 786432 * k + 504790 := by
    unfold C
    simp [show (262144 * k + 168263) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 504790) = 393216 * k + 252395 := by
    unfold C
    simp [show (786432 * k + 504790) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 252395) = 1179648 * k + 757186 := by
    unfold C
    simp [show (393216 * k + 252395) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 757186) = 589824 * k + 378593 := by
    unfold C
    simp [show (1179648 * k + 757186) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 378593) = 1769472 * k + 1135780 := by
    unfold C
    simp [show (589824 * k + 378593) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 1135780) = 884736 * k + 567890 := by
    unfold C
    simp [show (1769472 * k + 1135780) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 567890) = 442368 * k + 283945 := by
    unfold C
    simp [show (884736 * k + 567890) % 2 = 0 by omega]
    omega
  have h8 : C (442368 * k + 283945) = 1327104 * k + 851836 := by
    unfold C
    simp [show (442368 * k + 283945) % 2 ≠ 0 by omega]
    omega
  have h9 : C (1327104 * k + 851836) = 663552 * k + 425918 := by
    unfold C
    simp [show (1327104 * k + 851836) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 425918) = 331776 * k + 212959 := by
    unfold C
    simp [show (663552 * k + 425918) % 2 = 0 by omega]
    omega
  have h11 : C (331776 * k + 212959) = 995328 * k + 638878 := by
    unfold C
    simp [show (331776 * k + 212959) % 2 ≠ 0 by omega]
    omega
  have h12 : C (995328 * k + 638878) = 497664 * k + 319439 := by
    unfold C
    simp [show (995328 * k + 638878) % 2 = 0 by omega]
    omega
  have h13 : C (497664 * k + 319439) = 1492992 * k + 958318 := by
    unfold C
    simp [show (497664 * k + 319439) % 2 ≠ 0 by omega]
    omega
  have h14 : C (1492992 * k + 958318) = 746496 * k + 479159 := by
    unfold C
    simp [show (1492992 * k + 958318) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 479159) = 2239488 * k + 1437478 := by
    unfold C
    simp [show (746496 * k + 479159) % 2 ≠ 0 by omega]
    omega
  have h16 : C (2239488 * k + 1437478) = 1119744 * k + 718739 := by
    unfold C
    simp [show (2239488 * k + 1437478) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 718739) = 3359232 * k + 2156218 := by
    unfold C
    simp [show (1119744 * k + 718739) % 2 ≠ 0 by omega]
    omega
  have h18 : C (3359232 * k + 2156218) = 1679616 * k + 1078109 := by
    unfold C
    simp [show (3359232 * k + 2156218) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 1078109) = 5038848 * k + 3234328 := by
    unfold C
    simp [show (1679616 * k + 1078109) % 2 ≠ 0 by omega]
    omega
  have h20 : C (5038848 * k + 3234328) = 2519424 * k + 1617164 := by
    unfold C
    simp [show (5038848 * k + 3234328) % 2 = 0 by omega]
    omega
  have h21 : C (2519424 * k + 1617164) = 1259712 * k + 808582 := by
    unfold C
    simp [show (2519424 * k + 1617164) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 808582) = 629856 * k + 404291 := by
    unfold C
    simp [show (1259712 * k + 808582) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 404291) = 1889568 * k + 1212874 := by
    unfold C
    simp [show (629856 * k + 404291) % 2 ≠ 0 by omega]
    omega
  have h24 : C (1889568 * k + 1212874) = 944784 * k + 606437 := by
    unfold C
    simp [show (1889568 * k + 1212874) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 606437) = 2834352 * k + 1819312 := by
    unfold C
    simp [show (944784 * k + 606437) % 2 ≠ 0 by omega]
    omega
  have h26 : C (2834352 * k + 1819312) = 1417176 * k + 909656 := by
    unfold C
    simp [show (2834352 * k + 1819312) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 909656) = 708588 * k + 454828 := by
    unfold C
    simp [show (1417176 * k + 909656) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 454828) = 354294 * k + 227414 := by
    unfold C
    simp [show (708588 * k + 454828) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 227414) = 177147 * k + 113707 := by
    unfold C
    simp [show (354294 * k + 227414) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 168263) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 168263))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_168615 : ∀ k : Nat,
    iterate (262144 * k + 168615) 29 = 177147 * k + 113945 ∧
      177147 * k + 113945 < 262144 * k + 168615 := by
  intro k
  have h1 : C (262144 * k + 168615) = 786432 * k + 505846 := by
    unfold C
    simp [show (262144 * k + 168615) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 505846) = 393216 * k + 252923 := by
    unfold C
    simp [show (786432 * k + 505846) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 252923) = 1179648 * k + 758770 := by
    unfold C
    simp [show (393216 * k + 252923) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 758770) = 589824 * k + 379385 := by
    unfold C
    simp [show (1179648 * k + 758770) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 379385) = 1769472 * k + 1138156 := by
    unfold C
    simp [show (589824 * k + 379385) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 1138156) = 884736 * k + 569078 := by
    unfold C
    simp [show (1769472 * k + 1138156) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 569078) = 442368 * k + 284539 := by
    unfold C
    simp [show (884736 * k + 569078) % 2 = 0 by omega]
    omega
  have h8 : C (442368 * k + 284539) = 1327104 * k + 853618 := by
    unfold C
    simp [show (442368 * k + 284539) % 2 ≠ 0 by omega]
    omega
  have h9 : C (1327104 * k + 853618) = 663552 * k + 426809 := by
    unfold C
    simp [show (1327104 * k + 853618) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 426809) = 1990656 * k + 1280428 := by
    unfold C
    simp [show (663552 * k + 426809) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 1280428) = 995328 * k + 640214 := by
    unfold C
    simp [show (1990656 * k + 1280428) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 640214) = 497664 * k + 320107 := by
    unfold C
    simp [show (995328 * k + 640214) % 2 = 0 by omega]
    omega
  have h13 : C (497664 * k + 320107) = 1492992 * k + 960322 := by
    unfold C
    simp [show (497664 * k + 320107) % 2 ≠ 0 by omega]
    omega
  have h14 : C (1492992 * k + 960322) = 746496 * k + 480161 := by
    unfold C
    simp [show (1492992 * k + 960322) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 480161) = 2239488 * k + 1440484 := by
    unfold C
    simp [show (746496 * k + 480161) % 2 ≠ 0 by omega]
    omega
  have h16 : C (2239488 * k + 1440484) = 1119744 * k + 720242 := by
    unfold C
    simp [show (2239488 * k + 1440484) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 720242) = 559872 * k + 360121 := by
    unfold C
    simp [show (1119744 * k + 720242) % 2 = 0 by omega]
    omega
  have h18 : C (559872 * k + 360121) = 1679616 * k + 1080364 := by
    unfold C
    simp [show (559872 * k + 360121) % 2 ≠ 0 by omega]
    omega
  have h19 : C (1679616 * k + 1080364) = 839808 * k + 540182 := by
    unfold C
    simp [show (1679616 * k + 1080364) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 540182) = 419904 * k + 270091 := by
    unfold C
    simp [show (839808 * k + 540182) % 2 = 0 by omega]
    omega
  have h21 : C (419904 * k + 270091) = 1259712 * k + 810274 := by
    unfold C
    simp [show (419904 * k + 270091) % 2 ≠ 0 by omega]
    omega
  have h22 : C (1259712 * k + 810274) = 629856 * k + 405137 := by
    unfold C
    simp [show (1259712 * k + 810274) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 405137) = 1889568 * k + 1215412 := by
    unfold C
    simp [show (629856 * k + 405137) % 2 ≠ 0 by omega]
    omega
  have h24 : C (1889568 * k + 1215412) = 944784 * k + 607706 := by
    unfold C
    simp [show (1889568 * k + 1215412) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 607706) = 472392 * k + 303853 := by
    unfold C
    simp [show (944784 * k + 607706) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 303853) = 1417176 * k + 911560 := by
    unfold C
    simp [show (472392 * k + 303853) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 911560) = 708588 * k + 455780 := by
    unfold C
    simp [show (1417176 * k + 911560) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 455780) = 354294 * k + 227890 := by
    unfold C
    simp [show (708588 * k + 455780) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 227890) = 177147 * k + 113945 := by
    unfold C
    simp [show (354294 * k + 227890) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 168615) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 168615))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_168655 : ∀ k : Nat,
    iterate (262144 * k + 168655) 29 = 177147 * k + 113972 ∧
      177147 * k + 113972 < 262144 * k + 168655 := by
  intro k
  have h1 : C (262144 * k + 168655) = 786432 * k + 505966 := by
    unfold C
    simp [show (262144 * k + 168655) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 505966) = 393216 * k + 252983 := by
    unfold C
    simp [show (786432 * k + 505966) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 252983) = 1179648 * k + 758950 := by
    unfold C
    simp [show (393216 * k + 252983) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 758950) = 589824 * k + 379475 := by
    unfold C
    simp [show (1179648 * k + 758950) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 379475) = 1769472 * k + 1138426 := by
    unfold C
    simp [show (589824 * k + 379475) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 1138426) = 884736 * k + 569213 := by
    unfold C
    simp [show (1769472 * k + 1138426) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 569213) = 2654208 * k + 1707640 := by
    unfold C
    simp [show (884736 * k + 569213) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 1707640) = 1327104 * k + 853820 := by
    unfold C
    simp [show (2654208 * k + 1707640) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 853820) = 663552 * k + 426910 := by
    unfold C
    simp [show (1327104 * k + 853820) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 426910) = 331776 * k + 213455 := by
    unfold C
    simp [show (663552 * k + 426910) % 2 = 0 by omega]
    omega
  have h11 : C (331776 * k + 213455) = 995328 * k + 640366 := by
    unfold C
    simp [show (331776 * k + 213455) % 2 ≠ 0 by omega]
    omega
  have h12 : C (995328 * k + 640366) = 497664 * k + 320183 := by
    unfold C
    simp [show (995328 * k + 640366) % 2 = 0 by omega]
    omega
  have h13 : C (497664 * k + 320183) = 1492992 * k + 960550 := by
    unfold C
    simp [show (497664 * k + 320183) % 2 ≠ 0 by omega]
    omega
  have h14 : C (1492992 * k + 960550) = 746496 * k + 480275 := by
    unfold C
    simp [show (1492992 * k + 960550) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 480275) = 2239488 * k + 1440826 := by
    unfold C
    simp [show (746496 * k + 480275) % 2 ≠ 0 by omega]
    omega
  have h16 : C (2239488 * k + 1440826) = 1119744 * k + 720413 := by
    unfold C
    simp [show (2239488 * k + 1440826) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 720413) = 3359232 * k + 2161240 := by
    unfold C
    simp [show (1119744 * k + 720413) % 2 ≠ 0 by omega]
    omega
  have h18 : C (3359232 * k + 2161240) = 1679616 * k + 1080620 := by
    unfold C
    simp [show (3359232 * k + 2161240) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 1080620) = 839808 * k + 540310 := by
    unfold C
    simp [show (1679616 * k + 1080620) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 540310) = 419904 * k + 270155 := by
    unfold C
    simp [show (839808 * k + 540310) % 2 = 0 by omega]
    omega
  have h21 : C (419904 * k + 270155) = 1259712 * k + 810466 := by
    unfold C
    simp [show (419904 * k + 270155) % 2 ≠ 0 by omega]
    omega
  have h22 : C (1259712 * k + 810466) = 629856 * k + 405233 := by
    unfold C
    simp [show (1259712 * k + 810466) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 405233) = 1889568 * k + 1215700 := by
    unfold C
    simp [show (629856 * k + 405233) % 2 ≠ 0 by omega]
    omega
  have h24 : C (1889568 * k + 1215700) = 944784 * k + 607850 := by
    unfold C
    simp [show (1889568 * k + 1215700) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 607850) = 472392 * k + 303925 := by
    unfold C
    simp [show (944784 * k + 607850) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 303925) = 1417176 * k + 911776 := by
    unfold C
    simp [show (472392 * k + 303925) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 911776) = 708588 * k + 455888 := by
    unfold C
    simp [show (1417176 * k + 911776) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 455888) = 354294 * k + 227944 := by
    unfold C
    simp [show (708588 * k + 455888) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 227944) = 177147 * k + 113972 := by
    unfold C
    simp [show (354294 * k + 227944) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 168655) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 168655))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_168735 : ∀ k : Nat,
    iterate (262144 * k + 168735) 29 = 177147 * k + 114026 ∧
      177147 * k + 114026 < 262144 * k + 168735 := by
  intro k
  have h1 : C (262144 * k + 168735) = 786432 * k + 506206 := by
    unfold C
    simp [show (262144 * k + 168735) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 506206) = 393216 * k + 253103 := by
    unfold C
    simp [show (786432 * k + 506206) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 253103) = 1179648 * k + 759310 := by
    unfold C
    simp [show (393216 * k + 253103) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 759310) = 589824 * k + 379655 := by
    unfold C
    simp [show (1179648 * k + 759310) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 379655) = 1769472 * k + 1138966 := by
    unfold C
    simp [show (589824 * k + 379655) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 1138966) = 884736 * k + 569483 := by
    unfold C
    simp [show (1769472 * k + 1138966) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 569483) = 2654208 * k + 1708450 := by
    unfold C
    simp [show (884736 * k + 569483) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 1708450) = 1327104 * k + 854225 := by
    unfold C
    simp [show (2654208 * k + 1708450) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 854225) = 3981312 * k + 2562676 := by
    unfold C
    simp [show (1327104 * k + 854225) % 2 ≠ 0 by omega]
    omega
  have h10 : C (3981312 * k + 2562676) = 1990656 * k + 1281338 := by
    unfold C
    simp [show (3981312 * k + 2562676) % 2 = 0 by omega]
    omega
  have h11 : C (1990656 * k + 1281338) = 995328 * k + 640669 := by
    unfold C
    simp [show (1990656 * k + 1281338) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 640669) = 2985984 * k + 1922008 := by
    unfold C
    simp [show (995328 * k + 640669) % 2 ≠ 0 by omega]
    omega
  have h13 : C (2985984 * k + 1922008) = 1492992 * k + 961004 := by
    unfold C
    simp [show (2985984 * k + 1922008) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 961004) = 746496 * k + 480502 := by
    unfold C
    simp [show (1492992 * k + 961004) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 480502) = 373248 * k + 240251 := by
    unfold C
    simp [show (746496 * k + 480502) % 2 = 0 by omega]
    omega
  have h16 : C (373248 * k + 240251) = 1119744 * k + 720754 := by
    unfold C
    simp [show (373248 * k + 240251) % 2 ≠ 0 by omega]
    omega
  have h17 : C (1119744 * k + 720754) = 559872 * k + 360377 := by
    unfold C
    simp [show (1119744 * k + 720754) % 2 = 0 by omega]
    omega
  have h18 : C (559872 * k + 360377) = 1679616 * k + 1081132 := by
    unfold C
    simp [show (559872 * k + 360377) % 2 ≠ 0 by omega]
    omega
  have h19 : C (1679616 * k + 1081132) = 839808 * k + 540566 := by
    unfold C
    simp [show (1679616 * k + 1081132) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 540566) = 419904 * k + 270283 := by
    unfold C
    simp [show (839808 * k + 540566) % 2 = 0 by omega]
    omega
  have h21 : C (419904 * k + 270283) = 1259712 * k + 810850 := by
    unfold C
    simp [show (419904 * k + 270283) % 2 ≠ 0 by omega]
    omega
  have h22 : C (1259712 * k + 810850) = 629856 * k + 405425 := by
    unfold C
    simp [show (1259712 * k + 810850) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 405425) = 1889568 * k + 1216276 := by
    unfold C
    simp [show (629856 * k + 405425) % 2 ≠ 0 by omega]
    omega
  have h24 : C (1889568 * k + 1216276) = 944784 * k + 608138 := by
    unfold C
    simp [show (1889568 * k + 1216276) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 608138) = 472392 * k + 304069 := by
    unfold C
    simp [show (944784 * k + 608138) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 304069) = 1417176 * k + 912208 := by
    unfold C
    simp [show (472392 * k + 304069) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 912208) = 708588 * k + 456104 := by
    unfold C
    simp [show (1417176 * k + 912208) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 456104) = 354294 * k + 228052 := by
    unfold C
    simp [show (708588 * k + 456104) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 228052) = 177147 * k + 114026 := by
    unfold C
    simp [show (354294 * k + 228052) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 168735) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 168735))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_168775 : ∀ k : Nat,
    iterate (262144 * k + 168775) 29 = 177147 * k + 114053 ∧
      177147 * k + 114053 < 262144 * k + 168775 := by
  intro k
  have h1 : C (262144 * k + 168775) = 786432 * k + 506326 := by
    unfold C
    simp [show (262144 * k + 168775) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 506326) = 393216 * k + 253163 := by
    unfold C
    simp [show (786432 * k + 506326) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 253163) = 1179648 * k + 759490 := by
    unfold C
    simp [show (393216 * k + 253163) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 759490) = 589824 * k + 379745 := by
    unfold C
    simp [show (1179648 * k + 759490) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 379745) = 1769472 * k + 1139236 := by
    unfold C
    simp [show (589824 * k + 379745) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 1139236) = 884736 * k + 569618 := by
    unfold C
    simp [show (1769472 * k + 1139236) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 569618) = 442368 * k + 284809 := by
    unfold C
    simp [show (884736 * k + 569618) % 2 = 0 by omega]
    omega
  have h8 : C (442368 * k + 284809) = 1327104 * k + 854428 := by
    unfold C
    simp [show (442368 * k + 284809) % 2 ≠ 0 by omega]
    omega
  have h9 : C (1327104 * k + 854428) = 663552 * k + 427214 := by
    unfold C
    simp [show (1327104 * k + 854428) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 427214) = 331776 * k + 213607 := by
    unfold C
    simp [show (663552 * k + 427214) % 2 = 0 by omega]
    omega
  have h11 : C (331776 * k + 213607) = 995328 * k + 640822 := by
    unfold C
    simp [show (331776 * k + 213607) % 2 ≠ 0 by omega]
    omega
  have h12 : C (995328 * k + 640822) = 497664 * k + 320411 := by
    unfold C
    simp [show (995328 * k + 640822) % 2 = 0 by omega]
    omega
  have h13 : C (497664 * k + 320411) = 1492992 * k + 961234 := by
    unfold C
    simp [show (497664 * k + 320411) % 2 ≠ 0 by omega]
    omega
  have h14 : C (1492992 * k + 961234) = 746496 * k + 480617 := by
    unfold C
    simp [show (1492992 * k + 961234) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 480617) = 2239488 * k + 1441852 := by
    unfold C
    simp [show (746496 * k + 480617) % 2 ≠ 0 by omega]
    omega
  have h16 : C (2239488 * k + 1441852) = 1119744 * k + 720926 := by
    unfold C
    simp [show (2239488 * k + 1441852) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 720926) = 559872 * k + 360463 := by
    unfold C
    simp [show (1119744 * k + 720926) % 2 = 0 by omega]
    omega
  have h18 : C (559872 * k + 360463) = 1679616 * k + 1081390 := by
    unfold C
    simp [show (559872 * k + 360463) % 2 ≠ 0 by omega]
    omega
  have h19 : C (1679616 * k + 1081390) = 839808 * k + 540695 := by
    unfold C
    simp [show (1679616 * k + 1081390) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 540695) = 2519424 * k + 1622086 := by
    unfold C
    simp [show (839808 * k + 540695) % 2 ≠ 0 by omega]
    omega
  have h21 : C (2519424 * k + 1622086) = 1259712 * k + 811043 := by
    unfold C
    simp [show (2519424 * k + 1622086) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 811043) = 3779136 * k + 2433130 := by
    unfold C
    simp [show (1259712 * k + 811043) % 2 ≠ 0 by omega]
    omega
  have h23 : C (3779136 * k + 2433130) = 1889568 * k + 1216565 := by
    unfold C
    simp [show (3779136 * k + 2433130) % 2 = 0 by omega]
    omega
  have h24 : C (1889568 * k + 1216565) = 5668704 * k + 3649696 := by
    unfold C
    simp [show (1889568 * k + 1216565) % 2 ≠ 0 by omega]
    omega
  have h25 : C (5668704 * k + 3649696) = 2834352 * k + 1824848 := by
    unfold C
    simp [show (5668704 * k + 3649696) % 2 = 0 by omega]
    omega
  have h26 : C (2834352 * k + 1824848) = 1417176 * k + 912424 := by
    unfold C
    simp [show (2834352 * k + 1824848) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 912424) = 708588 * k + 456212 := by
    unfold C
    simp [show (1417176 * k + 912424) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 456212) = 354294 * k + 228106 := by
    unfold C
    simp [show (708588 * k + 456212) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 228106) = 177147 * k + 114053 := by
    unfold C
    simp [show (354294 * k + 228106) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 168775) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 168775))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_169183 : ∀ k : Nat,
    iterate (262144 * k + 169183) 29 = 177147 * k + 114329 ∧
      177147 * k + 114329 < 262144 * k + 169183 := by
  intro k
  have h1 : C (262144 * k + 169183) = 786432 * k + 507550 := by
    unfold C
    simp [show (262144 * k + 169183) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 507550) = 393216 * k + 253775 := by
    unfold C
    simp [show (786432 * k + 507550) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 253775) = 1179648 * k + 761326 := by
    unfold C
    simp [show (393216 * k + 253775) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 761326) = 589824 * k + 380663 := by
    unfold C
    simp [show (1179648 * k + 761326) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 380663) = 1769472 * k + 1141990 := by
    unfold C
    simp [show (589824 * k + 380663) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 1141990) = 884736 * k + 570995 := by
    unfold C
    simp [show (1769472 * k + 1141990) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 570995) = 2654208 * k + 1712986 := by
    unfold C
    simp [show (884736 * k + 570995) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 1712986) = 1327104 * k + 856493 := by
    unfold C
    simp [show (2654208 * k + 1712986) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 856493) = 3981312 * k + 2569480 := by
    unfold C
    simp [show (1327104 * k + 856493) % 2 ≠ 0 by omega]
    omega
  have h10 : C (3981312 * k + 2569480) = 1990656 * k + 1284740 := by
    unfold C
    simp [show (3981312 * k + 2569480) % 2 = 0 by omega]
    omega
  have h11 : C (1990656 * k + 1284740) = 995328 * k + 642370 := by
    unfold C
    simp [show (1990656 * k + 1284740) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 642370) = 497664 * k + 321185 := by
    unfold C
    simp [show (995328 * k + 642370) % 2 = 0 by omega]
    omega
  have h13 : C (497664 * k + 321185) = 1492992 * k + 963556 := by
    unfold C
    simp [show (497664 * k + 321185) % 2 ≠ 0 by omega]
    omega
  have h14 : C (1492992 * k + 963556) = 746496 * k + 481778 := by
    unfold C
    simp [show (1492992 * k + 963556) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 481778) = 373248 * k + 240889 := by
    unfold C
    simp [show (746496 * k + 481778) % 2 = 0 by omega]
    omega
  have h16 : C (373248 * k + 240889) = 1119744 * k + 722668 := by
    unfold C
    simp [show (373248 * k + 240889) % 2 ≠ 0 by omega]
    omega
  have h17 : C (1119744 * k + 722668) = 559872 * k + 361334 := by
    unfold C
    simp [show (1119744 * k + 722668) % 2 = 0 by omega]
    omega
  have h18 : C (559872 * k + 361334) = 279936 * k + 180667 := by
    unfold C
    simp [show (559872 * k + 361334) % 2 = 0 by omega]
    omega
  have h19 : C (279936 * k + 180667) = 839808 * k + 542002 := by
    unfold C
    simp [show (279936 * k + 180667) % 2 ≠ 0 by omega]
    omega
  have h20 : C (839808 * k + 542002) = 419904 * k + 271001 := by
    unfold C
    simp [show (839808 * k + 542002) % 2 = 0 by omega]
    omega
  have h21 : C (419904 * k + 271001) = 1259712 * k + 813004 := by
    unfold C
    simp [show (419904 * k + 271001) % 2 ≠ 0 by omega]
    omega
  have h22 : C (1259712 * k + 813004) = 629856 * k + 406502 := by
    unfold C
    simp [show (1259712 * k + 813004) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 406502) = 314928 * k + 203251 := by
    unfold C
    simp [show (629856 * k + 406502) % 2 = 0 by omega]
    omega
  have h24 : C (314928 * k + 203251) = 944784 * k + 609754 := by
    unfold C
    simp [show (314928 * k + 203251) % 2 ≠ 0 by omega]
    omega
  have h25 : C (944784 * k + 609754) = 472392 * k + 304877 := by
    unfold C
    simp [show (944784 * k + 609754) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 304877) = 1417176 * k + 914632 := by
    unfold C
    simp [show (472392 * k + 304877) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 914632) = 708588 * k + 457316 := by
    unfold C
    simp [show (1417176 * k + 914632) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 457316) = 354294 * k + 228658 := by
    unfold C
    simp [show (708588 * k + 457316) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 228658) = 177147 * k + 114329 := by
    unfold C
    simp [show (354294 * k + 228658) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 169183) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 169183))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_169191 : ∀ k : Nat,
    iterate (262144 * k + 169191) 29 = 177147 * k + 114334 ∧
      177147 * k + 114334 < 262144 * k + 169191 := by
  intro k
  have h1 : C (262144 * k + 169191) = 786432 * k + 507574 := by
    unfold C
    simp [show (262144 * k + 169191) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 507574) = 393216 * k + 253787 := by
    unfold C
    simp [show (786432 * k + 507574) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 253787) = 1179648 * k + 761362 := by
    unfold C
    simp [show (393216 * k + 253787) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 761362) = 589824 * k + 380681 := by
    unfold C
    simp [show (1179648 * k + 761362) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 380681) = 1769472 * k + 1142044 := by
    unfold C
    simp [show (589824 * k + 380681) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 1142044) = 884736 * k + 571022 := by
    unfold C
    simp [show (1769472 * k + 1142044) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 571022) = 442368 * k + 285511 := by
    unfold C
    simp [show (884736 * k + 571022) % 2 = 0 by omega]
    omega
  have h8 : C (442368 * k + 285511) = 1327104 * k + 856534 := by
    unfold C
    simp [show (442368 * k + 285511) % 2 ≠ 0 by omega]
    omega
  have h9 : C (1327104 * k + 856534) = 663552 * k + 428267 := by
    unfold C
    simp [show (1327104 * k + 856534) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 428267) = 1990656 * k + 1284802 := by
    unfold C
    simp [show (663552 * k + 428267) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 1284802) = 995328 * k + 642401 := by
    unfold C
    simp [show (1990656 * k + 1284802) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 642401) = 2985984 * k + 1927204 := by
    unfold C
    simp [show (995328 * k + 642401) % 2 ≠ 0 by omega]
    omega
  have h13 : C (2985984 * k + 1927204) = 1492992 * k + 963602 := by
    unfold C
    simp [show (2985984 * k + 1927204) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 963602) = 746496 * k + 481801 := by
    unfold C
    simp [show (1492992 * k + 963602) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 481801) = 2239488 * k + 1445404 := by
    unfold C
    simp [show (746496 * k + 481801) % 2 ≠ 0 by omega]
    omega
  have h16 : C (2239488 * k + 1445404) = 1119744 * k + 722702 := by
    unfold C
    simp [show (2239488 * k + 1445404) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 722702) = 559872 * k + 361351 := by
    unfold C
    simp [show (1119744 * k + 722702) % 2 = 0 by omega]
    omega
  have h18 : C (559872 * k + 361351) = 1679616 * k + 1084054 := by
    unfold C
    simp [show (559872 * k + 361351) % 2 ≠ 0 by omega]
    omega
  have h19 : C (1679616 * k + 1084054) = 839808 * k + 542027 := by
    unfold C
    simp [show (1679616 * k + 1084054) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 542027) = 2519424 * k + 1626082 := by
    unfold C
    simp [show (839808 * k + 542027) % 2 ≠ 0 by omega]
    omega
  have h21 : C (2519424 * k + 1626082) = 1259712 * k + 813041 := by
    unfold C
    simp [show (2519424 * k + 1626082) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 813041) = 3779136 * k + 2439124 := by
    unfold C
    simp [show (1259712 * k + 813041) % 2 ≠ 0 by omega]
    omega
  have h23 : C (3779136 * k + 2439124) = 1889568 * k + 1219562 := by
    unfold C
    simp [show (3779136 * k + 2439124) % 2 = 0 by omega]
    omega
  have h24 : C (1889568 * k + 1219562) = 944784 * k + 609781 := by
    unfold C
    simp [show (1889568 * k + 1219562) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 609781) = 2834352 * k + 1829344 := by
    unfold C
    simp [show (944784 * k + 609781) % 2 ≠ 0 by omega]
    omega
  have h26 : C (2834352 * k + 1829344) = 1417176 * k + 914672 := by
    unfold C
    simp [show (2834352 * k + 1829344) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 914672) = 708588 * k + 457336 := by
    unfold C
    simp [show (1417176 * k + 914672) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 457336) = 354294 * k + 228668 := by
    unfold C
    simp [show (708588 * k + 457336) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 228668) = 177147 * k + 114334 := by
    unfold C
    simp [show (354294 * k + 228668) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 169191) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 169191))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_169215 : ∀ k : Nat,
    iterate (262144 * k + 169215) 29 = 177147 * k + 114350 ∧
      177147 * k + 114350 < 262144 * k + 169215 := by
  intro k
  have h1 : C (262144 * k + 169215) = 786432 * k + 507646 := by
    unfold C
    simp [show (262144 * k + 169215) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 507646) = 393216 * k + 253823 := by
    unfold C
    simp [show (786432 * k + 507646) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 253823) = 1179648 * k + 761470 := by
    unfold C
    simp [show (393216 * k + 253823) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 761470) = 589824 * k + 380735 := by
    unfold C
    simp [show (1179648 * k + 761470) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 380735) = 1769472 * k + 1142206 := by
    unfold C
    simp [show (589824 * k + 380735) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 1142206) = 884736 * k + 571103 := by
    unfold C
    simp [show (1769472 * k + 1142206) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 571103) = 2654208 * k + 1713310 := by
    unfold C
    simp [show (884736 * k + 571103) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 1713310) = 1327104 * k + 856655 := by
    unfold C
    simp [show (2654208 * k + 1713310) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 856655) = 3981312 * k + 2569966 := by
    unfold C
    simp [show (1327104 * k + 856655) % 2 ≠ 0 by omega]
    omega
  have h10 : C (3981312 * k + 2569966) = 1990656 * k + 1284983 := by
    unfold C
    simp [show (3981312 * k + 2569966) % 2 = 0 by omega]
    omega
  have h11 : C (1990656 * k + 1284983) = 5971968 * k + 3854950 := by
    unfold C
    simp [show (1990656 * k + 1284983) % 2 ≠ 0 by omega]
    omega
  have h12 : C (5971968 * k + 3854950) = 2985984 * k + 1927475 := by
    unfold C
    simp [show (5971968 * k + 3854950) % 2 = 0 by omega]
    omega
  have h13 : C (2985984 * k + 1927475) = 8957952 * k + 5782426 := by
    unfold C
    simp [show (2985984 * k + 1927475) % 2 ≠ 0 by omega]
    omega
  have h14 : C (8957952 * k + 5782426) = 4478976 * k + 2891213 := by
    unfold C
    simp [show (8957952 * k + 5782426) % 2 = 0 by omega]
    omega
  have h15 : C (4478976 * k + 2891213) = 13436928 * k + 8673640 := by
    unfold C
    simp [show (4478976 * k + 2891213) % 2 ≠ 0 by omega]
    omega
  have h16 : C (13436928 * k + 8673640) = 6718464 * k + 4336820 := by
    unfold C
    simp [show (13436928 * k + 8673640) % 2 = 0 by omega]
    omega
  have h17 : C (6718464 * k + 4336820) = 3359232 * k + 2168410 := by
    unfold C
    simp [show (6718464 * k + 4336820) % 2 = 0 by omega]
    omega
  have h18 : C (3359232 * k + 2168410) = 1679616 * k + 1084205 := by
    unfold C
    simp [show (3359232 * k + 2168410) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 1084205) = 5038848 * k + 3252616 := by
    unfold C
    simp [show (1679616 * k + 1084205) % 2 ≠ 0 by omega]
    omega
  have h20 : C (5038848 * k + 3252616) = 2519424 * k + 1626308 := by
    unfold C
    simp [show (5038848 * k + 3252616) % 2 = 0 by omega]
    omega
  have h21 : C (2519424 * k + 1626308) = 1259712 * k + 813154 := by
    unfold C
    simp [show (2519424 * k + 1626308) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 813154) = 629856 * k + 406577 := by
    unfold C
    simp [show (1259712 * k + 813154) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 406577) = 1889568 * k + 1219732 := by
    unfold C
    simp [show (629856 * k + 406577) % 2 ≠ 0 by omega]
    omega
  have h24 : C (1889568 * k + 1219732) = 944784 * k + 609866 := by
    unfold C
    simp [show (1889568 * k + 1219732) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 609866) = 472392 * k + 304933 := by
    unfold C
    simp [show (944784 * k + 609866) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 304933) = 1417176 * k + 914800 := by
    unfold C
    simp [show (472392 * k + 304933) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 914800) = 708588 * k + 457400 := by
    unfold C
    simp [show (1417176 * k + 914800) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 457400) = 354294 * k + 228700 := by
    unfold C
    simp [show (708588 * k + 457400) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 228700) = 177147 * k + 114350 := by
    unfold C
    simp [show (354294 * k + 228700) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 169215) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 169215))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_169263 : ∀ k : Nat,
    iterate (262144 * k + 169263) 29 = 177147 * k + 114383 ∧
      177147 * k + 114383 < 262144 * k + 169263 := by
  intro k
  have h1 : C (262144 * k + 169263) = 786432 * k + 507790 := by
    unfold C
    simp [show (262144 * k + 169263) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 507790) = 393216 * k + 253895 := by
    unfold C
    simp [show (786432 * k + 507790) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 253895) = 1179648 * k + 761686 := by
    unfold C
    simp [show (393216 * k + 253895) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 761686) = 589824 * k + 380843 := by
    unfold C
    simp [show (1179648 * k + 761686) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 380843) = 1769472 * k + 1142530 := by
    unfold C
    simp [show (589824 * k + 380843) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 1142530) = 884736 * k + 571265 := by
    unfold C
    simp [show (1769472 * k + 1142530) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 571265) = 2654208 * k + 1713796 := by
    unfold C
    simp [show (884736 * k + 571265) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 1713796) = 1327104 * k + 856898 := by
    unfold C
    simp [show (2654208 * k + 1713796) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 856898) = 663552 * k + 428449 := by
    unfold C
    simp [show (1327104 * k + 856898) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 428449) = 1990656 * k + 1285348 := by
    unfold C
    simp [show (663552 * k + 428449) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 1285348) = 995328 * k + 642674 := by
    unfold C
    simp [show (1990656 * k + 1285348) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 642674) = 497664 * k + 321337 := by
    unfold C
    simp [show (995328 * k + 642674) % 2 = 0 by omega]
    omega
  have h13 : C (497664 * k + 321337) = 1492992 * k + 964012 := by
    unfold C
    simp [show (497664 * k + 321337) % 2 ≠ 0 by omega]
    omega
  have h14 : C (1492992 * k + 964012) = 746496 * k + 482006 := by
    unfold C
    simp [show (1492992 * k + 964012) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 482006) = 373248 * k + 241003 := by
    unfold C
    simp [show (746496 * k + 482006) % 2 = 0 by omega]
    omega
  have h16 : C (373248 * k + 241003) = 1119744 * k + 723010 := by
    unfold C
    simp [show (373248 * k + 241003) % 2 ≠ 0 by omega]
    omega
  have h17 : C (1119744 * k + 723010) = 559872 * k + 361505 := by
    unfold C
    simp [show (1119744 * k + 723010) % 2 = 0 by omega]
    omega
  have h18 : C (559872 * k + 361505) = 1679616 * k + 1084516 := by
    unfold C
    simp [show (559872 * k + 361505) % 2 ≠ 0 by omega]
    omega
  have h19 : C (1679616 * k + 1084516) = 839808 * k + 542258 := by
    unfold C
    simp [show (1679616 * k + 1084516) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 542258) = 419904 * k + 271129 := by
    unfold C
    simp [show (839808 * k + 542258) % 2 = 0 by omega]
    omega
  have h21 : C (419904 * k + 271129) = 1259712 * k + 813388 := by
    unfold C
    simp [show (419904 * k + 271129) % 2 ≠ 0 by omega]
    omega
  have h22 : C (1259712 * k + 813388) = 629856 * k + 406694 := by
    unfold C
    simp [show (1259712 * k + 813388) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 406694) = 314928 * k + 203347 := by
    unfold C
    simp [show (629856 * k + 406694) % 2 = 0 by omega]
    omega
  have h24 : C (314928 * k + 203347) = 944784 * k + 610042 := by
    unfold C
    simp [show (314928 * k + 203347) % 2 ≠ 0 by omega]
    omega
  have h25 : C (944784 * k + 610042) = 472392 * k + 305021 := by
    unfold C
    simp [show (944784 * k + 610042) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 305021) = 1417176 * k + 915064 := by
    unfold C
    simp [show (472392 * k + 305021) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 915064) = 708588 * k + 457532 := by
    unfold C
    simp [show (1417176 * k + 915064) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 457532) = 354294 * k + 228766 := by
    unfold C
    simp [show (708588 * k + 457532) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 228766) = 177147 * k + 114383 := by
    unfold C
    simp [show (354294 * k + 228766) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 169263) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 169263))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_169423 : ∀ k : Nat,
    iterate (262144 * k + 169423) 29 = 177147 * k + 114491 ∧
      177147 * k + 114491 < 262144 * k + 169423 := by
  intro k
  have h1 : C (262144 * k + 169423) = 786432 * k + 508270 := by
    unfold C
    simp [show (262144 * k + 169423) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 508270) = 393216 * k + 254135 := by
    unfold C
    simp [show (786432 * k + 508270) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 254135) = 1179648 * k + 762406 := by
    unfold C
    simp [show (393216 * k + 254135) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 762406) = 589824 * k + 381203 := by
    unfold C
    simp [show (1179648 * k + 762406) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 381203) = 1769472 * k + 1143610 := by
    unfold C
    simp [show (589824 * k + 381203) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 1143610) = 884736 * k + 571805 := by
    unfold C
    simp [show (1769472 * k + 1143610) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 571805) = 2654208 * k + 1715416 := by
    unfold C
    simp [show (884736 * k + 571805) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 1715416) = 1327104 * k + 857708 := by
    unfold C
    simp [show (2654208 * k + 1715416) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 857708) = 663552 * k + 428854 := by
    unfold C
    simp [show (1327104 * k + 857708) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 428854) = 331776 * k + 214427 := by
    unfold C
    simp [show (663552 * k + 428854) % 2 = 0 by omega]
    omega
  have h11 : C (331776 * k + 214427) = 995328 * k + 643282 := by
    unfold C
    simp [show (331776 * k + 214427) % 2 ≠ 0 by omega]
    omega
  have h12 : C (995328 * k + 643282) = 497664 * k + 321641 := by
    unfold C
    simp [show (995328 * k + 643282) % 2 = 0 by omega]
    omega
  have h13 : C (497664 * k + 321641) = 1492992 * k + 964924 := by
    unfold C
    simp [show (497664 * k + 321641) % 2 ≠ 0 by omega]
    omega
  have h14 : C (1492992 * k + 964924) = 746496 * k + 482462 := by
    unfold C
    simp [show (1492992 * k + 964924) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 482462) = 373248 * k + 241231 := by
    unfold C
    simp [show (746496 * k + 482462) % 2 = 0 by omega]
    omega
  have h16 : C (373248 * k + 241231) = 1119744 * k + 723694 := by
    unfold C
    simp [show (373248 * k + 241231) % 2 ≠ 0 by omega]
    omega
  have h17 : C (1119744 * k + 723694) = 559872 * k + 361847 := by
    unfold C
    simp [show (1119744 * k + 723694) % 2 = 0 by omega]
    omega
  have h18 : C (559872 * k + 361847) = 1679616 * k + 1085542 := by
    unfold C
    simp [show (559872 * k + 361847) % 2 ≠ 0 by omega]
    omega
  have h19 : C (1679616 * k + 1085542) = 839808 * k + 542771 := by
    unfold C
    simp [show (1679616 * k + 1085542) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 542771) = 2519424 * k + 1628314 := by
    unfold C
    simp [show (839808 * k + 542771) % 2 ≠ 0 by omega]
    omega
  have h21 : C (2519424 * k + 1628314) = 1259712 * k + 814157 := by
    unfold C
    simp [show (2519424 * k + 1628314) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 814157) = 3779136 * k + 2442472 := by
    unfold C
    simp [show (1259712 * k + 814157) % 2 ≠ 0 by omega]
    omega
  have h23 : C (3779136 * k + 2442472) = 1889568 * k + 1221236 := by
    unfold C
    simp [show (3779136 * k + 2442472) % 2 = 0 by omega]
    omega
  have h24 : C (1889568 * k + 1221236) = 944784 * k + 610618 := by
    unfold C
    simp [show (1889568 * k + 1221236) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 610618) = 472392 * k + 305309 := by
    unfold C
    simp [show (944784 * k + 610618) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 305309) = 1417176 * k + 915928 := by
    unfold C
    simp [show (472392 * k + 305309) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 915928) = 708588 * k + 457964 := by
    unfold C
    simp [show (1417176 * k + 915928) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 457964) = 354294 * k + 228982 := by
    unfold C
    simp [show (708588 * k + 457964) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 228982) = 177147 * k + 114491 := by
    unfold C
    simp [show (354294 * k + 228982) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 169423) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 169423))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_169503 : ∀ k : Nat,
    iterate (262144 * k + 169503) 29 = 177147 * k + 114545 ∧
      177147 * k + 114545 < 262144 * k + 169503 := by
  intro k
  have h1 : C (262144 * k + 169503) = 786432 * k + 508510 := by
    unfold C
    simp [show (262144 * k + 169503) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 508510) = 393216 * k + 254255 := by
    unfold C
    simp [show (786432 * k + 508510) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 254255) = 1179648 * k + 762766 := by
    unfold C
    simp [show (393216 * k + 254255) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 762766) = 589824 * k + 381383 := by
    unfold C
    simp [show (1179648 * k + 762766) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 381383) = 1769472 * k + 1144150 := by
    unfold C
    simp [show (589824 * k + 381383) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 1144150) = 884736 * k + 572075 := by
    unfold C
    simp [show (1769472 * k + 1144150) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 572075) = 2654208 * k + 1716226 := by
    unfold C
    simp [show (884736 * k + 572075) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 1716226) = 1327104 * k + 858113 := by
    unfold C
    simp [show (2654208 * k + 1716226) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 858113) = 3981312 * k + 2574340 := by
    unfold C
    simp [show (1327104 * k + 858113) % 2 ≠ 0 by omega]
    omega
  have h10 : C (3981312 * k + 2574340) = 1990656 * k + 1287170 := by
    unfold C
    simp [show (3981312 * k + 2574340) % 2 = 0 by omega]
    omega
  have h11 : C (1990656 * k + 1287170) = 995328 * k + 643585 := by
    unfold C
    simp [show (1990656 * k + 1287170) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 643585) = 2985984 * k + 1930756 := by
    unfold C
    simp [show (995328 * k + 643585) % 2 ≠ 0 by omega]
    omega
  have h13 : C (2985984 * k + 1930756) = 1492992 * k + 965378 := by
    unfold C
    simp [show (2985984 * k + 1930756) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 965378) = 746496 * k + 482689 := by
    unfold C
    simp [show (1492992 * k + 965378) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 482689) = 2239488 * k + 1448068 := by
    unfold C
    simp [show (746496 * k + 482689) % 2 ≠ 0 by omega]
    omega
  have h16 : C (2239488 * k + 1448068) = 1119744 * k + 724034 := by
    unfold C
    simp [show (2239488 * k + 1448068) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 724034) = 559872 * k + 362017 := by
    unfold C
    simp [show (1119744 * k + 724034) % 2 = 0 by omega]
    omega
  have h18 : C (559872 * k + 362017) = 1679616 * k + 1086052 := by
    unfold C
    simp [show (559872 * k + 362017) % 2 ≠ 0 by omega]
    omega
  have h19 : C (1679616 * k + 1086052) = 839808 * k + 543026 := by
    unfold C
    simp [show (1679616 * k + 1086052) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 543026) = 419904 * k + 271513 := by
    unfold C
    simp [show (839808 * k + 543026) % 2 = 0 by omega]
    omega
  have h21 : C (419904 * k + 271513) = 1259712 * k + 814540 := by
    unfold C
    simp [show (419904 * k + 271513) % 2 ≠ 0 by omega]
    omega
  have h22 : C (1259712 * k + 814540) = 629856 * k + 407270 := by
    unfold C
    simp [show (1259712 * k + 814540) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 407270) = 314928 * k + 203635 := by
    unfold C
    simp [show (629856 * k + 407270) % 2 = 0 by omega]
    omega
  have h24 : C (314928 * k + 203635) = 944784 * k + 610906 := by
    unfold C
    simp [show (314928 * k + 203635) % 2 ≠ 0 by omega]
    omega
  have h25 : C (944784 * k + 610906) = 472392 * k + 305453 := by
    unfold C
    simp [show (944784 * k + 610906) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 305453) = 1417176 * k + 916360 := by
    unfold C
    simp [show (472392 * k + 305453) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 916360) = 708588 * k + 458180 := by
    unfold C
    simp [show (1417176 * k + 916360) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 458180) = 354294 * k + 229090 := by
    unfold C
    simp [show (708588 * k + 458180) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 229090) = 177147 * k + 114545 := by
    unfold C
    simp [show (354294 * k + 229090) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 169503) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 169503))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_169631 : ∀ k : Nat,
    iterate (262144 * k + 169631) 29 = 177147 * k + 114631 ∧
      177147 * k + 114631 < 262144 * k + 169631 := by
  intro k
  have h1 : C (262144 * k + 169631) = 786432 * k + 508894 := by
    unfold C
    simp [show (262144 * k + 169631) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 508894) = 393216 * k + 254447 := by
    unfold C
    simp [show (786432 * k + 508894) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 254447) = 1179648 * k + 763342 := by
    unfold C
    simp [show (393216 * k + 254447) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 763342) = 589824 * k + 381671 := by
    unfold C
    simp [show (1179648 * k + 763342) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 381671) = 1769472 * k + 1145014 := by
    unfold C
    simp [show (589824 * k + 381671) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 1145014) = 884736 * k + 572507 := by
    unfold C
    simp [show (1769472 * k + 1145014) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 572507) = 2654208 * k + 1717522 := by
    unfold C
    simp [show (884736 * k + 572507) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 1717522) = 1327104 * k + 858761 := by
    unfold C
    simp [show (2654208 * k + 1717522) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 858761) = 3981312 * k + 2576284 := by
    unfold C
    simp [show (1327104 * k + 858761) % 2 ≠ 0 by omega]
    omega
  have h10 : C (3981312 * k + 2576284) = 1990656 * k + 1288142 := by
    unfold C
    simp [show (3981312 * k + 2576284) % 2 = 0 by omega]
    omega
  have h11 : C (1990656 * k + 1288142) = 995328 * k + 644071 := by
    unfold C
    simp [show (1990656 * k + 1288142) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 644071) = 2985984 * k + 1932214 := by
    unfold C
    simp [show (995328 * k + 644071) % 2 ≠ 0 by omega]
    omega
  have h13 : C (2985984 * k + 1932214) = 1492992 * k + 966107 := by
    unfold C
    simp [show (2985984 * k + 1932214) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 966107) = 4478976 * k + 2898322 := by
    unfold C
    simp [show (1492992 * k + 966107) % 2 ≠ 0 by omega]
    omega
  have h15 : C (4478976 * k + 2898322) = 2239488 * k + 1449161 := by
    unfold C
    simp [show (4478976 * k + 2898322) % 2 = 0 by omega]
    omega
  have h16 : C (2239488 * k + 1449161) = 6718464 * k + 4347484 := by
    unfold C
    simp [show (2239488 * k + 1449161) % 2 ≠ 0 by omega]
    omega
  have h17 : C (6718464 * k + 4347484) = 3359232 * k + 2173742 := by
    unfold C
    simp [show (6718464 * k + 4347484) % 2 = 0 by omega]
    omega
  have h18 : C (3359232 * k + 2173742) = 1679616 * k + 1086871 := by
    unfold C
    simp [show (3359232 * k + 2173742) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 1086871) = 5038848 * k + 3260614 := by
    unfold C
    simp [show (1679616 * k + 1086871) % 2 ≠ 0 by omega]
    omega
  have h20 : C (5038848 * k + 3260614) = 2519424 * k + 1630307 := by
    unfold C
    simp [show (5038848 * k + 3260614) % 2 = 0 by omega]
    omega
  have h21 : C (2519424 * k + 1630307) = 7558272 * k + 4890922 := by
    unfold C
    simp [show (2519424 * k + 1630307) % 2 ≠ 0 by omega]
    omega
  have h22 : C (7558272 * k + 4890922) = 3779136 * k + 2445461 := by
    unfold C
    simp [show (7558272 * k + 4890922) % 2 = 0 by omega]
    omega
  have h23 : C (3779136 * k + 2445461) = 11337408 * k + 7336384 := by
    unfold C
    simp [show (3779136 * k + 2445461) % 2 ≠ 0 by omega]
    omega
  have h24 : C (11337408 * k + 7336384) = 5668704 * k + 3668192 := by
    unfold C
    simp [show (11337408 * k + 7336384) % 2 = 0 by omega]
    omega
  have h25 : C (5668704 * k + 3668192) = 2834352 * k + 1834096 := by
    unfold C
    simp [show (5668704 * k + 3668192) % 2 = 0 by omega]
    omega
  have h26 : C (2834352 * k + 1834096) = 1417176 * k + 917048 := by
    unfold C
    simp [show (2834352 * k + 1834096) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 917048) = 708588 * k + 458524 := by
    unfold C
    simp [show (1417176 * k + 917048) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 458524) = 354294 * k + 229262 := by
    unfold C
    simp [show (708588 * k + 458524) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 229262) = 177147 * k + 114631 := by
    unfold C
    simp [show (354294 * k + 229262) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 169631) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 169631))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

end CollatzM18Shard032
