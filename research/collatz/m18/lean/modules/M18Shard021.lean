import Mathlib.Data.Nat.Prime.Basic

namespace CollatzM18Shard021

def C (n : Nat) : Nat := if n % 2 = 0 then n / 2 else 3 * n + 1

def iterate (n t : Nat) : Nat := Nat.rec n (fun _ previous => C previous) t

theorem descent_mod262144_105663 : ∀ k : Nat,
    iterate (262144 * k + 105663) 29 = 177147 * k + 71404 ∧
      177147 * k + 71404 < 262144 * k + 105663 := by
  intro k
  have h1 : C (262144 * k + 105663) = 786432 * k + 316990 := by
    unfold C
    simp [show (262144 * k + 105663) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 316990) = 393216 * k + 158495 := by
    unfold C
    simp [show (786432 * k + 316990) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 158495) = 1179648 * k + 475486 := by
    unfold C
    simp [show (393216 * k + 158495) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 475486) = 589824 * k + 237743 := by
    unfold C
    simp [show (1179648 * k + 475486) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 237743) = 1769472 * k + 713230 := by
    unfold C
    simp [show (589824 * k + 237743) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 713230) = 884736 * k + 356615 := by
    unfold C
    simp [show (1769472 * k + 713230) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 356615) = 2654208 * k + 1069846 := by
    unfold C
    simp [show (884736 * k + 356615) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 1069846) = 1327104 * k + 534923 := by
    unfold C
    simp [show (2654208 * k + 1069846) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 534923) = 3981312 * k + 1604770 := by
    unfold C
    simp [show (1327104 * k + 534923) % 2 ≠ 0 by omega]
    omega
  have h10 : C (3981312 * k + 1604770) = 1990656 * k + 802385 := by
    unfold C
    simp [show (3981312 * k + 1604770) % 2 = 0 by omega]
    omega
  have h11 : C (1990656 * k + 802385) = 5971968 * k + 2407156 := by
    unfold C
    simp [show (1990656 * k + 802385) % 2 ≠ 0 by omega]
    omega
  have h12 : C (5971968 * k + 2407156) = 2985984 * k + 1203578 := by
    unfold C
    simp [show (5971968 * k + 2407156) % 2 = 0 by omega]
    omega
  have h13 : C (2985984 * k + 1203578) = 1492992 * k + 601789 := by
    unfold C
    simp [show (2985984 * k + 1203578) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 601789) = 4478976 * k + 1805368 := by
    unfold C
    simp [show (1492992 * k + 601789) % 2 ≠ 0 by omega]
    omega
  have h15 : C (4478976 * k + 1805368) = 2239488 * k + 902684 := by
    unfold C
    simp [show (4478976 * k + 1805368) % 2 = 0 by omega]
    omega
  have h16 : C (2239488 * k + 902684) = 1119744 * k + 451342 := by
    unfold C
    simp [show (2239488 * k + 902684) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 451342) = 559872 * k + 225671 := by
    unfold C
    simp [show (1119744 * k + 451342) % 2 = 0 by omega]
    omega
  have h18 : C (559872 * k + 225671) = 1679616 * k + 677014 := by
    unfold C
    simp [show (559872 * k + 225671) % 2 ≠ 0 by omega]
    omega
  have h19 : C (1679616 * k + 677014) = 839808 * k + 338507 := by
    unfold C
    simp [show (1679616 * k + 677014) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 338507) = 2519424 * k + 1015522 := by
    unfold C
    simp [show (839808 * k + 338507) % 2 ≠ 0 by omega]
    omega
  have h21 : C (2519424 * k + 1015522) = 1259712 * k + 507761 := by
    unfold C
    simp [show (2519424 * k + 1015522) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 507761) = 3779136 * k + 1523284 := by
    unfold C
    simp [show (1259712 * k + 507761) % 2 ≠ 0 by omega]
    omega
  have h23 : C (3779136 * k + 1523284) = 1889568 * k + 761642 := by
    unfold C
    simp [show (3779136 * k + 1523284) % 2 = 0 by omega]
    omega
  have h24 : C (1889568 * k + 761642) = 944784 * k + 380821 := by
    unfold C
    simp [show (1889568 * k + 761642) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 380821) = 2834352 * k + 1142464 := by
    unfold C
    simp [show (944784 * k + 380821) % 2 ≠ 0 by omega]
    omega
  have h26 : C (2834352 * k + 1142464) = 1417176 * k + 571232 := by
    unfold C
    simp [show (2834352 * k + 1142464) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 571232) = 708588 * k + 285616 := by
    unfold C
    simp [show (1417176 * k + 571232) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 285616) = 354294 * k + 142808 := by
    unfold C
    simp [show (708588 * k + 285616) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 142808) = 177147 * k + 71404 := by
    unfold C
    simp [show (354294 * k + 142808) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 105663) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 105663))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_105775 : ∀ k : Nat,
    iterate (262144 * k + 105775) 29 = 177147 * k + 71480 ∧
      177147 * k + 71480 < 262144 * k + 105775 := by
  intro k
  have h1 : C (262144 * k + 105775) = 786432 * k + 317326 := by
    unfold C
    simp [show (262144 * k + 105775) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 317326) = 393216 * k + 158663 := by
    unfold C
    simp [show (786432 * k + 317326) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 158663) = 1179648 * k + 475990 := by
    unfold C
    simp [show (393216 * k + 158663) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 475990) = 589824 * k + 237995 := by
    unfold C
    simp [show (1179648 * k + 475990) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 237995) = 1769472 * k + 713986 := by
    unfold C
    simp [show (589824 * k + 237995) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 713986) = 884736 * k + 356993 := by
    unfold C
    simp [show (1769472 * k + 713986) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 356993) = 2654208 * k + 1070980 := by
    unfold C
    simp [show (884736 * k + 356993) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 1070980) = 1327104 * k + 535490 := by
    unfold C
    simp [show (2654208 * k + 1070980) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 535490) = 663552 * k + 267745 := by
    unfold C
    simp [show (1327104 * k + 535490) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 267745) = 1990656 * k + 803236 := by
    unfold C
    simp [show (663552 * k + 267745) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 803236) = 995328 * k + 401618 := by
    unfold C
    simp [show (1990656 * k + 803236) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 401618) = 497664 * k + 200809 := by
    unfold C
    simp [show (995328 * k + 401618) % 2 = 0 by omega]
    omega
  have h13 : C (497664 * k + 200809) = 1492992 * k + 602428 := by
    unfold C
    simp [show (497664 * k + 200809) % 2 ≠ 0 by omega]
    omega
  have h14 : C (1492992 * k + 602428) = 746496 * k + 301214 := by
    unfold C
    simp [show (1492992 * k + 602428) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 301214) = 373248 * k + 150607 := by
    unfold C
    simp [show (746496 * k + 301214) % 2 = 0 by omega]
    omega
  have h16 : C (373248 * k + 150607) = 1119744 * k + 451822 := by
    unfold C
    simp [show (373248 * k + 150607) % 2 ≠ 0 by omega]
    omega
  have h17 : C (1119744 * k + 451822) = 559872 * k + 225911 := by
    unfold C
    simp [show (1119744 * k + 451822) % 2 = 0 by omega]
    omega
  have h18 : C (559872 * k + 225911) = 1679616 * k + 677734 := by
    unfold C
    simp [show (559872 * k + 225911) % 2 ≠ 0 by omega]
    omega
  have h19 : C (1679616 * k + 677734) = 839808 * k + 338867 := by
    unfold C
    simp [show (1679616 * k + 677734) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 338867) = 2519424 * k + 1016602 := by
    unfold C
    simp [show (839808 * k + 338867) % 2 ≠ 0 by omega]
    omega
  have h21 : C (2519424 * k + 1016602) = 1259712 * k + 508301 := by
    unfold C
    simp [show (2519424 * k + 1016602) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 508301) = 3779136 * k + 1524904 := by
    unfold C
    simp [show (1259712 * k + 508301) % 2 ≠ 0 by omega]
    omega
  have h23 : C (3779136 * k + 1524904) = 1889568 * k + 762452 := by
    unfold C
    simp [show (3779136 * k + 1524904) % 2 = 0 by omega]
    omega
  have h24 : C (1889568 * k + 762452) = 944784 * k + 381226 := by
    unfold C
    simp [show (1889568 * k + 762452) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 381226) = 472392 * k + 190613 := by
    unfold C
    simp [show (944784 * k + 381226) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 190613) = 1417176 * k + 571840 := by
    unfold C
    simp [show (472392 * k + 190613) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 571840) = 708588 * k + 285920 := by
    unfold C
    simp [show (1417176 * k + 571840) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 285920) = 354294 * k + 142960 := by
    unfold C
    simp [show (708588 * k + 285920) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 142960) = 177147 * k + 71480 := by
    unfold C
    simp [show (354294 * k + 142960) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 105775) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 105775))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_105855 : ∀ k : Nat,
    iterate (262144 * k + 105855) 29 = 177147 * k + 71534 ∧
      177147 * k + 71534 < 262144 * k + 105855 := by
  intro k
  have h1 : C (262144 * k + 105855) = 786432 * k + 317566 := by
    unfold C
    simp [show (262144 * k + 105855) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 317566) = 393216 * k + 158783 := by
    unfold C
    simp [show (786432 * k + 317566) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 158783) = 1179648 * k + 476350 := by
    unfold C
    simp [show (393216 * k + 158783) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 476350) = 589824 * k + 238175 := by
    unfold C
    simp [show (1179648 * k + 476350) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 238175) = 1769472 * k + 714526 := by
    unfold C
    simp [show (589824 * k + 238175) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 714526) = 884736 * k + 357263 := by
    unfold C
    simp [show (1769472 * k + 714526) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 357263) = 2654208 * k + 1071790 := by
    unfold C
    simp [show (884736 * k + 357263) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 1071790) = 1327104 * k + 535895 := by
    unfold C
    simp [show (2654208 * k + 1071790) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 535895) = 3981312 * k + 1607686 := by
    unfold C
    simp [show (1327104 * k + 535895) % 2 ≠ 0 by omega]
    omega
  have h10 : C (3981312 * k + 1607686) = 1990656 * k + 803843 := by
    unfold C
    simp [show (3981312 * k + 1607686) % 2 = 0 by omega]
    omega
  have h11 : C (1990656 * k + 803843) = 5971968 * k + 2411530 := by
    unfold C
    simp [show (1990656 * k + 803843) % 2 ≠ 0 by omega]
    omega
  have h12 : C (5971968 * k + 2411530) = 2985984 * k + 1205765 := by
    unfold C
    simp [show (5971968 * k + 2411530) % 2 = 0 by omega]
    omega
  have h13 : C (2985984 * k + 1205765) = 8957952 * k + 3617296 := by
    unfold C
    simp [show (2985984 * k + 1205765) % 2 ≠ 0 by omega]
    omega
  have h14 : C (8957952 * k + 3617296) = 4478976 * k + 1808648 := by
    unfold C
    simp [show (8957952 * k + 3617296) % 2 = 0 by omega]
    omega
  have h15 : C (4478976 * k + 1808648) = 2239488 * k + 904324 := by
    unfold C
    simp [show (4478976 * k + 1808648) % 2 = 0 by omega]
    omega
  have h16 : C (2239488 * k + 904324) = 1119744 * k + 452162 := by
    unfold C
    simp [show (2239488 * k + 904324) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 452162) = 559872 * k + 226081 := by
    unfold C
    simp [show (1119744 * k + 452162) % 2 = 0 by omega]
    omega
  have h18 : C (559872 * k + 226081) = 1679616 * k + 678244 := by
    unfold C
    simp [show (559872 * k + 226081) % 2 ≠ 0 by omega]
    omega
  have h19 : C (1679616 * k + 678244) = 839808 * k + 339122 := by
    unfold C
    simp [show (1679616 * k + 678244) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 339122) = 419904 * k + 169561 := by
    unfold C
    simp [show (839808 * k + 339122) % 2 = 0 by omega]
    omega
  have h21 : C (419904 * k + 169561) = 1259712 * k + 508684 := by
    unfold C
    simp [show (419904 * k + 169561) % 2 ≠ 0 by omega]
    omega
  have h22 : C (1259712 * k + 508684) = 629856 * k + 254342 := by
    unfold C
    simp [show (1259712 * k + 508684) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 254342) = 314928 * k + 127171 := by
    unfold C
    simp [show (629856 * k + 254342) % 2 = 0 by omega]
    omega
  have h24 : C (314928 * k + 127171) = 944784 * k + 381514 := by
    unfold C
    simp [show (314928 * k + 127171) % 2 ≠ 0 by omega]
    omega
  have h25 : C (944784 * k + 381514) = 472392 * k + 190757 := by
    unfold C
    simp [show (944784 * k + 381514) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 190757) = 1417176 * k + 572272 := by
    unfold C
    simp [show (472392 * k + 190757) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 572272) = 708588 * k + 286136 := by
    unfold C
    simp [show (1417176 * k + 572272) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 286136) = 354294 * k + 143068 := by
    unfold C
    simp [show (708588 * k + 286136) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 143068) = 177147 * k + 71534 := by
    unfold C
    simp [show (354294 * k + 143068) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 105855) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 105855))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_105983 : ∀ k : Nat,
    iterate (262144 * k + 105983) 29 = 177147 * k + 71620 ∧
      177147 * k + 71620 < 262144 * k + 105983 := by
  intro k
  have h1 : C (262144 * k + 105983) = 786432 * k + 317950 := by
    unfold C
    simp [show (262144 * k + 105983) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 317950) = 393216 * k + 158975 := by
    unfold C
    simp [show (786432 * k + 317950) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 158975) = 1179648 * k + 476926 := by
    unfold C
    simp [show (393216 * k + 158975) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 476926) = 589824 * k + 238463 := by
    unfold C
    simp [show (1179648 * k + 476926) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 238463) = 1769472 * k + 715390 := by
    unfold C
    simp [show (589824 * k + 238463) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 715390) = 884736 * k + 357695 := by
    unfold C
    simp [show (1769472 * k + 715390) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 357695) = 2654208 * k + 1073086 := by
    unfold C
    simp [show (884736 * k + 357695) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 1073086) = 1327104 * k + 536543 := by
    unfold C
    simp [show (2654208 * k + 1073086) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 536543) = 3981312 * k + 1609630 := by
    unfold C
    simp [show (1327104 * k + 536543) % 2 ≠ 0 by omega]
    omega
  have h10 : C (3981312 * k + 1609630) = 1990656 * k + 804815 := by
    unfold C
    simp [show (3981312 * k + 1609630) % 2 = 0 by omega]
    omega
  have h11 : C (1990656 * k + 804815) = 5971968 * k + 2414446 := by
    unfold C
    simp [show (1990656 * k + 804815) % 2 ≠ 0 by omega]
    omega
  have h12 : C (5971968 * k + 2414446) = 2985984 * k + 1207223 := by
    unfold C
    simp [show (5971968 * k + 2414446) % 2 = 0 by omega]
    omega
  have h13 : C (2985984 * k + 1207223) = 8957952 * k + 3621670 := by
    unfold C
    simp [show (2985984 * k + 1207223) % 2 ≠ 0 by omega]
    omega
  have h14 : C (8957952 * k + 3621670) = 4478976 * k + 1810835 := by
    unfold C
    simp [show (8957952 * k + 3621670) % 2 = 0 by omega]
    omega
  have h15 : C (4478976 * k + 1810835) = 13436928 * k + 5432506 := by
    unfold C
    simp [show (4478976 * k + 1810835) % 2 ≠ 0 by omega]
    omega
  have h16 : C (13436928 * k + 5432506) = 6718464 * k + 2716253 := by
    unfold C
    simp [show (13436928 * k + 5432506) % 2 = 0 by omega]
    omega
  have h17 : C (6718464 * k + 2716253) = 20155392 * k + 8148760 := by
    unfold C
    simp [show (6718464 * k + 2716253) % 2 ≠ 0 by omega]
    omega
  have h18 : C (20155392 * k + 8148760) = 10077696 * k + 4074380 := by
    unfold C
    simp [show (20155392 * k + 8148760) % 2 = 0 by omega]
    omega
  have h19 : C (10077696 * k + 4074380) = 5038848 * k + 2037190 := by
    unfold C
    simp [show (10077696 * k + 4074380) % 2 = 0 by omega]
    omega
  have h20 : C (5038848 * k + 2037190) = 2519424 * k + 1018595 := by
    unfold C
    simp [show (5038848 * k + 2037190) % 2 = 0 by omega]
    omega
  have h21 : C (2519424 * k + 1018595) = 7558272 * k + 3055786 := by
    unfold C
    simp [show (2519424 * k + 1018595) % 2 ≠ 0 by omega]
    omega
  have h22 : C (7558272 * k + 3055786) = 3779136 * k + 1527893 := by
    unfold C
    simp [show (7558272 * k + 3055786) % 2 = 0 by omega]
    omega
  have h23 : C (3779136 * k + 1527893) = 11337408 * k + 4583680 := by
    unfold C
    simp [show (3779136 * k + 1527893) % 2 ≠ 0 by omega]
    omega
  have h24 : C (11337408 * k + 4583680) = 5668704 * k + 2291840 := by
    unfold C
    simp [show (11337408 * k + 4583680) % 2 = 0 by omega]
    omega
  have h25 : C (5668704 * k + 2291840) = 2834352 * k + 1145920 := by
    unfold C
    simp [show (5668704 * k + 2291840) % 2 = 0 by omega]
    omega
  have h26 : C (2834352 * k + 1145920) = 1417176 * k + 572960 := by
    unfold C
    simp [show (2834352 * k + 1145920) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 572960) = 708588 * k + 286480 := by
    unfold C
    simp [show (1417176 * k + 572960) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 286480) = 354294 * k + 143240 := by
    unfold C
    simp [show (708588 * k + 286480) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 143240) = 177147 * k + 71620 := by
    unfold C
    simp [show (354294 * k + 143240) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 105983) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 105983))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_106015 : ∀ k : Nat,
    iterate (262144 * k + 106015) 29 = 177147 * k + 71642 ∧
      177147 * k + 71642 < 262144 * k + 106015 := by
  intro k
  have h1 : C (262144 * k + 106015) = 786432 * k + 318046 := by
    unfold C
    simp [show (262144 * k + 106015) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 318046) = 393216 * k + 159023 := by
    unfold C
    simp [show (786432 * k + 318046) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 159023) = 1179648 * k + 477070 := by
    unfold C
    simp [show (393216 * k + 159023) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 477070) = 589824 * k + 238535 := by
    unfold C
    simp [show (1179648 * k + 477070) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 238535) = 1769472 * k + 715606 := by
    unfold C
    simp [show (589824 * k + 238535) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 715606) = 884736 * k + 357803 := by
    unfold C
    simp [show (1769472 * k + 715606) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 357803) = 2654208 * k + 1073410 := by
    unfold C
    simp [show (884736 * k + 357803) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 1073410) = 1327104 * k + 536705 := by
    unfold C
    simp [show (2654208 * k + 1073410) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 536705) = 3981312 * k + 1610116 := by
    unfold C
    simp [show (1327104 * k + 536705) % 2 ≠ 0 by omega]
    omega
  have h10 : C (3981312 * k + 1610116) = 1990656 * k + 805058 := by
    unfold C
    simp [show (3981312 * k + 1610116) % 2 = 0 by omega]
    omega
  have h11 : C (1990656 * k + 805058) = 995328 * k + 402529 := by
    unfold C
    simp [show (1990656 * k + 805058) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 402529) = 2985984 * k + 1207588 := by
    unfold C
    simp [show (995328 * k + 402529) % 2 ≠ 0 by omega]
    omega
  have h13 : C (2985984 * k + 1207588) = 1492992 * k + 603794 := by
    unfold C
    simp [show (2985984 * k + 1207588) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 603794) = 746496 * k + 301897 := by
    unfold C
    simp [show (1492992 * k + 603794) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 301897) = 2239488 * k + 905692 := by
    unfold C
    simp [show (746496 * k + 301897) % 2 ≠ 0 by omega]
    omega
  have h16 : C (2239488 * k + 905692) = 1119744 * k + 452846 := by
    unfold C
    simp [show (2239488 * k + 905692) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 452846) = 559872 * k + 226423 := by
    unfold C
    simp [show (1119744 * k + 452846) % 2 = 0 by omega]
    omega
  have h18 : C (559872 * k + 226423) = 1679616 * k + 679270 := by
    unfold C
    simp [show (559872 * k + 226423) % 2 ≠ 0 by omega]
    omega
  have h19 : C (1679616 * k + 679270) = 839808 * k + 339635 := by
    unfold C
    simp [show (1679616 * k + 679270) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 339635) = 2519424 * k + 1018906 := by
    unfold C
    simp [show (839808 * k + 339635) % 2 ≠ 0 by omega]
    omega
  have h21 : C (2519424 * k + 1018906) = 1259712 * k + 509453 := by
    unfold C
    simp [show (2519424 * k + 1018906) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 509453) = 3779136 * k + 1528360 := by
    unfold C
    simp [show (1259712 * k + 509453) % 2 ≠ 0 by omega]
    omega
  have h23 : C (3779136 * k + 1528360) = 1889568 * k + 764180 := by
    unfold C
    simp [show (3779136 * k + 1528360) % 2 = 0 by omega]
    omega
  have h24 : C (1889568 * k + 764180) = 944784 * k + 382090 := by
    unfold C
    simp [show (1889568 * k + 764180) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 382090) = 472392 * k + 191045 := by
    unfold C
    simp [show (944784 * k + 382090) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 191045) = 1417176 * k + 573136 := by
    unfold C
    simp [show (472392 * k + 191045) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 573136) = 708588 * k + 286568 := by
    unfold C
    simp [show (1417176 * k + 573136) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 286568) = 354294 * k + 143284 := by
    unfold C
    simp [show (708588 * k + 286568) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 143284) = 177147 * k + 71642 := by
    unfold C
    simp [show (354294 * k + 143284) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 106015) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 106015))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_106139 : ∀ k : Nat,
    iterate (262144 * k + 106139) 29 = 177147 * k + 71726 ∧
      177147 * k + 71726 < 262144 * k + 106139 := by
  intro k
  have h1 : C (262144 * k + 106139) = 786432 * k + 318418 := by
    unfold C
    simp [show (262144 * k + 106139) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 318418) = 393216 * k + 159209 := by
    unfold C
    simp [show (786432 * k + 318418) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 159209) = 1179648 * k + 477628 := by
    unfold C
    simp [show (393216 * k + 159209) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 477628) = 589824 * k + 238814 := by
    unfold C
    simp [show (1179648 * k + 477628) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 238814) = 294912 * k + 119407 := by
    unfold C
    simp [show (589824 * k + 238814) % 2 = 0 by omega]
    omega
  have h6 : C (294912 * k + 119407) = 884736 * k + 358222 := by
    unfold C
    simp [show (294912 * k + 119407) % 2 ≠ 0 by omega]
    omega
  have h7 : C (884736 * k + 358222) = 442368 * k + 179111 := by
    unfold C
    simp [show (884736 * k + 358222) % 2 = 0 by omega]
    omega
  have h8 : C (442368 * k + 179111) = 1327104 * k + 537334 := by
    unfold C
    simp [show (442368 * k + 179111) % 2 ≠ 0 by omega]
    omega
  have h9 : C (1327104 * k + 537334) = 663552 * k + 268667 := by
    unfold C
    simp [show (1327104 * k + 537334) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 268667) = 1990656 * k + 806002 := by
    unfold C
    simp [show (663552 * k + 268667) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 806002) = 995328 * k + 403001 := by
    unfold C
    simp [show (1990656 * k + 806002) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 403001) = 2985984 * k + 1209004 := by
    unfold C
    simp [show (995328 * k + 403001) % 2 ≠ 0 by omega]
    omega
  have h13 : C (2985984 * k + 1209004) = 1492992 * k + 604502 := by
    unfold C
    simp [show (2985984 * k + 1209004) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 604502) = 746496 * k + 302251 := by
    unfold C
    simp [show (1492992 * k + 604502) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 302251) = 2239488 * k + 906754 := by
    unfold C
    simp [show (746496 * k + 302251) % 2 ≠ 0 by omega]
    omega
  have h16 : C (2239488 * k + 906754) = 1119744 * k + 453377 := by
    unfold C
    simp [show (2239488 * k + 906754) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 453377) = 3359232 * k + 1360132 := by
    unfold C
    simp [show (1119744 * k + 453377) % 2 ≠ 0 by omega]
    omega
  have h18 : C (3359232 * k + 1360132) = 1679616 * k + 680066 := by
    unfold C
    simp [show (3359232 * k + 1360132) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 680066) = 839808 * k + 340033 := by
    unfold C
    simp [show (1679616 * k + 680066) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 340033) = 2519424 * k + 1020100 := by
    unfold C
    simp [show (839808 * k + 340033) % 2 ≠ 0 by omega]
    omega
  have h21 : C (2519424 * k + 1020100) = 1259712 * k + 510050 := by
    unfold C
    simp [show (2519424 * k + 1020100) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 510050) = 629856 * k + 255025 := by
    unfold C
    simp [show (1259712 * k + 510050) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 255025) = 1889568 * k + 765076 := by
    unfold C
    simp [show (629856 * k + 255025) % 2 ≠ 0 by omega]
    omega
  have h24 : C (1889568 * k + 765076) = 944784 * k + 382538 := by
    unfold C
    simp [show (1889568 * k + 765076) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 382538) = 472392 * k + 191269 := by
    unfold C
    simp [show (944784 * k + 382538) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 191269) = 1417176 * k + 573808 := by
    unfold C
    simp [show (472392 * k + 191269) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 573808) = 708588 * k + 286904 := by
    unfold C
    simp [show (1417176 * k + 573808) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 286904) = 354294 * k + 143452 := by
    unfold C
    simp [show (708588 * k + 286904) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 143452) = 177147 * k + 71726 := by
    unfold C
    simp [show (354294 * k + 143452) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 106139) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 106139))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_106175 : ∀ k : Nat,
    iterate (262144 * k + 106175) 29 = 177147 * k + 71750 ∧
      177147 * k + 71750 < 262144 * k + 106175 := by
  intro k
  have h1 : C (262144 * k + 106175) = 786432 * k + 318526 := by
    unfold C
    simp [show (262144 * k + 106175) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 318526) = 393216 * k + 159263 := by
    unfold C
    simp [show (786432 * k + 318526) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 159263) = 1179648 * k + 477790 := by
    unfold C
    simp [show (393216 * k + 159263) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 477790) = 589824 * k + 238895 := by
    unfold C
    simp [show (1179648 * k + 477790) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 238895) = 1769472 * k + 716686 := by
    unfold C
    simp [show (589824 * k + 238895) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 716686) = 884736 * k + 358343 := by
    unfold C
    simp [show (1769472 * k + 716686) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 358343) = 2654208 * k + 1075030 := by
    unfold C
    simp [show (884736 * k + 358343) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 1075030) = 1327104 * k + 537515 := by
    unfold C
    simp [show (2654208 * k + 1075030) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 537515) = 3981312 * k + 1612546 := by
    unfold C
    simp [show (1327104 * k + 537515) % 2 ≠ 0 by omega]
    omega
  have h10 : C (3981312 * k + 1612546) = 1990656 * k + 806273 := by
    unfold C
    simp [show (3981312 * k + 1612546) % 2 = 0 by omega]
    omega
  have h11 : C (1990656 * k + 806273) = 5971968 * k + 2418820 := by
    unfold C
    simp [show (1990656 * k + 806273) % 2 ≠ 0 by omega]
    omega
  have h12 : C (5971968 * k + 2418820) = 2985984 * k + 1209410 := by
    unfold C
    simp [show (5971968 * k + 2418820) % 2 = 0 by omega]
    omega
  have h13 : C (2985984 * k + 1209410) = 1492992 * k + 604705 := by
    unfold C
    simp [show (2985984 * k + 1209410) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 604705) = 4478976 * k + 1814116 := by
    unfold C
    simp [show (1492992 * k + 604705) % 2 ≠ 0 by omega]
    omega
  have h15 : C (4478976 * k + 1814116) = 2239488 * k + 907058 := by
    unfold C
    simp [show (4478976 * k + 1814116) % 2 = 0 by omega]
    omega
  have h16 : C (2239488 * k + 907058) = 1119744 * k + 453529 := by
    unfold C
    simp [show (2239488 * k + 907058) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 453529) = 3359232 * k + 1360588 := by
    unfold C
    simp [show (1119744 * k + 453529) % 2 ≠ 0 by omega]
    omega
  have h18 : C (3359232 * k + 1360588) = 1679616 * k + 680294 := by
    unfold C
    simp [show (3359232 * k + 1360588) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 680294) = 839808 * k + 340147 := by
    unfold C
    simp [show (1679616 * k + 680294) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 340147) = 2519424 * k + 1020442 := by
    unfold C
    simp [show (839808 * k + 340147) % 2 ≠ 0 by omega]
    omega
  have h21 : C (2519424 * k + 1020442) = 1259712 * k + 510221 := by
    unfold C
    simp [show (2519424 * k + 1020442) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 510221) = 3779136 * k + 1530664 := by
    unfold C
    simp [show (1259712 * k + 510221) % 2 ≠ 0 by omega]
    omega
  have h23 : C (3779136 * k + 1530664) = 1889568 * k + 765332 := by
    unfold C
    simp [show (3779136 * k + 1530664) % 2 = 0 by omega]
    omega
  have h24 : C (1889568 * k + 765332) = 944784 * k + 382666 := by
    unfold C
    simp [show (1889568 * k + 765332) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 382666) = 472392 * k + 191333 := by
    unfold C
    simp [show (944784 * k + 382666) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 191333) = 1417176 * k + 574000 := by
    unfold C
    simp [show (472392 * k + 191333) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 574000) = 708588 * k + 287000 := by
    unfold C
    simp [show (1417176 * k + 574000) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 287000) = 354294 * k + 143500 := by
    unfold C
    simp [show (708588 * k + 287000) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 143500) = 177147 * k + 71750 := by
    unfold C
    simp [show (354294 * k + 143500) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 106175) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 106175))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_107263 : ∀ k : Nat,
    iterate (262144 * k + 107263) 29 = 177147 * k + 72485 ∧
      177147 * k + 72485 < 262144 * k + 107263 := by
  intro k
  have h1 : C (262144 * k + 107263) = 786432 * k + 321790 := by
    unfold C
    simp [show (262144 * k + 107263) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 321790) = 393216 * k + 160895 := by
    unfold C
    simp [show (786432 * k + 321790) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 160895) = 1179648 * k + 482686 := by
    unfold C
    simp [show (393216 * k + 160895) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 482686) = 589824 * k + 241343 := by
    unfold C
    simp [show (1179648 * k + 482686) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 241343) = 1769472 * k + 724030 := by
    unfold C
    simp [show (589824 * k + 241343) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 724030) = 884736 * k + 362015 := by
    unfold C
    simp [show (1769472 * k + 724030) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 362015) = 2654208 * k + 1086046 := by
    unfold C
    simp [show (884736 * k + 362015) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 1086046) = 1327104 * k + 543023 := by
    unfold C
    simp [show (2654208 * k + 1086046) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 543023) = 3981312 * k + 1629070 := by
    unfold C
    simp [show (1327104 * k + 543023) % 2 ≠ 0 by omega]
    omega
  have h10 : C (3981312 * k + 1629070) = 1990656 * k + 814535 := by
    unfold C
    simp [show (3981312 * k + 1629070) % 2 = 0 by omega]
    omega
  have h11 : C (1990656 * k + 814535) = 5971968 * k + 2443606 := by
    unfold C
    simp [show (1990656 * k + 814535) % 2 ≠ 0 by omega]
    omega
  have h12 : C (5971968 * k + 2443606) = 2985984 * k + 1221803 := by
    unfold C
    simp [show (5971968 * k + 2443606) % 2 = 0 by omega]
    omega
  have h13 : C (2985984 * k + 1221803) = 8957952 * k + 3665410 := by
    unfold C
    simp [show (2985984 * k + 1221803) % 2 ≠ 0 by omega]
    omega
  have h14 : C (8957952 * k + 3665410) = 4478976 * k + 1832705 := by
    unfold C
    simp [show (8957952 * k + 3665410) % 2 = 0 by omega]
    omega
  have h15 : C (4478976 * k + 1832705) = 13436928 * k + 5498116 := by
    unfold C
    simp [show (4478976 * k + 1832705) % 2 ≠ 0 by omega]
    omega
  have h16 : C (13436928 * k + 5498116) = 6718464 * k + 2749058 := by
    unfold C
    simp [show (13436928 * k + 5498116) % 2 = 0 by omega]
    omega
  have h17 : C (6718464 * k + 2749058) = 3359232 * k + 1374529 := by
    unfold C
    simp [show (6718464 * k + 2749058) % 2 = 0 by omega]
    omega
  have h18 : C (3359232 * k + 1374529) = 10077696 * k + 4123588 := by
    unfold C
    simp [show (3359232 * k + 1374529) % 2 ≠ 0 by omega]
    omega
  have h19 : C (10077696 * k + 4123588) = 5038848 * k + 2061794 := by
    unfold C
    simp [show (10077696 * k + 4123588) % 2 = 0 by omega]
    omega
  have h20 : C (5038848 * k + 2061794) = 2519424 * k + 1030897 := by
    unfold C
    simp [show (5038848 * k + 2061794) % 2 = 0 by omega]
    omega
  have h21 : C (2519424 * k + 1030897) = 7558272 * k + 3092692 := by
    unfold C
    simp [show (2519424 * k + 1030897) % 2 ≠ 0 by omega]
    omega
  have h22 : C (7558272 * k + 3092692) = 3779136 * k + 1546346 := by
    unfold C
    simp [show (7558272 * k + 3092692) % 2 = 0 by omega]
    omega
  have h23 : C (3779136 * k + 1546346) = 1889568 * k + 773173 := by
    unfold C
    simp [show (3779136 * k + 1546346) % 2 = 0 by omega]
    omega
  have h24 : C (1889568 * k + 773173) = 5668704 * k + 2319520 := by
    unfold C
    simp [show (1889568 * k + 773173) % 2 ≠ 0 by omega]
    omega
  have h25 : C (5668704 * k + 2319520) = 2834352 * k + 1159760 := by
    unfold C
    simp [show (5668704 * k + 2319520) % 2 = 0 by omega]
    omega
  have h26 : C (2834352 * k + 1159760) = 1417176 * k + 579880 := by
    unfold C
    simp [show (2834352 * k + 1159760) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 579880) = 708588 * k + 289940 := by
    unfold C
    simp [show (1417176 * k + 579880) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 289940) = 354294 * k + 144970 := by
    unfold C
    simp [show (708588 * k + 289940) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 144970) = 177147 * k + 72485 := by
    unfold C
    simp [show (354294 * k + 144970) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 107263) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 107263))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_107519 : ∀ k : Nat,
    iterate (262144 * k + 107519) 29 = 177147 * k + 72658 ∧
      177147 * k + 72658 < 262144 * k + 107519 := by
  intro k
  have h1 : C (262144 * k + 107519) = 786432 * k + 322558 := by
    unfold C
    simp [show (262144 * k + 107519) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 322558) = 393216 * k + 161279 := by
    unfold C
    simp [show (786432 * k + 322558) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 161279) = 1179648 * k + 483838 := by
    unfold C
    simp [show (393216 * k + 161279) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 483838) = 589824 * k + 241919 := by
    unfold C
    simp [show (1179648 * k + 483838) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 241919) = 1769472 * k + 725758 := by
    unfold C
    simp [show (589824 * k + 241919) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 725758) = 884736 * k + 362879 := by
    unfold C
    simp [show (1769472 * k + 725758) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 362879) = 2654208 * k + 1088638 := by
    unfold C
    simp [show (884736 * k + 362879) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 1088638) = 1327104 * k + 544319 := by
    unfold C
    simp [show (2654208 * k + 1088638) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 544319) = 3981312 * k + 1632958 := by
    unfold C
    simp [show (1327104 * k + 544319) % 2 ≠ 0 by omega]
    omega
  have h10 : C (3981312 * k + 1632958) = 1990656 * k + 816479 := by
    unfold C
    simp [show (3981312 * k + 1632958) % 2 = 0 by omega]
    omega
  have h11 : C (1990656 * k + 816479) = 5971968 * k + 2449438 := by
    unfold C
    simp [show (1990656 * k + 816479) % 2 ≠ 0 by omega]
    omega
  have h12 : C (5971968 * k + 2449438) = 2985984 * k + 1224719 := by
    unfold C
    simp [show (5971968 * k + 2449438) % 2 = 0 by omega]
    omega
  have h13 : C (2985984 * k + 1224719) = 8957952 * k + 3674158 := by
    unfold C
    simp [show (2985984 * k + 1224719) % 2 ≠ 0 by omega]
    omega
  have h14 : C (8957952 * k + 3674158) = 4478976 * k + 1837079 := by
    unfold C
    simp [show (8957952 * k + 3674158) % 2 = 0 by omega]
    omega
  have h15 : C (4478976 * k + 1837079) = 13436928 * k + 5511238 := by
    unfold C
    simp [show (4478976 * k + 1837079) % 2 ≠ 0 by omega]
    omega
  have h16 : C (13436928 * k + 5511238) = 6718464 * k + 2755619 := by
    unfold C
    simp [show (13436928 * k + 5511238) % 2 = 0 by omega]
    omega
  have h17 : C (6718464 * k + 2755619) = 20155392 * k + 8266858 := by
    unfold C
    simp [show (6718464 * k + 2755619) % 2 ≠ 0 by omega]
    omega
  have h18 : C (20155392 * k + 8266858) = 10077696 * k + 4133429 := by
    unfold C
    simp [show (20155392 * k + 8266858) % 2 = 0 by omega]
    omega
  have h19 : C (10077696 * k + 4133429) = 30233088 * k + 12400288 := by
    unfold C
    simp [show (10077696 * k + 4133429) % 2 ≠ 0 by omega]
    omega
  have h20 : C (30233088 * k + 12400288) = 15116544 * k + 6200144 := by
    unfold C
    simp [show (30233088 * k + 12400288) % 2 = 0 by omega]
    omega
  have h21 : C (15116544 * k + 6200144) = 7558272 * k + 3100072 := by
    unfold C
    simp [show (15116544 * k + 6200144) % 2 = 0 by omega]
    omega
  have h22 : C (7558272 * k + 3100072) = 3779136 * k + 1550036 := by
    unfold C
    simp [show (7558272 * k + 3100072) % 2 = 0 by omega]
    omega
  have h23 : C (3779136 * k + 1550036) = 1889568 * k + 775018 := by
    unfold C
    simp [show (3779136 * k + 1550036) % 2 = 0 by omega]
    omega
  have h24 : C (1889568 * k + 775018) = 944784 * k + 387509 := by
    unfold C
    simp [show (1889568 * k + 775018) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 387509) = 2834352 * k + 1162528 := by
    unfold C
    simp [show (944784 * k + 387509) % 2 ≠ 0 by omega]
    omega
  have h26 : C (2834352 * k + 1162528) = 1417176 * k + 581264 := by
    unfold C
    simp [show (2834352 * k + 1162528) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 581264) = 708588 * k + 290632 := by
    unfold C
    simp [show (1417176 * k + 581264) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 290632) = 354294 * k + 145316 := by
    unfold C
    simp [show (708588 * k + 290632) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 145316) = 177147 * k + 72658 := by
    unfold C
    simp [show (354294 * k + 145316) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 107519) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 107519))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_107771 : ∀ k : Nat,
    iterate (262144 * k + 107771) 29 = 177147 * k + 72829 ∧
      177147 * k + 72829 < 262144 * k + 107771 := by
  intro k
  have h1 : C (262144 * k + 107771) = 786432 * k + 323314 := by
    unfold C
    simp [show (262144 * k + 107771) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 323314) = 393216 * k + 161657 := by
    unfold C
    simp [show (786432 * k + 323314) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 161657) = 1179648 * k + 484972 := by
    unfold C
    simp [show (393216 * k + 161657) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 484972) = 589824 * k + 242486 := by
    unfold C
    simp [show (1179648 * k + 484972) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 242486) = 294912 * k + 121243 := by
    unfold C
    simp [show (589824 * k + 242486) % 2 = 0 by omega]
    omega
  have h6 : C (294912 * k + 121243) = 884736 * k + 363730 := by
    unfold C
    simp [show (294912 * k + 121243) % 2 ≠ 0 by omega]
    omega
  have h7 : C (884736 * k + 363730) = 442368 * k + 181865 := by
    unfold C
    simp [show (884736 * k + 363730) % 2 = 0 by omega]
    omega
  have h8 : C (442368 * k + 181865) = 1327104 * k + 545596 := by
    unfold C
    simp [show (442368 * k + 181865) % 2 ≠ 0 by omega]
    omega
  have h9 : C (1327104 * k + 545596) = 663552 * k + 272798 := by
    unfold C
    simp [show (1327104 * k + 545596) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 272798) = 331776 * k + 136399 := by
    unfold C
    simp [show (663552 * k + 272798) % 2 = 0 by omega]
    omega
  have h11 : C (331776 * k + 136399) = 995328 * k + 409198 := by
    unfold C
    simp [show (331776 * k + 136399) % 2 ≠ 0 by omega]
    omega
  have h12 : C (995328 * k + 409198) = 497664 * k + 204599 := by
    unfold C
    simp [show (995328 * k + 409198) % 2 = 0 by omega]
    omega
  have h13 : C (497664 * k + 204599) = 1492992 * k + 613798 := by
    unfold C
    simp [show (497664 * k + 204599) % 2 ≠ 0 by omega]
    omega
  have h14 : C (1492992 * k + 613798) = 746496 * k + 306899 := by
    unfold C
    simp [show (1492992 * k + 613798) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 306899) = 2239488 * k + 920698 := by
    unfold C
    simp [show (746496 * k + 306899) % 2 ≠ 0 by omega]
    omega
  have h16 : C (2239488 * k + 920698) = 1119744 * k + 460349 := by
    unfold C
    simp [show (2239488 * k + 920698) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 460349) = 3359232 * k + 1381048 := by
    unfold C
    simp [show (1119744 * k + 460349) % 2 ≠ 0 by omega]
    omega
  have h18 : C (3359232 * k + 1381048) = 1679616 * k + 690524 := by
    unfold C
    simp [show (3359232 * k + 1381048) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 690524) = 839808 * k + 345262 := by
    unfold C
    simp [show (1679616 * k + 690524) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 345262) = 419904 * k + 172631 := by
    unfold C
    simp [show (839808 * k + 345262) % 2 = 0 by omega]
    omega
  have h21 : C (419904 * k + 172631) = 1259712 * k + 517894 := by
    unfold C
    simp [show (419904 * k + 172631) % 2 ≠ 0 by omega]
    omega
  have h22 : C (1259712 * k + 517894) = 629856 * k + 258947 := by
    unfold C
    simp [show (1259712 * k + 517894) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 258947) = 1889568 * k + 776842 := by
    unfold C
    simp [show (629856 * k + 258947) % 2 ≠ 0 by omega]
    omega
  have h24 : C (1889568 * k + 776842) = 944784 * k + 388421 := by
    unfold C
    simp [show (1889568 * k + 776842) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 388421) = 2834352 * k + 1165264 := by
    unfold C
    simp [show (944784 * k + 388421) % 2 ≠ 0 by omega]
    omega
  have h26 : C (2834352 * k + 1165264) = 1417176 * k + 582632 := by
    unfold C
    simp [show (2834352 * k + 1165264) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 582632) = 708588 * k + 291316 := by
    unfold C
    simp [show (1417176 * k + 582632) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 291316) = 354294 * k + 145658 := by
    unfold C
    simp [show (708588 * k + 291316) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 145658) = 177147 * k + 72829 := by
    unfold C
    simp [show (354294 * k + 145658) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 107771) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 107771))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_108031 : ∀ k : Nat,
    iterate (262144 * k + 108031) 29 = 177147 * k + 73004 ∧
      177147 * k + 73004 < 262144 * k + 108031 := by
  intro k
  have h1 : C (262144 * k + 108031) = 786432 * k + 324094 := by
    unfold C
    simp [show (262144 * k + 108031) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 324094) = 393216 * k + 162047 := by
    unfold C
    simp [show (786432 * k + 324094) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 162047) = 1179648 * k + 486142 := by
    unfold C
    simp [show (393216 * k + 162047) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 486142) = 589824 * k + 243071 := by
    unfold C
    simp [show (1179648 * k + 486142) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 243071) = 1769472 * k + 729214 := by
    unfold C
    simp [show (589824 * k + 243071) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 729214) = 884736 * k + 364607 := by
    unfold C
    simp [show (1769472 * k + 729214) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 364607) = 2654208 * k + 1093822 := by
    unfold C
    simp [show (884736 * k + 364607) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 1093822) = 1327104 * k + 546911 := by
    unfold C
    simp [show (2654208 * k + 1093822) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 546911) = 3981312 * k + 1640734 := by
    unfold C
    simp [show (1327104 * k + 546911) % 2 ≠ 0 by omega]
    omega
  have h10 : C (3981312 * k + 1640734) = 1990656 * k + 820367 := by
    unfold C
    simp [show (3981312 * k + 1640734) % 2 = 0 by omega]
    omega
  have h11 : C (1990656 * k + 820367) = 5971968 * k + 2461102 := by
    unfold C
    simp [show (1990656 * k + 820367) % 2 ≠ 0 by omega]
    omega
  have h12 : C (5971968 * k + 2461102) = 2985984 * k + 1230551 := by
    unfold C
    simp [show (5971968 * k + 2461102) % 2 = 0 by omega]
    omega
  have h13 : C (2985984 * k + 1230551) = 8957952 * k + 3691654 := by
    unfold C
    simp [show (2985984 * k + 1230551) % 2 ≠ 0 by omega]
    omega
  have h14 : C (8957952 * k + 3691654) = 4478976 * k + 1845827 := by
    unfold C
    simp [show (8957952 * k + 3691654) % 2 = 0 by omega]
    omega
  have h15 : C (4478976 * k + 1845827) = 13436928 * k + 5537482 := by
    unfold C
    simp [show (4478976 * k + 1845827) % 2 ≠ 0 by omega]
    omega
  have h16 : C (13436928 * k + 5537482) = 6718464 * k + 2768741 := by
    unfold C
    simp [show (13436928 * k + 5537482) % 2 = 0 by omega]
    omega
  have h17 : C (6718464 * k + 2768741) = 20155392 * k + 8306224 := by
    unfold C
    simp [show (6718464 * k + 2768741) % 2 ≠ 0 by omega]
    omega
  have h18 : C (20155392 * k + 8306224) = 10077696 * k + 4153112 := by
    unfold C
    simp [show (20155392 * k + 8306224) % 2 = 0 by omega]
    omega
  have h19 : C (10077696 * k + 4153112) = 5038848 * k + 2076556 := by
    unfold C
    simp [show (10077696 * k + 4153112) % 2 = 0 by omega]
    omega
  have h20 : C (5038848 * k + 2076556) = 2519424 * k + 1038278 := by
    unfold C
    simp [show (5038848 * k + 2076556) % 2 = 0 by omega]
    omega
  have h21 : C (2519424 * k + 1038278) = 1259712 * k + 519139 := by
    unfold C
    simp [show (2519424 * k + 1038278) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 519139) = 3779136 * k + 1557418 := by
    unfold C
    simp [show (1259712 * k + 519139) % 2 ≠ 0 by omega]
    omega
  have h23 : C (3779136 * k + 1557418) = 1889568 * k + 778709 := by
    unfold C
    simp [show (3779136 * k + 1557418) % 2 = 0 by omega]
    omega
  have h24 : C (1889568 * k + 778709) = 5668704 * k + 2336128 := by
    unfold C
    simp [show (1889568 * k + 778709) % 2 ≠ 0 by omega]
    omega
  have h25 : C (5668704 * k + 2336128) = 2834352 * k + 1168064 := by
    unfold C
    simp [show (5668704 * k + 2336128) % 2 = 0 by omega]
    omega
  have h26 : C (2834352 * k + 1168064) = 1417176 * k + 584032 := by
    unfold C
    simp [show (2834352 * k + 1168064) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 584032) = 708588 * k + 292016 := by
    unfold C
    simp [show (1417176 * k + 584032) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 292016) = 354294 * k + 146008 := by
    unfold C
    simp [show (708588 * k + 292016) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 146008) = 177147 * k + 73004 := by
    unfold C
    simp [show (354294 * k + 146008) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 108031) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 108031))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_108123 : ∀ k : Nat,
    iterate (262144 * k + 108123) 29 = 177147 * k + 73067 ∧
      177147 * k + 73067 < 262144 * k + 108123 := by
  intro k
  have h1 : C (262144 * k + 108123) = 786432 * k + 324370 := by
    unfold C
    simp [show (262144 * k + 108123) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 324370) = 393216 * k + 162185 := by
    unfold C
    simp [show (786432 * k + 324370) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 162185) = 1179648 * k + 486556 := by
    unfold C
    simp [show (393216 * k + 162185) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 486556) = 589824 * k + 243278 := by
    unfold C
    simp [show (1179648 * k + 486556) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 243278) = 294912 * k + 121639 := by
    unfold C
    simp [show (589824 * k + 243278) % 2 = 0 by omega]
    omega
  have h6 : C (294912 * k + 121639) = 884736 * k + 364918 := by
    unfold C
    simp [show (294912 * k + 121639) % 2 ≠ 0 by omega]
    omega
  have h7 : C (884736 * k + 364918) = 442368 * k + 182459 := by
    unfold C
    simp [show (884736 * k + 364918) % 2 = 0 by omega]
    omega
  have h8 : C (442368 * k + 182459) = 1327104 * k + 547378 := by
    unfold C
    simp [show (442368 * k + 182459) % 2 ≠ 0 by omega]
    omega
  have h9 : C (1327104 * k + 547378) = 663552 * k + 273689 := by
    unfold C
    simp [show (1327104 * k + 547378) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 273689) = 1990656 * k + 821068 := by
    unfold C
    simp [show (663552 * k + 273689) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 821068) = 995328 * k + 410534 := by
    unfold C
    simp [show (1990656 * k + 821068) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 410534) = 497664 * k + 205267 := by
    unfold C
    simp [show (995328 * k + 410534) % 2 = 0 by omega]
    omega
  have h13 : C (497664 * k + 205267) = 1492992 * k + 615802 := by
    unfold C
    simp [show (497664 * k + 205267) % 2 ≠ 0 by omega]
    omega
  have h14 : C (1492992 * k + 615802) = 746496 * k + 307901 := by
    unfold C
    simp [show (1492992 * k + 615802) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 307901) = 2239488 * k + 923704 := by
    unfold C
    simp [show (746496 * k + 307901) % 2 ≠ 0 by omega]
    omega
  have h16 : C (2239488 * k + 923704) = 1119744 * k + 461852 := by
    unfold C
    simp [show (2239488 * k + 923704) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 461852) = 559872 * k + 230926 := by
    unfold C
    simp [show (1119744 * k + 461852) % 2 = 0 by omega]
    omega
  have h18 : C (559872 * k + 230926) = 279936 * k + 115463 := by
    unfold C
    simp [show (559872 * k + 230926) % 2 = 0 by omega]
    omega
  have h19 : C (279936 * k + 115463) = 839808 * k + 346390 := by
    unfold C
    simp [show (279936 * k + 115463) % 2 ≠ 0 by omega]
    omega
  have h20 : C (839808 * k + 346390) = 419904 * k + 173195 := by
    unfold C
    simp [show (839808 * k + 346390) % 2 = 0 by omega]
    omega
  have h21 : C (419904 * k + 173195) = 1259712 * k + 519586 := by
    unfold C
    simp [show (419904 * k + 173195) % 2 ≠ 0 by omega]
    omega
  have h22 : C (1259712 * k + 519586) = 629856 * k + 259793 := by
    unfold C
    simp [show (1259712 * k + 519586) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 259793) = 1889568 * k + 779380 := by
    unfold C
    simp [show (629856 * k + 259793) % 2 ≠ 0 by omega]
    omega
  have h24 : C (1889568 * k + 779380) = 944784 * k + 389690 := by
    unfold C
    simp [show (1889568 * k + 779380) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 389690) = 472392 * k + 194845 := by
    unfold C
    simp [show (944784 * k + 389690) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 194845) = 1417176 * k + 584536 := by
    unfold C
    simp [show (472392 * k + 194845) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 584536) = 708588 * k + 292268 := by
    unfold C
    simp [show (1417176 * k + 584536) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 292268) = 354294 * k + 146134 := by
    unfold C
    simp [show (708588 * k + 292268) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 146134) = 177147 * k + 73067 := by
    unfold C
    simp [show (354294 * k + 146134) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 108123) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 108123))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_108239 : ∀ k : Nat,
    iterate (262144 * k + 108239) 29 = 177147 * k + 73145 ∧
      177147 * k + 73145 < 262144 * k + 108239 := by
  intro k
  have h1 : C (262144 * k + 108239) = 786432 * k + 324718 := by
    unfold C
    simp [show (262144 * k + 108239) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 324718) = 393216 * k + 162359 := by
    unfold C
    simp [show (786432 * k + 324718) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 162359) = 1179648 * k + 487078 := by
    unfold C
    simp [show (393216 * k + 162359) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 487078) = 589824 * k + 243539 := by
    unfold C
    simp [show (1179648 * k + 487078) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 243539) = 1769472 * k + 730618 := by
    unfold C
    simp [show (589824 * k + 243539) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 730618) = 884736 * k + 365309 := by
    unfold C
    simp [show (1769472 * k + 730618) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 365309) = 2654208 * k + 1095928 := by
    unfold C
    simp [show (884736 * k + 365309) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 1095928) = 1327104 * k + 547964 := by
    unfold C
    simp [show (2654208 * k + 1095928) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 547964) = 663552 * k + 273982 := by
    unfold C
    simp [show (1327104 * k + 547964) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 273982) = 331776 * k + 136991 := by
    unfold C
    simp [show (663552 * k + 273982) % 2 = 0 by omega]
    omega
  have h11 : C (331776 * k + 136991) = 995328 * k + 410974 := by
    unfold C
    simp [show (331776 * k + 136991) % 2 ≠ 0 by omega]
    omega
  have h12 : C (995328 * k + 410974) = 497664 * k + 205487 := by
    unfold C
    simp [show (995328 * k + 410974) % 2 = 0 by omega]
    omega
  have h13 : C (497664 * k + 205487) = 1492992 * k + 616462 := by
    unfold C
    simp [show (497664 * k + 205487) % 2 ≠ 0 by omega]
    omega
  have h14 : C (1492992 * k + 616462) = 746496 * k + 308231 := by
    unfold C
    simp [show (1492992 * k + 616462) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 308231) = 2239488 * k + 924694 := by
    unfold C
    simp [show (746496 * k + 308231) % 2 ≠ 0 by omega]
    omega
  have h16 : C (2239488 * k + 924694) = 1119744 * k + 462347 := by
    unfold C
    simp [show (2239488 * k + 924694) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 462347) = 3359232 * k + 1387042 := by
    unfold C
    simp [show (1119744 * k + 462347) % 2 ≠ 0 by omega]
    omega
  have h18 : C (3359232 * k + 1387042) = 1679616 * k + 693521 := by
    unfold C
    simp [show (3359232 * k + 1387042) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 693521) = 5038848 * k + 2080564 := by
    unfold C
    simp [show (1679616 * k + 693521) % 2 ≠ 0 by omega]
    omega
  have h20 : C (5038848 * k + 2080564) = 2519424 * k + 1040282 := by
    unfold C
    simp [show (5038848 * k + 2080564) % 2 = 0 by omega]
    omega
  have h21 : C (2519424 * k + 1040282) = 1259712 * k + 520141 := by
    unfold C
    simp [show (2519424 * k + 1040282) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 520141) = 3779136 * k + 1560424 := by
    unfold C
    simp [show (1259712 * k + 520141) % 2 ≠ 0 by omega]
    omega
  have h23 : C (3779136 * k + 1560424) = 1889568 * k + 780212 := by
    unfold C
    simp [show (3779136 * k + 1560424) % 2 = 0 by omega]
    omega
  have h24 : C (1889568 * k + 780212) = 944784 * k + 390106 := by
    unfold C
    simp [show (1889568 * k + 780212) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 390106) = 472392 * k + 195053 := by
    unfold C
    simp [show (944784 * k + 390106) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 195053) = 1417176 * k + 585160 := by
    unfold C
    simp [show (472392 * k + 195053) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 585160) = 708588 * k + 292580 := by
    unfold C
    simp [show (1417176 * k + 585160) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 292580) = 354294 * k + 146290 := by
    unfold C
    simp [show (708588 * k + 292580) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 146290) = 177147 * k + 73145 := by
    unfold C
    simp [show (354294 * k + 146290) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 108239) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 108239))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_108287 : ∀ k : Nat,
    iterate (262144 * k + 108287) 29 = 177147 * k + 73177 ∧
      177147 * k + 73177 < 262144 * k + 108287 := by
  intro k
  have h1 : C (262144 * k + 108287) = 786432 * k + 324862 := by
    unfold C
    simp [show (262144 * k + 108287) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 324862) = 393216 * k + 162431 := by
    unfold C
    simp [show (786432 * k + 324862) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 162431) = 1179648 * k + 487294 := by
    unfold C
    simp [show (393216 * k + 162431) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 487294) = 589824 * k + 243647 := by
    unfold C
    simp [show (1179648 * k + 487294) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 243647) = 1769472 * k + 730942 := by
    unfold C
    simp [show (589824 * k + 243647) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 730942) = 884736 * k + 365471 := by
    unfold C
    simp [show (1769472 * k + 730942) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 365471) = 2654208 * k + 1096414 := by
    unfold C
    simp [show (884736 * k + 365471) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 1096414) = 1327104 * k + 548207 := by
    unfold C
    simp [show (2654208 * k + 1096414) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 548207) = 3981312 * k + 1644622 := by
    unfold C
    simp [show (1327104 * k + 548207) % 2 ≠ 0 by omega]
    omega
  have h10 : C (3981312 * k + 1644622) = 1990656 * k + 822311 := by
    unfold C
    simp [show (3981312 * k + 1644622) % 2 = 0 by omega]
    omega
  have h11 : C (1990656 * k + 822311) = 5971968 * k + 2466934 := by
    unfold C
    simp [show (1990656 * k + 822311) % 2 ≠ 0 by omega]
    omega
  have h12 : C (5971968 * k + 2466934) = 2985984 * k + 1233467 := by
    unfold C
    simp [show (5971968 * k + 2466934) % 2 = 0 by omega]
    omega
  have h13 : C (2985984 * k + 1233467) = 8957952 * k + 3700402 := by
    unfold C
    simp [show (2985984 * k + 1233467) % 2 ≠ 0 by omega]
    omega
  have h14 : C (8957952 * k + 3700402) = 4478976 * k + 1850201 := by
    unfold C
    simp [show (8957952 * k + 3700402) % 2 = 0 by omega]
    omega
  have h15 : C (4478976 * k + 1850201) = 13436928 * k + 5550604 := by
    unfold C
    simp [show (4478976 * k + 1850201) % 2 ≠ 0 by omega]
    omega
  have h16 : C (13436928 * k + 5550604) = 6718464 * k + 2775302 := by
    unfold C
    simp [show (13436928 * k + 5550604) % 2 = 0 by omega]
    omega
  have h17 : C (6718464 * k + 2775302) = 3359232 * k + 1387651 := by
    unfold C
    simp [show (6718464 * k + 2775302) % 2 = 0 by omega]
    omega
  have h18 : C (3359232 * k + 1387651) = 10077696 * k + 4162954 := by
    unfold C
    simp [show (3359232 * k + 1387651) % 2 ≠ 0 by omega]
    omega
  have h19 : C (10077696 * k + 4162954) = 5038848 * k + 2081477 := by
    unfold C
    simp [show (10077696 * k + 4162954) % 2 = 0 by omega]
    omega
  have h20 : C (5038848 * k + 2081477) = 15116544 * k + 6244432 := by
    unfold C
    simp [show (5038848 * k + 2081477) % 2 ≠ 0 by omega]
    omega
  have h21 : C (15116544 * k + 6244432) = 7558272 * k + 3122216 := by
    unfold C
    simp [show (15116544 * k + 6244432) % 2 = 0 by omega]
    omega
  have h22 : C (7558272 * k + 3122216) = 3779136 * k + 1561108 := by
    unfold C
    simp [show (7558272 * k + 3122216) % 2 = 0 by omega]
    omega
  have h23 : C (3779136 * k + 1561108) = 1889568 * k + 780554 := by
    unfold C
    simp [show (3779136 * k + 1561108) % 2 = 0 by omega]
    omega
  have h24 : C (1889568 * k + 780554) = 944784 * k + 390277 := by
    unfold C
    simp [show (1889568 * k + 780554) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 390277) = 2834352 * k + 1170832 := by
    unfold C
    simp [show (944784 * k + 390277) % 2 ≠ 0 by omega]
    omega
  have h26 : C (2834352 * k + 1170832) = 1417176 * k + 585416 := by
    unfold C
    simp [show (2834352 * k + 1170832) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 585416) = 708588 * k + 292708 := by
    unfold C
    simp [show (1417176 * k + 585416) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 292708) = 354294 * k + 146354 := by
    unfold C
    simp [show (708588 * k + 292708) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 146354) = 177147 * k + 73177 := by
    unfold C
    simp [show (354294 * k + 146354) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 108287) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 108287))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_108539 : ∀ k : Nat,
    iterate (262144 * k + 108539) 29 = 177147 * k + 73348 ∧
      177147 * k + 73348 < 262144 * k + 108539 := by
  intro k
  have h1 : C (262144 * k + 108539) = 786432 * k + 325618 := by
    unfold C
    simp [show (262144 * k + 108539) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 325618) = 393216 * k + 162809 := by
    unfold C
    simp [show (786432 * k + 325618) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 162809) = 1179648 * k + 488428 := by
    unfold C
    simp [show (393216 * k + 162809) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 488428) = 589824 * k + 244214 := by
    unfold C
    simp [show (1179648 * k + 488428) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 244214) = 294912 * k + 122107 := by
    unfold C
    simp [show (589824 * k + 244214) % 2 = 0 by omega]
    omega
  have h6 : C (294912 * k + 122107) = 884736 * k + 366322 := by
    unfold C
    simp [show (294912 * k + 122107) % 2 ≠ 0 by omega]
    omega
  have h7 : C (884736 * k + 366322) = 442368 * k + 183161 := by
    unfold C
    simp [show (884736 * k + 366322) % 2 = 0 by omega]
    omega
  have h8 : C (442368 * k + 183161) = 1327104 * k + 549484 := by
    unfold C
    simp [show (442368 * k + 183161) % 2 ≠ 0 by omega]
    omega
  have h9 : C (1327104 * k + 549484) = 663552 * k + 274742 := by
    unfold C
    simp [show (1327104 * k + 549484) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 274742) = 331776 * k + 137371 := by
    unfold C
    simp [show (663552 * k + 274742) % 2 = 0 by omega]
    omega
  have h11 : C (331776 * k + 137371) = 995328 * k + 412114 := by
    unfold C
    simp [show (331776 * k + 137371) % 2 ≠ 0 by omega]
    omega
  have h12 : C (995328 * k + 412114) = 497664 * k + 206057 := by
    unfold C
    simp [show (995328 * k + 412114) % 2 = 0 by omega]
    omega
  have h13 : C (497664 * k + 206057) = 1492992 * k + 618172 := by
    unfold C
    simp [show (497664 * k + 206057) % 2 ≠ 0 by omega]
    omega
  have h14 : C (1492992 * k + 618172) = 746496 * k + 309086 := by
    unfold C
    simp [show (1492992 * k + 618172) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 309086) = 373248 * k + 154543 := by
    unfold C
    simp [show (746496 * k + 309086) % 2 = 0 by omega]
    omega
  have h16 : C (373248 * k + 154543) = 1119744 * k + 463630 := by
    unfold C
    simp [show (373248 * k + 154543) % 2 ≠ 0 by omega]
    omega
  have h17 : C (1119744 * k + 463630) = 559872 * k + 231815 := by
    unfold C
    simp [show (1119744 * k + 463630) % 2 = 0 by omega]
    omega
  have h18 : C (559872 * k + 231815) = 1679616 * k + 695446 := by
    unfold C
    simp [show (559872 * k + 231815) % 2 ≠ 0 by omega]
    omega
  have h19 : C (1679616 * k + 695446) = 839808 * k + 347723 := by
    unfold C
    simp [show (1679616 * k + 695446) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 347723) = 2519424 * k + 1043170 := by
    unfold C
    simp [show (839808 * k + 347723) % 2 ≠ 0 by omega]
    omega
  have h21 : C (2519424 * k + 1043170) = 1259712 * k + 521585 := by
    unfold C
    simp [show (2519424 * k + 1043170) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 521585) = 3779136 * k + 1564756 := by
    unfold C
    simp [show (1259712 * k + 521585) % 2 ≠ 0 by omega]
    omega
  have h23 : C (3779136 * k + 1564756) = 1889568 * k + 782378 := by
    unfold C
    simp [show (3779136 * k + 1564756) % 2 = 0 by omega]
    omega
  have h24 : C (1889568 * k + 782378) = 944784 * k + 391189 := by
    unfold C
    simp [show (1889568 * k + 782378) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 391189) = 2834352 * k + 1173568 := by
    unfold C
    simp [show (944784 * k + 391189) % 2 ≠ 0 by omega]
    omega
  have h26 : C (2834352 * k + 1173568) = 1417176 * k + 586784 := by
    unfold C
    simp [show (2834352 * k + 1173568) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 586784) = 708588 * k + 293392 := by
    unfold C
    simp [show (1417176 * k + 586784) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 293392) = 354294 * k + 146696 := by
    unfold C
    simp [show (708588 * k + 293392) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 146696) = 177147 * k + 73348 := by
    unfold C
    simp [show (354294 * k + 146696) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 108539) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 108539))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_109211 : ∀ k : Nat,
    iterate (262144 * k + 109211) 29 = 177147 * k + 73802 ∧
      177147 * k + 73802 < 262144 * k + 109211 := by
  intro k
  have h1 : C (262144 * k + 109211) = 786432 * k + 327634 := by
    unfold C
    simp [show (262144 * k + 109211) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 327634) = 393216 * k + 163817 := by
    unfold C
    simp [show (786432 * k + 327634) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 163817) = 1179648 * k + 491452 := by
    unfold C
    simp [show (393216 * k + 163817) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 491452) = 589824 * k + 245726 := by
    unfold C
    simp [show (1179648 * k + 491452) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 245726) = 294912 * k + 122863 := by
    unfold C
    simp [show (589824 * k + 245726) % 2 = 0 by omega]
    omega
  have h6 : C (294912 * k + 122863) = 884736 * k + 368590 := by
    unfold C
    simp [show (294912 * k + 122863) % 2 ≠ 0 by omega]
    omega
  have h7 : C (884736 * k + 368590) = 442368 * k + 184295 := by
    unfold C
    simp [show (884736 * k + 368590) % 2 = 0 by omega]
    omega
  have h8 : C (442368 * k + 184295) = 1327104 * k + 552886 := by
    unfold C
    simp [show (442368 * k + 184295) % 2 ≠ 0 by omega]
    omega
  have h9 : C (1327104 * k + 552886) = 663552 * k + 276443 := by
    unfold C
    simp [show (1327104 * k + 552886) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 276443) = 1990656 * k + 829330 := by
    unfold C
    simp [show (663552 * k + 276443) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 829330) = 995328 * k + 414665 := by
    unfold C
    simp [show (1990656 * k + 829330) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 414665) = 2985984 * k + 1243996 := by
    unfold C
    simp [show (995328 * k + 414665) % 2 ≠ 0 by omega]
    omega
  have h13 : C (2985984 * k + 1243996) = 1492992 * k + 621998 := by
    unfold C
    simp [show (2985984 * k + 1243996) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 621998) = 746496 * k + 310999 := by
    unfold C
    simp [show (1492992 * k + 621998) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 310999) = 2239488 * k + 932998 := by
    unfold C
    simp [show (746496 * k + 310999) % 2 ≠ 0 by omega]
    omega
  have h16 : C (2239488 * k + 932998) = 1119744 * k + 466499 := by
    unfold C
    simp [show (2239488 * k + 932998) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 466499) = 3359232 * k + 1399498 := by
    unfold C
    simp [show (1119744 * k + 466499) % 2 ≠ 0 by omega]
    omega
  have h18 : C (3359232 * k + 1399498) = 1679616 * k + 699749 := by
    unfold C
    simp [show (3359232 * k + 1399498) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 699749) = 5038848 * k + 2099248 := by
    unfold C
    simp [show (1679616 * k + 699749) % 2 ≠ 0 by omega]
    omega
  have h20 : C (5038848 * k + 2099248) = 2519424 * k + 1049624 := by
    unfold C
    simp [show (5038848 * k + 2099248) % 2 = 0 by omega]
    omega
  have h21 : C (2519424 * k + 1049624) = 1259712 * k + 524812 := by
    unfold C
    simp [show (2519424 * k + 1049624) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 524812) = 629856 * k + 262406 := by
    unfold C
    simp [show (1259712 * k + 524812) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 262406) = 314928 * k + 131203 := by
    unfold C
    simp [show (629856 * k + 262406) % 2 = 0 by omega]
    omega
  have h24 : C (314928 * k + 131203) = 944784 * k + 393610 := by
    unfold C
    simp [show (314928 * k + 131203) % 2 ≠ 0 by omega]
    omega
  have h25 : C (944784 * k + 393610) = 472392 * k + 196805 := by
    unfold C
    simp [show (944784 * k + 393610) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 196805) = 1417176 * k + 590416 := by
    unfold C
    simp [show (472392 * k + 196805) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 590416) = 708588 * k + 295208 := by
    unfold C
    simp [show (1417176 * k + 590416) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 295208) = 354294 * k + 147604 := by
    unfold C
    simp [show (708588 * k + 295208) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 147604) = 177147 * k + 73802 := by
    unfold C
    simp [show (354294 * k + 147604) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 109211) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 109211))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_109223 : ∀ k : Nat,
    iterate (262144 * k + 109223) 29 = 177147 * k + 73810 ∧
      177147 * k + 73810 < 262144 * k + 109223 := by
  intro k
  have h1 : C (262144 * k + 109223) = 786432 * k + 327670 := by
    unfold C
    simp [show (262144 * k + 109223) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 327670) = 393216 * k + 163835 := by
    unfold C
    simp [show (786432 * k + 327670) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 163835) = 1179648 * k + 491506 := by
    unfold C
    simp [show (393216 * k + 163835) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 491506) = 589824 * k + 245753 := by
    unfold C
    simp [show (1179648 * k + 491506) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 245753) = 1769472 * k + 737260 := by
    unfold C
    simp [show (589824 * k + 245753) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 737260) = 884736 * k + 368630 := by
    unfold C
    simp [show (1769472 * k + 737260) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 368630) = 442368 * k + 184315 := by
    unfold C
    simp [show (884736 * k + 368630) % 2 = 0 by omega]
    omega
  have h8 : C (442368 * k + 184315) = 1327104 * k + 552946 := by
    unfold C
    simp [show (442368 * k + 184315) % 2 ≠ 0 by omega]
    omega
  have h9 : C (1327104 * k + 552946) = 663552 * k + 276473 := by
    unfold C
    simp [show (1327104 * k + 552946) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 276473) = 1990656 * k + 829420 := by
    unfold C
    simp [show (663552 * k + 276473) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 829420) = 995328 * k + 414710 := by
    unfold C
    simp [show (1990656 * k + 829420) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 414710) = 497664 * k + 207355 := by
    unfold C
    simp [show (995328 * k + 414710) % 2 = 0 by omega]
    omega
  have h13 : C (497664 * k + 207355) = 1492992 * k + 622066 := by
    unfold C
    simp [show (497664 * k + 207355) % 2 ≠ 0 by omega]
    omega
  have h14 : C (1492992 * k + 622066) = 746496 * k + 311033 := by
    unfold C
    simp [show (1492992 * k + 622066) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 311033) = 2239488 * k + 933100 := by
    unfold C
    simp [show (746496 * k + 311033) % 2 ≠ 0 by omega]
    omega
  have h16 : C (2239488 * k + 933100) = 1119744 * k + 466550 := by
    unfold C
    simp [show (2239488 * k + 933100) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 466550) = 559872 * k + 233275 := by
    unfold C
    simp [show (1119744 * k + 466550) % 2 = 0 by omega]
    omega
  have h18 : C (559872 * k + 233275) = 1679616 * k + 699826 := by
    unfold C
    simp [show (559872 * k + 233275) % 2 ≠ 0 by omega]
    omega
  have h19 : C (1679616 * k + 699826) = 839808 * k + 349913 := by
    unfold C
    simp [show (1679616 * k + 699826) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 349913) = 2519424 * k + 1049740 := by
    unfold C
    simp [show (839808 * k + 349913) % 2 ≠ 0 by omega]
    omega
  have h21 : C (2519424 * k + 1049740) = 1259712 * k + 524870 := by
    unfold C
    simp [show (2519424 * k + 1049740) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 524870) = 629856 * k + 262435 := by
    unfold C
    simp [show (1259712 * k + 524870) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 262435) = 1889568 * k + 787306 := by
    unfold C
    simp [show (629856 * k + 262435) % 2 ≠ 0 by omega]
    omega
  have h24 : C (1889568 * k + 787306) = 944784 * k + 393653 := by
    unfold C
    simp [show (1889568 * k + 787306) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 393653) = 2834352 * k + 1180960 := by
    unfold C
    simp [show (944784 * k + 393653) % 2 ≠ 0 by omega]
    omega
  have h26 : C (2834352 * k + 1180960) = 1417176 * k + 590480 := by
    unfold C
    simp [show (2834352 * k + 1180960) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 590480) = 708588 * k + 295240 := by
    unfold C
    simp [show (1417176 * k + 590480) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 295240) = 354294 * k + 147620 := by
    unfold C
    simp [show (708588 * k + 295240) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 147620) = 177147 * k + 73810 := by
    unfold C
    simp [show (354294 * k + 147620) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 109223) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 109223))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_109263 : ∀ k : Nat,
    iterate (262144 * k + 109263) 29 = 177147 * k + 73837 ∧
      177147 * k + 73837 < 262144 * k + 109263 := by
  intro k
  have h1 : C (262144 * k + 109263) = 786432 * k + 327790 := by
    unfold C
    simp [show (262144 * k + 109263) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 327790) = 393216 * k + 163895 := by
    unfold C
    simp [show (786432 * k + 327790) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 163895) = 1179648 * k + 491686 := by
    unfold C
    simp [show (393216 * k + 163895) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 491686) = 589824 * k + 245843 := by
    unfold C
    simp [show (1179648 * k + 491686) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 245843) = 1769472 * k + 737530 := by
    unfold C
    simp [show (589824 * k + 245843) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 737530) = 884736 * k + 368765 := by
    unfold C
    simp [show (1769472 * k + 737530) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 368765) = 2654208 * k + 1106296 := by
    unfold C
    simp [show (884736 * k + 368765) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 1106296) = 1327104 * k + 553148 := by
    unfold C
    simp [show (2654208 * k + 1106296) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 553148) = 663552 * k + 276574 := by
    unfold C
    simp [show (1327104 * k + 553148) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 276574) = 331776 * k + 138287 := by
    unfold C
    simp [show (663552 * k + 276574) % 2 = 0 by omega]
    omega
  have h11 : C (331776 * k + 138287) = 995328 * k + 414862 := by
    unfold C
    simp [show (331776 * k + 138287) % 2 ≠ 0 by omega]
    omega
  have h12 : C (995328 * k + 414862) = 497664 * k + 207431 := by
    unfold C
    simp [show (995328 * k + 414862) % 2 = 0 by omega]
    omega
  have h13 : C (497664 * k + 207431) = 1492992 * k + 622294 := by
    unfold C
    simp [show (497664 * k + 207431) % 2 ≠ 0 by omega]
    omega
  have h14 : C (1492992 * k + 622294) = 746496 * k + 311147 := by
    unfold C
    simp [show (1492992 * k + 622294) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 311147) = 2239488 * k + 933442 := by
    unfold C
    simp [show (746496 * k + 311147) % 2 ≠ 0 by omega]
    omega
  have h16 : C (2239488 * k + 933442) = 1119744 * k + 466721 := by
    unfold C
    simp [show (2239488 * k + 933442) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 466721) = 3359232 * k + 1400164 := by
    unfold C
    simp [show (1119744 * k + 466721) % 2 ≠ 0 by omega]
    omega
  have h18 : C (3359232 * k + 1400164) = 1679616 * k + 700082 := by
    unfold C
    simp [show (3359232 * k + 1400164) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 700082) = 839808 * k + 350041 := by
    unfold C
    simp [show (1679616 * k + 700082) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 350041) = 2519424 * k + 1050124 := by
    unfold C
    simp [show (839808 * k + 350041) % 2 ≠ 0 by omega]
    omega
  have h21 : C (2519424 * k + 1050124) = 1259712 * k + 525062 := by
    unfold C
    simp [show (2519424 * k + 1050124) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 525062) = 629856 * k + 262531 := by
    unfold C
    simp [show (1259712 * k + 525062) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 262531) = 1889568 * k + 787594 := by
    unfold C
    simp [show (629856 * k + 262531) % 2 ≠ 0 by omega]
    omega
  have h24 : C (1889568 * k + 787594) = 944784 * k + 393797 := by
    unfold C
    simp [show (1889568 * k + 787594) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 393797) = 2834352 * k + 1181392 := by
    unfold C
    simp [show (944784 * k + 393797) % 2 ≠ 0 by omega]
    omega
  have h26 : C (2834352 * k + 1181392) = 1417176 * k + 590696 := by
    unfold C
    simp [show (2834352 * k + 1181392) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 590696) = 708588 * k + 295348 := by
    unfold C
    simp [show (1417176 * k + 590696) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 295348) = 354294 * k + 147674 := by
    unfold C
    simp [show (708588 * k + 295348) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 147674) = 177147 * k + 73837 := by
    unfold C
    simp [show (354294 * k + 147674) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 109263) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 109263))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_109287 : ∀ k : Nat,
    iterate (262144 * k + 109287) 29 = 177147 * k + 73853 ∧
      177147 * k + 73853 < 262144 * k + 109287 := by
  intro k
  have h1 : C (262144 * k + 109287) = 786432 * k + 327862 := by
    unfold C
    simp [show (262144 * k + 109287) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 327862) = 393216 * k + 163931 := by
    unfold C
    simp [show (786432 * k + 327862) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 163931) = 1179648 * k + 491794 := by
    unfold C
    simp [show (393216 * k + 163931) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 491794) = 589824 * k + 245897 := by
    unfold C
    simp [show (1179648 * k + 491794) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 245897) = 1769472 * k + 737692 := by
    unfold C
    simp [show (589824 * k + 245897) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 737692) = 884736 * k + 368846 := by
    unfold C
    simp [show (1769472 * k + 737692) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 368846) = 442368 * k + 184423 := by
    unfold C
    simp [show (884736 * k + 368846) % 2 = 0 by omega]
    omega
  have h8 : C (442368 * k + 184423) = 1327104 * k + 553270 := by
    unfold C
    simp [show (442368 * k + 184423) % 2 ≠ 0 by omega]
    omega
  have h9 : C (1327104 * k + 553270) = 663552 * k + 276635 := by
    unfold C
    simp [show (1327104 * k + 553270) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 276635) = 1990656 * k + 829906 := by
    unfold C
    simp [show (663552 * k + 276635) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 829906) = 995328 * k + 414953 := by
    unfold C
    simp [show (1990656 * k + 829906) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 414953) = 2985984 * k + 1244860 := by
    unfold C
    simp [show (995328 * k + 414953) % 2 ≠ 0 by omega]
    omega
  have h13 : C (2985984 * k + 1244860) = 1492992 * k + 622430 := by
    unfold C
    simp [show (2985984 * k + 1244860) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 622430) = 746496 * k + 311215 := by
    unfold C
    simp [show (1492992 * k + 622430) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 311215) = 2239488 * k + 933646 := by
    unfold C
    simp [show (746496 * k + 311215) % 2 ≠ 0 by omega]
    omega
  have h16 : C (2239488 * k + 933646) = 1119744 * k + 466823 := by
    unfold C
    simp [show (2239488 * k + 933646) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 466823) = 3359232 * k + 1400470 := by
    unfold C
    simp [show (1119744 * k + 466823) % 2 ≠ 0 by omega]
    omega
  have h18 : C (3359232 * k + 1400470) = 1679616 * k + 700235 := by
    unfold C
    simp [show (3359232 * k + 1400470) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 700235) = 5038848 * k + 2100706 := by
    unfold C
    simp [show (1679616 * k + 700235) % 2 ≠ 0 by omega]
    omega
  have h20 : C (5038848 * k + 2100706) = 2519424 * k + 1050353 := by
    unfold C
    simp [show (5038848 * k + 2100706) % 2 = 0 by omega]
    omega
  have h21 : C (2519424 * k + 1050353) = 7558272 * k + 3151060 := by
    unfold C
    simp [show (2519424 * k + 1050353) % 2 ≠ 0 by omega]
    omega
  have h22 : C (7558272 * k + 3151060) = 3779136 * k + 1575530 := by
    unfold C
    simp [show (7558272 * k + 3151060) % 2 = 0 by omega]
    omega
  have h23 : C (3779136 * k + 1575530) = 1889568 * k + 787765 := by
    unfold C
    simp [show (3779136 * k + 1575530) % 2 = 0 by omega]
    omega
  have h24 : C (1889568 * k + 787765) = 5668704 * k + 2363296 := by
    unfold C
    simp [show (1889568 * k + 787765) % 2 ≠ 0 by omega]
    omega
  have h25 : C (5668704 * k + 2363296) = 2834352 * k + 1181648 := by
    unfold C
    simp [show (5668704 * k + 2363296) % 2 = 0 by omega]
    omega
  have h26 : C (2834352 * k + 1181648) = 1417176 * k + 590824 := by
    unfold C
    simp [show (2834352 * k + 1181648) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 590824) = 708588 * k + 295412 := by
    unfold C
    simp [show (1417176 * k + 590824) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 295412) = 354294 * k + 147706 := by
    unfold C
    simp [show (708588 * k + 295412) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 147706) = 177147 * k + 73853 := by
    unfold C
    simp [show (354294 * k + 147706) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 109287) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 109287))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_109343 : ∀ k : Nat,
    iterate (262144 * k + 109343) 29 = 177147 * k + 73891 ∧
      177147 * k + 73891 < 262144 * k + 109343 := by
  intro k
  have h1 : C (262144 * k + 109343) = 786432 * k + 328030 := by
    unfold C
    simp [show (262144 * k + 109343) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 328030) = 393216 * k + 164015 := by
    unfold C
    simp [show (786432 * k + 328030) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 164015) = 1179648 * k + 492046 := by
    unfold C
    simp [show (393216 * k + 164015) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 492046) = 589824 * k + 246023 := by
    unfold C
    simp [show (1179648 * k + 492046) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 246023) = 1769472 * k + 738070 := by
    unfold C
    simp [show (589824 * k + 246023) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 738070) = 884736 * k + 369035 := by
    unfold C
    simp [show (1769472 * k + 738070) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 369035) = 2654208 * k + 1107106 := by
    unfold C
    simp [show (884736 * k + 369035) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 1107106) = 1327104 * k + 553553 := by
    unfold C
    simp [show (2654208 * k + 1107106) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 553553) = 3981312 * k + 1660660 := by
    unfold C
    simp [show (1327104 * k + 553553) % 2 ≠ 0 by omega]
    omega
  have h10 : C (3981312 * k + 1660660) = 1990656 * k + 830330 := by
    unfold C
    simp [show (3981312 * k + 1660660) % 2 = 0 by omega]
    omega
  have h11 : C (1990656 * k + 830330) = 995328 * k + 415165 := by
    unfold C
    simp [show (1990656 * k + 830330) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 415165) = 2985984 * k + 1245496 := by
    unfold C
    simp [show (995328 * k + 415165) % 2 ≠ 0 by omega]
    omega
  have h13 : C (2985984 * k + 1245496) = 1492992 * k + 622748 := by
    unfold C
    simp [show (2985984 * k + 1245496) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 622748) = 746496 * k + 311374 := by
    unfold C
    simp [show (1492992 * k + 622748) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 311374) = 373248 * k + 155687 := by
    unfold C
    simp [show (746496 * k + 311374) % 2 = 0 by omega]
    omega
  have h16 : C (373248 * k + 155687) = 1119744 * k + 467062 := by
    unfold C
    simp [show (373248 * k + 155687) % 2 ≠ 0 by omega]
    omega
  have h17 : C (1119744 * k + 467062) = 559872 * k + 233531 := by
    unfold C
    simp [show (1119744 * k + 467062) % 2 = 0 by omega]
    omega
  have h18 : C (559872 * k + 233531) = 1679616 * k + 700594 := by
    unfold C
    simp [show (559872 * k + 233531) % 2 ≠ 0 by omega]
    omega
  have h19 : C (1679616 * k + 700594) = 839808 * k + 350297 := by
    unfold C
    simp [show (1679616 * k + 700594) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 350297) = 2519424 * k + 1050892 := by
    unfold C
    simp [show (839808 * k + 350297) % 2 ≠ 0 by omega]
    omega
  have h21 : C (2519424 * k + 1050892) = 1259712 * k + 525446 := by
    unfold C
    simp [show (2519424 * k + 1050892) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 525446) = 629856 * k + 262723 := by
    unfold C
    simp [show (1259712 * k + 525446) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 262723) = 1889568 * k + 788170 := by
    unfold C
    simp [show (629856 * k + 262723) % 2 ≠ 0 by omega]
    omega
  have h24 : C (1889568 * k + 788170) = 944784 * k + 394085 := by
    unfold C
    simp [show (1889568 * k + 788170) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 394085) = 2834352 * k + 1182256 := by
    unfold C
    simp [show (944784 * k + 394085) % 2 ≠ 0 by omega]
    omega
  have h26 : C (2834352 * k + 1182256) = 1417176 * k + 591128 := by
    unfold C
    simp [show (2834352 * k + 1182256) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 591128) = 708588 * k + 295564 := by
    unfold C
    simp [show (1417176 * k + 591128) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 295564) = 354294 * k + 147782 := by
    unfold C
    simp [show (708588 * k + 295564) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 147782) = 177147 * k + 73891 := by
    unfold C
    simp [show (354294 * k + 147782) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 109343) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 109343))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

end CollatzM18Shard021
