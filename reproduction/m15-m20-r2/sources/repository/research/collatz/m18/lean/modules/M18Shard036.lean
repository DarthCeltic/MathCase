import Mathlib.Data.Nat.Prime.Basic

namespace CollatzM18Shard036

def C (n : Nat) : Nat := if n % 2 = 0 then n / 2 else 3 * n + 1

def iterate (n t : Nat) : Nat := Nat.rec n (fun _ previous => C previous) t

theorem descent_mod262144_187495 : ∀ k : Nat,
    iterate (262144 * k + 187495) 29 = 177147 * k + 126703 ∧
      177147 * k + 126703 < 262144 * k + 187495 := by
  intro k
  have h1 : C (262144 * k + 187495) = 786432 * k + 562486 := by
    unfold C
    simp [show (262144 * k + 187495) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 562486) = 393216 * k + 281243 := by
    unfold C
    simp [show (786432 * k + 562486) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 281243) = 1179648 * k + 843730 := by
    unfold C
    simp [show (393216 * k + 281243) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 843730) = 589824 * k + 421865 := by
    unfold C
    simp [show (1179648 * k + 843730) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 421865) = 1769472 * k + 1265596 := by
    unfold C
    simp [show (589824 * k + 421865) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 1265596) = 884736 * k + 632798 := by
    unfold C
    simp [show (1769472 * k + 1265596) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 632798) = 442368 * k + 316399 := by
    unfold C
    simp [show (884736 * k + 632798) % 2 = 0 by omega]
    omega
  have h8 : C (442368 * k + 316399) = 1327104 * k + 949198 := by
    unfold C
    simp [show (442368 * k + 316399) % 2 ≠ 0 by omega]
    omega
  have h9 : C (1327104 * k + 949198) = 663552 * k + 474599 := by
    unfold C
    simp [show (1327104 * k + 949198) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 474599) = 1990656 * k + 1423798 := by
    unfold C
    simp [show (663552 * k + 474599) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 1423798) = 995328 * k + 711899 := by
    unfold C
    simp [show (1990656 * k + 1423798) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 711899) = 2985984 * k + 2135698 := by
    unfold C
    simp [show (995328 * k + 711899) % 2 ≠ 0 by omega]
    omega
  have h13 : C (2985984 * k + 2135698) = 1492992 * k + 1067849 := by
    unfold C
    simp [show (2985984 * k + 2135698) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 1067849) = 4478976 * k + 3203548 := by
    unfold C
    simp [show (1492992 * k + 1067849) % 2 ≠ 0 by omega]
    omega
  have h15 : C (4478976 * k + 3203548) = 2239488 * k + 1601774 := by
    unfold C
    simp [show (4478976 * k + 3203548) % 2 = 0 by omega]
    omega
  have h16 : C (2239488 * k + 1601774) = 1119744 * k + 800887 := by
    unfold C
    simp [show (2239488 * k + 1601774) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 800887) = 3359232 * k + 2402662 := by
    unfold C
    simp [show (1119744 * k + 800887) % 2 ≠ 0 by omega]
    omega
  have h18 : C (3359232 * k + 2402662) = 1679616 * k + 1201331 := by
    unfold C
    simp [show (3359232 * k + 2402662) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 1201331) = 5038848 * k + 3603994 := by
    unfold C
    simp [show (1679616 * k + 1201331) % 2 ≠ 0 by omega]
    omega
  have h20 : C (5038848 * k + 3603994) = 2519424 * k + 1801997 := by
    unfold C
    simp [show (5038848 * k + 3603994) % 2 = 0 by omega]
    omega
  have h21 : C (2519424 * k + 1801997) = 7558272 * k + 5405992 := by
    unfold C
    simp [show (2519424 * k + 1801997) % 2 ≠ 0 by omega]
    omega
  have h22 : C (7558272 * k + 5405992) = 3779136 * k + 2702996 := by
    unfold C
    simp [show (7558272 * k + 5405992) % 2 = 0 by omega]
    omega
  have h23 : C (3779136 * k + 2702996) = 1889568 * k + 1351498 := by
    unfold C
    simp [show (3779136 * k + 2702996) % 2 = 0 by omega]
    omega
  have h24 : C (1889568 * k + 1351498) = 944784 * k + 675749 := by
    unfold C
    simp [show (1889568 * k + 1351498) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 675749) = 2834352 * k + 2027248 := by
    unfold C
    simp [show (944784 * k + 675749) % 2 ≠ 0 by omega]
    omega
  have h26 : C (2834352 * k + 2027248) = 1417176 * k + 1013624 := by
    unfold C
    simp [show (2834352 * k + 2027248) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 1013624) = 708588 * k + 506812 := by
    unfold C
    simp [show (1417176 * k + 1013624) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 506812) = 354294 * k + 253406 := by
    unfold C
    simp [show (708588 * k + 506812) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 253406) = 177147 * k + 126703 := by
    unfold C
    simp [show (354294 * k + 253406) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 187495) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 187495))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_187519 : ∀ k : Nat,
    iterate (262144 * k + 187519) 29 = 177147 * k + 126719 ∧
      177147 * k + 126719 < 262144 * k + 187519 := by
  intro k
  have h1 : C (262144 * k + 187519) = 786432 * k + 562558 := by
    unfold C
    simp [show (262144 * k + 187519) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 562558) = 393216 * k + 281279 := by
    unfold C
    simp [show (786432 * k + 562558) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 281279) = 1179648 * k + 843838 := by
    unfold C
    simp [show (393216 * k + 281279) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 843838) = 589824 * k + 421919 := by
    unfold C
    simp [show (1179648 * k + 843838) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 421919) = 1769472 * k + 1265758 := by
    unfold C
    simp [show (589824 * k + 421919) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 1265758) = 884736 * k + 632879 := by
    unfold C
    simp [show (1769472 * k + 1265758) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 632879) = 2654208 * k + 1898638 := by
    unfold C
    simp [show (884736 * k + 632879) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 1898638) = 1327104 * k + 949319 := by
    unfold C
    simp [show (2654208 * k + 1898638) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 949319) = 3981312 * k + 2847958 := by
    unfold C
    simp [show (1327104 * k + 949319) % 2 ≠ 0 by omega]
    omega
  have h10 : C (3981312 * k + 2847958) = 1990656 * k + 1423979 := by
    unfold C
    simp [show (3981312 * k + 2847958) % 2 = 0 by omega]
    omega
  have h11 : C (1990656 * k + 1423979) = 5971968 * k + 4271938 := by
    unfold C
    simp [show (1990656 * k + 1423979) % 2 ≠ 0 by omega]
    omega
  have h12 : C (5971968 * k + 4271938) = 2985984 * k + 2135969 := by
    unfold C
    simp [show (5971968 * k + 4271938) % 2 = 0 by omega]
    omega
  have h13 : C (2985984 * k + 2135969) = 8957952 * k + 6407908 := by
    unfold C
    simp [show (2985984 * k + 2135969) % 2 ≠ 0 by omega]
    omega
  have h14 : C (8957952 * k + 6407908) = 4478976 * k + 3203954 := by
    unfold C
    simp [show (8957952 * k + 6407908) % 2 = 0 by omega]
    omega
  have h15 : C (4478976 * k + 3203954) = 2239488 * k + 1601977 := by
    unfold C
    simp [show (4478976 * k + 3203954) % 2 = 0 by omega]
    omega
  have h16 : C (2239488 * k + 1601977) = 6718464 * k + 4805932 := by
    unfold C
    simp [show (2239488 * k + 1601977) % 2 ≠ 0 by omega]
    omega
  have h17 : C (6718464 * k + 4805932) = 3359232 * k + 2402966 := by
    unfold C
    simp [show (6718464 * k + 4805932) % 2 = 0 by omega]
    omega
  have h18 : C (3359232 * k + 2402966) = 1679616 * k + 1201483 := by
    unfold C
    simp [show (3359232 * k + 2402966) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 1201483) = 5038848 * k + 3604450 := by
    unfold C
    simp [show (1679616 * k + 1201483) % 2 ≠ 0 by omega]
    omega
  have h20 : C (5038848 * k + 3604450) = 2519424 * k + 1802225 := by
    unfold C
    simp [show (5038848 * k + 3604450) % 2 = 0 by omega]
    omega
  have h21 : C (2519424 * k + 1802225) = 7558272 * k + 5406676 := by
    unfold C
    simp [show (2519424 * k + 1802225) % 2 ≠ 0 by omega]
    omega
  have h22 : C (7558272 * k + 5406676) = 3779136 * k + 2703338 := by
    unfold C
    simp [show (7558272 * k + 5406676) % 2 = 0 by omega]
    omega
  have h23 : C (3779136 * k + 2703338) = 1889568 * k + 1351669 := by
    unfold C
    simp [show (3779136 * k + 2703338) % 2 = 0 by omega]
    omega
  have h24 : C (1889568 * k + 1351669) = 5668704 * k + 4055008 := by
    unfold C
    simp [show (1889568 * k + 1351669) % 2 ≠ 0 by omega]
    omega
  have h25 : C (5668704 * k + 4055008) = 2834352 * k + 2027504 := by
    unfold C
    simp [show (5668704 * k + 4055008) % 2 = 0 by omega]
    omega
  have h26 : C (2834352 * k + 2027504) = 1417176 * k + 1013752 := by
    unfold C
    simp [show (2834352 * k + 2027504) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 1013752) = 708588 * k + 506876 := by
    unfold C
    simp [show (1417176 * k + 1013752) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 506876) = 354294 * k + 253438 := by
    unfold C
    simp [show (708588 * k + 506876) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 253438) = 177147 * k + 126719 := by
    unfold C
    simp [show (354294 * k + 253438) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 187519) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 187519))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_187887 : ∀ k : Nat,
    iterate (262144 * k + 187887) 29 = 177147 * k + 126968 ∧
      177147 * k + 126968 < 262144 * k + 187887 := by
  intro k
  have h1 : C (262144 * k + 187887) = 786432 * k + 563662 := by
    unfold C
    simp [show (262144 * k + 187887) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 563662) = 393216 * k + 281831 := by
    unfold C
    simp [show (786432 * k + 563662) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 281831) = 1179648 * k + 845494 := by
    unfold C
    simp [show (393216 * k + 281831) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 845494) = 589824 * k + 422747 := by
    unfold C
    simp [show (1179648 * k + 845494) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 422747) = 1769472 * k + 1268242 := by
    unfold C
    simp [show (589824 * k + 422747) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 1268242) = 884736 * k + 634121 := by
    unfold C
    simp [show (1769472 * k + 1268242) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 634121) = 2654208 * k + 1902364 := by
    unfold C
    simp [show (884736 * k + 634121) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 1902364) = 1327104 * k + 951182 := by
    unfold C
    simp [show (2654208 * k + 1902364) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 951182) = 663552 * k + 475591 := by
    unfold C
    simp [show (1327104 * k + 951182) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 475591) = 1990656 * k + 1426774 := by
    unfold C
    simp [show (663552 * k + 475591) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 1426774) = 995328 * k + 713387 := by
    unfold C
    simp [show (1990656 * k + 1426774) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 713387) = 2985984 * k + 2140162 := by
    unfold C
    simp [show (995328 * k + 713387) % 2 ≠ 0 by omega]
    omega
  have h13 : C (2985984 * k + 2140162) = 1492992 * k + 1070081 := by
    unfold C
    simp [show (2985984 * k + 2140162) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 1070081) = 4478976 * k + 3210244 := by
    unfold C
    simp [show (1492992 * k + 1070081) % 2 ≠ 0 by omega]
    omega
  have h15 : C (4478976 * k + 3210244) = 2239488 * k + 1605122 := by
    unfold C
    simp [show (4478976 * k + 3210244) % 2 = 0 by omega]
    omega
  have h16 : C (2239488 * k + 1605122) = 1119744 * k + 802561 := by
    unfold C
    simp [show (2239488 * k + 1605122) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 802561) = 3359232 * k + 2407684 := by
    unfold C
    simp [show (1119744 * k + 802561) % 2 ≠ 0 by omega]
    omega
  have h18 : C (3359232 * k + 2407684) = 1679616 * k + 1203842 := by
    unfold C
    simp [show (3359232 * k + 2407684) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 1203842) = 839808 * k + 601921 := by
    unfold C
    simp [show (1679616 * k + 1203842) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 601921) = 2519424 * k + 1805764 := by
    unfold C
    simp [show (839808 * k + 601921) % 2 ≠ 0 by omega]
    omega
  have h21 : C (2519424 * k + 1805764) = 1259712 * k + 902882 := by
    unfold C
    simp [show (2519424 * k + 1805764) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 902882) = 629856 * k + 451441 := by
    unfold C
    simp [show (1259712 * k + 902882) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 451441) = 1889568 * k + 1354324 := by
    unfold C
    simp [show (629856 * k + 451441) % 2 ≠ 0 by omega]
    omega
  have h24 : C (1889568 * k + 1354324) = 944784 * k + 677162 := by
    unfold C
    simp [show (1889568 * k + 1354324) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 677162) = 472392 * k + 338581 := by
    unfold C
    simp [show (944784 * k + 677162) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 338581) = 1417176 * k + 1015744 := by
    unfold C
    simp [show (472392 * k + 338581) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 1015744) = 708588 * k + 507872 := by
    unfold C
    simp [show (1417176 * k + 1015744) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 507872) = 354294 * k + 253936 := by
    unfold C
    simp [show (708588 * k + 507872) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 253936) = 177147 * k + 126968 := by
    unfold C
    simp [show (354294 * k + 253936) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 187887) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 187887))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_188655 : ∀ k : Nat,
    iterate (262144 * k + 188655) 29 = 177147 * k + 127487 ∧
      177147 * k + 127487 < 262144 * k + 188655 := by
  intro k
  have h1 : C (262144 * k + 188655) = 786432 * k + 565966 := by
    unfold C
    simp [show (262144 * k + 188655) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 565966) = 393216 * k + 282983 := by
    unfold C
    simp [show (786432 * k + 565966) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 282983) = 1179648 * k + 848950 := by
    unfold C
    simp [show (393216 * k + 282983) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 848950) = 589824 * k + 424475 := by
    unfold C
    simp [show (1179648 * k + 848950) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 424475) = 1769472 * k + 1273426 := by
    unfold C
    simp [show (589824 * k + 424475) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 1273426) = 884736 * k + 636713 := by
    unfold C
    simp [show (1769472 * k + 1273426) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 636713) = 2654208 * k + 1910140 := by
    unfold C
    simp [show (884736 * k + 636713) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 1910140) = 1327104 * k + 955070 := by
    unfold C
    simp [show (2654208 * k + 1910140) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 955070) = 663552 * k + 477535 := by
    unfold C
    simp [show (1327104 * k + 955070) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 477535) = 1990656 * k + 1432606 := by
    unfold C
    simp [show (663552 * k + 477535) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 1432606) = 995328 * k + 716303 := by
    unfold C
    simp [show (1990656 * k + 1432606) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 716303) = 2985984 * k + 2148910 := by
    unfold C
    simp [show (995328 * k + 716303) % 2 ≠ 0 by omega]
    omega
  have h13 : C (2985984 * k + 2148910) = 1492992 * k + 1074455 := by
    unfold C
    simp [show (2985984 * k + 2148910) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 1074455) = 4478976 * k + 3223366 := by
    unfold C
    simp [show (1492992 * k + 1074455) % 2 ≠ 0 by omega]
    omega
  have h15 : C (4478976 * k + 3223366) = 2239488 * k + 1611683 := by
    unfold C
    simp [show (4478976 * k + 3223366) % 2 = 0 by omega]
    omega
  have h16 : C (2239488 * k + 1611683) = 6718464 * k + 4835050 := by
    unfold C
    simp [show (2239488 * k + 1611683) % 2 ≠ 0 by omega]
    omega
  have h17 : C (6718464 * k + 4835050) = 3359232 * k + 2417525 := by
    unfold C
    simp [show (6718464 * k + 4835050) % 2 = 0 by omega]
    omega
  have h18 : C (3359232 * k + 2417525) = 10077696 * k + 7252576 := by
    unfold C
    simp [show (3359232 * k + 2417525) % 2 ≠ 0 by omega]
    omega
  have h19 : C (10077696 * k + 7252576) = 5038848 * k + 3626288 := by
    unfold C
    simp [show (10077696 * k + 7252576) % 2 = 0 by omega]
    omega
  have h20 : C (5038848 * k + 3626288) = 2519424 * k + 1813144 := by
    unfold C
    simp [show (5038848 * k + 3626288) % 2 = 0 by omega]
    omega
  have h21 : C (2519424 * k + 1813144) = 1259712 * k + 906572 := by
    unfold C
    simp [show (2519424 * k + 1813144) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 906572) = 629856 * k + 453286 := by
    unfold C
    simp [show (1259712 * k + 906572) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 453286) = 314928 * k + 226643 := by
    unfold C
    simp [show (629856 * k + 453286) % 2 = 0 by omega]
    omega
  have h24 : C (314928 * k + 226643) = 944784 * k + 679930 := by
    unfold C
    simp [show (314928 * k + 226643) % 2 ≠ 0 by omega]
    omega
  have h25 : C (944784 * k + 679930) = 472392 * k + 339965 := by
    unfold C
    simp [show (944784 * k + 679930) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 339965) = 1417176 * k + 1019896 := by
    unfold C
    simp [show (472392 * k + 339965) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 1019896) = 708588 * k + 509948 := by
    unfold C
    simp [show (1417176 * k + 1019896) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 509948) = 354294 * k + 254974 := by
    unfold C
    simp [show (708588 * k + 509948) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 254974) = 177147 * k + 127487 := by
    unfold C
    simp [show (354294 * k + 254974) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 188655) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 188655))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_189511 : ∀ k : Nat,
    iterate (262144 * k + 189511) 29 = 177147 * k + 128066 ∧
      177147 * k + 128066 < 262144 * k + 189511 := by
  intro k
  have h1 : C (262144 * k + 189511) = 786432 * k + 568534 := by
    unfold C
    simp [show (262144 * k + 189511) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 568534) = 393216 * k + 284267 := by
    unfold C
    simp [show (786432 * k + 568534) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 284267) = 1179648 * k + 852802 := by
    unfold C
    simp [show (393216 * k + 284267) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 852802) = 589824 * k + 426401 := by
    unfold C
    simp [show (1179648 * k + 852802) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 426401) = 1769472 * k + 1279204 := by
    unfold C
    simp [show (589824 * k + 426401) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 1279204) = 884736 * k + 639602 := by
    unfold C
    simp [show (1769472 * k + 1279204) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 639602) = 442368 * k + 319801 := by
    unfold C
    simp [show (884736 * k + 639602) % 2 = 0 by omega]
    omega
  have h8 : C (442368 * k + 319801) = 1327104 * k + 959404 := by
    unfold C
    simp [show (442368 * k + 319801) % 2 ≠ 0 by omega]
    omega
  have h9 : C (1327104 * k + 959404) = 663552 * k + 479702 := by
    unfold C
    simp [show (1327104 * k + 959404) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 479702) = 331776 * k + 239851 := by
    unfold C
    simp [show (663552 * k + 479702) % 2 = 0 by omega]
    omega
  have h11 : C (331776 * k + 239851) = 995328 * k + 719554 := by
    unfold C
    simp [show (331776 * k + 239851) % 2 ≠ 0 by omega]
    omega
  have h12 : C (995328 * k + 719554) = 497664 * k + 359777 := by
    unfold C
    simp [show (995328 * k + 719554) % 2 = 0 by omega]
    omega
  have h13 : C (497664 * k + 359777) = 1492992 * k + 1079332 := by
    unfold C
    simp [show (497664 * k + 359777) % 2 ≠ 0 by omega]
    omega
  have h14 : C (1492992 * k + 1079332) = 746496 * k + 539666 := by
    unfold C
    simp [show (1492992 * k + 1079332) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 539666) = 373248 * k + 269833 := by
    unfold C
    simp [show (746496 * k + 539666) % 2 = 0 by omega]
    omega
  have h16 : C (373248 * k + 269833) = 1119744 * k + 809500 := by
    unfold C
    simp [show (373248 * k + 269833) % 2 ≠ 0 by omega]
    omega
  have h17 : C (1119744 * k + 809500) = 559872 * k + 404750 := by
    unfold C
    simp [show (1119744 * k + 809500) % 2 = 0 by omega]
    omega
  have h18 : C (559872 * k + 404750) = 279936 * k + 202375 := by
    unfold C
    simp [show (559872 * k + 404750) % 2 = 0 by omega]
    omega
  have h19 : C (279936 * k + 202375) = 839808 * k + 607126 := by
    unfold C
    simp [show (279936 * k + 202375) % 2 ≠ 0 by omega]
    omega
  have h20 : C (839808 * k + 607126) = 419904 * k + 303563 := by
    unfold C
    simp [show (839808 * k + 607126) % 2 = 0 by omega]
    omega
  have h21 : C (419904 * k + 303563) = 1259712 * k + 910690 := by
    unfold C
    simp [show (419904 * k + 303563) % 2 ≠ 0 by omega]
    omega
  have h22 : C (1259712 * k + 910690) = 629856 * k + 455345 := by
    unfold C
    simp [show (1259712 * k + 910690) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 455345) = 1889568 * k + 1366036 := by
    unfold C
    simp [show (629856 * k + 455345) % 2 ≠ 0 by omega]
    omega
  have h24 : C (1889568 * k + 1366036) = 944784 * k + 683018 := by
    unfold C
    simp [show (1889568 * k + 1366036) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 683018) = 472392 * k + 341509 := by
    unfold C
    simp [show (944784 * k + 683018) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 341509) = 1417176 * k + 1024528 := by
    unfold C
    simp [show (472392 * k + 341509) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 1024528) = 708588 * k + 512264 := by
    unfold C
    simp [show (1417176 * k + 1024528) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 512264) = 354294 * k + 256132 := by
    unfold C
    simp [show (708588 * k + 512264) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 256132) = 177147 * k + 128066 := by
    unfold C
    simp [show (354294 * k + 256132) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 189511) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 189511))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_189759 : ∀ k : Nat,
    iterate (262144 * k + 189759) 29 = 177147 * k + 128233 ∧
      177147 * k + 128233 < 262144 * k + 189759 := by
  intro k
  have h1 : C (262144 * k + 189759) = 786432 * k + 569278 := by
    unfold C
    simp [show (262144 * k + 189759) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 569278) = 393216 * k + 284639 := by
    unfold C
    simp [show (786432 * k + 569278) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 284639) = 1179648 * k + 853918 := by
    unfold C
    simp [show (393216 * k + 284639) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 853918) = 589824 * k + 426959 := by
    unfold C
    simp [show (1179648 * k + 853918) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 426959) = 1769472 * k + 1280878 := by
    unfold C
    simp [show (589824 * k + 426959) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 1280878) = 884736 * k + 640439 := by
    unfold C
    simp [show (1769472 * k + 1280878) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 640439) = 2654208 * k + 1921318 := by
    unfold C
    simp [show (884736 * k + 640439) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 1921318) = 1327104 * k + 960659 := by
    unfold C
    simp [show (2654208 * k + 1921318) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 960659) = 3981312 * k + 2881978 := by
    unfold C
    simp [show (1327104 * k + 960659) % 2 ≠ 0 by omega]
    omega
  have h10 : C (3981312 * k + 2881978) = 1990656 * k + 1440989 := by
    unfold C
    simp [show (3981312 * k + 2881978) % 2 = 0 by omega]
    omega
  have h11 : C (1990656 * k + 1440989) = 5971968 * k + 4322968 := by
    unfold C
    simp [show (1990656 * k + 1440989) % 2 ≠ 0 by omega]
    omega
  have h12 : C (5971968 * k + 4322968) = 2985984 * k + 2161484 := by
    unfold C
    simp [show (5971968 * k + 4322968) % 2 = 0 by omega]
    omega
  have h13 : C (2985984 * k + 2161484) = 1492992 * k + 1080742 := by
    unfold C
    simp [show (2985984 * k + 2161484) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 1080742) = 746496 * k + 540371 := by
    unfold C
    simp [show (1492992 * k + 1080742) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 540371) = 2239488 * k + 1621114 := by
    unfold C
    simp [show (746496 * k + 540371) % 2 ≠ 0 by omega]
    omega
  have h16 : C (2239488 * k + 1621114) = 1119744 * k + 810557 := by
    unfold C
    simp [show (2239488 * k + 1621114) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 810557) = 3359232 * k + 2431672 := by
    unfold C
    simp [show (1119744 * k + 810557) % 2 ≠ 0 by omega]
    omega
  have h18 : C (3359232 * k + 2431672) = 1679616 * k + 1215836 := by
    unfold C
    simp [show (3359232 * k + 2431672) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 1215836) = 839808 * k + 607918 := by
    unfold C
    simp [show (1679616 * k + 1215836) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 607918) = 419904 * k + 303959 := by
    unfold C
    simp [show (839808 * k + 607918) % 2 = 0 by omega]
    omega
  have h21 : C (419904 * k + 303959) = 1259712 * k + 911878 := by
    unfold C
    simp [show (419904 * k + 303959) % 2 ≠ 0 by omega]
    omega
  have h22 : C (1259712 * k + 911878) = 629856 * k + 455939 := by
    unfold C
    simp [show (1259712 * k + 911878) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 455939) = 1889568 * k + 1367818 := by
    unfold C
    simp [show (629856 * k + 455939) % 2 ≠ 0 by omega]
    omega
  have h24 : C (1889568 * k + 1367818) = 944784 * k + 683909 := by
    unfold C
    simp [show (1889568 * k + 1367818) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 683909) = 2834352 * k + 2051728 := by
    unfold C
    simp [show (944784 * k + 683909) % 2 ≠ 0 by omega]
    omega
  have h26 : C (2834352 * k + 2051728) = 1417176 * k + 1025864 := by
    unfold C
    simp [show (2834352 * k + 2051728) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 1025864) = 708588 * k + 512932 := by
    unfold C
    simp [show (1417176 * k + 1025864) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 512932) = 354294 * k + 256466 := by
    unfold C
    simp [show (708588 * k + 512932) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 256466) = 177147 * k + 128233 := by
    unfold C
    simp [show (354294 * k + 256466) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 189759) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 189759))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_189799 : ∀ k : Nat,
    iterate (262144 * k + 189799) 29 = 177147 * k + 128260 ∧
      177147 * k + 128260 < 262144 * k + 189799 := by
  intro k
  have h1 : C (262144 * k + 189799) = 786432 * k + 569398 := by
    unfold C
    simp [show (262144 * k + 189799) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 569398) = 393216 * k + 284699 := by
    unfold C
    simp [show (786432 * k + 569398) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 284699) = 1179648 * k + 854098 := by
    unfold C
    simp [show (393216 * k + 284699) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 854098) = 589824 * k + 427049 := by
    unfold C
    simp [show (1179648 * k + 854098) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 427049) = 1769472 * k + 1281148 := by
    unfold C
    simp [show (589824 * k + 427049) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 1281148) = 884736 * k + 640574 := by
    unfold C
    simp [show (1769472 * k + 1281148) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 640574) = 442368 * k + 320287 := by
    unfold C
    simp [show (884736 * k + 640574) % 2 = 0 by omega]
    omega
  have h8 : C (442368 * k + 320287) = 1327104 * k + 960862 := by
    unfold C
    simp [show (442368 * k + 320287) % 2 ≠ 0 by omega]
    omega
  have h9 : C (1327104 * k + 960862) = 663552 * k + 480431 := by
    unfold C
    simp [show (1327104 * k + 960862) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 480431) = 1990656 * k + 1441294 := by
    unfold C
    simp [show (663552 * k + 480431) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 1441294) = 995328 * k + 720647 := by
    unfold C
    simp [show (1990656 * k + 1441294) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 720647) = 2985984 * k + 2161942 := by
    unfold C
    simp [show (995328 * k + 720647) % 2 ≠ 0 by omega]
    omega
  have h13 : C (2985984 * k + 2161942) = 1492992 * k + 1080971 := by
    unfold C
    simp [show (2985984 * k + 2161942) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 1080971) = 4478976 * k + 3242914 := by
    unfold C
    simp [show (1492992 * k + 1080971) % 2 ≠ 0 by omega]
    omega
  have h15 : C (4478976 * k + 3242914) = 2239488 * k + 1621457 := by
    unfold C
    simp [show (4478976 * k + 3242914) % 2 = 0 by omega]
    omega
  have h16 : C (2239488 * k + 1621457) = 6718464 * k + 4864372 := by
    unfold C
    simp [show (2239488 * k + 1621457) % 2 ≠ 0 by omega]
    omega
  have h17 : C (6718464 * k + 4864372) = 3359232 * k + 2432186 := by
    unfold C
    simp [show (6718464 * k + 4864372) % 2 = 0 by omega]
    omega
  have h18 : C (3359232 * k + 2432186) = 1679616 * k + 1216093 := by
    unfold C
    simp [show (3359232 * k + 2432186) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 1216093) = 5038848 * k + 3648280 := by
    unfold C
    simp [show (1679616 * k + 1216093) % 2 ≠ 0 by omega]
    omega
  have h20 : C (5038848 * k + 3648280) = 2519424 * k + 1824140 := by
    unfold C
    simp [show (5038848 * k + 3648280) % 2 = 0 by omega]
    omega
  have h21 : C (2519424 * k + 1824140) = 1259712 * k + 912070 := by
    unfold C
    simp [show (2519424 * k + 1824140) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 912070) = 629856 * k + 456035 := by
    unfold C
    simp [show (1259712 * k + 912070) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 456035) = 1889568 * k + 1368106 := by
    unfold C
    simp [show (629856 * k + 456035) % 2 ≠ 0 by omega]
    omega
  have h24 : C (1889568 * k + 1368106) = 944784 * k + 684053 := by
    unfold C
    simp [show (1889568 * k + 1368106) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 684053) = 2834352 * k + 2052160 := by
    unfold C
    simp [show (944784 * k + 684053) % 2 ≠ 0 by omega]
    omega
  have h26 : C (2834352 * k + 2052160) = 1417176 * k + 1026080 := by
    unfold C
    simp [show (2834352 * k + 2052160) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 1026080) = 708588 * k + 513040 := by
    unfold C
    simp [show (1417176 * k + 1026080) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 513040) = 354294 * k + 256520 := by
    unfold C
    simp [show (708588 * k + 513040) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 256520) = 177147 * k + 128260 := by
    unfold C
    simp [show (354294 * k + 256520) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 189799) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 189799))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_190191 : ∀ k : Nat,
    iterate (262144 * k + 190191) 29 = 177147 * k + 128525 ∧
      177147 * k + 128525 < 262144 * k + 190191 := by
  intro k
  have h1 : C (262144 * k + 190191) = 786432 * k + 570574 := by
    unfold C
    simp [show (262144 * k + 190191) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 570574) = 393216 * k + 285287 := by
    unfold C
    simp [show (786432 * k + 570574) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 285287) = 1179648 * k + 855862 := by
    unfold C
    simp [show (393216 * k + 285287) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 855862) = 589824 * k + 427931 := by
    unfold C
    simp [show (1179648 * k + 855862) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 427931) = 1769472 * k + 1283794 := by
    unfold C
    simp [show (589824 * k + 427931) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 1283794) = 884736 * k + 641897 := by
    unfold C
    simp [show (1769472 * k + 1283794) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 641897) = 2654208 * k + 1925692 := by
    unfold C
    simp [show (884736 * k + 641897) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 1925692) = 1327104 * k + 962846 := by
    unfold C
    simp [show (2654208 * k + 1925692) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 962846) = 663552 * k + 481423 := by
    unfold C
    simp [show (1327104 * k + 962846) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 481423) = 1990656 * k + 1444270 := by
    unfold C
    simp [show (663552 * k + 481423) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 1444270) = 995328 * k + 722135 := by
    unfold C
    simp [show (1990656 * k + 1444270) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 722135) = 2985984 * k + 2166406 := by
    unfold C
    simp [show (995328 * k + 722135) % 2 ≠ 0 by omega]
    omega
  have h13 : C (2985984 * k + 2166406) = 1492992 * k + 1083203 := by
    unfold C
    simp [show (2985984 * k + 2166406) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 1083203) = 4478976 * k + 3249610 := by
    unfold C
    simp [show (1492992 * k + 1083203) % 2 ≠ 0 by omega]
    omega
  have h15 : C (4478976 * k + 3249610) = 2239488 * k + 1624805 := by
    unfold C
    simp [show (4478976 * k + 3249610) % 2 = 0 by omega]
    omega
  have h16 : C (2239488 * k + 1624805) = 6718464 * k + 4874416 := by
    unfold C
    simp [show (2239488 * k + 1624805) % 2 ≠ 0 by omega]
    omega
  have h17 : C (6718464 * k + 4874416) = 3359232 * k + 2437208 := by
    unfold C
    simp [show (6718464 * k + 4874416) % 2 = 0 by omega]
    omega
  have h18 : C (3359232 * k + 2437208) = 1679616 * k + 1218604 := by
    unfold C
    simp [show (3359232 * k + 2437208) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 1218604) = 839808 * k + 609302 := by
    unfold C
    simp [show (1679616 * k + 1218604) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 609302) = 419904 * k + 304651 := by
    unfold C
    simp [show (839808 * k + 609302) % 2 = 0 by omega]
    omega
  have h21 : C (419904 * k + 304651) = 1259712 * k + 913954 := by
    unfold C
    simp [show (419904 * k + 304651) % 2 ≠ 0 by omega]
    omega
  have h22 : C (1259712 * k + 913954) = 629856 * k + 456977 := by
    unfold C
    simp [show (1259712 * k + 913954) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 456977) = 1889568 * k + 1370932 := by
    unfold C
    simp [show (629856 * k + 456977) % 2 ≠ 0 by omega]
    omega
  have h24 : C (1889568 * k + 1370932) = 944784 * k + 685466 := by
    unfold C
    simp [show (1889568 * k + 1370932) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 685466) = 472392 * k + 342733 := by
    unfold C
    simp [show (944784 * k + 685466) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 342733) = 1417176 * k + 1028200 := by
    unfold C
    simp [show (472392 * k + 342733) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 1028200) = 708588 * k + 514100 := by
    unfold C
    simp [show (1417176 * k + 1028200) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 514100) = 354294 * k + 257050 := by
    unfold C
    simp [show (708588 * k + 514100) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 257050) = 177147 * k + 128525 := by
    unfold C
    simp [show (354294 * k + 257050) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 190191) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 190191))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_190279 : ∀ k : Nat,
    iterate (262144 * k + 190279) 29 = 177147 * k + 128585 ∧
      177147 * k + 128585 < 262144 * k + 190279 := by
  intro k
  have h1 : C (262144 * k + 190279) = 786432 * k + 570838 := by
    unfold C
    simp [show (262144 * k + 190279) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 570838) = 393216 * k + 285419 := by
    unfold C
    simp [show (786432 * k + 570838) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 285419) = 1179648 * k + 856258 := by
    unfold C
    simp [show (393216 * k + 285419) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 856258) = 589824 * k + 428129 := by
    unfold C
    simp [show (1179648 * k + 856258) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 428129) = 1769472 * k + 1284388 := by
    unfold C
    simp [show (589824 * k + 428129) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 1284388) = 884736 * k + 642194 := by
    unfold C
    simp [show (1769472 * k + 1284388) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 642194) = 442368 * k + 321097 := by
    unfold C
    simp [show (884736 * k + 642194) % 2 = 0 by omega]
    omega
  have h8 : C (442368 * k + 321097) = 1327104 * k + 963292 := by
    unfold C
    simp [show (442368 * k + 321097) % 2 ≠ 0 by omega]
    omega
  have h9 : C (1327104 * k + 963292) = 663552 * k + 481646 := by
    unfold C
    simp [show (1327104 * k + 963292) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 481646) = 331776 * k + 240823 := by
    unfold C
    simp [show (663552 * k + 481646) % 2 = 0 by omega]
    omega
  have h11 : C (331776 * k + 240823) = 995328 * k + 722470 := by
    unfold C
    simp [show (331776 * k + 240823) % 2 ≠ 0 by omega]
    omega
  have h12 : C (995328 * k + 722470) = 497664 * k + 361235 := by
    unfold C
    simp [show (995328 * k + 722470) % 2 = 0 by omega]
    omega
  have h13 : C (497664 * k + 361235) = 1492992 * k + 1083706 := by
    unfold C
    simp [show (497664 * k + 361235) % 2 ≠ 0 by omega]
    omega
  have h14 : C (1492992 * k + 1083706) = 746496 * k + 541853 := by
    unfold C
    simp [show (1492992 * k + 1083706) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 541853) = 2239488 * k + 1625560 := by
    unfold C
    simp [show (746496 * k + 541853) % 2 ≠ 0 by omega]
    omega
  have h16 : C (2239488 * k + 1625560) = 1119744 * k + 812780 := by
    unfold C
    simp [show (2239488 * k + 1625560) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 812780) = 559872 * k + 406390 := by
    unfold C
    simp [show (1119744 * k + 812780) % 2 = 0 by omega]
    omega
  have h18 : C (559872 * k + 406390) = 279936 * k + 203195 := by
    unfold C
    simp [show (559872 * k + 406390) % 2 = 0 by omega]
    omega
  have h19 : C (279936 * k + 203195) = 839808 * k + 609586 := by
    unfold C
    simp [show (279936 * k + 203195) % 2 ≠ 0 by omega]
    omega
  have h20 : C (839808 * k + 609586) = 419904 * k + 304793 := by
    unfold C
    simp [show (839808 * k + 609586) % 2 = 0 by omega]
    omega
  have h21 : C (419904 * k + 304793) = 1259712 * k + 914380 := by
    unfold C
    simp [show (419904 * k + 304793) % 2 ≠ 0 by omega]
    omega
  have h22 : C (1259712 * k + 914380) = 629856 * k + 457190 := by
    unfold C
    simp [show (1259712 * k + 914380) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 457190) = 314928 * k + 228595 := by
    unfold C
    simp [show (629856 * k + 457190) % 2 = 0 by omega]
    omega
  have h24 : C (314928 * k + 228595) = 944784 * k + 685786 := by
    unfold C
    simp [show (314928 * k + 228595) % 2 ≠ 0 by omega]
    omega
  have h25 : C (944784 * k + 685786) = 472392 * k + 342893 := by
    unfold C
    simp [show (944784 * k + 685786) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 342893) = 1417176 * k + 1028680 := by
    unfold C
    simp [show (472392 * k + 342893) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 1028680) = 708588 * k + 514340 := by
    unfold C
    simp [show (1417176 * k + 1028680) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 514340) = 354294 * k + 257170 := by
    unfold C
    simp [show (708588 * k + 514340) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 257170) = 177147 * k + 128585 := by
    unfold C
    simp [show (354294 * k + 257170) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 190279) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 190279))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_190527 : ∀ k : Nat,
    iterate (262144 * k + 190527) 29 = 177147 * k + 128752 ∧
      177147 * k + 128752 < 262144 * k + 190527 := by
  intro k
  have h1 : C (262144 * k + 190527) = 786432 * k + 571582 := by
    unfold C
    simp [show (262144 * k + 190527) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 571582) = 393216 * k + 285791 := by
    unfold C
    simp [show (786432 * k + 571582) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 285791) = 1179648 * k + 857374 := by
    unfold C
    simp [show (393216 * k + 285791) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 857374) = 589824 * k + 428687 := by
    unfold C
    simp [show (1179648 * k + 857374) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 428687) = 1769472 * k + 1286062 := by
    unfold C
    simp [show (589824 * k + 428687) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 1286062) = 884736 * k + 643031 := by
    unfold C
    simp [show (1769472 * k + 1286062) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 643031) = 2654208 * k + 1929094 := by
    unfold C
    simp [show (884736 * k + 643031) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 1929094) = 1327104 * k + 964547 := by
    unfold C
    simp [show (2654208 * k + 1929094) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 964547) = 3981312 * k + 2893642 := by
    unfold C
    simp [show (1327104 * k + 964547) % 2 ≠ 0 by omega]
    omega
  have h10 : C (3981312 * k + 2893642) = 1990656 * k + 1446821 := by
    unfold C
    simp [show (3981312 * k + 2893642) % 2 = 0 by omega]
    omega
  have h11 : C (1990656 * k + 1446821) = 5971968 * k + 4340464 := by
    unfold C
    simp [show (1990656 * k + 1446821) % 2 ≠ 0 by omega]
    omega
  have h12 : C (5971968 * k + 4340464) = 2985984 * k + 2170232 := by
    unfold C
    simp [show (5971968 * k + 4340464) % 2 = 0 by omega]
    omega
  have h13 : C (2985984 * k + 2170232) = 1492992 * k + 1085116 := by
    unfold C
    simp [show (2985984 * k + 2170232) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 1085116) = 746496 * k + 542558 := by
    unfold C
    simp [show (1492992 * k + 1085116) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 542558) = 373248 * k + 271279 := by
    unfold C
    simp [show (746496 * k + 542558) % 2 = 0 by omega]
    omega
  have h16 : C (373248 * k + 271279) = 1119744 * k + 813838 := by
    unfold C
    simp [show (373248 * k + 271279) % 2 ≠ 0 by omega]
    omega
  have h17 : C (1119744 * k + 813838) = 559872 * k + 406919 := by
    unfold C
    simp [show (1119744 * k + 813838) % 2 = 0 by omega]
    omega
  have h18 : C (559872 * k + 406919) = 1679616 * k + 1220758 := by
    unfold C
    simp [show (559872 * k + 406919) % 2 ≠ 0 by omega]
    omega
  have h19 : C (1679616 * k + 1220758) = 839808 * k + 610379 := by
    unfold C
    simp [show (1679616 * k + 1220758) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 610379) = 2519424 * k + 1831138 := by
    unfold C
    simp [show (839808 * k + 610379) % 2 ≠ 0 by omega]
    omega
  have h21 : C (2519424 * k + 1831138) = 1259712 * k + 915569 := by
    unfold C
    simp [show (2519424 * k + 1831138) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 915569) = 3779136 * k + 2746708 := by
    unfold C
    simp [show (1259712 * k + 915569) % 2 ≠ 0 by omega]
    omega
  have h23 : C (3779136 * k + 2746708) = 1889568 * k + 1373354 := by
    unfold C
    simp [show (3779136 * k + 2746708) % 2 = 0 by omega]
    omega
  have h24 : C (1889568 * k + 1373354) = 944784 * k + 686677 := by
    unfold C
    simp [show (1889568 * k + 1373354) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 686677) = 2834352 * k + 2060032 := by
    unfold C
    simp [show (944784 * k + 686677) % 2 ≠ 0 by omega]
    omega
  have h26 : C (2834352 * k + 2060032) = 1417176 * k + 1030016 := by
    unfold C
    simp [show (2834352 * k + 2060032) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 1030016) = 708588 * k + 515008 := by
    unfold C
    simp [show (1417176 * k + 1030016) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 515008) = 354294 * k + 257504 := by
    unfold C
    simp [show (708588 * k + 515008) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 257504) = 177147 * k + 128752 := by
    unfold C
    simp [show (354294 * k + 257504) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 190527) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 190527))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_190555 : ∀ k : Nat,
    iterate (262144 * k + 190555) 29 = 177147 * k + 128771 ∧
      177147 * k + 128771 < 262144 * k + 190555 := by
  intro k
  have h1 : C (262144 * k + 190555) = 786432 * k + 571666 := by
    unfold C
    simp [show (262144 * k + 190555) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 571666) = 393216 * k + 285833 := by
    unfold C
    simp [show (786432 * k + 571666) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 285833) = 1179648 * k + 857500 := by
    unfold C
    simp [show (393216 * k + 285833) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 857500) = 589824 * k + 428750 := by
    unfold C
    simp [show (1179648 * k + 857500) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 428750) = 294912 * k + 214375 := by
    unfold C
    simp [show (589824 * k + 428750) % 2 = 0 by omega]
    omega
  have h6 : C (294912 * k + 214375) = 884736 * k + 643126 := by
    unfold C
    simp [show (294912 * k + 214375) % 2 ≠ 0 by omega]
    omega
  have h7 : C (884736 * k + 643126) = 442368 * k + 321563 := by
    unfold C
    simp [show (884736 * k + 643126) % 2 = 0 by omega]
    omega
  have h8 : C (442368 * k + 321563) = 1327104 * k + 964690 := by
    unfold C
    simp [show (442368 * k + 321563) % 2 ≠ 0 by omega]
    omega
  have h9 : C (1327104 * k + 964690) = 663552 * k + 482345 := by
    unfold C
    simp [show (1327104 * k + 964690) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 482345) = 1990656 * k + 1447036 := by
    unfold C
    simp [show (663552 * k + 482345) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 1447036) = 995328 * k + 723518 := by
    unfold C
    simp [show (1990656 * k + 1447036) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 723518) = 497664 * k + 361759 := by
    unfold C
    simp [show (995328 * k + 723518) % 2 = 0 by omega]
    omega
  have h13 : C (497664 * k + 361759) = 1492992 * k + 1085278 := by
    unfold C
    simp [show (497664 * k + 361759) % 2 ≠ 0 by omega]
    omega
  have h14 : C (1492992 * k + 1085278) = 746496 * k + 542639 := by
    unfold C
    simp [show (1492992 * k + 1085278) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 542639) = 2239488 * k + 1627918 := by
    unfold C
    simp [show (746496 * k + 542639) % 2 ≠ 0 by omega]
    omega
  have h16 : C (2239488 * k + 1627918) = 1119744 * k + 813959 := by
    unfold C
    simp [show (2239488 * k + 1627918) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 813959) = 3359232 * k + 2441878 := by
    unfold C
    simp [show (1119744 * k + 813959) % 2 ≠ 0 by omega]
    omega
  have h18 : C (3359232 * k + 2441878) = 1679616 * k + 1220939 := by
    unfold C
    simp [show (3359232 * k + 2441878) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 1220939) = 5038848 * k + 3662818 := by
    unfold C
    simp [show (1679616 * k + 1220939) % 2 ≠ 0 by omega]
    omega
  have h20 : C (5038848 * k + 3662818) = 2519424 * k + 1831409 := by
    unfold C
    simp [show (5038848 * k + 3662818) % 2 = 0 by omega]
    omega
  have h21 : C (2519424 * k + 1831409) = 7558272 * k + 5494228 := by
    unfold C
    simp [show (2519424 * k + 1831409) % 2 ≠ 0 by omega]
    omega
  have h22 : C (7558272 * k + 5494228) = 3779136 * k + 2747114 := by
    unfold C
    simp [show (7558272 * k + 5494228) % 2 = 0 by omega]
    omega
  have h23 : C (3779136 * k + 2747114) = 1889568 * k + 1373557 := by
    unfold C
    simp [show (3779136 * k + 2747114) % 2 = 0 by omega]
    omega
  have h24 : C (1889568 * k + 1373557) = 5668704 * k + 4120672 := by
    unfold C
    simp [show (1889568 * k + 1373557) % 2 ≠ 0 by omega]
    omega
  have h25 : C (5668704 * k + 4120672) = 2834352 * k + 2060336 := by
    unfold C
    simp [show (5668704 * k + 4120672) % 2 = 0 by omega]
    omega
  have h26 : C (2834352 * k + 2060336) = 1417176 * k + 1030168 := by
    unfold C
    simp [show (2834352 * k + 2060336) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 1030168) = 708588 * k + 515084 := by
    unfold C
    simp [show (1417176 * k + 1030168) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 515084) = 354294 * k + 257542 := by
    unfold C
    simp [show (708588 * k + 515084) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 257542) = 177147 * k + 128771 := by
    unfold C
    simp [show (354294 * k + 257542) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 190555) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 190555))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_190567 : ∀ k : Nat,
    iterate (262144 * k + 190567) 29 = 177147 * k + 128779 ∧
      177147 * k + 128779 < 262144 * k + 190567 := by
  intro k
  have h1 : C (262144 * k + 190567) = 786432 * k + 571702 := by
    unfold C
    simp [show (262144 * k + 190567) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 571702) = 393216 * k + 285851 := by
    unfold C
    simp [show (786432 * k + 571702) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 285851) = 1179648 * k + 857554 := by
    unfold C
    simp [show (393216 * k + 285851) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 857554) = 589824 * k + 428777 := by
    unfold C
    simp [show (1179648 * k + 857554) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 428777) = 1769472 * k + 1286332 := by
    unfold C
    simp [show (589824 * k + 428777) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 1286332) = 884736 * k + 643166 := by
    unfold C
    simp [show (1769472 * k + 1286332) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 643166) = 442368 * k + 321583 := by
    unfold C
    simp [show (884736 * k + 643166) % 2 = 0 by omega]
    omega
  have h8 : C (442368 * k + 321583) = 1327104 * k + 964750 := by
    unfold C
    simp [show (442368 * k + 321583) % 2 ≠ 0 by omega]
    omega
  have h9 : C (1327104 * k + 964750) = 663552 * k + 482375 := by
    unfold C
    simp [show (1327104 * k + 964750) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 482375) = 1990656 * k + 1447126 := by
    unfold C
    simp [show (663552 * k + 482375) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 1447126) = 995328 * k + 723563 := by
    unfold C
    simp [show (1990656 * k + 1447126) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 723563) = 2985984 * k + 2170690 := by
    unfold C
    simp [show (995328 * k + 723563) % 2 ≠ 0 by omega]
    omega
  have h13 : C (2985984 * k + 2170690) = 1492992 * k + 1085345 := by
    unfold C
    simp [show (2985984 * k + 2170690) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 1085345) = 4478976 * k + 3256036 := by
    unfold C
    simp [show (1492992 * k + 1085345) % 2 ≠ 0 by omega]
    omega
  have h15 : C (4478976 * k + 3256036) = 2239488 * k + 1628018 := by
    unfold C
    simp [show (4478976 * k + 3256036) % 2 = 0 by omega]
    omega
  have h16 : C (2239488 * k + 1628018) = 1119744 * k + 814009 := by
    unfold C
    simp [show (2239488 * k + 1628018) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 814009) = 3359232 * k + 2442028 := by
    unfold C
    simp [show (1119744 * k + 814009) % 2 ≠ 0 by omega]
    omega
  have h18 : C (3359232 * k + 2442028) = 1679616 * k + 1221014 := by
    unfold C
    simp [show (3359232 * k + 2442028) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 1221014) = 839808 * k + 610507 := by
    unfold C
    simp [show (1679616 * k + 1221014) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 610507) = 2519424 * k + 1831522 := by
    unfold C
    simp [show (839808 * k + 610507) % 2 ≠ 0 by omega]
    omega
  have h21 : C (2519424 * k + 1831522) = 1259712 * k + 915761 := by
    unfold C
    simp [show (2519424 * k + 1831522) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 915761) = 3779136 * k + 2747284 := by
    unfold C
    simp [show (1259712 * k + 915761) % 2 ≠ 0 by omega]
    omega
  have h23 : C (3779136 * k + 2747284) = 1889568 * k + 1373642 := by
    unfold C
    simp [show (3779136 * k + 2747284) % 2 = 0 by omega]
    omega
  have h24 : C (1889568 * k + 1373642) = 944784 * k + 686821 := by
    unfold C
    simp [show (1889568 * k + 1373642) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 686821) = 2834352 * k + 2060464 := by
    unfold C
    simp [show (944784 * k + 686821) % 2 ≠ 0 by omega]
    omega
  have h26 : C (2834352 * k + 2060464) = 1417176 * k + 1030232 := by
    unfold C
    simp [show (2834352 * k + 2060464) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 1030232) = 708588 * k + 515116 := by
    unfold C
    simp [show (1417176 * k + 1030232) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 515116) = 354294 * k + 257558 := by
    unfold C
    simp [show (708588 * k + 515116) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 257558) = 177147 * k + 128779 := by
    unfold C
    simp [show (354294 * k + 257558) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 190567) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 190567))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_190591 : ∀ k : Nat,
    iterate (262144 * k + 190591) 29 = 177147 * k + 128795 ∧
      177147 * k + 128795 < 262144 * k + 190591 := by
  intro k
  have h1 : C (262144 * k + 190591) = 786432 * k + 571774 := by
    unfold C
    simp [show (262144 * k + 190591) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 571774) = 393216 * k + 285887 := by
    unfold C
    simp [show (786432 * k + 571774) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 285887) = 1179648 * k + 857662 := by
    unfold C
    simp [show (393216 * k + 285887) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 857662) = 589824 * k + 428831 := by
    unfold C
    simp [show (1179648 * k + 857662) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 428831) = 1769472 * k + 1286494 := by
    unfold C
    simp [show (589824 * k + 428831) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 1286494) = 884736 * k + 643247 := by
    unfold C
    simp [show (1769472 * k + 1286494) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 643247) = 2654208 * k + 1929742 := by
    unfold C
    simp [show (884736 * k + 643247) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 1929742) = 1327104 * k + 964871 := by
    unfold C
    simp [show (2654208 * k + 1929742) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 964871) = 3981312 * k + 2894614 := by
    unfold C
    simp [show (1327104 * k + 964871) % 2 ≠ 0 by omega]
    omega
  have h10 : C (3981312 * k + 2894614) = 1990656 * k + 1447307 := by
    unfold C
    simp [show (3981312 * k + 2894614) % 2 = 0 by omega]
    omega
  have h11 : C (1990656 * k + 1447307) = 5971968 * k + 4341922 := by
    unfold C
    simp [show (1990656 * k + 1447307) % 2 ≠ 0 by omega]
    omega
  have h12 : C (5971968 * k + 4341922) = 2985984 * k + 2170961 := by
    unfold C
    simp [show (5971968 * k + 4341922) % 2 = 0 by omega]
    omega
  have h13 : C (2985984 * k + 2170961) = 8957952 * k + 6512884 := by
    unfold C
    simp [show (2985984 * k + 2170961) % 2 ≠ 0 by omega]
    omega
  have h14 : C (8957952 * k + 6512884) = 4478976 * k + 3256442 := by
    unfold C
    simp [show (8957952 * k + 6512884) % 2 = 0 by omega]
    omega
  have h15 : C (4478976 * k + 3256442) = 2239488 * k + 1628221 := by
    unfold C
    simp [show (4478976 * k + 3256442) % 2 = 0 by omega]
    omega
  have h16 : C (2239488 * k + 1628221) = 6718464 * k + 4884664 := by
    unfold C
    simp [show (2239488 * k + 1628221) % 2 ≠ 0 by omega]
    omega
  have h17 : C (6718464 * k + 4884664) = 3359232 * k + 2442332 := by
    unfold C
    simp [show (6718464 * k + 4884664) % 2 = 0 by omega]
    omega
  have h18 : C (3359232 * k + 2442332) = 1679616 * k + 1221166 := by
    unfold C
    simp [show (3359232 * k + 2442332) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 1221166) = 839808 * k + 610583 := by
    unfold C
    simp [show (1679616 * k + 1221166) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 610583) = 2519424 * k + 1831750 := by
    unfold C
    simp [show (839808 * k + 610583) % 2 ≠ 0 by omega]
    omega
  have h21 : C (2519424 * k + 1831750) = 1259712 * k + 915875 := by
    unfold C
    simp [show (2519424 * k + 1831750) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 915875) = 3779136 * k + 2747626 := by
    unfold C
    simp [show (1259712 * k + 915875) % 2 ≠ 0 by omega]
    omega
  have h23 : C (3779136 * k + 2747626) = 1889568 * k + 1373813 := by
    unfold C
    simp [show (3779136 * k + 2747626) % 2 = 0 by omega]
    omega
  have h24 : C (1889568 * k + 1373813) = 5668704 * k + 4121440 := by
    unfold C
    simp [show (1889568 * k + 1373813) % 2 ≠ 0 by omega]
    omega
  have h25 : C (5668704 * k + 4121440) = 2834352 * k + 2060720 := by
    unfold C
    simp [show (5668704 * k + 4121440) % 2 = 0 by omega]
    omega
  have h26 : C (2834352 * k + 2060720) = 1417176 * k + 1030360 := by
    unfold C
    simp [show (2834352 * k + 2060720) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 1030360) = 708588 * k + 515180 := by
    unfold C
    simp [show (1417176 * k + 1030360) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 515180) = 354294 * k + 257590 := by
    unfold C
    simp [show (708588 * k + 515180) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 257590) = 177147 * k + 128795 := by
    unfold C
    simp [show (354294 * k + 257590) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 190591) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 190591))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_190879 : ∀ k : Nat,
    iterate (262144 * k + 190879) 29 = 177147 * k + 128990 ∧
      177147 * k + 128990 < 262144 * k + 190879 := by
  intro k
  have h1 : C (262144 * k + 190879) = 786432 * k + 572638 := by
    unfold C
    simp [show (262144 * k + 190879) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 572638) = 393216 * k + 286319 := by
    unfold C
    simp [show (786432 * k + 572638) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 286319) = 1179648 * k + 858958 := by
    unfold C
    simp [show (393216 * k + 286319) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 858958) = 589824 * k + 429479 := by
    unfold C
    simp [show (1179648 * k + 858958) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 429479) = 1769472 * k + 1288438 := by
    unfold C
    simp [show (589824 * k + 429479) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 1288438) = 884736 * k + 644219 := by
    unfold C
    simp [show (1769472 * k + 1288438) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 644219) = 2654208 * k + 1932658 := by
    unfold C
    simp [show (884736 * k + 644219) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 1932658) = 1327104 * k + 966329 := by
    unfold C
    simp [show (2654208 * k + 1932658) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 966329) = 3981312 * k + 2898988 := by
    unfold C
    simp [show (1327104 * k + 966329) % 2 ≠ 0 by omega]
    omega
  have h10 : C (3981312 * k + 2898988) = 1990656 * k + 1449494 := by
    unfold C
    simp [show (3981312 * k + 2898988) % 2 = 0 by omega]
    omega
  have h11 : C (1990656 * k + 1449494) = 995328 * k + 724747 := by
    unfold C
    simp [show (1990656 * k + 1449494) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 724747) = 2985984 * k + 2174242 := by
    unfold C
    simp [show (995328 * k + 724747) % 2 ≠ 0 by omega]
    omega
  have h13 : C (2985984 * k + 2174242) = 1492992 * k + 1087121 := by
    unfold C
    simp [show (2985984 * k + 2174242) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 1087121) = 4478976 * k + 3261364 := by
    unfold C
    simp [show (1492992 * k + 1087121) % 2 ≠ 0 by omega]
    omega
  have h15 : C (4478976 * k + 3261364) = 2239488 * k + 1630682 := by
    unfold C
    simp [show (4478976 * k + 3261364) % 2 = 0 by omega]
    omega
  have h16 : C (2239488 * k + 1630682) = 1119744 * k + 815341 := by
    unfold C
    simp [show (2239488 * k + 1630682) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 815341) = 3359232 * k + 2446024 := by
    unfold C
    simp [show (1119744 * k + 815341) % 2 ≠ 0 by omega]
    omega
  have h18 : C (3359232 * k + 2446024) = 1679616 * k + 1223012 := by
    unfold C
    simp [show (3359232 * k + 2446024) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 1223012) = 839808 * k + 611506 := by
    unfold C
    simp [show (1679616 * k + 1223012) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 611506) = 419904 * k + 305753 := by
    unfold C
    simp [show (839808 * k + 611506) % 2 = 0 by omega]
    omega
  have h21 : C (419904 * k + 305753) = 1259712 * k + 917260 := by
    unfold C
    simp [show (419904 * k + 305753) % 2 ≠ 0 by omega]
    omega
  have h22 : C (1259712 * k + 917260) = 629856 * k + 458630 := by
    unfold C
    simp [show (1259712 * k + 917260) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 458630) = 314928 * k + 229315 := by
    unfold C
    simp [show (629856 * k + 458630) % 2 = 0 by omega]
    omega
  have h24 : C (314928 * k + 229315) = 944784 * k + 687946 := by
    unfold C
    simp [show (314928 * k + 229315) % 2 ≠ 0 by omega]
    omega
  have h25 : C (944784 * k + 687946) = 472392 * k + 343973 := by
    unfold C
    simp [show (944784 * k + 687946) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 343973) = 1417176 * k + 1031920 := by
    unfold C
    simp [show (472392 * k + 343973) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 1031920) = 708588 * k + 515960 := by
    unfold C
    simp [show (1417176 * k + 1031920) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 515960) = 354294 * k + 257980 := by
    unfold C
    simp [show (708588 * k + 515960) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 257980) = 177147 * k + 128990 := by
    unfold C
    simp [show (354294 * k + 257980) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 190879) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 190879))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_190959 : ∀ k : Nat,
    iterate (262144 * k + 190959) 29 = 177147 * k + 129044 ∧
      177147 * k + 129044 < 262144 * k + 190959 := by
  intro k
  have h1 : C (262144 * k + 190959) = 786432 * k + 572878 := by
    unfold C
    simp [show (262144 * k + 190959) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 572878) = 393216 * k + 286439 := by
    unfold C
    simp [show (786432 * k + 572878) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 286439) = 1179648 * k + 859318 := by
    unfold C
    simp [show (393216 * k + 286439) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 859318) = 589824 * k + 429659 := by
    unfold C
    simp [show (1179648 * k + 859318) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 429659) = 1769472 * k + 1288978 := by
    unfold C
    simp [show (589824 * k + 429659) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 1288978) = 884736 * k + 644489 := by
    unfold C
    simp [show (1769472 * k + 1288978) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 644489) = 2654208 * k + 1933468 := by
    unfold C
    simp [show (884736 * k + 644489) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 1933468) = 1327104 * k + 966734 := by
    unfold C
    simp [show (2654208 * k + 1933468) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 966734) = 663552 * k + 483367 := by
    unfold C
    simp [show (1327104 * k + 966734) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 483367) = 1990656 * k + 1450102 := by
    unfold C
    simp [show (663552 * k + 483367) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 1450102) = 995328 * k + 725051 := by
    unfold C
    simp [show (1990656 * k + 1450102) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 725051) = 2985984 * k + 2175154 := by
    unfold C
    simp [show (995328 * k + 725051) % 2 ≠ 0 by omega]
    omega
  have h13 : C (2985984 * k + 2175154) = 1492992 * k + 1087577 := by
    unfold C
    simp [show (2985984 * k + 2175154) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 1087577) = 4478976 * k + 3262732 := by
    unfold C
    simp [show (1492992 * k + 1087577) % 2 ≠ 0 by omega]
    omega
  have h15 : C (4478976 * k + 3262732) = 2239488 * k + 1631366 := by
    unfold C
    simp [show (4478976 * k + 3262732) % 2 = 0 by omega]
    omega
  have h16 : C (2239488 * k + 1631366) = 1119744 * k + 815683 := by
    unfold C
    simp [show (2239488 * k + 1631366) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 815683) = 3359232 * k + 2447050 := by
    unfold C
    simp [show (1119744 * k + 815683) % 2 ≠ 0 by omega]
    omega
  have h18 : C (3359232 * k + 2447050) = 1679616 * k + 1223525 := by
    unfold C
    simp [show (3359232 * k + 2447050) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 1223525) = 5038848 * k + 3670576 := by
    unfold C
    simp [show (1679616 * k + 1223525) % 2 ≠ 0 by omega]
    omega
  have h20 : C (5038848 * k + 3670576) = 2519424 * k + 1835288 := by
    unfold C
    simp [show (5038848 * k + 3670576) % 2 = 0 by omega]
    omega
  have h21 : C (2519424 * k + 1835288) = 1259712 * k + 917644 := by
    unfold C
    simp [show (2519424 * k + 1835288) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 917644) = 629856 * k + 458822 := by
    unfold C
    simp [show (1259712 * k + 917644) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 458822) = 314928 * k + 229411 := by
    unfold C
    simp [show (629856 * k + 458822) % 2 = 0 by omega]
    omega
  have h24 : C (314928 * k + 229411) = 944784 * k + 688234 := by
    unfold C
    simp [show (314928 * k + 229411) % 2 ≠ 0 by omega]
    omega
  have h25 : C (944784 * k + 688234) = 472392 * k + 344117 := by
    unfold C
    simp [show (944784 * k + 688234) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 344117) = 1417176 * k + 1032352 := by
    unfold C
    simp [show (472392 * k + 344117) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 1032352) = 708588 * k + 516176 := by
    unfold C
    simp [show (1417176 * k + 1032352) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 516176) = 354294 * k + 258088 := by
    unfold C
    simp [show (708588 * k + 516176) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 258088) = 177147 * k + 129044 := by
    unfold C
    simp [show (354294 * k + 258088) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 190959) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 190959))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_192991 : ∀ k : Nat,
    iterate (262144 * k + 192991) 29 = 177147 * k + 130417 ∧
      177147 * k + 130417 < 262144 * k + 192991 := by
  intro k
  have h1 : C (262144 * k + 192991) = 786432 * k + 578974 := by
    unfold C
    simp [show (262144 * k + 192991) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 578974) = 393216 * k + 289487 := by
    unfold C
    simp [show (786432 * k + 578974) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 289487) = 1179648 * k + 868462 := by
    unfold C
    simp [show (393216 * k + 289487) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 868462) = 589824 * k + 434231 := by
    unfold C
    simp [show (1179648 * k + 868462) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 434231) = 1769472 * k + 1302694 := by
    unfold C
    simp [show (589824 * k + 434231) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 1302694) = 884736 * k + 651347 := by
    unfold C
    simp [show (1769472 * k + 1302694) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 651347) = 2654208 * k + 1954042 := by
    unfold C
    simp [show (884736 * k + 651347) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 1954042) = 1327104 * k + 977021 := by
    unfold C
    simp [show (2654208 * k + 1954042) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 977021) = 3981312 * k + 2931064 := by
    unfold C
    simp [show (1327104 * k + 977021) % 2 ≠ 0 by omega]
    omega
  have h10 : C (3981312 * k + 2931064) = 1990656 * k + 1465532 := by
    unfold C
    simp [show (3981312 * k + 2931064) % 2 = 0 by omega]
    omega
  have h11 : C (1990656 * k + 1465532) = 995328 * k + 732766 := by
    unfold C
    simp [show (1990656 * k + 1465532) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 732766) = 497664 * k + 366383 := by
    unfold C
    simp [show (995328 * k + 732766) % 2 = 0 by omega]
    omega
  have h13 : C (497664 * k + 366383) = 1492992 * k + 1099150 := by
    unfold C
    simp [show (497664 * k + 366383) % 2 ≠ 0 by omega]
    omega
  have h14 : C (1492992 * k + 1099150) = 746496 * k + 549575 := by
    unfold C
    simp [show (1492992 * k + 1099150) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 549575) = 2239488 * k + 1648726 := by
    unfold C
    simp [show (746496 * k + 549575) % 2 ≠ 0 by omega]
    omega
  have h16 : C (2239488 * k + 1648726) = 1119744 * k + 824363 := by
    unfold C
    simp [show (2239488 * k + 1648726) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 824363) = 3359232 * k + 2473090 := by
    unfold C
    simp [show (1119744 * k + 824363) % 2 ≠ 0 by omega]
    omega
  have h18 : C (3359232 * k + 2473090) = 1679616 * k + 1236545 := by
    unfold C
    simp [show (3359232 * k + 2473090) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 1236545) = 5038848 * k + 3709636 := by
    unfold C
    simp [show (1679616 * k + 1236545) % 2 ≠ 0 by omega]
    omega
  have h20 : C (5038848 * k + 3709636) = 2519424 * k + 1854818 := by
    unfold C
    simp [show (5038848 * k + 3709636) % 2 = 0 by omega]
    omega
  have h21 : C (2519424 * k + 1854818) = 1259712 * k + 927409 := by
    unfold C
    simp [show (2519424 * k + 1854818) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 927409) = 3779136 * k + 2782228 := by
    unfold C
    simp [show (1259712 * k + 927409) % 2 ≠ 0 by omega]
    omega
  have h23 : C (3779136 * k + 2782228) = 1889568 * k + 1391114 := by
    unfold C
    simp [show (3779136 * k + 2782228) % 2 = 0 by omega]
    omega
  have h24 : C (1889568 * k + 1391114) = 944784 * k + 695557 := by
    unfold C
    simp [show (1889568 * k + 1391114) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 695557) = 2834352 * k + 2086672 := by
    unfold C
    simp [show (944784 * k + 695557) % 2 ≠ 0 by omega]
    omega
  have h26 : C (2834352 * k + 2086672) = 1417176 * k + 1043336 := by
    unfold C
    simp [show (2834352 * k + 2086672) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 1043336) = 708588 * k + 521668 := by
    unfold C
    simp [show (1417176 * k + 1043336) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 521668) = 354294 * k + 260834 := by
    unfold C
    simp [show (708588 * k + 521668) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 260834) = 177147 * k + 130417 := by
    unfold C
    simp [show (354294 * k + 260834) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 192991) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 192991))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_193627 : ∀ k : Nat,
    iterate (262144 * k + 193627) 29 = 177147 * k + 130847 ∧
      177147 * k + 130847 < 262144 * k + 193627 := by
  intro k
  have h1 : C (262144 * k + 193627) = 786432 * k + 580882 := by
    unfold C
    simp [show (262144 * k + 193627) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 580882) = 393216 * k + 290441 := by
    unfold C
    simp [show (786432 * k + 580882) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 290441) = 1179648 * k + 871324 := by
    unfold C
    simp [show (393216 * k + 290441) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 871324) = 589824 * k + 435662 := by
    unfold C
    simp [show (1179648 * k + 871324) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 435662) = 294912 * k + 217831 := by
    unfold C
    simp [show (589824 * k + 435662) % 2 = 0 by omega]
    omega
  have h6 : C (294912 * k + 217831) = 884736 * k + 653494 := by
    unfold C
    simp [show (294912 * k + 217831) % 2 ≠ 0 by omega]
    omega
  have h7 : C (884736 * k + 653494) = 442368 * k + 326747 := by
    unfold C
    simp [show (884736 * k + 653494) % 2 = 0 by omega]
    omega
  have h8 : C (442368 * k + 326747) = 1327104 * k + 980242 := by
    unfold C
    simp [show (442368 * k + 326747) % 2 ≠ 0 by omega]
    omega
  have h9 : C (1327104 * k + 980242) = 663552 * k + 490121 := by
    unfold C
    simp [show (1327104 * k + 980242) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 490121) = 1990656 * k + 1470364 := by
    unfold C
    simp [show (663552 * k + 490121) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 1470364) = 995328 * k + 735182 := by
    unfold C
    simp [show (1990656 * k + 1470364) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 735182) = 497664 * k + 367591 := by
    unfold C
    simp [show (995328 * k + 735182) % 2 = 0 by omega]
    omega
  have h13 : C (497664 * k + 367591) = 1492992 * k + 1102774 := by
    unfold C
    simp [show (497664 * k + 367591) % 2 ≠ 0 by omega]
    omega
  have h14 : C (1492992 * k + 1102774) = 746496 * k + 551387 := by
    unfold C
    simp [show (1492992 * k + 1102774) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 551387) = 2239488 * k + 1654162 := by
    unfold C
    simp [show (746496 * k + 551387) % 2 ≠ 0 by omega]
    omega
  have h16 : C (2239488 * k + 1654162) = 1119744 * k + 827081 := by
    unfold C
    simp [show (2239488 * k + 1654162) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 827081) = 3359232 * k + 2481244 := by
    unfold C
    simp [show (1119744 * k + 827081) % 2 ≠ 0 by omega]
    omega
  have h18 : C (3359232 * k + 2481244) = 1679616 * k + 1240622 := by
    unfold C
    simp [show (3359232 * k + 2481244) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 1240622) = 839808 * k + 620311 := by
    unfold C
    simp [show (1679616 * k + 1240622) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 620311) = 2519424 * k + 1860934 := by
    unfold C
    simp [show (839808 * k + 620311) % 2 ≠ 0 by omega]
    omega
  have h21 : C (2519424 * k + 1860934) = 1259712 * k + 930467 := by
    unfold C
    simp [show (2519424 * k + 1860934) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 930467) = 3779136 * k + 2791402 := by
    unfold C
    simp [show (1259712 * k + 930467) % 2 ≠ 0 by omega]
    omega
  have h23 : C (3779136 * k + 2791402) = 1889568 * k + 1395701 := by
    unfold C
    simp [show (3779136 * k + 2791402) % 2 = 0 by omega]
    omega
  have h24 : C (1889568 * k + 1395701) = 5668704 * k + 4187104 := by
    unfold C
    simp [show (1889568 * k + 1395701) % 2 ≠ 0 by omega]
    omega
  have h25 : C (5668704 * k + 4187104) = 2834352 * k + 2093552 := by
    unfold C
    simp [show (5668704 * k + 4187104) % 2 = 0 by omega]
    omega
  have h26 : C (2834352 * k + 2093552) = 1417176 * k + 1046776 := by
    unfold C
    simp [show (2834352 * k + 2093552) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 1046776) = 708588 * k + 523388 := by
    unfold C
    simp [show (1417176 * k + 1046776) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 523388) = 354294 * k + 261694 := by
    unfold C
    simp [show (708588 * k + 523388) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 261694) = 177147 * k + 130847 := by
    unfold C
    simp [show (354294 * k + 261694) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 193627) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 193627))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_193663 : ∀ k : Nat,
    iterate (262144 * k + 193663) 29 = 177147 * k + 130871 ∧
      177147 * k + 130871 < 262144 * k + 193663 := by
  intro k
  have h1 : C (262144 * k + 193663) = 786432 * k + 580990 := by
    unfold C
    simp [show (262144 * k + 193663) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 580990) = 393216 * k + 290495 := by
    unfold C
    simp [show (786432 * k + 580990) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 290495) = 1179648 * k + 871486 := by
    unfold C
    simp [show (393216 * k + 290495) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 871486) = 589824 * k + 435743 := by
    unfold C
    simp [show (1179648 * k + 871486) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 435743) = 1769472 * k + 1307230 := by
    unfold C
    simp [show (589824 * k + 435743) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 1307230) = 884736 * k + 653615 := by
    unfold C
    simp [show (1769472 * k + 1307230) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 653615) = 2654208 * k + 1960846 := by
    unfold C
    simp [show (884736 * k + 653615) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 1960846) = 1327104 * k + 980423 := by
    unfold C
    simp [show (2654208 * k + 1960846) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 980423) = 3981312 * k + 2941270 := by
    unfold C
    simp [show (1327104 * k + 980423) % 2 ≠ 0 by omega]
    omega
  have h10 : C (3981312 * k + 2941270) = 1990656 * k + 1470635 := by
    unfold C
    simp [show (3981312 * k + 2941270) % 2 = 0 by omega]
    omega
  have h11 : C (1990656 * k + 1470635) = 5971968 * k + 4411906 := by
    unfold C
    simp [show (1990656 * k + 1470635) % 2 ≠ 0 by omega]
    omega
  have h12 : C (5971968 * k + 4411906) = 2985984 * k + 2205953 := by
    unfold C
    simp [show (5971968 * k + 4411906) % 2 = 0 by omega]
    omega
  have h13 : C (2985984 * k + 2205953) = 8957952 * k + 6617860 := by
    unfold C
    simp [show (2985984 * k + 2205953) % 2 ≠ 0 by omega]
    omega
  have h14 : C (8957952 * k + 6617860) = 4478976 * k + 3308930 := by
    unfold C
    simp [show (8957952 * k + 6617860) % 2 = 0 by omega]
    omega
  have h15 : C (4478976 * k + 3308930) = 2239488 * k + 1654465 := by
    unfold C
    simp [show (4478976 * k + 3308930) % 2 = 0 by omega]
    omega
  have h16 : C (2239488 * k + 1654465) = 6718464 * k + 4963396 := by
    unfold C
    simp [show (2239488 * k + 1654465) % 2 ≠ 0 by omega]
    omega
  have h17 : C (6718464 * k + 4963396) = 3359232 * k + 2481698 := by
    unfold C
    simp [show (6718464 * k + 4963396) % 2 = 0 by omega]
    omega
  have h18 : C (3359232 * k + 2481698) = 1679616 * k + 1240849 := by
    unfold C
    simp [show (3359232 * k + 2481698) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 1240849) = 5038848 * k + 3722548 := by
    unfold C
    simp [show (1679616 * k + 1240849) % 2 ≠ 0 by omega]
    omega
  have h20 : C (5038848 * k + 3722548) = 2519424 * k + 1861274 := by
    unfold C
    simp [show (5038848 * k + 3722548) % 2 = 0 by omega]
    omega
  have h21 : C (2519424 * k + 1861274) = 1259712 * k + 930637 := by
    unfold C
    simp [show (2519424 * k + 1861274) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 930637) = 3779136 * k + 2791912 := by
    unfold C
    simp [show (1259712 * k + 930637) % 2 ≠ 0 by omega]
    omega
  have h23 : C (3779136 * k + 2791912) = 1889568 * k + 1395956 := by
    unfold C
    simp [show (3779136 * k + 2791912) % 2 = 0 by omega]
    omega
  have h24 : C (1889568 * k + 1395956) = 944784 * k + 697978 := by
    unfold C
    simp [show (1889568 * k + 1395956) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 697978) = 472392 * k + 348989 := by
    unfold C
    simp [show (944784 * k + 697978) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 348989) = 1417176 * k + 1046968 := by
    unfold C
    simp [show (472392 * k + 348989) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 1046968) = 708588 * k + 523484 := by
    unfold C
    simp [show (1417176 * k + 1046968) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 523484) = 354294 * k + 261742 := by
    unfold C
    simp [show (708588 * k + 523484) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 261742) = 177147 * k + 130871 := by
    unfold C
    simp [show (354294 * k + 261742) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 193663) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 193663))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_194075 : ∀ k : Nat,
    iterate (262144 * k + 194075) 29 = 177147 * k + 131150 ∧
      177147 * k + 131150 < 262144 * k + 194075 := by
  intro k
  have h1 : C (262144 * k + 194075) = 786432 * k + 582226 := by
    unfold C
    simp [show (262144 * k + 194075) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 582226) = 393216 * k + 291113 := by
    unfold C
    simp [show (786432 * k + 582226) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 291113) = 1179648 * k + 873340 := by
    unfold C
    simp [show (393216 * k + 291113) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 873340) = 589824 * k + 436670 := by
    unfold C
    simp [show (1179648 * k + 873340) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 436670) = 294912 * k + 218335 := by
    unfold C
    simp [show (589824 * k + 436670) % 2 = 0 by omega]
    omega
  have h6 : C (294912 * k + 218335) = 884736 * k + 655006 := by
    unfold C
    simp [show (294912 * k + 218335) % 2 ≠ 0 by omega]
    omega
  have h7 : C (884736 * k + 655006) = 442368 * k + 327503 := by
    unfold C
    simp [show (884736 * k + 655006) % 2 = 0 by omega]
    omega
  have h8 : C (442368 * k + 327503) = 1327104 * k + 982510 := by
    unfold C
    simp [show (442368 * k + 327503) % 2 ≠ 0 by omega]
    omega
  have h9 : C (1327104 * k + 982510) = 663552 * k + 491255 := by
    unfold C
    simp [show (1327104 * k + 982510) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 491255) = 1990656 * k + 1473766 := by
    unfold C
    simp [show (663552 * k + 491255) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 1473766) = 995328 * k + 736883 := by
    unfold C
    simp [show (1990656 * k + 1473766) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 736883) = 2985984 * k + 2210650 := by
    unfold C
    simp [show (995328 * k + 736883) % 2 ≠ 0 by omega]
    omega
  have h13 : C (2985984 * k + 2210650) = 1492992 * k + 1105325 := by
    unfold C
    simp [show (2985984 * k + 2210650) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 1105325) = 4478976 * k + 3315976 := by
    unfold C
    simp [show (1492992 * k + 1105325) % 2 ≠ 0 by omega]
    omega
  have h15 : C (4478976 * k + 3315976) = 2239488 * k + 1657988 := by
    unfold C
    simp [show (4478976 * k + 3315976) % 2 = 0 by omega]
    omega
  have h16 : C (2239488 * k + 1657988) = 1119744 * k + 828994 := by
    unfold C
    simp [show (2239488 * k + 1657988) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 828994) = 559872 * k + 414497 := by
    unfold C
    simp [show (1119744 * k + 828994) % 2 = 0 by omega]
    omega
  have h18 : C (559872 * k + 414497) = 1679616 * k + 1243492 := by
    unfold C
    simp [show (559872 * k + 414497) % 2 ≠ 0 by omega]
    omega
  have h19 : C (1679616 * k + 1243492) = 839808 * k + 621746 := by
    unfold C
    simp [show (1679616 * k + 1243492) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 621746) = 419904 * k + 310873 := by
    unfold C
    simp [show (839808 * k + 621746) % 2 = 0 by omega]
    omega
  have h21 : C (419904 * k + 310873) = 1259712 * k + 932620 := by
    unfold C
    simp [show (419904 * k + 310873) % 2 ≠ 0 by omega]
    omega
  have h22 : C (1259712 * k + 932620) = 629856 * k + 466310 := by
    unfold C
    simp [show (1259712 * k + 932620) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 466310) = 314928 * k + 233155 := by
    unfold C
    simp [show (629856 * k + 466310) % 2 = 0 by omega]
    omega
  have h24 : C (314928 * k + 233155) = 944784 * k + 699466 := by
    unfold C
    simp [show (314928 * k + 233155) % 2 ≠ 0 by omega]
    omega
  have h25 : C (944784 * k + 699466) = 472392 * k + 349733 := by
    unfold C
    simp [show (944784 * k + 699466) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 349733) = 1417176 * k + 1049200 := by
    unfold C
    simp [show (472392 * k + 349733) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 1049200) = 708588 * k + 524600 := by
    unfold C
    simp [show (1417176 * k + 1049200) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 524600) = 354294 * k + 262300 := by
    unfold C
    simp [show (708588 * k + 524600) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 262300) = 177147 * k + 131150 := by
    unfold C
    simp [show (354294 * k + 262300) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 194075) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 194075))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_194687 : ∀ k : Nat,
    iterate (262144 * k + 194687) 29 = 177147 * k + 131563 ∧
      177147 * k + 131563 < 262144 * k + 194687 := by
  intro k
  have h1 : C (262144 * k + 194687) = 786432 * k + 584062 := by
    unfold C
    simp [show (262144 * k + 194687) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 584062) = 393216 * k + 292031 := by
    unfold C
    simp [show (786432 * k + 584062) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 292031) = 1179648 * k + 876094 := by
    unfold C
    simp [show (393216 * k + 292031) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 876094) = 589824 * k + 438047 := by
    unfold C
    simp [show (1179648 * k + 876094) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 438047) = 1769472 * k + 1314142 := by
    unfold C
    simp [show (589824 * k + 438047) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 1314142) = 884736 * k + 657071 := by
    unfold C
    simp [show (1769472 * k + 1314142) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 657071) = 2654208 * k + 1971214 := by
    unfold C
    simp [show (884736 * k + 657071) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 1971214) = 1327104 * k + 985607 := by
    unfold C
    simp [show (2654208 * k + 1971214) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 985607) = 3981312 * k + 2956822 := by
    unfold C
    simp [show (1327104 * k + 985607) % 2 ≠ 0 by omega]
    omega
  have h10 : C (3981312 * k + 2956822) = 1990656 * k + 1478411 := by
    unfold C
    simp [show (3981312 * k + 2956822) % 2 = 0 by omega]
    omega
  have h11 : C (1990656 * k + 1478411) = 5971968 * k + 4435234 := by
    unfold C
    simp [show (1990656 * k + 1478411) % 2 ≠ 0 by omega]
    omega
  have h12 : C (5971968 * k + 4435234) = 2985984 * k + 2217617 := by
    unfold C
    simp [show (5971968 * k + 4435234) % 2 = 0 by omega]
    omega
  have h13 : C (2985984 * k + 2217617) = 8957952 * k + 6652852 := by
    unfold C
    simp [show (2985984 * k + 2217617) % 2 ≠ 0 by omega]
    omega
  have h14 : C (8957952 * k + 6652852) = 4478976 * k + 3326426 := by
    unfold C
    simp [show (8957952 * k + 6652852) % 2 = 0 by omega]
    omega
  have h15 : C (4478976 * k + 3326426) = 2239488 * k + 1663213 := by
    unfold C
    simp [show (4478976 * k + 3326426) % 2 = 0 by omega]
    omega
  have h16 : C (2239488 * k + 1663213) = 6718464 * k + 4989640 := by
    unfold C
    simp [show (2239488 * k + 1663213) % 2 ≠ 0 by omega]
    omega
  have h17 : C (6718464 * k + 4989640) = 3359232 * k + 2494820 := by
    unfold C
    simp [show (6718464 * k + 4989640) % 2 = 0 by omega]
    omega
  have h18 : C (3359232 * k + 2494820) = 1679616 * k + 1247410 := by
    unfold C
    simp [show (3359232 * k + 2494820) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 1247410) = 839808 * k + 623705 := by
    unfold C
    simp [show (1679616 * k + 1247410) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 623705) = 2519424 * k + 1871116 := by
    unfold C
    simp [show (839808 * k + 623705) % 2 ≠ 0 by omega]
    omega
  have h21 : C (2519424 * k + 1871116) = 1259712 * k + 935558 := by
    unfold C
    simp [show (2519424 * k + 1871116) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 935558) = 629856 * k + 467779 := by
    unfold C
    simp [show (1259712 * k + 935558) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 467779) = 1889568 * k + 1403338 := by
    unfold C
    simp [show (629856 * k + 467779) % 2 ≠ 0 by omega]
    omega
  have h24 : C (1889568 * k + 1403338) = 944784 * k + 701669 := by
    unfold C
    simp [show (1889568 * k + 1403338) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 701669) = 2834352 * k + 2105008 := by
    unfold C
    simp [show (944784 * k + 701669) % 2 ≠ 0 by omega]
    omega
  have h26 : C (2834352 * k + 2105008) = 1417176 * k + 1052504 := by
    unfold C
    simp [show (2834352 * k + 2105008) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 1052504) = 708588 * k + 526252 := by
    unfold C
    simp [show (1417176 * k + 1052504) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 526252) = 354294 * k + 263126 := by
    unfold C
    simp [show (708588 * k + 526252) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 263126) = 177147 * k + 131563 := by
    unfold C
    simp [show (354294 * k + 263126) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 194687) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 194687))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

end CollatzM18Shard036
