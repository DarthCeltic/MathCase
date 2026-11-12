import Mathlib.Data.Nat.Prime.Basic

namespace CollatzM18Shard020

def C (n : Nat) : Nat := if n % 2 = 0 then n / 2 else 3 * n + 1

def iterate (n t : Nat) : Nat := Nat.rec n (fun _ previous => C previous) t

theorem descent_mod262144_101627 : ∀ k : Nat,
    iterate (262144 * k + 101627) 29 = 177147 * k + 68677 ∧
      177147 * k + 68677 < 262144 * k + 101627 := by
  intro k
  have h1 : C (262144 * k + 101627) = 786432 * k + 304882 := by
    unfold C
    simp [show (262144 * k + 101627) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 304882) = 393216 * k + 152441 := by
    unfold C
    simp [show (786432 * k + 304882) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 152441) = 1179648 * k + 457324 := by
    unfold C
    simp [show (393216 * k + 152441) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 457324) = 589824 * k + 228662 := by
    unfold C
    simp [show (1179648 * k + 457324) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 228662) = 294912 * k + 114331 := by
    unfold C
    simp [show (589824 * k + 228662) % 2 = 0 by omega]
    omega
  have h6 : C (294912 * k + 114331) = 884736 * k + 342994 := by
    unfold C
    simp [show (294912 * k + 114331) % 2 ≠ 0 by omega]
    omega
  have h7 : C (884736 * k + 342994) = 442368 * k + 171497 := by
    unfold C
    simp [show (884736 * k + 342994) % 2 = 0 by omega]
    omega
  have h8 : C (442368 * k + 171497) = 1327104 * k + 514492 := by
    unfold C
    simp [show (442368 * k + 171497) % 2 ≠ 0 by omega]
    omega
  have h9 : C (1327104 * k + 514492) = 663552 * k + 257246 := by
    unfold C
    simp [show (1327104 * k + 514492) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 257246) = 331776 * k + 128623 := by
    unfold C
    simp [show (663552 * k + 257246) % 2 = 0 by omega]
    omega
  have h11 : C (331776 * k + 128623) = 995328 * k + 385870 := by
    unfold C
    simp [show (331776 * k + 128623) % 2 ≠ 0 by omega]
    omega
  have h12 : C (995328 * k + 385870) = 497664 * k + 192935 := by
    unfold C
    simp [show (995328 * k + 385870) % 2 = 0 by omega]
    omega
  have h13 : C (497664 * k + 192935) = 1492992 * k + 578806 := by
    unfold C
    simp [show (497664 * k + 192935) % 2 ≠ 0 by omega]
    omega
  have h14 : C (1492992 * k + 578806) = 746496 * k + 289403 := by
    unfold C
    simp [show (1492992 * k + 578806) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 289403) = 2239488 * k + 868210 := by
    unfold C
    simp [show (746496 * k + 289403) % 2 ≠ 0 by omega]
    omega
  have h16 : C (2239488 * k + 868210) = 1119744 * k + 434105 := by
    unfold C
    simp [show (2239488 * k + 868210) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 434105) = 3359232 * k + 1302316 := by
    unfold C
    simp [show (1119744 * k + 434105) % 2 ≠ 0 by omega]
    omega
  have h18 : C (3359232 * k + 1302316) = 1679616 * k + 651158 := by
    unfold C
    simp [show (3359232 * k + 1302316) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 651158) = 839808 * k + 325579 := by
    unfold C
    simp [show (1679616 * k + 651158) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 325579) = 2519424 * k + 976738 := by
    unfold C
    simp [show (839808 * k + 325579) % 2 ≠ 0 by omega]
    omega
  have h21 : C (2519424 * k + 976738) = 1259712 * k + 488369 := by
    unfold C
    simp [show (2519424 * k + 976738) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 488369) = 3779136 * k + 1465108 := by
    unfold C
    simp [show (1259712 * k + 488369) % 2 ≠ 0 by omega]
    omega
  have h23 : C (3779136 * k + 1465108) = 1889568 * k + 732554 := by
    unfold C
    simp [show (3779136 * k + 1465108) % 2 = 0 by omega]
    omega
  have h24 : C (1889568 * k + 732554) = 944784 * k + 366277 := by
    unfold C
    simp [show (1889568 * k + 732554) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 366277) = 2834352 * k + 1098832 := by
    unfold C
    simp [show (944784 * k + 366277) % 2 ≠ 0 by omega]
    omega
  have h26 : C (2834352 * k + 1098832) = 1417176 * k + 549416 := by
    unfold C
    simp [show (2834352 * k + 1098832) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 549416) = 708588 * k + 274708 := by
    unfold C
    simp [show (1417176 * k + 549416) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 274708) = 354294 * k + 137354 := by
    unfold C
    simp [show (708588 * k + 274708) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 137354) = 177147 * k + 68677 := by
    unfold C
    simp [show (354294 * k + 137354) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 101627) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 101627))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_102095 : ∀ k : Nat,
    iterate (262144 * k + 102095) 29 = 177147 * k + 68993 ∧
      177147 * k + 68993 < 262144 * k + 102095 := by
  intro k
  have h1 : C (262144 * k + 102095) = 786432 * k + 306286 := by
    unfold C
    simp [show (262144 * k + 102095) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 306286) = 393216 * k + 153143 := by
    unfold C
    simp [show (786432 * k + 306286) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 153143) = 1179648 * k + 459430 := by
    unfold C
    simp [show (393216 * k + 153143) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 459430) = 589824 * k + 229715 := by
    unfold C
    simp [show (1179648 * k + 459430) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 229715) = 1769472 * k + 689146 := by
    unfold C
    simp [show (589824 * k + 229715) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 689146) = 884736 * k + 344573 := by
    unfold C
    simp [show (1769472 * k + 689146) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 344573) = 2654208 * k + 1033720 := by
    unfold C
    simp [show (884736 * k + 344573) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 1033720) = 1327104 * k + 516860 := by
    unfold C
    simp [show (2654208 * k + 1033720) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 516860) = 663552 * k + 258430 := by
    unfold C
    simp [show (1327104 * k + 516860) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 258430) = 331776 * k + 129215 := by
    unfold C
    simp [show (663552 * k + 258430) % 2 = 0 by omega]
    omega
  have h11 : C (331776 * k + 129215) = 995328 * k + 387646 := by
    unfold C
    simp [show (331776 * k + 129215) % 2 ≠ 0 by omega]
    omega
  have h12 : C (995328 * k + 387646) = 497664 * k + 193823 := by
    unfold C
    simp [show (995328 * k + 387646) % 2 = 0 by omega]
    omega
  have h13 : C (497664 * k + 193823) = 1492992 * k + 581470 := by
    unfold C
    simp [show (497664 * k + 193823) % 2 ≠ 0 by omega]
    omega
  have h14 : C (1492992 * k + 581470) = 746496 * k + 290735 := by
    unfold C
    simp [show (1492992 * k + 581470) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 290735) = 2239488 * k + 872206 := by
    unfold C
    simp [show (746496 * k + 290735) % 2 ≠ 0 by omega]
    omega
  have h16 : C (2239488 * k + 872206) = 1119744 * k + 436103 := by
    unfold C
    simp [show (2239488 * k + 872206) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 436103) = 3359232 * k + 1308310 := by
    unfold C
    simp [show (1119744 * k + 436103) % 2 ≠ 0 by omega]
    omega
  have h18 : C (3359232 * k + 1308310) = 1679616 * k + 654155 := by
    unfold C
    simp [show (3359232 * k + 1308310) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 654155) = 5038848 * k + 1962466 := by
    unfold C
    simp [show (1679616 * k + 654155) % 2 ≠ 0 by omega]
    omega
  have h20 : C (5038848 * k + 1962466) = 2519424 * k + 981233 := by
    unfold C
    simp [show (5038848 * k + 1962466) % 2 = 0 by omega]
    omega
  have h21 : C (2519424 * k + 981233) = 7558272 * k + 2943700 := by
    unfold C
    simp [show (2519424 * k + 981233) % 2 ≠ 0 by omega]
    omega
  have h22 : C (7558272 * k + 2943700) = 3779136 * k + 1471850 := by
    unfold C
    simp [show (7558272 * k + 2943700) % 2 = 0 by omega]
    omega
  have h23 : C (3779136 * k + 1471850) = 1889568 * k + 735925 := by
    unfold C
    simp [show (3779136 * k + 1471850) % 2 = 0 by omega]
    omega
  have h24 : C (1889568 * k + 735925) = 5668704 * k + 2207776 := by
    unfold C
    simp [show (1889568 * k + 735925) % 2 ≠ 0 by omega]
    omega
  have h25 : C (5668704 * k + 2207776) = 2834352 * k + 1103888 := by
    unfold C
    simp [show (5668704 * k + 2207776) % 2 = 0 by omega]
    omega
  have h26 : C (2834352 * k + 1103888) = 1417176 * k + 551944 := by
    unfold C
    simp [show (2834352 * k + 1103888) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 551944) = 708588 * k + 275972 := by
    unfold C
    simp [show (1417176 * k + 551944) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 275972) = 354294 * k + 137986 := by
    unfold C
    simp [show (708588 * k + 275972) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 137986) = 177147 * k + 68993 := by
    unfold C
    simp [show (354294 * k + 137986) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 102095) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 102095))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_102431 : ∀ k : Nat,
    iterate (262144 * k + 102431) 29 = 177147 * k + 69220 ∧
      177147 * k + 69220 < 262144 * k + 102431 := by
  intro k
  have h1 : C (262144 * k + 102431) = 786432 * k + 307294 := by
    unfold C
    simp [show (262144 * k + 102431) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 307294) = 393216 * k + 153647 := by
    unfold C
    simp [show (786432 * k + 307294) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 153647) = 1179648 * k + 460942 := by
    unfold C
    simp [show (393216 * k + 153647) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 460942) = 589824 * k + 230471 := by
    unfold C
    simp [show (1179648 * k + 460942) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 230471) = 1769472 * k + 691414 := by
    unfold C
    simp [show (589824 * k + 230471) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 691414) = 884736 * k + 345707 := by
    unfold C
    simp [show (1769472 * k + 691414) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 345707) = 2654208 * k + 1037122 := by
    unfold C
    simp [show (884736 * k + 345707) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 1037122) = 1327104 * k + 518561 := by
    unfold C
    simp [show (2654208 * k + 1037122) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 518561) = 3981312 * k + 1555684 := by
    unfold C
    simp [show (1327104 * k + 518561) % 2 ≠ 0 by omega]
    omega
  have h10 : C (3981312 * k + 1555684) = 1990656 * k + 777842 := by
    unfold C
    simp [show (3981312 * k + 1555684) % 2 = 0 by omega]
    omega
  have h11 : C (1990656 * k + 777842) = 995328 * k + 388921 := by
    unfold C
    simp [show (1990656 * k + 777842) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 388921) = 2985984 * k + 1166764 := by
    unfold C
    simp [show (995328 * k + 388921) % 2 ≠ 0 by omega]
    omega
  have h13 : C (2985984 * k + 1166764) = 1492992 * k + 583382 := by
    unfold C
    simp [show (2985984 * k + 1166764) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 583382) = 746496 * k + 291691 := by
    unfold C
    simp [show (1492992 * k + 583382) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 291691) = 2239488 * k + 875074 := by
    unfold C
    simp [show (746496 * k + 291691) % 2 ≠ 0 by omega]
    omega
  have h16 : C (2239488 * k + 875074) = 1119744 * k + 437537 := by
    unfold C
    simp [show (2239488 * k + 875074) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 437537) = 3359232 * k + 1312612 := by
    unfold C
    simp [show (1119744 * k + 437537) % 2 ≠ 0 by omega]
    omega
  have h18 : C (3359232 * k + 1312612) = 1679616 * k + 656306 := by
    unfold C
    simp [show (3359232 * k + 1312612) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 656306) = 839808 * k + 328153 := by
    unfold C
    simp [show (1679616 * k + 656306) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 328153) = 2519424 * k + 984460 := by
    unfold C
    simp [show (839808 * k + 328153) % 2 ≠ 0 by omega]
    omega
  have h21 : C (2519424 * k + 984460) = 1259712 * k + 492230 := by
    unfold C
    simp [show (2519424 * k + 984460) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 492230) = 629856 * k + 246115 := by
    unfold C
    simp [show (1259712 * k + 492230) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 246115) = 1889568 * k + 738346 := by
    unfold C
    simp [show (629856 * k + 246115) % 2 ≠ 0 by omega]
    omega
  have h24 : C (1889568 * k + 738346) = 944784 * k + 369173 := by
    unfold C
    simp [show (1889568 * k + 738346) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 369173) = 2834352 * k + 1107520 := by
    unfold C
    simp [show (944784 * k + 369173) % 2 ≠ 0 by omega]
    omega
  have h26 : C (2834352 * k + 1107520) = 1417176 * k + 553760 := by
    unfold C
    simp [show (2834352 * k + 1107520) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 553760) = 708588 * k + 276880 := by
    unfold C
    simp [show (1417176 * k + 553760) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 276880) = 354294 * k + 138440 := by
    unfold C
    simp [show (708588 * k + 276880) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 138440) = 177147 * k + 69220 := by
    unfold C
    simp [show (354294 * k + 138440) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 102431) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 102431))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_102511 : ∀ k : Nat,
    iterate (262144 * k + 102511) 29 = 177147 * k + 69274 ∧
      177147 * k + 69274 < 262144 * k + 102511 := by
  intro k
  have h1 : C (262144 * k + 102511) = 786432 * k + 307534 := by
    unfold C
    simp [show (262144 * k + 102511) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 307534) = 393216 * k + 153767 := by
    unfold C
    simp [show (786432 * k + 307534) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 153767) = 1179648 * k + 461302 := by
    unfold C
    simp [show (393216 * k + 153767) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 461302) = 589824 * k + 230651 := by
    unfold C
    simp [show (1179648 * k + 461302) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 230651) = 1769472 * k + 691954 := by
    unfold C
    simp [show (589824 * k + 230651) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 691954) = 884736 * k + 345977 := by
    unfold C
    simp [show (1769472 * k + 691954) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 345977) = 2654208 * k + 1037932 := by
    unfold C
    simp [show (884736 * k + 345977) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 1037932) = 1327104 * k + 518966 := by
    unfold C
    simp [show (2654208 * k + 1037932) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 518966) = 663552 * k + 259483 := by
    unfold C
    simp [show (1327104 * k + 518966) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 259483) = 1990656 * k + 778450 := by
    unfold C
    simp [show (663552 * k + 259483) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 778450) = 995328 * k + 389225 := by
    unfold C
    simp [show (1990656 * k + 778450) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 389225) = 2985984 * k + 1167676 := by
    unfold C
    simp [show (995328 * k + 389225) % 2 ≠ 0 by omega]
    omega
  have h13 : C (2985984 * k + 1167676) = 1492992 * k + 583838 := by
    unfold C
    simp [show (2985984 * k + 1167676) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 583838) = 746496 * k + 291919 := by
    unfold C
    simp [show (1492992 * k + 583838) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 291919) = 2239488 * k + 875758 := by
    unfold C
    simp [show (746496 * k + 291919) % 2 ≠ 0 by omega]
    omega
  have h16 : C (2239488 * k + 875758) = 1119744 * k + 437879 := by
    unfold C
    simp [show (2239488 * k + 875758) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 437879) = 3359232 * k + 1313638 := by
    unfold C
    simp [show (1119744 * k + 437879) % 2 ≠ 0 by omega]
    omega
  have h18 : C (3359232 * k + 1313638) = 1679616 * k + 656819 := by
    unfold C
    simp [show (3359232 * k + 1313638) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 656819) = 5038848 * k + 1970458 := by
    unfold C
    simp [show (1679616 * k + 656819) % 2 ≠ 0 by omega]
    omega
  have h20 : C (5038848 * k + 1970458) = 2519424 * k + 985229 := by
    unfold C
    simp [show (5038848 * k + 1970458) % 2 = 0 by omega]
    omega
  have h21 : C (2519424 * k + 985229) = 7558272 * k + 2955688 := by
    unfold C
    simp [show (2519424 * k + 985229) % 2 ≠ 0 by omega]
    omega
  have h22 : C (7558272 * k + 2955688) = 3779136 * k + 1477844 := by
    unfold C
    simp [show (7558272 * k + 2955688) % 2 = 0 by omega]
    omega
  have h23 : C (3779136 * k + 1477844) = 1889568 * k + 738922 := by
    unfold C
    simp [show (3779136 * k + 1477844) % 2 = 0 by omega]
    omega
  have h24 : C (1889568 * k + 738922) = 944784 * k + 369461 := by
    unfold C
    simp [show (1889568 * k + 738922) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 369461) = 2834352 * k + 1108384 := by
    unfold C
    simp [show (944784 * k + 369461) % 2 ≠ 0 by omega]
    omega
  have h26 : C (2834352 * k + 1108384) = 1417176 * k + 554192 := by
    unfold C
    simp [show (2834352 * k + 1108384) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 554192) = 708588 * k + 277096 := by
    unfold C
    simp [show (1417176 * k + 554192) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 277096) = 354294 * k + 138548 := by
    unfold C
    simp [show (708588 * k + 277096) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 138548) = 177147 * k + 69274 := by
    unfold C
    simp [show (354294 * k + 138548) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 102511) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 102511))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_102623 : ∀ k : Nat,
    iterate (262144 * k + 102623) 29 = 177147 * k + 69350 ∧
      177147 * k + 69350 < 262144 * k + 102623 := by
  intro k
  have h1 : C (262144 * k + 102623) = 786432 * k + 307870 := by
    unfold C
    simp [show (262144 * k + 102623) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 307870) = 393216 * k + 153935 := by
    unfold C
    simp [show (786432 * k + 307870) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 153935) = 1179648 * k + 461806 := by
    unfold C
    simp [show (393216 * k + 153935) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 461806) = 589824 * k + 230903 := by
    unfold C
    simp [show (1179648 * k + 461806) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 230903) = 1769472 * k + 692710 := by
    unfold C
    simp [show (589824 * k + 230903) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 692710) = 884736 * k + 346355 := by
    unfold C
    simp [show (1769472 * k + 692710) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 346355) = 2654208 * k + 1039066 := by
    unfold C
    simp [show (884736 * k + 346355) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 1039066) = 1327104 * k + 519533 := by
    unfold C
    simp [show (2654208 * k + 1039066) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 519533) = 3981312 * k + 1558600 := by
    unfold C
    simp [show (1327104 * k + 519533) % 2 ≠ 0 by omega]
    omega
  have h10 : C (3981312 * k + 1558600) = 1990656 * k + 779300 := by
    unfold C
    simp [show (3981312 * k + 1558600) % 2 = 0 by omega]
    omega
  have h11 : C (1990656 * k + 779300) = 995328 * k + 389650 := by
    unfold C
    simp [show (1990656 * k + 779300) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 389650) = 497664 * k + 194825 := by
    unfold C
    simp [show (995328 * k + 389650) % 2 = 0 by omega]
    omega
  have h13 : C (497664 * k + 194825) = 1492992 * k + 584476 := by
    unfold C
    simp [show (497664 * k + 194825) % 2 ≠ 0 by omega]
    omega
  have h14 : C (1492992 * k + 584476) = 746496 * k + 292238 := by
    unfold C
    simp [show (1492992 * k + 584476) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 292238) = 373248 * k + 146119 := by
    unfold C
    simp [show (746496 * k + 292238) % 2 = 0 by omega]
    omega
  have h16 : C (373248 * k + 146119) = 1119744 * k + 438358 := by
    unfold C
    simp [show (373248 * k + 146119) % 2 ≠ 0 by omega]
    omega
  have h17 : C (1119744 * k + 438358) = 559872 * k + 219179 := by
    unfold C
    simp [show (1119744 * k + 438358) % 2 = 0 by omega]
    omega
  have h18 : C (559872 * k + 219179) = 1679616 * k + 657538 := by
    unfold C
    simp [show (559872 * k + 219179) % 2 ≠ 0 by omega]
    omega
  have h19 : C (1679616 * k + 657538) = 839808 * k + 328769 := by
    unfold C
    simp [show (1679616 * k + 657538) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 328769) = 2519424 * k + 986308 := by
    unfold C
    simp [show (839808 * k + 328769) % 2 ≠ 0 by omega]
    omega
  have h21 : C (2519424 * k + 986308) = 1259712 * k + 493154 := by
    unfold C
    simp [show (2519424 * k + 986308) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 493154) = 629856 * k + 246577 := by
    unfold C
    simp [show (1259712 * k + 493154) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 246577) = 1889568 * k + 739732 := by
    unfold C
    simp [show (629856 * k + 246577) % 2 ≠ 0 by omega]
    omega
  have h24 : C (1889568 * k + 739732) = 944784 * k + 369866 := by
    unfold C
    simp [show (1889568 * k + 739732) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 369866) = 472392 * k + 184933 := by
    unfold C
    simp [show (944784 * k + 369866) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 184933) = 1417176 * k + 554800 := by
    unfold C
    simp [show (472392 * k + 184933) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 554800) = 708588 * k + 277400 := by
    unfold C
    simp [show (1417176 * k + 554800) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 277400) = 354294 * k + 138700 := by
    unfold C
    simp [show (708588 * k + 277400) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 138700) = 177147 * k + 69350 := by
    unfold C
    simp [show (354294 * k + 138700) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 102623) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 102623))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_103103 : ∀ k : Nat,
    iterate (262144 * k + 103103) 29 = 177147 * k + 69674 ∧
      177147 * k + 69674 < 262144 * k + 103103 := by
  intro k
  have h1 : C (262144 * k + 103103) = 786432 * k + 309310 := by
    unfold C
    simp [show (262144 * k + 103103) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 309310) = 393216 * k + 154655 := by
    unfold C
    simp [show (786432 * k + 309310) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 154655) = 1179648 * k + 463966 := by
    unfold C
    simp [show (393216 * k + 154655) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 463966) = 589824 * k + 231983 := by
    unfold C
    simp [show (1179648 * k + 463966) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 231983) = 1769472 * k + 695950 := by
    unfold C
    simp [show (589824 * k + 231983) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 695950) = 884736 * k + 347975 := by
    unfold C
    simp [show (1769472 * k + 695950) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 347975) = 2654208 * k + 1043926 := by
    unfold C
    simp [show (884736 * k + 347975) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 1043926) = 1327104 * k + 521963 := by
    unfold C
    simp [show (2654208 * k + 1043926) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 521963) = 3981312 * k + 1565890 := by
    unfold C
    simp [show (1327104 * k + 521963) % 2 ≠ 0 by omega]
    omega
  have h10 : C (3981312 * k + 1565890) = 1990656 * k + 782945 := by
    unfold C
    simp [show (3981312 * k + 1565890) % 2 = 0 by omega]
    omega
  have h11 : C (1990656 * k + 782945) = 5971968 * k + 2348836 := by
    unfold C
    simp [show (1990656 * k + 782945) % 2 ≠ 0 by omega]
    omega
  have h12 : C (5971968 * k + 2348836) = 2985984 * k + 1174418 := by
    unfold C
    simp [show (5971968 * k + 2348836) % 2 = 0 by omega]
    omega
  have h13 : C (2985984 * k + 1174418) = 1492992 * k + 587209 := by
    unfold C
    simp [show (2985984 * k + 1174418) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 587209) = 4478976 * k + 1761628 := by
    unfold C
    simp [show (1492992 * k + 587209) % 2 ≠ 0 by omega]
    omega
  have h15 : C (4478976 * k + 1761628) = 2239488 * k + 880814 := by
    unfold C
    simp [show (4478976 * k + 1761628) % 2 = 0 by omega]
    omega
  have h16 : C (2239488 * k + 880814) = 1119744 * k + 440407 := by
    unfold C
    simp [show (2239488 * k + 880814) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 440407) = 3359232 * k + 1321222 := by
    unfold C
    simp [show (1119744 * k + 440407) % 2 ≠ 0 by omega]
    omega
  have h18 : C (3359232 * k + 1321222) = 1679616 * k + 660611 := by
    unfold C
    simp [show (3359232 * k + 1321222) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 660611) = 5038848 * k + 1981834 := by
    unfold C
    simp [show (1679616 * k + 660611) % 2 ≠ 0 by omega]
    omega
  have h20 : C (5038848 * k + 1981834) = 2519424 * k + 990917 := by
    unfold C
    simp [show (5038848 * k + 1981834) % 2 = 0 by omega]
    omega
  have h21 : C (2519424 * k + 990917) = 7558272 * k + 2972752 := by
    unfold C
    simp [show (2519424 * k + 990917) % 2 ≠ 0 by omega]
    omega
  have h22 : C (7558272 * k + 2972752) = 3779136 * k + 1486376 := by
    unfold C
    simp [show (7558272 * k + 2972752) % 2 = 0 by omega]
    omega
  have h23 : C (3779136 * k + 1486376) = 1889568 * k + 743188 := by
    unfold C
    simp [show (3779136 * k + 1486376) % 2 = 0 by omega]
    omega
  have h24 : C (1889568 * k + 743188) = 944784 * k + 371594 := by
    unfold C
    simp [show (1889568 * k + 743188) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 371594) = 472392 * k + 185797 := by
    unfold C
    simp [show (944784 * k + 371594) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 185797) = 1417176 * k + 557392 := by
    unfold C
    simp [show (472392 * k + 185797) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 557392) = 708588 * k + 278696 := by
    unfold C
    simp [show (1417176 * k + 557392) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 278696) = 354294 * k + 139348 := by
    unfold C
    simp [show (708588 * k + 278696) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 139348) = 177147 * k + 69674 := by
    unfold C
    simp [show (354294 * k + 139348) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 103103) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 103103))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_103391 : ∀ k : Nat,
    iterate (262144 * k + 103391) 29 = 177147 * k + 69869 ∧
      177147 * k + 69869 < 262144 * k + 103391 := by
  intro k
  have h1 : C (262144 * k + 103391) = 786432 * k + 310174 := by
    unfold C
    simp [show (262144 * k + 103391) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 310174) = 393216 * k + 155087 := by
    unfold C
    simp [show (786432 * k + 310174) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 155087) = 1179648 * k + 465262 := by
    unfold C
    simp [show (393216 * k + 155087) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 465262) = 589824 * k + 232631 := by
    unfold C
    simp [show (1179648 * k + 465262) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 232631) = 1769472 * k + 697894 := by
    unfold C
    simp [show (589824 * k + 232631) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 697894) = 884736 * k + 348947 := by
    unfold C
    simp [show (1769472 * k + 697894) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 348947) = 2654208 * k + 1046842 := by
    unfold C
    simp [show (884736 * k + 348947) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 1046842) = 1327104 * k + 523421 := by
    unfold C
    simp [show (2654208 * k + 1046842) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 523421) = 3981312 * k + 1570264 := by
    unfold C
    simp [show (1327104 * k + 523421) % 2 ≠ 0 by omega]
    omega
  have h10 : C (3981312 * k + 1570264) = 1990656 * k + 785132 := by
    unfold C
    simp [show (3981312 * k + 1570264) % 2 = 0 by omega]
    omega
  have h11 : C (1990656 * k + 785132) = 995328 * k + 392566 := by
    unfold C
    simp [show (1990656 * k + 785132) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 392566) = 497664 * k + 196283 := by
    unfold C
    simp [show (995328 * k + 392566) % 2 = 0 by omega]
    omega
  have h13 : C (497664 * k + 196283) = 1492992 * k + 588850 := by
    unfold C
    simp [show (497664 * k + 196283) % 2 ≠ 0 by omega]
    omega
  have h14 : C (1492992 * k + 588850) = 746496 * k + 294425 := by
    unfold C
    simp [show (1492992 * k + 588850) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 294425) = 2239488 * k + 883276 := by
    unfold C
    simp [show (746496 * k + 294425) % 2 ≠ 0 by omega]
    omega
  have h16 : C (2239488 * k + 883276) = 1119744 * k + 441638 := by
    unfold C
    simp [show (2239488 * k + 883276) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 441638) = 559872 * k + 220819 := by
    unfold C
    simp [show (1119744 * k + 441638) % 2 = 0 by omega]
    omega
  have h18 : C (559872 * k + 220819) = 1679616 * k + 662458 := by
    unfold C
    simp [show (559872 * k + 220819) % 2 ≠ 0 by omega]
    omega
  have h19 : C (1679616 * k + 662458) = 839808 * k + 331229 := by
    unfold C
    simp [show (1679616 * k + 662458) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 331229) = 2519424 * k + 993688 := by
    unfold C
    simp [show (839808 * k + 331229) % 2 ≠ 0 by omega]
    omega
  have h21 : C (2519424 * k + 993688) = 1259712 * k + 496844 := by
    unfold C
    simp [show (2519424 * k + 993688) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 496844) = 629856 * k + 248422 := by
    unfold C
    simp [show (1259712 * k + 496844) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 248422) = 314928 * k + 124211 := by
    unfold C
    simp [show (629856 * k + 248422) % 2 = 0 by omega]
    omega
  have h24 : C (314928 * k + 124211) = 944784 * k + 372634 := by
    unfold C
    simp [show (314928 * k + 124211) % 2 ≠ 0 by omega]
    omega
  have h25 : C (944784 * k + 372634) = 472392 * k + 186317 := by
    unfold C
    simp [show (944784 * k + 372634) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 186317) = 1417176 * k + 558952 := by
    unfold C
    simp [show (472392 * k + 186317) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 558952) = 708588 * k + 279476 := by
    unfold C
    simp [show (1417176 * k + 558952) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 279476) = 354294 * k + 139738 := by
    unfold C
    simp [show (708588 * k + 279476) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 139738) = 177147 * k + 69869 := by
    unfold C
    simp [show (354294 * k + 139738) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 103391) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 103391))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_104415 : ∀ k : Nat,
    iterate (262144 * k + 104415) 29 = 177147 * k + 70561 ∧
      177147 * k + 70561 < 262144 * k + 104415 := by
  intro k
  have h1 : C (262144 * k + 104415) = 786432 * k + 313246 := by
    unfold C
    simp [show (262144 * k + 104415) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 313246) = 393216 * k + 156623 := by
    unfold C
    simp [show (786432 * k + 313246) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 156623) = 1179648 * k + 469870 := by
    unfold C
    simp [show (393216 * k + 156623) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 469870) = 589824 * k + 234935 := by
    unfold C
    simp [show (1179648 * k + 469870) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 234935) = 1769472 * k + 704806 := by
    unfold C
    simp [show (589824 * k + 234935) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 704806) = 884736 * k + 352403 := by
    unfold C
    simp [show (1769472 * k + 704806) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 352403) = 2654208 * k + 1057210 := by
    unfold C
    simp [show (884736 * k + 352403) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 1057210) = 1327104 * k + 528605 := by
    unfold C
    simp [show (2654208 * k + 1057210) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 528605) = 3981312 * k + 1585816 := by
    unfold C
    simp [show (1327104 * k + 528605) % 2 ≠ 0 by omega]
    omega
  have h10 : C (3981312 * k + 1585816) = 1990656 * k + 792908 := by
    unfold C
    simp [show (3981312 * k + 1585816) % 2 = 0 by omega]
    omega
  have h11 : C (1990656 * k + 792908) = 995328 * k + 396454 := by
    unfold C
    simp [show (1990656 * k + 792908) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 396454) = 497664 * k + 198227 := by
    unfold C
    simp [show (995328 * k + 396454) % 2 = 0 by omega]
    omega
  have h13 : C (497664 * k + 198227) = 1492992 * k + 594682 := by
    unfold C
    simp [show (497664 * k + 198227) % 2 ≠ 0 by omega]
    omega
  have h14 : C (1492992 * k + 594682) = 746496 * k + 297341 := by
    unfold C
    simp [show (1492992 * k + 594682) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 297341) = 2239488 * k + 892024 := by
    unfold C
    simp [show (746496 * k + 297341) % 2 ≠ 0 by omega]
    omega
  have h16 : C (2239488 * k + 892024) = 1119744 * k + 446012 := by
    unfold C
    simp [show (2239488 * k + 892024) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 446012) = 559872 * k + 223006 := by
    unfold C
    simp [show (1119744 * k + 446012) % 2 = 0 by omega]
    omega
  have h18 : C (559872 * k + 223006) = 279936 * k + 111503 := by
    unfold C
    simp [show (559872 * k + 223006) % 2 = 0 by omega]
    omega
  have h19 : C (279936 * k + 111503) = 839808 * k + 334510 := by
    unfold C
    simp [show (279936 * k + 111503) % 2 ≠ 0 by omega]
    omega
  have h20 : C (839808 * k + 334510) = 419904 * k + 167255 := by
    unfold C
    simp [show (839808 * k + 334510) % 2 = 0 by omega]
    omega
  have h21 : C (419904 * k + 167255) = 1259712 * k + 501766 := by
    unfold C
    simp [show (419904 * k + 167255) % 2 ≠ 0 by omega]
    omega
  have h22 : C (1259712 * k + 501766) = 629856 * k + 250883 := by
    unfold C
    simp [show (1259712 * k + 501766) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 250883) = 1889568 * k + 752650 := by
    unfold C
    simp [show (629856 * k + 250883) % 2 ≠ 0 by omega]
    omega
  have h24 : C (1889568 * k + 752650) = 944784 * k + 376325 := by
    unfold C
    simp [show (1889568 * k + 752650) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 376325) = 2834352 * k + 1128976 := by
    unfold C
    simp [show (944784 * k + 376325) % 2 ≠ 0 by omega]
    omega
  have h26 : C (2834352 * k + 1128976) = 1417176 * k + 564488 := by
    unfold C
    simp [show (2834352 * k + 1128976) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 564488) = 708588 * k + 282244 := by
    unfold C
    simp [show (1417176 * k + 564488) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 282244) = 354294 * k + 141122 := by
    unfold C
    simp [show (708588 * k + 282244) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 141122) = 177147 * k + 70561 := by
    unfold C
    simp [show (354294 * k + 141122) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 104415) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 104415))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_104447 : ∀ k : Nat,
    iterate (262144 * k + 104447) 29 = 177147 * k + 70582 ∧
      177147 * k + 70582 < 262144 * k + 104447 := by
  intro k
  have h1 : C (262144 * k + 104447) = 786432 * k + 313342 := by
    unfold C
    simp [show (262144 * k + 104447) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 313342) = 393216 * k + 156671 := by
    unfold C
    simp [show (786432 * k + 313342) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 156671) = 1179648 * k + 470014 := by
    unfold C
    simp [show (393216 * k + 156671) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 470014) = 589824 * k + 235007 := by
    unfold C
    simp [show (1179648 * k + 470014) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 235007) = 1769472 * k + 705022 := by
    unfold C
    simp [show (589824 * k + 235007) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 705022) = 884736 * k + 352511 := by
    unfold C
    simp [show (1769472 * k + 705022) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 352511) = 2654208 * k + 1057534 := by
    unfold C
    simp [show (884736 * k + 352511) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 1057534) = 1327104 * k + 528767 := by
    unfold C
    simp [show (2654208 * k + 1057534) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 528767) = 3981312 * k + 1586302 := by
    unfold C
    simp [show (1327104 * k + 528767) % 2 ≠ 0 by omega]
    omega
  have h10 : C (3981312 * k + 1586302) = 1990656 * k + 793151 := by
    unfold C
    simp [show (3981312 * k + 1586302) % 2 = 0 by omega]
    omega
  have h11 : C (1990656 * k + 793151) = 5971968 * k + 2379454 := by
    unfold C
    simp [show (1990656 * k + 793151) % 2 ≠ 0 by omega]
    omega
  have h12 : C (5971968 * k + 2379454) = 2985984 * k + 1189727 := by
    unfold C
    simp [show (5971968 * k + 2379454) % 2 = 0 by omega]
    omega
  have h13 : C (2985984 * k + 1189727) = 8957952 * k + 3569182 := by
    unfold C
    simp [show (2985984 * k + 1189727) % 2 ≠ 0 by omega]
    omega
  have h14 : C (8957952 * k + 3569182) = 4478976 * k + 1784591 := by
    unfold C
    simp [show (8957952 * k + 3569182) % 2 = 0 by omega]
    omega
  have h15 : C (4478976 * k + 1784591) = 13436928 * k + 5353774 := by
    unfold C
    simp [show (4478976 * k + 1784591) % 2 ≠ 0 by omega]
    omega
  have h16 : C (13436928 * k + 5353774) = 6718464 * k + 2676887 := by
    unfold C
    simp [show (13436928 * k + 5353774) % 2 = 0 by omega]
    omega
  have h17 : C (6718464 * k + 2676887) = 20155392 * k + 8030662 := by
    unfold C
    simp [show (6718464 * k + 2676887) % 2 ≠ 0 by omega]
    omega
  have h18 : C (20155392 * k + 8030662) = 10077696 * k + 4015331 := by
    unfold C
    simp [show (20155392 * k + 8030662) % 2 = 0 by omega]
    omega
  have h19 : C (10077696 * k + 4015331) = 30233088 * k + 12045994 := by
    unfold C
    simp [show (10077696 * k + 4015331) % 2 ≠ 0 by omega]
    omega
  have h20 : C (30233088 * k + 12045994) = 15116544 * k + 6022997 := by
    unfold C
    simp [show (30233088 * k + 12045994) % 2 = 0 by omega]
    omega
  have h21 : C (15116544 * k + 6022997) = 45349632 * k + 18068992 := by
    unfold C
    simp [show (15116544 * k + 6022997) % 2 ≠ 0 by omega]
    omega
  have h22 : C (45349632 * k + 18068992) = 22674816 * k + 9034496 := by
    unfold C
    simp [show (45349632 * k + 18068992) % 2 = 0 by omega]
    omega
  have h23 : C (22674816 * k + 9034496) = 11337408 * k + 4517248 := by
    unfold C
    simp [show (22674816 * k + 9034496) % 2 = 0 by omega]
    omega
  have h24 : C (11337408 * k + 4517248) = 5668704 * k + 2258624 := by
    unfold C
    simp [show (11337408 * k + 4517248) % 2 = 0 by omega]
    omega
  have h25 : C (5668704 * k + 2258624) = 2834352 * k + 1129312 := by
    unfold C
    simp [show (5668704 * k + 2258624) % 2 = 0 by omega]
    omega
  have h26 : C (2834352 * k + 1129312) = 1417176 * k + 564656 := by
    unfold C
    simp [show (2834352 * k + 1129312) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 564656) = 708588 * k + 282328 := by
    unfold C
    simp [show (1417176 * k + 564656) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 282328) = 354294 * k + 141164 := by
    unfold C
    simp [show (708588 * k + 282328) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 141164) = 177147 * k + 70582 := by
    unfold C
    simp [show (354294 * k + 141164) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 104447) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 104447))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_104495 : ∀ k : Nat,
    iterate (262144 * k + 104495) 29 = 177147 * k + 70615 ∧
      177147 * k + 70615 < 262144 * k + 104495 := by
  intro k
  have h1 : C (262144 * k + 104495) = 786432 * k + 313486 := by
    unfold C
    simp [show (262144 * k + 104495) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 313486) = 393216 * k + 156743 := by
    unfold C
    simp [show (786432 * k + 313486) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 156743) = 1179648 * k + 470230 := by
    unfold C
    simp [show (393216 * k + 156743) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 470230) = 589824 * k + 235115 := by
    unfold C
    simp [show (1179648 * k + 470230) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 235115) = 1769472 * k + 705346 := by
    unfold C
    simp [show (589824 * k + 235115) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 705346) = 884736 * k + 352673 := by
    unfold C
    simp [show (1769472 * k + 705346) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 352673) = 2654208 * k + 1058020 := by
    unfold C
    simp [show (884736 * k + 352673) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 1058020) = 1327104 * k + 529010 := by
    unfold C
    simp [show (2654208 * k + 1058020) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 529010) = 663552 * k + 264505 := by
    unfold C
    simp [show (1327104 * k + 529010) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 264505) = 1990656 * k + 793516 := by
    unfold C
    simp [show (663552 * k + 264505) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 793516) = 995328 * k + 396758 := by
    unfold C
    simp [show (1990656 * k + 793516) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 396758) = 497664 * k + 198379 := by
    unfold C
    simp [show (995328 * k + 396758) % 2 = 0 by omega]
    omega
  have h13 : C (497664 * k + 198379) = 1492992 * k + 595138 := by
    unfold C
    simp [show (497664 * k + 198379) % 2 ≠ 0 by omega]
    omega
  have h14 : C (1492992 * k + 595138) = 746496 * k + 297569 := by
    unfold C
    simp [show (1492992 * k + 595138) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 297569) = 2239488 * k + 892708 := by
    unfold C
    simp [show (746496 * k + 297569) % 2 ≠ 0 by omega]
    omega
  have h16 : C (2239488 * k + 892708) = 1119744 * k + 446354 := by
    unfold C
    simp [show (2239488 * k + 892708) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 446354) = 559872 * k + 223177 := by
    unfold C
    simp [show (1119744 * k + 446354) % 2 = 0 by omega]
    omega
  have h18 : C (559872 * k + 223177) = 1679616 * k + 669532 := by
    unfold C
    simp [show (559872 * k + 223177) % 2 ≠ 0 by omega]
    omega
  have h19 : C (1679616 * k + 669532) = 839808 * k + 334766 := by
    unfold C
    simp [show (1679616 * k + 669532) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 334766) = 419904 * k + 167383 := by
    unfold C
    simp [show (839808 * k + 334766) % 2 = 0 by omega]
    omega
  have h21 : C (419904 * k + 167383) = 1259712 * k + 502150 := by
    unfold C
    simp [show (419904 * k + 167383) % 2 ≠ 0 by omega]
    omega
  have h22 : C (1259712 * k + 502150) = 629856 * k + 251075 := by
    unfold C
    simp [show (1259712 * k + 502150) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 251075) = 1889568 * k + 753226 := by
    unfold C
    simp [show (629856 * k + 251075) % 2 ≠ 0 by omega]
    omega
  have h24 : C (1889568 * k + 753226) = 944784 * k + 376613 := by
    unfold C
    simp [show (1889568 * k + 753226) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 376613) = 2834352 * k + 1129840 := by
    unfold C
    simp [show (944784 * k + 376613) % 2 ≠ 0 by omega]
    omega
  have h26 : C (2834352 * k + 1129840) = 1417176 * k + 564920 := by
    unfold C
    simp [show (2834352 * k + 1129840) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 564920) = 708588 * k + 282460 := by
    unfold C
    simp [show (1417176 * k + 564920) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 282460) = 354294 * k + 141230 := by
    unfold C
    simp [show (708588 * k + 282460) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 141230) = 177147 * k + 70615 := by
    unfold C
    simp [show (354294 * k + 141230) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 104495) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 104495))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_104615 : ∀ k : Nat,
    iterate (262144 * k + 104615) 29 = 177147 * k + 70696 ∧
      177147 * k + 70696 < 262144 * k + 104615 := by
  intro k
  have h1 : C (262144 * k + 104615) = 786432 * k + 313846 := by
    unfold C
    simp [show (262144 * k + 104615) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 313846) = 393216 * k + 156923 := by
    unfold C
    simp [show (786432 * k + 313846) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 156923) = 1179648 * k + 470770 := by
    unfold C
    simp [show (393216 * k + 156923) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 470770) = 589824 * k + 235385 := by
    unfold C
    simp [show (1179648 * k + 470770) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 235385) = 1769472 * k + 706156 := by
    unfold C
    simp [show (589824 * k + 235385) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 706156) = 884736 * k + 353078 := by
    unfold C
    simp [show (1769472 * k + 706156) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 353078) = 442368 * k + 176539 := by
    unfold C
    simp [show (884736 * k + 353078) % 2 = 0 by omega]
    omega
  have h8 : C (442368 * k + 176539) = 1327104 * k + 529618 := by
    unfold C
    simp [show (442368 * k + 176539) % 2 ≠ 0 by omega]
    omega
  have h9 : C (1327104 * k + 529618) = 663552 * k + 264809 := by
    unfold C
    simp [show (1327104 * k + 529618) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 264809) = 1990656 * k + 794428 := by
    unfold C
    simp [show (663552 * k + 264809) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 794428) = 995328 * k + 397214 := by
    unfold C
    simp [show (1990656 * k + 794428) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 397214) = 497664 * k + 198607 := by
    unfold C
    simp [show (995328 * k + 397214) % 2 = 0 by omega]
    omega
  have h13 : C (497664 * k + 198607) = 1492992 * k + 595822 := by
    unfold C
    simp [show (497664 * k + 198607) % 2 ≠ 0 by omega]
    omega
  have h14 : C (1492992 * k + 595822) = 746496 * k + 297911 := by
    unfold C
    simp [show (1492992 * k + 595822) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 297911) = 2239488 * k + 893734 := by
    unfold C
    simp [show (746496 * k + 297911) % 2 ≠ 0 by omega]
    omega
  have h16 : C (2239488 * k + 893734) = 1119744 * k + 446867 := by
    unfold C
    simp [show (2239488 * k + 893734) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 446867) = 3359232 * k + 1340602 := by
    unfold C
    simp [show (1119744 * k + 446867) % 2 ≠ 0 by omega]
    omega
  have h18 : C (3359232 * k + 1340602) = 1679616 * k + 670301 := by
    unfold C
    simp [show (3359232 * k + 1340602) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 670301) = 5038848 * k + 2010904 := by
    unfold C
    simp [show (1679616 * k + 670301) % 2 ≠ 0 by omega]
    omega
  have h20 : C (5038848 * k + 2010904) = 2519424 * k + 1005452 := by
    unfold C
    simp [show (5038848 * k + 2010904) % 2 = 0 by omega]
    omega
  have h21 : C (2519424 * k + 1005452) = 1259712 * k + 502726 := by
    unfold C
    simp [show (2519424 * k + 1005452) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 502726) = 629856 * k + 251363 := by
    unfold C
    simp [show (1259712 * k + 502726) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 251363) = 1889568 * k + 754090 := by
    unfold C
    simp [show (629856 * k + 251363) % 2 ≠ 0 by omega]
    omega
  have h24 : C (1889568 * k + 754090) = 944784 * k + 377045 := by
    unfold C
    simp [show (1889568 * k + 754090) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 377045) = 2834352 * k + 1131136 := by
    unfold C
    simp [show (944784 * k + 377045) % 2 ≠ 0 by omega]
    omega
  have h26 : C (2834352 * k + 1131136) = 1417176 * k + 565568 := by
    unfold C
    simp [show (2834352 * k + 1131136) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 565568) = 708588 * k + 282784 := by
    unfold C
    simp [show (1417176 * k + 565568) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 282784) = 354294 * k + 141392 := by
    unfold C
    simp [show (708588 * k + 282784) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 141392) = 177147 * k + 70696 := by
    unfold C
    simp [show (354294 * k + 141392) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 104615) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 104615))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_104959 : ∀ k : Nat,
    iterate (262144 * k + 104959) 29 = 177147 * k + 70928 ∧
      177147 * k + 70928 < 262144 * k + 104959 := by
  intro k
  have h1 : C (262144 * k + 104959) = 786432 * k + 314878 := by
    unfold C
    simp [show (262144 * k + 104959) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 314878) = 393216 * k + 157439 := by
    unfold C
    simp [show (786432 * k + 314878) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 157439) = 1179648 * k + 472318 := by
    unfold C
    simp [show (393216 * k + 157439) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 472318) = 589824 * k + 236159 := by
    unfold C
    simp [show (1179648 * k + 472318) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 236159) = 1769472 * k + 708478 := by
    unfold C
    simp [show (589824 * k + 236159) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 708478) = 884736 * k + 354239 := by
    unfold C
    simp [show (1769472 * k + 708478) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 354239) = 2654208 * k + 1062718 := by
    unfold C
    simp [show (884736 * k + 354239) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 1062718) = 1327104 * k + 531359 := by
    unfold C
    simp [show (2654208 * k + 1062718) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 531359) = 3981312 * k + 1594078 := by
    unfold C
    simp [show (1327104 * k + 531359) % 2 ≠ 0 by omega]
    omega
  have h10 : C (3981312 * k + 1594078) = 1990656 * k + 797039 := by
    unfold C
    simp [show (3981312 * k + 1594078) % 2 = 0 by omega]
    omega
  have h11 : C (1990656 * k + 797039) = 5971968 * k + 2391118 := by
    unfold C
    simp [show (1990656 * k + 797039) % 2 ≠ 0 by omega]
    omega
  have h12 : C (5971968 * k + 2391118) = 2985984 * k + 1195559 := by
    unfold C
    simp [show (5971968 * k + 2391118) % 2 = 0 by omega]
    omega
  have h13 : C (2985984 * k + 1195559) = 8957952 * k + 3586678 := by
    unfold C
    simp [show (2985984 * k + 1195559) % 2 ≠ 0 by omega]
    omega
  have h14 : C (8957952 * k + 3586678) = 4478976 * k + 1793339 := by
    unfold C
    simp [show (8957952 * k + 3586678) % 2 = 0 by omega]
    omega
  have h15 : C (4478976 * k + 1793339) = 13436928 * k + 5380018 := by
    unfold C
    simp [show (4478976 * k + 1793339) % 2 ≠ 0 by omega]
    omega
  have h16 : C (13436928 * k + 5380018) = 6718464 * k + 2690009 := by
    unfold C
    simp [show (13436928 * k + 5380018) % 2 = 0 by omega]
    omega
  have h17 : C (6718464 * k + 2690009) = 20155392 * k + 8070028 := by
    unfold C
    simp [show (6718464 * k + 2690009) % 2 ≠ 0 by omega]
    omega
  have h18 : C (20155392 * k + 8070028) = 10077696 * k + 4035014 := by
    unfold C
    simp [show (20155392 * k + 8070028) % 2 = 0 by omega]
    omega
  have h19 : C (10077696 * k + 4035014) = 5038848 * k + 2017507 := by
    unfold C
    simp [show (10077696 * k + 4035014) % 2 = 0 by omega]
    omega
  have h20 : C (5038848 * k + 2017507) = 15116544 * k + 6052522 := by
    unfold C
    simp [show (5038848 * k + 2017507) % 2 ≠ 0 by omega]
    omega
  have h21 : C (15116544 * k + 6052522) = 7558272 * k + 3026261 := by
    unfold C
    simp [show (15116544 * k + 6052522) % 2 = 0 by omega]
    omega
  have h22 : C (7558272 * k + 3026261) = 22674816 * k + 9078784 := by
    unfold C
    simp [show (7558272 * k + 3026261) % 2 ≠ 0 by omega]
    omega
  have h23 : C (22674816 * k + 9078784) = 11337408 * k + 4539392 := by
    unfold C
    simp [show (22674816 * k + 9078784) % 2 = 0 by omega]
    omega
  have h24 : C (11337408 * k + 4539392) = 5668704 * k + 2269696 := by
    unfold C
    simp [show (11337408 * k + 4539392) % 2 = 0 by omega]
    omega
  have h25 : C (5668704 * k + 2269696) = 2834352 * k + 1134848 := by
    unfold C
    simp [show (5668704 * k + 2269696) % 2 = 0 by omega]
    omega
  have h26 : C (2834352 * k + 1134848) = 1417176 * k + 567424 := by
    unfold C
    simp [show (2834352 * k + 1134848) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 567424) = 708588 * k + 283712 := by
    unfold C
    simp [show (1417176 * k + 567424) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 283712) = 354294 * k + 141856 := by
    unfold C
    simp [show (708588 * k + 283712) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 141856) = 177147 * k + 70928 := by
    unfold C
    simp [show (354294 * k + 141856) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 104959) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 104959))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_105007 : ∀ k : Nat,
    iterate (262144 * k + 105007) 29 = 177147 * k + 70961 ∧
      177147 * k + 70961 < 262144 * k + 105007 := by
  intro k
  have h1 : C (262144 * k + 105007) = 786432 * k + 315022 := by
    unfold C
    simp [show (262144 * k + 105007) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 315022) = 393216 * k + 157511 := by
    unfold C
    simp [show (786432 * k + 315022) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 157511) = 1179648 * k + 472534 := by
    unfold C
    simp [show (393216 * k + 157511) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 472534) = 589824 * k + 236267 := by
    unfold C
    simp [show (1179648 * k + 472534) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 236267) = 1769472 * k + 708802 := by
    unfold C
    simp [show (589824 * k + 236267) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 708802) = 884736 * k + 354401 := by
    unfold C
    simp [show (1769472 * k + 708802) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 354401) = 2654208 * k + 1063204 := by
    unfold C
    simp [show (884736 * k + 354401) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 1063204) = 1327104 * k + 531602 := by
    unfold C
    simp [show (2654208 * k + 1063204) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 531602) = 663552 * k + 265801 := by
    unfold C
    simp [show (1327104 * k + 531602) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 265801) = 1990656 * k + 797404 := by
    unfold C
    simp [show (663552 * k + 265801) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 797404) = 995328 * k + 398702 := by
    unfold C
    simp [show (1990656 * k + 797404) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 398702) = 497664 * k + 199351 := by
    unfold C
    simp [show (995328 * k + 398702) % 2 = 0 by omega]
    omega
  have h13 : C (497664 * k + 199351) = 1492992 * k + 598054 := by
    unfold C
    simp [show (497664 * k + 199351) % 2 ≠ 0 by omega]
    omega
  have h14 : C (1492992 * k + 598054) = 746496 * k + 299027 := by
    unfold C
    simp [show (1492992 * k + 598054) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 299027) = 2239488 * k + 897082 := by
    unfold C
    simp [show (746496 * k + 299027) % 2 ≠ 0 by omega]
    omega
  have h16 : C (2239488 * k + 897082) = 1119744 * k + 448541 := by
    unfold C
    simp [show (2239488 * k + 897082) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 448541) = 3359232 * k + 1345624 := by
    unfold C
    simp [show (1119744 * k + 448541) % 2 ≠ 0 by omega]
    omega
  have h18 : C (3359232 * k + 1345624) = 1679616 * k + 672812 := by
    unfold C
    simp [show (3359232 * k + 1345624) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 672812) = 839808 * k + 336406 := by
    unfold C
    simp [show (1679616 * k + 672812) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 336406) = 419904 * k + 168203 := by
    unfold C
    simp [show (839808 * k + 336406) % 2 = 0 by omega]
    omega
  have h21 : C (419904 * k + 168203) = 1259712 * k + 504610 := by
    unfold C
    simp [show (419904 * k + 168203) % 2 ≠ 0 by omega]
    omega
  have h22 : C (1259712 * k + 504610) = 629856 * k + 252305 := by
    unfold C
    simp [show (1259712 * k + 504610) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 252305) = 1889568 * k + 756916 := by
    unfold C
    simp [show (629856 * k + 252305) % 2 ≠ 0 by omega]
    omega
  have h24 : C (1889568 * k + 756916) = 944784 * k + 378458 := by
    unfold C
    simp [show (1889568 * k + 756916) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 378458) = 472392 * k + 189229 := by
    unfold C
    simp [show (944784 * k + 378458) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 189229) = 1417176 * k + 567688 := by
    unfold C
    simp [show (472392 * k + 189229) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 567688) = 708588 * k + 283844 := by
    unfold C
    simp [show (1417176 * k + 567688) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 283844) = 354294 * k + 141922 := by
    unfold C
    simp [show (708588 * k + 283844) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 141922) = 177147 * k + 70961 := by
    unfold C
    simp [show (354294 * k + 141922) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 105007) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 105007))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_105127 : ∀ k : Nat,
    iterate (262144 * k + 105127) 29 = 177147 * k + 71042 ∧
      177147 * k + 71042 < 262144 * k + 105127 := by
  intro k
  have h1 : C (262144 * k + 105127) = 786432 * k + 315382 := by
    unfold C
    simp [show (262144 * k + 105127) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 315382) = 393216 * k + 157691 := by
    unfold C
    simp [show (786432 * k + 315382) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 157691) = 1179648 * k + 473074 := by
    unfold C
    simp [show (393216 * k + 157691) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 473074) = 589824 * k + 236537 := by
    unfold C
    simp [show (1179648 * k + 473074) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 236537) = 1769472 * k + 709612 := by
    unfold C
    simp [show (589824 * k + 236537) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 709612) = 884736 * k + 354806 := by
    unfold C
    simp [show (1769472 * k + 709612) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 354806) = 442368 * k + 177403 := by
    unfold C
    simp [show (884736 * k + 354806) % 2 = 0 by omega]
    omega
  have h8 : C (442368 * k + 177403) = 1327104 * k + 532210 := by
    unfold C
    simp [show (442368 * k + 177403) % 2 ≠ 0 by omega]
    omega
  have h9 : C (1327104 * k + 532210) = 663552 * k + 266105 := by
    unfold C
    simp [show (1327104 * k + 532210) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 266105) = 1990656 * k + 798316 := by
    unfold C
    simp [show (663552 * k + 266105) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 798316) = 995328 * k + 399158 := by
    unfold C
    simp [show (1990656 * k + 798316) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 399158) = 497664 * k + 199579 := by
    unfold C
    simp [show (995328 * k + 399158) % 2 = 0 by omega]
    omega
  have h13 : C (497664 * k + 199579) = 1492992 * k + 598738 := by
    unfold C
    simp [show (497664 * k + 199579) % 2 ≠ 0 by omega]
    omega
  have h14 : C (1492992 * k + 598738) = 746496 * k + 299369 := by
    unfold C
    simp [show (1492992 * k + 598738) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 299369) = 2239488 * k + 898108 := by
    unfold C
    simp [show (746496 * k + 299369) % 2 ≠ 0 by omega]
    omega
  have h16 : C (2239488 * k + 898108) = 1119744 * k + 449054 := by
    unfold C
    simp [show (2239488 * k + 898108) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 449054) = 559872 * k + 224527 := by
    unfold C
    simp [show (1119744 * k + 449054) % 2 = 0 by omega]
    omega
  have h18 : C (559872 * k + 224527) = 1679616 * k + 673582 := by
    unfold C
    simp [show (559872 * k + 224527) % 2 ≠ 0 by omega]
    omega
  have h19 : C (1679616 * k + 673582) = 839808 * k + 336791 := by
    unfold C
    simp [show (1679616 * k + 673582) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 336791) = 2519424 * k + 1010374 := by
    unfold C
    simp [show (839808 * k + 336791) % 2 ≠ 0 by omega]
    omega
  have h21 : C (2519424 * k + 1010374) = 1259712 * k + 505187 := by
    unfold C
    simp [show (2519424 * k + 1010374) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 505187) = 3779136 * k + 1515562 := by
    unfold C
    simp [show (1259712 * k + 505187) % 2 ≠ 0 by omega]
    omega
  have h23 : C (3779136 * k + 1515562) = 1889568 * k + 757781 := by
    unfold C
    simp [show (3779136 * k + 1515562) % 2 = 0 by omega]
    omega
  have h24 : C (1889568 * k + 757781) = 5668704 * k + 2273344 := by
    unfold C
    simp [show (1889568 * k + 757781) % 2 ≠ 0 by omega]
    omega
  have h25 : C (5668704 * k + 2273344) = 2834352 * k + 1136672 := by
    unfold C
    simp [show (5668704 * k + 2273344) % 2 = 0 by omega]
    omega
  have h26 : C (2834352 * k + 1136672) = 1417176 * k + 568336 := by
    unfold C
    simp [show (2834352 * k + 1136672) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 568336) = 708588 * k + 284168 := by
    unfold C
    simp [show (1417176 * k + 568336) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 284168) = 354294 * k + 142084 := by
    unfold C
    simp [show (708588 * k + 284168) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 142084) = 177147 * k + 71042 := by
    unfold C
    simp [show (354294 * k + 142084) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 105127) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 105127))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_105167 : ∀ k : Nat,
    iterate (262144 * k + 105167) 29 = 177147 * k + 71069 ∧
      177147 * k + 71069 < 262144 * k + 105167 := by
  intro k
  have h1 : C (262144 * k + 105167) = 786432 * k + 315502 := by
    unfold C
    simp [show (262144 * k + 105167) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 315502) = 393216 * k + 157751 := by
    unfold C
    simp [show (786432 * k + 315502) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 157751) = 1179648 * k + 473254 := by
    unfold C
    simp [show (393216 * k + 157751) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 473254) = 589824 * k + 236627 := by
    unfold C
    simp [show (1179648 * k + 473254) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 236627) = 1769472 * k + 709882 := by
    unfold C
    simp [show (589824 * k + 236627) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 709882) = 884736 * k + 354941 := by
    unfold C
    simp [show (1769472 * k + 709882) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 354941) = 2654208 * k + 1064824 := by
    unfold C
    simp [show (884736 * k + 354941) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 1064824) = 1327104 * k + 532412 := by
    unfold C
    simp [show (2654208 * k + 1064824) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 532412) = 663552 * k + 266206 := by
    unfold C
    simp [show (1327104 * k + 532412) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 266206) = 331776 * k + 133103 := by
    unfold C
    simp [show (663552 * k + 266206) % 2 = 0 by omega]
    omega
  have h11 : C (331776 * k + 133103) = 995328 * k + 399310 := by
    unfold C
    simp [show (331776 * k + 133103) % 2 ≠ 0 by omega]
    omega
  have h12 : C (995328 * k + 399310) = 497664 * k + 199655 := by
    unfold C
    simp [show (995328 * k + 399310) % 2 = 0 by omega]
    omega
  have h13 : C (497664 * k + 199655) = 1492992 * k + 598966 := by
    unfold C
    simp [show (497664 * k + 199655) % 2 ≠ 0 by omega]
    omega
  have h14 : C (1492992 * k + 598966) = 746496 * k + 299483 := by
    unfold C
    simp [show (1492992 * k + 598966) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 299483) = 2239488 * k + 898450 := by
    unfold C
    simp [show (746496 * k + 299483) % 2 ≠ 0 by omega]
    omega
  have h16 : C (2239488 * k + 898450) = 1119744 * k + 449225 := by
    unfold C
    simp [show (2239488 * k + 898450) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 449225) = 3359232 * k + 1347676 := by
    unfold C
    simp [show (1119744 * k + 449225) % 2 ≠ 0 by omega]
    omega
  have h18 : C (3359232 * k + 1347676) = 1679616 * k + 673838 := by
    unfold C
    simp [show (3359232 * k + 1347676) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 673838) = 839808 * k + 336919 := by
    unfold C
    simp [show (1679616 * k + 673838) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 336919) = 2519424 * k + 1010758 := by
    unfold C
    simp [show (839808 * k + 336919) % 2 ≠ 0 by omega]
    omega
  have h21 : C (2519424 * k + 1010758) = 1259712 * k + 505379 := by
    unfold C
    simp [show (2519424 * k + 1010758) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 505379) = 3779136 * k + 1516138 := by
    unfold C
    simp [show (1259712 * k + 505379) % 2 ≠ 0 by omega]
    omega
  have h23 : C (3779136 * k + 1516138) = 1889568 * k + 758069 := by
    unfold C
    simp [show (3779136 * k + 1516138) % 2 = 0 by omega]
    omega
  have h24 : C (1889568 * k + 758069) = 5668704 * k + 2274208 := by
    unfold C
    simp [show (1889568 * k + 758069) % 2 ≠ 0 by omega]
    omega
  have h25 : C (5668704 * k + 2274208) = 2834352 * k + 1137104 := by
    unfold C
    simp [show (5668704 * k + 2274208) % 2 = 0 by omega]
    omega
  have h26 : C (2834352 * k + 1137104) = 1417176 * k + 568552 := by
    unfold C
    simp [show (2834352 * k + 1137104) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 568552) = 708588 * k + 284276 := by
    unfold C
    simp [show (1417176 * k + 568552) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 284276) = 354294 * k + 142138 := by
    unfold C
    simp [show (708588 * k + 284276) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 142138) = 177147 * k + 71069 := by
    unfold C
    simp [show (354294 * k + 142138) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 105167) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 105167))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_105247 : ∀ k : Nat,
    iterate (262144 * k + 105247) 29 = 177147 * k + 71123 ∧
      177147 * k + 71123 < 262144 * k + 105247 := by
  intro k
  have h1 : C (262144 * k + 105247) = 786432 * k + 315742 := by
    unfold C
    simp [show (262144 * k + 105247) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 315742) = 393216 * k + 157871 := by
    unfold C
    simp [show (786432 * k + 315742) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 157871) = 1179648 * k + 473614 := by
    unfold C
    simp [show (393216 * k + 157871) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 473614) = 589824 * k + 236807 := by
    unfold C
    simp [show (1179648 * k + 473614) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 236807) = 1769472 * k + 710422 := by
    unfold C
    simp [show (589824 * k + 236807) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 710422) = 884736 * k + 355211 := by
    unfold C
    simp [show (1769472 * k + 710422) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 355211) = 2654208 * k + 1065634 := by
    unfold C
    simp [show (884736 * k + 355211) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 1065634) = 1327104 * k + 532817 := by
    unfold C
    simp [show (2654208 * k + 1065634) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 532817) = 3981312 * k + 1598452 := by
    unfold C
    simp [show (1327104 * k + 532817) % 2 ≠ 0 by omega]
    omega
  have h10 : C (3981312 * k + 1598452) = 1990656 * k + 799226 := by
    unfold C
    simp [show (3981312 * k + 1598452) % 2 = 0 by omega]
    omega
  have h11 : C (1990656 * k + 799226) = 995328 * k + 399613 := by
    unfold C
    simp [show (1990656 * k + 799226) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 399613) = 2985984 * k + 1198840 := by
    unfold C
    simp [show (995328 * k + 399613) % 2 ≠ 0 by omega]
    omega
  have h13 : C (2985984 * k + 1198840) = 1492992 * k + 599420 := by
    unfold C
    simp [show (2985984 * k + 1198840) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 599420) = 746496 * k + 299710 := by
    unfold C
    simp [show (1492992 * k + 599420) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 299710) = 373248 * k + 149855 := by
    unfold C
    simp [show (746496 * k + 299710) % 2 = 0 by omega]
    omega
  have h16 : C (373248 * k + 149855) = 1119744 * k + 449566 := by
    unfold C
    simp [show (373248 * k + 149855) % 2 ≠ 0 by omega]
    omega
  have h17 : C (1119744 * k + 449566) = 559872 * k + 224783 := by
    unfold C
    simp [show (1119744 * k + 449566) % 2 = 0 by omega]
    omega
  have h18 : C (559872 * k + 224783) = 1679616 * k + 674350 := by
    unfold C
    simp [show (559872 * k + 224783) % 2 ≠ 0 by omega]
    omega
  have h19 : C (1679616 * k + 674350) = 839808 * k + 337175 := by
    unfold C
    simp [show (1679616 * k + 674350) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 337175) = 2519424 * k + 1011526 := by
    unfold C
    simp [show (839808 * k + 337175) % 2 ≠ 0 by omega]
    omega
  have h21 : C (2519424 * k + 1011526) = 1259712 * k + 505763 := by
    unfold C
    simp [show (2519424 * k + 1011526) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 505763) = 3779136 * k + 1517290 := by
    unfold C
    simp [show (1259712 * k + 505763) % 2 ≠ 0 by omega]
    omega
  have h23 : C (3779136 * k + 1517290) = 1889568 * k + 758645 := by
    unfold C
    simp [show (3779136 * k + 1517290) % 2 = 0 by omega]
    omega
  have h24 : C (1889568 * k + 758645) = 5668704 * k + 2275936 := by
    unfold C
    simp [show (1889568 * k + 758645) % 2 ≠ 0 by omega]
    omega
  have h25 : C (5668704 * k + 2275936) = 2834352 * k + 1137968 := by
    unfold C
    simp [show (5668704 * k + 2275936) % 2 = 0 by omega]
    omega
  have h26 : C (2834352 * k + 1137968) = 1417176 * k + 568984 := by
    unfold C
    simp [show (2834352 * k + 1137968) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 568984) = 708588 * k + 284492 := by
    unfold C
    simp [show (1417176 * k + 568984) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 284492) = 354294 * k + 142246 := by
    unfold C
    simp [show (708588 * k + 284492) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 142246) = 177147 * k + 71123 := by
    unfold C
    simp [show (354294 * k + 142246) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 105247) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 105247))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_105407 : ∀ k : Nat,
    iterate (262144 * k + 105407) 29 = 177147 * k + 71231 ∧
      177147 * k + 71231 < 262144 * k + 105407 := by
  intro k
  have h1 : C (262144 * k + 105407) = 786432 * k + 316222 := by
    unfold C
    simp [show (262144 * k + 105407) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 316222) = 393216 * k + 158111 := by
    unfold C
    simp [show (786432 * k + 316222) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 158111) = 1179648 * k + 474334 := by
    unfold C
    simp [show (393216 * k + 158111) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 474334) = 589824 * k + 237167 := by
    unfold C
    simp [show (1179648 * k + 474334) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 237167) = 1769472 * k + 711502 := by
    unfold C
    simp [show (589824 * k + 237167) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 711502) = 884736 * k + 355751 := by
    unfold C
    simp [show (1769472 * k + 711502) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 355751) = 2654208 * k + 1067254 := by
    unfold C
    simp [show (884736 * k + 355751) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 1067254) = 1327104 * k + 533627 := by
    unfold C
    simp [show (2654208 * k + 1067254) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 533627) = 3981312 * k + 1600882 := by
    unfold C
    simp [show (1327104 * k + 533627) % 2 ≠ 0 by omega]
    omega
  have h10 : C (3981312 * k + 1600882) = 1990656 * k + 800441 := by
    unfold C
    simp [show (3981312 * k + 1600882) % 2 = 0 by omega]
    omega
  have h11 : C (1990656 * k + 800441) = 5971968 * k + 2401324 := by
    unfold C
    simp [show (1990656 * k + 800441) % 2 ≠ 0 by omega]
    omega
  have h12 : C (5971968 * k + 2401324) = 2985984 * k + 1200662 := by
    unfold C
    simp [show (5971968 * k + 2401324) % 2 = 0 by omega]
    omega
  have h13 : C (2985984 * k + 1200662) = 1492992 * k + 600331 := by
    unfold C
    simp [show (2985984 * k + 1200662) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 600331) = 4478976 * k + 1800994 := by
    unfold C
    simp [show (1492992 * k + 600331) % 2 ≠ 0 by omega]
    omega
  have h15 : C (4478976 * k + 1800994) = 2239488 * k + 900497 := by
    unfold C
    simp [show (4478976 * k + 1800994) % 2 = 0 by omega]
    omega
  have h16 : C (2239488 * k + 900497) = 6718464 * k + 2701492 := by
    unfold C
    simp [show (2239488 * k + 900497) % 2 ≠ 0 by omega]
    omega
  have h17 : C (6718464 * k + 2701492) = 3359232 * k + 1350746 := by
    unfold C
    simp [show (6718464 * k + 2701492) % 2 = 0 by omega]
    omega
  have h18 : C (3359232 * k + 1350746) = 1679616 * k + 675373 := by
    unfold C
    simp [show (3359232 * k + 1350746) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 675373) = 5038848 * k + 2026120 := by
    unfold C
    simp [show (1679616 * k + 675373) % 2 ≠ 0 by omega]
    omega
  have h20 : C (5038848 * k + 2026120) = 2519424 * k + 1013060 := by
    unfold C
    simp [show (5038848 * k + 2026120) % 2 = 0 by omega]
    omega
  have h21 : C (2519424 * k + 1013060) = 1259712 * k + 506530 := by
    unfold C
    simp [show (2519424 * k + 1013060) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 506530) = 629856 * k + 253265 := by
    unfold C
    simp [show (1259712 * k + 506530) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 253265) = 1889568 * k + 759796 := by
    unfold C
    simp [show (629856 * k + 253265) % 2 ≠ 0 by omega]
    omega
  have h24 : C (1889568 * k + 759796) = 944784 * k + 379898 := by
    unfold C
    simp [show (1889568 * k + 759796) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 379898) = 472392 * k + 189949 := by
    unfold C
    simp [show (944784 * k + 379898) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 189949) = 1417176 * k + 569848 := by
    unfold C
    simp [show (472392 * k + 189949) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 569848) = 708588 * k + 284924 := by
    unfold C
    simp [show (1417176 * k + 569848) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 284924) = 354294 * k + 142462 := by
    unfold C
    simp [show (708588 * k + 284924) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 142462) = 177147 * k + 71231 := by
    unfold C
    simp [show (354294 * k + 142462) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 105407) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 105407))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_105535 : ∀ k : Nat,
    iterate (262144 * k + 105535) 29 = 177147 * k + 71318 ∧
      177147 * k + 71318 < 262144 * k + 105535 := by
  intro k
  have h1 : C (262144 * k + 105535) = 786432 * k + 316606 := by
    unfold C
    simp [show (262144 * k + 105535) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 316606) = 393216 * k + 158303 := by
    unfold C
    simp [show (786432 * k + 316606) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 158303) = 1179648 * k + 474910 := by
    unfold C
    simp [show (393216 * k + 158303) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 474910) = 589824 * k + 237455 := by
    unfold C
    simp [show (1179648 * k + 474910) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 237455) = 1769472 * k + 712366 := by
    unfold C
    simp [show (589824 * k + 237455) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 712366) = 884736 * k + 356183 := by
    unfold C
    simp [show (1769472 * k + 712366) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 356183) = 2654208 * k + 1068550 := by
    unfold C
    simp [show (884736 * k + 356183) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 1068550) = 1327104 * k + 534275 := by
    unfold C
    simp [show (2654208 * k + 1068550) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 534275) = 3981312 * k + 1602826 := by
    unfold C
    simp [show (1327104 * k + 534275) % 2 ≠ 0 by omega]
    omega
  have h10 : C (3981312 * k + 1602826) = 1990656 * k + 801413 := by
    unfold C
    simp [show (3981312 * k + 1602826) % 2 = 0 by omega]
    omega
  have h11 : C (1990656 * k + 801413) = 5971968 * k + 2404240 := by
    unfold C
    simp [show (1990656 * k + 801413) % 2 ≠ 0 by omega]
    omega
  have h12 : C (5971968 * k + 2404240) = 2985984 * k + 1202120 := by
    unfold C
    simp [show (5971968 * k + 2404240) % 2 = 0 by omega]
    omega
  have h13 : C (2985984 * k + 1202120) = 1492992 * k + 601060 := by
    unfold C
    simp [show (2985984 * k + 1202120) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 601060) = 746496 * k + 300530 := by
    unfold C
    simp [show (1492992 * k + 601060) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 300530) = 373248 * k + 150265 := by
    unfold C
    simp [show (746496 * k + 300530) % 2 = 0 by omega]
    omega
  have h16 : C (373248 * k + 150265) = 1119744 * k + 450796 := by
    unfold C
    simp [show (373248 * k + 150265) % 2 ≠ 0 by omega]
    omega
  have h17 : C (1119744 * k + 450796) = 559872 * k + 225398 := by
    unfold C
    simp [show (1119744 * k + 450796) % 2 = 0 by omega]
    omega
  have h18 : C (559872 * k + 225398) = 279936 * k + 112699 := by
    unfold C
    simp [show (559872 * k + 225398) % 2 = 0 by omega]
    omega
  have h19 : C (279936 * k + 112699) = 839808 * k + 338098 := by
    unfold C
    simp [show (279936 * k + 112699) % 2 ≠ 0 by omega]
    omega
  have h20 : C (839808 * k + 338098) = 419904 * k + 169049 := by
    unfold C
    simp [show (839808 * k + 338098) % 2 = 0 by omega]
    omega
  have h21 : C (419904 * k + 169049) = 1259712 * k + 507148 := by
    unfold C
    simp [show (419904 * k + 169049) % 2 ≠ 0 by omega]
    omega
  have h22 : C (1259712 * k + 507148) = 629856 * k + 253574 := by
    unfold C
    simp [show (1259712 * k + 507148) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 253574) = 314928 * k + 126787 := by
    unfold C
    simp [show (629856 * k + 253574) % 2 = 0 by omega]
    omega
  have h24 : C (314928 * k + 126787) = 944784 * k + 380362 := by
    unfold C
    simp [show (314928 * k + 126787) % 2 ≠ 0 by omega]
    omega
  have h25 : C (944784 * k + 380362) = 472392 * k + 190181 := by
    unfold C
    simp [show (944784 * k + 380362) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 190181) = 1417176 * k + 570544 := by
    unfold C
    simp [show (472392 * k + 190181) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 570544) = 708588 * k + 285272 := by
    unfold C
    simp [show (1417176 * k + 570544) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 285272) = 354294 * k + 142636 := by
    unfold C
    simp [show (708588 * k + 285272) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 142636) = 177147 * k + 71318 := by
    unfold C
    simp [show (354294 * k + 142636) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 105535) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 105535))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_105583 : ∀ k : Nat,
    iterate (262144 * k + 105583) 29 = 177147 * k + 71350 ∧
      177147 * k + 71350 < 262144 * k + 105583 := by
  intro k
  have h1 : C (262144 * k + 105583) = 786432 * k + 316750 := by
    unfold C
    simp [show (262144 * k + 105583) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 316750) = 393216 * k + 158375 := by
    unfold C
    simp [show (786432 * k + 316750) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 158375) = 1179648 * k + 475126 := by
    unfold C
    simp [show (393216 * k + 158375) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 475126) = 589824 * k + 237563 := by
    unfold C
    simp [show (1179648 * k + 475126) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 237563) = 1769472 * k + 712690 := by
    unfold C
    simp [show (589824 * k + 237563) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 712690) = 884736 * k + 356345 := by
    unfold C
    simp [show (1769472 * k + 712690) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 356345) = 2654208 * k + 1069036 := by
    unfold C
    simp [show (884736 * k + 356345) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 1069036) = 1327104 * k + 534518 := by
    unfold C
    simp [show (2654208 * k + 1069036) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 534518) = 663552 * k + 267259 := by
    unfold C
    simp [show (1327104 * k + 534518) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 267259) = 1990656 * k + 801778 := by
    unfold C
    simp [show (663552 * k + 267259) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 801778) = 995328 * k + 400889 := by
    unfold C
    simp [show (1990656 * k + 801778) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 400889) = 2985984 * k + 1202668 := by
    unfold C
    simp [show (995328 * k + 400889) % 2 ≠ 0 by omega]
    omega
  have h13 : C (2985984 * k + 1202668) = 1492992 * k + 601334 := by
    unfold C
    simp [show (2985984 * k + 1202668) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 601334) = 746496 * k + 300667 := by
    unfold C
    simp [show (1492992 * k + 601334) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 300667) = 2239488 * k + 902002 := by
    unfold C
    simp [show (746496 * k + 300667) % 2 ≠ 0 by omega]
    omega
  have h16 : C (2239488 * k + 902002) = 1119744 * k + 451001 := by
    unfold C
    simp [show (2239488 * k + 902002) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 451001) = 3359232 * k + 1353004 := by
    unfold C
    simp [show (1119744 * k + 451001) % 2 ≠ 0 by omega]
    omega
  have h18 : C (3359232 * k + 1353004) = 1679616 * k + 676502 := by
    unfold C
    simp [show (3359232 * k + 1353004) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 676502) = 839808 * k + 338251 := by
    unfold C
    simp [show (1679616 * k + 676502) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 338251) = 2519424 * k + 1014754 := by
    unfold C
    simp [show (839808 * k + 338251) % 2 ≠ 0 by omega]
    omega
  have h21 : C (2519424 * k + 1014754) = 1259712 * k + 507377 := by
    unfold C
    simp [show (2519424 * k + 1014754) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 507377) = 3779136 * k + 1522132 := by
    unfold C
    simp [show (1259712 * k + 507377) % 2 ≠ 0 by omega]
    omega
  have h23 : C (3779136 * k + 1522132) = 1889568 * k + 761066 := by
    unfold C
    simp [show (3779136 * k + 1522132) % 2 = 0 by omega]
    omega
  have h24 : C (1889568 * k + 761066) = 944784 * k + 380533 := by
    unfold C
    simp [show (1889568 * k + 761066) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 380533) = 2834352 * k + 1141600 := by
    unfold C
    simp [show (944784 * k + 380533) % 2 ≠ 0 by omega]
    omega
  have h26 : C (2834352 * k + 1141600) = 1417176 * k + 570800 := by
    unfold C
    simp [show (2834352 * k + 1141600) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 570800) = 708588 * k + 285400 := by
    unfold C
    simp [show (1417176 * k + 570800) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 285400) = 354294 * k + 142700 := by
    unfold C
    simp [show (708588 * k + 285400) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 142700) = 177147 * k + 71350 := by
    unfold C
    simp [show (354294 * k + 142700) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 105583) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 105583))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_105627 : ∀ k : Nat,
    iterate (262144 * k + 105627) 29 = 177147 * k + 71380 ∧
      177147 * k + 71380 < 262144 * k + 105627 := by
  intro k
  have h1 : C (262144 * k + 105627) = 786432 * k + 316882 := by
    unfold C
    simp [show (262144 * k + 105627) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 316882) = 393216 * k + 158441 := by
    unfold C
    simp [show (786432 * k + 316882) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 158441) = 1179648 * k + 475324 := by
    unfold C
    simp [show (393216 * k + 158441) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 475324) = 589824 * k + 237662 := by
    unfold C
    simp [show (1179648 * k + 475324) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 237662) = 294912 * k + 118831 := by
    unfold C
    simp [show (589824 * k + 237662) % 2 = 0 by omega]
    omega
  have h6 : C (294912 * k + 118831) = 884736 * k + 356494 := by
    unfold C
    simp [show (294912 * k + 118831) % 2 ≠ 0 by omega]
    omega
  have h7 : C (884736 * k + 356494) = 442368 * k + 178247 := by
    unfold C
    simp [show (884736 * k + 356494) % 2 = 0 by omega]
    omega
  have h8 : C (442368 * k + 178247) = 1327104 * k + 534742 := by
    unfold C
    simp [show (442368 * k + 178247) % 2 ≠ 0 by omega]
    omega
  have h9 : C (1327104 * k + 534742) = 663552 * k + 267371 := by
    unfold C
    simp [show (1327104 * k + 534742) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 267371) = 1990656 * k + 802114 := by
    unfold C
    simp [show (663552 * k + 267371) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 802114) = 995328 * k + 401057 := by
    unfold C
    simp [show (1990656 * k + 802114) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 401057) = 2985984 * k + 1203172 := by
    unfold C
    simp [show (995328 * k + 401057) % 2 ≠ 0 by omega]
    omega
  have h13 : C (2985984 * k + 1203172) = 1492992 * k + 601586 := by
    unfold C
    simp [show (2985984 * k + 1203172) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 601586) = 746496 * k + 300793 := by
    unfold C
    simp [show (1492992 * k + 601586) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 300793) = 2239488 * k + 902380 := by
    unfold C
    simp [show (746496 * k + 300793) % 2 ≠ 0 by omega]
    omega
  have h16 : C (2239488 * k + 902380) = 1119744 * k + 451190 := by
    unfold C
    simp [show (2239488 * k + 902380) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 451190) = 559872 * k + 225595 := by
    unfold C
    simp [show (1119744 * k + 451190) % 2 = 0 by omega]
    omega
  have h18 : C (559872 * k + 225595) = 1679616 * k + 676786 := by
    unfold C
    simp [show (559872 * k + 225595) % 2 ≠ 0 by omega]
    omega
  have h19 : C (1679616 * k + 676786) = 839808 * k + 338393 := by
    unfold C
    simp [show (1679616 * k + 676786) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 338393) = 2519424 * k + 1015180 := by
    unfold C
    simp [show (839808 * k + 338393) % 2 ≠ 0 by omega]
    omega
  have h21 : C (2519424 * k + 1015180) = 1259712 * k + 507590 := by
    unfold C
    simp [show (2519424 * k + 1015180) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 507590) = 629856 * k + 253795 := by
    unfold C
    simp [show (1259712 * k + 507590) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 253795) = 1889568 * k + 761386 := by
    unfold C
    simp [show (629856 * k + 253795) % 2 ≠ 0 by omega]
    omega
  have h24 : C (1889568 * k + 761386) = 944784 * k + 380693 := by
    unfold C
    simp [show (1889568 * k + 761386) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 380693) = 2834352 * k + 1142080 := by
    unfold C
    simp [show (944784 * k + 380693) % 2 ≠ 0 by omega]
    omega
  have h26 : C (2834352 * k + 1142080) = 1417176 * k + 571040 := by
    unfold C
    simp [show (2834352 * k + 1142080) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 571040) = 708588 * k + 285520 := by
    unfold C
    simp [show (1417176 * k + 571040) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 285520) = 354294 * k + 142760 := by
    unfold C
    simp [show (708588 * k + 285520) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 142760) = 177147 * k + 71380 := by
    unfold C
    simp [show (354294 * k + 142760) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 105627) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 105627))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

end CollatzM18Shard020
