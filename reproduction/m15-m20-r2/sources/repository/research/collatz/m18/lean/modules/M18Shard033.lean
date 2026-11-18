import Mathlib.Data.Nat.Prime.Basic

namespace CollatzM18Shard033

def C (n : Nat) : Nat := if n % 2 = 0 then n / 2 else 3 * n + 1

def iterate (n t : Nat) : Nat := Nat.rec n (fun _ previous => C previous) t

theorem descent_mod262144_169663 : ∀ k : Nat,
    iterate (262144 * k + 169663) 29 = 177147 * k + 114653 ∧
      177147 * k + 114653 < 262144 * k + 169663 := by
  intro k
  have h1 : C (262144 * k + 169663) = 786432 * k + 508990 := by
    unfold C
    simp [show (262144 * k + 169663) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 508990) = 393216 * k + 254495 := by
    unfold C
    simp [show (786432 * k + 508990) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 254495) = 1179648 * k + 763486 := by
    unfold C
    simp [show (393216 * k + 254495) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 763486) = 589824 * k + 381743 := by
    unfold C
    simp [show (1179648 * k + 763486) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 381743) = 1769472 * k + 1145230 := by
    unfold C
    simp [show (589824 * k + 381743) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 1145230) = 884736 * k + 572615 := by
    unfold C
    simp [show (1769472 * k + 1145230) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 572615) = 2654208 * k + 1717846 := by
    unfold C
    simp [show (884736 * k + 572615) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 1717846) = 1327104 * k + 858923 := by
    unfold C
    simp [show (2654208 * k + 1717846) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 858923) = 3981312 * k + 2576770 := by
    unfold C
    simp [show (1327104 * k + 858923) % 2 ≠ 0 by omega]
    omega
  have h10 : C (3981312 * k + 2576770) = 1990656 * k + 1288385 := by
    unfold C
    simp [show (3981312 * k + 2576770) % 2 = 0 by omega]
    omega
  have h11 : C (1990656 * k + 1288385) = 5971968 * k + 3865156 := by
    unfold C
    simp [show (1990656 * k + 1288385) % 2 ≠ 0 by omega]
    omega
  have h12 : C (5971968 * k + 3865156) = 2985984 * k + 1932578 := by
    unfold C
    simp [show (5971968 * k + 3865156) % 2 = 0 by omega]
    omega
  have h13 : C (2985984 * k + 1932578) = 1492992 * k + 966289 := by
    unfold C
    simp [show (2985984 * k + 1932578) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 966289) = 4478976 * k + 2898868 := by
    unfold C
    simp [show (1492992 * k + 966289) % 2 ≠ 0 by omega]
    omega
  have h15 : C (4478976 * k + 2898868) = 2239488 * k + 1449434 := by
    unfold C
    simp [show (4478976 * k + 2898868) % 2 = 0 by omega]
    omega
  have h16 : C (2239488 * k + 1449434) = 1119744 * k + 724717 := by
    unfold C
    simp [show (2239488 * k + 1449434) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 724717) = 3359232 * k + 2174152 := by
    unfold C
    simp [show (1119744 * k + 724717) % 2 ≠ 0 by omega]
    omega
  have h18 : C (3359232 * k + 2174152) = 1679616 * k + 1087076 := by
    unfold C
    simp [show (3359232 * k + 2174152) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 1087076) = 839808 * k + 543538 := by
    unfold C
    simp [show (1679616 * k + 1087076) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 543538) = 419904 * k + 271769 := by
    unfold C
    simp [show (839808 * k + 543538) % 2 = 0 by omega]
    omega
  have h21 : C (419904 * k + 271769) = 1259712 * k + 815308 := by
    unfold C
    simp [show (419904 * k + 271769) % 2 ≠ 0 by omega]
    omega
  have h22 : C (1259712 * k + 815308) = 629856 * k + 407654 := by
    unfold C
    simp [show (1259712 * k + 815308) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 407654) = 314928 * k + 203827 := by
    unfold C
    simp [show (629856 * k + 407654) % 2 = 0 by omega]
    omega
  have h24 : C (314928 * k + 203827) = 944784 * k + 611482 := by
    unfold C
    simp [show (314928 * k + 203827) % 2 ≠ 0 by omega]
    omega
  have h25 : C (944784 * k + 611482) = 472392 * k + 305741 := by
    unfold C
    simp [show (944784 * k + 611482) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 305741) = 1417176 * k + 917224 := by
    unfold C
    simp [show (472392 * k + 305741) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 917224) = 708588 * k + 458612 := by
    unfold C
    simp [show (1417176 * k + 917224) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 458612) = 354294 * k + 229306 := by
    unfold C
    simp [show (708588 * k + 458612) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 229306) = 177147 * k + 114653 := by
    unfold C
    simp [show (354294 * k + 229306) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 169663) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 169663))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_169703 : ∀ k : Nat,
    iterate (262144 * k + 169703) 29 = 177147 * k + 114680 ∧
      177147 * k + 114680 < 262144 * k + 169703 := by
  intro k
  have h1 : C (262144 * k + 169703) = 786432 * k + 509110 := by
    unfold C
    simp [show (262144 * k + 169703) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 509110) = 393216 * k + 254555 := by
    unfold C
    simp [show (786432 * k + 509110) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 254555) = 1179648 * k + 763666 := by
    unfold C
    simp [show (393216 * k + 254555) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 763666) = 589824 * k + 381833 := by
    unfold C
    simp [show (1179648 * k + 763666) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 381833) = 1769472 * k + 1145500 := by
    unfold C
    simp [show (589824 * k + 381833) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 1145500) = 884736 * k + 572750 := by
    unfold C
    simp [show (1769472 * k + 1145500) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 572750) = 442368 * k + 286375 := by
    unfold C
    simp [show (884736 * k + 572750) % 2 = 0 by omega]
    omega
  have h8 : C (442368 * k + 286375) = 1327104 * k + 859126 := by
    unfold C
    simp [show (442368 * k + 286375) % 2 ≠ 0 by omega]
    omega
  have h9 : C (1327104 * k + 859126) = 663552 * k + 429563 := by
    unfold C
    simp [show (1327104 * k + 859126) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 429563) = 1990656 * k + 1288690 := by
    unfold C
    simp [show (663552 * k + 429563) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 1288690) = 995328 * k + 644345 := by
    unfold C
    simp [show (1990656 * k + 1288690) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 644345) = 2985984 * k + 1933036 := by
    unfold C
    simp [show (995328 * k + 644345) % 2 ≠ 0 by omega]
    omega
  have h13 : C (2985984 * k + 1933036) = 1492992 * k + 966518 := by
    unfold C
    simp [show (2985984 * k + 1933036) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 966518) = 746496 * k + 483259 := by
    unfold C
    simp [show (1492992 * k + 966518) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 483259) = 2239488 * k + 1449778 := by
    unfold C
    simp [show (746496 * k + 483259) % 2 ≠ 0 by omega]
    omega
  have h16 : C (2239488 * k + 1449778) = 1119744 * k + 724889 := by
    unfold C
    simp [show (2239488 * k + 1449778) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 724889) = 3359232 * k + 2174668 := by
    unfold C
    simp [show (1119744 * k + 724889) % 2 ≠ 0 by omega]
    omega
  have h18 : C (3359232 * k + 2174668) = 1679616 * k + 1087334 := by
    unfold C
    simp [show (3359232 * k + 2174668) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 1087334) = 839808 * k + 543667 := by
    unfold C
    simp [show (1679616 * k + 1087334) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 543667) = 2519424 * k + 1631002 := by
    unfold C
    simp [show (839808 * k + 543667) % 2 ≠ 0 by omega]
    omega
  have h21 : C (2519424 * k + 1631002) = 1259712 * k + 815501 := by
    unfold C
    simp [show (2519424 * k + 1631002) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 815501) = 3779136 * k + 2446504 := by
    unfold C
    simp [show (1259712 * k + 815501) % 2 ≠ 0 by omega]
    omega
  have h23 : C (3779136 * k + 2446504) = 1889568 * k + 1223252 := by
    unfold C
    simp [show (3779136 * k + 2446504) % 2 = 0 by omega]
    omega
  have h24 : C (1889568 * k + 1223252) = 944784 * k + 611626 := by
    unfold C
    simp [show (1889568 * k + 1223252) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 611626) = 472392 * k + 305813 := by
    unfold C
    simp [show (944784 * k + 611626) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 305813) = 1417176 * k + 917440 := by
    unfold C
    simp [show (472392 * k + 305813) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 917440) = 708588 * k + 458720 := by
    unfold C
    simp [show (1417176 * k + 917440) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 458720) = 354294 * k + 229360 := by
    unfold C
    simp [show (708588 * k + 458720) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 229360) = 177147 * k + 114680 := by
    unfold C
    simp [show (354294 * k + 229360) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 169703) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 169703))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_170395 : ∀ k : Nat,
    iterate (262144 * k + 170395) 29 = 177147 * k + 115148 ∧
      177147 * k + 115148 < 262144 * k + 170395 := by
  intro k
  have h1 : C (262144 * k + 170395) = 786432 * k + 511186 := by
    unfold C
    simp [show (262144 * k + 170395) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 511186) = 393216 * k + 255593 := by
    unfold C
    simp [show (786432 * k + 511186) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 255593) = 1179648 * k + 766780 := by
    unfold C
    simp [show (393216 * k + 255593) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 766780) = 589824 * k + 383390 := by
    unfold C
    simp [show (1179648 * k + 766780) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 383390) = 294912 * k + 191695 := by
    unfold C
    simp [show (589824 * k + 383390) % 2 = 0 by omega]
    omega
  have h6 : C (294912 * k + 191695) = 884736 * k + 575086 := by
    unfold C
    simp [show (294912 * k + 191695) % 2 ≠ 0 by omega]
    omega
  have h7 : C (884736 * k + 575086) = 442368 * k + 287543 := by
    unfold C
    simp [show (884736 * k + 575086) % 2 = 0 by omega]
    omega
  have h8 : C (442368 * k + 287543) = 1327104 * k + 862630 := by
    unfold C
    simp [show (442368 * k + 287543) % 2 ≠ 0 by omega]
    omega
  have h9 : C (1327104 * k + 862630) = 663552 * k + 431315 := by
    unfold C
    simp [show (1327104 * k + 862630) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 431315) = 1990656 * k + 1293946 := by
    unfold C
    simp [show (663552 * k + 431315) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 1293946) = 995328 * k + 646973 := by
    unfold C
    simp [show (1990656 * k + 1293946) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 646973) = 2985984 * k + 1940920 := by
    unfold C
    simp [show (995328 * k + 646973) % 2 ≠ 0 by omega]
    omega
  have h13 : C (2985984 * k + 1940920) = 1492992 * k + 970460 := by
    unfold C
    simp [show (2985984 * k + 1940920) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 970460) = 746496 * k + 485230 := by
    unfold C
    simp [show (1492992 * k + 970460) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 485230) = 373248 * k + 242615 := by
    unfold C
    simp [show (746496 * k + 485230) % 2 = 0 by omega]
    omega
  have h16 : C (373248 * k + 242615) = 1119744 * k + 727846 := by
    unfold C
    simp [show (373248 * k + 242615) % 2 ≠ 0 by omega]
    omega
  have h17 : C (1119744 * k + 727846) = 559872 * k + 363923 := by
    unfold C
    simp [show (1119744 * k + 727846) % 2 = 0 by omega]
    omega
  have h18 : C (559872 * k + 363923) = 1679616 * k + 1091770 := by
    unfold C
    simp [show (559872 * k + 363923) % 2 ≠ 0 by omega]
    omega
  have h19 : C (1679616 * k + 1091770) = 839808 * k + 545885 := by
    unfold C
    simp [show (1679616 * k + 1091770) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 545885) = 2519424 * k + 1637656 := by
    unfold C
    simp [show (839808 * k + 545885) % 2 ≠ 0 by omega]
    omega
  have h21 : C (2519424 * k + 1637656) = 1259712 * k + 818828 := by
    unfold C
    simp [show (2519424 * k + 1637656) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 818828) = 629856 * k + 409414 := by
    unfold C
    simp [show (1259712 * k + 818828) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 409414) = 314928 * k + 204707 := by
    unfold C
    simp [show (629856 * k + 409414) % 2 = 0 by omega]
    omega
  have h24 : C (314928 * k + 204707) = 944784 * k + 614122 := by
    unfold C
    simp [show (314928 * k + 204707) % 2 ≠ 0 by omega]
    omega
  have h25 : C (944784 * k + 614122) = 472392 * k + 307061 := by
    unfold C
    simp [show (944784 * k + 614122) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 307061) = 1417176 * k + 921184 := by
    unfold C
    simp [show (472392 * k + 307061) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 921184) = 708588 * k + 460592 := by
    unfold C
    simp [show (1417176 * k + 921184) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 460592) = 354294 * k + 230296 := by
    unfold C
    simp [show (708588 * k + 460592) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 230296) = 177147 * k + 115148 := by
    unfold C
    simp [show (354294 * k + 230296) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 170395) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 170395))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_171167 : ∀ k : Nat,
    iterate (262144 * k + 171167) 29 = 177147 * k + 115669 ∧
      177147 * k + 115669 < 262144 * k + 171167 := by
  intro k
  have h1 : C (262144 * k + 171167) = 786432 * k + 513502 := by
    unfold C
    simp [show (262144 * k + 171167) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 513502) = 393216 * k + 256751 := by
    unfold C
    simp [show (786432 * k + 513502) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 256751) = 1179648 * k + 770254 := by
    unfold C
    simp [show (393216 * k + 256751) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 770254) = 589824 * k + 385127 := by
    unfold C
    simp [show (1179648 * k + 770254) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 385127) = 1769472 * k + 1155382 := by
    unfold C
    simp [show (589824 * k + 385127) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 1155382) = 884736 * k + 577691 := by
    unfold C
    simp [show (1769472 * k + 1155382) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 577691) = 2654208 * k + 1733074 := by
    unfold C
    simp [show (884736 * k + 577691) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 1733074) = 1327104 * k + 866537 := by
    unfold C
    simp [show (2654208 * k + 1733074) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 866537) = 3981312 * k + 2599612 := by
    unfold C
    simp [show (1327104 * k + 866537) % 2 ≠ 0 by omega]
    omega
  have h10 : C (3981312 * k + 2599612) = 1990656 * k + 1299806 := by
    unfold C
    simp [show (3981312 * k + 2599612) % 2 = 0 by omega]
    omega
  have h11 : C (1990656 * k + 1299806) = 995328 * k + 649903 := by
    unfold C
    simp [show (1990656 * k + 1299806) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 649903) = 2985984 * k + 1949710 := by
    unfold C
    simp [show (995328 * k + 649903) % 2 ≠ 0 by omega]
    omega
  have h13 : C (2985984 * k + 1949710) = 1492992 * k + 974855 := by
    unfold C
    simp [show (2985984 * k + 1949710) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 974855) = 4478976 * k + 2924566 := by
    unfold C
    simp [show (1492992 * k + 974855) % 2 ≠ 0 by omega]
    omega
  have h15 : C (4478976 * k + 2924566) = 2239488 * k + 1462283 := by
    unfold C
    simp [show (4478976 * k + 2924566) % 2 = 0 by omega]
    omega
  have h16 : C (2239488 * k + 1462283) = 6718464 * k + 4386850 := by
    unfold C
    simp [show (2239488 * k + 1462283) % 2 ≠ 0 by omega]
    omega
  have h17 : C (6718464 * k + 4386850) = 3359232 * k + 2193425 := by
    unfold C
    simp [show (6718464 * k + 4386850) % 2 = 0 by omega]
    omega
  have h18 : C (3359232 * k + 2193425) = 10077696 * k + 6580276 := by
    unfold C
    simp [show (3359232 * k + 2193425) % 2 ≠ 0 by omega]
    omega
  have h19 : C (10077696 * k + 6580276) = 5038848 * k + 3290138 := by
    unfold C
    simp [show (10077696 * k + 6580276) % 2 = 0 by omega]
    omega
  have h20 : C (5038848 * k + 3290138) = 2519424 * k + 1645069 := by
    unfold C
    simp [show (5038848 * k + 3290138) % 2 = 0 by omega]
    omega
  have h21 : C (2519424 * k + 1645069) = 7558272 * k + 4935208 := by
    unfold C
    simp [show (2519424 * k + 1645069) % 2 ≠ 0 by omega]
    omega
  have h22 : C (7558272 * k + 4935208) = 3779136 * k + 2467604 := by
    unfold C
    simp [show (7558272 * k + 4935208) % 2 = 0 by omega]
    omega
  have h23 : C (3779136 * k + 2467604) = 1889568 * k + 1233802 := by
    unfold C
    simp [show (3779136 * k + 2467604) % 2 = 0 by omega]
    omega
  have h24 : C (1889568 * k + 1233802) = 944784 * k + 616901 := by
    unfold C
    simp [show (1889568 * k + 1233802) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 616901) = 2834352 * k + 1850704 := by
    unfold C
    simp [show (944784 * k + 616901) % 2 ≠ 0 by omega]
    omega
  have h26 : C (2834352 * k + 1850704) = 1417176 * k + 925352 := by
    unfold C
    simp [show (2834352 * k + 1850704) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 925352) = 708588 * k + 462676 := by
    unfold C
    simp [show (1417176 * k + 925352) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 462676) = 354294 * k + 231338 := by
    unfold C
    simp [show (708588 * k + 462676) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 231338) = 177147 * k + 115669 := by
    unfold C
    simp [show (354294 * k + 231338) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 171167) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 171167))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_171419 : ∀ k : Nat,
    iterate (262144 * k + 171419) 29 = 177147 * k + 115840 ∧
      177147 * k + 115840 < 262144 * k + 171419 := by
  intro k
  have h1 : C (262144 * k + 171419) = 786432 * k + 514258 := by
    unfold C
    simp [show (262144 * k + 171419) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 514258) = 393216 * k + 257129 := by
    unfold C
    simp [show (786432 * k + 514258) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 257129) = 1179648 * k + 771388 := by
    unfold C
    simp [show (393216 * k + 257129) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 771388) = 589824 * k + 385694 := by
    unfold C
    simp [show (1179648 * k + 771388) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 385694) = 294912 * k + 192847 := by
    unfold C
    simp [show (589824 * k + 385694) % 2 = 0 by omega]
    omega
  have h6 : C (294912 * k + 192847) = 884736 * k + 578542 := by
    unfold C
    simp [show (294912 * k + 192847) % 2 ≠ 0 by omega]
    omega
  have h7 : C (884736 * k + 578542) = 442368 * k + 289271 := by
    unfold C
    simp [show (884736 * k + 578542) % 2 = 0 by omega]
    omega
  have h8 : C (442368 * k + 289271) = 1327104 * k + 867814 := by
    unfold C
    simp [show (442368 * k + 289271) % 2 ≠ 0 by omega]
    omega
  have h9 : C (1327104 * k + 867814) = 663552 * k + 433907 := by
    unfold C
    simp [show (1327104 * k + 867814) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 433907) = 1990656 * k + 1301722 := by
    unfold C
    simp [show (663552 * k + 433907) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 1301722) = 995328 * k + 650861 := by
    unfold C
    simp [show (1990656 * k + 1301722) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 650861) = 2985984 * k + 1952584 := by
    unfold C
    simp [show (995328 * k + 650861) % 2 ≠ 0 by omega]
    omega
  have h13 : C (2985984 * k + 1952584) = 1492992 * k + 976292 := by
    unfold C
    simp [show (2985984 * k + 1952584) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 976292) = 746496 * k + 488146 := by
    unfold C
    simp [show (1492992 * k + 976292) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 488146) = 373248 * k + 244073 := by
    unfold C
    simp [show (746496 * k + 488146) % 2 = 0 by omega]
    omega
  have h16 : C (373248 * k + 244073) = 1119744 * k + 732220 := by
    unfold C
    simp [show (373248 * k + 244073) % 2 ≠ 0 by omega]
    omega
  have h17 : C (1119744 * k + 732220) = 559872 * k + 366110 := by
    unfold C
    simp [show (1119744 * k + 732220) % 2 = 0 by omega]
    omega
  have h18 : C (559872 * k + 366110) = 279936 * k + 183055 := by
    unfold C
    simp [show (559872 * k + 366110) % 2 = 0 by omega]
    omega
  have h19 : C (279936 * k + 183055) = 839808 * k + 549166 := by
    unfold C
    simp [show (279936 * k + 183055) % 2 ≠ 0 by omega]
    omega
  have h20 : C (839808 * k + 549166) = 419904 * k + 274583 := by
    unfold C
    simp [show (839808 * k + 549166) % 2 = 0 by omega]
    omega
  have h21 : C (419904 * k + 274583) = 1259712 * k + 823750 := by
    unfold C
    simp [show (419904 * k + 274583) % 2 ≠ 0 by omega]
    omega
  have h22 : C (1259712 * k + 823750) = 629856 * k + 411875 := by
    unfold C
    simp [show (1259712 * k + 823750) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 411875) = 1889568 * k + 1235626 := by
    unfold C
    simp [show (629856 * k + 411875) % 2 ≠ 0 by omega]
    omega
  have h24 : C (1889568 * k + 1235626) = 944784 * k + 617813 := by
    unfold C
    simp [show (1889568 * k + 1235626) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 617813) = 2834352 * k + 1853440 := by
    unfold C
    simp [show (944784 * k + 617813) % 2 ≠ 0 by omega]
    omega
  have h26 : C (2834352 * k + 1853440) = 1417176 * k + 926720 := by
    unfold C
    simp [show (2834352 * k + 1853440) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 926720) = 708588 * k + 463360 := by
    unfold C
    simp [show (1417176 * k + 926720) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 463360) = 354294 * k + 231680 := by
    unfold C
    simp [show (708588 * k + 463360) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 231680) = 177147 * k + 115840 := by
    unfold C
    simp [show (354294 * k + 231680) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 171419) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 171419))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_171679 : ∀ k : Nat,
    iterate (262144 * k + 171679) 29 = 177147 * k + 116015 ∧
      177147 * k + 116015 < 262144 * k + 171679 := by
  intro k
  have h1 : C (262144 * k + 171679) = 786432 * k + 515038 := by
    unfold C
    simp [show (262144 * k + 171679) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 515038) = 393216 * k + 257519 := by
    unfold C
    simp [show (786432 * k + 515038) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 257519) = 1179648 * k + 772558 := by
    unfold C
    simp [show (393216 * k + 257519) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 772558) = 589824 * k + 386279 := by
    unfold C
    simp [show (1179648 * k + 772558) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 386279) = 1769472 * k + 1158838 := by
    unfold C
    simp [show (589824 * k + 386279) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 1158838) = 884736 * k + 579419 := by
    unfold C
    simp [show (1769472 * k + 1158838) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 579419) = 2654208 * k + 1738258 := by
    unfold C
    simp [show (884736 * k + 579419) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 1738258) = 1327104 * k + 869129 := by
    unfold C
    simp [show (2654208 * k + 1738258) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 869129) = 3981312 * k + 2607388 := by
    unfold C
    simp [show (1327104 * k + 869129) % 2 ≠ 0 by omega]
    omega
  have h10 : C (3981312 * k + 2607388) = 1990656 * k + 1303694 := by
    unfold C
    simp [show (3981312 * k + 2607388) % 2 = 0 by omega]
    omega
  have h11 : C (1990656 * k + 1303694) = 995328 * k + 651847 := by
    unfold C
    simp [show (1990656 * k + 1303694) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 651847) = 2985984 * k + 1955542 := by
    unfold C
    simp [show (995328 * k + 651847) % 2 ≠ 0 by omega]
    omega
  have h13 : C (2985984 * k + 1955542) = 1492992 * k + 977771 := by
    unfold C
    simp [show (2985984 * k + 1955542) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 977771) = 4478976 * k + 2933314 := by
    unfold C
    simp [show (1492992 * k + 977771) % 2 ≠ 0 by omega]
    omega
  have h15 : C (4478976 * k + 2933314) = 2239488 * k + 1466657 := by
    unfold C
    simp [show (4478976 * k + 2933314) % 2 = 0 by omega]
    omega
  have h16 : C (2239488 * k + 1466657) = 6718464 * k + 4399972 := by
    unfold C
    simp [show (2239488 * k + 1466657) % 2 ≠ 0 by omega]
    omega
  have h17 : C (6718464 * k + 4399972) = 3359232 * k + 2199986 := by
    unfold C
    simp [show (6718464 * k + 4399972) % 2 = 0 by omega]
    omega
  have h18 : C (3359232 * k + 2199986) = 1679616 * k + 1099993 := by
    unfold C
    simp [show (3359232 * k + 2199986) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 1099993) = 5038848 * k + 3299980 := by
    unfold C
    simp [show (1679616 * k + 1099993) % 2 ≠ 0 by omega]
    omega
  have h20 : C (5038848 * k + 3299980) = 2519424 * k + 1649990 := by
    unfold C
    simp [show (5038848 * k + 3299980) % 2 = 0 by omega]
    omega
  have h21 : C (2519424 * k + 1649990) = 1259712 * k + 824995 := by
    unfold C
    simp [show (2519424 * k + 1649990) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 824995) = 3779136 * k + 2474986 := by
    unfold C
    simp [show (1259712 * k + 824995) % 2 ≠ 0 by omega]
    omega
  have h23 : C (3779136 * k + 2474986) = 1889568 * k + 1237493 := by
    unfold C
    simp [show (3779136 * k + 2474986) % 2 = 0 by omega]
    omega
  have h24 : C (1889568 * k + 1237493) = 5668704 * k + 3712480 := by
    unfold C
    simp [show (1889568 * k + 1237493) % 2 ≠ 0 by omega]
    omega
  have h25 : C (5668704 * k + 3712480) = 2834352 * k + 1856240 := by
    unfold C
    simp [show (5668704 * k + 3712480) % 2 = 0 by omega]
    omega
  have h26 : C (2834352 * k + 1856240) = 1417176 * k + 928120 := by
    unfold C
    simp [show (2834352 * k + 1856240) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 928120) = 708588 * k + 464060 := by
    unfold C
    simp [show (1417176 * k + 928120) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 464060) = 354294 * k + 232030 := by
    unfold C
    simp [show (708588 * k + 464060) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 232030) = 177147 * k + 116015 := by
    unfold C
    simp [show (354294 * k + 232030) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 171679) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 171679))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_171771 : ∀ k : Nat,
    iterate (262144 * k + 171771) 29 = 177147 * k + 116078 ∧
      177147 * k + 116078 < 262144 * k + 171771 := by
  intro k
  have h1 : C (262144 * k + 171771) = 786432 * k + 515314 := by
    unfold C
    simp [show (262144 * k + 171771) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 515314) = 393216 * k + 257657 := by
    unfold C
    simp [show (786432 * k + 515314) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 257657) = 1179648 * k + 772972 := by
    unfold C
    simp [show (393216 * k + 257657) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 772972) = 589824 * k + 386486 := by
    unfold C
    simp [show (1179648 * k + 772972) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 386486) = 294912 * k + 193243 := by
    unfold C
    simp [show (589824 * k + 386486) % 2 = 0 by omega]
    omega
  have h6 : C (294912 * k + 193243) = 884736 * k + 579730 := by
    unfold C
    simp [show (294912 * k + 193243) % 2 ≠ 0 by omega]
    omega
  have h7 : C (884736 * k + 579730) = 442368 * k + 289865 := by
    unfold C
    simp [show (884736 * k + 579730) % 2 = 0 by omega]
    omega
  have h8 : C (442368 * k + 289865) = 1327104 * k + 869596 := by
    unfold C
    simp [show (442368 * k + 289865) % 2 ≠ 0 by omega]
    omega
  have h9 : C (1327104 * k + 869596) = 663552 * k + 434798 := by
    unfold C
    simp [show (1327104 * k + 869596) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 434798) = 331776 * k + 217399 := by
    unfold C
    simp [show (663552 * k + 434798) % 2 = 0 by omega]
    omega
  have h11 : C (331776 * k + 217399) = 995328 * k + 652198 := by
    unfold C
    simp [show (331776 * k + 217399) % 2 ≠ 0 by omega]
    omega
  have h12 : C (995328 * k + 652198) = 497664 * k + 326099 := by
    unfold C
    simp [show (995328 * k + 652198) % 2 = 0 by omega]
    omega
  have h13 : C (497664 * k + 326099) = 1492992 * k + 978298 := by
    unfold C
    simp [show (497664 * k + 326099) % 2 ≠ 0 by omega]
    omega
  have h14 : C (1492992 * k + 978298) = 746496 * k + 489149 := by
    unfold C
    simp [show (1492992 * k + 978298) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 489149) = 2239488 * k + 1467448 := by
    unfold C
    simp [show (746496 * k + 489149) % 2 ≠ 0 by omega]
    omega
  have h16 : C (2239488 * k + 1467448) = 1119744 * k + 733724 := by
    unfold C
    simp [show (2239488 * k + 1467448) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 733724) = 559872 * k + 366862 := by
    unfold C
    simp [show (1119744 * k + 733724) % 2 = 0 by omega]
    omega
  have h18 : C (559872 * k + 366862) = 279936 * k + 183431 := by
    unfold C
    simp [show (559872 * k + 366862) % 2 = 0 by omega]
    omega
  have h19 : C (279936 * k + 183431) = 839808 * k + 550294 := by
    unfold C
    simp [show (279936 * k + 183431) % 2 ≠ 0 by omega]
    omega
  have h20 : C (839808 * k + 550294) = 419904 * k + 275147 := by
    unfold C
    simp [show (839808 * k + 550294) % 2 = 0 by omega]
    omega
  have h21 : C (419904 * k + 275147) = 1259712 * k + 825442 := by
    unfold C
    simp [show (419904 * k + 275147) % 2 ≠ 0 by omega]
    omega
  have h22 : C (1259712 * k + 825442) = 629856 * k + 412721 := by
    unfold C
    simp [show (1259712 * k + 825442) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 412721) = 1889568 * k + 1238164 := by
    unfold C
    simp [show (629856 * k + 412721) % 2 ≠ 0 by omega]
    omega
  have h24 : C (1889568 * k + 1238164) = 944784 * k + 619082 := by
    unfold C
    simp [show (1889568 * k + 1238164) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 619082) = 472392 * k + 309541 := by
    unfold C
    simp [show (944784 * k + 619082) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 309541) = 1417176 * k + 928624 := by
    unfold C
    simp [show (472392 * k + 309541) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 928624) = 708588 * k + 464312 := by
    unfold C
    simp [show (1417176 * k + 928624) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 464312) = 354294 * k + 232156 := by
    unfold C
    simp [show (708588 * k + 464312) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 232156) = 177147 * k + 116078 := by
    unfold C
    simp [show (354294 * k + 232156) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 171771) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 171771))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_172827 : ∀ k : Nat,
    iterate (262144 * k + 172827) 29 = 177147 * k + 116791 ∧
      177147 * k + 116791 < 262144 * k + 172827 := by
  intro k
  have h1 : C (262144 * k + 172827) = 786432 * k + 518482 := by
    unfold C
    simp [show (262144 * k + 172827) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 518482) = 393216 * k + 259241 := by
    unfold C
    simp [show (786432 * k + 518482) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 259241) = 1179648 * k + 777724 := by
    unfold C
    simp [show (393216 * k + 259241) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 777724) = 589824 * k + 388862 := by
    unfold C
    simp [show (1179648 * k + 777724) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 388862) = 294912 * k + 194431 := by
    unfold C
    simp [show (589824 * k + 388862) % 2 = 0 by omega]
    omega
  have h6 : C (294912 * k + 194431) = 884736 * k + 583294 := by
    unfold C
    simp [show (294912 * k + 194431) % 2 ≠ 0 by omega]
    omega
  have h7 : C (884736 * k + 583294) = 442368 * k + 291647 := by
    unfold C
    simp [show (884736 * k + 583294) % 2 = 0 by omega]
    omega
  have h8 : C (442368 * k + 291647) = 1327104 * k + 874942 := by
    unfold C
    simp [show (442368 * k + 291647) % 2 ≠ 0 by omega]
    omega
  have h9 : C (1327104 * k + 874942) = 663552 * k + 437471 := by
    unfold C
    simp [show (1327104 * k + 874942) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 437471) = 1990656 * k + 1312414 := by
    unfold C
    simp [show (663552 * k + 437471) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 1312414) = 995328 * k + 656207 := by
    unfold C
    simp [show (1990656 * k + 1312414) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 656207) = 2985984 * k + 1968622 := by
    unfold C
    simp [show (995328 * k + 656207) % 2 ≠ 0 by omega]
    omega
  have h13 : C (2985984 * k + 1968622) = 1492992 * k + 984311 := by
    unfold C
    simp [show (2985984 * k + 1968622) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 984311) = 4478976 * k + 2952934 := by
    unfold C
    simp [show (1492992 * k + 984311) % 2 ≠ 0 by omega]
    omega
  have h15 : C (4478976 * k + 2952934) = 2239488 * k + 1476467 := by
    unfold C
    simp [show (4478976 * k + 2952934) % 2 = 0 by omega]
    omega
  have h16 : C (2239488 * k + 1476467) = 6718464 * k + 4429402 := by
    unfold C
    simp [show (2239488 * k + 1476467) % 2 ≠ 0 by omega]
    omega
  have h17 : C (6718464 * k + 4429402) = 3359232 * k + 2214701 := by
    unfold C
    simp [show (6718464 * k + 4429402) % 2 = 0 by omega]
    omega
  have h18 : C (3359232 * k + 2214701) = 10077696 * k + 6644104 := by
    unfold C
    simp [show (3359232 * k + 2214701) % 2 ≠ 0 by omega]
    omega
  have h19 : C (10077696 * k + 6644104) = 5038848 * k + 3322052 := by
    unfold C
    simp [show (10077696 * k + 6644104) % 2 = 0 by omega]
    omega
  have h20 : C (5038848 * k + 3322052) = 2519424 * k + 1661026 := by
    unfold C
    simp [show (5038848 * k + 3322052) % 2 = 0 by omega]
    omega
  have h21 : C (2519424 * k + 1661026) = 1259712 * k + 830513 := by
    unfold C
    simp [show (2519424 * k + 1661026) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 830513) = 3779136 * k + 2491540 := by
    unfold C
    simp [show (1259712 * k + 830513) % 2 ≠ 0 by omega]
    omega
  have h23 : C (3779136 * k + 2491540) = 1889568 * k + 1245770 := by
    unfold C
    simp [show (3779136 * k + 2491540) % 2 = 0 by omega]
    omega
  have h24 : C (1889568 * k + 1245770) = 944784 * k + 622885 := by
    unfold C
    simp [show (1889568 * k + 1245770) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 622885) = 2834352 * k + 1868656 := by
    unfold C
    simp [show (944784 * k + 622885) % 2 ≠ 0 by omega]
    omega
  have h26 : C (2834352 * k + 1868656) = 1417176 * k + 934328 := by
    unfold C
    simp [show (2834352 * k + 1868656) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 934328) = 708588 * k + 467164 := by
    unfold C
    simp [show (1417176 * k + 934328) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 467164) = 354294 * k + 233582 := by
    unfold C
    simp [show (708588 * k + 467164) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 233582) = 177147 * k + 116791 := by
    unfold C
    simp [show (354294 * k + 233582) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 172827) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 172827))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_172871 : ∀ k : Nat,
    iterate (262144 * k + 172871) 29 = 177147 * k + 116821 ∧
      177147 * k + 116821 < 262144 * k + 172871 := by
  intro k
  have h1 : C (262144 * k + 172871) = 786432 * k + 518614 := by
    unfold C
    simp [show (262144 * k + 172871) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 518614) = 393216 * k + 259307 := by
    unfold C
    simp [show (786432 * k + 518614) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 259307) = 1179648 * k + 777922 := by
    unfold C
    simp [show (393216 * k + 259307) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 777922) = 589824 * k + 388961 := by
    unfold C
    simp [show (1179648 * k + 777922) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 388961) = 1769472 * k + 1166884 := by
    unfold C
    simp [show (589824 * k + 388961) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 1166884) = 884736 * k + 583442 := by
    unfold C
    simp [show (1769472 * k + 1166884) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 583442) = 442368 * k + 291721 := by
    unfold C
    simp [show (884736 * k + 583442) % 2 = 0 by omega]
    omega
  have h8 : C (442368 * k + 291721) = 1327104 * k + 875164 := by
    unfold C
    simp [show (442368 * k + 291721) % 2 ≠ 0 by omega]
    omega
  have h9 : C (1327104 * k + 875164) = 663552 * k + 437582 := by
    unfold C
    simp [show (1327104 * k + 875164) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 437582) = 331776 * k + 218791 := by
    unfold C
    simp [show (663552 * k + 437582) % 2 = 0 by omega]
    omega
  have h11 : C (331776 * k + 218791) = 995328 * k + 656374 := by
    unfold C
    simp [show (331776 * k + 218791) % 2 ≠ 0 by omega]
    omega
  have h12 : C (995328 * k + 656374) = 497664 * k + 328187 := by
    unfold C
    simp [show (995328 * k + 656374) % 2 = 0 by omega]
    omega
  have h13 : C (497664 * k + 328187) = 1492992 * k + 984562 := by
    unfold C
    simp [show (497664 * k + 328187) % 2 ≠ 0 by omega]
    omega
  have h14 : C (1492992 * k + 984562) = 746496 * k + 492281 := by
    unfold C
    simp [show (1492992 * k + 984562) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 492281) = 2239488 * k + 1476844 := by
    unfold C
    simp [show (746496 * k + 492281) % 2 ≠ 0 by omega]
    omega
  have h16 : C (2239488 * k + 1476844) = 1119744 * k + 738422 := by
    unfold C
    simp [show (2239488 * k + 1476844) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 738422) = 559872 * k + 369211 := by
    unfold C
    simp [show (1119744 * k + 738422) % 2 = 0 by omega]
    omega
  have h18 : C (559872 * k + 369211) = 1679616 * k + 1107634 := by
    unfold C
    simp [show (559872 * k + 369211) % 2 ≠ 0 by omega]
    omega
  have h19 : C (1679616 * k + 1107634) = 839808 * k + 553817 := by
    unfold C
    simp [show (1679616 * k + 1107634) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 553817) = 2519424 * k + 1661452 := by
    unfold C
    simp [show (839808 * k + 553817) % 2 ≠ 0 by omega]
    omega
  have h21 : C (2519424 * k + 1661452) = 1259712 * k + 830726 := by
    unfold C
    simp [show (2519424 * k + 1661452) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 830726) = 629856 * k + 415363 := by
    unfold C
    simp [show (1259712 * k + 830726) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 415363) = 1889568 * k + 1246090 := by
    unfold C
    simp [show (629856 * k + 415363) % 2 ≠ 0 by omega]
    omega
  have h24 : C (1889568 * k + 1246090) = 944784 * k + 623045 := by
    unfold C
    simp [show (1889568 * k + 1246090) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 623045) = 2834352 * k + 1869136 := by
    unfold C
    simp [show (944784 * k + 623045) % 2 ≠ 0 by omega]
    omega
  have h26 : C (2834352 * k + 1869136) = 1417176 * k + 934568 := by
    unfold C
    simp [show (2834352 * k + 1869136) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 934568) = 708588 * k + 467284 := by
    unfold C
    simp [show (1417176 * k + 934568) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 467284) = 354294 * k + 233642 := by
    unfold C
    simp [show (708588 * k + 467284) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 233642) = 177147 * k + 116821 := by
    unfold C
    simp [show (354294 * k + 233642) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 172871) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 172871))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_173295 : ∀ k : Nat,
    iterate (262144 * k + 173295) 29 = 177147 * k + 117107 ∧
      177147 * k + 117107 < 262144 * k + 173295 := by
  intro k
  have h1 : C (262144 * k + 173295) = 786432 * k + 519886 := by
    unfold C
    simp [show (262144 * k + 173295) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 519886) = 393216 * k + 259943 := by
    unfold C
    simp [show (786432 * k + 519886) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 259943) = 1179648 * k + 779830 := by
    unfold C
    simp [show (393216 * k + 259943) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 779830) = 589824 * k + 389915 := by
    unfold C
    simp [show (1179648 * k + 779830) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 389915) = 1769472 * k + 1169746 := by
    unfold C
    simp [show (589824 * k + 389915) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 1169746) = 884736 * k + 584873 := by
    unfold C
    simp [show (1769472 * k + 1169746) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 584873) = 2654208 * k + 1754620 := by
    unfold C
    simp [show (884736 * k + 584873) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 1754620) = 1327104 * k + 877310 := by
    unfold C
    simp [show (2654208 * k + 1754620) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 877310) = 663552 * k + 438655 := by
    unfold C
    simp [show (1327104 * k + 877310) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 438655) = 1990656 * k + 1315966 := by
    unfold C
    simp [show (663552 * k + 438655) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 1315966) = 995328 * k + 657983 := by
    unfold C
    simp [show (1990656 * k + 1315966) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 657983) = 2985984 * k + 1973950 := by
    unfold C
    simp [show (995328 * k + 657983) % 2 ≠ 0 by omega]
    omega
  have h13 : C (2985984 * k + 1973950) = 1492992 * k + 986975 := by
    unfold C
    simp [show (2985984 * k + 1973950) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 986975) = 4478976 * k + 2960926 := by
    unfold C
    simp [show (1492992 * k + 986975) % 2 ≠ 0 by omega]
    omega
  have h15 : C (4478976 * k + 2960926) = 2239488 * k + 1480463 := by
    unfold C
    simp [show (4478976 * k + 2960926) % 2 = 0 by omega]
    omega
  have h16 : C (2239488 * k + 1480463) = 6718464 * k + 4441390 := by
    unfold C
    simp [show (2239488 * k + 1480463) % 2 ≠ 0 by omega]
    omega
  have h17 : C (6718464 * k + 4441390) = 3359232 * k + 2220695 := by
    unfold C
    simp [show (6718464 * k + 4441390) % 2 = 0 by omega]
    omega
  have h18 : C (3359232 * k + 2220695) = 10077696 * k + 6662086 := by
    unfold C
    simp [show (3359232 * k + 2220695) % 2 ≠ 0 by omega]
    omega
  have h19 : C (10077696 * k + 6662086) = 5038848 * k + 3331043 := by
    unfold C
    simp [show (10077696 * k + 6662086) % 2 = 0 by omega]
    omega
  have h20 : C (5038848 * k + 3331043) = 15116544 * k + 9993130 := by
    unfold C
    simp [show (5038848 * k + 3331043) % 2 ≠ 0 by omega]
    omega
  have h21 : C (15116544 * k + 9993130) = 7558272 * k + 4996565 := by
    unfold C
    simp [show (15116544 * k + 9993130) % 2 = 0 by omega]
    omega
  have h22 : C (7558272 * k + 4996565) = 22674816 * k + 14989696 := by
    unfold C
    simp [show (7558272 * k + 4996565) % 2 ≠ 0 by omega]
    omega
  have h23 : C (22674816 * k + 14989696) = 11337408 * k + 7494848 := by
    unfold C
    simp [show (22674816 * k + 14989696) % 2 = 0 by omega]
    omega
  have h24 : C (11337408 * k + 7494848) = 5668704 * k + 3747424 := by
    unfold C
    simp [show (11337408 * k + 7494848) % 2 = 0 by omega]
    omega
  have h25 : C (5668704 * k + 3747424) = 2834352 * k + 1873712 := by
    unfold C
    simp [show (5668704 * k + 3747424) % 2 = 0 by omega]
    omega
  have h26 : C (2834352 * k + 1873712) = 1417176 * k + 936856 := by
    unfold C
    simp [show (2834352 * k + 1873712) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 936856) = 708588 * k + 468428 := by
    unfold C
    simp [show (1417176 * k + 936856) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 468428) = 354294 * k + 234214 := by
    unfold C
    simp [show (708588 * k + 468428) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 234214) = 177147 * k + 117107 := by
    unfold C
    simp [show (354294 * k + 234214) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 173295) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 173295))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_173383 : ∀ k : Nat,
    iterate (262144 * k + 173383) 29 = 177147 * k + 117167 ∧
      177147 * k + 117167 < 262144 * k + 173383 := by
  intro k
  have h1 : C (262144 * k + 173383) = 786432 * k + 520150 := by
    unfold C
    simp [show (262144 * k + 173383) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 520150) = 393216 * k + 260075 := by
    unfold C
    simp [show (786432 * k + 520150) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 260075) = 1179648 * k + 780226 := by
    unfold C
    simp [show (393216 * k + 260075) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 780226) = 589824 * k + 390113 := by
    unfold C
    simp [show (1179648 * k + 780226) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 390113) = 1769472 * k + 1170340 := by
    unfold C
    simp [show (589824 * k + 390113) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 1170340) = 884736 * k + 585170 := by
    unfold C
    simp [show (1769472 * k + 1170340) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 585170) = 442368 * k + 292585 := by
    unfold C
    simp [show (884736 * k + 585170) % 2 = 0 by omega]
    omega
  have h8 : C (442368 * k + 292585) = 1327104 * k + 877756 := by
    unfold C
    simp [show (442368 * k + 292585) % 2 ≠ 0 by omega]
    omega
  have h9 : C (1327104 * k + 877756) = 663552 * k + 438878 := by
    unfold C
    simp [show (1327104 * k + 877756) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 438878) = 331776 * k + 219439 := by
    unfold C
    simp [show (663552 * k + 438878) % 2 = 0 by omega]
    omega
  have h11 : C (331776 * k + 219439) = 995328 * k + 658318 := by
    unfold C
    simp [show (331776 * k + 219439) % 2 ≠ 0 by omega]
    omega
  have h12 : C (995328 * k + 658318) = 497664 * k + 329159 := by
    unfold C
    simp [show (995328 * k + 658318) % 2 = 0 by omega]
    omega
  have h13 : C (497664 * k + 329159) = 1492992 * k + 987478 := by
    unfold C
    simp [show (497664 * k + 329159) % 2 ≠ 0 by omega]
    omega
  have h14 : C (1492992 * k + 987478) = 746496 * k + 493739 := by
    unfold C
    simp [show (1492992 * k + 987478) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 493739) = 2239488 * k + 1481218 := by
    unfold C
    simp [show (746496 * k + 493739) % 2 ≠ 0 by omega]
    omega
  have h16 : C (2239488 * k + 1481218) = 1119744 * k + 740609 := by
    unfold C
    simp [show (2239488 * k + 1481218) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 740609) = 3359232 * k + 2221828 := by
    unfold C
    simp [show (1119744 * k + 740609) % 2 ≠ 0 by omega]
    omega
  have h18 : C (3359232 * k + 2221828) = 1679616 * k + 1110914 := by
    unfold C
    simp [show (3359232 * k + 2221828) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 1110914) = 839808 * k + 555457 := by
    unfold C
    simp [show (1679616 * k + 1110914) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 555457) = 2519424 * k + 1666372 := by
    unfold C
    simp [show (839808 * k + 555457) % 2 ≠ 0 by omega]
    omega
  have h21 : C (2519424 * k + 1666372) = 1259712 * k + 833186 := by
    unfold C
    simp [show (2519424 * k + 1666372) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 833186) = 629856 * k + 416593 := by
    unfold C
    simp [show (1259712 * k + 833186) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 416593) = 1889568 * k + 1249780 := by
    unfold C
    simp [show (629856 * k + 416593) % 2 ≠ 0 by omega]
    omega
  have h24 : C (1889568 * k + 1249780) = 944784 * k + 624890 := by
    unfold C
    simp [show (1889568 * k + 1249780) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 624890) = 472392 * k + 312445 := by
    unfold C
    simp [show (944784 * k + 624890) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 312445) = 1417176 * k + 937336 := by
    unfold C
    simp [show (472392 * k + 312445) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 937336) = 708588 * k + 468668 := by
    unfold C
    simp [show (1417176 * k + 937336) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 468668) = 354294 * k + 234334 := by
    unfold C
    simp [show (708588 * k + 468668) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 234334) = 177147 * k + 117167 := by
    unfold C
    simp [show (354294 * k + 234334) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 173383) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 173383))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_173471 : ∀ k : Nat,
    iterate (262144 * k + 173471) 29 = 177147 * k + 117226 ∧
      177147 * k + 117226 < 262144 * k + 173471 := by
  intro k
  have h1 : C (262144 * k + 173471) = 786432 * k + 520414 := by
    unfold C
    simp [show (262144 * k + 173471) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 520414) = 393216 * k + 260207 := by
    unfold C
    simp [show (786432 * k + 520414) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 260207) = 1179648 * k + 780622 := by
    unfold C
    simp [show (393216 * k + 260207) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 780622) = 589824 * k + 390311 := by
    unfold C
    simp [show (1179648 * k + 780622) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 390311) = 1769472 * k + 1170934 := by
    unfold C
    simp [show (589824 * k + 390311) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 1170934) = 884736 * k + 585467 := by
    unfold C
    simp [show (1769472 * k + 1170934) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 585467) = 2654208 * k + 1756402 := by
    unfold C
    simp [show (884736 * k + 585467) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 1756402) = 1327104 * k + 878201 := by
    unfold C
    simp [show (2654208 * k + 1756402) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 878201) = 3981312 * k + 2634604 := by
    unfold C
    simp [show (1327104 * k + 878201) % 2 ≠ 0 by omega]
    omega
  have h10 : C (3981312 * k + 2634604) = 1990656 * k + 1317302 := by
    unfold C
    simp [show (3981312 * k + 2634604) % 2 = 0 by omega]
    omega
  have h11 : C (1990656 * k + 1317302) = 995328 * k + 658651 := by
    unfold C
    simp [show (1990656 * k + 1317302) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 658651) = 2985984 * k + 1975954 := by
    unfold C
    simp [show (995328 * k + 658651) % 2 ≠ 0 by omega]
    omega
  have h13 : C (2985984 * k + 1975954) = 1492992 * k + 987977 := by
    unfold C
    simp [show (2985984 * k + 1975954) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 987977) = 4478976 * k + 2963932 := by
    unfold C
    simp [show (1492992 * k + 987977) % 2 ≠ 0 by omega]
    omega
  have h15 : C (4478976 * k + 2963932) = 2239488 * k + 1481966 := by
    unfold C
    simp [show (4478976 * k + 2963932) % 2 = 0 by omega]
    omega
  have h16 : C (2239488 * k + 1481966) = 1119744 * k + 740983 := by
    unfold C
    simp [show (2239488 * k + 1481966) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 740983) = 3359232 * k + 2222950 := by
    unfold C
    simp [show (1119744 * k + 740983) % 2 ≠ 0 by omega]
    omega
  have h18 : C (3359232 * k + 2222950) = 1679616 * k + 1111475 := by
    unfold C
    simp [show (3359232 * k + 2222950) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 1111475) = 5038848 * k + 3334426 := by
    unfold C
    simp [show (1679616 * k + 1111475) % 2 ≠ 0 by omega]
    omega
  have h20 : C (5038848 * k + 3334426) = 2519424 * k + 1667213 := by
    unfold C
    simp [show (5038848 * k + 3334426) % 2 = 0 by omega]
    omega
  have h21 : C (2519424 * k + 1667213) = 7558272 * k + 5001640 := by
    unfold C
    simp [show (2519424 * k + 1667213) % 2 ≠ 0 by omega]
    omega
  have h22 : C (7558272 * k + 5001640) = 3779136 * k + 2500820 := by
    unfold C
    simp [show (7558272 * k + 5001640) % 2 = 0 by omega]
    omega
  have h23 : C (3779136 * k + 2500820) = 1889568 * k + 1250410 := by
    unfold C
    simp [show (3779136 * k + 2500820) % 2 = 0 by omega]
    omega
  have h24 : C (1889568 * k + 1250410) = 944784 * k + 625205 := by
    unfold C
    simp [show (1889568 * k + 1250410) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 625205) = 2834352 * k + 1875616 := by
    unfold C
    simp [show (944784 * k + 625205) % 2 ≠ 0 by omega]
    omega
  have h26 : C (2834352 * k + 1875616) = 1417176 * k + 937808 := by
    unfold C
    simp [show (2834352 * k + 1875616) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 937808) = 708588 * k + 468904 := by
    unfold C
    simp [show (1417176 * k + 937808) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 468904) = 354294 * k + 234452 := by
    unfold C
    simp [show (708588 * k + 468904) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 234452) = 177147 * k + 117226 := by
    unfold C
    simp [show (354294 * k + 234452) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 173471) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 173471))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_173991 : ∀ k : Nat,
    iterate (262144 * k + 173991) 29 = 177147 * k + 117578 ∧
      177147 * k + 117578 < 262144 * k + 173991 := by
  intro k
  have h1 : C (262144 * k + 173991) = 786432 * k + 521974 := by
    unfold C
    simp [show (262144 * k + 173991) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 521974) = 393216 * k + 260987 := by
    unfold C
    simp [show (786432 * k + 521974) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 260987) = 1179648 * k + 782962 := by
    unfold C
    simp [show (393216 * k + 260987) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 782962) = 589824 * k + 391481 := by
    unfold C
    simp [show (1179648 * k + 782962) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 391481) = 1769472 * k + 1174444 := by
    unfold C
    simp [show (589824 * k + 391481) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 1174444) = 884736 * k + 587222 := by
    unfold C
    simp [show (1769472 * k + 1174444) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 587222) = 442368 * k + 293611 := by
    unfold C
    simp [show (884736 * k + 587222) % 2 = 0 by omega]
    omega
  have h8 : C (442368 * k + 293611) = 1327104 * k + 880834 := by
    unfold C
    simp [show (442368 * k + 293611) % 2 ≠ 0 by omega]
    omega
  have h9 : C (1327104 * k + 880834) = 663552 * k + 440417 := by
    unfold C
    simp [show (1327104 * k + 880834) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 440417) = 1990656 * k + 1321252 := by
    unfold C
    simp [show (663552 * k + 440417) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 1321252) = 995328 * k + 660626 := by
    unfold C
    simp [show (1990656 * k + 1321252) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 660626) = 497664 * k + 330313 := by
    unfold C
    simp [show (995328 * k + 660626) % 2 = 0 by omega]
    omega
  have h13 : C (497664 * k + 330313) = 1492992 * k + 990940 := by
    unfold C
    simp [show (497664 * k + 330313) % 2 ≠ 0 by omega]
    omega
  have h14 : C (1492992 * k + 990940) = 746496 * k + 495470 := by
    unfold C
    simp [show (1492992 * k + 990940) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 495470) = 373248 * k + 247735 := by
    unfold C
    simp [show (746496 * k + 495470) % 2 = 0 by omega]
    omega
  have h16 : C (373248 * k + 247735) = 1119744 * k + 743206 := by
    unfold C
    simp [show (373248 * k + 247735) % 2 ≠ 0 by omega]
    omega
  have h17 : C (1119744 * k + 743206) = 559872 * k + 371603 := by
    unfold C
    simp [show (1119744 * k + 743206) % 2 = 0 by omega]
    omega
  have h18 : C (559872 * k + 371603) = 1679616 * k + 1114810 := by
    unfold C
    simp [show (559872 * k + 371603) % 2 ≠ 0 by omega]
    omega
  have h19 : C (1679616 * k + 1114810) = 839808 * k + 557405 := by
    unfold C
    simp [show (1679616 * k + 1114810) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 557405) = 2519424 * k + 1672216 := by
    unfold C
    simp [show (839808 * k + 557405) % 2 ≠ 0 by omega]
    omega
  have h21 : C (2519424 * k + 1672216) = 1259712 * k + 836108 := by
    unfold C
    simp [show (2519424 * k + 1672216) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 836108) = 629856 * k + 418054 := by
    unfold C
    simp [show (1259712 * k + 836108) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 418054) = 314928 * k + 209027 := by
    unfold C
    simp [show (629856 * k + 418054) % 2 = 0 by omega]
    omega
  have h24 : C (314928 * k + 209027) = 944784 * k + 627082 := by
    unfold C
    simp [show (314928 * k + 209027) % 2 ≠ 0 by omega]
    omega
  have h25 : C (944784 * k + 627082) = 472392 * k + 313541 := by
    unfold C
    simp [show (944784 * k + 627082) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 313541) = 1417176 * k + 940624 := by
    unfold C
    simp [show (472392 * k + 313541) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 940624) = 708588 * k + 470312 := by
    unfold C
    simp [show (1417176 * k + 940624) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 470312) = 354294 * k + 235156 := by
    unfold C
    simp [show (708588 * k + 470312) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 235156) = 177147 * k + 117578 := by
    unfold C
    simp [show (354294 * k + 235156) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 173991) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 173991))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_174319 : ∀ k : Nat,
    iterate (262144 * k + 174319) 29 = 177147 * k + 117799 ∧
      177147 * k + 117799 < 262144 * k + 174319 := by
  intro k
  have h1 : C (262144 * k + 174319) = 786432 * k + 522958 := by
    unfold C
    simp [show (262144 * k + 174319) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 522958) = 393216 * k + 261479 := by
    unfold C
    simp [show (786432 * k + 522958) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 261479) = 1179648 * k + 784438 := by
    unfold C
    simp [show (393216 * k + 261479) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 784438) = 589824 * k + 392219 := by
    unfold C
    simp [show (1179648 * k + 784438) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 392219) = 1769472 * k + 1176658 := by
    unfold C
    simp [show (589824 * k + 392219) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 1176658) = 884736 * k + 588329 := by
    unfold C
    simp [show (1769472 * k + 1176658) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 588329) = 2654208 * k + 1764988 := by
    unfold C
    simp [show (884736 * k + 588329) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 1764988) = 1327104 * k + 882494 := by
    unfold C
    simp [show (2654208 * k + 1764988) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 882494) = 663552 * k + 441247 := by
    unfold C
    simp [show (1327104 * k + 882494) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 441247) = 1990656 * k + 1323742 := by
    unfold C
    simp [show (663552 * k + 441247) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 1323742) = 995328 * k + 661871 := by
    unfold C
    simp [show (1990656 * k + 1323742) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 661871) = 2985984 * k + 1985614 := by
    unfold C
    simp [show (995328 * k + 661871) % 2 ≠ 0 by omega]
    omega
  have h13 : C (2985984 * k + 1985614) = 1492992 * k + 992807 := by
    unfold C
    simp [show (2985984 * k + 1985614) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 992807) = 4478976 * k + 2978422 := by
    unfold C
    simp [show (1492992 * k + 992807) % 2 ≠ 0 by omega]
    omega
  have h15 : C (4478976 * k + 2978422) = 2239488 * k + 1489211 := by
    unfold C
    simp [show (4478976 * k + 2978422) % 2 = 0 by omega]
    omega
  have h16 : C (2239488 * k + 1489211) = 6718464 * k + 4467634 := by
    unfold C
    simp [show (2239488 * k + 1489211) % 2 ≠ 0 by omega]
    omega
  have h17 : C (6718464 * k + 4467634) = 3359232 * k + 2233817 := by
    unfold C
    simp [show (6718464 * k + 4467634) % 2 = 0 by omega]
    omega
  have h18 : C (3359232 * k + 2233817) = 10077696 * k + 6701452 := by
    unfold C
    simp [show (3359232 * k + 2233817) % 2 ≠ 0 by omega]
    omega
  have h19 : C (10077696 * k + 6701452) = 5038848 * k + 3350726 := by
    unfold C
    simp [show (10077696 * k + 6701452) % 2 = 0 by omega]
    omega
  have h20 : C (5038848 * k + 3350726) = 2519424 * k + 1675363 := by
    unfold C
    simp [show (5038848 * k + 3350726) % 2 = 0 by omega]
    omega
  have h21 : C (2519424 * k + 1675363) = 7558272 * k + 5026090 := by
    unfold C
    simp [show (2519424 * k + 1675363) % 2 ≠ 0 by omega]
    omega
  have h22 : C (7558272 * k + 5026090) = 3779136 * k + 2513045 := by
    unfold C
    simp [show (7558272 * k + 5026090) % 2 = 0 by omega]
    omega
  have h23 : C (3779136 * k + 2513045) = 11337408 * k + 7539136 := by
    unfold C
    simp [show (3779136 * k + 2513045) % 2 ≠ 0 by omega]
    omega
  have h24 : C (11337408 * k + 7539136) = 5668704 * k + 3769568 := by
    unfold C
    simp [show (11337408 * k + 7539136) % 2 = 0 by omega]
    omega
  have h25 : C (5668704 * k + 3769568) = 2834352 * k + 1884784 := by
    unfold C
    simp [show (5668704 * k + 3769568) % 2 = 0 by omega]
    omega
  have h26 : C (2834352 * k + 1884784) = 1417176 * k + 942392 := by
    unfold C
    simp [show (2834352 * k + 1884784) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 942392) = 708588 * k + 471196 := by
    unfold C
    simp [show (1417176 * k + 942392) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 471196) = 354294 * k + 235598 := by
    unfold C
    simp [show (708588 * k + 471196) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 235598) = 177147 * k + 117799 := by
    unfold C
    simp [show (354294 * k + 235598) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 174319) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 174319))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_174875 : ∀ k : Nat,
    iterate (262144 * k + 174875) 29 = 177147 * k + 118175 ∧
      177147 * k + 118175 < 262144 * k + 174875 := by
  intro k
  have h1 : C (262144 * k + 174875) = 786432 * k + 524626 := by
    unfold C
    simp [show (262144 * k + 174875) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 524626) = 393216 * k + 262313 := by
    unfold C
    simp [show (786432 * k + 524626) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 262313) = 1179648 * k + 786940 := by
    unfold C
    simp [show (393216 * k + 262313) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 786940) = 589824 * k + 393470 := by
    unfold C
    simp [show (1179648 * k + 786940) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 393470) = 294912 * k + 196735 := by
    unfold C
    simp [show (589824 * k + 393470) % 2 = 0 by omega]
    omega
  have h6 : C (294912 * k + 196735) = 884736 * k + 590206 := by
    unfold C
    simp [show (294912 * k + 196735) % 2 ≠ 0 by omega]
    omega
  have h7 : C (884736 * k + 590206) = 442368 * k + 295103 := by
    unfold C
    simp [show (884736 * k + 590206) % 2 = 0 by omega]
    omega
  have h8 : C (442368 * k + 295103) = 1327104 * k + 885310 := by
    unfold C
    simp [show (442368 * k + 295103) % 2 ≠ 0 by omega]
    omega
  have h9 : C (1327104 * k + 885310) = 663552 * k + 442655 := by
    unfold C
    simp [show (1327104 * k + 885310) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 442655) = 1990656 * k + 1327966 := by
    unfold C
    simp [show (663552 * k + 442655) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 1327966) = 995328 * k + 663983 := by
    unfold C
    simp [show (1990656 * k + 1327966) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 663983) = 2985984 * k + 1991950 := by
    unfold C
    simp [show (995328 * k + 663983) % 2 ≠ 0 by omega]
    omega
  have h13 : C (2985984 * k + 1991950) = 1492992 * k + 995975 := by
    unfold C
    simp [show (2985984 * k + 1991950) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 995975) = 4478976 * k + 2987926 := by
    unfold C
    simp [show (1492992 * k + 995975) % 2 ≠ 0 by omega]
    omega
  have h15 : C (4478976 * k + 2987926) = 2239488 * k + 1493963 := by
    unfold C
    simp [show (4478976 * k + 2987926) % 2 = 0 by omega]
    omega
  have h16 : C (2239488 * k + 1493963) = 6718464 * k + 4481890 := by
    unfold C
    simp [show (2239488 * k + 1493963) % 2 ≠ 0 by omega]
    omega
  have h17 : C (6718464 * k + 4481890) = 3359232 * k + 2240945 := by
    unfold C
    simp [show (6718464 * k + 4481890) % 2 = 0 by omega]
    omega
  have h18 : C (3359232 * k + 2240945) = 10077696 * k + 6722836 := by
    unfold C
    simp [show (3359232 * k + 2240945) % 2 ≠ 0 by omega]
    omega
  have h19 : C (10077696 * k + 6722836) = 5038848 * k + 3361418 := by
    unfold C
    simp [show (10077696 * k + 6722836) % 2 = 0 by omega]
    omega
  have h20 : C (5038848 * k + 3361418) = 2519424 * k + 1680709 := by
    unfold C
    simp [show (5038848 * k + 3361418) % 2 = 0 by omega]
    omega
  have h21 : C (2519424 * k + 1680709) = 7558272 * k + 5042128 := by
    unfold C
    simp [show (2519424 * k + 1680709) % 2 ≠ 0 by omega]
    omega
  have h22 : C (7558272 * k + 5042128) = 3779136 * k + 2521064 := by
    unfold C
    simp [show (7558272 * k + 5042128) % 2 = 0 by omega]
    omega
  have h23 : C (3779136 * k + 2521064) = 1889568 * k + 1260532 := by
    unfold C
    simp [show (3779136 * k + 2521064) % 2 = 0 by omega]
    omega
  have h24 : C (1889568 * k + 1260532) = 944784 * k + 630266 := by
    unfold C
    simp [show (1889568 * k + 1260532) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 630266) = 472392 * k + 315133 := by
    unfold C
    simp [show (944784 * k + 630266) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 315133) = 1417176 * k + 945400 := by
    unfold C
    simp [show (472392 * k + 315133) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 945400) = 708588 * k + 472700 := by
    unfold C
    simp [show (1417176 * k + 945400) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 472700) = 354294 * k + 236350 := by
    unfold C
    simp [show (708588 * k + 472700) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 236350) = 177147 * k + 118175 := by
    unfold C
    simp [show (354294 * k + 236350) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 174875) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 174875))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_175015 : ∀ k : Nat,
    iterate (262144 * k + 175015) 29 = 177147 * k + 118270 ∧
      177147 * k + 118270 < 262144 * k + 175015 := by
  intro k
  have h1 : C (262144 * k + 175015) = 786432 * k + 525046 := by
    unfold C
    simp [show (262144 * k + 175015) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 525046) = 393216 * k + 262523 := by
    unfold C
    simp [show (786432 * k + 525046) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 262523) = 1179648 * k + 787570 := by
    unfold C
    simp [show (393216 * k + 262523) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 787570) = 589824 * k + 393785 := by
    unfold C
    simp [show (1179648 * k + 787570) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 393785) = 1769472 * k + 1181356 := by
    unfold C
    simp [show (589824 * k + 393785) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 1181356) = 884736 * k + 590678 := by
    unfold C
    simp [show (1769472 * k + 1181356) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 590678) = 442368 * k + 295339 := by
    unfold C
    simp [show (884736 * k + 590678) % 2 = 0 by omega]
    omega
  have h8 : C (442368 * k + 295339) = 1327104 * k + 886018 := by
    unfold C
    simp [show (442368 * k + 295339) % 2 ≠ 0 by omega]
    omega
  have h9 : C (1327104 * k + 886018) = 663552 * k + 443009 := by
    unfold C
    simp [show (1327104 * k + 886018) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 443009) = 1990656 * k + 1329028 := by
    unfold C
    simp [show (663552 * k + 443009) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 1329028) = 995328 * k + 664514 := by
    unfold C
    simp [show (1990656 * k + 1329028) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 664514) = 497664 * k + 332257 := by
    unfold C
    simp [show (995328 * k + 664514) % 2 = 0 by omega]
    omega
  have h13 : C (497664 * k + 332257) = 1492992 * k + 996772 := by
    unfold C
    simp [show (497664 * k + 332257) % 2 ≠ 0 by omega]
    omega
  have h14 : C (1492992 * k + 996772) = 746496 * k + 498386 := by
    unfold C
    simp [show (1492992 * k + 996772) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 498386) = 373248 * k + 249193 := by
    unfold C
    simp [show (746496 * k + 498386) % 2 = 0 by omega]
    omega
  have h16 : C (373248 * k + 249193) = 1119744 * k + 747580 := by
    unfold C
    simp [show (373248 * k + 249193) % 2 ≠ 0 by omega]
    omega
  have h17 : C (1119744 * k + 747580) = 559872 * k + 373790 := by
    unfold C
    simp [show (1119744 * k + 747580) % 2 = 0 by omega]
    omega
  have h18 : C (559872 * k + 373790) = 279936 * k + 186895 := by
    unfold C
    simp [show (559872 * k + 373790) % 2 = 0 by omega]
    omega
  have h19 : C (279936 * k + 186895) = 839808 * k + 560686 := by
    unfold C
    simp [show (279936 * k + 186895) % 2 ≠ 0 by omega]
    omega
  have h20 : C (839808 * k + 560686) = 419904 * k + 280343 := by
    unfold C
    simp [show (839808 * k + 560686) % 2 = 0 by omega]
    omega
  have h21 : C (419904 * k + 280343) = 1259712 * k + 841030 := by
    unfold C
    simp [show (419904 * k + 280343) % 2 ≠ 0 by omega]
    omega
  have h22 : C (1259712 * k + 841030) = 629856 * k + 420515 := by
    unfold C
    simp [show (1259712 * k + 841030) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 420515) = 1889568 * k + 1261546 := by
    unfold C
    simp [show (629856 * k + 420515) % 2 ≠ 0 by omega]
    omega
  have h24 : C (1889568 * k + 1261546) = 944784 * k + 630773 := by
    unfold C
    simp [show (1889568 * k + 1261546) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 630773) = 2834352 * k + 1892320 := by
    unfold C
    simp [show (944784 * k + 630773) % 2 ≠ 0 by omega]
    omega
  have h26 : C (2834352 * k + 1892320) = 1417176 * k + 946160 := by
    unfold C
    simp [show (2834352 * k + 1892320) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 946160) = 708588 * k + 473080 := by
    unfold C
    simp [show (1417176 * k + 946160) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 473080) = 354294 * k + 236540 := by
    unfold C
    simp [show (708588 * k + 473080) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 236540) = 177147 * k + 118270 := by
    unfold C
    simp [show (354294 * k + 236540) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 175015) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 175015))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_175131 : ∀ k : Nat,
    iterate (262144 * k + 175131) 29 = 177147 * k + 118348 ∧
      177147 * k + 118348 < 262144 * k + 175131 := by
  intro k
  have h1 : C (262144 * k + 175131) = 786432 * k + 525394 := by
    unfold C
    simp [show (262144 * k + 175131) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 525394) = 393216 * k + 262697 := by
    unfold C
    simp [show (786432 * k + 525394) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 262697) = 1179648 * k + 788092 := by
    unfold C
    simp [show (393216 * k + 262697) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 788092) = 589824 * k + 394046 := by
    unfold C
    simp [show (1179648 * k + 788092) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 394046) = 294912 * k + 197023 := by
    unfold C
    simp [show (589824 * k + 394046) % 2 = 0 by omega]
    omega
  have h6 : C (294912 * k + 197023) = 884736 * k + 591070 := by
    unfold C
    simp [show (294912 * k + 197023) % 2 ≠ 0 by omega]
    omega
  have h7 : C (884736 * k + 591070) = 442368 * k + 295535 := by
    unfold C
    simp [show (884736 * k + 591070) % 2 = 0 by omega]
    omega
  have h8 : C (442368 * k + 295535) = 1327104 * k + 886606 := by
    unfold C
    simp [show (442368 * k + 295535) % 2 ≠ 0 by omega]
    omega
  have h9 : C (1327104 * k + 886606) = 663552 * k + 443303 := by
    unfold C
    simp [show (1327104 * k + 886606) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 443303) = 1990656 * k + 1329910 := by
    unfold C
    simp [show (663552 * k + 443303) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 1329910) = 995328 * k + 664955 := by
    unfold C
    simp [show (1990656 * k + 1329910) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 664955) = 2985984 * k + 1994866 := by
    unfold C
    simp [show (995328 * k + 664955) % 2 ≠ 0 by omega]
    omega
  have h13 : C (2985984 * k + 1994866) = 1492992 * k + 997433 := by
    unfold C
    simp [show (2985984 * k + 1994866) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 997433) = 4478976 * k + 2992300 := by
    unfold C
    simp [show (1492992 * k + 997433) % 2 ≠ 0 by omega]
    omega
  have h15 : C (4478976 * k + 2992300) = 2239488 * k + 1496150 := by
    unfold C
    simp [show (4478976 * k + 2992300) % 2 = 0 by omega]
    omega
  have h16 : C (2239488 * k + 1496150) = 1119744 * k + 748075 := by
    unfold C
    simp [show (2239488 * k + 1496150) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 748075) = 3359232 * k + 2244226 := by
    unfold C
    simp [show (1119744 * k + 748075) % 2 ≠ 0 by omega]
    omega
  have h18 : C (3359232 * k + 2244226) = 1679616 * k + 1122113 := by
    unfold C
    simp [show (3359232 * k + 2244226) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 1122113) = 5038848 * k + 3366340 := by
    unfold C
    simp [show (1679616 * k + 1122113) % 2 ≠ 0 by omega]
    omega
  have h20 : C (5038848 * k + 3366340) = 2519424 * k + 1683170 := by
    unfold C
    simp [show (5038848 * k + 3366340) % 2 = 0 by omega]
    omega
  have h21 : C (2519424 * k + 1683170) = 1259712 * k + 841585 := by
    unfold C
    simp [show (2519424 * k + 1683170) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 841585) = 3779136 * k + 2524756 := by
    unfold C
    simp [show (1259712 * k + 841585) % 2 ≠ 0 by omega]
    omega
  have h23 : C (3779136 * k + 2524756) = 1889568 * k + 1262378 := by
    unfold C
    simp [show (3779136 * k + 2524756) % 2 = 0 by omega]
    omega
  have h24 : C (1889568 * k + 1262378) = 944784 * k + 631189 := by
    unfold C
    simp [show (1889568 * k + 1262378) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 631189) = 2834352 * k + 1893568 := by
    unfold C
    simp [show (944784 * k + 631189) % 2 ≠ 0 by omega]
    omega
  have h26 : C (2834352 * k + 1893568) = 1417176 * k + 946784 := by
    unfold C
    simp [show (2834352 * k + 1893568) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 946784) = 708588 * k + 473392 := by
    unfold C
    simp [show (1417176 * k + 946784) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 473392) = 354294 * k + 236696 := by
    unfold C
    simp [show (708588 * k + 473392) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 236696) = 177147 * k + 118348 := by
    unfold C
    simp [show (354294 * k + 236696) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 175131) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 175131))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_175335 : ∀ k : Nat,
    iterate (262144 * k + 175335) 29 = 177147 * k + 118486 ∧
      177147 * k + 118486 < 262144 * k + 175335 := by
  intro k
  have h1 : C (262144 * k + 175335) = 786432 * k + 526006 := by
    unfold C
    simp [show (262144 * k + 175335) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 526006) = 393216 * k + 263003 := by
    unfold C
    simp [show (786432 * k + 526006) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 263003) = 1179648 * k + 789010 := by
    unfold C
    simp [show (393216 * k + 263003) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 789010) = 589824 * k + 394505 := by
    unfold C
    simp [show (1179648 * k + 789010) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 394505) = 1769472 * k + 1183516 := by
    unfold C
    simp [show (589824 * k + 394505) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 1183516) = 884736 * k + 591758 := by
    unfold C
    simp [show (1769472 * k + 1183516) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 591758) = 442368 * k + 295879 := by
    unfold C
    simp [show (884736 * k + 591758) % 2 = 0 by omega]
    omega
  have h8 : C (442368 * k + 295879) = 1327104 * k + 887638 := by
    unfold C
    simp [show (442368 * k + 295879) % 2 ≠ 0 by omega]
    omega
  have h9 : C (1327104 * k + 887638) = 663552 * k + 443819 := by
    unfold C
    simp [show (1327104 * k + 887638) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 443819) = 1990656 * k + 1331458 := by
    unfold C
    simp [show (663552 * k + 443819) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 1331458) = 995328 * k + 665729 := by
    unfold C
    simp [show (1990656 * k + 1331458) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 665729) = 2985984 * k + 1997188 := by
    unfold C
    simp [show (995328 * k + 665729) % 2 ≠ 0 by omega]
    omega
  have h13 : C (2985984 * k + 1997188) = 1492992 * k + 998594 := by
    unfold C
    simp [show (2985984 * k + 1997188) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 998594) = 746496 * k + 499297 := by
    unfold C
    simp [show (1492992 * k + 998594) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 499297) = 2239488 * k + 1497892 := by
    unfold C
    simp [show (746496 * k + 499297) % 2 ≠ 0 by omega]
    omega
  have h16 : C (2239488 * k + 1497892) = 1119744 * k + 748946 := by
    unfold C
    simp [show (2239488 * k + 1497892) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 748946) = 559872 * k + 374473 := by
    unfold C
    simp [show (1119744 * k + 748946) % 2 = 0 by omega]
    omega
  have h18 : C (559872 * k + 374473) = 1679616 * k + 1123420 := by
    unfold C
    simp [show (559872 * k + 374473) % 2 ≠ 0 by omega]
    omega
  have h19 : C (1679616 * k + 1123420) = 839808 * k + 561710 := by
    unfold C
    simp [show (1679616 * k + 1123420) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 561710) = 419904 * k + 280855 := by
    unfold C
    simp [show (839808 * k + 561710) % 2 = 0 by omega]
    omega
  have h21 : C (419904 * k + 280855) = 1259712 * k + 842566 := by
    unfold C
    simp [show (419904 * k + 280855) % 2 ≠ 0 by omega]
    omega
  have h22 : C (1259712 * k + 842566) = 629856 * k + 421283 := by
    unfold C
    simp [show (1259712 * k + 842566) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 421283) = 1889568 * k + 1263850 := by
    unfold C
    simp [show (629856 * k + 421283) % 2 ≠ 0 by omega]
    omega
  have h24 : C (1889568 * k + 1263850) = 944784 * k + 631925 := by
    unfold C
    simp [show (1889568 * k + 1263850) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 631925) = 2834352 * k + 1895776 := by
    unfold C
    simp [show (944784 * k + 631925) % 2 ≠ 0 by omega]
    omega
  have h26 : C (2834352 * k + 1895776) = 1417176 * k + 947888 := by
    unfold C
    simp [show (2834352 * k + 1895776) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 947888) = 708588 * k + 473944 := by
    unfold C
    simp [show (1417176 * k + 947888) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 473944) = 354294 * k + 236972 := by
    unfold C
    simp [show (708588 * k + 473944) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 236972) = 177147 * k + 118486 := by
    unfold C
    simp [show (354294 * k + 236972) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 175335) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 175335))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_175567 : ∀ k : Nat,
    iterate (262144 * k + 175567) 29 = 177147 * k + 118643 ∧
      177147 * k + 118643 < 262144 * k + 175567 := by
  intro k
  have h1 : C (262144 * k + 175567) = 786432 * k + 526702 := by
    unfold C
    simp [show (262144 * k + 175567) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 526702) = 393216 * k + 263351 := by
    unfold C
    simp [show (786432 * k + 526702) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 263351) = 1179648 * k + 790054 := by
    unfold C
    simp [show (393216 * k + 263351) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 790054) = 589824 * k + 395027 := by
    unfold C
    simp [show (1179648 * k + 790054) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 395027) = 1769472 * k + 1185082 := by
    unfold C
    simp [show (589824 * k + 395027) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 1185082) = 884736 * k + 592541 := by
    unfold C
    simp [show (1769472 * k + 1185082) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 592541) = 2654208 * k + 1777624 := by
    unfold C
    simp [show (884736 * k + 592541) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 1777624) = 1327104 * k + 888812 := by
    unfold C
    simp [show (2654208 * k + 1777624) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 888812) = 663552 * k + 444406 := by
    unfold C
    simp [show (1327104 * k + 888812) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 444406) = 331776 * k + 222203 := by
    unfold C
    simp [show (663552 * k + 444406) % 2 = 0 by omega]
    omega
  have h11 : C (331776 * k + 222203) = 995328 * k + 666610 := by
    unfold C
    simp [show (331776 * k + 222203) % 2 ≠ 0 by omega]
    omega
  have h12 : C (995328 * k + 666610) = 497664 * k + 333305 := by
    unfold C
    simp [show (995328 * k + 666610) % 2 = 0 by omega]
    omega
  have h13 : C (497664 * k + 333305) = 1492992 * k + 999916 := by
    unfold C
    simp [show (497664 * k + 333305) % 2 ≠ 0 by omega]
    omega
  have h14 : C (1492992 * k + 999916) = 746496 * k + 499958 := by
    unfold C
    simp [show (1492992 * k + 999916) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 499958) = 373248 * k + 249979 := by
    unfold C
    simp [show (746496 * k + 499958) % 2 = 0 by omega]
    omega
  have h16 : C (373248 * k + 249979) = 1119744 * k + 749938 := by
    unfold C
    simp [show (373248 * k + 249979) % 2 ≠ 0 by omega]
    omega
  have h17 : C (1119744 * k + 749938) = 559872 * k + 374969 := by
    unfold C
    simp [show (1119744 * k + 749938) % 2 = 0 by omega]
    omega
  have h18 : C (559872 * k + 374969) = 1679616 * k + 1124908 := by
    unfold C
    simp [show (559872 * k + 374969) % 2 ≠ 0 by omega]
    omega
  have h19 : C (1679616 * k + 1124908) = 839808 * k + 562454 := by
    unfold C
    simp [show (1679616 * k + 1124908) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 562454) = 419904 * k + 281227 := by
    unfold C
    simp [show (839808 * k + 562454) % 2 = 0 by omega]
    omega
  have h21 : C (419904 * k + 281227) = 1259712 * k + 843682 := by
    unfold C
    simp [show (419904 * k + 281227) % 2 ≠ 0 by omega]
    omega
  have h22 : C (1259712 * k + 843682) = 629856 * k + 421841 := by
    unfold C
    simp [show (1259712 * k + 843682) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 421841) = 1889568 * k + 1265524 := by
    unfold C
    simp [show (629856 * k + 421841) % 2 ≠ 0 by omega]
    omega
  have h24 : C (1889568 * k + 1265524) = 944784 * k + 632762 := by
    unfold C
    simp [show (1889568 * k + 1265524) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 632762) = 472392 * k + 316381 := by
    unfold C
    simp [show (944784 * k + 632762) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 316381) = 1417176 * k + 949144 := by
    unfold C
    simp [show (472392 * k + 316381) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 949144) = 708588 * k + 474572 := by
    unfold C
    simp [show (1417176 * k + 949144) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 474572) = 354294 * k + 237286 := by
    unfold C
    simp [show (708588 * k + 474572) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 237286) = 177147 * k + 118643 := by
    unfold C
    simp [show (354294 * k + 237286) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 175567) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 175567))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_175727 : ∀ k : Nat,
    iterate (262144 * k + 175727) 29 = 177147 * k + 118751 ∧
      177147 * k + 118751 < 262144 * k + 175727 := by
  intro k
  have h1 : C (262144 * k + 175727) = 786432 * k + 527182 := by
    unfold C
    simp [show (262144 * k + 175727) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 527182) = 393216 * k + 263591 := by
    unfold C
    simp [show (786432 * k + 527182) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 263591) = 1179648 * k + 790774 := by
    unfold C
    simp [show (393216 * k + 263591) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 790774) = 589824 * k + 395387 := by
    unfold C
    simp [show (1179648 * k + 790774) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 395387) = 1769472 * k + 1186162 := by
    unfold C
    simp [show (589824 * k + 395387) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 1186162) = 884736 * k + 593081 := by
    unfold C
    simp [show (1769472 * k + 1186162) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 593081) = 2654208 * k + 1779244 := by
    unfold C
    simp [show (884736 * k + 593081) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 1779244) = 1327104 * k + 889622 := by
    unfold C
    simp [show (2654208 * k + 1779244) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 889622) = 663552 * k + 444811 := by
    unfold C
    simp [show (1327104 * k + 889622) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 444811) = 1990656 * k + 1334434 := by
    unfold C
    simp [show (663552 * k + 444811) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 1334434) = 995328 * k + 667217 := by
    unfold C
    simp [show (1990656 * k + 1334434) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 667217) = 2985984 * k + 2001652 := by
    unfold C
    simp [show (995328 * k + 667217) % 2 ≠ 0 by omega]
    omega
  have h13 : C (2985984 * k + 2001652) = 1492992 * k + 1000826 := by
    unfold C
    simp [show (2985984 * k + 2001652) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 1000826) = 746496 * k + 500413 := by
    unfold C
    simp [show (1492992 * k + 1000826) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 500413) = 2239488 * k + 1501240 := by
    unfold C
    simp [show (746496 * k + 500413) % 2 ≠ 0 by omega]
    omega
  have h16 : C (2239488 * k + 1501240) = 1119744 * k + 750620 := by
    unfold C
    simp [show (2239488 * k + 1501240) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 750620) = 559872 * k + 375310 := by
    unfold C
    simp [show (1119744 * k + 750620) % 2 = 0 by omega]
    omega
  have h18 : C (559872 * k + 375310) = 279936 * k + 187655 := by
    unfold C
    simp [show (559872 * k + 375310) % 2 = 0 by omega]
    omega
  have h19 : C (279936 * k + 187655) = 839808 * k + 562966 := by
    unfold C
    simp [show (279936 * k + 187655) % 2 ≠ 0 by omega]
    omega
  have h20 : C (839808 * k + 562966) = 419904 * k + 281483 := by
    unfold C
    simp [show (839808 * k + 562966) % 2 = 0 by omega]
    omega
  have h21 : C (419904 * k + 281483) = 1259712 * k + 844450 := by
    unfold C
    simp [show (419904 * k + 281483) % 2 ≠ 0 by omega]
    omega
  have h22 : C (1259712 * k + 844450) = 629856 * k + 422225 := by
    unfold C
    simp [show (1259712 * k + 844450) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 422225) = 1889568 * k + 1266676 := by
    unfold C
    simp [show (629856 * k + 422225) % 2 ≠ 0 by omega]
    omega
  have h24 : C (1889568 * k + 1266676) = 944784 * k + 633338 := by
    unfold C
    simp [show (1889568 * k + 1266676) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 633338) = 472392 * k + 316669 := by
    unfold C
    simp [show (944784 * k + 633338) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 316669) = 1417176 * k + 950008 := by
    unfold C
    simp [show (472392 * k + 316669) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 950008) = 708588 * k + 475004 := by
    unfold C
    simp [show (1417176 * k + 950008) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 475004) = 354294 * k + 237502 := by
    unfold C
    simp [show (708588 * k + 475004) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 237502) = 177147 * k + 118751 := by
    unfold C
    simp [show (354294 * k + 237502) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 175727) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 175727))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

end CollatzM18Shard033
