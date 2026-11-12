import Mathlib.Data.Nat.Prime.Basic

namespace CollatzM18Shard014

def C (n : Nat) : Nat := if n % 2 = 0 then n / 2 else 3 * n + 1

def iterate (n t : Nat) : Nat := Nat.rec n (fun _ previous => C previous) t

theorem descent_mod262144_67791 : ∀ k : Nat,
    iterate (262144 * k + 67791) 29 = 177147 * k + 45812 ∧
      177147 * k + 45812 < 262144 * k + 67791 := by
  intro k
  have h1 : C (262144 * k + 67791) = 786432 * k + 203374 := by
    unfold C
    simp [show (262144 * k + 67791) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 203374) = 393216 * k + 101687 := by
    unfold C
    simp [show (786432 * k + 203374) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 101687) = 1179648 * k + 305062 := by
    unfold C
    simp [show (393216 * k + 101687) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 305062) = 589824 * k + 152531 := by
    unfold C
    simp [show (1179648 * k + 305062) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 152531) = 1769472 * k + 457594 := by
    unfold C
    simp [show (589824 * k + 152531) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 457594) = 884736 * k + 228797 := by
    unfold C
    simp [show (1769472 * k + 457594) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 228797) = 2654208 * k + 686392 := by
    unfold C
    simp [show (884736 * k + 228797) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 686392) = 1327104 * k + 343196 := by
    unfold C
    simp [show (2654208 * k + 686392) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 343196) = 663552 * k + 171598 := by
    unfold C
    simp [show (1327104 * k + 343196) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 171598) = 331776 * k + 85799 := by
    unfold C
    simp [show (663552 * k + 171598) % 2 = 0 by omega]
    omega
  have h11 : C (331776 * k + 85799) = 995328 * k + 257398 := by
    unfold C
    simp [show (331776 * k + 85799) % 2 ≠ 0 by omega]
    omega
  have h12 : C (995328 * k + 257398) = 497664 * k + 128699 := by
    unfold C
    simp [show (995328 * k + 257398) % 2 = 0 by omega]
    omega
  have h13 : C (497664 * k + 128699) = 1492992 * k + 386098 := by
    unfold C
    simp [show (497664 * k + 128699) % 2 ≠ 0 by omega]
    omega
  have h14 : C (1492992 * k + 386098) = 746496 * k + 193049 := by
    unfold C
    simp [show (1492992 * k + 386098) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 193049) = 2239488 * k + 579148 := by
    unfold C
    simp [show (746496 * k + 193049) % 2 ≠ 0 by omega]
    omega
  have h16 : C (2239488 * k + 579148) = 1119744 * k + 289574 := by
    unfold C
    simp [show (2239488 * k + 579148) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 289574) = 559872 * k + 144787 := by
    unfold C
    simp [show (1119744 * k + 289574) % 2 = 0 by omega]
    omega
  have h18 : C (559872 * k + 144787) = 1679616 * k + 434362 := by
    unfold C
    simp [show (559872 * k + 144787) % 2 ≠ 0 by omega]
    omega
  have h19 : C (1679616 * k + 434362) = 839808 * k + 217181 := by
    unfold C
    simp [show (1679616 * k + 434362) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 217181) = 2519424 * k + 651544 := by
    unfold C
    simp [show (839808 * k + 217181) % 2 ≠ 0 by omega]
    omega
  have h21 : C (2519424 * k + 651544) = 1259712 * k + 325772 := by
    unfold C
    simp [show (2519424 * k + 651544) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 325772) = 629856 * k + 162886 := by
    unfold C
    simp [show (1259712 * k + 325772) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 162886) = 314928 * k + 81443 := by
    unfold C
    simp [show (629856 * k + 162886) % 2 = 0 by omega]
    omega
  have h24 : C (314928 * k + 81443) = 944784 * k + 244330 := by
    unfold C
    simp [show (314928 * k + 81443) % 2 ≠ 0 by omega]
    omega
  have h25 : C (944784 * k + 244330) = 472392 * k + 122165 := by
    unfold C
    simp [show (944784 * k + 244330) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 122165) = 1417176 * k + 366496 := by
    unfold C
    simp [show (472392 * k + 122165) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 366496) = 708588 * k + 183248 := by
    unfold C
    simp [show (1417176 * k + 366496) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 183248) = 354294 * k + 91624 := by
    unfold C
    simp [show (708588 * k + 183248) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 91624) = 177147 * k + 45812 := by
    unfold C
    simp [show (354294 * k + 91624) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 67791) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 67791))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_68351 : ∀ k : Nat,
    iterate (262144 * k + 68351) 29 = 177147 * k + 46190 ∧
      177147 * k + 46190 < 262144 * k + 68351 := by
  intro k
  have h1 : C (262144 * k + 68351) = 786432 * k + 205054 := by
    unfold C
    simp [show (262144 * k + 68351) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 205054) = 393216 * k + 102527 := by
    unfold C
    simp [show (786432 * k + 205054) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 102527) = 1179648 * k + 307582 := by
    unfold C
    simp [show (393216 * k + 102527) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 307582) = 589824 * k + 153791 := by
    unfold C
    simp [show (1179648 * k + 307582) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 153791) = 1769472 * k + 461374 := by
    unfold C
    simp [show (589824 * k + 153791) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 461374) = 884736 * k + 230687 := by
    unfold C
    simp [show (1769472 * k + 461374) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 230687) = 2654208 * k + 692062 := by
    unfold C
    simp [show (884736 * k + 230687) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 692062) = 1327104 * k + 346031 := by
    unfold C
    simp [show (2654208 * k + 692062) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 346031) = 3981312 * k + 1038094 := by
    unfold C
    simp [show (1327104 * k + 346031) % 2 ≠ 0 by omega]
    omega
  have h10 : C (3981312 * k + 1038094) = 1990656 * k + 519047 := by
    unfold C
    simp [show (3981312 * k + 1038094) % 2 = 0 by omega]
    omega
  have h11 : C (1990656 * k + 519047) = 5971968 * k + 1557142 := by
    unfold C
    simp [show (1990656 * k + 519047) % 2 ≠ 0 by omega]
    omega
  have h12 : C (5971968 * k + 1557142) = 2985984 * k + 778571 := by
    unfold C
    simp [show (5971968 * k + 1557142) % 2 = 0 by omega]
    omega
  have h13 : C (2985984 * k + 778571) = 8957952 * k + 2335714 := by
    unfold C
    simp [show (2985984 * k + 778571) % 2 ≠ 0 by omega]
    omega
  have h14 : C (8957952 * k + 2335714) = 4478976 * k + 1167857 := by
    unfold C
    simp [show (8957952 * k + 2335714) % 2 = 0 by omega]
    omega
  have h15 : C (4478976 * k + 1167857) = 13436928 * k + 3503572 := by
    unfold C
    simp [show (4478976 * k + 1167857) % 2 ≠ 0 by omega]
    omega
  have h16 : C (13436928 * k + 3503572) = 6718464 * k + 1751786 := by
    unfold C
    simp [show (13436928 * k + 3503572) % 2 = 0 by omega]
    omega
  have h17 : C (6718464 * k + 1751786) = 3359232 * k + 875893 := by
    unfold C
    simp [show (6718464 * k + 1751786) % 2 = 0 by omega]
    omega
  have h18 : C (3359232 * k + 875893) = 10077696 * k + 2627680 := by
    unfold C
    simp [show (3359232 * k + 875893) % 2 ≠ 0 by omega]
    omega
  have h19 : C (10077696 * k + 2627680) = 5038848 * k + 1313840 := by
    unfold C
    simp [show (10077696 * k + 2627680) % 2 = 0 by omega]
    omega
  have h20 : C (5038848 * k + 1313840) = 2519424 * k + 656920 := by
    unfold C
    simp [show (5038848 * k + 1313840) % 2 = 0 by omega]
    omega
  have h21 : C (2519424 * k + 656920) = 1259712 * k + 328460 := by
    unfold C
    simp [show (2519424 * k + 656920) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 328460) = 629856 * k + 164230 := by
    unfold C
    simp [show (1259712 * k + 328460) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 164230) = 314928 * k + 82115 := by
    unfold C
    simp [show (629856 * k + 164230) % 2 = 0 by omega]
    omega
  have h24 : C (314928 * k + 82115) = 944784 * k + 246346 := by
    unfold C
    simp [show (314928 * k + 82115) % 2 ≠ 0 by omega]
    omega
  have h25 : C (944784 * k + 246346) = 472392 * k + 123173 := by
    unfold C
    simp [show (944784 * k + 246346) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 123173) = 1417176 * k + 369520 := by
    unfold C
    simp [show (472392 * k + 123173) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 369520) = 708588 * k + 184760 := by
    unfold C
    simp [show (1417176 * k + 369520) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 184760) = 354294 * k + 92380 := by
    unfold C
    simp [show (708588 * k + 184760) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 92380) = 177147 * k + 46190 := by
    unfold C
    simp [show (354294 * k + 92380) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 68351) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 68351))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_68635 : ∀ k : Nat,
    iterate (262144 * k + 68635) 29 = 177147 * k + 46382 ∧
      177147 * k + 46382 < 262144 * k + 68635 := by
  intro k
  have h1 : C (262144 * k + 68635) = 786432 * k + 205906 := by
    unfold C
    simp [show (262144 * k + 68635) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 205906) = 393216 * k + 102953 := by
    unfold C
    simp [show (786432 * k + 205906) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 102953) = 1179648 * k + 308860 := by
    unfold C
    simp [show (393216 * k + 102953) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 308860) = 589824 * k + 154430 := by
    unfold C
    simp [show (1179648 * k + 308860) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 154430) = 294912 * k + 77215 := by
    unfold C
    simp [show (589824 * k + 154430) % 2 = 0 by omega]
    omega
  have h6 : C (294912 * k + 77215) = 884736 * k + 231646 := by
    unfold C
    simp [show (294912 * k + 77215) % 2 ≠ 0 by omega]
    omega
  have h7 : C (884736 * k + 231646) = 442368 * k + 115823 := by
    unfold C
    simp [show (884736 * k + 231646) % 2 = 0 by omega]
    omega
  have h8 : C (442368 * k + 115823) = 1327104 * k + 347470 := by
    unfold C
    simp [show (442368 * k + 115823) % 2 ≠ 0 by omega]
    omega
  have h9 : C (1327104 * k + 347470) = 663552 * k + 173735 := by
    unfold C
    simp [show (1327104 * k + 347470) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 173735) = 1990656 * k + 521206 := by
    unfold C
    simp [show (663552 * k + 173735) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 521206) = 995328 * k + 260603 := by
    unfold C
    simp [show (1990656 * k + 521206) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 260603) = 2985984 * k + 781810 := by
    unfold C
    simp [show (995328 * k + 260603) % 2 ≠ 0 by omega]
    omega
  have h13 : C (2985984 * k + 781810) = 1492992 * k + 390905 := by
    unfold C
    simp [show (2985984 * k + 781810) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 390905) = 4478976 * k + 1172716 := by
    unfold C
    simp [show (1492992 * k + 390905) % 2 ≠ 0 by omega]
    omega
  have h15 : C (4478976 * k + 1172716) = 2239488 * k + 586358 := by
    unfold C
    simp [show (4478976 * k + 1172716) % 2 = 0 by omega]
    omega
  have h16 : C (2239488 * k + 586358) = 1119744 * k + 293179 := by
    unfold C
    simp [show (2239488 * k + 586358) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 293179) = 3359232 * k + 879538 := by
    unfold C
    simp [show (1119744 * k + 293179) % 2 ≠ 0 by omega]
    omega
  have h18 : C (3359232 * k + 879538) = 1679616 * k + 439769 := by
    unfold C
    simp [show (3359232 * k + 879538) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 439769) = 5038848 * k + 1319308 := by
    unfold C
    simp [show (1679616 * k + 439769) % 2 ≠ 0 by omega]
    omega
  have h20 : C (5038848 * k + 1319308) = 2519424 * k + 659654 := by
    unfold C
    simp [show (5038848 * k + 1319308) % 2 = 0 by omega]
    omega
  have h21 : C (2519424 * k + 659654) = 1259712 * k + 329827 := by
    unfold C
    simp [show (2519424 * k + 659654) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 329827) = 3779136 * k + 989482 := by
    unfold C
    simp [show (1259712 * k + 329827) % 2 ≠ 0 by omega]
    omega
  have h23 : C (3779136 * k + 989482) = 1889568 * k + 494741 := by
    unfold C
    simp [show (3779136 * k + 989482) % 2 = 0 by omega]
    omega
  have h24 : C (1889568 * k + 494741) = 5668704 * k + 1484224 := by
    unfold C
    simp [show (1889568 * k + 494741) % 2 ≠ 0 by omega]
    omega
  have h25 : C (5668704 * k + 1484224) = 2834352 * k + 742112 := by
    unfold C
    simp [show (5668704 * k + 1484224) % 2 = 0 by omega]
    omega
  have h26 : C (2834352 * k + 742112) = 1417176 * k + 371056 := by
    unfold C
    simp [show (2834352 * k + 742112) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 371056) = 708588 * k + 185528 := by
    unfold C
    simp [show (1417176 * k + 371056) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 185528) = 354294 * k + 92764 := by
    unfold C
    simp [show (708588 * k + 185528) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 92764) = 177147 * k + 46382 := by
    unfold C
    simp [show (354294 * k + 92764) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 68635) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 68635))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_68815 : ∀ k : Nat,
    iterate (262144 * k + 68815) 29 = 177147 * k + 46504 ∧
      177147 * k + 46504 < 262144 * k + 68815 := by
  intro k
  have h1 : C (262144 * k + 68815) = 786432 * k + 206446 := by
    unfold C
    simp [show (262144 * k + 68815) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 206446) = 393216 * k + 103223 := by
    unfold C
    simp [show (786432 * k + 206446) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 103223) = 1179648 * k + 309670 := by
    unfold C
    simp [show (393216 * k + 103223) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 309670) = 589824 * k + 154835 := by
    unfold C
    simp [show (1179648 * k + 309670) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 154835) = 1769472 * k + 464506 := by
    unfold C
    simp [show (589824 * k + 154835) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 464506) = 884736 * k + 232253 := by
    unfold C
    simp [show (1769472 * k + 464506) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 232253) = 2654208 * k + 696760 := by
    unfold C
    simp [show (884736 * k + 232253) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 696760) = 1327104 * k + 348380 := by
    unfold C
    simp [show (2654208 * k + 696760) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 348380) = 663552 * k + 174190 := by
    unfold C
    simp [show (1327104 * k + 348380) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 174190) = 331776 * k + 87095 := by
    unfold C
    simp [show (663552 * k + 174190) % 2 = 0 by omega]
    omega
  have h11 : C (331776 * k + 87095) = 995328 * k + 261286 := by
    unfold C
    simp [show (331776 * k + 87095) % 2 ≠ 0 by omega]
    omega
  have h12 : C (995328 * k + 261286) = 497664 * k + 130643 := by
    unfold C
    simp [show (995328 * k + 261286) % 2 = 0 by omega]
    omega
  have h13 : C (497664 * k + 130643) = 1492992 * k + 391930 := by
    unfold C
    simp [show (497664 * k + 130643) % 2 ≠ 0 by omega]
    omega
  have h14 : C (1492992 * k + 391930) = 746496 * k + 195965 := by
    unfold C
    simp [show (1492992 * k + 391930) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 195965) = 2239488 * k + 587896 := by
    unfold C
    simp [show (746496 * k + 195965) % 2 ≠ 0 by omega]
    omega
  have h16 : C (2239488 * k + 587896) = 1119744 * k + 293948 := by
    unfold C
    simp [show (2239488 * k + 587896) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 293948) = 559872 * k + 146974 := by
    unfold C
    simp [show (1119744 * k + 293948) % 2 = 0 by omega]
    omega
  have h18 : C (559872 * k + 146974) = 279936 * k + 73487 := by
    unfold C
    simp [show (559872 * k + 146974) % 2 = 0 by omega]
    omega
  have h19 : C (279936 * k + 73487) = 839808 * k + 220462 := by
    unfold C
    simp [show (279936 * k + 73487) % 2 ≠ 0 by omega]
    omega
  have h20 : C (839808 * k + 220462) = 419904 * k + 110231 := by
    unfold C
    simp [show (839808 * k + 220462) % 2 = 0 by omega]
    omega
  have h21 : C (419904 * k + 110231) = 1259712 * k + 330694 := by
    unfold C
    simp [show (419904 * k + 110231) % 2 ≠ 0 by omega]
    omega
  have h22 : C (1259712 * k + 330694) = 629856 * k + 165347 := by
    unfold C
    simp [show (1259712 * k + 330694) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 165347) = 1889568 * k + 496042 := by
    unfold C
    simp [show (629856 * k + 165347) % 2 ≠ 0 by omega]
    omega
  have h24 : C (1889568 * k + 496042) = 944784 * k + 248021 := by
    unfold C
    simp [show (1889568 * k + 496042) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 248021) = 2834352 * k + 744064 := by
    unfold C
    simp [show (944784 * k + 248021) % 2 ≠ 0 by omega]
    omega
  have h26 : C (2834352 * k + 744064) = 1417176 * k + 372032 := by
    unfold C
    simp [show (2834352 * k + 744064) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 372032) = 708588 * k + 186016 := by
    unfold C
    simp [show (1417176 * k + 372032) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 186016) = 354294 * k + 93008 := by
    unfold C
    simp [show (708588 * k + 186016) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 93008) = 177147 * k + 46504 := by
    unfold C
    simp [show (354294 * k + 93008) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 68815) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 68815))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_68847 : ∀ k : Nat,
    iterate (262144 * k + 68847) 29 = 177147 * k + 46525 ∧
      177147 * k + 46525 < 262144 * k + 68847 := by
  intro k
  have h1 : C (262144 * k + 68847) = 786432 * k + 206542 := by
    unfold C
    simp [show (262144 * k + 68847) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 206542) = 393216 * k + 103271 := by
    unfold C
    simp [show (786432 * k + 206542) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 103271) = 1179648 * k + 309814 := by
    unfold C
    simp [show (393216 * k + 103271) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 309814) = 589824 * k + 154907 := by
    unfold C
    simp [show (1179648 * k + 309814) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 154907) = 1769472 * k + 464722 := by
    unfold C
    simp [show (589824 * k + 154907) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 464722) = 884736 * k + 232361 := by
    unfold C
    simp [show (1769472 * k + 464722) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 232361) = 2654208 * k + 697084 := by
    unfold C
    simp [show (884736 * k + 232361) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 697084) = 1327104 * k + 348542 := by
    unfold C
    simp [show (2654208 * k + 697084) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 348542) = 663552 * k + 174271 := by
    unfold C
    simp [show (1327104 * k + 348542) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 174271) = 1990656 * k + 522814 := by
    unfold C
    simp [show (663552 * k + 174271) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 522814) = 995328 * k + 261407 := by
    unfold C
    simp [show (1990656 * k + 522814) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 261407) = 2985984 * k + 784222 := by
    unfold C
    simp [show (995328 * k + 261407) % 2 ≠ 0 by omega]
    omega
  have h13 : C (2985984 * k + 784222) = 1492992 * k + 392111 := by
    unfold C
    simp [show (2985984 * k + 784222) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 392111) = 4478976 * k + 1176334 := by
    unfold C
    simp [show (1492992 * k + 392111) % 2 ≠ 0 by omega]
    omega
  have h15 : C (4478976 * k + 1176334) = 2239488 * k + 588167 := by
    unfold C
    simp [show (4478976 * k + 1176334) % 2 = 0 by omega]
    omega
  have h16 : C (2239488 * k + 588167) = 6718464 * k + 1764502 := by
    unfold C
    simp [show (2239488 * k + 588167) % 2 ≠ 0 by omega]
    omega
  have h17 : C (6718464 * k + 1764502) = 3359232 * k + 882251 := by
    unfold C
    simp [show (6718464 * k + 1764502) % 2 = 0 by omega]
    omega
  have h18 : C (3359232 * k + 882251) = 10077696 * k + 2646754 := by
    unfold C
    simp [show (3359232 * k + 882251) % 2 ≠ 0 by omega]
    omega
  have h19 : C (10077696 * k + 2646754) = 5038848 * k + 1323377 := by
    unfold C
    simp [show (10077696 * k + 2646754) % 2 = 0 by omega]
    omega
  have h20 : C (5038848 * k + 1323377) = 15116544 * k + 3970132 := by
    unfold C
    simp [show (5038848 * k + 1323377) % 2 ≠ 0 by omega]
    omega
  have h21 : C (15116544 * k + 3970132) = 7558272 * k + 1985066 := by
    unfold C
    simp [show (15116544 * k + 3970132) % 2 = 0 by omega]
    omega
  have h22 : C (7558272 * k + 1985066) = 3779136 * k + 992533 := by
    unfold C
    simp [show (7558272 * k + 1985066) % 2 = 0 by omega]
    omega
  have h23 : C (3779136 * k + 992533) = 11337408 * k + 2977600 := by
    unfold C
    simp [show (3779136 * k + 992533) % 2 ≠ 0 by omega]
    omega
  have h24 : C (11337408 * k + 2977600) = 5668704 * k + 1488800 := by
    unfold C
    simp [show (11337408 * k + 2977600) % 2 = 0 by omega]
    omega
  have h25 : C (5668704 * k + 1488800) = 2834352 * k + 744400 := by
    unfold C
    simp [show (5668704 * k + 1488800) % 2 = 0 by omega]
    omega
  have h26 : C (2834352 * k + 744400) = 1417176 * k + 372200 := by
    unfold C
    simp [show (2834352 * k + 744400) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 372200) = 708588 * k + 186100 := by
    unfold C
    simp [show (1417176 * k + 372200) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 186100) = 354294 * k + 93050 := by
    unfold C
    simp [show (708588 * k + 186100) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 93050) = 177147 * k + 46525 := by
    unfold C
    simp [show (354294 * k + 93050) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 68847) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 68847))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_68891 : ∀ k : Nat,
    iterate (262144 * k + 68891) 29 = 177147 * k + 46555 ∧
      177147 * k + 46555 < 262144 * k + 68891 := by
  intro k
  have h1 : C (262144 * k + 68891) = 786432 * k + 206674 := by
    unfold C
    simp [show (262144 * k + 68891) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 206674) = 393216 * k + 103337 := by
    unfold C
    simp [show (786432 * k + 206674) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 103337) = 1179648 * k + 310012 := by
    unfold C
    simp [show (393216 * k + 103337) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 310012) = 589824 * k + 155006 := by
    unfold C
    simp [show (1179648 * k + 310012) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 155006) = 294912 * k + 77503 := by
    unfold C
    simp [show (589824 * k + 155006) % 2 = 0 by omega]
    omega
  have h6 : C (294912 * k + 77503) = 884736 * k + 232510 := by
    unfold C
    simp [show (294912 * k + 77503) % 2 ≠ 0 by omega]
    omega
  have h7 : C (884736 * k + 232510) = 442368 * k + 116255 := by
    unfold C
    simp [show (884736 * k + 232510) % 2 = 0 by omega]
    omega
  have h8 : C (442368 * k + 116255) = 1327104 * k + 348766 := by
    unfold C
    simp [show (442368 * k + 116255) % 2 ≠ 0 by omega]
    omega
  have h9 : C (1327104 * k + 348766) = 663552 * k + 174383 := by
    unfold C
    simp [show (1327104 * k + 348766) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 174383) = 1990656 * k + 523150 := by
    unfold C
    simp [show (663552 * k + 174383) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 523150) = 995328 * k + 261575 := by
    unfold C
    simp [show (1990656 * k + 523150) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 261575) = 2985984 * k + 784726 := by
    unfold C
    simp [show (995328 * k + 261575) % 2 ≠ 0 by omega]
    omega
  have h13 : C (2985984 * k + 784726) = 1492992 * k + 392363 := by
    unfold C
    simp [show (2985984 * k + 784726) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 392363) = 4478976 * k + 1177090 := by
    unfold C
    simp [show (1492992 * k + 392363) % 2 ≠ 0 by omega]
    omega
  have h15 : C (4478976 * k + 1177090) = 2239488 * k + 588545 := by
    unfold C
    simp [show (4478976 * k + 1177090) % 2 = 0 by omega]
    omega
  have h16 : C (2239488 * k + 588545) = 6718464 * k + 1765636 := by
    unfold C
    simp [show (2239488 * k + 588545) % 2 ≠ 0 by omega]
    omega
  have h17 : C (6718464 * k + 1765636) = 3359232 * k + 882818 := by
    unfold C
    simp [show (6718464 * k + 1765636) % 2 = 0 by omega]
    omega
  have h18 : C (3359232 * k + 882818) = 1679616 * k + 441409 := by
    unfold C
    simp [show (3359232 * k + 882818) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 441409) = 5038848 * k + 1324228 := by
    unfold C
    simp [show (1679616 * k + 441409) % 2 ≠ 0 by omega]
    omega
  have h20 : C (5038848 * k + 1324228) = 2519424 * k + 662114 := by
    unfold C
    simp [show (5038848 * k + 1324228) % 2 = 0 by omega]
    omega
  have h21 : C (2519424 * k + 662114) = 1259712 * k + 331057 := by
    unfold C
    simp [show (2519424 * k + 662114) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 331057) = 3779136 * k + 993172 := by
    unfold C
    simp [show (1259712 * k + 331057) % 2 ≠ 0 by omega]
    omega
  have h23 : C (3779136 * k + 993172) = 1889568 * k + 496586 := by
    unfold C
    simp [show (3779136 * k + 993172) % 2 = 0 by omega]
    omega
  have h24 : C (1889568 * k + 496586) = 944784 * k + 248293 := by
    unfold C
    simp [show (1889568 * k + 496586) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 248293) = 2834352 * k + 744880 := by
    unfold C
    simp [show (944784 * k + 248293) % 2 ≠ 0 by omega]
    omega
  have h26 : C (2834352 * k + 744880) = 1417176 * k + 372440 := by
    unfold C
    simp [show (2834352 * k + 744880) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 372440) = 708588 * k + 186220 := by
    unfold C
    simp [show (1417176 * k + 372440) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 186220) = 354294 * k + 93110 := by
    unfold C
    simp [show (708588 * k + 186220) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 93110) = 177147 * k + 46555 := by
    unfold C
    simp [show (354294 * k + 93110) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 68891) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 68891))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_68935 : ∀ k : Nat,
    iterate (262144 * k + 68935) 29 = 177147 * k + 46585 ∧
      177147 * k + 46585 < 262144 * k + 68935 := by
  intro k
  have h1 : C (262144 * k + 68935) = 786432 * k + 206806 := by
    unfold C
    simp [show (262144 * k + 68935) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 206806) = 393216 * k + 103403 := by
    unfold C
    simp [show (786432 * k + 206806) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 103403) = 1179648 * k + 310210 := by
    unfold C
    simp [show (393216 * k + 103403) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 310210) = 589824 * k + 155105 := by
    unfold C
    simp [show (1179648 * k + 310210) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 155105) = 1769472 * k + 465316 := by
    unfold C
    simp [show (589824 * k + 155105) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 465316) = 884736 * k + 232658 := by
    unfold C
    simp [show (1769472 * k + 465316) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 232658) = 442368 * k + 116329 := by
    unfold C
    simp [show (884736 * k + 232658) % 2 = 0 by omega]
    omega
  have h8 : C (442368 * k + 116329) = 1327104 * k + 348988 := by
    unfold C
    simp [show (442368 * k + 116329) % 2 ≠ 0 by omega]
    omega
  have h9 : C (1327104 * k + 348988) = 663552 * k + 174494 := by
    unfold C
    simp [show (1327104 * k + 348988) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 174494) = 331776 * k + 87247 := by
    unfold C
    simp [show (663552 * k + 174494) % 2 = 0 by omega]
    omega
  have h11 : C (331776 * k + 87247) = 995328 * k + 261742 := by
    unfold C
    simp [show (331776 * k + 87247) % 2 ≠ 0 by omega]
    omega
  have h12 : C (995328 * k + 261742) = 497664 * k + 130871 := by
    unfold C
    simp [show (995328 * k + 261742) % 2 = 0 by omega]
    omega
  have h13 : C (497664 * k + 130871) = 1492992 * k + 392614 := by
    unfold C
    simp [show (497664 * k + 130871) % 2 ≠ 0 by omega]
    omega
  have h14 : C (1492992 * k + 392614) = 746496 * k + 196307 := by
    unfold C
    simp [show (1492992 * k + 392614) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 196307) = 2239488 * k + 588922 := by
    unfold C
    simp [show (746496 * k + 196307) % 2 ≠ 0 by omega]
    omega
  have h16 : C (2239488 * k + 588922) = 1119744 * k + 294461 := by
    unfold C
    simp [show (2239488 * k + 588922) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 294461) = 3359232 * k + 883384 := by
    unfold C
    simp [show (1119744 * k + 294461) % 2 ≠ 0 by omega]
    omega
  have h18 : C (3359232 * k + 883384) = 1679616 * k + 441692 := by
    unfold C
    simp [show (3359232 * k + 883384) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 441692) = 839808 * k + 220846 := by
    unfold C
    simp [show (1679616 * k + 441692) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 220846) = 419904 * k + 110423 := by
    unfold C
    simp [show (839808 * k + 220846) % 2 = 0 by omega]
    omega
  have h21 : C (419904 * k + 110423) = 1259712 * k + 331270 := by
    unfold C
    simp [show (419904 * k + 110423) % 2 ≠ 0 by omega]
    omega
  have h22 : C (1259712 * k + 331270) = 629856 * k + 165635 := by
    unfold C
    simp [show (1259712 * k + 331270) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 165635) = 1889568 * k + 496906 := by
    unfold C
    simp [show (629856 * k + 165635) % 2 ≠ 0 by omega]
    omega
  have h24 : C (1889568 * k + 496906) = 944784 * k + 248453 := by
    unfold C
    simp [show (1889568 * k + 496906) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 248453) = 2834352 * k + 745360 := by
    unfold C
    simp [show (944784 * k + 248453) % 2 ≠ 0 by omega]
    omega
  have h26 : C (2834352 * k + 745360) = 1417176 * k + 372680 := by
    unfold C
    simp [show (2834352 * k + 745360) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 372680) = 708588 * k + 186340 := by
    unfold C
    simp [show (1417176 * k + 372680) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 186340) = 354294 * k + 93170 := by
    unfold C
    simp [show (708588 * k + 186340) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 93170) = 177147 * k + 46585 := by
    unfold C
    simp [show (354294 * k + 93170) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 68935) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 68935))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_69287 : ∀ k : Nat,
    iterate (262144 * k + 69287) 29 = 177147 * k + 46823 ∧
      177147 * k + 46823 < 262144 * k + 69287 := by
  intro k
  have h1 : C (262144 * k + 69287) = 786432 * k + 207862 := by
    unfold C
    simp [show (262144 * k + 69287) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 207862) = 393216 * k + 103931 := by
    unfold C
    simp [show (786432 * k + 207862) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 103931) = 1179648 * k + 311794 := by
    unfold C
    simp [show (393216 * k + 103931) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 311794) = 589824 * k + 155897 := by
    unfold C
    simp [show (1179648 * k + 311794) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 155897) = 1769472 * k + 467692 := by
    unfold C
    simp [show (589824 * k + 155897) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 467692) = 884736 * k + 233846 := by
    unfold C
    simp [show (1769472 * k + 467692) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 233846) = 442368 * k + 116923 := by
    unfold C
    simp [show (884736 * k + 233846) % 2 = 0 by omega]
    omega
  have h8 : C (442368 * k + 116923) = 1327104 * k + 350770 := by
    unfold C
    simp [show (442368 * k + 116923) % 2 ≠ 0 by omega]
    omega
  have h9 : C (1327104 * k + 350770) = 663552 * k + 175385 := by
    unfold C
    simp [show (1327104 * k + 350770) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 175385) = 1990656 * k + 526156 := by
    unfold C
    simp [show (663552 * k + 175385) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 526156) = 995328 * k + 263078 := by
    unfold C
    simp [show (1990656 * k + 526156) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 263078) = 497664 * k + 131539 := by
    unfold C
    simp [show (995328 * k + 263078) % 2 = 0 by omega]
    omega
  have h13 : C (497664 * k + 131539) = 1492992 * k + 394618 := by
    unfold C
    simp [show (497664 * k + 131539) % 2 ≠ 0 by omega]
    omega
  have h14 : C (1492992 * k + 394618) = 746496 * k + 197309 := by
    unfold C
    simp [show (1492992 * k + 394618) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 197309) = 2239488 * k + 591928 := by
    unfold C
    simp [show (746496 * k + 197309) % 2 ≠ 0 by omega]
    omega
  have h16 : C (2239488 * k + 591928) = 1119744 * k + 295964 := by
    unfold C
    simp [show (2239488 * k + 591928) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 295964) = 559872 * k + 147982 := by
    unfold C
    simp [show (1119744 * k + 295964) % 2 = 0 by omega]
    omega
  have h18 : C (559872 * k + 147982) = 279936 * k + 73991 := by
    unfold C
    simp [show (559872 * k + 147982) % 2 = 0 by omega]
    omega
  have h19 : C (279936 * k + 73991) = 839808 * k + 221974 := by
    unfold C
    simp [show (279936 * k + 73991) % 2 ≠ 0 by omega]
    omega
  have h20 : C (839808 * k + 221974) = 419904 * k + 110987 := by
    unfold C
    simp [show (839808 * k + 221974) % 2 = 0 by omega]
    omega
  have h21 : C (419904 * k + 110987) = 1259712 * k + 332962 := by
    unfold C
    simp [show (419904 * k + 110987) % 2 ≠ 0 by omega]
    omega
  have h22 : C (1259712 * k + 332962) = 629856 * k + 166481 := by
    unfold C
    simp [show (1259712 * k + 332962) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 166481) = 1889568 * k + 499444 := by
    unfold C
    simp [show (629856 * k + 166481) % 2 ≠ 0 by omega]
    omega
  have h24 : C (1889568 * k + 499444) = 944784 * k + 249722 := by
    unfold C
    simp [show (1889568 * k + 499444) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 249722) = 472392 * k + 124861 := by
    unfold C
    simp [show (944784 * k + 249722) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 124861) = 1417176 * k + 374584 := by
    unfold C
    simp [show (472392 * k + 124861) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 374584) = 708588 * k + 187292 := by
    unfold C
    simp [show (1417176 * k + 374584) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 187292) = 354294 * k + 93646 := by
    unfold C
    simp [show (708588 * k + 187292) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 93646) = 177147 * k + 46823 := by
    unfold C
    simp [show (354294 * k + 93646) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 69287) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 69287))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_69403 : ∀ k : Nat,
    iterate (262144 * k + 69403) 29 = 177147 * k + 46901 ∧
      177147 * k + 46901 < 262144 * k + 69403 := by
  intro k
  have h1 : C (262144 * k + 69403) = 786432 * k + 208210 := by
    unfold C
    simp [show (262144 * k + 69403) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 208210) = 393216 * k + 104105 := by
    unfold C
    simp [show (786432 * k + 208210) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 104105) = 1179648 * k + 312316 := by
    unfold C
    simp [show (393216 * k + 104105) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 312316) = 589824 * k + 156158 := by
    unfold C
    simp [show (1179648 * k + 312316) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 156158) = 294912 * k + 78079 := by
    unfold C
    simp [show (589824 * k + 156158) % 2 = 0 by omega]
    omega
  have h6 : C (294912 * k + 78079) = 884736 * k + 234238 := by
    unfold C
    simp [show (294912 * k + 78079) % 2 ≠ 0 by omega]
    omega
  have h7 : C (884736 * k + 234238) = 442368 * k + 117119 := by
    unfold C
    simp [show (884736 * k + 234238) % 2 = 0 by omega]
    omega
  have h8 : C (442368 * k + 117119) = 1327104 * k + 351358 := by
    unfold C
    simp [show (442368 * k + 117119) % 2 ≠ 0 by omega]
    omega
  have h9 : C (1327104 * k + 351358) = 663552 * k + 175679 := by
    unfold C
    simp [show (1327104 * k + 351358) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 175679) = 1990656 * k + 527038 := by
    unfold C
    simp [show (663552 * k + 175679) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 527038) = 995328 * k + 263519 := by
    unfold C
    simp [show (1990656 * k + 527038) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 263519) = 2985984 * k + 790558 := by
    unfold C
    simp [show (995328 * k + 263519) % 2 ≠ 0 by omega]
    omega
  have h13 : C (2985984 * k + 790558) = 1492992 * k + 395279 := by
    unfold C
    simp [show (2985984 * k + 790558) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 395279) = 4478976 * k + 1185838 := by
    unfold C
    simp [show (1492992 * k + 395279) % 2 ≠ 0 by omega]
    omega
  have h15 : C (4478976 * k + 1185838) = 2239488 * k + 592919 := by
    unfold C
    simp [show (4478976 * k + 1185838) % 2 = 0 by omega]
    omega
  have h16 : C (2239488 * k + 592919) = 6718464 * k + 1778758 := by
    unfold C
    simp [show (2239488 * k + 592919) % 2 ≠ 0 by omega]
    omega
  have h17 : C (6718464 * k + 1778758) = 3359232 * k + 889379 := by
    unfold C
    simp [show (6718464 * k + 1778758) % 2 = 0 by omega]
    omega
  have h18 : C (3359232 * k + 889379) = 10077696 * k + 2668138 := by
    unfold C
    simp [show (3359232 * k + 889379) % 2 ≠ 0 by omega]
    omega
  have h19 : C (10077696 * k + 2668138) = 5038848 * k + 1334069 := by
    unfold C
    simp [show (10077696 * k + 2668138) % 2 = 0 by omega]
    omega
  have h20 : C (5038848 * k + 1334069) = 15116544 * k + 4002208 := by
    unfold C
    simp [show (5038848 * k + 1334069) % 2 ≠ 0 by omega]
    omega
  have h21 : C (15116544 * k + 4002208) = 7558272 * k + 2001104 := by
    unfold C
    simp [show (15116544 * k + 4002208) % 2 = 0 by omega]
    omega
  have h22 : C (7558272 * k + 2001104) = 3779136 * k + 1000552 := by
    unfold C
    simp [show (7558272 * k + 2001104) % 2 = 0 by omega]
    omega
  have h23 : C (3779136 * k + 1000552) = 1889568 * k + 500276 := by
    unfold C
    simp [show (3779136 * k + 1000552) % 2 = 0 by omega]
    omega
  have h24 : C (1889568 * k + 500276) = 944784 * k + 250138 := by
    unfold C
    simp [show (1889568 * k + 500276) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 250138) = 472392 * k + 125069 := by
    unfold C
    simp [show (944784 * k + 250138) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 125069) = 1417176 * k + 375208 := by
    unfold C
    simp [show (472392 * k + 125069) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 375208) = 708588 * k + 187604 := by
    unfold C
    simp [show (1417176 * k + 375208) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 187604) = 354294 * k + 93802 := by
    unfold C
    simp [show (708588 * k + 187604) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 93802) = 177147 * k + 46901 := by
    unfold C
    simp [show (354294 * k + 93802) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 69403) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 69403))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_69407 : ∀ k : Nat,
    iterate (262144 * k + 69407) 29 = 177147 * k + 46904 ∧
      177147 * k + 46904 < 262144 * k + 69407 := by
  intro k
  have h1 : C (262144 * k + 69407) = 786432 * k + 208222 := by
    unfold C
    simp [show (262144 * k + 69407) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 208222) = 393216 * k + 104111 := by
    unfold C
    simp [show (786432 * k + 208222) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 104111) = 1179648 * k + 312334 := by
    unfold C
    simp [show (393216 * k + 104111) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 312334) = 589824 * k + 156167 := by
    unfold C
    simp [show (1179648 * k + 312334) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 156167) = 1769472 * k + 468502 := by
    unfold C
    simp [show (589824 * k + 156167) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 468502) = 884736 * k + 234251 := by
    unfold C
    simp [show (1769472 * k + 468502) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 234251) = 2654208 * k + 702754 := by
    unfold C
    simp [show (884736 * k + 234251) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 702754) = 1327104 * k + 351377 := by
    unfold C
    simp [show (2654208 * k + 702754) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 351377) = 3981312 * k + 1054132 := by
    unfold C
    simp [show (1327104 * k + 351377) % 2 ≠ 0 by omega]
    omega
  have h10 : C (3981312 * k + 1054132) = 1990656 * k + 527066 := by
    unfold C
    simp [show (3981312 * k + 1054132) % 2 = 0 by omega]
    omega
  have h11 : C (1990656 * k + 527066) = 995328 * k + 263533 := by
    unfold C
    simp [show (1990656 * k + 527066) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 263533) = 2985984 * k + 790600 := by
    unfold C
    simp [show (995328 * k + 263533) % 2 ≠ 0 by omega]
    omega
  have h13 : C (2985984 * k + 790600) = 1492992 * k + 395300 := by
    unfold C
    simp [show (2985984 * k + 790600) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 395300) = 746496 * k + 197650 := by
    unfold C
    simp [show (1492992 * k + 395300) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 197650) = 373248 * k + 98825 := by
    unfold C
    simp [show (746496 * k + 197650) % 2 = 0 by omega]
    omega
  have h16 : C (373248 * k + 98825) = 1119744 * k + 296476 := by
    unfold C
    simp [show (373248 * k + 98825) % 2 ≠ 0 by omega]
    omega
  have h17 : C (1119744 * k + 296476) = 559872 * k + 148238 := by
    unfold C
    simp [show (1119744 * k + 296476) % 2 = 0 by omega]
    omega
  have h18 : C (559872 * k + 148238) = 279936 * k + 74119 := by
    unfold C
    simp [show (559872 * k + 148238) % 2 = 0 by omega]
    omega
  have h19 : C (279936 * k + 74119) = 839808 * k + 222358 := by
    unfold C
    simp [show (279936 * k + 74119) % 2 ≠ 0 by omega]
    omega
  have h20 : C (839808 * k + 222358) = 419904 * k + 111179 := by
    unfold C
    simp [show (839808 * k + 222358) % 2 = 0 by omega]
    omega
  have h21 : C (419904 * k + 111179) = 1259712 * k + 333538 := by
    unfold C
    simp [show (419904 * k + 111179) % 2 ≠ 0 by omega]
    omega
  have h22 : C (1259712 * k + 333538) = 629856 * k + 166769 := by
    unfold C
    simp [show (1259712 * k + 333538) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 166769) = 1889568 * k + 500308 := by
    unfold C
    simp [show (629856 * k + 166769) % 2 ≠ 0 by omega]
    omega
  have h24 : C (1889568 * k + 500308) = 944784 * k + 250154 := by
    unfold C
    simp [show (1889568 * k + 500308) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 250154) = 472392 * k + 125077 := by
    unfold C
    simp [show (944784 * k + 250154) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 125077) = 1417176 * k + 375232 := by
    unfold C
    simp [show (472392 * k + 125077) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 375232) = 708588 * k + 187616 := by
    unfold C
    simp [show (1417176 * k + 375232) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 187616) = 354294 * k + 93808 := by
    unfold C
    simp [show (708588 * k + 187616) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 93808) = 177147 * k + 46904 := by
    unfold C
    simp [show (354294 * k + 93808) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 69407) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 69407))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_69487 : ∀ k : Nat,
    iterate (262144 * k + 69487) 29 = 177147 * k + 46958 ∧
      177147 * k + 46958 < 262144 * k + 69487 := by
  intro k
  have h1 : C (262144 * k + 69487) = 786432 * k + 208462 := by
    unfold C
    simp [show (262144 * k + 69487) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 208462) = 393216 * k + 104231 := by
    unfold C
    simp [show (786432 * k + 208462) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 104231) = 1179648 * k + 312694 := by
    unfold C
    simp [show (393216 * k + 104231) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 312694) = 589824 * k + 156347 := by
    unfold C
    simp [show (1179648 * k + 312694) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 156347) = 1769472 * k + 469042 := by
    unfold C
    simp [show (589824 * k + 156347) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 469042) = 884736 * k + 234521 := by
    unfold C
    simp [show (1769472 * k + 469042) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 234521) = 2654208 * k + 703564 := by
    unfold C
    simp [show (884736 * k + 234521) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 703564) = 1327104 * k + 351782 := by
    unfold C
    simp [show (2654208 * k + 703564) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 351782) = 663552 * k + 175891 := by
    unfold C
    simp [show (1327104 * k + 351782) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 175891) = 1990656 * k + 527674 := by
    unfold C
    simp [show (663552 * k + 175891) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 527674) = 995328 * k + 263837 := by
    unfold C
    simp [show (1990656 * k + 527674) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 263837) = 2985984 * k + 791512 := by
    unfold C
    simp [show (995328 * k + 263837) % 2 ≠ 0 by omega]
    omega
  have h13 : C (2985984 * k + 791512) = 1492992 * k + 395756 := by
    unfold C
    simp [show (2985984 * k + 791512) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 395756) = 746496 * k + 197878 := by
    unfold C
    simp [show (1492992 * k + 395756) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 197878) = 373248 * k + 98939 := by
    unfold C
    simp [show (746496 * k + 197878) % 2 = 0 by omega]
    omega
  have h16 : C (373248 * k + 98939) = 1119744 * k + 296818 := by
    unfold C
    simp [show (373248 * k + 98939) % 2 ≠ 0 by omega]
    omega
  have h17 : C (1119744 * k + 296818) = 559872 * k + 148409 := by
    unfold C
    simp [show (1119744 * k + 296818) % 2 = 0 by omega]
    omega
  have h18 : C (559872 * k + 148409) = 1679616 * k + 445228 := by
    unfold C
    simp [show (559872 * k + 148409) % 2 ≠ 0 by omega]
    omega
  have h19 : C (1679616 * k + 445228) = 839808 * k + 222614 := by
    unfold C
    simp [show (1679616 * k + 445228) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 222614) = 419904 * k + 111307 := by
    unfold C
    simp [show (839808 * k + 222614) % 2 = 0 by omega]
    omega
  have h21 : C (419904 * k + 111307) = 1259712 * k + 333922 := by
    unfold C
    simp [show (419904 * k + 111307) % 2 ≠ 0 by omega]
    omega
  have h22 : C (1259712 * k + 333922) = 629856 * k + 166961 := by
    unfold C
    simp [show (1259712 * k + 333922) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 166961) = 1889568 * k + 500884 := by
    unfold C
    simp [show (629856 * k + 166961) % 2 ≠ 0 by omega]
    omega
  have h24 : C (1889568 * k + 500884) = 944784 * k + 250442 := by
    unfold C
    simp [show (1889568 * k + 500884) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 250442) = 472392 * k + 125221 := by
    unfold C
    simp [show (944784 * k + 250442) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 125221) = 1417176 * k + 375664 := by
    unfold C
    simp [show (472392 * k + 125221) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 375664) = 708588 * k + 187832 := by
    unfold C
    simp [show (1417176 * k + 375664) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 187832) = 354294 * k + 93916 := by
    unfold C
    simp [show (708588 * k + 187832) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 93916) = 177147 * k + 46958 := by
    unfold C
    simp [show (354294 * k + 93916) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 69487) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 69487))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_69703 : ∀ k : Nat,
    iterate (262144 * k + 69703) 29 = 177147 * k + 47104 ∧
      177147 * k + 47104 < 262144 * k + 69703 := by
  intro k
  have h1 : C (262144 * k + 69703) = 786432 * k + 209110 := by
    unfold C
    simp [show (262144 * k + 69703) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 209110) = 393216 * k + 104555 := by
    unfold C
    simp [show (786432 * k + 209110) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 104555) = 1179648 * k + 313666 := by
    unfold C
    simp [show (393216 * k + 104555) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 313666) = 589824 * k + 156833 := by
    unfold C
    simp [show (1179648 * k + 313666) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 156833) = 1769472 * k + 470500 := by
    unfold C
    simp [show (589824 * k + 156833) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 470500) = 884736 * k + 235250 := by
    unfold C
    simp [show (1769472 * k + 470500) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 235250) = 442368 * k + 117625 := by
    unfold C
    simp [show (884736 * k + 235250) % 2 = 0 by omega]
    omega
  have h8 : C (442368 * k + 117625) = 1327104 * k + 352876 := by
    unfold C
    simp [show (442368 * k + 117625) % 2 ≠ 0 by omega]
    omega
  have h9 : C (1327104 * k + 352876) = 663552 * k + 176438 := by
    unfold C
    simp [show (1327104 * k + 352876) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 176438) = 331776 * k + 88219 := by
    unfold C
    simp [show (663552 * k + 176438) % 2 = 0 by omega]
    omega
  have h11 : C (331776 * k + 88219) = 995328 * k + 264658 := by
    unfold C
    simp [show (331776 * k + 88219) % 2 ≠ 0 by omega]
    omega
  have h12 : C (995328 * k + 264658) = 497664 * k + 132329 := by
    unfold C
    simp [show (995328 * k + 264658) % 2 = 0 by omega]
    omega
  have h13 : C (497664 * k + 132329) = 1492992 * k + 396988 := by
    unfold C
    simp [show (497664 * k + 132329) % 2 ≠ 0 by omega]
    omega
  have h14 : C (1492992 * k + 396988) = 746496 * k + 198494 := by
    unfold C
    simp [show (1492992 * k + 396988) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 198494) = 373248 * k + 99247 := by
    unfold C
    simp [show (746496 * k + 198494) % 2 = 0 by omega]
    omega
  have h16 : C (373248 * k + 99247) = 1119744 * k + 297742 := by
    unfold C
    simp [show (373248 * k + 99247) % 2 ≠ 0 by omega]
    omega
  have h17 : C (1119744 * k + 297742) = 559872 * k + 148871 := by
    unfold C
    simp [show (1119744 * k + 297742) % 2 = 0 by omega]
    omega
  have h18 : C (559872 * k + 148871) = 1679616 * k + 446614 := by
    unfold C
    simp [show (559872 * k + 148871) % 2 ≠ 0 by omega]
    omega
  have h19 : C (1679616 * k + 446614) = 839808 * k + 223307 := by
    unfold C
    simp [show (1679616 * k + 446614) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 223307) = 2519424 * k + 669922 := by
    unfold C
    simp [show (839808 * k + 223307) % 2 ≠ 0 by omega]
    omega
  have h21 : C (2519424 * k + 669922) = 1259712 * k + 334961 := by
    unfold C
    simp [show (2519424 * k + 669922) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 334961) = 3779136 * k + 1004884 := by
    unfold C
    simp [show (1259712 * k + 334961) % 2 ≠ 0 by omega]
    omega
  have h23 : C (3779136 * k + 1004884) = 1889568 * k + 502442 := by
    unfold C
    simp [show (3779136 * k + 1004884) % 2 = 0 by omega]
    omega
  have h24 : C (1889568 * k + 502442) = 944784 * k + 251221 := by
    unfold C
    simp [show (1889568 * k + 502442) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 251221) = 2834352 * k + 753664 := by
    unfold C
    simp [show (944784 * k + 251221) % 2 ≠ 0 by omega]
    omega
  have h26 : C (2834352 * k + 753664) = 1417176 * k + 376832 := by
    unfold C
    simp [show (2834352 * k + 753664) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 376832) = 708588 * k + 188416 := by
    unfold C
    simp [show (1417176 * k + 376832) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 188416) = 354294 * k + 94208 := by
    unfold C
    simp [show (708588 * k + 188416) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 94208) = 177147 * k + 47104 := by
    unfold C
    simp [show (354294 * k + 94208) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 69703) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 69703))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_69887 : ∀ k : Nat,
    iterate (262144 * k + 69887) 29 = 177147 * k + 47228 ∧
      177147 * k + 47228 < 262144 * k + 69887 := by
  intro k
  have h1 : C (262144 * k + 69887) = 786432 * k + 209662 := by
    unfold C
    simp [show (262144 * k + 69887) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 209662) = 393216 * k + 104831 := by
    unfold C
    simp [show (786432 * k + 209662) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 104831) = 1179648 * k + 314494 := by
    unfold C
    simp [show (393216 * k + 104831) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 314494) = 589824 * k + 157247 := by
    unfold C
    simp [show (1179648 * k + 314494) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 157247) = 1769472 * k + 471742 := by
    unfold C
    simp [show (589824 * k + 157247) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 471742) = 884736 * k + 235871 := by
    unfold C
    simp [show (1769472 * k + 471742) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 235871) = 2654208 * k + 707614 := by
    unfold C
    simp [show (884736 * k + 235871) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 707614) = 1327104 * k + 353807 := by
    unfold C
    simp [show (2654208 * k + 707614) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 353807) = 3981312 * k + 1061422 := by
    unfold C
    simp [show (1327104 * k + 353807) % 2 ≠ 0 by omega]
    omega
  have h10 : C (3981312 * k + 1061422) = 1990656 * k + 530711 := by
    unfold C
    simp [show (3981312 * k + 1061422) % 2 = 0 by omega]
    omega
  have h11 : C (1990656 * k + 530711) = 5971968 * k + 1592134 := by
    unfold C
    simp [show (1990656 * k + 530711) % 2 ≠ 0 by omega]
    omega
  have h12 : C (5971968 * k + 1592134) = 2985984 * k + 796067 := by
    unfold C
    simp [show (5971968 * k + 1592134) % 2 = 0 by omega]
    omega
  have h13 : C (2985984 * k + 796067) = 8957952 * k + 2388202 := by
    unfold C
    simp [show (2985984 * k + 796067) % 2 ≠ 0 by omega]
    omega
  have h14 : C (8957952 * k + 2388202) = 4478976 * k + 1194101 := by
    unfold C
    simp [show (8957952 * k + 2388202) % 2 = 0 by omega]
    omega
  have h15 : C (4478976 * k + 1194101) = 13436928 * k + 3582304 := by
    unfold C
    simp [show (4478976 * k + 1194101) % 2 ≠ 0 by omega]
    omega
  have h16 : C (13436928 * k + 3582304) = 6718464 * k + 1791152 := by
    unfold C
    simp [show (13436928 * k + 3582304) % 2 = 0 by omega]
    omega
  have h17 : C (6718464 * k + 1791152) = 3359232 * k + 895576 := by
    unfold C
    simp [show (6718464 * k + 1791152) % 2 = 0 by omega]
    omega
  have h18 : C (3359232 * k + 895576) = 1679616 * k + 447788 := by
    unfold C
    simp [show (3359232 * k + 895576) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 447788) = 839808 * k + 223894 := by
    unfold C
    simp [show (1679616 * k + 447788) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 223894) = 419904 * k + 111947 := by
    unfold C
    simp [show (839808 * k + 223894) % 2 = 0 by omega]
    omega
  have h21 : C (419904 * k + 111947) = 1259712 * k + 335842 := by
    unfold C
    simp [show (419904 * k + 111947) % 2 ≠ 0 by omega]
    omega
  have h22 : C (1259712 * k + 335842) = 629856 * k + 167921 := by
    unfold C
    simp [show (1259712 * k + 335842) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 167921) = 1889568 * k + 503764 := by
    unfold C
    simp [show (629856 * k + 167921) % 2 ≠ 0 by omega]
    omega
  have h24 : C (1889568 * k + 503764) = 944784 * k + 251882 := by
    unfold C
    simp [show (1889568 * k + 503764) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 251882) = 472392 * k + 125941 := by
    unfold C
    simp [show (944784 * k + 251882) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 125941) = 1417176 * k + 377824 := by
    unfold C
    simp [show (472392 * k + 125941) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 377824) = 708588 * k + 188912 := by
    unfold C
    simp [show (1417176 * k + 377824) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 188912) = 354294 * k + 94456 := by
    unfold C
    simp [show (708588 * k + 188912) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 94456) = 177147 * k + 47228 := by
    unfold C
    simp [show (354294 * k + 94456) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 69887) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 69887))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_69935 : ∀ k : Nat,
    iterate (262144 * k + 69935) 29 = 177147 * k + 47261 ∧
      177147 * k + 47261 < 262144 * k + 69935 := by
  intro k
  have h1 : C (262144 * k + 69935) = 786432 * k + 209806 := by
    unfold C
    simp [show (262144 * k + 69935) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 209806) = 393216 * k + 104903 := by
    unfold C
    simp [show (786432 * k + 209806) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 104903) = 1179648 * k + 314710 := by
    unfold C
    simp [show (393216 * k + 104903) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 314710) = 589824 * k + 157355 := by
    unfold C
    simp [show (1179648 * k + 314710) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 157355) = 1769472 * k + 472066 := by
    unfold C
    simp [show (589824 * k + 157355) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 472066) = 884736 * k + 236033 := by
    unfold C
    simp [show (1769472 * k + 472066) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 236033) = 2654208 * k + 708100 := by
    unfold C
    simp [show (884736 * k + 236033) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 708100) = 1327104 * k + 354050 := by
    unfold C
    simp [show (2654208 * k + 708100) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 354050) = 663552 * k + 177025 := by
    unfold C
    simp [show (1327104 * k + 354050) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 177025) = 1990656 * k + 531076 := by
    unfold C
    simp [show (663552 * k + 177025) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 531076) = 995328 * k + 265538 := by
    unfold C
    simp [show (1990656 * k + 531076) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 265538) = 497664 * k + 132769 := by
    unfold C
    simp [show (995328 * k + 265538) % 2 = 0 by omega]
    omega
  have h13 : C (497664 * k + 132769) = 1492992 * k + 398308 := by
    unfold C
    simp [show (497664 * k + 132769) % 2 ≠ 0 by omega]
    omega
  have h14 : C (1492992 * k + 398308) = 746496 * k + 199154 := by
    unfold C
    simp [show (1492992 * k + 398308) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 199154) = 373248 * k + 99577 := by
    unfold C
    simp [show (746496 * k + 199154) % 2 = 0 by omega]
    omega
  have h16 : C (373248 * k + 99577) = 1119744 * k + 298732 := by
    unfold C
    simp [show (373248 * k + 99577) % 2 ≠ 0 by omega]
    omega
  have h17 : C (1119744 * k + 298732) = 559872 * k + 149366 := by
    unfold C
    simp [show (1119744 * k + 298732) % 2 = 0 by omega]
    omega
  have h18 : C (559872 * k + 149366) = 279936 * k + 74683 := by
    unfold C
    simp [show (559872 * k + 149366) % 2 = 0 by omega]
    omega
  have h19 : C (279936 * k + 74683) = 839808 * k + 224050 := by
    unfold C
    simp [show (279936 * k + 74683) % 2 ≠ 0 by omega]
    omega
  have h20 : C (839808 * k + 224050) = 419904 * k + 112025 := by
    unfold C
    simp [show (839808 * k + 224050) % 2 = 0 by omega]
    omega
  have h21 : C (419904 * k + 112025) = 1259712 * k + 336076 := by
    unfold C
    simp [show (419904 * k + 112025) % 2 ≠ 0 by omega]
    omega
  have h22 : C (1259712 * k + 336076) = 629856 * k + 168038 := by
    unfold C
    simp [show (1259712 * k + 336076) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 168038) = 314928 * k + 84019 := by
    unfold C
    simp [show (629856 * k + 168038) % 2 = 0 by omega]
    omega
  have h24 : C (314928 * k + 84019) = 944784 * k + 252058 := by
    unfold C
    simp [show (314928 * k + 84019) % 2 ≠ 0 by omega]
    omega
  have h25 : C (944784 * k + 252058) = 472392 * k + 126029 := by
    unfold C
    simp [show (944784 * k + 252058) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 126029) = 1417176 * k + 378088 := by
    unfold C
    simp [show (472392 * k + 126029) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 378088) = 708588 * k + 189044 := by
    unfold C
    simp [show (1417176 * k + 378088) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 189044) = 354294 * k + 94522 := by
    unfold C
    simp [show (708588 * k + 189044) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 94522) = 177147 * k + 47261 := by
    unfold C
    simp [show (354294 * k + 94522) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 69935) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 69935))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_70047 : ∀ k : Nat,
    iterate (262144 * k + 70047) 29 = 177147 * k + 47336 ∧
      177147 * k + 47336 < 262144 * k + 70047 := by
  intro k
  have h1 : C (262144 * k + 70047) = 786432 * k + 210142 := by
    unfold C
    simp [show (262144 * k + 70047) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 210142) = 393216 * k + 105071 := by
    unfold C
    simp [show (786432 * k + 210142) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 105071) = 1179648 * k + 315214 := by
    unfold C
    simp [show (393216 * k + 105071) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 315214) = 589824 * k + 157607 := by
    unfold C
    simp [show (1179648 * k + 315214) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 157607) = 1769472 * k + 472822 := by
    unfold C
    simp [show (589824 * k + 157607) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 472822) = 884736 * k + 236411 := by
    unfold C
    simp [show (1769472 * k + 472822) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 236411) = 2654208 * k + 709234 := by
    unfold C
    simp [show (884736 * k + 236411) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 709234) = 1327104 * k + 354617 := by
    unfold C
    simp [show (2654208 * k + 709234) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 354617) = 3981312 * k + 1063852 := by
    unfold C
    simp [show (1327104 * k + 354617) % 2 ≠ 0 by omega]
    omega
  have h10 : C (3981312 * k + 1063852) = 1990656 * k + 531926 := by
    unfold C
    simp [show (3981312 * k + 1063852) % 2 = 0 by omega]
    omega
  have h11 : C (1990656 * k + 531926) = 995328 * k + 265963 := by
    unfold C
    simp [show (1990656 * k + 531926) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 265963) = 2985984 * k + 797890 := by
    unfold C
    simp [show (995328 * k + 265963) % 2 ≠ 0 by omega]
    omega
  have h13 : C (2985984 * k + 797890) = 1492992 * k + 398945 := by
    unfold C
    simp [show (2985984 * k + 797890) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 398945) = 4478976 * k + 1196836 := by
    unfold C
    simp [show (1492992 * k + 398945) % 2 ≠ 0 by omega]
    omega
  have h15 : C (4478976 * k + 1196836) = 2239488 * k + 598418 := by
    unfold C
    simp [show (4478976 * k + 1196836) % 2 = 0 by omega]
    omega
  have h16 : C (2239488 * k + 598418) = 1119744 * k + 299209 := by
    unfold C
    simp [show (2239488 * k + 598418) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 299209) = 3359232 * k + 897628 := by
    unfold C
    simp [show (1119744 * k + 299209) % 2 ≠ 0 by omega]
    omega
  have h18 : C (3359232 * k + 897628) = 1679616 * k + 448814 := by
    unfold C
    simp [show (3359232 * k + 897628) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 448814) = 839808 * k + 224407 := by
    unfold C
    simp [show (1679616 * k + 448814) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 224407) = 2519424 * k + 673222 := by
    unfold C
    simp [show (839808 * k + 224407) % 2 ≠ 0 by omega]
    omega
  have h21 : C (2519424 * k + 673222) = 1259712 * k + 336611 := by
    unfold C
    simp [show (2519424 * k + 673222) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 336611) = 3779136 * k + 1009834 := by
    unfold C
    simp [show (1259712 * k + 336611) % 2 ≠ 0 by omega]
    omega
  have h23 : C (3779136 * k + 1009834) = 1889568 * k + 504917 := by
    unfold C
    simp [show (3779136 * k + 1009834) % 2 = 0 by omega]
    omega
  have h24 : C (1889568 * k + 504917) = 5668704 * k + 1514752 := by
    unfold C
    simp [show (1889568 * k + 504917) % 2 ≠ 0 by omega]
    omega
  have h25 : C (5668704 * k + 1514752) = 2834352 * k + 757376 := by
    unfold C
    simp [show (5668704 * k + 1514752) % 2 = 0 by omega]
    omega
  have h26 : C (2834352 * k + 757376) = 1417176 * k + 378688 := by
    unfold C
    simp [show (2834352 * k + 757376) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 378688) = 708588 * k + 189344 := by
    unfold C
    simp [show (1417176 * k + 378688) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 189344) = 354294 * k + 94672 := by
    unfold C
    simp [show (708588 * k + 189344) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 94672) = 177147 * k + 47336 := by
    unfold C
    simp [show (354294 * k + 94672) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 70047) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 70047))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_70175 : ∀ k : Nat,
    iterate (262144 * k + 70175) 29 = 177147 * k + 47423 ∧
      177147 * k + 47423 < 262144 * k + 70175 := by
  intro k
  have h1 : C (262144 * k + 70175) = 786432 * k + 210526 := by
    unfold C
    simp [show (262144 * k + 70175) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 210526) = 393216 * k + 105263 := by
    unfold C
    simp [show (786432 * k + 210526) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 105263) = 1179648 * k + 315790 := by
    unfold C
    simp [show (393216 * k + 105263) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 315790) = 589824 * k + 157895 := by
    unfold C
    simp [show (1179648 * k + 315790) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 157895) = 1769472 * k + 473686 := by
    unfold C
    simp [show (589824 * k + 157895) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 473686) = 884736 * k + 236843 := by
    unfold C
    simp [show (1769472 * k + 473686) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 236843) = 2654208 * k + 710530 := by
    unfold C
    simp [show (884736 * k + 236843) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 710530) = 1327104 * k + 355265 := by
    unfold C
    simp [show (2654208 * k + 710530) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 355265) = 3981312 * k + 1065796 := by
    unfold C
    simp [show (1327104 * k + 355265) % 2 ≠ 0 by omega]
    omega
  have h10 : C (3981312 * k + 1065796) = 1990656 * k + 532898 := by
    unfold C
    simp [show (3981312 * k + 1065796) % 2 = 0 by omega]
    omega
  have h11 : C (1990656 * k + 532898) = 995328 * k + 266449 := by
    unfold C
    simp [show (1990656 * k + 532898) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 266449) = 2985984 * k + 799348 := by
    unfold C
    simp [show (995328 * k + 266449) % 2 ≠ 0 by omega]
    omega
  have h13 : C (2985984 * k + 799348) = 1492992 * k + 399674 := by
    unfold C
    simp [show (2985984 * k + 799348) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 399674) = 746496 * k + 199837 := by
    unfold C
    simp [show (1492992 * k + 399674) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 199837) = 2239488 * k + 599512 := by
    unfold C
    simp [show (746496 * k + 199837) % 2 ≠ 0 by omega]
    omega
  have h16 : C (2239488 * k + 599512) = 1119744 * k + 299756 := by
    unfold C
    simp [show (2239488 * k + 599512) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 299756) = 559872 * k + 149878 := by
    unfold C
    simp [show (1119744 * k + 299756) % 2 = 0 by omega]
    omega
  have h18 : C (559872 * k + 149878) = 279936 * k + 74939 := by
    unfold C
    simp [show (559872 * k + 149878) % 2 = 0 by omega]
    omega
  have h19 : C (279936 * k + 74939) = 839808 * k + 224818 := by
    unfold C
    simp [show (279936 * k + 74939) % 2 ≠ 0 by omega]
    omega
  have h20 : C (839808 * k + 224818) = 419904 * k + 112409 := by
    unfold C
    simp [show (839808 * k + 224818) % 2 = 0 by omega]
    omega
  have h21 : C (419904 * k + 112409) = 1259712 * k + 337228 := by
    unfold C
    simp [show (419904 * k + 112409) % 2 ≠ 0 by omega]
    omega
  have h22 : C (1259712 * k + 337228) = 629856 * k + 168614 := by
    unfold C
    simp [show (1259712 * k + 337228) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 168614) = 314928 * k + 84307 := by
    unfold C
    simp [show (629856 * k + 168614) % 2 = 0 by omega]
    omega
  have h24 : C (314928 * k + 84307) = 944784 * k + 252922 := by
    unfold C
    simp [show (314928 * k + 84307) % 2 ≠ 0 by omega]
    omega
  have h25 : C (944784 * k + 252922) = 472392 * k + 126461 := by
    unfold C
    simp [show (944784 * k + 252922) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 126461) = 1417176 * k + 379384 := by
    unfold C
    simp [show (472392 * k + 126461) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 379384) = 708588 * k + 189692 := by
    unfold C
    simp [show (1417176 * k + 379384) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 189692) = 354294 * k + 94846 := by
    unfold C
    simp [show (708588 * k + 189692) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 94846) = 177147 * k + 47423 := by
    unfold C
    simp [show (354294 * k + 94846) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 70175) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 70175))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_70255 : ∀ k : Nat,
    iterate (262144 * k + 70255) 29 = 177147 * k + 47477 ∧
      177147 * k + 47477 < 262144 * k + 70255 := by
  intro k
  have h1 : C (262144 * k + 70255) = 786432 * k + 210766 := by
    unfold C
    simp [show (262144 * k + 70255) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 210766) = 393216 * k + 105383 := by
    unfold C
    simp [show (786432 * k + 210766) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 105383) = 1179648 * k + 316150 := by
    unfold C
    simp [show (393216 * k + 105383) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 316150) = 589824 * k + 158075 := by
    unfold C
    simp [show (1179648 * k + 316150) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 158075) = 1769472 * k + 474226 := by
    unfold C
    simp [show (589824 * k + 158075) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 474226) = 884736 * k + 237113 := by
    unfold C
    simp [show (1769472 * k + 474226) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 237113) = 2654208 * k + 711340 := by
    unfold C
    simp [show (884736 * k + 237113) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 711340) = 1327104 * k + 355670 := by
    unfold C
    simp [show (2654208 * k + 711340) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 355670) = 663552 * k + 177835 := by
    unfold C
    simp [show (1327104 * k + 355670) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 177835) = 1990656 * k + 533506 := by
    unfold C
    simp [show (663552 * k + 177835) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 533506) = 995328 * k + 266753 := by
    unfold C
    simp [show (1990656 * k + 533506) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 266753) = 2985984 * k + 800260 := by
    unfold C
    simp [show (995328 * k + 266753) % 2 ≠ 0 by omega]
    omega
  have h13 : C (2985984 * k + 800260) = 1492992 * k + 400130 := by
    unfold C
    simp [show (2985984 * k + 800260) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 400130) = 746496 * k + 200065 := by
    unfold C
    simp [show (1492992 * k + 400130) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 200065) = 2239488 * k + 600196 := by
    unfold C
    simp [show (746496 * k + 200065) % 2 ≠ 0 by omega]
    omega
  have h16 : C (2239488 * k + 600196) = 1119744 * k + 300098 := by
    unfold C
    simp [show (2239488 * k + 600196) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 300098) = 559872 * k + 150049 := by
    unfold C
    simp [show (1119744 * k + 300098) % 2 = 0 by omega]
    omega
  have h18 : C (559872 * k + 150049) = 1679616 * k + 450148 := by
    unfold C
    simp [show (559872 * k + 150049) % 2 ≠ 0 by omega]
    omega
  have h19 : C (1679616 * k + 450148) = 839808 * k + 225074 := by
    unfold C
    simp [show (1679616 * k + 450148) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 225074) = 419904 * k + 112537 := by
    unfold C
    simp [show (839808 * k + 225074) % 2 = 0 by omega]
    omega
  have h21 : C (419904 * k + 112537) = 1259712 * k + 337612 := by
    unfold C
    simp [show (419904 * k + 112537) % 2 ≠ 0 by omega]
    omega
  have h22 : C (1259712 * k + 337612) = 629856 * k + 168806 := by
    unfold C
    simp [show (1259712 * k + 337612) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 168806) = 314928 * k + 84403 := by
    unfold C
    simp [show (629856 * k + 168806) % 2 = 0 by omega]
    omega
  have h24 : C (314928 * k + 84403) = 944784 * k + 253210 := by
    unfold C
    simp [show (314928 * k + 84403) % 2 ≠ 0 by omega]
    omega
  have h25 : C (944784 * k + 253210) = 472392 * k + 126605 := by
    unfold C
    simp [show (944784 * k + 253210) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 126605) = 1417176 * k + 379816 := by
    unfold C
    simp [show (472392 * k + 126605) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 379816) = 708588 * k + 189908 := by
    unfold C
    simp [show (1417176 * k + 379816) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 189908) = 354294 * k + 94954 := by
    unfold C
    simp [show (708588 * k + 189908) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 94954) = 177147 * k + 47477 := by
    unfold C
    simp [show (354294 * k + 94954) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 70255) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 70255))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_70303 : ∀ k : Nat,
    iterate (262144 * k + 70303) 29 = 177147 * k + 47509 ∧
      177147 * k + 47509 < 262144 * k + 70303 := by
  intro k
  have h1 : C (262144 * k + 70303) = 786432 * k + 210910 := by
    unfold C
    simp [show (262144 * k + 70303) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 210910) = 393216 * k + 105455 := by
    unfold C
    simp [show (786432 * k + 210910) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 105455) = 1179648 * k + 316366 := by
    unfold C
    simp [show (393216 * k + 105455) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 316366) = 589824 * k + 158183 := by
    unfold C
    simp [show (1179648 * k + 316366) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 158183) = 1769472 * k + 474550 := by
    unfold C
    simp [show (589824 * k + 158183) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 474550) = 884736 * k + 237275 := by
    unfold C
    simp [show (1769472 * k + 474550) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 237275) = 2654208 * k + 711826 := by
    unfold C
    simp [show (884736 * k + 237275) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 711826) = 1327104 * k + 355913 := by
    unfold C
    simp [show (2654208 * k + 711826) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 355913) = 3981312 * k + 1067740 := by
    unfold C
    simp [show (1327104 * k + 355913) % 2 ≠ 0 by omega]
    omega
  have h10 : C (3981312 * k + 1067740) = 1990656 * k + 533870 := by
    unfold C
    simp [show (3981312 * k + 1067740) % 2 = 0 by omega]
    omega
  have h11 : C (1990656 * k + 533870) = 995328 * k + 266935 := by
    unfold C
    simp [show (1990656 * k + 533870) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 266935) = 2985984 * k + 800806 := by
    unfold C
    simp [show (995328 * k + 266935) % 2 ≠ 0 by omega]
    omega
  have h13 : C (2985984 * k + 800806) = 1492992 * k + 400403 := by
    unfold C
    simp [show (2985984 * k + 800806) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 400403) = 4478976 * k + 1201210 := by
    unfold C
    simp [show (1492992 * k + 400403) % 2 ≠ 0 by omega]
    omega
  have h15 : C (4478976 * k + 1201210) = 2239488 * k + 600605 := by
    unfold C
    simp [show (4478976 * k + 1201210) % 2 = 0 by omega]
    omega
  have h16 : C (2239488 * k + 600605) = 6718464 * k + 1801816 := by
    unfold C
    simp [show (2239488 * k + 600605) % 2 ≠ 0 by omega]
    omega
  have h17 : C (6718464 * k + 1801816) = 3359232 * k + 900908 := by
    unfold C
    simp [show (6718464 * k + 1801816) % 2 = 0 by omega]
    omega
  have h18 : C (3359232 * k + 900908) = 1679616 * k + 450454 := by
    unfold C
    simp [show (3359232 * k + 900908) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 450454) = 839808 * k + 225227 := by
    unfold C
    simp [show (1679616 * k + 450454) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 225227) = 2519424 * k + 675682 := by
    unfold C
    simp [show (839808 * k + 225227) % 2 ≠ 0 by omega]
    omega
  have h21 : C (2519424 * k + 675682) = 1259712 * k + 337841 := by
    unfold C
    simp [show (2519424 * k + 675682) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 337841) = 3779136 * k + 1013524 := by
    unfold C
    simp [show (1259712 * k + 337841) % 2 ≠ 0 by omega]
    omega
  have h23 : C (3779136 * k + 1013524) = 1889568 * k + 506762 := by
    unfold C
    simp [show (3779136 * k + 1013524) % 2 = 0 by omega]
    omega
  have h24 : C (1889568 * k + 506762) = 944784 * k + 253381 := by
    unfold C
    simp [show (1889568 * k + 506762) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 253381) = 2834352 * k + 760144 := by
    unfold C
    simp [show (944784 * k + 253381) % 2 ≠ 0 by omega]
    omega
  have h26 : C (2834352 * k + 760144) = 1417176 * k + 380072 := by
    unfold C
    simp [show (2834352 * k + 760144) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 380072) = 708588 * k + 190036 := by
    unfold C
    simp [show (1417176 * k + 380072) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 190036) = 354294 * k + 95018 := by
    unfold C
    simp [show (708588 * k + 190036) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 95018) = 177147 * k + 47509 := by
    unfold C
    simp [show (354294 * k + 95018) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 70303) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 70303))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_70375 : ∀ k : Nat,
    iterate (262144 * k + 70375) 29 = 177147 * k + 47558 ∧
      177147 * k + 47558 < 262144 * k + 70375 := by
  intro k
  have h1 : C (262144 * k + 70375) = 786432 * k + 211126 := by
    unfold C
    simp [show (262144 * k + 70375) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 211126) = 393216 * k + 105563 := by
    unfold C
    simp [show (786432 * k + 211126) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 105563) = 1179648 * k + 316690 := by
    unfold C
    simp [show (393216 * k + 105563) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 316690) = 589824 * k + 158345 := by
    unfold C
    simp [show (1179648 * k + 316690) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 158345) = 1769472 * k + 475036 := by
    unfold C
    simp [show (589824 * k + 158345) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 475036) = 884736 * k + 237518 := by
    unfold C
    simp [show (1769472 * k + 475036) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 237518) = 442368 * k + 118759 := by
    unfold C
    simp [show (884736 * k + 237518) % 2 = 0 by omega]
    omega
  have h8 : C (442368 * k + 118759) = 1327104 * k + 356278 := by
    unfold C
    simp [show (442368 * k + 118759) % 2 ≠ 0 by omega]
    omega
  have h9 : C (1327104 * k + 356278) = 663552 * k + 178139 := by
    unfold C
    simp [show (1327104 * k + 356278) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 178139) = 1990656 * k + 534418 := by
    unfold C
    simp [show (663552 * k + 178139) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 534418) = 995328 * k + 267209 := by
    unfold C
    simp [show (1990656 * k + 534418) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 267209) = 2985984 * k + 801628 := by
    unfold C
    simp [show (995328 * k + 267209) % 2 ≠ 0 by omega]
    omega
  have h13 : C (2985984 * k + 801628) = 1492992 * k + 400814 := by
    unfold C
    simp [show (2985984 * k + 801628) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 400814) = 746496 * k + 200407 := by
    unfold C
    simp [show (1492992 * k + 400814) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 200407) = 2239488 * k + 601222 := by
    unfold C
    simp [show (746496 * k + 200407) % 2 ≠ 0 by omega]
    omega
  have h16 : C (2239488 * k + 601222) = 1119744 * k + 300611 := by
    unfold C
    simp [show (2239488 * k + 601222) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 300611) = 3359232 * k + 901834 := by
    unfold C
    simp [show (1119744 * k + 300611) % 2 ≠ 0 by omega]
    omega
  have h18 : C (3359232 * k + 901834) = 1679616 * k + 450917 := by
    unfold C
    simp [show (3359232 * k + 901834) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 450917) = 5038848 * k + 1352752 := by
    unfold C
    simp [show (1679616 * k + 450917) % 2 ≠ 0 by omega]
    omega
  have h20 : C (5038848 * k + 1352752) = 2519424 * k + 676376 := by
    unfold C
    simp [show (5038848 * k + 1352752) % 2 = 0 by omega]
    omega
  have h21 : C (2519424 * k + 676376) = 1259712 * k + 338188 := by
    unfold C
    simp [show (2519424 * k + 676376) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 338188) = 629856 * k + 169094 := by
    unfold C
    simp [show (1259712 * k + 338188) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 169094) = 314928 * k + 84547 := by
    unfold C
    simp [show (629856 * k + 169094) % 2 = 0 by omega]
    omega
  have h24 : C (314928 * k + 84547) = 944784 * k + 253642 := by
    unfold C
    simp [show (314928 * k + 84547) % 2 ≠ 0 by omega]
    omega
  have h25 : C (944784 * k + 253642) = 472392 * k + 126821 := by
    unfold C
    simp [show (944784 * k + 253642) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 126821) = 1417176 * k + 380464 := by
    unfold C
    simp [show (472392 * k + 126821) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 380464) = 708588 * k + 190232 := by
    unfold C
    simp [show (1417176 * k + 380464) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 190232) = 354294 * k + 95116 := by
    unfold C
    simp [show (708588 * k + 190232) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 95116) = 177147 * k + 47558 := by
    unfold C
    simp [show (354294 * k + 95116) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 70375) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 70375))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_70383 : ∀ k : Nat,
    iterate (262144 * k + 70383) 29 = 177147 * k + 47563 ∧
      177147 * k + 47563 < 262144 * k + 70383 := by
  intro k
  have h1 : C (262144 * k + 70383) = 786432 * k + 211150 := by
    unfold C
    simp [show (262144 * k + 70383) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 211150) = 393216 * k + 105575 := by
    unfold C
    simp [show (786432 * k + 211150) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 105575) = 1179648 * k + 316726 := by
    unfold C
    simp [show (393216 * k + 105575) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 316726) = 589824 * k + 158363 := by
    unfold C
    simp [show (1179648 * k + 316726) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 158363) = 1769472 * k + 475090 := by
    unfold C
    simp [show (589824 * k + 158363) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 475090) = 884736 * k + 237545 := by
    unfold C
    simp [show (1769472 * k + 475090) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 237545) = 2654208 * k + 712636 := by
    unfold C
    simp [show (884736 * k + 237545) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 712636) = 1327104 * k + 356318 := by
    unfold C
    simp [show (2654208 * k + 712636) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 356318) = 663552 * k + 178159 := by
    unfold C
    simp [show (1327104 * k + 356318) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 178159) = 1990656 * k + 534478 := by
    unfold C
    simp [show (663552 * k + 178159) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 534478) = 995328 * k + 267239 := by
    unfold C
    simp [show (1990656 * k + 534478) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 267239) = 2985984 * k + 801718 := by
    unfold C
    simp [show (995328 * k + 267239) % 2 ≠ 0 by omega]
    omega
  have h13 : C (2985984 * k + 801718) = 1492992 * k + 400859 := by
    unfold C
    simp [show (2985984 * k + 801718) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 400859) = 4478976 * k + 1202578 := by
    unfold C
    simp [show (1492992 * k + 400859) % 2 ≠ 0 by omega]
    omega
  have h15 : C (4478976 * k + 1202578) = 2239488 * k + 601289 := by
    unfold C
    simp [show (4478976 * k + 1202578) % 2 = 0 by omega]
    omega
  have h16 : C (2239488 * k + 601289) = 6718464 * k + 1803868 := by
    unfold C
    simp [show (2239488 * k + 601289) % 2 ≠ 0 by omega]
    omega
  have h17 : C (6718464 * k + 1803868) = 3359232 * k + 901934 := by
    unfold C
    simp [show (6718464 * k + 1803868) % 2 = 0 by omega]
    omega
  have h18 : C (3359232 * k + 901934) = 1679616 * k + 450967 := by
    unfold C
    simp [show (3359232 * k + 901934) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 450967) = 5038848 * k + 1352902 := by
    unfold C
    simp [show (1679616 * k + 450967) % 2 ≠ 0 by omega]
    omega
  have h20 : C (5038848 * k + 1352902) = 2519424 * k + 676451 := by
    unfold C
    simp [show (5038848 * k + 1352902) % 2 = 0 by omega]
    omega
  have h21 : C (2519424 * k + 676451) = 7558272 * k + 2029354 := by
    unfold C
    simp [show (2519424 * k + 676451) % 2 ≠ 0 by omega]
    omega
  have h22 : C (7558272 * k + 2029354) = 3779136 * k + 1014677 := by
    unfold C
    simp [show (7558272 * k + 2029354) % 2 = 0 by omega]
    omega
  have h23 : C (3779136 * k + 1014677) = 11337408 * k + 3044032 := by
    unfold C
    simp [show (3779136 * k + 1014677) % 2 ≠ 0 by omega]
    omega
  have h24 : C (11337408 * k + 3044032) = 5668704 * k + 1522016 := by
    unfold C
    simp [show (11337408 * k + 3044032) % 2 = 0 by omega]
    omega
  have h25 : C (5668704 * k + 1522016) = 2834352 * k + 761008 := by
    unfold C
    simp [show (5668704 * k + 1522016) % 2 = 0 by omega]
    omega
  have h26 : C (2834352 * k + 761008) = 1417176 * k + 380504 := by
    unfold C
    simp [show (2834352 * k + 761008) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 380504) = 708588 * k + 190252 := by
    unfold C
    simp [show (1417176 * k + 380504) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 190252) = 354294 * k + 95126 := by
    unfold C
    simp [show (708588 * k + 190252) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 95126) = 177147 * k + 47563 := by
    unfold C
    simp [show (354294 * k + 95126) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 70383) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 70383))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

end CollatzM18Shard014
