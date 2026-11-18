import Mathlib.Data.Nat.Prime.Basic

namespace CollatzM18Shard018

def C (n : Nat) : Nat := if n % 2 = 0 then n / 2 else 3 * n + 1

def iterate (n t : Nat) : Nat := Nat.rec n (fun _ previous => C previous) t

theorem descent_mod262144_89407 : ∀ k : Nat,
    iterate (262144 * k + 89407) 29 = 177147 * k + 60419 ∧
      177147 * k + 60419 < 262144 * k + 89407 := by
  intro k
  have h1 : C (262144 * k + 89407) = 786432 * k + 268222 := by
    unfold C
    simp [show (262144 * k + 89407) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 268222) = 393216 * k + 134111 := by
    unfold C
    simp [show (786432 * k + 268222) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 134111) = 1179648 * k + 402334 := by
    unfold C
    simp [show (393216 * k + 134111) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 402334) = 589824 * k + 201167 := by
    unfold C
    simp [show (1179648 * k + 402334) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 201167) = 1769472 * k + 603502 := by
    unfold C
    simp [show (589824 * k + 201167) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 603502) = 884736 * k + 301751 := by
    unfold C
    simp [show (1769472 * k + 603502) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 301751) = 2654208 * k + 905254 := by
    unfold C
    simp [show (884736 * k + 301751) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 905254) = 1327104 * k + 452627 := by
    unfold C
    simp [show (2654208 * k + 905254) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 452627) = 3981312 * k + 1357882 := by
    unfold C
    simp [show (1327104 * k + 452627) % 2 ≠ 0 by omega]
    omega
  have h10 : C (3981312 * k + 1357882) = 1990656 * k + 678941 := by
    unfold C
    simp [show (3981312 * k + 1357882) % 2 = 0 by omega]
    omega
  have h11 : C (1990656 * k + 678941) = 5971968 * k + 2036824 := by
    unfold C
    simp [show (1990656 * k + 678941) % 2 ≠ 0 by omega]
    omega
  have h12 : C (5971968 * k + 2036824) = 2985984 * k + 1018412 := by
    unfold C
    simp [show (5971968 * k + 2036824) % 2 = 0 by omega]
    omega
  have h13 : C (2985984 * k + 1018412) = 1492992 * k + 509206 := by
    unfold C
    simp [show (2985984 * k + 1018412) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 509206) = 746496 * k + 254603 := by
    unfold C
    simp [show (1492992 * k + 509206) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 254603) = 2239488 * k + 763810 := by
    unfold C
    simp [show (746496 * k + 254603) % 2 ≠ 0 by omega]
    omega
  have h16 : C (2239488 * k + 763810) = 1119744 * k + 381905 := by
    unfold C
    simp [show (2239488 * k + 763810) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 381905) = 3359232 * k + 1145716 := by
    unfold C
    simp [show (1119744 * k + 381905) % 2 ≠ 0 by omega]
    omega
  have h18 : C (3359232 * k + 1145716) = 1679616 * k + 572858 := by
    unfold C
    simp [show (3359232 * k + 1145716) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 572858) = 839808 * k + 286429 := by
    unfold C
    simp [show (1679616 * k + 572858) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 286429) = 2519424 * k + 859288 := by
    unfold C
    simp [show (839808 * k + 286429) % 2 ≠ 0 by omega]
    omega
  have h21 : C (2519424 * k + 859288) = 1259712 * k + 429644 := by
    unfold C
    simp [show (2519424 * k + 859288) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 429644) = 629856 * k + 214822 := by
    unfold C
    simp [show (1259712 * k + 429644) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 214822) = 314928 * k + 107411 := by
    unfold C
    simp [show (629856 * k + 214822) % 2 = 0 by omega]
    omega
  have h24 : C (314928 * k + 107411) = 944784 * k + 322234 := by
    unfold C
    simp [show (314928 * k + 107411) % 2 ≠ 0 by omega]
    omega
  have h25 : C (944784 * k + 322234) = 472392 * k + 161117 := by
    unfold C
    simp [show (944784 * k + 322234) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 161117) = 1417176 * k + 483352 := by
    unfold C
    simp [show (472392 * k + 161117) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 483352) = 708588 * k + 241676 := by
    unfold C
    simp [show (1417176 * k + 483352) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 241676) = 354294 * k + 120838 := by
    unfold C
    simp [show (708588 * k + 241676) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 120838) = 177147 * k + 60419 := by
    unfold C
    simp [show (354294 * k + 120838) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 89407) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 89407))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_90471 : ∀ k : Nat,
    iterate (262144 * k + 90471) 29 = 177147 * k + 61138 ∧
      177147 * k + 61138 < 262144 * k + 90471 := by
  intro k
  have h1 : C (262144 * k + 90471) = 786432 * k + 271414 := by
    unfold C
    simp [show (262144 * k + 90471) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 271414) = 393216 * k + 135707 := by
    unfold C
    simp [show (786432 * k + 271414) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 135707) = 1179648 * k + 407122 := by
    unfold C
    simp [show (393216 * k + 135707) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 407122) = 589824 * k + 203561 := by
    unfold C
    simp [show (1179648 * k + 407122) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 203561) = 1769472 * k + 610684 := by
    unfold C
    simp [show (589824 * k + 203561) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 610684) = 884736 * k + 305342 := by
    unfold C
    simp [show (1769472 * k + 610684) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 305342) = 442368 * k + 152671 := by
    unfold C
    simp [show (884736 * k + 305342) % 2 = 0 by omega]
    omega
  have h8 : C (442368 * k + 152671) = 1327104 * k + 458014 := by
    unfold C
    simp [show (442368 * k + 152671) % 2 ≠ 0 by omega]
    omega
  have h9 : C (1327104 * k + 458014) = 663552 * k + 229007 := by
    unfold C
    simp [show (1327104 * k + 458014) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 229007) = 1990656 * k + 687022 := by
    unfold C
    simp [show (663552 * k + 229007) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 687022) = 995328 * k + 343511 := by
    unfold C
    simp [show (1990656 * k + 687022) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 343511) = 2985984 * k + 1030534 := by
    unfold C
    simp [show (995328 * k + 343511) % 2 ≠ 0 by omega]
    omega
  have h13 : C (2985984 * k + 1030534) = 1492992 * k + 515267 := by
    unfold C
    simp [show (2985984 * k + 1030534) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 515267) = 4478976 * k + 1545802 := by
    unfold C
    simp [show (1492992 * k + 515267) % 2 ≠ 0 by omega]
    omega
  have h15 : C (4478976 * k + 1545802) = 2239488 * k + 772901 := by
    unfold C
    simp [show (4478976 * k + 1545802) % 2 = 0 by omega]
    omega
  have h16 : C (2239488 * k + 772901) = 6718464 * k + 2318704 := by
    unfold C
    simp [show (2239488 * k + 772901) % 2 ≠ 0 by omega]
    omega
  have h17 : C (6718464 * k + 2318704) = 3359232 * k + 1159352 := by
    unfold C
    simp [show (6718464 * k + 2318704) % 2 = 0 by omega]
    omega
  have h18 : C (3359232 * k + 1159352) = 1679616 * k + 579676 := by
    unfold C
    simp [show (3359232 * k + 1159352) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 579676) = 839808 * k + 289838 := by
    unfold C
    simp [show (1679616 * k + 579676) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 289838) = 419904 * k + 144919 := by
    unfold C
    simp [show (839808 * k + 289838) % 2 = 0 by omega]
    omega
  have h21 : C (419904 * k + 144919) = 1259712 * k + 434758 := by
    unfold C
    simp [show (419904 * k + 144919) % 2 ≠ 0 by omega]
    omega
  have h22 : C (1259712 * k + 434758) = 629856 * k + 217379 := by
    unfold C
    simp [show (1259712 * k + 434758) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 217379) = 1889568 * k + 652138 := by
    unfold C
    simp [show (629856 * k + 217379) % 2 ≠ 0 by omega]
    omega
  have h24 : C (1889568 * k + 652138) = 944784 * k + 326069 := by
    unfold C
    simp [show (1889568 * k + 652138) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 326069) = 2834352 * k + 978208 := by
    unfold C
    simp [show (944784 * k + 326069) % 2 ≠ 0 by omega]
    omega
  have h26 : C (2834352 * k + 978208) = 1417176 * k + 489104 := by
    unfold C
    simp [show (2834352 * k + 978208) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 489104) = 708588 * k + 244552 := by
    unfold C
    simp [show (1417176 * k + 489104) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 244552) = 354294 * k + 122276 := by
    unfold C
    simp [show (708588 * k + 244552) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 122276) = 177147 * k + 61138 := by
    unfold C
    simp [show (354294 * k + 122276) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 90471) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 90471))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_90591 : ∀ k : Nat,
    iterate (262144 * k + 90591) 29 = 177147 * k + 61219 ∧
      177147 * k + 61219 < 262144 * k + 90591 := by
  intro k
  have h1 : C (262144 * k + 90591) = 786432 * k + 271774 := by
    unfold C
    simp [show (262144 * k + 90591) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 271774) = 393216 * k + 135887 := by
    unfold C
    simp [show (786432 * k + 271774) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 135887) = 1179648 * k + 407662 := by
    unfold C
    simp [show (393216 * k + 135887) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 407662) = 589824 * k + 203831 := by
    unfold C
    simp [show (1179648 * k + 407662) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 203831) = 1769472 * k + 611494 := by
    unfold C
    simp [show (589824 * k + 203831) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 611494) = 884736 * k + 305747 := by
    unfold C
    simp [show (1769472 * k + 611494) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 305747) = 2654208 * k + 917242 := by
    unfold C
    simp [show (884736 * k + 305747) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 917242) = 1327104 * k + 458621 := by
    unfold C
    simp [show (2654208 * k + 917242) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 458621) = 3981312 * k + 1375864 := by
    unfold C
    simp [show (1327104 * k + 458621) % 2 ≠ 0 by omega]
    omega
  have h10 : C (3981312 * k + 1375864) = 1990656 * k + 687932 := by
    unfold C
    simp [show (3981312 * k + 1375864) % 2 = 0 by omega]
    omega
  have h11 : C (1990656 * k + 687932) = 995328 * k + 343966 := by
    unfold C
    simp [show (1990656 * k + 687932) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 343966) = 497664 * k + 171983 := by
    unfold C
    simp [show (995328 * k + 343966) % 2 = 0 by omega]
    omega
  have h13 : C (497664 * k + 171983) = 1492992 * k + 515950 := by
    unfold C
    simp [show (497664 * k + 171983) % 2 ≠ 0 by omega]
    omega
  have h14 : C (1492992 * k + 515950) = 746496 * k + 257975 := by
    unfold C
    simp [show (1492992 * k + 515950) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 257975) = 2239488 * k + 773926 := by
    unfold C
    simp [show (746496 * k + 257975) % 2 ≠ 0 by omega]
    omega
  have h16 : C (2239488 * k + 773926) = 1119744 * k + 386963 := by
    unfold C
    simp [show (2239488 * k + 773926) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 386963) = 3359232 * k + 1160890 := by
    unfold C
    simp [show (1119744 * k + 386963) % 2 ≠ 0 by omega]
    omega
  have h18 : C (3359232 * k + 1160890) = 1679616 * k + 580445 := by
    unfold C
    simp [show (3359232 * k + 1160890) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 580445) = 5038848 * k + 1741336 := by
    unfold C
    simp [show (1679616 * k + 580445) % 2 ≠ 0 by omega]
    omega
  have h20 : C (5038848 * k + 1741336) = 2519424 * k + 870668 := by
    unfold C
    simp [show (5038848 * k + 1741336) % 2 = 0 by omega]
    omega
  have h21 : C (2519424 * k + 870668) = 1259712 * k + 435334 := by
    unfold C
    simp [show (2519424 * k + 870668) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 435334) = 629856 * k + 217667 := by
    unfold C
    simp [show (1259712 * k + 435334) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 217667) = 1889568 * k + 653002 := by
    unfold C
    simp [show (629856 * k + 217667) % 2 ≠ 0 by omega]
    omega
  have h24 : C (1889568 * k + 653002) = 944784 * k + 326501 := by
    unfold C
    simp [show (1889568 * k + 653002) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 326501) = 2834352 * k + 979504 := by
    unfold C
    simp [show (944784 * k + 326501) % 2 ≠ 0 by omega]
    omega
  have h26 : C (2834352 * k + 979504) = 1417176 * k + 489752 := by
    unfold C
    simp [show (2834352 * k + 979504) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 489752) = 708588 * k + 244876 := by
    unfold C
    simp [show (1417176 * k + 489752) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 244876) = 354294 * k + 122438 := by
    unfold C
    simp [show (708588 * k + 244876) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 122438) = 177147 * k + 61219 := by
    unfold C
    simp [show (354294 * k + 122438) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 90591) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 90591))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_90943 : ∀ k : Nat,
    iterate (262144 * k + 90943) 29 = 177147 * k + 61457 ∧
      177147 * k + 61457 < 262144 * k + 90943 := by
  intro k
  have h1 : C (262144 * k + 90943) = 786432 * k + 272830 := by
    unfold C
    simp [show (262144 * k + 90943) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 272830) = 393216 * k + 136415 := by
    unfold C
    simp [show (786432 * k + 272830) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 136415) = 1179648 * k + 409246 := by
    unfold C
    simp [show (393216 * k + 136415) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 409246) = 589824 * k + 204623 := by
    unfold C
    simp [show (1179648 * k + 409246) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 204623) = 1769472 * k + 613870 := by
    unfold C
    simp [show (589824 * k + 204623) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 613870) = 884736 * k + 306935 := by
    unfold C
    simp [show (1769472 * k + 613870) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 306935) = 2654208 * k + 920806 := by
    unfold C
    simp [show (884736 * k + 306935) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 920806) = 1327104 * k + 460403 := by
    unfold C
    simp [show (2654208 * k + 920806) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 460403) = 3981312 * k + 1381210 := by
    unfold C
    simp [show (1327104 * k + 460403) % 2 ≠ 0 by omega]
    omega
  have h10 : C (3981312 * k + 1381210) = 1990656 * k + 690605 := by
    unfold C
    simp [show (3981312 * k + 1381210) % 2 = 0 by omega]
    omega
  have h11 : C (1990656 * k + 690605) = 5971968 * k + 2071816 := by
    unfold C
    simp [show (1990656 * k + 690605) % 2 ≠ 0 by omega]
    omega
  have h12 : C (5971968 * k + 2071816) = 2985984 * k + 1035908 := by
    unfold C
    simp [show (5971968 * k + 2071816) % 2 = 0 by omega]
    omega
  have h13 : C (2985984 * k + 1035908) = 1492992 * k + 517954 := by
    unfold C
    simp [show (2985984 * k + 1035908) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 517954) = 746496 * k + 258977 := by
    unfold C
    simp [show (1492992 * k + 517954) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 258977) = 2239488 * k + 776932 := by
    unfold C
    simp [show (746496 * k + 258977) % 2 ≠ 0 by omega]
    omega
  have h16 : C (2239488 * k + 776932) = 1119744 * k + 388466 := by
    unfold C
    simp [show (2239488 * k + 776932) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 388466) = 559872 * k + 194233 := by
    unfold C
    simp [show (1119744 * k + 388466) % 2 = 0 by omega]
    omega
  have h18 : C (559872 * k + 194233) = 1679616 * k + 582700 := by
    unfold C
    simp [show (559872 * k + 194233) % 2 ≠ 0 by omega]
    omega
  have h19 : C (1679616 * k + 582700) = 839808 * k + 291350 := by
    unfold C
    simp [show (1679616 * k + 582700) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 291350) = 419904 * k + 145675 := by
    unfold C
    simp [show (839808 * k + 291350) % 2 = 0 by omega]
    omega
  have h21 : C (419904 * k + 145675) = 1259712 * k + 437026 := by
    unfold C
    simp [show (419904 * k + 145675) % 2 ≠ 0 by omega]
    omega
  have h22 : C (1259712 * k + 437026) = 629856 * k + 218513 := by
    unfold C
    simp [show (1259712 * k + 437026) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 218513) = 1889568 * k + 655540 := by
    unfold C
    simp [show (629856 * k + 218513) % 2 ≠ 0 by omega]
    omega
  have h24 : C (1889568 * k + 655540) = 944784 * k + 327770 := by
    unfold C
    simp [show (1889568 * k + 655540) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 327770) = 472392 * k + 163885 := by
    unfold C
    simp [show (944784 * k + 327770) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 163885) = 1417176 * k + 491656 := by
    unfold C
    simp [show (472392 * k + 163885) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 491656) = 708588 * k + 245828 := by
    unfold C
    simp [show (1417176 * k + 491656) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 245828) = 354294 * k + 122914 := by
    unfold C
    simp [show (708588 * k + 245828) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 122914) = 177147 * k + 61457 := by
    unfold C
    simp [show (354294 * k + 122914) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 90943) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 90943))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_91103 : ∀ k : Nat,
    iterate (262144 * k + 91103) 29 = 177147 * k + 61565 ∧
      177147 * k + 61565 < 262144 * k + 91103 := by
  intro k
  have h1 : C (262144 * k + 91103) = 786432 * k + 273310 := by
    unfold C
    simp [show (262144 * k + 91103) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 273310) = 393216 * k + 136655 := by
    unfold C
    simp [show (786432 * k + 273310) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 136655) = 1179648 * k + 409966 := by
    unfold C
    simp [show (393216 * k + 136655) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 409966) = 589824 * k + 204983 := by
    unfold C
    simp [show (1179648 * k + 409966) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 204983) = 1769472 * k + 614950 := by
    unfold C
    simp [show (589824 * k + 204983) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 614950) = 884736 * k + 307475 := by
    unfold C
    simp [show (1769472 * k + 614950) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 307475) = 2654208 * k + 922426 := by
    unfold C
    simp [show (884736 * k + 307475) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 922426) = 1327104 * k + 461213 := by
    unfold C
    simp [show (2654208 * k + 922426) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 461213) = 3981312 * k + 1383640 := by
    unfold C
    simp [show (1327104 * k + 461213) % 2 ≠ 0 by omega]
    omega
  have h10 : C (3981312 * k + 1383640) = 1990656 * k + 691820 := by
    unfold C
    simp [show (3981312 * k + 1383640) % 2 = 0 by omega]
    omega
  have h11 : C (1990656 * k + 691820) = 995328 * k + 345910 := by
    unfold C
    simp [show (1990656 * k + 691820) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 345910) = 497664 * k + 172955 := by
    unfold C
    simp [show (995328 * k + 345910) % 2 = 0 by omega]
    omega
  have h13 : C (497664 * k + 172955) = 1492992 * k + 518866 := by
    unfold C
    simp [show (497664 * k + 172955) % 2 ≠ 0 by omega]
    omega
  have h14 : C (1492992 * k + 518866) = 746496 * k + 259433 := by
    unfold C
    simp [show (1492992 * k + 518866) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 259433) = 2239488 * k + 778300 := by
    unfold C
    simp [show (746496 * k + 259433) % 2 ≠ 0 by omega]
    omega
  have h16 : C (2239488 * k + 778300) = 1119744 * k + 389150 := by
    unfold C
    simp [show (2239488 * k + 778300) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 389150) = 559872 * k + 194575 := by
    unfold C
    simp [show (1119744 * k + 389150) % 2 = 0 by omega]
    omega
  have h18 : C (559872 * k + 194575) = 1679616 * k + 583726 := by
    unfold C
    simp [show (559872 * k + 194575) % 2 ≠ 0 by omega]
    omega
  have h19 : C (1679616 * k + 583726) = 839808 * k + 291863 := by
    unfold C
    simp [show (1679616 * k + 583726) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 291863) = 2519424 * k + 875590 := by
    unfold C
    simp [show (839808 * k + 291863) % 2 ≠ 0 by omega]
    omega
  have h21 : C (2519424 * k + 875590) = 1259712 * k + 437795 := by
    unfold C
    simp [show (2519424 * k + 875590) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 437795) = 3779136 * k + 1313386 := by
    unfold C
    simp [show (1259712 * k + 437795) % 2 ≠ 0 by omega]
    omega
  have h23 : C (3779136 * k + 1313386) = 1889568 * k + 656693 := by
    unfold C
    simp [show (3779136 * k + 1313386) % 2 = 0 by omega]
    omega
  have h24 : C (1889568 * k + 656693) = 5668704 * k + 1970080 := by
    unfold C
    simp [show (1889568 * k + 656693) % 2 ≠ 0 by omega]
    omega
  have h25 : C (5668704 * k + 1970080) = 2834352 * k + 985040 := by
    unfold C
    simp [show (5668704 * k + 1970080) % 2 = 0 by omega]
    omega
  have h26 : C (2834352 * k + 985040) = 1417176 * k + 492520 := by
    unfold C
    simp [show (2834352 * k + 985040) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 492520) = 708588 * k + 246260 := by
    unfold C
    simp [show (1417176 * k + 492520) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 246260) = 354294 * k + 123130 := by
    unfold C
    simp [show (708588 * k + 246260) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 123130) = 177147 * k + 61565 := by
    unfold C
    simp [show (354294 * k + 123130) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 91103) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 91103))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_91263 : ∀ k : Nat,
    iterate (262144 * k + 91263) 29 = 177147 * k + 61673 ∧
      177147 * k + 61673 < 262144 * k + 91263 := by
  intro k
  have h1 : C (262144 * k + 91263) = 786432 * k + 273790 := by
    unfold C
    simp [show (262144 * k + 91263) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 273790) = 393216 * k + 136895 := by
    unfold C
    simp [show (786432 * k + 273790) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 136895) = 1179648 * k + 410686 := by
    unfold C
    simp [show (393216 * k + 136895) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 410686) = 589824 * k + 205343 := by
    unfold C
    simp [show (1179648 * k + 410686) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 205343) = 1769472 * k + 616030 := by
    unfold C
    simp [show (589824 * k + 205343) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 616030) = 884736 * k + 308015 := by
    unfold C
    simp [show (1769472 * k + 616030) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 308015) = 2654208 * k + 924046 := by
    unfold C
    simp [show (884736 * k + 308015) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 924046) = 1327104 * k + 462023 := by
    unfold C
    simp [show (2654208 * k + 924046) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 462023) = 3981312 * k + 1386070 := by
    unfold C
    simp [show (1327104 * k + 462023) % 2 ≠ 0 by omega]
    omega
  have h10 : C (3981312 * k + 1386070) = 1990656 * k + 693035 := by
    unfold C
    simp [show (3981312 * k + 1386070) % 2 = 0 by omega]
    omega
  have h11 : C (1990656 * k + 693035) = 5971968 * k + 2079106 := by
    unfold C
    simp [show (1990656 * k + 693035) % 2 ≠ 0 by omega]
    omega
  have h12 : C (5971968 * k + 2079106) = 2985984 * k + 1039553 := by
    unfold C
    simp [show (5971968 * k + 2079106) % 2 = 0 by omega]
    omega
  have h13 : C (2985984 * k + 1039553) = 8957952 * k + 3118660 := by
    unfold C
    simp [show (2985984 * k + 1039553) % 2 ≠ 0 by omega]
    omega
  have h14 : C (8957952 * k + 3118660) = 4478976 * k + 1559330 := by
    unfold C
    simp [show (8957952 * k + 3118660) % 2 = 0 by omega]
    omega
  have h15 : C (4478976 * k + 1559330) = 2239488 * k + 779665 := by
    unfold C
    simp [show (4478976 * k + 1559330) % 2 = 0 by omega]
    omega
  have h16 : C (2239488 * k + 779665) = 6718464 * k + 2338996 := by
    unfold C
    simp [show (2239488 * k + 779665) % 2 ≠ 0 by omega]
    omega
  have h17 : C (6718464 * k + 2338996) = 3359232 * k + 1169498 := by
    unfold C
    simp [show (6718464 * k + 2338996) % 2 = 0 by omega]
    omega
  have h18 : C (3359232 * k + 1169498) = 1679616 * k + 584749 := by
    unfold C
    simp [show (3359232 * k + 1169498) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 584749) = 5038848 * k + 1754248 := by
    unfold C
    simp [show (1679616 * k + 584749) % 2 ≠ 0 by omega]
    omega
  have h20 : C (5038848 * k + 1754248) = 2519424 * k + 877124 := by
    unfold C
    simp [show (5038848 * k + 1754248) % 2 = 0 by omega]
    omega
  have h21 : C (2519424 * k + 877124) = 1259712 * k + 438562 := by
    unfold C
    simp [show (2519424 * k + 877124) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 438562) = 629856 * k + 219281 := by
    unfold C
    simp [show (1259712 * k + 438562) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 219281) = 1889568 * k + 657844 := by
    unfold C
    simp [show (629856 * k + 219281) % 2 ≠ 0 by omega]
    omega
  have h24 : C (1889568 * k + 657844) = 944784 * k + 328922 := by
    unfold C
    simp [show (1889568 * k + 657844) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 328922) = 472392 * k + 164461 := by
    unfold C
    simp [show (944784 * k + 328922) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 164461) = 1417176 * k + 493384 := by
    unfold C
    simp [show (472392 * k + 164461) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 493384) = 708588 * k + 246692 := by
    unfold C
    simp [show (1417176 * k + 493384) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 246692) = 354294 * k + 123346 := by
    unfold C
    simp [show (708588 * k + 246692) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 123346) = 177147 * k + 61673 := by
    unfold C
    simp [show (354294 * k + 123346) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 91263) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 91263))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_91519 : ∀ k : Nat,
    iterate (262144 * k + 91519) 29 = 177147 * k + 61846 ∧
      177147 * k + 61846 < 262144 * k + 91519 := by
  intro k
  have h1 : C (262144 * k + 91519) = 786432 * k + 274558 := by
    unfold C
    simp [show (262144 * k + 91519) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 274558) = 393216 * k + 137279 := by
    unfold C
    simp [show (786432 * k + 274558) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 137279) = 1179648 * k + 411838 := by
    unfold C
    simp [show (393216 * k + 137279) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 411838) = 589824 * k + 205919 := by
    unfold C
    simp [show (1179648 * k + 411838) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 205919) = 1769472 * k + 617758 := by
    unfold C
    simp [show (589824 * k + 205919) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 617758) = 884736 * k + 308879 := by
    unfold C
    simp [show (1769472 * k + 617758) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 308879) = 2654208 * k + 926638 := by
    unfold C
    simp [show (884736 * k + 308879) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 926638) = 1327104 * k + 463319 := by
    unfold C
    simp [show (2654208 * k + 926638) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 463319) = 3981312 * k + 1389958 := by
    unfold C
    simp [show (1327104 * k + 463319) % 2 ≠ 0 by omega]
    omega
  have h10 : C (3981312 * k + 1389958) = 1990656 * k + 694979 := by
    unfold C
    simp [show (3981312 * k + 1389958) % 2 = 0 by omega]
    omega
  have h11 : C (1990656 * k + 694979) = 5971968 * k + 2084938 := by
    unfold C
    simp [show (1990656 * k + 694979) % 2 ≠ 0 by omega]
    omega
  have h12 : C (5971968 * k + 2084938) = 2985984 * k + 1042469 := by
    unfold C
    simp [show (5971968 * k + 2084938) % 2 = 0 by omega]
    omega
  have h13 : C (2985984 * k + 1042469) = 8957952 * k + 3127408 := by
    unfold C
    simp [show (2985984 * k + 1042469) % 2 ≠ 0 by omega]
    omega
  have h14 : C (8957952 * k + 3127408) = 4478976 * k + 1563704 := by
    unfold C
    simp [show (8957952 * k + 3127408) % 2 = 0 by omega]
    omega
  have h15 : C (4478976 * k + 1563704) = 2239488 * k + 781852 := by
    unfold C
    simp [show (4478976 * k + 1563704) % 2 = 0 by omega]
    omega
  have h16 : C (2239488 * k + 781852) = 1119744 * k + 390926 := by
    unfold C
    simp [show (2239488 * k + 781852) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 390926) = 559872 * k + 195463 := by
    unfold C
    simp [show (1119744 * k + 390926) % 2 = 0 by omega]
    omega
  have h18 : C (559872 * k + 195463) = 1679616 * k + 586390 := by
    unfold C
    simp [show (559872 * k + 195463) % 2 ≠ 0 by omega]
    omega
  have h19 : C (1679616 * k + 586390) = 839808 * k + 293195 := by
    unfold C
    simp [show (1679616 * k + 586390) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 293195) = 2519424 * k + 879586 := by
    unfold C
    simp [show (839808 * k + 293195) % 2 ≠ 0 by omega]
    omega
  have h21 : C (2519424 * k + 879586) = 1259712 * k + 439793 := by
    unfold C
    simp [show (2519424 * k + 879586) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 439793) = 3779136 * k + 1319380 := by
    unfold C
    simp [show (1259712 * k + 439793) % 2 ≠ 0 by omega]
    omega
  have h23 : C (3779136 * k + 1319380) = 1889568 * k + 659690 := by
    unfold C
    simp [show (3779136 * k + 1319380) % 2 = 0 by omega]
    omega
  have h24 : C (1889568 * k + 659690) = 944784 * k + 329845 := by
    unfold C
    simp [show (1889568 * k + 659690) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 329845) = 2834352 * k + 989536 := by
    unfold C
    simp [show (944784 * k + 329845) % 2 ≠ 0 by omega]
    omega
  have h26 : C (2834352 * k + 989536) = 1417176 * k + 494768 := by
    unfold C
    simp [show (2834352 * k + 989536) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 494768) = 708588 * k + 247384 := by
    unfold C
    simp [show (1417176 * k + 494768) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 247384) = 354294 * k + 123692 := by
    unfold C
    simp [show (708588 * k + 247384) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 123692) = 177147 * k + 61846 := by
    unfold C
    simp [show (354294 * k + 123692) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 91519) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 91519))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_91631 : ∀ k : Nat,
    iterate (262144 * k + 91631) 29 = 177147 * k + 61922 ∧
      177147 * k + 61922 < 262144 * k + 91631 := by
  intro k
  have h1 : C (262144 * k + 91631) = 786432 * k + 274894 := by
    unfold C
    simp [show (262144 * k + 91631) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 274894) = 393216 * k + 137447 := by
    unfold C
    simp [show (786432 * k + 274894) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 137447) = 1179648 * k + 412342 := by
    unfold C
    simp [show (393216 * k + 137447) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 412342) = 589824 * k + 206171 := by
    unfold C
    simp [show (1179648 * k + 412342) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 206171) = 1769472 * k + 618514 := by
    unfold C
    simp [show (589824 * k + 206171) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 618514) = 884736 * k + 309257 := by
    unfold C
    simp [show (1769472 * k + 618514) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 309257) = 2654208 * k + 927772 := by
    unfold C
    simp [show (884736 * k + 309257) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 927772) = 1327104 * k + 463886 := by
    unfold C
    simp [show (2654208 * k + 927772) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 463886) = 663552 * k + 231943 := by
    unfold C
    simp [show (1327104 * k + 463886) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 231943) = 1990656 * k + 695830 := by
    unfold C
    simp [show (663552 * k + 231943) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 695830) = 995328 * k + 347915 := by
    unfold C
    simp [show (1990656 * k + 695830) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 347915) = 2985984 * k + 1043746 := by
    unfold C
    simp [show (995328 * k + 347915) % 2 ≠ 0 by omega]
    omega
  have h13 : C (2985984 * k + 1043746) = 1492992 * k + 521873 := by
    unfold C
    simp [show (2985984 * k + 1043746) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 521873) = 4478976 * k + 1565620 := by
    unfold C
    simp [show (1492992 * k + 521873) % 2 ≠ 0 by omega]
    omega
  have h15 : C (4478976 * k + 1565620) = 2239488 * k + 782810 := by
    unfold C
    simp [show (4478976 * k + 1565620) % 2 = 0 by omega]
    omega
  have h16 : C (2239488 * k + 782810) = 1119744 * k + 391405 := by
    unfold C
    simp [show (2239488 * k + 782810) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 391405) = 3359232 * k + 1174216 := by
    unfold C
    simp [show (1119744 * k + 391405) % 2 ≠ 0 by omega]
    omega
  have h18 : C (3359232 * k + 1174216) = 1679616 * k + 587108 := by
    unfold C
    simp [show (3359232 * k + 1174216) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 587108) = 839808 * k + 293554 := by
    unfold C
    simp [show (1679616 * k + 587108) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 293554) = 419904 * k + 146777 := by
    unfold C
    simp [show (839808 * k + 293554) % 2 = 0 by omega]
    omega
  have h21 : C (419904 * k + 146777) = 1259712 * k + 440332 := by
    unfold C
    simp [show (419904 * k + 146777) % 2 ≠ 0 by omega]
    omega
  have h22 : C (1259712 * k + 440332) = 629856 * k + 220166 := by
    unfold C
    simp [show (1259712 * k + 440332) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 220166) = 314928 * k + 110083 := by
    unfold C
    simp [show (629856 * k + 220166) % 2 = 0 by omega]
    omega
  have h24 : C (314928 * k + 110083) = 944784 * k + 330250 := by
    unfold C
    simp [show (314928 * k + 110083) % 2 ≠ 0 by omega]
    omega
  have h25 : C (944784 * k + 330250) = 472392 * k + 165125 := by
    unfold C
    simp [show (944784 * k + 330250) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 165125) = 1417176 * k + 495376 := by
    unfold C
    simp [show (472392 * k + 165125) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 495376) = 708588 * k + 247688 := by
    unfold C
    simp [show (1417176 * k + 495376) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 247688) = 354294 * k + 123844 := by
    unfold C
    simp [show (708588 * k + 247688) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 123844) = 177147 * k + 61922 := by
    unfold C
    simp [show (354294 * k + 123844) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 91631) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 91631))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_91751 : ∀ k : Nat,
    iterate (262144 * k + 91751) 29 = 177147 * k + 62003 ∧
      177147 * k + 62003 < 262144 * k + 91751 := by
  intro k
  have h1 : C (262144 * k + 91751) = 786432 * k + 275254 := by
    unfold C
    simp [show (262144 * k + 91751) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 275254) = 393216 * k + 137627 := by
    unfold C
    simp [show (786432 * k + 275254) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 137627) = 1179648 * k + 412882 := by
    unfold C
    simp [show (393216 * k + 137627) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 412882) = 589824 * k + 206441 := by
    unfold C
    simp [show (1179648 * k + 412882) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 206441) = 1769472 * k + 619324 := by
    unfold C
    simp [show (589824 * k + 206441) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 619324) = 884736 * k + 309662 := by
    unfold C
    simp [show (1769472 * k + 619324) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 309662) = 442368 * k + 154831 := by
    unfold C
    simp [show (884736 * k + 309662) % 2 = 0 by omega]
    omega
  have h8 : C (442368 * k + 154831) = 1327104 * k + 464494 := by
    unfold C
    simp [show (442368 * k + 154831) % 2 ≠ 0 by omega]
    omega
  have h9 : C (1327104 * k + 464494) = 663552 * k + 232247 := by
    unfold C
    simp [show (1327104 * k + 464494) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 232247) = 1990656 * k + 696742 := by
    unfold C
    simp [show (663552 * k + 232247) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 696742) = 995328 * k + 348371 := by
    unfold C
    simp [show (1990656 * k + 696742) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 348371) = 2985984 * k + 1045114 := by
    unfold C
    simp [show (995328 * k + 348371) % 2 ≠ 0 by omega]
    omega
  have h13 : C (2985984 * k + 1045114) = 1492992 * k + 522557 := by
    unfold C
    simp [show (2985984 * k + 1045114) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 522557) = 4478976 * k + 1567672 := by
    unfold C
    simp [show (1492992 * k + 522557) % 2 ≠ 0 by omega]
    omega
  have h15 : C (4478976 * k + 1567672) = 2239488 * k + 783836 := by
    unfold C
    simp [show (4478976 * k + 1567672) % 2 = 0 by omega]
    omega
  have h16 : C (2239488 * k + 783836) = 1119744 * k + 391918 := by
    unfold C
    simp [show (2239488 * k + 783836) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 391918) = 559872 * k + 195959 := by
    unfold C
    simp [show (1119744 * k + 391918) % 2 = 0 by omega]
    omega
  have h18 : C (559872 * k + 195959) = 1679616 * k + 587878 := by
    unfold C
    simp [show (559872 * k + 195959) % 2 ≠ 0 by omega]
    omega
  have h19 : C (1679616 * k + 587878) = 839808 * k + 293939 := by
    unfold C
    simp [show (1679616 * k + 587878) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 293939) = 2519424 * k + 881818 := by
    unfold C
    simp [show (839808 * k + 293939) % 2 ≠ 0 by omega]
    omega
  have h21 : C (2519424 * k + 881818) = 1259712 * k + 440909 := by
    unfold C
    simp [show (2519424 * k + 881818) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 440909) = 3779136 * k + 1322728 := by
    unfold C
    simp [show (1259712 * k + 440909) % 2 ≠ 0 by omega]
    omega
  have h23 : C (3779136 * k + 1322728) = 1889568 * k + 661364 := by
    unfold C
    simp [show (3779136 * k + 1322728) % 2 = 0 by omega]
    omega
  have h24 : C (1889568 * k + 661364) = 944784 * k + 330682 := by
    unfold C
    simp [show (1889568 * k + 661364) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 330682) = 472392 * k + 165341 := by
    unfold C
    simp [show (944784 * k + 330682) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 165341) = 1417176 * k + 496024 := by
    unfold C
    simp [show (472392 * k + 165341) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 496024) = 708588 * k + 248012 := by
    unfold C
    simp [show (1417176 * k + 496024) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 248012) = 354294 * k + 124006 := by
    unfold C
    simp [show (708588 * k + 248012) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 124006) = 177147 * k + 62003 := by
    unfold C
    simp [show (354294 * k + 124006) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 91751) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 91751))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_92031 : ∀ k : Nat,
    iterate (262144 * k + 92031) 29 = 177147 * k + 62192 ∧
      177147 * k + 62192 < 262144 * k + 92031 := by
  intro k
  have h1 : C (262144 * k + 92031) = 786432 * k + 276094 := by
    unfold C
    simp [show (262144 * k + 92031) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 276094) = 393216 * k + 138047 := by
    unfold C
    simp [show (786432 * k + 276094) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 138047) = 1179648 * k + 414142 := by
    unfold C
    simp [show (393216 * k + 138047) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 414142) = 589824 * k + 207071 := by
    unfold C
    simp [show (1179648 * k + 414142) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 207071) = 1769472 * k + 621214 := by
    unfold C
    simp [show (589824 * k + 207071) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 621214) = 884736 * k + 310607 := by
    unfold C
    simp [show (1769472 * k + 621214) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 310607) = 2654208 * k + 931822 := by
    unfold C
    simp [show (884736 * k + 310607) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 931822) = 1327104 * k + 465911 := by
    unfold C
    simp [show (2654208 * k + 931822) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 465911) = 3981312 * k + 1397734 := by
    unfold C
    simp [show (1327104 * k + 465911) % 2 ≠ 0 by omega]
    omega
  have h10 : C (3981312 * k + 1397734) = 1990656 * k + 698867 := by
    unfold C
    simp [show (3981312 * k + 1397734) % 2 = 0 by omega]
    omega
  have h11 : C (1990656 * k + 698867) = 5971968 * k + 2096602 := by
    unfold C
    simp [show (1990656 * k + 698867) % 2 ≠ 0 by omega]
    omega
  have h12 : C (5971968 * k + 2096602) = 2985984 * k + 1048301 := by
    unfold C
    simp [show (5971968 * k + 2096602) % 2 = 0 by omega]
    omega
  have h13 : C (2985984 * k + 1048301) = 8957952 * k + 3144904 := by
    unfold C
    simp [show (2985984 * k + 1048301) % 2 ≠ 0 by omega]
    omega
  have h14 : C (8957952 * k + 3144904) = 4478976 * k + 1572452 := by
    unfold C
    simp [show (8957952 * k + 3144904) % 2 = 0 by omega]
    omega
  have h15 : C (4478976 * k + 1572452) = 2239488 * k + 786226 := by
    unfold C
    simp [show (4478976 * k + 1572452) % 2 = 0 by omega]
    omega
  have h16 : C (2239488 * k + 786226) = 1119744 * k + 393113 := by
    unfold C
    simp [show (2239488 * k + 786226) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 393113) = 3359232 * k + 1179340 := by
    unfold C
    simp [show (1119744 * k + 393113) % 2 ≠ 0 by omega]
    omega
  have h18 : C (3359232 * k + 1179340) = 1679616 * k + 589670 := by
    unfold C
    simp [show (3359232 * k + 1179340) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 589670) = 839808 * k + 294835 := by
    unfold C
    simp [show (1679616 * k + 589670) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 294835) = 2519424 * k + 884506 := by
    unfold C
    simp [show (839808 * k + 294835) % 2 ≠ 0 by omega]
    omega
  have h21 : C (2519424 * k + 884506) = 1259712 * k + 442253 := by
    unfold C
    simp [show (2519424 * k + 884506) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 442253) = 3779136 * k + 1326760 := by
    unfold C
    simp [show (1259712 * k + 442253) % 2 ≠ 0 by omega]
    omega
  have h23 : C (3779136 * k + 1326760) = 1889568 * k + 663380 := by
    unfold C
    simp [show (3779136 * k + 1326760) % 2 = 0 by omega]
    omega
  have h24 : C (1889568 * k + 663380) = 944784 * k + 331690 := by
    unfold C
    simp [show (1889568 * k + 663380) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 331690) = 472392 * k + 165845 := by
    unfold C
    simp [show (944784 * k + 331690) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 165845) = 1417176 * k + 497536 := by
    unfold C
    simp [show (472392 * k + 165845) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 497536) = 708588 * k + 248768 := by
    unfold C
    simp [show (1417176 * k + 497536) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 248768) = 354294 * k + 124384 := by
    unfold C
    simp [show (708588 * k + 248768) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 124384) = 177147 * k + 62192 := by
    unfold C
    simp [show (354294 * k + 124384) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 92031) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 92031))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_93743 : ∀ k : Nat,
    iterate (262144 * k + 93743) 29 = 177147 * k + 63349 ∧
      177147 * k + 63349 < 262144 * k + 93743 := by
  intro k
  have h1 : C (262144 * k + 93743) = 786432 * k + 281230 := by
    unfold C
    simp [show (262144 * k + 93743) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 281230) = 393216 * k + 140615 := by
    unfold C
    simp [show (786432 * k + 281230) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 140615) = 1179648 * k + 421846 := by
    unfold C
    simp [show (393216 * k + 140615) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 421846) = 589824 * k + 210923 := by
    unfold C
    simp [show (1179648 * k + 421846) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 210923) = 1769472 * k + 632770 := by
    unfold C
    simp [show (589824 * k + 210923) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 632770) = 884736 * k + 316385 := by
    unfold C
    simp [show (1769472 * k + 632770) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 316385) = 2654208 * k + 949156 := by
    unfold C
    simp [show (884736 * k + 316385) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 949156) = 1327104 * k + 474578 := by
    unfold C
    simp [show (2654208 * k + 949156) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 474578) = 663552 * k + 237289 := by
    unfold C
    simp [show (1327104 * k + 474578) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 237289) = 1990656 * k + 711868 := by
    unfold C
    simp [show (663552 * k + 237289) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 711868) = 995328 * k + 355934 := by
    unfold C
    simp [show (1990656 * k + 711868) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 355934) = 497664 * k + 177967 := by
    unfold C
    simp [show (995328 * k + 355934) % 2 = 0 by omega]
    omega
  have h13 : C (497664 * k + 177967) = 1492992 * k + 533902 := by
    unfold C
    simp [show (497664 * k + 177967) % 2 ≠ 0 by omega]
    omega
  have h14 : C (1492992 * k + 533902) = 746496 * k + 266951 := by
    unfold C
    simp [show (1492992 * k + 533902) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 266951) = 2239488 * k + 800854 := by
    unfold C
    simp [show (746496 * k + 266951) % 2 ≠ 0 by omega]
    omega
  have h16 : C (2239488 * k + 800854) = 1119744 * k + 400427 := by
    unfold C
    simp [show (2239488 * k + 800854) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 400427) = 3359232 * k + 1201282 := by
    unfold C
    simp [show (1119744 * k + 400427) % 2 ≠ 0 by omega]
    omega
  have h18 : C (3359232 * k + 1201282) = 1679616 * k + 600641 := by
    unfold C
    simp [show (3359232 * k + 1201282) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 600641) = 5038848 * k + 1801924 := by
    unfold C
    simp [show (1679616 * k + 600641) % 2 ≠ 0 by omega]
    omega
  have h20 : C (5038848 * k + 1801924) = 2519424 * k + 900962 := by
    unfold C
    simp [show (5038848 * k + 1801924) % 2 = 0 by omega]
    omega
  have h21 : C (2519424 * k + 900962) = 1259712 * k + 450481 := by
    unfold C
    simp [show (2519424 * k + 900962) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 450481) = 3779136 * k + 1351444 := by
    unfold C
    simp [show (1259712 * k + 450481) % 2 ≠ 0 by omega]
    omega
  have h23 : C (3779136 * k + 1351444) = 1889568 * k + 675722 := by
    unfold C
    simp [show (3779136 * k + 1351444) % 2 = 0 by omega]
    omega
  have h24 : C (1889568 * k + 675722) = 944784 * k + 337861 := by
    unfold C
    simp [show (1889568 * k + 675722) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 337861) = 2834352 * k + 1013584 := by
    unfold C
    simp [show (944784 * k + 337861) % 2 ≠ 0 by omega]
    omega
  have h26 : C (2834352 * k + 1013584) = 1417176 * k + 506792 := by
    unfold C
    simp [show (2834352 * k + 1013584) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 506792) = 708588 * k + 253396 := by
    unfold C
    simp [show (1417176 * k + 506792) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 253396) = 354294 * k + 126698 := by
    unfold C
    simp [show (708588 * k + 253396) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 126698) = 177147 * k + 63349 := by
    unfold C
    simp [show (354294 * k + 126698) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 93743) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 93743))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_94299 : ∀ k : Nat,
    iterate (262144 * k + 94299) 29 = 177147 * k + 63725 ∧
      177147 * k + 63725 < 262144 * k + 94299 := by
  intro k
  have h1 : C (262144 * k + 94299) = 786432 * k + 282898 := by
    unfold C
    simp [show (262144 * k + 94299) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 282898) = 393216 * k + 141449 := by
    unfold C
    simp [show (786432 * k + 282898) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 141449) = 1179648 * k + 424348 := by
    unfold C
    simp [show (393216 * k + 141449) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 424348) = 589824 * k + 212174 := by
    unfold C
    simp [show (1179648 * k + 424348) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 212174) = 294912 * k + 106087 := by
    unfold C
    simp [show (589824 * k + 212174) % 2 = 0 by omega]
    omega
  have h6 : C (294912 * k + 106087) = 884736 * k + 318262 := by
    unfold C
    simp [show (294912 * k + 106087) % 2 ≠ 0 by omega]
    omega
  have h7 : C (884736 * k + 318262) = 442368 * k + 159131 := by
    unfold C
    simp [show (884736 * k + 318262) % 2 = 0 by omega]
    omega
  have h8 : C (442368 * k + 159131) = 1327104 * k + 477394 := by
    unfold C
    simp [show (442368 * k + 159131) % 2 ≠ 0 by omega]
    omega
  have h9 : C (1327104 * k + 477394) = 663552 * k + 238697 := by
    unfold C
    simp [show (1327104 * k + 477394) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 238697) = 1990656 * k + 716092 := by
    unfold C
    simp [show (663552 * k + 238697) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 716092) = 995328 * k + 358046 := by
    unfold C
    simp [show (1990656 * k + 716092) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 358046) = 497664 * k + 179023 := by
    unfold C
    simp [show (995328 * k + 358046) % 2 = 0 by omega]
    omega
  have h13 : C (497664 * k + 179023) = 1492992 * k + 537070 := by
    unfold C
    simp [show (497664 * k + 179023) % 2 ≠ 0 by omega]
    omega
  have h14 : C (1492992 * k + 537070) = 746496 * k + 268535 := by
    unfold C
    simp [show (1492992 * k + 537070) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 268535) = 2239488 * k + 805606 := by
    unfold C
    simp [show (746496 * k + 268535) % 2 ≠ 0 by omega]
    omega
  have h16 : C (2239488 * k + 805606) = 1119744 * k + 402803 := by
    unfold C
    simp [show (2239488 * k + 805606) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 402803) = 3359232 * k + 1208410 := by
    unfold C
    simp [show (1119744 * k + 402803) % 2 ≠ 0 by omega]
    omega
  have h18 : C (3359232 * k + 1208410) = 1679616 * k + 604205 := by
    unfold C
    simp [show (3359232 * k + 1208410) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 604205) = 5038848 * k + 1812616 := by
    unfold C
    simp [show (1679616 * k + 604205) % 2 ≠ 0 by omega]
    omega
  have h20 : C (5038848 * k + 1812616) = 2519424 * k + 906308 := by
    unfold C
    simp [show (5038848 * k + 1812616) % 2 = 0 by omega]
    omega
  have h21 : C (2519424 * k + 906308) = 1259712 * k + 453154 := by
    unfold C
    simp [show (2519424 * k + 906308) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 453154) = 629856 * k + 226577 := by
    unfold C
    simp [show (1259712 * k + 453154) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 226577) = 1889568 * k + 679732 := by
    unfold C
    simp [show (629856 * k + 226577) % 2 ≠ 0 by omega]
    omega
  have h24 : C (1889568 * k + 679732) = 944784 * k + 339866 := by
    unfold C
    simp [show (1889568 * k + 679732) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 339866) = 472392 * k + 169933 := by
    unfold C
    simp [show (944784 * k + 339866) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 169933) = 1417176 * k + 509800 := by
    unfold C
    simp [show (472392 * k + 169933) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 509800) = 708588 * k + 254900 := by
    unfold C
    simp [show (1417176 * k + 509800) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 254900) = 354294 * k + 127450 := by
    unfold C
    simp [show (708588 * k + 254900) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 127450) = 177147 * k + 63725 := by
    unfold C
    simp [show (354294 * k + 127450) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 94299) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 94299))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_94747 : ∀ k : Nat,
    iterate (262144 * k + 94747) 29 = 177147 * k + 64028 ∧
      177147 * k + 64028 < 262144 * k + 94747 := by
  intro k
  have h1 : C (262144 * k + 94747) = 786432 * k + 284242 := by
    unfold C
    simp [show (262144 * k + 94747) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 284242) = 393216 * k + 142121 := by
    unfold C
    simp [show (786432 * k + 284242) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 142121) = 1179648 * k + 426364 := by
    unfold C
    simp [show (393216 * k + 142121) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 426364) = 589824 * k + 213182 := by
    unfold C
    simp [show (1179648 * k + 426364) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 213182) = 294912 * k + 106591 := by
    unfold C
    simp [show (589824 * k + 213182) % 2 = 0 by omega]
    omega
  have h6 : C (294912 * k + 106591) = 884736 * k + 319774 := by
    unfold C
    simp [show (294912 * k + 106591) % 2 ≠ 0 by omega]
    omega
  have h7 : C (884736 * k + 319774) = 442368 * k + 159887 := by
    unfold C
    simp [show (884736 * k + 319774) % 2 = 0 by omega]
    omega
  have h8 : C (442368 * k + 159887) = 1327104 * k + 479662 := by
    unfold C
    simp [show (442368 * k + 159887) % 2 ≠ 0 by omega]
    omega
  have h9 : C (1327104 * k + 479662) = 663552 * k + 239831 := by
    unfold C
    simp [show (1327104 * k + 479662) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 239831) = 1990656 * k + 719494 := by
    unfold C
    simp [show (663552 * k + 239831) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 719494) = 995328 * k + 359747 := by
    unfold C
    simp [show (1990656 * k + 719494) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 359747) = 2985984 * k + 1079242 := by
    unfold C
    simp [show (995328 * k + 359747) % 2 ≠ 0 by omega]
    omega
  have h13 : C (2985984 * k + 1079242) = 1492992 * k + 539621 := by
    unfold C
    simp [show (2985984 * k + 1079242) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 539621) = 4478976 * k + 1618864 := by
    unfold C
    simp [show (1492992 * k + 539621) % 2 ≠ 0 by omega]
    omega
  have h15 : C (4478976 * k + 1618864) = 2239488 * k + 809432 := by
    unfold C
    simp [show (4478976 * k + 1618864) % 2 = 0 by omega]
    omega
  have h16 : C (2239488 * k + 809432) = 1119744 * k + 404716 := by
    unfold C
    simp [show (2239488 * k + 809432) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 404716) = 559872 * k + 202358 := by
    unfold C
    simp [show (1119744 * k + 404716) % 2 = 0 by omega]
    omega
  have h18 : C (559872 * k + 202358) = 279936 * k + 101179 := by
    unfold C
    simp [show (559872 * k + 202358) % 2 = 0 by omega]
    omega
  have h19 : C (279936 * k + 101179) = 839808 * k + 303538 := by
    unfold C
    simp [show (279936 * k + 101179) % 2 ≠ 0 by omega]
    omega
  have h20 : C (839808 * k + 303538) = 419904 * k + 151769 := by
    unfold C
    simp [show (839808 * k + 303538) % 2 = 0 by omega]
    omega
  have h21 : C (419904 * k + 151769) = 1259712 * k + 455308 := by
    unfold C
    simp [show (419904 * k + 151769) % 2 ≠ 0 by omega]
    omega
  have h22 : C (1259712 * k + 455308) = 629856 * k + 227654 := by
    unfold C
    simp [show (1259712 * k + 455308) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 227654) = 314928 * k + 113827 := by
    unfold C
    simp [show (629856 * k + 227654) % 2 = 0 by omega]
    omega
  have h24 : C (314928 * k + 113827) = 944784 * k + 341482 := by
    unfold C
    simp [show (314928 * k + 113827) % 2 ≠ 0 by omega]
    omega
  have h25 : C (944784 * k + 341482) = 472392 * k + 170741 := by
    unfold C
    simp [show (944784 * k + 341482) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 170741) = 1417176 * k + 512224 := by
    unfold C
    simp [show (472392 * k + 170741) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 512224) = 708588 * k + 256112 := by
    unfold C
    simp [show (1417176 * k + 512224) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 256112) = 354294 * k + 128056 := by
    unfold C
    simp [show (708588 * k + 256112) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 128056) = 177147 * k + 64028 := by
    unfold C
    simp [show (354294 * k + 128056) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 94747) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 94747))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_94875 : ∀ k : Nat,
    iterate (262144 * k + 94875) 29 = 177147 * k + 64114 ∧
      177147 * k + 64114 < 262144 * k + 94875 := by
  intro k
  have h1 : C (262144 * k + 94875) = 786432 * k + 284626 := by
    unfold C
    simp [show (262144 * k + 94875) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 284626) = 393216 * k + 142313 := by
    unfold C
    simp [show (786432 * k + 284626) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 142313) = 1179648 * k + 426940 := by
    unfold C
    simp [show (393216 * k + 142313) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 426940) = 589824 * k + 213470 := by
    unfold C
    simp [show (1179648 * k + 426940) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 213470) = 294912 * k + 106735 := by
    unfold C
    simp [show (589824 * k + 213470) % 2 = 0 by omega]
    omega
  have h6 : C (294912 * k + 106735) = 884736 * k + 320206 := by
    unfold C
    simp [show (294912 * k + 106735) % 2 ≠ 0 by omega]
    omega
  have h7 : C (884736 * k + 320206) = 442368 * k + 160103 := by
    unfold C
    simp [show (884736 * k + 320206) % 2 = 0 by omega]
    omega
  have h8 : C (442368 * k + 160103) = 1327104 * k + 480310 := by
    unfold C
    simp [show (442368 * k + 160103) % 2 ≠ 0 by omega]
    omega
  have h9 : C (1327104 * k + 480310) = 663552 * k + 240155 := by
    unfold C
    simp [show (1327104 * k + 480310) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 240155) = 1990656 * k + 720466 := by
    unfold C
    simp [show (663552 * k + 240155) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 720466) = 995328 * k + 360233 := by
    unfold C
    simp [show (1990656 * k + 720466) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 360233) = 2985984 * k + 1080700 := by
    unfold C
    simp [show (995328 * k + 360233) % 2 ≠ 0 by omega]
    omega
  have h13 : C (2985984 * k + 1080700) = 1492992 * k + 540350 := by
    unfold C
    simp [show (2985984 * k + 1080700) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 540350) = 746496 * k + 270175 := by
    unfold C
    simp [show (1492992 * k + 540350) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 270175) = 2239488 * k + 810526 := by
    unfold C
    simp [show (746496 * k + 270175) % 2 ≠ 0 by omega]
    omega
  have h16 : C (2239488 * k + 810526) = 1119744 * k + 405263 := by
    unfold C
    simp [show (2239488 * k + 810526) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 405263) = 3359232 * k + 1215790 := by
    unfold C
    simp [show (1119744 * k + 405263) % 2 ≠ 0 by omega]
    omega
  have h18 : C (3359232 * k + 1215790) = 1679616 * k + 607895 := by
    unfold C
    simp [show (3359232 * k + 1215790) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 607895) = 5038848 * k + 1823686 := by
    unfold C
    simp [show (1679616 * k + 607895) % 2 ≠ 0 by omega]
    omega
  have h20 : C (5038848 * k + 1823686) = 2519424 * k + 911843 := by
    unfold C
    simp [show (5038848 * k + 1823686) % 2 = 0 by omega]
    omega
  have h21 : C (2519424 * k + 911843) = 7558272 * k + 2735530 := by
    unfold C
    simp [show (2519424 * k + 911843) % 2 ≠ 0 by omega]
    omega
  have h22 : C (7558272 * k + 2735530) = 3779136 * k + 1367765 := by
    unfold C
    simp [show (7558272 * k + 2735530) % 2 = 0 by omega]
    omega
  have h23 : C (3779136 * k + 1367765) = 11337408 * k + 4103296 := by
    unfold C
    simp [show (3779136 * k + 1367765) % 2 ≠ 0 by omega]
    omega
  have h24 : C (11337408 * k + 4103296) = 5668704 * k + 2051648 := by
    unfold C
    simp [show (11337408 * k + 4103296) % 2 = 0 by omega]
    omega
  have h25 : C (5668704 * k + 2051648) = 2834352 * k + 1025824 := by
    unfold C
    simp [show (5668704 * k + 2051648) % 2 = 0 by omega]
    omega
  have h26 : C (2834352 * k + 1025824) = 1417176 * k + 512912 := by
    unfold C
    simp [show (2834352 * k + 1025824) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 512912) = 708588 * k + 256456 := by
    unfold C
    simp [show (1417176 * k + 512912) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 256456) = 354294 * k + 128228 := by
    unfold C
    simp [show (708588 * k + 256456) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 128228) = 177147 * k + 64114 := by
    unfold C
    simp [show (354294 * k + 128228) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 94875) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 94875))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_95199 : ∀ k : Nat,
    iterate (262144 * k + 95199) 29 = 177147 * k + 64333 ∧
      177147 * k + 64333 < 262144 * k + 95199 := by
  intro k
  have h1 : C (262144 * k + 95199) = 786432 * k + 285598 := by
    unfold C
    simp [show (262144 * k + 95199) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 285598) = 393216 * k + 142799 := by
    unfold C
    simp [show (786432 * k + 285598) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 142799) = 1179648 * k + 428398 := by
    unfold C
    simp [show (393216 * k + 142799) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 428398) = 589824 * k + 214199 := by
    unfold C
    simp [show (1179648 * k + 428398) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 214199) = 1769472 * k + 642598 := by
    unfold C
    simp [show (589824 * k + 214199) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 642598) = 884736 * k + 321299 := by
    unfold C
    simp [show (1769472 * k + 642598) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 321299) = 2654208 * k + 963898 := by
    unfold C
    simp [show (884736 * k + 321299) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 963898) = 1327104 * k + 481949 := by
    unfold C
    simp [show (2654208 * k + 963898) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 481949) = 3981312 * k + 1445848 := by
    unfold C
    simp [show (1327104 * k + 481949) % 2 ≠ 0 by omega]
    omega
  have h10 : C (3981312 * k + 1445848) = 1990656 * k + 722924 := by
    unfold C
    simp [show (3981312 * k + 1445848) % 2 = 0 by omega]
    omega
  have h11 : C (1990656 * k + 722924) = 995328 * k + 361462 := by
    unfold C
    simp [show (1990656 * k + 722924) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 361462) = 497664 * k + 180731 := by
    unfold C
    simp [show (995328 * k + 361462) % 2 = 0 by omega]
    omega
  have h13 : C (497664 * k + 180731) = 1492992 * k + 542194 := by
    unfold C
    simp [show (497664 * k + 180731) % 2 ≠ 0 by omega]
    omega
  have h14 : C (1492992 * k + 542194) = 746496 * k + 271097 := by
    unfold C
    simp [show (1492992 * k + 542194) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 271097) = 2239488 * k + 813292 := by
    unfold C
    simp [show (746496 * k + 271097) % 2 ≠ 0 by omega]
    omega
  have h16 : C (2239488 * k + 813292) = 1119744 * k + 406646 := by
    unfold C
    simp [show (2239488 * k + 813292) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 406646) = 559872 * k + 203323 := by
    unfold C
    simp [show (1119744 * k + 406646) % 2 = 0 by omega]
    omega
  have h18 : C (559872 * k + 203323) = 1679616 * k + 609970 := by
    unfold C
    simp [show (559872 * k + 203323) % 2 ≠ 0 by omega]
    omega
  have h19 : C (1679616 * k + 609970) = 839808 * k + 304985 := by
    unfold C
    simp [show (1679616 * k + 609970) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 304985) = 2519424 * k + 914956 := by
    unfold C
    simp [show (839808 * k + 304985) % 2 ≠ 0 by omega]
    omega
  have h21 : C (2519424 * k + 914956) = 1259712 * k + 457478 := by
    unfold C
    simp [show (2519424 * k + 914956) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 457478) = 629856 * k + 228739 := by
    unfold C
    simp [show (1259712 * k + 457478) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 228739) = 1889568 * k + 686218 := by
    unfold C
    simp [show (629856 * k + 228739) % 2 ≠ 0 by omega]
    omega
  have h24 : C (1889568 * k + 686218) = 944784 * k + 343109 := by
    unfold C
    simp [show (1889568 * k + 686218) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 343109) = 2834352 * k + 1029328 := by
    unfold C
    simp [show (944784 * k + 343109) % 2 ≠ 0 by omega]
    omega
  have h26 : C (2834352 * k + 1029328) = 1417176 * k + 514664 := by
    unfold C
    simp [show (2834352 * k + 1029328) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 514664) = 708588 * k + 257332 := by
    unfold C
    simp [show (1417176 * k + 514664) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 257332) = 354294 * k + 128666 := by
    unfold C
    simp [show (708588 * k + 257332) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 128666) = 177147 * k + 64333 := by
    unfold C
    simp [show (354294 * k + 128666) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 95199) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 95199))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_95263 : ∀ k : Nat,
    iterate (262144 * k + 95263) 29 = 177147 * k + 64376 ∧
      177147 * k + 64376 < 262144 * k + 95263 := by
  intro k
  have h1 : C (262144 * k + 95263) = 786432 * k + 285790 := by
    unfold C
    simp [show (262144 * k + 95263) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 285790) = 393216 * k + 142895 := by
    unfold C
    simp [show (786432 * k + 285790) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 142895) = 1179648 * k + 428686 := by
    unfold C
    simp [show (393216 * k + 142895) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 428686) = 589824 * k + 214343 := by
    unfold C
    simp [show (1179648 * k + 428686) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 214343) = 1769472 * k + 643030 := by
    unfold C
    simp [show (589824 * k + 214343) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 643030) = 884736 * k + 321515 := by
    unfold C
    simp [show (1769472 * k + 643030) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 321515) = 2654208 * k + 964546 := by
    unfold C
    simp [show (884736 * k + 321515) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 964546) = 1327104 * k + 482273 := by
    unfold C
    simp [show (2654208 * k + 964546) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 482273) = 3981312 * k + 1446820 := by
    unfold C
    simp [show (1327104 * k + 482273) % 2 ≠ 0 by omega]
    omega
  have h10 : C (3981312 * k + 1446820) = 1990656 * k + 723410 := by
    unfold C
    simp [show (3981312 * k + 1446820) % 2 = 0 by omega]
    omega
  have h11 : C (1990656 * k + 723410) = 995328 * k + 361705 := by
    unfold C
    simp [show (1990656 * k + 723410) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 361705) = 2985984 * k + 1085116 := by
    unfold C
    simp [show (995328 * k + 361705) % 2 ≠ 0 by omega]
    omega
  have h13 : C (2985984 * k + 1085116) = 1492992 * k + 542558 := by
    unfold C
    simp [show (2985984 * k + 1085116) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 542558) = 746496 * k + 271279 := by
    unfold C
    simp [show (1492992 * k + 542558) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 271279) = 2239488 * k + 813838 := by
    unfold C
    simp [show (746496 * k + 271279) % 2 ≠ 0 by omega]
    omega
  have h16 : C (2239488 * k + 813838) = 1119744 * k + 406919 := by
    unfold C
    simp [show (2239488 * k + 813838) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 406919) = 3359232 * k + 1220758 := by
    unfold C
    simp [show (1119744 * k + 406919) % 2 ≠ 0 by omega]
    omega
  have h18 : C (3359232 * k + 1220758) = 1679616 * k + 610379 := by
    unfold C
    simp [show (3359232 * k + 1220758) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 610379) = 5038848 * k + 1831138 := by
    unfold C
    simp [show (1679616 * k + 610379) % 2 ≠ 0 by omega]
    omega
  have h20 : C (5038848 * k + 1831138) = 2519424 * k + 915569 := by
    unfold C
    simp [show (5038848 * k + 1831138) % 2 = 0 by omega]
    omega
  have h21 : C (2519424 * k + 915569) = 7558272 * k + 2746708 := by
    unfold C
    simp [show (2519424 * k + 915569) % 2 ≠ 0 by omega]
    omega
  have h22 : C (7558272 * k + 2746708) = 3779136 * k + 1373354 := by
    unfold C
    simp [show (7558272 * k + 2746708) % 2 = 0 by omega]
    omega
  have h23 : C (3779136 * k + 1373354) = 1889568 * k + 686677 := by
    unfold C
    simp [show (3779136 * k + 1373354) % 2 = 0 by omega]
    omega
  have h24 : C (1889568 * k + 686677) = 5668704 * k + 2060032 := by
    unfold C
    simp [show (1889568 * k + 686677) % 2 ≠ 0 by omega]
    omega
  have h25 : C (5668704 * k + 2060032) = 2834352 * k + 1030016 := by
    unfold C
    simp [show (5668704 * k + 2060032) % 2 = 0 by omega]
    omega
  have h26 : C (2834352 * k + 1030016) = 1417176 * k + 515008 := by
    unfold C
    simp [show (2834352 * k + 1030016) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 515008) = 708588 * k + 257504 := by
    unfold C
    simp [show (1417176 * k + 515008) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 257504) = 354294 * k + 128752 := by
    unfold C
    simp [show (708588 * k + 257504) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 128752) = 177147 * k + 64376 := by
    unfold C
    simp [show (354294 * k + 128752) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 95263) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 95263))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_95711 : ∀ k : Nat,
    iterate (262144 * k + 95711) 29 = 177147 * k + 64679 ∧
      177147 * k + 64679 < 262144 * k + 95711 := by
  intro k
  have h1 : C (262144 * k + 95711) = 786432 * k + 287134 := by
    unfold C
    simp [show (262144 * k + 95711) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 287134) = 393216 * k + 143567 := by
    unfold C
    simp [show (786432 * k + 287134) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 143567) = 1179648 * k + 430702 := by
    unfold C
    simp [show (393216 * k + 143567) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 430702) = 589824 * k + 215351 := by
    unfold C
    simp [show (1179648 * k + 430702) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 215351) = 1769472 * k + 646054 := by
    unfold C
    simp [show (589824 * k + 215351) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 646054) = 884736 * k + 323027 := by
    unfold C
    simp [show (1769472 * k + 646054) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 323027) = 2654208 * k + 969082 := by
    unfold C
    simp [show (884736 * k + 323027) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 969082) = 1327104 * k + 484541 := by
    unfold C
    simp [show (2654208 * k + 969082) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 484541) = 3981312 * k + 1453624 := by
    unfold C
    simp [show (1327104 * k + 484541) % 2 ≠ 0 by omega]
    omega
  have h10 : C (3981312 * k + 1453624) = 1990656 * k + 726812 := by
    unfold C
    simp [show (3981312 * k + 1453624) % 2 = 0 by omega]
    omega
  have h11 : C (1990656 * k + 726812) = 995328 * k + 363406 := by
    unfold C
    simp [show (1990656 * k + 726812) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 363406) = 497664 * k + 181703 := by
    unfold C
    simp [show (995328 * k + 363406) % 2 = 0 by omega]
    omega
  have h13 : C (497664 * k + 181703) = 1492992 * k + 545110 := by
    unfold C
    simp [show (497664 * k + 181703) % 2 ≠ 0 by omega]
    omega
  have h14 : C (1492992 * k + 545110) = 746496 * k + 272555 := by
    unfold C
    simp [show (1492992 * k + 545110) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 272555) = 2239488 * k + 817666 := by
    unfold C
    simp [show (746496 * k + 272555) % 2 ≠ 0 by omega]
    omega
  have h16 : C (2239488 * k + 817666) = 1119744 * k + 408833 := by
    unfold C
    simp [show (2239488 * k + 817666) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 408833) = 3359232 * k + 1226500 := by
    unfold C
    simp [show (1119744 * k + 408833) % 2 ≠ 0 by omega]
    omega
  have h18 : C (3359232 * k + 1226500) = 1679616 * k + 613250 := by
    unfold C
    simp [show (3359232 * k + 1226500) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 613250) = 839808 * k + 306625 := by
    unfold C
    simp [show (1679616 * k + 613250) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 306625) = 2519424 * k + 919876 := by
    unfold C
    simp [show (839808 * k + 306625) % 2 ≠ 0 by omega]
    omega
  have h21 : C (2519424 * k + 919876) = 1259712 * k + 459938 := by
    unfold C
    simp [show (2519424 * k + 919876) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 459938) = 629856 * k + 229969 := by
    unfold C
    simp [show (1259712 * k + 459938) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 229969) = 1889568 * k + 689908 := by
    unfold C
    simp [show (629856 * k + 229969) % 2 ≠ 0 by omega]
    omega
  have h24 : C (1889568 * k + 689908) = 944784 * k + 344954 := by
    unfold C
    simp [show (1889568 * k + 689908) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 344954) = 472392 * k + 172477 := by
    unfold C
    simp [show (944784 * k + 344954) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 172477) = 1417176 * k + 517432 := by
    unfold C
    simp [show (472392 * k + 172477) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 517432) = 708588 * k + 258716 := by
    unfold C
    simp [show (1417176 * k + 517432) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 258716) = 354294 * k + 129358 := by
    unfold C
    simp [show (708588 * k + 258716) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 129358) = 177147 * k + 64679 := by
    unfold C
    simp [show (354294 * k + 129358) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 95711) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 95711))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_95791 : ∀ k : Nat,
    iterate (262144 * k + 95791) 29 = 177147 * k + 64733 ∧
      177147 * k + 64733 < 262144 * k + 95791 := by
  intro k
  have h1 : C (262144 * k + 95791) = 786432 * k + 287374 := by
    unfold C
    simp [show (262144 * k + 95791) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 287374) = 393216 * k + 143687 := by
    unfold C
    simp [show (786432 * k + 287374) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 143687) = 1179648 * k + 431062 := by
    unfold C
    simp [show (393216 * k + 143687) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 431062) = 589824 * k + 215531 := by
    unfold C
    simp [show (1179648 * k + 431062) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 215531) = 1769472 * k + 646594 := by
    unfold C
    simp [show (589824 * k + 215531) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 646594) = 884736 * k + 323297 := by
    unfold C
    simp [show (1769472 * k + 646594) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 323297) = 2654208 * k + 969892 := by
    unfold C
    simp [show (884736 * k + 323297) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 969892) = 1327104 * k + 484946 := by
    unfold C
    simp [show (2654208 * k + 969892) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 484946) = 663552 * k + 242473 := by
    unfold C
    simp [show (1327104 * k + 484946) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 242473) = 1990656 * k + 727420 := by
    unfold C
    simp [show (663552 * k + 242473) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 727420) = 995328 * k + 363710 := by
    unfold C
    simp [show (1990656 * k + 727420) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 363710) = 497664 * k + 181855 := by
    unfold C
    simp [show (995328 * k + 363710) % 2 = 0 by omega]
    omega
  have h13 : C (497664 * k + 181855) = 1492992 * k + 545566 := by
    unfold C
    simp [show (497664 * k + 181855) % 2 ≠ 0 by omega]
    omega
  have h14 : C (1492992 * k + 545566) = 746496 * k + 272783 := by
    unfold C
    simp [show (1492992 * k + 545566) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 272783) = 2239488 * k + 818350 := by
    unfold C
    simp [show (746496 * k + 272783) % 2 ≠ 0 by omega]
    omega
  have h16 : C (2239488 * k + 818350) = 1119744 * k + 409175 := by
    unfold C
    simp [show (2239488 * k + 818350) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 409175) = 3359232 * k + 1227526 := by
    unfold C
    simp [show (1119744 * k + 409175) % 2 ≠ 0 by omega]
    omega
  have h18 : C (3359232 * k + 1227526) = 1679616 * k + 613763 := by
    unfold C
    simp [show (3359232 * k + 1227526) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 613763) = 5038848 * k + 1841290 := by
    unfold C
    simp [show (1679616 * k + 613763) % 2 ≠ 0 by omega]
    omega
  have h20 : C (5038848 * k + 1841290) = 2519424 * k + 920645 := by
    unfold C
    simp [show (5038848 * k + 1841290) % 2 = 0 by omega]
    omega
  have h21 : C (2519424 * k + 920645) = 7558272 * k + 2761936 := by
    unfold C
    simp [show (2519424 * k + 920645) % 2 ≠ 0 by omega]
    omega
  have h22 : C (7558272 * k + 2761936) = 3779136 * k + 1380968 := by
    unfold C
    simp [show (7558272 * k + 2761936) % 2 = 0 by omega]
    omega
  have h23 : C (3779136 * k + 1380968) = 1889568 * k + 690484 := by
    unfold C
    simp [show (3779136 * k + 1380968) % 2 = 0 by omega]
    omega
  have h24 : C (1889568 * k + 690484) = 944784 * k + 345242 := by
    unfold C
    simp [show (1889568 * k + 690484) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 345242) = 472392 * k + 172621 := by
    unfold C
    simp [show (944784 * k + 345242) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 172621) = 1417176 * k + 517864 := by
    unfold C
    simp [show (472392 * k + 172621) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 517864) = 708588 * k + 258932 := by
    unfold C
    simp [show (1417176 * k + 517864) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 258932) = 354294 * k + 129466 := by
    unfold C
    simp [show (708588 * k + 258932) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 129466) = 177147 * k + 64733 := by
    unfold C
    simp [show (354294 * k + 129466) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 95791) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 95791))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_96319 : ∀ k : Nat,
    iterate (262144 * k + 96319) 29 = 177147 * k + 65090 ∧
      177147 * k + 65090 < 262144 * k + 96319 := by
  intro k
  have h1 : C (262144 * k + 96319) = 786432 * k + 288958 := by
    unfold C
    simp [show (262144 * k + 96319) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 288958) = 393216 * k + 144479 := by
    unfold C
    simp [show (786432 * k + 288958) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 144479) = 1179648 * k + 433438 := by
    unfold C
    simp [show (393216 * k + 144479) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 433438) = 589824 * k + 216719 := by
    unfold C
    simp [show (1179648 * k + 433438) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 216719) = 1769472 * k + 650158 := by
    unfold C
    simp [show (589824 * k + 216719) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 650158) = 884736 * k + 325079 := by
    unfold C
    simp [show (1769472 * k + 650158) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 325079) = 2654208 * k + 975238 := by
    unfold C
    simp [show (884736 * k + 325079) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 975238) = 1327104 * k + 487619 := by
    unfold C
    simp [show (2654208 * k + 975238) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 487619) = 3981312 * k + 1462858 := by
    unfold C
    simp [show (1327104 * k + 487619) % 2 ≠ 0 by omega]
    omega
  have h10 : C (3981312 * k + 1462858) = 1990656 * k + 731429 := by
    unfold C
    simp [show (3981312 * k + 1462858) % 2 = 0 by omega]
    omega
  have h11 : C (1990656 * k + 731429) = 5971968 * k + 2194288 := by
    unfold C
    simp [show (1990656 * k + 731429) % 2 ≠ 0 by omega]
    omega
  have h12 : C (5971968 * k + 2194288) = 2985984 * k + 1097144 := by
    unfold C
    simp [show (5971968 * k + 2194288) % 2 = 0 by omega]
    omega
  have h13 : C (2985984 * k + 1097144) = 1492992 * k + 548572 := by
    unfold C
    simp [show (2985984 * k + 1097144) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 548572) = 746496 * k + 274286 := by
    unfold C
    simp [show (1492992 * k + 548572) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 274286) = 373248 * k + 137143 := by
    unfold C
    simp [show (746496 * k + 274286) % 2 = 0 by omega]
    omega
  have h16 : C (373248 * k + 137143) = 1119744 * k + 411430 := by
    unfold C
    simp [show (373248 * k + 137143) % 2 ≠ 0 by omega]
    omega
  have h17 : C (1119744 * k + 411430) = 559872 * k + 205715 := by
    unfold C
    simp [show (1119744 * k + 411430) % 2 = 0 by omega]
    omega
  have h18 : C (559872 * k + 205715) = 1679616 * k + 617146 := by
    unfold C
    simp [show (559872 * k + 205715) % 2 ≠ 0 by omega]
    omega
  have h19 : C (1679616 * k + 617146) = 839808 * k + 308573 := by
    unfold C
    simp [show (1679616 * k + 617146) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 308573) = 2519424 * k + 925720 := by
    unfold C
    simp [show (839808 * k + 308573) % 2 ≠ 0 by omega]
    omega
  have h21 : C (2519424 * k + 925720) = 1259712 * k + 462860 := by
    unfold C
    simp [show (2519424 * k + 925720) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 462860) = 629856 * k + 231430 := by
    unfold C
    simp [show (1259712 * k + 462860) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 231430) = 314928 * k + 115715 := by
    unfold C
    simp [show (629856 * k + 231430) % 2 = 0 by omega]
    omega
  have h24 : C (314928 * k + 115715) = 944784 * k + 347146 := by
    unfold C
    simp [show (314928 * k + 115715) % 2 ≠ 0 by omega]
    omega
  have h25 : C (944784 * k + 347146) = 472392 * k + 173573 := by
    unfold C
    simp [show (944784 * k + 347146) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 173573) = 1417176 * k + 520720 := by
    unfold C
    simp [show (472392 * k + 173573) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 520720) = 708588 * k + 260360 := by
    unfold C
    simp [show (1417176 * k + 520720) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 260360) = 354294 * k + 130180 := by
    unfold C
    simp [show (708588 * k + 260360) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 130180) = 177147 * k + 65090 := by
    unfold C
    simp [show (354294 * k + 130180) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 96319) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 96319))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_96359 : ∀ k : Nat,
    iterate (262144 * k + 96359) 29 = 177147 * k + 65117 ∧
      177147 * k + 65117 < 262144 * k + 96359 := by
  intro k
  have h1 : C (262144 * k + 96359) = 786432 * k + 289078 := by
    unfold C
    simp [show (262144 * k + 96359) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 289078) = 393216 * k + 144539 := by
    unfold C
    simp [show (786432 * k + 289078) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 144539) = 1179648 * k + 433618 := by
    unfold C
    simp [show (393216 * k + 144539) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 433618) = 589824 * k + 216809 := by
    unfold C
    simp [show (1179648 * k + 433618) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 216809) = 1769472 * k + 650428 := by
    unfold C
    simp [show (589824 * k + 216809) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 650428) = 884736 * k + 325214 := by
    unfold C
    simp [show (1769472 * k + 650428) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 325214) = 442368 * k + 162607 := by
    unfold C
    simp [show (884736 * k + 325214) % 2 = 0 by omega]
    omega
  have h8 : C (442368 * k + 162607) = 1327104 * k + 487822 := by
    unfold C
    simp [show (442368 * k + 162607) % 2 ≠ 0 by omega]
    omega
  have h9 : C (1327104 * k + 487822) = 663552 * k + 243911 := by
    unfold C
    simp [show (1327104 * k + 487822) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 243911) = 1990656 * k + 731734 := by
    unfold C
    simp [show (663552 * k + 243911) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 731734) = 995328 * k + 365867 := by
    unfold C
    simp [show (1990656 * k + 731734) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 365867) = 2985984 * k + 1097602 := by
    unfold C
    simp [show (995328 * k + 365867) % 2 ≠ 0 by omega]
    omega
  have h13 : C (2985984 * k + 1097602) = 1492992 * k + 548801 := by
    unfold C
    simp [show (2985984 * k + 1097602) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 548801) = 4478976 * k + 1646404 := by
    unfold C
    simp [show (1492992 * k + 548801) % 2 ≠ 0 by omega]
    omega
  have h15 : C (4478976 * k + 1646404) = 2239488 * k + 823202 := by
    unfold C
    simp [show (4478976 * k + 1646404) % 2 = 0 by omega]
    omega
  have h16 : C (2239488 * k + 823202) = 1119744 * k + 411601 := by
    unfold C
    simp [show (2239488 * k + 823202) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 411601) = 3359232 * k + 1234804 := by
    unfold C
    simp [show (1119744 * k + 411601) % 2 ≠ 0 by omega]
    omega
  have h18 : C (3359232 * k + 1234804) = 1679616 * k + 617402 := by
    unfold C
    simp [show (3359232 * k + 1234804) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 617402) = 839808 * k + 308701 := by
    unfold C
    simp [show (1679616 * k + 617402) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 308701) = 2519424 * k + 926104 := by
    unfold C
    simp [show (839808 * k + 308701) % 2 ≠ 0 by omega]
    omega
  have h21 : C (2519424 * k + 926104) = 1259712 * k + 463052 := by
    unfold C
    simp [show (2519424 * k + 926104) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 463052) = 629856 * k + 231526 := by
    unfold C
    simp [show (1259712 * k + 463052) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 231526) = 314928 * k + 115763 := by
    unfold C
    simp [show (629856 * k + 231526) % 2 = 0 by omega]
    omega
  have h24 : C (314928 * k + 115763) = 944784 * k + 347290 := by
    unfold C
    simp [show (314928 * k + 115763) % 2 ≠ 0 by omega]
    omega
  have h25 : C (944784 * k + 347290) = 472392 * k + 173645 := by
    unfold C
    simp [show (944784 * k + 347290) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 173645) = 1417176 * k + 520936 := by
    unfold C
    simp [show (472392 * k + 173645) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 520936) = 708588 * k + 260468 := by
    unfold C
    simp [show (1417176 * k + 520936) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 260468) = 354294 * k + 130234 := by
    unfold C
    simp [show (708588 * k + 260468) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 130234) = 177147 * k + 65117 := by
    unfold C
    simp [show (354294 * k + 130234) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 96359) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 96359))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

end CollatzM18Shard018
