import Mathlib.Data.Nat.Prime.Basic

namespace CollatzM18Shard003

def C (n : Nat) : Nat := if n % 2 = 0 then n / 2 else 3 * n + 1

def iterate (n t : Nat) : Nat := Nat.rec n (fun _ previous => C previous) t

theorem descent_mod262144_10495 : ∀ k : Nat,
    iterate (262144 * k + 10495) 29 = 177147 * k + 7093 ∧
      177147 * k + 7093 < 262144 * k + 10495 := by
  intro k
  have h1 : C (262144 * k + 10495) = 786432 * k + 31486 := by
    unfold C
    simp [show (262144 * k + 10495) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 31486) = 393216 * k + 15743 := by
    unfold C
    simp [show (786432 * k + 31486) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 15743) = 1179648 * k + 47230 := by
    unfold C
    simp [show (393216 * k + 15743) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 47230) = 589824 * k + 23615 := by
    unfold C
    simp [show (1179648 * k + 47230) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 23615) = 1769472 * k + 70846 := by
    unfold C
    simp [show (589824 * k + 23615) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 70846) = 884736 * k + 35423 := by
    unfold C
    simp [show (1769472 * k + 70846) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 35423) = 2654208 * k + 106270 := by
    unfold C
    simp [show (884736 * k + 35423) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 106270) = 1327104 * k + 53135 := by
    unfold C
    simp [show (2654208 * k + 106270) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 53135) = 3981312 * k + 159406 := by
    unfold C
    simp [show (1327104 * k + 53135) % 2 ≠ 0 by omega]
    omega
  have h10 : C (3981312 * k + 159406) = 1990656 * k + 79703 := by
    unfold C
    simp [show (3981312 * k + 159406) % 2 = 0 by omega]
    omega
  have h11 : C (1990656 * k + 79703) = 5971968 * k + 239110 := by
    unfold C
    simp [show (1990656 * k + 79703) % 2 ≠ 0 by omega]
    omega
  have h12 : C (5971968 * k + 239110) = 2985984 * k + 119555 := by
    unfold C
    simp [show (5971968 * k + 239110) % 2 = 0 by omega]
    omega
  have h13 : C (2985984 * k + 119555) = 8957952 * k + 358666 := by
    unfold C
    simp [show (2985984 * k + 119555) % 2 ≠ 0 by omega]
    omega
  have h14 : C (8957952 * k + 358666) = 4478976 * k + 179333 := by
    unfold C
    simp [show (8957952 * k + 358666) % 2 = 0 by omega]
    omega
  have h15 : C (4478976 * k + 179333) = 13436928 * k + 538000 := by
    unfold C
    simp [show (4478976 * k + 179333) % 2 ≠ 0 by omega]
    omega
  have h16 : C (13436928 * k + 538000) = 6718464 * k + 269000 := by
    unfold C
    simp [show (13436928 * k + 538000) % 2 = 0 by omega]
    omega
  have h17 : C (6718464 * k + 269000) = 3359232 * k + 134500 := by
    unfold C
    simp [show (6718464 * k + 269000) % 2 = 0 by omega]
    omega
  have h18 : C (3359232 * k + 134500) = 1679616 * k + 67250 := by
    unfold C
    simp [show (3359232 * k + 134500) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 67250) = 839808 * k + 33625 := by
    unfold C
    simp [show (1679616 * k + 67250) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 33625) = 2519424 * k + 100876 := by
    unfold C
    simp [show (839808 * k + 33625) % 2 ≠ 0 by omega]
    omega
  have h21 : C (2519424 * k + 100876) = 1259712 * k + 50438 := by
    unfold C
    simp [show (2519424 * k + 100876) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 50438) = 629856 * k + 25219 := by
    unfold C
    simp [show (1259712 * k + 50438) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 25219) = 1889568 * k + 75658 := by
    unfold C
    simp [show (629856 * k + 25219) % 2 ≠ 0 by omega]
    omega
  have h24 : C (1889568 * k + 75658) = 944784 * k + 37829 := by
    unfold C
    simp [show (1889568 * k + 75658) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 37829) = 2834352 * k + 113488 := by
    unfold C
    simp [show (944784 * k + 37829) % 2 ≠ 0 by omega]
    omega
  have h26 : C (2834352 * k + 113488) = 1417176 * k + 56744 := by
    unfold C
    simp [show (2834352 * k + 113488) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 56744) = 708588 * k + 28372 := by
    unfold C
    simp [show (1417176 * k + 56744) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 28372) = 354294 * k + 14186 := by
    unfold C
    simp [show (708588 * k + 28372) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 14186) = 177147 * k + 7093 := by
    unfold C
    simp [show (354294 * k + 14186) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 10495) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 10495))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_10567 : ∀ k : Nat,
    iterate (262144 * k + 10567) 29 = 177147 * k + 7142 ∧
      177147 * k + 7142 < 262144 * k + 10567 := by
  intro k
  have h1 : C (262144 * k + 10567) = 786432 * k + 31702 := by
    unfold C
    simp [show (262144 * k + 10567) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 31702) = 393216 * k + 15851 := by
    unfold C
    simp [show (786432 * k + 31702) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 15851) = 1179648 * k + 47554 := by
    unfold C
    simp [show (393216 * k + 15851) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 47554) = 589824 * k + 23777 := by
    unfold C
    simp [show (1179648 * k + 47554) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 23777) = 1769472 * k + 71332 := by
    unfold C
    simp [show (589824 * k + 23777) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 71332) = 884736 * k + 35666 := by
    unfold C
    simp [show (1769472 * k + 71332) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 35666) = 442368 * k + 17833 := by
    unfold C
    simp [show (884736 * k + 35666) % 2 = 0 by omega]
    omega
  have h8 : C (442368 * k + 17833) = 1327104 * k + 53500 := by
    unfold C
    simp [show (442368 * k + 17833) % 2 ≠ 0 by omega]
    omega
  have h9 : C (1327104 * k + 53500) = 663552 * k + 26750 := by
    unfold C
    simp [show (1327104 * k + 53500) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 26750) = 331776 * k + 13375 := by
    unfold C
    simp [show (663552 * k + 26750) % 2 = 0 by omega]
    omega
  have h11 : C (331776 * k + 13375) = 995328 * k + 40126 := by
    unfold C
    simp [show (331776 * k + 13375) % 2 ≠ 0 by omega]
    omega
  have h12 : C (995328 * k + 40126) = 497664 * k + 20063 := by
    unfold C
    simp [show (995328 * k + 40126) % 2 = 0 by omega]
    omega
  have h13 : C (497664 * k + 20063) = 1492992 * k + 60190 := by
    unfold C
    simp [show (497664 * k + 20063) % 2 ≠ 0 by omega]
    omega
  have h14 : C (1492992 * k + 60190) = 746496 * k + 30095 := by
    unfold C
    simp [show (1492992 * k + 60190) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 30095) = 2239488 * k + 90286 := by
    unfold C
    simp [show (746496 * k + 30095) % 2 ≠ 0 by omega]
    omega
  have h16 : C (2239488 * k + 90286) = 1119744 * k + 45143 := by
    unfold C
    simp [show (2239488 * k + 90286) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 45143) = 3359232 * k + 135430 := by
    unfold C
    simp [show (1119744 * k + 45143) % 2 ≠ 0 by omega]
    omega
  have h18 : C (3359232 * k + 135430) = 1679616 * k + 67715 := by
    unfold C
    simp [show (3359232 * k + 135430) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 67715) = 5038848 * k + 203146 := by
    unfold C
    simp [show (1679616 * k + 67715) % 2 ≠ 0 by omega]
    omega
  have h20 : C (5038848 * k + 203146) = 2519424 * k + 101573 := by
    unfold C
    simp [show (5038848 * k + 203146) % 2 = 0 by omega]
    omega
  have h21 : C (2519424 * k + 101573) = 7558272 * k + 304720 := by
    unfold C
    simp [show (2519424 * k + 101573) % 2 ≠ 0 by omega]
    omega
  have h22 : C (7558272 * k + 304720) = 3779136 * k + 152360 := by
    unfold C
    simp [show (7558272 * k + 304720) % 2 = 0 by omega]
    omega
  have h23 : C (3779136 * k + 152360) = 1889568 * k + 76180 := by
    unfold C
    simp [show (3779136 * k + 152360) % 2 = 0 by omega]
    omega
  have h24 : C (1889568 * k + 76180) = 944784 * k + 38090 := by
    unfold C
    simp [show (1889568 * k + 76180) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 38090) = 472392 * k + 19045 := by
    unfold C
    simp [show (944784 * k + 38090) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 19045) = 1417176 * k + 57136 := by
    unfold C
    simp [show (472392 * k + 19045) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 57136) = 708588 * k + 28568 := by
    unfold C
    simp [show (1417176 * k + 57136) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 28568) = 354294 * k + 14284 := by
    unfold C
    simp [show (708588 * k + 28568) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 14284) = 177147 * k + 7142 := by
    unfold C
    simp [show (354294 * k + 14284) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 10567) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 10567))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_11007 : ∀ k : Nat,
    iterate (262144 * k + 11007) 29 = 177147 * k + 7439 ∧
      177147 * k + 7439 < 262144 * k + 11007 := by
  intro k
  have h1 : C (262144 * k + 11007) = 786432 * k + 33022 := by
    unfold C
    simp [show (262144 * k + 11007) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 33022) = 393216 * k + 16511 := by
    unfold C
    simp [show (786432 * k + 33022) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 16511) = 1179648 * k + 49534 := by
    unfold C
    simp [show (393216 * k + 16511) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 49534) = 589824 * k + 24767 := by
    unfold C
    simp [show (1179648 * k + 49534) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 24767) = 1769472 * k + 74302 := by
    unfold C
    simp [show (589824 * k + 24767) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 74302) = 884736 * k + 37151 := by
    unfold C
    simp [show (1769472 * k + 74302) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 37151) = 2654208 * k + 111454 := by
    unfold C
    simp [show (884736 * k + 37151) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 111454) = 1327104 * k + 55727 := by
    unfold C
    simp [show (2654208 * k + 111454) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 55727) = 3981312 * k + 167182 := by
    unfold C
    simp [show (1327104 * k + 55727) % 2 ≠ 0 by omega]
    omega
  have h10 : C (3981312 * k + 167182) = 1990656 * k + 83591 := by
    unfold C
    simp [show (3981312 * k + 167182) % 2 = 0 by omega]
    omega
  have h11 : C (1990656 * k + 83591) = 5971968 * k + 250774 := by
    unfold C
    simp [show (1990656 * k + 83591) % 2 ≠ 0 by omega]
    omega
  have h12 : C (5971968 * k + 250774) = 2985984 * k + 125387 := by
    unfold C
    simp [show (5971968 * k + 250774) % 2 = 0 by omega]
    omega
  have h13 : C (2985984 * k + 125387) = 8957952 * k + 376162 := by
    unfold C
    simp [show (2985984 * k + 125387) % 2 ≠ 0 by omega]
    omega
  have h14 : C (8957952 * k + 376162) = 4478976 * k + 188081 := by
    unfold C
    simp [show (8957952 * k + 376162) % 2 = 0 by omega]
    omega
  have h15 : C (4478976 * k + 188081) = 13436928 * k + 564244 := by
    unfold C
    simp [show (4478976 * k + 188081) % 2 ≠ 0 by omega]
    omega
  have h16 : C (13436928 * k + 564244) = 6718464 * k + 282122 := by
    unfold C
    simp [show (13436928 * k + 564244) % 2 = 0 by omega]
    omega
  have h17 : C (6718464 * k + 282122) = 3359232 * k + 141061 := by
    unfold C
    simp [show (6718464 * k + 282122) % 2 = 0 by omega]
    omega
  have h18 : C (3359232 * k + 141061) = 10077696 * k + 423184 := by
    unfold C
    simp [show (3359232 * k + 141061) % 2 ≠ 0 by omega]
    omega
  have h19 : C (10077696 * k + 423184) = 5038848 * k + 211592 := by
    unfold C
    simp [show (10077696 * k + 423184) % 2 = 0 by omega]
    omega
  have h20 : C (5038848 * k + 211592) = 2519424 * k + 105796 := by
    unfold C
    simp [show (5038848 * k + 211592) % 2 = 0 by omega]
    omega
  have h21 : C (2519424 * k + 105796) = 1259712 * k + 52898 := by
    unfold C
    simp [show (2519424 * k + 105796) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 52898) = 629856 * k + 26449 := by
    unfold C
    simp [show (1259712 * k + 52898) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 26449) = 1889568 * k + 79348 := by
    unfold C
    simp [show (629856 * k + 26449) % 2 ≠ 0 by omega]
    omega
  have h24 : C (1889568 * k + 79348) = 944784 * k + 39674 := by
    unfold C
    simp [show (1889568 * k + 79348) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 39674) = 472392 * k + 19837 := by
    unfold C
    simp [show (944784 * k + 39674) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 19837) = 1417176 * k + 59512 := by
    unfold C
    simp [show (472392 * k + 19837) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 59512) = 708588 * k + 29756 := by
    unfold C
    simp [show (1417176 * k + 59512) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 29756) = 354294 * k + 14878 := by
    unfold C
    simp [show (708588 * k + 29756) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 14878) = 177147 * k + 7439 := by
    unfold C
    simp [show (354294 * k + 14878) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 11007) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 11007))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_11375 : ∀ k : Nat,
    iterate (262144 * k + 11375) 29 = 177147 * k + 7688 ∧
      177147 * k + 7688 < 262144 * k + 11375 := by
  intro k
  have h1 : C (262144 * k + 11375) = 786432 * k + 34126 := by
    unfold C
    simp [show (262144 * k + 11375) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 34126) = 393216 * k + 17063 := by
    unfold C
    simp [show (786432 * k + 34126) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 17063) = 1179648 * k + 51190 := by
    unfold C
    simp [show (393216 * k + 17063) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 51190) = 589824 * k + 25595 := by
    unfold C
    simp [show (1179648 * k + 51190) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 25595) = 1769472 * k + 76786 := by
    unfold C
    simp [show (589824 * k + 25595) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 76786) = 884736 * k + 38393 := by
    unfold C
    simp [show (1769472 * k + 76786) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 38393) = 2654208 * k + 115180 := by
    unfold C
    simp [show (884736 * k + 38393) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 115180) = 1327104 * k + 57590 := by
    unfold C
    simp [show (2654208 * k + 115180) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 57590) = 663552 * k + 28795 := by
    unfold C
    simp [show (1327104 * k + 57590) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 28795) = 1990656 * k + 86386 := by
    unfold C
    simp [show (663552 * k + 28795) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 86386) = 995328 * k + 43193 := by
    unfold C
    simp [show (1990656 * k + 86386) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 43193) = 2985984 * k + 129580 := by
    unfold C
    simp [show (995328 * k + 43193) % 2 ≠ 0 by omega]
    omega
  have h13 : C (2985984 * k + 129580) = 1492992 * k + 64790 := by
    unfold C
    simp [show (2985984 * k + 129580) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 64790) = 746496 * k + 32395 := by
    unfold C
    simp [show (1492992 * k + 64790) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 32395) = 2239488 * k + 97186 := by
    unfold C
    simp [show (746496 * k + 32395) % 2 ≠ 0 by omega]
    omega
  have h16 : C (2239488 * k + 97186) = 1119744 * k + 48593 := by
    unfold C
    simp [show (2239488 * k + 97186) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 48593) = 3359232 * k + 145780 := by
    unfold C
    simp [show (1119744 * k + 48593) % 2 ≠ 0 by omega]
    omega
  have h18 : C (3359232 * k + 145780) = 1679616 * k + 72890 := by
    unfold C
    simp [show (3359232 * k + 145780) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 72890) = 839808 * k + 36445 := by
    unfold C
    simp [show (1679616 * k + 72890) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 36445) = 2519424 * k + 109336 := by
    unfold C
    simp [show (839808 * k + 36445) % 2 ≠ 0 by omega]
    omega
  have h21 : C (2519424 * k + 109336) = 1259712 * k + 54668 := by
    unfold C
    simp [show (2519424 * k + 109336) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 54668) = 629856 * k + 27334 := by
    unfold C
    simp [show (1259712 * k + 54668) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 27334) = 314928 * k + 13667 := by
    unfold C
    simp [show (629856 * k + 27334) % 2 = 0 by omega]
    omega
  have h24 : C (314928 * k + 13667) = 944784 * k + 41002 := by
    unfold C
    simp [show (314928 * k + 13667) % 2 ≠ 0 by omega]
    omega
  have h25 : C (944784 * k + 41002) = 472392 * k + 20501 := by
    unfold C
    simp [show (944784 * k + 41002) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 20501) = 1417176 * k + 61504 := by
    unfold C
    simp [show (472392 * k + 20501) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 61504) = 708588 * k + 30752 := by
    unfold C
    simp [show (1417176 * k + 61504) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 30752) = 354294 * k + 15376 := by
    unfold C
    simp [show (708588 * k + 30752) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 15376) = 177147 * k + 7688 := by
    unfold C
    simp [show (354294 * k + 15376) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 11375) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 11375))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_11423 : ∀ k : Nat,
    iterate (262144 * k + 11423) 29 = 177147 * k + 7720 ∧
      177147 * k + 7720 < 262144 * k + 11423 := by
  intro k
  have h1 : C (262144 * k + 11423) = 786432 * k + 34270 := by
    unfold C
    simp [show (262144 * k + 11423) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 34270) = 393216 * k + 17135 := by
    unfold C
    simp [show (786432 * k + 34270) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 17135) = 1179648 * k + 51406 := by
    unfold C
    simp [show (393216 * k + 17135) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 51406) = 589824 * k + 25703 := by
    unfold C
    simp [show (1179648 * k + 51406) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 25703) = 1769472 * k + 77110 := by
    unfold C
    simp [show (589824 * k + 25703) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 77110) = 884736 * k + 38555 := by
    unfold C
    simp [show (1769472 * k + 77110) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 38555) = 2654208 * k + 115666 := by
    unfold C
    simp [show (884736 * k + 38555) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 115666) = 1327104 * k + 57833 := by
    unfold C
    simp [show (2654208 * k + 115666) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 57833) = 3981312 * k + 173500 := by
    unfold C
    simp [show (1327104 * k + 57833) % 2 ≠ 0 by omega]
    omega
  have h10 : C (3981312 * k + 173500) = 1990656 * k + 86750 := by
    unfold C
    simp [show (3981312 * k + 173500) % 2 = 0 by omega]
    omega
  have h11 : C (1990656 * k + 86750) = 995328 * k + 43375 := by
    unfold C
    simp [show (1990656 * k + 86750) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 43375) = 2985984 * k + 130126 := by
    unfold C
    simp [show (995328 * k + 43375) % 2 ≠ 0 by omega]
    omega
  have h13 : C (2985984 * k + 130126) = 1492992 * k + 65063 := by
    unfold C
    simp [show (2985984 * k + 130126) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 65063) = 4478976 * k + 195190 := by
    unfold C
    simp [show (1492992 * k + 65063) % 2 ≠ 0 by omega]
    omega
  have h15 : C (4478976 * k + 195190) = 2239488 * k + 97595 := by
    unfold C
    simp [show (4478976 * k + 195190) % 2 = 0 by omega]
    omega
  have h16 : C (2239488 * k + 97595) = 6718464 * k + 292786 := by
    unfold C
    simp [show (2239488 * k + 97595) % 2 ≠ 0 by omega]
    omega
  have h17 : C (6718464 * k + 292786) = 3359232 * k + 146393 := by
    unfold C
    simp [show (6718464 * k + 292786) % 2 = 0 by omega]
    omega
  have h18 : C (3359232 * k + 146393) = 10077696 * k + 439180 := by
    unfold C
    simp [show (3359232 * k + 146393) % 2 ≠ 0 by omega]
    omega
  have h19 : C (10077696 * k + 439180) = 5038848 * k + 219590 := by
    unfold C
    simp [show (10077696 * k + 439180) % 2 = 0 by omega]
    omega
  have h20 : C (5038848 * k + 219590) = 2519424 * k + 109795 := by
    unfold C
    simp [show (5038848 * k + 219590) % 2 = 0 by omega]
    omega
  have h21 : C (2519424 * k + 109795) = 7558272 * k + 329386 := by
    unfold C
    simp [show (2519424 * k + 109795) % 2 ≠ 0 by omega]
    omega
  have h22 : C (7558272 * k + 329386) = 3779136 * k + 164693 := by
    unfold C
    simp [show (7558272 * k + 329386) % 2 = 0 by omega]
    omega
  have h23 : C (3779136 * k + 164693) = 11337408 * k + 494080 := by
    unfold C
    simp [show (3779136 * k + 164693) % 2 ≠ 0 by omega]
    omega
  have h24 : C (11337408 * k + 494080) = 5668704 * k + 247040 := by
    unfold C
    simp [show (11337408 * k + 494080) % 2 = 0 by omega]
    omega
  have h25 : C (5668704 * k + 247040) = 2834352 * k + 123520 := by
    unfold C
    simp [show (5668704 * k + 247040) % 2 = 0 by omega]
    omega
  have h26 : C (2834352 * k + 123520) = 1417176 * k + 61760 := by
    unfold C
    simp [show (2834352 * k + 123520) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 61760) = 708588 * k + 30880 := by
    unfold C
    simp [show (1417176 * k + 61760) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 30880) = 354294 * k + 15440 := by
    unfold C
    simp [show (708588 * k + 30880) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 15440) = 177147 * k + 7720 := by
    unfold C
    simp [show (354294 * k + 15440) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 11423) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 11423))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_11455 : ∀ k : Nat,
    iterate (262144 * k + 11455) 29 = 177147 * k + 7742 ∧
      177147 * k + 7742 < 262144 * k + 11455 := by
  intro k
  have h1 : C (262144 * k + 11455) = 786432 * k + 34366 := by
    unfold C
    simp [show (262144 * k + 11455) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 34366) = 393216 * k + 17183 := by
    unfold C
    simp [show (786432 * k + 34366) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 17183) = 1179648 * k + 51550 := by
    unfold C
    simp [show (393216 * k + 17183) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 51550) = 589824 * k + 25775 := by
    unfold C
    simp [show (1179648 * k + 51550) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 25775) = 1769472 * k + 77326 := by
    unfold C
    simp [show (589824 * k + 25775) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 77326) = 884736 * k + 38663 := by
    unfold C
    simp [show (1769472 * k + 77326) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 38663) = 2654208 * k + 115990 := by
    unfold C
    simp [show (884736 * k + 38663) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 115990) = 1327104 * k + 57995 := by
    unfold C
    simp [show (2654208 * k + 115990) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 57995) = 3981312 * k + 173986 := by
    unfold C
    simp [show (1327104 * k + 57995) % 2 ≠ 0 by omega]
    omega
  have h10 : C (3981312 * k + 173986) = 1990656 * k + 86993 := by
    unfold C
    simp [show (3981312 * k + 173986) % 2 = 0 by omega]
    omega
  have h11 : C (1990656 * k + 86993) = 5971968 * k + 260980 := by
    unfold C
    simp [show (1990656 * k + 86993) % 2 ≠ 0 by omega]
    omega
  have h12 : C (5971968 * k + 260980) = 2985984 * k + 130490 := by
    unfold C
    simp [show (5971968 * k + 260980) % 2 = 0 by omega]
    omega
  have h13 : C (2985984 * k + 130490) = 1492992 * k + 65245 := by
    unfold C
    simp [show (2985984 * k + 130490) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 65245) = 4478976 * k + 195736 := by
    unfold C
    simp [show (1492992 * k + 65245) % 2 ≠ 0 by omega]
    omega
  have h15 : C (4478976 * k + 195736) = 2239488 * k + 97868 := by
    unfold C
    simp [show (4478976 * k + 195736) % 2 = 0 by omega]
    omega
  have h16 : C (2239488 * k + 97868) = 1119744 * k + 48934 := by
    unfold C
    simp [show (2239488 * k + 97868) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 48934) = 559872 * k + 24467 := by
    unfold C
    simp [show (1119744 * k + 48934) % 2 = 0 by omega]
    omega
  have h18 : C (559872 * k + 24467) = 1679616 * k + 73402 := by
    unfold C
    simp [show (559872 * k + 24467) % 2 ≠ 0 by omega]
    omega
  have h19 : C (1679616 * k + 73402) = 839808 * k + 36701 := by
    unfold C
    simp [show (1679616 * k + 73402) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 36701) = 2519424 * k + 110104 := by
    unfold C
    simp [show (839808 * k + 36701) % 2 ≠ 0 by omega]
    omega
  have h21 : C (2519424 * k + 110104) = 1259712 * k + 55052 := by
    unfold C
    simp [show (2519424 * k + 110104) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 55052) = 629856 * k + 27526 := by
    unfold C
    simp [show (1259712 * k + 55052) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 27526) = 314928 * k + 13763 := by
    unfold C
    simp [show (629856 * k + 27526) % 2 = 0 by omega]
    omega
  have h24 : C (314928 * k + 13763) = 944784 * k + 41290 := by
    unfold C
    simp [show (314928 * k + 13763) % 2 ≠ 0 by omega]
    omega
  have h25 : C (944784 * k + 41290) = 472392 * k + 20645 := by
    unfold C
    simp [show (944784 * k + 41290) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 20645) = 1417176 * k + 61936 := by
    unfold C
    simp [show (472392 * k + 20645) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 61936) = 708588 * k + 30968 := by
    unfold C
    simp [show (1417176 * k + 61936) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 30968) = 354294 * k + 15484 := by
    unfold C
    simp [show (708588 * k + 30968) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 15484) = 177147 * k + 7742 := by
    unfold C
    simp [show (354294 * k + 15484) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 11455) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 11455))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_12059 : ∀ k : Nat,
    iterate (262144 * k + 12059) 29 = 177147 * k + 8150 ∧
      177147 * k + 8150 < 262144 * k + 12059 := by
  intro k
  have h1 : C (262144 * k + 12059) = 786432 * k + 36178 := by
    unfold C
    simp [show (262144 * k + 12059) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 36178) = 393216 * k + 18089 := by
    unfold C
    simp [show (786432 * k + 36178) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 18089) = 1179648 * k + 54268 := by
    unfold C
    simp [show (393216 * k + 18089) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 54268) = 589824 * k + 27134 := by
    unfold C
    simp [show (1179648 * k + 54268) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 27134) = 294912 * k + 13567 := by
    unfold C
    simp [show (589824 * k + 27134) % 2 = 0 by omega]
    omega
  have h6 : C (294912 * k + 13567) = 884736 * k + 40702 := by
    unfold C
    simp [show (294912 * k + 13567) % 2 ≠ 0 by omega]
    omega
  have h7 : C (884736 * k + 40702) = 442368 * k + 20351 := by
    unfold C
    simp [show (884736 * k + 40702) % 2 = 0 by omega]
    omega
  have h8 : C (442368 * k + 20351) = 1327104 * k + 61054 := by
    unfold C
    simp [show (442368 * k + 20351) % 2 ≠ 0 by omega]
    omega
  have h9 : C (1327104 * k + 61054) = 663552 * k + 30527 := by
    unfold C
    simp [show (1327104 * k + 61054) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 30527) = 1990656 * k + 91582 := by
    unfold C
    simp [show (663552 * k + 30527) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 91582) = 995328 * k + 45791 := by
    unfold C
    simp [show (1990656 * k + 91582) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 45791) = 2985984 * k + 137374 := by
    unfold C
    simp [show (995328 * k + 45791) % 2 ≠ 0 by omega]
    omega
  have h13 : C (2985984 * k + 137374) = 1492992 * k + 68687 := by
    unfold C
    simp [show (2985984 * k + 137374) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 68687) = 4478976 * k + 206062 := by
    unfold C
    simp [show (1492992 * k + 68687) % 2 ≠ 0 by omega]
    omega
  have h15 : C (4478976 * k + 206062) = 2239488 * k + 103031 := by
    unfold C
    simp [show (4478976 * k + 206062) % 2 = 0 by omega]
    omega
  have h16 : C (2239488 * k + 103031) = 6718464 * k + 309094 := by
    unfold C
    simp [show (2239488 * k + 103031) % 2 ≠ 0 by omega]
    omega
  have h17 : C (6718464 * k + 309094) = 3359232 * k + 154547 := by
    unfold C
    simp [show (6718464 * k + 309094) % 2 = 0 by omega]
    omega
  have h18 : C (3359232 * k + 154547) = 10077696 * k + 463642 := by
    unfold C
    simp [show (3359232 * k + 154547) % 2 ≠ 0 by omega]
    omega
  have h19 : C (10077696 * k + 463642) = 5038848 * k + 231821 := by
    unfold C
    simp [show (10077696 * k + 463642) % 2 = 0 by omega]
    omega
  have h20 : C (5038848 * k + 231821) = 15116544 * k + 695464 := by
    unfold C
    simp [show (5038848 * k + 231821) % 2 ≠ 0 by omega]
    omega
  have h21 : C (15116544 * k + 695464) = 7558272 * k + 347732 := by
    unfold C
    simp [show (15116544 * k + 695464) % 2 = 0 by omega]
    omega
  have h22 : C (7558272 * k + 347732) = 3779136 * k + 173866 := by
    unfold C
    simp [show (7558272 * k + 347732) % 2 = 0 by omega]
    omega
  have h23 : C (3779136 * k + 173866) = 1889568 * k + 86933 := by
    unfold C
    simp [show (3779136 * k + 173866) % 2 = 0 by omega]
    omega
  have h24 : C (1889568 * k + 86933) = 5668704 * k + 260800 := by
    unfold C
    simp [show (1889568 * k + 86933) % 2 ≠ 0 by omega]
    omega
  have h25 : C (5668704 * k + 260800) = 2834352 * k + 130400 := by
    unfold C
    simp [show (5668704 * k + 260800) % 2 = 0 by omega]
    omega
  have h26 : C (2834352 * k + 130400) = 1417176 * k + 65200 := by
    unfold C
    simp [show (2834352 * k + 130400) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 65200) = 708588 * k + 32600 := by
    unfold C
    simp [show (1417176 * k + 65200) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 32600) = 354294 * k + 16300 := by
    unfold C
    simp [show (708588 * k + 32600) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 16300) = 177147 * k + 8150 := by
    unfold C
    simp [show (354294 * k + 16300) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 12059) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 12059))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_12199 : ∀ k : Nat,
    iterate (262144 * k + 12199) 29 = 177147 * k + 8245 ∧
      177147 * k + 8245 < 262144 * k + 12199 := by
  intro k
  have h1 : C (262144 * k + 12199) = 786432 * k + 36598 := by
    unfold C
    simp [show (262144 * k + 12199) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 36598) = 393216 * k + 18299 := by
    unfold C
    simp [show (786432 * k + 36598) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 18299) = 1179648 * k + 54898 := by
    unfold C
    simp [show (393216 * k + 18299) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 54898) = 589824 * k + 27449 := by
    unfold C
    simp [show (1179648 * k + 54898) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 27449) = 1769472 * k + 82348 := by
    unfold C
    simp [show (589824 * k + 27449) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 82348) = 884736 * k + 41174 := by
    unfold C
    simp [show (1769472 * k + 82348) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 41174) = 442368 * k + 20587 := by
    unfold C
    simp [show (884736 * k + 41174) % 2 = 0 by omega]
    omega
  have h8 : C (442368 * k + 20587) = 1327104 * k + 61762 := by
    unfold C
    simp [show (442368 * k + 20587) % 2 ≠ 0 by omega]
    omega
  have h9 : C (1327104 * k + 61762) = 663552 * k + 30881 := by
    unfold C
    simp [show (1327104 * k + 61762) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 30881) = 1990656 * k + 92644 := by
    unfold C
    simp [show (663552 * k + 30881) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 92644) = 995328 * k + 46322 := by
    unfold C
    simp [show (1990656 * k + 92644) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 46322) = 497664 * k + 23161 := by
    unfold C
    simp [show (995328 * k + 46322) % 2 = 0 by omega]
    omega
  have h13 : C (497664 * k + 23161) = 1492992 * k + 69484 := by
    unfold C
    simp [show (497664 * k + 23161) % 2 ≠ 0 by omega]
    omega
  have h14 : C (1492992 * k + 69484) = 746496 * k + 34742 := by
    unfold C
    simp [show (1492992 * k + 69484) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 34742) = 373248 * k + 17371 := by
    unfold C
    simp [show (746496 * k + 34742) % 2 = 0 by omega]
    omega
  have h16 : C (373248 * k + 17371) = 1119744 * k + 52114 := by
    unfold C
    simp [show (373248 * k + 17371) % 2 ≠ 0 by omega]
    omega
  have h17 : C (1119744 * k + 52114) = 559872 * k + 26057 := by
    unfold C
    simp [show (1119744 * k + 52114) % 2 = 0 by omega]
    omega
  have h18 : C (559872 * k + 26057) = 1679616 * k + 78172 := by
    unfold C
    simp [show (559872 * k + 26057) % 2 ≠ 0 by omega]
    omega
  have h19 : C (1679616 * k + 78172) = 839808 * k + 39086 := by
    unfold C
    simp [show (1679616 * k + 78172) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 39086) = 419904 * k + 19543 := by
    unfold C
    simp [show (839808 * k + 39086) % 2 = 0 by omega]
    omega
  have h21 : C (419904 * k + 19543) = 1259712 * k + 58630 := by
    unfold C
    simp [show (419904 * k + 19543) % 2 ≠ 0 by omega]
    omega
  have h22 : C (1259712 * k + 58630) = 629856 * k + 29315 := by
    unfold C
    simp [show (1259712 * k + 58630) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 29315) = 1889568 * k + 87946 := by
    unfold C
    simp [show (629856 * k + 29315) % 2 ≠ 0 by omega]
    omega
  have h24 : C (1889568 * k + 87946) = 944784 * k + 43973 := by
    unfold C
    simp [show (1889568 * k + 87946) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 43973) = 2834352 * k + 131920 := by
    unfold C
    simp [show (944784 * k + 43973) % 2 ≠ 0 by omega]
    omega
  have h26 : C (2834352 * k + 131920) = 1417176 * k + 65960 := by
    unfold C
    simp [show (2834352 * k + 131920) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 65960) = 708588 * k + 32980 := by
    unfold C
    simp [show (1417176 * k + 65960) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 32980) = 354294 * k + 16490 := by
    unfold C
    simp [show (708588 * k + 32980) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 16490) = 177147 * k + 8245 := by
    unfold C
    simp [show (354294 * k + 16490) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 12199) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 12199))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_12479 : ∀ k : Nat,
    iterate (262144 * k + 12479) 29 = 177147 * k + 8434 ∧
      177147 * k + 8434 < 262144 * k + 12479 := by
  intro k
  have h1 : C (262144 * k + 12479) = 786432 * k + 37438 := by
    unfold C
    simp [show (262144 * k + 12479) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 37438) = 393216 * k + 18719 := by
    unfold C
    simp [show (786432 * k + 37438) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 18719) = 1179648 * k + 56158 := by
    unfold C
    simp [show (393216 * k + 18719) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 56158) = 589824 * k + 28079 := by
    unfold C
    simp [show (1179648 * k + 56158) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 28079) = 1769472 * k + 84238 := by
    unfold C
    simp [show (589824 * k + 28079) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 84238) = 884736 * k + 42119 := by
    unfold C
    simp [show (1769472 * k + 84238) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 42119) = 2654208 * k + 126358 := by
    unfold C
    simp [show (884736 * k + 42119) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 126358) = 1327104 * k + 63179 := by
    unfold C
    simp [show (2654208 * k + 126358) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 63179) = 3981312 * k + 189538 := by
    unfold C
    simp [show (1327104 * k + 63179) % 2 ≠ 0 by omega]
    omega
  have h10 : C (3981312 * k + 189538) = 1990656 * k + 94769 := by
    unfold C
    simp [show (3981312 * k + 189538) % 2 = 0 by omega]
    omega
  have h11 : C (1990656 * k + 94769) = 5971968 * k + 284308 := by
    unfold C
    simp [show (1990656 * k + 94769) % 2 ≠ 0 by omega]
    omega
  have h12 : C (5971968 * k + 284308) = 2985984 * k + 142154 := by
    unfold C
    simp [show (5971968 * k + 284308) % 2 = 0 by omega]
    omega
  have h13 : C (2985984 * k + 142154) = 1492992 * k + 71077 := by
    unfold C
    simp [show (2985984 * k + 142154) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 71077) = 4478976 * k + 213232 := by
    unfold C
    simp [show (1492992 * k + 71077) % 2 ≠ 0 by omega]
    omega
  have h15 : C (4478976 * k + 213232) = 2239488 * k + 106616 := by
    unfold C
    simp [show (4478976 * k + 213232) % 2 = 0 by omega]
    omega
  have h16 : C (2239488 * k + 106616) = 1119744 * k + 53308 := by
    unfold C
    simp [show (2239488 * k + 106616) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 53308) = 559872 * k + 26654 := by
    unfold C
    simp [show (1119744 * k + 53308) % 2 = 0 by omega]
    omega
  have h18 : C (559872 * k + 26654) = 279936 * k + 13327 := by
    unfold C
    simp [show (559872 * k + 26654) % 2 = 0 by omega]
    omega
  have h19 : C (279936 * k + 13327) = 839808 * k + 39982 := by
    unfold C
    simp [show (279936 * k + 13327) % 2 ≠ 0 by omega]
    omega
  have h20 : C (839808 * k + 39982) = 419904 * k + 19991 := by
    unfold C
    simp [show (839808 * k + 39982) % 2 = 0 by omega]
    omega
  have h21 : C (419904 * k + 19991) = 1259712 * k + 59974 := by
    unfold C
    simp [show (419904 * k + 19991) % 2 ≠ 0 by omega]
    omega
  have h22 : C (1259712 * k + 59974) = 629856 * k + 29987 := by
    unfold C
    simp [show (1259712 * k + 59974) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 29987) = 1889568 * k + 89962 := by
    unfold C
    simp [show (629856 * k + 29987) % 2 ≠ 0 by omega]
    omega
  have h24 : C (1889568 * k + 89962) = 944784 * k + 44981 := by
    unfold C
    simp [show (1889568 * k + 89962) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 44981) = 2834352 * k + 134944 := by
    unfold C
    simp [show (944784 * k + 44981) % 2 ≠ 0 by omega]
    omega
  have h26 : C (2834352 * k + 134944) = 1417176 * k + 67472 := by
    unfold C
    simp [show (2834352 * k + 134944) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 67472) = 708588 * k + 33736 := by
    unfold C
    simp [show (1417176 * k + 67472) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 33736) = 354294 * k + 16868 := by
    unfold C
    simp [show (708588 * k + 33736) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 16868) = 177147 * k + 8434 := by
    unfold C
    simp [show (354294 * k + 16868) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 12479) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 12479))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_12591 : ∀ k : Nat,
    iterate (262144 * k + 12591) 29 = 177147 * k + 8510 ∧
      177147 * k + 8510 < 262144 * k + 12591 := by
  intro k
  have h1 : C (262144 * k + 12591) = 786432 * k + 37774 := by
    unfold C
    simp [show (262144 * k + 12591) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 37774) = 393216 * k + 18887 := by
    unfold C
    simp [show (786432 * k + 37774) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 18887) = 1179648 * k + 56662 := by
    unfold C
    simp [show (393216 * k + 18887) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 56662) = 589824 * k + 28331 := by
    unfold C
    simp [show (1179648 * k + 56662) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 28331) = 1769472 * k + 84994 := by
    unfold C
    simp [show (589824 * k + 28331) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 84994) = 884736 * k + 42497 := by
    unfold C
    simp [show (1769472 * k + 84994) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 42497) = 2654208 * k + 127492 := by
    unfold C
    simp [show (884736 * k + 42497) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 127492) = 1327104 * k + 63746 := by
    unfold C
    simp [show (2654208 * k + 127492) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 63746) = 663552 * k + 31873 := by
    unfold C
    simp [show (1327104 * k + 63746) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 31873) = 1990656 * k + 95620 := by
    unfold C
    simp [show (663552 * k + 31873) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 95620) = 995328 * k + 47810 := by
    unfold C
    simp [show (1990656 * k + 95620) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 47810) = 497664 * k + 23905 := by
    unfold C
    simp [show (995328 * k + 47810) % 2 = 0 by omega]
    omega
  have h13 : C (497664 * k + 23905) = 1492992 * k + 71716 := by
    unfold C
    simp [show (497664 * k + 23905) % 2 ≠ 0 by omega]
    omega
  have h14 : C (1492992 * k + 71716) = 746496 * k + 35858 := by
    unfold C
    simp [show (1492992 * k + 71716) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 35858) = 373248 * k + 17929 := by
    unfold C
    simp [show (746496 * k + 35858) % 2 = 0 by omega]
    omega
  have h16 : C (373248 * k + 17929) = 1119744 * k + 53788 := by
    unfold C
    simp [show (373248 * k + 17929) % 2 ≠ 0 by omega]
    omega
  have h17 : C (1119744 * k + 53788) = 559872 * k + 26894 := by
    unfold C
    simp [show (1119744 * k + 53788) % 2 = 0 by omega]
    omega
  have h18 : C (559872 * k + 26894) = 279936 * k + 13447 := by
    unfold C
    simp [show (559872 * k + 26894) % 2 = 0 by omega]
    omega
  have h19 : C (279936 * k + 13447) = 839808 * k + 40342 := by
    unfold C
    simp [show (279936 * k + 13447) % 2 ≠ 0 by omega]
    omega
  have h20 : C (839808 * k + 40342) = 419904 * k + 20171 := by
    unfold C
    simp [show (839808 * k + 40342) % 2 = 0 by omega]
    omega
  have h21 : C (419904 * k + 20171) = 1259712 * k + 60514 := by
    unfold C
    simp [show (419904 * k + 20171) % 2 ≠ 0 by omega]
    omega
  have h22 : C (1259712 * k + 60514) = 629856 * k + 30257 := by
    unfold C
    simp [show (1259712 * k + 60514) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 30257) = 1889568 * k + 90772 := by
    unfold C
    simp [show (629856 * k + 30257) % 2 ≠ 0 by omega]
    omega
  have h24 : C (1889568 * k + 90772) = 944784 * k + 45386 := by
    unfold C
    simp [show (1889568 * k + 90772) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 45386) = 472392 * k + 22693 := by
    unfold C
    simp [show (944784 * k + 45386) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 22693) = 1417176 * k + 68080 := by
    unfold C
    simp [show (472392 * k + 22693) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 68080) = 708588 * k + 34040 := by
    unfold C
    simp [show (1417176 * k + 68080) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 34040) = 354294 * k + 17020 := by
    unfold C
    simp [show (708588 * k + 34040) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 17020) = 177147 * k + 8510 := by
    unfold C
    simp [show (354294 * k + 17020) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 12591) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 12591))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_12831 : ∀ k : Nat,
    iterate (262144 * k + 12831) 29 = 177147 * k + 8672 ∧
      177147 * k + 8672 < 262144 * k + 12831 := by
  intro k
  have h1 : C (262144 * k + 12831) = 786432 * k + 38494 := by
    unfold C
    simp [show (262144 * k + 12831) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 38494) = 393216 * k + 19247 := by
    unfold C
    simp [show (786432 * k + 38494) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 19247) = 1179648 * k + 57742 := by
    unfold C
    simp [show (393216 * k + 19247) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 57742) = 589824 * k + 28871 := by
    unfold C
    simp [show (1179648 * k + 57742) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 28871) = 1769472 * k + 86614 := by
    unfold C
    simp [show (589824 * k + 28871) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 86614) = 884736 * k + 43307 := by
    unfold C
    simp [show (1769472 * k + 86614) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 43307) = 2654208 * k + 129922 := by
    unfold C
    simp [show (884736 * k + 43307) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 129922) = 1327104 * k + 64961 := by
    unfold C
    simp [show (2654208 * k + 129922) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 64961) = 3981312 * k + 194884 := by
    unfold C
    simp [show (1327104 * k + 64961) % 2 ≠ 0 by omega]
    omega
  have h10 : C (3981312 * k + 194884) = 1990656 * k + 97442 := by
    unfold C
    simp [show (3981312 * k + 194884) % 2 = 0 by omega]
    omega
  have h11 : C (1990656 * k + 97442) = 995328 * k + 48721 := by
    unfold C
    simp [show (1990656 * k + 97442) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 48721) = 2985984 * k + 146164 := by
    unfold C
    simp [show (995328 * k + 48721) % 2 ≠ 0 by omega]
    omega
  have h13 : C (2985984 * k + 146164) = 1492992 * k + 73082 := by
    unfold C
    simp [show (2985984 * k + 146164) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 73082) = 746496 * k + 36541 := by
    unfold C
    simp [show (1492992 * k + 73082) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 36541) = 2239488 * k + 109624 := by
    unfold C
    simp [show (746496 * k + 36541) % 2 ≠ 0 by omega]
    omega
  have h16 : C (2239488 * k + 109624) = 1119744 * k + 54812 := by
    unfold C
    simp [show (2239488 * k + 109624) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 54812) = 559872 * k + 27406 := by
    unfold C
    simp [show (1119744 * k + 54812) % 2 = 0 by omega]
    omega
  have h18 : C (559872 * k + 27406) = 279936 * k + 13703 := by
    unfold C
    simp [show (559872 * k + 27406) % 2 = 0 by omega]
    omega
  have h19 : C (279936 * k + 13703) = 839808 * k + 41110 := by
    unfold C
    simp [show (279936 * k + 13703) % 2 ≠ 0 by omega]
    omega
  have h20 : C (839808 * k + 41110) = 419904 * k + 20555 := by
    unfold C
    simp [show (839808 * k + 41110) % 2 = 0 by omega]
    omega
  have h21 : C (419904 * k + 20555) = 1259712 * k + 61666 := by
    unfold C
    simp [show (419904 * k + 20555) % 2 ≠ 0 by omega]
    omega
  have h22 : C (1259712 * k + 61666) = 629856 * k + 30833 := by
    unfold C
    simp [show (1259712 * k + 61666) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 30833) = 1889568 * k + 92500 := by
    unfold C
    simp [show (629856 * k + 30833) % 2 ≠ 0 by omega]
    omega
  have h24 : C (1889568 * k + 92500) = 944784 * k + 46250 := by
    unfold C
    simp [show (1889568 * k + 92500) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 46250) = 472392 * k + 23125 := by
    unfold C
    simp [show (944784 * k + 46250) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 23125) = 1417176 * k + 69376 := by
    unfold C
    simp [show (472392 * k + 23125) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 69376) = 708588 * k + 34688 := by
    unfold C
    simp [show (1417176 * k + 69376) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 34688) = 354294 * k + 17344 := by
    unfold C
    simp [show (708588 * k + 34688) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 17344) = 177147 * k + 8672 := by
    unfold C
    simp [show (354294 * k + 17344) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 12831) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 12831))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_12911 : ∀ k : Nat,
    iterate (262144 * k + 12911) 29 = 177147 * k + 8726 ∧
      177147 * k + 8726 < 262144 * k + 12911 := by
  intro k
  have h1 : C (262144 * k + 12911) = 786432 * k + 38734 := by
    unfold C
    simp [show (262144 * k + 12911) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 38734) = 393216 * k + 19367 := by
    unfold C
    simp [show (786432 * k + 38734) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 19367) = 1179648 * k + 58102 := by
    unfold C
    simp [show (393216 * k + 19367) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 58102) = 589824 * k + 29051 := by
    unfold C
    simp [show (1179648 * k + 58102) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 29051) = 1769472 * k + 87154 := by
    unfold C
    simp [show (589824 * k + 29051) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 87154) = 884736 * k + 43577 := by
    unfold C
    simp [show (1769472 * k + 87154) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 43577) = 2654208 * k + 130732 := by
    unfold C
    simp [show (884736 * k + 43577) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 130732) = 1327104 * k + 65366 := by
    unfold C
    simp [show (2654208 * k + 130732) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 65366) = 663552 * k + 32683 := by
    unfold C
    simp [show (1327104 * k + 65366) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 32683) = 1990656 * k + 98050 := by
    unfold C
    simp [show (663552 * k + 32683) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 98050) = 995328 * k + 49025 := by
    unfold C
    simp [show (1990656 * k + 98050) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 49025) = 2985984 * k + 147076 := by
    unfold C
    simp [show (995328 * k + 49025) % 2 ≠ 0 by omega]
    omega
  have h13 : C (2985984 * k + 147076) = 1492992 * k + 73538 := by
    unfold C
    simp [show (2985984 * k + 147076) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 73538) = 746496 * k + 36769 := by
    unfold C
    simp [show (1492992 * k + 73538) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 36769) = 2239488 * k + 110308 := by
    unfold C
    simp [show (746496 * k + 36769) % 2 ≠ 0 by omega]
    omega
  have h16 : C (2239488 * k + 110308) = 1119744 * k + 55154 := by
    unfold C
    simp [show (2239488 * k + 110308) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 55154) = 559872 * k + 27577 := by
    unfold C
    simp [show (1119744 * k + 55154) % 2 = 0 by omega]
    omega
  have h18 : C (559872 * k + 27577) = 1679616 * k + 82732 := by
    unfold C
    simp [show (559872 * k + 27577) % 2 ≠ 0 by omega]
    omega
  have h19 : C (1679616 * k + 82732) = 839808 * k + 41366 := by
    unfold C
    simp [show (1679616 * k + 82732) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 41366) = 419904 * k + 20683 := by
    unfold C
    simp [show (839808 * k + 41366) % 2 = 0 by omega]
    omega
  have h21 : C (419904 * k + 20683) = 1259712 * k + 62050 := by
    unfold C
    simp [show (419904 * k + 20683) % 2 ≠ 0 by omega]
    omega
  have h22 : C (1259712 * k + 62050) = 629856 * k + 31025 := by
    unfold C
    simp [show (1259712 * k + 62050) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 31025) = 1889568 * k + 93076 := by
    unfold C
    simp [show (629856 * k + 31025) % 2 ≠ 0 by omega]
    omega
  have h24 : C (1889568 * k + 93076) = 944784 * k + 46538 := by
    unfold C
    simp [show (1889568 * k + 93076) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 46538) = 472392 * k + 23269 := by
    unfold C
    simp [show (944784 * k + 46538) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 23269) = 1417176 * k + 69808 := by
    unfold C
    simp [show (472392 * k + 23269) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 69808) = 708588 * k + 34904 := by
    unfold C
    simp [show (1417176 * k + 69808) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 34904) = 354294 * k + 17452 := by
    unfold C
    simp [show (708588 * k + 34904) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 17452) = 177147 * k + 8726 := by
    unfold C
    simp [show (354294 * k + 17452) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 12911) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 12911))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_13031 : ∀ k : Nat,
    iterate (262144 * k + 13031) 29 = 177147 * k + 8807 ∧
      177147 * k + 8807 < 262144 * k + 13031 := by
  intro k
  have h1 : C (262144 * k + 13031) = 786432 * k + 39094 := by
    unfold C
    simp [show (262144 * k + 13031) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 39094) = 393216 * k + 19547 := by
    unfold C
    simp [show (786432 * k + 39094) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 19547) = 1179648 * k + 58642 := by
    unfold C
    simp [show (393216 * k + 19547) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 58642) = 589824 * k + 29321 := by
    unfold C
    simp [show (1179648 * k + 58642) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 29321) = 1769472 * k + 87964 := by
    unfold C
    simp [show (589824 * k + 29321) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 87964) = 884736 * k + 43982 := by
    unfold C
    simp [show (1769472 * k + 87964) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 43982) = 442368 * k + 21991 := by
    unfold C
    simp [show (884736 * k + 43982) % 2 = 0 by omega]
    omega
  have h8 : C (442368 * k + 21991) = 1327104 * k + 65974 := by
    unfold C
    simp [show (442368 * k + 21991) % 2 ≠ 0 by omega]
    omega
  have h9 : C (1327104 * k + 65974) = 663552 * k + 32987 := by
    unfold C
    simp [show (1327104 * k + 65974) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 32987) = 1990656 * k + 98962 := by
    unfold C
    simp [show (663552 * k + 32987) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 98962) = 995328 * k + 49481 := by
    unfold C
    simp [show (1990656 * k + 98962) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 49481) = 2985984 * k + 148444 := by
    unfold C
    simp [show (995328 * k + 49481) % 2 ≠ 0 by omega]
    omega
  have h13 : C (2985984 * k + 148444) = 1492992 * k + 74222 := by
    unfold C
    simp [show (2985984 * k + 148444) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 74222) = 746496 * k + 37111 := by
    unfold C
    simp [show (1492992 * k + 74222) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 37111) = 2239488 * k + 111334 := by
    unfold C
    simp [show (746496 * k + 37111) % 2 ≠ 0 by omega]
    omega
  have h16 : C (2239488 * k + 111334) = 1119744 * k + 55667 := by
    unfold C
    simp [show (2239488 * k + 111334) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 55667) = 3359232 * k + 167002 := by
    unfold C
    simp [show (1119744 * k + 55667) % 2 ≠ 0 by omega]
    omega
  have h18 : C (3359232 * k + 167002) = 1679616 * k + 83501 := by
    unfold C
    simp [show (3359232 * k + 167002) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 83501) = 5038848 * k + 250504 := by
    unfold C
    simp [show (1679616 * k + 83501) % 2 ≠ 0 by omega]
    omega
  have h20 : C (5038848 * k + 250504) = 2519424 * k + 125252 := by
    unfold C
    simp [show (5038848 * k + 250504) % 2 = 0 by omega]
    omega
  have h21 : C (2519424 * k + 125252) = 1259712 * k + 62626 := by
    unfold C
    simp [show (2519424 * k + 125252) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 62626) = 629856 * k + 31313 := by
    unfold C
    simp [show (1259712 * k + 62626) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 31313) = 1889568 * k + 93940 := by
    unfold C
    simp [show (629856 * k + 31313) % 2 ≠ 0 by omega]
    omega
  have h24 : C (1889568 * k + 93940) = 944784 * k + 46970 := by
    unfold C
    simp [show (1889568 * k + 93940) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 46970) = 472392 * k + 23485 := by
    unfold C
    simp [show (944784 * k + 46970) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 23485) = 1417176 * k + 70456 := by
    unfold C
    simp [show (472392 * k + 23485) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 70456) = 708588 * k + 35228 := by
    unfold C
    simp [show (1417176 * k + 70456) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 35228) = 354294 * k + 17614 := by
    unfold C
    simp [show (708588 * k + 35228) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 17614) = 177147 * k + 8807 := by
    unfold C
    simp [show (354294 * k + 17614) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 13031) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 13031))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_13127 : ∀ k : Nat,
    iterate (262144 * k + 13127) 29 = 177147 * k + 8872 ∧
      177147 * k + 8872 < 262144 * k + 13127 := by
  intro k
  have h1 : C (262144 * k + 13127) = 786432 * k + 39382 := by
    unfold C
    simp [show (262144 * k + 13127) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 39382) = 393216 * k + 19691 := by
    unfold C
    simp [show (786432 * k + 39382) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 19691) = 1179648 * k + 59074 := by
    unfold C
    simp [show (393216 * k + 19691) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 59074) = 589824 * k + 29537 := by
    unfold C
    simp [show (1179648 * k + 59074) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 29537) = 1769472 * k + 88612 := by
    unfold C
    simp [show (589824 * k + 29537) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 88612) = 884736 * k + 44306 := by
    unfold C
    simp [show (1769472 * k + 88612) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 44306) = 442368 * k + 22153 := by
    unfold C
    simp [show (884736 * k + 44306) % 2 = 0 by omega]
    omega
  have h8 : C (442368 * k + 22153) = 1327104 * k + 66460 := by
    unfold C
    simp [show (442368 * k + 22153) % 2 ≠ 0 by omega]
    omega
  have h9 : C (1327104 * k + 66460) = 663552 * k + 33230 := by
    unfold C
    simp [show (1327104 * k + 66460) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 33230) = 331776 * k + 16615 := by
    unfold C
    simp [show (663552 * k + 33230) % 2 = 0 by omega]
    omega
  have h11 : C (331776 * k + 16615) = 995328 * k + 49846 := by
    unfold C
    simp [show (331776 * k + 16615) % 2 ≠ 0 by omega]
    omega
  have h12 : C (995328 * k + 49846) = 497664 * k + 24923 := by
    unfold C
    simp [show (995328 * k + 49846) % 2 = 0 by omega]
    omega
  have h13 : C (497664 * k + 24923) = 1492992 * k + 74770 := by
    unfold C
    simp [show (497664 * k + 24923) % 2 ≠ 0 by omega]
    omega
  have h14 : C (1492992 * k + 74770) = 746496 * k + 37385 := by
    unfold C
    simp [show (1492992 * k + 74770) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 37385) = 2239488 * k + 112156 := by
    unfold C
    simp [show (746496 * k + 37385) % 2 ≠ 0 by omega]
    omega
  have h16 : C (2239488 * k + 112156) = 1119744 * k + 56078 := by
    unfold C
    simp [show (2239488 * k + 112156) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 56078) = 559872 * k + 28039 := by
    unfold C
    simp [show (1119744 * k + 56078) % 2 = 0 by omega]
    omega
  have h18 : C (559872 * k + 28039) = 1679616 * k + 84118 := by
    unfold C
    simp [show (559872 * k + 28039) % 2 ≠ 0 by omega]
    omega
  have h19 : C (1679616 * k + 84118) = 839808 * k + 42059 := by
    unfold C
    simp [show (1679616 * k + 84118) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 42059) = 2519424 * k + 126178 := by
    unfold C
    simp [show (839808 * k + 42059) % 2 ≠ 0 by omega]
    omega
  have h21 : C (2519424 * k + 126178) = 1259712 * k + 63089 := by
    unfold C
    simp [show (2519424 * k + 126178) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 63089) = 3779136 * k + 189268 := by
    unfold C
    simp [show (1259712 * k + 63089) % 2 ≠ 0 by omega]
    omega
  have h23 : C (3779136 * k + 189268) = 1889568 * k + 94634 := by
    unfold C
    simp [show (3779136 * k + 189268) % 2 = 0 by omega]
    omega
  have h24 : C (1889568 * k + 94634) = 944784 * k + 47317 := by
    unfold C
    simp [show (1889568 * k + 94634) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 47317) = 2834352 * k + 141952 := by
    unfold C
    simp [show (944784 * k + 47317) % 2 ≠ 0 by omega]
    omega
  have h26 : C (2834352 * k + 141952) = 1417176 * k + 70976 := by
    unfold C
    simp [show (2834352 * k + 141952) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 70976) = 708588 * k + 35488 := by
    unfold C
    simp [show (1417176 * k + 70976) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 35488) = 354294 * k + 17744 := by
    unfold C
    simp [show (708588 * k + 35488) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 17744) = 177147 * k + 8872 := by
    unfold C
    simp [show (354294 * k + 17744) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 13127) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 13127))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_13359 : ∀ k : Nat,
    iterate (262144 * k + 13359) 29 = 177147 * k + 9029 ∧
      177147 * k + 9029 < 262144 * k + 13359 := by
  intro k
  have h1 : C (262144 * k + 13359) = 786432 * k + 40078 := by
    unfold C
    simp [show (262144 * k + 13359) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 40078) = 393216 * k + 20039 := by
    unfold C
    simp [show (786432 * k + 40078) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 20039) = 1179648 * k + 60118 := by
    unfold C
    simp [show (393216 * k + 20039) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 60118) = 589824 * k + 30059 := by
    unfold C
    simp [show (1179648 * k + 60118) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 30059) = 1769472 * k + 90178 := by
    unfold C
    simp [show (589824 * k + 30059) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 90178) = 884736 * k + 45089 := by
    unfold C
    simp [show (1769472 * k + 90178) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 45089) = 2654208 * k + 135268 := by
    unfold C
    simp [show (884736 * k + 45089) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 135268) = 1327104 * k + 67634 := by
    unfold C
    simp [show (2654208 * k + 135268) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 67634) = 663552 * k + 33817 := by
    unfold C
    simp [show (1327104 * k + 67634) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 33817) = 1990656 * k + 101452 := by
    unfold C
    simp [show (663552 * k + 33817) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 101452) = 995328 * k + 50726 := by
    unfold C
    simp [show (1990656 * k + 101452) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 50726) = 497664 * k + 25363 := by
    unfold C
    simp [show (995328 * k + 50726) % 2 = 0 by omega]
    omega
  have h13 : C (497664 * k + 25363) = 1492992 * k + 76090 := by
    unfold C
    simp [show (497664 * k + 25363) % 2 ≠ 0 by omega]
    omega
  have h14 : C (1492992 * k + 76090) = 746496 * k + 38045 := by
    unfold C
    simp [show (1492992 * k + 76090) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 38045) = 2239488 * k + 114136 := by
    unfold C
    simp [show (746496 * k + 38045) % 2 ≠ 0 by omega]
    omega
  have h16 : C (2239488 * k + 114136) = 1119744 * k + 57068 := by
    unfold C
    simp [show (2239488 * k + 114136) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 57068) = 559872 * k + 28534 := by
    unfold C
    simp [show (1119744 * k + 57068) % 2 = 0 by omega]
    omega
  have h18 : C (559872 * k + 28534) = 279936 * k + 14267 := by
    unfold C
    simp [show (559872 * k + 28534) % 2 = 0 by omega]
    omega
  have h19 : C (279936 * k + 14267) = 839808 * k + 42802 := by
    unfold C
    simp [show (279936 * k + 14267) % 2 ≠ 0 by omega]
    omega
  have h20 : C (839808 * k + 42802) = 419904 * k + 21401 := by
    unfold C
    simp [show (839808 * k + 42802) % 2 = 0 by omega]
    omega
  have h21 : C (419904 * k + 21401) = 1259712 * k + 64204 := by
    unfold C
    simp [show (419904 * k + 21401) % 2 ≠ 0 by omega]
    omega
  have h22 : C (1259712 * k + 64204) = 629856 * k + 32102 := by
    unfold C
    simp [show (1259712 * k + 64204) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 32102) = 314928 * k + 16051 := by
    unfold C
    simp [show (629856 * k + 32102) % 2 = 0 by omega]
    omega
  have h24 : C (314928 * k + 16051) = 944784 * k + 48154 := by
    unfold C
    simp [show (314928 * k + 16051) % 2 ≠ 0 by omega]
    omega
  have h25 : C (944784 * k + 48154) = 472392 * k + 24077 := by
    unfold C
    simp [show (944784 * k + 48154) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 24077) = 1417176 * k + 72232 := by
    unfold C
    simp [show (472392 * k + 24077) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 72232) = 708588 * k + 36116 := by
    unfold C
    simp [show (1417176 * k + 72232) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 36116) = 354294 * k + 18058 := by
    unfold C
    simp [show (708588 * k + 36116) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 18058) = 177147 * k + 9029 := by
    unfold C
    simp [show (354294 * k + 18058) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 13359) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 13359))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_13471 : ∀ k : Nat,
    iterate (262144 * k + 13471) 29 = 177147 * k + 9104 ∧
      177147 * k + 9104 < 262144 * k + 13471 := by
  intro k
  have h1 : C (262144 * k + 13471) = 786432 * k + 40414 := by
    unfold C
    simp [show (262144 * k + 13471) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 40414) = 393216 * k + 20207 := by
    unfold C
    simp [show (786432 * k + 40414) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 20207) = 1179648 * k + 60622 := by
    unfold C
    simp [show (393216 * k + 20207) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 60622) = 589824 * k + 30311 := by
    unfold C
    simp [show (1179648 * k + 60622) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 30311) = 1769472 * k + 90934 := by
    unfold C
    simp [show (589824 * k + 30311) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 90934) = 884736 * k + 45467 := by
    unfold C
    simp [show (1769472 * k + 90934) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 45467) = 2654208 * k + 136402 := by
    unfold C
    simp [show (884736 * k + 45467) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 136402) = 1327104 * k + 68201 := by
    unfold C
    simp [show (2654208 * k + 136402) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 68201) = 3981312 * k + 204604 := by
    unfold C
    simp [show (1327104 * k + 68201) % 2 ≠ 0 by omega]
    omega
  have h10 : C (3981312 * k + 204604) = 1990656 * k + 102302 := by
    unfold C
    simp [show (3981312 * k + 204604) % 2 = 0 by omega]
    omega
  have h11 : C (1990656 * k + 102302) = 995328 * k + 51151 := by
    unfold C
    simp [show (1990656 * k + 102302) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 51151) = 2985984 * k + 153454 := by
    unfold C
    simp [show (995328 * k + 51151) % 2 ≠ 0 by omega]
    omega
  have h13 : C (2985984 * k + 153454) = 1492992 * k + 76727 := by
    unfold C
    simp [show (2985984 * k + 153454) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 76727) = 4478976 * k + 230182 := by
    unfold C
    simp [show (1492992 * k + 76727) % 2 ≠ 0 by omega]
    omega
  have h15 : C (4478976 * k + 230182) = 2239488 * k + 115091 := by
    unfold C
    simp [show (4478976 * k + 230182) % 2 = 0 by omega]
    omega
  have h16 : C (2239488 * k + 115091) = 6718464 * k + 345274 := by
    unfold C
    simp [show (2239488 * k + 115091) % 2 ≠ 0 by omega]
    omega
  have h17 : C (6718464 * k + 345274) = 3359232 * k + 172637 := by
    unfold C
    simp [show (6718464 * k + 345274) % 2 = 0 by omega]
    omega
  have h18 : C (3359232 * k + 172637) = 10077696 * k + 517912 := by
    unfold C
    simp [show (3359232 * k + 172637) % 2 ≠ 0 by omega]
    omega
  have h19 : C (10077696 * k + 517912) = 5038848 * k + 258956 := by
    unfold C
    simp [show (10077696 * k + 517912) % 2 = 0 by omega]
    omega
  have h20 : C (5038848 * k + 258956) = 2519424 * k + 129478 := by
    unfold C
    simp [show (5038848 * k + 258956) % 2 = 0 by omega]
    omega
  have h21 : C (2519424 * k + 129478) = 1259712 * k + 64739 := by
    unfold C
    simp [show (2519424 * k + 129478) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 64739) = 3779136 * k + 194218 := by
    unfold C
    simp [show (1259712 * k + 64739) % 2 ≠ 0 by omega]
    omega
  have h23 : C (3779136 * k + 194218) = 1889568 * k + 97109 := by
    unfold C
    simp [show (3779136 * k + 194218) % 2 = 0 by omega]
    omega
  have h24 : C (1889568 * k + 97109) = 5668704 * k + 291328 := by
    unfold C
    simp [show (1889568 * k + 97109) % 2 ≠ 0 by omega]
    omega
  have h25 : C (5668704 * k + 291328) = 2834352 * k + 145664 := by
    unfold C
    simp [show (5668704 * k + 291328) % 2 = 0 by omega]
    omega
  have h26 : C (2834352 * k + 145664) = 1417176 * k + 72832 := by
    unfold C
    simp [show (2834352 * k + 145664) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 72832) = 708588 * k + 36416 := by
    unfold C
    simp [show (1417176 * k + 72832) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 36416) = 354294 * k + 18208 := by
    unfold C
    simp [show (708588 * k + 36416) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 18208) = 177147 * k + 9104 := by
    unfold C
    simp [show (354294 * k + 18208) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 13471) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 13471))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_13479 : ∀ k : Nat,
    iterate (262144 * k + 13479) 29 = 177147 * k + 9110 ∧
      177147 * k + 9110 < 262144 * k + 13479 := by
  intro k
  have h1 : C (262144 * k + 13479) = 786432 * k + 40438 := by
    unfold C
    simp [show (262144 * k + 13479) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 40438) = 393216 * k + 20219 := by
    unfold C
    simp [show (786432 * k + 40438) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 20219) = 1179648 * k + 60658 := by
    unfold C
    simp [show (393216 * k + 20219) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 60658) = 589824 * k + 30329 := by
    unfold C
    simp [show (1179648 * k + 60658) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 30329) = 1769472 * k + 90988 := by
    unfold C
    simp [show (589824 * k + 30329) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 90988) = 884736 * k + 45494 := by
    unfold C
    simp [show (1769472 * k + 90988) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 45494) = 442368 * k + 22747 := by
    unfold C
    simp [show (884736 * k + 45494) % 2 = 0 by omega]
    omega
  have h8 : C (442368 * k + 22747) = 1327104 * k + 68242 := by
    unfold C
    simp [show (442368 * k + 22747) % 2 ≠ 0 by omega]
    omega
  have h9 : C (1327104 * k + 68242) = 663552 * k + 34121 := by
    unfold C
    simp [show (1327104 * k + 68242) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 34121) = 1990656 * k + 102364 := by
    unfold C
    simp [show (663552 * k + 34121) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 102364) = 995328 * k + 51182 := by
    unfold C
    simp [show (1990656 * k + 102364) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 51182) = 497664 * k + 25591 := by
    unfold C
    simp [show (995328 * k + 51182) % 2 = 0 by omega]
    omega
  have h13 : C (497664 * k + 25591) = 1492992 * k + 76774 := by
    unfold C
    simp [show (497664 * k + 25591) % 2 ≠ 0 by omega]
    omega
  have h14 : C (1492992 * k + 76774) = 746496 * k + 38387 := by
    unfold C
    simp [show (1492992 * k + 76774) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 38387) = 2239488 * k + 115162 := by
    unfold C
    simp [show (746496 * k + 38387) % 2 ≠ 0 by omega]
    omega
  have h16 : C (2239488 * k + 115162) = 1119744 * k + 57581 := by
    unfold C
    simp [show (2239488 * k + 115162) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 57581) = 3359232 * k + 172744 := by
    unfold C
    simp [show (1119744 * k + 57581) % 2 ≠ 0 by omega]
    omega
  have h18 : C (3359232 * k + 172744) = 1679616 * k + 86372 := by
    unfold C
    simp [show (3359232 * k + 172744) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 86372) = 839808 * k + 43186 := by
    unfold C
    simp [show (1679616 * k + 86372) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 43186) = 419904 * k + 21593 := by
    unfold C
    simp [show (839808 * k + 43186) % 2 = 0 by omega]
    omega
  have h21 : C (419904 * k + 21593) = 1259712 * k + 64780 := by
    unfold C
    simp [show (419904 * k + 21593) % 2 ≠ 0 by omega]
    omega
  have h22 : C (1259712 * k + 64780) = 629856 * k + 32390 := by
    unfold C
    simp [show (1259712 * k + 64780) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 32390) = 314928 * k + 16195 := by
    unfold C
    simp [show (629856 * k + 32390) % 2 = 0 by omega]
    omega
  have h24 : C (314928 * k + 16195) = 944784 * k + 48586 := by
    unfold C
    simp [show (314928 * k + 16195) % 2 ≠ 0 by omega]
    omega
  have h25 : C (944784 * k + 48586) = 472392 * k + 24293 := by
    unfold C
    simp [show (944784 * k + 48586) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 24293) = 1417176 * k + 72880 := by
    unfold C
    simp [show (472392 * k + 24293) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 72880) = 708588 * k + 36440 := by
    unfold C
    simp [show (1417176 * k + 72880) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 36440) = 354294 * k + 18220 := by
    unfold C
    simp [show (708588 * k + 36440) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 18220) = 177147 * k + 9110 := by
    unfold C
    simp [show (354294 * k + 18220) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 13479) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 13479))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_13595 : ∀ k : Nat,
    iterate (262144 * k + 13595) 29 = 177147 * k + 9188 ∧
      177147 * k + 9188 < 262144 * k + 13595 := by
  intro k
  have h1 : C (262144 * k + 13595) = 786432 * k + 40786 := by
    unfold C
    simp [show (262144 * k + 13595) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 40786) = 393216 * k + 20393 := by
    unfold C
    simp [show (786432 * k + 40786) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 20393) = 1179648 * k + 61180 := by
    unfold C
    simp [show (393216 * k + 20393) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 61180) = 589824 * k + 30590 := by
    unfold C
    simp [show (1179648 * k + 61180) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 30590) = 294912 * k + 15295 := by
    unfold C
    simp [show (589824 * k + 30590) % 2 = 0 by omega]
    omega
  have h6 : C (294912 * k + 15295) = 884736 * k + 45886 := by
    unfold C
    simp [show (294912 * k + 15295) % 2 ≠ 0 by omega]
    omega
  have h7 : C (884736 * k + 45886) = 442368 * k + 22943 := by
    unfold C
    simp [show (884736 * k + 45886) % 2 = 0 by omega]
    omega
  have h8 : C (442368 * k + 22943) = 1327104 * k + 68830 := by
    unfold C
    simp [show (442368 * k + 22943) % 2 ≠ 0 by omega]
    omega
  have h9 : C (1327104 * k + 68830) = 663552 * k + 34415 := by
    unfold C
    simp [show (1327104 * k + 68830) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 34415) = 1990656 * k + 103246 := by
    unfold C
    simp [show (663552 * k + 34415) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 103246) = 995328 * k + 51623 := by
    unfold C
    simp [show (1990656 * k + 103246) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 51623) = 2985984 * k + 154870 := by
    unfold C
    simp [show (995328 * k + 51623) % 2 ≠ 0 by omega]
    omega
  have h13 : C (2985984 * k + 154870) = 1492992 * k + 77435 := by
    unfold C
    simp [show (2985984 * k + 154870) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 77435) = 4478976 * k + 232306 := by
    unfold C
    simp [show (1492992 * k + 77435) % 2 ≠ 0 by omega]
    omega
  have h15 : C (4478976 * k + 232306) = 2239488 * k + 116153 := by
    unfold C
    simp [show (4478976 * k + 232306) % 2 = 0 by omega]
    omega
  have h16 : C (2239488 * k + 116153) = 6718464 * k + 348460 := by
    unfold C
    simp [show (2239488 * k + 116153) % 2 ≠ 0 by omega]
    omega
  have h17 : C (6718464 * k + 348460) = 3359232 * k + 174230 := by
    unfold C
    simp [show (6718464 * k + 348460) % 2 = 0 by omega]
    omega
  have h18 : C (3359232 * k + 174230) = 1679616 * k + 87115 := by
    unfold C
    simp [show (3359232 * k + 174230) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 87115) = 5038848 * k + 261346 := by
    unfold C
    simp [show (1679616 * k + 87115) % 2 ≠ 0 by omega]
    omega
  have h20 : C (5038848 * k + 261346) = 2519424 * k + 130673 := by
    unfold C
    simp [show (5038848 * k + 261346) % 2 = 0 by omega]
    omega
  have h21 : C (2519424 * k + 130673) = 7558272 * k + 392020 := by
    unfold C
    simp [show (2519424 * k + 130673) % 2 ≠ 0 by omega]
    omega
  have h22 : C (7558272 * k + 392020) = 3779136 * k + 196010 := by
    unfold C
    simp [show (7558272 * k + 392020) % 2 = 0 by omega]
    omega
  have h23 : C (3779136 * k + 196010) = 1889568 * k + 98005 := by
    unfold C
    simp [show (3779136 * k + 196010) % 2 = 0 by omega]
    omega
  have h24 : C (1889568 * k + 98005) = 5668704 * k + 294016 := by
    unfold C
    simp [show (1889568 * k + 98005) % 2 ≠ 0 by omega]
    omega
  have h25 : C (5668704 * k + 294016) = 2834352 * k + 147008 := by
    unfold C
    simp [show (5668704 * k + 294016) % 2 = 0 by omega]
    omega
  have h26 : C (2834352 * k + 147008) = 1417176 * k + 73504 := by
    unfold C
    simp [show (2834352 * k + 147008) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 73504) = 708588 * k + 36752 := by
    unfold C
    simp [show (1417176 * k + 73504) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 36752) = 354294 * k + 18376 := by
    unfold C
    simp [show (708588 * k + 36752) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 18376) = 177147 * k + 9188 := by
    unfold C
    simp [show (354294 * k + 18376) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 13595) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 13595))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_13639 : ∀ k : Nat,
    iterate (262144 * k + 13639) 29 = 177147 * k + 9218 ∧
      177147 * k + 9218 < 262144 * k + 13639 := by
  intro k
  have h1 : C (262144 * k + 13639) = 786432 * k + 40918 := by
    unfold C
    simp [show (262144 * k + 13639) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 40918) = 393216 * k + 20459 := by
    unfold C
    simp [show (786432 * k + 40918) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 20459) = 1179648 * k + 61378 := by
    unfold C
    simp [show (393216 * k + 20459) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 61378) = 589824 * k + 30689 := by
    unfold C
    simp [show (1179648 * k + 61378) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 30689) = 1769472 * k + 92068 := by
    unfold C
    simp [show (589824 * k + 30689) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 92068) = 884736 * k + 46034 := by
    unfold C
    simp [show (1769472 * k + 92068) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 46034) = 442368 * k + 23017 := by
    unfold C
    simp [show (884736 * k + 46034) % 2 = 0 by omega]
    omega
  have h8 : C (442368 * k + 23017) = 1327104 * k + 69052 := by
    unfold C
    simp [show (442368 * k + 23017) % 2 ≠ 0 by omega]
    omega
  have h9 : C (1327104 * k + 69052) = 663552 * k + 34526 := by
    unfold C
    simp [show (1327104 * k + 69052) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 34526) = 331776 * k + 17263 := by
    unfold C
    simp [show (663552 * k + 34526) % 2 = 0 by omega]
    omega
  have h11 : C (331776 * k + 17263) = 995328 * k + 51790 := by
    unfold C
    simp [show (331776 * k + 17263) % 2 ≠ 0 by omega]
    omega
  have h12 : C (995328 * k + 51790) = 497664 * k + 25895 := by
    unfold C
    simp [show (995328 * k + 51790) % 2 = 0 by omega]
    omega
  have h13 : C (497664 * k + 25895) = 1492992 * k + 77686 := by
    unfold C
    simp [show (497664 * k + 25895) % 2 ≠ 0 by omega]
    omega
  have h14 : C (1492992 * k + 77686) = 746496 * k + 38843 := by
    unfold C
    simp [show (1492992 * k + 77686) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 38843) = 2239488 * k + 116530 := by
    unfold C
    simp [show (746496 * k + 38843) % 2 ≠ 0 by omega]
    omega
  have h16 : C (2239488 * k + 116530) = 1119744 * k + 58265 := by
    unfold C
    simp [show (2239488 * k + 116530) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 58265) = 3359232 * k + 174796 := by
    unfold C
    simp [show (1119744 * k + 58265) % 2 ≠ 0 by omega]
    omega
  have h18 : C (3359232 * k + 174796) = 1679616 * k + 87398 := by
    unfold C
    simp [show (3359232 * k + 174796) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 87398) = 839808 * k + 43699 := by
    unfold C
    simp [show (1679616 * k + 87398) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 43699) = 2519424 * k + 131098 := by
    unfold C
    simp [show (839808 * k + 43699) % 2 ≠ 0 by omega]
    omega
  have h21 : C (2519424 * k + 131098) = 1259712 * k + 65549 := by
    unfold C
    simp [show (2519424 * k + 131098) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 65549) = 3779136 * k + 196648 := by
    unfold C
    simp [show (1259712 * k + 65549) % 2 ≠ 0 by omega]
    omega
  have h23 : C (3779136 * k + 196648) = 1889568 * k + 98324 := by
    unfold C
    simp [show (3779136 * k + 196648) % 2 = 0 by omega]
    omega
  have h24 : C (1889568 * k + 98324) = 944784 * k + 49162 := by
    unfold C
    simp [show (1889568 * k + 98324) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 49162) = 472392 * k + 24581 := by
    unfold C
    simp [show (944784 * k + 49162) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 24581) = 1417176 * k + 73744 := by
    unfold C
    simp [show (472392 * k + 24581) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 73744) = 708588 * k + 36872 := by
    unfold C
    simp [show (1417176 * k + 73744) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 36872) = 354294 * k + 18436 := by
    unfold C
    simp [show (708588 * k + 36872) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 18436) = 177147 * k + 9218 := by
    unfold C
    simp [show (354294 * k + 18436) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 13639) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 13639))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_13727 : ∀ k : Nat,
    iterate (262144 * k + 13727) 29 = 177147 * k + 9277 ∧
      177147 * k + 9277 < 262144 * k + 13727 := by
  intro k
  have h1 : C (262144 * k + 13727) = 786432 * k + 41182 := by
    unfold C
    simp [show (262144 * k + 13727) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 41182) = 393216 * k + 20591 := by
    unfold C
    simp [show (786432 * k + 41182) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 20591) = 1179648 * k + 61774 := by
    unfold C
    simp [show (393216 * k + 20591) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 61774) = 589824 * k + 30887 := by
    unfold C
    simp [show (1179648 * k + 61774) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 30887) = 1769472 * k + 92662 := by
    unfold C
    simp [show (589824 * k + 30887) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 92662) = 884736 * k + 46331 := by
    unfold C
    simp [show (1769472 * k + 92662) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 46331) = 2654208 * k + 138994 := by
    unfold C
    simp [show (884736 * k + 46331) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 138994) = 1327104 * k + 69497 := by
    unfold C
    simp [show (2654208 * k + 138994) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 69497) = 3981312 * k + 208492 := by
    unfold C
    simp [show (1327104 * k + 69497) % 2 ≠ 0 by omega]
    omega
  have h10 : C (3981312 * k + 208492) = 1990656 * k + 104246 := by
    unfold C
    simp [show (3981312 * k + 208492) % 2 = 0 by omega]
    omega
  have h11 : C (1990656 * k + 104246) = 995328 * k + 52123 := by
    unfold C
    simp [show (1990656 * k + 104246) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 52123) = 2985984 * k + 156370 := by
    unfold C
    simp [show (995328 * k + 52123) % 2 ≠ 0 by omega]
    omega
  have h13 : C (2985984 * k + 156370) = 1492992 * k + 78185 := by
    unfold C
    simp [show (2985984 * k + 156370) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 78185) = 4478976 * k + 234556 := by
    unfold C
    simp [show (1492992 * k + 78185) % 2 ≠ 0 by omega]
    omega
  have h15 : C (4478976 * k + 234556) = 2239488 * k + 117278 := by
    unfold C
    simp [show (4478976 * k + 234556) % 2 = 0 by omega]
    omega
  have h16 : C (2239488 * k + 117278) = 1119744 * k + 58639 := by
    unfold C
    simp [show (2239488 * k + 117278) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 58639) = 3359232 * k + 175918 := by
    unfold C
    simp [show (1119744 * k + 58639) % 2 ≠ 0 by omega]
    omega
  have h18 : C (3359232 * k + 175918) = 1679616 * k + 87959 := by
    unfold C
    simp [show (3359232 * k + 175918) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 87959) = 5038848 * k + 263878 := by
    unfold C
    simp [show (1679616 * k + 87959) % 2 ≠ 0 by omega]
    omega
  have h20 : C (5038848 * k + 263878) = 2519424 * k + 131939 := by
    unfold C
    simp [show (5038848 * k + 263878) % 2 = 0 by omega]
    omega
  have h21 : C (2519424 * k + 131939) = 7558272 * k + 395818 := by
    unfold C
    simp [show (2519424 * k + 131939) % 2 ≠ 0 by omega]
    omega
  have h22 : C (7558272 * k + 395818) = 3779136 * k + 197909 := by
    unfold C
    simp [show (7558272 * k + 395818) % 2 = 0 by omega]
    omega
  have h23 : C (3779136 * k + 197909) = 11337408 * k + 593728 := by
    unfold C
    simp [show (3779136 * k + 197909) % 2 ≠ 0 by omega]
    omega
  have h24 : C (11337408 * k + 593728) = 5668704 * k + 296864 := by
    unfold C
    simp [show (11337408 * k + 593728) % 2 = 0 by omega]
    omega
  have h25 : C (5668704 * k + 296864) = 2834352 * k + 148432 := by
    unfold C
    simp [show (5668704 * k + 296864) % 2 = 0 by omega]
    omega
  have h26 : C (2834352 * k + 148432) = 1417176 * k + 74216 := by
    unfold C
    simp [show (2834352 * k + 148432) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 74216) = 708588 * k + 37108 := by
    unfold C
    simp [show (1417176 * k + 74216) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 37108) = 354294 * k + 18554 := by
    unfold C
    simp [show (708588 * k + 37108) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 18554) = 177147 * k + 9277 := by
    unfold C
    simp [show (354294 * k + 18554) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 13727) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 13727))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

end CollatzM18Shard003
