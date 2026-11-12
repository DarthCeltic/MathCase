import Mathlib.Data.Nat.Prime.Basic

namespace CollatzM16ShardW

def C (n : Nat) : Nat := if n % 2 = 0 then n / 2 else 3 * n + 1

def iterate (n t : Nat) : Nat := Nat.rec n (fun _ previous => C previous) t

theorem descent_mod65536_60955 : ∀ k : Nat,
    iterate (65536 * k + 60955) 26 = 59049 * k + 54923 ∧
      59049 * k + 54923 < 65536 * k + 60955 := by
  intro k
  have h1 : C (65536 * k + 60955) = 196608 * k + 182866 := by
    unfold C
    simp [show (65536 * k + 60955) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 182866) = 98304 * k + 91433 := by
    unfold C
    simp [show (196608 * k + 182866) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 91433) = 294912 * k + 274300 := by
    unfold C
    simp [show (98304 * k + 91433) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 274300) = 147456 * k + 137150 := by
    unfold C
    simp [show (294912 * k + 274300) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 137150) = 73728 * k + 68575 := by
    unfold C
    simp [show (147456 * k + 137150) % 2 = 0 by omega]
    omega
  have h6 : C (73728 * k + 68575) = 221184 * k + 205726 := by
    unfold C
    simp [show (73728 * k + 68575) % 2 ≠ 0 by omega]
    omega
  have h7 : C (221184 * k + 205726) = 110592 * k + 102863 := by
    unfold C
    simp [show (221184 * k + 205726) % 2 = 0 by omega]
    omega
  have h8 : C (110592 * k + 102863) = 331776 * k + 308590 := by
    unfold C
    simp [show (110592 * k + 102863) % 2 ≠ 0 by omega]
    omega
  have h9 : C (331776 * k + 308590) = 165888 * k + 154295 := by
    unfold C
    simp [show (331776 * k + 308590) % 2 = 0 by omega]
    omega
  have h10 : C (165888 * k + 154295) = 497664 * k + 462886 := by
    unfold C
    simp [show (165888 * k + 154295) % 2 ≠ 0 by omega]
    omega
  have h11 : C (497664 * k + 462886) = 248832 * k + 231443 := by
    unfold C
    simp [show (497664 * k + 462886) % 2 = 0 by omega]
    omega
  have h12 : C (248832 * k + 231443) = 746496 * k + 694330 := by
    unfold C
    simp [show (248832 * k + 231443) % 2 ≠ 0 by omega]
    omega
  have h13 : C (746496 * k + 694330) = 373248 * k + 347165 := by
    unfold C
    simp [show (746496 * k + 694330) % 2 = 0 by omega]
    omega
  have h14 : C (373248 * k + 347165) = 1119744 * k + 1041496 := by
    unfold C
    simp [show (373248 * k + 347165) % 2 ≠ 0 by omega]
    omega
  have h15 : C (1119744 * k + 1041496) = 559872 * k + 520748 := by
    unfold C
    simp [show (1119744 * k + 1041496) % 2 = 0 by omega]
    omega
  have h16 : C (559872 * k + 520748) = 279936 * k + 260374 := by
    unfold C
    simp [show (559872 * k + 520748) % 2 = 0 by omega]
    omega
  have h17 : C (279936 * k + 260374) = 139968 * k + 130187 := by
    unfold C
    simp [show (279936 * k + 260374) % 2 = 0 by omega]
    omega
  have h18 : C (139968 * k + 130187) = 419904 * k + 390562 := by
    unfold C
    simp [show (139968 * k + 130187) % 2 ≠ 0 by omega]
    omega
  have h19 : C (419904 * k + 390562) = 209952 * k + 195281 := by
    unfold C
    simp [show (419904 * k + 390562) % 2 = 0 by omega]
    omega
  have h20 : C (209952 * k + 195281) = 629856 * k + 585844 := by
    unfold C
    simp [show (209952 * k + 195281) % 2 ≠ 0 by omega]
    omega
  have h21 : C (629856 * k + 585844) = 314928 * k + 292922 := by
    unfold C
    simp [show (629856 * k + 585844) % 2 = 0 by omega]
    omega
  have h22 : C (314928 * k + 292922) = 157464 * k + 146461 := by
    unfold C
    simp [show (314928 * k + 292922) % 2 = 0 by omega]
    omega
  have h23 : C (157464 * k + 146461) = 472392 * k + 439384 := by
    unfold C
    simp [show (157464 * k + 146461) % 2 ≠ 0 by omega]
    omega
  have h24 : C (472392 * k + 439384) = 236196 * k + 219692 := by
    unfold C
    simp [show (472392 * k + 439384) % 2 = 0 by omega]
    omega
  have h25 : C (236196 * k + 219692) = 118098 * k + 109846 := by
    unfold C
    simp [show (236196 * k + 219692) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 109846) = 59049 * k + 54923 := by
    unfold C
    simp [show (118098 * k + 109846) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 60955) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 60955)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_61135 : ∀ k : Nat,
    iterate (65536 * k + 61135) 26 = 59049 * k + 55085 ∧
      59049 * k + 55085 < 65536 * k + 61135 := by
  intro k
  have h1 : C (65536 * k + 61135) = 196608 * k + 183406 := by
    unfold C
    simp [show (65536 * k + 61135) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 183406) = 98304 * k + 91703 := by
    unfold C
    simp [show (196608 * k + 183406) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 91703) = 294912 * k + 275110 := by
    unfold C
    simp [show (98304 * k + 91703) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 275110) = 147456 * k + 137555 := by
    unfold C
    simp [show (294912 * k + 275110) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 137555) = 442368 * k + 412666 := by
    unfold C
    simp [show (147456 * k + 137555) % 2 ≠ 0 by omega]
    omega
  have h6 : C (442368 * k + 412666) = 221184 * k + 206333 := by
    unfold C
    simp [show (442368 * k + 412666) % 2 = 0 by omega]
    omega
  have h7 : C (221184 * k + 206333) = 663552 * k + 619000 := by
    unfold C
    simp [show (221184 * k + 206333) % 2 ≠ 0 by omega]
    omega
  have h8 : C (663552 * k + 619000) = 331776 * k + 309500 := by
    unfold C
    simp [show (663552 * k + 619000) % 2 = 0 by omega]
    omega
  have h9 : C (331776 * k + 309500) = 165888 * k + 154750 := by
    unfold C
    simp [show (331776 * k + 309500) % 2 = 0 by omega]
    omega
  have h10 : C (165888 * k + 154750) = 82944 * k + 77375 := by
    unfold C
    simp [show (165888 * k + 154750) % 2 = 0 by omega]
    omega
  have h11 : C (82944 * k + 77375) = 248832 * k + 232126 := by
    unfold C
    simp [show (82944 * k + 77375) % 2 ≠ 0 by omega]
    omega
  have h12 : C (248832 * k + 232126) = 124416 * k + 116063 := by
    unfold C
    simp [show (248832 * k + 232126) % 2 = 0 by omega]
    omega
  have h13 : C (124416 * k + 116063) = 373248 * k + 348190 := by
    unfold C
    simp [show (124416 * k + 116063) % 2 ≠ 0 by omega]
    omega
  have h14 : C (373248 * k + 348190) = 186624 * k + 174095 := by
    unfold C
    simp [show (373248 * k + 348190) % 2 = 0 by omega]
    omega
  have h15 : C (186624 * k + 174095) = 559872 * k + 522286 := by
    unfold C
    simp [show (186624 * k + 174095) % 2 ≠ 0 by omega]
    omega
  have h16 : C (559872 * k + 522286) = 279936 * k + 261143 := by
    unfold C
    simp [show (559872 * k + 522286) % 2 = 0 by omega]
    omega
  have h17 : C (279936 * k + 261143) = 839808 * k + 783430 := by
    unfold C
    simp [show (279936 * k + 261143) % 2 ≠ 0 by omega]
    omega
  have h18 : C (839808 * k + 783430) = 419904 * k + 391715 := by
    unfold C
    simp [show (839808 * k + 783430) % 2 = 0 by omega]
    omega
  have h19 : C (419904 * k + 391715) = 1259712 * k + 1175146 := by
    unfold C
    simp [show (419904 * k + 391715) % 2 ≠ 0 by omega]
    omega
  have h20 : C (1259712 * k + 1175146) = 629856 * k + 587573 := by
    unfold C
    simp [show (1259712 * k + 1175146) % 2 = 0 by omega]
    omega
  have h21 : C (629856 * k + 587573) = 1889568 * k + 1762720 := by
    unfold C
    simp [show (629856 * k + 587573) % 2 ≠ 0 by omega]
    omega
  have h22 : C (1889568 * k + 1762720) = 944784 * k + 881360 := by
    unfold C
    simp [show (1889568 * k + 1762720) % 2 = 0 by omega]
    omega
  have h23 : C (944784 * k + 881360) = 472392 * k + 440680 := by
    unfold C
    simp [show (944784 * k + 881360) % 2 = 0 by omega]
    omega
  have h24 : C (472392 * k + 440680) = 236196 * k + 220340 := by
    unfold C
    simp [show (472392 * k + 440680) % 2 = 0 by omega]
    omega
  have h25 : C (236196 * k + 220340) = 118098 * k + 110170 := by
    unfold C
    simp [show (236196 * k + 220340) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 110170) = 59049 * k + 55085 := by
    unfold C
    simp [show (118098 * k + 110170) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 61135) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 61135)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_61351 : ∀ k : Nat,
    iterate (65536 * k + 61351) 26 = 59049 * k + 55280 ∧
      59049 * k + 55280 < 65536 * k + 61351 := by
  intro k
  have h1 : C (65536 * k + 61351) = 196608 * k + 184054 := by
    unfold C
    simp [show (65536 * k + 61351) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 184054) = 98304 * k + 92027 := by
    unfold C
    simp [show (196608 * k + 184054) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 92027) = 294912 * k + 276082 := by
    unfold C
    simp [show (98304 * k + 92027) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 276082) = 147456 * k + 138041 := by
    unfold C
    simp [show (294912 * k + 276082) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 138041) = 442368 * k + 414124 := by
    unfold C
    simp [show (147456 * k + 138041) % 2 ≠ 0 by omega]
    omega
  have h6 : C (442368 * k + 414124) = 221184 * k + 207062 := by
    unfold C
    simp [show (442368 * k + 414124) % 2 = 0 by omega]
    omega
  have h7 : C (221184 * k + 207062) = 110592 * k + 103531 := by
    unfold C
    simp [show (221184 * k + 207062) % 2 = 0 by omega]
    omega
  have h8 : C (110592 * k + 103531) = 331776 * k + 310594 := by
    unfold C
    simp [show (110592 * k + 103531) % 2 ≠ 0 by omega]
    omega
  have h9 : C (331776 * k + 310594) = 165888 * k + 155297 := by
    unfold C
    simp [show (331776 * k + 310594) % 2 = 0 by omega]
    omega
  have h10 : C (165888 * k + 155297) = 497664 * k + 465892 := by
    unfold C
    simp [show (165888 * k + 155297) % 2 ≠ 0 by omega]
    omega
  have h11 : C (497664 * k + 465892) = 248832 * k + 232946 := by
    unfold C
    simp [show (497664 * k + 465892) % 2 = 0 by omega]
    omega
  have h12 : C (248832 * k + 232946) = 124416 * k + 116473 := by
    unfold C
    simp [show (248832 * k + 232946) % 2 = 0 by omega]
    omega
  have h13 : C (124416 * k + 116473) = 373248 * k + 349420 := by
    unfold C
    simp [show (124416 * k + 116473) % 2 ≠ 0 by omega]
    omega
  have h14 : C (373248 * k + 349420) = 186624 * k + 174710 := by
    unfold C
    simp [show (373248 * k + 349420) % 2 = 0 by omega]
    omega
  have h15 : C (186624 * k + 174710) = 93312 * k + 87355 := by
    unfold C
    simp [show (186624 * k + 174710) % 2 = 0 by omega]
    omega
  have h16 : C (93312 * k + 87355) = 279936 * k + 262066 := by
    unfold C
    simp [show (93312 * k + 87355) % 2 ≠ 0 by omega]
    omega
  have h17 : C (279936 * k + 262066) = 139968 * k + 131033 := by
    unfold C
    simp [show (279936 * k + 262066) % 2 = 0 by omega]
    omega
  have h18 : C (139968 * k + 131033) = 419904 * k + 393100 := by
    unfold C
    simp [show (139968 * k + 131033) % 2 ≠ 0 by omega]
    omega
  have h19 : C (419904 * k + 393100) = 209952 * k + 196550 := by
    unfold C
    simp [show (419904 * k + 393100) % 2 = 0 by omega]
    omega
  have h20 : C (209952 * k + 196550) = 104976 * k + 98275 := by
    unfold C
    simp [show (209952 * k + 196550) % 2 = 0 by omega]
    omega
  have h21 : C (104976 * k + 98275) = 314928 * k + 294826 := by
    unfold C
    simp [show (104976 * k + 98275) % 2 ≠ 0 by omega]
    omega
  have h22 : C (314928 * k + 294826) = 157464 * k + 147413 := by
    unfold C
    simp [show (314928 * k + 294826) % 2 = 0 by omega]
    omega
  have h23 : C (157464 * k + 147413) = 472392 * k + 442240 := by
    unfold C
    simp [show (157464 * k + 147413) % 2 ≠ 0 by omega]
    omega
  have h24 : C (472392 * k + 442240) = 236196 * k + 221120 := by
    unfold C
    simp [show (472392 * k + 442240) % 2 = 0 by omega]
    omega
  have h25 : C (236196 * k + 221120) = 118098 * k + 110560 := by
    unfold C
    simp [show (236196 * k + 221120) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 110560) = 59049 * k + 55280 := by
    unfold C
    simp [show (118098 * k + 110560) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 61351) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 61351)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_61375 : ∀ k : Nat,
    iterate (65536 * k + 61375) 26 = 59049 * k + 55301 ∧
      59049 * k + 55301 < 65536 * k + 61375 := by
  intro k
  have h1 : C (65536 * k + 61375) = 196608 * k + 184126 := by
    unfold C
    simp [show (65536 * k + 61375) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 184126) = 98304 * k + 92063 := by
    unfold C
    simp [show (196608 * k + 184126) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 92063) = 294912 * k + 276190 := by
    unfold C
    simp [show (98304 * k + 92063) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 276190) = 147456 * k + 138095 := by
    unfold C
    simp [show (294912 * k + 276190) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 138095) = 442368 * k + 414286 := by
    unfold C
    simp [show (147456 * k + 138095) % 2 ≠ 0 by omega]
    omega
  have h6 : C (442368 * k + 414286) = 221184 * k + 207143 := by
    unfold C
    simp [show (442368 * k + 414286) % 2 = 0 by omega]
    omega
  have h7 : C (221184 * k + 207143) = 663552 * k + 621430 := by
    unfold C
    simp [show (221184 * k + 207143) % 2 ≠ 0 by omega]
    omega
  have h8 : C (663552 * k + 621430) = 331776 * k + 310715 := by
    unfold C
    simp [show (663552 * k + 621430) % 2 = 0 by omega]
    omega
  have h9 : C (331776 * k + 310715) = 995328 * k + 932146 := by
    unfold C
    simp [show (331776 * k + 310715) % 2 ≠ 0 by omega]
    omega
  have h10 : C (995328 * k + 932146) = 497664 * k + 466073 := by
    unfold C
    simp [show (995328 * k + 932146) % 2 = 0 by omega]
    omega
  have h11 : C (497664 * k + 466073) = 1492992 * k + 1398220 := by
    unfold C
    simp [show (497664 * k + 466073) % 2 ≠ 0 by omega]
    omega
  have h12 : C (1492992 * k + 1398220) = 746496 * k + 699110 := by
    unfold C
    simp [show (1492992 * k + 1398220) % 2 = 0 by omega]
    omega
  have h13 : C (746496 * k + 699110) = 373248 * k + 349555 := by
    unfold C
    simp [show (746496 * k + 699110) % 2 = 0 by omega]
    omega
  have h14 : C (373248 * k + 349555) = 1119744 * k + 1048666 := by
    unfold C
    simp [show (373248 * k + 349555) % 2 ≠ 0 by omega]
    omega
  have h15 : C (1119744 * k + 1048666) = 559872 * k + 524333 := by
    unfold C
    simp [show (1119744 * k + 1048666) % 2 = 0 by omega]
    omega
  have h16 : C (559872 * k + 524333) = 1679616 * k + 1573000 := by
    unfold C
    simp [show (559872 * k + 524333) % 2 ≠ 0 by omega]
    omega
  have h17 : C (1679616 * k + 1573000) = 839808 * k + 786500 := by
    unfold C
    simp [show (1679616 * k + 1573000) % 2 = 0 by omega]
    omega
  have h18 : C (839808 * k + 786500) = 419904 * k + 393250 := by
    unfold C
    simp [show (839808 * k + 786500) % 2 = 0 by omega]
    omega
  have h19 : C (419904 * k + 393250) = 209952 * k + 196625 := by
    unfold C
    simp [show (419904 * k + 393250) % 2 = 0 by omega]
    omega
  have h20 : C (209952 * k + 196625) = 629856 * k + 589876 := by
    unfold C
    simp [show (209952 * k + 196625) % 2 ≠ 0 by omega]
    omega
  have h21 : C (629856 * k + 589876) = 314928 * k + 294938 := by
    unfold C
    simp [show (629856 * k + 589876) % 2 = 0 by omega]
    omega
  have h22 : C (314928 * k + 294938) = 157464 * k + 147469 := by
    unfold C
    simp [show (314928 * k + 294938) % 2 = 0 by omega]
    omega
  have h23 : C (157464 * k + 147469) = 472392 * k + 442408 := by
    unfold C
    simp [show (157464 * k + 147469) % 2 ≠ 0 by omega]
    omega
  have h24 : C (472392 * k + 442408) = 236196 * k + 221204 := by
    unfold C
    simp [show (472392 * k + 442408) % 2 = 0 by omega]
    omega
  have h25 : C (236196 * k + 221204) = 118098 * k + 110602 := by
    unfold C
    simp [show (236196 * k + 221204) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 110602) = 59049 * k + 55301 := by
    unfold C
    simp [show (118098 * k + 110602) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 61375) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 61375)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_61531 : ∀ k : Nat,
    iterate (65536 * k + 61531) 26 = 59049 * k + 55442 ∧
      59049 * k + 55442 < 65536 * k + 61531 := by
  intro k
  have h1 : C (65536 * k + 61531) = 196608 * k + 184594 := by
    unfold C
    simp [show (65536 * k + 61531) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 184594) = 98304 * k + 92297 := by
    unfold C
    simp [show (196608 * k + 184594) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 92297) = 294912 * k + 276892 := by
    unfold C
    simp [show (98304 * k + 92297) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 276892) = 147456 * k + 138446 := by
    unfold C
    simp [show (294912 * k + 276892) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 138446) = 73728 * k + 69223 := by
    unfold C
    simp [show (147456 * k + 138446) % 2 = 0 by omega]
    omega
  have h6 : C (73728 * k + 69223) = 221184 * k + 207670 := by
    unfold C
    simp [show (73728 * k + 69223) % 2 ≠ 0 by omega]
    omega
  have h7 : C (221184 * k + 207670) = 110592 * k + 103835 := by
    unfold C
    simp [show (221184 * k + 207670) % 2 = 0 by omega]
    omega
  have h8 : C (110592 * k + 103835) = 331776 * k + 311506 := by
    unfold C
    simp [show (110592 * k + 103835) % 2 ≠ 0 by omega]
    omega
  have h9 : C (331776 * k + 311506) = 165888 * k + 155753 := by
    unfold C
    simp [show (331776 * k + 311506) % 2 = 0 by omega]
    omega
  have h10 : C (165888 * k + 155753) = 497664 * k + 467260 := by
    unfold C
    simp [show (165888 * k + 155753) % 2 ≠ 0 by omega]
    omega
  have h11 : C (497664 * k + 467260) = 248832 * k + 233630 := by
    unfold C
    simp [show (497664 * k + 467260) % 2 = 0 by omega]
    omega
  have h12 : C (248832 * k + 233630) = 124416 * k + 116815 := by
    unfold C
    simp [show (248832 * k + 233630) % 2 = 0 by omega]
    omega
  have h13 : C (124416 * k + 116815) = 373248 * k + 350446 := by
    unfold C
    simp [show (124416 * k + 116815) % 2 ≠ 0 by omega]
    omega
  have h14 : C (373248 * k + 350446) = 186624 * k + 175223 := by
    unfold C
    simp [show (373248 * k + 350446) % 2 = 0 by omega]
    omega
  have h15 : C (186624 * k + 175223) = 559872 * k + 525670 := by
    unfold C
    simp [show (186624 * k + 175223) % 2 ≠ 0 by omega]
    omega
  have h16 : C (559872 * k + 525670) = 279936 * k + 262835 := by
    unfold C
    simp [show (559872 * k + 525670) % 2 = 0 by omega]
    omega
  have h17 : C (279936 * k + 262835) = 839808 * k + 788506 := by
    unfold C
    simp [show (279936 * k + 262835) % 2 ≠ 0 by omega]
    omega
  have h18 : C (839808 * k + 788506) = 419904 * k + 394253 := by
    unfold C
    simp [show (839808 * k + 788506) % 2 = 0 by omega]
    omega
  have h19 : C (419904 * k + 394253) = 1259712 * k + 1182760 := by
    unfold C
    simp [show (419904 * k + 394253) % 2 ≠ 0 by omega]
    omega
  have h20 : C (1259712 * k + 1182760) = 629856 * k + 591380 := by
    unfold C
    simp [show (1259712 * k + 1182760) % 2 = 0 by omega]
    omega
  have h21 : C (629856 * k + 591380) = 314928 * k + 295690 := by
    unfold C
    simp [show (629856 * k + 591380) % 2 = 0 by omega]
    omega
  have h22 : C (314928 * k + 295690) = 157464 * k + 147845 := by
    unfold C
    simp [show (314928 * k + 295690) % 2 = 0 by omega]
    omega
  have h23 : C (157464 * k + 147845) = 472392 * k + 443536 := by
    unfold C
    simp [show (157464 * k + 147845) % 2 ≠ 0 by omega]
    omega
  have h24 : C (472392 * k + 443536) = 236196 * k + 221768 := by
    unfold C
    simp [show (472392 * k + 443536) % 2 = 0 by omega]
    omega
  have h25 : C (236196 * k + 221768) = 118098 * k + 110884 := by
    unfold C
    simp [show (236196 * k + 221768) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 110884) = 59049 * k + 55442 := by
    unfold C
    simp [show (118098 * k + 110884) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 61531) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 61531)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_61631 : ∀ k : Nat,
    iterate (65536 * k + 61631) 26 = 59049 * k + 55532 ∧
      59049 * k + 55532 < 65536 * k + 61631 := by
  intro k
  have h1 : C (65536 * k + 61631) = 196608 * k + 184894 := by
    unfold C
    simp [show (65536 * k + 61631) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 184894) = 98304 * k + 92447 := by
    unfold C
    simp [show (196608 * k + 184894) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 92447) = 294912 * k + 277342 := by
    unfold C
    simp [show (98304 * k + 92447) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 277342) = 147456 * k + 138671 := by
    unfold C
    simp [show (294912 * k + 277342) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 138671) = 442368 * k + 416014 := by
    unfold C
    simp [show (147456 * k + 138671) % 2 ≠ 0 by omega]
    omega
  have h6 : C (442368 * k + 416014) = 221184 * k + 208007 := by
    unfold C
    simp [show (442368 * k + 416014) % 2 = 0 by omega]
    omega
  have h7 : C (221184 * k + 208007) = 663552 * k + 624022 := by
    unfold C
    simp [show (221184 * k + 208007) % 2 ≠ 0 by omega]
    omega
  have h8 : C (663552 * k + 624022) = 331776 * k + 312011 := by
    unfold C
    simp [show (663552 * k + 624022) % 2 = 0 by omega]
    omega
  have h9 : C (331776 * k + 312011) = 995328 * k + 936034 := by
    unfold C
    simp [show (331776 * k + 312011) % 2 ≠ 0 by omega]
    omega
  have h10 : C (995328 * k + 936034) = 497664 * k + 468017 := by
    unfold C
    simp [show (995328 * k + 936034) % 2 = 0 by omega]
    omega
  have h11 : C (497664 * k + 468017) = 1492992 * k + 1404052 := by
    unfold C
    simp [show (497664 * k + 468017) % 2 ≠ 0 by omega]
    omega
  have h12 : C (1492992 * k + 1404052) = 746496 * k + 702026 := by
    unfold C
    simp [show (1492992 * k + 1404052) % 2 = 0 by omega]
    omega
  have h13 : C (746496 * k + 702026) = 373248 * k + 351013 := by
    unfold C
    simp [show (746496 * k + 702026) % 2 = 0 by omega]
    omega
  have h14 : C (373248 * k + 351013) = 1119744 * k + 1053040 := by
    unfold C
    simp [show (373248 * k + 351013) % 2 ≠ 0 by omega]
    omega
  have h15 : C (1119744 * k + 1053040) = 559872 * k + 526520 := by
    unfold C
    simp [show (1119744 * k + 1053040) % 2 = 0 by omega]
    omega
  have h16 : C (559872 * k + 526520) = 279936 * k + 263260 := by
    unfold C
    simp [show (559872 * k + 526520) % 2 = 0 by omega]
    omega
  have h17 : C (279936 * k + 263260) = 139968 * k + 131630 := by
    unfold C
    simp [show (279936 * k + 263260) % 2 = 0 by omega]
    omega
  have h18 : C (139968 * k + 131630) = 69984 * k + 65815 := by
    unfold C
    simp [show (139968 * k + 131630) % 2 = 0 by omega]
    omega
  have h19 : C (69984 * k + 65815) = 209952 * k + 197446 := by
    unfold C
    simp [show (69984 * k + 65815) % 2 ≠ 0 by omega]
    omega
  have h20 : C (209952 * k + 197446) = 104976 * k + 98723 := by
    unfold C
    simp [show (209952 * k + 197446) % 2 = 0 by omega]
    omega
  have h21 : C (104976 * k + 98723) = 314928 * k + 296170 := by
    unfold C
    simp [show (104976 * k + 98723) % 2 ≠ 0 by omega]
    omega
  have h22 : C (314928 * k + 296170) = 157464 * k + 148085 := by
    unfold C
    simp [show (314928 * k + 296170) % 2 = 0 by omega]
    omega
  have h23 : C (157464 * k + 148085) = 472392 * k + 444256 := by
    unfold C
    simp [show (157464 * k + 148085) % 2 ≠ 0 by omega]
    omega
  have h24 : C (472392 * k + 444256) = 236196 * k + 222128 := by
    unfold C
    simp [show (472392 * k + 444256) % 2 = 0 by omega]
    omega
  have h25 : C (236196 * k + 222128) = 118098 * k + 111064 := by
    unfold C
    simp [show (236196 * k + 222128) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 111064) = 59049 * k + 55532 := by
    unfold C
    simp [show (118098 * k + 111064) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 61631) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 61631)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_61663 : ∀ k : Nat,
    iterate (65536 * k + 61663) 26 = 59049 * k + 55561 ∧
      59049 * k + 55561 < 65536 * k + 61663 := by
  intro k
  have h1 : C (65536 * k + 61663) = 196608 * k + 184990 := by
    unfold C
    simp [show (65536 * k + 61663) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 184990) = 98304 * k + 92495 := by
    unfold C
    simp [show (196608 * k + 184990) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 92495) = 294912 * k + 277486 := by
    unfold C
    simp [show (98304 * k + 92495) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 277486) = 147456 * k + 138743 := by
    unfold C
    simp [show (294912 * k + 277486) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 138743) = 442368 * k + 416230 := by
    unfold C
    simp [show (147456 * k + 138743) % 2 ≠ 0 by omega]
    omega
  have h6 : C (442368 * k + 416230) = 221184 * k + 208115 := by
    unfold C
    simp [show (442368 * k + 416230) % 2 = 0 by omega]
    omega
  have h7 : C (221184 * k + 208115) = 663552 * k + 624346 := by
    unfold C
    simp [show (221184 * k + 208115) % 2 ≠ 0 by omega]
    omega
  have h8 : C (663552 * k + 624346) = 331776 * k + 312173 := by
    unfold C
    simp [show (663552 * k + 624346) % 2 = 0 by omega]
    omega
  have h9 : C (331776 * k + 312173) = 995328 * k + 936520 := by
    unfold C
    simp [show (331776 * k + 312173) % 2 ≠ 0 by omega]
    omega
  have h10 : C (995328 * k + 936520) = 497664 * k + 468260 := by
    unfold C
    simp [show (995328 * k + 936520) % 2 = 0 by omega]
    omega
  have h11 : C (497664 * k + 468260) = 248832 * k + 234130 := by
    unfold C
    simp [show (497664 * k + 468260) % 2 = 0 by omega]
    omega
  have h12 : C (248832 * k + 234130) = 124416 * k + 117065 := by
    unfold C
    simp [show (248832 * k + 234130) % 2 = 0 by omega]
    omega
  have h13 : C (124416 * k + 117065) = 373248 * k + 351196 := by
    unfold C
    simp [show (124416 * k + 117065) % 2 ≠ 0 by omega]
    omega
  have h14 : C (373248 * k + 351196) = 186624 * k + 175598 := by
    unfold C
    simp [show (373248 * k + 351196) % 2 = 0 by omega]
    omega
  have h15 : C (186624 * k + 175598) = 93312 * k + 87799 := by
    unfold C
    simp [show (186624 * k + 175598) % 2 = 0 by omega]
    omega
  have h16 : C (93312 * k + 87799) = 279936 * k + 263398 := by
    unfold C
    simp [show (93312 * k + 87799) % 2 ≠ 0 by omega]
    omega
  have h17 : C (279936 * k + 263398) = 139968 * k + 131699 := by
    unfold C
    simp [show (279936 * k + 263398) % 2 = 0 by omega]
    omega
  have h18 : C (139968 * k + 131699) = 419904 * k + 395098 := by
    unfold C
    simp [show (139968 * k + 131699) % 2 ≠ 0 by omega]
    omega
  have h19 : C (419904 * k + 395098) = 209952 * k + 197549 := by
    unfold C
    simp [show (419904 * k + 395098) % 2 = 0 by omega]
    omega
  have h20 : C (209952 * k + 197549) = 629856 * k + 592648 := by
    unfold C
    simp [show (209952 * k + 197549) % 2 ≠ 0 by omega]
    omega
  have h21 : C (629856 * k + 592648) = 314928 * k + 296324 := by
    unfold C
    simp [show (629856 * k + 592648) % 2 = 0 by omega]
    omega
  have h22 : C (314928 * k + 296324) = 157464 * k + 148162 := by
    unfold C
    simp [show (314928 * k + 296324) % 2 = 0 by omega]
    omega
  have h23 : C (157464 * k + 148162) = 78732 * k + 74081 := by
    unfold C
    simp [show (157464 * k + 148162) % 2 = 0 by omega]
    omega
  have h24 : C (78732 * k + 74081) = 236196 * k + 222244 := by
    unfold C
    simp [show (78732 * k + 74081) % 2 ≠ 0 by omega]
    omega
  have h25 : C (236196 * k + 222244) = 118098 * k + 111122 := by
    unfold C
    simp [show (236196 * k + 222244) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 111122) = 59049 * k + 55561 := by
    unfold C
    simp [show (118098 * k + 111122) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 61663) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 61663)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_61723 : ∀ k : Nat,
    iterate (65536 * k + 61723) 26 = 59049 * k + 55615 ∧
      59049 * k + 55615 < 65536 * k + 61723 := by
  intro k
  have h1 : C (65536 * k + 61723) = 196608 * k + 185170 := by
    unfold C
    simp [show (65536 * k + 61723) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 185170) = 98304 * k + 92585 := by
    unfold C
    simp [show (196608 * k + 185170) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 92585) = 294912 * k + 277756 := by
    unfold C
    simp [show (98304 * k + 92585) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 277756) = 147456 * k + 138878 := by
    unfold C
    simp [show (294912 * k + 277756) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 138878) = 73728 * k + 69439 := by
    unfold C
    simp [show (147456 * k + 138878) % 2 = 0 by omega]
    omega
  have h6 : C (73728 * k + 69439) = 221184 * k + 208318 := by
    unfold C
    simp [show (73728 * k + 69439) % 2 ≠ 0 by omega]
    omega
  have h7 : C (221184 * k + 208318) = 110592 * k + 104159 := by
    unfold C
    simp [show (221184 * k + 208318) % 2 = 0 by omega]
    omega
  have h8 : C (110592 * k + 104159) = 331776 * k + 312478 := by
    unfold C
    simp [show (110592 * k + 104159) % 2 ≠ 0 by omega]
    omega
  have h9 : C (331776 * k + 312478) = 165888 * k + 156239 := by
    unfold C
    simp [show (331776 * k + 312478) % 2 = 0 by omega]
    omega
  have h10 : C (165888 * k + 156239) = 497664 * k + 468718 := by
    unfold C
    simp [show (165888 * k + 156239) % 2 ≠ 0 by omega]
    omega
  have h11 : C (497664 * k + 468718) = 248832 * k + 234359 := by
    unfold C
    simp [show (497664 * k + 468718) % 2 = 0 by omega]
    omega
  have h12 : C (248832 * k + 234359) = 746496 * k + 703078 := by
    unfold C
    simp [show (248832 * k + 234359) % 2 ≠ 0 by omega]
    omega
  have h13 : C (746496 * k + 703078) = 373248 * k + 351539 := by
    unfold C
    simp [show (746496 * k + 703078) % 2 = 0 by omega]
    omega
  have h14 : C (373248 * k + 351539) = 1119744 * k + 1054618 := by
    unfold C
    simp [show (373248 * k + 351539) % 2 ≠ 0 by omega]
    omega
  have h15 : C (1119744 * k + 1054618) = 559872 * k + 527309 := by
    unfold C
    simp [show (1119744 * k + 1054618) % 2 = 0 by omega]
    omega
  have h16 : C (559872 * k + 527309) = 1679616 * k + 1581928 := by
    unfold C
    simp [show (559872 * k + 527309) % 2 ≠ 0 by omega]
    omega
  have h17 : C (1679616 * k + 1581928) = 839808 * k + 790964 := by
    unfold C
    simp [show (1679616 * k + 1581928) % 2 = 0 by omega]
    omega
  have h18 : C (839808 * k + 790964) = 419904 * k + 395482 := by
    unfold C
    simp [show (839808 * k + 790964) % 2 = 0 by omega]
    omega
  have h19 : C (419904 * k + 395482) = 209952 * k + 197741 := by
    unfold C
    simp [show (419904 * k + 395482) % 2 = 0 by omega]
    omega
  have h20 : C (209952 * k + 197741) = 629856 * k + 593224 := by
    unfold C
    simp [show (209952 * k + 197741) % 2 ≠ 0 by omega]
    omega
  have h21 : C (629856 * k + 593224) = 314928 * k + 296612 := by
    unfold C
    simp [show (629856 * k + 593224) % 2 = 0 by omega]
    omega
  have h22 : C (314928 * k + 296612) = 157464 * k + 148306 := by
    unfold C
    simp [show (314928 * k + 296612) % 2 = 0 by omega]
    omega
  have h23 : C (157464 * k + 148306) = 78732 * k + 74153 := by
    unfold C
    simp [show (157464 * k + 148306) % 2 = 0 by omega]
    omega
  have h24 : C (78732 * k + 74153) = 236196 * k + 222460 := by
    unfold C
    simp [show (78732 * k + 74153) % 2 ≠ 0 by omega]
    omega
  have h25 : C (236196 * k + 222460) = 118098 * k + 111230 := by
    unfold C
    simp [show (236196 * k + 222460) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 111230) = 59049 * k + 55615 := by
    unfold C
    simp [show (118098 * k + 111230) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 61723) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 61723)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_61979 : ∀ k : Nat,
    iterate (65536 * k + 61979) 26 = 59049 * k + 55846 ∧
      59049 * k + 55846 < 65536 * k + 61979 := by
  intro k
  have h1 : C (65536 * k + 61979) = 196608 * k + 185938 := by
    unfold C
    simp [show (65536 * k + 61979) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 185938) = 98304 * k + 92969 := by
    unfold C
    simp [show (196608 * k + 185938) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 92969) = 294912 * k + 278908 := by
    unfold C
    simp [show (98304 * k + 92969) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 278908) = 147456 * k + 139454 := by
    unfold C
    simp [show (294912 * k + 278908) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 139454) = 73728 * k + 69727 := by
    unfold C
    simp [show (147456 * k + 139454) % 2 = 0 by omega]
    omega
  have h6 : C (73728 * k + 69727) = 221184 * k + 209182 := by
    unfold C
    simp [show (73728 * k + 69727) % 2 ≠ 0 by omega]
    omega
  have h7 : C (221184 * k + 209182) = 110592 * k + 104591 := by
    unfold C
    simp [show (221184 * k + 209182) % 2 = 0 by omega]
    omega
  have h8 : C (110592 * k + 104591) = 331776 * k + 313774 := by
    unfold C
    simp [show (110592 * k + 104591) % 2 ≠ 0 by omega]
    omega
  have h9 : C (331776 * k + 313774) = 165888 * k + 156887 := by
    unfold C
    simp [show (331776 * k + 313774) % 2 = 0 by omega]
    omega
  have h10 : C (165888 * k + 156887) = 497664 * k + 470662 := by
    unfold C
    simp [show (165888 * k + 156887) % 2 ≠ 0 by omega]
    omega
  have h11 : C (497664 * k + 470662) = 248832 * k + 235331 := by
    unfold C
    simp [show (497664 * k + 470662) % 2 = 0 by omega]
    omega
  have h12 : C (248832 * k + 235331) = 746496 * k + 705994 := by
    unfold C
    simp [show (248832 * k + 235331) % 2 ≠ 0 by omega]
    omega
  have h13 : C (746496 * k + 705994) = 373248 * k + 352997 := by
    unfold C
    simp [show (746496 * k + 705994) % 2 = 0 by omega]
    omega
  have h14 : C (373248 * k + 352997) = 1119744 * k + 1058992 := by
    unfold C
    simp [show (373248 * k + 352997) % 2 ≠ 0 by omega]
    omega
  have h15 : C (1119744 * k + 1058992) = 559872 * k + 529496 := by
    unfold C
    simp [show (1119744 * k + 1058992) % 2 = 0 by omega]
    omega
  have h16 : C (559872 * k + 529496) = 279936 * k + 264748 := by
    unfold C
    simp [show (559872 * k + 529496) % 2 = 0 by omega]
    omega
  have h17 : C (279936 * k + 264748) = 139968 * k + 132374 := by
    unfold C
    simp [show (279936 * k + 264748) % 2 = 0 by omega]
    omega
  have h18 : C (139968 * k + 132374) = 69984 * k + 66187 := by
    unfold C
    simp [show (139968 * k + 132374) % 2 = 0 by omega]
    omega
  have h19 : C (69984 * k + 66187) = 209952 * k + 198562 := by
    unfold C
    simp [show (69984 * k + 66187) % 2 ≠ 0 by omega]
    omega
  have h20 : C (209952 * k + 198562) = 104976 * k + 99281 := by
    unfold C
    simp [show (209952 * k + 198562) % 2 = 0 by omega]
    omega
  have h21 : C (104976 * k + 99281) = 314928 * k + 297844 := by
    unfold C
    simp [show (104976 * k + 99281) % 2 ≠ 0 by omega]
    omega
  have h22 : C (314928 * k + 297844) = 157464 * k + 148922 := by
    unfold C
    simp [show (314928 * k + 297844) % 2 = 0 by omega]
    omega
  have h23 : C (157464 * k + 148922) = 78732 * k + 74461 := by
    unfold C
    simp [show (157464 * k + 148922) % 2 = 0 by omega]
    omega
  have h24 : C (78732 * k + 74461) = 236196 * k + 223384 := by
    unfold C
    simp [show (78732 * k + 74461) % 2 ≠ 0 by omega]
    omega
  have h25 : C (236196 * k + 223384) = 118098 * k + 111692 := by
    unfold C
    simp [show (236196 * k + 223384) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 111692) = 59049 * k + 55846 := by
    unfold C
    simp [show (118098 * k + 111692) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 61979) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 61979)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_62119 : ∀ k : Nat,
    iterate (65536 * k + 62119) 26 = 59049 * k + 55972 ∧
      59049 * k + 55972 < 65536 * k + 62119 := by
  intro k
  have h1 : C (65536 * k + 62119) = 196608 * k + 186358 := by
    unfold C
    simp [show (65536 * k + 62119) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 186358) = 98304 * k + 93179 := by
    unfold C
    simp [show (196608 * k + 186358) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 93179) = 294912 * k + 279538 := by
    unfold C
    simp [show (98304 * k + 93179) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 279538) = 147456 * k + 139769 := by
    unfold C
    simp [show (294912 * k + 279538) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 139769) = 442368 * k + 419308 := by
    unfold C
    simp [show (147456 * k + 139769) % 2 ≠ 0 by omega]
    omega
  have h6 : C (442368 * k + 419308) = 221184 * k + 209654 := by
    unfold C
    simp [show (442368 * k + 419308) % 2 = 0 by omega]
    omega
  have h7 : C (221184 * k + 209654) = 110592 * k + 104827 := by
    unfold C
    simp [show (221184 * k + 209654) % 2 = 0 by omega]
    omega
  have h8 : C (110592 * k + 104827) = 331776 * k + 314482 := by
    unfold C
    simp [show (110592 * k + 104827) % 2 ≠ 0 by omega]
    omega
  have h9 : C (331776 * k + 314482) = 165888 * k + 157241 := by
    unfold C
    simp [show (331776 * k + 314482) % 2 = 0 by omega]
    omega
  have h10 : C (165888 * k + 157241) = 497664 * k + 471724 := by
    unfold C
    simp [show (165888 * k + 157241) % 2 ≠ 0 by omega]
    omega
  have h11 : C (497664 * k + 471724) = 248832 * k + 235862 := by
    unfold C
    simp [show (497664 * k + 471724) % 2 = 0 by omega]
    omega
  have h12 : C (248832 * k + 235862) = 124416 * k + 117931 := by
    unfold C
    simp [show (248832 * k + 235862) % 2 = 0 by omega]
    omega
  have h13 : C (124416 * k + 117931) = 373248 * k + 353794 := by
    unfold C
    simp [show (124416 * k + 117931) % 2 ≠ 0 by omega]
    omega
  have h14 : C (373248 * k + 353794) = 186624 * k + 176897 := by
    unfold C
    simp [show (373248 * k + 353794) % 2 = 0 by omega]
    omega
  have h15 : C (186624 * k + 176897) = 559872 * k + 530692 := by
    unfold C
    simp [show (186624 * k + 176897) % 2 ≠ 0 by omega]
    omega
  have h16 : C (559872 * k + 530692) = 279936 * k + 265346 := by
    unfold C
    simp [show (559872 * k + 530692) % 2 = 0 by omega]
    omega
  have h17 : C (279936 * k + 265346) = 139968 * k + 132673 := by
    unfold C
    simp [show (279936 * k + 265346) % 2 = 0 by omega]
    omega
  have h18 : C (139968 * k + 132673) = 419904 * k + 398020 := by
    unfold C
    simp [show (139968 * k + 132673) % 2 ≠ 0 by omega]
    omega
  have h19 : C (419904 * k + 398020) = 209952 * k + 199010 := by
    unfold C
    simp [show (419904 * k + 398020) % 2 = 0 by omega]
    omega
  have h20 : C (209952 * k + 199010) = 104976 * k + 99505 := by
    unfold C
    simp [show (209952 * k + 199010) % 2 = 0 by omega]
    omega
  have h21 : C (104976 * k + 99505) = 314928 * k + 298516 := by
    unfold C
    simp [show (104976 * k + 99505) % 2 ≠ 0 by omega]
    omega
  have h22 : C (314928 * k + 298516) = 157464 * k + 149258 := by
    unfold C
    simp [show (314928 * k + 298516) % 2 = 0 by omega]
    omega
  have h23 : C (157464 * k + 149258) = 78732 * k + 74629 := by
    unfold C
    simp [show (157464 * k + 149258) % 2 = 0 by omega]
    omega
  have h24 : C (78732 * k + 74629) = 236196 * k + 223888 := by
    unfold C
    simp [show (78732 * k + 74629) % 2 ≠ 0 by omega]
    omega
  have h25 : C (236196 * k + 223888) = 118098 * k + 111944 := by
    unfold C
    simp [show (236196 * k + 223888) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 111944) = 59049 * k + 55972 := by
    unfold C
    simp [show (118098 * k + 111944) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 62119) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 62119)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_62159 : ∀ k : Nat,
    iterate (65536 * k + 62159) 26 = 59049 * k + 56008 ∧
      59049 * k + 56008 < 65536 * k + 62159 := by
  intro k
  have h1 : C (65536 * k + 62159) = 196608 * k + 186478 := by
    unfold C
    simp [show (65536 * k + 62159) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 186478) = 98304 * k + 93239 := by
    unfold C
    simp [show (196608 * k + 186478) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 93239) = 294912 * k + 279718 := by
    unfold C
    simp [show (98304 * k + 93239) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 279718) = 147456 * k + 139859 := by
    unfold C
    simp [show (294912 * k + 279718) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 139859) = 442368 * k + 419578 := by
    unfold C
    simp [show (147456 * k + 139859) % 2 ≠ 0 by omega]
    omega
  have h6 : C (442368 * k + 419578) = 221184 * k + 209789 := by
    unfold C
    simp [show (442368 * k + 419578) % 2 = 0 by omega]
    omega
  have h7 : C (221184 * k + 209789) = 663552 * k + 629368 := by
    unfold C
    simp [show (221184 * k + 209789) % 2 ≠ 0 by omega]
    omega
  have h8 : C (663552 * k + 629368) = 331776 * k + 314684 := by
    unfold C
    simp [show (663552 * k + 629368) % 2 = 0 by omega]
    omega
  have h9 : C (331776 * k + 314684) = 165888 * k + 157342 := by
    unfold C
    simp [show (331776 * k + 314684) % 2 = 0 by omega]
    omega
  have h10 : C (165888 * k + 157342) = 82944 * k + 78671 := by
    unfold C
    simp [show (165888 * k + 157342) % 2 = 0 by omega]
    omega
  have h11 : C (82944 * k + 78671) = 248832 * k + 236014 := by
    unfold C
    simp [show (82944 * k + 78671) % 2 ≠ 0 by omega]
    omega
  have h12 : C (248832 * k + 236014) = 124416 * k + 118007 := by
    unfold C
    simp [show (248832 * k + 236014) % 2 = 0 by omega]
    omega
  have h13 : C (124416 * k + 118007) = 373248 * k + 354022 := by
    unfold C
    simp [show (124416 * k + 118007) % 2 ≠ 0 by omega]
    omega
  have h14 : C (373248 * k + 354022) = 186624 * k + 177011 := by
    unfold C
    simp [show (373248 * k + 354022) % 2 = 0 by omega]
    omega
  have h15 : C (186624 * k + 177011) = 559872 * k + 531034 := by
    unfold C
    simp [show (186624 * k + 177011) % 2 ≠ 0 by omega]
    omega
  have h16 : C (559872 * k + 531034) = 279936 * k + 265517 := by
    unfold C
    simp [show (559872 * k + 531034) % 2 = 0 by omega]
    omega
  have h17 : C (279936 * k + 265517) = 839808 * k + 796552 := by
    unfold C
    simp [show (279936 * k + 265517) % 2 ≠ 0 by omega]
    omega
  have h18 : C (839808 * k + 796552) = 419904 * k + 398276 := by
    unfold C
    simp [show (839808 * k + 796552) % 2 = 0 by omega]
    omega
  have h19 : C (419904 * k + 398276) = 209952 * k + 199138 := by
    unfold C
    simp [show (419904 * k + 398276) % 2 = 0 by omega]
    omega
  have h20 : C (209952 * k + 199138) = 104976 * k + 99569 := by
    unfold C
    simp [show (209952 * k + 199138) % 2 = 0 by omega]
    omega
  have h21 : C (104976 * k + 99569) = 314928 * k + 298708 := by
    unfold C
    simp [show (104976 * k + 99569) % 2 ≠ 0 by omega]
    omega
  have h22 : C (314928 * k + 298708) = 157464 * k + 149354 := by
    unfold C
    simp [show (314928 * k + 298708) % 2 = 0 by omega]
    omega
  have h23 : C (157464 * k + 149354) = 78732 * k + 74677 := by
    unfold C
    simp [show (157464 * k + 149354) % 2 = 0 by omega]
    omega
  have h24 : C (78732 * k + 74677) = 236196 * k + 224032 := by
    unfold C
    simp [show (78732 * k + 74677) % 2 ≠ 0 by omega]
    omega
  have h25 : C (236196 * k + 224032) = 118098 * k + 112016 := by
    unfold C
    simp [show (236196 * k + 224032) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 112016) = 59049 * k + 56008 := by
    unfold C
    simp [show (118098 * k + 112016) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 62159) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 62159)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_62239 : ∀ k : Nat,
    iterate (65536 * k + 62239) 26 = 59049 * k + 56080 ∧
      59049 * k + 56080 < 65536 * k + 62239 := by
  intro k
  have h1 : C (65536 * k + 62239) = 196608 * k + 186718 := by
    unfold C
    simp [show (65536 * k + 62239) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 186718) = 98304 * k + 93359 := by
    unfold C
    simp [show (196608 * k + 186718) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 93359) = 294912 * k + 280078 := by
    unfold C
    simp [show (98304 * k + 93359) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 280078) = 147456 * k + 140039 := by
    unfold C
    simp [show (294912 * k + 280078) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 140039) = 442368 * k + 420118 := by
    unfold C
    simp [show (147456 * k + 140039) % 2 ≠ 0 by omega]
    omega
  have h6 : C (442368 * k + 420118) = 221184 * k + 210059 := by
    unfold C
    simp [show (442368 * k + 420118) % 2 = 0 by omega]
    omega
  have h7 : C (221184 * k + 210059) = 663552 * k + 630178 := by
    unfold C
    simp [show (221184 * k + 210059) % 2 ≠ 0 by omega]
    omega
  have h8 : C (663552 * k + 630178) = 331776 * k + 315089 := by
    unfold C
    simp [show (663552 * k + 630178) % 2 = 0 by omega]
    omega
  have h9 : C (331776 * k + 315089) = 995328 * k + 945268 := by
    unfold C
    simp [show (331776 * k + 315089) % 2 ≠ 0 by omega]
    omega
  have h10 : C (995328 * k + 945268) = 497664 * k + 472634 := by
    unfold C
    simp [show (995328 * k + 945268) % 2 = 0 by omega]
    omega
  have h11 : C (497664 * k + 472634) = 248832 * k + 236317 := by
    unfold C
    simp [show (497664 * k + 472634) % 2 = 0 by omega]
    omega
  have h12 : C (248832 * k + 236317) = 746496 * k + 708952 := by
    unfold C
    simp [show (248832 * k + 236317) % 2 ≠ 0 by omega]
    omega
  have h13 : C (746496 * k + 708952) = 373248 * k + 354476 := by
    unfold C
    simp [show (746496 * k + 708952) % 2 = 0 by omega]
    omega
  have h14 : C (373248 * k + 354476) = 186624 * k + 177238 := by
    unfold C
    simp [show (373248 * k + 354476) % 2 = 0 by omega]
    omega
  have h15 : C (186624 * k + 177238) = 93312 * k + 88619 := by
    unfold C
    simp [show (186624 * k + 177238) % 2 = 0 by omega]
    omega
  have h16 : C (93312 * k + 88619) = 279936 * k + 265858 := by
    unfold C
    simp [show (93312 * k + 88619) % 2 ≠ 0 by omega]
    omega
  have h17 : C (279936 * k + 265858) = 139968 * k + 132929 := by
    unfold C
    simp [show (279936 * k + 265858) % 2 = 0 by omega]
    omega
  have h18 : C (139968 * k + 132929) = 419904 * k + 398788 := by
    unfold C
    simp [show (139968 * k + 132929) % 2 ≠ 0 by omega]
    omega
  have h19 : C (419904 * k + 398788) = 209952 * k + 199394 := by
    unfold C
    simp [show (419904 * k + 398788) % 2 = 0 by omega]
    omega
  have h20 : C (209952 * k + 199394) = 104976 * k + 99697 := by
    unfold C
    simp [show (209952 * k + 199394) % 2 = 0 by omega]
    omega
  have h21 : C (104976 * k + 99697) = 314928 * k + 299092 := by
    unfold C
    simp [show (104976 * k + 99697) % 2 ≠ 0 by omega]
    omega
  have h22 : C (314928 * k + 299092) = 157464 * k + 149546 := by
    unfold C
    simp [show (314928 * k + 299092) % 2 = 0 by omega]
    omega
  have h23 : C (157464 * k + 149546) = 78732 * k + 74773 := by
    unfold C
    simp [show (157464 * k + 149546) % 2 = 0 by omega]
    omega
  have h24 : C (78732 * k + 74773) = 236196 * k + 224320 := by
    unfold C
    simp [show (78732 * k + 74773) % 2 ≠ 0 by omega]
    omega
  have h25 : C (236196 * k + 224320) = 118098 * k + 112160 := by
    unfold C
    simp [show (236196 * k + 224320) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 112160) = 59049 * k + 56080 := by
    unfold C
    simp [show (118098 * k + 112160) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 62239) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 62239)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_62279 : ∀ k : Nat,
    iterate (65536 * k + 62279) 26 = 59049 * k + 56116 ∧
      59049 * k + 56116 < 65536 * k + 62279 := by
  intro k
  have h1 : C (65536 * k + 62279) = 196608 * k + 186838 := by
    unfold C
    simp [show (65536 * k + 62279) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 186838) = 98304 * k + 93419 := by
    unfold C
    simp [show (196608 * k + 186838) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 93419) = 294912 * k + 280258 := by
    unfold C
    simp [show (98304 * k + 93419) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 280258) = 147456 * k + 140129 := by
    unfold C
    simp [show (294912 * k + 280258) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 140129) = 442368 * k + 420388 := by
    unfold C
    simp [show (147456 * k + 140129) % 2 ≠ 0 by omega]
    omega
  have h6 : C (442368 * k + 420388) = 221184 * k + 210194 := by
    unfold C
    simp [show (442368 * k + 420388) % 2 = 0 by omega]
    omega
  have h7 : C (221184 * k + 210194) = 110592 * k + 105097 := by
    unfold C
    simp [show (221184 * k + 210194) % 2 = 0 by omega]
    omega
  have h8 : C (110592 * k + 105097) = 331776 * k + 315292 := by
    unfold C
    simp [show (110592 * k + 105097) % 2 ≠ 0 by omega]
    omega
  have h9 : C (331776 * k + 315292) = 165888 * k + 157646 := by
    unfold C
    simp [show (331776 * k + 315292) % 2 = 0 by omega]
    omega
  have h10 : C (165888 * k + 157646) = 82944 * k + 78823 := by
    unfold C
    simp [show (165888 * k + 157646) % 2 = 0 by omega]
    omega
  have h11 : C (82944 * k + 78823) = 248832 * k + 236470 := by
    unfold C
    simp [show (82944 * k + 78823) % 2 ≠ 0 by omega]
    omega
  have h12 : C (248832 * k + 236470) = 124416 * k + 118235 := by
    unfold C
    simp [show (248832 * k + 236470) % 2 = 0 by omega]
    omega
  have h13 : C (124416 * k + 118235) = 373248 * k + 354706 := by
    unfold C
    simp [show (124416 * k + 118235) % 2 ≠ 0 by omega]
    omega
  have h14 : C (373248 * k + 354706) = 186624 * k + 177353 := by
    unfold C
    simp [show (373248 * k + 354706) % 2 = 0 by omega]
    omega
  have h15 : C (186624 * k + 177353) = 559872 * k + 532060 := by
    unfold C
    simp [show (186624 * k + 177353) % 2 ≠ 0 by omega]
    omega
  have h16 : C (559872 * k + 532060) = 279936 * k + 266030 := by
    unfold C
    simp [show (559872 * k + 532060) % 2 = 0 by omega]
    omega
  have h17 : C (279936 * k + 266030) = 139968 * k + 133015 := by
    unfold C
    simp [show (279936 * k + 266030) % 2 = 0 by omega]
    omega
  have h18 : C (139968 * k + 133015) = 419904 * k + 399046 := by
    unfold C
    simp [show (139968 * k + 133015) % 2 ≠ 0 by omega]
    omega
  have h19 : C (419904 * k + 399046) = 209952 * k + 199523 := by
    unfold C
    simp [show (419904 * k + 399046) % 2 = 0 by omega]
    omega
  have h20 : C (209952 * k + 199523) = 629856 * k + 598570 := by
    unfold C
    simp [show (209952 * k + 199523) % 2 ≠ 0 by omega]
    omega
  have h21 : C (629856 * k + 598570) = 314928 * k + 299285 := by
    unfold C
    simp [show (629856 * k + 598570) % 2 = 0 by omega]
    omega
  have h22 : C (314928 * k + 299285) = 944784 * k + 897856 := by
    unfold C
    simp [show (314928 * k + 299285) % 2 ≠ 0 by omega]
    omega
  have h23 : C (944784 * k + 897856) = 472392 * k + 448928 := by
    unfold C
    simp [show (944784 * k + 897856) % 2 = 0 by omega]
    omega
  have h24 : C (472392 * k + 448928) = 236196 * k + 224464 := by
    unfold C
    simp [show (472392 * k + 448928) % 2 = 0 by omega]
    omega
  have h25 : C (236196 * k + 224464) = 118098 * k + 112232 := by
    unfold C
    simp [show (236196 * k + 224464) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 112232) = 59049 * k + 56116 := by
    unfold C
    simp [show (118098 * k + 112232) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 62279) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 62279)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_62719 : ∀ k : Nat,
    iterate (65536 * k + 62719) 26 = 59049 * k + 56512 ∧
      59049 * k + 56512 < 65536 * k + 62719 := by
  intro k
  have h1 : C (65536 * k + 62719) = 196608 * k + 188158 := by
    unfold C
    simp [show (65536 * k + 62719) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 188158) = 98304 * k + 94079 := by
    unfold C
    simp [show (196608 * k + 188158) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 94079) = 294912 * k + 282238 := by
    unfold C
    simp [show (98304 * k + 94079) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 282238) = 147456 * k + 141119 := by
    unfold C
    simp [show (294912 * k + 282238) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 141119) = 442368 * k + 423358 := by
    unfold C
    simp [show (147456 * k + 141119) % 2 ≠ 0 by omega]
    omega
  have h6 : C (442368 * k + 423358) = 221184 * k + 211679 := by
    unfold C
    simp [show (442368 * k + 423358) % 2 = 0 by omega]
    omega
  have h7 : C (221184 * k + 211679) = 663552 * k + 635038 := by
    unfold C
    simp [show (221184 * k + 211679) % 2 ≠ 0 by omega]
    omega
  have h8 : C (663552 * k + 635038) = 331776 * k + 317519 := by
    unfold C
    simp [show (663552 * k + 635038) % 2 = 0 by omega]
    omega
  have h9 : C (331776 * k + 317519) = 995328 * k + 952558 := by
    unfold C
    simp [show (331776 * k + 317519) % 2 ≠ 0 by omega]
    omega
  have h10 : C (995328 * k + 952558) = 497664 * k + 476279 := by
    unfold C
    simp [show (995328 * k + 952558) % 2 = 0 by omega]
    omega
  have h11 : C (497664 * k + 476279) = 1492992 * k + 1428838 := by
    unfold C
    simp [show (497664 * k + 476279) % 2 ≠ 0 by omega]
    omega
  have h12 : C (1492992 * k + 1428838) = 746496 * k + 714419 := by
    unfold C
    simp [show (1492992 * k + 1428838) % 2 = 0 by omega]
    omega
  have h13 : C (746496 * k + 714419) = 2239488 * k + 2143258 := by
    unfold C
    simp [show (746496 * k + 714419) % 2 ≠ 0 by omega]
    omega
  have h14 : C (2239488 * k + 2143258) = 1119744 * k + 1071629 := by
    unfold C
    simp [show (2239488 * k + 2143258) % 2 = 0 by omega]
    omega
  have h15 : C (1119744 * k + 1071629) = 3359232 * k + 3214888 := by
    unfold C
    simp [show (1119744 * k + 1071629) % 2 ≠ 0 by omega]
    omega
  have h16 : C (3359232 * k + 3214888) = 1679616 * k + 1607444 := by
    unfold C
    simp [show (3359232 * k + 3214888) % 2 = 0 by omega]
    omega
  have h17 : C (1679616 * k + 1607444) = 839808 * k + 803722 := by
    unfold C
    simp [show (1679616 * k + 1607444) % 2 = 0 by omega]
    omega
  have h18 : C (839808 * k + 803722) = 419904 * k + 401861 := by
    unfold C
    simp [show (839808 * k + 803722) % 2 = 0 by omega]
    omega
  have h19 : C (419904 * k + 401861) = 1259712 * k + 1205584 := by
    unfold C
    simp [show (419904 * k + 401861) % 2 ≠ 0 by omega]
    omega
  have h20 : C (1259712 * k + 1205584) = 629856 * k + 602792 := by
    unfold C
    simp [show (1259712 * k + 1205584) % 2 = 0 by omega]
    omega
  have h21 : C (629856 * k + 602792) = 314928 * k + 301396 := by
    unfold C
    simp [show (629856 * k + 602792) % 2 = 0 by omega]
    omega
  have h22 : C (314928 * k + 301396) = 157464 * k + 150698 := by
    unfold C
    simp [show (314928 * k + 301396) % 2 = 0 by omega]
    omega
  have h23 : C (157464 * k + 150698) = 78732 * k + 75349 := by
    unfold C
    simp [show (157464 * k + 150698) % 2 = 0 by omega]
    omega
  have h24 : C (78732 * k + 75349) = 236196 * k + 226048 := by
    unfold C
    simp [show (78732 * k + 75349) % 2 ≠ 0 by omega]
    omega
  have h25 : C (236196 * k + 226048) = 118098 * k + 113024 := by
    unfold C
    simp [show (236196 * k + 226048) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 113024) = 59049 * k + 56512 := by
    unfold C
    simp [show (118098 * k + 113024) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 62719) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 62719)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_62943 : ∀ k : Nat,
    iterate (65536 * k + 62943) 26 = 59049 * k + 56714 ∧
      59049 * k + 56714 < 65536 * k + 62943 := by
  intro k
  have h1 : C (65536 * k + 62943) = 196608 * k + 188830 := by
    unfold C
    simp [show (65536 * k + 62943) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 188830) = 98304 * k + 94415 := by
    unfold C
    simp [show (196608 * k + 188830) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 94415) = 294912 * k + 283246 := by
    unfold C
    simp [show (98304 * k + 94415) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 283246) = 147456 * k + 141623 := by
    unfold C
    simp [show (294912 * k + 283246) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 141623) = 442368 * k + 424870 := by
    unfold C
    simp [show (147456 * k + 141623) % 2 ≠ 0 by omega]
    omega
  have h6 : C (442368 * k + 424870) = 221184 * k + 212435 := by
    unfold C
    simp [show (442368 * k + 424870) % 2 = 0 by omega]
    omega
  have h7 : C (221184 * k + 212435) = 663552 * k + 637306 := by
    unfold C
    simp [show (221184 * k + 212435) % 2 ≠ 0 by omega]
    omega
  have h8 : C (663552 * k + 637306) = 331776 * k + 318653 := by
    unfold C
    simp [show (663552 * k + 637306) % 2 = 0 by omega]
    omega
  have h9 : C (331776 * k + 318653) = 995328 * k + 955960 := by
    unfold C
    simp [show (331776 * k + 318653) % 2 ≠ 0 by omega]
    omega
  have h10 : C (995328 * k + 955960) = 497664 * k + 477980 := by
    unfold C
    simp [show (995328 * k + 955960) % 2 = 0 by omega]
    omega
  have h11 : C (497664 * k + 477980) = 248832 * k + 238990 := by
    unfold C
    simp [show (497664 * k + 477980) % 2 = 0 by omega]
    omega
  have h12 : C (248832 * k + 238990) = 124416 * k + 119495 := by
    unfold C
    simp [show (248832 * k + 238990) % 2 = 0 by omega]
    omega
  have h13 : C (124416 * k + 119495) = 373248 * k + 358486 := by
    unfold C
    simp [show (124416 * k + 119495) % 2 ≠ 0 by omega]
    omega
  have h14 : C (373248 * k + 358486) = 186624 * k + 179243 := by
    unfold C
    simp [show (373248 * k + 358486) % 2 = 0 by omega]
    omega
  have h15 : C (186624 * k + 179243) = 559872 * k + 537730 := by
    unfold C
    simp [show (186624 * k + 179243) % 2 ≠ 0 by omega]
    omega
  have h16 : C (559872 * k + 537730) = 279936 * k + 268865 := by
    unfold C
    simp [show (559872 * k + 537730) % 2 = 0 by omega]
    omega
  have h17 : C (279936 * k + 268865) = 839808 * k + 806596 := by
    unfold C
    simp [show (279936 * k + 268865) % 2 ≠ 0 by omega]
    omega
  have h18 : C (839808 * k + 806596) = 419904 * k + 403298 := by
    unfold C
    simp [show (839808 * k + 806596) % 2 = 0 by omega]
    omega
  have h19 : C (419904 * k + 403298) = 209952 * k + 201649 := by
    unfold C
    simp [show (419904 * k + 403298) % 2 = 0 by omega]
    omega
  have h20 : C (209952 * k + 201649) = 629856 * k + 604948 := by
    unfold C
    simp [show (209952 * k + 201649) % 2 ≠ 0 by omega]
    omega
  have h21 : C (629856 * k + 604948) = 314928 * k + 302474 := by
    unfold C
    simp [show (629856 * k + 604948) % 2 = 0 by omega]
    omega
  have h22 : C (314928 * k + 302474) = 157464 * k + 151237 := by
    unfold C
    simp [show (314928 * k + 302474) % 2 = 0 by omega]
    omega
  have h23 : C (157464 * k + 151237) = 472392 * k + 453712 := by
    unfold C
    simp [show (157464 * k + 151237) % 2 ≠ 0 by omega]
    omega
  have h24 : C (472392 * k + 453712) = 236196 * k + 226856 := by
    unfold C
    simp [show (472392 * k + 453712) % 2 = 0 by omega]
    omega
  have h25 : C (236196 * k + 226856) = 118098 * k + 113428 := by
    unfold C
    simp [show (236196 * k + 226856) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 113428) = 59049 * k + 56714 := by
    unfold C
    simp [show (118098 * k + 113428) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 62943) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 62943)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_63023 : ∀ k : Nat,
    iterate (65536 * k + 63023) 26 = 59049 * k + 56786 ∧
      59049 * k + 56786 < 65536 * k + 63023 := by
  intro k
  have h1 : C (65536 * k + 63023) = 196608 * k + 189070 := by
    unfold C
    simp [show (65536 * k + 63023) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 189070) = 98304 * k + 94535 := by
    unfold C
    simp [show (196608 * k + 189070) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 94535) = 294912 * k + 283606 := by
    unfold C
    simp [show (98304 * k + 94535) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 283606) = 147456 * k + 141803 := by
    unfold C
    simp [show (294912 * k + 283606) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 141803) = 442368 * k + 425410 := by
    unfold C
    simp [show (147456 * k + 141803) % 2 ≠ 0 by omega]
    omega
  have h6 : C (442368 * k + 425410) = 221184 * k + 212705 := by
    unfold C
    simp [show (442368 * k + 425410) % 2 = 0 by omega]
    omega
  have h7 : C (221184 * k + 212705) = 663552 * k + 638116 := by
    unfold C
    simp [show (221184 * k + 212705) % 2 ≠ 0 by omega]
    omega
  have h8 : C (663552 * k + 638116) = 331776 * k + 319058 := by
    unfold C
    simp [show (663552 * k + 638116) % 2 = 0 by omega]
    omega
  have h9 : C (331776 * k + 319058) = 165888 * k + 159529 := by
    unfold C
    simp [show (331776 * k + 319058) % 2 = 0 by omega]
    omega
  have h10 : C (165888 * k + 159529) = 497664 * k + 478588 := by
    unfold C
    simp [show (165888 * k + 159529) % 2 ≠ 0 by omega]
    omega
  have h11 : C (497664 * k + 478588) = 248832 * k + 239294 := by
    unfold C
    simp [show (497664 * k + 478588) % 2 = 0 by omega]
    omega
  have h12 : C (248832 * k + 239294) = 124416 * k + 119647 := by
    unfold C
    simp [show (248832 * k + 239294) % 2 = 0 by omega]
    omega
  have h13 : C (124416 * k + 119647) = 373248 * k + 358942 := by
    unfold C
    simp [show (124416 * k + 119647) % 2 ≠ 0 by omega]
    omega
  have h14 : C (373248 * k + 358942) = 186624 * k + 179471 := by
    unfold C
    simp [show (373248 * k + 358942) % 2 = 0 by omega]
    omega
  have h15 : C (186624 * k + 179471) = 559872 * k + 538414 := by
    unfold C
    simp [show (186624 * k + 179471) % 2 ≠ 0 by omega]
    omega
  have h16 : C (559872 * k + 538414) = 279936 * k + 269207 := by
    unfold C
    simp [show (559872 * k + 538414) % 2 = 0 by omega]
    omega
  have h17 : C (279936 * k + 269207) = 839808 * k + 807622 := by
    unfold C
    simp [show (279936 * k + 269207) % 2 ≠ 0 by omega]
    omega
  have h18 : C (839808 * k + 807622) = 419904 * k + 403811 := by
    unfold C
    simp [show (839808 * k + 807622) % 2 = 0 by omega]
    omega
  have h19 : C (419904 * k + 403811) = 1259712 * k + 1211434 := by
    unfold C
    simp [show (419904 * k + 403811) % 2 ≠ 0 by omega]
    omega
  have h20 : C (1259712 * k + 1211434) = 629856 * k + 605717 := by
    unfold C
    simp [show (1259712 * k + 1211434) % 2 = 0 by omega]
    omega
  have h21 : C (629856 * k + 605717) = 1889568 * k + 1817152 := by
    unfold C
    simp [show (629856 * k + 605717) % 2 ≠ 0 by omega]
    omega
  have h22 : C (1889568 * k + 1817152) = 944784 * k + 908576 := by
    unfold C
    simp [show (1889568 * k + 1817152) % 2 = 0 by omega]
    omega
  have h23 : C (944784 * k + 908576) = 472392 * k + 454288 := by
    unfold C
    simp [show (944784 * k + 908576) % 2 = 0 by omega]
    omega
  have h24 : C (472392 * k + 454288) = 236196 * k + 227144 := by
    unfold C
    simp [show (472392 * k + 454288) % 2 = 0 by omega]
    omega
  have h25 : C (236196 * k + 227144) = 118098 * k + 113572 := by
    unfold C
    simp [show (236196 * k + 227144) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 113572) = 59049 * k + 56786 := by
    unfold C
    simp [show (118098 * k + 113572) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 63023) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 63023)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_63335 : ∀ k : Nat,
    iterate (65536 * k + 63335) 26 = 59049 * k + 57067 ∧
      59049 * k + 57067 < 65536 * k + 63335 := by
  intro k
  have h1 : C (65536 * k + 63335) = 196608 * k + 190006 := by
    unfold C
    simp [show (65536 * k + 63335) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 190006) = 98304 * k + 95003 := by
    unfold C
    simp [show (196608 * k + 190006) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 95003) = 294912 * k + 285010 := by
    unfold C
    simp [show (98304 * k + 95003) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 285010) = 147456 * k + 142505 := by
    unfold C
    simp [show (294912 * k + 285010) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 142505) = 442368 * k + 427516 := by
    unfold C
    simp [show (147456 * k + 142505) % 2 ≠ 0 by omega]
    omega
  have h6 : C (442368 * k + 427516) = 221184 * k + 213758 := by
    unfold C
    simp [show (442368 * k + 427516) % 2 = 0 by omega]
    omega
  have h7 : C (221184 * k + 213758) = 110592 * k + 106879 := by
    unfold C
    simp [show (221184 * k + 213758) % 2 = 0 by omega]
    omega
  have h8 : C (110592 * k + 106879) = 331776 * k + 320638 := by
    unfold C
    simp [show (110592 * k + 106879) % 2 ≠ 0 by omega]
    omega
  have h9 : C (331776 * k + 320638) = 165888 * k + 160319 := by
    unfold C
    simp [show (331776 * k + 320638) % 2 = 0 by omega]
    omega
  have h10 : C (165888 * k + 160319) = 497664 * k + 480958 := by
    unfold C
    simp [show (165888 * k + 160319) % 2 ≠ 0 by omega]
    omega
  have h11 : C (497664 * k + 480958) = 248832 * k + 240479 := by
    unfold C
    simp [show (497664 * k + 480958) % 2 = 0 by omega]
    omega
  have h12 : C (248832 * k + 240479) = 746496 * k + 721438 := by
    unfold C
    simp [show (248832 * k + 240479) % 2 ≠ 0 by omega]
    omega
  have h13 : C (746496 * k + 721438) = 373248 * k + 360719 := by
    unfold C
    simp [show (746496 * k + 721438) % 2 = 0 by omega]
    omega
  have h14 : C (373248 * k + 360719) = 1119744 * k + 1082158 := by
    unfold C
    simp [show (373248 * k + 360719) % 2 ≠ 0 by omega]
    omega
  have h15 : C (1119744 * k + 1082158) = 559872 * k + 541079 := by
    unfold C
    simp [show (1119744 * k + 1082158) % 2 = 0 by omega]
    omega
  have h16 : C (559872 * k + 541079) = 1679616 * k + 1623238 := by
    unfold C
    simp [show (559872 * k + 541079) % 2 ≠ 0 by omega]
    omega
  have h17 : C (1679616 * k + 1623238) = 839808 * k + 811619 := by
    unfold C
    simp [show (1679616 * k + 1623238) % 2 = 0 by omega]
    omega
  have h18 : C (839808 * k + 811619) = 2519424 * k + 2434858 := by
    unfold C
    simp [show (839808 * k + 811619) % 2 ≠ 0 by omega]
    omega
  have h19 : C (2519424 * k + 2434858) = 1259712 * k + 1217429 := by
    unfold C
    simp [show (2519424 * k + 2434858) % 2 = 0 by omega]
    omega
  have h20 : C (1259712 * k + 1217429) = 3779136 * k + 3652288 := by
    unfold C
    simp [show (1259712 * k + 1217429) % 2 ≠ 0 by omega]
    omega
  have h21 : C (3779136 * k + 3652288) = 1889568 * k + 1826144 := by
    unfold C
    simp [show (3779136 * k + 3652288) % 2 = 0 by omega]
    omega
  have h22 : C (1889568 * k + 1826144) = 944784 * k + 913072 := by
    unfold C
    simp [show (1889568 * k + 1826144) % 2 = 0 by omega]
    omega
  have h23 : C (944784 * k + 913072) = 472392 * k + 456536 := by
    unfold C
    simp [show (944784 * k + 913072) % 2 = 0 by omega]
    omega
  have h24 : C (472392 * k + 456536) = 236196 * k + 228268 := by
    unfold C
    simp [show (472392 * k + 456536) % 2 = 0 by omega]
    omega
  have h25 : C (236196 * k + 228268) = 118098 * k + 114134 := by
    unfold C
    simp [show (236196 * k + 228268) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 114134) = 59049 * k + 57067 := by
    unfold C
    simp [show (118098 * k + 114134) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 63335) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 63335)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_63519 : ∀ k : Nat,
    iterate (65536 * k + 63519) 26 = 59049 * k + 57233 ∧
      59049 * k + 57233 < 65536 * k + 63519 := by
  intro k
  have h1 : C (65536 * k + 63519) = 196608 * k + 190558 := by
    unfold C
    simp [show (65536 * k + 63519) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 190558) = 98304 * k + 95279 := by
    unfold C
    simp [show (196608 * k + 190558) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 95279) = 294912 * k + 285838 := by
    unfold C
    simp [show (98304 * k + 95279) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 285838) = 147456 * k + 142919 := by
    unfold C
    simp [show (294912 * k + 285838) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 142919) = 442368 * k + 428758 := by
    unfold C
    simp [show (147456 * k + 142919) % 2 ≠ 0 by omega]
    omega
  have h6 : C (442368 * k + 428758) = 221184 * k + 214379 := by
    unfold C
    simp [show (442368 * k + 428758) % 2 = 0 by omega]
    omega
  have h7 : C (221184 * k + 214379) = 663552 * k + 643138 := by
    unfold C
    simp [show (221184 * k + 214379) % 2 ≠ 0 by omega]
    omega
  have h8 : C (663552 * k + 643138) = 331776 * k + 321569 := by
    unfold C
    simp [show (663552 * k + 643138) % 2 = 0 by omega]
    omega
  have h9 : C (331776 * k + 321569) = 995328 * k + 964708 := by
    unfold C
    simp [show (331776 * k + 321569) % 2 ≠ 0 by omega]
    omega
  have h10 : C (995328 * k + 964708) = 497664 * k + 482354 := by
    unfold C
    simp [show (995328 * k + 964708) % 2 = 0 by omega]
    omega
  have h11 : C (497664 * k + 482354) = 248832 * k + 241177 := by
    unfold C
    simp [show (497664 * k + 482354) % 2 = 0 by omega]
    omega
  have h12 : C (248832 * k + 241177) = 746496 * k + 723532 := by
    unfold C
    simp [show (248832 * k + 241177) % 2 ≠ 0 by omega]
    omega
  have h13 : C (746496 * k + 723532) = 373248 * k + 361766 := by
    unfold C
    simp [show (746496 * k + 723532) % 2 = 0 by omega]
    omega
  have h14 : C (373248 * k + 361766) = 186624 * k + 180883 := by
    unfold C
    simp [show (373248 * k + 361766) % 2 = 0 by omega]
    omega
  have h15 : C (186624 * k + 180883) = 559872 * k + 542650 := by
    unfold C
    simp [show (186624 * k + 180883) % 2 ≠ 0 by omega]
    omega
  have h16 : C (559872 * k + 542650) = 279936 * k + 271325 := by
    unfold C
    simp [show (559872 * k + 542650) % 2 = 0 by omega]
    omega
  have h17 : C (279936 * k + 271325) = 839808 * k + 813976 := by
    unfold C
    simp [show (279936 * k + 271325) % 2 ≠ 0 by omega]
    omega
  have h18 : C (839808 * k + 813976) = 419904 * k + 406988 := by
    unfold C
    simp [show (839808 * k + 813976) % 2 = 0 by omega]
    omega
  have h19 : C (419904 * k + 406988) = 209952 * k + 203494 := by
    unfold C
    simp [show (419904 * k + 406988) % 2 = 0 by omega]
    omega
  have h20 : C (209952 * k + 203494) = 104976 * k + 101747 := by
    unfold C
    simp [show (209952 * k + 203494) % 2 = 0 by omega]
    omega
  have h21 : C (104976 * k + 101747) = 314928 * k + 305242 := by
    unfold C
    simp [show (104976 * k + 101747) % 2 ≠ 0 by omega]
    omega
  have h22 : C (314928 * k + 305242) = 157464 * k + 152621 := by
    unfold C
    simp [show (314928 * k + 305242) % 2 = 0 by omega]
    omega
  have h23 : C (157464 * k + 152621) = 472392 * k + 457864 := by
    unfold C
    simp [show (157464 * k + 152621) % 2 ≠ 0 by omega]
    omega
  have h24 : C (472392 * k + 457864) = 236196 * k + 228932 := by
    unfold C
    simp [show (472392 * k + 457864) % 2 = 0 by omega]
    omega
  have h25 : C (236196 * k + 228932) = 118098 * k + 114466 := by
    unfold C
    simp [show (236196 * k + 228932) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 114466) = 59049 * k + 57233 := by
    unfold C
    simp [show (118098 * k + 114466) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 63519) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 63519)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_63551 : ∀ k : Nat,
    iterate (65536 * k + 63551) 26 = 59049 * k + 57262 ∧
      59049 * k + 57262 < 65536 * k + 63551 := by
  intro k
  have h1 : C (65536 * k + 63551) = 196608 * k + 190654 := by
    unfold C
    simp [show (65536 * k + 63551) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 190654) = 98304 * k + 95327 := by
    unfold C
    simp [show (196608 * k + 190654) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 95327) = 294912 * k + 285982 := by
    unfold C
    simp [show (98304 * k + 95327) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 285982) = 147456 * k + 142991 := by
    unfold C
    simp [show (294912 * k + 285982) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 142991) = 442368 * k + 428974 := by
    unfold C
    simp [show (147456 * k + 142991) % 2 ≠ 0 by omega]
    omega
  have h6 : C (442368 * k + 428974) = 221184 * k + 214487 := by
    unfold C
    simp [show (442368 * k + 428974) % 2 = 0 by omega]
    omega
  have h7 : C (221184 * k + 214487) = 663552 * k + 643462 := by
    unfold C
    simp [show (221184 * k + 214487) % 2 ≠ 0 by omega]
    omega
  have h8 : C (663552 * k + 643462) = 331776 * k + 321731 := by
    unfold C
    simp [show (663552 * k + 643462) % 2 = 0 by omega]
    omega
  have h9 : C (331776 * k + 321731) = 995328 * k + 965194 := by
    unfold C
    simp [show (331776 * k + 321731) % 2 ≠ 0 by omega]
    omega
  have h10 : C (995328 * k + 965194) = 497664 * k + 482597 := by
    unfold C
    simp [show (995328 * k + 965194) % 2 = 0 by omega]
    omega
  have h11 : C (497664 * k + 482597) = 1492992 * k + 1447792 := by
    unfold C
    simp [show (497664 * k + 482597) % 2 ≠ 0 by omega]
    omega
  have h12 : C (1492992 * k + 1447792) = 746496 * k + 723896 := by
    unfold C
    simp [show (1492992 * k + 1447792) % 2 = 0 by omega]
    omega
  have h13 : C (746496 * k + 723896) = 373248 * k + 361948 := by
    unfold C
    simp [show (746496 * k + 723896) % 2 = 0 by omega]
    omega
  have h14 : C (373248 * k + 361948) = 186624 * k + 180974 := by
    unfold C
    simp [show (373248 * k + 361948) % 2 = 0 by omega]
    omega
  have h15 : C (186624 * k + 180974) = 93312 * k + 90487 := by
    unfold C
    simp [show (186624 * k + 180974) % 2 = 0 by omega]
    omega
  have h16 : C (93312 * k + 90487) = 279936 * k + 271462 := by
    unfold C
    simp [show (93312 * k + 90487) % 2 ≠ 0 by omega]
    omega
  have h17 : C (279936 * k + 271462) = 139968 * k + 135731 := by
    unfold C
    simp [show (279936 * k + 271462) % 2 = 0 by omega]
    omega
  have h18 : C (139968 * k + 135731) = 419904 * k + 407194 := by
    unfold C
    simp [show (139968 * k + 135731) % 2 ≠ 0 by omega]
    omega
  have h19 : C (419904 * k + 407194) = 209952 * k + 203597 := by
    unfold C
    simp [show (419904 * k + 407194) % 2 = 0 by omega]
    omega
  have h20 : C (209952 * k + 203597) = 629856 * k + 610792 := by
    unfold C
    simp [show (209952 * k + 203597) % 2 ≠ 0 by omega]
    omega
  have h21 : C (629856 * k + 610792) = 314928 * k + 305396 := by
    unfold C
    simp [show (629856 * k + 610792) % 2 = 0 by omega]
    omega
  have h22 : C (314928 * k + 305396) = 157464 * k + 152698 := by
    unfold C
    simp [show (314928 * k + 305396) % 2 = 0 by omega]
    omega
  have h23 : C (157464 * k + 152698) = 78732 * k + 76349 := by
    unfold C
    simp [show (157464 * k + 152698) % 2 = 0 by omega]
    omega
  have h24 : C (78732 * k + 76349) = 236196 * k + 229048 := by
    unfold C
    simp [show (78732 * k + 76349) % 2 ≠ 0 by omega]
    omega
  have h25 : C (236196 * k + 229048) = 118098 * k + 114524 := by
    unfold C
    simp [show (236196 * k + 229048) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 114524) = 59049 * k + 57262 := by
    unfold C
    simp [show (118098 * k + 114524) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 63551) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 63551)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_63591 : ∀ k : Nat,
    iterate (65536 * k + 63591) 26 = 59049 * k + 57298 ∧
      59049 * k + 57298 < 65536 * k + 63591 := by
  intro k
  have h1 : C (65536 * k + 63591) = 196608 * k + 190774 := by
    unfold C
    simp [show (65536 * k + 63591) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 190774) = 98304 * k + 95387 := by
    unfold C
    simp [show (196608 * k + 190774) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 95387) = 294912 * k + 286162 := by
    unfold C
    simp [show (98304 * k + 95387) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 286162) = 147456 * k + 143081 := by
    unfold C
    simp [show (294912 * k + 286162) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 143081) = 442368 * k + 429244 := by
    unfold C
    simp [show (147456 * k + 143081) % 2 ≠ 0 by omega]
    omega
  have h6 : C (442368 * k + 429244) = 221184 * k + 214622 := by
    unfold C
    simp [show (442368 * k + 429244) % 2 = 0 by omega]
    omega
  have h7 : C (221184 * k + 214622) = 110592 * k + 107311 := by
    unfold C
    simp [show (221184 * k + 214622) % 2 = 0 by omega]
    omega
  have h8 : C (110592 * k + 107311) = 331776 * k + 321934 := by
    unfold C
    simp [show (110592 * k + 107311) % 2 ≠ 0 by omega]
    omega
  have h9 : C (331776 * k + 321934) = 165888 * k + 160967 := by
    unfold C
    simp [show (331776 * k + 321934) % 2 = 0 by omega]
    omega
  have h10 : C (165888 * k + 160967) = 497664 * k + 482902 := by
    unfold C
    simp [show (165888 * k + 160967) % 2 ≠ 0 by omega]
    omega
  have h11 : C (497664 * k + 482902) = 248832 * k + 241451 := by
    unfold C
    simp [show (497664 * k + 482902) % 2 = 0 by omega]
    omega
  have h12 : C (248832 * k + 241451) = 746496 * k + 724354 := by
    unfold C
    simp [show (248832 * k + 241451) % 2 ≠ 0 by omega]
    omega
  have h13 : C (746496 * k + 724354) = 373248 * k + 362177 := by
    unfold C
    simp [show (746496 * k + 724354) % 2 = 0 by omega]
    omega
  have h14 : C (373248 * k + 362177) = 1119744 * k + 1086532 := by
    unfold C
    simp [show (373248 * k + 362177) % 2 ≠ 0 by omega]
    omega
  have h15 : C (1119744 * k + 1086532) = 559872 * k + 543266 := by
    unfold C
    simp [show (1119744 * k + 1086532) % 2 = 0 by omega]
    omega
  have h16 : C (559872 * k + 543266) = 279936 * k + 271633 := by
    unfold C
    simp [show (559872 * k + 543266) % 2 = 0 by omega]
    omega
  have h17 : C (279936 * k + 271633) = 839808 * k + 814900 := by
    unfold C
    simp [show (279936 * k + 271633) % 2 ≠ 0 by omega]
    omega
  have h18 : C (839808 * k + 814900) = 419904 * k + 407450 := by
    unfold C
    simp [show (839808 * k + 814900) % 2 = 0 by omega]
    omega
  have h19 : C (419904 * k + 407450) = 209952 * k + 203725 := by
    unfold C
    simp [show (419904 * k + 407450) % 2 = 0 by omega]
    omega
  have h20 : C (209952 * k + 203725) = 629856 * k + 611176 := by
    unfold C
    simp [show (209952 * k + 203725) % 2 ≠ 0 by omega]
    omega
  have h21 : C (629856 * k + 611176) = 314928 * k + 305588 := by
    unfold C
    simp [show (629856 * k + 611176) % 2 = 0 by omega]
    omega
  have h22 : C (314928 * k + 305588) = 157464 * k + 152794 := by
    unfold C
    simp [show (314928 * k + 305588) % 2 = 0 by omega]
    omega
  have h23 : C (157464 * k + 152794) = 78732 * k + 76397 := by
    unfold C
    simp [show (157464 * k + 152794) % 2 = 0 by omega]
    omega
  have h24 : C (78732 * k + 76397) = 236196 * k + 229192 := by
    unfold C
    simp [show (78732 * k + 76397) % 2 ≠ 0 by omega]
    omega
  have h25 : C (236196 * k + 229192) = 118098 * k + 114596 := by
    unfold C
    simp [show (236196 * k + 229192) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 114596) = 59049 * k + 57298 := by
    unfold C
    simp [show (118098 * k + 114596) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 63591) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 63591)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

end CollatzM16ShardW
