import Mathlib.Data.Nat.Prime.Basic

namespace CollatzM18Shard008

def C (n : Nat) : Nat := if n % 2 = 0 then n / 2 else 3 * n + 1

def iterate (n t : Nat) : Nat := Nat.rec n (fun _ previous => C previous) t

theorem descent_mod262144_38503 : ∀ k : Nat,
    iterate (262144 * k + 38503) 29 = 177147 * k + 26020 ∧
      177147 * k + 26020 < 262144 * k + 38503 := by
  intro k
  have h1 : C (262144 * k + 38503) = 786432 * k + 115510 := by
    unfold C
    simp [show (262144 * k + 38503) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 115510) = 393216 * k + 57755 := by
    unfold C
    simp [show (786432 * k + 115510) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 57755) = 1179648 * k + 173266 := by
    unfold C
    simp [show (393216 * k + 57755) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 173266) = 589824 * k + 86633 := by
    unfold C
    simp [show (1179648 * k + 173266) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 86633) = 1769472 * k + 259900 := by
    unfold C
    simp [show (589824 * k + 86633) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 259900) = 884736 * k + 129950 := by
    unfold C
    simp [show (1769472 * k + 259900) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 129950) = 442368 * k + 64975 := by
    unfold C
    simp [show (884736 * k + 129950) % 2 = 0 by omega]
    omega
  have h8 : C (442368 * k + 64975) = 1327104 * k + 194926 := by
    unfold C
    simp [show (442368 * k + 64975) % 2 ≠ 0 by omega]
    omega
  have h9 : C (1327104 * k + 194926) = 663552 * k + 97463 := by
    unfold C
    simp [show (1327104 * k + 194926) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 97463) = 1990656 * k + 292390 := by
    unfold C
    simp [show (663552 * k + 97463) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 292390) = 995328 * k + 146195 := by
    unfold C
    simp [show (1990656 * k + 292390) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 146195) = 2985984 * k + 438586 := by
    unfold C
    simp [show (995328 * k + 146195) % 2 ≠ 0 by omega]
    omega
  have h13 : C (2985984 * k + 438586) = 1492992 * k + 219293 := by
    unfold C
    simp [show (2985984 * k + 438586) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 219293) = 4478976 * k + 657880 := by
    unfold C
    simp [show (1492992 * k + 219293) % 2 ≠ 0 by omega]
    omega
  have h15 : C (4478976 * k + 657880) = 2239488 * k + 328940 := by
    unfold C
    simp [show (4478976 * k + 657880) % 2 = 0 by omega]
    omega
  have h16 : C (2239488 * k + 328940) = 1119744 * k + 164470 := by
    unfold C
    simp [show (2239488 * k + 328940) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 164470) = 559872 * k + 82235 := by
    unfold C
    simp [show (1119744 * k + 164470) % 2 = 0 by omega]
    omega
  have h18 : C (559872 * k + 82235) = 1679616 * k + 246706 := by
    unfold C
    simp [show (559872 * k + 82235) % 2 ≠ 0 by omega]
    omega
  have h19 : C (1679616 * k + 246706) = 839808 * k + 123353 := by
    unfold C
    simp [show (1679616 * k + 246706) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 123353) = 2519424 * k + 370060 := by
    unfold C
    simp [show (839808 * k + 123353) % 2 ≠ 0 by omega]
    omega
  have h21 : C (2519424 * k + 370060) = 1259712 * k + 185030 := by
    unfold C
    simp [show (2519424 * k + 370060) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 185030) = 629856 * k + 92515 := by
    unfold C
    simp [show (1259712 * k + 185030) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 92515) = 1889568 * k + 277546 := by
    unfold C
    simp [show (629856 * k + 92515) % 2 ≠ 0 by omega]
    omega
  have h24 : C (1889568 * k + 277546) = 944784 * k + 138773 := by
    unfold C
    simp [show (1889568 * k + 277546) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 138773) = 2834352 * k + 416320 := by
    unfold C
    simp [show (944784 * k + 138773) % 2 ≠ 0 by omega]
    omega
  have h26 : C (2834352 * k + 416320) = 1417176 * k + 208160 := by
    unfold C
    simp [show (2834352 * k + 416320) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 208160) = 708588 * k + 104080 := by
    unfold C
    simp [show (1417176 * k + 208160) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 104080) = 354294 * k + 52040 := by
    unfold C
    simp [show (708588 * k + 104080) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 52040) = 177147 * k + 26020 := by
    unfold C
    simp [show (354294 * k + 52040) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 38503) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 38503))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_38783 : ∀ k : Nat,
    iterate (262144 * k + 38783) 29 = 177147 * k + 26209 ∧
      177147 * k + 26209 < 262144 * k + 38783 := by
  intro k
  have h1 : C (262144 * k + 38783) = 786432 * k + 116350 := by
    unfold C
    simp [show (262144 * k + 38783) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 116350) = 393216 * k + 58175 := by
    unfold C
    simp [show (786432 * k + 116350) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 58175) = 1179648 * k + 174526 := by
    unfold C
    simp [show (393216 * k + 58175) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 174526) = 589824 * k + 87263 := by
    unfold C
    simp [show (1179648 * k + 174526) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 87263) = 1769472 * k + 261790 := by
    unfold C
    simp [show (589824 * k + 87263) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 261790) = 884736 * k + 130895 := by
    unfold C
    simp [show (1769472 * k + 261790) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 130895) = 2654208 * k + 392686 := by
    unfold C
    simp [show (884736 * k + 130895) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 392686) = 1327104 * k + 196343 := by
    unfold C
    simp [show (2654208 * k + 392686) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 196343) = 3981312 * k + 589030 := by
    unfold C
    simp [show (1327104 * k + 196343) % 2 ≠ 0 by omega]
    omega
  have h10 : C (3981312 * k + 589030) = 1990656 * k + 294515 := by
    unfold C
    simp [show (3981312 * k + 589030) % 2 = 0 by omega]
    omega
  have h11 : C (1990656 * k + 294515) = 5971968 * k + 883546 := by
    unfold C
    simp [show (1990656 * k + 294515) % 2 ≠ 0 by omega]
    omega
  have h12 : C (5971968 * k + 883546) = 2985984 * k + 441773 := by
    unfold C
    simp [show (5971968 * k + 883546) % 2 = 0 by omega]
    omega
  have h13 : C (2985984 * k + 441773) = 8957952 * k + 1325320 := by
    unfold C
    simp [show (2985984 * k + 441773) % 2 ≠ 0 by omega]
    omega
  have h14 : C (8957952 * k + 1325320) = 4478976 * k + 662660 := by
    unfold C
    simp [show (8957952 * k + 1325320) % 2 = 0 by omega]
    omega
  have h15 : C (4478976 * k + 662660) = 2239488 * k + 331330 := by
    unfold C
    simp [show (4478976 * k + 662660) % 2 = 0 by omega]
    omega
  have h16 : C (2239488 * k + 331330) = 1119744 * k + 165665 := by
    unfold C
    simp [show (2239488 * k + 331330) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 165665) = 3359232 * k + 496996 := by
    unfold C
    simp [show (1119744 * k + 165665) % 2 ≠ 0 by omega]
    omega
  have h18 : C (3359232 * k + 496996) = 1679616 * k + 248498 := by
    unfold C
    simp [show (3359232 * k + 496996) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 248498) = 839808 * k + 124249 := by
    unfold C
    simp [show (1679616 * k + 248498) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 124249) = 2519424 * k + 372748 := by
    unfold C
    simp [show (839808 * k + 124249) % 2 ≠ 0 by omega]
    omega
  have h21 : C (2519424 * k + 372748) = 1259712 * k + 186374 := by
    unfold C
    simp [show (2519424 * k + 372748) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 186374) = 629856 * k + 93187 := by
    unfold C
    simp [show (1259712 * k + 186374) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 93187) = 1889568 * k + 279562 := by
    unfold C
    simp [show (629856 * k + 93187) % 2 ≠ 0 by omega]
    omega
  have h24 : C (1889568 * k + 279562) = 944784 * k + 139781 := by
    unfold C
    simp [show (1889568 * k + 279562) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 139781) = 2834352 * k + 419344 := by
    unfold C
    simp [show (944784 * k + 139781) % 2 ≠ 0 by omega]
    omega
  have h26 : C (2834352 * k + 419344) = 1417176 * k + 209672 := by
    unfold C
    simp [show (2834352 * k + 419344) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 209672) = 708588 * k + 104836 := by
    unfold C
    simp [show (1417176 * k + 209672) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 104836) = 354294 * k + 52418 := by
    unfold C
    simp [show (708588 * k + 104836) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 52418) = 177147 * k + 26209 := by
    unfold C
    simp [show (354294 * k + 52418) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 38783) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 38783))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_38975 : ∀ k : Nat,
    iterate (262144 * k + 38975) 29 = 177147 * k + 26339 ∧
      177147 * k + 26339 < 262144 * k + 38975 := by
  intro k
  have h1 : C (262144 * k + 38975) = 786432 * k + 116926 := by
    unfold C
    simp [show (262144 * k + 38975) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 116926) = 393216 * k + 58463 := by
    unfold C
    simp [show (786432 * k + 116926) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 58463) = 1179648 * k + 175390 := by
    unfold C
    simp [show (393216 * k + 58463) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 175390) = 589824 * k + 87695 := by
    unfold C
    simp [show (1179648 * k + 175390) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 87695) = 1769472 * k + 263086 := by
    unfold C
    simp [show (589824 * k + 87695) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 263086) = 884736 * k + 131543 := by
    unfold C
    simp [show (1769472 * k + 263086) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 131543) = 2654208 * k + 394630 := by
    unfold C
    simp [show (884736 * k + 131543) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 394630) = 1327104 * k + 197315 := by
    unfold C
    simp [show (2654208 * k + 394630) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 197315) = 3981312 * k + 591946 := by
    unfold C
    simp [show (1327104 * k + 197315) % 2 ≠ 0 by omega]
    omega
  have h10 : C (3981312 * k + 591946) = 1990656 * k + 295973 := by
    unfold C
    simp [show (3981312 * k + 591946) % 2 = 0 by omega]
    omega
  have h11 : C (1990656 * k + 295973) = 5971968 * k + 887920 := by
    unfold C
    simp [show (1990656 * k + 295973) % 2 ≠ 0 by omega]
    omega
  have h12 : C (5971968 * k + 887920) = 2985984 * k + 443960 := by
    unfold C
    simp [show (5971968 * k + 887920) % 2 = 0 by omega]
    omega
  have h13 : C (2985984 * k + 443960) = 1492992 * k + 221980 := by
    unfold C
    simp [show (2985984 * k + 443960) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 221980) = 746496 * k + 110990 := by
    unfold C
    simp [show (1492992 * k + 221980) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 110990) = 373248 * k + 55495 := by
    unfold C
    simp [show (746496 * k + 110990) % 2 = 0 by omega]
    omega
  have h16 : C (373248 * k + 55495) = 1119744 * k + 166486 := by
    unfold C
    simp [show (373248 * k + 55495) % 2 ≠ 0 by omega]
    omega
  have h17 : C (1119744 * k + 166486) = 559872 * k + 83243 := by
    unfold C
    simp [show (1119744 * k + 166486) % 2 = 0 by omega]
    omega
  have h18 : C (559872 * k + 83243) = 1679616 * k + 249730 := by
    unfold C
    simp [show (559872 * k + 83243) % 2 ≠ 0 by omega]
    omega
  have h19 : C (1679616 * k + 249730) = 839808 * k + 124865 := by
    unfold C
    simp [show (1679616 * k + 249730) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 124865) = 2519424 * k + 374596 := by
    unfold C
    simp [show (839808 * k + 124865) % 2 ≠ 0 by omega]
    omega
  have h21 : C (2519424 * k + 374596) = 1259712 * k + 187298 := by
    unfold C
    simp [show (2519424 * k + 374596) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 187298) = 629856 * k + 93649 := by
    unfold C
    simp [show (1259712 * k + 187298) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 93649) = 1889568 * k + 280948 := by
    unfold C
    simp [show (629856 * k + 93649) % 2 ≠ 0 by omega]
    omega
  have h24 : C (1889568 * k + 280948) = 944784 * k + 140474 := by
    unfold C
    simp [show (1889568 * k + 280948) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 140474) = 472392 * k + 70237 := by
    unfold C
    simp [show (944784 * k + 140474) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 70237) = 1417176 * k + 210712 := by
    unfold C
    simp [show (472392 * k + 70237) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 210712) = 708588 * k + 105356 := by
    unfold C
    simp [show (1417176 * k + 210712) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 105356) = 354294 * k + 52678 := by
    unfold C
    simp [show (708588 * k + 105356) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 52678) = 177147 * k + 26339 := by
    unfold C
    simp [show (354294 * k + 52678) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 38975) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 38975))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_39015 : ∀ k : Nat,
    iterate (262144 * k + 39015) 29 = 177147 * k + 26366 ∧
      177147 * k + 26366 < 262144 * k + 39015 := by
  intro k
  have h1 : C (262144 * k + 39015) = 786432 * k + 117046 := by
    unfold C
    simp [show (262144 * k + 39015) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 117046) = 393216 * k + 58523 := by
    unfold C
    simp [show (786432 * k + 117046) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 58523) = 1179648 * k + 175570 := by
    unfold C
    simp [show (393216 * k + 58523) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 175570) = 589824 * k + 87785 := by
    unfold C
    simp [show (1179648 * k + 175570) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 87785) = 1769472 * k + 263356 := by
    unfold C
    simp [show (589824 * k + 87785) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 263356) = 884736 * k + 131678 := by
    unfold C
    simp [show (1769472 * k + 263356) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 131678) = 442368 * k + 65839 := by
    unfold C
    simp [show (884736 * k + 131678) % 2 = 0 by omega]
    omega
  have h8 : C (442368 * k + 65839) = 1327104 * k + 197518 := by
    unfold C
    simp [show (442368 * k + 65839) % 2 ≠ 0 by omega]
    omega
  have h9 : C (1327104 * k + 197518) = 663552 * k + 98759 := by
    unfold C
    simp [show (1327104 * k + 197518) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 98759) = 1990656 * k + 296278 := by
    unfold C
    simp [show (663552 * k + 98759) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 296278) = 995328 * k + 148139 := by
    unfold C
    simp [show (1990656 * k + 296278) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 148139) = 2985984 * k + 444418 := by
    unfold C
    simp [show (995328 * k + 148139) % 2 ≠ 0 by omega]
    omega
  have h13 : C (2985984 * k + 444418) = 1492992 * k + 222209 := by
    unfold C
    simp [show (2985984 * k + 444418) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 222209) = 4478976 * k + 666628 := by
    unfold C
    simp [show (1492992 * k + 222209) % 2 ≠ 0 by omega]
    omega
  have h15 : C (4478976 * k + 666628) = 2239488 * k + 333314 := by
    unfold C
    simp [show (4478976 * k + 666628) % 2 = 0 by omega]
    omega
  have h16 : C (2239488 * k + 333314) = 1119744 * k + 166657 := by
    unfold C
    simp [show (2239488 * k + 333314) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 166657) = 3359232 * k + 499972 := by
    unfold C
    simp [show (1119744 * k + 166657) % 2 ≠ 0 by omega]
    omega
  have h18 : C (3359232 * k + 499972) = 1679616 * k + 249986 := by
    unfold C
    simp [show (3359232 * k + 499972) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 249986) = 839808 * k + 124993 := by
    unfold C
    simp [show (1679616 * k + 249986) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 124993) = 2519424 * k + 374980 := by
    unfold C
    simp [show (839808 * k + 124993) % 2 ≠ 0 by omega]
    omega
  have h21 : C (2519424 * k + 374980) = 1259712 * k + 187490 := by
    unfold C
    simp [show (2519424 * k + 374980) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 187490) = 629856 * k + 93745 := by
    unfold C
    simp [show (1259712 * k + 187490) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 93745) = 1889568 * k + 281236 := by
    unfold C
    simp [show (629856 * k + 93745) % 2 ≠ 0 by omega]
    omega
  have h24 : C (1889568 * k + 281236) = 944784 * k + 140618 := by
    unfold C
    simp [show (1889568 * k + 281236) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 140618) = 472392 * k + 70309 := by
    unfold C
    simp [show (944784 * k + 140618) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 70309) = 1417176 * k + 210928 := by
    unfold C
    simp [show (472392 * k + 70309) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 210928) = 708588 * k + 105464 := by
    unfold C
    simp [show (1417176 * k + 210928) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 105464) = 354294 * k + 52732 := by
    unfold C
    simp [show (708588 * k + 105464) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 52732) = 177147 * k + 26366 := by
    unfold C
    simp [show (354294 * k + 52732) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 39015) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 39015))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_39743 : ∀ k : Nat,
    iterate (262144 * k + 39743) 29 = 177147 * k + 26858 ∧
      177147 * k + 26858 < 262144 * k + 39743 := by
  intro k
  have h1 : C (262144 * k + 39743) = 786432 * k + 119230 := by
    unfold C
    simp [show (262144 * k + 39743) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 119230) = 393216 * k + 59615 := by
    unfold C
    simp [show (786432 * k + 119230) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 59615) = 1179648 * k + 178846 := by
    unfold C
    simp [show (393216 * k + 59615) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 178846) = 589824 * k + 89423 := by
    unfold C
    simp [show (1179648 * k + 178846) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 89423) = 1769472 * k + 268270 := by
    unfold C
    simp [show (589824 * k + 89423) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 268270) = 884736 * k + 134135 := by
    unfold C
    simp [show (1769472 * k + 268270) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 134135) = 2654208 * k + 402406 := by
    unfold C
    simp [show (884736 * k + 134135) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 402406) = 1327104 * k + 201203 := by
    unfold C
    simp [show (2654208 * k + 402406) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 201203) = 3981312 * k + 603610 := by
    unfold C
    simp [show (1327104 * k + 201203) % 2 ≠ 0 by omega]
    omega
  have h10 : C (3981312 * k + 603610) = 1990656 * k + 301805 := by
    unfold C
    simp [show (3981312 * k + 603610) % 2 = 0 by omega]
    omega
  have h11 : C (1990656 * k + 301805) = 5971968 * k + 905416 := by
    unfold C
    simp [show (1990656 * k + 301805) % 2 ≠ 0 by omega]
    omega
  have h12 : C (5971968 * k + 905416) = 2985984 * k + 452708 := by
    unfold C
    simp [show (5971968 * k + 905416) % 2 = 0 by omega]
    omega
  have h13 : C (2985984 * k + 452708) = 1492992 * k + 226354 := by
    unfold C
    simp [show (2985984 * k + 452708) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 226354) = 746496 * k + 113177 := by
    unfold C
    simp [show (1492992 * k + 226354) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 113177) = 2239488 * k + 339532 := by
    unfold C
    simp [show (746496 * k + 113177) % 2 ≠ 0 by omega]
    omega
  have h16 : C (2239488 * k + 339532) = 1119744 * k + 169766 := by
    unfold C
    simp [show (2239488 * k + 339532) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 169766) = 559872 * k + 84883 := by
    unfold C
    simp [show (1119744 * k + 169766) % 2 = 0 by omega]
    omega
  have h18 : C (559872 * k + 84883) = 1679616 * k + 254650 := by
    unfold C
    simp [show (559872 * k + 84883) % 2 ≠ 0 by omega]
    omega
  have h19 : C (1679616 * k + 254650) = 839808 * k + 127325 := by
    unfold C
    simp [show (1679616 * k + 254650) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 127325) = 2519424 * k + 381976 := by
    unfold C
    simp [show (839808 * k + 127325) % 2 ≠ 0 by omega]
    omega
  have h21 : C (2519424 * k + 381976) = 1259712 * k + 190988 := by
    unfold C
    simp [show (2519424 * k + 381976) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 190988) = 629856 * k + 95494 := by
    unfold C
    simp [show (1259712 * k + 190988) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 95494) = 314928 * k + 47747 := by
    unfold C
    simp [show (629856 * k + 95494) % 2 = 0 by omega]
    omega
  have h24 : C (314928 * k + 47747) = 944784 * k + 143242 := by
    unfold C
    simp [show (314928 * k + 47747) % 2 ≠ 0 by omega]
    omega
  have h25 : C (944784 * k + 143242) = 472392 * k + 71621 := by
    unfold C
    simp [show (944784 * k + 143242) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 71621) = 1417176 * k + 214864 := by
    unfold C
    simp [show (472392 * k + 71621) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 214864) = 708588 * k + 107432 := by
    unfold C
    simp [show (1417176 * k + 214864) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 107432) = 354294 * k + 53716 := by
    unfold C
    simp [show (708588 * k + 107432) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 53716) = 177147 * k + 26858 := by
    unfold C
    simp [show (354294 * k + 53716) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 39743) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 39743))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_39783 : ∀ k : Nat,
    iterate (262144 * k + 39783) 29 = 177147 * k + 26885 ∧
      177147 * k + 26885 < 262144 * k + 39783 := by
  intro k
  have h1 : C (262144 * k + 39783) = 786432 * k + 119350 := by
    unfold C
    simp [show (262144 * k + 39783) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 119350) = 393216 * k + 59675 := by
    unfold C
    simp [show (786432 * k + 119350) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 59675) = 1179648 * k + 179026 := by
    unfold C
    simp [show (393216 * k + 59675) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 179026) = 589824 * k + 89513 := by
    unfold C
    simp [show (1179648 * k + 179026) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 89513) = 1769472 * k + 268540 := by
    unfold C
    simp [show (589824 * k + 89513) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 268540) = 884736 * k + 134270 := by
    unfold C
    simp [show (1769472 * k + 268540) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 134270) = 442368 * k + 67135 := by
    unfold C
    simp [show (884736 * k + 134270) % 2 = 0 by omega]
    omega
  have h8 : C (442368 * k + 67135) = 1327104 * k + 201406 := by
    unfold C
    simp [show (442368 * k + 67135) % 2 ≠ 0 by omega]
    omega
  have h9 : C (1327104 * k + 201406) = 663552 * k + 100703 := by
    unfold C
    simp [show (1327104 * k + 201406) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 100703) = 1990656 * k + 302110 := by
    unfold C
    simp [show (663552 * k + 100703) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 302110) = 995328 * k + 151055 := by
    unfold C
    simp [show (1990656 * k + 302110) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 151055) = 2985984 * k + 453166 := by
    unfold C
    simp [show (995328 * k + 151055) % 2 ≠ 0 by omega]
    omega
  have h13 : C (2985984 * k + 453166) = 1492992 * k + 226583 := by
    unfold C
    simp [show (2985984 * k + 453166) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 226583) = 4478976 * k + 679750 := by
    unfold C
    simp [show (1492992 * k + 226583) % 2 ≠ 0 by omega]
    omega
  have h15 : C (4478976 * k + 679750) = 2239488 * k + 339875 := by
    unfold C
    simp [show (4478976 * k + 679750) % 2 = 0 by omega]
    omega
  have h16 : C (2239488 * k + 339875) = 6718464 * k + 1019626 := by
    unfold C
    simp [show (2239488 * k + 339875) % 2 ≠ 0 by omega]
    omega
  have h17 : C (6718464 * k + 1019626) = 3359232 * k + 509813 := by
    unfold C
    simp [show (6718464 * k + 1019626) % 2 = 0 by omega]
    omega
  have h18 : C (3359232 * k + 509813) = 10077696 * k + 1529440 := by
    unfold C
    simp [show (3359232 * k + 509813) % 2 ≠ 0 by omega]
    omega
  have h19 : C (10077696 * k + 1529440) = 5038848 * k + 764720 := by
    unfold C
    simp [show (10077696 * k + 1529440) % 2 = 0 by omega]
    omega
  have h20 : C (5038848 * k + 764720) = 2519424 * k + 382360 := by
    unfold C
    simp [show (5038848 * k + 764720) % 2 = 0 by omega]
    omega
  have h21 : C (2519424 * k + 382360) = 1259712 * k + 191180 := by
    unfold C
    simp [show (2519424 * k + 382360) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 191180) = 629856 * k + 95590 := by
    unfold C
    simp [show (1259712 * k + 191180) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 95590) = 314928 * k + 47795 := by
    unfold C
    simp [show (629856 * k + 95590) % 2 = 0 by omega]
    omega
  have h24 : C (314928 * k + 47795) = 944784 * k + 143386 := by
    unfold C
    simp [show (314928 * k + 47795) % 2 ≠ 0 by omega]
    omega
  have h25 : C (944784 * k + 143386) = 472392 * k + 71693 := by
    unfold C
    simp [show (944784 * k + 143386) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 71693) = 1417176 * k + 215080 := by
    unfold C
    simp [show (472392 * k + 71693) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 215080) = 708588 * k + 107540 := by
    unfold C
    simp [show (1417176 * k + 215080) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 107540) = 354294 * k + 53770 := by
    unfold C
    simp [show (708588 * k + 107540) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 53770) = 177147 * k + 26885 := by
    unfold C
    simp [show (354294 * k + 53770) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 39783) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 39783))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_40767 : ∀ k : Nat,
    iterate (262144 * k + 40767) 29 = 177147 * k + 27550 ∧
      177147 * k + 27550 < 262144 * k + 40767 := by
  intro k
  have h1 : C (262144 * k + 40767) = 786432 * k + 122302 := by
    unfold C
    simp [show (262144 * k + 40767) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 122302) = 393216 * k + 61151 := by
    unfold C
    simp [show (786432 * k + 122302) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 61151) = 1179648 * k + 183454 := by
    unfold C
    simp [show (393216 * k + 61151) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 183454) = 589824 * k + 91727 := by
    unfold C
    simp [show (1179648 * k + 183454) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 91727) = 1769472 * k + 275182 := by
    unfold C
    simp [show (589824 * k + 91727) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 275182) = 884736 * k + 137591 := by
    unfold C
    simp [show (1769472 * k + 275182) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 137591) = 2654208 * k + 412774 := by
    unfold C
    simp [show (884736 * k + 137591) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 412774) = 1327104 * k + 206387 := by
    unfold C
    simp [show (2654208 * k + 412774) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 206387) = 3981312 * k + 619162 := by
    unfold C
    simp [show (1327104 * k + 206387) % 2 ≠ 0 by omega]
    omega
  have h10 : C (3981312 * k + 619162) = 1990656 * k + 309581 := by
    unfold C
    simp [show (3981312 * k + 619162) % 2 = 0 by omega]
    omega
  have h11 : C (1990656 * k + 309581) = 5971968 * k + 928744 := by
    unfold C
    simp [show (1990656 * k + 309581) % 2 ≠ 0 by omega]
    omega
  have h12 : C (5971968 * k + 928744) = 2985984 * k + 464372 := by
    unfold C
    simp [show (5971968 * k + 928744) % 2 = 0 by omega]
    omega
  have h13 : C (2985984 * k + 464372) = 1492992 * k + 232186 := by
    unfold C
    simp [show (2985984 * k + 464372) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 232186) = 746496 * k + 116093 := by
    unfold C
    simp [show (1492992 * k + 232186) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 116093) = 2239488 * k + 348280 := by
    unfold C
    simp [show (746496 * k + 116093) % 2 ≠ 0 by omega]
    omega
  have h16 : C (2239488 * k + 348280) = 1119744 * k + 174140 := by
    unfold C
    simp [show (2239488 * k + 348280) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 174140) = 559872 * k + 87070 := by
    unfold C
    simp [show (1119744 * k + 174140) % 2 = 0 by omega]
    omega
  have h18 : C (559872 * k + 87070) = 279936 * k + 43535 := by
    unfold C
    simp [show (559872 * k + 87070) % 2 = 0 by omega]
    omega
  have h19 : C (279936 * k + 43535) = 839808 * k + 130606 := by
    unfold C
    simp [show (279936 * k + 43535) % 2 ≠ 0 by omega]
    omega
  have h20 : C (839808 * k + 130606) = 419904 * k + 65303 := by
    unfold C
    simp [show (839808 * k + 130606) % 2 = 0 by omega]
    omega
  have h21 : C (419904 * k + 65303) = 1259712 * k + 195910 := by
    unfold C
    simp [show (419904 * k + 65303) % 2 ≠ 0 by omega]
    omega
  have h22 : C (1259712 * k + 195910) = 629856 * k + 97955 := by
    unfold C
    simp [show (1259712 * k + 195910) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 97955) = 1889568 * k + 293866 := by
    unfold C
    simp [show (629856 * k + 97955) % 2 ≠ 0 by omega]
    omega
  have h24 : C (1889568 * k + 293866) = 944784 * k + 146933 := by
    unfold C
    simp [show (1889568 * k + 293866) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 146933) = 2834352 * k + 440800 := by
    unfold C
    simp [show (944784 * k + 146933) % 2 ≠ 0 by omega]
    omega
  have h26 : C (2834352 * k + 440800) = 1417176 * k + 220400 := by
    unfold C
    simp [show (2834352 * k + 440800) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 220400) = 708588 * k + 110200 := by
    unfold C
    simp [show (1417176 * k + 220400) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 110200) = 354294 * k + 55100 := by
    unfold C
    simp [show (708588 * k + 110200) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 55100) = 177147 * k + 27550 := by
    unfold C
    simp [show (354294 * k + 55100) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 40767) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 40767))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_41087 : ∀ k : Nat,
    iterate (262144 * k + 41087) 29 = 177147 * k + 27766 ∧
      177147 * k + 27766 < 262144 * k + 41087 := by
  intro k
  have h1 : C (262144 * k + 41087) = 786432 * k + 123262 := by
    unfold C
    simp [show (262144 * k + 41087) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 123262) = 393216 * k + 61631 := by
    unfold C
    simp [show (786432 * k + 123262) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 61631) = 1179648 * k + 184894 := by
    unfold C
    simp [show (393216 * k + 61631) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 184894) = 589824 * k + 92447 := by
    unfold C
    simp [show (1179648 * k + 184894) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 92447) = 1769472 * k + 277342 := by
    unfold C
    simp [show (589824 * k + 92447) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 277342) = 884736 * k + 138671 := by
    unfold C
    simp [show (1769472 * k + 277342) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 138671) = 2654208 * k + 416014 := by
    unfold C
    simp [show (884736 * k + 138671) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 416014) = 1327104 * k + 208007 := by
    unfold C
    simp [show (2654208 * k + 416014) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 208007) = 3981312 * k + 624022 := by
    unfold C
    simp [show (1327104 * k + 208007) % 2 ≠ 0 by omega]
    omega
  have h10 : C (3981312 * k + 624022) = 1990656 * k + 312011 := by
    unfold C
    simp [show (3981312 * k + 624022) % 2 = 0 by omega]
    omega
  have h11 : C (1990656 * k + 312011) = 5971968 * k + 936034 := by
    unfold C
    simp [show (1990656 * k + 312011) % 2 ≠ 0 by omega]
    omega
  have h12 : C (5971968 * k + 936034) = 2985984 * k + 468017 := by
    unfold C
    simp [show (5971968 * k + 936034) % 2 = 0 by omega]
    omega
  have h13 : C (2985984 * k + 468017) = 8957952 * k + 1404052 := by
    unfold C
    simp [show (2985984 * k + 468017) % 2 ≠ 0 by omega]
    omega
  have h14 : C (8957952 * k + 1404052) = 4478976 * k + 702026 := by
    unfold C
    simp [show (8957952 * k + 1404052) % 2 = 0 by omega]
    omega
  have h15 : C (4478976 * k + 702026) = 2239488 * k + 351013 := by
    unfold C
    simp [show (4478976 * k + 702026) % 2 = 0 by omega]
    omega
  have h16 : C (2239488 * k + 351013) = 6718464 * k + 1053040 := by
    unfold C
    simp [show (2239488 * k + 351013) % 2 ≠ 0 by omega]
    omega
  have h17 : C (6718464 * k + 1053040) = 3359232 * k + 526520 := by
    unfold C
    simp [show (6718464 * k + 1053040) % 2 = 0 by omega]
    omega
  have h18 : C (3359232 * k + 526520) = 1679616 * k + 263260 := by
    unfold C
    simp [show (3359232 * k + 526520) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 263260) = 839808 * k + 131630 := by
    unfold C
    simp [show (1679616 * k + 263260) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 131630) = 419904 * k + 65815 := by
    unfold C
    simp [show (839808 * k + 131630) % 2 = 0 by omega]
    omega
  have h21 : C (419904 * k + 65815) = 1259712 * k + 197446 := by
    unfold C
    simp [show (419904 * k + 65815) % 2 ≠ 0 by omega]
    omega
  have h22 : C (1259712 * k + 197446) = 629856 * k + 98723 := by
    unfold C
    simp [show (1259712 * k + 197446) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 98723) = 1889568 * k + 296170 := by
    unfold C
    simp [show (629856 * k + 98723) % 2 ≠ 0 by omega]
    omega
  have h24 : C (1889568 * k + 296170) = 944784 * k + 148085 := by
    unfold C
    simp [show (1889568 * k + 296170) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 148085) = 2834352 * k + 444256 := by
    unfold C
    simp [show (944784 * k + 148085) % 2 ≠ 0 by omega]
    omega
  have h26 : C (2834352 * k + 444256) = 1417176 * k + 222128 := by
    unfold C
    simp [show (2834352 * k + 444256) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 222128) = 708588 * k + 111064 := by
    unfold C
    simp [show (1417176 * k + 222128) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 111064) = 354294 * k + 55532 := by
    unfold C
    simp [show (708588 * k + 111064) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 55532) = 177147 * k + 27766 := by
    unfold C
    simp [show (354294 * k + 55532) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 41087) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 41087))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_41319 : ∀ k : Nat,
    iterate (262144 * k + 41319) 29 = 177147 * k + 27923 ∧
      177147 * k + 27923 < 262144 * k + 41319 := by
  intro k
  have h1 : C (262144 * k + 41319) = 786432 * k + 123958 := by
    unfold C
    simp [show (262144 * k + 41319) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 123958) = 393216 * k + 61979 := by
    unfold C
    simp [show (786432 * k + 123958) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 61979) = 1179648 * k + 185938 := by
    unfold C
    simp [show (393216 * k + 61979) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 185938) = 589824 * k + 92969 := by
    unfold C
    simp [show (1179648 * k + 185938) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 92969) = 1769472 * k + 278908 := by
    unfold C
    simp [show (589824 * k + 92969) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 278908) = 884736 * k + 139454 := by
    unfold C
    simp [show (1769472 * k + 278908) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 139454) = 442368 * k + 69727 := by
    unfold C
    simp [show (884736 * k + 139454) % 2 = 0 by omega]
    omega
  have h8 : C (442368 * k + 69727) = 1327104 * k + 209182 := by
    unfold C
    simp [show (442368 * k + 69727) % 2 ≠ 0 by omega]
    omega
  have h9 : C (1327104 * k + 209182) = 663552 * k + 104591 := by
    unfold C
    simp [show (1327104 * k + 209182) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 104591) = 1990656 * k + 313774 := by
    unfold C
    simp [show (663552 * k + 104591) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 313774) = 995328 * k + 156887 := by
    unfold C
    simp [show (1990656 * k + 313774) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 156887) = 2985984 * k + 470662 := by
    unfold C
    simp [show (995328 * k + 156887) % 2 ≠ 0 by omega]
    omega
  have h13 : C (2985984 * k + 470662) = 1492992 * k + 235331 := by
    unfold C
    simp [show (2985984 * k + 470662) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 235331) = 4478976 * k + 705994 := by
    unfold C
    simp [show (1492992 * k + 235331) % 2 ≠ 0 by omega]
    omega
  have h15 : C (4478976 * k + 705994) = 2239488 * k + 352997 := by
    unfold C
    simp [show (4478976 * k + 705994) % 2 = 0 by omega]
    omega
  have h16 : C (2239488 * k + 352997) = 6718464 * k + 1058992 := by
    unfold C
    simp [show (2239488 * k + 352997) % 2 ≠ 0 by omega]
    omega
  have h17 : C (6718464 * k + 1058992) = 3359232 * k + 529496 := by
    unfold C
    simp [show (6718464 * k + 1058992) % 2 = 0 by omega]
    omega
  have h18 : C (3359232 * k + 529496) = 1679616 * k + 264748 := by
    unfold C
    simp [show (3359232 * k + 529496) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 264748) = 839808 * k + 132374 := by
    unfold C
    simp [show (1679616 * k + 264748) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 132374) = 419904 * k + 66187 := by
    unfold C
    simp [show (839808 * k + 132374) % 2 = 0 by omega]
    omega
  have h21 : C (419904 * k + 66187) = 1259712 * k + 198562 := by
    unfold C
    simp [show (419904 * k + 66187) % 2 ≠ 0 by omega]
    omega
  have h22 : C (1259712 * k + 198562) = 629856 * k + 99281 := by
    unfold C
    simp [show (1259712 * k + 198562) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 99281) = 1889568 * k + 297844 := by
    unfold C
    simp [show (629856 * k + 99281) % 2 ≠ 0 by omega]
    omega
  have h24 : C (1889568 * k + 297844) = 944784 * k + 148922 := by
    unfold C
    simp [show (1889568 * k + 297844) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 148922) = 472392 * k + 74461 := by
    unfold C
    simp [show (944784 * k + 148922) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 74461) = 1417176 * k + 223384 := by
    unfold C
    simp [show (472392 * k + 74461) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 223384) = 708588 * k + 111692 := by
    unfold C
    simp [show (1417176 * k + 223384) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 111692) = 354294 * k + 55846 := by
    unfold C
    simp [show (708588 * k + 111692) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 55846) = 177147 * k + 27923 := by
    unfold C
    simp [show (354294 * k + 55846) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 41319) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 41319))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_41439 : ∀ k : Nat,
    iterate (262144 * k + 41439) 29 = 177147 * k + 28004 ∧
      177147 * k + 28004 < 262144 * k + 41439 := by
  intro k
  have h1 : C (262144 * k + 41439) = 786432 * k + 124318 := by
    unfold C
    simp [show (262144 * k + 41439) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 124318) = 393216 * k + 62159 := by
    unfold C
    simp [show (786432 * k + 124318) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 62159) = 1179648 * k + 186478 := by
    unfold C
    simp [show (393216 * k + 62159) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 186478) = 589824 * k + 93239 := by
    unfold C
    simp [show (1179648 * k + 186478) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 93239) = 1769472 * k + 279718 := by
    unfold C
    simp [show (589824 * k + 93239) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 279718) = 884736 * k + 139859 := by
    unfold C
    simp [show (1769472 * k + 279718) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 139859) = 2654208 * k + 419578 := by
    unfold C
    simp [show (884736 * k + 139859) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 419578) = 1327104 * k + 209789 := by
    unfold C
    simp [show (2654208 * k + 419578) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 209789) = 3981312 * k + 629368 := by
    unfold C
    simp [show (1327104 * k + 209789) % 2 ≠ 0 by omega]
    omega
  have h10 : C (3981312 * k + 629368) = 1990656 * k + 314684 := by
    unfold C
    simp [show (3981312 * k + 629368) % 2 = 0 by omega]
    omega
  have h11 : C (1990656 * k + 314684) = 995328 * k + 157342 := by
    unfold C
    simp [show (1990656 * k + 314684) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 157342) = 497664 * k + 78671 := by
    unfold C
    simp [show (995328 * k + 157342) % 2 = 0 by omega]
    omega
  have h13 : C (497664 * k + 78671) = 1492992 * k + 236014 := by
    unfold C
    simp [show (497664 * k + 78671) % 2 ≠ 0 by omega]
    omega
  have h14 : C (1492992 * k + 236014) = 746496 * k + 118007 := by
    unfold C
    simp [show (1492992 * k + 236014) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 118007) = 2239488 * k + 354022 := by
    unfold C
    simp [show (746496 * k + 118007) % 2 ≠ 0 by omega]
    omega
  have h16 : C (2239488 * k + 354022) = 1119744 * k + 177011 := by
    unfold C
    simp [show (2239488 * k + 354022) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 177011) = 3359232 * k + 531034 := by
    unfold C
    simp [show (1119744 * k + 177011) % 2 ≠ 0 by omega]
    omega
  have h18 : C (3359232 * k + 531034) = 1679616 * k + 265517 := by
    unfold C
    simp [show (3359232 * k + 531034) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 265517) = 5038848 * k + 796552 := by
    unfold C
    simp [show (1679616 * k + 265517) % 2 ≠ 0 by omega]
    omega
  have h20 : C (5038848 * k + 796552) = 2519424 * k + 398276 := by
    unfold C
    simp [show (5038848 * k + 796552) % 2 = 0 by omega]
    omega
  have h21 : C (2519424 * k + 398276) = 1259712 * k + 199138 := by
    unfold C
    simp [show (2519424 * k + 398276) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 199138) = 629856 * k + 99569 := by
    unfold C
    simp [show (1259712 * k + 199138) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 99569) = 1889568 * k + 298708 := by
    unfold C
    simp [show (629856 * k + 99569) % 2 ≠ 0 by omega]
    omega
  have h24 : C (1889568 * k + 298708) = 944784 * k + 149354 := by
    unfold C
    simp [show (1889568 * k + 298708) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 149354) = 472392 * k + 74677 := by
    unfold C
    simp [show (944784 * k + 149354) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 74677) = 1417176 * k + 224032 := by
    unfold C
    simp [show (472392 * k + 74677) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 224032) = 708588 * k + 112016 := by
    unfold C
    simp [show (1417176 * k + 224032) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 112016) = 354294 * k + 56008 := by
    unfold C
    simp [show (708588 * k + 112016) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 56008) = 177147 * k + 28004 := by
    unfold C
    simp [show (354294 * k + 56008) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 41439) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 41439))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_41519 : ∀ k : Nat,
    iterate (262144 * k + 41519) 29 = 177147 * k + 28058 ∧
      177147 * k + 28058 < 262144 * k + 41519 := by
  intro k
  have h1 : C (262144 * k + 41519) = 786432 * k + 124558 := by
    unfold C
    simp [show (262144 * k + 41519) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 124558) = 393216 * k + 62279 := by
    unfold C
    simp [show (786432 * k + 124558) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 62279) = 1179648 * k + 186838 := by
    unfold C
    simp [show (393216 * k + 62279) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 186838) = 589824 * k + 93419 := by
    unfold C
    simp [show (1179648 * k + 186838) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 93419) = 1769472 * k + 280258 := by
    unfold C
    simp [show (589824 * k + 93419) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 280258) = 884736 * k + 140129 := by
    unfold C
    simp [show (1769472 * k + 280258) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 140129) = 2654208 * k + 420388 := by
    unfold C
    simp [show (884736 * k + 140129) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 420388) = 1327104 * k + 210194 := by
    unfold C
    simp [show (2654208 * k + 420388) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 210194) = 663552 * k + 105097 := by
    unfold C
    simp [show (1327104 * k + 210194) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 105097) = 1990656 * k + 315292 := by
    unfold C
    simp [show (663552 * k + 105097) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 315292) = 995328 * k + 157646 := by
    unfold C
    simp [show (1990656 * k + 315292) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 157646) = 497664 * k + 78823 := by
    unfold C
    simp [show (995328 * k + 157646) % 2 = 0 by omega]
    omega
  have h13 : C (497664 * k + 78823) = 1492992 * k + 236470 := by
    unfold C
    simp [show (497664 * k + 78823) % 2 ≠ 0 by omega]
    omega
  have h14 : C (1492992 * k + 236470) = 746496 * k + 118235 := by
    unfold C
    simp [show (1492992 * k + 236470) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 118235) = 2239488 * k + 354706 := by
    unfold C
    simp [show (746496 * k + 118235) % 2 ≠ 0 by omega]
    omega
  have h16 : C (2239488 * k + 354706) = 1119744 * k + 177353 := by
    unfold C
    simp [show (2239488 * k + 354706) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 177353) = 3359232 * k + 532060 := by
    unfold C
    simp [show (1119744 * k + 177353) % 2 ≠ 0 by omega]
    omega
  have h18 : C (3359232 * k + 532060) = 1679616 * k + 266030 := by
    unfold C
    simp [show (3359232 * k + 532060) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 266030) = 839808 * k + 133015 := by
    unfold C
    simp [show (1679616 * k + 266030) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 133015) = 2519424 * k + 399046 := by
    unfold C
    simp [show (839808 * k + 133015) % 2 ≠ 0 by omega]
    omega
  have h21 : C (2519424 * k + 399046) = 1259712 * k + 199523 := by
    unfold C
    simp [show (2519424 * k + 399046) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 199523) = 3779136 * k + 598570 := by
    unfold C
    simp [show (1259712 * k + 199523) % 2 ≠ 0 by omega]
    omega
  have h23 : C (3779136 * k + 598570) = 1889568 * k + 299285 := by
    unfold C
    simp [show (3779136 * k + 598570) % 2 = 0 by omega]
    omega
  have h24 : C (1889568 * k + 299285) = 5668704 * k + 897856 := by
    unfold C
    simp [show (1889568 * k + 299285) % 2 ≠ 0 by omega]
    omega
  have h25 : C (5668704 * k + 897856) = 2834352 * k + 448928 := by
    unfold C
    simp [show (5668704 * k + 897856) % 2 = 0 by omega]
    omega
  have h26 : C (2834352 * k + 448928) = 1417176 * k + 224464 := by
    unfold C
    simp [show (2834352 * k + 448928) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 224464) = 708588 * k + 112232 := by
    unfold C
    simp [show (1417176 * k + 224464) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 112232) = 354294 * k + 56116 := by
    unfold C
    simp [show (708588 * k + 112232) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 56116) = 177147 * k + 28058 := by
    unfold C
    simp [show (354294 * k + 56116) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 41519) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 41519))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_41887 : ∀ k : Nat,
    iterate (262144 * k + 41887) 29 = 177147 * k + 28307 ∧
      177147 * k + 28307 < 262144 * k + 41887 := by
  intro k
  have h1 : C (262144 * k + 41887) = 786432 * k + 125662 := by
    unfold C
    simp [show (262144 * k + 41887) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 125662) = 393216 * k + 62831 := by
    unfold C
    simp [show (786432 * k + 125662) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 62831) = 1179648 * k + 188494 := by
    unfold C
    simp [show (393216 * k + 62831) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 188494) = 589824 * k + 94247 := by
    unfold C
    simp [show (1179648 * k + 188494) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 94247) = 1769472 * k + 282742 := by
    unfold C
    simp [show (589824 * k + 94247) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 282742) = 884736 * k + 141371 := by
    unfold C
    simp [show (1769472 * k + 282742) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 141371) = 2654208 * k + 424114 := by
    unfold C
    simp [show (884736 * k + 141371) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 424114) = 1327104 * k + 212057 := by
    unfold C
    simp [show (2654208 * k + 424114) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 212057) = 3981312 * k + 636172 := by
    unfold C
    simp [show (1327104 * k + 212057) % 2 ≠ 0 by omega]
    omega
  have h10 : C (3981312 * k + 636172) = 1990656 * k + 318086 := by
    unfold C
    simp [show (3981312 * k + 636172) % 2 = 0 by omega]
    omega
  have h11 : C (1990656 * k + 318086) = 995328 * k + 159043 := by
    unfold C
    simp [show (1990656 * k + 318086) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 159043) = 2985984 * k + 477130 := by
    unfold C
    simp [show (995328 * k + 159043) % 2 ≠ 0 by omega]
    omega
  have h13 : C (2985984 * k + 477130) = 1492992 * k + 238565 := by
    unfold C
    simp [show (2985984 * k + 477130) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 238565) = 4478976 * k + 715696 := by
    unfold C
    simp [show (1492992 * k + 238565) % 2 ≠ 0 by omega]
    omega
  have h15 : C (4478976 * k + 715696) = 2239488 * k + 357848 := by
    unfold C
    simp [show (4478976 * k + 715696) % 2 = 0 by omega]
    omega
  have h16 : C (2239488 * k + 357848) = 1119744 * k + 178924 := by
    unfold C
    simp [show (2239488 * k + 357848) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 178924) = 559872 * k + 89462 := by
    unfold C
    simp [show (1119744 * k + 178924) % 2 = 0 by omega]
    omega
  have h18 : C (559872 * k + 89462) = 279936 * k + 44731 := by
    unfold C
    simp [show (559872 * k + 89462) % 2 = 0 by omega]
    omega
  have h19 : C (279936 * k + 44731) = 839808 * k + 134194 := by
    unfold C
    simp [show (279936 * k + 44731) % 2 ≠ 0 by omega]
    omega
  have h20 : C (839808 * k + 134194) = 419904 * k + 67097 := by
    unfold C
    simp [show (839808 * k + 134194) % 2 = 0 by omega]
    omega
  have h21 : C (419904 * k + 67097) = 1259712 * k + 201292 := by
    unfold C
    simp [show (419904 * k + 67097) % 2 ≠ 0 by omega]
    omega
  have h22 : C (1259712 * k + 201292) = 629856 * k + 100646 := by
    unfold C
    simp [show (1259712 * k + 201292) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 100646) = 314928 * k + 50323 := by
    unfold C
    simp [show (629856 * k + 100646) % 2 = 0 by omega]
    omega
  have h24 : C (314928 * k + 50323) = 944784 * k + 150970 := by
    unfold C
    simp [show (314928 * k + 50323) % 2 ≠ 0 by omega]
    omega
  have h25 : C (944784 * k + 150970) = 472392 * k + 75485 := by
    unfold C
    simp [show (944784 * k + 150970) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 75485) = 1417176 * k + 226456 := by
    unfold C
    simp [show (472392 * k + 75485) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 226456) = 708588 * k + 113228 := by
    unfold C
    simp [show (1417176 * k + 226456) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 113228) = 354294 * k + 56614 := by
    unfold C
    simp [show (708588 * k + 113228) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 56614) = 177147 * k + 28307 := by
    unfold C
    simp [show (354294 * k + 56614) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 41887) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 41887))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_41967 : ∀ k : Nat,
    iterate (262144 * k + 41967) 29 = 177147 * k + 28361 ∧
      177147 * k + 28361 < 262144 * k + 41967 := by
  intro k
  have h1 : C (262144 * k + 41967) = 786432 * k + 125902 := by
    unfold C
    simp [show (262144 * k + 41967) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 125902) = 393216 * k + 62951 := by
    unfold C
    simp [show (786432 * k + 125902) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 62951) = 1179648 * k + 188854 := by
    unfold C
    simp [show (393216 * k + 62951) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 188854) = 589824 * k + 94427 := by
    unfold C
    simp [show (1179648 * k + 188854) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 94427) = 1769472 * k + 283282 := by
    unfold C
    simp [show (589824 * k + 94427) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 283282) = 884736 * k + 141641 := by
    unfold C
    simp [show (1769472 * k + 283282) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 141641) = 2654208 * k + 424924 := by
    unfold C
    simp [show (884736 * k + 141641) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 424924) = 1327104 * k + 212462 := by
    unfold C
    simp [show (2654208 * k + 424924) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 212462) = 663552 * k + 106231 := by
    unfold C
    simp [show (1327104 * k + 212462) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 106231) = 1990656 * k + 318694 := by
    unfold C
    simp [show (663552 * k + 106231) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 318694) = 995328 * k + 159347 := by
    unfold C
    simp [show (1990656 * k + 318694) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 159347) = 2985984 * k + 478042 := by
    unfold C
    simp [show (995328 * k + 159347) % 2 ≠ 0 by omega]
    omega
  have h13 : C (2985984 * k + 478042) = 1492992 * k + 239021 := by
    unfold C
    simp [show (2985984 * k + 478042) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 239021) = 4478976 * k + 717064 := by
    unfold C
    simp [show (1492992 * k + 239021) % 2 ≠ 0 by omega]
    omega
  have h15 : C (4478976 * k + 717064) = 2239488 * k + 358532 := by
    unfold C
    simp [show (4478976 * k + 717064) % 2 = 0 by omega]
    omega
  have h16 : C (2239488 * k + 358532) = 1119744 * k + 179266 := by
    unfold C
    simp [show (2239488 * k + 358532) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 179266) = 559872 * k + 89633 := by
    unfold C
    simp [show (1119744 * k + 179266) % 2 = 0 by omega]
    omega
  have h18 : C (559872 * k + 89633) = 1679616 * k + 268900 := by
    unfold C
    simp [show (559872 * k + 89633) % 2 ≠ 0 by omega]
    omega
  have h19 : C (1679616 * k + 268900) = 839808 * k + 134450 := by
    unfold C
    simp [show (1679616 * k + 268900) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 134450) = 419904 * k + 67225 := by
    unfold C
    simp [show (839808 * k + 134450) % 2 = 0 by omega]
    omega
  have h21 : C (419904 * k + 67225) = 1259712 * k + 201676 := by
    unfold C
    simp [show (419904 * k + 67225) % 2 ≠ 0 by omega]
    omega
  have h22 : C (1259712 * k + 201676) = 629856 * k + 100838 := by
    unfold C
    simp [show (1259712 * k + 201676) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 100838) = 314928 * k + 50419 := by
    unfold C
    simp [show (629856 * k + 100838) % 2 = 0 by omega]
    omega
  have h24 : C (314928 * k + 50419) = 944784 * k + 151258 := by
    unfold C
    simp [show (314928 * k + 50419) % 2 ≠ 0 by omega]
    omega
  have h25 : C (944784 * k + 151258) = 472392 * k + 75629 := by
    unfold C
    simp [show (944784 * k + 151258) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 75629) = 1417176 * k + 226888 := by
    unfold C
    simp [show (472392 * k + 75629) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 226888) = 708588 * k + 113444 := by
    unfold C
    simp [show (1417176 * k + 226888) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 113444) = 354294 * k + 56722 := by
    unfold C
    simp [show (708588 * k + 113444) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 56722) = 177147 * k + 28361 := by
    unfold C
    simp [show (354294 * k + 56722) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 41967) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 41967))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_42015 : ∀ k : Nat,
    iterate (262144 * k + 42015) 29 = 177147 * k + 28393 ∧
      177147 * k + 28393 < 262144 * k + 42015 := by
  intro k
  have h1 : C (262144 * k + 42015) = 786432 * k + 126046 := by
    unfold C
    simp [show (262144 * k + 42015) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 126046) = 393216 * k + 63023 := by
    unfold C
    simp [show (786432 * k + 126046) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 63023) = 1179648 * k + 189070 := by
    unfold C
    simp [show (393216 * k + 63023) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 189070) = 589824 * k + 94535 := by
    unfold C
    simp [show (1179648 * k + 189070) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 94535) = 1769472 * k + 283606 := by
    unfold C
    simp [show (589824 * k + 94535) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 283606) = 884736 * k + 141803 := by
    unfold C
    simp [show (1769472 * k + 283606) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 141803) = 2654208 * k + 425410 := by
    unfold C
    simp [show (884736 * k + 141803) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 425410) = 1327104 * k + 212705 := by
    unfold C
    simp [show (2654208 * k + 425410) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 212705) = 3981312 * k + 638116 := by
    unfold C
    simp [show (1327104 * k + 212705) % 2 ≠ 0 by omega]
    omega
  have h10 : C (3981312 * k + 638116) = 1990656 * k + 319058 := by
    unfold C
    simp [show (3981312 * k + 638116) % 2 = 0 by omega]
    omega
  have h11 : C (1990656 * k + 319058) = 995328 * k + 159529 := by
    unfold C
    simp [show (1990656 * k + 319058) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 159529) = 2985984 * k + 478588 := by
    unfold C
    simp [show (995328 * k + 159529) % 2 ≠ 0 by omega]
    omega
  have h13 : C (2985984 * k + 478588) = 1492992 * k + 239294 := by
    unfold C
    simp [show (2985984 * k + 478588) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 239294) = 746496 * k + 119647 := by
    unfold C
    simp [show (1492992 * k + 239294) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 119647) = 2239488 * k + 358942 := by
    unfold C
    simp [show (746496 * k + 119647) % 2 ≠ 0 by omega]
    omega
  have h16 : C (2239488 * k + 358942) = 1119744 * k + 179471 := by
    unfold C
    simp [show (2239488 * k + 358942) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 179471) = 3359232 * k + 538414 := by
    unfold C
    simp [show (1119744 * k + 179471) % 2 ≠ 0 by omega]
    omega
  have h18 : C (3359232 * k + 538414) = 1679616 * k + 269207 := by
    unfold C
    simp [show (3359232 * k + 538414) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 269207) = 5038848 * k + 807622 := by
    unfold C
    simp [show (1679616 * k + 269207) % 2 ≠ 0 by omega]
    omega
  have h20 : C (5038848 * k + 807622) = 2519424 * k + 403811 := by
    unfold C
    simp [show (5038848 * k + 807622) % 2 = 0 by omega]
    omega
  have h21 : C (2519424 * k + 403811) = 7558272 * k + 1211434 := by
    unfold C
    simp [show (2519424 * k + 403811) % 2 ≠ 0 by omega]
    omega
  have h22 : C (7558272 * k + 1211434) = 3779136 * k + 605717 := by
    unfold C
    simp [show (7558272 * k + 1211434) % 2 = 0 by omega]
    omega
  have h23 : C (3779136 * k + 605717) = 11337408 * k + 1817152 := by
    unfold C
    simp [show (3779136 * k + 605717) % 2 ≠ 0 by omega]
    omega
  have h24 : C (11337408 * k + 1817152) = 5668704 * k + 908576 := by
    unfold C
    simp [show (11337408 * k + 1817152) % 2 = 0 by omega]
    omega
  have h25 : C (5668704 * k + 908576) = 2834352 * k + 454288 := by
    unfold C
    simp [show (5668704 * k + 908576) % 2 = 0 by omega]
    omega
  have h26 : C (2834352 * k + 454288) = 1417176 * k + 227144 := by
    unfold C
    simp [show (2834352 * k + 454288) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 227144) = 708588 * k + 113572 := by
    unfold C
    simp [show (1417176 * k + 227144) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 113572) = 354294 * k + 56786 := by
    unfold C
    simp [show (708588 * k + 113572) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 56786) = 177147 * k + 28393 := by
    unfold C
    simp [show (354294 * k + 56786) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 42015) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 42015))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_42087 : ∀ k : Nat,
    iterate (262144 * k + 42087) 29 = 177147 * k + 28442 ∧
      177147 * k + 28442 < 262144 * k + 42087 := by
  intro k
  have h1 : C (262144 * k + 42087) = 786432 * k + 126262 := by
    unfold C
    simp [show (262144 * k + 42087) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 126262) = 393216 * k + 63131 := by
    unfold C
    simp [show (786432 * k + 126262) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 63131) = 1179648 * k + 189394 := by
    unfold C
    simp [show (393216 * k + 63131) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 189394) = 589824 * k + 94697 := by
    unfold C
    simp [show (1179648 * k + 189394) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 94697) = 1769472 * k + 284092 := by
    unfold C
    simp [show (589824 * k + 94697) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 284092) = 884736 * k + 142046 := by
    unfold C
    simp [show (1769472 * k + 284092) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 142046) = 442368 * k + 71023 := by
    unfold C
    simp [show (884736 * k + 142046) % 2 = 0 by omega]
    omega
  have h8 : C (442368 * k + 71023) = 1327104 * k + 213070 := by
    unfold C
    simp [show (442368 * k + 71023) % 2 ≠ 0 by omega]
    omega
  have h9 : C (1327104 * k + 213070) = 663552 * k + 106535 := by
    unfold C
    simp [show (1327104 * k + 213070) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 106535) = 1990656 * k + 319606 := by
    unfold C
    simp [show (663552 * k + 106535) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 319606) = 995328 * k + 159803 := by
    unfold C
    simp [show (1990656 * k + 319606) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 159803) = 2985984 * k + 479410 := by
    unfold C
    simp [show (995328 * k + 159803) % 2 ≠ 0 by omega]
    omega
  have h13 : C (2985984 * k + 479410) = 1492992 * k + 239705 := by
    unfold C
    simp [show (2985984 * k + 479410) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 239705) = 4478976 * k + 719116 := by
    unfold C
    simp [show (1492992 * k + 239705) % 2 ≠ 0 by omega]
    omega
  have h15 : C (4478976 * k + 719116) = 2239488 * k + 359558 := by
    unfold C
    simp [show (4478976 * k + 719116) % 2 = 0 by omega]
    omega
  have h16 : C (2239488 * k + 359558) = 1119744 * k + 179779 := by
    unfold C
    simp [show (2239488 * k + 359558) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 179779) = 3359232 * k + 539338 := by
    unfold C
    simp [show (1119744 * k + 179779) % 2 ≠ 0 by omega]
    omega
  have h18 : C (3359232 * k + 539338) = 1679616 * k + 269669 := by
    unfold C
    simp [show (3359232 * k + 539338) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 269669) = 5038848 * k + 809008 := by
    unfold C
    simp [show (1679616 * k + 269669) % 2 ≠ 0 by omega]
    omega
  have h20 : C (5038848 * k + 809008) = 2519424 * k + 404504 := by
    unfold C
    simp [show (5038848 * k + 809008) % 2 = 0 by omega]
    omega
  have h21 : C (2519424 * k + 404504) = 1259712 * k + 202252 := by
    unfold C
    simp [show (2519424 * k + 404504) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 202252) = 629856 * k + 101126 := by
    unfold C
    simp [show (1259712 * k + 202252) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 101126) = 314928 * k + 50563 := by
    unfold C
    simp [show (629856 * k + 101126) % 2 = 0 by omega]
    omega
  have h24 : C (314928 * k + 50563) = 944784 * k + 151690 := by
    unfold C
    simp [show (314928 * k + 50563) % 2 ≠ 0 by omega]
    omega
  have h25 : C (944784 * k + 151690) = 472392 * k + 75845 := by
    unfold C
    simp [show (944784 * k + 151690) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 75845) = 1417176 * k + 227536 := by
    unfold C
    simp [show (472392 * k + 75845) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 227536) = 708588 * k + 113768 := by
    unfold C
    simp [show (1417176 * k + 227536) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 113768) = 354294 * k + 56884 := by
    unfold C
    simp [show (708588 * k + 113768) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 56884) = 177147 * k + 28442 := by
    unfold C
    simp [show (354294 * k + 56884) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 42087) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 42087))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_42367 : ∀ k : Nat,
    iterate (262144 * k + 42367) 29 = 177147 * k + 28631 ∧
      177147 * k + 28631 < 262144 * k + 42367 := by
  intro k
  have h1 : C (262144 * k + 42367) = 786432 * k + 127102 := by
    unfold C
    simp [show (262144 * k + 42367) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 127102) = 393216 * k + 63551 := by
    unfold C
    simp [show (786432 * k + 127102) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 63551) = 1179648 * k + 190654 := by
    unfold C
    simp [show (393216 * k + 63551) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 190654) = 589824 * k + 95327 := by
    unfold C
    simp [show (1179648 * k + 190654) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 95327) = 1769472 * k + 285982 := by
    unfold C
    simp [show (589824 * k + 95327) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 285982) = 884736 * k + 142991 := by
    unfold C
    simp [show (1769472 * k + 285982) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 142991) = 2654208 * k + 428974 := by
    unfold C
    simp [show (884736 * k + 142991) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 428974) = 1327104 * k + 214487 := by
    unfold C
    simp [show (2654208 * k + 428974) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 214487) = 3981312 * k + 643462 := by
    unfold C
    simp [show (1327104 * k + 214487) % 2 ≠ 0 by omega]
    omega
  have h10 : C (3981312 * k + 643462) = 1990656 * k + 321731 := by
    unfold C
    simp [show (3981312 * k + 643462) % 2 = 0 by omega]
    omega
  have h11 : C (1990656 * k + 321731) = 5971968 * k + 965194 := by
    unfold C
    simp [show (1990656 * k + 321731) % 2 ≠ 0 by omega]
    omega
  have h12 : C (5971968 * k + 965194) = 2985984 * k + 482597 := by
    unfold C
    simp [show (5971968 * k + 965194) % 2 = 0 by omega]
    omega
  have h13 : C (2985984 * k + 482597) = 8957952 * k + 1447792 := by
    unfold C
    simp [show (2985984 * k + 482597) % 2 ≠ 0 by omega]
    omega
  have h14 : C (8957952 * k + 1447792) = 4478976 * k + 723896 := by
    unfold C
    simp [show (8957952 * k + 1447792) % 2 = 0 by omega]
    omega
  have h15 : C (4478976 * k + 723896) = 2239488 * k + 361948 := by
    unfold C
    simp [show (4478976 * k + 723896) % 2 = 0 by omega]
    omega
  have h16 : C (2239488 * k + 361948) = 1119744 * k + 180974 := by
    unfold C
    simp [show (2239488 * k + 361948) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 180974) = 559872 * k + 90487 := by
    unfold C
    simp [show (1119744 * k + 180974) % 2 = 0 by omega]
    omega
  have h18 : C (559872 * k + 90487) = 1679616 * k + 271462 := by
    unfold C
    simp [show (559872 * k + 90487) % 2 ≠ 0 by omega]
    omega
  have h19 : C (1679616 * k + 271462) = 839808 * k + 135731 := by
    unfold C
    simp [show (1679616 * k + 271462) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 135731) = 2519424 * k + 407194 := by
    unfold C
    simp [show (839808 * k + 135731) % 2 ≠ 0 by omega]
    omega
  have h21 : C (2519424 * k + 407194) = 1259712 * k + 203597 := by
    unfold C
    simp [show (2519424 * k + 407194) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 203597) = 3779136 * k + 610792 := by
    unfold C
    simp [show (1259712 * k + 203597) % 2 ≠ 0 by omega]
    omega
  have h23 : C (3779136 * k + 610792) = 1889568 * k + 305396 := by
    unfold C
    simp [show (3779136 * k + 610792) % 2 = 0 by omega]
    omega
  have h24 : C (1889568 * k + 305396) = 944784 * k + 152698 := by
    unfold C
    simp [show (1889568 * k + 305396) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 152698) = 472392 * k + 76349 := by
    unfold C
    simp [show (944784 * k + 152698) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 76349) = 1417176 * k + 229048 := by
    unfold C
    simp [show (472392 * k + 76349) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 229048) = 708588 * k + 114524 := by
    unfold C
    simp [show (1417176 * k + 229048) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 114524) = 354294 * k + 57262 := by
    unfold C
    simp [show (708588 * k + 114524) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 57262) = 177147 * k + 28631 := by
    unfold C
    simp [show (354294 * k + 57262) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 42367) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 42367))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_43455 : ∀ k : Nat,
    iterate (262144 * k + 43455) 29 = 177147 * k + 29366 ∧
      177147 * k + 29366 < 262144 * k + 43455 := by
  intro k
  have h1 : C (262144 * k + 43455) = 786432 * k + 130366 := by
    unfold C
    simp [show (262144 * k + 43455) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 130366) = 393216 * k + 65183 := by
    unfold C
    simp [show (786432 * k + 130366) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 65183) = 1179648 * k + 195550 := by
    unfold C
    simp [show (393216 * k + 65183) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 195550) = 589824 * k + 97775 := by
    unfold C
    simp [show (1179648 * k + 195550) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 97775) = 1769472 * k + 293326 := by
    unfold C
    simp [show (589824 * k + 97775) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 293326) = 884736 * k + 146663 := by
    unfold C
    simp [show (1769472 * k + 293326) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 146663) = 2654208 * k + 439990 := by
    unfold C
    simp [show (884736 * k + 146663) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 439990) = 1327104 * k + 219995 := by
    unfold C
    simp [show (2654208 * k + 439990) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 219995) = 3981312 * k + 659986 := by
    unfold C
    simp [show (1327104 * k + 219995) % 2 ≠ 0 by omega]
    omega
  have h10 : C (3981312 * k + 659986) = 1990656 * k + 329993 := by
    unfold C
    simp [show (3981312 * k + 659986) % 2 = 0 by omega]
    omega
  have h11 : C (1990656 * k + 329993) = 5971968 * k + 989980 := by
    unfold C
    simp [show (1990656 * k + 329993) % 2 ≠ 0 by omega]
    omega
  have h12 : C (5971968 * k + 989980) = 2985984 * k + 494990 := by
    unfold C
    simp [show (5971968 * k + 989980) % 2 = 0 by omega]
    omega
  have h13 : C (2985984 * k + 494990) = 1492992 * k + 247495 := by
    unfold C
    simp [show (2985984 * k + 494990) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 247495) = 4478976 * k + 742486 := by
    unfold C
    simp [show (1492992 * k + 247495) % 2 ≠ 0 by omega]
    omega
  have h15 : C (4478976 * k + 742486) = 2239488 * k + 371243 := by
    unfold C
    simp [show (4478976 * k + 742486) % 2 = 0 by omega]
    omega
  have h16 : C (2239488 * k + 371243) = 6718464 * k + 1113730 := by
    unfold C
    simp [show (2239488 * k + 371243) % 2 ≠ 0 by omega]
    omega
  have h17 : C (6718464 * k + 1113730) = 3359232 * k + 556865 := by
    unfold C
    simp [show (6718464 * k + 1113730) % 2 = 0 by omega]
    omega
  have h18 : C (3359232 * k + 556865) = 10077696 * k + 1670596 := by
    unfold C
    simp [show (3359232 * k + 556865) % 2 ≠ 0 by omega]
    omega
  have h19 : C (10077696 * k + 1670596) = 5038848 * k + 835298 := by
    unfold C
    simp [show (10077696 * k + 1670596) % 2 = 0 by omega]
    omega
  have h20 : C (5038848 * k + 835298) = 2519424 * k + 417649 := by
    unfold C
    simp [show (5038848 * k + 835298) % 2 = 0 by omega]
    omega
  have h21 : C (2519424 * k + 417649) = 7558272 * k + 1252948 := by
    unfold C
    simp [show (2519424 * k + 417649) % 2 ≠ 0 by omega]
    omega
  have h22 : C (7558272 * k + 1252948) = 3779136 * k + 626474 := by
    unfold C
    simp [show (7558272 * k + 1252948) % 2 = 0 by omega]
    omega
  have h23 : C (3779136 * k + 626474) = 1889568 * k + 313237 := by
    unfold C
    simp [show (3779136 * k + 626474) % 2 = 0 by omega]
    omega
  have h24 : C (1889568 * k + 313237) = 5668704 * k + 939712 := by
    unfold C
    simp [show (1889568 * k + 313237) % 2 ≠ 0 by omega]
    omega
  have h25 : C (5668704 * k + 939712) = 2834352 * k + 469856 := by
    unfold C
    simp [show (5668704 * k + 939712) % 2 = 0 by omega]
    omega
  have h26 : C (2834352 * k + 469856) = 1417176 * k + 234928 := by
    unfold C
    simp [show (2834352 * k + 469856) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 234928) = 708588 * k + 117464 := by
    unfold C
    simp [show (1417176 * k + 234928) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 117464) = 354294 * k + 58732 := by
    unfold C
    simp [show (708588 * k + 117464) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 58732) = 177147 * k + 29366 := by
    unfold C
    simp [show (354294 * k + 58732) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 43455) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 43455))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_44063 : ∀ k : Nat,
    iterate (262144 * k + 44063) 29 = 177147 * k + 29777 ∧
      177147 * k + 29777 < 262144 * k + 44063 := by
  intro k
  have h1 : C (262144 * k + 44063) = 786432 * k + 132190 := by
    unfold C
    simp [show (262144 * k + 44063) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 132190) = 393216 * k + 66095 := by
    unfold C
    simp [show (786432 * k + 132190) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 66095) = 1179648 * k + 198286 := by
    unfold C
    simp [show (393216 * k + 66095) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 198286) = 589824 * k + 99143 := by
    unfold C
    simp [show (1179648 * k + 198286) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 99143) = 1769472 * k + 297430 := by
    unfold C
    simp [show (589824 * k + 99143) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 297430) = 884736 * k + 148715 := by
    unfold C
    simp [show (1769472 * k + 297430) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 148715) = 2654208 * k + 446146 := by
    unfold C
    simp [show (884736 * k + 148715) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 446146) = 1327104 * k + 223073 := by
    unfold C
    simp [show (2654208 * k + 446146) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 223073) = 3981312 * k + 669220 := by
    unfold C
    simp [show (1327104 * k + 223073) % 2 ≠ 0 by omega]
    omega
  have h10 : C (3981312 * k + 669220) = 1990656 * k + 334610 := by
    unfold C
    simp [show (3981312 * k + 669220) % 2 = 0 by omega]
    omega
  have h11 : C (1990656 * k + 334610) = 995328 * k + 167305 := by
    unfold C
    simp [show (1990656 * k + 334610) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 167305) = 2985984 * k + 501916 := by
    unfold C
    simp [show (995328 * k + 167305) % 2 ≠ 0 by omega]
    omega
  have h13 : C (2985984 * k + 501916) = 1492992 * k + 250958 := by
    unfold C
    simp [show (2985984 * k + 501916) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 250958) = 746496 * k + 125479 := by
    unfold C
    simp [show (1492992 * k + 250958) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 125479) = 2239488 * k + 376438 := by
    unfold C
    simp [show (746496 * k + 125479) % 2 ≠ 0 by omega]
    omega
  have h16 : C (2239488 * k + 376438) = 1119744 * k + 188219 := by
    unfold C
    simp [show (2239488 * k + 376438) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 188219) = 3359232 * k + 564658 := by
    unfold C
    simp [show (1119744 * k + 188219) % 2 ≠ 0 by omega]
    omega
  have h18 : C (3359232 * k + 564658) = 1679616 * k + 282329 := by
    unfold C
    simp [show (3359232 * k + 564658) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 282329) = 5038848 * k + 846988 := by
    unfold C
    simp [show (1679616 * k + 282329) % 2 ≠ 0 by omega]
    omega
  have h20 : C (5038848 * k + 846988) = 2519424 * k + 423494 := by
    unfold C
    simp [show (5038848 * k + 846988) % 2 = 0 by omega]
    omega
  have h21 : C (2519424 * k + 423494) = 1259712 * k + 211747 := by
    unfold C
    simp [show (2519424 * k + 423494) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 211747) = 3779136 * k + 635242 := by
    unfold C
    simp [show (1259712 * k + 211747) % 2 ≠ 0 by omega]
    omega
  have h23 : C (3779136 * k + 635242) = 1889568 * k + 317621 := by
    unfold C
    simp [show (3779136 * k + 635242) % 2 = 0 by omega]
    omega
  have h24 : C (1889568 * k + 317621) = 5668704 * k + 952864 := by
    unfold C
    simp [show (1889568 * k + 317621) % 2 ≠ 0 by omega]
    omega
  have h25 : C (5668704 * k + 952864) = 2834352 * k + 476432 := by
    unfold C
    simp [show (5668704 * k + 952864) % 2 = 0 by omega]
    omega
  have h26 : C (2834352 * k + 476432) = 1417176 * k + 238216 := by
    unfold C
    simp [show (2834352 * k + 476432) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 238216) = 708588 * k + 119108 := by
    unfold C
    simp [show (1417176 * k + 238216) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 119108) = 354294 * k + 59554 := by
    unfold C
    simp [show (708588 * k + 119108) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 59554) = 177147 * k + 29777 := by
    unfold C
    simp [show (354294 * k + 59554) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 44063) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 44063))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_44123 : ∀ k : Nat,
    iterate (262144 * k + 44123) 29 = 177147 * k + 29818 ∧
      177147 * k + 29818 < 262144 * k + 44123 := by
  intro k
  have h1 : C (262144 * k + 44123) = 786432 * k + 132370 := by
    unfold C
    simp [show (262144 * k + 44123) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 132370) = 393216 * k + 66185 := by
    unfold C
    simp [show (786432 * k + 132370) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 66185) = 1179648 * k + 198556 := by
    unfold C
    simp [show (393216 * k + 66185) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 198556) = 589824 * k + 99278 := by
    unfold C
    simp [show (1179648 * k + 198556) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 99278) = 294912 * k + 49639 := by
    unfold C
    simp [show (589824 * k + 99278) % 2 = 0 by omega]
    omega
  have h6 : C (294912 * k + 49639) = 884736 * k + 148918 := by
    unfold C
    simp [show (294912 * k + 49639) % 2 ≠ 0 by omega]
    omega
  have h7 : C (884736 * k + 148918) = 442368 * k + 74459 := by
    unfold C
    simp [show (884736 * k + 148918) % 2 = 0 by omega]
    omega
  have h8 : C (442368 * k + 74459) = 1327104 * k + 223378 := by
    unfold C
    simp [show (442368 * k + 74459) % 2 ≠ 0 by omega]
    omega
  have h9 : C (1327104 * k + 223378) = 663552 * k + 111689 := by
    unfold C
    simp [show (1327104 * k + 223378) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 111689) = 1990656 * k + 335068 := by
    unfold C
    simp [show (663552 * k + 111689) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 335068) = 995328 * k + 167534 := by
    unfold C
    simp [show (1990656 * k + 335068) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 167534) = 497664 * k + 83767 := by
    unfold C
    simp [show (995328 * k + 167534) % 2 = 0 by omega]
    omega
  have h13 : C (497664 * k + 83767) = 1492992 * k + 251302 := by
    unfold C
    simp [show (497664 * k + 83767) % 2 ≠ 0 by omega]
    omega
  have h14 : C (1492992 * k + 251302) = 746496 * k + 125651 := by
    unfold C
    simp [show (1492992 * k + 251302) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 125651) = 2239488 * k + 376954 := by
    unfold C
    simp [show (746496 * k + 125651) % 2 ≠ 0 by omega]
    omega
  have h16 : C (2239488 * k + 376954) = 1119744 * k + 188477 := by
    unfold C
    simp [show (2239488 * k + 376954) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 188477) = 3359232 * k + 565432 := by
    unfold C
    simp [show (1119744 * k + 188477) % 2 ≠ 0 by omega]
    omega
  have h18 : C (3359232 * k + 565432) = 1679616 * k + 282716 := by
    unfold C
    simp [show (3359232 * k + 565432) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 282716) = 839808 * k + 141358 := by
    unfold C
    simp [show (1679616 * k + 282716) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 141358) = 419904 * k + 70679 := by
    unfold C
    simp [show (839808 * k + 141358) % 2 = 0 by omega]
    omega
  have h21 : C (419904 * k + 70679) = 1259712 * k + 212038 := by
    unfold C
    simp [show (419904 * k + 70679) % 2 ≠ 0 by omega]
    omega
  have h22 : C (1259712 * k + 212038) = 629856 * k + 106019 := by
    unfold C
    simp [show (1259712 * k + 212038) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 106019) = 1889568 * k + 318058 := by
    unfold C
    simp [show (629856 * k + 106019) % 2 ≠ 0 by omega]
    omega
  have h24 : C (1889568 * k + 318058) = 944784 * k + 159029 := by
    unfold C
    simp [show (1889568 * k + 318058) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 159029) = 2834352 * k + 477088 := by
    unfold C
    simp [show (944784 * k + 159029) % 2 ≠ 0 by omega]
    omega
  have h26 : C (2834352 * k + 477088) = 1417176 * k + 238544 := by
    unfold C
    simp [show (2834352 * k + 477088) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 238544) = 708588 * k + 119272 := by
    unfold C
    simp [show (1417176 * k + 238544) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 119272) = 354294 * k + 59636 := by
    unfold C
    simp [show (708588 * k + 119272) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 59636) = 177147 * k + 29818 := by
    unfold C
    simp [show (354294 * k + 59636) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 44123) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 44123))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_44479 : ∀ k : Nat,
    iterate (262144 * k + 44479) 29 = 177147 * k + 30058 ∧
      177147 * k + 30058 < 262144 * k + 44479 := by
  intro k
  have h1 : C (262144 * k + 44479) = 786432 * k + 133438 := by
    unfold C
    simp [show (262144 * k + 44479) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 133438) = 393216 * k + 66719 := by
    unfold C
    simp [show (786432 * k + 133438) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 66719) = 1179648 * k + 200158 := by
    unfold C
    simp [show (393216 * k + 66719) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 200158) = 589824 * k + 100079 := by
    unfold C
    simp [show (1179648 * k + 200158) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 100079) = 1769472 * k + 300238 := by
    unfold C
    simp [show (589824 * k + 100079) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 300238) = 884736 * k + 150119 := by
    unfold C
    simp [show (1769472 * k + 300238) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 150119) = 2654208 * k + 450358 := by
    unfold C
    simp [show (884736 * k + 150119) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 450358) = 1327104 * k + 225179 := by
    unfold C
    simp [show (2654208 * k + 450358) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 225179) = 3981312 * k + 675538 := by
    unfold C
    simp [show (1327104 * k + 225179) % 2 ≠ 0 by omega]
    omega
  have h10 : C (3981312 * k + 675538) = 1990656 * k + 337769 := by
    unfold C
    simp [show (3981312 * k + 675538) % 2 = 0 by omega]
    omega
  have h11 : C (1990656 * k + 337769) = 5971968 * k + 1013308 := by
    unfold C
    simp [show (1990656 * k + 337769) % 2 ≠ 0 by omega]
    omega
  have h12 : C (5971968 * k + 1013308) = 2985984 * k + 506654 := by
    unfold C
    simp [show (5971968 * k + 1013308) % 2 = 0 by omega]
    omega
  have h13 : C (2985984 * k + 506654) = 1492992 * k + 253327 := by
    unfold C
    simp [show (2985984 * k + 506654) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 253327) = 4478976 * k + 759982 := by
    unfold C
    simp [show (1492992 * k + 253327) % 2 ≠ 0 by omega]
    omega
  have h15 : C (4478976 * k + 759982) = 2239488 * k + 379991 := by
    unfold C
    simp [show (4478976 * k + 759982) % 2 = 0 by omega]
    omega
  have h16 : C (2239488 * k + 379991) = 6718464 * k + 1139974 := by
    unfold C
    simp [show (2239488 * k + 379991) % 2 ≠ 0 by omega]
    omega
  have h17 : C (6718464 * k + 1139974) = 3359232 * k + 569987 := by
    unfold C
    simp [show (6718464 * k + 1139974) % 2 = 0 by omega]
    omega
  have h18 : C (3359232 * k + 569987) = 10077696 * k + 1709962 := by
    unfold C
    simp [show (3359232 * k + 569987) % 2 ≠ 0 by omega]
    omega
  have h19 : C (10077696 * k + 1709962) = 5038848 * k + 854981 := by
    unfold C
    simp [show (10077696 * k + 1709962) % 2 = 0 by omega]
    omega
  have h20 : C (5038848 * k + 854981) = 15116544 * k + 2564944 := by
    unfold C
    simp [show (5038848 * k + 854981) % 2 ≠ 0 by omega]
    omega
  have h21 : C (15116544 * k + 2564944) = 7558272 * k + 1282472 := by
    unfold C
    simp [show (15116544 * k + 2564944) % 2 = 0 by omega]
    omega
  have h22 : C (7558272 * k + 1282472) = 3779136 * k + 641236 := by
    unfold C
    simp [show (7558272 * k + 1282472) % 2 = 0 by omega]
    omega
  have h23 : C (3779136 * k + 641236) = 1889568 * k + 320618 := by
    unfold C
    simp [show (3779136 * k + 641236) % 2 = 0 by omega]
    omega
  have h24 : C (1889568 * k + 320618) = 944784 * k + 160309 := by
    unfold C
    simp [show (1889568 * k + 320618) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 160309) = 2834352 * k + 480928 := by
    unfold C
    simp [show (944784 * k + 160309) % 2 ≠ 0 by omega]
    omega
  have h26 : C (2834352 * k + 480928) = 1417176 * k + 240464 := by
    unfold C
    simp [show (2834352 * k + 480928) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 240464) = 708588 * k + 120232 := by
    unfold C
    simp [show (1417176 * k + 240464) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 120232) = 354294 * k + 60116 := by
    unfold C
    simp [show (708588 * k + 120232) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 60116) = 177147 * k + 30058 := by
    unfold C
    simp [show (354294 * k + 60116) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 44479) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 44479))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

end CollatzM18Shard008
