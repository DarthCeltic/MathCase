import Mathlib.Data.Nat.Prime.Basic

namespace CollatzM18Shard031

def C (n : Nat) : Nat := if n % 2 = 0 then n / 2 else 3 * n + 1

def iterate (n t : Nat) : Nat := Nat.rec n (fun _ previous => C previous) t

theorem descent_mod262144_161471 : ∀ k : Nat,
    iterate (262144 * k + 161471) 29 = 177147 * k + 109117 ∧
      177147 * k + 109117 < 262144 * k + 161471 := by
  intro k
  have h1 : C (262144 * k + 161471) = 786432 * k + 484414 := by
    unfold C
    simp [show (262144 * k + 161471) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 484414) = 393216 * k + 242207 := by
    unfold C
    simp [show (786432 * k + 484414) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 242207) = 1179648 * k + 726622 := by
    unfold C
    simp [show (393216 * k + 242207) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 726622) = 589824 * k + 363311 := by
    unfold C
    simp [show (1179648 * k + 726622) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 363311) = 1769472 * k + 1089934 := by
    unfold C
    simp [show (589824 * k + 363311) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 1089934) = 884736 * k + 544967 := by
    unfold C
    simp [show (1769472 * k + 1089934) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 544967) = 2654208 * k + 1634902 := by
    unfold C
    simp [show (884736 * k + 544967) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 1634902) = 1327104 * k + 817451 := by
    unfold C
    simp [show (2654208 * k + 1634902) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 817451) = 3981312 * k + 2452354 := by
    unfold C
    simp [show (1327104 * k + 817451) % 2 ≠ 0 by omega]
    omega
  have h10 : C (3981312 * k + 2452354) = 1990656 * k + 1226177 := by
    unfold C
    simp [show (3981312 * k + 2452354) % 2 = 0 by omega]
    omega
  have h11 : C (1990656 * k + 1226177) = 5971968 * k + 3678532 := by
    unfold C
    simp [show (1990656 * k + 1226177) % 2 ≠ 0 by omega]
    omega
  have h12 : C (5971968 * k + 3678532) = 2985984 * k + 1839266 := by
    unfold C
    simp [show (5971968 * k + 3678532) % 2 = 0 by omega]
    omega
  have h13 : C (2985984 * k + 1839266) = 1492992 * k + 919633 := by
    unfold C
    simp [show (2985984 * k + 1839266) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 919633) = 4478976 * k + 2758900 := by
    unfold C
    simp [show (1492992 * k + 919633) % 2 ≠ 0 by omega]
    omega
  have h15 : C (4478976 * k + 2758900) = 2239488 * k + 1379450 := by
    unfold C
    simp [show (4478976 * k + 2758900) % 2 = 0 by omega]
    omega
  have h16 : C (2239488 * k + 1379450) = 1119744 * k + 689725 := by
    unfold C
    simp [show (2239488 * k + 1379450) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 689725) = 3359232 * k + 2069176 := by
    unfold C
    simp [show (1119744 * k + 689725) % 2 ≠ 0 by omega]
    omega
  have h18 : C (3359232 * k + 2069176) = 1679616 * k + 1034588 := by
    unfold C
    simp [show (3359232 * k + 2069176) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 1034588) = 839808 * k + 517294 := by
    unfold C
    simp [show (1679616 * k + 1034588) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 517294) = 419904 * k + 258647 := by
    unfold C
    simp [show (839808 * k + 517294) % 2 = 0 by omega]
    omega
  have h21 : C (419904 * k + 258647) = 1259712 * k + 775942 := by
    unfold C
    simp [show (419904 * k + 258647) % 2 ≠ 0 by omega]
    omega
  have h22 : C (1259712 * k + 775942) = 629856 * k + 387971 := by
    unfold C
    simp [show (1259712 * k + 775942) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 387971) = 1889568 * k + 1163914 := by
    unfold C
    simp [show (629856 * k + 387971) % 2 ≠ 0 by omega]
    omega
  have h24 : C (1889568 * k + 1163914) = 944784 * k + 581957 := by
    unfold C
    simp [show (1889568 * k + 1163914) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 581957) = 2834352 * k + 1745872 := by
    unfold C
    simp [show (944784 * k + 581957) % 2 ≠ 0 by omega]
    omega
  have h26 : C (2834352 * k + 1745872) = 1417176 * k + 872936 := by
    unfold C
    simp [show (2834352 * k + 1745872) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 872936) = 708588 * k + 436468 := by
    unfold C
    simp [show (1417176 * k + 872936) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 436468) = 354294 * k + 218234 := by
    unfold C
    simp [show (708588 * k + 436468) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 218234) = 177147 * k + 109117 := by
    unfold C
    simp [show (354294 * k + 218234) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 161471) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 161471))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_161703 : ∀ k : Nat,
    iterate (262144 * k + 161703) 29 = 177147 * k + 109274 ∧
      177147 * k + 109274 < 262144 * k + 161703 := by
  intro k
  have h1 : C (262144 * k + 161703) = 786432 * k + 485110 := by
    unfold C
    simp [show (262144 * k + 161703) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 485110) = 393216 * k + 242555 := by
    unfold C
    simp [show (786432 * k + 485110) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 242555) = 1179648 * k + 727666 := by
    unfold C
    simp [show (393216 * k + 242555) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 727666) = 589824 * k + 363833 := by
    unfold C
    simp [show (1179648 * k + 727666) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 363833) = 1769472 * k + 1091500 := by
    unfold C
    simp [show (589824 * k + 363833) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 1091500) = 884736 * k + 545750 := by
    unfold C
    simp [show (1769472 * k + 1091500) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 545750) = 442368 * k + 272875 := by
    unfold C
    simp [show (884736 * k + 545750) % 2 = 0 by omega]
    omega
  have h8 : C (442368 * k + 272875) = 1327104 * k + 818626 := by
    unfold C
    simp [show (442368 * k + 272875) % 2 ≠ 0 by omega]
    omega
  have h9 : C (1327104 * k + 818626) = 663552 * k + 409313 := by
    unfold C
    simp [show (1327104 * k + 818626) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 409313) = 1990656 * k + 1227940 := by
    unfold C
    simp [show (663552 * k + 409313) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 1227940) = 995328 * k + 613970 := by
    unfold C
    simp [show (1990656 * k + 1227940) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 613970) = 497664 * k + 306985 := by
    unfold C
    simp [show (995328 * k + 613970) % 2 = 0 by omega]
    omega
  have h13 : C (497664 * k + 306985) = 1492992 * k + 920956 := by
    unfold C
    simp [show (497664 * k + 306985) % 2 ≠ 0 by omega]
    omega
  have h14 : C (1492992 * k + 920956) = 746496 * k + 460478 := by
    unfold C
    simp [show (1492992 * k + 920956) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 460478) = 373248 * k + 230239 := by
    unfold C
    simp [show (746496 * k + 460478) % 2 = 0 by omega]
    omega
  have h16 : C (373248 * k + 230239) = 1119744 * k + 690718 := by
    unfold C
    simp [show (373248 * k + 230239) % 2 ≠ 0 by omega]
    omega
  have h17 : C (1119744 * k + 690718) = 559872 * k + 345359 := by
    unfold C
    simp [show (1119744 * k + 690718) % 2 = 0 by omega]
    omega
  have h18 : C (559872 * k + 345359) = 1679616 * k + 1036078 := by
    unfold C
    simp [show (559872 * k + 345359) % 2 ≠ 0 by omega]
    omega
  have h19 : C (1679616 * k + 1036078) = 839808 * k + 518039 := by
    unfold C
    simp [show (1679616 * k + 1036078) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 518039) = 2519424 * k + 1554118 := by
    unfold C
    simp [show (839808 * k + 518039) % 2 ≠ 0 by omega]
    omega
  have h21 : C (2519424 * k + 1554118) = 1259712 * k + 777059 := by
    unfold C
    simp [show (2519424 * k + 1554118) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 777059) = 3779136 * k + 2331178 := by
    unfold C
    simp [show (1259712 * k + 777059) % 2 ≠ 0 by omega]
    omega
  have h23 : C (3779136 * k + 2331178) = 1889568 * k + 1165589 := by
    unfold C
    simp [show (3779136 * k + 2331178) % 2 = 0 by omega]
    omega
  have h24 : C (1889568 * k + 1165589) = 5668704 * k + 3496768 := by
    unfold C
    simp [show (1889568 * k + 1165589) % 2 ≠ 0 by omega]
    omega
  have h25 : C (5668704 * k + 3496768) = 2834352 * k + 1748384 := by
    unfold C
    simp [show (5668704 * k + 3496768) % 2 = 0 by omega]
    omega
  have h26 : C (2834352 * k + 1748384) = 1417176 * k + 874192 := by
    unfold C
    simp [show (2834352 * k + 1748384) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 874192) = 708588 * k + 437096 := by
    unfold C
    simp [show (1417176 * k + 874192) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 437096) = 354294 * k + 218548 := by
    unfold C
    simp [show (708588 * k + 437096) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 218548) = 177147 * k + 109274 := by
    unfold C
    simp [show (354294 * k + 218548) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 161703) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 161703))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_161823 : ∀ k : Nat,
    iterate (262144 * k + 161823) 29 = 177147 * k + 109355 ∧
      177147 * k + 109355 < 262144 * k + 161823 := by
  intro k
  have h1 : C (262144 * k + 161823) = 786432 * k + 485470 := by
    unfold C
    simp [show (262144 * k + 161823) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 485470) = 393216 * k + 242735 := by
    unfold C
    simp [show (786432 * k + 485470) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 242735) = 1179648 * k + 728206 := by
    unfold C
    simp [show (393216 * k + 242735) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 728206) = 589824 * k + 364103 := by
    unfold C
    simp [show (1179648 * k + 728206) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 364103) = 1769472 * k + 1092310 := by
    unfold C
    simp [show (589824 * k + 364103) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 1092310) = 884736 * k + 546155 := by
    unfold C
    simp [show (1769472 * k + 1092310) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 546155) = 2654208 * k + 1638466 := by
    unfold C
    simp [show (884736 * k + 546155) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 1638466) = 1327104 * k + 819233 := by
    unfold C
    simp [show (2654208 * k + 1638466) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 819233) = 3981312 * k + 2457700 := by
    unfold C
    simp [show (1327104 * k + 819233) % 2 ≠ 0 by omega]
    omega
  have h10 : C (3981312 * k + 2457700) = 1990656 * k + 1228850 := by
    unfold C
    simp [show (3981312 * k + 2457700) % 2 = 0 by omega]
    omega
  have h11 : C (1990656 * k + 1228850) = 995328 * k + 614425 := by
    unfold C
    simp [show (1990656 * k + 1228850) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 614425) = 2985984 * k + 1843276 := by
    unfold C
    simp [show (995328 * k + 614425) % 2 ≠ 0 by omega]
    omega
  have h13 : C (2985984 * k + 1843276) = 1492992 * k + 921638 := by
    unfold C
    simp [show (2985984 * k + 1843276) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 921638) = 746496 * k + 460819 := by
    unfold C
    simp [show (1492992 * k + 921638) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 460819) = 2239488 * k + 1382458 := by
    unfold C
    simp [show (746496 * k + 460819) % 2 ≠ 0 by omega]
    omega
  have h16 : C (2239488 * k + 1382458) = 1119744 * k + 691229 := by
    unfold C
    simp [show (2239488 * k + 1382458) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 691229) = 3359232 * k + 2073688 := by
    unfold C
    simp [show (1119744 * k + 691229) % 2 ≠ 0 by omega]
    omega
  have h18 : C (3359232 * k + 2073688) = 1679616 * k + 1036844 := by
    unfold C
    simp [show (3359232 * k + 2073688) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 1036844) = 839808 * k + 518422 := by
    unfold C
    simp [show (1679616 * k + 1036844) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 518422) = 419904 * k + 259211 := by
    unfold C
    simp [show (839808 * k + 518422) % 2 = 0 by omega]
    omega
  have h21 : C (419904 * k + 259211) = 1259712 * k + 777634 := by
    unfold C
    simp [show (419904 * k + 259211) % 2 ≠ 0 by omega]
    omega
  have h22 : C (1259712 * k + 777634) = 629856 * k + 388817 := by
    unfold C
    simp [show (1259712 * k + 777634) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 388817) = 1889568 * k + 1166452 := by
    unfold C
    simp [show (629856 * k + 388817) % 2 ≠ 0 by omega]
    omega
  have h24 : C (1889568 * k + 1166452) = 944784 * k + 583226 := by
    unfold C
    simp [show (1889568 * k + 1166452) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 583226) = 472392 * k + 291613 := by
    unfold C
    simp [show (944784 * k + 583226) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 291613) = 1417176 * k + 874840 := by
    unfold C
    simp [show (472392 * k + 291613) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 874840) = 708588 * k + 437420 := by
    unfold C
    simp [show (1417176 * k + 874840) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 437420) = 354294 * k + 218710 := by
    unfold C
    simp [show (708588 * k + 437420) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 218710) = 177147 * k + 109355 := by
    unfold C
    simp [show (354294 * k + 218710) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 161823) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 161823))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_161903 : ∀ k : Nat,
    iterate (262144 * k + 161903) 29 = 177147 * k + 109409 ∧
      177147 * k + 109409 < 262144 * k + 161903 := by
  intro k
  have h1 : C (262144 * k + 161903) = 786432 * k + 485710 := by
    unfold C
    simp [show (262144 * k + 161903) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 485710) = 393216 * k + 242855 := by
    unfold C
    simp [show (786432 * k + 485710) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 242855) = 1179648 * k + 728566 := by
    unfold C
    simp [show (393216 * k + 242855) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 728566) = 589824 * k + 364283 := by
    unfold C
    simp [show (1179648 * k + 728566) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 364283) = 1769472 * k + 1092850 := by
    unfold C
    simp [show (589824 * k + 364283) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 1092850) = 884736 * k + 546425 := by
    unfold C
    simp [show (1769472 * k + 1092850) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 546425) = 2654208 * k + 1639276 := by
    unfold C
    simp [show (884736 * k + 546425) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 1639276) = 1327104 * k + 819638 := by
    unfold C
    simp [show (2654208 * k + 1639276) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 819638) = 663552 * k + 409819 := by
    unfold C
    simp [show (1327104 * k + 819638) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 409819) = 1990656 * k + 1229458 := by
    unfold C
    simp [show (663552 * k + 409819) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 1229458) = 995328 * k + 614729 := by
    unfold C
    simp [show (1990656 * k + 1229458) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 614729) = 2985984 * k + 1844188 := by
    unfold C
    simp [show (995328 * k + 614729) % 2 ≠ 0 by omega]
    omega
  have h13 : C (2985984 * k + 1844188) = 1492992 * k + 922094 := by
    unfold C
    simp [show (2985984 * k + 1844188) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 922094) = 746496 * k + 461047 := by
    unfold C
    simp [show (1492992 * k + 922094) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 461047) = 2239488 * k + 1383142 := by
    unfold C
    simp [show (746496 * k + 461047) % 2 ≠ 0 by omega]
    omega
  have h16 : C (2239488 * k + 1383142) = 1119744 * k + 691571 := by
    unfold C
    simp [show (2239488 * k + 1383142) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 691571) = 3359232 * k + 2074714 := by
    unfold C
    simp [show (1119744 * k + 691571) % 2 ≠ 0 by omega]
    omega
  have h18 : C (3359232 * k + 2074714) = 1679616 * k + 1037357 := by
    unfold C
    simp [show (3359232 * k + 2074714) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 1037357) = 5038848 * k + 3112072 := by
    unfold C
    simp [show (1679616 * k + 1037357) % 2 ≠ 0 by omega]
    omega
  have h20 : C (5038848 * k + 3112072) = 2519424 * k + 1556036 := by
    unfold C
    simp [show (5038848 * k + 3112072) % 2 = 0 by omega]
    omega
  have h21 : C (2519424 * k + 1556036) = 1259712 * k + 778018 := by
    unfold C
    simp [show (2519424 * k + 1556036) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 778018) = 629856 * k + 389009 := by
    unfold C
    simp [show (1259712 * k + 778018) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 389009) = 1889568 * k + 1167028 := by
    unfold C
    simp [show (629856 * k + 389009) % 2 ≠ 0 by omega]
    omega
  have h24 : C (1889568 * k + 1167028) = 944784 * k + 583514 := by
    unfold C
    simp [show (1889568 * k + 1167028) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 583514) = 472392 * k + 291757 := by
    unfold C
    simp [show (944784 * k + 583514) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 291757) = 1417176 * k + 875272 := by
    unfold C
    simp [show (472392 * k + 291757) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 875272) = 708588 * k + 437636 := by
    unfold C
    simp [show (1417176 * k + 875272) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 437636) = 354294 * k + 218818 := by
    unfold C
    simp [show (708588 * k + 437636) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 218818) = 177147 * k + 109409 := by
    unfold C
    simp [show (354294 * k + 218818) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 161903) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 161903))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_161999 : ∀ k : Nat,
    iterate (262144 * k + 161999) 29 = 177147 * k + 109474 ∧
      177147 * k + 109474 < 262144 * k + 161999 := by
  intro k
  have h1 : C (262144 * k + 161999) = 786432 * k + 485998 := by
    unfold C
    simp [show (262144 * k + 161999) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 485998) = 393216 * k + 242999 := by
    unfold C
    simp [show (786432 * k + 485998) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 242999) = 1179648 * k + 728998 := by
    unfold C
    simp [show (393216 * k + 242999) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 728998) = 589824 * k + 364499 := by
    unfold C
    simp [show (1179648 * k + 728998) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 364499) = 1769472 * k + 1093498 := by
    unfold C
    simp [show (589824 * k + 364499) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 1093498) = 884736 * k + 546749 := by
    unfold C
    simp [show (1769472 * k + 1093498) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 546749) = 2654208 * k + 1640248 := by
    unfold C
    simp [show (884736 * k + 546749) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 1640248) = 1327104 * k + 820124 := by
    unfold C
    simp [show (2654208 * k + 1640248) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 820124) = 663552 * k + 410062 := by
    unfold C
    simp [show (1327104 * k + 820124) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 410062) = 331776 * k + 205031 := by
    unfold C
    simp [show (663552 * k + 410062) % 2 = 0 by omega]
    omega
  have h11 : C (331776 * k + 205031) = 995328 * k + 615094 := by
    unfold C
    simp [show (331776 * k + 205031) % 2 ≠ 0 by omega]
    omega
  have h12 : C (995328 * k + 615094) = 497664 * k + 307547 := by
    unfold C
    simp [show (995328 * k + 615094) % 2 = 0 by omega]
    omega
  have h13 : C (497664 * k + 307547) = 1492992 * k + 922642 := by
    unfold C
    simp [show (497664 * k + 307547) % 2 ≠ 0 by omega]
    omega
  have h14 : C (1492992 * k + 922642) = 746496 * k + 461321 := by
    unfold C
    simp [show (1492992 * k + 922642) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 461321) = 2239488 * k + 1383964 := by
    unfold C
    simp [show (746496 * k + 461321) % 2 ≠ 0 by omega]
    omega
  have h16 : C (2239488 * k + 1383964) = 1119744 * k + 691982 := by
    unfold C
    simp [show (2239488 * k + 1383964) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 691982) = 559872 * k + 345991 := by
    unfold C
    simp [show (1119744 * k + 691982) % 2 = 0 by omega]
    omega
  have h18 : C (559872 * k + 345991) = 1679616 * k + 1037974 := by
    unfold C
    simp [show (559872 * k + 345991) % 2 ≠ 0 by omega]
    omega
  have h19 : C (1679616 * k + 1037974) = 839808 * k + 518987 := by
    unfold C
    simp [show (1679616 * k + 1037974) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 518987) = 2519424 * k + 1556962 := by
    unfold C
    simp [show (839808 * k + 518987) % 2 ≠ 0 by omega]
    omega
  have h21 : C (2519424 * k + 1556962) = 1259712 * k + 778481 := by
    unfold C
    simp [show (2519424 * k + 1556962) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 778481) = 3779136 * k + 2335444 := by
    unfold C
    simp [show (1259712 * k + 778481) % 2 ≠ 0 by omega]
    omega
  have h23 : C (3779136 * k + 2335444) = 1889568 * k + 1167722 := by
    unfold C
    simp [show (3779136 * k + 2335444) % 2 = 0 by omega]
    omega
  have h24 : C (1889568 * k + 1167722) = 944784 * k + 583861 := by
    unfold C
    simp [show (1889568 * k + 1167722) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 583861) = 2834352 * k + 1751584 := by
    unfold C
    simp [show (944784 * k + 583861) % 2 ≠ 0 by omega]
    omega
  have h26 : C (2834352 * k + 1751584) = 1417176 * k + 875792 := by
    unfold C
    simp [show (2834352 * k + 1751584) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 875792) = 708588 * k + 437896 := by
    unfold C
    simp [show (1417176 * k + 875792) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 437896) = 354294 * k + 218948 := by
    unfold C
    simp [show (708588 * k + 437896) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 218948) = 177147 * k + 109474 := by
    unfold C
    simp [show (354294 * k + 218948) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 161999) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 161999))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_162119 : ∀ k : Nat,
    iterate (262144 * k + 162119) 29 = 177147 * k + 109555 ∧
      177147 * k + 109555 < 262144 * k + 162119 := by
  intro k
  have h1 : C (262144 * k + 162119) = 786432 * k + 486358 := by
    unfold C
    simp [show (262144 * k + 162119) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 486358) = 393216 * k + 243179 := by
    unfold C
    simp [show (786432 * k + 486358) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 243179) = 1179648 * k + 729538 := by
    unfold C
    simp [show (393216 * k + 243179) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 729538) = 589824 * k + 364769 := by
    unfold C
    simp [show (1179648 * k + 729538) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 364769) = 1769472 * k + 1094308 := by
    unfold C
    simp [show (589824 * k + 364769) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 1094308) = 884736 * k + 547154 := by
    unfold C
    simp [show (1769472 * k + 1094308) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 547154) = 442368 * k + 273577 := by
    unfold C
    simp [show (884736 * k + 547154) % 2 = 0 by omega]
    omega
  have h8 : C (442368 * k + 273577) = 1327104 * k + 820732 := by
    unfold C
    simp [show (442368 * k + 273577) % 2 ≠ 0 by omega]
    omega
  have h9 : C (1327104 * k + 820732) = 663552 * k + 410366 := by
    unfold C
    simp [show (1327104 * k + 820732) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 410366) = 331776 * k + 205183 := by
    unfold C
    simp [show (663552 * k + 410366) % 2 = 0 by omega]
    omega
  have h11 : C (331776 * k + 205183) = 995328 * k + 615550 := by
    unfold C
    simp [show (331776 * k + 205183) % 2 ≠ 0 by omega]
    omega
  have h12 : C (995328 * k + 615550) = 497664 * k + 307775 := by
    unfold C
    simp [show (995328 * k + 615550) % 2 = 0 by omega]
    omega
  have h13 : C (497664 * k + 307775) = 1492992 * k + 923326 := by
    unfold C
    simp [show (497664 * k + 307775) % 2 ≠ 0 by omega]
    omega
  have h14 : C (1492992 * k + 923326) = 746496 * k + 461663 := by
    unfold C
    simp [show (1492992 * k + 923326) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 461663) = 2239488 * k + 1384990 := by
    unfold C
    simp [show (746496 * k + 461663) % 2 ≠ 0 by omega]
    omega
  have h16 : C (2239488 * k + 1384990) = 1119744 * k + 692495 := by
    unfold C
    simp [show (2239488 * k + 1384990) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 692495) = 3359232 * k + 2077486 := by
    unfold C
    simp [show (1119744 * k + 692495) % 2 ≠ 0 by omega]
    omega
  have h18 : C (3359232 * k + 2077486) = 1679616 * k + 1038743 := by
    unfold C
    simp [show (3359232 * k + 2077486) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 1038743) = 5038848 * k + 3116230 := by
    unfold C
    simp [show (1679616 * k + 1038743) % 2 ≠ 0 by omega]
    omega
  have h20 : C (5038848 * k + 3116230) = 2519424 * k + 1558115 := by
    unfold C
    simp [show (5038848 * k + 3116230) % 2 = 0 by omega]
    omega
  have h21 : C (2519424 * k + 1558115) = 7558272 * k + 4674346 := by
    unfold C
    simp [show (2519424 * k + 1558115) % 2 ≠ 0 by omega]
    omega
  have h22 : C (7558272 * k + 4674346) = 3779136 * k + 2337173 := by
    unfold C
    simp [show (7558272 * k + 4674346) % 2 = 0 by omega]
    omega
  have h23 : C (3779136 * k + 2337173) = 11337408 * k + 7011520 := by
    unfold C
    simp [show (3779136 * k + 2337173) % 2 ≠ 0 by omega]
    omega
  have h24 : C (11337408 * k + 7011520) = 5668704 * k + 3505760 := by
    unfold C
    simp [show (11337408 * k + 7011520) % 2 = 0 by omega]
    omega
  have h25 : C (5668704 * k + 3505760) = 2834352 * k + 1752880 := by
    unfold C
    simp [show (5668704 * k + 3505760) % 2 = 0 by omega]
    omega
  have h26 : C (2834352 * k + 1752880) = 1417176 * k + 876440 := by
    unfold C
    simp [show (2834352 * k + 1752880) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 876440) = 708588 * k + 438220 := by
    unfold C
    simp [show (1417176 * k + 876440) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 438220) = 354294 * k + 219110 := by
    unfold C
    simp [show (708588 * k + 438220) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 219110) = 177147 * k + 109555 := by
    unfold C
    simp [show (354294 * k + 219110) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 162119) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 162119))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_162203 : ∀ k : Nat,
    iterate (262144 * k + 162203) 29 = 177147 * k + 109612 ∧
      177147 * k + 109612 < 262144 * k + 162203 := by
  intro k
  have h1 : C (262144 * k + 162203) = 786432 * k + 486610 := by
    unfold C
    simp [show (262144 * k + 162203) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 486610) = 393216 * k + 243305 := by
    unfold C
    simp [show (786432 * k + 486610) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 243305) = 1179648 * k + 729916 := by
    unfold C
    simp [show (393216 * k + 243305) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 729916) = 589824 * k + 364958 := by
    unfold C
    simp [show (1179648 * k + 729916) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 364958) = 294912 * k + 182479 := by
    unfold C
    simp [show (589824 * k + 364958) % 2 = 0 by omega]
    omega
  have h6 : C (294912 * k + 182479) = 884736 * k + 547438 := by
    unfold C
    simp [show (294912 * k + 182479) % 2 ≠ 0 by omega]
    omega
  have h7 : C (884736 * k + 547438) = 442368 * k + 273719 := by
    unfold C
    simp [show (884736 * k + 547438) % 2 = 0 by omega]
    omega
  have h8 : C (442368 * k + 273719) = 1327104 * k + 821158 := by
    unfold C
    simp [show (442368 * k + 273719) % 2 ≠ 0 by omega]
    omega
  have h9 : C (1327104 * k + 821158) = 663552 * k + 410579 := by
    unfold C
    simp [show (1327104 * k + 821158) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 410579) = 1990656 * k + 1231738 := by
    unfold C
    simp [show (663552 * k + 410579) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 1231738) = 995328 * k + 615869 := by
    unfold C
    simp [show (1990656 * k + 1231738) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 615869) = 2985984 * k + 1847608 := by
    unfold C
    simp [show (995328 * k + 615869) % 2 ≠ 0 by omega]
    omega
  have h13 : C (2985984 * k + 1847608) = 1492992 * k + 923804 := by
    unfold C
    simp [show (2985984 * k + 1847608) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 923804) = 746496 * k + 461902 := by
    unfold C
    simp [show (1492992 * k + 923804) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 461902) = 373248 * k + 230951 := by
    unfold C
    simp [show (746496 * k + 461902) % 2 = 0 by omega]
    omega
  have h16 : C (373248 * k + 230951) = 1119744 * k + 692854 := by
    unfold C
    simp [show (373248 * k + 230951) % 2 ≠ 0 by omega]
    omega
  have h17 : C (1119744 * k + 692854) = 559872 * k + 346427 := by
    unfold C
    simp [show (1119744 * k + 692854) % 2 = 0 by omega]
    omega
  have h18 : C (559872 * k + 346427) = 1679616 * k + 1039282 := by
    unfold C
    simp [show (559872 * k + 346427) % 2 ≠ 0 by omega]
    omega
  have h19 : C (1679616 * k + 1039282) = 839808 * k + 519641 := by
    unfold C
    simp [show (1679616 * k + 1039282) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 519641) = 2519424 * k + 1558924 := by
    unfold C
    simp [show (839808 * k + 519641) % 2 ≠ 0 by omega]
    omega
  have h21 : C (2519424 * k + 1558924) = 1259712 * k + 779462 := by
    unfold C
    simp [show (2519424 * k + 1558924) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 779462) = 629856 * k + 389731 := by
    unfold C
    simp [show (1259712 * k + 779462) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 389731) = 1889568 * k + 1169194 := by
    unfold C
    simp [show (629856 * k + 389731) % 2 ≠ 0 by omega]
    omega
  have h24 : C (1889568 * k + 1169194) = 944784 * k + 584597 := by
    unfold C
    simp [show (1889568 * k + 1169194) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 584597) = 2834352 * k + 1753792 := by
    unfold C
    simp [show (944784 * k + 584597) % 2 ≠ 0 by omega]
    omega
  have h26 : C (2834352 * k + 1753792) = 1417176 * k + 876896 := by
    unfold C
    simp [show (2834352 * k + 1753792) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 876896) = 708588 * k + 438448 := by
    unfold C
    simp [show (1417176 * k + 876896) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 438448) = 354294 * k + 219224 := by
    unfold C
    simp [show (708588 * k + 438448) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 219224) = 177147 * k + 109612 := by
    unfold C
    simp [show (354294 * k + 219224) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 162203) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 162203))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_162351 : ∀ k : Nat,
    iterate (262144 * k + 162351) 29 = 177147 * k + 109712 ∧
      177147 * k + 109712 < 262144 * k + 162351 := by
  intro k
  have h1 : C (262144 * k + 162351) = 786432 * k + 487054 := by
    unfold C
    simp [show (262144 * k + 162351) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 487054) = 393216 * k + 243527 := by
    unfold C
    simp [show (786432 * k + 487054) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 243527) = 1179648 * k + 730582 := by
    unfold C
    simp [show (393216 * k + 243527) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 730582) = 589824 * k + 365291 := by
    unfold C
    simp [show (1179648 * k + 730582) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 365291) = 1769472 * k + 1095874 := by
    unfold C
    simp [show (589824 * k + 365291) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 1095874) = 884736 * k + 547937 := by
    unfold C
    simp [show (1769472 * k + 1095874) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 547937) = 2654208 * k + 1643812 := by
    unfold C
    simp [show (884736 * k + 547937) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 1643812) = 1327104 * k + 821906 := by
    unfold C
    simp [show (2654208 * k + 1643812) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 821906) = 663552 * k + 410953 := by
    unfold C
    simp [show (1327104 * k + 821906) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 410953) = 1990656 * k + 1232860 := by
    unfold C
    simp [show (663552 * k + 410953) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 1232860) = 995328 * k + 616430 := by
    unfold C
    simp [show (1990656 * k + 1232860) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 616430) = 497664 * k + 308215 := by
    unfold C
    simp [show (995328 * k + 616430) % 2 = 0 by omega]
    omega
  have h13 : C (497664 * k + 308215) = 1492992 * k + 924646 := by
    unfold C
    simp [show (497664 * k + 308215) % 2 ≠ 0 by omega]
    omega
  have h14 : C (1492992 * k + 924646) = 746496 * k + 462323 := by
    unfold C
    simp [show (1492992 * k + 924646) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 462323) = 2239488 * k + 1386970 := by
    unfold C
    simp [show (746496 * k + 462323) % 2 ≠ 0 by omega]
    omega
  have h16 : C (2239488 * k + 1386970) = 1119744 * k + 693485 := by
    unfold C
    simp [show (2239488 * k + 1386970) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 693485) = 3359232 * k + 2080456 := by
    unfold C
    simp [show (1119744 * k + 693485) % 2 ≠ 0 by omega]
    omega
  have h18 : C (3359232 * k + 2080456) = 1679616 * k + 1040228 := by
    unfold C
    simp [show (3359232 * k + 2080456) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 1040228) = 839808 * k + 520114 := by
    unfold C
    simp [show (1679616 * k + 1040228) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 520114) = 419904 * k + 260057 := by
    unfold C
    simp [show (839808 * k + 520114) % 2 = 0 by omega]
    omega
  have h21 : C (419904 * k + 260057) = 1259712 * k + 780172 := by
    unfold C
    simp [show (419904 * k + 260057) % 2 ≠ 0 by omega]
    omega
  have h22 : C (1259712 * k + 780172) = 629856 * k + 390086 := by
    unfold C
    simp [show (1259712 * k + 780172) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 390086) = 314928 * k + 195043 := by
    unfold C
    simp [show (629856 * k + 390086) % 2 = 0 by omega]
    omega
  have h24 : C (314928 * k + 195043) = 944784 * k + 585130 := by
    unfold C
    simp [show (314928 * k + 195043) % 2 ≠ 0 by omega]
    omega
  have h25 : C (944784 * k + 585130) = 472392 * k + 292565 := by
    unfold C
    simp [show (944784 * k + 585130) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 292565) = 1417176 * k + 877696 := by
    unfold C
    simp [show (472392 * k + 292565) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 877696) = 708588 * k + 438848 := by
    unfold C
    simp [show (1417176 * k + 877696) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 438848) = 354294 * k + 219424 := by
    unfold C
    simp [show (708588 * k + 438848) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 219424) = 177147 * k + 109712 := by
    unfold C
    simp [show (354294 * k + 219424) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 162351) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 162351))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_162471 : ∀ k : Nat,
    iterate (262144 * k + 162471) 29 = 177147 * k + 109793 ∧
      177147 * k + 109793 < 262144 * k + 162471 := by
  intro k
  have h1 : C (262144 * k + 162471) = 786432 * k + 487414 := by
    unfold C
    simp [show (262144 * k + 162471) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 487414) = 393216 * k + 243707 := by
    unfold C
    simp [show (786432 * k + 487414) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 243707) = 1179648 * k + 731122 := by
    unfold C
    simp [show (393216 * k + 243707) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 731122) = 589824 * k + 365561 := by
    unfold C
    simp [show (1179648 * k + 731122) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 365561) = 1769472 * k + 1096684 := by
    unfold C
    simp [show (589824 * k + 365561) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 1096684) = 884736 * k + 548342 := by
    unfold C
    simp [show (1769472 * k + 1096684) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 548342) = 442368 * k + 274171 := by
    unfold C
    simp [show (884736 * k + 548342) % 2 = 0 by omega]
    omega
  have h8 : C (442368 * k + 274171) = 1327104 * k + 822514 := by
    unfold C
    simp [show (442368 * k + 274171) % 2 ≠ 0 by omega]
    omega
  have h9 : C (1327104 * k + 822514) = 663552 * k + 411257 := by
    unfold C
    simp [show (1327104 * k + 822514) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 411257) = 1990656 * k + 1233772 := by
    unfold C
    simp [show (663552 * k + 411257) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 1233772) = 995328 * k + 616886 := by
    unfold C
    simp [show (1990656 * k + 1233772) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 616886) = 497664 * k + 308443 := by
    unfold C
    simp [show (995328 * k + 616886) % 2 = 0 by omega]
    omega
  have h13 : C (497664 * k + 308443) = 1492992 * k + 925330 := by
    unfold C
    simp [show (497664 * k + 308443) % 2 ≠ 0 by omega]
    omega
  have h14 : C (1492992 * k + 925330) = 746496 * k + 462665 := by
    unfold C
    simp [show (1492992 * k + 925330) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 462665) = 2239488 * k + 1387996 := by
    unfold C
    simp [show (746496 * k + 462665) % 2 ≠ 0 by omega]
    omega
  have h16 : C (2239488 * k + 1387996) = 1119744 * k + 693998 := by
    unfold C
    simp [show (2239488 * k + 1387996) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 693998) = 559872 * k + 346999 := by
    unfold C
    simp [show (1119744 * k + 693998) % 2 = 0 by omega]
    omega
  have h18 : C (559872 * k + 346999) = 1679616 * k + 1040998 := by
    unfold C
    simp [show (559872 * k + 346999) % 2 ≠ 0 by omega]
    omega
  have h19 : C (1679616 * k + 1040998) = 839808 * k + 520499 := by
    unfold C
    simp [show (1679616 * k + 1040998) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 520499) = 2519424 * k + 1561498 := by
    unfold C
    simp [show (839808 * k + 520499) % 2 ≠ 0 by omega]
    omega
  have h21 : C (2519424 * k + 1561498) = 1259712 * k + 780749 := by
    unfold C
    simp [show (2519424 * k + 1561498) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 780749) = 3779136 * k + 2342248 := by
    unfold C
    simp [show (1259712 * k + 780749) % 2 ≠ 0 by omega]
    omega
  have h23 : C (3779136 * k + 2342248) = 1889568 * k + 1171124 := by
    unfold C
    simp [show (3779136 * k + 2342248) % 2 = 0 by omega]
    omega
  have h24 : C (1889568 * k + 1171124) = 944784 * k + 585562 := by
    unfold C
    simp [show (1889568 * k + 1171124) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 585562) = 472392 * k + 292781 := by
    unfold C
    simp [show (944784 * k + 585562) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 292781) = 1417176 * k + 878344 := by
    unfold C
    simp [show (472392 * k + 292781) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 878344) = 708588 * k + 439172 := by
    unfold C
    simp [show (1417176 * k + 878344) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 439172) = 354294 * k + 219586 := by
    unfold C
    simp [show (708588 * k + 439172) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 219586) = 177147 * k + 109793 := by
    unfold C
    simp [show (354294 * k + 219586) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 162471) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 162471))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_162511 : ∀ k : Nat,
    iterate (262144 * k + 162511) 29 = 177147 * k + 109820 ∧
      177147 * k + 109820 < 262144 * k + 162511 := by
  intro k
  have h1 : C (262144 * k + 162511) = 786432 * k + 487534 := by
    unfold C
    simp [show (262144 * k + 162511) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 487534) = 393216 * k + 243767 := by
    unfold C
    simp [show (786432 * k + 487534) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 243767) = 1179648 * k + 731302 := by
    unfold C
    simp [show (393216 * k + 243767) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 731302) = 589824 * k + 365651 := by
    unfold C
    simp [show (1179648 * k + 731302) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 365651) = 1769472 * k + 1096954 := by
    unfold C
    simp [show (589824 * k + 365651) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 1096954) = 884736 * k + 548477 := by
    unfold C
    simp [show (1769472 * k + 1096954) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 548477) = 2654208 * k + 1645432 := by
    unfold C
    simp [show (884736 * k + 548477) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 1645432) = 1327104 * k + 822716 := by
    unfold C
    simp [show (2654208 * k + 1645432) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 822716) = 663552 * k + 411358 := by
    unfold C
    simp [show (1327104 * k + 822716) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 411358) = 331776 * k + 205679 := by
    unfold C
    simp [show (663552 * k + 411358) % 2 = 0 by omega]
    omega
  have h11 : C (331776 * k + 205679) = 995328 * k + 617038 := by
    unfold C
    simp [show (331776 * k + 205679) % 2 ≠ 0 by omega]
    omega
  have h12 : C (995328 * k + 617038) = 497664 * k + 308519 := by
    unfold C
    simp [show (995328 * k + 617038) % 2 = 0 by omega]
    omega
  have h13 : C (497664 * k + 308519) = 1492992 * k + 925558 := by
    unfold C
    simp [show (497664 * k + 308519) % 2 ≠ 0 by omega]
    omega
  have h14 : C (1492992 * k + 925558) = 746496 * k + 462779 := by
    unfold C
    simp [show (1492992 * k + 925558) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 462779) = 2239488 * k + 1388338 := by
    unfold C
    simp [show (746496 * k + 462779) % 2 ≠ 0 by omega]
    omega
  have h16 : C (2239488 * k + 1388338) = 1119744 * k + 694169 := by
    unfold C
    simp [show (2239488 * k + 1388338) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 694169) = 3359232 * k + 2082508 := by
    unfold C
    simp [show (1119744 * k + 694169) % 2 ≠ 0 by omega]
    omega
  have h18 : C (3359232 * k + 2082508) = 1679616 * k + 1041254 := by
    unfold C
    simp [show (3359232 * k + 2082508) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 1041254) = 839808 * k + 520627 := by
    unfold C
    simp [show (1679616 * k + 1041254) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 520627) = 2519424 * k + 1561882 := by
    unfold C
    simp [show (839808 * k + 520627) % 2 ≠ 0 by omega]
    omega
  have h21 : C (2519424 * k + 1561882) = 1259712 * k + 780941 := by
    unfold C
    simp [show (2519424 * k + 1561882) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 780941) = 3779136 * k + 2342824 := by
    unfold C
    simp [show (1259712 * k + 780941) % 2 ≠ 0 by omega]
    omega
  have h23 : C (3779136 * k + 2342824) = 1889568 * k + 1171412 := by
    unfold C
    simp [show (3779136 * k + 2342824) % 2 = 0 by omega]
    omega
  have h24 : C (1889568 * k + 1171412) = 944784 * k + 585706 := by
    unfold C
    simp [show (1889568 * k + 1171412) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 585706) = 472392 * k + 292853 := by
    unfold C
    simp [show (944784 * k + 585706) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 292853) = 1417176 * k + 878560 := by
    unfold C
    simp [show (472392 * k + 292853) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 878560) = 708588 * k + 439280 := by
    unfold C
    simp [show (1417176 * k + 878560) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 439280) = 354294 * k + 219640 := by
    unfold C
    simp [show (708588 * k + 439280) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 219640) = 177147 * k + 109820 := by
    unfold C
    simp [show (354294 * k + 219640) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 162511) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 162511))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_162555 : ∀ k : Nat,
    iterate (262144 * k + 162555) 29 = 177147 * k + 109850 ∧
      177147 * k + 109850 < 262144 * k + 162555 := by
  intro k
  have h1 : C (262144 * k + 162555) = 786432 * k + 487666 := by
    unfold C
    simp [show (262144 * k + 162555) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 487666) = 393216 * k + 243833 := by
    unfold C
    simp [show (786432 * k + 487666) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 243833) = 1179648 * k + 731500 := by
    unfold C
    simp [show (393216 * k + 243833) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 731500) = 589824 * k + 365750 := by
    unfold C
    simp [show (1179648 * k + 731500) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 365750) = 294912 * k + 182875 := by
    unfold C
    simp [show (589824 * k + 365750) % 2 = 0 by omega]
    omega
  have h6 : C (294912 * k + 182875) = 884736 * k + 548626 := by
    unfold C
    simp [show (294912 * k + 182875) % 2 ≠ 0 by omega]
    omega
  have h7 : C (884736 * k + 548626) = 442368 * k + 274313 := by
    unfold C
    simp [show (884736 * k + 548626) % 2 = 0 by omega]
    omega
  have h8 : C (442368 * k + 274313) = 1327104 * k + 822940 := by
    unfold C
    simp [show (442368 * k + 274313) % 2 ≠ 0 by omega]
    omega
  have h9 : C (1327104 * k + 822940) = 663552 * k + 411470 := by
    unfold C
    simp [show (1327104 * k + 822940) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 411470) = 331776 * k + 205735 := by
    unfold C
    simp [show (663552 * k + 411470) % 2 = 0 by omega]
    omega
  have h11 : C (331776 * k + 205735) = 995328 * k + 617206 := by
    unfold C
    simp [show (331776 * k + 205735) % 2 ≠ 0 by omega]
    omega
  have h12 : C (995328 * k + 617206) = 497664 * k + 308603 := by
    unfold C
    simp [show (995328 * k + 617206) % 2 = 0 by omega]
    omega
  have h13 : C (497664 * k + 308603) = 1492992 * k + 925810 := by
    unfold C
    simp [show (497664 * k + 308603) % 2 ≠ 0 by omega]
    omega
  have h14 : C (1492992 * k + 925810) = 746496 * k + 462905 := by
    unfold C
    simp [show (1492992 * k + 925810) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 462905) = 2239488 * k + 1388716 := by
    unfold C
    simp [show (746496 * k + 462905) % 2 ≠ 0 by omega]
    omega
  have h16 : C (2239488 * k + 1388716) = 1119744 * k + 694358 := by
    unfold C
    simp [show (2239488 * k + 1388716) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 694358) = 559872 * k + 347179 := by
    unfold C
    simp [show (1119744 * k + 694358) % 2 = 0 by omega]
    omega
  have h18 : C (559872 * k + 347179) = 1679616 * k + 1041538 := by
    unfold C
    simp [show (559872 * k + 347179) % 2 ≠ 0 by omega]
    omega
  have h19 : C (1679616 * k + 1041538) = 839808 * k + 520769 := by
    unfold C
    simp [show (1679616 * k + 1041538) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 520769) = 2519424 * k + 1562308 := by
    unfold C
    simp [show (839808 * k + 520769) % 2 ≠ 0 by omega]
    omega
  have h21 : C (2519424 * k + 1562308) = 1259712 * k + 781154 := by
    unfold C
    simp [show (2519424 * k + 1562308) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 781154) = 629856 * k + 390577 := by
    unfold C
    simp [show (1259712 * k + 781154) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 390577) = 1889568 * k + 1171732 := by
    unfold C
    simp [show (629856 * k + 390577) % 2 ≠ 0 by omega]
    omega
  have h24 : C (1889568 * k + 1171732) = 944784 * k + 585866 := by
    unfold C
    simp [show (1889568 * k + 1171732) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 585866) = 472392 * k + 292933 := by
    unfold C
    simp [show (944784 * k + 585866) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 292933) = 1417176 * k + 878800 := by
    unfold C
    simp [show (472392 * k + 292933) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 878800) = 708588 * k + 439400 := by
    unfold C
    simp [show (1417176 * k + 878800) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 439400) = 354294 * k + 219700 := by
    unfold C
    simp [show (708588 * k + 439400) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 219700) = 177147 * k + 109850 := by
    unfold C
    simp [show (354294 * k + 219700) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 162555) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 162555))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_162559 : ∀ k : Nat,
    iterate (262144 * k + 162559) 29 = 177147 * k + 109852 ∧
      177147 * k + 109852 < 262144 * k + 162559 := by
  intro k
  have h1 : C (262144 * k + 162559) = 786432 * k + 487678 := by
    unfold C
    simp [show (262144 * k + 162559) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 487678) = 393216 * k + 243839 := by
    unfold C
    simp [show (786432 * k + 487678) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 243839) = 1179648 * k + 731518 := by
    unfold C
    simp [show (393216 * k + 243839) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 731518) = 589824 * k + 365759 := by
    unfold C
    simp [show (1179648 * k + 731518) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 365759) = 1769472 * k + 1097278 := by
    unfold C
    simp [show (589824 * k + 365759) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 1097278) = 884736 * k + 548639 := by
    unfold C
    simp [show (1769472 * k + 1097278) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 548639) = 2654208 * k + 1645918 := by
    unfold C
    simp [show (884736 * k + 548639) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 1645918) = 1327104 * k + 822959 := by
    unfold C
    simp [show (2654208 * k + 1645918) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 822959) = 3981312 * k + 2468878 := by
    unfold C
    simp [show (1327104 * k + 822959) % 2 ≠ 0 by omega]
    omega
  have h10 : C (3981312 * k + 2468878) = 1990656 * k + 1234439 := by
    unfold C
    simp [show (3981312 * k + 2468878) % 2 = 0 by omega]
    omega
  have h11 : C (1990656 * k + 1234439) = 5971968 * k + 3703318 := by
    unfold C
    simp [show (1990656 * k + 1234439) % 2 ≠ 0 by omega]
    omega
  have h12 : C (5971968 * k + 3703318) = 2985984 * k + 1851659 := by
    unfold C
    simp [show (5971968 * k + 3703318) % 2 = 0 by omega]
    omega
  have h13 : C (2985984 * k + 1851659) = 8957952 * k + 5554978 := by
    unfold C
    simp [show (2985984 * k + 1851659) % 2 ≠ 0 by omega]
    omega
  have h14 : C (8957952 * k + 5554978) = 4478976 * k + 2777489 := by
    unfold C
    simp [show (8957952 * k + 5554978) % 2 = 0 by omega]
    omega
  have h15 : C (4478976 * k + 2777489) = 13436928 * k + 8332468 := by
    unfold C
    simp [show (4478976 * k + 2777489) % 2 ≠ 0 by omega]
    omega
  have h16 : C (13436928 * k + 8332468) = 6718464 * k + 4166234 := by
    unfold C
    simp [show (13436928 * k + 8332468) % 2 = 0 by omega]
    omega
  have h17 : C (6718464 * k + 4166234) = 3359232 * k + 2083117 := by
    unfold C
    simp [show (6718464 * k + 4166234) % 2 = 0 by omega]
    omega
  have h18 : C (3359232 * k + 2083117) = 10077696 * k + 6249352 := by
    unfold C
    simp [show (3359232 * k + 2083117) % 2 ≠ 0 by omega]
    omega
  have h19 : C (10077696 * k + 6249352) = 5038848 * k + 3124676 := by
    unfold C
    simp [show (10077696 * k + 6249352) % 2 = 0 by omega]
    omega
  have h20 : C (5038848 * k + 3124676) = 2519424 * k + 1562338 := by
    unfold C
    simp [show (5038848 * k + 3124676) % 2 = 0 by omega]
    omega
  have h21 : C (2519424 * k + 1562338) = 1259712 * k + 781169 := by
    unfold C
    simp [show (2519424 * k + 1562338) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 781169) = 3779136 * k + 2343508 := by
    unfold C
    simp [show (1259712 * k + 781169) % 2 ≠ 0 by omega]
    omega
  have h23 : C (3779136 * k + 2343508) = 1889568 * k + 1171754 := by
    unfold C
    simp [show (3779136 * k + 2343508) % 2 = 0 by omega]
    omega
  have h24 : C (1889568 * k + 1171754) = 944784 * k + 585877 := by
    unfold C
    simp [show (1889568 * k + 1171754) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 585877) = 2834352 * k + 1757632 := by
    unfold C
    simp [show (944784 * k + 585877) % 2 ≠ 0 by omega]
    omega
  have h26 : C (2834352 * k + 1757632) = 1417176 * k + 878816 := by
    unfold C
    simp [show (2834352 * k + 1757632) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 878816) = 708588 * k + 439408 := by
    unfold C
    simp [show (1417176 * k + 878816) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 439408) = 354294 * k + 219704 := by
    unfold C
    simp [show (708588 * k + 439408) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 219704) = 177147 * k + 109852 := by
    unfold C
    simp [show (354294 * k + 219704) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 162559) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 162559))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_162591 : ∀ k : Nat,
    iterate (262144 * k + 162591) 29 = 177147 * k + 109874 ∧
      177147 * k + 109874 < 262144 * k + 162591 := by
  intro k
  have h1 : C (262144 * k + 162591) = 786432 * k + 487774 := by
    unfold C
    simp [show (262144 * k + 162591) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 487774) = 393216 * k + 243887 := by
    unfold C
    simp [show (786432 * k + 487774) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 243887) = 1179648 * k + 731662 := by
    unfold C
    simp [show (393216 * k + 243887) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 731662) = 589824 * k + 365831 := by
    unfold C
    simp [show (1179648 * k + 731662) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 365831) = 1769472 * k + 1097494 := by
    unfold C
    simp [show (589824 * k + 365831) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 1097494) = 884736 * k + 548747 := by
    unfold C
    simp [show (1769472 * k + 1097494) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 548747) = 2654208 * k + 1646242 := by
    unfold C
    simp [show (884736 * k + 548747) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 1646242) = 1327104 * k + 823121 := by
    unfold C
    simp [show (2654208 * k + 1646242) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 823121) = 3981312 * k + 2469364 := by
    unfold C
    simp [show (1327104 * k + 823121) % 2 ≠ 0 by omega]
    omega
  have h10 : C (3981312 * k + 2469364) = 1990656 * k + 1234682 := by
    unfold C
    simp [show (3981312 * k + 2469364) % 2 = 0 by omega]
    omega
  have h11 : C (1990656 * k + 1234682) = 995328 * k + 617341 := by
    unfold C
    simp [show (1990656 * k + 1234682) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 617341) = 2985984 * k + 1852024 := by
    unfold C
    simp [show (995328 * k + 617341) % 2 ≠ 0 by omega]
    omega
  have h13 : C (2985984 * k + 1852024) = 1492992 * k + 926012 := by
    unfold C
    simp [show (2985984 * k + 1852024) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 926012) = 746496 * k + 463006 := by
    unfold C
    simp [show (1492992 * k + 926012) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 463006) = 373248 * k + 231503 := by
    unfold C
    simp [show (746496 * k + 463006) % 2 = 0 by omega]
    omega
  have h16 : C (373248 * k + 231503) = 1119744 * k + 694510 := by
    unfold C
    simp [show (373248 * k + 231503) % 2 ≠ 0 by omega]
    omega
  have h17 : C (1119744 * k + 694510) = 559872 * k + 347255 := by
    unfold C
    simp [show (1119744 * k + 694510) % 2 = 0 by omega]
    omega
  have h18 : C (559872 * k + 347255) = 1679616 * k + 1041766 := by
    unfold C
    simp [show (559872 * k + 347255) % 2 ≠ 0 by omega]
    omega
  have h19 : C (1679616 * k + 1041766) = 839808 * k + 520883 := by
    unfold C
    simp [show (1679616 * k + 1041766) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 520883) = 2519424 * k + 1562650 := by
    unfold C
    simp [show (839808 * k + 520883) % 2 ≠ 0 by omega]
    omega
  have h21 : C (2519424 * k + 1562650) = 1259712 * k + 781325 := by
    unfold C
    simp [show (2519424 * k + 1562650) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 781325) = 3779136 * k + 2343976 := by
    unfold C
    simp [show (1259712 * k + 781325) % 2 ≠ 0 by omega]
    omega
  have h23 : C (3779136 * k + 2343976) = 1889568 * k + 1171988 := by
    unfold C
    simp [show (3779136 * k + 2343976) % 2 = 0 by omega]
    omega
  have h24 : C (1889568 * k + 1171988) = 944784 * k + 585994 := by
    unfold C
    simp [show (1889568 * k + 1171988) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 585994) = 472392 * k + 292997 := by
    unfold C
    simp [show (944784 * k + 585994) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 292997) = 1417176 * k + 878992 := by
    unfold C
    simp [show (472392 * k + 292997) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 878992) = 708588 * k + 439496 := by
    unfold C
    simp [show (1417176 * k + 878992) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 439496) = 354294 * k + 219748 := by
    unfold C
    simp [show (708588 * k + 439496) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 219748) = 177147 * k + 109874 := by
    unfold C
    simp [show (354294 * k + 219748) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 162591) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 162591))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_162751 : ∀ k : Nat,
    iterate (262144 * k + 162751) 29 = 177147 * k + 109982 ∧
      177147 * k + 109982 < 262144 * k + 162751 := by
  intro k
  have h1 : C (262144 * k + 162751) = 786432 * k + 488254 := by
    unfold C
    simp [show (262144 * k + 162751) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 488254) = 393216 * k + 244127 := by
    unfold C
    simp [show (786432 * k + 488254) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 244127) = 1179648 * k + 732382 := by
    unfold C
    simp [show (393216 * k + 244127) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 732382) = 589824 * k + 366191 := by
    unfold C
    simp [show (1179648 * k + 732382) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 366191) = 1769472 * k + 1098574 := by
    unfold C
    simp [show (589824 * k + 366191) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 1098574) = 884736 * k + 549287 := by
    unfold C
    simp [show (1769472 * k + 1098574) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 549287) = 2654208 * k + 1647862 := by
    unfold C
    simp [show (884736 * k + 549287) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 1647862) = 1327104 * k + 823931 := by
    unfold C
    simp [show (2654208 * k + 1647862) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 823931) = 3981312 * k + 2471794 := by
    unfold C
    simp [show (1327104 * k + 823931) % 2 ≠ 0 by omega]
    omega
  have h10 : C (3981312 * k + 2471794) = 1990656 * k + 1235897 := by
    unfold C
    simp [show (3981312 * k + 2471794) % 2 = 0 by omega]
    omega
  have h11 : C (1990656 * k + 1235897) = 5971968 * k + 3707692 := by
    unfold C
    simp [show (1990656 * k + 1235897) % 2 ≠ 0 by omega]
    omega
  have h12 : C (5971968 * k + 3707692) = 2985984 * k + 1853846 := by
    unfold C
    simp [show (5971968 * k + 3707692) % 2 = 0 by omega]
    omega
  have h13 : C (2985984 * k + 1853846) = 1492992 * k + 926923 := by
    unfold C
    simp [show (2985984 * k + 1853846) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 926923) = 4478976 * k + 2780770 := by
    unfold C
    simp [show (1492992 * k + 926923) % 2 ≠ 0 by omega]
    omega
  have h15 : C (4478976 * k + 2780770) = 2239488 * k + 1390385 := by
    unfold C
    simp [show (4478976 * k + 2780770) % 2 = 0 by omega]
    omega
  have h16 : C (2239488 * k + 1390385) = 6718464 * k + 4171156 := by
    unfold C
    simp [show (2239488 * k + 1390385) % 2 ≠ 0 by omega]
    omega
  have h17 : C (6718464 * k + 4171156) = 3359232 * k + 2085578 := by
    unfold C
    simp [show (6718464 * k + 4171156) % 2 = 0 by omega]
    omega
  have h18 : C (3359232 * k + 2085578) = 1679616 * k + 1042789 := by
    unfold C
    simp [show (3359232 * k + 2085578) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 1042789) = 5038848 * k + 3128368 := by
    unfold C
    simp [show (1679616 * k + 1042789) % 2 ≠ 0 by omega]
    omega
  have h20 : C (5038848 * k + 3128368) = 2519424 * k + 1564184 := by
    unfold C
    simp [show (5038848 * k + 3128368) % 2 = 0 by omega]
    omega
  have h21 : C (2519424 * k + 1564184) = 1259712 * k + 782092 := by
    unfold C
    simp [show (2519424 * k + 1564184) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 782092) = 629856 * k + 391046 := by
    unfold C
    simp [show (1259712 * k + 782092) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 391046) = 314928 * k + 195523 := by
    unfold C
    simp [show (629856 * k + 391046) % 2 = 0 by omega]
    omega
  have h24 : C (314928 * k + 195523) = 944784 * k + 586570 := by
    unfold C
    simp [show (314928 * k + 195523) % 2 ≠ 0 by omega]
    omega
  have h25 : C (944784 * k + 586570) = 472392 * k + 293285 := by
    unfold C
    simp [show (944784 * k + 586570) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 293285) = 1417176 * k + 879856 := by
    unfold C
    simp [show (472392 * k + 293285) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 879856) = 708588 * k + 439928 := by
    unfold C
    simp [show (1417176 * k + 879856) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 439928) = 354294 * k + 219964 := by
    unfold C
    simp [show (708588 * k + 439928) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 219964) = 177147 * k + 109982 := by
    unfold C
    simp [show (354294 * k + 219964) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 162751) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 162751))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_163483 : ∀ k : Nat,
    iterate (262144 * k + 163483) 29 = 177147 * k + 110477 ∧
      177147 * k + 110477 < 262144 * k + 163483 := by
  intro k
  have h1 : C (262144 * k + 163483) = 786432 * k + 490450 := by
    unfold C
    simp [show (262144 * k + 163483) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 490450) = 393216 * k + 245225 := by
    unfold C
    simp [show (786432 * k + 490450) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 245225) = 1179648 * k + 735676 := by
    unfold C
    simp [show (393216 * k + 245225) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 735676) = 589824 * k + 367838 := by
    unfold C
    simp [show (1179648 * k + 735676) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 367838) = 294912 * k + 183919 := by
    unfold C
    simp [show (589824 * k + 367838) % 2 = 0 by omega]
    omega
  have h6 : C (294912 * k + 183919) = 884736 * k + 551758 := by
    unfold C
    simp [show (294912 * k + 183919) % 2 ≠ 0 by omega]
    omega
  have h7 : C (884736 * k + 551758) = 442368 * k + 275879 := by
    unfold C
    simp [show (884736 * k + 551758) % 2 = 0 by omega]
    omega
  have h8 : C (442368 * k + 275879) = 1327104 * k + 827638 := by
    unfold C
    simp [show (442368 * k + 275879) % 2 ≠ 0 by omega]
    omega
  have h9 : C (1327104 * k + 827638) = 663552 * k + 413819 := by
    unfold C
    simp [show (1327104 * k + 827638) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 413819) = 1990656 * k + 1241458 := by
    unfold C
    simp [show (663552 * k + 413819) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 1241458) = 995328 * k + 620729 := by
    unfold C
    simp [show (1990656 * k + 1241458) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 620729) = 2985984 * k + 1862188 := by
    unfold C
    simp [show (995328 * k + 620729) % 2 ≠ 0 by omega]
    omega
  have h13 : C (2985984 * k + 1862188) = 1492992 * k + 931094 := by
    unfold C
    simp [show (2985984 * k + 1862188) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 931094) = 746496 * k + 465547 := by
    unfold C
    simp [show (1492992 * k + 931094) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 465547) = 2239488 * k + 1396642 := by
    unfold C
    simp [show (746496 * k + 465547) % 2 ≠ 0 by omega]
    omega
  have h16 : C (2239488 * k + 1396642) = 1119744 * k + 698321 := by
    unfold C
    simp [show (2239488 * k + 1396642) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 698321) = 3359232 * k + 2094964 := by
    unfold C
    simp [show (1119744 * k + 698321) % 2 ≠ 0 by omega]
    omega
  have h18 : C (3359232 * k + 2094964) = 1679616 * k + 1047482 := by
    unfold C
    simp [show (3359232 * k + 2094964) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 1047482) = 839808 * k + 523741 := by
    unfold C
    simp [show (1679616 * k + 1047482) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 523741) = 2519424 * k + 1571224 := by
    unfold C
    simp [show (839808 * k + 523741) % 2 ≠ 0 by omega]
    omega
  have h21 : C (2519424 * k + 1571224) = 1259712 * k + 785612 := by
    unfold C
    simp [show (2519424 * k + 1571224) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 785612) = 629856 * k + 392806 := by
    unfold C
    simp [show (1259712 * k + 785612) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 392806) = 314928 * k + 196403 := by
    unfold C
    simp [show (629856 * k + 392806) % 2 = 0 by omega]
    omega
  have h24 : C (314928 * k + 196403) = 944784 * k + 589210 := by
    unfold C
    simp [show (314928 * k + 196403) % 2 ≠ 0 by omega]
    omega
  have h25 : C (944784 * k + 589210) = 472392 * k + 294605 := by
    unfold C
    simp [show (944784 * k + 589210) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 294605) = 1417176 * k + 883816 := by
    unfold C
    simp [show (472392 * k + 294605) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 883816) = 708588 * k + 441908 := by
    unfold C
    simp [show (1417176 * k + 883816) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 441908) = 354294 * k + 220954 := by
    unfold C
    simp [show (708588 * k + 441908) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 220954) = 177147 * k + 110477 := by
    unfold C
    simp [show (354294 * k + 220954) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 163483) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 163483))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_164167 : ∀ k : Nat,
    iterate (262144 * k + 164167) 29 = 177147 * k + 110939 ∧
      177147 * k + 110939 < 262144 * k + 164167 := by
  intro k
  have h1 : C (262144 * k + 164167) = 786432 * k + 492502 := by
    unfold C
    simp [show (262144 * k + 164167) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 492502) = 393216 * k + 246251 := by
    unfold C
    simp [show (786432 * k + 492502) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 246251) = 1179648 * k + 738754 := by
    unfold C
    simp [show (393216 * k + 246251) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 738754) = 589824 * k + 369377 := by
    unfold C
    simp [show (1179648 * k + 738754) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 369377) = 1769472 * k + 1108132 := by
    unfold C
    simp [show (589824 * k + 369377) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 1108132) = 884736 * k + 554066 := by
    unfold C
    simp [show (1769472 * k + 1108132) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 554066) = 442368 * k + 277033 := by
    unfold C
    simp [show (884736 * k + 554066) % 2 = 0 by omega]
    omega
  have h8 : C (442368 * k + 277033) = 1327104 * k + 831100 := by
    unfold C
    simp [show (442368 * k + 277033) % 2 ≠ 0 by omega]
    omega
  have h9 : C (1327104 * k + 831100) = 663552 * k + 415550 := by
    unfold C
    simp [show (1327104 * k + 831100) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 415550) = 331776 * k + 207775 := by
    unfold C
    simp [show (663552 * k + 415550) % 2 = 0 by omega]
    omega
  have h11 : C (331776 * k + 207775) = 995328 * k + 623326 := by
    unfold C
    simp [show (331776 * k + 207775) % 2 ≠ 0 by omega]
    omega
  have h12 : C (995328 * k + 623326) = 497664 * k + 311663 := by
    unfold C
    simp [show (995328 * k + 623326) % 2 = 0 by omega]
    omega
  have h13 : C (497664 * k + 311663) = 1492992 * k + 934990 := by
    unfold C
    simp [show (497664 * k + 311663) % 2 ≠ 0 by omega]
    omega
  have h14 : C (1492992 * k + 934990) = 746496 * k + 467495 := by
    unfold C
    simp [show (1492992 * k + 934990) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 467495) = 2239488 * k + 1402486 := by
    unfold C
    simp [show (746496 * k + 467495) % 2 ≠ 0 by omega]
    omega
  have h16 : C (2239488 * k + 1402486) = 1119744 * k + 701243 := by
    unfold C
    simp [show (2239488 * k + 1402486) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 701243) = 3359232 * k + 2103730 := by
    unfold C
    simp [show (1119744 * k + 701243) % 2 ≠ 0 by omega]
    omega
  have h18 : C (3359232 * k + 2103730) = 1679616 * k + 1051865 := by
    unfold C
    simp [show (3359232 * k + 2103730) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 1051865) = 5038848 * k + 3155596 := by
    unfold C
    simp [show (1679616 * k + 1051865) % 2 ≠ 0 by omega]
    omega
  have h20 : C (5038848 * k + 3155596) = 2519424 * k + 1577798 := by
    unfold C
    simp [show (5038848 * k + 3155596) % 2 = 0 by omega]
    omega
  have h21 : C (2519424 * k + 1577798) = 1259712 * k + 788899 := by
    unfold C
    simp [show (2519424 * k + 1577798) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 788899) = 3779136 * k + 2366698 := by
    unfold C
    simp [show (1259712 * k + 788899) % 2 ≠ 0 by omega]
    omega
  have h23 : C (3779136 * k + 2366698) = 1889568 * k + 1183349 := by
    unfold C
    simp [show (3779136 * k + 2366698) % 2 = 0 by omega]
    omega
  have h24 : C (1889568 * k + 1183349) = 5668704 * k + 3550048 := by
    unfold C
    simp [show (1889568 * k + 1183349) % 2 ≠ 0 by omega]
    omega
  have h25 : C (5668704 * k + 3550048) = 2834352 * k + 1775024 := by
    unfold C
    simp [show (5668704 * k + 3550048) % 2 = 0 by omega]
    omega
  have h26 : C (2834352 * k + 1775024) = 1417176 * k + 887512 := by
    unfold C
    simp [show (2834352 * k + 1775024) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 887512) = 708588 * k + 443756 := by
    unfold C
    simp [show (1417176 * k + 887512) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 443756) = 354294 * k + 221878 := by
    unfold C
    simp [show (708588 * k + 443756) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 221878) = 177147 * k + 110939 := by
    unfold C
    simp [show (354294 * k + 221878) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 164167) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 164167))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_164583 : ∀ k : Nat,
    iterate (262144 * k + 164583) 29 = 177147 * k + 111220 ∧
      177147 * k + 111220 < 262144 * k + 164583 := by
  intro k
  have h1 : C (262144 * k + 164583) = 786432 * k + 493750 := by
    unfold C
    simp [show (262144 * k + 164583) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 493750) = 393216 * k + 246875 := by
    unfold C
    simp [show (786432 * k + 493750) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 246875) = 1179648 * k + 740626 := by
    unfold C
    simp [show (393216 * k + 246875) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 740626) = 589824 * k + 370313 := by
    unfold C
    simp [show (1179648 * k + 740626) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 370313) = 1769472 * k + 1110940 := by
    unfold C
    simp [show (589824 * k + 370313) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 1110940) = 884736 * k + 555470 := by
    unfold C
    simp [show (1769472 * k + 1110940) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 555470) = 442368 * k + 277735 := by
    unfold C
    simp [show (884736 * k + 555470) % 2 = 0 by omega]
    omega
  have h8 : C (442368 * k + 277735) = 1327104 * k + 833206 := by
    unfold C
    simp [show (442368 * k + 277735) % 2 ≠ 0 by omega]
    omega
  have h9 : C (1327104 * k + 833206) = 663552 * k + 416603 := by
    unfold C
    simp [show (1327104 * k + 833206) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 416603) = 1990656 * k + 1249810 := by
    unfold C
    simp [show (663552 * k + 416603) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 1249810) = 995328 * k + 624905 := by
    unfold C
    simp [show (1990656 * k + 1249810) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 624905) = 2985984 * k + 1874716 := by
    unfold C
    simp [show (995328 * k + 624905) % 2 ≠ 0 by omega]
    omega
  have h13 : C (2985984 * k + 1874716) = 1492992 * k + 937358 := by
    unfold C
    simp [show (2985984 * k + 1874716) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 937358) = 746496 * k + 468679 := by
    unfold C
    simp [show (1492992 * k + 937358) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 468679) = 2239488 * k + 1406038 := by
    unfold C
    simp [show (746496 * k + 468679) % 2 ≠ 0 by omega]
    omega
  have h16 : C (2239488 * k + 1406038) = 1119744 * k + 703019 := by
    unfold C
    simp [show (2239488 * k + 1406038) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 703019) = 3359232 * k + 2109058 := by
    unfold C
    simp [show (1119744 * k + 703019) % 2 ≠ 0 by omega]
    omega
  have h18 : C (3359232 * k + 2109058) = 1679616 * k + 1054529 := by
    unfold C
    simp [show (3359232 * k + 2109058) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 1054529) = 5038848 * k + 3163588 := by
    unfold C
    simp [show (1679616 * k + 1054529) % 2 ≠ 0 by omega]
    omega
  have h20 : C (5038848 * k + 3163588) = 2519424 * k + 1581794 := by
    unfold C
    simp [show (5038848 * k + 3163588) % 2 = 0 by omega]
    omega
  have h21 : C (2519424 * k + 1581794) = 1259712 * k + 790897 := by
    unfold C
    simp [show (2519424 * k + 1581794) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 790897) = 3779136 * k + 2372692 := by
    unfold C
    simp [show (1259712 * k + 790897) % 2 ≠ 0 by omega]
    omega
  have h23 : C (3779136 * k + 2372692) = 1889568 * k + 1186346 := by
    unfold C
    simp [show (3779136 * k + 2372692) % 2 = 0 by omega]
    omega
  have h24 : C (1889568 * k + 1186346) = 944784 * k + 593173 := by
    unfold C
    simp [show (1889568 * k + 1186346) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 593173) = 2834352 * k + 1779520 := by
    unfold C
    simp [show (944784 * k + 593173) % 2 ≠ 0 by omega]
    omega
  have h26 : C (2834352 * k + 1779520) = 1417176 * k + 889760 := by
    unfold C
    simp [show (2834352 * k + 1779520) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 889760) = 708588 * k + 444880 := by
    unfold C
    simp [show (1417176 * k + 889760) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 444880) = 354294 * k + 222440 := by
    unfold C
    simp [show (708588 * k + 444880) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 222440) = 177147 * k + 111220 := by
    unfold C
    simp [show (354294 * k + 222440) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 164583) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 164583))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_164607 : ∀ k : Nat,
    iterate (262144 * k + 164607) 29 = 177147 * k + 111236 ∧
      177147 * k + 111236 < 262144 * k + 164607 := by
  intro k
  have h1 : C (262144 * k + 164607) = 786432 * k + 493822 := by
    unfold C
    simp [show (262144 * k + 164607) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 493822) = 393216 * k + 246911 := by
    unfold C
    simp [show (786432 * k + 493822) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 246911) = 1179648 * k + 740734 := by
    unfold C
    simp [show (393216 * k + 246911) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 740734) = 589824 * k + 370367 := by
    unfold C
    simp [show (1179648 * k + 740734) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 370367) = 1769472 * k + 1111102 := by
    unfold C
    simp [show (589824 * k + 370367) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 1111102) = 884736 * k + 555551 := by
    unfold C
    simp [show (1769472 * k + 1111102) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 555551) = 2654208 * k + 1666654 := by
    unfold C
    simp [show (884736 * k + 555551) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 1666654) = 1327104 * k + 833327 := by
    unfold C
    simp [show (2654208 * k + 1666654) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 833327) = 3981312 * k + 2499982 := by
    unfold C
    simp [show (1327104 * k + 833327) % 2 ≠ 0 by omega]
    omega
  have h10 : C (3981312 * k + 2499982) = 1990656 * k + 1249991 := by
    unfold C
    simp [show (3981312 * k + 2499982) % 2 = 0 by omega]
    omega
  have h11 : C (1990656 * k + 1249991) = 5971968 * k + 3749974 := by
    unfold C
    simp [show (1990656 * k + 1249991) % 2 ≠ 0 by omega]
    omega
  have h12 : C (5971968 * k + 3749974) = 2985984 * k + 1874987 := by
    unfold C
    simp [show (5971968 * k + 3749974) % 2 = 0 by omega]
    omega
  have h13 : C (2985984 * k + 1874987) = 8957952 * k + 5624962 := by
    unfold C
    simp [show (2985984 * k + 1874987) % 2 ≠ 0 by omega]
    omega
  have h14 : C (8957952 * k + 5624962) = 4478976 * k + 2812481 := by
    unfold C
    simp [show (8957952 * k + 5624962) % 2 = 0 by omega]
    omega
  have h15 : C (4478976 * k + 2812481) = 13436928 * k + 8437444 := by
    unfold C
    simp [show (4478976 * k + 2812481) % 2 ≠ 0 by omega]
    omega
  have h16 : C (13436928 * k + 8437444) = 6718464 * k + 4218722 := by
    unfold C
    simp [show (13436928 * k + 8437444) % 2 = 0 by omega]
    omega
  have h17 : C (6718464 * k + 4218722) = 3359232 * k + 2109361 := by
    unfold C
    simp [show (6718464 * k + 4218722) % 2 = 0 by omega]
    omega
  have h18 : C (3359232 * k + 2109361) = 10077696 * k + 6328084 := by
    unfold C
    simp [show (3359232 * k + 2109361) % 2 ≠ 0 by omega]
    omega
  have h19 : C (10077696 * k + 6328084) = 5038848 * k + 3164042 := by
    unfold C
    simp [show (10077696 * k + 6328084) % 2 = 0 by omega]
    omega
  have h20 : C (5038848 * k + 3164042) = 2519424 * k + 1582021 := by
    unfold C
    simp [show (5038848 * k + 3164042) % 2 = 0 by omega]
    omega
  have h21 : C (2519424 * k + 1582021) = 7558272 * k + 4746064 := by
    unfold C
    simp [show (2519424 * k + 1582021) % 2 ≠ 0 by omega]
    omega
  have h22 : C (7558272 * k + 4746064) = 3779136 * k + 2373032 := by
    unfold C
    simp [show (7558272 * k + 4746064) % 2 = 0 by omega]
    omega
  have h23 : C (3779136 * k + 2373032) = 1889568 * k + 1186516 := by
    unfold C
    simp [show (3779136 * k + 2373032) % 2 = 0 by omega]
    omega
  have h24 : C (1889568 * k + 1186516) = 944784 * k + 593258 := by
    unfold C
    simp [show (1889568 * k + 1186516) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 593258) = 472392 * k + 296629 := by
    unfold C
    simp [show (944784 * k + 593258) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 296629) = 1417176 * k + 889888 := by
    unfold C
    simp [show (472392 * k + 296629) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 889888) = 708588 * k + 444944 := by
    unfold C
    simp [show (1417176 * k + 889888) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 444944) = 354294 * k + 222472 := by
    unfold C
    simp [show (708588 * k + 444944) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 222472) = 177147 * k + 111236 := by
    unfold C
    simp [show (354294 * k + 222472) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 164607) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 164607))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_164699 : ∀ k : Nat,
    iterate (262144 * k + 164699) 29 = 177147 * k + 111299 ∧
      177147 * k + 111299 < 262144 * k + 164699 := by
  intro k
  have h1 : C (262144 * k + 164699) = 786432 * k + 494098 := by
    unfold C
    simp [show (262144 * k + 164699) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 494098) = 393216 * k + 247049 := by
    unfold C
    simp [show (786432 * k + 494098) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 247049) = 1179648 * k + 741148 := by
    unfold C
    simp [show (393216 * k + 247049) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 741148) = 589824 * k + 370574 := by
    unfold C
    simp [show (1179648 * k + 741148) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 370574) = 294912 * k + 185287 := by
    unfold C
    simp [show (589824 * k + 370574) % 2 = 0 by omega]
    omega
  have h6 : C (294912 * k + 185287) = 884736 * k + 555862 := by
    unfold C
    simp [show (294912 * k + 185287) % 2 ≠ 0 by omega]
    omega
  have h7 : C (884736 * k + 555862) = 442368 * k + 277931 := by
    unfold C
    simp [show (884736 * k + 555862) % 2 = 0 by omega]
    omega
  have h8 : C (442368 * k + 277931) = 1327104 * k + 833794 := by
    unfold C
    simp [show (442368 * k + 277931) % 2 ≠ 0 by omega]
    omega
  have h9 : C (1327104 * k + 833794) = 663552 * k + 416897 := by
    unfold C
    simp [show (1327104 * k + 833794) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 416897) = 1990656 * k + 1250692 := by
    unfold C
    simp [show (663552 * k + 416897) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 1250692) = 995328 * k + 625346 := by
    unfold C
    simp [show (1990656 * k + 1250692) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 625346) = 497664 * k + 312673 := by
    unfold C
    simp [show (995328 * k + 625346) % 2 = 0 by omega]
    omega
  have h13 : C (497664 * k + 312673) = 1492992 * k + 938020 := by
    unfold C
    simp [show (497664 * k + 312673) % 2 ≠ 0 by omega]
    omega
  have h14 : C (1492992 * k + 938020) = 746496 * k + 469010 := by
    unfold C
    simp [show (1492992 * k + 938020) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 469010) = 373248 * k + 234505 := by
    unfold C
    simp [show (746496 * k + 469010) % 2 = 0 by omega]
    omega
  have h16 : C (373248 * k + 234505) = 1119744 * k + 703516 := by
    unfold C
    simp [show (373248 * k + 234505) % 2 ≠ 0 by omega]
    omega
  have h17 : C (1119744 * k + 703516) = 559872 * k + 351758 := by
    unfold C
    simp [show (1119744 * k + 703516) % 2 = 0 by omega]
    omega
  have h18 : C (559872 * k + 351758) = 279936 * k + 175879 := by
    unfold C
    simp [show (559872 * k + 351758) % 2 = 0 by omega]
    omega
  have h19 : C (279936 * k + 175879) = 839808 * k + 527638 := by
    unfold C
    simp [show (279936 * k + 175879) % 2 ≠ 0 by omega]
    omega
  have h20 : C (839808 * k + 527638) = 419904 * k + 263819 := by
    unfold C
    simp [show (839808 * k + 527638) % 2 = 0 by omega]
    omega
  have h21 : C (419904 * k + 263819) = 1259712 * k + 791458 := by
    unfold C
    simp [show (419904 * k + 263819) % 2 ≠ 0 by omega]
    omega
  have h22 : C (1259712 * k + 791458) = 629856 * k + 395729 := by
    unfold C
    simp [show (1259712 * k + 791458) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 395729) = 1889568 * k + 1187188 := by
    unfold C
    simp [show (629856 * k + 395729) % 2 ≠ 0 by omega]
    omega
  have h24 : C (1889568 * k + 1187188) = 944784 * k + 593594 := by
    unfold C
    simp [show (1889568 * k + 1187188) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 593594) = 472392 * k + 296797 := by
    unfold C
    simp [show (944784 * k + 593594) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 296797) = 1417176 * k + 890392 := by
    unfold C
    simp [show (472392 * k + 296797) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 890392) = 708588 * k + 445196 := by
    unfold C
    simp [show (1417176 * k + 890392) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 445196) = 354294 * k + 222598 := by
    unfold C
    simp [show (708588 * k + 445196) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 222598) = 177147 * k + 111299 := by
    unfold C
    simp [show (354294 * k + 222598) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 164699) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 164699))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_165019 : ∀ k : Nat,
    iterate (262144 * k + 165019) 29 = 177147 * k + 111515 ∧
      177147 * k + 111515 < 262144 * k + 165019 := by
  intro k
  have h1 : C (262144 * k + 165019) = 786432 * k + 495058 := by
    unfold C
    simp [show (262144 * k + 165019) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 495058) = 393216 * k + 247529 := by
    unfold C
    simp [show (786432 * k + 495058) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 247529) = 1179648 * k + 742588 := by
    unfold C
    simp [show (393216 * k + 247529) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 742588) = 589824 * k + 371294 := by
    unfold C
    simp [show (1179648 * k + 742588) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 371294) = 294912 * k + 185647 := by
    unfold C
    simp [show (589824 * k + 371294) % 2 = 0 by omega]
    omega
  have h6 : C (294912 * k + 185647) = 884736 * k + 556942 := by
    unfold C
    simp [show (294912 * k + 185647) % 2 ≠ 0 by omega]
    omega
  have h7 : C (884736 * k + 556942) = 442368 * k + 278471 := by
    unfold C
    simp [show (884736 * k + 556942) % 2 = 0 by omega]
    omega
  have h8 : C (442368 * k + 278471) = 1327104 * k + 835414 := by
    unfold C
    simp [show (442368 * k + 278471) % 2 ≠ 0 by omega]
    omega
  have h9 : C (1327104 * k + 835414) = 663552 * k + 417707 := by
    unfold C
    simp [show (1327104 * k + 835414) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 417707) = 1990656 * k + 1253122 := by
    unfold C
    simp [show (663552 * k + 417707) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 1253122) = 995328 * k + 626561 := by
    unfold C
    simp [show (1990656 * k + 1253122) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 626561) = 2985984 * k + 1879684 := by
    unfold C
    simp [show (995328 * k + 626561) % 2 ≠ 0 by omega]
    omega
  have h13 : C (2985984 * k + 1879684) = 1492992 * k + 939842 := by
    unfold C
    simp [show (2985984 * k + 1879684) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 939842) = 746496 * k + 469921 := by
    unfold C
    simp [show (1492992 * k + 939842) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 469921) = 2239488 * k + 1409764 := by
    unfold C
    simp [show (746496 * k + 469921) % 2 ≠ 0 by omega]
    omega
  have h16 : C (2239488 * k + 1409764) = 1119744 * k + 704882 := by
    unfold C
    simp [show (2239488 * k + 1409764) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 704882) = 559872 * k + 352441 := by
    unfold C
    simp [show (1119744 * k + 704882) % 2 = 0 by omega]
    omega
  have h18 : C (559872 * k + 352441) = 1679616 * k + 1057324 := by
    unfold C
    simp [show (559872 * k + 352441) % 2 ≠ 0 by omega]
    omega
  have h19 : C (1679616 * k + 1057324) = 839808 * k + 528662 := by
    unfold C
    simp [show (1679616 * k + 1057324) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 528662) = 419904 * k + 264331 := by
    unfold C
    simp [show (839808 * k + 528662) % 2 = 0 by omega]
    omega
  have h21 : C (419904 * k + 264331) = 1259712 * k + 792994 := by
    unfold C
    simp [show (419904 * k + 264331) % 2 ≠ 0 by omega]
    omega
  have h22 : C (1259712 * k + 792994) = 629856 * k + 396497 := by
    unfold C
    simp [show (1259712 * k + 792994) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 396497) = 1889568 * k + 1189492 := by
    unfold C
    simp [show (629856 * k + 396497) % 2 ≠ 0 by omega]
    omega
  have h24 : C (1889568 * k + 1189492) = 944784 * k + 594746 := by
    unfold C
    simp [show (1889568 * k + 1189492) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 594746) = 472392 * k + 297373 := by
    unfold C
    simp [show (944784 * k + 594746) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 297373) = 1417176 * k + 892120 := by
    unfold C
    simp [show (472392 * k + 297373) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 892120) = 708588 * k + 446060 := by
    unfold C
    simp [show (1417176 * k + 892120) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 446060) = 354294 * k + 223030 := by
    unfold C
    simp [show (708588 * k + 446060) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 223030) = 177147 * k + 111515 := by
    unfold C
    simp [show (354294 * k + 223030) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 165019) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 165019))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

end CollatzM18Shard031
