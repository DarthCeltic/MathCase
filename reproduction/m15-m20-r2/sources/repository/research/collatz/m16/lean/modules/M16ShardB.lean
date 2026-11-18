import Mathlib.Data.Nat.Prime.Basic

namespace CollatzM16ShardB

def C (n : Nat) : Nat := if n % 2 = 0 then n / 2 else 3 * n + 1

def iterate (n t : Nat) : Nat := Nat.rec n (fun _ previous => C previous) t

theorem descent_mod65536_3103 : ∀ k : Nat,
    iterate (65536 * k + 3103) 26 = 59049 * k + 2797 ∧
      59049 * k + 2797 < 65536 * k + 3103 := by
  intro k
  have h1 : C (65536 * k + 3103) = 196608 * k + 9310 := by
    unfold C
    simp [show (65536 * k + 3103) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 9310) = 98304 * k + 4655 := by
    unfold C
    simp [show (196608 * k + 9310) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 4655) = 294912 * k + 13966 := by
    unfold C
    simp [show (98304 * k + 4655) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 13966) = 147456 * k + 6983 := by
    unfold C
    simp [show (294912 * k + 13966) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 6983) = 442368 * k + 20950 := by
    unfold C
    simp [show (147456 * k + 6983) % 2 ≠ 0 by omega]
    omega
  have h6 : C (442368 * k + 20950) = 221184 * k + 10475 := by
    unfold C
    simp [show (442368 * k + 20950) % 2 = 0 by omega]
    omega
  have h7 : C (221184 * k + 10475) = 663552 * k + 31426 := by
    unfold C
    simp [show (221184 * k + 10475) % 2 ≠ 0 by omega]
    omega
  have h8 : C (663552 * k + 31426) = 331776 * k + 15713 := by
    unfold C
    simp [show (663552 * k + 31426) % 2 = 0 by omega]
    omega
  have h9 : C (331776 * k + 15713) = 995328 * k + 47140 := by
    unfold C
    simp [show (331776 * k + 15713) % 2 ≠ 0 by omega]
    omega
  have h10 : C (995328 * k + 47140) = 497664 * k + 23570 := by
    unfold C
    simp [show (995328 * k + 47140) % 2 = 0 by omega]
    omega
  have h11 : C (497664 * k + 23570) = 248832 * k + 11785 := by
    unfold C
    simp [show (497664 * k + 23570) % 2 = 0 by omega]
    omega
  have h12 : C (248832 * k + 11785) = 746496 * k + 35356 := by
    unfold C
    simp [show (248832 * k + 11785) % 2 ≠ 0 by omega]
    omega
  have h13 : C (746496 * k + 35356) = 373248 * k + 17678 := by
    unfold C
    simp [show (746496 * k + 35356) % 2 = 0 by omega]
    omega
  have h14 : C (373248 * k + 17678) = 186624 * k + 8839 := by
    unfold C
    simp [show (373248 * k + 17678) % 2 = 0 by omega]
    omega
  have h15 : C (186624 * k + 8839) = 559872 * k + 26518 := by
    unfold C
    simp [show (186624 * k + 8839) % 2 ≠ 0 by omega]
    omega
  have h16 : C (559872 * k + 26518) = 279936 * k + 13259 := by
    unfold C
    simp [show (559872 * k + 26518) % 2 = 0 by omega]
    omega
  have h17 : C (279936 * k + 13259) = 839808 * k + 39778 := by
    unfold C
    simp [show (279936 * k + 13259) % 2 ≠ 0 by omega]
    omega
  have h18 : C (839808 * k + 39778) = 419904 * k + 19889 := by
    unfold C
    simp [show (839808 * k + 39778) % 2 = 0 by omega]
    omega
  have h19 : C (419904 * k + 19889) = 1259712 * k + 59668 := by
    unfold C
    simp [show (419904 * k + 19889) % 2 ≠ 0 by omega]
    omega
  have h20 : C (1259712 * k + 59668) = 629856 * k + 29834 := by
    unfold C
    simp [show (1259712 * k + 59668) % 2 = 0 by omega]
    omega
  have h21 : C (629856 * k + 29834) = 314928 * k + 14917 := by
    unfold C
    simp [show (629856 * k + 29834) % 2 = 0 by omega]
    omega
  have h22 : C (314928 * k + 14917) = 944784 * k + 44752 := by
    unfold C
    simp [show (314928 * k + 14917) % 2 ≠ 0 by omega]
    omega
  have h23 : C (944784 * k + 44752) = 472392 * k + 22376 := by
    unfold C
    simp [show (944784 * k + 44752) % 2 = 0 by omega]
    omega
  have h24 : C (472392 * k + 22376) = 236196 * k + 11188 := by
    unfold C
    simp [show (472392 * k + 22376) % 2 = 0 by omega]
    omega
  have h25 : C (236196 * k + 11188) = 118098 * k + 5594 := by
    unfold C
    simp [show (236196 * k + 11188) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 5594) = 59049 * k + 2797 := by
    unfold C
    simp [show (118098 * k + 5594) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 3103) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 3103)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_3239 : ∀ k : Nat,
    iterate (65536 * k + 3239) 26 = 59049 * k + 2920 ∧
      59049 * k + 2920 < 65536 * k + 3239 := by
  intro k
  have h1 : C (65536 * k + 3239) = 196608 * k + 9718 := by
    unfold C
    simp [show (65536 * k + 3239) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 9718) = 98304 * k + 4859 := by
    unfold C
    simp [show (196608 * k + 9718) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 4859) = 294912 * k + 14578 := by
    unfold C
    simp [show (98304 * k + 4859) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 14578) = 147456 * k + 7289 := by
    unfold C
    simp [show (294912 * k + 14578) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 7289) = 442368 * k + 21868 := by
    unfold C
    simp [show (147456 * k + 7289) % 2 ≠ 0 by omega]
    omega
  have h6 : C (442368 * k + 21868) = 221184 * k + 10934 := by
    unfold C
    simp [show (442368 * k + 21868) % 2 = 0 by omega]
    omega
  have h7 : C (221184 * k + 10934) = 110592 * k + 5467 := by
    unfold C
    simp [show (221184 * k + 10934) % 2 = 0 by omega]
    omega
  have h8 : C (110592 * k + 5467) = 331776 * k + 16402 := by
    unfold C
    simp [show (110592 * k + 5467) % 2 ≠ 0 by omega]
    omega
  have h9 : C (331776 * k + 16402) = 165888 * k + 8201 := by
    unfold C
    simp [show (331776 * k + 16402) % 2 = 0 by omega]
    omega
  have h10 : C (165888 * k + 8201) = 497664 * k + 24604 := by
    unfold C
    simp [show (165888 * k + 8201) % 2 ≠ 0 by omega]
    omega
  have h11 : C (497664 * k + 24604) = 248832 * k + 12302 := by
    unfold C
    simp [show (497664 * k + 24604) % 2 = 0 by omega]
    omega
  have h12 : C (248832 * k + 12302) = 124416 * k + 6151 := by
    unfold C
    simp [show (248832 * k + 12302) % 2 = 0 by omega]
    omega
  have h13 : C (124416 * k + 6151) = 373248 * k + 18454 := by
    unfold C
    simp [show (124416 * k + 6151) % 2 ≠ 0 by omega]
    omega
  have h14 : C (373248 * k + 18454) = 186624 * k + 9227 := by
    unfold C
    simp [show (373248 * k + 18454) % 2 = 0 by omega]
    omega
  have h15 : C (186624 * k + 9227) = 559872 * k + 27682 := by
    unfold C
    simp [show (186624 * k + 9227) % 2 ≠ 0 by omega]
    omega
  have h16 : C (559872 * k + 27682) = 279936 * k + 13841 := by
    unfold C
    simp [show (559872 * k + 27682) % 2 = 0 by omega]
    omega
  have h17 : C (279936 * k + 13841) = 839808 * k + 41524 := by
    unfold C
    simp [show (279936 * k + 13841) % 2 ≠ 0 by omega]
    omega
  have h18 : C (839808 * k + 41524) = 419904 * k + 20762 := by
    unfold C
    simp [show (839808 * k + 41524) % 2 = 0 by omega]
    omega
  have h19 : C (419904 * k + 20762) = 209952 * k + 10381 := by
    unfold C
    simp [show (419904 * k + 20762) % 2 = 0 by omega]
    omega
  have h20 : C (209952 * k + 10381) = 629856 * k + 31144 := by
    unfold C
    simp [show (209952 * k + 10381) % 2 ≠ 0 by omega]
    omega
  have h21 : C (629856 * k + 31144) = 314928 * k + 15572 := by
    unfold C
    simp [show (629856 * k + 31144) % 2 = 0 by omega]
    omega
  have h22 : C (314928 * k + 15572) = 157464 * k + 7786 := by
    unfold C
    simp [show (314928 * k + 15572) % 2 = 0 by omega]
    omega
  have h23 : C (157464 * k + 7786) = 78732 * k + 3893 := by
    unfold C
    simp [show (157464 * k + 7786) % 2 = 0 by omega]
    omega
  have h24 : C (78732 * k + 3893) = 236196 * k + 11680 := by
    unfold C
    simp [show (78732 * k + 3893) % 2 ≠ 0 by omega]
    omega
  have h25 : C (236196 * k + 11680) = 118098 * k + 5840 := by
    unfold C
    simp [show (236196 * k + 11680) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 5840) = 59049 * k + 2920 := by
    unfold C
    simp [show (118098 * k + 5840) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 3239) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 3239)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_3487 : ∀ k : Nat,
    iterate (65536 * k + 3487) 26 = 59049 * k + 3143 ∧
      59049 * k + 3143 < 65536 * k + 3487 := by
  intro k
  have h1 : C (65536 * k + 3487) = 196608 * k + 10462 := by
    unfold C
    simp [show (65536 * k + 3487) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 10462) = 98304 * k + 5231 := by
    unfold C
    simp [show (196608 * k + 10462) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 5231) = 294912 * k + 15694 := by
    unfold C
    simp [show (98304 * k + 5231) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 15694) = 147456 * k + 7847 := by
    unfold C
    simp [show (294912 * k + 15694) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 7847) = 442368 * k + 23542 := by
    unfold C
    simp [show (147456 * k + 7847) % 2 ≠ 0 by omega]
    omega
  have h6 : C (442368 * k + 23542) = 221184 * k + 11771 := by
    unfold C
    simp [show (442368 * k + 23542) % 2 = 0 by omega]
    omega
  have h7 : C (221184 * k + 11771) = 663552 * k + 35314 := by
    unfold C
    simp [show (221184 * k + 11771) % 2 ≠ 0 by omega]
    omega
  have h8 : C (663552 * k + 35314) = 331776 * k + 17657 := by
    unfold C
    simp [show (663552 * k + 35314) % 2 = 0 by omega]
    omega
  have h9 : C (331776 * k + 17657) = 995328 * k + 52972 := by
    unfold C
    simp [show (331776 * k + 17657) % 2 ≠ 0 by omega]
    omega
  have h10 : C (995328 * k + 52972) = 497664 * k + 26486 := by
    unfold C
    simp [show (995328 * k + 52972) % 2 = 0 by omega]
    omega
  have h11 : C (497664 * k + 26486) = 248832 * k + 13243 := by
    unfold C
    simp [show (497664 * k + 26486) % 2 = 0 by omega]
    omega
  have h12 : C (248832 * k + 13243) = 746496 * k + 39730 := by
    unfold C
    simp [show (248832 * k + 13243) % 2 ≠ 0 by omega]
    omega
  have h13 : C (746496 * k + 39730) = 373248 * k + 19865 := by
    unfold C
    simp [show (746496 * k + 39730) % 2 = 0 by omega]
    omega
  have h14 : C (373248 * k + 19865) = 1119744 * k + 59596 := by
    unfold C
    simp [show (373248 * k + 19865) % 2 ≠ 0 by omega]
    omega
  have h15 : C (1119744 * k + 59596) = 559872 * k + 29798 := by
    unfold C
    simp [show (1119744 * k + 59596) % 2 = 0 by omega]
    omega
  have h16 : C (559872 * k + 29798) = 279936 * k + 14899 := by
    unfold C
    simp [show (559872 * k + 29798) % 2 = 0 by omega]
    omega
  have h17 : C (279936 * k + 14899) = 839808 * k + 44698 := by
    unfold C
    simp [show (279936 * k + 14899) % 2 ≠ 0 by omega]
    omega
  have h18 : C (839808 * k + 44698) = 419904 * k + 22349 := by
    unfold C
    simp [show (839808 * k + 44698) % 2 = 0 by omega]
    omega
  have h19 : C (419904 * k + 22349) = 1259712 * k + 67048 := by
    unfold C
    simp [show (419904 * k + 22349) % 2 ≠ 0 by omega]
    omega
  have h20 : C (1259712 * k + 67048) = 629856 * k + 33524 := by
    unfold C
    simp [show (1259712 * k + 67048) % 2 = 0 by omega]
    omega
  have h21 : C (629856 * k + 33524) = 314928 * k + 16762 := by
    unfold C
    simp [show (629856 * k + 33524) % 2 = 0 by omega]
    omega
  have h22 : C (314928 * k + 16762) = 157464 * k + 8381 := by
    unfold C
    simp [show (314928 * k + 16762) % 2 = 0 by omega]
    omega
  have h23 : C (157464 * k + 8381) = 472392 * k + 25144 := by
    unfold C
    simp [show (157464 * k + 8381) % 2 ≠ 0 by omega]
    omega
  have h24 : C (472392 * k + 25144) = 236196 * k + 12572 := by
    unfold C
    simp [show (472392 * k + 25144) % 2 = 0 by omega]
    omega
  have h25 : C (236196 * k + 12572) = 118098 * k + 6286 := by
    unfold C
    simp [show (236196 * k + 12572) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 6286) = 59049 * k + 3143 := by
    unfold C
    simp [show (118098 * k + 6286) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 3487) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 3487)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_3535 : ∀ k : Nat,
    iterate (65536 * k + 3535) 26 = 59049 * k + 3187 ∧
      59049 * k + 3187 < 65536 * k + 3535 := by
  intro k
  have h1 : C (65536 * k + 3535) = 196608 * k + 10606 := by
    unfold C
    simp [show (65536 * k + 3535) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 10606) = 98304 * k + 5303 := by
    unfold C
    simp [show (196608 * k + 10606) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 5303) = 294912 * k + 15910 := by
    unfold C
    simp [show (98304 * k + 5303) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 15910) = 147456 * k + 7955 := by
    unfold C
    simp [show (294912 * k + 15910) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 7955) = 442368 * k + 23866 := by
    unfold C
    simp [show (147456 * k + 7955) % 2 ≠ 0 by omega]
    omega
  have h6 : C (442368 * k + 23866) = 221184 * k + 11933 := by
    unfold C
    simp [show (442368 * k + 23866) % 2 = 0 by omega]
    omega
  have h7 : C (221184 * k + 11933) = 663552 * k + 35800 := by
    unfold C
    simp [show (221184 * k + 11933) % 2 ≠ 0 by omega]
    omega
  have h8 : C (663552 * k + 35800) = 331776 * k + 17900 := by
    unfold C
    simp [show (663552 * k + 35800) % 2 = 0 by omega]
    omega
  have h9 : C (331776 * k + 17900) = 165888 * k + 8950 := by
    unfold C
    simp [show (331776 * k + 17900) % 2 = 0 by omega]
    omega
  have h10 : C (165888 * k + 8950) = 82944 * k + 4475 := by
    unfold C
    simp [show (165888 * k + 8950) % 2 = 0 by omega]
    omega
  have h11 : C (82944 * k + 4475) = 248832 * k + 13426 := by
    unfold C
    simp [show (82944 * k + 4475) % 2 ≠ 0 by omega]
    omega
  have h12 : C (248832 * k + 13426) = 124416 * k + 6713 := by
    unfold C
    simp [show (248832 * k + 13426) % 2 = 0 by omega]
    omega
  have h13 : C (124416 * k + 6713) = 373248 * k + 20140 := by
    unfold C
    simp [show (124416 * k + 6713) % 2 ≠ 0 by omega]
    omega
  have h14 : C (373248 * k + 20140) = 186624 * k + 10070 := by
    unfold C
    simp [show (373248 * k + 20140) % 2 = 0 by omega]
    omega
  have h15 : C (186624 * k + 10070) = 93312 * k + 5035 := by
    unfold C
    simp [show (186624 * k + 10070) % 2 = 0 by omega]
    omega
  have h16 : C (93312 * k + 5035) = 279936 * k + 15106 := by
    unfold C
    simp [show (93312 * k + 5035) % 2 ≠ 0 by omega]
    omega
  have h17 : C (279936 * k + 15106) = 139968 * k + 7553 := by
    unfold C
    simp [show (279936 * k + 15106) % 2 = 0 by omega]
    omega
  have h18 : C (139968 * k + 7553) = 419904 * k + 22660 := by
    unfold C
    simp [show (139968 * k + 7553) % 2 ≠ 0 by omega]
    omega
  have h19 : C (419904 * k + 22660) = 209952 * k + 11330 := by
    unfold C
    simp [show (419904 * k + 22660) % 2 = 0 by omega]
    omega
  have h20 : C (209952 * k + 11330) = 104976 * k + 5665 := by
    unfold C
    simp [show (209952 * k + 11330) % 2 = 0 by omega]
    omega
  have h21 : C (104976 * k + 5665) = 314928 * k + 16996 := by
    unfold C
    simp [show (104976 * k + 5665) % 2 ≠ 0 by omega]
    omega
  have h22 : C (314928 * k + 16996) = 157464 * k + 8498 := by
    unfold C
    simp [show (314928 * k + 16996) % 2 = 0 by omega]
    omega
  have h23 : C (157464 * k + 8498) = 78732 * k + 4249 := by
    unfold C
    simp [show (157464 * k + 8498) % 2 = 0 by omega]
    omega
  have h24 : C (78732 * k + 4249) = 236196 * k + 12748 := by
    unfold C
    simp [show (78732 * k + 4249) % 2 ≠ 0 by omega]
    omega
  have h25 : C (236196 * k + 12748) = 118098 * k + 6374 := by
    unfold C
    simp [show (236196 * k + 12748) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 6374) = 59049 * k + 3187 := by
    unfold C
    simp [show (118098 * k + 6374) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 3535) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 3535)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_3695 : ∀ k : Nat,
    iterate (65536 * k + 3695) 26 = 59049 * k + 3331 ∧
      59049 * k + 3331 < 65536 * k + 3695 := by
  intro k
  have h1 : C (65536 * k + 3695) = 196608 * k + 11086 := by
    unfold C
    simp [show (65536 * k + 3695) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 11086) = 98304 * k + 5543 := by
    unfold C
    simp [show (196608 * k + 11086) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 5543) = 294912 * k + 16630 := by
    unfold C
    simp [show (98304 * k + 5543) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 16630) = 147456 * k + 8315 := by
    unfold C
    simp [show (294912 * k + 16630) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 8315) = 442368 * k + 24946 := by
    unfold C
    simp [show (147456 * k + 8315) % 2 ≠ 0 by omega]
    omega
  have h6 : C (442368 * k + 24946) = 221184 * k + 12473 := by
    unfold C
    simp [show (442368 * k + 24946) % 2 = 0 by omega]
    omega
  have h7 : C (221184 * k + 12473) = 663552 * k + 37420 := by
    unfold C
    simp [show (221184 * k + 12473) % 2 ≠ 0 by omega]
    omega
  have h8 : C (663552 * k + 37420) = 331776 * k + 18710 := by
    unfold C
    simp [show (663552 * k + 37420) % 2 = 0 by omega]
    omega
  have h9 : C (331776 * k + 18710) = 165888 * k + 9355 := by
    unfold C
    simp [show (331776 * k + 18710) % 2 = 0 by omega]
    omega
  have h10 : C (165888 * k + 9355) = 497664 * k + 28066 := by
    unfold C
    simp [show (165888 * k + 9355) % 2 ≠ 0 by omega]
    omega
  have h11 : C (497664 * k + 28066) = 248832 * k + 14033 := by
    unfold C
    simp [show (497664 * k + 28066) % 2 = 0 by omega]
    omega
  have h12 : C (248832 * k + 14033) = 746496 * k + 42100 := by
    unfold C
    simp [show (248832 * k + 14033) % 2 ≠ 0 by omega]
    omega
  have h13 : C (746496 * k + 42100) = 373248 * k + 21050 := by
    unfold C
    simp [show (746496 * k + 42100) % 2 = 0 by omega]
    omega
  have h14 : C (373248 * k + 21050) = 186624 * k + 10525 := by
    unfold C
    simp [show (373248 * k + 21050) % 2 = 0 by omega]
    omega
  have h15 : C (186624 * k + 10525) = 559872 * k + 31576 := by
    unfold C
    simp [show (186624 * k + 10525) % 2 ≠ 0 by omega]
    omega
  have h16 : C (559872 * k + 31576) = 279936 * k + 15788 := by
    unfold C
    simp [show (559872 * k + 31576) % 2 = 0 by omega]
    omega
  have h17 : C (279936 * k + 15788) = 139968 * k + 7894 := by
    unfold C
    simp [show (279936 * k + 15788) % 2 = 0 by omega]
    omega
  have h18 : C (139968 * k + 7894) = 69984 * k + 3947 := by
    unfold C
    simp [show (139968 * k + 7894) % 2 = 0 by omega]
    omega
  have h19 : C (69984 * k + 3947) = 209952 * k + 11842 := by
    unfold C
    simp [show (69984 * k + 3947) % 2 ≠ 0 by omega]
    omega
  have h20 : C (209952 * k + 11842) = 104976 * k + 5921 := by
    unfold C
    simp [show (209952 * k + 11842) % 2 = 0 by omega]
    omega
  have h21 : C (104976 * k + 5921) = 314928 * k + 17764 := by
    unfold C
    simp [show (104976 * k + 5921) % 2 ≠ 0 by omega]
    omega
  have h22 : C (314928 * k + 17764) = 157464 * k + 8882 := by
    unfold C
    simp [show (314928 * k + 17764) % 2 = 0 by omega]
    omega
  have h23 : C (157464 * k + 8882) = 78732 * k + 4441 := by
    unfold C
    simp [show (157464 * k + 8882) % 2 = 0 by omega]
    omega
  have h24 : C (78732 * k + 4441) = 236196 * k + 13324 := by
    unfold C
    simp [show (78732 * k + 4441) % 2 ≠ 0 by omega]
    omega
  have h25 : C (236196 * k + 13324) = 118098 * k + 6662 := by
    unfold C
    simp [show (236196 * k + 13324) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 6662) = 59049 * k + 3331 := by
    unfold C
    simp [show (118098 * k + 6662) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 3695) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 3695)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_3815 : ∀ k : Nat,
    iterate (65536 * k + 3815) 26 = 59049 * k + 3439 ∧
      59049 * k + 3439 < 65536 * k + 3815 := by
  intro k
  have h1 : C (65536 * k + 3815) = 196608 * k + 11446 := by
    unfold C
    simp [show (65536 * k + 3815) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 11446) = 98304 * k + 5723 := by
    unfold C
    simp [show (196608 * k + 11446) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 5723) = 294912 * k + 17170 := by
    unfold C
    simp [show (98304 * k + 5723) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 17170) = 147456 * k + 8585 := by
    unfold C
    simp [show (294912 * k + 17170) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 8585) = 442368 * k + 25756 := by
    unfold C
    simp [show (147456 * k + 8585) % 2 ≠ 0 by omega]
    omega
  have h6 : C (442368 * k + 25756) = 221184 * k + 12878 := by
    unfold C
    simp [show (442368 * k + 25756) % 2 = 0 by omega]
    omega
  have h7 : C (221184 * k + 12878) = 110592 * k + 6439 := by
    unfold C
    simp [show (221184 * k + 12878) % 2 = 0 by omega]
    omega
  have h8 : C (110592 * k + 6439) = 331776 * k + 19318 := by
    unfold C
    simp [show (110592 * k + 6439) % 2 ≠ 0 by omega]
    omega
  have h9 : C (331776 * k + 19318) = 165888 * k + 9659 := by
    unfold C
    simp [show (331776 * k + 19318) % 2 = 0 by omega]
    omega
  have h10 : C (165888 * k + 9659) = 497664 * k + 28978 := by
    unfold C
    simp [show (165888 * k + 9659) % 2 ≠ 0 by omega]
    omega
  have h11 : C (497664 * k + 28978) = 248832 * k + 14489 := by
    unfold C
    simp [show (497664 * k + 28978) % 2 = 0 by omega]
    omega
  have h12 : C (248832 * k + 14489) = 746496 * k + 43468 := by
    unfold C
    simp [show (248832 * k + 14489) % 2 ≠ 0 by omega]
    omega
  have h13 : C (746496 * k + 43468) = 373248 * k + 21734 := by
    unfold C
    simp [show (746496 * k + 43468) % 2 = 0 by omega]
    omega
  have h14 : C (373248 * k + 21734) = 186624 * k + 10867 := by
    unfold C
    simp [show (373248 * k + 21734) % 2 = 0 by omega]
    omega
  have h15 : C (186624 * k + 10867) = 559872 * k + 32602 := by
    unfold C
    simp [show (186624 * k + 10867) % 2 ≠ 0 by omega]
    omega
  have h16 : C (559872 * k + 32602) = 279936 * k + 16301 := by
    unfold C
    simp [show (559872 * k + 32602) % 2 = 0 by omega]
    omega
  have h17 : C (279936 * k + 16301) = 839808 * k + 48904 := by
    unfold C
    simp [show (279936 * k + 16301) % 2 ≠ 0 by omega]
    omega
  have h18 : C (839808 * k + 48904) = 419904 * k + 24452 := by
    unfold C
    simp [show (839808 * k + 48904) % 2 = 0 by omega]
    omega
  have h19 : C (419904 * k + 24452) = 209952 * k + 12226 := by
    unfold C
    simp [show (419904 * k + 24452) % 2 = 0 by omega]
    omega
  have h20 : C (209952 * k + 12226) = 104976 * k + 6113 := by
    unfold C
    simp [show (209952 * k + 12226) % 2 = 0 by omega]
    omega
  have h21 : C (104976 * k + 6113) = 314928 * k + 18340 := by
    unfold C
    simp [show (104976 * k + 6113) % 2 ≠ 0 by omega]
    omega
  have h22 : C (314928 * k + 18340) = 157464 * k + 9170 := by
    unfold C
    simp [show (314928 * k + 18340) % 2 = 0 by omega]
    omega
  have h23 : C (157464 * k + 9170) = 78732 * k + 4585 := by
    unfold C
    simp [show (157464 * k + 9170) % 2 = 0 by omega]
    omega
  have h24 : C (78732 * k + 4585) = 236196 * k + 13756 := by
    unfold C
    simp [show (78732 * k + 4585) % 2 ≠ 0 by omega]
    omega
  have h25 : C (236196 * k + 13756) = 118098 * k + 6878 := by
    unfold C
    simp [show (236196 * k + 13756) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 6878) = 59049 * k + 3439 := by
    unfold C
    simp [show (118098 * k + 6878) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 3815) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 3815)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_4319 : ∀ k : Nat,
    iterate (65536 * k + 4319) 26 = 59049 * k + 3893 ∧
      59049 * k + 3893 < 65536 * k + 4319 := by
  intro k
  have h1 : C (65536 * k + 4319) = 196608 * k + 12958 := by
    unfold C
    simp [show (65536 * k + 4319) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 12958) = 98304 * k + 6479 := by
    unfold C
    simp [show (196608 * k + 12958) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 6479) = 294912 * k + 19438 := by
    unfold C
    simp [show (98304 * k + 6479) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 19438) = 147456 * k + 9719 := by
    unfold C
    simp [show (294912 * k + 19438) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 9719) = 442368 * k + 29158 := by
    unfold C
    simp [show (147456 * k + 9719) % 2 ≠ 0 by omega]
    omega
  have h6 : C (442368 * k + 29158) = 221184 * k + 14579 := by
    unfold C
    simp [show (442368 * k + 29158) % 2 = 0 by omega]
    omega
  have h7 : C (221184 * k + 14579) = 663552 * k + 43738 := by
    unfold C
    simp [show (221184 * k + 14579) % 2 ≠ 0 by omega]
    omega
  have h8 : C (663552 * k + 43738) = 331776 * k + 21869 := by
    unfold C
    simp [show (663552 * k + 43738) % 2 = 0 by omega]
    omega
  have h9 : C (331776 * k + 21869) = 995328 * k + 65608 := by
    unfold C
    simp [show (331776 * k + 21869) % 2 ≠ 0 by omega]
    omega
  have h10 : C (995328 * k + 65608) = 497664 * k + 32804 := by
    unfold C
    simp [show (995328 * k + 65608) % 2 = 0 by omega]
    omega
  have h11 : C (497664 * k + 32804) = 248832 * k + 16402 := by
    unfold C
    simp [show (497664 * k + 32804) % 2 = 0 by omega]
    omega
  have h12 : C (248832 * k + 16402) = 124416 * k + 8201 := by
    unfold C
    simp [show (248832 * k + 16402) % 2 = 0 by omega]
    omega
  have h13 : C (124416 * k + 8201) = 373248 * k + 24604 := by
    unfold C
    simp [show (124416 * k + 8201) % 2 ≠ 0 by omega]
    omega
  have h14 : C (373248 * k + 24604) = 186624 * k + 12302 := by
    unfold C
    simp [show (373248 * k + 24604) % 2 = 0 by omega]
    omega
  have h15 : C (186624 * k + 12302) = 93312 * k + 6151 := by
    unfold C
    simp [show (186624 * k + 12302) % 2 = 0 by omega]
    omega
  have h16 : C (93312 * k + 6151) = 279936 * k + 18454 := by
    unfold C
    simp [show (93312 * k + 6151) % 2 ≠ 0 by omega]
    omega
  have h17 : C (279936 * k + 18454) = 139968 * k + 9227 := by
    unfold C
    simp [show (279936 * k + 18454) % 2 = 0 by omega]
    omega
  have h18 : C (139968 * k + 9227) = 419904 * k + 27682 := by
    unfold C
    simp [show (139968 * k + 9227) % 2 ≠ 0 by omega]
    omega
  have h19 : C (419904 * k + 27682) = 209952 * k + 13841 := by
    unfold C
    simp [show (419904 * k + 27682) % 2 = 0 by omega]
    omega
  have h20 : C (209952 * k + 13841) = 629856 * k + 41524 := by
    unfold C
    simp [show (209952 * k + 13841) % 2 ≠ 0 by omega]
    omega
  have h21 : C (629856 * k + 41524) = 314928 * k + 20762 := by
    unfold C
    simp [show (629856 * k + 41524) % 2 = 0 by omega]
    omega
  have h22 : C (314928 * k + 20762) = 157464 * k + 10381 := by
    unfold C
    simp [show (314928 * k + 20762) % 2 = 0 by omega]
    omega
  have h23 : C (157464 * k + 10381) = 472392 * k + 31144 := by
    unfold C
    simp [show (157464 * k + 10381) % 2 ≠ 0 by omega]
    omega
  have h24 : C (472392 * k + 31144) = 236196 * k + 15572 := by
    unfold C
    simp [show (472392 * k + 31144) % 2 = 0 by omega]
    omega
  have h25 : C (236196 * k + 15572) = 118098 * k + 7786 := by
    unfold C
    simp [show (236196 * k + 15572) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 7786) = 59049 * k + 3893 := by
    unfold C
    simp [show (118098 * k + 7786) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 4319) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 4319)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_4335 : ∀ k : Nat,
    iterate (65536 * k + 4335) 26 = 59049 * k + 3907 ∧
      59049 * k + 3907 < 65536 * k + 4335 := by
  intro k
  have h1 : C (65536 * k + 4335) = 196608 * k + 13006 := by
    unfold C
    simp [show (65536 * k + 4335) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 13006) = 98304 * k + 6503 := by
    unfold C
    simp [show (196608 * k + 13006) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 6503) = 294912 * k + 19510 := by
    unfold C
    simp [show (98304 * k + 6503) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 19510) = 147456 * k + 9755 := by
    unfold C
    simp [show (294912 * k + 19510) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 9755) = 442368 * k + 29266 := by
    unfold C
    simp [show (147456 * k + 9755) % 2 ≠ 0 by omega]
    omega
  have h6 : C (442368 * k + 29266) = 221184 * k + 14633 := by
    unfold C
    simp [show (442368 * k + 29266) % 2 = 0 by omega]
    omega
  have h7 : C (221184 * k + 14633) = 663552 * k + 43900 := by
    unfold C
    simp [show (221184 * k + 14633) % 2 ≠ 0 by omega]
    omega
  have h8 : C (663552 * k + 43900) = 331776 * k + 21950 := by
    unfold C
    simp [show (663552 * k + 43900) % 2 = 0 by omega]
    omega
  have h9 : C (331776 * k + 21950) = 165888 * k + 10975 := by
    unfold C
    simp [show (331776 * k + 21950) % 2 = 0 by omega]
    omega
  have h10 : C (165888 * k + 10975) = 497664 * k + 32926 := by
    unfold C
    simp [show (165888 * k + 10975) % 2 ≠ 0 by omega]
    omega
  have h11 : C (497664 * k + 32926) = 248832 * k + 16463 := by
    unfold C
    simp [show (497664 * k + 32926) % 2 = 0 by omega]
    omega
  have h12 : C (248832 * k + 16463) = 746496 * k + 49390 := by
    unfold C
    simp [show (248832 * k + 16463) % 2 ≠ 0 by omega]
    omega
  have h13 : C (746496 * k + 49390) = 373248 * k + 24695 := by
    unfold C
    simp [show (746496 * k + 49390) % 2 = 0 by omega]
    omega
  have h14 : C (373248 * k + 24695) = 1119744 * k + 74086 := by
    unfold C
    simp [show (373248 * k + 24695) % 2 ≠ 0 by omega]
    omega
  have h15 : C (1119744 * k + 74086) = 559872 * k + 37043 := by
    unfold C
    simp [show (1119744 * k + 74086) % 2 = 0 by omega]
    omega
  have h16 : C (559872 * k + 37043) = 1679616 * k + 111130 := by
    unfold C
    simp [show (559872 * k + 37043) % 2 ≠ 0 by omega]
    omega
  have h17 : C (1679616 * k + 111130) = 839808 * k + 55565 := by
    unfold C
    simp [show (1679616 * k + 111130) % 2 = 0 by omega]
    omega
  have h18 : C (839808 * k + 55565) = 2519424 * k + 166696 := by
    unfold C
    simp [show (839808 * k + 55565) % 2 ≠ 0 by omega]
    omega
  have h19 : C (2519424 * k + 166696) = 1259712 * k + 83348 := by
    unfold C
    simp [show (2519424 * k + 166696) % 2 = 0 by omega]
    omega
  have h20 : C (1259712 * k + 83348) = 629856 * k + 41674 := by
    unfold C
    simp [show (1259712 * k + 83348) % 2 = 0 by omega]
    omega
  have h21 : C (629856 * k + 41674) = 314928 * k + 20837 := by
    unfold C
    simp [show (629856 * k + 41674) % 2 = 0 by omega]
    omega
  have h22 : C (314928 * k + 20837) = 944784 * k + 62512 := by
    unfold C
    simp [show (314928 * k + 20837) % 2 ≠ 0 by omega]
    omega
  have h23 : C (944784 * k + 62512) = 472392 * k + 31256 := by
    unfold C
    simp [show (944784 * k + 62512) % 2 = 0 by omega]
    omega
  have h24 : C (472392 * k + 31256) = 236196 * k + 15628 := by
    unfold C
    simp [show (472392 * k + 31256) % 2 = 0 by omega]
    omega
  have h25 : C (236196 * k + 15628) = 118098 * k + 7814 := by
    unfold C
    simp [show (236196 * k + 15628) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 7814) = 59049 * k + 3907 := by
    unfold C
    simp [show (118098 * k + 7814) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 4335) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 4335)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_4379 : ∀ k : Nat,
    iterate (65536 * k + 4379) 26 = 59049 * k + 3947 ∧
      59049 * k + 3947 < 65536 * k + 4379 := by
  intro k
  have h1 : C (65536 * k + 4379) = 196608 * k + 13138 := by
    unfold C
    simp [show (65536 * k + 4379) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 13138) = 98304 * k + 6569 := by
    unfold C
    simp [show (196608 * k + 13138) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 6569) = 294912 * k + 19708 := by
    unfold C
    simp [show (98304 * k + 6569) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 19708) = 147456 * k + 9854 := by
    unfold C
    simp [show (294912 * k + 19708) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 9854) = 73728 * k + 4927 := by
    unfold C
    simp [show (147456 * k + 9854) % 2 = 0 by omega]
    omega
  have h6 : C (73728 * k + 4927) = 221184 * k + 14782 := by
    unfold C
    simp [show (73728 * k + 4927) % 2 ≠ 0 by omega]
    omega
  have h7 : C (221184 * k + 14782) = 110592 * k + 7391 := by
    unfold C
    simp [show (221184 * k + 14782) % 2 = 0 by omega]
    omega
  have h8 : C (110592 * k + 7391) = 331776 * k + 22174 := by
    unfold C
    simp [show (110592 * k + 7391) % 2 ≠ 0 by omega]
    omega
  have h9 : C (331776 * k + 22174) = 165888 * k + 11087 := by
    unfold C
    simp [show (331776 * k + 22174) % 2 = 0 by omega]
    omega
  have h10 : C (165888 * k + 11087) = 497664 * k + 33262 := by
    unfold C
    simp [show (165888 * k + 11087) % 2 ≠ 0 by omega]
    omega
  have h11 : C (497664 * k + 33262) = 248832 * k + 16631 := by
    unfold C
    simp [show (497664 * k + 33262) % 2 = 0 by omega]
    omega
  have h12 : C (248832 * k + 16631) = 746496 * k + 49894 := by
    unfold C
    simp [show (248832 * k + 16631) % 2 ≠ 0 by omega]
    omega
  have h13 : C (746496 * k + 49894) = 373248 * k + 24947 := by
    unfold C
    simp [show (746496 * k + 49894) % 2 = 0 by omega]
    omega
  have h14 : C (373248 * k + 24947) = 1119744 * k + 74842 := by
    unfold C
    simp [show (373248 * k + 24947) % 2 ≠ 0 by omega]
    omega
  have h15 : C (1119744 * k + 74842) = 559872 * k + 37421 := by
    unfold C
    simp [show (1119744 * k + 74842) % 2 = 0 by omega]
    omega
  have h16 : C (559872 * k + 37421) = 1679616 * k + 112264 := by
    unfold C
    simp [show (559872 * k + 37421) % 2 ≠ 0 by omega]
    omega
  have h17 : C (1679616 * k + 112264) = 839808 * k + 56132 := by
    unfold C
    simp [show (1679616 * k + 112264) % 2 = 0 by omega]
    omega
  have h18 : C (839808 * k + 56132) = 419904 * k + 28066 := by
    unfold C
    simp [show (839808 * k + 56132) % 2 = 0 by omega]
    omega
  have h19 : C (419904 * k + 28066) = 209952 * k + 14033 := by
    unfold C
    simp [show (419904 * k + 28066) % 2 = 0 by omega]
    omega
  have h20 : C (209952 * k + 14033) = 629856 * k + 42100 := by
    unfold C
    simp [show (209952 * k + 14033) % 2 ≠ 0 by omega]
    omega
  have h21 : C (629856 * k + 42100) = 314928 * k + 21050 := by
    unfold C
    simp [show (629856 * k + 42100) % 2 = 0 by omega]
    omega
  have h22 : C (314928 * k + 21050) = 157464 * k + 10525 := by
    unfold C
    simp [show (314928 * k + 21050) % 2 = 0 by omega]
    omega
  have h23 : C (157464 * k + 10525) = 472392 * k + 31576 := by
    unfold C
    simp [show (157464 * k + 10525) % 2 ≠ 0 by omega]
    omega
  have h24 : C (472392 * k + 31576) = 236196 * k + 15788 := by
    unfold C
    simp [show (472392 * k + 31576) % 2 = 0 by omega]
    omega
  have h25 : C (236196 * k + 15788) = 118098 * k + 7894 := by
    unfold C
    simp [show (236196 * k + 15788) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 7894) = 59049 * k + 3947 := by
    unfold C
    simp [show (118098 * k + 7894) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 4379) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 4379)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_4635 : ∀ k : Nat,
    iterate (65536 * k + 4635) 26 = 59049 * k + 4178 ∧
      59049 * k + 4178 < 65536 * k + 4635 := by
  intro k
  have h1 : C (65536 * k + 4635) = 196608 * k + 13906 := by
    unfold C
    simp [show (65536 * k + 4635) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 13906) = 98304 * k + 6953 := by
    unfold C
    simp [show (196608 * k + 13906) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 6953) = 294912 * k + 20860 := by
    unfold C
    simp [show (98304 * k + 6953) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 20860) = 147456 * k + 10430 := by
    unfold C
    simp [show (294912 * k + 20860) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 10430) = 73728 * k + 5215 := by
    unfold C
    simp [show (147456 * k + 10430) % 2 = 0 by omega]
    omega
  have h6 : C (73728 * k + 5215) = 221184 * k + 15646 := by
    unfold C
    simp [show (73728 * k + 5215) % 2 ≠ 0 by omega]
    omega
  have h7 : C (221184 * k + 15646) = 110592 * k + 7823 := by
    unfold C
    simp [show (221184 * k + 15646) % 2 = 0 by omega]
    omega
  have h8 : C (110592 * k + 7823) = 331776 * k + 23470 := by
    unfold C
    simp [show (110592 * k + 7823) % 2 ≠ 0 by omega]
    omega
  have h9 : C (331776 * k + 23470) = 165888 * k + 11735 := by
    unfold C
    simp [show (331776 * k + 23470) % 2 = 0 by omega]
    omega
  have h10 : C (165888 * k + 11735) = 497664 * k + 35206 := by
    unfold C
    simp [show (165888 * k + 11735) % 2 ≠ 0 by omega]
    omega
  have h11 : C (497664 * k + 35206) = 248832 * k + 17603 := by
    unfold C
    simp [show (497664 * k + 35206) % 2 = 0 by omega]
    omega
  have h12 : C (248832 * k + 17603) = 746496 * k + 52810 := by
    unfold C
    simp [show (248832 * k + 17603) % 2 ≠ 0 by omega]
    omega
  have h13 : C (746496 * k + 52810) = 373248 * k + 26405 := by
    unfold C
    simp [show (746496 * k + 52810) % 2 = 0 by omega]
    omega
  have h14 : C (373248 * k + 26405) = 1119744 * k + 79216 := by
    unfold C
    simp [show (373248 * k + 26405) % 2 ≠ 0 by omega]
    omega
  have h15 : C (1119744 * k + 79216) = 559872 * k + 39608 := by
    unfold C
    simp [show (1119744 * k + 79216) % 2 = 0 by omega]
    omega
  have h16 : C (559872 * k + 39608) = 279936 * k + 19804 := by
    unfold C
    simp [show (559872 * k + 39608) % 2 = 0 by omega]
    omega
  have h17 : C (279936 * k + 19804) = 139968 * k + 9902 := by
    unfold C
    simp [show (279936 * k + 19804) % 2 = 0 by omega]
    omega
  have h18 : C (139968 * k + 9902) = 69984 * k + 4951 := by
    unfold C
    simp [show (139968 * k + 9902) % 2 = 0 by omega]
    omega
  have h19 : C (69984 * k + 4951) = 209952 * k + 14854 := by
    unfold C
    simp [show (69984 * k + 4951) % 2 ≠ 0 by omega]
    omega
  have h20 : C (209952 * k + 14854) = 104976 * k + 7427 := by
    unfold C
    simp [show (209952 * k + 14854) % 2 = 0 by omega]
    omega
  have h21 : C (104976 * k + 7427) = 314928 * k + 22282 := by
    unfold C
    simp [show (104976 * k + 7427) % 2 ≠ 0 by omega]
    omega
  have h22 : C (314928 * k + 22282) = 157464 * k + 11141 := by
    unfold C
    simp [show (314928 * k + 22282) % 2 = 0 by omega]
    omega
  have h23 : C (157464 * k + 11141) = 472392 * k + 33424 := by
    unfold C
    simp [show (157464 * k + 11141) % 2 ≠ 0 by omega]
    omega
  have h24 : C (472392 * k + 33424) = 236196 * k + 16712 := by
    unfold C
    simp [show (472392 * k + 33424) % 2 = 0 by omega]
    omega
  have h25 : C (236196 * k + 16712) = 118098 * k + 8356 := by
    unfold C
    simp [show (236196 * k + 16712) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 8356) = 59049 * k + 4178 := by
    unfold C
    simp [show (118098 * k + 8356) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 4635) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 4635)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_4775 : ∀ k : Nat,
    iterate (65536 * k + 4775) 26 = 59049 * k + 4304 ∧
      59049 * k + 4304 < 65536 * k + 4775 := by
  intro k
  have h1 : C (65536 * k + 4775) = 196608 * k + 14326 := by
    unfold C
    simp [show (65536 * k + 4775) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 14326) = 98304 * k + 7163 := by
    unfold C
    simp [show (196608 * k + 14326) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 7163) = 294912 * k + 21490 := by
    unfold C
    simp [show (98304 * k + 7163) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 21490) = 147456 * k + 10745 := by
    unfold C
    simp [show (294912 * k + 21490) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 10745) = 442368 * k + 32236 := by
    unfold C
    simp [show (147456 * k + 10745) % 2 ≠ 0 by omega]
    omega
  have h6 : C (442368 * k + 32236) = 221184 * k + 16118 := by
    unfold C
    simp [show (442368 * k + 32236) % 2 = 0 by omega]
    omega
  have h7 : C (221184 * k + 16118) = 110592 * k + 8059 := by
    unfold C
    simp [show (221184 * k + 16118) % 2 = 0 by omega]
    omega
  have h8 : C (110592 * k + 8059) = 331776 * k + 24178 := by
    unfold C
    simp [show (110592 * k + 8059) % 2 ≠ 0 by omega]
    omega
  have h9 : C (331776 * k + 24178) = 165888 * k + 12089 := by
    unfold C
    simp [show (331776 * k + 24178) % 2 = 0 by omega]
    omega
  have h10 : C (165888 * k + 12089) = 497664 * k + 36268 := by
    unfold C
    simp [show (165888 * k + 12089) % 2 ≠ 0 by omega]
    omega
  have h11 : C (497664 * k + 36268) = 248832 * k + 18134 := by
    unfold C
    simp [show (497664 * k + 36268) % 2 = 0 by omega]
    omega
  have h12 : C (248832 * k + 18134) = 124416 * k + 9067 := by
    unfold C
    simp [show (248832 * k + 18134) % 2 = 0 by omega]
    omega
  have h13 : C (124416 * k + 9067) = 373248 * k + 27202 := by
    unfold C
    simp [show (124416 * k + 9067) % 2 ≠ 0 by omega]
    omega
  have h14 : C (373248 * k + 27202) = 186624 * k + 13601 := by
    unfold C
    simp [show (373248 * k + 27202) % 2 = 0 by omega]
    omega
  have h15 : C (186624 * k + 13601) = 559872 * k + 40804 := by
    unfold C
    simp [show (186624 * k + 13601) % 2 ≠ 0 by omega]
    omega
  have h16 : C (559872 * k + 40804) = 279936 * k + 20402 := by
    unfold C
    simp [show (559872 * k + 40804) % 2 = 0 by omega]
    omega
  have h17 : C (279936 * k + 20402) = 139968 * k + 10201 := by
    unfold C
    simp [show (279936 * k + 20402) % 2 = 0 by omega]
    omega
  have h18 : C (139968 * k + 10201) = 419904 * k + 30604 := by
    unfold C
    simp [show (139968 * k + 10201) % 2 ≠ 0 by omega]
    omega
  have h19 : C (419904 * k + 30604) = 209952 * k + 15302 := by
    unfold C
    simp [show (419904 * k + 30604) % 2 = 0 by omega]
    omega
  have h20 : C (209952 * k + 15302) = 104976 * k + 7651 := by
    unfold C
    simp [show (209952 * k + 15302) % 2 = 0 by omega]
    omega
  have h21 : C (104976 * k + 7651) = 314928 * k + 22954 := by
    unfold C
    simp [show (104976 * k + 7651) % 2 ≠ 0 by omega]
    omega
  have h22 : C (314928 * k + 22954) = 157464 * k + 11477 := by
    unfold C
    simp [show (314928 * k + 22954) % 2 = 0 by omega]
    omega
  have h23 : C (157464 * k + 11477) = 472392 * k + 34432 := by
    unfold C
    simp [show (157464 * k + 11477) % 2 ≠ 0 by omega]
    omega
  have h24 : C (472392 * k + 34432) = 236196 * k + 17216 := by
    unfold C
    simp [show (472392 * k + 34432) % 2 = 0 by omega]
    omega
  have h25 : C (236196 * k + 17216) = 118098 * k + 8608 := by
    unfold C
    simp [show (236196 * k + 17216) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 8608) = 59049 * k + 4304 := by
    unfold C
    simp [show (118098 * k + 8608) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 4775) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 4775)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_4799 : ∀ k : Nat,
    iterate (65536 * k + 4799) 26 = 59049 * k + 4325 ∧
      59049 * k + 4325 < 65536 * k + 4799 := by
  intro k
  have h1 : C (65536 * k + 4799) = 196608 * k + 14398 := by
    unfold C
    simp [show (65536 * k + 4799) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 14398) = 98304 * k + 7199 := by
    unfold C
    simp [show (196608 * k + 14398) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 7199) = 294912 * k + 21598 := by
    unfold C
    simp [show (98304 * k + 7199) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 21598) = 147456 * k + 10799 := by
    unfold C
    simp [show (294912 * k + 21598) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 10799) = 442368 * k + 32398 := by
    unfold C
    simp [show (147456 * k + 10799) % 2 ≠ 0 by omega]
    omega
  have h6 : C (442368 * k + 32398) = 221184 * k + 16199 := by
    unfold C
    simp [show (442368 * k + 32398) % 2 = 0 by omega]
    omega
  have h7 : C (221184 * k + 16199) = 663552 * k + 48598 := by
    unfold C
    simp [show (221184 * k + 16199) % 2 ≠ 0 by omega]
    omega
  have h8 : C (663552 * k + 48598) = 331776 * k + 24299 := by
    unfold C
    simp [show (663552 * k + 48598) % 2 = 0 by omega]
    omega
  have h9 : C (331776 * k + 24299) = 995328 * k + 72898 := by
    unfold C
    simp [show (331776 * k + 24299) % 2 ≠ 0 by omega]
    omega
  have h10 : C (995328 * k + 72898) = 497664 * k + 36449 := by
    unfold C
    simp [show (995328 * k + 72898) % 2 = 0 by omega]
    omega
  have h11 : C (497664 * k + 36449) = 1492992 * k + 109348 := by
    unfold C
    simp [show (497664 * k + 36449) % 2 ≠ 0 by omega]
    omega
  have h12 : C (1492992 * k + 109348) = 746496 * k + 54674 := by
    unfold C
    simp [show (1492992 * k + 109348) % 2 = 0 by omega]
    omega
  have h13 : C (746496 * k + 54674) = 373248 * k + 27337 := by
    unfold C
    simp [show (746496 * k + 54674) % 2 = 0 by omega]
    omega
  have h14 : C (373248 * k + 27337) = 1119744 * k + 82012 := by
    unfold C
    simp [show (373248 * k + 27337) % 2 ≠ 0 by omega]
    omega
  have h15 : C (1119744 * k + 82012) = 559872 * k + 41006 := by
    unfold C
    simp [show (1119744 * k + 82012) % 2 = 0 by omega]
    omega
  have h16 : C (559872 * k + 41006) = 279936 * k + 20503 := by
    unfold C
    simp [show (559872 * k + 41006) % 2 = 0 by omega]
    omega
  have h17 : C (279936 * k + 20503) = 839808 * k + 61510 := by
    unfold C
    simp [show (279936 * k + 20503) % 2 ≠ 0 by omega]
    omega
  have h18 : C (839808 * k + 61510) = 419904 * k + 30755 := by
    unfold C
    simp [show (839808 * k + 61510) % 2 = 0 by omega]
    omega
  have h19 : C (419904 * k + 30755) = 1259712 * k + 92266 := by
    unfold C
    simp [show (419904 * k + 30755) % 2 ≠ 0 by omega]
    omega
  have h20 : C (1259712 * k + 92266) = 629856 * k + 46133 := by
    unfold C
    simp [show (1259712 * k + 92266) % 2 = 0 by omega]
    omega
  have h21 : C (629856 * k + 46133) = 1889568 * k + 138400 := by
    unfold C
    simp [show (629856 * k + 46133) % 2 ≠ 0 by omega]
    omega
  have h22 : C (1889568 * k + 138400) = 944784 * k + 69200 := by
    unfold C
    simp [show (1889568 * k + 138400) % 2 = 0 by omega]
    omega
  have h23 : C (944784 * k + 69200) = 472392 * k + 34600 := by
    unfold C
    simp [show (944784 * k + 69200) % 2 = 0 by omega]
    omega
  have h24 : C (472392 * k + 34600) = 236196 * k + 17300 := by
    unfold C
    simp [show (472392 * k + 34600) % 2 = 0 by omega]
    omega
  have h25 : C (236196 * k + 17300) = 118098 * k + 8650 := by
    unfold C
    simp [show (236196 * k + 17300) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 8650) = 59049 * k + 4325 := by
    unfold C
    simp [show (118098 * k + 8650) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 4799) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 4799)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_4815 : ∀ k : Nat,
    iterate (65536 * k + 4815) 26 = 59049 * k + 4340 ∧
      59049 * k + 4340 < 65536 * k + 4815 := by
  intro k
  have h1 : C (65536 * k + 4815) = 196608 * k + 14446 := by
    unfold C
    simp [show (65536 * k + 4815) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 14446) = 98304 * k + 7223 := by
    unfold C
    simp [show (196608 * k + 14446) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 7223) = 294912 * k + 21670 := by
    unfold C
    simp [show (98304 * k + 7223) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 21670) = 147456 * k + 10835 := by
    unfold C
    simp [show (294912 * k + 21670) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 10835) = 442368 * k + 32506 := by
    unfold C
    simp [show (147456 * k + 10835) % 2 ≠ 0 by omega]
    omega
  have h6 : C (442368 * k + 32506) = 221184 * k + 16253 := by
    unfold C
    simp [show (442368 * k + 32506) % 2 = 0 by omega]
    omega
  have h7 : C (221184 * k + 16253) = 663552 * k + 48760 := by
    unfold C
    simp [show (221184 * k + 16253) % 2 ≠ 0 by omega]
    omega
  have h8 : C (663552 * k + 48760) = 331776 * k + 24380 := by
    unfold C
    simp [show (663552 * k + 48760) % 2 = 0 by omega]
    omega
  have h9 : C (331776 * k + 24380) = 165888 * k + 12190 := by
    unfold C
    simp [show (331776 * k + 24380) % 2 = 0 by omega]
    omega
  have h10 : C (165888 * k + 12190) = 82944 * k + 6095 := by
    unfold C
    simp [show (165888 * k + 12190) % 2 = 0 by omega]
    omega
  have h11 : C (82944 * k + 6095) = 248832 * k + 18286 := by
    unfold C
    simp [show (82944 * k + 6095) % 2 ≠ 0 by omega]
    omega
  have h12 : C (248832 * k + 18286) = 124416 * k + 9143 := by
    unfold C
    simp [show (248832 * k + 18286) % 2 = 0 by omega]
    omega
  have h13 : C (124416 * k + 9143) = 373248 * k + 27430 := by
    unfold C
    simp [show (124416 * k + 9143) % 2 ≠ 0 by omega]
    omega
  have h14 : C (373248 * k + 27430) = 186624 * k + 13715 := by
    unfold C
    simp [show (373248 * k + 27430) % 2 = 0 by omega]
    omega
  have h15 : C (186624 * k + 13715) = 559872 * k + 41146 := by
    unfold C
    simp [show (186624 * k + 13715) % 2 ≠ 0 by omega]
    omega
  have h16 : C (559872 * k + 41146) = 279936 * k + 20573 := by
    unfold C
    simp [show (559872 * k + 41146) % 2 = 0 by omega]
    omega
  have h17 : C (279936 * k + 20573) = 839808 * k + 61720 := by
    unfold C
    simp [show (279936 * k + 20573) % 2 ≠ 0 by omega]
    omega
  have h18 : C (839808 * k + 61720) = 419904 * k + 30860 := by
    unfold C
    simp [show (839808 * k + 61720) % 2 = 0 by omega]
    omega
  have h19 : C (419904 * k + 30860) = 209952 * k + 15430 := by
    unfold C
    simp [show (419904 * k + 30860) % 2 = 0 by omega]
    omega
  have h20 : C (209952 * k + 15430) = 104976 * k + 7715 := by
    unfold C
    simp [show (209952 * k + 15430) % 2 = 0 by omega]
    omega
  have h21 : C (104976 * k + 7715) = 314928 * k + 23146 := by
    unfold C
    simp [show (104976 * k + 7715) % 2 ≠ 0 by omega]
    omega
  have h22 : C (314928 * k + 23146) = 157464 * k + 11573 := by
    unfold C
    simp [show (314928 * k + 23146) % 2 = 0 by omega]
    omega
  have h23 : C (157464 * k + 11573) = 472392 * k + 34720 := by
    unfold C
    simp [show (157464 * k + 11573) % 2 ≠ 0 by omega]
    omega
  have h24 : C (472392 * k + 34720) = 236196 * k + 17360 := by
    unfold C
    simp [show (472392 * k + 34720) % 2 = 0 by omega]
    omega
  have h25 : C (236196 * k + 17360) = 118098 * k + 8680 := by
    unfold C
    simp [show (236196 * k + 17360) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 8680) = 59049 * k + 4340 := by
    unfold C
    simp [show (118098 * k + 8680) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 4815) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 4815)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_4895 : ∀ k : Nat,
    iterate (65536 * k + 4895) 26 = 59049 * k + 4412 ∧
      59049 * k + 4412 < 65536 * k + 4895 := by
  intro k
  have h1 : C (65536 * k + 4895) = 196608 * k + 14686 := by
    unfold C
    simp [show (65536 * k + 4895) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 14686) = 98304 * k + 7343 := by
    unfold C
    simp [show (196608 * k + 14686) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 7343) = 294912 * k + 22030 := by
    unfold C
    simp [show (98304 * k + 7343) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 22030) = 147456 * k + 11015 := by
    unfold C
    simp [show (294912 * k + 22030) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 11015) = 442368 * k + 33046 := by
    unfold C
    simp [show (147456 * k + 11015) % 2 ≠ 0 by omega]
    omega
  have h6 : C (442368 * k + 33046) = 221184 * k + 16523 := by
    unfold C
    simp [show (442368 * k + 33046) % 2 = 0 by omega]
    omega
  have h7 : C (221184 * k + 16523) = 663552 * k + 49570 := by
    unfold C
    simp [show (221184 * k + 16523) % 2 ≠ 0 by omega]
    omega
  have h8 : C (663552 * k + 49570) = 331776 * k + 24785 := by
    unfold C
    simp [show (663552 * k + 49570) % 2 = 0 by omega]
    omega
  have h9 : C (331776 * k + 24785) = 995328 * k + 74356 := by
    unfold C
    simp [show (331776 * k + 24785) % 2 ≠ 0 by omega]
    omega
  have h10 : C (995328 * k + 74356) = 497664 * k + 37178 := by
    unfold C
    simp [show (995328 * k + 74356) % 2 = 0 by omega]
    omega
  have h11 : C (497664 * k + 37178) = 248832 * k + 18589 := by
    unfold C
    simp [show (497664 * k + 37178) % 2 = 0 by omega]
    omega
  have h12 : C (248832 * k + 18589) = 746496 * k + 55768 := by
    unfold C
    simp [show (248832 * k + 18589) % 2 ≠ 0 by omega]
    omega
  have h13 : C (746496 * k + 55768) = 373248 * k + 27884 := by
    unfold C
    simp [show (746496 * k + 55768) % 2 = 0 by omega]
    omega
  have h14 : C (373248 * k + 27884) = 186624 * k + 13942 := by
    unfold C
    simp [show (373248 * k + 27884) % 2 = 0 by omega]
    omega
  have h15 : C (186624 * k + 13942) = 93312 * k + 6971 := by
    unfold C
    simp [show (186624 * k + 13942) % 2 = 0 by omega]
    omega
  have h16 : C (93312 * k + 6971) = 279936 * k + 20914 := by
    unfold C
    simp [show (93312 * k + 6971) % 2 ≠ 0 by omega]
    omega
  have h17 : C (279936 * k + 20914) = 139968 * k + 10457 := by
    unfold C
    simp [show (279936 * k + 20914) % 2 = 0 by omega]
    omega
  have h18 : C (139968 * k + 10457) = 419904 * k + 31372 := by
    unfold C
    simp [show (139968 * k + 10457) % 2 ≠ 0 by omega]
    omega
  have h19 : C (419904 * k + 31372) = 209952 * k + 15686 := by
    unfold C
    simp [show (419904 * k + 31372) % 2 = 0 by omega]
    omega
  have h20 : C (209952 * k + 15686) = 104976 * k + 7843 := by
    unfold C
    simp [show (209952 * k + 15686) % 2 = 0 by omega]
    omega
  have h21 : C (104976 * k + 7843) = 314928 * k + 23530 := by
    unfold C
    simp [show (104976 * k + 7843) % 2 ≠ 0 by omega]
    omega
  have h22 : C (314928 * k + 23530) = 157464 * k + 11765 := by
    unfold C
    simp [show (314928 * k + 23530) % 2 = 0 by omega]
    omega
  have h23 : C (157464 * k + 11765) = 472392 * k + 35296 := by
    unfold C
    simp [show (157464 * k + 11765) % 2 ≠ 0 by omega]
    omega
  have h24 : C (472392 * k + 35296) = 236196 * k + 17648 := by
    unfold C
    simp [show (472392 * k + 35296) % 2 = 0 by omega]
    omega
  have h25 : C (236196 * k + 17648) = 118098 * k + 8824 := by
    unfold C
    simp [show (236196 * k + 17648) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 8824) = 59049 * k + 4412 := by
    unfold C
    simp [show (118098 * k + 8824) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 4895) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 4895)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_4991 : ∀ k : Nat,
    iterate (65536 * k + 4991) 26 = 59049 * k + 4498 ∧
      59049 * k + 4498 < 65536 * k + 4991 := by
  intro k
  have h1 : C (65536 * k + 4991) = 196608 * k + 14974 := by
    unfold C
    simp [show (65536 * k + 4991) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 14974) = 98304 * k + 7487 := by
    unfold C
    simp [show (196608 * k + 14974) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 7487) = 294912 * k + 22462 := by
    unfold C
    simp [show (98304 * k + 7487) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 22462) = 147456 * k + 11231 := by
    unfold C
    simp [show (294912 * k + 22462) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 11231) = 442368 * k + 33694 := by
    unfold C
    simp [show (147456 * k + 11231) % 2 ≠ 0 by omega]
    omega
  have h6 : C (442368 * k + 33694) = 221184 * k + 16847 := by
    unfold C
    simp [show (442368 * k + 33694) % 2 = 0 by omega]
    omega
  have h7 : C (221184 * k + 16847) = 663552 * k + 50542 := by
    unfold C
    simp [show (221184 * k + 16847) % 2 ≠ 0 by omega]
    omega
  have h8 : C (663552 * k + 50542) = 331776 * k + 25271 := by
    unfold C
    simp [show (663552 * k + 50542) % 2 = 0 by omega]
    omega
  have h9 : C (331776 * k + 25271) = 995328 * k + 75814 := by
    unfold C
    simp [show (331776 * k + 25271) % 2 ≠ 0 by omega]
    omega
  have h10 : C (995328 * k + 75814) = 497664 * k + 37907 := by
    unfold C
    simp [show (995328 * k + 75814) % 2 = 0 by omega]
    omega
  have h11 : C (497664 * k + 37907) = 1492992 * k + 113722 := by
    unfold C
    simp [show (497664 * k + 37907) % 2 ≠ 0 by omega]
    omega
  have h12 : C (1492992 * k + 113722) = 746496 * k + 56861 := by
    unfold C
    simp [show (1492992 * k + 113722) % 2 = 0 by omega]
    omega
  have h13 : C (746496 * k + 56861) = 2239488 * k + 170584 := by
    unfold C
    simp [show (746496 * k + 56861) % 2 ≠ 0 by omega]
    omega
  have h14 : C (2239488 * k + 170584) = 1119744 * k + 85292 := by
    unfold C
    simp [show (2239488 * k + 170584) % 2 = 0 by omega]
    omega
  have h15 : C (1119744 * k + 85292) = 559872 * k + 42646 := by
    unfold C
    simp [show (1119744 * k + 85292) % 2 = 0 by omega]
    omega
  have h16 : C (559872 * k + 42646) = 279936 * k + 21323 := by
    unfold C
    simp [show (559872 * k + 42646) % 2 = 0 by omega]
    omega
  have h17 : C (279936 * k + 21323) = 839808 * k + 63970 := by
    unfold C
    simp [show (279936 * k + 21323) % 2 ≠ 0 by omega]
    omega
  have h18 : C (839808 * k + 63970) = 419904 * k + 31985 := by
    unfold C
    simp [show (839808 * k + 63970) % 2 = 0 by omega]
    omega
  have h19 : C (419904 * k + 31985) = 1259712 * k + 95956 := by
    unfold C
    simp [show (419904 * k + 31985) % 2 ≠ 0 by omega]
    omega
  have h20 : C (1259712 * k + 95956) = 629856 * k + 47978 := by
    unfold C
    simp [show (1259712 * k + 95956) % 2 = 0 by omega]
    omega
  have h21 : C (629856 * k + 47978) = 314928 * k + 23989 := by
    unfold C
    simp [show (629856 * k + 47978) % 2 = 0 by omega]
    omega
  have h22 : C (314928 * k + 23989) = 944784 * k + 71968 := by
    unfold C
    simp [show (314928 * k + 23989) % 2 ≠ 0 by omega]
    omega
  have h23 : C (944784 * k + 71968) = 472392 * k + 35984 := by
    unfold C
    simp [show (944784 * k + 71968) % 2 = 0 by omega]
    omega
  have h24 : C (472392 * k + 35984) = 236196 * k + 17992 := by
    unfold C
    simp [show (472392 * k + 35984) % 2 = 0 by omega]
    omega
  have h25 : C (236196 * k + 17992) = 118098 * k + 8996 := by
    unfold C
    simp [show (236196 * k + 17992) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 8996) = 59049 * k + 4498 := by
    unfold C
    simp [show (118098 * k + 8996) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 4991) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 4991)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_5087 : ∀ k : Nat,
    iterate (65536 * k + 5087) 26 = 59049 * k + 4585 ∧
      59049 * k + 4585 < 65536 * k + 5087 := by
  intro k
  have h1 : C (65536 * k + 5087) = 196608 * k + 15262 := by
    unfold C
    simp [show (65536 * k + 5087) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 15262) = 98304 * k + 7631 := by
    unfold C
    simp [show (196608 * k + 15262) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 7631) = 294912 * k + 22894 := by
    unfold C
    simp [show (98304 * k + 7631) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 22894) = 147456 * k + 11447 := by
    unfold C
    simp [show (294912 * k + 22894) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 11447) = 442368 * k + 34342 := by
    unfold C
    simp [show (147456 * k + 11447) % 2 ≠ 0 by omega]
    omega
  have h6 : C (442368 * k + 34342) = 221184 * k + 17171 := by
    unfold C
    simp [show (442368 * k + 34342) % 2 = 0 by omega]
    omega
  have h7 : C (221184 * k + 17171) = 663552 * k + 51514 := by
    unfold C
    simp [show (221184 * k + 17171) % 2 ≠ 0 by omega]
    omega
  have h8 : C (663552 * k + 51514) = 331776 * k + 25757 := by
    unfold C
    simp [show (663552 * k + 51514) % 2 = 0 by omega]
    omega
  have h9 : C (331776 * k + 25757) = 995328 * k + 77272 := by
    unfold C
    simp [show (331776 * k + 25757) % 2 ≠ 0 by omega]
    omega
  have h10 : C (995328 * k + 77272) = 497664 * k + 38636 := by
    unfold C
    simp [show (995328 * k + 77272) % 2 = 0 by omega]
    omega
  have h11 : C (497664 * k + 38636) = 248832 * k + 19318 := by
    unfold C
    simp [show (497664 * k + 38636) % 2 = 0 by omega]
    omega
  have h12 : C (248832 * k + 19318) = 124416 * k + 9659 := by
    unfold C
    simp [show (248832 * k + 19318) % 2 = 0 by omega]
    omega
  have h13 : C (124416 * k + 9659) = 373248 * k + 28978 := by
    unfold C
    simp [show (124416 * k + 9659) % 2 ≠ 0 by omega]
    omega
  have h14 : C (373248 * k + 28978) = 186624 * k + 14489 := by
    unfold C
    simp [show (373248 * k + 28978) % 2 = 0 by omega]
    omega
  have h15 : C (186624 * k + 14489) = 559872 * k + 43468 := by
    unfold C
    simp [show (186624 * k + 14489) % 2 ≠ 0 by omega]
    omega
  have h16 : C (559872 * k + 43468) = 279936 * k + 21734 := by
    unfold C
    simp [show (559872 * k + 43468) % 2 = 0 by omega]
    omega
  have h17 : C (279936 * k + 21734) = 139968 * k + 10867 := by
    unfold C
    simp [show (279936 * k + 21734) % 2 = 0 by omega]
    omega
  have h18 : C (139968 * k + 10867) = 419904 * k + 32602 := by
    unfold C
    simp [show (139968 * k + 10867) % 2 ≠ 0 by omega]
    omega
  have h19 : C (419904 * k + 32602) = 209952 * k + 16301 := by
    unfold C
    simp [show (419904 * k + 32602) % 2 = 0 by omega]
    omega
  have h20 : C (209952 * k + 16301) = 629856 * k + 48904 := by
    unfold C
    simp [show (209952 * k + 16301) % 2 ≠ 0 by omega]
    omega
  have h21 : C (629856 * k + 48904) = 314928 * k + 24452 := by
    unfold C
    simp [show (629856 * k + 48904) % 2 = 0 by omega]
    omega
  have h22 : C (314928 * k + 24452) = 157464 * k + 12226 := by
    unfold C
    simp [show (314928 * k + 24452) % 2 = 0 by omega]
    omega
  have h23 : C (157464 * k + 12226) = 78732 * k + 6113 := by
    unfold C
    simp [show (157464 * k + 12226) % 2 = 0 by omega]
    omega
  have h24 : C (78732 * k + 6113) = 236196 * k + 18340 := by
    unfold C
    simp [show (78732 * k + 6113) % 2 ≠ 0 by omega]
    omega
  have h25 : C (236196 * k + 18340) = 118098 * k + 9170 := by
    unfold C
    simp [show (236196 * k + 18340) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 9170) = 59049 * k + 4585 := by
    unfold C
    simp [show (118098 * k + 9170) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 5087) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 5087)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_5343 : ∀ k : Nat,
    iterate (65536 * k + 5343) 26 = 59049 * k + 4816 ∧
      59049 * k + 4816 < 65536 * k + 5343 := by
  intro k
  have h1 : C (65536 * k + 5343) = 196608 * k + 16030 := by
    unfold C
    simp [show (65536 * k + 5343) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 16030) = 98304 * k + 8015 := by
    unfold C
    simp [show (196608 * k + 16030) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 8015) = 294912 * k + 24046 := by
    unfold C
    simp [show (98304 * k + 8015) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 24046) = 147456 * k + 12023 := by
    unfold C
    simp [show (294912 * k + 24046) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 12023) = 442368 * k + 36070 := by
    unfold C
    simp [show (147456 * k + 12023) % 2 ≠ 0 by omega]
    omega
  have h6 : C (442368 * k + 36070) = 221184 * k + 18035 := by
    unfold C
    simp [show (442368 * k + 36070) % 2 = 0 by omega]
    omega
  have h7 : C (221184 * k + 18035) = 663552 * k + 54106 := by
    unfold C
    simp [show (221184 * k + 18035) % 2 ≠ 0 by omega]
    omega
  have h8 : C (663552 * k + 54106) = 331776 * k + 27053 := by
    unfold C
    simp [show (663552 * k + 54106) % 2 = 0 by omega]
    omega
  have h9 : C (331776 * k + 27053) = 995328 * k + 81160 := by
    unfold C
    simp [show (331776 * k + 27053) % 2 ≠ 0 by omega]
    omega
  have h10 : C (995328 * k + 81160) = 497664 * k + 40580 := by
    unfold C
    simp [show (995328 * k + 81160) % 2 = 0 by omega]
    omega
  have h11 : C (497664 * k + 40580) = 248832 * k + 20290 := by
    unfold C
    simp [show (497664 * k + 40580) % 2 = 0 by omega]
    omega
  have h12 : C (248832 * k + 20290) = 124416 * k + 10145 := by
    unfold C
    simp [show (248832 * k + 20290) % 2 = 0 by omega]
    omega
  have h13 : C (124416 * k + 10145) = 373248 * k + 30436 := by
    unfold C
    simp [show (124416 * k + 10145) % 2 ≠ 0 by omega]
    omega
  have h14 : C (373248 * k + 30436) = 186624 * k + 15218 := by
    unfold C
    simp [show (373248 * k + 30436) % 2 = 0 by omega]
    omega
  have h15 : C (186624 * k + 15218) = 93312 * k + 7609 := by
    unfold C
    simp [show (186624 * k + 15218) % 2 = 0 by omega]
    omega
  have h16 : C (93312 * k + 7609) = 279936 * k + 22828 := by
    unfold C
    simp [show (93312 * k + 7609) % 2 ≠ 0 by omega]
    omega
  have h17 : C (279936 * k + 22828) = 139968 * k + 11414 := by
    unfold C
    simp [show (279936 * k + 22828) % 2 = 0 by omega]
    omega
  have h18 : C (139968 * k + 11414) = 69984 * k + 5707 := by
    unfold C
    simp [show (139968 * k + 11414) % 2 = 0 by omega]
    omega
  have h19 : C (69984 * k + 5707) = 209952 * k + 17122 := by
    unfold C
    simp [show (69984 * k + 5707) % 2 ≠ 0 by omega]
    omega
  have h20 : C (209952 * k + 17122) = 104976 * k + 8561 := by
    unfold C
    simp [show (209952 * k + 17122) % 2 = 0 by omega]
    omega
  have h21 : C (104976 * k + 8561) = 314928 * k + 25684 := by
    unfold C
    simp [show (104976 * k + 8561) % 2 ≠ 0 by omega]
    omega
  have h22 : C (314928 * k + 25684) = 157464 * k + 12842 := by
    unfold C
    simp [show (314928 * k + 25684) % 2 = 0 by omega]
    omega
  have h23 : C (157464 * k + 12842) = 78732 * k + 6421 := by
    unfold C
    simp [show (157464 * k + 12842) % 2 = 0 by omega]
    omega
  have h24 : C (78732 * k + 6421) = 236196 * k + 19264 := by
    unfold C
    simp [show (78732 * k + 6421) % 2 ≠ 0 by omega]
    omega
  have h25 : C (236196 * k + 19264) = 118098 * k + 9632 := by
    unfold C
    simp [show (236196 * k + 19264) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 9632) = 59049 * k + 4816 := by
    unfold C
    simp [show (118098 * k + 9632) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 5343) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 5343)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_5375 : ∀ k : Nat,
    iterate (65536 * k + 5375) 26 = 59049 * k + 4844 ∧
      59049 * k + 4844 < 65536 * k + 5375 := by
  intro k
  have h1 : C (65536 * k + 5375) = 196608 * k + 16126 := by
    unfold C
    simp [show (65536 * k + 5375) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 16126) = 98304 * k + 8063 := by
    unfold C
    simp [show (196608 * k + 16126) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 8063) = 294912 * k + 24190 := by
    unfold C
    simp [show (98304 * k + 8063) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 24190) = 147456 * k + 12095 := by
    unfold C
    simp [show (294912 * k + 24190) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 12095) = 442368 * k + 36286 := by
    unfold C
    simp [show (147456 * k + 12095) % 2 ≠ 0 by omega]
    omega
  have h6 : C (442368 * k + 36286) = 221184 * k + 18143 := by
    unfold C
    simp [show (442368 * k + 36286) % 2 = 0 by omega]
    omega
  have h7 : C (221184 * k + 18143) = 663552 * k + 54430 := by
    unfold C
    simp [show (221184 * k + 18143) % 2 ≠ 0 by omega]
    omega
  have h8 : C (663552 * k + 54430) = 331776 * k + 27215 := by
    unfold C
    simp [show (663552 * k + 54430) % 2 = 0 by omega]
    omega
  have h9 : C (331776 * k + 27215) = 995328 * k + 81646 := by
    unfold C
    simp [show (331776 * k + 27215) % 2 ≠ 0 by omega]
    omega
  have h10 : C (995328 * k + 81646) = 497664 * k + 40823 := by
    unfold C
    simp [show (995328 * k + 81646) % 2 = 0 by omega]
    omega
  have h11 : C (497664 * k + 40823) = 1492992 * k + 122470 := by
    unfold C
    simp [show (497664 * k + 40823) % 2 ≠ 0 by omega]
    omega
  have h12 : C (1492992 * k + 122470) = 746496 * k + 61235 := by
    unfold C
    simp [show (1492992 * k + 122470) % 2 = 0 by omega]
    omega
  have h13 : C (746496 * k + 61235) = 2239488 * k + 183706 := by
    unfold C
    simp [show (746496 * k + 61235) % 2 ≠ 0 by omega]
    omega
  have h14 : C (2239488 * k + 183706) = 1119744 * k + 91853 := by
    unfold C
    simp [show (2239488 * k + 183706) % 2 = 0 by omega]
    omega
  have h15 : C (1119744 * k + 91853) = 3359232 * k + 275560 := by
    unfold C
    simp [show (1119744 * k + 91853) % 2 ≠ 0 by omega]
    omega
  have h16 : C (3359232 * k + 275560) = 1679616 * k + 137780 := by
    unfold C
    simp [show (3359232 * k + 275560) % 2 = 0 by omega]
    omega
  have h17 : C (1679616 * k + 137780) = 839808 * k + 68890 := by
    unfold C
    simp [show (1679616 * k + 137780) % 2 = 0 by omega]
    omega
  have h18 : C (839808 * k + 68890) = 419904 * k + 34445 := by
    unfold C
    simp [show (839808 * k + 68890) % 2 = 0 by omega]
    omega
  have h19 : C (419904 * k + 34445) = 1259712 * k + 103336 := by
    unfold C
    simp [show (419904 * k + 34445) % 2 ≠ 0 by omega]
    omega
  have h20 : C (1259712 * k + 103336) = 629856 * k + 51668 := by
    unfold C
    simp [show (1259712 * k + 103336) % 2 = 0 by omega]
    omega
  have h21 : C (629856 * k + 51668) = 314928 * k + 25834 := by
    unfold C
    simp [show (629856 * k + 51668) % 2 = 0 by omega]
    omega
  have h22 : C (314928 * k + 25834) = 157464 * k + 12917 := by
    unfold C
    simp [show (314928 * k + 25834) % 2 = 0 by omega]
    omega
  have h23 : C (157464 * k + 12917) = 472392 * k + 38752 := by
    unfold C
    simp [show (157464 * k + 12917) % 2 ≠ 0 by omega]
    omega
  have h24 : C (472392 * k + 38752) = 236196 * k + 19376 := by
    unfold C
    simp [show (472392 * k + 38752) % 2 = 0 by omega]
    omega
  have h25 : C (236196 * k + 19376) = 118098 * k + 9688 := by
    unfold C
    simp [show (236196 * k + 19376) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 9688) = 59049 * k + 4844 := by
    unfold C
    simp [show (118098 * k + 9688) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 5375) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 5375)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_5423 : ∀ k : Nat,
    iterate (65536 * k + 5423) 26 = 59049 * k + 4888 ∧
      59049 * k + 4888 < 65536 * k + 5423 := by
  intro k
  have h1 : C (65536 * k + 5423) = 196608 * k + 16270 := by
    unfold C
    simp [show (65536 * k + 5423) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 16270) = 98304 * k + 8135 := by
    unfold C
    simp [show (196608 * k + 16270) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 8135) = 294912 * k + 24406 := by
    unfold C
    simp [show (98304 * k + 8135) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 24406) = 147456 * k + 12203 := by
    unfold C
    simp [show (294912 * k + 24406) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 12203) = 442368 * k + 36610 := by
    unfold C
    simp [show (147456 * k + 12203) % 2 ≠ 0 by omega]
    omega
  have h6 : C (442368 * k + 36610) = 221184 * k + 18305 := by
    unfold C
    simp [show (442368 * k + 36610) % 2 = 0 by omega]
    omega
  have h7 : C (221184 * k + 18305) = 663552 * k + 54916 := by
    unfold C
    simp [show (221184 * k + 18305) % 2 ≠ 0 by omega]
    omega
  have h8 : C (663552 * k + 54916) = 331776 * k + 27458 := by
    unfold C
    simp [show (663552 * k + 54916) % 2 = 0 by omega]
    omega
  have h9 : C (331776 * k + 27458) = 165888 * k + 13729 := by
    unfold C
    simp [show (331776 * k + 27458) % 2 = 0 by omega]
    omega
  have h10 : C (165888 * k + 13729) = 497664 * k + 41188 := by
    unfold C
    simp [show (165888 * k + 13729) % 2 ≠ 0 by omega]
    omega
  have h11 : C (497664 * k + 41188) = 248832 * k + 20594 := by
    unfold C
    simp [show (497664 * k + 41188) % 2 = 0 by omega]
    omega
  have h12 : C (248832 * k + 20594) = 124416 * k + 10297 := by
    unfold C
    simp [show (248832 * k + 20594) % 2 = 0 by omega]
    omega
  have h13 : C (124416 * k + 10297) = 373248 * k + 30892 := by
    unfold C
    simp [show (124416 * k + 10297) % 2 ≠ 0 by omega]
    omega
  have h14 : C (373248 * k + 30892) = 186624 * k + 15446 := by
    unfold C
    simp [show (373248 * k + 30892) % 2 = 0 by omega]
    omega
  have h15 : C (186624 * k + 15446) = 93312 * k + 7723 := by
    unfold C
    simp [show (186624 * k + 15446) % 2 = 0 by omega]
    omega
  have h16 : C (93312 * k + 7723) = 279936 * k + 23170 := by
    unfold C
    simp [show (93312 * k + 7723) % 2 ≠ 0 by omega]
    omega
  have h17 : C (279936 * k + 23170) = 139968 * k + 11585 := by
    unfold C
    simp [show (279936 * k + 23170) % 2 = 0 by omega]
    omega
  have h18 : C (139968 * k + 11585) = 419904 * k + 34756 := by
    unfold C
    simp [show (139968 * k + 11585) % 2 ≠ 0 by omega]
    omega
  have h19 : C (419904 * k + 34756) = 209952 * k + 17378 := by
    unfold C
    simp [show (419904 * k + 34756) % 2 = 0 by omega]
    omega
  have h20 : C (209952 * k + 17378) = 104976 * k + 8689 := by
    unfold C
    simp [show (209952 * k + 17378) % 2 = 0 by omega]
    omega
  have h21 : C (104976 * k + 8689) = 314928 * k + 26068 := by
    unfold C
    simp [show (104976 * k + 8689) % 2 ≠ 0 by omega]
    omega
  have h22 : C (314928 * k + 26068) = 157464 * k + 13034 := by
    unfold C
    simp [show (314928 * k + 26068) % 2 = 0 by omega]
    omega
  have h23 : C (157464 * k + 13034) = 78732 * k + 6517 := by
    unfold C
    simp [show (157464 * k + 13034) % 2 = 0 by omega]
    omega
  have h24 : C (78732 * k + 6517) = 236196 * k + 19552 := by
    unfold C
    simp [show (78732 * k + 6517) % 2 ≠ 0 by omega]
    omega
  have h25 : C (236196 * k + 19552) = 118098 * k + 9776 := by
    unfold C
    simp [show (236196 * k + 19552) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 9776) = 59049 * k + 4888 := by
    unfold C
    simp [show (118098 * k + 9776) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 5423) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 5423)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_5583 : ∀ k : Nat,
    iterate (65536 * k + 5583) 26 = 59049 * k + 5032 ∧
      59049 * k + 5032 < 65536 * k + 5583 := by
  intro k
  have h1 : C (65536 * k + 5583) = 196608 * k + 16750 := by
    unfold C
    simp [show (65536 * k + 5583) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 16750) = 98304 * k + 8375 := by
    unfold C
    simp [show (196608 * k + 16750) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 8375) = 294912 * k + 25126 := by
    unfold C
    simp [show (98304 * k + 8375) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 25126) = 147456 * k + 12563 := by
    unfold C
    simp [show (294912 * k + 25126) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 12563) = 442368 * k + 37690 := by
    unfold C
    simp [show (147456 * k + 12563) % 2 ≠ 0 by omega]
    omega
  have h6 : C (442368 * k + 37690) = 221184 * k + 18845 := by
    unfold C
    simp [show (442368 * k + 37690) % 2 = 0 by omega]
    omega
  have h7 : C (221184 * k + 18845) = 663552 * k + 56536 := by
    unfold C
    simp [show (221184 * k + 18845) % 2 ≠ 0 by omega]
    omega
  have h8 : C (663552 * k + 56536) = 331776 * k + 28268 := by
    unfold C
    simp [show (663552 * k + 56536) % 2 = 0 by omega]
    omega
  have h9 : C (331776 * k + 28268) = 165888 * k + 14134 := by
    unfold C
    simp [show (331776 * k + 28268) % 2 = 0 by omega]
    omega
  have h10 : C (165888 * k + 14134) = 82944 * k + 7067 := by
    unfold C
    simp [show (165888 * k + 14134) % 2 = 0 by omega]
    omega
  have h11 : C (82944 * k + 7067) = 248832 * k + 21202 := by
    unfold C
    simp [show (82944 * k + 7067) % 2 ≠ 0 by omega]
    omega
  have h12 : C (248832 * k + 21202) = 124416 * k + 10601 := by
    unfold C
    simp [show (248832 * k + 21202) % 2 = 0 by omega]
    omega
  have h13 : C (124416 * k + 10601) = 373248 * k + 31804 := by
    unfold C
    simp [show (124416 * k + 10601) % 2 ≠ 0 by omega]
    omega
  have h14 : C (373248 * k + 31804) = 186624 * k + 15902 := by
    unfold C
    simp [show (373248 * k + 31804) % 2 = 0 by omega]
    omega
  have h15 : C (186624 * k + 15902) = 93312 * k + 7951 := by
    unfold C
    simp [show (186624 * k + 15902) % 2 = 0 by omega]
    omega
  have h16 : C (93312 * k + 7951) = 279936 * k + 23854 := by
    unfold C
    simp [show (93312 * k + 7951) % 2 ≠ 0 by omega]
    omega
  have h17 : C (279936 * k + 23854) = 139968 * k + 11927 := by
    unfold C
    simp [show (279936 * k + 23854) % 2 = 0 by omega]
    omega
  have h18 : C (139968 * k + 11927) = 419904 * k + 35782 := by
    unfold C
    simp [show (139968 * k + 11927) % 2 ≠ 0 by omega]
    omega
  have h19 : C (419904 * k + 35782) = 209952 * k + 17891 := by
    unfold C
    simp [show (419904 * k + 35782) % 2 = 0 by omega]
    omega
  have h20 : C (209952 * k + 17891) = 629856 * k + 53674 := by
    unfold C
    simp [show (209952 * k + 17891) % 2 ≠ 0 by omega]
    omega
  have h21 : C (629856 * k + 53674) = 314928 * k + 26837 := by
    unfold C
    simp [show (629856 * k + 53674) % 2 = 0 by omega]
    omega
  have h22 : C (314928 * k + 26837) = 944784 * k + 80512 := by
    unfold C
    simp [show (314928 * k + 26837) % 2 ≠ 0 by omega]
    omega
  have h23 : C (944784 * k + 80512) = 472392 * k + 40256 := by
    unfold C
    simp [show (944784 * k + 80512) % 2 = 0 by omega]
    omega
  have h24 : C (472392 * k + 40256) = 236196 * k + 20128 := by
    unfold C
    simp [show (472392 * k + 40256) % 2 = 0 by omega]
    omega
  have h25 : C (236196 * k + 20128) = 118098 * k + 10064 := by
    unfold C
    simp [show (236196 * k + 20128) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 10064) = 59049 * k + 5032 := by
    unfold C
    simp [show (118098 * k + 10064) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 5583) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 5583)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

end CollatzM16ShardB
