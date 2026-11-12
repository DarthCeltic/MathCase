import Mathlib.Data.Nat.Prime.Basic

namespace CollatzM18Shard017

def C (n : Nat) : Nat := if n % 2 = 0 then n / 2 else 3 * n + 1

def iterate (n t : Nat) : Nat := Nat.rec n (fun _ previous => C previous) t

theorem descent_mod262144_84031 : ∀ k : Nat,
    iterate (262144 * k + 84031) 29 = 177147 * k + 56786 ∧
      177147 * k + 56786 < 262144 * k + 84031 := by
  intro k
  have h1 : C (262144 * k + 84031) = 786432 * k + 252094 := by
    unfold C
    simp [show (262144 * k + 84031) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 252094) = 393216 * k + 126047 := by
    unfold C
    simp [show (786432 * k + 252094) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 126047) = 1179648 * k + 378142 := by
    unfold C
    simp [show (393216 * k + 126047) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 378142) = 589824 * k + 189071 := by
    unfold C
    simp [show (1179648 * k + 378142) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 189071) = 1769472 * k + 567214 := by
    unfold C
    simp [show (589824 * k + 189071) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 567214) = 884736 * k + 283607 := by
    unfold C
    simp [show (1769472 * k + 567214) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 283607) = 2654208 * k + 850822 := by
    unfold C
    simp [show (884736 * k + 283607) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 850822) = 1327104 * k + 425411 := by
    unfold C
    simp [show (2654208 * k + 850822) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 425411) = 3981312 * k + 1276234 := by
    unfold C
    simp [show (1327104 * k + 425411) % 2 ≠ 0 by omega]
    omega
  have h10 : C (3981312 * k + 1276234) = 1990656 * k + 638117 := by
    unfold C
    simp [show (3981312 * k + 1276234) % 2 = 0 by omega]
    omega
  have h11 : C (1990656 * k + 638117) = 5971968 * k + 1914352 := by
    unfold C
    simp [show (1990656 * k + 638117) % 2 ≠ 0 by omega]
    omega
  have h12 : C (5971968 * k + 1914352) = 2985984 * k + 957176 := by
    unfold C
    simp [show (5971968 * k + 1914352) % 2 = 0 by omega]
    omega
  have h13 : C (2985984 * k + 957176) = 1492992 * k + 478588 := by
    unfold C
    simp [show (2985984 * k + 957176) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 478588) = 746496 * k + 239294 := by
    unfold C
    simp [show (1492992 * k + 478588) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 239294) = 373248 * k + 119647 := by
    unfold C
    simp [show (746496 * k + 239294) % 2 = 0 by omega]
    omega
  have h16 : C (373248 * k + 119647) = 1119744 * k + 358942 := by
    unfold C
    simp [show (373248 * k + 119647) % 2 ≠ 0 by omega]
    omega
  have h17 : C (1119744 * k + 358942) = 559872 * k + 179471 := by
    unfold C
    simp [show (1119744 * k + 358942) % 2 = 0 by omega]
    omega
  have h18 : C (559872 * k + 179471) = 1679616 * k + 538414 := by
    unfold C
    simp [show (559872 * k + 179471) % 2 ≠ 0 by omega]
    omega
  have h19 : C (1679616 * k + 538414) = 839808 * k + 269207 := by
    unfold C
    simp [show (1679616 * k + 538414) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 269207) = 2519424 * k + 807622 := by
    unfold C
    simp [show (839808 * k + 269207) % 2 ≠ 0 by omega]
    omega
  have h21 : C (2519424 * k + 807622) = 1259712 * k + 403811 := by
    unfold C
    simp [show (2519424 * k + 807622) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 403811) = 3779136 * k + 1211434 := by
    unfold C
    simp [show (1259712 * k + 403811) % 2 ≠ 0 by omega]
    omega
  have h23 : C (3779136 * k + 1211434) = 1889568 * k + 605717 := by
    unfold C
    simp [show (3779136 * k + 1211434) % 2 = 0 by omega]
    omega
  have h24 : C (1889568 * k + 605717) = 5668704 * k + 1817152 := by
    unfold C
    simp [show (1889568 * k + 605717) % 2 ≠ 0 by omega]
    omega
  have h25 : C (5668704 * k + 1817152) = 2834352 * k + 908576 := by
    unfold C
    simp [show (5668704 * k + 1817152) % 2 = 0 by omega]
    omega
  have h26 : C (2834352 * k + 908576) = 1417176 * k + 454288 := by
    unfold C
    simp [show (2834352 * k + 908576) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 454288) = 708588 * k + 227144 := by
    unfold C
    simp [show (1417176 * k + 454288) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 227144) = 354294 * k + 113572 := by
    unfold C
    simp [show (708588 * k + 227144) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 113572) = 177147 * k + 56786 := by
    unfold C
    simp [show (354294 * k + 113572) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 84031) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 84031))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_84039 : ∀ k : Nat,
    iterate (262144 * k + 84039) 29 = 177147 * k + 56792 ∧
      177147 * k + 56792 < 262144 * k + 84039 := by
  intro k
  have h1 : C (262144 * k + 84039) = 786432 * k + 252118 := by
    unfold C
    simp [show (262144 * k + 84039) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 252118) = 393216 * k + 126059 := by
    unfold C
    simp [show (786432 * k + 252118) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 126059) = 1179648 * k + 378178 := by
    unfold C
    simp [show (393216 * k + 126059) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 378178) = 589824 * k + 189089 := by
    unfold C
    simp [show (1179648 * k + 378178) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 189089) = 1769472 * k + 567268 := by
    unfold C
    simp [show (589824 * k + 189089) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 567268) = 884736 * k + 283634 := by
    unfold C
    simp [show (1769472 * k + 567268) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 283634) = 442368 * k + 141817 := by
    unfold C
    simp [show (884736 * k + 283634) % 2 = 0 by omega]
    omega
  have h8 : C (442368 * k + 141817) = 1327104 * k + 425452 := by
    unfold C
    simp [show (442368 * k + 141817) % 2 ≠ 0 by omega]
    omega
  have h9 : C (1327104 * k + 425452) = 663552 * k + 212726 := by
    unfold C
    simp [show (1327104 * k + 425452) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 212726) = 331776 * k + 106363 := by
    unfold C
    simp [show (663552 * k + 212726) % 2 = 0 by omega]
    omega
  have h11 : C (331776 * k + 106363) = 995328 * k + 319090 := by
    unfold C
    simp [show (331776 * k + 106363) % 2 ≠ 0 by omega]
    omega
  have h12 : C (995328 * k + 319090) = 497664 * k + 159545 := by
    unfold C
    simp [show (995328 * k + 319090) % 2 = 0 by omega]
    omega
  have h13 : C (497664 * k + 159545) = 1492992 * k + 478636 := by
    unfold C
    simp [show (497664 * k + 159545) % 2 ≠ 0 by omega]
    omega
  have h14 : C (1492992 * k + 478636) = 746496 * k + 239318 := by
    unfold C
    simp [show (1492992 * k + 478636) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 239318) = 373248 * k + 119659 := by
    unfold C
    simp [show (746496 * k + 239318) % 2 = 0 by omega]
    omega
  have h16 : C (373248 * k + 119659) = 1119744 * k + 358978 := by
    unfold C
    simp [show (373248 * k + 119659) % 2 ≠ 0 by omega]
    omega
  have h17 : C (1119744 * k + 358978) = 559872 * k + 179489 := by
    unfold C
    simp [show (1119744 * k + 358978) % 2 = 0 by omega]
    omega
  have h18 : C (559872 * k + 179489) = 1679616 * k + 538468 := by
    unfold C
    simp [show (559872 * k + 179489) % 2 ≠ 0 by omega]
    omega
  have h19 : C (1679616 * k + 538468) = 839808 * k + 269234 := by
    unfold C
    simp [show (1679616 * k + 538468) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 269234) = 419904 * k + 134617 := by
    unfold C
    simp [show (839808 * k + 269234) % 2 = 0 by omega]
    omega
  have h21 : C (419904 * k + 134617) = 1259712 * k + 403852 := by
    unfold C
    simp [show (419904 * k + 134617) % 2 ≠ 0 by omega]
    omega
  have h22 : C (1259712 * k + 403852) = 629856 * k + 201926 := by
    unfold C
    simp [show (1259712 * k + 403852) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 201926) = 314928 * k + 100963 := by
    unfold C
    simp [show (629856 * k + 201926) % 2 = 0 by omega]
    omega
  have h24 : C (314928 * k + 100963) = 944784 * k + 302890 := by
    unfold C
    simp [show (314928 * k + 100963) % 2 ≠ 0 by omega]
    omega
  have h25 : C (944784 * k + 302890) = 472392 * k + 151445 := by
    unfold C
    simp [show (944784 * k + 302890) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 151445) = 1417176 * k + 454336 := by
    unfold C
    simp [show (472392 * k + 151445) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 454336) = 708588 * k + 227168 := by
    unfold C
    simp [show (1417176 * k + 454336) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 227168) = 354294 * k + 113584 := by
    unfold C
    simp [show (708588 * k + 227168) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 113584) = 177147 * k + 56792 := by
    unfold C
    simp [show (354294 * k + 113584) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 84039) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 84039))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_84071 : ∀ k : Nat,
    iterate (262144 * k + 84071) 29 = 177147 * k + 56813 ∧
      177147 * k + 56813 < 262144 * k + 84071 := by
  intro k
  have h1 : C (262144 * k + 84071) = 786432 * k + 252214 := by
    unfold C
    simp [show (262144 * k + 84071) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 252214) = 393216 * k + 126107 := by
    unfold C
    simp [show (786432 * k + 252214) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 126107) = 1179648 * k + 378322 := by
    unfold C
    simp [show (393216 * k + 126107) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 378322) = 589824 * k + 189161 := by
    unfold C
    simp [show (1179648 * k + 378322) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 189161) = 1769472 * k + 567484 := by
    unfold C
    simp [show (589824 * k + 189161) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 567484) = 884736 * k + 283742 := by
    unfold C
    simp [show (1769472 * k + 567484) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 283742) = 442368 * k + 141871 := by
    unfold C
    simp [show (884736 * k + 283742) % 2 = 0 by omega]
    omega
  have h8 : C (442368 * k + 141871) = 1327104 * k + 425614 := by
    unfold C
    simp [show (442368 * k + 141871) % 2 ≠ 0 by omega]
    omega
  have h9 : C (1327104 * k + 425614) = 663552 * k + 212807 := by
    unfold C
    simp [show (1327104 * k + 425614) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 212807) = 1990656 * k + 638422 := by
    unfold C
    simp [show (663552 * k + 212807) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 638422) = 995328 * k + 319211 := by
    unfold C
    simp [show (1990656 * k + 638422) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 319211) = 2985984 * k + 957634 := by
    unfold C
    simp [show (995328 * k + 319211) % 2 ≠ 0 by omega]
    omega
  have h13 : C (2985984 * k + 957634) = 1492992 * k + 478817 := by
    unfold C
    simp [show (2985984 * k + 957634) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 478817) = 4478976 * k + 1436452 := by
    unfold C
    simp [show (1492992 * k + 478817) % 2 ≠ 0 by omega]
    omega
  have h15 : C (4478976 * k + 1436452) = 2239488 * k + 718226 := by
    unfold C
    simp [show (4478976 * k + 1436452) % 2 = 0 by omega]
    omega
  have h16 : C (2239488 * k + 718226) = 1119744 * k + 359113 := by
    unfold C
    simp [show (2239488 * k + 718226) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 359113) = 3359232 * k + 1077340 := by
    unfold C
    simp [show (1119744 * k + 359113) % 2 ≠ 0 by omega]
    omega
  have h18 : C (3359232 * k + 1077340) = 1679616 * k + 538670 := by
    unfold C
    simp [show (3359232 * k + 1077340) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 538670) = 839808 * k + 269335 := by
    unfold C
    simp [show (1679616 * k + 538670) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 269335) = 2519424 * k + 808006 := by
    unfold C
    simp [show (839808 * k + 269335) % 2 ≠ 0 by omega]
    omega
  have h21 : C (2519424 * k + 808006) = 1259712 * k + 404003 := by
    unfold C
    simp [show (2519424 * k + 808006) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 404003) = 3779136 * k + 1212010 := by
    unfold C
    simp [show (1259712 * k + 404003) % 2 ≠ 0 by omega]
    omega
  have h23 : C (3779136 * k + 1212010) = 1889568 * k + 606005 := by
    unfold C
    simp [show (3779136 * k + 1212010) % 2 = 0 by omega]
    omega
  have h24 : C (1889568 * k + 606005) = 5668704 * k + 1818016 := by
    unfold C
    simp [show (1889568 * k + 606005) % 2 ≠ 0 by omega]
    omega
  have h25 : C (5668704 * k + 1818016) = 2834352 * k + 909008 := by
    unfold C
    simp [show (5668704 * k + 1818016) % 2 = 0 by omega]
    omega
  have h26 : C (2834352 * k + 909008) = 1417176 * k + 454504 := by
    unfold C
    simp [show (2834352 * k + 909008) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 454504) = 708588 * k + 227252 := by
    unfold C
    simp [show (1417176 * k + 454504) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 227252) = 354294 * k + 113626 := by
    unfold C
    simp [show (708588 * k + 227252) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 113626) = 177147 * k + 56813 := by
    unfold C
    simp [show (354294 * k + 113626) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 84071) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 84071))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_84199 : ∀ k : Nat,
    iterate (262144 * k + 84199) 29 = 177147 * k + 56900 ∧
      177147 * k + 56900 < 262144 * k + 84199 := by
  intro k
  have h1 : C (262144 * k + 84199) = 786432 * k + 252598 := by
    unfold C
    simp [show (262144 * k + 84199) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 252598) = 393216 * k + 126299 := by
    unfold C
    simp [show (786432 * k + 252598) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 126299) = 1179648 * k + 378898 := by
    unfold C
    simp [show (393216 * k + 126299) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 378898) = 589824 * k + 189449 := by
    unfold C
    simp [show (1179648 * k + 378898) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 189449) = 1769472 * k + 568348 := by
    unfold C
    simp [show (589824 * k + 189449) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 568348) = 884736 * k + 284174 := by
    unfold C
    simp [show (1769472 * k + 568348) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 284174) = 442368 * k + 142087 := by
    unfold C
    simp [show (884736 * k + 284174) % 2 = 0 by omega]
    omega
  have h8 : C (442368 * k + 142087) = 1327104 * k + 426262 := by
    unfold C
    simp [show (442368 * k + 142087) % 2 ≠ 0 by omega]
    omega
  have h9 : C (1327104 * k + 426262) = 663552 * k + 213131 := by
    unfold C
    simp [show (1327104 * k + 426262) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 213131) = 1990656 * k + 639394 := by
    unfold C
    simp [show (663552 * k + 213131) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 639394) = 995328 * k + 319697 := by
    unfold C
    simp [show (1990656 * k + 639394) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 319697) = 2985984 * k + 959092 := by
    unfold C
    simp [show (995328 * k + 319697) % 2 ≠ 0 by omega]
    omega
  have h13 : C (2985984 * k + 959092) = 1492992 * k + 479546 := by
    unfold C
    simp [show (2985984 * k + 959092) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 479546) = 746496 * k + 239773 := by
    unfold C
    simp [show (1492992 * k + 479546) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 239773) = 2239488 * k + 719320 := by
    unfold C
    simp [show (746496 * k + 239773) % 2 ≠ 0 by omega]
    omega
  have h16 : C (2239488 * k + 719320) = 1119744 * k + 359660 := by
    unfold C
    simp [show (2239488 * k + 719320) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 359660) = 559872 * k + 179830 := by
    unfold C
    simp [show (1119744 * k + 359660) % 2 = 0 by omega]
    omega
  have h18 : C (559872 * k + 179830) = 279936 * k + 89915 := by
    unfold C
    simp [show (559872 * k + 179830) % 2 = 0 by omega]
    omega
  have h19 : C (279936 * k + 89915) = 839808 * k + 269746 := by
    unfold C
    simp [show (279936 * k + 89915) % 2 ≠ 0 by omega]
    omega
  have h20 : C (839808 * k + 269746) = 419904 * k + 134873 := by
    unfold C
    simp [show (839808 * k + 269746) % 2 = 0 by omega]
    omega
  have h21 : C (419904 * k + 134873) = 1259712 * k + 404620 := by
    unfold C
    simp [show (419904 * k + 134873) % 2 ≠ 0 by omega]
    omega
  have h22 : C (1259712 * k + 404620) = 629856 * k + 202310 := by
    unfold C
    simp [show (1259712 * k + 404620) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 202310) = 314928 * k + 101155 := by
    unfold C
    simp [show (629856 * k + 202310) % 2 = 0 by omega]
    omega
  have h24 : C (314928 * k + 101155) = 944784 * k + 303466 := by
    unfold C
    simp [show (314928 * k + 101155) % 2 ≠ 0 by omega]
    omega
  have h25 : C (944784 * k + 303466) = 472392 * k + 151733 := by
    unfold C
    simp [show (944784 * k + 303466) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 151733) = 1417176 * k + 455200 := by
    unfold C
    simp [show (472392 * k + 151733) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 455200) = 708588 * k + 227600 := by
    unfold C
    simp [show (1417176 * k + 455200) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 227600) = 354294 * k + 113800 := by
    unfold C
    simp [show (708588 * k + 227600) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 113800) = 177147 * k + 56900 := by
    unfold C
    simp [show (354294 * k + 113800) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 84199) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 84199))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_84327 : ∀ k : Nat,
    iterate (262144 * k + 84327) 29 = 177147 * k + 56986 ∧
      177147 * k + 56986 < 262144 * k + 84327 := by
  intro k
  have h1 : C (262144 * k + 84327) = 786432 * k + 252982 := by
    unfold C
    simp [show (262144 * k + 84327) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 252982) = 393216 * k + 126491 := by
    unfold C
    simp [show (786432 * k + 252982) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 126491) = 1179648 * k + 379474 := by
    unfold C
    simp [show (393216 * k + 126491) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 379474) = 589824 * k + 189737 := by
    unfold C
    simp [show (1179648 * k + 379474) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 189737) = 1769472 * k + 569212 := by
    unfold C
    simp [show (589824 * k + 189737) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 569212) = 884736 * k + 284606 := by
    unfold C
    simp [show (1769472 * k + 569212) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 284606) = 442368 * k + 142303 := by
    unfold C
    simp [show (884736 * k + 284606) % 2 = 0 by omega]
    omega
  have h8 : C (442368 * k + 142303) = 1327104 * k + 426910 := by
    unfold C
    simp [show (442368 * k + 142303) % 2 ≠ 0 by omega]
    omega
  have h9 : C (1327104 * k + 426910) = 663552 * k + 213455 := by
    unfold C
    simp [show (1327104 * k + 426910) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 213455) = 1990656 * k + 640366 := by
    unfold C
    simp [show (663552 * k + 213455) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 640366) = 995328 * k + 320183 := by
    unfold C
    simp [show (1990656 * k + 640366) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 320183) = 2985984 * k + 960550 := by
    unfold C
    simp [show (995328 * k + 320183) % 2 ≠ 0 by omega]
    omega
  have h13 : C (2985984 * k + 960550) = 1492992 * k + 480275 := by
    unfold C
    simp [show (2985984 * k + 960550) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 480275) = 4478976 * k + 1440826 := by
    unfold C
    simp [show (1492992 * k + 480275) % 2 ≠ 0 by omega]
    omega
  have h15 : C (4478976 * k + 1440826) = 2239488 * k + 720413 := by
    unfold C
    simp [show (4478976 * k + 1440826) % 2 = 0 by omega]
    omega
  have h16 : C (2239488 * k + 720413) = 6718464 * k + 2161240 := by
    unfold C
    simp [show (2239488 * k + 720413) % 2 ≠ 0 by omega]
    omega
  have h17 : C (6718464 * k + 2161240) = 3359232 * k + 1080620 := by
    unfold C
    simp [show (6718464 * k + 2161240) % 2 = 0 by omega]
    omega
  have h18 : C (3359232 * k + 1080620) = 1679616 * k + 540310 := by
    unfold C
    simp [show (3359232 * k + 1080620) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 540310) = 839808 * k + 270155 := by
    unfold C
    simp [show (1679616 * k + 540310) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 270155) = 2519424 * k + 810466 := by
    unfold C
    simp [show (839808 * k + 270155) % 2 ≠ 0 by omega]
    omega
  have h21 : C (2519424 * k + 810466) = 1259712 * k + 405233 := by
    unfold C
    simp [show (2519424 * k + 810466) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 405233) = 3779136 * k + 1215700 := by
    unfold C
    simp [show (1259712 * k + 405233) % 2 ≠ 0 by omega]
    omega
  have h23 : C (3779136 * k + 1215700) = 1889568 * k + 607850 := by
    unfold C
    simp [show (3779136 * k + 1215700) % 2 = 0 by omega]
    omega
  have h24 : C (1889568 * k + 607850) = 944784 * k + 303925 := by
    unfold C
    simp [show (1889568 * k + 607850) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 303925) = 2834352 * k + 911776 := by
    unfold C
    simp [show (944784 * k + 303925) % 2 ≠ 0 by omega]
    omega
  have h26 : C (2834352 * k + 911776) = 1417176 * k + 455888 := by
    unfold C
    simp [show (2834352 * k + 911776) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 455888) = 708588 * k + 227944 := by
    unfold C
    simp [show (1417176 * k + 455888) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 227944) = 354294 * k + 113972 := by
    unfold C
    simp [show (708588 * k + 227944) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 113972) = 177147 * k + 56986 := by
    unfold C
    simp [show (354294 * k + 113972) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 84327) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 84327))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_84447 : ∀ k : Nat,
    iterate (262144 * k + 84447) 29 = 177147 * k + 57067 ∧
      177147 * k + 57067 < 262144 * k + 84447 := by
  intro k
  have h1 : C (262144 * k + 84447) = 786432 * k + 253342 := by
    unfold C
    simp [show (262144 * k + 84447) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 253342) = 393216 * k + 126671 := by
    unfold C
    simp [show (786432 * k + 253342) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 126671) = 1179648 * k + 380014 := by
    unfold C
    simp [show (393216 * k + 126671) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 380014) = 589824 * k + 190007 := by
    unfold C
    simp [show (1179648 * k + 380014) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 190007) = 1769472 * k + 570022 := by
    unfold C
    simp [show (589824 * k + 190007) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 570022) = 884736 * k + 285011 := by
    unfold C
    simp [show (1769472 * k + 570022) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 285011) = 2654208 * k + 855034 := by
    unfold C
    simp [show (884736 * k + 285011) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 855034) = 1327104 * k + 427517 := by
    unfold C
    simp [show (2654208 * k + 855034) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 427517) = 3981312 * k + 1282552 := by
    unfold C
    simp [show (1327104 * k + 427517) % 2 ≠ 0 by omega]
    omega
  have h10 : C (3981312 * k + 1282552) = 1990656 * k + 641276 := by
    unfold C
    simp [show (3981312 * k + 1282552) % 2 = 0 by omega]
    omega
  have h11 : C (1990656 * k + 641276) = 995328 * k + 320638 := by
    unfold C
    simp [show (1990656 * k + 641276) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 320638) = 497664 * k + 160319 := by
    unfold C
    simp [show (995328 * k + 320638) % 2 = 0 by omega]
    omega
  have h13 : C (497664 * k + 160319) = 1492992 * k + 480958 := by
    unfold C
    simp [show (497664 * k + 160319) % 2 ≠ 0 by omega]
    omega
  have h14 : C (1492992 * k + 480958) = 746496 * k + 240479 := by
    unfold C
    simp [show (1492992 * k + 480958) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 240479) = 2239488 * k + 721438 := by
    unfold C
    simp [show (746496 * k + 240479) % 2 ≠ 0 by omega]
    omega
  have h16 : C (2239488 * k + 721438) = 1119744 * k + 360719 := by
    unfold C
    simp [show (2239488 * k + 721438) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 360719) = 3359232 * k + 1082158 := by
    unfold C
    simp [show (1119744 * k + 360719) % 2 ≠ 0 by omega]
    omega
  have h18 : C (3359232 * k + 1082158) = 1679616 * k + 541079 := by
    unfold C
    simp [show (3359232 * k + 1082158) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 541079) = 5038848 * k + 1623238 := by
    unfold C
    simp [show (1679616 * k + 541079) % 2 ≠ 0 by omega]
    omega
  have h20 : C (5038848 * k + 1623238) = 2519424 * k + 811619 := by
    unfold C
    simp [show (5038848 * k + 1623238) % 2 = 0 by omega]
    omega
  have h21 : C (2519424 * k + 811619) = 7558272 * k + 2434858 := by
    unfold C
    simp [show (2519424 * k + 811619) % 2 ≠ 0 by omega]
    omega
  have h22 : C (7558272 * k + 2434858) = 3779136 * k + 1217429 := by
    unfold C
    simp [show (7558272 * k + 2434858) % 2 = 0 by omega]
    omega
  have h23 : C (3779136 * k + 1217429) = 11337408 * k + 3652288 := by
    unfold C
    simp [show (3779136 * k + 1217429) % 2 ≠ 0 by omega]
    omega
  have h24 : C (11337408 * k + 3652288) = 5668704 * k + 1826144 := by
    unfold C
    simp [show (11337408 * k + 3652288) % 2 = 0 by omega]
    omega
  have h25 : C (5668704 * k + 1826144) = 2834352 * k + 913072 := by
    unfold C
    simp [show (5668704 * k + 1826144) % 2 = 0 by omega]
    omega
  have h26 : C (2834352 * k + 913072) = 1417176 * k + 456536 := by
    unfold C
    simp [show (2834352 * k + 913072) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 456536) = 708588 * k + 228268 := by
    unfold C
    simp [show (1417176 * k + 456536) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 228268) = 354294 * k + 114134 := by
    unfold C
    simp [show (708588 * k + 228268) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 114134) = 177147 * k + 57067 := by
    unfold C
    simp [show (354294 * k + 114134) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 84447) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 84447))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_84607 : ∀ k : Nat,
    iterate (262144 * k + 84607) 29 = 177147 * k + 57175 ∧
      177147 * k + 57175 < 262144 * k + 84607 := by
  intro k
  have h1 : C (262144 * k + 84607) = 786432 * k + 253822 := by
    unfold C
    simp [show (262144 * k + 84607) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 253822) = 393216 * k + 126911 := by
    unfold C
    simp [show (786432 * k + 253822) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 126911) = 1179648 * k + 380734 := by
    unfold C
    simp [show (393216 * k + 126911) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 380734) = 589824 * k + 190367 := by
    unfold C
    simp [show (1179648 * k + 380734) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 190367) = 1769472 * k + 571102 := by
    unfold C
    simp [show (589824 * k + 190367) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 571102) = 884736 * k + 285551 := by
    unfold C
    simp [show (1769472 * k + 571102) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 285551) = 2654208 * k + 856654 := by
    unfold C
    simp [show (884736 * k + 285551) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 856654) = 1327104 * k + 428327 := by
    unfold C
    simp [show (2654208 * k + 856654) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 428327) = 3981312 * k + 1284982 := by
    unfold C
    simp [show (1327104 * k + 428327) % 2 ≠ 0 by omega]
    omega
  have h10 : C (3981312 * k + 1284982) = 1990656 * k + 642491 := by
    unfold C
    simp [show (3981312 * k + 1284982) % 2 = 0 by omega]
    omega
  have h11 : C (1990656 * k + 642491) = 5971968 * k + 1927474 := by
    unfold C
    simp [show (1990656 * k + 642491) % 2 ≠ 0 by omega]
    omega
  have h12 : C (5971968 * k + 1927474) = 2985984 * k + 963737 := by
    unfold C
    simp [show (5971968 * k + 1927474) % 2 = 0 by omega]
    omega
  have h13 : C (2985984 * k + 963737) = 8957952 * k + 2891212 := by
    unfold C
    simp [show (2985984 * k + 963737) % 2 ≠ 0 by omega]
    omega
  have h14 : C (8957952 * k + 2891212) = 4478976 * k + 1445606 := by
    unfold C
    simp [show (8957952 * k + 2891212) % 2 = 0 by omega]
    omega
  have h15 : C (4478976 * k + 1445606) = 2239488 * k + 722803 := by
    unfold C
    simp [show (4478976 * k + 1445606) % 2 = 0 by omega]
    omega
  have h16 : C (2239488 * k + 722803) = 6718464 * k + 2168410 := by
    unfold C
    simp [show (2239488 * k + 722803) % 2 ≠ 0 by omega]
    omega
  have h17 : C (6718464 * k + 2168410) = 3359232 * k + 1084205 := by
    unfold C
    simp [show (6718464 * k + 2168410) % 2 = 0 by omega]
    omega
  have h18 : C (3359232 * k + 1084205) = 10077696 * k + 3252616 := by
    unfold C
    simp [show (3359232 * k + 1084205) % 2 ≠ 0 by omega]
    omega
  have h19 : C (10077696 * k + 3252616) = 5038848 * k + 1626308 := by
    unfold C
    simp [show (10077696 * k + 3252616) % 2 = 0 by omega]
    omega
  have h20 : C (5038848 * k + 1626308) = 2519424 * k + 813154 := by
    unfold C
    simp [show (5038848 * k + 1626308) % 2 = 0 by omega]
    omega
  have h21 : C (2519424 * k + 813154) = 1259712 * k + 406577 := by
    unfold C
    simp [show (2519424 * k + 813154) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 406577) = 3779136 * k + 1219732 := by
    unfold C
    simp [show (1259712 * k + 406577) % 2 ≠ 0 by omega]
    omega
  have h23 : C (3779136 * k + 1219732) = 1889568 * k + 609866 := by
    unfold C
    simp [show (3779136 * k + 1219732) % 2 = 0 by omega]
    omega
  have h24 : C (1889568 * k + 609866) = 944784 * k + 304933 := by
    unfold C
    simp [show (1889568 * k + 609866) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 304933) = 2834352 * k + 914800 := by
    unfold C
    simp [show (944784 * k + 304933) % 2 ≠ 0 by omega]
    omega
  have h26 : C (2834352 * k + 914800) = 1417176 * k + 457400 := by
    unfold C
    simp [show (2834352 * k + 914800) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 457400) = 708588 * k + 228700 := by
    unfold C
    simp [show (1417176 * k + 457400) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 228700) = 354294 * k + 114350 := by
    unfold C
    simp [show (708588 * k + 228700) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 114350) = 177147 * k + 57175 := by
    unfold C
    simp [show (354294 * k + 114350) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 84607) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 84607))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_84639 : ∀ k : Nat,
    iterate (262144 * k + 84639) 29 = 177147 * k + 57197 ∧
      177147 * k + 57197 < 262144 * k + 84639 := by
  intro k
  have h1 : C (262144 * k + 84639) = 786432 * k + 253918 := by
    unfold C
    simp [show (262144 * k + 84639) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 253918) = 393216 * k + 126959 := by
    unfold C
    simp [show (786432 * k + 253918) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 126959) = 1179648 * k + 380878 := by
    unfold C
    simp [show (393216 * k + 126959) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 380878) = 589824 * k + 190439 := by
    unfold C
    simp [show (1179648 * k + 380878) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 190439) = 1769472 * k + 571318 := by
    unfold C
    simp [show (589824 * k + 190439) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 571318) = 884736 * k + 285659 := by
    unfold C
    simp [show (1769472 * k + 571318) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 285659) = 2654208 * k + 856978 := by
    unfold C
    simp [show (884736 * k + 285659) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 856978) = 1327104 * k + 428489 := by
    unfold C
    simp [show (2654208 * k + 856978) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 428489) = 3981312 * k + 1285468 := by
    unfold C
    simp [show (1327104 * k + 428489) % 2 ≠ 0 by omega]
    omega
  have h10 : C (3981312 * k + 1285468) = 1990656 * k + 642734 := by
    unfold C
    simp [show (3981312 * k + 1285468) % 2 = 0 by omega]
    omega
  have h11 : C (1990656 * k + 642734) = 995328 * k + 321367 := by
    unfold C
    simp [show (1990656 * k + 642734) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 321367) = 2985984 * k + 964102 := by
    unfold C
    simp [show (995328 * k + 321367) % 2 ≠ 0 by omega]
    omega
  have h13 : C (2985984 * k + 964102) = 1492992 * k + 482051 := by
    unfold C
    simp [show (2985984 * k + 964102) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 482051) = 4478976 * k + 1446154 := by
    unfold C
    simp [show (1492992 * k + 482051) % 2 ≠ 0 by omega]
    omega
  have h15 : C (4478976 * k + 1446154) = 2239488 * k + 723077 := by
    unfold C
    simp [show (4478976 * k + 1446154) % 2 = 0 by omega]
    omega
  have h16 : C (2239488 * k + 723077) = 6718464 * k + 2169232 := by
    unfold C
    simp [show (2239488 * k + 723077) % 2 ≠ 0 by omega]
    omega
  have h17 : C (6718464 * k + 2169232) = 3359232 * k + 1084616 := by
    unfold C
    simp [show (6718464 * k + 2169232) % 2 = 0 by omega]
    omega
  have h18 : C (3359232 * k + 1084616) = 1679616 * k + 542308 := by
    unfold C
    simp [show (3359232 * k + 1084616) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 542308) = 839808 * k + 271154 := by
    unfold C
    simp [show (1679616 * k + 542308) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 271154) = 419904 * k + 135577 := by
    unfold C
    simp [show (839808 * k + 271154) % 2 = 0 by omega]
    omega
  have h21 : C (419904 * k + 135577) = 1259712 * k + 406732 := by
    unfold C
    simp [show (419904 * k + 135577) % 2 ≠ 0 by omega]
    omega
  have h22 : C (1259712 * k + 406732) = 629856 * k + 203366 := by
    unfold C
    simp [show (1259712 * k + 406732) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 203366) = 314928 * k + 101683 := by
    unfold C
    simp [show (629856 * k + 203366) % 2 = 0 by omega]
    omega
  have h24 : C (314928 * k + 101683) = 944784 * k + 305050 := by
    unfold C
    simp [show (314928 * k + 101683) % 2 ≠ 0 by omega]
    omega
  have h25 : C (944784 * k + 305050) = 472392 * k + 152525 := by
    unfold C
    simp [show (944784 * k + 305050) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 152525) = 1417176 * k + 457576 := by
    unfold C
    simp [show (472392 * k + 152525) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 457576) = 708588 * k + 228788 := by
    unfold C
    simp [show (1417176 * k + 457576) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 228788) = 354294 * k + 114394 := by
    unfold C
    simp [show (708588 * k + 228788) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 114394) = 177147 * k + 57197 := by
    unfold C
    simp [show (354294 * k + 114394) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 84639) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 84639))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_84719 : ∀ k : Nat,
    iterate (262144 * k + 84719) 29 = 177147 * k + 57251 ∧
      177147 * k + 57251 < 262144 * k + 84719 := by
  intro k
  have h1 : C (262144 * k + 84719) = 786432 * k + 254158 := by
    unfold C
    simp [show (262144 * k + 84719) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 254158) = 393216 * k + 127079 := by
    unfold C
    simp [show (786432 * k + 254158) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 127079) = 1179648 * k + 381238 := by
    unfold C
    simp [show (393216 * k + 127079) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 381238) = 589824 * k + 190619 := by
    unfold C
    simp [show (1179648 * k + 381238) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 190619) = 1769472 * k + 571858 := by
    unfold C
    simp [show (589824 * k + 190619) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 571858) = 884736 * k + 285929 := by
    unfold C
    simp [show (1769472 * k + 571858) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 285929) = 2654208 * k + 857788 := by
    unfold C
    simp [show (884736 * k + 285929) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 857788) = 1327104 * k + 428894 := by
    unfold C
    simp [show (2654208 * k + 857788) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 428894) = 663552 * k + 214447 := by
    unfold C
    simp [show (1327104 * k + 428894) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 214447) = 1990656 * k + 643342 := by
    unfold C
    simp [show (663552 * k + 214447) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 643342) = 995328 * k + 321671 := by
    unfold C
    simp [show (1990656 * k + 643342) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 321671) = 2985984 * k + 965014 := by
    unfold C
    simp [show (995328 * k + 321671) % 2 ≠ 0 by omega]
    omega
  have h13 : C (2985984 * k + 965014) = 1492992 * k + 482507 := by
    unfold C
    simp [show (2985984 * k + 965014) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 482507) = 4478976 * k + 1447522 := by
    unfold C
    simp [show (1492992 * k + 482507) % 2 ≠ 0 by omega]
    omega
  have h15 : C (4478976 * k + 1447522) = 2239488 * k + 723761 := by
    unfold C
    simp [show (4478976 * k + 1447522) % 2 = 0 by omega]
    omega
  have h16 : C (2239488 * k + 723761) = 6718464 * k + 2171284 := by
    unfold C
    simp [show (2239488 * k + 723761) % 2 ≠ 0 by omega]
    omega
  have h17 : C (6718464 * k + 2171284) = 3359232 * k + 1085642 := by
    unfold C
    simp [show (6718464 * k + 2171284) % 2 = 0 by omega]
    omega
  have h18 : C (3359232 * k + 1085642) = 1679616 * k + 542821 := by
    unfold C
    simp [show (3359232 * k + 1085642) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 542821) = 5038848 * k + 1628464 := by
    unfold C
    simp [show (1679616 * k + 542821) % 2 ≠ 0 by omega]
    omega
  have h20 : C (5038848 * k + 1628464) = 2519424 * k + 814232 := by
    unfold C
    simp [show (5038848 * k + 1628464) % 2 = 0 by omega]
    omega
  have h21 : C (2519424 * k + 814232) = 1259712 * k + 407116 := by
    unfold C
    simp [show (2519424 * k + 814232) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 407116) = 629856 * k + 203558 := by
    unfold C
    simp [show (1259712 * k + 407116) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 203558) = 314928 * k + 101779 := by
    unfold C
    simp [show (629856 * k + 203558) % 2 = 0 by omega]
    omega
  have h24 : C (314928 * k + 101779) = 944784 * k + 305338 := by
    unfold C
    simp [show (314928 * k + 101779) % 2 ≠ 0 by omega]
    omega
  have h25 : C (944784 * k + 305338) = 472392 * k + 152669 := by
    unfold C
    simp [show (944784 * k + 305338) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 152669) = 1417176 * k + 458008 := by
    unfold C
    simp [show (472392 * k + 152669) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 458008) = 708588 * k + 229004 := by
    unfold C
    simp [show (1417176 * k + 458008) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 229004) = 354294 * k + 114502 := by
    unfold C
    simp [show (708588 * k + 229004) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 114502) = 177147 * k + 57251 := by
    unfold C
    simp [show (354294 * k + 114502) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 84719) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 84719))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_84799 : ∀ k : Nat,
    iterate (262144 * k + 84799) 29 = 177147 * k + 57305 ∧
      177147 * k + 57305 < 262144 * k + 84799 := by
  intro k
  have h1 : C (262144 * k + 84799) = 786432 * k + 254398 := by
    unfold C
    simp [show (262144 * k + 84799) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 254398) = 393216 * k + 127199 := by
    unfold C
    simp [show (786432 * k + 254398) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 127199) = 1179648 * k + 381598 := by
    unfold C
    simp [show (393216 * k + 127199) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 381598) = 589824 * k + 190799 := by
    unfold C
    simp [show (1179648 * k + 381598) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 190799) = 1769472 * k + 572398 := by
    unfold C
    simp [show (589824 * k + 190799) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 572398) = 884736 * k + 286199 := by
    unfold C
    simp [show (1769472 * k + 572398) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 286199) = 2654208 * k + 858598 := by
    unfold C
    simp [show (884736 * k + 286199) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 858598) = 1327104 * k + 429299 := by
    unfold C
    simp [show (2654208 * k + 858598) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 429299) = 3981312 * k + 1287898 := by
    unfold C
    simp [show (1327104 * k + 429299) % 2 ≠ 0 by omega]
    omega
  have h10 : C (3981312 * k + 1287898) = 1990656 * k + 643949 := by
    unfold C
    simp [show (3981312 * k + 1287898) % 2 = 0 by omega]
    omega
  have h11 : C (1990656 * k + 643949) = 5971968 * k + 1931848 := by
    unfold C
    simp [show (1990656 * k + 643949) % 2 ≠ 0 by omega]
    omega
  have h12 : C (5971968 * k + 1931848) = 2985984 * k + 965924 := by
    unfold C
    simp [show (5971968 * k + 1931848) % 2 = 0 by omega]
    omega
  have h13 : C (2985984 * k + 965924) = 1492992 * k + 482962 := by
    unfold C
    simp [show (2985984 * k + 965924) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 482962) = 746496 * k + 241481 := by
    unfold C
    simp [show (1492992 * k + 482962) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 241481) = 2239488 * k + 724444 := by
    unfold C
    simp [show (746496 * k + 241481) % 2 ≠ 0 by omega]
    omega
  have h16 : C (2239488 * k + 724444) = 1119744 * k + 362222 := by
    unfold C
    simp [show (2239488 * k + 724444) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 362222) = 559872 * k + 181111 := by
    unfold C
    simp [show (1119744 * k + 362222) % 2 = 0 by omega]
    omega
  have h18 : C (559872 * k + 181111) = 1679616 * k + 543334 := by
    unfold C
    simp [show (559872 * k + 181111) % 2 ≠ 0 by omega]
    omega
  have h19 : C (1679616 * k + 543334) = 839808 * k + 271667 := by
    unfold C
    simp [show (1679616 * k + 543334) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 271667) = 2519424 * k + 815002 := by
    unfold C
    simp [show (839808 * k + 271667) % 2 ≠ 0 by omega]
    omega
  have h21 : C (2519424 * k + 815002) = 1259712 * k + 407501 := by
    unfold C
    simp [show (2519424 * k + 815002) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 407501) = 3779136 * k + 1222504 := by
    unfold C
    simp [show (1259712 * k + 407501) % 2 ≠ 0 by omega]
    omega
  have h23 : C (3779136 * k + 1222504) = 1889568 * k + 611252 := by
    unfold C
    simp [show (3779136 * k + 1222504) % 2 = 0 by omega]
    omega
  have h24 : C (1889568 * k + 611252) = 944784 * k + 305626 := by
    unfold C
    simp [show (1889568 * k + 611252) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 305626) = 472392 * k + 152813 := by
    unfold C
    simp [show (944784 * k + 305626) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 152813) = 1417176 * k + 458440 := by
    unfold C
    simp [show (472392 * k + 152813) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 458440) = 708588 * k + 229220 := by
    unfold C
    simp [show (1417176 * k + 458440) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 229220) = 354294 * k + 114610 := by
    unfold C
    simp [show (708588 * k + 229220) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 114610) = 177147 * k + 57305 := by
    unfold C
    simp [show (354294 * k + 114610) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 84799) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 84799))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_84839 : ∀ k : Nat,
    iterate (262144 * k + 84839) 29 = 177147 * k + 57332 ∧
      177147 * k + 57332 < 262144 * k + 84839 := by
  intro k
  have h1 : C (262144 * k + 84839) = 786432 * k + 254518 := by
    unfold C
    simp [show (262144 * k + 84839) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 254518) = 393216 * k + 127259 := by
    unfold C
    simp [show (786432 * k + 254518) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 127259) = 1179648 * k + 381778 := by
    unfold C
    simp [show (393216 * k + 127259) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 381778) = 589824 * k + 190889 := by
    unfold C
    simp [show (1179648 * k + 381778) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 190889) = 1769472 * k + 572668 := by
    unfold C
    simp [show (589824 * k + 190889) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 572668) = 884736 * k + 286334 := by
    unfold C
    simp [show (1769472 * k + 572668) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 286334) = 442368 * k + 143167 := by
    unfold C
    simp [show (884736 * k + 286334) % 2 = 0 by omega]
    omega
  have h8 : C (442368 * k + 143167) = 1327104 * k + 429502 := by
    unfold C
    simp [show (442368 * k + 143167) % 2 ≠ 0 by omega]
    omega
  have h9 : C (1327104 * k + 429502) = 663552 * k + 214751 := by
    unfold C
    simp [show (1327104 * k + 429502) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 214751) = 1990656 * k + 644254 := by
    unfold C
    simp [show (663552 * k + 214751) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 644254) = 995328 * k + 322127 := by
    unfold C
    simp [show (1990656 * k + 644254) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 322127) = 2985984 * k + 966382 := by
    unfold C
    simp [show (995328 * k + 322127) % 2 ≠ 0 by omega]
    omega
  have h13 : C (2985984 * k + 966382) = 1492992 * k + 483191 := by
    unfold C
    simp [show (2985984 * k + 966382) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 483191) = 4478976 * k + 1449574 := by
    unfold C
    simp [show (1492992 * k + 483191) % 2 ≠ 0 by omega]
    omega
  have h15 : C (4478976 * k + 1449574) = 2239488 * k + 724787 := by
    unfold C
    simp [show (4478976 * k + 1449574) % 2 = 0 by omega]
    omega
  have h16 : C (2239488 * k + 724787) = 6718464 * k + 2174362 := by
    unfold C
    simp [show (2239488 * k + 724787) % 2 ≠ 0 by omega]
    omega
  have h17 : C (6718464 * k + 2174362) = 3359232 * k + 1087181 := by
    unfold C
    simp [show (6718464 * k + 2174362) % 2 = 0 by omega]
    omega
  have h18 : C (3359232 * k + 1087181) = 10077696 * k + 3261544 := by
    unfold C
    simp [show (3359232 * k + 1087181) % 2 ≠ 0 by omega]
    omega
  have h19 : C (10077696 * k + 3261544) = 5038848 * k + 1630772 := by
    unfold C
    simp [show (10077696 * k + 3261544) % 2 = 0 by omega]
    omega
  have h20 : C (5038848 * k + 1630772) = 2519424 * k + 815386 := by
    unfold C
    simp [show (5038848 * k + 1630772) % 2 = 0 by omega]
    omega
  have h21 : C (2519424 * k + 815386) = 1259712 * k + 407693 := by
    unfold C
    simp [show (2519424 * k + 815386) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 407693) = 3779136 * k + 1223080 := by
    unfold C
    simp [show (1259712 * k + 407693) % 2 ≠ 0 by omega]
    omega
  have h23 : C (3779136 * k + 1223080) = 1889568 * k + 611540 := by
    unfold C
    simp [show (3779136 * k + 1223080) % 2 = 0 by omega]
    omega
  have h24 : C (1889568 * k + 611540) = 944784 * k + 305770 := by
    unfold C
    simp [show (1889568 * k + 611540) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 305770) = 472392 * k + 152885 := by
    unfold C
    simp [show (944784 * k + 305770) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 152885) = 1417176 * k + 458656 := by
    unfold C
    simp [show (472392 * k + 152885) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 458656) = 708588 * k + 229328 := by
    unfold C
    simp [show (1417176 * k + 458656) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 229328) = 354294 * k + 114664 := by
    unfold C
    simp [show (708588 * k + 229328) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 114664) = 177147 * k + 57332 := by
    unfold C
    simp [show (354294 * k + 114664) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 84839) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 84839))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_85531 : ∀ k : Nat,
    iterate (262144 * k + 85531) 29 = 177147 * k + 57800 ∧
      177147 * k + 57800 < 262144 * k + 85531 := by
  intro k
  have h1 : C (262144 * k + 85531) = 786432 * k + 256594 := by
    unfold C
    simp [show (262144 * k + 85531) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 256594) = 393216 * k + 128297 := by
    unfold C
    simp [show (786432 * k + 256594) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 128297) = 1179648 * k + 384892 := by
    unfold C
    simp [show (393216 * k + 128297) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 384892) = 589824 * k + 192446 := by
    unfold C
    simp [show (1179648 * k + 384892) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 192446) = 294912 * k + 96223 := by
    unfold C
    simp [show (589824 * k + 192446) % 2 = 0 by omega]
    omega
  have h6 : C (294912 * k + 96223) = 884736 * k + 288670 := by
    unfold C
    simp [show (294912 * k + 96223) % 2 ≠ 0 by omega]
    omega
  have h7 : C (884736 * k + 288670) = 442368 * k + 144335 := by
    unfold C
    simp [show (884736 * k + 288670) % 2 = 0 by omega]
    omega
  have h8 : C (442368 * k + 144335) = 1327104 * k + 433006 := by
    unfold C
    simp [show (442368 * k + 144335) % 2 ≠ 0 by omega]
    omega
  have h9 : C (1327104 * k + 433006) = 663552 * k + 216503 := by
    unfold C
    simp [show (1327104 * k + 433006) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 216503) = 1990656 * k + 649510 := by
    unfold C
    simp [show (663552 * k + 216503) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 649510) = 995328 * k + 324755 := by
    unfold C
    simp [show (1990656 * k + 649510) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 324755) = 2985984 * k + 974266 := by
    unfold C
    simp [show (995328 * k + 324755) % 2 ≠ 0 by omega]
    omega
  have h13 : C (2985984 * k + 974266) = 1492992 * k + 487133 := by
    unfold C
    simp [show (2985984 * k + 974266) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 487133) = 4478976 * k + 1461400 := by
    unfold C
    simp [show (1492992 * k + 487133) % 2 ≠ 0 by omega]
    omega
  have h15 : C (4478976 * k + 1461400) = 2239488 * k + 730700 := by
    unfold C
    simp [show (4478976 * k + 1461400) % 2 = 0 by omega]
    omega
  have h16 : C (2239488 * k + 730700) = 1119744 * k + 365350 := by
    unfold C
    simp [show (2239488 * k + 730700) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 365350) = 559872 * k + 182675 := by
    unfold C
    simp [show (1119744 * k + 365350) % 2 = 0 by omega]
    omega
  have h18 : C (559872 * k + 182675) = 1679616 * k + 548026 := by
    unfold C
    simp [show (559872 * k + 182675) % 2 ≠ 0 by omega]
    omega
  have h19 : C (1679616 * k + 548026) = 839808 * k + 274013 := by
    unfold C
    simp [show (1679616 * k + 548026) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 274013) = 2519424 * k + 822040 := by
    unfold C
    simp [show (839808 * k + 274013) % 2 ≠ 0 by omega]
    omega
  have h21 : C (2519424 * k + 822040) = 1259712 * k + 411020 := by
    unfold C
    simp [show (2519424 * k + 822040) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 411020) = 629856 * k + 205510 := by
    unfold C
    simp [show (1259712 * k + 411020) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 205510) = 314928 * k + 102755 := by
    unfold C
    simp [show (629856 * k + 205510) % 2 = 0 by omega]
    omega
  have h24 : C (314928 * k + 102755) = 944784 * k + 308266 := by
    unfold C
    simp [show (314928 * k + 102755) % 2 ≠ 0 by omega]
    omega
  have h25 : C (944784 * k + 308266) = 472392 * k + 154133 := by
    unfold C
    simp [show (944784 * k + 308266) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 154133) = 1417176 * k + 462400 := by
    unfold C
    simp [show (472392 * k + 154133) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 462400) = 708588 * k + 231200 := by
    unfold C
    simp [show (1417176 * k + 462400) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 231200) = 354294 * k + 115600 := by
    unfold C
    simp [show (708588 * k + 231200) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 115600) = 177147 * k + 57800 := by
    unfold C
    simp [show (354294 * k + 115600) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 85531) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 85531))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_86495 : ∀ k : Nat,
    iterate (262144 * k + 86495) 29 = 177147 * k + 58451 ∧
      177147 * k + 58451 < 262144 * k + 86495 := by
  intro k
  have h1 : C (262144 * k + 86495) = 786432 * k + 259486 := by
    unfold C
    simp [show (262144 * k + 86495) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 259486) = 393216 * k + 129743 := by
    unfold C
    simp [show (786432 * k + 259486) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 129743) = 1179648 * k + 389230 := by
    unfold C
    simp [show (393216 * k + 129743) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 389230) = 589824 * k + 194615 := by
    unfold C
    simp [show (1179648 * k + 389230) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 194615) = 1769472 * k + 583846 := by
    unfold C
    simp [show (589824 * k + 194615) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 583846) = 884736 * k + 291923 := by
    unfold C
    simp [show (1769472 * k + 583846) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 291923) = 2654208 * k + 875770 := by
    unfold C
    simp [show (884736 * k + 291923) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 875770) = 1327104 * k + 437885 := by
    unfold C
    simp [show (2654208 * k + 875770) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 437885) = 3981312 * k + 1313656 := by
    unfold C
    simp [show (1327104 * k + 437885) % 2 ≠ 0 by omega]
    omega
  have h10 : C (3981312 * k + 1313656) = 1990656 * k + 656828 := by
    unfold C
    simp [show (3981312 * k + 1313656) % 2 = 0 by omega]
    omega
  have h11 : C (1990656 * k + 656828) = 995328 * k + 328414 := by
    unfold C
    simp [show (1990656 * k + 656828) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 328414) = 497664 * k + 164207 := by
    unfold C
    simp [show (995328 * k + 328414) % 2 = 0 by omega]
    omega
  have h13 : C (497664 * k + 164207) = 1492992 * k + 492622 := by
    unfold C
    simp [show (497664 * k + 164207) % 2 ≠ 0 by omega]
    omega
  have h14 : C (1492992 * k + 492622) = 746496 * k + 246311 := by
    unfold C
    simp [show (1492992 * k + 492622) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 246311) = 2239488 * k + 738934 := by
    unfold C
    simp [show (746496 * k + 246311) % 2 ≠ 0 by omega]
    omega
  have h16 : C (2239488 * k + 738934) = 1119744 * k + 369467 := by
    unfold C
    simp [show (2239488 * k + 738934) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 369467) = 3359232 * k + 1108402 := by
    unfold C
    simp [show (1119744 * k + 369467) % 2 ≠ 0 by omega]
    omega
  have h18 : C (3359232 * k + 1108402) = 1679616 * k + 554201 := by
    unfold C
    simp [show (3359232 * k + 1108402) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 554201) = 5038848 * k + 1662604 := by
    unfold C
    simp [show (1679616 * k + 554201) % 2 ≠ 0 by omega]
    omega
  have h20 : C (5038848 * k + 1662604) = 2519424 * k + 831302 := by
    unfold C
    simp [show (5038848 * k + 1662604) % 2 = 0 by omega]
    omega
  have h21 : C (2519424 * k + 831302) = 1259712 * k + 415651 := by
    unfold C
    simp [show (2519424 * k + 831302) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 415651) = 3779136 * k + 1246954 := by
    unfold C
    simp [show (1259712 * k + 415651) % 2 ≠ 0 by omega]
    omega
  have h23 : C (3779136 * k + 1246954) = 1889568 * k + 623477 := by
    unfold C
    simp [show (3779136 * k + 1246954) % 2 = 0 by omega]
    omega
  have h24 : C (1889568 * k + 623477) = 5668704 * k + 1870432 := by
    unfold C
    simp [show (1889568 * k + 623477) % 2 ≠ 0 by omega]
    omega
  have h25 : C (5668704 * k + 1870432) = 2834352 * k + 935216 := by
    unfold C
    simp [show (5668704 * k + 1870432) % 2 = 0 by omega]
    omega
  have h26 : C (2834352 * k + 935216) = 1417176 * k + 467608 := by
    unfold C
    simp [show (2834352 * k + 935216) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 467608) = 708588 * k + 233804 := by
    unfold C
    simp [show (1417176 * k + 467608) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 233804) = 354294 * k + 116902 := by
    unfold C
    simp [show (708588 * k + 233804) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 116902) = 177147 * k + 58451 := by
    unfold C
    simp [show (354294 * k + 116902) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 86495) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 86495))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_86555 : ∀ k : Nat,
    iterate (262144 * k + 86555) 29 = 177147 * k + 58492 ∧
      177147 * k + 58492 < 262144 * k + 86555 := by
  intro k
  have h1 : C (262144 * k + 86555) = 786432 * k + 259666 := by
    unfold C
    simp [show (262144 * k + 86555) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 259666) = 393216 * k + 129833 := by
    unfold C
    simp [show (786432 * k + 259666) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 129833) = 1179648 * k + 389500 := by
    unfold C
    simp [show (393216 * k + 129833) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 389500) = 589824 * k + 194750 := by
    unfold C
    simp [show (1179648 * k + 389500) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 194750) = 294912 * k + 97375 := by
    unfold C
    simp [show (589824 * k + 194750) % 2 = 0 by omega]
    omega
  have h6 : C (294912 * k + 97375) = 884736 * k + 292126 := by
    unfold C
    simp [show (294912 * k + 97375) % 2 ≠ 0 by omega]
    omega
  have h7 : C (884736 * k + 292126) = 442368 * k + 146063 := by
    unfold C
    simp [show (884736 * k + 292126) % 2 = 0 by omega]
    omega
  have h8 : C (442368 * k + 146063) = 1327104 * k + 438190 := by
    unfold C
    simp [show (442368 * k + 146063) % 2 ≠ 0 by omega]
    omega
  have h9 : C (1327104 * k + 438190) = 663552 * k + 219095 := by
    unfold C
    simp [show (1327104 * k + 438190) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 219095) = 1990656 * k + 657286 := by
    unfold C
    simp [show (663552 * k + 219095) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 657286) = 995328 * k + 328643 := by
    unfold C
    simp [show (1990656 * k + 657286) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 328643) = 2985984 * k + 985930 := by
    unfold C
    simp [show (995328 * k + 328643) % 2 ≠ 0 by omega]
    omega
  have h13 : C (2985984 * k + 985930) = 1492992 * k + 492965 := by
    unfold C
    simp [show (2985984 * k + 985930) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 492965) = 4478976 * k + 1478896 := by
    unfold C
    simp [show (1492992 * k + 492965) % 2 ≠ 0 by omega]
    omega
  have h15 : C (4478976 * k + 1478896) = 2239488 * k + 739448 := by
    unfold C
    simp [show (4478976 * k + 1478896) % 2 = 0 by omega]
    omega
  have h16 : C (2239488 * k + 739448) = 1119744 * k + 369724 := by
    unfold C
    simp [show (2239488 * k + 739448) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 369724) = 559872 * k + 184862 := by
    unfold C
    simp [show (1119744 * k + 369724) % 2 = 0 by omega]
    omega
  have h18 : C (559872 * k + 184862) = 279936 * k + 92431 := by
    unfold C
    simp [show (559872 * k + 184862) % 2 = 0 by omega]
    omega
  have h19 : C (279936 * k + 92431) = 839808 * k + 277294 := by
    unfold C
    simp [show (279936 * k + 92431) % 2 ≠ 0 by omega]
    omega
  have h20 : C (839808 * k + 277294) = 419904 * k + 138647 := by
    unfold C
    simp [show (839808 * k + 277294) % 2 = 0 by omega]
    omega
  have h21 : C (419904 * k + 138647) = 1259712 * k + 415942 := by
    unfold C
    simp [show (419904 * k + 138647) % 2 ≠ 0 by omega]
    omega
  have h22 : C (1259712 * k + 415942) = 629856 * k + 207971 := by
    unfold C
    simp [show (1259712 * k + 415942) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 207971) = 1889568 * k + 623914 := by
    unfold C
    simp [show (629856 * k + 207971) % 2 ≠ 0 by omega]
    omega
  have h24 : C (1889568 * k + 623914) = 944784 * k + 311957 := by
    unfold C
    simp [show (1889568 * k + 623914) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 311957) = 2834352 * k + 935872 := by
    unfold C
    simp [show (944784 * k + 311957) % 2 ≠ 0 by omega]
    omega
  have h26 : C (2834352 * k + 935872) = 1417176 * k + 467936 := by
    unfold C
    simp [show (2834352 * k + 935872) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 467936) = 708588 * k + 233968 := by
    unfold C
    simp [show (1417176 * k + 467936) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 233968) = 354294 * k + 116984 := by
    unfold C
    simp [show (708588 * k + 233968) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 116984) = 177147 * k + 58492 := by
    unfold C
    simp [show (354294 * k + 116984) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 86555) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 86555))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_86655 : ∀ k : Nat,
    iterate (262144 * k + 86655) 29 = 177147 * k + 58559 ∧
      177147 * k + 58559 < 262144 * k + 86655 := by
  intro k
  have h1 : C (262144 * k + 86655) = 786432 * k + 259966 := by
    unfold C
    simp [show (262144 * k + 86655) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 259966) = 393216 * k + 129983 := by
    unfold C
    simp [show (786432 * k + 259966) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 129983) = 1179648 * k + 389950 := by
    unfold C
    simp [show (393216 * k + 129983) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 389950) = 589824 * k + 194975 := by
    unfold C
    simp [show (1179648 * k + 389950) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 194975) = 1769472 * k + 584926 := by
    unfold C
    simp [show (589824 * k + 194975) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 584926) = 884736 * k + 292463 := by
    unfold C
    simp [show (1769472 * k + 584926) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 292463) = 2654208 * k + 877390 := by
    unfold C
    simp [show (884736 * k + 292463) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 877390) = 1327104 * k + 438695 := by
    unfold C
    simp [show (2654208 * k + 877390) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 438695) = 3981312 * k + 1316086 := by
    unfold C
    simp [show (1327104 * k + 438695) % 2 ≠ 0 by omega]
    omega
  have h10 : C (3981312 * k + 1316086) = 1990656 * k + 658043 := by
    unfold C
    simp [show (3981312 * k + 1316086) % 2 = 0 by omega]
    omega
  have h11 : C (1990656 * k + 658043) = 5971968 * k + 1974130 := by
    unfold C
    simp [show (1990656 * k + 658043) % 2 ≠ 0 by omega]
    omega
  have h12 : C (5971968 * k + 1974130) = 2985984 * k + 987065 := by
    unfold C
    simp [show (5971968 * k + 1974130) % 2 = 0 by omega]
    omega
  have h13 : C (2985984 * k + 987065) = 8957952 * k + 2961196 := by
    unfold C
    simp [show (2985984 * k + 987065) % 2 ≠ 0 by omega]
    omega
  have h14 : C (8957952 * k + 2961196) = 4478976 * k + 1480598 := by
    unfold C
    simp [show (8957952 * k + 2961196) % 2 = 0 by omega]
    omega
  have h15 : C (4478976 * k + 1480598) = 2239488 * k + 740299 := by
    unfold C
    simp [show (4478976 * k + 1480598) % 2 = 0 by omega]
    omega
  have h16 : C (2239488 * k + 740299) = 6718464 * k + 2220898 := by
    unfold C
    simp [show (2239488 * k + 740299) % 2 ≠ 0 by omega]
    omega
  have h17 : C (6718464 * k + 2220898) = 3359232 * k + 1110449 := by
    unfold C
    simp [show (6718464 * k + 2220898) % 2 = 0 by omega]
    omega
  have h18 : C (3359232 * k + 1110449) = 10077696 * k + 3331348 := by
    unfold C
    simp [show (3359232 * k + 1110449) % 2 ≠ 0 by omega]
    omega
  have h19 : C (10077696 * k + 3331348) = 5038848 * k + 1665674 := by
    unfold C
    simp [show (10077696 * k + 3331348) % 2 = 0 by omega]
    omega
  have h20 : C (5038848 * k + 1665674) = 2519424 * k + 832837 := by
    unfold C
    simp [show (5038848 * k + 1665674) % 2 = 0 by omega]
    omega
  have h21 : C (2519424 * k + 832837) = 7558272 * k + 2498512 := by
    unfold C
    simp [show (2519424 * k + 832837) % 2 ≠ 0 by omega]
    omega
  have h22 : C (7558272 * k + 2498512) = 3779136 * k + 1249256 := by
    unfold C
    simp [show (7558272 * k + 2498512) % 2 = 0 by omega]
    omega
  have h23 : C (3779136 * k + 1249256) = 1889568 * k + 624628 := by
    unfold C
    simp [show (3779136 * k + 1249256) % 2 = 0 by omega]
    omega
  have h24 : C (1889568 * k + 624628) = 944784 * k + 312314 := by
    unfold C
    simp [show (1889568 * k + 624628) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 312314) = 472392 * k + 156157 := by
    unfold C
    simp [show (944784 * k + 312314) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 156157) = 1417176 * k + 468472 := by
    unfold C
    simp [show (472392 * k + 156157) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 468472) = 708588 * k + 234236 := by
    unfold C
    simp [show (1417176 * k + 468472) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 234236) = 354294 * k + 117118 := by
    unfold C
    simp [show (708588 * k + 234236) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 117118) = 177147 * k + 58559 := by
    unfold C
    simp [show (354294 * k + 117118) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 86655) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 86655))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_86911 : ∀ k : Nat,
    iterate (262144 * k + 86911) 29 = 177147 * k + 58732 ∧
      177147 * k + 58732 < 262144 * k + 86911 := by
  intro k
  have h1 : C (262144 * k + 86911) = 786432 * k + 260734 := by
    unfold C
    simp [show (262144 * k + 86911) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 260734) = 393216 * k + 130367 := by
    unfold C
    simp [show (786432 * k + 260734) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 130367) = 1179648 * k + 391102 := by
    unfold C
    simp [show (393216 * k + 130367) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 391102) = 589824 * k + 195551 := by
    unfold C
    simp [show (1179648 * k + 391102) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 195551) = 1769472 * k + 586654 := by
    unfold C
    simp [show (589824 * k + 195551) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 586654) = 884736 * k + 293327 := by
    unfold C
    simp [show (1769472 * k + 586654) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 293327) = 2654208 * k + 879982 := by
    unfold C
    simp [show (884736 * k + 293327) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 879982) = 1327104 * k + 439991 := by
    unfold C
    simp [show (2654208 * k + 879982) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 439991) = 3981312 * k + 1319974 := by
    unfold C
    simp [show (1327104 * k + 439991) % 2 ≠ 0 by omega]
    omega
  have h10 : C (3981312 * k + 1319974) = 1990656 * k + 659987 := by
    unfold C
    simp [show (3981312 * k + 1319974) % 2 = 0 by omega]
    omega
  have h11 : C (1990656 * k + 659987) = 5971968 * k + 1979962 := by
    unfold C
    simp [show (1990656 * k + 659987) % 2 ≠ 0 by omega]
    omega
  have h12 : C (5971968 * k + 1979962) = 2985984 * k + 989981 := by
    unfold C
    simp [show (5971968 * k + 1979962) % 2 = 0 by omega]
    omega
  have h13 : C (2985984 * k + 989981) = 8957952 * k + 2969944 := by
    unfold C
    simp [show (2985984 * k + 989981) % 2 ≠ 0 by omega]
    omega
  have h14 : C (8957952 * k + 2969944) = 4478976 * k + 1484972 := by
    unfold C
    simp [show (8957952 * k + 2969944) % 2 = 0 by omega]
    omega
  have h15 : C (4478976 * k + 1484972) = 2239488 * k + 742486 := by
    unfold C
    simp [show (4478976 * k + 1484972) % 2 = 0 by omega]
    omega
  have h16 : C (2239488 * k + 742486) = 1119744 * k + 371243 := by
    unfold C
    simp [show (2239488 * k + 742486) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 371243) = 3359232 * k + 1113730 := by
    unfold C
    simp [show (1119744 * k + 371243) % 2 ≠ 0 by omega]
    omega
  have h18 : C (3359232 * k + 1113730) = 1679616 * k + 556865 := by
    unfold C
    simp [show (3359232 * k + 1113730) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 556865) = 5038848 * k + 1670596 := by
    unfold C
    simp [show (1679616 * k + 556865) % 2 ≠ 0 by omega]
    omega
  have h20 : C (5038848 * k + 1670596) = 2519424 * k + 835298 := by
    unfold C
    simp [show (5038848 * k + 1670596) % 2 = 0 by omega]
    omega
  have h21 : C (2519424 * k + 835298) = 1259712 * k + 417649 := by
    unfold C
    simp [show (2519424 * k + 835298) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 417649) = 3779136 * k + 1252948 := by
    unfold C
    simp [show (1259712 * k + 417649) % 2 ≠ 0 by omega]
    omega
  have h23 : C (3779136 * k + 1252948) = 1889568 * k + 626474 := by
    unfold C
    simp [show (3779136 * k + 1252948) % 2 = 0 by omega]
    omega
  have h24 : C (1889568 * k + 626474) = 944784 * k + 313237 := by
    unfold C
    simp [show (1889568 * k + 626474) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 313237) = 2834352 * k + 939712 := by
    unfold C
    simp [show (944784 * k + 313237) % 2 ≠ 0 by omega]
    omega
  have h26 : C (2834352 * k + 939712) = 1417176 * k + 469856 := by
    unfold C
    simp [show (2834352 * k + 939712) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 469856) = 708588 * k + 234928 := by
    unfold C
    simp [show (1417176 * k + 469856) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 234928) = 354294 * k + 117464 := by
    unfold C
    simp [show (708588 * k + 234928) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 117464) = 177147 * k + 58732 := by
    unfold C
    simp [show (354294 * k + 117464) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 86911) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 86911))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_87143 : ∀ k : Nat,
    iterate (262144 * k + 87143) 29 = 177147 * k + 58889 ∧
      177147 * k + 58889 < 262144 * k + 87143 := by
  intro k
  have h1 : C (262144 * k + 87143) = 786432 * k + 261430 := by
    unfold C
    simp [show (262144 * k + 87143) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 261430) = 393216 * k + 130715 := by
    unfold C
    simp [show (786432 * k + 261430) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 130715) = 1179648 * k + 392146 := by
    unfold C
    simp [show (393216 * k + 130715) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 392146) = 589824 * k + 196073 := by
    unfold C
    simp [show (1179648 * k + 392146) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 196073) = 1769472 * k + 588220 := by
    unfold C
    simp [show (589824 * k + 196073) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 588220) = 884736 * k + 294110 := by
    unfold C
    simp [show (1769472 * k + 588220) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 294110) = 442368 * k + 147055 := by
    unfold C
    simp [show (884736 * k + 294110) % 2 = 0 by omega]
    omega
  have h8 : C (442368 * k + 147055) = 1327104 * k + 441166 := by
    unfold C
    simp [show (442368 * k + 147055) % 2 ≠ 0 by omega]
    omega
  have h9 : C (1327104 * k + 441166) = 663552 * k + 220583 := by
    unfold C
    simp [show (1327104 * k + 441166) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 220583) = 1990656 * k + 661750 := by
    unfold C
    simp [show (663552 * k + 220583) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 661750) = 995328 * k + 330875 := by
    unfold C
    simp [show (1990656 * k + 661750) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 330875) = 2985984 * k + 992626 := by
    unfold C
    simp [show (995328 * k + 330875) % 2 ≠ 0 by omega]
    omega
  have h13 : C (2985984 * k + 992626) = 1492992 * k + 496313 := by
    unfold C
    simp [show (2985984 * k + 992626) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 496313) = 4478976 * k + 1488940 := by
    unfold C
    simp [show (1492992 * k + 496313) % 2 ≠ 0 by omega]
    omega
  have h15 : C (4478976 * k + 1488940) = 2239488 * k + 744470 := by
    unfold C
    simp [show (4478976 * k + 1488940) % 2 = 0 by omega]
    omega
  have h16 : C (2239488 * k + 744470) = 1119744 * k + 372235 := by
    unfold C
    simp [show (2239488 * k + 744470) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 372235) = 3359232 * k + 1116706 := by
    unfold C
    simp [show (1119744 * k + 372235) % 2 ≠ 0 by omega]
    omega
  have h18 : C (3359232 * k + 1116706) = 1679616 * k + 558353 := by
    unfold C
    simp [show (3359232 * k + 1116706) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 558353) = 5038848 * k + 1675060 := by
    unfold C
    simp [show (1679616 * k + 558353) % 2 ≠ 0 by omega]
    omega
  have h20 : C (5038848 * k + 1675060) = 2519424 * k + 837530 := by
    unfold C
    simp [show (5038848 * k + 1675060) % 2 = 0 by omega]
    omega
  have h21 : C (2519424 * k + 837530) = 1259712 * k + 418765 := by
    unfold C
    simp [show (2519424 * k + 837530) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 418765) = 3779136 * k + 1256296 := by
    unfold C
    simp [show (1259712 * k + 418765) % 2 ≠ 0 by omega]
    omega
  have h23 : C (3779136 * k + 1256296) = 1889568 * k + 628148 := by
    unfold C
    simp [show (3779136 * k + 1256296) % 2 = 0 by omega]
    omega
  have h24 : C (1889568 * k + 628148) = 944784 * k + 314074 := by
    unfold C
    simp [show (1889568 * k + 628148) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 314074) = 472392 * k + 157037 := by
    unfold C
    simp [show (944784 * k + 314074) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 157037) = 1417176 * k + 471112 := by
    unfold C
    simp [show (472392 * k + 157037) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 471112) = 708588 * k + 235556 := by
    unfold C
    simp [show (1417176 * k + 471112) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 235556) = 354294 * k + 117778 := by
    unfold C
    simp [show (708588 * k + 235556) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 117778) = 177147 * k + 58889 := by
    unfold C
    simp [show (354294 * k + 117778) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 87143) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 87143))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_88127 : ∀ k : Nat,
    iterate (262144 * k + 88127) 29 = 177147 * k + 59554 ∧
      177147 * k + 59554 < 262144 * k + 88127 := by
  intro k
  have h1 : C (262144 * k + 88127) = 786432 * k + 264382 := by
    unfold C
    simp [show (262144 * k + 88127) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 264382) = 393216 * k + 132191 := by
    unfold C
    simp [show (786432 * k + 264382) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 132191) = 1179648 * k + 396574 := by
    unfold C
    simp [show (393216 * k + 132191) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 396574) = 589824 * k + 198287 := by
    unfold C
    simp [show (1179648 * k + 396574) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 198287) = 1769472 * k + 594862 := by
    unfold C
    simp [show (589824 * k + 198287) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 594862) = 884736 * k + 297431 := by
    unfold C
    simp [show (1769472 * k + 594862) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 297431) = 2654208 * k + 892294 := by
    unfold C
    simp [show (884736 * k + 297431) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 892294) = 1327104 * k + 446147 := by
    unfold C
    simp [show (2654208 * k + 892294) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 446147) = 3981312 * k + 1338442 := by
    unfold C
    simp [show (1327104 * k + 446147) % 2 ≠ 0 by omega]
    omega
  have h10 : C (3981312 * k + 1338442) = 1990656 * k + 669221 := by
    unfold C
    simp [show (3981312 * k + 1338442) % 2 = 0 by omega]
    omega
  have h11 : C (1990656 * k + 669221) = 5971968 * k + 2007664 := by
    unfold C
    simp [show (1990656 * k + 669221) % 2 ≠ 0 by omega]
    omega
  have h12 : C (5971968 * k + 2007664) = 2985984 * k + 1003832 := by
    unfold C
    simp [show (5971968 * k + 2007664) % 2 = 0 by omega]
    omega
  have h13 : C (2985984 * k + 1003832) = 1492992 * k + 501916 := by
    unfold C
    simp [show (2985984 * k + 1003832) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 501916) = 746496 * k + 250958 := by
    unfold C
    simp [show (1492992 * k + 501916) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 250958) = 373248 * k + 125479 := by
    unfold C
    simp [show (746496 * k + 250958) % 2 = 0 by omega]
    omega
  have h16 : C (373248 * k + 125479) = 1119744 * k + 376438 := by
    unfold C
    simp [show (373248 * k + 125479) % 2 ≠ 0 by omega]
    omega
  have h17 : C (1119744 * k + 376438) = 559872 * k + 188219 := by
    unfold C
    simp [show (1119744 * k + 376438) % 2 = 0 by omega]
    omega
  have h18 : C (559872 * k + 188219) = 1679616 * k + 564658 := by
    unfold C
    simp [show (559872 * k + 188219) % 2 ≠ 0 by omega]
    omega
  have h19 : C (1679616 * k + 564658) = 839808 * k + 282329 := by
    unfold C
    simp [show (1679616 * k + 564658) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 282329) = 2519424 * k + 846988 := by
    unfold C
    simp [show (839808 * k + 282329) % 2 ≠ 0 by omega]
    omega
  have h21 : C (2519424 * k + 846988) = 1259712 * k + 423494 := by
    unfold C
    simp [show (2519424 * k + 846988) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 423494) = 629856 * k + 211747 := by
    unfold C
    simp [show (1259712 * k + 423494) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 211747) = 1889568 * k + 635242 := by
    unfold C
    simp [show (629856 * k + 211747) % 2 ≠ 0 by omega]
    omega
  have h24 : C (1889568 * k + 635242) = 944784 * k + 317621 := by
    unfold C
    simp [show (1889568 * k + 635242) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 317621) = 2834352 * k + 952864 := by
    unfold C
    simp [show (944784 * k + 317621) % 2 ≠ 0 by omega]
    omega
  have h26 : C (2834352 * k + 952864) = 1417176 * k + 476432 := by
    unfold C
    simp [show (2834352 * k + 952864) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 476432) = 708588 * k + 238216 := by
    unfold C
    simp [show (1417176 * k + 476432) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 238216) = 354294 * k + 119108 := by
    unfold C
    simp [show (708588 * k + 238216) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 119108) = 177147 * k + 59554 := by
    unfold C
    simp [show (354294 * k + 119108) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 88127) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 88127))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_88167 : ∀ k : Nat,
    iterate (262144 * k + 88167) 29 = 177147 * k + 59581 ∧
      177147 * k + 59581 < 262144 * k + 88167 := by
  intro k
  have h1 : C (262144 * k + 88167) = 786432 * k + 264502 := by
    unfold C
    simp [show (262144 * k + 88167) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 264502) = 393216 * k + 132251 := by
    unfold C
    simp [show (786432 * k + 264502) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 132251) = 1179648 * k + 396754 := by
    unfold C
    simp [show (393216 * k + 132251) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 396754) = 589824 * k + 198377 := by
    unfold C
    simp [show (1179648 * k + 396754) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 198377) = 1769472 * k + 595132 := by
    unfold C
    simp [show (589824 * k + 198377) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 595132) = 884736 * k + 297566 := by
    unfold C
    simp [show (1769472 * k + 595132) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 297566) = 442368 * k + 148783 := by
    unfold C
    simp [show (884736 * k + 297566) % 2 = 0 by omega]
    omega
  have h8 : C (442368 * k + 148783) = 1327104 * k + 446350 := by
    unfold C
    simp [show (442368 * k + 148783) % 2 ≠ 0 by omega]
    omega
  have h9 : C (1327104 * k + 446350) = 663552 * k + 223175 := by
    unfold C
    simp [show (1327104 * k + 446350) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 223175) = 1990656 * k + 669526 := by
    unfold C
    simp [show (663552 * k + 223175) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 669526) = 995328 * k + 334763 := by
    unfold C
    simp [show (1990656 * k + 669526) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 334763) = 2985984 * k + 1004290 := by
    unfold C
    simp [show (995328 * k + 334763) % 2 ≠ 0 by omega]
    omega
  have h13 : C (2985984 * k + 1004290) = 1492992 * k + 502145 := by
    unfold C
    simp [show (2985984 * k + 1004290) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 502145) = 4478976 * k + 1506436 := by
    unfold C
    simp [show (1492992 * k + 502145) % 2 ≠ 0 by omega]
    omega
  have h15 : C (4478976 * k + 1506436) = 2239488 * k + 753218 := by
    unfold C
    simp [show (4478976 * k + 1506436) % 2 = 0 by omega]
    omega
  have h16 : C (2239488 * k + 753218) = 1119744 * k + 376609 := by
    unfold C
    simp [show (2239488 * k + 753218) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 376609) = 3359232 * k + 1129828 := by
    unfold C
    simp [show (1119744 * k + 376609) % 2 ≠ 0 by omega]
    omega
  have h18 : C (3359232 * k + 1129828) = 1679616 * k + 564914 := by
    unfold C
    simp [show (3359232 * k + 1129828) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 564914) = 839808 * k + 282457 := by
    unfold C
    simp [show (1679616 * k + 564914) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 282457) = 2519424 * k + 847372 := by
    unfold C
    simp [show (839808 * k + 282457) % 2 ≠ 0 by omega]
    omega
  have h21 : C (2519424 * k + 847372) = 1259712 * k + 423686 := by
    unfold C
    simp [show (2519424 * k + 847372) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 423686) = 629856 * k + 211843 := by
    unfold C
    simp [show (1259712 * k + 423686) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 211843) = 1889568 * k + 635530 := by
    unfold C
    simp [show (629856 * k + 211843) % 2 ≠ 0 by omega]
    omega
  have h24 : C (1889568 * k + 635530) = 944784 * k + 317765 := by
    unfold C
    simp [show (1889568 * k + 635530) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 317765) = 2834352 * k + 953296 := by
    unfold C
    simp [show (944784 * k + 317765) % 2 ≠ 0 by omega]
    omega
  have h26 : C (2834352 * k + 953296) = 1417176 * k + 476648 := by
    unfold C
    simp [show (2834352 * k + 953296) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 476648) = 708588 * k + 238324 := by
    unfold C
    simp [show (1417176 * k + 476648) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 238324) = 354294 * k + 119162 := by
    unfold C
    simp [show (708588 * k + 238324) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 119162) = 177147 * k + 59581 := by
    unfold C
    simp [show (354294 * k + 119162) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 88167) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 88167))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_88959 : ∀ k : Nat,
    iterate (262144 * k + 88959) 29 = 177147 * k + 60116 ∧
      177147 * k + 60116 < 262144 * k + 88959 := by
  intro k
  have h1 : C (262144 * k + 88959) = 786432 * k + 266878 := by
    unfold C
    simp [show (262144 * k + 88959) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 266878) = 393216 * k + 133439 := by
    unfold C
    simp [show (786432 * k + 266878) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 133439) = 1179648 * k + 400318 := by
    unfold C
    simp [show (393216 * k + 133439) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 400318) = 589824 * k + 200159 := by
    unfold C
    simp [show (1179648 * k + 400318) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 200159) = 1769472 * k + 600478 := by
    unfold C
    simp [show (589824 * k + 200159) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 600478) = 884736 * k + 300239 := by
    unfold C
    simp [show (1769472 * k + 600478) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 300239) = 2654208 * k + 900718 := by
    unfold C
    simp [show (884736 * k + 300239) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 900718) = 1327104 * k + 450359 := by
    unfold C
    simp [show (2654208 * k + 900718) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 450359) = 3981312 * k + 1351078 := by
    unfold C
    simp [show (1327104 * k + 450359) % 2 ≠ 0 by omega]
    omega
  have h10 : C (3981312 * k + 1351078) = 1990656 * k + 675539 := by
    unfold C
    simp [show (3981312 * k + 1351078) % 2 = 0 by omega]
    omega
  have h11 : C (1990656 * k + 675539) = 5971968 * k + 2026618 := by
    unfold C
    simp [show (1990656 * k + 675539) % 2 ≠ 0 by omega]
    omega
  have h12 : C (5971968 * k + 2026618) = 2985984 * k + 1013309 := by
    unfold C
    simp [show (5971968 * k + 2026618) % 2 = 0 by omega]
    omega
  have h13 : C (2985984 * k + 1013309) = 8957952 * k + 3039928 := by
    unfold C
    simp [show (2985984 * k + 1013309) % 2 ≠ 0 by omega]
    omega
  have h14 : C (8957952 * k + 3039928) = 4478976 * k + 1519964 := by
    unfold C
    simp [show (8957952 * k + 3039928) % 2 = 0 by omega]
    omega
  have h15 : C (4478976 * k + 1519964) = 2239488 * k + 759982 := by
    unfold C
    simp [show (4478976 * k + 1519964) % 2 = 0 by omega]
    omega
  have h16 : C (2239488 * k + 759982) = 1119744 * k + 379991 := by
    unfold C
    simp [show (2239488 * k + 759982) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 379991) = 3359232 * k + 1139974 := by
    unfold C
    simp [show (1119744 * k + 379991) % 2 ≠ 0 by omega]
    omega
  have h18 : C (3359232 * k + 1139974) = 1679616 * k + 569987 := by
    unfold C
    simp [show (3359232 * k + 1139974) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 569987) = 5038848 * k + 1709962 := by
    unfold C
    simp [show (1679616 * k + 569987) % 2 ≠ 0 by omega]
    omega
  have h20 : C (5038848 * k + 1709962) = 2519424 * k + 854981 := by
    unfold C
    simp [show (5038848 * k + 1709962) % 2 = 0 by omega]
    omega
  have h21 : C (2519424 * k + 854981) = 7558272 * k + 2564944 := by
    unfold C
    simp [show (2519424 * k + 854981) % 2 ≠ 0 by omega]
    omega
  have h22 : C (7558272 * k + 2564944) = 3779136 * k + 1282472 := by
    unfold C
    simp [show (7558272 * k + 2564944) % 2 = 0 by omega]
    omega
  have h23 : C (3779136 * k + 1282472) = 1889568 * k + 641236 := by
    unfold C
    simp [show (3779136 * k + 1282472) % 2 = 0 by omega]
    omega
  have h24 : C (1889568 * k + 641236) = 944784 * k + 320618 := by
    unfold C
    simp [show (1889568 * k + 641236) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 320618) = 472392 * k + 160309 := by
    unfold C
    simp [show (944784 * k + 320618) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 160309) = 1417176 * k + 480928 := by
    unfold C
    simp [show (472392 * k + 160309) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 480928) = 708588 * k + 240464 := by
    unfold C
    simp [show (1417176 * k + 480928) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 240464) = 354294 * k + 120232 := by
    unfold C
    simp [show (708588 * k + 240464) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 120232) = 177147 * k + 60116 := by
    unfold C
    simp [show (354294 * k + 120232) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 88959) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 88959))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

end CollatzM18Shard017
