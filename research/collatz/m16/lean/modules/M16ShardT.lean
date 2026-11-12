import Mathlib.Data.Nat.Prime.Basic

namespace CollatzM16ShardT

def C (n : Nat) : Nat := if n % 2 = 0 then n / 2 else 3 * n + 1

def iterate (n t : Nat) : Nat := Nat.rec n (fun _ previous => C previous) t

theorem descent_mod65536_52507 : ∀ k : Nat,
    iterate (65536 * k + 52507) 26 = 59049 * k + 47311 ∧
      59049 * k + 47311 < 65536 * k + 52507 := by
  intro k
  have h1 : C (65536 * k + 52507) = 196608 * k + 157522 := by
    unfold C
    simp [show (65536 * k + 52507) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 157522) = 98304 * k + 78761 := by
    unfold C
    simp [show (196608 * k + 157522) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 78761) = 294912 * k + 236284 := by
    unfold C
    simp [show (98304 * k + 78761) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 236284) = 147456 * k + 118142 := by
    unfold C
    simp [show (294912 * k + 236284) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 118142) = 73728 * k + 59071 := by
    unfold C
    simp [show (147456 * k + 118142) % 2 = 0 by omega]
    omega
  have h6 : C (73728 * k + 59071) = 221184 * k + 177214 := by
    unfold C
    simp [show (73728 * k + 59071) % 2 ≠ 0 by omega]
    omega
  have h7 : C (221184 * k + 177214) = 110592 * k + 88607 := by
    unfold C
    simp [show (221184 * k + 177214) % 2 = 0 by omega]
    omega
  have h8 : C (110592 * k + 88607) = 331776 * k + 265822 := by
    unfold C
    simp [show (110592 * k + 88607) % 2 ≠ 0 by omega]
    omega
  have h9 : C (331776 * k + 265822) = 165888 * k + 132911 := by
    unfold C
    simp [show (331776 * k + 265822) % 2 = 0 by omega]
    omega
  have h10 : C (165888 * k + 132911) = 497664 * k + 398734 := by
    unfold C
    simp [show (165888 * k + 132911) % 2 ≠ 0 by omega]
    omega
  have h11 : C (497664 * k + 398734) = 248832 * k + 199367 := by
    unfold C
    simp [show (497664 * k + 398734) % 2 = 0 by omega]
    omega
  have h12 : C (248832 * k + 199367) = 746496 * k + 598102 := by
    unfold C
    simp [show (248832 * k + 199367) % 2 ≠ 0 by omega]
    omega
  have h13 : C (746496 * k + 598102) = 373248 * k + 299051 := by
    unfold C
    simp [show (746496 * k + 598102) % 2 = 0 by omega]
    omega
  have h14 : C (373248 * k + 299051) = 1119744 * k + 897154 := by
    unfold C
    simp [show (373248 * k + 299051) % 2 ≠ 0 by omega]
    omega
  have h15 : C (1119744 * k + 897154) = 559872 * k + 448577 := by
    unfold C
    simp [show (1119744 * k + 897154) % 2 = 0 by omega]
    omega
  have h16 : C (559872 * k + 448577) = 1679616 * k + 1345732 := by
    unfold C
    simp [show (559872 * k + 448577) % 2 ≠ 0 by omega]
    omega
  have h17 : C (1679616 * k + 1345732) = 839808 * k + 672866 := by
    unfold C
    simp [show (1679616 * k + 1345732) % 2 = 0 by omega]
    omega
  have h18 : C (839808 * k + 672866) = 419904 * k + 336433 := by
    unfold C
    simp [show (839808 * k + 672866) % 2 = 0 by omega]
    omega
  have h19 : C (419904 * k + 336433) = 1259712 * k + 1009300 := by
    unfold C
    simp [show (419904 * k + 336433) % 2 ≠ 0 by omega]
    omega
  have h20 : C (1259712 * k + 1009300) = 629856 * k + 504650 := by
    unfold C
    simp [show (1259712 * k + 1009300) % 2 = 0 by omega]
    omega
  have h21 : C (629856 * k + 504650) = 314928 * k + 252325 := by
    unfold C
    simp [show (629856 * k + 504650) % 2 = 0 by omega]
    omega
  have h22 : C (314928 * k + 252325) = 944784 * k + 756976 := by
    unfold C
    simp [show (314928 * k + 252325) % 2 ≠ 0 by omega]
    omega
  have h23 : C (944784 * k + 756976) = 472392 * k + 378488 := by
    unfold C
    simp [show (944784 * k + 756976) % 2 = 0 by omega]
    omega
  have h24 : C (472392 * k + 378488) = 236196 * k + 189244 := by
    unfold C
    simp [show (472392 * k + 378488) % 2 = 0 by omega]
    omega
  have h25 : C (236196 * k + 189244) = 118098 * k + 94622 := by
    unfold C
    simp [show (236196 * k + 189244) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 94622) = 59049 * k + 47311 := by
    unfold C
    simp [show (118098 * k + 94622) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 52507) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 52507)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_52551 : ∀ k : Nat,
    iterate (65536 * k + 52551) 26 = 59049 * k + 47351 ∧
      59049 * k + 47351 < 65536 * k + 52551 := by
  intro k
  have h1 : C (65536 * k + 52551) = 196608 * k + 157654 := by
    unfold C
    simp [show (65536 * k + 52551) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 157654) = 98304 * k + 78827 := by
    unfold C
    simp [show (196608 * k + 157654) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 78827) = 294912 * k + 236482 := by
    unfold C
    simp [show (98304 * k + 78827) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 236482) = 147456 * k + 118241 := by
    unfold C
    simp [show (294912 * k + 236482) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 118241) = 442368 * k + 354724 := by
    unfold C
    simp [show (147456 * k + 118241) % 2 ≠ 0 by omega]
    omega
  have h6 : C (442368 * k + 354724) = 221184 * k + 177362 := by
    unfold C
    simp [show (442368 * k + 354724) % 2 = 0 by omega]
    omega
  have h7 : C (221184 * k + 177362) = 110592 * k + 88681 := by
    unfold C
    simp [show (221184 * k + 177362) % 2 = 0 by omega]
    omega
  have h8 : C (110592 * k + 88681) = 331776 * k + 266044 := by
    unfold C
    simp [show (110592 * k + 88681) % 2 ≠ 0 by omega]
    omega
  have h9 : C (331776 * k + 266044) = 165888 * k + 133022 := by
    unfold C
    simp [show (331776 * k + 266044) % 2 = 0 by omega]
    omega
  have h10 : C (165888 * k + 133022) = 82944 * k + 66511 := by
    unfold C
    simp [show (165888 * k + 133022) % 2 = 0 by omega]
    omega
  have h11 : C (82944 * k + 66511) = 248832 * k + 199534 := by
    unfold C
    simp [show (82944 * k + 66511) % 2 ≠ 0 by omega]
    omega
  have h12 : C (248832 * k + 199534) = 124416 * k + 99767 := by
    unfold C
    simp [show (248832 * k + 199534) % 2 = 0 by omega]
    omega
  have h13 : C (124416 * k + 99767) = 373248 * k + 299302 := by
    unfold C
    simp [show (124416 * k + 99767) % 2 ≠ 0 by omega]
    omega
  have h14 : C (373248 * k + 299302) = 186624 * k + 149651 := by
    unfold C
    simp [show (373248 * k + 299302) % 2 = 0 by omega]
    omega
  have h15 : C (186624 * k + 149651) = 559872 * k + 448954 := by
    unfold C
    simp [show (186624 * k + 149651) % 2 ≠ 0 by omega]
    omega
  have h16 : C (559872 * k + 448954) = 279936 * k + 224477 := by
    unfold C
    simp [show (559872 * k + 448954) % 2 = 0 by omega]
    omega
  have h17 : C (279936 * k + 224477) = 839808 * k + 673432 := by
    unfold C
    simp [show (279936 * k + 224477) % 2 ≠ 0 by omega]
    omega
  have h18 : C (839808 * k + 673432) = 419904 * k + 336716 := by
    unfold C
    simp [show (839808 * k + 673432) % 2 = 0 by omega]
    omega
  have h19 : C (419904 * k + 336716) = 209952 * k + 168358 := by
    unfold C
    simp [show (419904 * k + 336716) % 2 = 0 by omega]
    omega
  have h20 : C (209952 * k + 168358) = 104976 * k + 84179 := by
    unfold C
    simp [show (209952 * k + 168358) % 2 = 0 by omega]
    omega
  have h21 : C (104976 * k + 84179) = 314928 * k + 252538 := by
    unfold C
    simp [show (104976 * k + 84179) % 2 ≠ 0 by omega]
    omega
  have h22 : C (314928 * k + 252538) = 157464 * k + 126269 := by
    unfold C
    simp [show (314928 * k + 252538) % 2 = 0 by omega]
    omega
  have h23 : C (157464 * k + 126269) = 472392 * k + 378808 := by
    unfold C
    simp [show (157464 * k + 126269) % 2 ≠ 0 by omega]
    omega
  have h24 : C (472392 * k + 378808) = 236196 * k + 189404 := by
    unfold C
    simp [show (472392 * k + 378808) % 2 = 0 by omega]
    omega
  have h25 : C (236196 * k + 189404) = 118098 * k + 94702 := by
    unfold C
    simp [show (236196 * k + 189404) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 94702) = 59049 * k + 47351 := by
    unfold C
    simp [show (118098 * k + 94702) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 52551) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 52551)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_52735 : ∀ k : Nat,
    iterate (65536 * k + 52735) 26 = 59049 * k + 47516 ∧
      59049 * k + 47516 < 65536 * k + 52735 := by
  intro k
  have h1 : C (65536 * k + 52735) = 196608 * k + 158206 := by
    unfold C
    simp [show (65536 * k + 52735) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 158206) = 98304 * k + 79103 := by
    unfold C
    simp [show (196608 * k + 158206) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 79103) = 294912 * k + 237310 := by
    unfold C
    simp [show (98304 * k + 79103) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 237310) = 147456 * k + 118655 := by
    unfold C
    simp [show (294912 * k + 237310) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 118655) = 442368 * k + 355966 := by
    unfold C
    simp [show (147456 * k + 118655) % 2 ≠ 0 by omega]
    omega
  have h6 : C (442368 * k + 355966) = 221184 * k + 177983 := by
    unfold C
    simp [show (442368 * k + 355966) % 2 = 0 by omega]
    omega
  have h7 : C (221184 * k + 177983) = 663552 * k + 533950 := by
    unfold C
    simp [show (221184 * k + 177983) % 2 ≠ 0 by omega]
    omega
  have h8 : C (663552 * k + 533950) = 331776 * k + 266975 := by
    unfold C
    simp [show (663552 * k + 533950) % 2 = 0 by omega]
    omega
  have h9 : C (331776 * k + 266975) = 995328 * k + 800926 := by
    unfold C
    simp [show (331776 * k + 266975) % 2 ≠ 0 by omega]
    omega
  have h10 : C (995328 * k + 800926) = 497664 * k + 400463 := by
    unfold C
    simp [show (995328 * k + 800926) % 2 = 0 by omega]
    omega
  have h11 : C (497664 * k + 400463) = 1492992 * k + 1201390 := by
    unfold C
    simp [show (497664 * k + 400463) % 2 ≠ 0 by omega]
    omega
  have h12 : C (1492992 * k + 1201390) = 746496 * k + 600695 := by
    unfold C
    simp [show (1492992 * k + 1201390) % 2 = 0 by omega]
    omega
  have h13 : C (746496 * k + 600695) = 2239488 * k + 1802086 := by
    unfold C
    simp [show (746496 * k + 600695) % 2 ≠ 0 by omega]
    omega
  have h14 : C (2239488 * k + 1802086) = 1119744 * k + 901043 := by
    unfold C
    simp [show (2239488 * k + 1802086) % 2 = 0 by omega]
    omega
  have h15 : C (1119744 * k + 901043) = 3359232 * k + 2703130 := by
    unfold C
    simp [show (1119744 * k + 901043) % 2 ≠ 0 by omega]
    omega
  have h16 : C (3359232 * k + 2703130) = 1679616 * k + 1351565 := by
    unfold C
    simp [show (3359232 * k + 2703130) % 2 = 0 by omega]
    omega
  have h17 : C (1679616 * k + 1351565) = 5038848 * k + 4054696 := by
    unfold C
    simp [show (1679616 * k + 1351565) % 2 ≠ 0 by omega]
    omega
  have h18 : C (5038848 * k + 4054696) = 2519424 * k + 2027348 := by
    unfold C
    simp [show (5038848 * k + 4054696) % 2 = 0 by omega]
    omega
  have h19 : C (2519424 * k + 2027348) = 1259712 * k + 1013674 := by
    unfold C
    simp [show (2519424 * k + 2027348) % 2 = 0 by omega]
    omega
  have h20 : C (1259712 * k + 1013674) = 629856 * k + 506837 := by
    unfold C
    simp [show (1259712 * k + 1013674) % 2 = 0 by omega]
    omega
  have h21 : C (629856 * k + 506837) = 1889568 * k + 1520512 := by
    unfold C
    simp [show (629856 * k + 506837) % 2 ≠ 0 by omega]
    omega
  have h22 : C (1889568 * k + 1520512) = 944784 * k + 760256 := by
    unfold C
    simp [show (1889568 * k + 1520512) % 2 = 0 by omega]
    omega
  have h23 : C (944784 * k + 760256) = 472392 * k + 380128 := by
    unfold C
    simp [show (944784 * k + 760256) % 2 = 0 by omega]
    omega
  have h24 : C (472392 * k + 380128) = 236196 * k + 190064 := by
    unfold C
    simp [show (472392 * k + 380128) % 2 = 0 by omega]
    omega
  have h25 : C (236196 * k + 190064) = 118098 * k + 95032 := by
    unfold C
    simp [show (236196 * k + 190064) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 95032) = 59049 * k + 47516 := by
    unfold C
    simp [show (118098 * k + 95032) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 52735) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 52735)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_52763 : ∀ k : Nat,
    iterate (65536 * k + 52763) 26 = 59049 * k + 47542 ∧
      59049 * k + 47542 < 65536 * k + 52763 := by
  intro k
  have h1 : C (65536 * k + 52763) = 196608 * k + 158290 := by
    unfold C
    simp [show (65536 * k + 52763) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 158290) = 98304 * k + 79145 := by
    unfold C
    simp [show (196608 * k + 158290) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 79145) = 294912 * k + 237436 := by
    unfold C
    simp [show (98304 * k + 79145) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 237436) = 147456 * k + 118718 := by
    unfold C
    simp [show (294912 * k + 237436) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 118718) = 73728 * k + 59359 := by
    unfold C
    simp [show (147456 * k + 118718) % 2 = 0 by omega]
    omega
  have h6 : C (73728 * k + 59359) = 221184 * k + 178078 := by
    unfold C
    simp [show (73728 * k + 59359) % 2 ≠ 0 by omega]
    omega
  have h7 : C (221184 * k + 178078) = 110592 * k + 89039 := by
    unfold C
    simp [show (221184 * k + 178078) % 2 = 0 by omega]
    omega
  have h8 : C (110592 * k + 89039) = 331776 * k + 267118 := by
    unfold C
    simp [show (110592 * k + 89039) % 2 ≠ 0 by omega]
    omega
  have h9 : C (331776 * k + 267118) = 165888 * k + 133559 := by
    unfold C
    simp [show (331776 * k + 267118) % 2 = 0 by omega]
    omega
  have h10 : C (165888 * k + 133559) = 497664 * k + 400678 := by
    unfold C
    simp [show (165888 * k + 133559) % 2 ≠ 0 by omega]
    omega
  have h11 : C (497664 * k + 400678) = 248832 * k + 200339 := by
    unfold C
    simp [show (497664 * k + 400678) % 2 = 0 by omega]
    omega
  have h12 : C (248832 * k + 200339) = 746496 * k + 601018 := by
    unfold C
    simp [show (248832 * k + 200339) % 2 ≠ 0 by omega]
    omega
  have h13 : C (746496 * k + 601018) = 373248 * k + 300509 := by
    unfold C
    simp [show (746496 * k + 601018) % 2 = 0 by omega]
    omega
  have h14 : C (373248 * k + 300509) = 1119744 * k + 901528 := by
    unfold C
    simp [show (373248 * k + 300509) % 2 ≠ 0 by omega]
    omega
  have h15 : C (1119744 * k + 901528) = 559872 * k + 450764 := by
    unfold C
    simp [show (1119744 * k + 901528) % 2 = 0 by omega]
    omega
  have h16 : C (559872 * k + 450764) = 279936 * k + 225382 := by
    unfold C
    simp [show (559872 * k + 450764) % 2 = 0 by omega]
    omega
  have h17 : C (279936 * k + 225382) = 139968 * k + 112691 := by
    unfold C
    simp [show (279936 * k + 225382) % 2 = 0 by omega]
    omega
  have h18 : C (139968 * k + 112691) = 419904 * k + 338074 := by
    unfold C
    simp [show (139968 * k + 112691) % 2 ≠ 0 by omega]
    omega
  have h19 : C (419904 * k + 338074) = 209952 * k + 169037 := by
    unfold C
    simp [show (419904 * k + 338074) % 2 = 0 by omega]
    omega
  have h20 : C (209952 * k + 169037) = 629856 * k + 507112 := by
    unfold C
    simp [show (209952 * k + 169037) % 2 ≠ 0 by omega]
    omega
  have h21 : C (629856 * k + 507112) = 314928 * k + 253556 := by
    unfold C
    simp [show (629856 * k + 507112) % 2 = 0 by omega]
    omega
  have h22 : C (314928 * k + 253556) = 157464 * k + 126778 := by
    unfold C
    simp [show (314928 * k + 253556) % 2 = 0 by omega]
    omega
  have h23 : C (157464 * k + 126778) = 78732 * k + 63389 := by
    unfold C
    simp [show (157464 * k + 126778) % 2 = 0 by omega]
    omega
  have h24 : C (78732 * k + 63389) = 236196 * k + 190168 := by
    unfold C
    simp [show (78732 * k + 63389) % 2 ≠ 0 by omega]
    omega
  have h25 : C (236196 * k + 190168) = 118098 * k + 95084 := by
    unfold C
    simp [show (236196 * k + 190168) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 95084) = 59049 * k + 47542 := by
    unfold C
    simp [show (118098 * k + 95084) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 52763) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 52763)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_53159 : ∀ k : Nat,
    iterate (65536 * k + 53159) 26 = 59049 * k + 47899 ∧
      59049 * k + 47899 < 65536 * k + 53159 := by
  intro k
  have h1 : C (65536 * k + 53159) = 196608 * k + 159478 := by
    unfold C
    simp [show (65536 * k + 53159) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 159478) = 98304 * k + 79739 := by
    unfold C
    simp [show (196608 * k + 159478) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 79739) = 294912 * k + 239218 := by
    unfold C
    simp [show (98304 * k + 79739) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 239218) = 147456 * k + 119609 := by
    unfold C
    simp [show (294912 * k + 239218) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 119609) = 442368 * k + 358828 := by
    unfold C
    simp [show (147456 * k + 119609) % 2 ≠ 0 by omega]
    omega
  have h6 : C (442368 * k + 358828) = 221184 * k + 179414 := by
    unfold C
    simp [show (442368 * k + 358828) % 2 = 0 by omega]
    omega
  have h7 : C (221184 * k + 179414) = 110592 * k + 89707 := by
    unfold C
    simp [show (221184 * k + 179414) % 2 = 0 by omega]
    omega
  have h8 : C (110592 * k + 89707) = 331776 * k + 269122 := by
    unfold C
    simp [show (110592 * k + 89707) % 2 ≠ 0 by omega]
    omega
  have h9 : C (331776 * k + 269122) = 165888 * k + 134561 := by
    unfold C
    simp [show (331776 * k + 269122) % 2 = 0 by omega]
    omega
  have h10 : C (165888 * k + 134561) = 497664 * k + 403684 := by
    unfold C
    simp [show (165888 * k + 134561) % 2 ≠ 0 by omega]
    omega
  have h11 : C (497664 * k + 403684) = 248832 * k + 201842 := by
    unfold C
    simp [show (497664 * k + 403684) % 2 = 0 by omega]
    omega
  have h12 : C (248832 * k + 201842) = 124416 * k + 100921 := by
    unfold C
    simp [show (248832 * k + 201842) % 2 = 0 by omega]
    omega
  have h13 : C (124416 * k + 100921) = 373248 * k + 302764 := by
    unfold C
    simp [show (124416 * k + 100921) % 2 ≠ 0 by omega]
    omega
  have h14 : C (373248 * k + 302764) = 186624 * k + 151382 := by
    unfold C
    simp [show (373248 * k + 302764) % 2 = 0 by omega]
    omega
  have h15 : C (186624 * k + 151382) = 93312 * k + 75691 := by
    unfold C
    simp [show (186624 * k + 151382) % 2 = 0 by omega]
    omega
  have h16 : C (93312 * k + 75691) = 279936 * k + 227074 := by
    unfold C
    simp [show (93312 * k + 75691) % 2 ≠ 0 by omega]
    omega
  have h17 : C (279936 * k + 227074) = 139968 * k + 113537 := by
    unfold C
    simp [show (279936 * k + 227074) % 2 = 0 by omega]
    omega
  have h18 : C (139968 * k + 113537) = 419904 * k + 340612 := by
    unfold C
    simp [show (139968 * k + 113537) % 2 ≠ 0 by omega]
    omega
  have h19 : C (419904 * k + 340612) = 209952 * k + 170306 := by
    unfold C
    simp [show (419904 * k + 340612) % 2 = 0 by omega]
    omega
  have h20 : C (209952 * k + 170306) = 104976 * k + 85153 := by
    unfold C
    simp [show (209952 * k + 170306) % 2 = 0 by omega]
    omega
  have h21 : C (104976 * k + 85153) = 314928 * k + 255460 := by
    unfold C
    simp [show (104976 * k + 85153) % 2 ≠ 0 by omega]
    omega
  have h22 : C (314928 * k + 255460) = 157464 * k + 127730 := by
    unfold C
    simp [show (314928 * k + 255460) % 2 = 0 by omega]
    omega
  have h23 : C (157464 * k + 127730) = 78732 * k + 63865 := by
    unfold C
    simp [show (157464 * k + 127730) % 2 = 0 by omega]
    omega
  have h24 : C (78732 * k + 63865) = 236196 * k + 191596 := by
    unfold C
    simp [show (78732 * k + 63865) % 2 ≠ 0 by omega]
    omega
  have h25 : C (236196 * k + 191596) = 118098 * k + 95798 := by
    unfold C
    simp [show (236196 * k + 191596) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 95798) = 59049 * k + 47899 := by
    unfold C
    simp [show (118098 * k + 95798) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 53159) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 53159)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_53183 : ∀ k : Nat,
    iterate (65536 * k + 53183) 26 = 59049 * k + 47920 ∧
      59049 * k + 47920 < 65536 * k + 53183 := by
  intro k
  have h1 : C (65536 * k + 53183) = 196608 * k + 159550 := by
    unfold C
    simp [show (65536 * k + 53183) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 159550) = 98304 * k + 79775 := by
    unfold C
    simp [show (196608 * k + 159550) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 79775) = 294912 * k + 239326 := by
    unfold C
    simp [show (98304 * k + 79775) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 239326) = 147456 * k + 119663 := by
    unfold C
    simp [show (294912 * k + 239326) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 119663) = 442368 * k + 358990 := by
    unfold C
    simp [show (147456 * k + 119663) % 2 ≠ 0 by omega]
    omega
  have h6 : C (442368 * k + 358990) = 221184 * k + 179495 := by
    unfold C
    simp [show (442368 * k + 358990) % 2 = 0 by omega]
    omega
  have h7 : C (221184 * k + 179495) = 663552 * k + 538486 := by
    unfold C
    simp [show (221184 * k + 179495) % 2 ≠ 0 by omega]
    omega
  have h8 : C (663552 * k + 538486) = 331776 * k + 269243 := by
    unfold C
    simp [show (663552 * k + 538486) % 2 = 0 by omega]
    omega
  have h9 : C (331776 * k + 269243) = 995328 * k + 807730 := by
    unfold C
    simp [show (331776 * k + 269243) % 2 ≠ 0 by omega]
    omega
  have h10 : C (995328 * k + 807730) = 497664 * k + 403865 := by
    unfold C
    simp [show (995328 * k + 807730) % 2 = 0 by omega]
    omega
  have h11 : C (497664 * k + 403865) = 1492992 * k + 1211596 := by
    unfold C
    simp [show (497664 * k + 403865) % 2 ≠ 0 by omega]
    omega
  have h12 : C (1492992 * k + 1211596) = 746496 * k + 605798 := by
    unfold C
    simp [show (1492992 * k + 1211596) % 2 = 0 by omega]
    omega
  have h13 : C (746496 * k + 605798) = 373248 * k + 302899 := by
    unfold C
    simp [show (746496 * k + 605798) % 2 = 0 by omega]
    omega
  have h14 : C (373248 * k + 302899) = 1119744 * k + 908698 := by
    unfold C
    simp [show (373248 * k + 302899) % 2 ≠ 0 by omega]
    omega
  have h15 : C (1119744 * k + 908698) = 559872 * k + 454349 := by
    unfold C
    simp [show (1119744 * k + 908698) % 2 = 0 by omega]
    omega
  have h16 : C (559872 * k + 454349) = 1679616 * k + 1363048 := by
    unfold C
    simp [show (559872 * k + 454349) % 2 ≠ 0 by omega]
    omega
  have h17 : C (1679616 * k + 1363048) = 839808 * k + 681524 := by
    unfold C
    simp [show (1679616 * k + 1363048) % 2 = 0 by omega]
    omega
  have h18 : C (839808 * k + 681524) = 419904 * k + 340762 := by
    unfold C
    simp [show (839808 * k + 681524) % 2 = 0 by omega]
    omega
  have h19 : C (419904 * k + 340762) = 209952 * k + 170381 := by
    unfold C
    simp [show (419904 * k + 340762) % 2 = 0 by omega]
    omega
  have h20 : C (209952 * k + 170381) = 629856 * k + 511144 := by
    unfold C
    simp [show (209952 * k + 170381) % 2 ≠ 0 by omega]
    omega
  have h21 : C (629856 * k + 511144) = 314928 * k + 255572 := by
    unfold C
    simp [show (629856 * k + 511144) % 2 = 0 by omega]
    omega
  have h22 : C (314928 * k + 255572) = 157464 * k + 127786 := by
    unfold C
    simp [show (314928 * k + 255572) % 2 = 0 by omega]
    omega
  have h23 : C (157464 * k + 127786) = 78732 * k + 63893 := by
    unfold C
    simp [show (157464 * k + 127786) % 2 = 0 by omega]
    omega
  have h24 : C (78732 * k + 63893) = 236196 * k + 191680 := by
    unfold C
    simp [show (78732 * k + 63893) % 2 ≠ 0 by omega]
    omega
  have h25 : C (236196 * k + 191680) = 118098 * k + 95840 := by
    unfold C
    simp [show (236196 * k + 191680) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 95840) = 59049 * k + 47920 := by
    unfold C
    simp [show (118098 * k + 95840) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 53183) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 53183)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_53319 : ∀ k : Nat,
    iterate (65536 * k + 53319) 26 = 59049 * k + 48043 ∧
      59049 * k + 48043 < 65536 * k + 53319 := by
  intro k
  have h1 : C (65536 * k + 53319) = 196608 * k + 159958 := by
    unfold C
    simp [show (65536 * k + 53319) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 159958) = 98304 * k + 79979 := by
    unfold C
    simp [show (196608 * k + 159958) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 79979) = 294912 * k + 239938 := by
    unfold C
    simp [show (98304 * k + 79979) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 239938) = 147456 * k + 119969 := by
    unfold C
    simp [show (294912 * k + 239938) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 119969) = 442368 * k + 359908 := by
    unfold C
    simp [show (147456 * k + 119969) % 2 ≠ 0 by omega]
    omega
  have h6 : C (442368 * k + 359908) = 221184 * k + 179954 := by
    unfold C
    simp [show (442368 * k + 359908) % 2 = 0 by omega]
    omega
  have h7 : C (221184 * k + 179954) = 110592 * k + 89977 := by
    unfold C
    simp [show (221184 * k + 179954) % 2 = 0 by omega]
    omega
  have h8 : C (110592 * k + 89977) = 331776 * k + 269932 := by
    unfold C
    simp [show (110592 * k + 89977) % 2 ≠ 0 by omega]
    omega
  have h9 : C (331776 * k + 269932) = 165888 * k + 134966 := by
    unfold C
    simp [show (331776 * k + 269932) % 2 = 0 by omega]
    omega
  have h10 : C (165888 * k + 134966) = 82944 * k + 67483 := by
    unfold C
    simp [show (165888 * k + 134966) % 2 = 0 by omega]
    omega
  have h11 : C (82944 * k + 67483) = 248832 * k + 202450 := by
    unfold C
    simp [show (82944 * k + 67483) % 2 ≠ 0 by omega]
    omega
  have h12 : C (248832 * k + 202450) = 124416 * k + 101225 := by
    unfold C
    simp [show (248832 * k + 202450) % 2 = 0 by omega]
    omega
  have h13 : C (124416 * k + 101225) = 373248 * k + 303676 := by
    unfold C
    simp [show (124416 * k + 101225) % 2 ≠ 0 by omega]
    omega
  have h14 : C (373248 * k + 303676) = 186624 * k + 151838 := by
    unfold C
    simp [show (373248 * k + 303676) % 2 = 0 by omega]
    omega
  have h15 : C (186624 * k + 151838) = 93312 * k + 75919 := by
    unfold C
    simp [show (186624 * k + 151838) % 2 = 0 by omega]
    omega
  have h16 : C (93312 * k + 75919) = 279936 * k + 227758 := by
    unfold C
    simp [show (93312 * k + 75919) % 2 ≠ 0 by omega]
    omega
  have h17 : C (279936 * k + 227758) = 139968 * k + 113879 := by
    unfold C
    simp [show (279936 * k + 227758) % 2 = 0 by omega]
    omega
  have h18 : C (139968 * k + 113879) = 419904 * k + 341638 := by
    unfold C
    simp [show (139968 * k + 113879) % 2 ≠ 0 by omega]
    omega
  have h19 : C (419904 * k + 341638) = 209952 * k + 170819 := by
    unfold C
    simp [show (419904 * k + 341638) % 2 = 0 by omega]
    omega
  have h20 : C (209952 * k + 170819) = 629856 * k + 512458 := by
    unfold C
    simp [show (209952 * k + 170819) % 2 ≠ 0 by omega]
    omega
  have h21 : C (629856 * k + 512458) = 314928 * k + 256229 := by
    unfold C
    simp [show (629856 * k + 512458) % 2 = 0 by omega]
    omega
  have h22 : C (314928 * k + 256229) = 944784 * k + 768688 := by
    unfold C
    simp [show (314928 * k + 256229) % 2 ≠ 0 by omega]
    omega
  have h23 : C (944784 * k + 768688) = 472392 * k + 384344 := by
    unfold C
    simp [show (944784 * k + 768688) % 2 = 0 by omega]
    omega
  have h24 : C (472392 * k + 384344) = 236196 * k + 192172 := by
    unfold C
    simp [show (472392 * k + 384344) % 2 = 0 by omega]
    omega
  have h25 : C (236196 * k + 192172) = 118098 * k + 96086 := by
    unfold C
    simp [show (236196 * k + 192172) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 96086) = 59049 * k + 48043 := by
    unfold C
    simp [show (118098 * k + 96086) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 53319) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 53319)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_53339 : ∀ k : Nat,
    iterate (65536 * k + 53339) 26 = 59049 * k + 48061 ∧
      59049 * k + 48061 < 65536 * k + 53339 := by
  intro k
  have h1 : C (65536 * k + 53339) = 196608 * k + 160018 := by
    unfold C
    simp [show (65536 * k + 53339) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 160018) = 98304 * k + 80009 := by
    unfold C
    simp [show (196608 * k + 160018) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 80009) = 294912 * k + 240028 := by
    unfold C
    simp [show (98304 * k + 80009) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 240028) = 147456 * k + 120014 := by
    unfold C
    simp [show (294912 * k + 240028) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 120014) = 73728 * k + 60007 := by
    unfold C
    simp [show (147456 * k + 120014) % 2 = 0 by omega]
    omega
  have h6 : C (73728 * k + 60007) = 221184 * k + 180022 := by
    unfold C
    simp [show (73728 * k + 60007) % 2 ≠ 0 by omega]
    omega
  have h7 : C (221184 * k + 180022) = 110592 * k + 90011 := by
    unfold C
    simp [show (221184 * k + 180022) % 2 = 0 by omega]
    omega
  have h8 : C (110592 * k + 90011) = 331776 * k + 270034 := by
    unfold C
    simp [show (110592 * k + 90011) % 2 ≠ 0 by omega]
    omega
  have h9 : C (331776 * k + 270034) = 165888 * k + 135017 := by
    unfold C
    simp [show (331776 * k + 270034) % 2 = 0 by omega]
    omega
  have h10 : C (165888 * k + 135017) = 497664 * k + 405052 := by
    unfold C
    simp [show (165888 * k + 135017) % 2 ≠ 0 by omega]
    omega
  have h11 : C (497664 * k + 405052) = 248832 * k + 202526 := by
    unfold C
    simp [show (497664 * k + 405052) % 2 = 0 by omega]
    omega
  have h12 : C (248832 * k + 202526) = 124416 * k + 101263 := by
    unfold C
    simp [show (248832 * k + 202526) % 2 = 0 by omega]
    omega
  have h13 : C (124416 * k + 101263) = 373248 * k + 303790 := by
    unfold C
    simp [show (124416 * k + 101263) % 2 ≠ 0 by omega]
    omega
  have h14 : C (373248 * k + 303790) = 186624 * k + 151895 := by
    unfold C
    simp [show (373248 * k + 303790) % 2 = 0 by omega]
    omega
  have h15 : C (186624 * k + 151895) = 559872 * k + 455686 := by
    unfold C
    simp [show (186624 * k + 151895) % 2 ≠ 0 by omega]
    omega
  have h16 : C (559872 * k + 455686) = 279936 * k + 227843 := by
    unfold C
    simp [show (559872 * k + 455686) % 2 = 0 by omega]
    omega
  have h17 : C (279936 * k + 227843) = 839808 * k + 683530 := by
    unfold C
    simp [show (279936 * k + 227843) % 2 ≠ 0 by omega]
    omega
  have h18 : C (839808 * k + 683530) = 419904 * k + 341765 := by
    unfold C
    simp [show (839808 * k + 683530) % 2 = 0 by omega]
    omega
  have h19 : C (419904 * k + 341765) = 1259712 * k + 1025296 := by
    unfold C
    simp [show (419904 * k + 341765) % 2 ≠ 0 by omega]
    omega
  have h20 : C (1259712 * k + 1025296) = 629856 * k + 512648 := by
    unfold C
    simp [show (1259712 * k + 1025296) % 2 = 0 by omega]
    omega
  have h21 : C (629856 * k + 512648) = 314928 * k + 256324 := by
    unfold C
    simp [show (629856 * k + 512648) % 2 = 0 by omega]
    omega
  have h22 : C (314928 * k + 256324) = 157464 * k + 128162 := by
    unfold C
    simp [show (314928 * k + 256324) % 2 = 0 by omega]
    omega
  have h23 : C (157464 * k + 128162) = 78732 * k + 64081 := by
    unfold C
    simp [show (157464 * k + 128162) % 2 = 0 by omega]
    omega
  have h24 : C (78732 * k + 64081) = 236196 * k + 192244 := by
    unfold C
    simp [show (78732 * k + 64081) % 2 ≠ 0 by omega]
    omega
  have h25 : C (236196 * k + 192244) = 118098 * k + 96122 := by
    unfold C
    simp [show (236196 * k + 192244) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 96122) = 59049 * k + 48061 := by
    unfold C
    simp [show (118098 * k + 96122) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 53339) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 53339)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_53439 : ∀ k : Nat,
    iterate (65536 * k + 53439) 26 = 59049 * k + 48151 ∧
      59049 * k + 48151 < 65536 * k + 53439 := by
  intro k
  have h1 : C (65536 * k + 53439) = 196608 * k + 160318 := by
    unfold C
    simp [show (65536 * k + 53439) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 160318) = 98304 * k + 80159 := by
    unfold C
    simp [show (196608 * k + 160318) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 80159) = 294912 * k + 240478 := by
    unfold C
    simp [show (98304 * k + 80159) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 240478) = 147456 * k + 120239 := by
    unfold C
    simp [show (294912 * k + 240478) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 120239) = 442368 * k + 360718 := by
    unfold C
    simp [show (147456 * k + 120239) % 2 ≠ 0 by omega]
    omega
  have h6 : C (442368 * k + 360718) = 221184 * k + 180359 := by
    unfold C
    simp [show (442368 * k + 360718) % 2 = 0 by omega]
    omega
  have h7 : C (221184 * k + 180359) = 663552 * k + 541078 := by
    unfold C
    simp [show (221184 * k + 180359) % 2 ≠ 0 by omega]
    omega
  have h8 : C (663552 * k + 541078) = 331776 * k + 270539 := by
    unfold C
    simp [show (663552 * k + 541078) % 2 = 0 by omega]
    omega
  have h9 : C (331776 * k + 270539) = 995328 * k + 811618 := by
    unfold C
    simp [show (331776 * k + 270539) % 2 ≠ 0 by omega]
    omega
  have h10 : C (995328 * k + 811618) = 497664 * k + 405809 := by
    unfold C
    simp [show (995328 * k + 811618) % 2 = 0 by omega]
    omega
  have h11 : C (497664 * k + 405809) = 1492992 * k + 1217428 := by
    unfold C
    simp [show (497664 * k + 405809) % 2 ≠ 0 by omega]
    omega
  have h12 : C (1492992 * k + 1217428) = 746496 * k + 608714 := by
    unfold C
    simp [show (1492992 * k + 1217428) % 2 = 0 by omega]
    omega
  have h13 : C (746496 * k + 608714) = 373248 * k + 304357 := by
    unfold C
    simp [show (746496 * k + 608714) % 2 = 0 by omega]
    omega
  have h14 : C (373248 * k + 304357) = 1119744 * k + 913072 := by
    unfold C
    simp [show (373248 * k + 304357) % 2 ≠ 0 by omega]
    omega
  have h15 : C (1119744 * k + 913072) = 559872 * k + 456536 := by
    unfold C
    simp [show (1119744 * k + 913072) % 2 = 0 by omega]
    omega
  have h16 : C (559872 * k + 456536) = 279936 * k + 228268 := by
    unfold C
    simp [show (559872 * k + 456536) % 2 = 0 by omega]
    omega
  have h17 : C (279936 * k + 228268) = 139968 * k + 114134 := by
    unfold C
    simp [show (279936 * k + 228268) % 2 = 0 by omega]
    omega
  have h18 : C (139968 * k + 114134) = 69984 * k + 57067 := by
    unfold C
    simp [show (139968 * k + 114134) % 2 = 0 by omega]
    omega
  have h19 : C (69984 * k + 57067) = 209952 * k + 171202 := by
    unfold C
    simp [show (69984 * k + 57067) % 2 ≠ 0 by omega]
    omega
  have h20 : C (209952 * k + 171202) = 104976 * k + 85601 := by
    unfold C
    simp [show (209952 * k + 171202) % 2 = 0 by omega]
    omega
  have h21 : C (104976 * k + 85601) = 314928 * k + 256804 := by
    unfold C
    simp [show (104976 * k + 85601) % 2 ≠ 0 by omega]
    omega
  have h22 : C (314928 * k + 256804) = 157464 * k + 128402 := by
    unfold C
    simp [show (314928 * k + 256804) % 2 = 0 by omega]
    omega
  have h23 : C (157464 * k + 128402) = 78732 * k + 64201 := by
    unfold C
    simp [show (157464 * k + 128402) % 2 = 0 by omega]
    omega
  have h24 : C (78732 * k + 64201) = 236196 * k + 192604 := by
    unfold C
    simp [show (78732 * k + 64201) % 2 ≠ 0 by omega]
    omega
  have h25 : C (236196 * k + 192604) = 118098 * k + 96302 := by
    unfold C
    simp [show (236196 * k + 192604) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 96302) = 59049 * k + 48151 := by
    unfold C
    simp [show (118098 * k + 96302) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 53439) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 53439)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_53887 : ∀ k : Nat,
    iterate (65536 * k + 53887) 26 = 59049 * k + 48554 ∧
      59049 * k + 48554 < 65536 * k + 53887 := by
  intro k
  have h1 : C (65536 * k + 53887) = 196608 * k + 161662 := by
    unfold C
    simp [show (65536 * k + 53887) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 161662) = 98304 * k + 80831 := by
    unfold C
    simp [show (196608 * k + 161662) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 80831) = 294912 * k + 242494 := by
    unfold C
    simp [show (98304 * k + 80831) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 242494) = 147456 * k + 121247 := by
    unfold C
    simp [show (294912 * k + 242494) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 121247) = 442368 * k + 363742 := by
    unfold C
    simp [show (147456 * k + 121247) % 2 ≠ 0 by omega]
    omega
  have h6 : C (442368 * k + 363742) = 221184 * k + 181871 := by
    unfold C
    simp [show (442368 * k + 363742) % 2 = 0 by omega]
    omega
  have h7 : C (221184 * k + 181871) = 663552 * k + 545614 := by
    unfold C
    simp [show (221184 * k + 181871) % 2 ≠ 0 by omega]
    omega
  have h8 : C (663552 * k + 545614) = 331776 * k + 272807 := by
    unfold C
    simp [show (663552 * k + 545614) % 2 = 0 by omega]
    omega
  have h9 : C (331776 * k + 272807) = 995328 * k + 818422 := by
    unfold C
    simp [show (331776 * k + 272807) % 2 ≠ 0 by omega]
    omega
  have h10 : C (995328 * k + 818422) = 497664 * k + 409211 := by
    unfold C
    simp [show (995328 * k + 818422) % 2 = 0 by omega]
    omega
  have h11 : C (497664 * k + 409211) = 1492992 * k + 1227634 := by
    unfold C
    simp [show (497664 * k + 409211) % 2 ≠ 0 by omega]
    omega
  have h12 : C (1492992 * k + 1227634) = 746496 * k + 613817 := by
    unfold C
    simp [show (1492992 * k + 1227634) % 2 = 0 by omega]
    omega
  have h13 : C (746496 * k + 613817) = 2239488 * k + 1841452 := by
    unfold C
    simp [show (746496 * k + 613817) % 2 ≠ 0 by omega]
    omega
  have h14 : C (2239488 * k + 1841452) = 1119744 * k + 920726 := by
    unfold C
    simp [show (2239488 * k + 1841452) % 2 = 0 by omega]
    omega
  have h15 : C (1119744 * k + 920726) = 559872 * k + 460363 := by
    unfold C
    simp [show (1119744 * k + 920726) % 2 = 0 by omega]
    omega
  have h16 : C (559872 * k + 460363) = 1679616 * k + 1381090 := by
    unfold C
    simp [show (559872 * k + 460363) % 2 ≠ 0 by omega]
    omega
  have h17 : C (1679616 * k + 1381090) = 839808 * k + 690545 := by
    unfold C
    simp [show (1679616 * k + 1381090) % 2 = 0 by omega]
    omega
  have h18 : C (839808 * k + 690545) = 2519424 * k + 2071636 := by
    unfold C
    simp [show (839808 * k + 690545) % 2 ≠ 0 by omega]
    omega
  have h19 : C (2519424 * k + 2071636) = 1259712 * k + 1035818 := by
    unfold C
    simp [show (2519424 * k + 2071636) % 2 = 0 by omega]
    omega
  have h20 : C (1259712 * k + 1035818) = 629856 * k + 517909 := by
    unfold C
    simp [show (1259712 * k + 1035818) % 2 = 0 by omega]
    omega
  have h21 : C (629856 * k + 517909) = 1889568 * k + 1553728 := by
    unfold C
    simp [show (629856 * k + 517909) % 2 ≠ 0 by omega]
    omega
  have h22 : C (1889568 * k + 1553728) = 944784 * k + 776864 := by
    unfold C
    simp [show (1889568 * k + 1553728) % 2 = 0 by omega]
    omega
  have h23 : C (944784 * k + 776864) = 472392 * k + 388432 := by
    unfold C
    simp [show (944784 * k + 776864) % 2 = 0 by omega]
    omega
  have h24 : C (472392 * k + 388432) = 236196 * k + 194216 := by
    unfold C
    simp [show (472392 * k + 388432) % 2 = 0 by omega]
    omega
  have h25 : C (236196 * k + 194216) = 118098 * k + 97108 := by
    unfold C
    simp [show (236196 * k + 194216) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 97108) = 59049 * k + 48554 := by
    unfold C
    simp [show (118098 * k + 97108) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 53887) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 53887)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_53919 : ∀ k : Nat,
    iterate (65536 * k + 53919) 26 = 59049 * k + 48583 ∧
      59049 * k + 48583 < 65536 * k + 53919 := by
  intro k
  have h1 : C (65536 * k + 53919) = 196608 * k + 161758 := by
    unfold C
    simp [show (65536 * k + 53919) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 161758) = 98304 * k + 80879 := by
    unfold C
    simp [show (196608 * k + 161758) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 80879) = 294912 * k + 242638 := by
    unfold C
    simp [show (98304 * k + 80879) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 242638) = 147456 * k + 121319 := by
    unfold C
    simp [show (294912 * k + 242638) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 121319) = 442368 * k + 363958 := by
    unfold C
    simp [show (147456 * k + 121319) % 2 ≠ 0 by omega]
    omega
  have h6 : C (442368 * k + 363958) = 221184 * k + 181979 := by
    unfold C
    simp [show (442368 * k + 363958) % 2 = 0 by omega]
    omega
  have h7 : C (221184 * k + 181979) = 663552 * k + 545938 := by
    unfold C
    simp [show (221184 * k + 181979) % 2 ≠ 0 by omega]
    omega
  have h8 : C (663552 * k + 545938) = 331776 * k + 272969 := by
    unfold C
    simp [show (663552 * k + 545938) % 2 = 0 by omega]
    omega
  have h9 : C (331776 * k + 272969) = 995328 * k + 818908 := by
    unfold C
    simp [show (331776 * k + 272969) % 2 ≠ 0 by omega]
    omega
  have h10 : C (995328 * k + 818908) = 497664 * k + 409454 := by
    unfold C
    simp [show (995328 * k + 818908) % 2 = 0 by omega]
    omega
  have h11 : C (497664 * k + 409454) = 248832 * k + 204727 := by
    unfold C
    simp [show (497664 * k + 409454) % 2 = 0 by omega]
    omega
  have h12 : C (248832 * k + 204727) = 746496 * k + 614182 := by
    unfold C
    simp [show (248832 * k + 204727) % 2 ≠ 0 by omega]
    omega
  have h13 : C (746496 * k + 614182) = 373248 * k + 307091 := by
    unfold C
    simp [show (746496 * k + 614182) % 2 = 0 by omega]
    omega
  have h14 : C (373248 * k + 307091) = 1119744 * k + 921274 := by
    unfold C
    simp [show (373248 * k + 307091) % 2 ≠ 0 by omega]
    omega
  have h15 : C (1119744 * k + 921274) = 559872 * k + 460637 := by
    unfold C
    simp [show (1119744 * k + 921274) % 2 = 0 by omega]
    omega
  have h16 : C (559872 * k + 460637) = 1679616 * k + 1381912 := by
    unfold C
    simp [show (559872 * k + 460637) % 2 ≠ 0 by omega]
    omega
  have h17 : C (1679616 * k + 1381912) = 839808 * k + 690956 := by
    unfold C
    simp [show (1679616 * k + 1381912) % 2 = 0 by omega]
    omega
  have h18 : C (839808 * k + 690956) = 419904 * k + 345478 := by
    unfold C
    simp [show (839808 * k + 690956) % 2 = 0 by omega]
    omega
  have h19 : C (419904 * k + 345478) = 209952 * k + 172739 := by
    unfold C
    simp [show (419904 * k + 345478) % 2 = 0 by omega]
    omega
  have h20 : C (209952 * k + 172739) = 629856 * k + 518218 := by
    unfold C
    simp [show (209952 * k + 172739) % 2 ≠ 0 by omega]
    omega
  have h21 : C (629856 * k + 518218) = 314928 * k + 259109 := by
    unfold C
    simp [show (629856 * k + 518218) % 2 = 0 by omega]
    omega
  have h22 : C (314928 * k + 259109) = 944784 * k + 777328 := by
    unfold C
    simp [show (314928 * k + 259109) % 2 ≠ 0 by omega]
    omega
  have h23 : C (944784 * k + 777328) = 472392 * k + 388664 := by
    unfold C
    simp [show (944784 * k + 777328) % 2 = 0 by omega]
    omega
  have h24 : C (472392 * k + 388664) = 236196 * k + 194332 := by
    unfold C
    simp [show (472392 * k + 388664) % 2 = 0 by omega]
    omega
  have h25 : C (236196 * k + 194332) = 118098 * k + 97166 := by
    unfold C
    simp [show (236196 * k + 194332) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 97166) = 59049 * k + 48583 := by
    unfold C
    simp [show (118098 * k + 97166) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 53919) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 53919)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_54043 : ∀ k : Nat,
    iterate (65536 * k + 54043) 26 = 59049 * k + 48695 ∧
      59049 * k + 48695 < 65536 * k + 54043 := by
  intro k
  have h1 : C (65536 * k + 54043) = 196608 * k + 162130 := by
    unfold C
    simp [show (65536 * k + 54043) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 162130) = 98304 * k + 81065 := by
    unfold C
    simp [show (196608 * k + 162130) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 81065) = 294912 * k + 243196 := by
    unfold C
    simp [show (98304 * k + 81065) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 243196) = 147456 * k + 121598 := by
    unfold C
    simp [show (294912 * k + 243196) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 121598) = 73728 * k + 60799 := by
    unfold C
    simp [show (147456 * k + 121598) % 2 = 0 by omega]
    omega
  have h6 : C (73728 * k + 60799) = 221184 * k + 182398 := by
    unfold C
    simp [show (73728 * k + 60799) % 2 ≠ 0 by omega]
    omega
  have h7 : C (221184 * k + 182398) = 110592 * k + 91199 := by
    unfold C
    simp [show (221184 * k + 182398) % 2 = 0 by omega]
    omega
  have h8 : C (110592 * k + 91199) = 331776 * k + 273598 := by
    unfold C
    simp [show (110592 * k + 91199) % 2 ≠ 0 by omega]
    omega
  have h9 : C (331776 * k + 273598) = 165888 * k + 136799 := by
    unfold C
    simp [show (331776 * k + 273598) % 2 = 0 by omega]
    omega
  have h10 : C (165888 * k + 136799) = 497664 * k + 410398 := by
    unfold C
    simp [show (165888 * k + 136799) % 2 ≠ 0 by omega]
    omega
  have h11 : C (497664 * k + 410398) = 248832 * k + 205199 := by
    unfold C
    simp [show (497664 * k + 410398) % 2 = 0 by omega]
    omega
  have h12 : C (248832 * k + 205199) = 746496 * k + 615598 := by
    unfold C
    simp [show (248832 * k + 205199) % 2 ≠ 0 by omega]
    omega
  have h13 : C (746496 * k + 615598) = 373248 * k + 307799 := by
    unfold C
    simp [show (746496 * k + 615598) % 2 = 0 by omega]
    omega
  have h14 : C (373248 * k + 307799) = 1119744 * k + 923398 := by
    unfold C
    simp [show (373248 * k + 307799) % 2 ≠ 0 by omega]
    omega
  have h15 : C (1119744 * k + 923398) = 559872 * k + 461699 := by
    unfold C
    simp [show (1119744 * k + 923398) % 2 = 0 by omega]
    omega
  have h16 : C (559872 * k + 461699) = 1679616 * k + 1385098 := by
    unfold C
    simp [show (559872 * k + 461699) % 2 ≠ 0 by omega]
    omega
  have h17 : C (1679616 * k + 1385098) = 839808 * k + 692549 := by
    unfold C
    simp [show (1679616 * k + 1385098) % 2 = 0 by omega]
    omega
  have h18 : C (839808 * k + 692549) = 2519424 * k + 2077648 := by
    unfold C
    simp [show (839808 * k + 692549) % 2 ≠ 0 by omega]
    omega
  have h19 : C (2519424 * k + 2077648) = 1259712 * k + 1038824 := by
    unfold C
    simp [show (2519424 * k + 2077648) % 2 = 0 by omega]
    omega
  have h20 : C (1259712 * k + 1038824) = 629856 * k + 519412 := by
    unfold C
    simp [show (1259712 * k + 1038824) % 2 = 0 by omega]
    omega
  have h21 : C (629856 * k + 519412) = 314928 * k + 259706 := by
    unfold C
    simp [show (629856 * k + 519412) % 2 = 0 by omega]
    omega
  have h22 : C (314928 * k + 259706) = 157464 * k + 129853 := by
    unfold C
    simp [show (314928 * k + 259706) % 2 = 0 by omega]
    omega
  have h23 : C (157464 * k + 129853) = 472392 * k + 389560 := by
    unfold C
    simp [show (157464 * k + 129853) % 2 ≠ 0 by omega]
    omega
  have h24 : C (472392 * k + 389560) = 236196 * k + 194780 := by
    unfold C
    simp [show (472392 * k + 389560) % 2 = 0 by omega]
    omega
  have h25 : C (236196 * k + 194780) = 118098 * k + 97390 := by
    unfold C
    simp [show (236196 * k + 194780) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 97390) = 59049 * k + 48695 := by
    unfold C
    simp [show (118098 * k + 97390) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 54043) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 54043)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_54303 : ∀ k : Nat,
    iterate (65536 * k + 54303) 26 = 59049 * k + 48929 ∧
      59049 * k + 48929 < 65536 * k + 54303 := by
  intro k
  have h1 : C (65536 * k + 54303) = 196608 * k + 162910 := by
    unfold C
    simp [show (65536 * k + 54303) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 162910) = 98304 * k + 81455 := by
    unfold C
    simp [show (196608 * k + 162910) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 81455) = 294912 * k + 244366 := by
    unfold C
    simp [show (98304 * k + 81455) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 244366) = 147456 * k + 122183 := by
    unfold C
    simp [show (294912 * k + 244366) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 122183) = 442368 * k + 366550 := by
    unfold C
    simp [show (147456 * k + 122183) % 2 ≠ 0 by omega]
    omega
  have h6 : C (442368 * k + 366550) = 221184 * k + 183275 := by
    unfold C
    simp [show (442368 * k + 366550) % 2 = 0 by omega]
    omega
  have h7 : C (221184 * k + 183275) = 663552 * k + 549826 := by
    unfold C
    simp [show (221184 * k + 183275) % 2 ≠ 0 by omega]
    omega
  have h8 : C (663552 * k + 549826) = 331776 * k + 274913 := by
    unfold C
    simp [show (663552 * k + 549826) % 2 = 0 by omega]
    omega
  have h9 : C (331776 * k + 274913) = 995328 * k + 824740 := by
    unfold C
    simp [show (331776 * k + 274913) % 2 ≠ 0 by omega]
    omega
  have h10 : C (995328 * k + 824740) = 497664 * k + 412370 := by
    unfold C
    simp [show (995328 * k + 824740) % 2 = 0 by omega]
    omega
  have h11 : C (497664 * k + 412370) = 248832 * k + 206185 := by
    unfold C
    simp [show (497664 * k + 412370) % 2 = 0 by omega]
    omega
  have h12 : C (248832 * k + 206185) = 746496 * k + 618556 := by
    unfold C
    simp [show (248832 * k + 206185) % 2 ≠ 0 by omega]
    omega
  have h13 : C (746496 * k + 618556) = 373248 * k + 309278 := by
    unfold C
    simp [show (746496 * k + 618556) % 2 = 0 by omega]
    omega
  have h14 : C (373248 * k + 309278) = 186624 * k + 154639 := by
    unfold C
    simp [show (373248 * k + 309278) % 2 = 0 by omega]
    omega
  have h15 : C (186624 * k + 154639) = 559872 * k + 463918 := by
    unfold C
    simp [show (186624 * k + 154639) % 2 ≠ 0 by omega]
    omega
  have h16 : C (559872 * k + 463918) = 279936 * k + 231959 := by
    unfold C
    simp [show (559872 * k + 463918) % 2 = 0 by omega]
    omega
  have h17 : C (279936 * k + 231959) = 839808 * k + 695878 := by
    unfold C
    simp [show (279936 * k + 231959) % 2 ≠ 0 by omega]
    omega
  have h18 : C (839808 * k + 695878) = 419904 * k + 347939 := by
    unfold C
    simp [show (839808 * k + 695878) % 2 = 0 by omega]
    omega
  have h19 : C (419904 * k + 347939) = 1259712 * k + 1043818 := by
    unfold C
    simp [show (419904 * k + 347939) % 2 ≠ 0 by omega]
    omega
  have h20 : C (1259712 * k + 1043818) = 629856 * k + 521909 := by
    unfold C
    simp [show (1259712 * k + 1043818) % 2 = 0 by omega]
    omega
  have h21 : C (629856 * k + 521909) = 1889568 * k + 1565728 := by
    unfold C
    simp [show (629856 * k + 521909) % 2 ≠ 0 by omega]
    omega
  have h22 : C (1889568 * k + 1565728) = 944784 * k + 782864 := by
    unfold C
    simp [show (1889568 * k + 1565728) % 2 = 0 by omega]
    omega
  have h23 : C (944784 * k + 782864) = 472392 * k + 391432 := by
    unfold C
    simp [show (944784 * k + 782864) % 2 = 0 by omega]
    omega
  have h24 : C (472392 * k + 391432) = 236196 * k + 195716 := by
    unfold C
    simp [show (472392 * k + 391432) % 2 = 0 by omega]
    omega
  have h25 : C (236196 * k + 195716) = 118098 * k + 97858 := by
    unfold C
    simp [show (236196 * k + 195716) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 97858) = 59049 * k + 48929 := by
    unfold C
    simp [show (118098 * k + 97858) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 54303) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 54303)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_54319 : ∀ k : Nat,
    iterate (65536 * k + 54319) 26 = 59049 * k + 48944 ∧
      59049 * k + 48944 < 65536 * k + 54319 := by
  intro k
  have h1 : C (65536 * k + 54319) = 196608 * k + 162958 := by
    unfold C
    simp [show (65536 * k + 54319) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 162958) = 98304 * k + 81479 := by
    unfold C
    simp [show (196608 * k + 162958) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 81479) = 294912 * k + 244438 := by
    unfold C
    simp [show (98304 * k + 81479) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 244438) = 147456 * k + 122219 := by
    unfold C
    simp [show (294912 * k + 244438) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 122219) = 442368 * k + 366658 := by
    unfold C
    simp [show (147456 * k + 122219) % 2 ≠ 0 by omega]
    omega
  have h6 : C (442368 * k + 366658) = 221184 * k + 183329 := by
    unfold C
    simp [show (442368 * k + 366658) % 2 = 0 by omega]
    omega
  have h7 : C (221184 * k + 183329) = 663552 * k + 549988 := by
    unfold C
    simp [show (221184 * k + 183329) % 2 ≠ 0 by omega]
    omega
  have h8 : C (663552 * k + 549988) = 331776 * k + 274994 := by
    unfold C
    simp [show (663552 * k + 549988) % 2 = 0 by omega]
    omega
  have h9 : C (331776 * k + 274994) = 165888 * k + 137497 := by
    unfold C
    simp [show (331776 * k + 274994) % 2 = 0 by omega]
    omega
  have h10 : C (165888 * k + 137497) = 497664 * k + 412492 := by
    unfold C
    simp [show (165888 * k + 137497) % 2 ≠ 0 by omega]
    omega
  have h11 : C (497664 * k + 412492) = 248832 * k + 206246 := by
    unfold C
    simp [show (497664 * k + 412492) % 2 = 0 by omega]
    omega
  have h12 : C (248832 * k + 206246) = 124416 * k + 103123 := by
    unfold C
    simp [show (248832 * k + 206246) % 2 = 0 by omega]
    omega
  have h13 : C (124416 * k + 103123) = 373248 * k + 309370 := by
    unfold C
    simp [show (124416 * k + 103123) % 2 ≠ 0 by omega]
    omega
  have h14 : C (373248 * k + 309370) = 186624 * k + 154685 := by
    unfold C
    simp [show (373248 * k + 309370) % 2 = 0 by omega]
    omega
  have h15 : C (186624 * k + 154685) = 559872 * k + 464056 := by
    unfold C
    simp [show (186624 * k + 154685) % 2 ≠ 0 by omega]
    omega
  have h16 : C (559872 * k + 464056) = 279936 * k + 232028 := by
    unfold C
    simp [show (559872 * k + 464056) % 2 = 0 by omega]
    omega
  have h17 : C (279936 * k + 232028) = 139968 * k + 116014 := by
    unfold C
    simp [show (279936 * k + 232028) % 2 = 0 by omega]
    omega
  have h18 : C (139968 * k + 116014) = 69984 * k + 58007 := by
    unfold C
    simp [show (139968 * k + 116014) % 2 = 0 by omega]
    omega
  have h19 : C (69984 * k + 58007) = 209952 * k + 174022 := by
    unfold C
    simp [show (69984 * k + 58007) % 2 ≠ 0 by omega]
    omega
  have h20 : C (209952 * k + 174022) = 104976 * k + 87011 := by
    unfold C
    simp [show (209952 * k + 174022) % 2 = 0 by omega]
    omega
  have h21 : C (104976 * k + 87011) = 314928 * k + 261034 := by
    unfold C
    simp [show (104976 * k + 87011) % 2 ≠ 0 by omega]
    omega
  have h22 : C (314928 * k + 261034) = 157464 * k + 130517 := by
    unfold C
    simp [show (314928 * k + 261034) % 2 = 0 by omega]
    omega
  have h23 : C (157464 * k + 130517) = 472392 * k + 391552 := by
    unfold C
    simp [show (157464 * k + 130517) % 2 ≠ 0 by omega]
    omega
  have h24 : C (472392 * k + 391552) = 236196 * k + 195776 := by
    unfold C
    simp [show (472392 * k + 391552) % 2 = 0 by omega]
    omega
  have h25 : C (236196 * k + 195776) = 118098 * k + 97888 := by
    unfold C
    simp [show (236196 * k + 195776) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 97888) = 59049 * k + 48944 := by
    unfold C
    simp [show (118098 * k + 97888) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 54319) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 54319)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_54375 : ∀ k : Nat,
    iterate (65536 * k + 54375) 26 = 59049 * k + 48994 ∧
      59049 * k + 48994 < 65536 * k + 54375 := by
  intro k
  have h1 : C (65536 * k + 54375) = 196608 * k + 163126 := by
    unfold C
    simp [show (65536 * k + 54375) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 163126) = 98304 * k + 81563 := by
    unfold C
    simp [show (196608 * k + 163126) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 81563) = 294912 * k + 244690 := by
    unfold C
    simp [show (98304 * k + 81563) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 244690) = 147456 * k + 122345 := by
    unfold C
    simp [show (294912 * k + 244690) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 122345) = 442368 * k + 367036 := by
    unfold C
    simp [show (147456 * k + 122345) % 2 ≠ 0 by omega]
    omega
  have h6 : C (442368 * k + 367036) = 221184 * k + 183518 := by
    unfold C
    simp [show (442368 * k + 367036) % 2 = 0 by omega]
    omega
  have h7 : C (221184 * k + 183518) = 110592 * k + 91759 := by
    unfold C
    simp [show (221184 * k + 183518) % 2 = 0 by omega]
    omega
  have h8 : C (110592 * k + 91759) = 331776 * k + 275278 := by
    unfold C
    simp [show (110592 * k + 91759) % 2 ≠ 0 by omega]
    omega
  have h9 : C (331776 * k + 275278) = 165888 * k + 137639 := by
    unfold C
    simp [show (331776 * k + 275278) % 2 = 0 by omega]
    omega
  have h10 : C (165888 * k + 137639) = 497664 * k + 412918 := by
    unfold C
    simp [show (165888 * k + 137639) % 2 ≠ 0 by omega]
    omega
  have h11 : C (497664 * k + 412918) = 248832 * k + 206459 := by
    unfold C
    simp [show (497664 * k + 412918) % 2 = 0 by omega]
    omega
  have h12 : C (248832 * k + 206459) = 746496 * k + 619378 := by
    unfold C
    simp [show (248832 * k + 206459) % 2 ≠ 0 by omega]
    omega
  have h13 : C (746496 * k + 619378) = 373248 * k + 309689 := by
    unfold C
    simp [show (746496 * k + 619378) % 2 = 0 by omega]
    omega
  have h14 : C (373248 * k + 309689) = 1119744 * k + 929068 := by
    unfold C
    simp [show (373248 * k + 309689) % 2 ≠ 0 by omega]
    omega
  have h15 : C (1119744 * k + 929068) = 559872 * k + 464534 := by
    unfold C
    simp [show (1119744 * k + 929068) % 2 = 0 by omega]
    omega
  have h16 : C (559872 * k + 464534) = 279936 * k + 232267 := by
    unfold C
    simp [show (559872 * k + 464534) % 2 = 0 by omega]
    omega
  have h17 : C (279936 * k + 232267) = 839808 * k + 696802 := by
    unfold C
    simp [show (279936 * k + 232267) % 2 ≠ 0 by omega]
    omega
  have h18 : C (839808 * k + 696802) = 419904 * k + 348401 := by
    unfold C
    simp [show (839808 * k + 696802) % 2 = 0 by omega]
    omega
  have h19 : C (419904 * k + 348401) = 1259712 * k + 1045204 := by
    unfold C
    simp [show (419904 * k + 348401) % 2 ≠ 0 by omega]
    omega
  have h20 : C (1259712 * k + 1045204) = 629856 * k + 522602 := by
    unfold C
    simp [show (1259712 * k + 1045204) % 2 = 0 by omega]
    omega
  have h21 : C (629856 * k + 522602) = 314928 * k + 261301 := by
    unfold C
    simp [show (629856 * k + 522602) % 2 = 0 by omega]
    omega
  have h22 : C (314928 * k + 261301) = 944784 * k + 783904 := by
    unfold C
    simp [show (314928 * k + 261301) % 2 ≠ 0 by omega]
    omega
  have h23 : C (944784 * k + 783904) = 472392 * k + 391952 := by
    unfold C
    simp [show (944784 * k + 783904) % 2 = 0 by omega]
    omega
  have h24 : C (472392 * k + 391952) = 236196 * k + 195976 := by
    unfold C
    simp [show (472392 * k + 391952) % 2 = 0 by omega]
    omega
  have h25 : C (236196 * k + 195976) = 118098 * k + 97988 := by
    unfold C
    simp [show (236196 * k + 195976) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 97988) = 59049 * k + 48994 := by
    unfold C
    simp [show (118098 * k + 97988) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 54375) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 54375)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_54439 : ∀ k : Nat,
    iterate (65536 * k + 54439) 26 = 59049 * k + 49052 ∧
      59049 * k + 49052 < 65536 * k + 54439 := by
  intro k
  have h1 : C (65536 * k + 54439) = 196608 * k + 163318 := by
    unfold C
    simp [show (65536 * k + 54439) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 163318) = 98304 * k + 81659 := by
    unfold C
    simp [show (196608 * k + 163318) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 81659) = 294912 * k + 244978 := by
    unfold C
    simp [show (98304 * k + 81659) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 244978) = 147456 * k + 122489 := by
    unfold C
    simp [show (294912 * k + 244978) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 122489) = 442368 * k + 367468 := by
    unfold C
    simp [show (147456 * k + 122489) % 2 ≠ 0 by omega]
    omega
  have h6 : C (442368 * k + 367468) = 221184 * k + 183734 := by
    unfold C
    simp [show (442368 * k + 367468) % 2 = 0 by omega]
    omega
  have h7 : C (221184 * k + 183734) = 110592 * k + 91867 := by
    unfold C
    simp [show (221184 * k + 183734) % 2 = 0 by omega]
    omega
  have h8 : C (110592 * k + 91867) = 331776 * k + 275602 := by
    unfold C
    simp [show (110592 * k + 91867) % 2 ≠ 0 by omega]
    omega
  have h9 : C (331776 * k + 275602) = 165888 * k + 137801 := by
    unfold C
    simp [show (331776 * k + 275602) % 2 = 0 by omega]
    omega
  have h10 : C (165888 * k + 137801) = 497664 * k + 413404 := by
    unfold C
    simp [show (165888 * k + 137801) % 2 ≠ 0 by omega]
    omega
  have h11 : C (497664 * k + 413404) = 248832 * k + 206702 := by
    unfold C
    simp [show (497664 * k + 413404) % 2 = 0 by omega]
    omega
  have h12 : C (248832 * k + 206702) = 124416 * k + 103351 := by
    unfold C
    simp [show (248832 * k + 206702) % 2 = 0 by omega]
    omega
  have h13 : C (124416 * k + 103351) = 373248 * k + 310054 := by
    unfold C
    simp [show (124416 * k + 103351) % 2 ≠ 0 by omega]
    omega
  have h14 : C (373248 * k + 310054) = 186624 * k + 155027 := by
    unfold C
    simp [show (373248 * k + 310054) % 2 = 0 by omega]
    omega
  have h15 : C (186624 * k + 155027) = 559872 * k + 465082 := by
    unfold C
    simp [show (186624 * k + 155027) % 2 ≠ 0 by omega]
    omega
  have h16 : C (559872 * k + 465082) = 279936 * k + 232541 := by
    unfold C
    simp [show (559872 * k + 465082) % 2 = 0 by omega]
    omega
  have h17 : C (279936 * k + 232541) = 839808 * k + 697624 := by
    unfold C
    simp [show (279936 * k + 232541) % 2 ≠ 0 by omega]
    omega
  have h18 : C (839808 * k + 697624) = 419904 * k + 348812 := by
    unfold C
    simp [show (839808 * k + 697624) % 2 = 0 by omega]
    omega
  have h19 : C (419904 * k + 348812) = 209952 * k + 174406 := by
    unfold C
    simp [show (419904 * k + 348812) % 2 = 0 by omega]
    omega
  have h20 : C (209952 * k + 174406) = 104976 * k + 87203 := by
    unfold C
    simp [show (209952 * k + 174406) % 2 = 0 by omega]
    omega
  have h21 : C (104976 * k + 87203) = 314928 * k + 261610 := by
    unfold C
    simp [show (104976 * k + 87203) % 2 ≠ 0 by omega]
    omega
  have h22 : C (314928 * k + 261610) = 157464 * k + 130805 := by
    unfold C
    simp [show (314928 * k + 261610) % 2 = 0 by omega]
    omega
  have h23 : C (157464 * k + 130805) = 472392 * k + 392416 := by
    unfold C
    simp [show (157464 * k + 130805) % 2 ≠ 0 by omega]
    omega
  have h24 : C (472392 * k + 392416) = 236196 * k + 196208 := by
    unfold C
    simp [show (472392 * k + 392416) % 2 = 0 by omega]
    omega
  have h25 : C (236196 * k + 196208) = 118098 * k + 98104 := by
    unfold C
    simp [show (236196 * k + 196208) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 98104) = 59049 * k + 49052 := by
    unfold C
    simp [show (118098 * k + 98104) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 54439) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 54439)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_54751 : ∀ k : Nat,
    iterate (65536 * k + 54751) 26 = 59049 * k + 49333 ∧
      59049 * k + 49333 < 65536 * k + 54751 := by
  intro k
  have h1 : C (65536 * k + 54751) = 196608 * k + 164254 := by
    unfold C
    simp [show (65536 * k + 54751) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 164254) = 98304 * k + 82127 := by
    unfold C
    simp [show (196608 * k + 164254) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 82127) = 294912 * k + 246382 := by
    unfold C
    simp [show (98304 * k + 82127) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 246382) = 147456 * k + 123191 := by
    unfold C
    simp [show (294912 * k + 246382) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 123191) = 442368 * k + 369574 := by
    unfold C
    simp [show (147456 * k + 123191) % 2 ≠ 0 by omega]
    omega
  have h6 : C (442368 * k + 369574) = 221184 * k + 184787 := by
    unfold C
    simp [show (442368 * k + 369574) % 2 = 0 by omega]
    omega
  have h7 : C (221184 * k + 184787) = 663552 * k + 554362 := by
    unfold C
    simp [show (221184 * k + 184787) % 2 ≠ 0 by omega]
    omega
  have h8 : C (663552 * k + 554362) = 331776 * k + 277181 := by
    unfold C
    simp [show (663552 * k + 554362) % 2 = 0 by omega]
    omega
  have h9 : C (331776 * k + 277181) = 995328 * k + 831544 := by
    unfold C
    simp [show (331776 * k + 277181) % 2 ≠ 0 by omega]
    omega
  have h10 : C (995328 * k + 831544) = 497664 * k + 415772 := by
    unfold C
    simp [show (995328 * k + 831544) % 2 = 0 by omega]
    omega
  have h11 : C (497664 * k + 415772) = 248832 * k + 207886 := by
    unfold C
    simp [show (497664 * k + 415772) % 2 = 0 by omega]
    omega
  have h12 : C (248832 * k + 207886) = 124416 * k + 103943 := by
    unfold C
    simp [show (248832 * k + 207886) % 2 = 0 by omega]
    omega
  have h13 : C (124416 * k + 103943) = 373248 * k + 311830 := by
    unfold C
    simp [show (124416 * k + 103943) % 2 ≠ 0 by omega]
    omega
  have h14 : C (373248 * k + 311830) = 186624 * k + 155915 := by
    unfold C
    simp [show (373248 * k + 311830) % 2 = 0 by omega]
    omega
  have h15 : C (186624 * k + 155915) = 559872 * k + 467746 := by
    unfold C
    simp [show (186624 * k + 155915) % 2 ≠ 0 by omega]
    omega
  have h16 : C (559872 * k + 467746) = 279936 * k + 233873 := by
    unfold C
    simp [show (559872 * k + 467746) % 2 = 0 by omega]
    omega
  have h17 : C (279936 * k + 233873) = 839808 * k + 701620 := by
    unfold C
    simp [show (279936 * k + 233873) % 2 ≠ 0 by omega]
    omega
  have h18 : C (839808 * k + 701620) = 419904 * k + 350810 := by
    unfold C
    simp [show (839808 * k + 701620) % 2 = 0 by omega]
    omega
  have h19 : C (419904 * k + 350810) = 209952 * k + 175405 := by
    unfold C
    simp [show (419904 * k + 350810) % 2 = 0 by omega]
    omega
  have h20 : C (209952 * k + 175405) = 629856 * k + 526216 := by
    unfold C
    simp [show (209952 * k + 175405) % 2 ≠ 0 by omega]
    omega
  have h21 : C (629856 * k + 526216) = 314928 * k + 263108 := by
    unfold C
    simp [show (629856 * k + 526216) % 2 = 0 by omega]
    omega
  have h22 : C (314928 * k + 263108) = 157464 * k + 131554 := by
    unfold C
    simp [show (314928 * k + 263108) % 2 = 0 by omega]
    omega
  have h23 : C (157464 * k + 131554) = 78732 * k + 65777 := by
    unfold C
    simp [show (157464 * k + 131554) % 2 = 0 by omega]
    omega
  have h24 : C (78732 * k + 65777) = 236196 * k + 197332 := by
    unfold C
    simp [show (78732 * k + 65777) % 2 ≠ 0 by omega]
    omega
  have h25 : C (236196 * k + 197332) = 118098 * k + 98666 := by
    unfold C
    simp [show (236196 * k + 197332) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 98666) = 59049 * k + 49333 := by
    unfold C
    simp [show (118098 * k + 98666) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 54751) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 54751)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_55207 : ∀ k : Nat,
    iterate (65536 * k + 55207) 26 = 59049 * k + 49744 ∧
      59049 * k + 49744 < 65536 * k + 55207 := by
  intro k
  have h1 : C (65536 * k + 55207) = 196608 * k + 165622 := by
    unfold C
    simp [show (65536 * k + 55207) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 165622) = 98304 * k + 82811 := by
    unfold C
    simp [show (196608 * k + 165622) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 82811) = 294912 * k + 248434 := by
    unfold C
    simp [show (98304 * k + 82811) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 248434) = 147456 * k + 124217 := by
    unfold C
    simp [show (294912 * k + 248434) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 124217) = 442368 * k + 372652 := by
    unfold C
    simp [show (147456 * k + 124217) % 2 ≠ 0 by omega]
    omega
  have h6 : C (442368 * k + 372652) = 221184 * k + 186326 := by
    unfold C
    simp [show (442368 * k + 372652) % 2 = 0 by omega]
    omega
  have h7 : C (221184 * k + 186326) = 110592 * k + 93163 := by
    unfold C
    simp [show (221184 * k + 186326) % 2 = 0 by omega]
    omega
  have h8 : C (110592 * k + 93163) = 331776 * k + 279490 := by
    unfold C
    simp [show (110592 * k + 93163) % 2 ≠ 0 by omega]
    omega
  have h9 : C (331776 * k + 279490) = 165888 * k + 139745 := by
    unfold C
    simp [show (331776 * k + 279490) % 2 = 0 by omega]
    omega
  have h10 : C (165888 * k + 139745) = 497664 * k + 419236 := by
    unfold C
    simp [show (165888 * k + 139745) % 2 ≠ 0 by omega]
    omega
  have h11 : C (497664 * k + 419236) = 248832 * k + 209618 := by
    unfold C
    simp [show (497664 * k + 419236) % 2 = 0 by omega]
    omega
  have h12 : C (248832 * k + 209618) = 124416 * k + 104809 := by
    unfold C
    simp [show (248832 * k + 209618) % 2 = 0 by omega]
    omega
  have h13 : C (124416 * k + 104809) = 373248 * k + 314428 := by
    unfold C
    simp [show (124416 * k + 104809) % 2 ≠ 0 by omega]
    omega
  have h14 : C (373248 * k + 314428) = 186624 * k + 157214 := by
    unfold C
    simp [show (373248 * k + 314428) % 2 = 0 by omega]
    omega
  have h15 : C (186624 * k + 157214) = 93312 * k + 78607 := by
    unfold C
    simp [show (186624 * k + 157214) % 2 = 0 by omega]
    omega
  have h16 : C (93312 * k + 78607) = 279936 * k + 235822 := by
    unfold C
    simp [show (93312 * k + 78607) % 2 ≠ 0 by omega]
    omega
  have h17 : C (279936 * k + 235822) = 139968 * k + 117911 := by
    unfold C
    simp [show (279936 * k + 235822) % 2 = 0 by omega]
    omega
  have h18 : C (139968 * k + 117911) = 419904 * k + 353734 := by
    unfold C
    simp [show (139968 * k + 117911) % 2 ≠ 0 by omega]
    omega
  have h19 : C (419904 * k + 353734) = 209952 * k + 176867 := by
    unfold C
    simp [show (419904 * k + 353734) % 2 = 0 by omega]
    omega
  have h20 : C (209952 * k + 176867) = 629856 * k + 530602 := by
    unfold C
    simp [show (209952 * k + 176867) % 2 ≠ 0 by omega]
    omega
  have h21 : C (629856 * k + 530602) = 314928 * k + 265301 := by
    unfold C
    simp [show (629856 * k + 530602) % 2 = 0 by omega]
    omega
  have h22 : C (314928 * k + 265301) = 944784 * k + 795904 := by
    unfold C
    simp [show (314928 * k + 265301) % 2 ≠ 0 by omega]
    omega
  have h23 : C (944784 * k + 795904) = 472392 * k + 397952 := by
    unfold C
    simp [show (944784 * k + 795904) % 2 = 0 by omega]
    omega
  have h24 : C (472392 * k + 397952) = 236196 * k + 198976 := by
    unfold C
    simp [show (472392 * k + 397952) % 2 = 0 by omega]
    omega
  have h25 : C (236196 * k + 198976) = 118098 * k + 99488 := by
    unfold C
    simp [show (236196 * k + 198976) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 99488) = 59049 * k + 49744 := by
    unfold C
    simp [show (118098 * k + 99488) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 55207) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 55207)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_55291 : ∀ k : Nat,
    iterate (65536 * k + 55291) 26 = 59049 * k + 49820 ∧
      59049 * k + 49820 < 65536 * k + 55291 := by
  intro k
  have h1 : C (65536 * k + 55291) = 196608 * k + 165874 := by
    unfold C
    simp [show (65536 * k + 55291) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 165874) = 98304 * k + 82937 := by
    unfold C
    simp [show (196608 * k + 165874) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 82937) = 294912 * k + 248812 := by
    unfold C
    simp [show (98304 * k + 82937) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 248812) = 147456 * k + 124406 := by
    unfold C
    simp [show (294912 * k + 248812) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 124406) = 73728 * k + 62203 := by
    unfold C
    simp [show (147456 * k + 124406) % 2 = 0 by omega]
    omega
  have h6 : C (73728 * k + 62203) = 221184 * k + 186610 := by
    unfold C
    simp [show (73728 * k + 62203) % 2 ≠ 0 by omega]
    omega
  have h7 : C (221184 * k + 186610) = 110592 * k + 93305 := by
    unfold C
    simp [show (221184 * k + 186610) % 2 = 0 by omega]
    omega
  have h8 : C (110592 * k + 93305) = 331776 * k + 279916 := by
    unfold C
    simp [show (110592 * k + 93305) % 2 ≠ 0 by omega]
    omega
  have h9 : C (331776 * k + 279916) = 165888 * k + 139958 := by
    unfold C
    simp [show (331776 * k + 279916) % 2 = 0 by omega]
    omega
  have h10 : C (165888 * k + 139958) = 82944 * k + 69979 := by
    unfold C
    simp [show (165888 * k + 139958) % 2 = 0 by omega]
    omega
  have h11 : C (82944 * k + 69979) = 248832 * k + 209938 := by
    unfold C
    simp [show (82944 * k + 69979) % 2 ≠ 0 by omega]
    omega
  have h12 : C (248832 * k + 209938) = 124416 * k + 104969 := by
    unfold C
    simp [show (248832 * k + 209938) % 2 = 0 by omega]
    omega
  have h13 : C (124416 * k + 104969) = 373248 * k + 314908 := by
    unfold C
    simp [show (124416 * k + 104969) % 2 ≠ 0 by omega]
    omega
  have h14 : C (373248 * k + 314908) = 186624 * k + 157454 := by
    unfold C
    simp [show (373248 * k + 314908) % 2 = 0 by omega]
    omega
  have h15 : C (186624 * k + 157454) = 93312 * k + 78727 := by
    unfold C
    simp [show (186624 * k + 157454) % 2 = 0 by omega]
    omega
  have h16 : C (93312 * k + 78727) = 279936 * k + 236182 := by
    unfold C
    simp [show (93312 * k + 78727) % 2 ≠ 0 by omega]
    omega
  have h17 : C (279936 * k + 236182) = 139968 * k + 118091 := by
    unfold C
    simp [show (279936 * k + 236182) % 2 = 0 by omega]
    omega
  have h18 : C (139968 * k + 118091) = 419904 * k + 354274 := by
    unfold C
    simp [show (139968 * k + 118091) % 2 ≠ 0 by omega]
    omega
  have h19 : C (419904 * k + 354274) = 209952 * k + 177137 := by
    unfold C
    simp [show (419904 * k + 354274) % 2 = 0 by omega]
    omega
  have h20 : C (209952 * k + 177137) = 629856 * k + 531412 := by
    unfold C
    simp [show (209952 * k + 177137) % 2 ≠ 0 by omega]
    omega
  have h21 : C (629856 * k + 531412) = 314928 * k + 265706 := by
    unfold C
    simp [show (629856 * k + 531412) % 2 = 0 by omega]
    omega
  have h22 : C (314928 * k + 265706) = 157464 * k + 132853 := by
    unfold C
    simp [show (314928 * k + 265706) % 2 = 0 by omega]
    omega
  have h23 : C (157464 * k + 132853) = 472392 * k + 398560 := by
    unfold C
    simp [show (157464 * k + 132853) % 2 ≠ 0 by omega]
    omega
  have h24 : C (472392 * k + 398560) = 236196 * k + 199280 := by
    unfold C
    simp [show (472392 * k + 398560) % 2 = 0 by omega]
    omega
  have h25 : C (236196 * k + 199280) = 118098 * k + 99640 := by
    unfold C
    simp [show (236196 * k + 199280) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 99640) = 59049 * k + 49820 := by
    unfold C
    simp [show (118098 * k + 99640) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 55291) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 55291)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_55327 : ∀ k : Nat,
    iterate (65536 * k + 55327) 26 = 59049 * k + 49852 ∧
      59049 * k + 49852 < 65536 * k + 55327 := by
  intro k
  have h1 : C (65536 * k + 55327) = 196608 * k + 165982 := by
    unfold C
    simp [show (65536 * k + 55327) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 165982) = 98304 * k + 82991 := by
    unfold C
    simp [show (196608 * k + 165982) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 82991) = 294912 * k + 248974 := by
    unfold C
    simp [show (98304 * k + 82991) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 248974) = 147456 * k + 124487 := by
    unfold C
    simp [show (294912 * k + 248974) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 124487) = 442368 * k + 373462 := by
    unfold C
    simp [show (147456 * k + 124487) % 2 ≠ 0 by omega]
    omega
  have h6 : C (442368 * k + 373462) = 221184 * k + 186731 := by
    unfold C
    simp [show (442368 * k + 373462) % 2 = 0 by omega]
    omega
  have h7 : C (221184 * k + 186731) = 663552 * k + 560194 := by
    unfold C
    simp [show (221184 * k + 186731) % 2 ≠ 0 by omega]
    omega
  have h8 : C (663552 * k + 560194) = 331776 * k + 280097 := by
    unfold C
    simp [show (663552 * k + 560194) % 2 = 0 by omega]
    omega
  have h9 : C (331776 * k + 280097) = 995328 * k + 840292 := by
    unfold C
    simp [show (331776 * k + 280097) % 2 ≠ 0 by omega]
    omega
  have h10 : C (995328 * k + 840292) = 497664 * k + 420146 := by
    unfold C
    simp [show (995328 * k + 840292) % 2 = 0 by omega]
    omega
  have h11 : C (497664 * k + 420146) = 248832 * k + 210073 := by
    unfold C
    simp [show (497664 * k + 420146) % 2 = 0 by omega]
    omega
  have h12 : C (248832 * k + 210073) = 746496 * k + 630220 := by
    unfold C
    simp [show (248832 * k + 210073) % 2 ≠ 0 by omega]
    omega
  have h13 : C (746496 * k + 630220) = 373248 * k + 315110 := by
    unfold C
    simp [show (746496 * k + 630220) % 2 = 0 by omega]
    omega
  have h14 : C (373248 * k + 315110) = 186624 * k + 157555 := by
    unfold C
    simp [show (373248 * k + 315110) % 2 = 0 by omega]
    omega
  have h15 : C (186624 * k + 157555) = 559872 * k + 472666 := by
    unfold C
    simp [show (186624 * k + 157555) % 2 ≠ 0 by omega]
    omega
  have h16 : C (559872 * k + 472666) = 279936 * k + 236333 := by
    unfold C
    simp [show (559872 * k + 472666) % 2 = 0 by omega]
    omega
  have h17 : C (279936 * k + 236333) = 839808 * k + 709000 := by
    unfold C
    simp [show (279936 * k + 236333) % 2 ≠ 0 by omega]
    omega
  have h18 : C (839808 * k + 709000) = 419904 * k + 354500 := by
    unfold C
    simp [show (839808 * k + 709000) % 2 = 0 by omega]
    omega
  have h19 : C (419904 * k + 354500) = 209952 * k + 177250 := by
    unfold C
    simp [show (419904 * k + 354500) % 2 = 0 by omega]
    omega
  have h20 : C (209952 * k + 177250) = 104976 * k + 88625 := by
    unfold C
    simp [show (209952 * k + 177250) % 2 = 0 by omega]
    omega
  have h21 : C (104976 * k + 88625) = 314928 * k + 265876 := by
    unfold C
    simp [show (104976 * k + 88625) % 2 ≠ 0 by omega]
    omega
  have h22 : C (314928 * k + 265876) = 157464 * k + 132938 := by
    unfold C
    simp [show (314928 * k + 265876) % 2 = 0 by omega]
    omega
  have h23 : C (157464 * k + 132938) = 78732 * k + 66469 := by
    unfold C
    simp [show (157464 * k + 132938) % 2 = 0 by omega]
    omega
  have h24 : C (78732 * k + 66469) = 236196 * k + 199408 := by
    unfold C
    simp [show (78732 * k + 66469) % 2 ≠ 0 by omega]
    omega
  have h25 : C (236196 * k + 199408) = 118098 * k + 99704 := by
    unfold C
    simp [show (236196 * k + 199408) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 99704) = 59049 * k + 49852 := by
    unfold C
    simp [show (118098 * k + 99704) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 55327) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 55327)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

end CollatzM16ShardT
