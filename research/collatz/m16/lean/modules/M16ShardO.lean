import Mathlib.Data.Nat.Prime.Basic

namespace CollatzM16ShardO

def C (n : Nat) : Nat := if n % 2 = 0 then n / 2 else 3 * n + 1

def iterate (n t : Nat) : Nat := Nat.rec n (fun _ previous => C previous) t

theorem descent_mod65536_38427 : ∀ k : Nat,
    iterate (65536 * k + 38427) 26 = 59049 * k + 34625 ∧
      59049 * k + 34625 < 65536 * k + 38427 := by
  intro k
  have h1 : C (65536 * k + 38427) = 196608 * k + 115282 := by
    unfold C
    simp [show (65536 * k + 38427) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 115282) = 98304 * k + 57641 := by
    unfold C
    simp [show (196608 * k + 115282) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 57641) = 294912 * k + 172924 := by
    unfold C
    simp [show (98304 * k + 57641) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 172924) = 147456 * k + 86462 := by
    unfold C
    simp [show (294912 * k + 172924) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 86462) = 73728 * k + 43231 := by
    unfold C
    simp [show (147456 * k + 86462) % 2 = 0 by omega]
    omega
  have h6 : C (73728 * k + 43231) = 221184 * k + 129694 := by
    unfold C
    simp [show (73728 * k + 43231) % 2 ≠ 0 by omega]
    omega
  have h7 : C (221184 * k + 129694) = 110592 * k + 64847 := by
    unfold C
    simp [show (221184 * k + 129694) % 2 = 0 by omega]
    omega
  have h8 : C (110592 * k + 64847) = 331776 * k + 194542 := by
    unfold C
    simp [show (110592 * k + 64847) % 2 ≠ 0 by omega]
    omega
  have h9 : C (331776 * k + 194542) = 165888 * k + 97271 := by
    unfold C
    simp [show (331776 * k + 194542) % 2 = 0 by omega]
    omega
  have h10 : C (165888 * k + 97271) = 497664 * k + 291814 := by
    unfold C
    simp [show (165888 * k + 97271) % 2 ≠ 0 by omega]
    omega
  have h11 : C (497664 * k + 291814) = 248832 * k + 145907 := by
    unfold C
    simp [show (497664 * k + 291814) % 2 = 0 by omega]
    omega
  have h12 : C (248832 * k + 145907) = 746496 * k + 437722 := by
    unfold C
    simp [show (248832 * k + 145907) % 2 ≠ 0 by omega]
    omega
  have h13 : C (746496 * k + 437722) = 373248 * k + 218861 := by
    unfold C
    simp [show (746496 * k + 437722) % 2 = 0 by omega]
    omega
  have h14 : C (373248 * k + 218861) = 1119744 * k + 656584 := by
    unfold C
    simp [show (373248 * k + 218861) % 2 ≠ 0 by omega]
    omega
  have h15 : C (1119744 * k + 656584) = 559872 * k + 328292 := by
    unfold C
    simp [show (1119744 * k + 656584) % 2 = 0 by omega]
    omega
  have h16 : C (559872 * k + 328292) = 279936 * k + 164146 := by
    unfold C
    simp [show (559872 * k + 328292) % 2 = 0 by omega]
    omega
  have h17 : C (279936 * k + 164146) = 139968 * k + 82073 := by
    unfold C
    simp [show (279936 * k + 164146) % 2 = 0 by omega]
    omega
  have h18 : C (139968 * k + 82073) = 419904 * k + 246220 := by
    unfold C
    simp [show (139968 * k + 82073) % 2 ≠ 0 by omega]
    omega
  have h19 : C (419904 * k + 246220) = 209952 * k + 123110 := by
    unfold C
    simp [show (419904 * k + 246220) % 2 = 0 by omega]
    omega
  have h20 : C (209952 * k + 123110) = 104976 * k + 61555 := by
    unfold C
    simp [show (209952 * k + 123110) % 2 = 0 by omega]
    omega
  have h21 : C (104976 * k + 61555) = 314928 * k + 184666 := by
    unfold C
    simp [show (104976 * k + 61555) % 2 ≠ 0 by omega]
    omega
  have h22 : C (314928 * k + 184666) = 157464 * k + 92333 := by
    unfold C
    simp [show (314928 * k + 184666) % 2 = 0 by omega]
    omega
  have h23 : C (157464 * k + 92333) = 472392 * k + 277000 := by
    unfold C
    simp [show (157464 * k + 92333) % 2 ≠ 0 by omega]
    omega
  have h24 : C (472392 * k + 277000) = 236196 * k + 138500 := by
    unfold C
    simp [show (472392 * k + 277000) % 2 = 0 by omega]
    omega
  have h25 : C (236196 * k + 138500) = 118098 * k + 69250 := by
    unfold C
    simp [show (236196 * k + 138500) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 69250) = 59049 * k + 34625 := by
    unfold C
    simp [show (118098 * k + 69250) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 38427) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 38427)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_38607 : ∀ k : Nat,
    iterate (65536 * k + 38607) 26 = 59049 * k + 34787 ∧
      59049 * k + 34787 < 65536 * k + 38607 := by
  intro k
  have h1 : C (65536 * k + 38607) = 196608 * k + 115822 := by
    unfold C
    simp [show (65536 * k + 38607) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 115822) = 98304 * k + 57911 := by
    unfold C
    simp [show (196608 * k + 115822) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 57911) = 294912 * k + 173734 := by
    unfold C
    simp [show (98304 * k + 57911) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 173734) = 147456 * k + 86867 := by
    unfold C
    simp [show (294912 * k + 173734) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 86867) = 442368 * k + 260602 := by
    unfold C
    simp [show (147456 * k + 86867) % 2 ≠ 0 by omega]
    omega
  have h6 : C (442368 * k + 260602) = 221184 * k + 130301 := by
    unfold C
    simp [show (442368 * k + 260602) % 2 = 0 by omega]
    omega
  have h7 : C (221184 * k + 130301) = 663552 * k + 390904 := by
    unfold C
    simp [show (221184 * k + 130301) % 2 ≠ 0 by omega]
    omega
  have h8 : C (663552 * k + 390904) = 331776 * k + 195452 := by
    unfold C
    simp [show (663552 * k + 390904) % 2 = 0 by omega]
    omega
  have h9 : C (331776 * k + 195452) = 165888 * k + 97726 := by
    unfold C
    simp [show (331776 * k + 195452) % 2 = 0 by omega]
    omega
  have h10 : C (165888 * k + 97726) = 82944 * k + 48863 := by
    unfold C
    simp [show (165888 * k + 97726) % 2 = 0 by omega]
    omega
  have h11 : C (82944 * k + 48863) = 248832 * k + 146590 := by
    unfold C
    simp [show (82944 * k + 48863) % 2 ≠ 0 by omega]
    omega
  have h12 : C (248832 * k + 146590) = 124416 * k + 73295 := by
    unfold C
    simp [show (248832 * k + 146590) % 2 = 0 by omega]
    omega
  have h13 : C (124416 * k + 73295) = 373248 * k + 219886 := by
    unfold C
    simp [show (124416 * k + 73295) % 2 ≠ 0 by omega]
    omega
  have h14 : C (373248 * k + 219886) = 186624 * k + 109943 := by
    unfold C
    simp [show (373248 * k + 219886) % 2 = 0 by omega]
    omega
  have h15 : C (186624 * k + 109943) = 559872 * k + 329830 := by
    unfold C
    simp [show (186624 * k + 109943) % 2 ≠ 0 by omega]
    omega
  have h16 : C (559872 * k + 329830) = 279936 * k + 164915 := by
    unfold C
    simp [show (559872 * k + 329830) % 2 = 0 by omega]
    omega
  have h17 : C (279936 * k + 164915) = 839808 * k + 494746 := by
    unfold C
    simp [show (279936 * k + 164915) % 2 ≠ 0 by omega]
    omega
  have h18 : C (839808 * k + 494746) = 419904 * k + 247373 := by
    unfold C
    simp [show (839808 * k + 494746) % 2 = 0 by omega]
    omega
  have h19 : C (419904 * k + 247373) = 1259712 * k + 742120 := by
    unfold C
    simp [show (419904 * k + 247373) % 2 ≠ 0 by omega]
    omega
  have h20 : C (1259712 * k + 742120) = 629856 * k + 371060 := by
    unfold C
    simp [show (1259712 * k + 742120) % 2 = 0 by omega]
    omega
  have h21 : C (629856 * k + 371060) = 314928 * k + 185530 := by
    unfold C
    simp [show (629856 * k + 371060) % 2 = 0 by omega]
    omega
  have h22 : C (314928 * k + 185530) = 157464 * k + 92765 := by
    unfold C
    simp [show (314928 * k + 185530) % 2 = 0 by omega]
    omega
  have h23 : C (157464 * k + 92765) = 472392 * k + 278296 := by
    unfold C
    simp [show (157464 * k + 92765) % 2 ≠ 0 by omega]
    omega
  have h24 : C (472392 * k + 278296) = 236196 * k + 139148 := by
    unfold C
    simp [show (472392 * k + 278296) % 2 = 0 by omega]
    omega
  have h25 : C (236196 * k + 139148) = 118098 * k + 69574 := by
    unfold C
    simp [show (236196 * k + 139148) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 69574) = 59049 * k + 34787 := by
    unfold C
    simp [show (118098 * k + 69574) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 38607) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 38607)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_38847 : ∀ k : Nat,
    iterate (65536 * k + 38847) 26 = 59049 * k + 35003 ∧
      59049 * k + 35003 < 65536 * k + 38847 := by
  intro k
  have h1 : C (65536 * k + 38847) = 196608 * k + 116542 := by
    unfold C
    simp [show (65536 * k + 38847) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 116542) = 98304 * k + 58271 := by
    unfold C
    simp [show (196608 * k + 116542) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 58271) = 294912 * k + 174814 := by
    unfold C
    simp [show (98304 * k + 58271) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 174814) = 147456 * k + 87407 := by
    unfold C
    simp [show (294912 * k + 174814) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 87407) = 442368 * k + 262222 := by
    unfold C
    simp [show (147456 * k + 87407) % 2 ≠ 0 by omega]
    omega
  have h6 : C (442368 * k + 262222) = 221184 * k + 131111 := by
    unfold C
    simp [show (442368 * k + 262222) % 2 = 0 by omega]
    omega
  have h7 : C (221184 * k + 131111) = 663552 * k + 393334 := by
    unfold C
    simp [show (221184 * k + 131111) % 2 ≠ 0 by omega]
    omega
  have h8 : C (663552 * k + 393334) = 331776 * k + 196667 := by
    unfold C
    simp [show (663552 * k + 393334) % 2 = 0 by omega]
    omega
  have h9 : C (331776 * k + 196667) = 995328 * k + 590002 := by
    unfold C
    simp [show (331776 * k + 196667) % 2 ≠ 0 by omega]
    omega
  have h10 : C (995328 * k + 590002) = 497664 * k + 295001 := by
    unfold C
    simp [show (995328 * k + 590002) % 2 = 0 by omega]
    omega
  have h11 : C (497664 * k + 295001) = 1492992 * k + 885004 := by
    unfold C
    simp [show (497664 * k + 295001) % 2 ≠ 0 by omega]
    omega
  have h12 : C (1492992 * k + 885004) = 746496 * k + 442502 := by
    unfold C
    simp [show (1492992 * k + 885004) % 2 = 0 by omega]
    omega
  have h13 : C (746496 * k + 442502) = 373248 * k + 221251 := by
    unfold C
    simp [show (746496 * k + 442502) % 2 = 0 by omega]
    omega
  have h14 : C (373248 * k + 221251) = 1119744 * k + 663754 := by
    unfold C
    simp [show (373248 * k + 221251) % 2 ≠ 0 by omega]
    omega
  have h15 : C (1119744 * k + 663754) = 559872 * k + 331877 := by
    unfold C
    simp [show (1119744 * k + 663754) % 2 = 0 by omega]
    omega
  have h16 : C (559872 * k + 331877) = 1679616 * k + 995632 := by
    unfold C
    simp [show (559872 * k + 331877) % 2 ≠ 0 by omega]
    omega
  have h17 : C (1679616 * k + 995632) = 839808 * k + 497816 := by
    unfold C
    simp [show (1679616 * k + 995632) % 2 = 0 by omega]
    omega
  have h18 : C (839808 * k + 497816) = 419904 * k + 248908 := by
    unfold C
    simp [show (839808 * k + 497816) % 2 = 0 by omega]
    omega
  have h19 : C (419904 * k + 248908) = 209952 * k + 124454 := by
    unfold C
    simp [show (419904 * k + 248908) % 2 = 0 by omega]
    omega
  have h20 : C (209952 * k + 124454) = 104976 * k + 62227 := by
    unfold C
    simp [show (209952 * k + 124454) % 2 = 0 by omega]
    omega
  have h21 : C (104976 * k + 62227) = 314928 * k + 186682 := by
    unfold C
    simp [show (104976 * k + 62227) % 2 ≠ 0 by omega]
    omega
  have h22 : C (314928 * k + 186682) = 157464 * k + 93341 := by
    unfold C
    simp [show (314928 * k + 186682) % 2 = 0 by omega]
    omega
  have h23 : C (157464 * k + 93341) = 472392 * k + 280024 := by
    unfold C
    simp [show (157464 * k + 93341) % 2 ≠ 0 by omega]
    omega
  have h24 : C (472392 * k + 280024) = 236196 * k + 140012 := by
    unfold C
    simp [show (472392 * k + 280024) % 2 = 0 by omega]
    omega
  have h25 : C (236196 * k + 140012) = 118098 * k + 70006 := by
    unfold C
    simp [show (236196 * k + 140012) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 70006) = 59049 * k + 35003 := by
    unfold C
    simp [show (118098 * k + 70006) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 38847) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 38847)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_39039 : ∀ k : Nat,
    iterate (65536 * k + 39039) 26 = 59049 * k + 35176 ∧
      59049 * k + 35176 < 65536 * k + 39039 := by
  intro k
  have h1 : C (65536 * k + 39039) = 196608 * k + 117118 := by
    unfold C
    simp [show (65536 * k + 39039) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 117118) = 98304 * k + 58559 := by
    unfold C
    simp [show (196608 * k + 117118) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 58559) = 294912 * k + 175678 := by
    unfold C
    simp [show (98304 * k + 58559) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 175678) = 147456 * k + 87839 := by
    unfold C
    simp [show (294912 * k + 175678) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 87839) = 442368 * k + 263518 := by
    unfold C
    simp [show (147456 * k + 87839) % 2 ≠ 0 by omega]
    omega
  have h6 : C (442368 * k + 263518) = 221184 * k + 131759 := by
    unfold C
    simp [show (442368 * k + 263518) % 2 = 0 by omega]
    omega
  have h7 : C (221184 * k + 131759) = 663552 * k + 395278 := by
    unfold C
    simp [show (221184 * k + 131759) % 2 ≠ 0 by omega]
    omega
  have h8 : C (663552 * k + 395278) = 331776 * k + 197639 := by
    unfold C
    simp [show (663552 * k + 395278) % 2 = 0 by omega]
    omega
  have h9 : C (331776 * k + 197639) = 995328 * k + 592918 := by
    unfold C
    simp [show (331776 * k + 197639) % 2 ≠ 0 by omega]
    omega
  have h10 : C (995328 * k + 592918) = 497664 * k + 296459 := by
    unfold C
    simp [show (995328 * k + 592918) % 2 = 0 by omega]
    omega
  have h11 : C (497664 * k + 296459) = 1492992 * k + 889378 := by
    unfold C
    simp [show (497664 * k + 296459) % 2 ≠ 0 by omega]
    omega
  have h12 : C (1492992 * k + 889378) = 746496 * k + 444689 := by
    unfold C
    simp [show (1492992 * k + 889378) % 2 = 0 by omega]
    omega
  have h13 : C (746496 * k + 444689) = 2239488 * k + 1334068 := by
    unfold C
    simp [show (746496 * k + 444689) % 2 ≠ 0 by omega]
    omega
  have h14 : C (2239488 * k + 1334068) = 1119744 * k + 667034 := by
    unfold C
    simp [show (2239488 * k + 1334068) % 2 = 0 by omega]
    omega
  have h15 : C (1119744 * k + 667034) = 559872 * k + 333517 := by
    unfold C
    simp [show (1119744 * k + 667034) % 2 = 0 by omega]
    omega
  have h16 : C (559872 * k + 333517) = 1679616 * k + 1000552 := by
    unfold C
    simp [show (559872 * k + 333517) % 2 ≠ 0 by omega]
    omega
  have h17 : C (1679616 * k + 1000552) = 839808 * k + 500276 := by
    unfold C
    simp [show (1679616 * k + 1000552) % 2 = 0 by omega]
    omega
  have h18 : C (839808 * k + 500276) = 419904 * k + 250138 := by
    unfold C
    simp [show (839808 * k + 500276) % 2 = 0 by omega]
    omega
  have h19 : C (419904 * k + 250138) = 209952 * k + 125069 := by
    unfold C
    simp [show (419904 * k + 250138) % 2 = 0 by omega]
    omega
  have h20 : C (209952 * k + 125069) = 629856 * k + 375208 := by
    unfold C
    simp [show (209952 * k + 125069) % 2 ≠ 0 by omega]
    omega
  have h21 : C (629856 * k + 375208) = 314928 * k + 187604 := by
    unfold C
    simp [show (629856 * k + 375208) % 2 = 0 by omega]
    omega
  have h22 : C (314928 * k + 187604) = 157464 * k + 93802 := by
    unfold C
    simp [show (314928 * k + 187604) % 2 = 0 by omega]
    omega
  have h23 : C (157464 * k + 93802) = 78732 * k + 46901 := by
    unfold C
    simp [show (157464 * k + 93802) % 2 = 0 by omega]
    omega
  have h24 : C (78732 * k + 46901) = 236196 * k + 140704 := by
    unfold C
    simp [show (78732 * k + 46901) % 2 ≠ 0 by omega]
    omega
  have h25 : C (236196 * k + 140704) = 118098 * k + 70352 := by
    unfold C
    simp [show (236196 * k + 140704) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 70352) = 59049 * k + 35176 := by
    unfold C
    simp [show (118098 * k + 70352) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 39039) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 39039)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_39135 : ∀ k : Nat,
    iterate (65536 * k + 39135) 26 = 59049 * k + 35263 ∧
      59049 * k + 35263 < 65536 * k + 39135 := by
  intro k
  have h1 : C (65536 * k + 39135) = 196608 * k + 117406 := by
    unfold C
    simp [show (65536 * k + 39135) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 117406) = 98304 * k + 58703 := by
    unfold C
    simp [show (196608 * k + 117406) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 58703) = 294912 * k + 176110 := by
    unfold C
    simp [show (98304 * k + 58703) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 176110) = 147456 * k + 88055 := by
    unfold C
    simp [show (294912 * k + 176110) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 88055) = 442368 * k + 264166 := by
    unfold C
    simp [show (147456 * k + 88055) % 2 ≠ 0 by omega]
    omega
  have h6 : C (442368 * k + 264166) = 221184 * k + 132083 := by
    unfold C
    simp [show (442368 * k + 264166) % 2 = 0 by omega]
    omega
  have h7 : C (221184 * k + 132083) = 663552 * k + 396250 := by
    unfold C
    simp [show (221184 * k + 132083) % 2 ≠ 0 by omega]
    omega
  have h8 : C (663552 * k + 396250) = 331776 * k + 198125 := by
    unfold C
    simp [show (663552 * k + 396250) % 2 = 0 by omega]
    omega
  have h9 : C (331776 * k + 198125) = 995328 * k + 594376 := by
    unfold C
    simp [show (331776 * k + 198125) % 2 ≠ 0 by omega]
    omega
  have h10 : C (995328 * k + 594376) = 497664 * k + 297188 := by
    unfold C
    simp [show (995328 * k + 594376) % 2 = 0 by omega]
    omega
  have h11 : C (497664 * k + 297188) = 248832 * k + 148594 := by
    unfold C
    simp [show (497664 * k + 297188) % 2 = 0 by omega]
    omega
  have h12 : C (248832 * k + 148594) = 124416 * k + 74297 := by
    unfold C
    simp [show (248832 * k + 148594) % 2 = 0 by omega]
    omega
  have h13 : C (124416 * k + 74297) = 373248 * k + 222892 := by
    unfold C
    simp [show (124416 * k + 74297) % 2 ≠ 0 by omega]
    omega
  have h14 : C (373248 * k + 222892) = 186624 * k + 111446 := by
    unfold C
    simp [show (373248 * k + 222892) % 2 = 0 by omega]
    omega
  have h15 : C (186624 * k + 111446) = 93312 * k + 55723 := by
    unfold C
    simp [show (186624 * k + 111446) % 2 = 0 by omega]
    omega
  have h16 : C (93312 * k + 55723) = 279936 * k + 167170 := by
    unfold C
    simp [show (93312 * k + 55723) % 2 ≠ 0 by omega]
    omega
  have h17 : C (279936 * k + 167170) = 139968 * k + 83585 := by
    unfold C
    simp [show (279936 * k + 167170) % 2 = 0 by omega]
    omega
  have h18 : C (139968 * k + 83585) = 419904 * k + 250756 := by
    unfold C
    simp [show (139968 * k + 83585) % 2 ≠ 0 by omega]
    omega
  have h19 : C (419904 * k + 250756) = 209952 * k + 125378 := by
    unfold C
    simp [show (419904 * k + 250756) % 2 = 0 by omega]
    omega
  have h20 : C (209952 * k + 125378) = 104976 * k + 62689 := by
    unfold C
    simp [show (209952 * k + 125378) % 2 = 0 by omega]
    omega
  have h21 : C (104976 * k + 62689) = 314928 * k + 188068 := by
    unfold C
    simp [show (104976 * k + 62689) % 2 ≠ 0 by omega]
    omega
  have h22 : C (314928 * k + 188068) = 157464 * k + 94034 := by
    unfold C
    simp [show (314928 * k + 188068) % 2 = 0 by omega]
    omega
  have h23 : C (157464 * k + 94034) = 78732 * k + 47017 := by
    unfold C
    simp [show (157464 * k + 94034) % 2 = 0 by omega]
    omega
  have h24 : C (78732 * k + 47017) = 236196 * k + 141052 := by
    unfold C
    simp [show (78732 * k + 47017) % 2 ≠ 0 by omega]
    omega
  have h25 : C (236196 * k + 141052) = 118098 * k + 70526 := by
    unfold C
    simp [show (236196 * k + 141052) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 70526) = 59049 * k + 35263 := by
    unfold C
    simp [show (118098 * k + 70526) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 39135) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 39135)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_39195 : ∀ k : Nat,
    iterate (65536 * k + 39195) 26 = 59049 * k + 35317 ∧
      59049 * k + 35317 < 65536 * k + 39195 := by
  intro k
  have h1 : C (65536 * k + 39195) = 196608 * k + 117586 := by
    unfold C
    simp [show (65536 * k + 39195) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 117586) = 98304 * k + 58793 := by
    unfold C
    simp [show (196608 * k + 117586) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 58793) = 294912 * k + 176380 := by
    unfold C
    simp [show (98304 * k + 58793) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 176380) = 147456 * k + 88190 := by
    unfold C
    simp [show (294912 * k + 176380) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 88190) = 73728 * k + 44095 := by
    unfold C
    simp [show (147456 * k + 88190) % 2 = 0 by omega]
    omega
  have h6 : C (73728 * k + 44095) = 221184 * k + 132286 := by
    unfold C
    simp [show (73728 * k + 44095) % 2 ≠ 0 by omega]
    omega
  have h7 : C (221184 * k + 132286) = 110592 * k + 66143 := by
    unfold C
    simp [show (221184 * k + 132286) % 2 = 0 by omega]
    omega
  have h8 : C (110592 * k + 66143) = 331776 * k + 198430 := by
    unfold C
    simp [show (110592 * k + 66143) % 2 ≠ 0 by omega]
    omega
  have h9 : C (331776 * k + 198430) = 165888 * k + 99215 := by
    unfold C
    simp [show (331776 * k + 198430) % 2 = 0 by omega]
    omega
  have h10 : C (165888 * k + 99215) = 497664 * k + 297646 := by
    unfold C
    simp [show (165888 * k + 99215) % 2 ≠ 0 by omega]
    omega
  have h11 : C (497664 * k + 297646) = 248832 * k + 148823 := by
    unfold C
    simp [show (497664 * k + 297646) % 2 = 0 by omega]
    omega
  have h12 : C (248832 * k + 148823) = 746496 * k + 446470 := by
    unfold C
    simp [show (248832 * k + 148823) % 2 ≠ 0 by omega]
    omega
  have h13 : C (746496 * k + 446470) = 373248 * k + 223235 := by
    unfold C
    simp [show (746496 * k + 446470) % 2 = 0 by omega]
    omega
  have h14 : C (373248 * k + 223235) = 1119744 * k + 669706 := by
    unfold C
    simp [show (373248 * k + 223235) % 2 ≠ 0 by omega]
    omega
  have h15 : C (1119744 * k + 669706) = 559872 * k + 334853 := by
    unfold C
    simp [show (1119744 * k + 669706) % 2 = 0 by omega]
    omega
  have h16 : C (559872 * k + 334853) = 1679616 * k + 1004560 := by
    unfold C
    simp [show (559872 * k + 334853) % 2 ≠ 0 by omega]
    omega
  have h17 : C (1679616 * k + 1004560) = 839808 * k + 502280 := by
    unfold C
    simp [show (1679616 * k + 1004560) % 2 = 0 by omega]
    omega
  have h18 : C (839808 * k + 502280) = 419904 * k + 251140 := by
    unfold C
    simp [show (839808 * k + 502280) % 2 = 0 by omega]
    omega
  have h19 : C (419904 * k + 251140) = 209952 * k + 125570 := by
    unfold C
    simp [show (419904 * k + 251140) % 2 = 0 by omega]
    omega
  have h20 : C (209952 * k + 125570) = 104976 * k + 62785 := by
    unfold C
    simp [show (209952 * k + 125570) % 2 = 0 by omega]
    omega
  have h21 : C (104976 * k + 62785) = 314928 * k + 188356 := by
    unfold C
    simp [show (104976 * k + 62785) % 2 ≠ 0 by omega]
    omega
  have h22 : C (314928 * k + 188356) = 157464 * k + 94178 := by
    unfold C
    simp [show (314928 * k + 188356) % 2 = 0 by omega]
    omega
  have h23 : C (157464 * k + 94178) = 78732 * k + 47089 := by
    unfold C
    simp [show (157464 * k + 94178) % 2 = 0 by omega]
    omega
  have h24 : C (78732 * k + 47089) = 236196 * k + 141268 := by
    unfold C
    simp [show (78732 * k + 47089) % 2 ≠ 0 by omega]
    omega
  have h25 : C (236196 * k + 141268) = 118098 * k + 70634 := by
    unfold C
    simp [show (236196 * k + 141268) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 70634) = 59049 * k + 35317 := by
    unfold C
    simp [show (118098 * k + 70634) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 39195) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 39195)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_39295 : ∀ k : Nat,
    iterate (65536 * k + 39295) 26 = 59049 * k + 35407 ∧
      59049 * k + 35407 < 65536 * k + 39295 := by
  intro k
  have h1 : C (65536 * k + 39295) = 196608 * k + 117886 := by
    unfold C
    simp [show (65536 * k + 39295) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 117886) = 98304 * k + 58943 := by
    unfold C
    simp [show (196608 * k + 117886) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 58943) = 294912 * k + 176830 := by
    unfold C
    simp [show (98304 * k + 58943) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 176830) = 147456 * k + 88415 := by
    unfold C
    simp [show (294912 * k + 176830) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 88415) = 442368 * k + 265246 := by
    unfold C
    simp [show (147456 * k + 88415) % 2 ≠ 0 by omega]
    omega
  have h6 : C (442368 * k + 265246) = 221184 * k + 132623 := by
    unfold C
    simp [show (442368 * k + 265246) % 2 = 0 by omega]
    omega
  have h7 : C (221184 * k + 132623) = 663552 * k + 397870 := by
    unfold C
    simp [show (221184 * k + 132623) % 2 ≠ 0 by omega]
    omega
  have h8 : C (663552 * k + 397870) = 331776 * k + 198935 := by
    unfold C
    simp [show (663552 * k + 397870) % 2 = 0 by omega]
    omega
  have h9 : C (331776 * k + 198935) = 995328 * k + 596806 := by
    unfold C
    simp [show (331776 * k + 198935) % 2 ≠ 0 by omega]
    omega
  have h10 : C (995328 * k + 596806) = 497664 * k + 298403 := by
    unfold C
    simp [show (995328 * k + 596806) % 2 = 0 by omega]
    omega
  have h11 : C (497664 * k + 298403) = 1492992 * k + 895210 := by
    unfold C
    simp [show (497664 * k + 298403) % 2 ≠ 0 by omega]
    omega
  have h12 : C (1492992 * k + 895210) = 746496 * k + 447605 := by
    unfold C
    simp [show (1492992 * k + 895210) % 2 = 0 by omega]
    omega
  have h13 : C (746496 * k + 447605) = 2239488 * k + 1342816 := by
    unfold C
    simp [show (746496 * k + 447605) % 2 ≠ 0 by omega]
    omega
  have h14 : C (2239488 * k + 1342816) = 1119744 * k + 671408 := by
    unfold C
    simp [show (2239488 * k + 1342816) % 2 = 0 by omega]
    omega
  have h15 : C (1119744 * k + 671408) = 559872 * k + 335704 := by
    unfold C
    simp [show (1119744 * k + 671408) % 2 = 0 by omega]
    omega
  have h16 : C (559872 * k + 335704) = 279936 * k + 167852 := by
    unfold C
    simp [show (559872 * k + 335704) % 2 = 0 by omega]
    omega
  have h17 : C (279936 * k + 167852) = 139968 * k + 83926 := by
    unfold C
    simp [show (279936 * k + 167852) % 2 = 0 by omega]
    omega
  have h18 : C (139968 * k + 83926) = 69984 * k + 41963 := by
    unfold C
    simp [show (139968 * k + 83926) % 2 = 0 by omega]
    omega
  have h19 : C (69984 * k + 41963) = 209952 * k + 125890 := by
    unfold C
    simp [show (69984 * k + 41963) % 2 ≠ 0 by omega]
    omega
  have h20 : C (209952 * k + 125890) = 104976 * k + 62945 := by
    unfold C
    simp [show (209952 * k + 125890) % 2 = 0 by omega]
    omega
  have h21 : C (104976 * k + 62945) = 314928 * k + 188836 := by
    unfold C
    simp [show (104976 * k + 62945) % 2 ≠ 0 by omega]
    omega
  have h22 : C (314928 * k + 188836) = 157464 * k + 94418 := by
    unfold C
    simp [show (314928 * k + 188836) % 2 = 0 by omega]
    omega
  have h23 : C (157464 * k + 94418) = 78732 * k + 47209 := by
    unfold C
    simp [show (157464 * k + 94418) % 2 = 0 by omega]
    omega
  have h24 : C (78732 * k + 47209) = 236196 * k + 141628 := by
    unfold C
    simp [show (78732 * k + 47209) % 2 ≠ 0 by omega]
    omega
  have h25 : C (236196 * k + 141628) = 118098 * k + 70814 := by
    unfold C
    simp [show (236196 * k + 141628) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 70814) = 59049 * k + 35407 := by
    unfold C
    simp [show (118098 * k + 70814) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 39295) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 39295)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_39535 : ∀ k : Nat,
    iterate (65536 * k + 39535) 26 = 59049 * k + 35623 ∧
      59049 * k + 35623 < 65536 * k + 39535 := by
  intro k
  have h1 : C (65536 * k + 39535) = 196608 * k + 118606 := by
    unfold C
    simp [show (65536 * k + 39535) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 118606) = 98304 * k + 59303 := by
    unfold C
    simp [show (196608 * k + 118606) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 59303) = 294912 * k + 177910 := by
    unfold C
    simp [show (98304 * k + 59303) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 177910) = 147456 * k + 88955 := by
    unfold C
    simp [show (294912 * k + 177910) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 88955) = 442368 * k + 266866 := by
    unfold C
    simp [show (147456 * k + 88955) % 2 ≠ 0 by omega]
    omega
  have h6 : C (442368 * k + 266866) = 221184 * k + 133433 := by
    unfold C
    simp [show (442368 * k + 266866) % 2 = 0 by omega]
    omega
  have h7 : C (221184 * k + 133433) = 663552 * k + 400300 := by
    unfold C
    simp [show (221184 * k + 133433) % 2 ≠ 0 by omega]
    omega
  have h8 : C (663552 * k + 400300) = 331776 * k + 200150 := by
    unfold C
    simp [show (663552 * k + 400300) % 2 = 0 by omega]
    omega
  have h9 : C (331776 * k + 200150) = 165888 * k + 100075 := by
    unfold C
    simp [show (331776 * k + 200150) % 2 = 0 by omega]
    omega
  have h10 : C (165888 * k + 100075) = 497664 * k + 300226 := by
    unfold C
    simp [show (165888 * k + 100075) % 2 ≠ 0 by omega]
    omega
  have h11 : C (497664 * k + 300226) = 248832 * k + 150113 := by
    unfold C
    simp [show (497664 * k + 300226) % 2 = 0 by omega]
    omega
  have h12 : C (248832 * k + 150113) = 746496 * k + 450340 := by
    unfold C
    simp [show (248832 * k + 150113) % 2 ≠ 0 by omega]
    omega
  have h13 : C (746496 * k + 450340) = 373248 * k + 225170 := by
    unfold C
    simp [show (746496 * k + 450340) % 2 = 0 by omega]
    omega
  have h14 : C (373248 * k + 225170) = 186624 * k + 112585 := by
    unfold C
    simp [show (373248 * k + 225170) % 2 = 0 by omega]
    omega
  have h15 : C (186624 * k + 112585) = 559872 * k + 337756 := by
    unfold C
    simp [show (186624 * k + 112585) % 2 ≠ 0 by omega]
    omega
  have h16 : C (559872 * k + 337756) = 279936 * k + 168878 := by
    unfold C
    simp [show (559872 * k + 337756) % 2 = 0 by omega]
    omega
  have h17 : C (279936 * k + 168878) = 139968 * k + 84439 := by
    unfold C
    simp [show (279936 * k + 168878) % 2 = 0 by omega]
    omega
  have h18 : C (139968 * k + 84439) = 419904 * k + 253318 := by
    unfold C
    simp [show (139968 * k + 84439) % 2 ≠ 0 by omega]
    omega
  have h19 : C (419904 * k + 253318) = 209952 * k + 126659 := by
    unfold C
    simp [show (419904 * k + 253318) % 2 = 0 by omega]
    omega
  have h20 : C (209952 * k + 126659) = 629856 * k + 379978 := by
    unfold C
    simp [show (209952 * k + 126659) % 2 ≠ 0 by omega]
    omega
  have h21 : C (629856 * k + 379978) = 314928 * k + 189989 := by
    unfold C
    simp [show (629856 * k + 379978) % 2 = 0 by omega]
    omega
  have h22 : C (314928 * k + 189989) = 944784 * k + 569968 := by
    unfold C
    simp [show (314928 * k + 189989) % 2 ≠ 0 by omega]
    omega
  have h23 : C (944784 * k + 569968) = 472392 * k + 284984 := by
    unfold C
    simp [show (944784 * k + 569968) % 2 = 0 by omega]
    omega
  have h24 : C (472392 * k + 284984) = 236196 * k + 142492 := by
    unfold C
    simp [show (472392 * k + 284984) % 2 = 0 by omega]
    omega
  have h25 : C (236196 * k + 142492) = 118098 * k + 71246 := by
    unfold C
    simp [show (236196 * k + 142492) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 71246) = 59049 * k + 35623 := by
    unfold C
    simp [show (118098 * k + 71246) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 39535) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 39535)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_39615 : ∀ k : Nat,
    iterate (65536 * k + 39615) 26 = 59049 * k + 35695 ∧
      59049 * k + 35695 < 65536 * k + 39615 := by
  intro k
  have h1 : C (65536 * k + 39615) = 196608 * k + 118846 := by
    unfold C
    simp [show (65536 * k + 39615) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 118846) = 98304 * k + 59423 := by
    unfold C
    simp [show (196608 * k + 118846) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 59423) = 294912 * k + 178270 := by
    unfold C
    simp [show (98304 * k + 59423) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 178270) = 147456 * k + 89135 := by
    unfold C
    simp [show (294912 * k + 178270) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 89135) = 442368 * k + 267406 := by
    unfold C
    simp [show (147456 * k + 89135) % 2 ≠ 0 by omega]
    omega
  have h6 : C (442368 * k + 267406) = 221184 * k + 133703 := by
    unfold C
    simp [show (442368 * k + 267406) % 2 = 0 by omega]
    omega
  have h7 : C (221184 * k + 133703) = 663552 * k + 401110 := by
    unfold C
    simp [show (221184 * k + 133703) % 2 ≠ 0 by omega]
    omega
  have h8 : C (663552 * k + 401110) = 331776 * k + 200555 := by
    unfold C
    simp [show (663552 * k + 401110) % 2 = 0 by omega]
    omega
  have h9 : C (331776 * k + 200555) = 995328 * k + 601666 := by
    unfold C
    simp [show (331776 * k + 200555) % 2 ≠ 0 by omega]
    omega
  have h10 : C (995328 * k + 601666) = 497664 * k + 300833 := by
    unfold C
    simp [show (995328 * k + 601666) % 2 = 0 by omega]
    omega
  have h11 : C (497664 * k + 300833) = 1492992 * k + 902500 := by
    unfold C
    simp [show (497664 * k + 300833) % 2 ≠ 0 by omega]
    omega
  have h12 : C (1492992 * k + 902500) = 746496 * k + 451250 := by
    unfold C
    simp [show (1492992 * k + 902500) % 2 = 0 by omega]
    omega
  have h13 : C (746496 * k + 451250) = 373248 * k + 225625 := by
    unfold C
    simp [show (746496 * k + 451250) % 2 = 0 by omega]
    omega
  have h14 : C (373248 * k + 225625) = 1119744 * k + 676876 := by
    unfold C
    simp [show (373248 * k + 225625) % 2 ≠ 0 by omega]
    omega
  have h15 : C (1119744 * k + 676876) = 559872 * k + 338438 := by
    unfold C
    simp [show (1119744 * k + 676876) % 2 = 0 by omega]
    omega
  have h16 : C (559872 * k + 338438) = 279936 * k + 169219 := by
    unfold C
    simp [show (559872 * k + 338438) % 2 = 0 by omega]
    omega
  have h17 : C (279936 * k + 169219) = 839808 * k + 507658 := by
    unfold C
    simp [show (279936 * k + 169219) % 2 ≠ 0 by omega]
    omega
  have h18 : C (839808 * k + 507658) = 419904 * k + 253829 := by
    unfold C
    simp [show (839808 * k + 507658) % 2 = 0 by omega]
    omega
  have h19 : C (419904 * k + 253829) = 1259712 * k + 761488 := by
    unfold C
    simp [show (419904 * k + 253829) % 2 ≠ 0 by omega]
    omega
  have h20 : C (1259712 * k + 761488) = 629856 * k + 380744 := by
    unfold C
    simp [show (1259712 * k + 761488) % 2 = 0 by omega]
    omega
  have h21 : C (629856 * k + 380744) = 314928 * k + 190372 := by
    unfold C
    simp [show (629856 * k + 380744) % 2 = 0 by omega]
    omega
  have h22 : C (314928 * k + 190372) = 157464 * k + 95186 := by
    unfold C
    simp [show (314928 * k + 190372) % 2 = 0 by omega]
    omega
  have h23 : C (157464 * k + 95186) = 78732 * k + 47593 := by
    unfold C
    simp [show (157464 * k + 95186) % 2 = 0 by omega]
    omega
  have h24 : C (78732 * k + 47593) = 236196 * k + 142780 := by
    unfold C
    simp [show (78732 * k + 47593) % 2 ≠ 0 by omega]
    omega
  have h25 : C (236196 * k + 142780) = 118098 * k + 71390 := by
    unfold C
    simp [show (236196 * k + 142780) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 71390) = 59049 * k + 35695 := by
    unfold C
    simp [show (118098 * k + 71390) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 39615) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 39615)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_39919 : ∀ k : Nat,
    iterate (65536 * k + 39919) 26 = 59049 * k + 35969 ∧
      59049 * k + 35969 < 65536 * k + 39919 := by
  intro k
  have h1 : C (65536 * k + 39919) = 196608 * k + 119758 := by
    unfold C
    simp [show (65536 * k + 39919) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 119758) = 98304 * k + 59879 := by
    unfold C
    simp [show (196608 * k + 119758) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 59879) = 294912 * k + 179638 := by
    unfold C
    simp [show (98304 * k + 59879) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 179638) = 147456 * k + 89819 := by
    unfold C
    simp [show (294912 * k + 179638) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 89819) = 442368 * k + 269458 := by
    unfold C
    simp [show (147456 * k + 89819) % 2 ≠ 0 by omega]
    omega
  have h6 : C (442368 * k + 269458) = 221184 * k + 134729 := by
    unfold C
    simp [show (442368 * k + 269458) % 2 = 0 by omega]
    omega
  have h7 : C (221184 * k + 134729) = 663552 * k + 404188 := by
    unfold C
    simp [show (221184 * k + 134729) % 2 ≠ 0 by omega]
    omega
  have h8 : C (663552 * k + 404188) = 331776 * k + 202094 := by
    unfold C
    simp [show (663552 * k + 404188) % 2 = 0 by omega]
    omega
  have h9 : C (331776 * k + 202094) = 165888 * k + 101047 := by
    unfold C
    simp [show (331776 * k + 202094) % 2 = 0 by omega]
    omega
  have h10 : C (165888 * k + 101047) = 497664 * k + 303142 := by
    unfold C
    simp [show (165888 * k + 101047) % 2 ≠ 0 by omega]
    omega
  have h11 : C (497664 * k + 303142) = 248832 * k + 151571 := by
    unfold C
    simp [show (497664 * k + 303142) % 2 = 0 by omega]
    omega
  have h12 : C (248832 * k + 151571) = 746496 * k + 454714 := by
    unfold C
    simp [show (248832 * k + 151571) % 2 ≠ 0 by omega]
    omega
  have h13 : C (746496 * k + 454714) = 373248 * k + 227357 := by
    unfold C
    simp [show (746496 * k + 454714) % 2 = 0 by omega]
    omega
  have h14 : C (373248 * k + 227357) = 1119744 * k + 682072 := by
    unfold C
    simp [show (373248 * k + 227357) % 2 ≠ 0 by omega]
    omega
  have h15 : C (1119744 * k + 682072) = 559872 * k + 341036 := by
    unfold C
    simp [show (1119744 * k + 682072) % 2 = 0 by omega]
    omega
  have h16 : C (559872 * k + 341036) = 279936 * k + 170518 := by
    unfold C
    simp [show (559872 * k + 341036) % 2 = 0 by omega]
    omega
  have h17 : C (279936 * k + 170518) = 139968 * k + 85259 := by
    unfold C
    simp [show (279936 * k + 170518) % 2 = 0 by omega]
    omega
  have h18 : C (139968 * k + 85259) = 419904 * k + 255778 := by
    unfold C
    simp [show (139968 * k + 85259) % 2 ≠ 0 by omega]
    omega
  have h19 : C (419904 * k + 255778) = 209952 * k + 127889 := by
    unfold C
    simp [show (419904 * k + 255778) % 2 = 0 by omega]
    omega
  have h20 : C (209952 * k + 127889) = 629856 * k + 383668 := by
    unfold C
    simp [show (209952 * k + 127889) % 2 ≠ 0 by omega]
    omega
  have h21 : C (629856 * k + 383668) = 314928 * k + 191834 := by
    unfold C
    simp [show (629856 * k + 383668) % 2 = 0 by omega]
    omega
  have h22 : C (314928 * k + 191834) = 157464 * k + 95917 := by
    unfold C
    simp [show (314928 * k + 191834) % 2 = 0 by omega]
    omega
  have h23 : C (157464 * k + 95917) = 472392 * k + 287752 := by
    unfold C
    simp [show (157464 * k + 95917) % 2 ≠ 0 by omega]
    omega
  have h24 : C (472392 * k + 287752) = 236196 * k + 143876 := by
    unfold C
    simp [show (472392 * k + 287752) % 2 = 0 by omega]
    omega
  have h25 : C (236196 * k + 143876) = 118098 * k + 71938 := by
    unfold C
    simp [show (236196 * k + 143876) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 71938) = 59049 * k + 35969 := by
    unfold C
    simp [show (118098 * k + 71938) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 39919) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 39919)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_40039 : ∀ k : Nat,
    iterate (65536 * k + 40039) 26 = 59049 * k + 36077 ∧
      59049 * k + 36077 < 65536 * k + 40039 := by
  intro k
  have h1 : C (65536 * k + 40039) = 196608 * k + 120118 := by
    unfold C
    simp [show (65536 * k + 40039) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 120118) = 98304 * k + 60059 := by
    unfold C
    simp [show (196608 * k + 120118) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 60059) = 294912 * k + 180178 := by
    unfold C
    simp [show (98304 * k + 60059) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 180178) = 147456 * k + 90089 := by
    unfold C
    simp [show (294912 * k + 180178) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 90089) = 442368 * k + 270268 := by
    unfold C
    simp [show (147456 * k + 90089) % 2 ≠ 0 by omega]
    omega
  have h6 : C (442368 * k + 270268) = 221184 * k + 135134 := by
    unfold C
    simp [show (442368 * k + 270268) % 2 = 0 by omega]
    omega
  have h7 : C (221184 * k + 135134) = 110592 * k + 67567 := by
    unfold C
    simp [show (221184 * k + 135134) % 2 = 0 by omega]
    omega
  have h8 : C (110592 * k + 67567) = 331776 * k + 202702 := by
    unfold C
    simp [show (110592 * k + 67567) % 2 ≠ 0 by omega]
    omega
  have h9 : C (331776 * k + 202702) = 165888 * k + 101351 := by
    unfold C
    simp [show (331776 * k + 202702) % 2 = 0 by omega]
    omega
  have h10 : C (165888 * k + 101351) = 497664 * k + 304054 := by
    unfold C
    simp [show (165888 * k + 101351) % 2 ≠ 0 by omega]
    omega
  have h11 : C (497664 * k + 304054) = 248832 * k + 152027 := by
    unfold C
    simp [show (497664 * k + 304054) % 2 = 0 by omega]
    omega
  have h12 : C (248832 * k + 152027) = 746496 * k + 456082 := by
    unfold C
    simp [show (248832 * k + 152027) % 2 ≠ 0 by omega]
    omega
  have h13 : C (746496 * k + 456082) = 373248 * k + 228041 := by
    unfold C
    simp [show (746496 * k + 456082) % 2 = 0 by omega]
    omega
  have h14 : C (373248 * k + 228041) = 1119744 * k + 684124 := by
    unfold C
    simp [show (373248 * k + 228041) % 2 ≠ 0 by omega]
    omega
  have h15 : C (1119744 * k + 684124) = 559872 * k + 342062 := by
    unfold C
    simp [show (1119744 * k + 684124) % 2 = 0 by omega]
    omega
  have h16 : C (559872 * k + 342062) = 279936 * k + 171031 := by
    unfold C
    simp [show (559872 * k + 342062) % 2 = 0 by omega]
    omega
  have h17 : C (279936 * k + 171031) = 839808 * k + 513094 := by
    unfold C
    simp [show (279936 * k + 171031) % 2 ≠ 0 by omega]
    omega
  have h18 : C (839808 * k + 513094) = 419904 * k + 256547 := by
    unfold C
    simp [show (839808 * k + 513094) % 2 = 0 by omega]
    omega
  have h19 : C (419904 * k + 256547) = 1259712 * k + 769642 := by
    unfold C
    simp [show (419904 * k + 256547) % 2 ≠ 0 by omega]
    omega
  have h20 : C (1259712 * k + 769642) = 629856 * k + 384821 := by
    unfold C
    simp [show (1259712 * k + 769642) % 2 = 0 by omega]
    omega
  have h21 : C (629856 * k + 384821) = 1889568 * k + 1154464 := by
    unfold C
    simp [show (629856 * k + 384821) % 2 ≠ 0 by omega]
    omega
  have h22 : C (1889568 * k + 1154464) = 944784 * k + 577232 := by
    unfold C
    simp [show (1889568 * k + 1154464) % 2 = 0 by omega]
    omega
  have h23 : C (944784 * k + 577232) = 472392 * k + 288616 := by
    unfold C
    simp [show (944784 * k + 577232) % 2 = 0 by omega]
    omega
  have h24 : C (472392 * k + 288616) = 236196 * k + 144308 := by
    unfold C
    simp [show (472392 * k + 288616) % 2 = 0 by omega]
    omega
  have h25 : C (236196 * k + 144308) = 118098 * k + 72154 := by
    unfold C
    simp [show (236196 * k + 144308) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 72154) = 59049 * k + 36077 := by
    unfold C
    simp [show (118098 * k + 72154) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 40039) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 40039)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_40187 : ∀ k : Nat,
    iterate (65536 * k + 40187) 26 = 59049 * k + 36211 ∧
      59049 * k + 36211 < 65536 * k + 40187 := by
  intro k
  have h1 : C (65536 * k + 40187) = 196608 * k + 120562 := by
    unfold C
    simp [show (65536 * k + 40187) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 120562) = 98304 * k + 60281 := by
    unfold C
    simp [show (196608 * k + 120562) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 60281) = 294912 * k + 180844 := by
    unfold C
    simp [show (98304 * k + 60281) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 180844) = 147456 * k + 90422 := by
    unfold C
    simp [show (294912 * k + 180844) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 90422) = 73728 * k + 45211 := by
    unfold C
    simp [show (147456 * k + 90422) % 2 = 0 by omega]
    omega
  have h6 : C (73728 * k + 45211) = 221184 * k + 135634 := by
    unfold C
    simp [show (73728 * k + 45211) % 2 ≠ 0 by omega]
    omega
  have h7 : C (221184 * k + 135634) = 110592 * k + 67817 := by
    unfold C
    simp [show (221184 * k + 135634) % 2 = 0 by omega]
    omega
  have h8 : C (110592 * k + 67817) = 331776 * k + 203452 := by
    unfold C
    simp [show (110592 * k + 67817) % 2 ≠ 0 by omega]
    omega
  have h9 : C (331776 * k + 203452) = 165888 * k + 101726 := by
    unfold C
    simp [show (331776 * k + 203452) % 2 = 0 by omega]
    omega
  have h10 : C (165888 * k + 101726) = 82944 * k + 50863 := by
    unfold C
    simp [show (165888 * k + 101726) % 2 = 0 by omega]
    omega
  have h11 : C (82944 * k + 50863) = 248832 * k + 152590 := by
    unfold C
    simp [show (82944 * k + 50863) % 2 ≠ 0 by omega]
    omega
  have h12 : C (248832 * k + 152590) = 124416 * k + 76295 := by
    unfold C
    simp [show (248832 * k + 152590) % 2 = 0 by omega]
    omega
  have h13 : C (124416 * k + 76295) = 373248 * k + 228886 := by
    unfold C
    simp [show (124416 * k + 76295) % 2 ≠ 0 by omega]
    omega
  have h14 : C (373248 * k + 228886) = 186624 * k + 114443 := by
    unfold C
    simp [show (373248 * k + 228886) % 2 = 0 by omega]
    omega
  have h15 : C (186624 * k + 114443) = 559872 * k + 343330 := by
    unfold C
    simp [show (186624 * k + 114443) % 2 ≠ 0 by omega]
    omega
  have h16 : C (559872 * k + 343330) = 279936 * k + 171665 := by
    unfold C
    simp [show (559872 * k + 343330) % 2 = 0 by omega]
    omega
  have h17 : C (279936 * k + 171665) = 839808 * k + 514996 := by
    unfold C
    simp [show (279936 * k + 171665) % 2 ≠ 0 by omega]
    omega
  have h18 : C (839808 * k + 514996) = 419904 * k + 257498 := by
    unfold C
    simp [show (839808 * k + 514996) % 2 = 0 by omega]
    omega
  have h19 : C (419904 * k + 257498) = 209952 * k + 128749 := by
    unfold C
    simp [show (419904 * k + 257498) % 2 = 0 by omega]
    omega
  have h20 : C (209952 * k + 128749) = 629856 * k + 386248 := by
    unfold C
    simp [show (209952 * k + 128749) % 2 ≠ 0 by omega]
    omega
  have h21 : C (629856 * k + 386248) = 314928 * k + 193124 := by
    unfold C
    simp [show (629856 * k + 386248) % 2 = 0 by omega]
    omega
  have h22 : C (314928 * k + 193124) = 157464 * k + 96562 := by
    unfold C
    simp [show (314928 * k + 193124) % 2 = 0 by omega]
    omega
  have h23 : C (157464 * k + 96562) = 78732 * k + 48281 := by
    unfold C
    simp [show (157464 * k + 96562) % 2 = 0 by omega]
    omega
  have h24 : C (78732 * k + 48281) = 236196 * k + 144844 := by
    unfold C
    simp [show (78732 * k + 48281) % 2 ≠ 0 by omega]
    omega
  have h25 : C (236196 * k + 144844) = 118098 * k + 72422 := by
    unfold C
    simp [show (236196 * k + 144844) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 72422) = 59049 * k + 36211 := by
    unfold C
    simp [show (118098 * k + 72422) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 40187) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 40187)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_40351 : ∀ k : Nat,
    iterate (65536 * k + 40351) 26 = 59049 * k + 36358 ∧
      59049 * k + 36358 < 65536 * k + 40351 := by
  intro k
  have h1 : C (65536 * k + 40351) = 196608 * k + 121054 := by
    unfold C
    simp [show (65536 * k + 40351) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 121054) = 98304 * k + 60527 := by
    unfold C
    simp [show (196608 * k + 121054) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 60527) = 294912 * k + 181582 := by
    unfold C
    simp [show (98304 * k + 60527) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 181582) = 147456 * k + 90791 := by
    unfold C
    simp [show (294912 * k + 181582) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 90791) = 442368 * k + 272374 := by
    unfold C
    simp [show (147456 * k + 90791) % 2 ≠ 0 by omega]
    omega
  have h6 : C (442368 * k + 272374) = 221184 * k + 136187 := by
    unfold C
    simp [show (442368 * k + 272374) % 2 = 0 by omega]
    omega
  have h7 : C (221184 * k + 136187) = 663552 * k + 408562 := by
    unfold C
    simp [show (221184 * k + 136187) % 2 ≠ 0 by omega]
    omega
  have h8 : C (663552 * k + 408562) = 331776 * k + 204281 := by
    unfold C
    simp [show (663552 * k + 408562) % 2 = 0 by omega]
    omega
  have h9 : C (331776 * k + 204281) = 995328 * k + 612844 := by
    unfold C
    simp [show (331776 * k + 204281) % 2 ≠ 0 by omega]
    omega
  have h10 : C (995328 * k + 612844) = 497664 * k + 306422 := by
    unfold C
    simp [show (995328 * k + 612844) % 2 = 0 by omega]
    omega
  have h11 : C (497664 * k + 306422) = 248832 * k + 153211 := by
    unfold C
    simp [show (497664 * k + 306422) % 2 = 0 by omega]
    omega
  have h12 : C (248832 * k + 153211) = 746496 * k + 459634 := by
    unfold C
    simp [show (248832 * k + 153211) % 2 ≠ 0 by omega]
    omega
  have h13 : C (746496 * k + 459634) = 373248 * k + 229817 := by
    unfold C
    simp [show (746496 * k + 459634) % 2 = 0 by omega]
    omega
  have h14 : C (373248 * k + 229817) = 1119744 * k + 689452 := by
    unfold C
    simp [show (373248 * k + 229817) % 2 ≠ 0 by omega]
    omega
  have h15 : C (1119744 * k + 689452) = 559872 * k + 344726 := by
    unfold C
    simp [show (1119744 * k + 689452) % 2 = 0 by omega]
    omega
  have h16 : C (559872 * k + 344726) = 279936 * k + 172363 := by
    unfold C
    simp [show (559872 * k + 344726) % 2 = 0 by omega]
    omega
  have h17 : C (279936 * k + 172363) = 839808 * k + 517090 := by
    unfold C
    simp [show (279936 * k + 172363) % 2 ≠ 0 by omega]
    omega
  have h18 : C (839808 * k + 517090) = 419904 * k + 258545 := by
    unfold C
    simp [show (839808 * k + 517090) % 2 = 0 by omega]
    omega
  have h19 : C (419904 * k + 258545) = 1259712 * k + 775636 := by
    unfold C
    simp [show (419904 * k + 258545) % 2 ≠ 0 by omega]
    omega
  have h20 : C (1259712 * k + 775636) = 629856 * k + 387818 := by
    unfold C
    simp [show (1259712 * k + 775636) % 2 = 0 by omega]
    omega
  have h21 : C (629856 * k + 387818) = 314928 * k + 193909 := by
    unfold C
    simp [show (629856 * k + 387818) % 2 = 0 by omega]
    omega
  have h22 : C (314928 * k + 193909) = 944784 * k + 581728 := by
    unfold C
    simp [show (314928 * k + 193909) % 2 ≠ 0 by omega]
    omega
  have h23 : C (944784 * k + 581728) = 472392 * k + 290864 := by
    unfold C
    simp [show (944784 * k + 581728) % 2 = 0 by omega]
    omega
  have h24 : C (472392 * k + 290864) = 236196 * k + 145432 := by
    unfold C
    simp [show (472392 * k + 290864) % 2 = 0 by omega]
    omega
  have h25 : C (236196 * k + 145432) = 118098 * k + 72716 := by
    unfold C
    simp [show (236196 * k + 145432) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 72716) = 59049 * k + 36358 := by
    unfold C
    simp [show (118098 * k + 72716) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 40351) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 40351)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_40415 : ∀ k : Nat,
    iterate (65536 * k + 40415) 26 = 59049 * k + 36416 ∧
      59049 * k + 36416 < 65536 * k + 40415 := by
  intro k
  have h1 : C (65536 * k + 40415) = 196608 * k + 121246 := by
    unfold C
    simp [show (65536 * k + 40415) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 121246) = 98304 * k + 60623 := by
    unfold C
    simp [show (196608 * k + 121246) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 60623) = 294912 * k + 181870 := by
    unfold C
    simp [show (98304 * k + 60623) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 181870) = 147456 * k + 90935 := by
    unfold C
    simp [show (294912 * k + 181870) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 90935) = 442368 * k + 272806 := by
    unfold C
    simp [show (147456 * k + 90935) % 2 ≠ 0 by omega]
    omega
  have h6 : C (442368 * k + 272806) = 221184 * k + 136403 := by
    unfold C
    simp [show (442368 * k + 272806) % 2 = 0 by omega]
    omega
  have h7 : C (221184 * k + 136403) = 663552 * k + 409210 := by
    unfold C
    simp [show (221184 * k + 136403) % 2 ≠ 0 by omega]
    omega
  have h8 : C (663552 * k + 409210) = 331776 * k + 204605 := by
    unfold C
    simp [show (663552 * k + 409210) % 2 = 0 by omega]
    omega
  have h9 : C (331776 * k + 204605) = 995328 * k + 613816 := by
    unfold C
    simp [show (331776 * k + 204605) % 2 ≠ 0 by omega]
    omega
  have h10 : C (995328 * k + 613816) = 497664 * k + 306908 := by
    unfold C
    simp [show (995328 * k + 613816) % 2 = 0 by omega]
    omega
  have h11 : C (497664 * k + 306908) = 248832 * k + 153454 := by
    unfold C
    simp [show (497664 * k + 306908) % 2 = 0 by omega]
    omega
  have h12 : C (248832 * k + 153454) = 124416 * k + 76727 := by
    unfold C
    simp [show (248832 * k + 153454) % 2 = 0 by omega]
    omega
  have h13 : C (124416 * k + 76727) = 373248 * k + 230182 := by
    unfold C
    simp [show (124416 * k + 76727) % 2 ≠ 0 by omega]
    omega
  have h14 : C (373248 * k + 230182) = 186624 * k + 115091 := by
    unfold C
    simp [show (373248 * k + 230182) % 2 = 0 by omega]
    omega
  have h15 : C (186624 * k + 115091) = 559872 * k + 345274 := by
    unfold C
    simp [show (186624 * k + 115091) % 2 ≠ 0 by omega]
    omega
  have h16 : C (559872 * k + 345274) = 279936 * k + 172637 := by
    unfold C
    simp [show (559872 * k + 345274) % 2 = 0 by omega]
    omega
  have h17 : C (279936 * k + 172637) = 839808 * k + 517912 := by
    unfold C
    simp [show (279936 * k + 172637) % 2 ≠ 0 by omega]
    omega
  have h18 : C (839808 * k + 517912) = 419904 * k + 258956 := by
    unfold C
    simp [show (839808 * k + 517912) % 2 = 0 by omega]
    omega
  have h19 : C (419904 * k + 258956) = 209952 * k + 129478 := by
    unfold C
    simp [show (419904 * k + 258956) % 2 = 0 by omega]
    omega
  have h20 : C (209952 * k + 129478) = 104976 * k + 64739 := by
    unfold C
    simp [show (209952 * k + 129478) % 2 = 0 by omega]
    omega
  have h21 : C (104976 * k + 64739) = 314928 * k + 194218 := by
    unfold C
    simp [show (104976 * k + 64739) % 2 ≠ 0 by omega]
    omega
  have h22 : C (314928 * k + 194218) = 157464 * k + 97109 := by
    unfold C
    simp [show (314928 * k + 194218) % 2 = 0 by omega]
    omega
  have h23 : C (157464 * k + 97109) = 472392 * k + 291328 := by
    unfold C
    simp [show (157464 * k + 97109) % 2 ≠ 0 by omega]
    omega
  have h24 : C (472392 * k + 291328) = 236196 * k + 145664 := by
    unfold C
    simp [show (472392 * k + 291328) % 2 = 0 by omega]
    omega
  have h25 : C (236196 * k + 145664) = 118098 * k + 72832 := by
    unfold C
    simp [show (236196 * k + 145664) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 72832) = 59049 * k + 36416 := by
    unfold C
    simp [show (118098 * k + 72832) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 40415) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 40415)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_40495 : ∀ k : Nat,
    iterate (65536 * k + 40495) 26 = 59049 * k + 36488 ∧
      59049 * k + 36488 < 65536 * k + 40495 := by
  intro k
  have h1 : C (65536 * k + 40495) = 196608 * k + 121486 := by
    unfold C
    simp [show (65536 * k + 40495) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 121486) = 98304 * k + 60743 := by
    unfold C
    simp [show (196608 * k + 121486) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 60743) = 294912 * k + 182230 := by
    unfold C
    simp [show (98304 * k + 60743) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 182230) = 147456 * k + 91115 := by
    unfold C
    simp [show (294912 * k + 182230) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 91115) = 442368 * k + 273346 := by
    unfold C
    simp [show (147456 * k + 91115) % 2 ≠ 0 by omega]
    omega
  have h6 : C (442368 * k + 273346) = 221184 * k + 136673 := by
    unfold C
    simp [show (442368 * k + 273346) % 2 = 0 by omega]
    omega
  have h7 : C (221184 * k + 136673) = 663552 * k + 410020 := by
    unfold C
    simp [show (221184 * k + 136673) % 2 ≠ 0 by omega]
    omega
  have h8 : C (663552 * k + 410020) = 331776 * k + 205010 := by
    unfold C
    simp [show (663552 * k + 410020) % 2 = 0 by omega]
    omega
  have h9 : C (331776 * k + 205010) = 165888 * k + 102505 := by
    unfold C
    simp [show (331776 * k + 205010) % 2 = 0 by omega]
    omega
  have h10 : C (165888 * k + 102505) = 497664 * k + 307516 := by
    unfold C
    simp [show (165888 * k + 102505) % 2 ≠ 0 by omega]
    omega
  have h11 : C (497664 * k + 307516) = 248832 * k + 153758 := by
    unfold C
    simp [show (497664 * k + 307516) % 2 = 0 by omega]
    omega
  have h12 : C (248832 * k + 153758) = 124416 * k + 76879 := by
    unfold C
    simp [show (248832 * k + 153758) % 2 = 0 by omega]
    omega
  have h13 : C (124416 * k + 76879) = 373248 * k + 230638 := by
    unfold C
    simp [show (124416 * k + 76879) % 2 ≠ 0 by omega]
    omega
  have h14 : C (373248 * k + 230638) = 186624 * k + 115319 := by
    unfold C
    simp [show (373248 * k + 230638) % 2 = 0 by omega]
    omega
  have h15 : C (186624 * k + 115319) = 559872 * k + 345958 := by
    unfold C
    simp [show (186624 * k + 115319) % 2 ≠ 0 by omega]
    omega
  have h16 : C (559872 * k + 345958) = 279936 * k + 172979 := by
    unfold C
    simp [show (559872 * k + 345958) % 2 = 0 by omega]
    omega
  have h17 : C (279936 * k + 172979) = 839808 * k + 518938 := by
    unfold C
    simp [show (279936 * k + 172979) % 2 ≠ 0 by omega]
    omega
  have h18 : C (839808 * k + 518938) = 419904 * k + 259469 := by
    unfold C
    simp [show (839808 * k + 518938) % 2 = 0 by omega]
    omega
  have h19 : C (419904 * k + 259469) = 1259712 * k + 778408 := by
    unfold C
    simp [show (419904 * k + 259469) % 2 ≠ 0 by omega]
    omega
  have h20 : C (1259712 * k + 778408) = 629856 * k + 389204 := by
    unfold C
    simp [show (1259712 * k + 778408) % 2 = 0 by omega]
    omega
  have h21 : C (629856 * k + 389204) = 314928 * k + 194602 := by
    unfold C
    simp [show (629856 * k + 389204) % 2 = 0 by omega]
    omega
  have h22 : C (314928 * k + 194602) = 157464 * k + 97301 := by
    unfold C
    simp [show (314928 * k + 194602) % 2 = 0 by omega]
    omega
  have h23 : C (157464 * k + 97301) = 472392 * k + 291904 := by
    unfold C
    simp [show (157464 * k + 97301) % 2 ≠ 0 by omega]
    omega
  have h24 : C (472392 * k + 291904) = 236196 * k + 145952 := by
    unfold C
    simp [show (472392 * k + 291904) % 2 = 0 by omega]
    omega
  have h25 : C (236196 * k + 145952) = 118098 * k + 72976 := by
    unfold C
    simp [show (236196 * k + 145952) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 72976) = 59049 * k + 36488 := by
    unfold C
    simp [show (118098 * k + 72976) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 40495) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 40495)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_40687 : ∀ k : Nat,
    iterate (65536 * k + 40687) 26 = 59049 * k + 36661 ∧
      59049 * k + 36661 < 65536 * k + 40687 := by
  intro k
  have h1 : C (65536 * k + 40687) = 196608 * k + 122062 := by
    unfold C
    simp [show (65536 * k + 40687) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 122062) = 98304 * k + 61031 := by
    unfold C
    simp [show (196608 * k + 122062) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 61031) = 294912 * k + 183094 := by
    unfold C
    simp [show (98304 * k + 61031) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 183094) = 147456 * k + 91547 := by
    unfold C
    simp [show (294912 * k + 183094) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 91547) = 442368 * k + 274642 := by
    unfold C
    simp [show (147456 * k + 91547) % 2 ≠ 0 by omega]
    omega
  have h6 : C (442368 * k + 274642) = 221184 * k + 137321 := by
    unfold C
    simp [show (442368 * k + 274642) % 2 = 0 by omega]
    omega
  have h7 : C (221184 * k + 137321) = 663552 * k + 411964 := by
    unfold C
    simp [show (221184 * k + 137321) % 2 ≠ 0 by omega]
    omega
  have h8 : C (663552 * k + 411964) = 331776 * k + 205982 := by
    unfold C
    simp [show (663552 * k + 411964) % 2 = 0 by omega]
    omega
  have h9 : C (331776 * k + 205982) = 165888 * k + 102991 := by
    unfold C
    simp [show (331776 * k + 205982) % 2 = 0 by omega]
    omega
  have h10 : C (165888 * k + 102991) = 497664 * k + 308974 := by
    unfold C
    simp [show (165888 * k + 102991) % 2 ≠ 0 by omega]
    omega
  have h11 : C (497664 * k + 308974) = 248832 * k + 154487 := by
    unfold C
    simp [show (497664 * k + 308974) % 2 = 0 by omega]
    omega
  have h12 : C (248832 * k + 154487) = 746496 * k + 463462 := by
    unfold C
    simp [show (248832 * k + 154487) % 2 ≠ 0 by omega]
    omega
  have h13 : C (746496 * k + 463462) = 373248 * k + 231731 := by
    unfold C
    simp [show (746496 * k + 463462) % 2 = 0 by omega]
    omega
  have h14 : C (373248 * k + 231731) = 1119744 * k + 695194 := by
    unfold C
    simp [show (373248 * k + 231731) % 2 ≠ 0 by omega]
    omega
  have h15 : C (1119744 * k + 695194) = 559872 * k + 347597 := by
    unfold C
    simp [show (1119744 * k + 695194) % 2 = 0 by omega]
    omega
  have h16 : C (559872 * k + 347597) = 1679616 * k + 1042792 := by
    unfold C
    simp [show (559872 * k + 347597) % 2 ≠ 0 by omega]
    omega
  have h17 : C (1679616 * k + 1042792) = 839808 * k + 521396 := by
    unfold C
    simp [show (1679616 * k + 1042792) % 2 = 0 by omega]
    omega
  have h18 : C (839808 * k + 521396) = 419904 * k + 260698 := by
    unfold C
    simp [show (839808 * k + 521396) % 2 = 0 by omega]
    omega
  have h19 : C (419904 * k + 260698) = 209952 * k + 130349 := by
    unfold C
    simp [show (419904 * k + 260698) % 2 = 0 by omega]
    omega
  have h20 : C (209952 * k + 130349) = 629856 * k + 391048 := by
    unfold C
    simp [show (209952 * k + 130349) % 2 ≠ 0 by omega]
    omega
  have h21 : C (629856 * k + 391048) = 314928 * k + 195524 := by
    unfold C
    simp [show (629856 * k + 391048) % 2 = 0 by omega]
    omega
  have h22 : C (314928 * k + 195524) = 157464 * k + 97762 := by
    unfold C
    simp [show (314928 * k + 195524) % 2 = 0 by omega]
    omega
  have h23 : C (157464 * k + 97762) = 78732 * k + 48881 := by
    unfold C
    simp [show (157464 * k + 97762) % 2 = 0 by omega]
    omega
  have h24 : C (78732 * k + 48881) = 236196 * k + 146644 := by
    unfold C
    simp [show (78732 * k + 48881) % 2 ≠ 0 by omega]
    omega
  have h25 : C (236196 * k + 146644) = 118098 * k + 73322 := by
    unfold C
    simp [show (236196 * k + 146644) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 73322) = 59049 * k + 36661 := by
    unfold C
    simp [show (118098 * k + 73322) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 40687) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 40687)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_40943 : ∀ k : Nat,
    iterate (65536 * k + 40943) 26 = 59049 * k + 36892 ∧
      59049 * k + 36892 < 65536 * k + 40943 := by
  intro k
  have h1 : C (65536 * k + 40943) = 196608 * k + 122830 := by
    unfold C
    simp [show (65536 * k + 40943) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 122830) = 98304 * k + 61415 := by
    unfold C
    simp [show (196608 * k + 122830) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 61415) = 294912 * k + 184246 := by
    unfold C
    simp [show (98304 * k + 61415) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 184246) = 147456 * k + 92123 := by
    unfold C
    simp [show (294912 * k + 184246) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 92123) = 442368 * k + 276370 := by
    unfold C
    simp [show (147456 * k + 92123) % 2 ≠ 0 by omega]
    omega
  have h6 : C (442368 * k + 276370) = 221184 * k + 138185 := by
    unfold C
    simp [show (442368 * k + 276370) % 2 = 0 by omega]
    omega
  have h7 : C (221184 * k + 138185) = 663552 * k + 414556 := by
    unfold C
    simp [show (221184 * k + 138185) % 2 ≠ 0 by omega]
    omega
  have h8 : C (663552 * k + 414556) = 331776 * k + 207278 := by
    unfold C
    simp [show (663552 * k + 414556) % 2 = 0 by omega]
    omega
  have h9 : C (331776 * k + 207278) = 165888 * k + 103639 := by
    unfold C
    simp [show (331776 * k + 207278) % 2 = 0 by omega]
    omega
  have h10 : C (165888 * k + 103639) = 497664 * k + 310918 := by
    unfold C
    simp [show (165888 * k + 103639) % 2 ≠ 0 by omega]
    omega
  have h11 : C (497664 * k + 310918) = 248832 * k + 155459 := by
    unfold C
    simp [show (497664 * k + 310918) % 2 = 0 by omega]
    omega
  have h12 : C (248832 * k + 155459) = 746496 * k + 466378 := by
    unfold C
    simp [show (248832 * k + 155459) % 2 ≠ 0 by omega]
    omega
  have h13 : C (746496 * k + 466378) = 373248 * k + 233189 := by
    unfold C
    simp [show (746496 * k + 466378) % 2 = 0 by omega]
    omega
  have h14 : C (373248 * k + 233189) = 1119744 * k + 699568 := by
    unfold C
    simp [show (373248 * k + 233189) % 2 ≠ 0 by omega]
    omega
  have h15 : C (1119744 * k + 699568) = 559872 * k + 349784 := by
    unfold C
    simp [show (1119744 * k + 699568) % 2 = 0 by omega]
    omega
  have h16 : C (559872 * k + 349784) = 279936 * k + 174892 := by
    unfold C
    simp [show (559872 * k + 349784) % 2 = 0 by omega]
    omega
  have h17 : C (279936 * k + 174892) = 139968 * k + 87446 := by
    unfold C
    simp [show (279936 * k + 174892) % 2 = 0 by omega]
    omega
  have h18 : C (139968 * k + 87446) = 69984 * k + 43723 := by
    unfold C
    simp [show (139968 * k + 87446) % 2 = 0 by omega]
    omega
  have h19 : C (69984 * k + 43723) = 209952 * k + 131170 := by
    unfold C
    simp [show (69984 * k + 43723) % 2 ≠ 0 by omega]
    omega
  have h20 : C (209952 * k + 131170) = 104976 * k + 65585 := by
    unfold C
    simp [show (209952 * k + 131170) % 2 = 0 by omega]
    omega
  have h21 : C (104976 * k + 65585) = 314928 * k + 196756 := by
    unfold C
    simp [show (104976 * k + 65585) % 2 ≠ 0 by omega]
    omega
  have h22 : C (314928 * k + 196756) = 157464 * k + 98378 := by
    unfold C
    simp [show (314928 * k + 196756) % 2 = 0 by omega]
    omega
  have h23 : C (157464 * k + 98378) = 78732 * k + 49189 := by
    unfold C
    simp [show (157464 * k + 98378) % 2 = 0 by omega]
    omega
  have h24 : C (78732 * k + 49189) = 236196 * k + 147568 := by
    unfold C
    simp [show (78732 * k + 49189) % 2 ≠ 0 by omega]
    omega
  have h25 : C (236196 * k + 147568) = 118098 * k + 73784 := by
    unfold C
    simp [show (236196 * k + 147568) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 73784) = 59049 * k + 36892 := by
    unfold C
    simp [show (118098 * k + 73784) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 40943) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 40943)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_41023 : ∀ k : Nat,
    iterate (65536 * k + 41023) 26 = 59049 * k + 36964 ∧
      59049 * k + 36964 < 65536 * k + 41023 := by
  intro k
  have h1 : C (65536 * k + 41023) = 196608 * k + 123070 := by
    unfold C
    simp [show (65536 * k + 41023) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 123070) = 98304 * k + 61535 := by
    unfold C
    simp [show (196608 * k + 123070) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 61535) = 294912 * k + 184606 := by
    unfold C
    simp [show (98304 * k + 61535) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 184606) = 147456 * k + 92303 := by
    unfold C
    simp [show (294912 * k + 184606) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 92303) = 442368 * k + 276910 := by
    unfold C
    simp [show (147456 * k + 92303) % 2 ≠ 0 by omega]
    omega
  have h6 : C (442368 * k + 276910) = 221184 * k + 138455 := by
    unfold C
    simp [show (442368 * k + 276910) % 2 = 0 by omega]
    omega
  have h7 : C (221184 * k + 138455) = 663552 * k + 415366 := by
    unfold C
    simp [show (221184 * k + 138455) % 2 ≠ 0 by omega]
    omega
  have h8 : C (663552 * k + 415366) = 331776 * k + 207683 := by
    unfold C
    simp [show (663552 * k + 415366) % 2 = 0 by omega]
    omega
  have h9 : C (331776 * k + 207683) = 995328 * k + 623050 := by
    unfold C
    simp [show (331776 * k + 207683) % 2 ≠ 0 by omega]
    omega
  have h10 : C (995328 * k + 623050) = 497664 * k + 311525 := by
    unfold C
    simp [show (995328 * k + 623050) % 2 = 0 by omega]
    omega
  have h11 : C (497664 * k + 311525) = 1492992 * k + 934576 := by
    unfold C
    simp [show (497664 * k + 311525) % 2 ≠ 0 by omega]
    omega
  have h12 : C (1492992 * k + 934576) = 746496 * k + 467288 := by
    unfold C
    simp [show (1492992 * k + 934576) % 2 = 0 by omega]
    omega
  have h13 : C (746496 * k + 467288) = 373248 * k + 233644 := by
    unfold C
    simp [show (746496 * k + 467288) % 2 = 0 by omega]
    omega
  have h14 : C (373248 * k + 233644) = 186624 * k + 116822 := by
    unfold C
    simp [show (373248 * k + 233644) % 2 = 0 by omega]
    omega
  have h15 : C (186624 * k + 116822) = 93312 * k + 58411 := by
    unfold C
    simp [show (186624 * k + 116822) % 2 = 0 by omega]
    omega
  have h16 : C (93312 * k + 58411) = 279936 * k + 175234 := by
    unfold C
    simp [show (93312 * k + 58411) % 2 ≠ 0 by omega]
    omega
  have h17 : C (279936 * k + 175234) = 139968 * k + 87617 := by
    unfold C
    simp [show (279936 * k + 175234) % 2 = 0 by omega]
    omega
  have h18 : C (139968 * k + 87617) = 419904 * k + 262852 := by
    unfold C
    simp [show (139968 * k + 87617) % 2 ≠ 0 by omega]
    omega
  have h19 : C (419904 * k + 262852) = 209952 * k + 131426 := by
    unfold C
    simp [show (419904 * k + 262852) % 2 = 0 by omega]
    omega
  have h20 : C (209952 * k + 131426) = 104976 * k + 65713 := by
    unfold C
    simp [show (209952 * k + 131426) % 2 = 0 by omega]
    omega
  have h21 : C (104976 * k + 65713) = 314928 * k + 197140 := by
    unfold C
    simp [show (104976 * k + 65713) % 2 ≠ 0 by omega]
    omega
  have h22 : C (314928 * k + 197140) = 157464 * k + 98570 := by
    unfold C
    simp [show (314928 * k + 197140) % 2 = 0 by omega]
    omega
  have h23 : C (157464 * k + 98570) = 78732 * k + 49285 := by
    unfold C
    simp [show (157464 * k + 98570) % 2 = 0 by omega]
    omega
  have h24 : C (78732 * k + 49285) = 236196 * k + 147856 := by
    unfold C
    simp [show (78732 * k + 49285) % 2 ≠ 0 by omega]
    omega
  have h25 : C (236196 * k + 147856) = 118098 * k + 73928 := by
    unfold C
    simp [show (236196 * k + 147856) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 73928) = 59049 * k + 36964 := by
    unfold C
    simp [show (118098 * k + 73928) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 41023) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 41023)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_41063 : ∀ k : Nat,
    iterate (65536 * k + 41063) 26 = 59049 * k + 37000 ∧
      59049 * k + 37000 < 65536 * k + 41063 := by
  intro k
  have h1 : C (65536 * k + 41063) = 196608 * k + 123190 := by
    unfold C
    simp [show (65536 * k + 41063) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 123190) = 98304 * k + 61595 := by
    unfold C
    simp [show (196608 * k + 123190) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 61595) = 294912 * k + 184786 := by
    unfold C
    simp [show (98304 * k + 61595) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 184786) = 147456 * k + 92393 := by
    unfold C
    simp [show (294912 * k + 184786) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 92393) = 442368 * k + 277180 := by
    unfold C
    simp [show (147456 * k + 92393) % 2 ≠ 0 by omega]
    omega
  have h6 : C (442368 * k + 277180) = 221184 * k + 138590 := by
    unfold C
    simp [show (442368 * k + 277180) % 2 = 0 by omega]
    omega
  have h7 : C (221184 * k + 138590) = 110592 * k + 69295 := by
    unfold C
    simp [show (221184 * k + 138590) % 2 = 0 by omega]
    omega
  have h8 : C (110592 * k + 69295) = 331776 * k + 207886 := by
    unfold C
    simp [show (110592 * k + 69295) % 2 ≠ 0 by omega]
    omega
  have h9 : C (331776 * k + 207886) = 165888 * k + 103943 := by
    unfold C
    simp [show (331776 * k + 207886) % 2 = 0 by omega]
    omega
  have h10 : C (165888 * k + 103943) = 497664 * k + 311830 := by
    unfold C
    simp [show (165888 * k + 103943) % 2 ≠ 0 by omega]
    omega
  have h11 : C (497664 * k + 311830) = 248832 * k + 155915 := by
    unfold C
    simp [show (497664 * k + 311830) % 2 = 0 by omega]
    omega
  have h12 : C (248832 * k + 155915) = 746496 * k + 467746 := by
    unfold C
    simp [show (248832 * k + 155915) % 2 ≠ 0 by omega]
    omega
  have h13 : C (746496 * k + 467746) = 373248 * k + 233873 := by
    unfold C
    simp [show (746496 * k + 467746) % 2 = 0 by omega]
    omega
  have h14 : C (373248 * k + 233873) = 1119744 * k + 701620 := by
    unfold C
    simp [show (373248 * k + 233873) % 2 ≠ 0 by omega]
    omega
  have h15 : C (1119744 * k + 701620) = 559872 * k + 350810 := by
    unfold C
    simp [show (1119744 * k + 701620) % 2 = 0 by omega]
    omega
  have h16 : C (559872 * k + 350810) = 279936 * k + 175405 := by
    unfold C
    simp [show (559872 * k + 350810) % 2 = 0 by omega]
    omega
  have h17 : C (279936 * k + 175405) = 839808 * k + 526216 := by
    unfold C
    simp [show (279936 * k + 175405) % 2 ≠ 0 by omega]
    omega
  have h18 : C (839808 * k + 526216) = 419904 * k + 263108 := by
    unfold C
    simp [show (839808 * k + 526216) % 2 = 0 by omega]
    omega
  have h19 : C (419904 * k + 263108) = 209952 * k + 131554 := by
    unfold C
    simp [show (419904 * k + 263108) % 2 = 0 by omega]
    omega
  have h20 : C (209952 * k + 131554) = 104976 * k + 65777 := by
    unfold C
    simp [show (209952 * k + 131554) % 2 = 0 by omega]
    omega
  have h21 : C (104976 * k + 65777) = 314928 * k + 197332 := by
    unfold C
    simp [show (104976 * k + 65777) % 2 ≠ 0 by omega]
    omega
  have h22 : C (314928 * k + 197332) = 157464 * k + 98666 := by
    unfold C
    simp [show (314928 * k + 197332) % 2 = 0 by omega]
    omega
  have h23 : C (157464 * k + 98666) = 78732 * k + 49333 := by
    unfold C
    simp [show (157464 * k + 98666) % 2 = 0 by omega]
    omega
  have h24 : C (78732 * k + 49333) = 236196 * k + 148000 := by
    unfold C
    simp [show (78732 * k + 49333) % 2 ≠ 0 by omega]
    omega
  have h25 : C (236196 * k + 148000) = 118098 * k + 74000 := by
    unfold C
    simp [show (236196 * k + 148000) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 74000) = 59049 * k + 37000 := by
    unfold C
    simp [show (118098 * k + 74000) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 41063) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 41063)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_41183 : ∀ k : Nat,
    iterate (65536 * k + 41183) 26 = 59049 * k + 37108 ∧
      59049 * k + 37108 < 65536 * k + 41183 := by
  intro k
  have h1 : C (65536 * k + 41183) = 196608 * k + 123550 := by
    unfold C
    simp [show (65536 * k + 41183) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 123550) = 98304 * k + 61775 := by
    unfold C
    simp [show (196608 * k + 123550) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 61775) = 294912 * k + 185326 := by
    unfold C
    simp [show (98304 * k + 61775) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 185326) = 147456 * k + 92663 := by
    unfold C
    simp [show (294912 * k + 185326) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 92663) = 442368 * k + 277990 := by
    unfold C
    simp [show (147456 * k + 92663) % 2 ≠ 0 by omega]
    omega
  have h6 : C (442368 * k + 277990) = 221184 * k + 138995 := by
    unfold C
    simp [show (442368 * k + 277990) % 2 = 0 by omega]
    omega
  have h7 : C (221184 * k + 138995) = 663552 * k + 416986 := by
    unfold C
    simp [show (221184 * k + 138995) % 2 ≠ 0 by omega]
    omega
  have h8 : C (663552 * k + 416986) = 331776 * k + 208493 := by
    unfold C
    simp [show (663552 * k + 416986) % 2 = 0 by omega]
    omega
  have h9 : C (331776 * k + 208493) = 995328 * k + 625480 := by
    unfold C
    simp [show (331776 * k + 208493) % 2 ≠ 0 by omega]
    omega
  have h10 : C (995328 * k + 625480) = 497664 * k + 312740 := by
    unfold C
    simp [show (995328 * k + 625480) % 2 = 0 by omega]
    omega
  have h11 : C (497664 * k + 312740) = 248832 * k + 156370 := by
    unfold C
    simp [show (497664 * k + 312740) % 2 = 0 by omega]
    omega
  have h12 : C (248832 * k + 156370) = 124416 * k + 78185 := by
    unfold C
    simp [show (248832 * k + 156370) % 2 = 0 by omega]
    omega
  have h13 : C (124416 * k + 78185) = 373248 * k + 234556 := by
    unfold C
    simp [show (124416 * k + 78185) % 2 ≠ 0 by omega]
    omega
  have h14 : C (373248 * k + 234556) = 186624 * k + 117278 := by
    unfold C
    simp [show (373248 * k + 234556) % 2 = 0 by omega]
    omega
  have h15 : C (186624 * k + 117278) = 93312 * k + 58639 := by
    unfold C
    simp [show (186624 * k + 117278) % 2 = 0 by omega]
    omega
  have h16 : C (93312 * k + 58639) = 279936 * k + 175918 := by
    unfold C
    simp [show (93312 * k + 58639) % 2 ≠ 0 by omega]
    omega
  have h17 : C (279936 * k + 175918) = 139968 * k + 87959 := by
    unfold C
    simp [show (279936 * k + 175918) % 2 = 0 by omega]
    omega
  have h18 : C (139968 * k + 87959) = 419904 * k + 263878 := by
    unfold C
    simp [show (139968 * k + 87959) % 2 ≠ 0 by omega]
    omega
  have h19 : C (419904 * k + 263878) = 209952 * k + 131939 := by
    unfold C
    simp [show (419904 * k + 263878) % 2 = 0 by omega]
    omega
  have h20 : C (209952 * k + 131939) = 629856 * k + 395818 := by
    unfold C
    simp [show (209952 * k + 131939) % 2 ≠ 0 by omega]
    omega
  have h21 : C (629856 * k + 395818) = 314928 * k + 197909 := by
    unfold C
    simp [show (629856 * k + 395818) % 2 = 0 by omega]
    omega
  have h22 : C (314928 * k + 197909) = 944784 * k + 593728 := by
    unfold C
    simp [show (314928 * k + 197909) % 2 ≠ 0 by omega]
    omega
  have h23 : C (944784 * k + 593728) = 472392 * k + 296864 := by
    unfold C
    simp [show (944784 * k + 593728) % 2 = 0 by omega]
    omega
  have h24 : C (472392 * k + 296864) = 236196 * k + 148432 := by
    unfold C
    simp [show (472392 * k + 296864) % 2 = 0 by omega]
    omega
  have h25 : C (236196 * k + 148432) = 118098 * k + 74216 := by
    unfold C
    simp [show (236196 * k + 148432) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 74216) = 59049 * k + 37108 := by
    unfold C
    simp [show (118098 * k + 74216) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 41183) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 41183)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

end CollatzM16ShardO
