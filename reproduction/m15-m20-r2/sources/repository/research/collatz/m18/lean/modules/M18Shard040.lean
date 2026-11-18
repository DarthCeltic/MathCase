import Mathlib.Data.Nat.Prime.Basic

namespace CollatzM18Shard040

def C (n : Nat) : Nat := if n % 2 = 0 then n / 2 else 3 * n + 1

def iterate (n t : Nat) : Nat := Nat.rec n (fun _ previous => C previous) t

theorem descent_mod262144_211707 : ∀ k : Nat,
    iterate (262144 * k + 211707) 29 = 177147 * k + 143065 ∧
      177147 * k + 143065 < 262144 * k + 211707 := by
  intro k
  have h1 : C (262144 * k + 211707) = 786432 * k + 635122 := by
    unfold C
    simp [show (262144 * k + 211707) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 635122) = 393216 * k + 317561 := by
    unfold C
    simp [show (786432 * k + 635122) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 317561) = 1179648 * k + 952684 := by
    unfold C
    simp [show (393216 * k + 317561) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 952684) = 589824 * k + 476342 := by
    unfold C
    simp [show (1179648 * k + 952684) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 476342) = 294912 * k + 238171 := by
    unfold C
    simp [show (589824 * k + 476342) % 2 = 0 by omega]
    omega
  have h6 : C (294912 * k + 238171) = 884736 * k + 714514 := by
    unfold C
    simp [show (294912 * k + 238171) % 2 ≠ 0 by omega]
    omega
  have h7 : C (884736 * k + 714514) = 442368 * k + 357257 := by
    unfold C
    simp [show (884736 * k + 714514) % 2 = 0 by omega]
    omega
  have h8 : C (442368 * k + 357257) = 1327104 * k + 1071772 := by
    unfold C
    simp [show (442368 * k + 357257) % 2 ≠ 0 by omega]
    omega
  have h9 : C (1327104 * k + 1071772) = 663552 * k + 535886 := by
    unfold C
    simp [show (1327104 * k + 1071772) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 535886) = 331776 * k + 267943 := by
    unfold C
    simp [show (663552 * k + 535886) % 2 = 0 by omega]
    omega
  have h11 : C (331776 * k + 267943) = 995328 * k + 803830 := by
    unfold C
    simp [show (331776 * k + 267943) % 2 ≠ 0 by omega]
    omega
  have h12 : C (995328 * k + 803830) = 497664 * k + 401915 := by
    unfold C
    simp [show (995328 * k + 803830) % 2 = 0 by omega]
    omega
  have h13 : C (497664 * k + 401915) = 1492992 * k + 1205746 := by
    unfold C
    simp [show (497664 * k + 401915) % 2 ≠ 0 by omega]
    omega
  have h14 : C (1492992 * k + 1205746) = 746496 * k + 602873 := by
    unfold C
    simp [show (1492992 * k + 1205746) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 602873) = 2239488 * k + 1808620 := by
    unfold C
    simp [show (746496 * k + 602873) % 2 ≠ 0 by omega]
    omega
  have h16 : C (2239488 * k + 1808620) = 1119744 * k + 904310 := by
    unfold C
    simp [show (2239488 * k + 1808620) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 904310) = 559872 * k + 452155 := by
    unfold C
    simp [show (1119744 * k + 904310) % 2 = 0 by omega]
    omega
  have h18 : C (559872 * k + 452155) = 1679616 * k + 1356466 := by
    unfold C
    simp [show (559872 * k + 452155) % 2 ≠ 0 by omega]
    omega
  have h19 : C (1679616 * k + 1356466) = 839808 * k + 678233 := by
    unfold C
    simp [show (1679616 * k + 1356466) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 678233) = 2519424 * k + 2034700 := by
    unfold C
    simp [show (839808 * k + 678233) % 2 ≠ 0 by omega]
    omega
  have h21 : C (2519424 * k + 2034700) = 1259712 * k + 1017350 := by
    unfold C
    simp [show (2519424 * k + 2034700) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 1017350) = 629856 * k + 508675 := by
    unfold C
    simp [show (1259712 * k + 1017350) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 508675) = 1889568 * k + 1526026 := by
    unfold C
    simp [show (629856 * k + 508675) % 2 ≠ 0 by omega]
    omega
  have h24 : C (1889568 * k + 1526026) = 944784 * k + 763013 := by
    unfold C
    simp [show (1889568 * k + 1526026) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 763013) = 2834352 * k + 2289040 := by
    unfold C
    simp [show (944784 * k + 763013) % 2 ≠ 0 by omega]
    omega
  have h26 : C (2834352 * k + 2289040) = 1417176 * k + 1144520 := by
    unfold C
    simp [show (2834352 * k + 2289040) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 1144520) = 708588 * k + 572260 := by
    unfold C
    simp [show (1417176 * k + 1144520) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 572260) = 354294 * k + 286130 := by
    unfold C
    simp [show (708588 * k + 572260) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 286130) = 177147 * k + 143065 := by
    unfold C
    simp [show (354294 * k + 286130) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 211707) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 211707))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_211743 : ∀ k : Nat,
    iterate (262144 * k + 211743) 29 = 177147 * k + 143089 ∧
      177147 * k + 143089 < 262144 * k + 211743 := by
  intro k
  have h1 : C (262144 * k + 211743) = 786432 * k + 635230 := by
    unfold C
    simp [show (262144 * k + 211743) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 635230) = 393216 * k + 317615 := by
    unfold C
    simp [show (786432 * k + 635230) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 317615) = 1179648 * k + 952846 := by
    unfold C
    simp [show (393216 * k + 317615) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 952846) = 589824 * k + 476423 := by
    unfold C
    simp [show (1179648 * k + 952846) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 476423) = 1769472 * k + 1429270 := by
    unfold C
    simp [show (589824 * k + 476423) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 1429270) = 884736 * k + 714635 := by
    unfold C
    simp [show (1769472 * k + 1429270) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 714635) = 2654208 * k + 2143906 := by
    unfold C
    simp [show (884736 * k + 714635) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 2143906) = 1327104 * k + 1071953 := by
    unfold C
    simp [show (2654208 * k + 2143906) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 1071953) = 3981312 * k + 3215860 := by
    unfold C
    simp [show (1327104 * k + 1071953) % 2 ≠ 0 by omega]
    omega
  have h10 : C (3981312 * k + 3215860) = 1990656 * k + 1607930 := by
    unfold C
    simp [show (3981312 * k + 3215860) % 2 = 0 by omega]
    omega
  have h11 : C (1990656 * k + 1607930) = 995328 * k + 803965 := by
    unfold C
    simp [show (1990656 * k + 1607930) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 803965) = 2985984 * k + 2411896 := by
    unfold C
    simp [show (995328 * k + 803965) % 2 ≠ 0 by omega]
    omega
  have h13 : C (2985984 * k + 2411896) = 1492992 * k + 1205948 := by
    unfold C
    simp [show (2985984 * k + 2411896) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 1205948) = 746496 * k + 602974 := by
    unfold C
    simp [show (1492992 * k + 1205948) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 602974) = 373248 * k + 301487 := by
    unfold C
    simp [show (746496 * k + 602974) % 2 = 0 by omega]
    omega
  have h16 : C (373248 * k + 301487) = 1119744 * k + 904462 := by
    unfold C
    simp [show (373248 * k + 301487) % 2 ≠ 0 by omega]
    omega
  have h17 : C (1119744 * k + 904462) = 559872 * k + 452231 := by
    unfold C
    simp [show (1119744 * k + 904462) % 2 = 0 by omega]
    omega
  have h18 : C (559872 * k + 452231) = 1679616 * k + 1356694 := by
    unfold C
    simp [show (559872 * k + 452231) % 2 ≠ 0 by omega]
    omega
  have h19 : C (1679616 * k + 1356694) = 839808 * k + 678347 := by
    unfold C
    simp [show (1679616 * k + 1356694) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 678347) = 2519424 * k + 2035042 := by
    unfold C
    simp [show (839808 * k + 678347) % 2 ≠ 0 by omega]
    omega
  have h21 : C (2519424 * k + 2035042) = 1259712 * k + 1017521 := by
    unfold C
    simp [show (2519424 * k + 2035042) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 1017521) = 3779136 * k + 3052564 := by
    unfold C
    simp [show (1259712 * k + 1017521) % 2 ≠ 0 by omega]
    omega
  have h23 : C (3779136 * k + 3052564) = 1889568 * k + 1526282 := by
    unfold C
    simp [show (3779136 * k + 3052564) % 2 = 0 by omega]
    omega
  have h24 : C (1889568 * k + 1526282) = 944784 * k + 763141 := by
    unfold C
    simp [show (1889568 * k + 1526282) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 763141) = 2834352 * k + 2289424 := by
    unfold C
    simp [show (944784 * k + 763141) % 2 ≠ 0 by omega]
    omega
  have h26 : C (2834352 * k + 2289424) = 1417176 * k + 1144712 := by
    unfold C
    simp [show (2834352 * k + 2289424) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 1144712) = 708588 * k + 572356 := by
    unfold C
    simp [show (1417176 * k + 1144712) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 572356) = 354294 * k + 286178 := by
    unfold C
    simp [show (708588 * k + 572356) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 286178) = 177147 * k + 143089 := by
    unfold C
    simp [show (354294 * k + 286178) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 211743) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 211743))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_211935 : ∀ k : Nat,
    iterate (262144 * k + 211935) 29 = 177147 * k + 143219 ∧
      177147 * k + 143219 < 262144 * k + 211935 := by
  intro k
  have h1 : C (262144 * k + 211935) = 786432 * k + 635806 := by
    unfold C
    simp [show (262144 * k + 211935) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 635806) = 393216 * k + 317903 := by
    unfold C
    simp [show (786432 * k + 635806) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 317903) = 1179648 * k + 953710 := by
    unfold C
    simp [show (393216 * k + 317903) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 953710) = 589824 * k + 476855 := by
    unfold C
    simp [show (1179648 * k + 953710) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 476855) = 1769472 * k + 1430566 := by
    unfold C
    simp [show (589824 * k + 476855) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 1430566) = 884736 * k + 715283 := by
    unfold C
    simp [show (1769472 * k + 1430566) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 715283) = 2654208 * k + 2145850 := by
    unfold C
    simp [show (884736 * k + 715283) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 2145850) = 1327104 * k + 1072925 := by
    unfold C
    simp [show (2654208 * k + 2145850) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 1072925) = 3981312 * k + 3218776 := by
    unfold C
    simp [show (1327104 * k + 1072925) % 2 ≠ 0 by omega]
    omega
  have h10 : C (3981312 * k + 3218776) = 1990656 * k + 1609388 := by
    unfold C
    simp [show (3981312 * k + 3218776) % 2 = 0 by omega]
    omega
  have h11 : C (1990656 * k + 1609388) = 995328 * k + 804694 := by
    unfold C
    simp [show (1990656 * k + 1609388) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 804694) = 497664 * k + 402347 := by
    unfold C
    simp [show (995328 * k + 804694) % 2 = 0 by omega]
    omega
  have h13 : C (497664 * k + 402347) = 1492992 * k + 1207042 := by
    unfold C
    simp [show (497664 * k + 402347) % 2 ≠ 0 by omega]
    omega
  have h14 : C (1492992 * k + 1207042) = 746496 * k + 603521 := by
    unfold C
    simp [show (1492992 * k + 1207042) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 603521) = 2239488 * k + 1810564 := by
    unfold C
    simp [show (746496 * k + 603521) % 2 ≠ 0 by omega]
    omega
  have h16 : C (2239488 * k + 1810564) = 1119744 * k + 905282 := by
    unfold C
    simp [show (2239488 * k + 1810564) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 905282) = 559872 * k + 452641 := by
    unfold C
    simp [show (1119744 * k + 905282) % 2 = 0 by omega]
    omega
  have h18 : C (559872 * k + 452641) = 1679616 * k + 1357924 := by
    unfold C
    simp [show (559872 * k + 452641) % 2 ≠ 0 by omega]
    omega
  have h19 : C (1679616 * k + 1357924) = 839808 * k + 678962 := by
    unfold C
    simp [show (1679616 * k + 1357924) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 678962) = 419904 * k + 339481 := by
    unfold C
    simp [show (839808 * k + 678962) % 2 = 0 by omega]
    omega
  have h21 : C (419904 * k + 339481) = 1259712 * k + 1018444 := by
    unfold C
    simp [show (419904 * k + 339481) % 2 ≠ 0 by omega]
    omega
  have h22 : C (1259712 * k + 1018444) = 629856 * k + 509222 := by
    unfold C
    simp [show (1259712 * k + 1018444) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 509222) = 314928 * k + 254611 := by
    unfold C
    simp [show (629856 * k + 509222) % 2 = 0 by omega]
    omega
  have h24 : C (314928 * k + 254611) = 944784 * k + 763834 := by
    unfold C
    simp [show (314928 * k + 254611) % 2 ≠ 0 by omega]
    omega
  have h25 : C (944784 * k + 763834) = 472392 * k + 381917 := by
    unfold C
    simp [show (944784 * k + 763834) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 381917) = 1417176 * k + 1145752 := by
    unfold C
    simp [show (472392 * k + 381917) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 1145752) = 708588 * k + 572876 := by
    unfold C
    simp [show (1417176 * k + 1145752) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 572876) = 354294 * k + 286438 := by
    unfold C
    simp [show (708588 * k + 572876) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 286438) = 177147 * k + 143219 := by
    unfold C
    simp [show (354294 * k + 286438) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 211935) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 211935))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_212135 : ∀ k : Nat,
    iterate (262144 * k + 212135) 29 = 177147 * k + 143354 ∧
      177147 * k + 143354 < 262144 * k + 212135 := by
  intro k
  have h1 : C (262144 * k + 212135) = 786432 * k + 636406 := by
    unfold C
    simp [show (262144 * k + 212135) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 636406) = 393216 * k + 318203 := by
    unfold C
    simp [show (786432 * k + 636406) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 318203) = 1179648 * k + 954610 := by
    unfold C
    simp [show (393216 * k + 318203) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 954610) = 589824 * k + 477305 := by
    unfold C
    simp [show (1179648 * k + 954610) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 477305) = 1769472 * k + 1431916 := by
    unfold C
    simp [show (589824 * k + 477305) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 1431916) = 884736 * k + 715958 := by
    unfold C
    simp [show (1769472 * k + 1431916) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 715958) = 442368 * k + 357979 := by
    unfold C
    simp [show (884736 * k + 715958) % 2 = 0 by omega]
    omega
  have h8 : C (442368 * k + 357979) = 1327104 * k + 1073938 := by
    unfold C
    simp [show (442368 * k + 357979) % 2 ≠ 0 by omega]
    omega
  have h9 : C (1327104 * k + 1073938) = 663552 * k + 536969 := by
    unfold C
    simp [show (1327104 * k + 1073938) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 536969) = 1990656 * k + 1610908 := by
    unfold C
    simp [show (663552 * k + 536969) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 1610908) = 995328 * k + 805454 := by
    unfold C
    simp [show (1990656 * k + 1610908) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 805454) = 497664 * k + 402727 := by
    unfold C
    simp [show (995328 * k + 805454) % 2 = 0 by omega]
    omega
  have h13 : C (497664 * k + 402727) = 1492992 * k + 1208182 := by
    unfold C
    simp [show (497664 * k + 402727) % 2 ≠ 0 by omega]
    omega
  have h14 : C (1492992 * k + 1208182) = 746496 * k + 604091 := by
    unfold C
    simp [show (1492992 * k + 1208182) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 604091) = 2239488 * k + 1812274 := by
    unfold C
    simp [show (746496 * k + 604091) % 2 ≠ 0 by omega]
    omega
  have h16 : C (2239488 * k + 1812274) = 1119744 * k + 906137 := by
    unfold C
    simp [show (2239488 * k + 1812274) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 906137) = 3359232 * k + 2718412 := by
    unfold C
    simp [show (1119744 * k + 906137) % 2 ≠ 0 by omega]
    omega
  have h18 : C (3359232 * k + 2718412) = 1679616 * k + 1359206 := by
    unfold C
    simp [show (3359232 * k + 2718412) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 1359206) = 839808 * k + 679603 := by
    unfold C
    simp [show (1679616 * k + 1359206) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 679603) = 2519424 * k + 2038810 := by
    unfold C
    simp [show (839808 * k + 679603) % 2 ≠ 0 by omega]
    omega
  have h21 : C (2519424 * k + 2038810) = 1259712 * k + 1019405 := by
    unfold C
    simp [show (2519424 * k + 2038810) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 1019405) = 3779136 * k + 3058216 := by
    unfold C
    simp [show (1259712 * k + 1019405) % 2 ≠ 0 by omega]
    omega
  have h23 : C (3779136 * k + 3058216) = 1889568 * k + 1529108 := by
    unfold C
    simp [show (3779136 * k + 3058216) % 2 = 0 by omega]
    omega
  have h24 : C (1889568 * k + 1529108) = 944784 * k + 764554 := by
    unfold C
    simp [show (1889568 * k + 1529108) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 764554) = 472392 * k + 382277 := by
    unfold C
    simp [show (944784 * k + 764554) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 382277) = 1417176 * k + 1146832 := by
    unfold C
    simp [show (472392 * k + 382277) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 1146832) = 708588 * k + 573416 := by
    unfold C
    simp [show (1417176 * k + 1146832) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 573416) = 354294 * k + 286708 := by
    unfold C
    simp [show (708588 * k + 573416) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 286708) = 177147 * k + 143354 := by
    unfold C
    simp [show (354294 * k + 286708) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 212135) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 212135))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_212219 : ∀ k : Nat,
    iterate (262144 * k + 212219) 29 = 177147 * k + 143411 ∧
      177147 * k + 143411 < 262144 * k + 212219 := by
  intro k
  have h1 : C (262144 * k + 212219) = 786432 * k + 636658 := by
    unfold C
    simp [show (262144 * k + 212219) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 636658) = 393216 * k + 318329 := by
    unfold C
    simp [show (786432 * k + 636658) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 318329) = 1179648 * k + 954988 := by
    unfold C
    simp [show (393216 * k + 318329) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 954988) = 589824 * k + 477494 := by
    unfold C
    simp [show (1179648 * k + 954988) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 477494) = 294912 * k + 238747 := by
    unfold C
    simp [show (589824 * k + 477494) % 2 = 0 by omega]
    omega
  have h6 : C (294912 * k + 238747) = 884736 * k + 716242 := by
    unfold C
    simp [show (294912 * k + 238747) % 2 ≠ 0 by omega]
    omega
  have h7 : C (884736 * k + 716242) = 442368 * k + 358121 := by
    unfold C
    simp [show (884736 * k + 716242) % 2 = 0 by omega]
    omega
  have h8 : C (442368 * k + 358121) = 1327104 * k + 1074364 := by
    unfold C
    simp [show (442368 * k + 358121) % 2 ≠ 0 by omega]
    omega
  have h9 : C (1327104 * k + 1074364) = 663552 * k + 537182 := by
    unfold C
    simp [show (1327104 * k + 1074364) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 537182) = 331776 * k + 268591 := by
    unfold C
    simp [show (663552 * k + 537182) % 2 = 0 by omega]
    omega
  have h11 : C (331776 * k + 268591) = 995328 * k + 805774 := by
    unfold C
    simp [show (331776 * k + 268591) % 2 ≠ 0 by omega]
    omega
  have h12 : C (995328 * k + 805774) = 497664 * k + 402887 := by
    unfold C
    simp [show (995328 * k + 805774) % 2 = 0 by omega]
    omega
  have h13 : C (497664 * k + 402887) = 1492992 * k + 1208662 := by
    unfold C
    simp [show (497664 * k + 402887) % 2 ≠ 0 by omega]
    omega
  have h14 : C (1492992 * k + 1208662) = 746496 * k + 604331 := by
    unfold C
    simp [show (1492992 * k + 1208662) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 604331) = 2239488 * k + 1812994 := by
    unfold C
    simp [show (746496 * k + 604331) % 2 ≠ 0 by omega]
    omega
  have h16 : C (2239488 * k + 1812994) = 1119744 * k + 906497 := by
    unfold C
    simp [show (2239488 * k + 1812994) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 906497) = 3359232 * k + 2719492 := by
    unfold C
    simp [show (1119744 * k + 906497) % 2 ≠ 0 by omega]
    omega
  have h18 : C (3359232 * k + 2719492) = 1679616 * k + 1359746 := by
    unfold C
    simp [show (3359232 * k + 2719492) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 1359746) = 839808 * k + 679873 := by
    unfold C
    simp [show (1679616 * k + 1359746) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 679873) = 2519424 * k + 2039620 := by
    unfold C
    simp [show (839808 * k + 679873) % 2 ≠ 0 by omega]
    omega
  have h21 : C (2519424 * k + 2039620) = 1259712 * k + 1019810 := by
    unfold C
    simp [show (2519424 * k + 2039620) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 1019810) = 629856 * k + 509905 := by
    unfold C
    simp [show (1259712 * k + 1019810) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 509905) = 1889568 * k + 1529716 := by
    unfold C
    simp [show (629856 * k + 509905) % 2 ≠ 0 by omega]
    omega
  have h24 : C (1889568 * k + 1529716) = 944784 * k + 764858 := by
    unfold C
    simp [show (1889568 * k + 1529716) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 764858) = 472392 * k + 382429 := by
    unfold C
    simp [show (944784 * k + 764858) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 382429) = 1417176 * k + 1147288 := by
    unfold C
    simp [show (472392 * k + 382429) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 1147288) = 708588 * k + 573644 := by
    unfold C
    simp [show (1417176 * k + 1147288) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 573644) = 354294 * k + 286822 := by
    unfold C
    simp [show (708588 * k + 573644) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 286822) = 177147 * k + 143411 := by
    unfold C
    simp [show (354294 * k + 286822) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 212219) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 212219))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_212223 : ∀ k : Nat,
    iterate (262144 * k + 212223) 29 = 177147 * k + 143413 ∧
      177147 * k + 143413 < 262144 * k + 212223 := by
  intro k
  have h1 : C (262144 * k + 212223) = 786432 * k + 636670 := by
    unfold C
    simp [show (262144 * k + 212223) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 636670) = 393216 * k + 318335 := by
    unfold C
    simp [show (786432 * k + 636670) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 318335) = 1179648 * k + 955006 := by
    unfold C
    simp [show (393216 * k + 318335) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 955006) = 589824 * k + 477503 := by
    unfold C
    simp [show (1179648 * k + 955006) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 477503) = 1769472 * k + 1432510 := by
    unfold C
    simp [show (589824 * k + 477503) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 1432510) = 884736 * k + 716255 := by
    unfold C
    simp [show (1769472 * k + 1432510) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 716255) = 2654208 * k + 2148766 := by
    unfold C
    simp [show (884736 * k + 716255) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 2148766) = 1327104 * k + 1074383 := by
    unfold C
    simp [show (2654208 * k + 2148766) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 1074383) = 3981312 * k + 3223150 := by
    unfold C
    simp [show (1327104 * k + 1074383) % 2 ≠ 0 by omega]
    omega
  have h10 : C (3981312 * k + 3223150) = 1990656 * k + 1611575 := by
    unfold C
    simp [show (3981312 * k + 3223150) % 2 = 0 by omega]
    omega
  have h11 : C (1990656 * k + 1611575) = 5971968 * k + 4834726 := by
    unfold C
    simp [show (1990656 * k + 1611575) % 2 ≠ 0 by omega]
    omega
  have h12 : C (5971968 * k + 4834726) = 2985984 * k + 2417363 := by
    unfold C
    simp [show (5971968 * k + 4834726) % 2 = 0 by omega]
    omega
  have h13 : C (2985984 * k + 2417363) = 8957952 * k + 7252090 := by
    unfold C
    simp [show (2985984 * k + 2417363) % 2 ≠ 0 by omega]
    omega
  have h14 : C (8957952 * k + 7252090) = 4478976 * k + 3626045 := by
    unfold C
    simp [show (8957952 * k + 7252090) % 2 = 0 by omega]
    omega
  have h15 : C (4478976 * k + 3626045) = 13436928 * k + 10878136 := by
    unfold C
    simp [show (4478976 * k + 3626045) % 2 ≠ 0 by omega]
    omega
  have h16 : C (13436928 * k + 10878136) = 6718464 * k + 5439068 := by
    unfold C
    simp [show (13436928 * k + 10878136) % 2 = 0 by omega]
    omega
  have h17 : C (6718464 * k + 5439068) = 3359232 * k + 2719534 := by
    unfold C
    simp [show (6718464 * k + 5439068) % 2 = 0 by omega]
    omega
  have h18 : C (3359232 * k + 2719534) = 1679616 * k + 1359767 := by
    unfold C
    simp [show (3359232 * k + 2719534) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 1359767) = 5038848 * k + 4079302 := by
    unfold C
    simp [show (1679616 * k + 1359767) % 2 ≠ 0 by omega]
    omega
  have h20 : C (5038848 * k + 4079302) = 2519424 * k + 2039651 := by
    unfold C
    simp [show (5038848 * k + 4079302) % 2 = 0 by omega]
    omega
  have h21 : C (2519424 * k + 2039651) = 7558272 * k + 6118954 := by
    unfold C
    simp [show (2519424 * k + 2039651) % 2 ≠ 0 by omega]
    omega
  have h22 : C (7558272 * k + 6118954) = 3779136 * k + 3059477 := by
    unfold C
    simp [show (7558272 * k + 6118954) % 2 = 0 by omega]
    omega
  have h23 : C (3779136 * k + 3059477) = 11337408 * k + 9178432 := by
    unfold C
    simp [show (3779136 * k + 3059477) % 2 ≠ 0 by omega]
    omega
  have h24 : C (11337408 * k + 9178432) = 5668704 * k + 4589216 := by
    unfold C
    simp [show (11337408 * k + 9178432) % 2 = 0 by omega]
    omega
  have h25 : C (5668704 * k + 4589216) = 2834352 * k + 2294608 := by
    unfold C
    simp [show (5668704 * k + 4589216) % 2 = 0 by omega]
    omega
  have h26 : C (2834352 * k + 2294608) = 1417176 * k + 1147304 := by
    unfold C
    simp [show (2834352 * k + 2294608) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 1147304) = 708588 * k + 573652 := by
    unfold C
    simp [show (1417176 * k + 1147304) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 573652) = 354294 * k + 286826 := by
    unfold C
    simp [show (708588 * k + 573652) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 286826) = 177147 * k + 143413 := by
    unfold C
    simp [show (354294 * k + 286826) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 212223) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 212223))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_212827 : ∀ k : Nat,
    iterate (262144 * k + 212827) 29 = 177147 * k + 143822 ∧
      177147 * k + 143822 < 262144 * k + 212827 := by
  intro k
  have h1 : C (262144 * k + 212827) = 786432 * k + 638482 := by
    unfold C
    simp [show (262144 * k + 212827) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 638482) = 393216 * k + 319241 := by
    unfold C
    simp [show (786432 * k + 638482) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 319241) = 1179648 * k + 957724 := by
    unfold C
    simp [show (393216 * k + 319241) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 957724) = 589824 * k + 478862 := by
    unfold C
    simp [show (1179648 * k + 957724) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 478862) = 294912 * k + 239431 := by
    unfold C
    simp [show (589824 * k + 478862) % 2 = 0 by omega]
    omega
  have h6 : C (294912 * k + 239431) = 884736 * k + 718294 := by
    unfold C
    simp [show (294912 * k + 239431) % 2 ≠ 0 by omega]
    omega
  have h7 : C (884736 * k + 718294) = 442368 * k + 359147 := by
    unfold C
    simp [show (884736 * k + 718294) % 2 = 0 by omega]
    omega
  have h8 : C (442368 * k + 359147) = 1327104 * k + 1077442 := by
    unfold C
    simp [show (442368 * k + 359147) % 2 ≠ 0 by omega]
    omega
  have h9 : C (1327104 * k + 1077442) = 663552 * k + 538721 := by
    unfold C
    simp [show (1327104 * k + 1077442) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 538721) = 1990656 * k + 1616164 := by
    unfold C
    simp [show (663552 * k + 538721) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 1616164) = 995328 * k + 808082 := by
    unfold C
    simp [show (1990656 * k + 1616164) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 808082) = 497664 * k + 404041 := by
    unfold C
    simp [show (995328 * k + 808082) % 2 = 0 by omega]
    omega
  have h13 : C (497664 * k + 404041) = 1492992 * k + 1212124 := by
    unfold C
    simp [show (497664 * k + 404041) % 2 ≠ 0 by omega]
    omega
  have h14 : C (1492992 * k + 1212124) = 746496 * k + 606062 := by
    unfold C
    simp [show (1492992 * k + 1212124) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 606062) = 373248 * k + 303031 := by
    unfold C
    simp [show (746496 * k + 606062) % 2 = 0 by omega]
    omega
  have h16 : C (373248 * k + 303031) = 1119744 * k + 909094 := by
    unfold C
    simp [show (373248 * k + 303031) % 2 ≠ 0 by omega]
    omega
  have h17 : C (1119744 * k + 909094) = 559872 * k + 454547 := by
    unfold C
    simp [show (1119744 * k + 909094) % 2 = 0 by omega]
    omega
  have h18 : C (559872 * k + 454547) = 1679616 * k + 1363642 := by
    unfold C
    simp [show (559872 * k + 454547) % 2 ≠ 0 by omega]
    omega
  have h19 : C (1679616 * k + 1363642) = 839808 * k + 681821 := by
    unfold C
    simp [show (1679616 * k + 1363642) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 681821) = 2519424 * k + 2045464 := by
    unfold C
    simp [show (839808 * k + 681821) % 2 ≠ 0 by omega]
    omega
  have h21 : C (2519424 * k + 2045464) = 1259712 * k + 1022732 := by
    unfold C
    simp [show (2519424 * k + 2045464) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 1022732) = 629856 * k + 511366 := by
    unfold C
    simp [show (1259712 * k + 1022732) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 511366) = 314928 * k + 255683 := by
    unfold C
    simp [show (629856 * k + 511366) % 2 = 0 by omega]
    omega
  have h24 : C (314928 * k + 255683) = 944784 * k + 767050 := by
    unfold C
    simp [show (314928 * k + 255683) % 2 ≠ 0 by omega]
    omega
  have h25 : C (944784 * k + 767050) = 472392 * k + 383525 := by
    unfold C
    simp [show (944784 * k + 767050) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 383525) = 1417176 * k + 1150576 := by
    unfold C
    simp [show (472392 * k + 383525) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 1150576) = 708588 * k + 575288 := by
    unfold C
    simp [show (1417176 * k + 1150576) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 575288) = 354294 * k + 287644 := by
    unfold C
    simp [show (708588 * k + 575288) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 287644) = 177147 * k + 143822 := by
    unfold C
    simp [show (354294 * k + 287644) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 212827) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 212827))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_213759 : ∀ k : Nat,
    iterate (262144 * k + 213759) 29 = 177147 * k + 144451 ∧
      177147 * k + 144451 < 262144 * k + 213759 := by
  intro k
  have h1 : C (262144 * k + 213759) = 786432 * k + 641278 := by
    unfold C
    simp [show (262144 * k + 213759) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 641278) = 393216 * k + 320639 := by
    unfold C
    simp [show (786432 * k + 641278) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 320639) = 1179648 * k + 961918 := by
    unfold C
    simp [show (393216 * k + 320639) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 961918) = 589824 * k + 480959 := by
    unfold C
    simp [show (1179648 * k + 961918) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 480959) = 1769472 * k + 1442878 := by
    unfold C
    simp [show (589824 * k + 480959) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 1442878) = 884736 * k + 721439 := by
    unfold C
    simp [show (1769472 * k + 1442878) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 721439) = 2654208 * k + 2164318 := by
    unfold C
    simp [show (884736 * k + 721439) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 2164318) = 1327104 * k + 1082159 := by
    unfold C
    simp [show (2654208 * k + 2164318) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 1082159) = 3981312 * k + 3246478 := by
    unfold C
    simp [show (1327104 * k + 1082159) % 2 ≠ 0 by omega]
    omega
  have h10 : C (3981312 * k + 3246478) = 1990656 * k + 1623239 := by
    unfold C
    simp [show (3981312 * k + 3246478) % 2 = 0 by omega]
    omega
  have h11 : C (1990656 * k + 1623239) = 5971968 * k + 4869718 := by
    unfold C
    simp [show (1990656 * k + 1623239) % 2 ≠ 0 by omega]
    omega
  have h12 : C (5971968 * k + 4869718) = 2985984 * k + 2434859 := by
    unfold C
    simp [show (5971968 * k + 4869718) % 2 = 0 by omega]
    omega
  have h13 : C (2985984 * k + 2434859) = 8957952 * k + 7304578 := by
    unfold C
    simp [show (2985984 * k + 2434859) % 2 ≠ 0 by omega]
    omega
  have h14 : C (8957952 * k + 7304578) = 4478976 * k + 3652289 := by
    unfold C
    simp [show (8957952 * k + 7304578) % 2 = 0 by omega]
    omega
  have h15 : C (4478976 * k + 3652289) = 13436928 * k + 10956868 := by
    unfold C
    simp [show (4478976 * k + 3652289) % 2 ≠ 0 by omega]
    omega
  have h16 : C (13436928 * k + 10956868) = 6718464 * k + 5478434 := by
    unfold C
    simp [show (13436928 * k + 10956868) % 2 = 0 by omega]
    omega
  have h17 : C (6718464 * k + 5478434) = 3359232 * k + 2739217 := by
    unfold C
    simp [show (6718464 * k + 5478434) % 2 = 0 by omega]
    omega
  have h18 : C (3359232 * k + 2739217) = 10077696 * k + 8217652 := by
    unfold C
    simp [show (3359232 * k + 2739217) % 2 ≠ 0 by omega]
    omega
  have h19 : C (10077696 * k + 8217652) = 5038848 * k + 4108826 := by
    unfold C
    simp [show (10077696 * k + 8217652) % 2 = 0 by omega]
    omega
  have h20 : C (5038848 * k + 4108826) = 2519424 * k + 2054413 := by
    unfold C
    simp [show (5038848 * k + 4108826) % 2 = 0 by omega]
    omega
  have h21 : C (2519424 * k + 2054413) = 7558272 * k + 6163240 := by
    unfold C
    simp [show (2519424 * k + 2054413) % 2 ≠ 0 by omega]
    omega
  have h22 : C (7558272 * k + 6163240) = 3779136 * k + 3081620 := by
    unfold C
    simp [show (7558272 * k + 6163240) % 2 = 0 by omega]
    omega
  have h23 : C (3779136 * k + 3081620) = 1889568 * k + 1540810 := by
    unfold C
    simp [show (3779136 * k + 3081620) % 2 = 0 by omega]
    omega
  have h24 : C (1889568 * k + 1540810) = 944784 * k + 770405 := by
    unfold C
    simp [show (1889568 * k + 1540810) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 770405) = 2834352 * k + 2311216 := by
    unfold C
    simp [show (944784 * k + 770405) % 2 ≠ 0 by omega]
    omega
  have h26 : C (2834352 * k + 2311216) = 1417176 * k + 1155608 := by
    unfold C
    simp [show (2834352 * k + 2311216) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 1155608) = 708588 * k + 577804 := by
    unfold C
    simp [show (1417176 * k + 1155608) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 577804) = 354294 * k + 288902 := by
    unfold C
    simp [show (708588 * k + 577804) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 288902) = 177147 * k + 144451 := by
    unfold C
    simp [show (354294 * k + 288902) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 213759) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 213759))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_213851 : ∀ k : Nat,
    iterate (262144 * k + 213851) 29 = 177147 * k + 144514 ∧
      177147 * k + 144514 < 262144 * k + 213851 := by
  intro k
  have h1 : C (262144 * k + 213851) = 786432 * k + 641554 := by
    unfold C
    simp [show (262144 * k + 213851) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 641554) = 393216 * k + 320777 := by
    unfold C
    simp [show (786432 * k + 641554) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 320777) = 1179648 * k + 962332 := by
    unfold C
    simp [show (393216 * k + 320777) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 962332) = 589824 * k + 481166 := by
    unfold C
    simp [show (1179648 * k + 962332) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 481166) = 294912 * k + 240583 := by
    unfold C
    simp [show (589824 * k + 481166) % 2 = 0 by omega]
    omega
  have h6 : C (294912 * k + 240583) = 884736 * k + 721750 := by
    unfold C
    simp [show (294912 * k + 240583) % 2 ≠ 0 by omega]
    omega
  have h7 : C (884736 * k + 721750) = 442368 * k + 360875 := by
    unfold C
    simp [show (884736 * k + 721750) % 2 = 0 by omega]
    omega
  have h8 : C (442368 * k + 360875) = 1327104 * k + 1082626 := by
    unfold C
    simp [show (442368 * k + 360875) % 2 ≠ 0 by omega]
    omega
  have h9 : C (1327104 * k + 1082626) = 663552 * k + 541313 := by
    unfold C
    simp [show (1327104 * k + 1082626) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 541313) = 1990656 * k + 1623940 := by
    unfold C
    simp [show (663552 * k + 541313) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 1623940) = 995328 * k + 811970 := by
    unfold C
    simp [show (1990656 * k + 1623940) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 811970) = 497664 * k + 405985 := by
    unfold C
    simp [show (995328 * k + 811970) % 2 = 0 by omega]
    omega
  have h13 : C (497664 * k + 405985) = 1492992 * k + 1217956 := by
    unfold C
    simp [show (497664 * k + 405985) % 2 ≠ 0 by omega]
    omega
  have h14 : C (1492992 * k + 1217956) = 746496 * k + 608978 := by
    unfold C
    simp [show (1492992 * k + 1217956) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 608978) = 373248 * k + 304489 := by
    unfold C
    simp [show (746496 * k + 608978) % 2 = 0 by omega]
    omega
  have h16 : C (373248 * k + 304489) = 1119744 * k + 913468 := by
    unfold C
    simp [show (373248 * k + 304489) % 2 ≠ 0 by omega]
    omega
  have h17 : C (1119744 * k + 913468) = 559872 * k + 456734 := by
    unfold C
    simp [show (1119744 * k + 913468) % 2 = 0 by omega]
    omega
  have h18 : C (559872 * k + 456734) = 279936 * k + 228367 := by
    unfold C
    simp [show (559872 * k + 456734) % 2 = 0 by omega]
    omega
  have h19 : C (279936 * k + 228367) = 839808 * k + 685102 := by
    unfold C
    simp [show (279936 * k + 228367) % 2 ≠ 0 by omega]
    omega
  have h20 : C (839808 * k + 685102) = 419904 * k + 342551 := by
    unfold C
    simp [show (839808 * k + 685102) % 2 = 0 by omega]
    omega
  have h21 : C (419904 * k + 342551) = 1259712 * k + 1027654 := by
    unfold C
    simp [show (419904 * k + 342551) % 2 ≠ 0 by omega]
    omega
  have h22 : C (1259712 * k + 1027654) = 629856 * k + 513827 := by
    unfold C
    simp [show (1259712 * k + 1027654) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 513827) = 1889568 * k + 1541482 := by
    unfold C
    simp [show (629856 * k + 513827) % 2 ≠ 0 by omega]
    omega
  have h24 : C (1889568 * k + 1541482) = 944784 * k + 770741 := by
    unfold C
    simp [show (1889568 * k + 1541482) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 770741) = 2834352 * k + 2312224 := by
    unfold C
    simp [show (944784 * k + 770741) % 2 ≠ 0 by omega]
    omega
  have h26 : C (2834352 * k + 2312224) = 1417176 * k + 1156112 := by
    unfold C
    simp [show (2834352 * k + 2312224) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 1156112) = 708588 * k + 578056 := by
    unfold C
    simp [show (1417176 * k + 1156112) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 578056) = 354294 * k + 289028 := by
    unfold C
    simp [show (708588 * k + 578056) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 289028) = 177147 * k + 144514 := by
    unfold C
    simp [show (354294 * k + 289028) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 213851) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 213851))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_214171 : ∀ k : Nat,
    iterate (262144 * k + 214171) 29 = 177147 * k + 144730 ∧
      177147 * k + 144730 < 262144 * k + 214171 := by
  intro k
  have h1 : C (262144 * k + 214171) = 786432 * k + 642514 := by
    unfold C
    simp [show (262144 * k + 214171) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 642514) = 393216 * k + 321257 := by
    unfold C
    simp [show (786432 * k + 642514) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 321257) = 1179648 * k + 963772 := by
    unfold C
    simp [show (393216 * k + 321257) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 963772) = 589824 * k + 481886 := by
    unfold C
    simp [show (1179648 * k + 963772) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 481886) = 294912 * k + 240943 := by
    unfold C
    simp [show (589824 * k + 481886) % 2 = 0 by omega]
    omega
  have h6 : C (294912 * k + 240943) = 884736 * k + 722830 := by
    unfold C
    simp [show (294912 * k + 240943) % 2 ≠ 0 by omega]
    omega
  have h7 : C (884736 * k + 722830) = 442368 * k + 361415 := by
    unfold C
    simp [show (884736 * k + 722830) % 2 = 0 by omega]
    omega
  have h8 : C (442368 * k + 361415) = 1327104 * k + 1084246 := by
    unfold C
    simp [show (442368 * k + 361415) % 2 ≠ 0 by omega]
    omega
  have h9 : C (1327104 * k + 1084246) = 663552 * k + 542123 := by
    unfold C
    simp [show (1327104 * k + 1084246) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 542123) = 1990656 * k + 1626370 := by
    unfold C
    simp [show (663552 * k + 542123) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 1626370) = 995328 * k + 813185 := by
    unfold C
    simp [show (1990656 * k + 1626370) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 813185) = 2985984 * k + 2439556 := by
    unfold C
    simp [show (995328 * k + 813185) % 2 ≠ 0 by omega]
    omega
  have h13 : C (2985984 * k + 2439556) = 1492992 * k + 1219778 := by
    unfold C
    simp [show (2985984 * k + 2439556) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 1219778) = 746496 * k + 609889 := by
    unfold C
    simp [show (1492992 * k + 1219778) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 609889) = 2239488 * k + 1829668 := by
    unfold C
    simp [show (746496 * k + 609889) % 2 ≠ 0 by omega]
    omega
  have h16 : C (2239488 * k + 1829668) = 1119744 * k + 914834 := by
    unfold C
    simp [show (2239488 * k + 1829668) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 914834) = 559872 * k + 457417 := by
    unfold C
    simp [show (1119744 * k + 914834) % 2 = 0 by omega]
    omega
  have h18 : C (559872 * k + 457417) = 1679616 * k + 1372252 := by
    unfold C
    simp [show (559872 * k + 457417) % 2 ≠ 0 by omega]
    omega
  have h19 : C (1679616 * k + 1372252) = 839808 * k + 686126 := by
    unfold C
    simp [show (1679616 * k + 1372252) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 686126) = 419904 * k + 343063 := by
    unfold C
    simp [show (839808 * k + 686126) % 2 = 0 by omega]
    omega
  have h21 : C (419904 * k + 343063) = 1259712 * k + 1029190 := by
    unfold C
    simp [show (419904 * k + 343063) % 2 ≠ 0 by omega]
    omega
  have h22 : C (1259712 * k + 1029190) = 629856 * k + 514595 := by
    unfold C
    simp [show (1259712 * k + 1029190) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 514595) = 1889568 * k + 1543786 := by
    unfold C
    simp [show (629856 * k + 514595) % 2 ≠ 0 by omega]
    omega
  have h24 : C (1889568 * k + 1543786) = 944784 * k + 771893 := by
    unfold C
    simp [show (1889568 * k + 1543786) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 771893) = 2834352 * k + 2315680 := by
    unfold C
    simp [show (944784 * k + 771893) % 2 ≠ 0 by omega]
    omega
  have h26 : C (2834352 * k + 2315680) = 1417176 * k + 1157840 := by
    unfold C
    simp [show (2834352 * k + 2315680) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 1157840) = 708588 * k + 578920 := by
    unfold C
    simp [show (1417176 * k + 1157840) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 578920) = 354294 * k + 289460 := by
    unfold C
    simp [show (708588 * k + 578920) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 289460) = 177147 * k + 144730 := by
    unfold C
    simp [show (354294 * k + 289460) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 214171) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 214171))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_214271 : ∀ k : Nat,
    iterate (262144 * k + 214271) 29 = 177147 * k + 144797 ∧
      177147 * k + 144797 < 262144 * k + 214271 := by
  intro k
  have h1 : C (262144 * k + 214271) = 786432 * k + 642814 := by
    unfold C
    simp [show (262144 * k + 214271) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 642814) = 393216 * k + 321407 := by
    unfold C
    simp [show (786432 * k + 642814) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 321407) = 1179648 * k + 964222 := by
    unfold C
    simp [show (393216 * k + 321407) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 964222) = 589824 * k + 482111 := by
    unfold C
    simp [show (1179648 * k + 964222) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 482111) = 1769472 * k + 1446334 := by
    unfold C
    simp [show (589824 * k + 482111) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 1446334) = 884736 * k + 723167 := by
    unfold C
    simp [show (1769472 * k + 1446334) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 723167) = 2654208 * k + 2169502 := by
    unfold C
    simp [show (884736 * k + 723167) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 2169502) = 1327104 * k + 1084751 := by
    unfold C
    simp [show (2654208 * k + 2169502) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 1084751) = 3981312 * k + 3254254 := by
    unfold C
    simp [show (1327104 * k + 1084751) % 2 ≠ 0 by omega]
    omega
  have h10 : C (3981312 * k + 3254254) = 1990656 * k + 1627127 := by
    unfold C
    simp [show (3981312 * k + 3254254) % 2 = 0 by omega]
    omega
  have h11 : C (1990656 * k + 1627127) = 5971968 * k + 4881382 := by
    unfold C
    simp [show (1990656 * k + 1627127) % 2 ≠ 0 by omega]
    omega
  have h12 : C (5971968 * k + 4881382) = 2985984 * k + 2440691 := by
    unfold C
    simp [show (5971968 * k + 4881382) % 2 = 0 by omega]
    omega
  have h13 : C (2985984 * k + 2440691) = 8957952 * k + 7322074 := by
    unfold C
    simp [show (2985984 * k + 2440691) % 2 ≠ 0 by omega]
    omega
  have h14 : C (8957952 * k + 7322074) = 4478976 * k + 3661037 := by
    unfold C
    simp [show (8957952 * k + 7322074) % 2 = 0 by omega]
    omega
  have h15 : C (4478976 * k + 3661037) = 13436928 * k + 10983112 := by
    unfold C
    simp [show (4478976 * k + 3661037) % 2 ≠ 0 by omega]
    omega
  have h16 : C (13436928 * k + 10983112) = 6718464 * k + 5491556 := by
    unfold C
    simp [show (13436928 * k + 10983112) % 2 = 0 by omega]
    omega
  have h17 : C (6718464 * k + 5491556) = 3359232 * k + 2745778 := by
    unfold C
    simp [show (6718464 * k + 5491556) % 2 = 0 by omega]
    omega
  have h18 : C (3359232 * k + 2745778) = 1679616 * k + 1372889 := by
    unfold C
    simp [show (3359232 * k + 2745778) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 1372889) = 5038848 * k + 4118668 := by
    unfold C
    simp [show (1679616 * k + 1372889) % 2 ≠ 0 by omega]
    omega
  have h20 : C (5038848 * k + 4118668) = 2519424 * k + 2059334 := by
    unfold C
    simp [show (5038848 * k + 4118668) % 2 = 0 by omega]
    omega
  have h21 : C (2519424 * k + 2059334) = 1259712 * k + 1029667 := by
    unfold C
    simp [show (2519424 * k + 2059334) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 1029667) = 3779136 * k + 3089002 := by
    unfold C
    simp [show (1259712 * k + 1029667) % 2 ≠ 0 by omega]
    omega
  have h23 : C (3779136 * k + 3089002) = 1889568 * k + 1544501 := by
    unfold C
    simp [show (3779136 * k + 3089002) % 2 = 0 by omega]
    omega
  have h24 : C (1889568 * k + 1544501) = 5668704 * k + 4633504 := by
    unfold C
    simp [show (1889568 * k + 1544501) % 2 ≠ 0 by omega]
    omega
  have h25 : C (5668704 * k + 4633504) = 2834352 * k + 2316752 := by
    unfold C
    simp [show (5668704 * k + 4633504) % 2 = 0 by omega]
    omega
  have h26 : C (2834352 * k + 2316752) = 1417176 * k + 1158376 := by
    unfold C
    simp [show (2834352 * k + 2316752) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 1158376) = 708588 * k + 579188 := by
    unfold C
    simp [show (1417176 * k + 1158376) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 579188) = 354294 * k + 289594 := by
    unfold C
    simp [show (708588 * k + 579188) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 289594) = 177147 * k + 144797 := by
    unfold C
    simp [show (354294 * k + 289594) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 214271) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 214271))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_214527 : ∀ k : Nat,
    iterate (262144 * k + 214527) 29 = 177147 * k + 144970 ∧
      177147 * k + 144970 < 262144 * k + 214527 := by
  intro k
  have h1 : C (262144 * k + 214527) = 786432 * k + 643582 := by
    unfold C
    simp [show (262144 * k + 214527) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 643582) = 393216 * k + 321791 := by
    unfold C
    simp [show (786432 * k + 643582) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 321791) = 1179648 * k + 965374 := by
    unfold C
    simp [show (393216 * k + 321791) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 965374) = 589824 * k + 482687 := by
    unfold C
    simp [show (1179648 * k + 965374) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 482687) = 1769472 * k + 1448062 := by
    unfold C
    simp [show (589824 * k + 482687) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 1448062) = 884736 * k + 724031 := by
    unfold C
    simp [show (1769472 * k + 1448062) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 724031) = 2654208 * k + 2172094 := by
    unfold C
    simp [show (884736 * k + 724031) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 2172094) = 1327104 * k + 1086047 := by
    unfold C
    simp [show (2654208 * k + 2172094) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 1086047) = 3981312 * k + 3258142 := by
    unfold C
    simp [show (1327104 * k + 1086047) % 2 ≠ 0 by omega]
    omega
  have h10 : C (3981312 * k + 3258142) = 1990656 * k + 1629071 := by
    unfold C
    simp [show (3981312 * k + 3258142) % 2 = 0 by omega]
    omega
  have h11 : C (1990656 * k + 1629071) = 5971968 * k + 4887214 := by
    unfold C
    simp [show (1990656 * k + 1629071) % 2 ≠ 0 by omega]
    omega
  have h12 : C (5971968 * k + 4887214) = 2985984 * k + 2443607 := by
    unfold C
    simp [show (5971968 * k + 4887214) % 2 = 0 by omega]
    omega
  have h13 : C (2985984 * k + 2443607) = 8957952 * k + 7330822 := by
    unfold C
    simp [show (2985984 * k + 2443607) % 2 ≠ 0 by omega]
    omega
  have h14 : C (8957952 * k + 7330822) = 4478976 * k + 3665411 := by
    unfold C
    simp [show (8957952 * k + 7330822) % 2 = 0 by omega]
    omega
  have h15 : C (4478976 * k + 3665411) = 13436928 * k + 10996234 := by
    unfold C
    simp [show (4478976 * k + 3665411) % 2 ≠ 0 by omega]
    omega
  have h16 : C (13436928 * k + 10996234) = 6718464 * k + 5498117 := by
    unfold C
    simp [show (13436928 * k + 10996234) % 2 = 0 by omega]
    omega
  have h17 : C (6718464 * k + 5498117) = 20155392 * k + 16494352 := by
    unfold C
    simp [show (6718464 * k + 5498117) % 2 ≠ 0 by omega]
    omega
  have h18 : C (20155392 * k + 16494352) = 10077696 * k + 8247176 := by
    unfold C
    simp [show (20155392 * k + 16494352) % 2 = 0 by omega]
    omega
  have h19 : C (10077696 * k + 8247176) = 5038848 * k + 4123588 := by
    unfold C
    simp [show (10077696 * k + 8247176) % 2 = 0 by omega]
    omega
  have h20 : C (5038848 * k + 4123588) = 2519424 * k + 2061794 := by
    unfold C
    simp [show (5038848 * k + 4123588) % 2 = 0 by omega]
    omega
  have h21 : C (2519424 * k + 2061794) = 1259712 * k + 1030897 := by
    unfold C
    simp [show (2519424 * k + 2061794) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 1030897) = 3779136 * k + 3092692 := by
    unfold C
    simp [show (1259712 * k + 1030897) % 2 ≠ 0 by omega]
    omega
  have h23 : C (3779136 * k + 3092692) = 1889568 * k + 1546346 := by
    unfold C
    simp [show (3779136 * k + 3092692) % 2 = 0 by omega]
    omega
  have h24 : C (1889568 * k + 1546346) = 944784 * k + 773173 := by
    unfold C
    simp [show (1889568 * k + 1546346) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 773173) = 2834352 * k + 2319520 := by
    unfold C
    simp [show (944784 * k + 773173) % 2 ≠ 0 by omega]
    omega
  have h26 : C (2834352 * k + 2319520) = 1417176 * k + 1159760 := by
    unfold C
    simp [show (2834352 * k + 2319520) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 1159760) = 708588 * k + 579880 := by
    unfold C
    simp [show (1417176 * k + 1159760) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 579880) = 354294 * k + 289940 := by
    unfold C
    simp [show (708588 * k + 579880) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 289940) = 177147 * k + 144970 := by
    unfold C
    simp [show (354294 * k + 289940) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 214527) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 214527))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_214683 : ∀ k : Nat,
    iterate (262144 * k + 214683) 29 = 177147 * k + 145076 ∧
      177147 * k + 145076 < 262144 * k + 214683 := by
  intro k
  have h1 : C (262144 * k + 214683) = 786432 * k + 644050 := by
    unfold C
    simp [show (262144 * k + 214683) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 644050) = 393216 * k + 322025 := by
    unfold C
    simp [show (786432 * k + 644050) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 322025) = 1179648 * k + 966076 := by
    unfold C
    simp [show (393216 * k + 322025) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 966076) = 589824 * k + 483038 := by
    unfold C
    simp [show (1179648 * k + 966076) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 483038) = 294912 * k + 241519 := by
    unfold C
    simp [show (589824 * k + 483038) % 2 = 0 by omega]
    omega
  have h6 : C (294912 * k + 241519) = 884736 * k + 724558 := by
    unfold C
    simp [show (294912 * k + 241519) % 2 ≠ 0 by omega]
    omega
  have h7 : C (884736 * k + 724558) = 442368 * k + 362279 := by
    unfold C
    simp [show (884736 * k + 724558) % 2 = 0 by omega]
    omega
  have h8 : C (442368 * k + 362279) = 1327104 * k + 1086838 := by
    unfold C
    simp [show (442368 * k + 362279) % 2 ≠ 0 by omega]
    omega
  have h9 : C (1327104 * k + 1086838) = 663552 * k + 543419 := by
    unfold C
    simp [show (1327104 * k + 1086838) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 543419) = 1990656 * k + 1630258 := by
    unfold C
    simp [show (663552 * k + 543419) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 1630258) = 995328 * k + 815129 := by
    unfold C
    simp [show (1990656 * k + 1630258) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 815129) = 2985984 * k + 2445388 := by
    unfold C
    simp [show (995328 * k + 815129) % 2 ≠ 0 by omega]
    omega
  have h13 : C (2985984 * k + 2445388) = 1492992 * k + 1222694 := by
    unfold C
    simp [show (2985984 * k + 2445388) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 1222694) = 746496 * k + 611347 := by
    unfold C
    simp [show (1492992 * k + 1222694) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 611347) = 2239488 * k + 1834042 := by
    unfold C
    simp [show (746496 * k + 611347) % 2 ≠ 0 by omega]
    omega
  have h16 : C (2239488 * k + 1834042) = 1119744 * k + 917021 := by
    unfold C
    simp [show (2239488 * k + 1834042) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 917021) = 3359232 * k + 2751064 := by
    unfold C
    simp [show (1119744 * k + 917021) % 2 ≠ 0 by omega]
    omega
  have h18 : C (3359232 * k + 2751064) = 1679616 * k + 1375532 := by
    unfold C
    simp [show (3359232 * k + 2751064) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 1375532) = 839808 * k + 687766 := by
    unfold C
    simp [show (1679616 * k + 1375532) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 687766) = 419904 * k + 343883 := by
    unfold C
    simp [show (839808 * k + 687766) % 2 = 0 by omega]
    omega
  have h21 : C (419904 * k + 343883) = 1259712 * k + 1031650 := by
    unfold C
    simp [show (419904 * k + 343883) % 2 ≠ 0 by omega]
    omega
  have h22 : C (1259712 * k + 1031650) = 629856 * k + 515825 := by
    unfold C
    simp [show (1259712 * k + 1031650) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 515825) = 1889568 * k + 1547476 := by
    unfold C
    simp [show (629856 * k + 515825) % 2 ≠ 0 by omega]
    omega
  have h24 : C (1889568 * k + 1547476) = 944784 * k + 773738 := by
    unfold C
    simp [show (1889568 * k + 1547476) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 773738) = 472392 * k + 386869 := by
    unfold C
    simp [show (944784 * k + 773738) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 386869) = 1417176 * k + 1160608 := by
    unfold C
    simp [show (472392 * k + 386869) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 1160608) = 708588 * k + 580304 := by
    unfold C
    simp [show (1417176 * k + 1160608) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 580304) = 354294 * k + 290152 := by
    unfold C
    simp [show (708588 * k + 580304) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 290152) = 177147 * k + 145076 := by
    unfold C
    simp [show (354294 * k + 290152) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 214683) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 214683))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_215291 : ∀ k : Nat,
    iterate (262144 * k + 215291) 29 = 177147 * k + 145487 ∧
      177147 * k + 145487 < 262144 * k + 215291 := by
  intro k
  have h1 : C (262144 * k + 215291) = 786432 * k + 645874 := by
    unfold C
    simp [show (262144 * k + 215291) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 645874) = 393216 * k + 322937 := by
    unfold C
    simp [show (786432 * k + 645874) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 322937) = 1179648 * k + 968812 := by
    unfold C
    simp [show (393216 * k + 322937) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 968812) = 589824 * k + 484406 := by
    unfold C
    simp [show (1179648 * k + 968812) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 484406) = 294912 * k + 242203 := by
    unfold C
    simp [show (589824 * k + 484406) % 2 = 0 by omega]
    omega
  have h6 : C (294912 * k + 242203) = 884736 * k + 726610 := by
    unfold C
    simp [show (294912 * k + 242203) % 2 ≠ 0 by omega]
    omega
  have h7 : C (884736 * k + 726610) = 442368 * k + 363305 := by
    unfold C
    simp [show (884736 * k + 726610) % 2 = 0 by omega]
    omega
  have h8 : C (442368 * k + 363305) = 1327104 * k + 1089916 := by
    unfold C
    simp [show (442368 * k + 363305) % 2 ≠ 0 by omega]
    omega
  have h9 : C (1327104 * k + 1089916) = 663552 * k + 544958 := by
    unfold C
    simp [show (1327104 * k + 1089916) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 544958) = 331776 * k + 272479 := by
    unfold C
    simp [show (663552 * k + 544958) % 2 = 0 by omega]
    omega
  have h11 : C (331776 * k + 272479) = 995328 * k + 817438 := by
    unfold C
    simp [show (331776 * k + 272479) % 2 ≠ 0 by omega]
    omega
  have h12 : C (995328 * k + 817438) = 497664 * k + 408719 := by
    unfold C
    simp [show (995328 * k + 817438) % 2 = 0 by omega]
    omega
  have h13 : C (497664 * k + 408719) = 1492992 * k + 1226158 := by
    unfold C
    simp [show (497664 * k + 408719) % 2 ≠ 0 by omega]
    omega
  have h14 : C (1492992 * k + 1226158) = 746496 * k + 613079 := by
    unfold C
    simp [show (1492992 * k + 1226158) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 613079) = 2239488 * k + 1839238 := by
    unfold C
    simp [show (746496 * k + 613079) % 2 ≠ 0 by omega]
    omega
  have h16 : C (2239488 * k + 1839238) = 1119744 * k + 919619 := by
    unfold C
    simp [show (2239488 * k + 1839238) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 919619) = 3359232 * k + 2758858 := by
    unfold C
    simp [show (1119744 * k + 919619) % 2 ≠ 0 by omega]
    omega
  have h18 : C (3359232 * k + 2758858) = 1679616 * k + 1379429 := by
    unfold C
    simp [show (3359232 * k + 2758858) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 1379429) = 5038848 * k + 4138288 := by
    unfold C
    simp [show (1679616 * k + 1379429) % 2 ≠ 0 by omega]
    omega
  have h20 : C (5038848 * k + 4138288) = 2519424 * k + 2069144 := by
    unfold C
    simp [show (5038848 * k + 4138288) % 2 = 0 by omega]
    omega
  have h21 : C (2519424 * k + 2069144) = 1259712 * k + 1034572 := by
    unfold C
    simp [show (2519424 * k + 2069144) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 1034572) = 629856 * k + 517286 := by
    unfold C
    simp [show (1259712 * k + 1034572) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 517286) = 314928 * k + 258643 := by
    unfold C
    simp [show (629856 * k + 517286) % 2 = 0 by omega]
    omega
  have h24 : C (314928 * k + 258643) = 944784 * k + 775930 := by
    unfold C
    simp [show (314928 * k + 258643) % 2 ≠ 0 by omega]
    omega
  have h25 : C (944784 * k + 775930) = 472392 * k + 387965 := by
    unfold C
    simp [show (944784 * k + 775930) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 387965) = 1417176 * k + 1163896 := by
    unfold C
    simp [show (472392 * k + 387965) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 1163896) = 708588 * k + 581948 := by
    unfold C
    simp [show (1417176 * k + 1163896) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 581948) = 354294 * k + 290974 := by
    unfold C
    simp [show (708588 * k + 581948) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 290974) = 177147 * k + 145487 := by
    unfold C
    simp [show (354294 * k + 290974) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 215291) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 215291))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_215367 : ∀ k : Nat,
    iterate (262144 * k + 215367) 29 = 177147 * k + 145538 ∧
      177147 * k + 145538 < 262144 * k + 215367 := by
  intro k
  have h1 : C (262144 * k + 215367) = 786432 * k + 646102 := by
    unfold C
    simp [show (262144 * k + 215367) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 646102) = 393216 * k + 323051 := by
    unfold C
    simp [show (786432 * k + 646102) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 323051) = 1179648 * k + 969154 := by
    unfold C
    simp [show (393216 * k + 323051) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 969154) = 589824 * k + 484577 := by
    unfold C
    simp [show (1179648 * k + 969154) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 484577) = 1769472 * k + 1453732 := by
    unfold C
    simp [show (589824 * k + 484577) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 1453732) = 884736 * k + 726866 := by
    unfold C
    simp [show (1769472 * k + 1453732) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 726866) = 442368 * k + 363433 := by
    unfold C
    simp [show (884736 * k + 726866) % 2 = 0 by omega]
    omega
  have h8 : C (442368 * k + 363433) = 1327104 * k + 1090300 := by
    unfold C
    simp [show (442368 * k + 363433) % 2 ≠ 0 by omega]
    omega
  have h9 : C (1327104 * k + 1090300) = 663552 * k + 545150 := by
    unfold C
    simp [show (1327104 * k + 1090300) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 545150) = 331776 * k + 272575 := by
    unfold C
    simp [show (663552 * k + 545150) % 2 = 0 by omega]
    omega
  have h11 : C (331776 * k + 272575) = 995328 * k + 817726 := by
    unfold C
    simp [show (331776 * k + 272575) % 2 ≠ 0 by omega]
    omega
  have h12 : C (995328 * k + 817726) = 497664 * k + 408863 := by
    unfold C
    simp [show (995328 * k + 817726) % 2 = 0 by omega]
    omega
  have h13 : C (497664 * k + 408863) = 1492992 * k + 1226590 := by
    unfold C
    simp [show (497664 * k + 408863) % 2 ≠ 0 by omega]
    omega
  have h14 : C (1492992 * k + 1226590) = 746496 * k + 613295 := by
    unfold C
    simp [show (1492992 * k + 1226590) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 613295) = 2239488 * k + 1839886 := by
    unfold C
    simp [show (746496 * k + 613295) % 2 ≠ 0 by omega]
    omega
  have h16 : C (2239488 * k + 1839886) = 1119744 * k + 919943 := by
    unfold C
    simp [show (2239488 * k + 1839886) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 919943) = 3359232 * k + 2759830 := by
    unfold C
    simp [show (1119744 * k + 919943) % 2 ≠ 0 by omega]
    omega
  have h18 : C (3359232 * k + 2759830) = 1679616 * k + 1379915 := by
    unfold C
    simp [show (3359232 * k + 2759830) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 1379915) = 5038848 * k + 4139746 := by
    unfold C
    simp [show (1679616 * k + 1379915) % 2 ≠ 0 by omega]
    omega
  have h20 : C (5038848 * k + 4139746) = 2519424 * k + 2069873 := by
    unfold C
    simp [show (5038848 * k + 4139746) % 2 = 0 by omega]
    omega
  have h21 : C (2519424 * k + 2069873) = 7558272 * k + 6209620 := by
    unfold C
    simp [show (2519424 * k + 2069873) % 2 ≠ 0 by omega]
    omega
  have h22 : C (7558272 * k + 6209620) = 3779136 * k + 3104810 := by
    unfold C
    simp [show (7558272 * k + 6209620) % 2 = 0 by omega]
    omega
  have h23 : C (3779136 * k + 3104810) = 1889568 * k + 1552405 := by
    unfold C
    simp [show (3779136 * k + 3104810) % 2 = 0 by omega]
    omega
  have h24 : C (1889568 * k + 1552405) = 5668704 * k + 4657216 := by
    unfold C
    simp [show (1889568 * k + 1552405) % 2 ≠ 0 by omega]
    omega
  have h25 : C (5668704 * k + 4657216) = 2834352 * k + 2328608 := by
    unfold C
    simp [show (5668704 * k + 4657216) % 2 = 0 by omega]
    omega
  have h26 : C (2834352 * k + 2328608) = 1417176 * k + 1164304 := by
    unfold C
    simp [show (2834352 * k + 2328608) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 1164304) = 708588 * k + 582152 := by
    unfold C
    simp [show (1417176 * k + 1164304) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 582152) = 354294 * k + 291076 := by
    unfold C
    simp [show (708588 * k + 582152) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 291076) = 177147 * k + 145538 := by
    unfold C
    simp [show (354294 * k + 291076) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 215367) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 215367))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_215451 : ∀ k : Nat,
    iterate (262144 * k + 215451) 29 = 177147 * k + 145595 ∧
      177147 * k + 145595 < 262144 * k + 215451 := by
  intro k
  have h1 : C (262144 * k + 215451) = 786432 * k + 646354 := by
    unfold C
    simp [show (262144 * k + 215451) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 646354) = 393216 * k + 323177 := by
    unfold C
    simp [show (786432 * k + 646354) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 323177) = 1179648 * k + 969532 := by
    unfold C
    simp [show (393216 * k + 323177) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 969532) = 589824 * k + 484766 := by
    unfold C
    simp [show (1179648 * k + 969532) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 484766) = 294912 * k + 242383 := by
    unfold C
    simp [show (589824 * k + 484766) % 2 = 0 by omega]
    omega
  have h6 : C (294912 * k + 242383) = 884736 * k + 727150 := by
    unfold C
    simp [show (294912 * k + 242383) % 2 ≠ 0 by omega]
    omega
  have h7 : C (884736 * k + 727150) = 442368 * k + 363575 := by
    unfold C
    simp [show (884736 * k + 727150) % 2 = 0 by omega]
    omega
  have h8 : C (442368 * k + 363575) = 1327104 * k + 1090726 := by
    unfold C
    simp [show (442368 * k + 363575) % 2 ≠ 0 by omega]
    omega
  have h9 : C (1327104 * k + 1090726) = 663552 * k + 545363 := by
    unfold C
    simp [show (1327104 * k + 1090726) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 545363) = 1990656 * k + 1636090 := by
    unfold C
    simp [show (663552 * k + 545363) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 1636090) = 995328 * k + 818045 := by
    unfold C
    simp [show (1990656 * k + 1636090) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 818045) = 2985984 * k + 2454136 := by
    unfold C
    simp [show (995328 * k + 818045) % 2 ≠ 0 by omega]
    omega
  have h13 : C (2985984 * k + 2454136) = 1492992 * k + 1227068 := by
    unfold C
    simp [show (2985984 * k + 2454136) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 1227068) = 746496 * k + 613534 := by
    unfold C
    simp [show (1492992 * k + 1227068) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 613534) = 373248 * k + 306767 := by
    unfold C
    simp [show (746496 * k + 613534) % 2 = 0 by omega]
    omega
  have h16 : C (373248 * k + 306767) = 1119744 * k + 920302 := by
    unfold C
    simp [show (373248 * k + 306767) % 2 ≠ 0 by omega]
    omega
  have h17 : C (1119744 * k + 920302) = 559872 * k + 460151 := by
    unfold C
    simp [show (1119744 * k + 920302) % 2 = 0 by omega]
    omega
  have h18 : C (559872 * k + 460151) = 1679616 * k + 1380454 := by
    unfold C
    simp [show (559872 * k + 460151) % 2 ≠ 0 by omega]
    omega
  have h19 : C (1679616 * k + 1380454) = 839808 * k + 690227 := by
    unfold C
    simp [show (1679616 * k + 1380454) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 690227) = 2519424 * k + 2070682 := by
    unfold C
    simp [show (839808 * k + 690227) % 2 ≠ 0 by omega]
    omega
  have h21 : C (2519424 * k + 2070682) = 1259712 * k + 1035341 := by
    unfold C
    simp [show (2519424 * k + 2070682) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 1035341) = 3779136 * k + 3106024 := by
    unfold C
    simp [show (1259712 * k + 1035341) % 2 ≠ 0 by omega]
    omega
  have h23 : C (3779136 * k + 3106024) = 1889568 * k + 1553012 := by
    unfold C
    simp [show (3779136 * k + 3106024) % 2 = 0 by omega]
    omega
  have h24 : C (1889568 * k + 1553012) = 944784 * k + 776506 := by
    unfold C
    simp [show (1889568 * k + 1553012) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 776506) = 472392 * k + 388253 := by
    unfold C
    simp [show (944784 * k + 776506) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 388253) = 1417176 * k + 1164760 := by
    unfold C
    simp [show (472392 * k + 388253) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 1164760) = 708588 * k + 582380 := by
    unfold C
    simp [show (1417176 * k + 1164760) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 582380) = 354294 * k + 291190 := by
    unfold C
    simp [show (708588 * k + 582380) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 291190) = 177147 * k + 145595 := by
    unfold C
    simp [show (354294 * k + 291190) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 215451) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 215451))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_215663 : ∀ k : Nat,
    iterate (262144 * k + 215663) 29 = 177147 * k + 145738 ∧
      177147 * k + 145738 < 262144 * k + 215663 := by
  intro k
  have h1 : C (262144 * k + 215663) = 786432 * k + 646990 := by
    unfold C
    simp [show (262144 * k + 215663) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 646990) = 393216 * k + 323495 := by
    unfold C
    simp [show (786432 * k + 646990) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 323495) = 1179648 * k + 970486 := by
    unfold C
    simp [show (393216 * k + 323495) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 970486) = 589824 * k + 485243 := by
    unfold C
    simp [show (1179648 * k + 970486) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 485243) = 1769472 * k + 1455730 := by
    unfold C
    simp [show (589824 * k + 485243) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 1455730) = 884736 * k + 727865 := by
    unfold C
    simp [show (1769472 * k + 1455730) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 727865) = 2654208 * k + 2183596 := by
    unfold C
    simp [show (884736 * k + 727865) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 2183596) = 1327104 * k + 1091798 := by
    unfold C
    simp [show (2654208 * k + 2183596) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 1091798) = 663552 * k + 545899 := by
    unfold C
    simp [show (1327104 * k + 1091798) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 545899) = 1990656 * k + 1637698 := by
    unfold C
    simp [show (663552 * k + 545899) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 1637698) = 995328 * k + 818849 := by
    unfold C
    simp [show (1990656 * k + 1637698) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 818849) = 2985984 * k + 2456548 := by
    unfold C
    simp [show (995328 * k + 818849) % 2 ≠ 0 by omega]
    omega
  have h13 : C (2985984 * k + 2456548) = 1492992 * k + 1228274 := by
    unfold C
    simp [show (2985984 * k + 2456548) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 1228274) = 746496 * k + 614137 := by
    unfold C
    simp [show (1492992 * k + 1228274) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 614137) = 2239488 * k + 1842412 := by
    unfold C
    simp [show (746496 * k + 614137) % 2 ≠ 0 by omega]
    omega
  have h16 : C (2239488 * k + 1842412) = 1119744 * k + 921206 := by
    unfold C
    simp [show (2239488 * k + 1842412) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 921206) = 559872 * k + 460603 := by
    unfold C
    simp [show (1119744 * k + 921206) % 2 = 0 by omega]
    omega
  have h18 : C (559872 * k + 460603) = 1679616 * k + 1381810 := by
    unfold C
    simp [show (559872 * k + 460603) % 2 ≠ 0 by omega]
    omega
  have h19 : C (1679616 * k + 1381810) = 839808 * k + 690905 := by
    unfold C
    simp [show (1679616 * k + 1381810) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 690905) = 2519424 * k + 2072716 := by
    unfold C
    simp [show (839808 * k + 690905) % 2 ≠ 0 by omega]
    omega
  have h21 : C (2519424 * k + 2072716) = 1259712 * k + 1036358 := by
    unfold C
    simp [show (2519424 * k + 2072716) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 1036358) = 629856 * k + 518179 := by
    unfold C
    simp [show (1259712 * k + 1036358) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 518179) = 1889568 * k + 1554538 := by
    unfold C
    simp [show (629856 * k + 518179) % 2 ≠ 0 by omega]
    omega
  have h24 : C (1889568 * k + 1554538) = 944784 * k + 777269 := by
    unfold C
    simp [show (1889568 * k + 1554538) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 777269) = 2834352 * k + 2331808 := by
    unfold C
    simp [show (944784 * k + 777269) % 2 ≠ 0 by omega]
    omega
  have h26 : C (2834352 * k + 2331808) = 1417176 * k + 1165904 := by
    unfold C
    simp [show (2834352 * k + 2331808) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 1165904) = 708588 * k + 582952 := by
    unfold C
    simp [show (1417176 * k + 1165904) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 582952) = 354294 * k + 291476 := by
    unfold C
    simp [show (708588 * k + 582952) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 291476) = 177147 * k + 145738 := by
    unfold C
    simp [show (354294 * k + 291476) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 215663) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 215663))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_215783 : ∀ k : Nat,
    iterate (262144 * k + 215783) 29 = 177147 * k + 145819 ∧
      177147 * k + 145819 < 262144 * k + 215783 := by
  intro k
  have h1 : C (262144 * k + 215783) = 786432 * k + 647350 := by
    unfold C
    simp [show (262144 * k + 215783) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 647350) = 393216 * k + 323675 := by
    unfold C
    simp [show (786432 * k + 647350) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 323675) = 1179648 * k + 971026 := by
    unfold C
    simp [show (393216 * k + 323675) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 971026) = 589824 * k + 485513 := by
    unfold C
    simp [show (1179648 * k + 971026) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 485513) = 1769472 * k + 1456540 := by
    unfold C
    simp [show (589824 * k + 485513) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 1456540) = 884736 * k + 728270 := by
    unfold C
    simp [show (1769472 * k + 1456540) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 728270) = 442368 * k + 364135 := by
    unfold C
    simp [show (884736 * k + 728270) % 2 = 0 by omega]
    omega
  have h8 : C (442368 * k + 364135) = 1327104 * k + 1092406 := by
    unfold C
    simp [show (442368 * k + 364135) % 2 ≠ 0 by omega]
    omega
  have h9 : C (1327104 * k + 1092406) = 663552 * k + 546203 := by
    unfold C
    simp [show (1327104 * k + 1092406) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 546203) = 1990656 * k + 1638610 := by
    unfold C
    simp [show (663552 * k + 546203) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 1638610) = 995328 * k + 819305 := by
    unfold C
    simp [show (1990656 * k + 1638610) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 819305) = 2985984 * k + 2457916 := by
    unfold C
    simp [show (995328 * k + 819305) % 2 ≠ 0 by omega]
    omega
  have h13 : C (2985984 * k + 2457916) = 1492992 * k + 1228958 := by
    unfold C
    simp [show (2985984 * k + 2457916) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 1228958) = 746496 * k + 614479 := by
    unfold C
    simp [show (1492992 * k + 1228958) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 614479) = 2239488 * k + 1843438 := by
    unfold C
    simp [show (746496 * k + 614479) % 2 ≠ 0 by omega]
    omega
  have h16 : C (2239488 * k + 1843438) = 1119744 * k + 921719 := by
    unfold C
    simp [show (2239488 * k + 1843438) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 921719) = 3359232 * k + 2765158 := by
    unfold C
    simp [show (1119744 * k + 921719) % 2 ≠ 0 by omega]
    omega
  have h18 : C (3359232 * k + 2765158) = 1679616 * k + 1382579 := by
    unfold C
    simp [show (3359232 * k + 2765158) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 1382579) = 5038848 * k + 4147738 := by
    unfold C
    simp [show (1679616 * k + 1382579) % 2 ≠ 0 by omega]
    omega
  have h20 : C (5038848 * k + 4147738) = 2519424 * k + 2073869 := by
    unfold C
    simp [show (5038848 * k + 4147738) % 2 = 0 by omega]
    omega
  have h21 : C (2519424 * k + 2073869) = 7558272 * k + 6221608 := by
    unfold C
    simp [show (2519424 * k + 2073869) % 2 ≠ 0 by omega]
    omega
  have h22 : C (7558272 * k + 6221608) = 3779136 * k + 3110804 := by
    unfold C
    simp [show (7558272 * k + 6221608) % 2 = 0 by omega]
    omega
  have h23 : C (3779136 * k + 3110804) = 1889568 * k + 1555402 := by
    unfold C
    simp [show (3779136 * k + 3110804) % 2 = 0 by omega]
    omega
  have h24 : C (1889568 * k + 1555402) = 944784 * k + 777701 := by
    unfold C
    simp [show (1889568 * k + 1555402) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 777701) = 2834352 * k + 2333104 := by
    unfold C
    simp [show (944784 * k + 777701) % 2 ≠ 0 by omega]
    omega
  have h26 : C (2834352 * k + 2333104) = 1417176 * k + 1166552 := by
    unfold C
    simp [show (2834352 * k + 2333104) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 1166552) = 708588 * k + 583276 := by
    unfold C
    simp [show (1417176 * k + 1166552) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 583276) = 354294 * k + 291638 := by
    unfold C
    simp [show (708588 * k + 583276) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 291638) = 177147 * k + 145819 := by
    unfold C
    simp [show (354294 * k + 291638) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 215783) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 215783))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_216175 : ∀ k : Nat,
    iterate (262144 * k + 216175) 29 = 177147 * k + 146084 ∧
      177147 * k + 146084 < 262144 * k + 216175 := by
  intro k
  have h1 : C (262144 * k + 216175) = 786432 * k + 648526 := by
    unfold C
    simp [show (262144 * k + 216175) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 648526) = 393216 * k + 324263 := by
    unfold C
    simp [show (786432 * k + 648526) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 324263) = 1179648 * k + 972790 := by
    unfold C
    simp [show (393216 * k + 324263) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 972790) = 589824 * k + 486395 := by
    unfold C
    simp [show (1179648 * k + 972790) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 486395) = 1769472 * k + 1459186 := by
    unfold C
    simp [show (589824 * k + 486395) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 1459186) = 884736 * k + 729593 := by
    unfold C
    simp [show (1769472 * k + 1459186) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 729593) = 2654208 * k + 2188780 := by
    unfold C
    simp [show (884736 * k + 729593) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 2188780) = 1327104 * k + 1094390 := by
    unfold C
    simp [show (2654208 * k + 2188780) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 1094390) = 663552 * k + 547195 := by
    unfold C
    simp [show (1327104 * k + 1094390) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 547195) = 1990656 * k + 1641586 := by
    unfold C
    simp [show (663552 * k + 547195) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 1641586) = 995328 * k + 820793 := by
    unfold C
    simp [show (1990656 * k + 1641586) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 820793) = 2985984 * k + 2462380 := by
    unfold C
    simp [show (995328 * k + 820793) % 2 ≠ 0 by omega]
    omega
  have h13 : C (2985984 * k + 2462380) = 1492992 * k + 1231190 := by
    unfold C
    simp [show (2985984 * k + 2462380) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 1231190) = 746496 * k + 615595 := by
    unfold C
    simp [show (1492992 * k + 1231190) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 615595) = 2239488 * k + 1846786 := by
    unfold C
    simp [show (746496 * k + 615595) % 2 ≠ 0 by omega]
    omega
  have h16 : C (2239488 * k + 1846786) = 1119744 * k + 923393 := by
    unfold C
    simp [show (2239488 * k + 1846786) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 923393) = 3359232 * k + 2770180 := by
    unfold C
    simp [show (1119744 * k + 923393) % 2 ≠ 0 by omega]
    omega
  have h18 : C (3359232 * k + 2770180) = 1679616 * k + 1385090 := by
    unfold C
    simp [show (3359232 * k + 2770180) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 1385090) = 839808 * k + 692545 := by
    unfold C
    simp [show (1679616 * k + 1385090) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 692545) = 2519424 * k + 2077636 := by
    unfold C
    simp [show (839808 * k + 692545) % 2 ≠ 0 by omega]
    omega
  have h21 : C (2519424 * k + 2077636) = 1259712 * k + 1038818 := by
    unfold C
    simp [show (2519424 * k + 2077636) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 1038818) = 629856 * k + 519409 := by
    unfold C
    simp [show (1259712 * k + 1038818) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 519409) = 1889568 * k + 1558228 := by
    unfold C
    simp [show (629856 * k + 519409) % 2 ≠ 0 by omega]
    omega
  have h24 : C (1889568 * k + 1558228) = 944784 * k + 779114 := by
    unfold C
    simp [show (1889568 * k + 1558228) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 779114) = 472392 * k + 389557 := by
    unfold C
    simp [show (944784 * k + 779114) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 389557) = 1417176 * k + 1168672 := by
    unfold C
    simp [show (472392 * k + 389557) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 1168672) = 708588 * k + 584336 := by
    unfold C
    simp [show (1417176 * k + 1168672) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 584336) = 354294 * k + 292168 := by
    unfold C
    simp [show (708588 * k + 584336) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 292168) = 177147 * k + 146084 := by
    unfold C
    simp [show (354294 * k + 292168) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 216175) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 216175))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_216255 : ∀ k : Nat,
    iterate (262144 * k + 216255) 29 = 177147 * k + 146138 ∧
      177147 * k + 146138 < 262144 * k + 216255 := by
  intro k
  have h1 : C (262144 * k + 216255) = 786432 * k + 648766 := by
    unfold C
    simp [show (262144 * k + 216255) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 648766) = 393216 * k + 324383 := by
    unfold C
    simp [show (786432 * k + 648766) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 324383) = 1179648 * k + 973150 := by
    unfold C
    simp [show (393216 * k + 324383) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 973150) = 589824 * k + 486575 := by
    unfold C
    simp [show (1179648 * k + 973150) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 486575) = 1769472 * k + 1459726 := by
    unfold C
    simp [show (589824 * k + 486575) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 1459726) = 884736 * k + 729863 := by
    unfold C
    simp [show (1769472 * k + 1459726) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 729863) = 2654208 * k + 2189590 := by
    unfold C
    simp [show (884736 * k + 729863) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 2189590) = 1327104 * k + 1094795 := by
    unfold C
    simp [show (2654208 * k + 2189590) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 1094795) = 3981312 * k + 3284386 := by
    unfold C
    simp [show (1327104 * k + 1094795) % 2 ≠ 0 by omega]
    omega
  have h10 : C (3981312 * k + 3284386) = 1990656 * k + 1642193 := by
    unfold C
    simp [show (3981312 * k + 3284386) % 2 = 0 by omega]
    omega
  have h11 : C (1990656 * k + 1642193) = 5971968 * k + 4926580 := by
    unfold C
    simp [show (1990656 * k + 1642193) % 2 ≠ 0 by omega]
    omega
  have h12 : C (5971968 * k + 4926580) = 2985984 * k + 2463290 := by
    unfold C
    simp [show (5971968 * k + 4926580) % 2 = 0 by omega]
    omega
  have h13 : C (2985984 * k + 2463290) = 1492992 * k + 1231645 := by
    unfold C
    simp [show (2985984 * k + 2463290) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 1231645) = 4478976 * k + 3694936 := by
    unfold C
    simp [show (1492992 * k + 1231645) % 2 ≠ 0 by omega]
    omega
  have h15 : C (4478976 * k + 3694936) = 2239488 * k + 1847468 := by
    unfold C
    simp [show (4478976 * k + 3694936) % 2 = 0 by omega]
    omega
  have h16 : C (2239488 * k + 1847468) = 1119744 * k + 923734 := by
    unfold C
    simp [show (2239488 * k + 1847468) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 923734) = 559872 * k + 461867 := by
    unfold C
    simp [show (1119744 * k + 923734) % 2 = 0 by omega]
    omega
  have h18 : C (559872 * k + 461867) = 1679616 * k + 1385602 := by
    unfold C
    simp [show (559872 * k + 461867) % 2 ≠ 0 by omega]
    omega
  have h19 : C (1679616 * k + 1385602) = 839808 * k + 692801 := by
    unfold C
    simp [show (1679616 * k + 1385602) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 692801) = 2519424 * k + 2078404 := by
    unfold C
    simp [show (839808 * k + 692801) % 2 ≠ 0 by omega]
    omega
  have h21 : C (2519424 * k + 2078404) = 1259712 * k + 1039202 := by
    unfold C
    simp [show (2519424 * k + 2078404) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 1039202) = 629856 * k + 519601 := by
    unfold C
    simp [show (1259712 * k + 1039202) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 519601) = 1889568 * k + 1558804 := by
    unfold C
    simp [show (629856 * k + 519601) % 2 ≠ 0 by omega]
    omega
  have h24 : C (1889568 * k + 1558804) = 944784 * k + 779402 := by
    unfold C
    simp [show (1889568 * k + 1558804) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 779402) = 472392 * k + 389701 := by
    unfold C
    simp [show (944784 * k + 779402) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 389701) = 1417176 * k + 1169104 := by
    unfold C
    simp [show (472392 * k + 389701) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 1169104) = 708588 * k + 584552 := by
    unfold C
    simp [show (1417176 * k + 1169104) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 584552) = 354294 * k + 292276 := by
    unfold C
    simp [show (708588 * k + 584552) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 292276) = 177147 * k + 146138 := by
    unfold C
    simp [show (354294 * k + 292276) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 216255) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 216255))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

end CollatzM18Shard040
