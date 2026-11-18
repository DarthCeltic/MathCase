import Mathlib.Data.Nat.Prime.Basic

namespace CollatzM18Shard012

def C (n : Nat) : Nat := if n % 2 = 0 then n / 2 else 3 * n + 1

def iterate (n t : Nat) : Nat := Nat.rec n (fun _ previous => C previous) t

theorem descent_mod262144_59135 : ∀ k : Nat,
    iterate (262144 * k + 59135) 29 = 177147 * k + 39962 ∧
      177147 * k + 39962 < 262144 * k + 59135 := by
  intro k
  have h1 : C (262144 * k + 59135) = 786432 * k + 177406 := by
    unfold C
    simp [show (262144 * k + 59135) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 177406) = 393216 * k + 88703 := by
    unfold C
    simp [show (786432 * k + 177406) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 88703) = 1179648 * k + 266110 := by
    unfold C
    simp [show (393216 * k + 88703) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 266110) = 589824 * k + 133055 := by
    unfold C
    simp [show (1179648 * k + 266110) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 133055) = 1769472 * k + 399166 := by
    unfold C
    simp [show (589824 * k + 133055) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 399166) = 884736 * k + 199583 := by
    unfold C
    simp [show (1769472 * k + 399166) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 199583) = 2654208 * k + 598750 := by
    unfold C
    simp [show (884736 * k + 199583) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 598750) = 1327104 * k + 299375 := by
    unfold C
    simp [show (2654208 * k + 598750) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 299375) = 3981312 * k + 898126 := by
    unfold C
    simp [show (1327104 * k + 299375) % 2 ≠ 0 by omega]
    omega
  have h10 : C (3981312 * k + 898126) = 1990656 * k + 449063 := by
    unfold C
    simp [show (3981312 * k + 898126) % 2 = 0 by omega]
    omega
  have h11 : C (1990656 * k + 449063) = 5971968 * k + 1347190 := by
    unfold C
    simp [show (1990656 * k + 449063) % 2 ≠ 0 by omega]
    omega
  have h12 : C (5971968 * k + 1347190) = 2985984 * k + 673595 := by
    unfold C
    simp [show (5971968 * k + 1347190) % 2 = 0 by omega]
    omega
  have h13 : C (2985984 * k + 673595) = 8957952 * k + 2020786 := by
    unfold C
    simp [show (2985984 * k + 673595) % 2 ≠ 0 by omega]
    omega
  have h14 : C (8957952 * k + 2020786) = 4478976 * k + 1010393 := by
    unfold C
    simp [show (8957952 * k + 2020786) % 2 = 0 by omega]
    omega
  have h15 : C (4478976 * k + 1010393) = 13436928 * k + 3031180 := by
    unfold C
    simp [show (4478976 * k + 1010393) % 2 ≠ 0 by omega]
    omega
  have h16 : C (13436928 * k + 3031180) = 6718464 * k + 1515590 := by
    unfold C
    simp [show (13436928 * k + 3031180) % 2 = 0 by omega]
    omega
  have h17 : C (6718464 * k + 1515590) = 3359232 * k + 757795 := by
    unfold C
    simp [show (6718464 * k + 1515590) % 2 = 0 by omega]
    omega
  have h18 : C (3359232 * k + 757795) = 10077696 * k + 2273386 := by
    unfold C
    simp [show (3359232 * k + 757795) % 2 ≠ 0 by omega]
    omega
  have h19 : C (10077696 * k + 2273386) = 5038848 * k + 1136693 := by
    unfold C
    simp [show (10077696 * k + 2273386) % 2 = 0 by omega]
    omega
  have h20 : C (5038848 * k + 1136693) = 15116544 * k + 3410080 := by
    unfold C
    simp [show (5038848 * k + 1136693) % 2 ≠ 0 by omega]
    omega
  have h21 : C (15116544 * k + 3410080) = 7558272 * k + 1705040 := by
    unfold C
    simp [show (15116544 * k + 3410080) % 2 = 0 by omega]
    omega
  have h22 : C (7558272 * k + 1705040) = 3779136 * k + 852520 := by
    unfold C
    simp [show (7558272 * k + 1705040) % 2 = 0 by omega]
    omega
  have h23 : C (3779136 * k + 852520) = 1889568 * k + 426260 := by
    unfold C
    simp [show (3779136 * k + 852520) % 2 = 0 by omega]
    omega
  have h24 : C (1889568 * k + 426260) = 944784 * k + 213130 := by
    unfold C
    simp [show (1889568 * k + 426260) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 213130) = 472392 * k + 106565 := by
    unfold C
    simp [show (944784 * k + 213130) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 106565) = 1417176 * k + 319696 := by
    unfold C
    simp [show (472392 * k + 106565) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 319696) = 708588 * k + 159848 := by
    unfold C
    simp [show (1417176 * k + 319696) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 159848) = 354294 * k + 79924 := by
    unfold C
    simp [show (708588 * k + 159848) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 79924) = 177147 * k + 39962 := by
    unfold C
    simp [show (354294 * k + 79924) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 59135) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 59135))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_59227 : ∀ k : Nat,
    iterate (262144 * k + 59227) 29 = 177147 * k + 40025 ∧
      177147 * k + 40025 < 262144 * k + 59227 := by
  intro k
  have h1 : C (262144 * k + 59227) = 786432 * k + 177682 := by
    unfold C
    simp [show (262144 * k + 59227) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 177682) = 393216 * k + 88841 := by
    unfold C
    simp [show (786432 * k + 177682) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 88841) = 1179648 * k + 266524 := by
    unfold C
    simp [show (393216 * k + 88841) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 266524) = 589824 * k + 133262 := by
    unfold C
    simp [show (1179648 * k + 266524) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 133262) = 294912 * k + 66631 := by
    unfold C
    simp [show (589824 * k + 133262) % 2 = 0 by omega]
    omega
  have h6 : C (294912 * k + 66631) = 884736 * k + 199894 := by
    unfold C
    simp [show (294912 * k + 66631) % 2 ≠ 0 by omega]
    omega
  have h7 : C (884736 * k + 199894) = 442368 * k + 99947 := by
    unfold C
    simp [show (884736 * k + 199894) % 2 = 0 by omega]
    omega
  have h8 : C (442368 * k + 99947) = 1327104 * k + 299842 := by
    unfold C
    simp [show (442368 * k + 99947) % 2 ≠ 0 by omega]
    omega
  have h9 : C (1327104 * k + 299842) = 663552 * k + 149921 := by
    unfold C
    simp [show (1327104 * k + 299842) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 149921) = 1990656 * k + 449764 := by
    unfold C
    simp [show (663552 * k + 149921) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 449764) = 995328 * k + 224882 := by
    unfold C
    simp [show (1990656 * k + 449764) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 224882) = 497664 * k + 112441 := by
    unfold C
    simp [show (995328 * k + 224882) % 2 = 0 by omega]
    omega
  have h13 : C (497664 * k + 112441) = 1492992 * k + 337324 := by
    unfold C
    simp [show (497664 * k + 112441) % 2 ≠ 0 by omega]
    omega
  have h14 : C (1492992 * k + 337324) = 746496 * k + 168662 := by
    unfold C
    simp [show (1492992 * k + 337324) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 168662) = 373248 * k + 84331 := by
    unfold C
    simp [show (746496 * k + 168662) % 2 = 0 by omega]
    omega
  have h16 : C (373248 * k + 84331) = 1119744 * k + 252994 := by
    unfold C
    simp [show (373248 * k + 84331) % 2 ≠ 0 by omega]
    omega
  have h17 : C (1119744 * k + 252994) = 559872 * k + 126497 := by
    unfold C
    simp [show (1119744 * k + 252994) % 2 = 0 by omega]
    omega
  have h18 : C (559872 * k + 126497) = 1679616 * k + 379492 := by
    unfold C
    simp [show (559872 * k + 126497) % 2 ≠ 0 by omega]
    omega
  have h19 : C (1679616 * k + 379492) = 839808 * k + 189746 := by
    unfold C
    simp [show (1679616 * k + 379492) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 189746) = 419904 * k + 94873 := by
    unfold C
    simp [show (839808 * k + 189746) % 2 = 0 by omega]
    omega
  have h21 : C (419904 * k + 94873) = 1259712 * k + 284620 := by
    unfold C
    simp [show (419904 * k + 94873) % 2 ≠ 0 by omega]
    omega
  have h22 : C (1259712 * k + 284620) = 629856 * k + 142310 := by
    unfold C
    simp [show (1259712 * k + 284620) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 142310) = 314928 * k + 71155 := by
    unfold C
    simp [show (629856 * k + 142310) % 2 = 0 by omega]
    omega
  have h24 : C (314928 * k + 71155) = 944784 * k + 213466 := by
    unfold C
    simp [show (314928 * k + 71155) % 2 ≠ 0 by omega]
    omega
  have h25 : C (944784 * k + 213466) = 472392 * k + 106733 := by
    unfold C
    simp [show (944784 * k + 213466) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 106733) = 1417176 * k + 320200 := by
    unfold C
    simp [show (472392 * k + 106733) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 320200) = 708588 * k + 160100 := by
    unfold C
    simp [show (1417176 * k + 320200) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 160100) = 354294 * k + 80050 := by
    unfold C
    simp [show (708588 * k + 160100) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 80050) = 177147 * k + 40025 := by
    unfold C
    simp [show (354294 * k + 80050) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 59227) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 59227))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_59387 : ∀ k : Nat,
    iterate (262144 * k + 59387) 29 = 177147 * k + 40133 ∧
      177147 * k + 40133 < 262144 * k + 59387 := by
  intro k
  have h1 : C (262144 * k + 59387) = 786432 * k + 178162 := by
    unfold C
    simp [show (262144 * k + 59387) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 178162) = 393216 * k + 89081 := by
    unfold C
    simp [show (786432 * k + 178162) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 89081) = 1179648 * k + 267244 := by
    unfold C
    simp [show (393216 * k + 89081) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 267244) = 589824 * k + 133622 := by
    unfold C
    simp [show (1179648 * k + 267244) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 133622) = 294912 * k + 66811 := by
    unfold C
    simp [show (589824 * k + 133622) % 2 = 0 by omega]
    omega
  have h6 : C (294912 * k + 66811) = 884736 * k + 200434 := by
    unfold C
    simp [show (294912 * k + 66811) % 2 ≠ 0 by omega]
    omega
  have h7 : C (884736 * k + 200434) = 442368 * k + 100217 := by
    unfold C
    simp [show (884736 * k + 200434) % 2 = 0 by omega]
    omega
  have h8 : C (442368 * k + 100217) = 1327104 * k + 300652 := by
    unfold C
    simp [show (442368 * k + 100217) % 2 ≠ 0 by omega]
    omega
  have h9 : C (1327104 * k + 300652) = 663552 * k + 150326 := by
    unfold C
    simp [show (1327104 * k + 300652) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 150326) = 331776 * k + 75163 := by
    unfold C
    simp [show (663552 * k + 150326) % 2 = 0 by omega]
    omega
  have h11 : C (331776 * k + 75163) = 995328 * k + 225490 := by
    unfold C
    simp [show (331776 * k + 75163) % 2 ≠ 0 by omega]
    omega
  have h12 : C (995328 * k + 225490) = 497664 * k + 112745 := by
    unfold C
    simp [show (995328 * k + 225490) % 2 = 0 by omega]
    omega
  have h13 : C (497664 * k + 112745) = 1492992 * k + 338236 := by
    unfold C
    simp [show (497664 * k + 112745) % 2 ≠ 0 by omega]
    omega
  have h14 : C (1492992 * k + 338236) = 746496 * k + 169118 := by
    unfold C
    simp [show (1492992 * k + 338236) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 169118) = 373248 * k + 84559 := by
    unfold C
    simp [show (746496 * k + 169118) % 2 = 0 by omega]
    omega
  have h16 : C (373248 * k + 84559) = 1119744 * k + 253678 := by
    unfold C
    simp [show (373248 * k + 84559) % 2 ≠ 0 by omega]
    omega
  have h17 : C (1119744 * k + 253678) = 559872 * k + 126839 := by
    unfold C
    simp [show (1119744 * k + 253678) % 2 = 0 by omega]
    omega
  have h18 : C (559872 * k + 126839) = 1679616 * k + 380518 := by
    unfold C
    simp [show (559872 * k + 126839) % 2 ≠ 0 by omega]
    omega
  have h19 : C (1679616 * k + 380518) = 839808 * k + 190259 := by
    unfold C
    simp [show (1679616 * k + 380518) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 190259) = 2519424 * k + 570778 := by
    unfold C
    simp [show (839808 * k + 190259) % 2 ≠ 0 by omega]
    omega
  have h21 : C (2519424 * k + 570778) = 1259712 * k + 285389 := by
    unfold C
    simp [show (2519424 * k + 570778) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 285389) = 3779136 * k + 856168 := by
    unfold C
    simp [show (1259712 * k + 285389) % 2 ≠ 0 by omega]
    omega
  have h23 : C (3779136 * k + 856168) = 1889568 * k + 428084 := by
    unfold C
    simp [show (3779136 * k + 856168) % 2 = 0 by omega]
    omega
  have h24 : C (1889568 * k + 428084) = 944784 * k + 214042 := by
    unfold C
    simp [show (1889568 * k + 428084) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 214042) = 472392 * k + 107021 := by
    unfold C
    simp [show (944784 * k + 214042) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 107021) = 1417176 * k + 321064 := by
    unfold C
    simp [show (472392 * k + 107021) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 321064) = 708588 * k + 160532 := by
    unfold C
    simp [show (1417176 * k + 321064) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 160532) = 354294 * k + 80266 := by
    unfold C
    simp [show (708588 * k + 160532) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 80266) = 177147 * k + 40133 := by
    unfold C
    simp [show (354294 * k + 80266) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 59387) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 59387))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_59599 : ∀ k : Nat,
    iterate (262144 * k + 59599) 29 = 177147 * k + 40276 ∧
      177147 * k + 40276 < 262144 * k + 59599 := by
  intro k
  have h1 : C (262144 * k + 59599) = 786432 * k + 178798 := by
    unfold C
    simp [show (262144 * k + 59599) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 178798) = 393216 * k + 89399 := by
    unfold C
    simp [show (786432 * k + 178798) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 89399) = 1179648 * k + 268198 := by
    unfold C
    simp [show (393216 * k + 89399) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 268198) = 589824 * k + 134099 := by
    unfold C
    simp [show (1179648 * k + 268198) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 134099) = 1769472 * k + 402298 := by
    unfold C
    simp [show (589824 * k + 134099) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 402298) = 884736 * k + 201149 := by
    unfold C
    simp [show (1769472 * k + 402298) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 201149) = 2654208 * k + 603448 := by
    unfold C
    simp [show (884736 * k + 201149) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 603448) = 1327104 * k + 301724 := by
    unfold C
    simp [show (2654208 * k + 603448) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 301724) = 663552 * k + 150862 := by
    unfold C
    simp [show (1327104 * k + 301724) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 150862) = 331776 * k + 75431 := by
    unfold C
    simp [show (663552 * k + 150862) % 2 = 0 by omega]
    omega
  have h11 : C (331776 * k + 75431) = 995328 * k + 226294 := by
    unfold C
    simp [show (331776 * k + 75431) % 2 ≠ 0 by omega]
    omega
  have h12 : C (995328 * k + 226294) = 497664 * k + 113147 := by
    unfold C
    simp [show (995328 * k + 226294) % 2 = 0 by omega]
    omega
  have h13 : C (497664 * k + 113147) = 1492992 * k + 339442 := by
    unfold C
    simp [show (497664 * k + 113147) % 2 ≠ 0 by omega]
    omega
  have h14 : C (1492992 * k + 339442) = 746496 * k + 169721 := by
    unfold C
    simp [show (1492992 * k + 339442) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 169721) = 2239488 * k + 509164 := by
    unfold C
    simp [show (746496 * k + 169721) % 2 ≠ 0 by omega]
    omega
  have h16 : C (2239488 * k + 509164) = 1119744 * k + 254582 := by
    unfold C
    simp [show (2239488 * k + 509164) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 254582) = 559872 * k + 127291 := by
    unfold C
    simp [show (1119744 * k + 254582) % 2 = 0 by omega]
    omega
  have h18 : C (559872 * k + 127291) = 1679616 * k + 381874 := by
    unfold C
    simp [show (559872 * k + 127291) % 2 ≠ 0 by omega]
    omega
  have h19 : C (1679616 * k + 381874) = 839808 * k + 190937 := by
    unfold C
    simp [show (1679616 * k + 381874) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 190937) = 2519424 * k + 572812 := by
    unfold C
    simp [show (839808 * k + 190937) % 2 ≠ 0 by omega]
    omega
  have h21 : C (2519424 * k + 572812) = 1259712 * k + 286406 := by
    unfold C
    simp [show (2519424 * k + 572812) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 286406) = 629856 * k + 143203 := by
    unfold C
    simp [show (1259712 * k + 286406) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 143203) = 1889568 * k + 429610 := by
    unfold C
    simp [show (629856 * k + 143203) % 2 ≠ 0 by omega]
    omega
  have h24 : C (1889568 * k + 429610) = 944784 * k + 214805 := by
    unfold C
    simp [show (1889568 * k + 429610) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 214805) = 2834352 * k + 644416 := by
    unfold C
    simp [show (944784 * k + 214805) % 2 ≠ 0 by omega]
    omega
  have h26 : C (2834352 * k + 644416) = 1417176 * k + 322208 := by
    unfold C
    simp [show (2834352 * k + 644416) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 322208) = 708588 * k + 161104 := by
    unfold C
    simp [show (1417176 * k + 322208) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 161104) = 354294 * k + 80552 := by
    unfold C
    simp [show (708588 * k + 161104) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 80552) = 177147 * k + 40276 := by
    unfold C
    simp [show (354294 * k + 80552) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 59599) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 59599))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_59719 : ∀ k : Nat,
    iterate (262144 * k + 59719) 29 = 177147 * k + 40357 ∧
      177147 * k + 40357 < 262144 * k + 59719 := by
  intro k
  have h1 : C (262144 * k + 59719) = 786432 * k + 179158 := by
    unfold C
    simp [show (262144 * k + 59719) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 179158) = 393216 * k + 89579 := by
    unfold C
    simp [show (786432 * k + 179158) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 89579) = 1179648 * k + 268738 := by
    unfold C
    simp [show (393216 * k + 89579) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 268738) = 589824 * k + 134369 := by
    unfold C
    simp [show (1179648 * k + 268738) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 134369) = 1769472 * k + 403108 := by
    unfold C
    simp [show (589824 * k + 134369) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 403108) = 884736 * k + 201554 := by
    unfold C
    simp [show (1769472 * k + 403108) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 201554) = 442368 * k + 100777 := by
    unfold C
    simp [show (884736 * k + 201554) % 2 = 0 by omega]
    omega
  have h8 : C (442368 * k + 100777) = 1327104 * k + 302332 := by
    unfold C
    simp [show (442368 * k + 100777) % 2 ≠ 0 by omega]
    omega
  have h9 : C (1327104 * k + 302332) = 663552 * k + 151166 := by
    unfold C
    simp [show (1327104 * k + 302332) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 151166) = 331776 * k + 75583 := by
    unfold C
    simp [show (663552 * k + 151166) % 2 = 0 by omega]
    omega
  have h11 : C (331776 * k + 75583) = 995328 * k + 226750 := by
    unfold C
    simp [show (331776 * k + 75583) % 2 ≠ 0 by omega]
    omega
  have h12 : C (995328 * k + 226750) = 497664 * k + 113375 := by
    unfold C
    simp [show (995328 * k + 226750) % 2 = 0 by omega]
    omega
  have h13 : C (497664 * k + 113375) = 1492992 * k + 340126 := by
    unfold C
    simp [show (497664 * k + 113375) % 2 ≠ 0 by omega]
    omega
  have h14 : C (1492992 * k + 340126) = 746496 * k + 170063 := by
    unfold C
    simp [show (1492992 * k + 340126) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 170063) = 2239488 * k + 510190 := by
    unfold C
    simp [show (746496 * k + 170063) % 2 ≠ 0 by omega]
    omega
  have h16 : C (2239488 * k + 510190) = 1119744 * k + 255095 := by
    unfold C
    simp [show (2239488 * k + 510190) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 255095) = 3359232 * k + 765286 := by
    unfold C
    simp [show (1119744 * k + 255095) % 2 ≠ 0 by omega]
    omega
  have h18 : C (3359232 * k + 765286) = 1679616 * k + 382643 := by
    unfold C
    simp [show (3359232 * k + 765286) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 382643) = 5038848 * k + 1147930 := by
    unfold C
    simp [show (1679616 * k + 382643) % 2 ≠ 0 by omega]
    omega
  have h20 : C (5038848 * k + 1147930) = 2519424 * k + 573965 := by
    unfold C
    simp [show (5038848 * k + 1147930) % 2 = 0 by omega]
    omega
  have h21 : C (2519424 * k + 573965) = 7558272 * k + 1721896 := by
    unfold C
    simp [show (2519424 * k + 573965) % 2 ≠ 0 by omega]
    omega
  have h22 : C (7558272 * k + 1721896) = 3779136 * k + 860948 := by
    unfold C
    simp [show (7558272 * k + 1721896) % 2 = 0 by omega]
    omega
  have h23 : C (3779136 * k + 860948) = 1889568 * k + 430474 := by
    unfold C
    simp [show (3779136 * k + 860948) % 2 = 0 by omega]
    omega
  have h24 : C (1889568 * k + 430474) = 944784 * k + 215237 := by
    unfold C
    simp [show (1889568 * k + 430474) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 215237) = 2834352 * k + 645712 := by
    unfold C
    simp [show (944784 * k + 215237) % 2 ≠ 0 by omega]
    omega
  have h26 : C (2834352 * k + 645712) = 1417176 * k + 322856 := by
    unfold C
    simp [show (2834352 * k + 645712) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 322856) = 708588 * k + 161428 := by
    unfold C
    simp [show (1417176 * k + 322856) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 161428) = 354294 * k + 80714 := by
    unfold C
    simp [show (708588 * k + 161428) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 80714) = 177147 * k + 40357 := by
    unfold C
    simp [show (354294 * k + 80714) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 59719) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 59719))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_60071 : ∀ k : Nat,
    iterate (262144 * k + 60071) 29 = 177147 * k + 40595 ∧
      177147 * k + 40595 < 262144 * k + 60071 := by
  intro k
  have h1 : C (262144 * k + 60071) = 786432 * k + 180214 := by
    unfold C
    simp [show (262144 * k + 60071) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 180214) = 393216 * k + 90107 := by
    unfold C
    simp [show (786432 * k + 180214) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 90107) = 1179648 * k + 270322 := by
    unfold C
    simp [show (393216 * k + 90107) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 270322) = 589824 * k + 135161 := by
    unfold C
    simp [show (1179648 * k + 270322) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 135161) = 1769472 * k + 405484 := by
    unfold C
    simp [show (589824 * k + 135161) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 405484) = 884736 * k + 202742 := by
    unfold C
    simp [show (1769472 * k + 405484) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 202742) = 442368 * k + 101371 := by
    unfold C
    simp [show (884736 * k + 202742) % 2 = 0 by omega]
    omega
  have h8 : C (442368 * k + 101371) = 1327104 * k + 304114 := by
    unfold C
    simp [show (442368 * k + 101371) % 2 ≠ 0 by omega]
    omega
  have h9 : C (1327104 * k + 304114) = 663552 * k + 152057 := by
    unfold C
    simp [show (1327104 * k + 304114) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 152057) = 1990656 * k + 456172 := by
    unfold C
    simp [show (663552 * k + 152057) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 456172) = 995328 * k + 228086 := by
    unfold C
    simp [show (1990656 * k + 456172) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 228086) = 497664 * k + 114043 := by
    unfold C
    simp [show (995328 * k + 228086) % 2 = 0 by omega]
    omega
  have h13 : C (497664 * k + 114043) = 1492992 * k + 342130 := by
    unfold C
    simp [show (497664 * k + 114043) % 2 ≠ 0 by omega]
    omega
  have h14 : C (1492992 * k + 342130) = 746496 * k + 171065 := by
    unfold C
    simp [show (1492992 * k + 342130) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 171065) = 2239488 * k + 513196 := by
    unfold C
    simp [show (746496 * k + 171065) % 2 ≠ 0 by omega]
    omega
  have h16 : C (2239488 * k + 513196) = 1119744 * k + 256598 := by
    unfold C
    simp [show (2239488 * k + 513196) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 256598) = 559872 * k + 128299 := by
    unfold C
    simp [show (1119744 * k + 256598) % 2 = 0 by omega]
    omega
  have h18 : C (559872 * k + 128299) = 1679616 * k + 384898 := by
    unfold C
    simp [show (559872 * k + 128299) % 2 ≠ 0 by omega]
    omega
  have h19 : C (1679616 * k + 384898) = 839808 * k + 192449 := by
    unfold C
    simp [show (1679616 * k + 384898) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 192449) = 2519424 * k + 577348 := by
    unfold C
    simp [show (839808 * k + 192449) % 2 ≠ 0 by omega]
    omega
  have h21 : C (2519424 * k + 577348) = 1259712 * k + 288674 := by
    unfold C
    simp [show (2519424 * k + 577348) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 288674) = 629856 * k + 144337 := by
    unfold C
    simp [show (1259712 * k + 288674) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 144337) = 1889568 * k + 433012 := by
    unfold C
    simp [show (629856 * k + 144337) % 2 ≠ 0 by omega]
    omega
  have h24 : C (1889568 * k + 433012) = 944784 * k + 216506 := by
    unfold C
    simp [show (1889568 * k + 433012) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 216506) = 472392 * k + 108253 := by
    unfold C
    simp [show (944784 * k + 216506) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 108253) = 1417176 * k + 324760 := by
    unfold C
    simp [show (472392 * k + 108253) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 324760) = 708588 * k + 162380 := by
    unfold C
    simp [show (1417176 * k + 324760) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 162380) = 354294 * k + 81190 := by
    unfold C
    simp [show (708588 * k + 162380) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 81190) = 177147 * k + 40595 := by
    unfold C
    simp [show (354294 * k + 81190) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 60071) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 60071))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_60111 : ∀ k : Nat,
    iterate (262144 * k + 60111) 29 = 177147 * k + 40622 ∧
      177147 * k + 40622 < 262144 * k + 60111 := by
  intro k
  have h1 : C (262144 * k + 60111) = 786432 * k + 180334 := by
    unfold C
    simp [show (262144 * k + 60111) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 180334) = 393216 * k + 90167 := by
    unfold C
    simp [show (786432 * k + 180334) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 90167) = 1179648 * k + 270502 := by
    unfold C
    simp [show (393216 * k + 90167) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 270502) = 589824 * k + 135251 := by
    unfold C
    simp [show (1179648 * k + 270502) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 135251) = 1769472 * k + 405754 := by
    unfold C
    simp [show (589824 * k + 135251) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 405754) = 884736 * k + 202877 := by
    unfold C
    simp [show (1769472 * k + 405754) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 202877) = 2654208 * k + 608632 := by
    unfold C
    simp [show (884736 * k + 202877) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 608632) = 1327104 * k + 304316 := by
    unfold C
    simp [show (2654208 * k + 608632) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 304316) = 663552 * k + 152158 := by
    unfold C
    simp [show (1327104 * k + 304316) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 152158) = 331776 * k + 76079 := by
    unfold C
    simp [show (663552 * k + 152158) % 2 = 0 by omega]
    omega
  have h11 : C (331776 * k + 76079) = 995328 * k + 228238 := by
    unfold C
    simp [show (331776 * k + 76079) % 2 ≠ 0 by omega]
    omega
  have h12 : C (995328 * k + 228238) = 497664 * k + 114119 := by
    unfold C
    simp [show (995328 * k + 228238) % 2 = 0 by omega]
    omega
  have h13 : C (497664 * k + 114119) = 1492992 * k + 342358 := by
    unfold C
    simp [show (497664 * k + 114119) % 2 ≠ 0 by omega]
    omega
  have h14 : C (1492992 * k + 342358) = 746496 * k + 171179 := by
    unfold C
    simp [show (1492992 * k + 342358) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 171179) = 2239488 * k + 513538 := by
    unfold C
    simp [show (746496 * k + 171179) % 2 ≠ 0 by omega]
    omega
  have h16 : C (2239488 * k + 513538) = 1119744 * k + 256769 := by
    unfold C
    simp [show (2239488 * k + 513538) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 256769) = 3359232 * k + 770308 := by
    unfold C
    simp [show (1119744 * k + 256769) % 2 ≠ 0 by omega]
    omega
  have h18 : C (3359232 * k + 770308) = 1679616 * k + 385154 := by
    unfold C
    simp [show (3359232 * k + 770308) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 385154) = 839808 * k + 192577 := by
    unfold C
    simp [show (1679616 * k + 385154) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 192577) = 2519424 * k + 577732 := by
    unfold C
    simp [show (839808 * k + 192577) % 2 ≠ 0 by omega]
    omega
  have h21 : C (2519424 * k + 577732) = 1259712 * k + 288866 := by
    unfold C
    simp [show (2519424 * k + 577732) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 288866) = 629856 * k + 144433 := by
    unfold C
    simp [show (1259712 * k + 288866) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 144433) = 1889568 * k + 433300 := by
    unfold C
    simp [show (629856 * k + 144433) % 2 ≠ 0 by omega]
    omega
  have h24 : C (1889568 * k + 433300) = 944784 * k + 216650 := by
    unfold C
    simp [show (1889568 * k + 433300) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 216650) = 472392 * k + 108325 := by
    unfold C
    simp [show (944784 * k + 216650) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 108325) = 1417176 * k + 324976 := by
    unfold C
    simp [show (472392 * k + 108325) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 324976) = 708588 * k + 162488 := by
    unfold C
    simp [show (1417176 * k + 324976) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 162488) = 354294 * k + 81244 := by
    unfold C
    simp [show (708588 * k + 162488) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 81244) = 177147 * k + 40622 := by
    unfold C
    simp [show (354294 * k + 81244) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 60111) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 60111))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_60159 : ∀ k : Nat,
    iterate (262144 * k + 60159) 29 = 177147 * k + 40654 ∧
      177147 * k + 40654 < 262144 * k + 60159 := by
  intro k
  have h1 : C (262144 * k + 60159) = 786432 * k + 180478 := by
    unfold C
    simp [show (262144 * k + 60159) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 180478) = 393216 * k + 90239 := by
    unfold C
    simp [show (786432 * k + 180478) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 90239) = 1179648 * k + 270718 := by
    unfold C
    simp [show (393216 * k + 90239) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 270718) = 589824 * k + 135359 := by
    unfold C
    simp [show (1179648 * k + 270718) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 135359) = 1769472 * k + 406078 := by
    unfold C
    simp [show (589824 * k + 135359) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 406078) = 884736 * k + 203039 := by
    unfold C
    simp [show (1769472 * k + 406078) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 203039) = 2654208 * k + 609118 := by
    unfold C
    simp [show (884736 * k + 203039) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 609118) = 1327104 * k + 304559 := by
    unfold C
    simp [show (2654208 * k + 609118) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 304559) = 3981312 * k + 913678 := by
    unfold C
    simp [show (1327104 * k + 304559) % 2 ≠ 0 by omega]
    omega
  have h10 : C (3981312 * k + 913678) = 1990656 * k + 456839 := by
    unfold C
    simp [show (3981312 * k + 913678) % 2 = 0 by omega]
    omega
  have h11 : C (1990656 * k + 456839) = 5971968 * k + 1370518 := by
    unfold C
    simp [show (1990656 * k + 456839) % 2 ≠ 0 by omega]
    omega
  have h12 : C (5971968 * k + 1370518) = 2985984 * k + 685259 := by
    unfold C
    simp [show (5971968 * k + 1370518) % 2 = 0 by omega]
    omega
  have h13 : C (2985984 * k + 685259) = 8957952 * k + 2055778 := by
    unfold C
    simp [show (2985984 * k + 685259) % 2 ≠ 0 by omega]
    omega
  have h14 : C (8957952 * k + 2055778) = 4478976 * k + 1027889 := by
    unfold C
    simp [show (8957952 * k + 2055778) % 2 = 0 by omega]
    omega
  have h15 : C (4478976 * k + 1027889) = 13436928 * k + 3083668 := by
    unfold C
    simp [show (4478976 * k + 1027889) % 2 ≠ 0 by omega]
    omega
  have h16 : C (13436928 * k + 3083668) = 6718464 * k + 1541834 := by
    unfold C
    simp [show (13436928 * k + 3083668) % 2 = 0 by omega]
    omega
  have h17 : C (6718464 * k + 1541834) = 3359232 * k + 770917 := by
    unfold C
    simp [show (6718464 * k + 1541834) % 2 = 0 by omega]
    omega
  have h18 : C (3359232 * k + 770917) = 10077696 * k + 2312752 := by
    unfold C
    simp [show (3359232 * k + 770917) % 2 ≠ 0 by omega]
    omega
  have h19 : C (10077696 * k + 2312752) = 5038848 * k + 1156376 := by
    unfold C
    simp [show (10077696 * k + 2312752) % 2 = 0 by omega]
    omega
  have h20 : C (5038848 * k + 1156376) = 2519424 * k + 578188 := by
    unfold C
    simp [show (5038848 * k + 1156376) % 2 = 0 by omega]
    omega
  have h21 : C (2519424 * k + 578188) = 1259712 * k + 289094 := by
    unfold C
    simp [show (2519424 * k + 578188) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 289094) = 629856 * k + 144547 := by
    unfold C
    simp [show (1259712 * k + 289094) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 144547) = 1889568 * k + 433642 := by
    unfold C
    simp [show (629856 * k + 144547) % 2 ≠ 0 by omega]
    omega
  have h24 : C (1889568 * k + 433642) = 944784 * k + 216821 := by
    unfold C
    simp [show (1889568 * k + 433642) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 216821) = 2834352 * k + 650464 := by
    unfold C
    simp [show (944784 * k + 216821) % 2 ≠ 0 by omega]
    omega
  have h26 : C (2834352 * k + 650464) = 1417176 * k + 325232 := by
    unfold C
    simp [show (2834352 * k + 650464) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 325232) = 708588 * k + 162616 := by
    unfold C
    simp [show (1417176 * k + 325232) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 162616) = 354294 * k + 81308 := by
    unfold C
    simp [show (708588 * k + 162616) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 81308) = 177147 * k + 40654 := by
    unfold C
    simp [show (354294 * k + 81308) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 60159) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 60159))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_60191 : ∀ k : Nat,
    iterate (262144 * k + 60191) 29 = 177147 * k + 40676 ∧
      177147 * k + 40676 < 262144 * k + 60191 := by
  intro k
  have h1 : C (262144 * k + 60191) = 786432 * k + 180574 := by
    unfold C
    simp [show (262144 * k + 60191) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 180574) = 393216 * k + 90287 := by
    unfold C
    simp [show (786432 * k + 180574) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 90287) = 1179648 * k + 270862 := by
    unfold C
    simp [show (393216 * k + 90287) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 270862) = 589824 * k + 135431 := by
    unfold C
    simp [show (1179648 * k + 270862) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 135431) = 1769472 * k + 406294 := by
    unfold C
    simp [show (589824 * k + 135431) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 406294) = 884736 * k + 203147 := by
    unfold C
    simp [show (1769472 * k + 406294) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 203147) = 2654208 * k + 609442 := by
    unfold C
    simp [show (884736 * k + 203147) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 609442) = 1327104 * k + 304721 := by
    unfold C
    simp [show (2654208 * k + 609442) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 304721) = 3981312 * k + 914164 := by
    unfold C
    simp [show (1327104 * k + 304721) % 2 ≠ 0 by omega]
    omega
  have h10 : C (3981312 * k + 914164) = 1990656 * k + 457082 := by
    unfold C
    simp [show (3981312 * k + 914164) % 2 = 0 by omega]
    omega
  have h11 : C (1990656 * k + 457082) = 995328 * k + 228541 := by
    unfold C
    simp [show (1990656 * k + 457082) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 228541) = 2985984 * k + 685624 := by
    unfold C
    simp [show (995328 * k + 228541) % 2 ≠ 0 by omega]
    omega
  have h13 : C (2985984 * k + 685624) = 1492992 * k + 342812 := by
    unfold C
    simp [show (2985984 * k + 685624) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 342812) = 746496 * k + 171406 := by
    unfold C
    simp [show (1492992 * k + 342812) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 171406) = 373248 * k + 85703 := by
    unfold C
    simp [show (746496 * k + 171406) % 2 = 0 by omega]
    omega
  have h16 : C (373248 * k + 85703) = 1119744 * k + 257110 := by
    unfold C
    simp [show (373248 * k + 85703) % 2 ≠ 0 by omega]
    omega
  have h17 : C (1119744 * k + 257110) = 559872 * k + 128555 := by
    unfold C
    simp [show (1119744 * k + 257110) % 2 = 0 by omega]
    omega
  have h18 : C (559872 * k + 128555) = 1679616 * k + 385666 := by
    unfold C
    simp [show (559872 * k + 128555) % 2 ≠ 0 by omega]
    omega
  have h19 : C (1679616 * k + 385666) = 839808 * k + 192833 := by
    unfold C
    simp [show (1679616 * k + 385666) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 192833) = 2519424 * k + 578500 := by
    unfold C
    simp [show (839808 * k + 192833) % 2 ≠ 0 by omega]
    omega
  have h21 : C (2519424 * k + 578500) = 1259712 * k + 289250 := by
    unfold C
    simp [show (2519424 * k + 578500) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 289250) = 629856 * k + 144625 := by
    unfold C
    simp [show (1259712 * k + 289250) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 144625) = 1889568 * k + 433876 := by
    unfold C
    simp [show (629856 * k + 144625) % 2 ≠ 0 by omega]
    omega
  have h24 : C (1889568 * k + 433876) = 944784 * k + 216938 := by
    unfold C
    simp [show (1889568 * k + 433876) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 216938) = 472392 * k + 108469 := by
    unfold C
    simp [show (944784 * k + 216938) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 108469) = 1417176 * k + 325408 := by
    unfold C
    simp [show (472392 * k + 108469) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 325408) = 708588 * k + 162704 := by
    unfold C
    simp [show (1417176 * k + 325408) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 162704) = 354294 * k + 81352 := by
    unfold C
    simp [show (708588 * k + 162704) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 81352) = 177147 * k + 40676 := by
    unfold C
    simp [show (354294 * k + 81352) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 60191) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 60191))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_60671 : ∀ k : Nat,
    iterate (262144 * k + 60671) 29 = 177147 * k + 41000 ∧
      177147 * k + 41000 < 262144 * k + 60671 := by
  intro k
  have h1 : C (262144 * k + 60671) = 786432 * k + 182014 := by
    unfold C
    simp [show (262144 * k + 60671) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 182014) = 393216 * k + 91007 := by
    unfold C
    simp [show (786432 * k + 182014) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 91007) = 1179648 * k + 273022 := by
    unfold C
    simp [show (393216 * k + 91007) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 273022) = 589824 * k + 136511 := by
    unfold C
    simp [show (1179648 * k + 273022) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 136511) = 1769472 * k + 409534 := by
    unfold C
    simp [show (589824 * k + 136511) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 409534) = 884736 * k + 204767 := by
    unfold C
    simp [show (1769472 * k + 409534) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 204767) = 2654208 * k + 614302 := by
    unfold C
    simp [show (884736 * k + 204767) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 614302) = 1327104 * k + 307151 := by
    unfold C
    simp [show (2654208 * k + 614302) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 307151) = 3981312 * k + 921454 := by
    unfold C
    simp [show (1327104 * k + 307151) % 2 ≠ 0 by omega]
    omega
  have h10 : C (3981312 * k + 921454) = 1990656 * k + 460727 := by
    unfold C
    simp [show (3981312 * k + 921454) % 2 = 0 by omega]
    omega
  have h11 : C (1990656 * k + 460727) = 5971968 * k + 1382182 := by
    unfold C
    simp [show (1990656 * k + 460727) % 2 ≠ 0 by omega]
    omega
  have h12 : C (5971968 * k + 1382182) = 2985984 * k + 691091 := by
    unfold C
    simp [show (5971968 * k + 1382182) % 2 = 0 by omega]
    omega
  have h13 : C (2985984 * k + 691091) = 8957952 * k + 2073274 := by
    unfold C
    simp [show (2985984 * k + 691091) % 2 ≠ 0 by omega]
    omega
  have h14 : C (8957952 * k + 2073274) = 4478976 * k + 1036637 := by
    unfold C
    simp [show (8957952 * k + 2073274) % 2 = 0 by omega]
    omega
  have h15 : C (4478976 * k + 1036637) = 13436928 * k + 3109912 := by
    unfold C
    simp [show (4478976 * k + 1036637) % 2 ≠ 0 by omega]
    omega
  have h16 : C (13436928 * k + 3109912) = 6718464 * k + 1554956 := by
    unfold C
    simp [show (13436928 * k + 3109912) % 2 = 0 by omega]
    omega
  have h17 : C (6718464 * k + 1554956) = 3359232 * k + 777478 := by
    unfold C
    simp [show (6718464 * k + 1554956) % 2 = 0 by omega]
    omega
  have h18 : C (3359232 * k + 777478) = 1679616 * k + 388739 := by
    unfold C
    simp [show (3359232 * k + 777478) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 388739) = 5038848 * k + 1166218 := by
    unfold C
    simp [show (1679616 * k + 388739) % 2 ≠ 0 by omega]
    omega
  have h20 : C (5038848 * k + 1166218) = 2519424 * k + 583109 := by
    unfold C
    simp [show (5038848 * k + 1166218) % 2 = 0 by omega]
    omega
  have h21 : C (2519424 * k + 583109) = 7558272 * k + 1749328 := by
    unfold C
    simp [show (2519424 * k + 583109) % 2 ≠ 0 by omega]
    omega
  have h22 : C (7558272 * k + 1749328) = 3779136 * k + 874664 := by
    unfold C
    simp [show (7558272 * k + 1749328) % 2 = 0 by omega]
    omega
  have h23 : C (3779136 * k + 874664) = 1889568 * k + 437332 := by
    unfold C
    simp [show (3779136 * k + 874664) % 2 = 0 by omega]
    omega
  have h24 : C (1889568 * k + 437332) = 944784 * k + 218666 := by
    unfold C
    simp [show (1889568 * k + 437332) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 218666) = 472392 * k + 109333 := by
    unfold C
    simp [show (944784 * k + 218666) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 109333) = 1417176 * k + 328000 := by
    unfold C
    simp [show (472392 * k + 109333) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 328000) = 708588 * k + 164000 := by
    unfold C
    simp [show (1417176 * k + 328000) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 164000) = 354294 * k + 82000 := by
    unfold C
    simp [show (708588 * k + 164000) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 82000) = 177147 * k + 41000 := by
    unfold C
    simp [show (354294 * k + 82000) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 60671) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 60671))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_60719 : ∀ k : Nat,
    iterate (262144 * k + 60719) 29 = 177147 * k + 41033 ∧
      177147 * k + 41033 < 262144 * k + 60719 := by
  intro k
  have h1 : C (262144 * k + 60719) = 786432 * k + 182158 := by
    unfold C
    simp [show (262144 * k + 60719) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 182158) = 393216 * k + 91079 := by
    unfold C
    simp [show (786432 * k + 182158) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 91079) = 1179648 * k + 273238 := by
    unfold C
    simp [show (393216 * k + 91079) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 273238) = 589824 * k + 136619 := by
    unfold C
    simp [show (1179648 * k + 273238) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 136619) = 1769472 * k + 409858 := by
    unfold C
    simp [show (589824 * k + 136619) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 409858) = 884736 * k + 204929 := by
    unfold C
    simp [show (1769472 * k + 409858) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 204929) = 2654208 * k + 614788 := by
    unfold C
    simp [show (884736 * k + 204929) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 614788) = 1327104 * k + 307394 := by
    unfold C
    simp [show (2654208 * k + 614788) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 307394) = 663552 * k + 153697 := by
    unfold C
    simp [show (1327104 * k + 307394) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 153697) = 1990656 * k + 461092 := by
    unfold C
    simp [show (663552 * k + 153697) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 461092) = 995328 * k + 230546 := by
    unfold C
    simp [show (1990656 * k + 461092) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 230546) = 497664 * k + 115273 := by
    unfold C
    simp [show (995328 * k + 230546) % 2 = 0 by omega]
    omega
  have h13 : C (497664 * k + 115273) = 1492992 * k + 345820 := by
    unfold C
    simp [show (497664 * k + 115273) % 2 ≠ 0 by omega]
    omega
  have h14 : C (1492992 * k + 345820) = 746496 * k + 172910 := by
    unfold C
    simp [show (1492992 * k + 345820) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 172910) = 373248 * k + 86455 := by
    unfold C
    simp [show (746496 * k + 172910) % 2 = 0 by omega]
    omega
  have h16 : C (373248 * k + 86455) = 1119744 * k + 259366 := by
    unfold C
    simp [show (373248 * k + 86455) % 2 ≠ 0 by omega]
    omega
  have h17 : C (1119744 * k + 259366) = 559872 * k + 129683 := by
    unfold C
    simp [show (1119744 * k + 259366) % 2 = 0 by omega]
    omega
  have h18 : C (559872 * k + 129683) = 1679616 * k + 389050 := by
    unfold C
    simp [show (559872 * k + 129683) % 2 ≠ 0 by omega]
    omega
  have h19 : C (1679616 * k + 389050) = 839808 * k + 194525 := by
    unfold C
    simp [show (1679616 * k + 389050) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 194525) = 2519424 * k + 583576 := by
    unfold C
    simp [show (839808 * k + 194525) % 2 ≠ 0 by omega]
    omega
  have h21 : C (2519424 * k + 583576) = 1259712 * k + 291788 := by
    unfold C
    simp [show (2519424 * k + 583576) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 291788) = 629856 * k + 145894 := by
    unfold C
    simp [show (1259712 * k + 291788) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 145894) = 314928 * k + 72947 := by
    unfold C
    simp [show (629856 * k + 145894) % 2 = 0 by omega]
    omega
  have h24 : C (314928 * k + 72947) = 944784 * k + 218842 := by
    unfold C
    simp [show (314928 * k + 72947) % 2 ≠ 0 by omega]
    omega
  have h25 : C (944784 * k + 218842) = 472392 * k + 109421 := by
    unfold C
    simp [show (944784 * k + 218842) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 109421) = 1417176 * k + 328264 := by
    unfold C
    simp [show (472392 * k + 109421) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 328264) = 708588 * k + 164132 := by
    unfold C
    simp [show (1417176 * k + 328264) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 164132) = 354294 * k + 82066 := by
    unfold C
    simp [show (708588 * k + 164132) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 82066) = 177147 * k + 41033 := by
    unfold C
    simp [show (354294 * k + 82066) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 60719) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 60719))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_60959 : ∀ k : Nat,
    iterate (262144 * k + 60959) 29 = 177147 * k + 41195 ∧
      177147 * k + 41195 < 262144 * k + 60959 := by
  intro k
  have h1 : C (262144 * k + 60959) = 786432 * k + 182878 := by
    unfold C
    simp [show (262144 * k + 60959) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 182878) = 393216 * k + 91439 := by
    unfold C
    simp [show (786432 * k + 182878) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 91439) = 1179648 * k + 274318 := by
    unfold C
    simp [show (393216 * k + 91439) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 274318) = 589824 * k + 137159 := by
    unfold C
    simp [show (1179648 * k + 274318) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 137159) = 1769472 * k + 411478 := by
    unfold C
    simp [show (589824 * k + 137159) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 411478) = 884736 * k + 205739 := by
    unfold C
    simp [show (1769472 * k + 411478) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 205739) = 2654208 * k + 617218 := by
    unfold C
    simp [show (884736 * k + 205739) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 617218) = 1327104 * k + 308609 := by
    unfold C
    simp [show (2654208 * k + 617218) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 308609) = 3981312 * k + 925828 := by
    unfold C
    simp [show (1327104 * k + 308609) % 2 ≠ 0 by omega]
    omega
  have h10 : C (3981312 * k + 925828) = 1990656 * k + 462914 := by
    unfold C
    simp [show (3981312 * k + 925828) % 2 = 0 by omega]
    omega
  have h11 : C (1990656 * k + 462914) = 995328 * k + 231457 := by
    unfold C
    simp [show (1990656 * k + 462914) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 231457) = 2985984 * k + 694372 := by
    unfold C
    simp [show (995328 * k + 231457) % 2 ≠ 0 by omega]
    omega
  have h13 : C (2985984 * k + 694372) = 1492992 * k + 347186 := by
    unfold C
    simp [show (2985984 * k + 694372) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 347186) = 746496 * k + 173593 := by
    unfold C
    simp [show (1492992 * k + 347186) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 173593) = 2239488 * k + 520780 := by
    unfold C
    simp [show (746496 * k + 173593) % 2 ≠ 0 by omega]
    omega
  have h16 : C (2239488 * k + 520780) = 1119744 * k + 260390 := by
    unfold C
    simp [show (2239488 * k + 520780) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 260390) = 559872 * k + 130195 := by
    unfold C
    simp [show (1119744 * k + 260390) % 2 = 0 by omega]
    omega
  have h18 : C (559872 * k + 130195) = 1679616 * k + 390586 := by
    unfold C
    simp [show (559872 * k + 130195) % 2 ≠ 0 by omega]
    omega
  have h19 : C (1679616 * k + 390586) = 839808 * k + 195293 := by
    unfold C
    simp [show (1679616 * k + 390586) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 195293) = 2519424 * k + 585880 := by
    unfold C
    simp [show (839808 * k + 195293) % 2 ≠ 0 by omega]
    omega
  have h21 : C (2519424 * k + 585880) = 1259712 * k + 292940 := by
    unfold C
    simp [show (2519424 * k + 585880) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 292940) = 629856 * k + 146470 := by
    unfold C
    simp [show (1259712 * k + 292940) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 146470) = 314928 * k + 73235 := by
    unfold C
    simp [show (629856 * k + 146470) % 2 = 0 by omega]
    omega
  have h24 : C (314928 * k + 73235) = 944784 * k + 219706 := by
    unfold C
    simp [show (314928 * k + 73235) % 2 ≠ 0 by omega]
    omega
  have h25 : C (944784 * k + 219706) = 472392 * k + 109853 := by
    unfold C
    simp [show (944784 * k + 219706) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 109853) = 1417176 * k + 329560 := by
    unfold C
    simp [show (472392 * k + 109853) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 329560) = 708588 * k + 164780 := by
    unfold C
    simp [show (1417176 * k + 329560) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 164780) = 354294 * k + 82390 := by
    unfold C
    simp [show (708588 * k + 164780) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 82390) = 177147 * k + 41195 := by
    unfold C
    simp [show (354294 * k + 82390) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 60959) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 60959))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_61119 : ∀ k : Nat,
    iterate (262144 * k + 61119) 29 = 177147 * k + 41303 ∧
      177147 * k + 41303 < 262144 * k + 61119 := by
  intro k
  have h1 : C (262144 * k + 61119) = 786432 * k + 183358 := by
    unfold C
    simp [show (262144 * k + 61119) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 183358) = 393216 * k + 91679 := by
    unfold C
    simp [show (786432 * k + 183358) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 91679) = 1179648 * k + 275038 := by
    unfold C
    simp [show (393216 * k + 91679) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 275038) = 589824 * k + 137519 := by
    unfold C
    simp [show (1179648 * k + 275038) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 137519) = 1769472 * k + 412558 := by
    unfold C
    simp [show (589824 * k + 137519) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 412558) = 884736 * k + 206279 := by
    unfold C
    simp [show (1769472 * k + 412558) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 206279) = 2654208 * k + 618838 := by
    unfold C
    simp [show (884736 * k + 206279) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 618838) = 1327104 * k + 309419 := by
    unfold C
    simp [show (2654208 * k + 618838) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 309419) = 3981312 * k + 928258 := by
    unfold C
    simp [show (1327104 * k + 309419) % 2 ≠ 0 by omega]
    omega
  have h10 : C (3981312 * k + 928258) = 1990656 * k + 464129 := by
    unfold C
    simp [show (3981312 * k + 928258) % 2 = 0 by omega]
    omega
  have h11 : C (1990656 * k + 464129) = 5971968 * k + 1392388 := by
    unfold C
    simp [show (1990656 * k + 464129) % 2 ≠ 0 by omega]
    omega
  have h12 : C (5971968 * k + 1392388) = 2985984 * k + 696194 := by
    unfold C
    simp [show (5971968 * k + 1392388) % 2 = 0 by omega]
    omega
  have h13 : C (2985984 * k + 696194) = 1492992 * k + 348097 := by
    unfold C
    simp [show (2985984 * k + 696194) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 348097) = 4478976 * k + 1044292 := by
    unfold C
    simp [show (1492992 * k + 348097) % 2 ≠ 0 by omega]
    omega
  have h15 : C (4478976 * k + 1044292) = 2239488 * k + 522146 := by
    unfold C
    simp [show (4478976 * k + 1044292) % 2 = 0 by omega]
    omega
  have h16 : C (2239488 * k + 522146) = 1119744 * k + 261073 := by
    unfold C
    simp [show (2239488 * k + 522146) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 261073) = 3359232 * k + 783220 := by
    unfold C
    simp [show (1119744 * k + 261073) % 2 ≠ 0 by omega]
    omega
  have h18 : C (3359232 * k + 783220) = 1679616 * k + 391610 := by
    unfold C
    simp [show (3359232 * k + 783220) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 391610) = 839808 * k + 195805 := by
    unfold C
    simp [show (1679616 * k + 391610) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 195805) = 2519424 * k + 587416 := by
    unfold C
    simp [show (839808 * k + 195805) % 2 ≠ 0 by omega]
    omega
  have h21 : C (2519424 * k + 587416) = 1259712 * k + 293708 := by
    unfold C
    simp [show (2519424 * k + 587416) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 293708) = 629856 * k + 146854 := by
    unfold C
    simp [show (1259712 * k + 293708) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 146854) = 314928 * k + 73427 := by
    unfold C
    simp [show (629856 * k + 146854) % 2 = 0 by omega]
    omega
  have h24 : C (314928 * k + 73427) = 944784 * k + 220282 := by
    unfold C
    simp [show (314928 * k + 73427) % 2 ≠ 0 by omega]
    omega
  have h25 : C (944784 * k + 220282) = 472392 * k + 110141 := by
    unfold C
    simp [show (944784 * k + 220282) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 110141) = 1417176 * k + 330424 := by
    unfold C
    simp [show (472392 * k + 110141) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 330424) = 708588 * k + 165212 := by
    unfold C
    simp [show (1417176 * k + 330424) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 165212) = 354294 * k + 82606 := by
    unfold C
    simp [show (708588 * k + 165212) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 82606) = 177147 * k + 41303 := by
    unfold C
    simp [show (354294 * k + 82606) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 61119) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 61119))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_61743 : ∀ k : Nat,
    iterate (262144 * k + 61743) 29 = 177147 * k + 41725 ∧
      177147 * k + 41725 < 262144 * k + 61743 := by
  intro k
  have h1 : C (262144 * k + 61743) = 786432 * k + 185230 := by
    unfold C
    simp [show (262144 * k + 61743) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 185230) = 393216 * k + 92615 := by
    unfold C
    simp [show (786432 * k + 185230) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 92615) = 1179648 * k + 277846 := by
    unfold C
    simp [show (393216 * k + 92615) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 277846) = 589824 * k + 138923 := by
    unfold C
    simp [show (1179648 * k + 277846) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 138923) = 1769472 * k + 416770 := by
    unfold C
    simp [show (589824 * k + 138923) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 416770) = 884736 * k + 208385 := by
    unfold C
    simp [show (1769472 * k + 416770) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 208385) = 2654208 * k + 625156 := by
    unfold C
    simp [show (884736 * k + 208385) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 625156) = 1327104 * k + 312578 := by
    unfold C
    simp [show (2654208 * k + 625156) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 312578) = 663552 * k + 156289 := by
    unfold C
    simp [show (1327104 * k + 312578) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 156289) = 1990656 * k + 468868 := by
    unfold C
    simp [show (663552 * k + 156289) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 468868) = 995328 * k + 234434 := by
    unfold C
    simp [show (1990656 * k + 468868) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 234434) = 497664 * k + 117217 := by
    unfold C
    simp [show (995328 * k + 234434) % 2 = 0 by omega]
    omega
  have h13 : C (497664 * k + 117217) = 1492992 * k + 351652 := by
    unfold C
    simp [show (497664 * k + 117217) % 2 ≠ 0 by omega]
    omega
  have h14 : C (1492992 * k + 351652) = 746496 * k + 175826 := by
    unfold C
    simp [show (1492992 * k + 351652) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 175826) = 373248 * k + 87913 := by
    unfold C
    simp [show (746496 * k + 175826) % 2 = 0 by omega]
    omega
  have h16 : C (373248 * k + 87913) = 1119744 * k + 263740 := by
    unfold C
    simp [show (373248 * k + 87913) % 2 ≠ 0 by omega]
    omega
  have h17 : C (1119744 * k + 263740) = 559872 * k + 131870 := by
    unfold C
    simp [show (1119744 * k + 263740) % 2 = 0 by omega]
    omega
  have h18 : C (559872 * k + 131870) = 279936 * k + 65935 := by
    unfold C
    simp [show (559872 * k + 131870) % 2 = 0 by omega]
    omega
  have h19 : C (279936 * k + 65935) = 839808 * k + 197806 := by
    unfold C
    simp [show (279936 * k + 65935) % 2 ≠ 0 by omega]
    omega
  have h20 : C (839808 * k + 197806) = 419904 * k + 98903 := by
    unfold C
    simp [show (839808 * k + 197806) % 2 = 0 by omega]
    omega
  have h21 : C (419904 * k + 98903) = 1259712 * k + 296710 := by
    unfold C
    simp [show (419904 * k + 98903) % 2 ≠ 0 by omega]
    omega
  have h22 : C (1259712 * k + 296710) = 629856 * k + 148355 := by
    unfold C
    simp [show (1259712 * k + 296710) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 148355) = 1889568 * k + 445066 := by
    unfold C
    simp [show (629856 * k + 148355) % 2 ≠ 0 by omega]
    omega
  have h24 : C (1889568 * k + 445066) = 944784 * k + 222533 := by
    unfold C
    simp [show (1889568 * k + 445066) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 222533) = 2834352 * k + 667600 := by
    unfold C
    simp [show (944784 * k + 222533) % 2 ≠ 0 by omega]
    omega
  have h26 : C (2834352 * k + 667600) = 1417176 * k + 333800 := by
    unfold C
    simp [show (2834352 * k + 667600) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 333800) = 708588 * k + 166900 := by
    unfold C
    simp [show (1417176 * k + 333800) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 166900) = 354294 * k + 83450 := by
    unfold C
    simp [show (708588 * k + 166900) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 83450) = 177147 * k + 41725 := by
    unfold C
    simp [show (354294 * k + 83450) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 61743) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 61743))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_61983 : ∀ k : Nat,
    iterate (262144 * k + 61983) 29 = 177147 * k + 41887 ∧
      177147 * k + 41887 < 262144 * k + 61983 := by
  intro k
  have h1 : C (262144 * k + 61983) = 786432 * k + 185950 := by
    unfold C
    simp [show (262144 * k + 61983) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 185950) = 393216 * k + 92975 := by
    unfold C
    simp [show (786432 * k + 185950) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 92975) = 1179648 * k + 278926 := by
    unfold C
    simp [show (393216 * k + 92975) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 278926) = 589824 * k + 139463 := by
    unfold C
    simp [show (1179648 * k + 278926) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 139463) = 1769472 * k + 418390 := by
    unfold C
    simp [show (589824 * k + 139463) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 418390) = 884736 * k + 209195 := by
    unfold C
    simp [show (1769472 * k + 418390) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 209195) = 2654208 * k + 627586 := by
    unfold C
    simp [show (884736 * k + 209195) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 627586) = 1327104 * k + 313793 := by
    unfold C
    simp [show (2654208 * k + 627586) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 313793) = 3981312 * k + 941380 := by
    unfold C
    simp [show (1327104 * k + 313793) % 2 ≠ 0 by omega]
    omega
  have h10 : C (3981312 * k + 941380) = 1990656 * k + 470690 := by
    unfold C
    simp [show (3981312 * k + 941380) % 2 = 0 by omega]
    omega
  have h11 : C (1990656 * k + 470690) = 995328 * k + 235345 := by
    unfold C
    simp [show (1990656 * k + 470690) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 235345) = 2985984 * k + 706036 := by
    unfold C
    simp [show (995328 * k + 235345) % 2 ≠ 0 by omega]
    omega
  have h13 : C (2985984 * k + 706036) = 1492992 * k + 353018 := by
    unfold C
    simp [show (2985984 * k + 706036) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 353018) = 746496 * k + 176509 := by
    unfold C
    simp [show (1492992 * k + 353018) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 176509) = 2239488 * k + 529528 := by
    unfold C
    simp [show (746496 * k + 176509) % 2 ≠ 0 by omega]
    omega
  have h16 : C (2239488 * k + 529528) = 1119744 * k + 264764 := by
    unfold C
    simp [show (2239488 * k + 529528) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 264764) = 559872 * k + 132382 := by
    unfold C
    simp [show (1119744 * k + 264764) % 2 = 0 by omega]
    omega
  have h18 : C (559872 * k + 132382) = 279936 * k + 66191 := by
    unfold C
    simp [show (559872 * k + 132382) % 2 = 0 by omega]
    omega
  have h19 : C (279936 * k + 66191) = 839808 * k + 198574 := by
    unfold C
    simp [show (279936 * k + 66191) % 2 ≠ 0 by omega]
    omega
  have h20 : C (839808 * k + 198574) = 419904 * k + 99287 := by
    unfold C
    simp [show (839808 * k + 198574) % 2 = 0 by omega]
    omega
  have h21 : C (419904 * k + 99287) = 1259712 * k + 297862 := by
    unfold C
    simp [show (419904 * k + 99287) % 2 ≠ 0 by omega]
    omega
  have h22 : C (1259712 * k + 297862) = 629856 * k + 148931 := by
    unfold C
    simp [show (1259712 * k + 297862) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 148931) = 1889568 * k + 446794 := by
    unfold C
    simp [show (629856 * k + 148931) % 2 ≠ 0 by omega]
    omega
  have h24 : C (1889568 * k + 446794) = 944784 * k + 223397 := by
    unfold C
    simp [show (1889568 * k + 446794) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 223397) = 2834352 * k + 670192 := by
    unfold C
    simp [show (944784 * k + 223397) % 2 ≠ 0 by omega]
    omega
  have h26 : C (2834352 * k + 670192) = 1417176 * k + 335096 := by
    unfold C
    simp [show (2834352 * k + 670192) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 335096) = 708588 * k + 167548 := by
    unfold C
    simp [show (1417176 * k + 335096) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 167548) = 354294 * k + 83774 := by
    unfold C
    simp [show (708588 * k + 167548) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 83774) = 177147 * k + 41887 := by
    unfold C
    simp [show (354294 * k + 83774) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 61983) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 61983))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_62063 : ∀ k : Nat,
    iterate (262144 * k + 62063) 29 = 177147 * k + 41941 ∧
      177147 * k + 41941 < 262144 * k + 62063 := by
  intro k
  have h1 : C (262144 * k + 62063) = 786432 * k + 186190 := by
    unfold C
    simp [show (262144 * k + 62063) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 186190) = 393216 * k + 93095 := by
    unfold C
    simp [show (786432 * k + 186190) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 93095) = 1179648 * k + 279286 := by
    unfold C
    simp [show (393216 * k + 93095) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 279286) = 589824 * k + 139643 := by
    unfold C
    simp [show (1179648 * k + 279286) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 139643) = 1769472 * k + 418930 := by
    unfold C
    simp [show (589824 * k + 139643) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 418930) = 884736 * k + 209465 := by
    unfold C
    simp [show (1769472 * k + 418930) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 209465) = 2654208 * k + 628396 := by
    unfold C
    simp [show (884736 * k + 209465) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 628396) = 1327104 * k + 314198 := by
    unfold C
    simp [show (2654208 * k + 628396) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 314198) = 663552 * k + 157099 := by
    unfold C
    simp [show (1327104 * k + 314198) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 157099) = 1990656 * k + 471298 := by
    unfold C
    simp [show (663552 * k + 157099) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 471298) = 995328 * k + 235649 := by
    unfold C
    simp [show (1990656 * k + 471298) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 235649) = 2985984 * k + 706948 := by
    unfold C
    simp [show (995328 * k + 235649) % 2 ≠ 0 by omega]
    omega
  have h13 : C (2985984 * k + 706948) = 1492992 * k + 353474 := by
    unfold C
    simp [show (2985984 * k + 706948) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 353474) = 746496 * k + 176737 := by
    unfold C
    simp [show (1492992 * k + 353474) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 176737) = 2239488 * k + 530212 := by
    unfold C
    simp [show (746496 * k + 176737) % 2 ≠ 0 by omega]
    omega
  have h16 : C (2239488 * k + 530212) = 1119744 * k + 265106 := by
    unfold C
    simp [show (2239488 * k + 530212) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 265106) = 559872 * k + 132553 := by
    unfold C
    simp [show (1119744 * k + 265106) % 2 = 0 by omega]
    omega
  have h18 : C (559872 * k + 132553) = 1679616 * k + 397660 := by
    unfold C
    simp [show (559872 * k + 132553) % 2 ≠ 0 by omega]
    omega
  have h19 : C (1679616 * k + 397660) = 839808 * k + 198830 := by
    unfold C
    simp [show (1679616 * k + 397660) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 198830) = 419904 * k + 99415 := by
    unfold C
    simp [show (839808 * k + 198830) % 2 = 0 by omega]
    omega
  have h21 : C (419904 * k + 99415) = 1259712 * k + 298246 := by
    unfold C
    simp [show (419904 * k + 99415) % 2 ≠ 0 by omega]
    omega
  have h22 : C (1259712 * k + 298246) = 629856 * k + 149123 := by
    unfold C
    simp [show (1259712 * k + 298246) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 149123) = 1889568 * k + 447370 := by
    unfold C
    simp [show (629856 * k + 149123) % 2 ≠ 0 by omega]
    omega
  have h24 : C (1889568 * k + 447370) = 944784 * k + 223685 := by
    unfold C
    simp [show (1889568 * k + 447370) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 223685) = 2834352 * k + 671056 := by
    unfold C
    simp [show (944784 * k + 223685) % 2 ≠ 0 by omega]
    omega
  have h26 : C (2834352 * k + 671056) = 1417176 * k + 335528 := by
    unfold C
    simp [show (2834352 * k + 671056) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 335528) = 708588 * k + 167764 := by
    unfold C
    simp [show (1417176 * k + 335528) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 167764) = 354294 * k + 83882 := by
    unfold C
    simp [show (708588 * k + 167764) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 83882) = 177147 * k + 41941 := by
    unfold C
    simp [show (354294 * k + 83882) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 62063) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 62063))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_62183 : ∀ k : Nat,
    iterate (262144 * k + 62183) 29 = 177147 * k + 42022 ∧
      177147 * k + 42022 < 262144 * k + 62183 := by
  intro k
  have h1 : C (262144 * k + 62183) = 786432 * k + 186550 := by
    unfold C
    simp [show (262144 * k + 62183) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 186550) = 393216 * k + 93275 := by
    unfold C
    simp [show (786432 * k + 186550) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 93275) = 1179648 * k + 279826 := by
    unfold C
    simp [show (393216 * k + 93275) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 279826) = 589824 * k + 139913 := by
    unfold C
    simp [show (1179648 * k + 279826) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 139913) = 1769472 * k + 419740 := by
    unfold C
    simp [show (589824 * k + 139913) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 419740) = 884736 * k + 209870 := by
    unfold C
    simp [show (1769472 * k + 419740) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 209870) = 442368 * k + 104935 := by
    unfold C
    simp [show (884736 * k + 209870) % 2 = 0 by omega]
    omega
  have h8 : C (442368 * k + 104935) = 1327104 * k + 314806 := by
    unfold C
    simp [show (442368 * k + 104935) % 2 ≠ 0 by omega]
    omega
  have h9 : C (1327104 * k + 314806) = 663552 * k + 157403 := by
    unfold C
    simp [show (1327104 * k + 314806) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 157403) = 1990656 * k + 472210 := by
    unfold C
    simp [show (663552 * k + 157403) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 472210) = 995328 * k + 236105 := by
    unfold C
    simp [show (1990656 * k + 472210) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 236105) = 2985984 * k + 708316 := by
    unfold C
    simp [show (995328 * k + 236105) % 2 ≠ 0 by omega]
    omega
  have h13 : C (2985984 * k + 708316) = 1492992 * k + 354158 := by
    unfold C
    simp [show (2985984 * k + 708316) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 354158) = 746496 * k + 177079 := by
    unfold C
    simp [show (1492992 * k + 354158) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 177079) = 2239488 * k + 531238 := by
    unfold C
    simp [show (746496 * k + 177079) % 2 ≠ 0 by omega]
    omega
  have h16 : C (2239488 * k + 531238) = 1119744 * k + 265619 := by
    unfold C
    simp [show (2239488 * k + 531238) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 265619) = 3359232 * k + 796858 := by
    unfold C
    simp [show (1119744 * k + 265619) % 2 ≠ 0 by omega]
    omega
  have h18 : C (3359232 * k + 796858) = 1679616 * k + 398429 := by
    unfold C
    simp [show (3359232 * k + 796858) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 398429) = 5038848 * k + 1195288 := by
    unfold C
    simp [show (1679616 * k + 398429) % 2 ≠ 0 by omega]
    omega
  have h20 : C (5038848 * k + 1195288) = 2519424 * k + 597644 := by
    unfold C
    simp [show (5038848 * k + 1195288) % 2 = 0 by omega]
    omega
  have h21 : C (2519424 * k + 597644) = 1259712 * k + 298822 := by
    unfold C
    simp [show (2519424 * k + 597644) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 298822) = 629856 * k + 149411 := by
    unfold C
    simp [show (1259712 * k + 298822) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 149411) = 1889568 * k + 448234 := by
    unfold C
    simp [show (629856 * k + 149411) % 2 ≠ 0 by omega]
    omega
  have h24 : C (1889568 * k + 448234) = 944784 * k + 224117 := by
    unfold C
    simp [show (1889568 * k + 448234) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 224117) = 2834352 * k + 672352 := by
    unfold C
    simp [show (944784 * k + 224117) % 2 ≠ 0 by omega]
    omega
  have h26 : C (2834352 * k + 672352) = 1417176 * k + 336176 := by
    unfold C
    simp [show (2834352 * k + 672352) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 336176) = 708588 * k + 168088 := by
    unfold C
    simp [show (1417176 * k + 336176) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 168088) = 354294 * k + 84044 := by
    unfold C
    simp [show (708588 * k + 168088) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 84044) = 177147 * k + 42022 := by
    unfold C
    simp [show (354294 * k + 84044) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 62183) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 62183))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_62575 : ∀ k : Nat,
    iterate (262144 * k + 62575) 29 = 177147 * k + 42287 ∧
      177147 * k + 42287 < 262144 * k + 62575 := by
  intro k
  have h1 : C (262144 * k + 62575) = 786432 * k + 187726 := by
    unfold C
    simp [show (262144 * k + 62575) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 187726) = 393216 * k + 93863 := by
    unfold C
    simp [show (786432 * k + 187726) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 93863) = 1179648 * k + 281590 := by
    unfold C
    simp [show (393216 * k + 93863) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 281590) = 589824 * k + 140795 := by
    unfold C
    simp [show (1179648 * k + 281590) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 140795) = 1769472 * k + 422386 := by
    unfold C
    simp [show (589824 * k + 140795) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 422386) = 884736 * k + 211193 := by
    unfold C
    simp [show (1769472 * k + 422386) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 211193) = 2654208 * k + 633580 := by
    unfold C
    simp [show (884736 * k + 211193) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 633580) = 1327104 * k + 316790 := by
    unfold C
    simp [show (2654208 * k + 633580) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 316790) = 663552 * k + 158395 := by
    unfold C
    simp [show (1327104 * k + 316790) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 158395) = 1990656 * k + 475186 := by
    unfold C
    simp [show (663552 * k + 158395) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 475186) = 995328 * k + 237593 := by
    unfold C
    simp [show (1990656 * k + 475186) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 237593) = 2985984 * k + 712780 := by
    unfold C
    simp [show (995328 * k + 237593) % 2 ≠ 0 by omega]
    omega
  have h13 : C (2985984 * k + 712780) = 1492992 * k + 356390 := by
    unfold C
    simp [show (2985984 * k + 712780) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 356390) = 746496 * k + 178195 := by
    unfold C
    simp [show (1492992 * k + 356390) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 178195) = 2239488 * k + 534586 := by
    unfold C
    simp [show (746496 * k + 178195) % 2 ≠ 0 by omega]
    omega
  have h16 : C (2239488 * k + 534586) = 1119744 * k + 267293 := by
    unfold C
    simp [show (2239488 * k + 534586) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 267293) = 3359232 * k + 801880 := by
    unfold C
    simp [show (1119744 * k + 267293) % 2 ≠ 0 by omega]
    omega
  have h18 : C (3359232 * k + 801880) = 1679616 * k + 400940 := by
    unfold C
    simp [show (3359232 * k + 801880) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 400940) = 839808 * k + 200470 := by
    unfold C
    simp [show (1679616 * k + 400940) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 200470) = 419904 * k + 100235 := by
    unfold C
    simp [show (839808 * k + 200470) % 2 = 0 by omega]
    omega
  have h21 : C (419904 * k + 100235) = 1259712 * k + 300706 := by
    unfold C
    simp [show (419904 * k + 100235) % 2 ≠ 0 by omega]
    omega
  have h22 : C (1259712 * k + 300706) = 629856 * k + 150353 := by
    unfold C
    simp [show (1259712 * k + 300706) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 150353) = 1889568 * k + 451060 := by
    unfold C
    simp [show (629856 * k + 150353) % 2 ≠ 0 by omega]
    omega
  have h24 : C (1889568 * k + 451060) = 944784 * k + 225530 := by
    unfold C
    simp [show (1889568 * k + 451060) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 225530) = 472392 * k + 112765 := by
    unfold C
    simp [show (944784 * k + 225530) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 112765) = 1417176 * k + 338296 := by
    unfold C
    simp [show (472392 * k + 112765) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 338296) = 708588 * k + 169148 := by
    unfold C
    simp [show (1417176 * k + 338296) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 169148) = 354294 * k + 84574 := by
    unfold C
    simp [show (708588 * k + 169148) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 84574) = 177147 * k + 42287 := by
    unfold C
    simp [show (354294 * k + 84574) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 62575) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 62575))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_62655 : ∀ k : Nat,
    iterate (262144 * k + 62655) 29 = 177147 * k + 42341 ∧
      177147 * k + 42341 < 262144 * k + 62655 := by
  intro k
  have h1 : C (262144 * k + 62655) = 786432 * k + 187966 := by
    unfold C
    simp [show (262144 * k + 62655) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 187966) = 393216 * k + 93983 := by
    unfold C
    simp [show (786432 * k + 187966) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 93983) = 1179648 * k + 281950 := by
    unfold C
    simp [show (393216 * k + 93983) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 281950) = 589824 * k + 140975 := by
    unfold C
    simp [show (1179648 * k + 281950) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 140975) = 1769472 * k + 422926 := by
    unfold C
    simp [show (589824 * k + 140975) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 422926) = 884736 * k + 211463 := by
    unfold C
    simp [show (1769472 * k + 422926) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 211463) = 2654208 * k + 634390 := by
    unfold C
    simp [show (884736 * k + 211463) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 634390) = 1327104 * k + 317195 := by
    unfold C
    simp [show (2654208 * k + 634390) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 317195) = 3981312 * k + 951586 := by
    unfold C
    simp [show (1327104 * k + 317195) % 2 ≠ 0 by omega]
    omega
  have h10 : C (3981312 * k + 951586) = 1990656 * k + 475793 := by
    unfold C
    simp [show (3981312 * k + 951586) % 2 = 0 by omega]
    omega
  have h11 : C (1990656 * k + 475793) = 5971968 * k + 1427380 := by
    unfold C
    simp [show (1990656 * k + 475793) % 2 ≠ 0 by omega]
    omega
  have h12 : C (5971968 * k + 1427380) = 2985984 * k + 713690 := by
    unfold C
    simp [show (5971968 * k + 1427380) % 2 = 0 by omega]
    omega
  have h13 : C (2985984 * k + 713690) = 1492992 * k + 356845 := by
    unfold C
    simp [show (2985984 * k + 713690) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 356845) = 4478976 * k + 1070536 := by
    unfold C
    simp [show (1492992 * k + 356845) % 2 ≠ 0 by omega]
    omega
  have h15 : C (4478976 * k + 1070536) = 2239488 * k + 535268 := by
    unfold C
    simp [show (4478976 * k + 1070536) % 2 = 0 by omega]
    omega
  have h16 : C (2239488 * k + 535268) = 1119744 * k + 267634 := by
    unfold C
    simp [show (2239488 * k + 535268) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 267634) = 559872 * k + 133817 := by
    unfold C
    simp [show (1119744 * k + 267634) % 2 = 0 by omega]
    omega
  have h18 : C (559872 * k + 133817) = 1679616 * k + 401452 := by
    unfold C
    simp [show (559872 * k + 133817) % 2 ≠ 0 by omega]
    omega
  have h19 : C (1679616 * k + 401452) = 839808 * k + 200726 := by
    unfold C
    simp [show (1679616 * k + 401452) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 200726) = 419904 * k + 100363 := by
    unfold C
    simp [show (839808 * k + 200726) % 2 = 0 by omega]
    omega
  have h21 : C (419904 * k + 100363) = 1259712 * k + 301090 := by
    unfold C
    simp [show (419904 * k + 100363) % 2 ≠ 0 by omega]
    omega
  have h22 : C (1259712 * k + 301090) = 629856 * k + 150545 := by
    unfold C
    simp [show (1259712 * k + 301090) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 150545) = 1889568 * k + 451636 := by
    unfold C
    simp [show (629856 * k + 150545) % 2 ≠ 0 by omega]
    omega
  have h24 : C (1889568 * k + 451636) = 944784 * k + 225818 := by
    unfold C
    simp [show (1889568 * k + 451636) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 225818) = 472392 * k + 112909 := by
    unfold C
    simp [show (944784 * k + 225818) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 112909) = 1417176 * k + 338728 := by
    unfold C
    simp [show (472392 * k + 112909) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 338728) = 708588 * k + 169364 := by
    unfold C
    simp [show (1417176 * k + 338728) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 169364) = 354294 * k + 84682 := by
    unfold C
    simp [show (708588 * k + 169364) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 84682) = 177147 * k + 42341 := by
    unfold C
    simp [show (354294 * k + 84682) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 62655) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 62655))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_62695 : ∀ k : Nat,
    iterate (262144 * k + 62695) 29 = 177147 * k + 42368 ∧
      177147 * k + 42368 < 262144 * k + 62695 := by
  intro k
  have h1 : C (262144 * k + 62695) = 786432 * k + 188086 := by
    unfold C
    simp [show (262144 * k + 62695) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 188086) = 393216 * k + 94043 := by
    unfold C
    simp [show (786432 * k + 188086) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 94043) = 1179648 * k + 282130 := by
    unfold C
    simp [show (393216 * k + 94043) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 282130) = 589824 * k + 141065 := by
    unfold C
    simp [show (1179648 * k + 282130) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 141065) = 1769472 * k + 423196 := by
    unfold C
    simp [show (589824 * k + 141065) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 423196) = 884736 * k + 211598 := by
    unfold C
    simp [show (1769472 * k + 423196) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 211598) = 442368 * k + 105799 := by
    unfold C
    simp [show (884736 * k + 211598) % 2 = 0 by omega]
    omega
  have h8 : C (442368 * k + 105799) = 1327104 * k + 317398 := by
    unfold C
    simp [show (442368 * k + 105799) % 2 ≠ 0 by omega]
    omega
  have h9 : C (1327104 * k + 317398) = 663552 * k + 158699 := by
    unfold C
    simp [show (1327104 * k + 317398) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 158699) = 1990656 * k + 476098 := by
    unfold C
    simp [show (663552 * k + 158699) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 476098) = 995328 * k + 238049 := by
    unfold C
    simp [show (1990656 * k + 476098) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 238049) = 2985984 * k + 714148 := by
    unfold C
    simp [show (995328 * k + 238049) % 2 ≠ 0 by omega]
    omega
  have h13 : C (2985984 * k + 714148) = 1492992 * k + 357074 := by
    unfold C
    simp [show (2985984 * k + 714148) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 357074) = 746496 * k + 178537 := by
    unfold C
    simp [show (1492992 * k + 357074) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 178537) = 2239488 * k + 535612 := by
    unfold C
    simp [show (746496 * k + 178537) % 2 ≠ 0 by omega]
    omega
  have h16 : C (2239488 * k + 535612) = 1119744 * k + 267806 := by
    unfold C
    simp [show (2239488 * k + 535612) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 267806) = 559872 * k + 133903 := by
    unfold C
    simp [show (1119744 * k + 267806) % 2 = 0 by omega]
    omega
  have h18 : C (559872 * k + 133903) = 1679616 * k + 401710 := by
    unfold C
    simp [show (559872 * k + 133903) % 2 ≠ 0 by omega]
    omega
  have h19 : C (1679616 * k + 401710) = 839808 * k + 200855 := by
    unfold C
    simp [show (1679616 * k + 401710) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 200855) = 2519424 * k + 602566 := by
    unfold C
    simp [show (839808 * k + 200855) % 2 ≠ 0 by omega]
    omega
  have h21 : C (2519424 * k + 602566) = 1259712 * k + 301283 := by
    unfold C
    simp [show (2519424 * k + 602566) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 301283) = 3779136 * k + 903850 := by
    unfold C
    simp [show (1259712 * k + 301283) % 2 ≠ 0 by omega]
    omega
  have h23 : C (3779136 * k + 903850) = 1889568 * k + 451925 := by
    unfold C
    simp [show (3779136 * k + 903850) % 2 = 0 by omega]
    omega
  have h24 : C (1889568 * k + 451925) = 5668704 * k + 1355776 := by
    unfold C
    simp [show (1889568 * k + 451925) % 2 ≠ 0 by omega]
    omega
  have h25 : C (5668704 * k + 1355776) = 2834352 * k + 677888 := by
    unfold C
    simp [show (5668704 * k + 1355776) % 2 = 0 by omega]
    omega
  have h26 : C (2834352 * k + 677888) = 1417176 * k + 338944 := by
    unfold C
    simp [show (2834352 * k + 677888) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 338944) = 708588 * k + 169472 := by
    unfold C
    simp [show (1417176 * k + 338944) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 169472) = 354294 * k + 84736 := by
    unfold C
    simp [show (708588 * k + 169472) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 84736) = 177147 * k + 42368 := by
    unfold C
    simp [show (354294 * k + 84736) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 62695) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 62695))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

end CollatzM18Shard012
