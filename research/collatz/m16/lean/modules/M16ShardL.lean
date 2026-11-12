import Mathlib.Data.Nat.Prime.Basic

namespace CollatzM16ShardL

def C (n : Nat) : Nat := if n % 2 = 0 then n / 2 else 3 * n + 1

def iterate (n t : Nat) : Nat := Nat.rec n (fun _ previous => C previous) t

theorem descent_mod65536_30415 : ∀ k : Nat,
    iterate (65536 * k + 30415) 26 = 59049 * k + 27406 ∧
      59049 * k + 27406 < 65536 * k + 30415 := by
  intro k
  have h1 : C (65536 * k + 30415) = 196608 * k + 91246 := by
    unfold C
    simp [show (65536 * k + 30415) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 91246) = 98304 * k + 45623 := by
    unfold C
    simp [show (196608 * k + 91246) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 45623) = 294912 * k + 136870 := by
    unfold C
    simp [show (98304 * k + 45623) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 136870) = 147456 * k + 68435 := by
    unfold C
    simp [show (294912 * k + 136870) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 68435) = 442368 * k + 205306 := by
    unfold C
    simp [show (147456 * k + 68435) % 2 ≠ 0 by omega]
    omega
  have h6 : C (442368 * k + 205306) = 221184 * k + 102653 := by
    unfold C
    simp [show (442368 * k + 205306) % 2 = 0 by omega]
    omega
  have h7 : C (221184 * k + 102653) = 663552 * k + 307960 := by
    unfold C
    simp [show (221184 * k + 102653) % 2 ≠ 0 by omega]
    omega
  have h8 : C (663552 * k + 307960) = 331776 * k + 153980 := by
    unfold C
    simp [show (663552 * k + 307960) % 2 = 0 by omega]
    omega
  have h9 : C (331776 * k + 153980) = 165888 * k + 76990 := by
    unfold C
    simp [show (331776 * k + 153980) % 2 = 0 by omega]
    omega
  have h10 : C (165888 * k + 76990) = 82944 * k + 38495 := by
    unfold C
    simp [show (165888 * k + 76990) % 2 = 0 by omega]
    omega
  have h11 : C (82944 * k + 38495) = 248832 * k + 115486 := by
    unfold C
    simp [show (82944 * k + 38495) % 2 ≠ 0 by omega]
    omega
  have h12 : C (248832 * k + 115486) = 124416 * k + 57743 := by
    unfold C
    simp [show (248832 * k + 115486) % 2 = 0 by omega]
    omega
  have h13 : C (124416 * k + 57743) = 373248 * k + 173230 := by
    unfold C
    simp [show (124416 * k + 57743) % 2 ≠ 0 by omega]
    omega
  have h14 : C (373248 * k + 173230) = 186624 * k + 86615 := by
    unfold C
    simp [show (373248 * k + 173230) % 2 = 0 by omega]
    omega
  have h15 : C (186624 * k + 86615) = 559872 * k + 259846 := by
    unfold C
    simp [show (186624 * k + 86615) % 2 ≠ 0 by omega]
    omega
  have h16 : C (559872 * k + 259846) = 279936 * k + 129923 := by
    unfold C
    simp [show (559872 * k + 259846) % 2 = 0 by omega]
    omega
  have h17 : C (279936 * k + 129923) = 839808 * k + 389770 := by
    unfold C
    simp [show (279936 * k + 129923) % 2 ≠ 0 by omega]
    omega
  have h18 : C (839808 * k + 389770) = 419904 * k + 194885 := by
    unfold C
    simp [show (839808 * k + 389770) % 2 = 0 by omega]
    omega
  have h19 : C (419904 * k + 194885) = 1259712 * k + 584656 := by
    unfold C
    simp [show (419904 * k + 194885) % 2 ≠ 0 by omega]
    omega
  have h20 : C (1259712 * k + 584656) = 629856 * k + 292328 := by
    unfold C
    simp [show (1259712 * k + 584656) % 2 = 0 by omega]
    omega
  have h21 : C (629856 * k + 292328) = 314928 * k + 146164 := by
    unfold C
    simp [show (629856 * k + 292328) % 2 = 0 by omega]
    omega
  have h22 : C (314928 * k + 146164) = 157464 * k + 73082 := by
    unfold C
    simp [show (314928 * k + 146164) % 2 = 0 by omega]
    omega
  have h23 : C (157464 * k + 73082) = 78732 * k + 36541 := by
    unfold C
    simp [show (157464 * k + 73082) % 2 = 0 by omega]
    omega
  have h24 : C (78732 * k + 36541) = 236196 * k + 109624 := by
    unfold C
    simp [show (78732 * k + 36541) % 2 ≠ 0 by omega]
    omega
  have h25 : C (236196 * k + 109624) = 118098 * k + 54812 := by
    unfold C
    simp [show (236196 * k + 109624) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 54812) = 59049 * k + 27406 := by
    unfold C
    simp [show (118098 * k + 54812) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 30415) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 30415)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_30575 : ∀ k : Nat,
    iterate (65536 * k + 30575) 26 = 59049 * k + 27550 ∧
      59049 * k + 27550 < 65536 * k + 30575 := by
  intro k
  have h1 : C (65536 * k + 30575) = 196608 * k + 91726 := by
    unfold C
    simp [show (65536 * k + 30575) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 91726) = 98304 * k + 45863 := by
    unfold C
    simp [show (196608 * k + 91726) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 45863) = 294912 * k + 137590 := by
    unfold C
    simp [show (98304 * k + 45863) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 137590) = 147456 * k + 68795 := by
    unfold C
    simp [show (294912 * k + 137590) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 68795) = 442368 * k + 206386 := by
    unfold C
    simp [show (147456 * k + 68795) % 2 ≠ 0 by omega]
    omega
  have h6 : C (442368 * k + 206386) = 221184 * k + 103193 := by
    unfold C
    simp [show (442368 * k + 206386) % 2 = 0 by omega]
    omega
  have h7 : C (221184 * k + 103193) = 663552 * k + 309580 := by
    unfold C
    simp [show (221184 * k + 103193) % 2 ≠ 0 by omega]
    omega
  have h8 : C (663552 * k + 309580) = 331776 * k + 154790 := by
    unfold C
    simp [show (663552 * k + 309580) % 2 = 0 by omega]
    omega
  have h9 : C (331776 * k + 154790) = 165888 * k + 77395 := by
    unfold C
    simp [show (331776 * k + 154790) % 2 = 0 by omega]
    omega
  have h10 : C (165888 * k + 77395) = 497664 * k + 232186 := by
    unfold C
    simp [show (165888 * k + 77395) % 2 ≠ 0 by omega]
    omega
  have h11 : C (497664 * k + 232186) = 248832 * k + 116093 := by
    unfold C
    simp [show (497664 * k + 232186) % 2 = 0 by omega]
    omega
  have h12 : C (248832 * k + 116093) = 746496 * k + 348280 := by
    unfold C
    simp [show (248832 * k + 116093) % 2 ≠ 0 by omega]
    omega
  have h13 : C (746496 * k + 348280) = 373248 * k + 174140 := by
    unfold C
    simp [show (746496 * k + 348280) % 2 = 0 by omega]
    omega
  have h14 : C (373248 * k + 174140) = 186624 * k + 87070 := by
    unfold C
    simp [show (373248 * k + 174140) % 2 = 0 by omega]
    omega
  have h15 : C (186624 * k + 87070) = 93312 * k + 43535 := by
    unfold C
    simp [show (186624 * k + 87070) % 2 = 0 by omega]
    omega
  have h16 : C (93312 * k + 43535) = 279936 * k + 130606 := by
    unfold C
    simp [show (93312 * k + 43535) % 2 ≠ 0 by omega]
    omega
  have h17 : C (279936 * k + 130606) = 139968 * k + 65303 := by
    unfold C
    simp [show (279936 * k + 130606) % 2 = 0 by omega]
    omega
  have h18 : C (139968 * k + 65303) = 419904 * k + 195910 := by
    unfold C
    simp [show (139968 * k + 65303) % 2 ≠ 0 by omega]
    omega
  have h19 : C (419904 * k + 195910) = 209952 * k + 97955 := by
    unfold C
    simp [show (419904 * k + 195910) % 2 = 0 by omega]
    omega
  have h20 : C (209952 * k + 97955) = 629856 * k + 293866 := by
    unfold C
    simp [show (209952 * k + 97955) % 2 ≠ 0 by omega]
    omega
  have h21 : C (629856 * k + 293866) = 314928 * k + 146933 := by
    unfold C
    simp [show (629856 * k + 293866) % 2 = 0 by omega]
    omega
  have h22 : C (314928 * k + 146933) = 944784 * k + 440800 := by
    unfold C
    simp [show (314928 * k + 146933) % 2 ≠ 0 by omega]
    omega
  have h23 : C (944784 * k + 440800) = 472392 * k + 220400 := by
    unfold C
    simp [show (944784 * k + 440800) % 2 = 0 by omega]
    omega
  have h24 : C (472392 * k + 220400) = 236196 * k + 110200 := by
    unfold C
    simp [show (472392 * k + 220400) % 2 = 0 by omega]
    omega
  have h25 : C (236196 * k + 110200) = 118098 * k + 55100 := by
    unfold C
    simp [show (236196 * k + 110200) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 55100) = 59049 * k + 27550 := by
    unfold C
    simp [show (118098 * k + 55100) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 30575) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 30575)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_30655 : ∀ k : Nat,
    iterate (65536 * k + 30655) 26 = 59049 * k + 27622 ∧
      59049 * k + 27622 < 65536 * k + 30655 := by
  intro k
  have h1 : C (65536 * k + 30655) = 196608 * k + 91966 := by
    unfold C
    simp [show (65536 * k + 30655) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 91966) = 98304 * k + 45983 := by
    unfold C
    simp [show (196608 * k + 91966) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 45983) = 294912 * k + 137950 := by
    unfold C
    simp [show (98304 * k + 45983) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 137950) = 147456 * k + 68975 := by
    unfold C
    simp [show (294912 * k + 137950) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 68975) = 442368 * k + 206926 := by
    unfold C
    simp [show (147456 * k + 68975) % 2 ≠ 0 by omega]
    omega
  have h6 : C (442368 * k + 206926) = 221184 * k + 103463 := by
    unfold C
    simp [show (442368 * k + 206926) % 2 = 0 by omega]
    omega
  have h7 : C (221184 * k + 103463) = 663552 * k + 310390 := by
    unfold C
    simp [show (221184 * k + 103463) % 2 ≠ 0 by omega]
    omega
  have h8 : C (663552 * k + 310390) = 331776 * k + 155195 := by
    unfold C
    simp [show (663552 * k + 310390) % 2 = 0 by omega]
    omega
  have h9 : C (331776 * k + 155195) = 995328 * k + 465586 := by
    unfold C
    simp [show (331776 * k + 155195) % 2 ≠ 0 by omega]
    omega
  have h10 : C (995328 * k + 465586) = 497664 * k + 232793 := by
    unfold C
    simp [show (995328 * k + 465586) % 2 = 0 by omega]
    omega
  have h11 : C (497664 * k + 232793) = 1492992 * k + 698380 := by
    unfold C
    simp [show (497664 * k + 232793) % 2 ≠ 0 by omega]
    omega
  have h12 : C (1492992 * k + 698380) = 746496 * k + 349190 := by
    unfold C
    simp [show (1492992 * k + 698380) % 2 = 0 by omega]
    omega
  have h13 : C (746496 * k + 349190) = 373248 * k + 174595 := by
    unfold C
    simp [show (746496 * k + 349190) % 2 = 0 by omega]
    omega
  have h14 : C (373248 * k + 174595) = 1119744 * k + 523786 := by
    unfold C
    simp [show (373248 * k + 174595) % 2 ≠ 0 by omega]
    omega
  have h15 : C (1119744 * k + 523786) = 559872 * k + 261893 := by
    unfold C
    simp [show (1119744 * k + 523786) % 2 = 0 by omega]
    omega
  have h16 : C (559872 * k + 261893) = 1679616 * k + 785680 := by
    unfold C
    simp [show (559872 * k + 261893) % 2 ≠ 0 by omega]
    omega
  have h17 : C (1679616 * k + 785680) = 839808 * k + 392840 := by
    unfold C
    simp [show (1679616 * k + 785680) % 2 = 0 by omega]
    omega
  have h18 : C (839808 * k + 392840) = 419904 * k + 196420 := by
    unfold C
    simp [show (839808 * k + 392840) % 2 = 0 by omega]
    omega
  have h19 : C (419904 * k + 196420) = 209952 * k + 98210 := by
    unfold C
    simp [show (419904 * k + 196420) % 2 = 0 by omega]
    omega
  have h20 : C (209952 * k + 98210) = 104976 * k + 49105 := by
    unfold C
    simp [show (209952 * k + 98210) % 2 = 0 by omega]
    omega
  have h21 : C (104976 * k + 49105) = 314928 * k + 147316 := by
    unfold C
    simp [show (104976 * k + 49105) % 2 ≠ 0 by omega]
    omega
  have h22 : C (314928 * k + 147316) = 157464 * k + 73658 := by
    unfold C
    simp [show (314928 * k + 147316) % 2 = 0 by omega]
    omega
  have h23 : C (157464 * k + 73658) = 78732 * k + 36829 := by
    unfold C
    simp [show (157464 * k + 73658) % 2 = 0 by omega]
    omega
  have h24 : C (78732 * k + 36829) = 236196 * k + 110488 := by
    unfold C
    simp [show (78732 * k + 36829) % 2 ≠ 0 by omega]
    omega
  have h25 : C (236196 * k + 110488) = 118098 * k + 55244 := by
    unfold C
    simp [show (236196 * k + 110488) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 55244) = 59049 * k + 27622 := by
    unfold C
    simp [show (118098 * k + 55244) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 30655) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 30655)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_30971 : ∀ k : Nat,
    iterate (65536 * k + 30971) 26 = 59049 * k + 27907 ∧
      59049 * k + 27907 < 65536 * k + 30971 := by
  intro k
  have h1 : C (65536 * k + 30971) = 196608 * k + 92914 := by
    unfold C
    simp [show (65536 * k + 30971) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 92914) = 98304 * k + 46457 := by
    unfold C
    simp [show (196608 * k + 92914) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 46457) = 294912 * k + 139372 := by
    unfold C
    simp [show (98304 * k + 46457) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 139372) = 147456 * k + 69686 := by
    unfold C
    simp [show (294912 * k + 139372) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 69686) = 73728 * k + 34843 := by
    unfold C
    simp [show (147456 * k + 69686) % 2 = 0 by omega]
    omega
  have h6 : C (73728 * k + 34843) = 221184 * k + 104530 := by
    unfold C
    simp [show (73728 * k + 34843) % 2 ≠ 0 by omega]
    omega
  have h7 : C (221184 * k + 104530) = 110592 * k + 52265 := by
    unfold C
    simp [show (221184 * k + 104530) % 2 = 0 by omega]
    omega
  have h8 : C (110592 * k + 52265) = 331776 * k + 156796 := by
    unfold C
    simp [show (110592 * k + 52265) % 2 ≠ 0 by omega]
    omega
  have h9 : C (331776 * k + 156796) = 165888 * k + 78398 := by
    unfold C
    simp [show (331776 * k + 156796) % 2 = 0 by omega]
    omega
  have h10 : C (165888 * k + 78398) = 82944 * k + 39199 := by
    unfold C
    simp [show (165888 * k + 78398) % 2 = 0 by omega]
    omega
  have h11 : C (82944 * k + 39199) = 248832 * k + 117598 := by
    unfold C
    simp [show (82944 * k + 39199) % 2 ≠ 0 by omega]
    omega
  have h12 : C (248832 * k + 117598) = 124416 * k + 58799 := by
    unfold C
    simp [show (248832 * k + 117598) % 2 = 0 by omega]
    omega
  have h13 : C (124416 * k + 58799) = 373248 * k + 176398 := by
    unfold C
    simp [show (124416 * k + 58799) % 2 ≠ 0 by omega]
    omega
  have h14 : C (373248 * k + 176398) = 186624 * k + 88199 := by
    unfold C
    simp [show (373248 * k + 176398) % 2 = 0 by omega]
    omega
  have h15 : C (186624 * k + 88199) = 559872 * k + 264598 := by
    unfold C
    simp [show (186624 * k + 88199) % 2 ≠ 0 by omega]
    omega
  have h16 : C (559872 * k + 264598) = 279936 * k + 132299 := by
    unfold C
    simp [show (559872 * k + 264598) % 2 = 0 by omega]
    omega
  have h17 : C (279936 * k + 132299) = 839808 * k + 396898 := by
    unfold C
    simp [show (279936 * k + 132299) % 2 ≠ 0 by omega]
    omega
  have h18 : C (839808 * k + 396898) = 419904 * k + 198449 := by
    unfold C
    simp [show (839808 * k + 396898) % 2 = 0 by omega]
    omega
  have h19 : C (419904 * k + 198449) = 1259712 * k + 595348 := by
    unfold C
    simp [show (419904 * k + 198449) % 2 ≠ 0 by omega]
    omega
  have h20 : C (1259712 * k + 595348) = 629856 * k + 297674 := by
    unfold C
    simp [show (1259712 * k + 595348) % 2 = 0 by omega]
    omega
  have h21 : C (629856 * k + 297674) = 314928 * k + 148837 := by
    unfold C
    simp [show (629856 * k + 297674) % 2 = 0 by omega]
    omega
  have h22 : C (314928 * k + 148837) = 944784 * k + 446512 := by
    unfold C
    simp [show (314928 * k + 148837) % 2 ≠ 0 by omega]
    omega
  have h23 : C (944784 * k + 446512) = 472392 * k + 223256 := by
    unfold C
    simp [show (944784 * k + 446512) % 2 = 0 by omega]
    omega
  have h24 : C (472392 * k + 223256) = 236196 * k + 111628 := by
    unfold C
    simp [show (472392 * k + 223256) % 2 = 0 by omega]
    omega
  have h25 : C (236196 * k + 111628) = 118098 * k + 55814 := by
    unfold C
    simp [show (236196 * k + 111628) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 55814) = 59049 * k + 27907 := by
    unfold C
    simp [show (118098 * k + 55814) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 30971) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 30971)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_30975 : ∀ k : Nat,
    iterate (65536 * k + 30975) 26 = 59049 * k + 27910 ∧
      59049 * k + 27910 < 65536 * k + 30975 := by
  intro k
  have h1 : C (65536 * k + 30975) = 196608 * k + 92926 := by
    unfold C
    simp [show (65536 * k + 30975) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 92926) = 98304 * k + 46463 := by
    unfold C
    simp [show (196608 * k + 92926) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 46463) = 294912 * k + 139390 := by
    unfold C
    simp [show (98304 * k + 46463) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 139390) = 147456 * k + 69695 := by
    unfold C
    simp [show (294912 * k + 139390) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 69695) = 442368 * k + 209086 := by
    unfold C
    simp [show (147456 * k + 69695) % 2 ≠ 0 by omega]
    omega
  have h6 : C (442368 * k + 209086) = 221184 * k + 104543 := by
    unfold C
    simp [show (442368 * k + 209086) % 2 = 0 by omega]
    omega
  have h7 : C (221184 * k + 104543) = 663552 * k + 313630 := by
    unfold C
    simp [show (221184 * k + 104543) % 2 ≠ 0 by omega]
    omega
  have h8 : C (663552 * k + 313630) = 331776 * k + 156815 := by
    unfold C
    simp [show (663552 * k + 313630) % 2 = 0 by omega]
    omega
  have h9 : C (331776 * k + 156815) = 995328 * k + 470446 := by
    unfold C
    simp [show (331776 * k + 156815) % 2 ≠ 0 by omega]
    omega
  have h10 : C (995328 * k + 470446) = 497664 * k + 235223 := by
    unfold C
    simp [show (995328 * k + 470446) % 2 = 0 by omega]
    omega
  have h11 : C (497664 * k + 235223) = 1492992 * k + 705670 := by
    unfold C
    simp [show (497664 * k + 235223) % 2 ≠ 0 by omega]
    omega
  have h12 : C (1492992 * k + 705670) = 746496 * k + 352835 := by
    unfold C
    simp [show (1492992 * k + 705670) % 2 = 0 by omega]
    omega
  have h13 : C (746496 * k + 352835) = 2239488 * k + 1058506 := by
    unfold C
    simp [show (746496 * k + 352835) % 2 ≠ 0 by omega]
    omega
  have h14 : C (2239488 * k + 1058506) = 1119744 * k + 529253 := by
    unfold C
    simp [show (2239488 * k + 1058506) % 2 = 0 by omega]
    omega
  have h15 : C (1119744 * k + 529253) = 3359232 * k + 1587760 := by
    unfold C
    simp [show (1119744 * k + 529253) % 2 ≠ 0 by omega]
    omega
  have h16 : C (3359232 * k + 1587760) = 1679616 * k + 793880 := by
    unfold C
    simp [show (3359232 * k + 1587760) % 2 = 0 by omega]
    omega
  have h17 : C (1679616 * k + 793880) = 839808 * k + 396940 := by
    unfold C
    simp [show (1679616 * k + 793880) % 2 = 0 by omega]
    omega
  have h18 : C (839808 * k + 396940) = 419904 * k + 198470 := by
    unfold C
    simp [show (839808 * k + 396940) % 2 = 0 by omega]
    omega
  have h19 : C (419904 * k + 198470) = 209952 * k + 99235 := by
    unfold C
    simp [show (419904 * k + 198470) % 2 = 0 by omega]
    omega
  have h20 : C (209952 * k + 99235) = 629856 * k + 297706 := by
    unfold C
    simp [show (209952 * k + 99235) % 2 ≠ 0 by omega]
    omega
  have h21 : C (629856 * k + 297706) = 314928 * k + 148853 := by
    unfold C
    simp [show (629856 * k + 297706) % 2 = 0 by omega]
    omega
  have h22 : C (314928 * k + 148853) = 944784 * k + 446560 := by
    unfold C
    simp [show (314928 * k + 148853) % 2 ≠ 0 by omega]
    omega
  have h23 : C (944784 * k + 446560) = 472392 * k + 223280 := by
    unfold C
    simp [show (944784 * k + 446560) % 2 = 0 by omega]
    omega
  have h24 : C (472392 * k + 223280) = 236196 * k + 111640 := by
    unfold C
    simp [show (472392 * k + 223280) % 2 = 0 by omega]
    omega
  have h25 : C (236196 * k + 111640) = 118098 * k + 55820 := by
    unfold C
    simp [show (236196 * k + 111640) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 55820) = 59049 * k + 27910 := by
    unfold C
    simp [show (118098 * k + 55820) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 30975) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 30975)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_31079 : ∀ k : Nat,
    iterate (65536 * k + 31079) 26 = 59049 * k + 28004 ∧
      59049 * k + 28004 < 65536 * k + 31079 := by
  intro k
  have h1 : C (65536 * k + 31079) = 196608 * k + 93238 := by
    unfold C
    simp [show (65536 * k + 31079) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 93238) = 98304 * k + 46619 := by
    unfold C
    simp [show (196608 * k + 93238) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 46619) = 294912 * k + 139858 := by
    unfold C
    simp [show (98304 * k + 46619) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 139858) = 147456 * k + 69929 := by
    unfold C
    simp [show (294912 * k + 139858) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 69929) = 442368 * k + 209788 := by
    unfold C
    simp [show (147456 * k + 69929) % 2 ≠ 0 by omega]
    omega
  have h6 : C (442368 * k + 209788) = 221184 * k + 104894 := by
    unfold C
    simp [show (442368 * k + 209788) % 2 = 0 by omega]
    omega
  have h7 : C (221184 * k + 104894) = 110592 * k + 52447 := by
    unfold C
    simp [show (221184 * k + 104894) % 2 = 0 by omega]
    omega
  have h8 : C (110592 * k + 52447) = 331776 * k + 157342 := by
    unfold C
    simp [show (110592 * k + 52447) % 2 ≠ 0 by omega]
    omega
  have h9 : C (331776 * k + 157342) = 165888 * k + 78671 := by
    unfold C
    simp [show (331776 * k + 157342) % 2 = 0 by omega]
    omega
  have h10 : C (165888 * k + 78671) = 497664 * k + 236014 := by
    unfold C
    simp [show (165888 * k + 78671) % 2 ≠ 0 by omega]
    omega
  have h11 : C (497664 * k + 236014) = 248832 * k + 118007 := by
    unfold C
    simp [show (497664 * k + 236014) % 2 = 0 by omega]
    omega
  have h12 : C (248832 * k + 118007) = 746496 * k + 354022 := by
    unfold C
    simp [show (248832 * k + 118007) % 2 ≠ 0 by omega]
    omega
  have h13 : C (746496 * k + 354022) = 373248 * k + 177011 := by
    unfold C
    simp [show (746496 * k + 354022) % 2 = 0 by omega]
    omega
  have h14 : C (373248 * k + 177011) = 1119744 * k + 531034 := by
    unfold C
    simp [show (373248 * k + 177011) % 2 ≠ 0 by omega]
    omega
  have h15 : C (1119744 * k + 531034) = 559872 * k + 265517 := by
    unfold C
    simp [show (1119744 * k + 531034) % 2 = 0 by omega]
    omega
  have h16 : C (559872 * k + 265517) = 1679616 * k + 796552 := by
    unfold C
    simp [show (559872 * k + 265517) % 2 ≠ 0 by omega]
    omega
  have h17 : C (1679616 * k + 796552) = 839808 * k + 398276 := by
    unfold C
    simp [show (1679616 * k + 796552) % 2 = 0 by omega]
    omega
  have h18 : C (839808 * k + 398276) = 419904 * k + 199138 := by
    unfold C
    simp [show (839808 * k + 398276) % 2 = 0 by omega]
    omega
  have h19 : C (419904 * k + 199138) = 209952 * k + 99569 := by
    unfold C
    simp [show (419904 * k + 199138) % 2 = 0 by omega]
    omega
  have h20 : C (209952 * k + 99569) = 629856 * k + 298708 := by
    unfold C
    simp [show (209952 * k + 99569) % 2 ≠ 0 by omega]
    omega
  have h21 : C (629856 * k + 298708) = 314928 * k + 149354 := by
    unfold C
    simp [show (629856 * k + 298708) % 2 = 0 by omega]
    omega
  have h22 : C (314928 * k + 149354) = 157464 * k + 74677 := by
    unfold C
    simp [show (314928 * k + 149354) % 2 = 0 by omega]
    omega
  have h23 : C (157464 * k + 74677) = 472392 * k + 224032 := by
    unfold C
    simp [show (157464 * k + 74677) % 2 ≠ 0 by omega]
    omega
  have h24 : C (472392 * k + 224032) = 236196 * k + 112016 := by
    unfold C
    simp [show (472392 * k + 224032) % 2 = 0 by omega]
    omega
  have h25 : C (236196 * k + 112016) = 118098 * k + 56008 := by
    unfold C
    simp [show (236196 * k + 112016) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 56008) = 59049 * k + 28004 := by
    unfold C
    simp [show (118098 * k + 56008) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 31079) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 31079)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_31199 : ∀ k : Nat,
    iterate (65536 * k + 31199) 26 = 59049 * k + 28112 ∧
      59049 * k + 28112 < 65536 * k + 31199 := by
  intro k
  have h1 : C (65536 * k + 31199) = 196608 * k + 93598 := by
    unfold C
    simp [show (65536 * k + 31199) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 93598) = 98304 * k + 46799 := by
    unfold C
    simp [show (196608 * k + 93598) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 46799) = 294912 * k + 140398 := by
    unfold C
    simp [show (98304 * k + 46799) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 140398) = 147456 * k + 70199 := by
    unfold C
    simp [show (294912 * k + 140398) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 70199) = 442368 * k + 210598 := by
    unfold C
    simp [show (147456 * k + 70199) % 2 ≠ 0 by omega]
    omega
  have h6 : C (442368 * k + 210598) = 221184 * k + 105299 := by
    unfold C
    simp [show (442368 * k + 210598) % 2 = 0 by omega]
    omega
  have h7 : C (221184 * k + 105299) = 663552 * k + 315898 := by
    unfold C
    simp [show (221184 * k + 105299) % 2 ≠ 0 by omega]
    omega
  have h8 : C (663552 * k + 315898) = 331776 * k + 157949 := by
    unfold C
    simp [show (663552 * k + 315898) % 2 = 0 by omega]
    omega
  have h9 : C (331776 * k + 157949) = 995328 * k + 473848 := by
    unfold C
    simp [show (331776 * k + 157949) % 2 ≠ 0 by omega]
    omega
  have h10 : C (995328 * k + 473848) = 497664 * k + 236924 := by
    unfold C
    simp [show (995328 * k + 473848) % 2 = 0 by omega]
    omega
  have h11 : C (497664 * k + 236924) = 248832 * k + 118462 := by
    unfold C
    simp [show (497664 * k + 236924) % 2 = 0 by omega]
    omega
  have h12 : C (248832 * k + 118462) = 124416 * k + 59231 := by
    unfold C
    simp [show (248832 * k + 118462) % 2 = 0 by omega]
    omega
  have h13 : C (124416 * k + 59231) = 373248 * k + 177694 := by
    unfold C
    simp [show (124416 * k + 59231) % 2 ≠ 0 by omega]
    omega
  have h14 : C (373248 * k + 177694) = 186624 * k + 88847 := by
    unfold C
    simp [show (373248 * k + 177694) % 2 = 0 by omega]
    omega
  have h15 : C (186624 * k + 88847) = 559872 * k + 266542 := by
    unfold C
    simp [show (186624 * k + 88847) % 2 ≠ 0 by omega]
    omega
  have h16 : C (559872 * k + 266542) = 279936 * k + 133271 := by
    unfold C
    simp [show (559872 * k + 266542) % 2 = 0 by omega]
    omega
  have h17 : C (279936 * k + 133271) = 839808 * k + 399814 := by
    unfold C
    simp [show (279936 * k + 133271) % 2 ≠ 0 by omega]
    omega
  have h18 : C (839808 * k + 399814) = 419904 * k + 199907 := by
    unfold C
    simp [show (839808 * k + 399814) % 2 = 0 by omega]
    omega
  have h19 : C (419904 * k + 199907) = 1259712 * k + 599722 := by
    unfold C
    simp [show (419904 * k + 199907) % 2 ≠ 0 by omega]
    omega
  have h20 : C (1259712 * k + 599722) = 629856 * k + 299861 := by
    unfold C
    simp [show (1259712 * k + 599722) % 2 = 0 by omega]
    omega
  have h21 : C (629856 * k + 299861) = 1889568 * k + 899584 := by
    unfold C
    simp [show (629856 * k + 299861) % 2 ≠ 0 by omega]
    omega
  have h22 : C (1889568 * k + 899584) = 944784 * k + 449792 := by
    unfold C
    simp [show (1889568 * k + 899584) % 2 = 0 by omega]
    omega
  have h23 : C (944784 * k + 449792) = 472392 * k + 224896 := by
    unfold C
    simp [show (944784 * k + 449792) % 2 = 0 by omega]
    omega
  have h24 : C (472392 * k + 224896) = 236196 * k + 112448 := by
    unfold C
    simp [show (472392 * k + 224896) % 2 = 0 by omega]
    omega
  have h25 : C (236196 * k + 112448) = 118098 * k + 56224 := by
    unfold C
    simp [show (236196 * k + 112448) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 56224) = 59049 * k + 28112 := by
    unfold C
    simp [show (118098 * k + 56224) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 31199) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 31199)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_31335 : ∀ k : Nat,
    iterate (65536 * k + 31335) 26 = 59049 * k + 28235 ∧
      59049 * k + 28235 < 65536 * k + 31335 := by
  intro k
  have h1 : C (65536 * k + 31335) = 196608 * k + 94006 := by
    unfold C
    simp [show (65536 * k + 31335) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 94006) = 98304 * k + 47003 := by
    unfold C
    simp [show (196608 * k + 94006) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 47003) = 294912 * k + 141010 := by
    unfold C
    simp [show (98304 * k + 47003) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 141010) = 147456 * k + 70505 := by
    unfold C
    simp [show (294912 * k + 141010) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 70505) = 442368 * k + 211516 := by
    unfold C
    simp [show (147456 * k + 70505) % 2 ≠ 0 by omega]
    omega
  have h6 : C (442368 * k + 211516) = 221184 * k + 105758 := by
    unfold C
    simp [show (442368 * k + 211516) % 2 = 0 by omega]
    omega
  have h7 : C (221184 * k + 105758) = 110592 * k + 52879 := by
    unfold C
    simp [show (221184 * k + 105758) % 2 = 0 by omega]
    omega
  have h8 : C (110592 * k + 52879) = 331776 * k + 158638 := by
    unfold C
    simp [show (110592 * k + 52879) % 2 ≠ 0 by omega]
    omega
  have h9 : C (331776 * k + 158638) = 165888 * k + 79319 := by
    unfold C
    simp [show (331776 * k + 158638) % 2 = 0 by omega]
    omega
  have h10 : C (165888 * k + 79319) = 497664 * k + 237958 := by
    unfold C
    simp [show (165888 * k + 79319) % 2 ≠ 0 by omega]
    omega
  have h11 : C (497664 * k + 237958) = 248832 * k + 118979 := by
    unfold C
    simp [show (497664 * k + 237958) % 2 = 0 by omega]
    omega
  have h12 : C (248832 * k + 118979) = 746496 * k + 356938 := by
    unfold C
    simp [show (248832 * k + 118979) % 2 ≠ 0 by omega]
    omega
  have h13 : C (746496 * k + 356938) = 373248 * k + 178469 := by
    unfold C
    simp [show (746496 * k + 356938) % 2 = 0 by omega]
    omega
  have h14 : C (373248 * k + 178469) = 1119744 * k + 535408 := by
    unfold C
    simp [show (373248 * k + 178469) % 2 ≠ 0 by omega]
    omega
  have h15 : C (1119744 * k + 535408) = 559872 * k + 267704 := by
    unfold C
    simp [show (1119744 * k + 535408) % 2 = 0 by omega]
    omega
  have h16 : C (559872 * k + 267704) = 279936 * k + 133852 := by
    unfold C
    simp [show (559872 * k + 267704) % 2 = 0 by omega]
    omega
  have h17 : C (279936 * k + 133852) = 139968 * k + 66926 := by
    unfold C
    simp [show (279936 * k + 133852) % 2 = 0 by omega]
    omega
  have h18 : C (139968 * k + 66926) = 69984 * k + 33463 := by
    unfold C
    simp [show (139968 * k + 66926) % 2 = 0 by omega]
    omega
  have h19 : C (69984 * k + 33463) = 209952 * k + 100390 := by
    unfold C
    simp [show (69984 * k + 33463) % 2 ≠ 0 by omega]
    omega
  have h20 : C (209952 * k + 100390) = 104976 * k + 50195 := by
    unfold C
    simp [show (209952 * k + 100390) % 2 = 0 by omega]
    omega
  have h21 : C (104976 * k + 50195) = 314928 * k + 150586 := by
    unfold C
    simp [show (104976 * k + 50195) % 2 ≠ 0 by omega]
    omega
  have h22 : C (314928 * k + 150586) = 157464 * k + 75293 := by
    unfold C
    simp [show (314928 * k + 150586) % 2 = 0 by omega]
    omega
  have h23 : C (157464 * k + 75293) = 472392 * k + 225880 := by
    unfold C
    simp [show (157464 * k + 75293) % 2 ≠ 0 by omega]
    omega
  have h24 : C (472392 * k + 225880) = 236196 * k + 112940 := by
    unfold C
    simp [show (472392 * k + 225880) % 2 = 0 by omega]
    omega
  have h25 : C (236196 * k + 112940) = 118098 * k + 56470 := by
    unfold C
    simp [show (236196 * k + 112940) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 56470) = 59049 * k + 28235 := by
    unfold C
    simp [show (118098 * k + 56470) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 31335) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 31335)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_31359 : ∀ k : Nat,
    iterate (65536 * k + 31359) 26 = 59049 * k + 28256 ∧
      59049 * k + 28256 < 65536 * k + 31359 := by
  intro k
  have h1 : C (65536 * k + 31359) = 196608 * k + 94078 := by
    unfold C
    simp [show (65536 * k + 31359) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 94078) = 98304 * k + 47039 := by
    unfold C
    simp [show (196608 * k + 94078) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 47039) = 294912 * k + 141118 := by
    unfold C
    simp [show (98304 * k + 47039) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 141118) = 147456 * k + 70559 := by
    unfold C
    simp [show (294912 * k + 141118) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 70559) = 442368 * k + 211678 := by
    unfold C
    simp [show (147456 * k + 70559) % 2 ≠ 0 by omega]
    omega
  have h6 : C (442368 * k + 211678) = 221184 * k + 105839 := by
    unfold C
    simp [show (442368 * k + 211678) % 2 = 0 by omega]
    omega
  have h7 : C (221184 * k + 105839) = 663552 * k + 317518 := by
    unfold C
    simp [show (221184 * k + 105839) % 2 ≠ 0 by omega]
    omega
  have h8 : C (663552 * k + 317518) = 331776 * k + 158759 := by
    unfold C
    simp [show (663552 * k + 317518) % 2 = 0 by omega]
    omega
  have h9 : C (331776 * k + 158759) = 995328 * k + 476278 := by
    unfold C
    simp [show (331776 * k + 158759) % 2 ≠ 0 by omega]
    omega
  have h10 : C (995328 * k + 476278) = 497664 * k + 238139 := by
    unfold C
    simp [show (995328 * k + 476278) % 2 = 0 by omega]
    omega
  have h11 : C (497664 * k + 238139) = 1492992 * k + 714418 := by
    unfold C
    simp [show (497664 * k + 238139) % 2 ≠ 0 by omega]
    omega
  have h12 : C (1492992 * k + 714418) = 746496 * k + 357209 := by
    unfold C
    simp [show (1492992 * k + 714418) % 2 = 0 by omega]
    omega
  have h13 : C (746496 * k + 357209) = 2239488 * k + 1071628 := by
    unfold C
    simp [show (746496 * k + 357209) % 2 ≠ 0 by omega]
    omega
  have h14 : C (2239488 * k + 1071628) = 1119744 * k + 535814 := by
    unfold C
    simp [show (2239488 * k + 1071628) % 2 = 0 by omega]
    omega
  have h15 : C (1119744 * k + 535814) = 559872 * k + 267907 := by
    unfold C
    simp [show (1119744 * k + 535814) % 2 = 0 by omega]
    omega
  have h16 : C (559872 * k + 267907) = 1679616 * k + 803722 := by
    unfold C
    simp [show (559872 * k + 267907) % 2 ≠ 0 by omega]
    omega
  have h17 : C (1679616 * k + 803722) = 839808 * k + 401861 := by
    unfold C
    simp [show (1679616 * k + 803722) % 2 = 0 by omega]
    omega
  have h18 : C (839808 * k + 401861) = 2519424 * k + 1205584 := by
    unfold C
    simp [show (839808 * k + 401861) % 2 ≠ 0 by omega]
    omega
  have h19 : C (2519424 * k + 1205584) = 1259712 * k + 602792 := by
    unfold C
    simp [show (2519424 * k + 1205584) % 2 = 0 by omega]
    omega
  have h20 : C (1259712 * k + 602792) = 629856 * k + 301396 := by
    unfold C
    simp [show (1259712 * k + 602792) % 2 = 0 by omega]
    omega
  have h21 : C (629856 * k + 301396) = 314928 * k + 150698 := by
    unfold C
    simp [show (629856 * k + 301396) % 2 = 0 by omega]
    omega
  have h22 : C (314928 * k + 150698) = 157464 * k + 75349 := by
    unfold C
    simp [show (314928 * k + 150698) % 2 = 0 by omega]
    omega
  have h23 : C (157464 * k + 75349) = 472392 * k + 226048 := by
    unfold C
    simp [show (157464 * k + 75349) % 2 ≠ 0 by omega]
    omega
  have h24 : C (472392 * k + 226048) = 236196 * k + 113024 := by
    unfold C
    simp [show (472392 * k + 226048) % 2 = 0 by omega]
    omega
  have h25 : C (236196 * k + 113024) = 118098 * k + 56512 := by
    unfold C
    simp [show (236196 * k + 113024) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 56512) = 59049 * k + 28256 := by
    unfold C
    simp [show (118098 * k + 56512) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 31359) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 31359)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_31471 : ∀ k : Nat,
    iterate (65536 * k + 31471) 26 = 59049 * k + 28357 ∧
      59049 * k + 28357 < 65536 * k + 31471 := by
  intro k
  have h1 : C (65536 * k + 31471) = 196608 * k + 94414 := by
    unfold C
    simp [show (65536 * k + 31471) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 94414) = 98304 * k + 47207 := by
    unfold C
    simp [show (196608 * k + 94414) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 47207) = 294912 * k + 141622 := by
    unfold C
    simp [show (98304 * k + 47207) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 141622) = 147456 * k + 70811 := by
    unfold C
    simp [show (294912 * k + 141622) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 70811) = 442368 * k + 212434 := by
    unfold C
    simp [show (147456 * k + 70811) % 2 ≠ 0 by omega]
    omega
  have h6 : C (442368 * k + 212434) = 221184 * k + 106217 := by
    unfold C
    simp [show (442368 * k + 212434) % 2 = 0 by omega]
    omega
  have h7 : C (221184 * k + 106217) = 663552 * k + 318652 := by
    unfold C
    simp [show (221184 * k + 106217) % 2 ≠ 0 by omega]
    omega
  have h8 : C (663552 * k + 318652) = 331776 * k + 159326 := by
    unfold C
    simp [show (663552 * k + 318652) % 2 = 0 by omega]
    omega
  have h9 : C (331776 * k + 159326) = 165888 * k + 79663 := by
    unfold C
    simp [show (331776 * k + 159326) % 2 = 0 by omega]
    omega
  have h10 : C (165888 * k + 79663) = 497664 * k + 238990 := by
    unfold C
    simp [show (165888 * k + 79663) % 2 ≠ 0 by omega]
    omega
  have h11 : C (497664 * k + 238990) = 248832 * k + 119495 := by
    unfold C
    simp [show (497664 * k + 238990) % 2 = 0 by omega]
    omega
  have h12 : C (248832 * k + 119495) = 746496 * k + 358486 := by
    unfold C
    simp [show (248832 * k + 119495) % 2 ≠ 0 by omega]
    omega
  have h13 : C (746496 * k + 358486) = 373248 * k + 179243 := by
    unfold C
    simp [show (746496 * k + 358486) % 2 = 0 by omega]
    omega
  have h14 : C (373248 * k + 179243) = 1119744 * k + 537730 := by
    unfold C
    simp [show (373248 * k + 179243) % 2 ≠ 0 by omega]
    omega
  have h15 : C (1119744 * k + 537730) = 559872 * k + 268865 := by
    unfold C
    simp [show (1119744 * k + 537730) % 2 = 0 by omega]
    omega
  have h16 : C (559872 * k + 268865) = 1679616 * k + 806596 := by
    unfold C
    simp [show (559872 * k + 268865) % 2 ≠ 0 by omega]
    omega
  have h17 : C (1679616 * k + 806596) = 839808 * k + 403298 := by
    unfold C
    simp [show (1679616 * k + 806596) % 2 = 0 by omega]
    omega
  have h18 : C (839808 * k + 403298) = 419904 * k + 201649 := by
    unfold C
    simp [show (839808 * k + 403298) % 2 = 0 by omega]
    omega
  have h19 : C (419904 * k + 201649) = 1259712 * k + 604948 := by
    unfold C
    simp [show (419904 * k + 201649) % 2 ≠ 0 by omega]
    omega
  have h20 : C (1259712 * k + 604948) = 629856 * k + 302474 := by
    unfold C
    simp [show (1259712 * k + 604948) % 2 = 0 by omega]
    omega
  have h21 : C (629856 * k + 302474) = 314928 * k + 151237 := by
    unfold C
    simp [show (629856 * k + 302474) % 2 = 0 by omega]
    omega
  have h22 : C (314928 * k + 151237) = 944784 * k + 453712 := by
    unfold C
    simp [show (314928 * k + 151237) % 2 ≠ 0 by omega]
    omega
  have h23 : C (944784 * k + 453712) = 472392 * k + 226856 := by
    unfold C
    simp [show (944784 * k + 453712) % 2 = 0 by omega]
    omega
  have h24 : C (472392 * k + 226856) = 236196 * k + 113428 := by
    unfold C
    simp [show (472392 * k + 226856) % 2 = 0 by omega]
    omega
  have h25 : C (236196 * k + 113428) = 118098 * k + 56714 := by
    unfold C
    simp [show (236196 * k + 113428) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 56714) = 59049 * k + 28357 := by
    unfold C
    simp [show (118098 * k + 56714) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 31471) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 31471)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_31727 : ∀ k : Nat,
    iterate (65536 * k + 31727) 26 = 59049 * k + 28588 ∧
      59049 * k + 28588 < 65536 * k + 31727 := by
  intro k
  have h1 : C (65536 * k + 31727) = 196608 * k + 95182 := by
    unfold C
    simp [show (65536 * k + 31727) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 95182) = 98304 * k + 47591 := by
    unfold C
    simp [show (196608 * k + 95182) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 47591) = 294912 * k + 142774 := by
    unfold C
    simp [show (98304 * k + 47591) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 142774) = 147456 * k + 71387 := by
    unfold C
    simp [show (294912 * k + 142774) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 71387) = 442368 * k + 214162 := by
    unfold C
    simp [show (147456 * k + 71387) % 2 ≠ 0 by omega]
    omega
  have h6 : C (442368 * k + 214162) = 221184 * k + 107081 := by
    unfold C
    simp [show (442368 * k + 214162) % 2 = 0 by omega]
    omega
  have h7 : C (221184 * k + 107081) = 663552 * k + 321244 := by
    unfold C
    simp [show (221184 * k + 107081) % 2 ≠ 0 by omega]
    omega
  have h8 : C (663552 * k + 321244) = 331776 * k + 160622 := by
    unfold C
    simp [show (663552 * k + 321244) % 2 = 0 by omega]
    omega
  have h9 : C (331776 * k + 160622) = 165888 * k + 80311 := by
    unfold C
    simp [show (331776 * k + 160622) % 2 = 0 by omega]
    omega
  have h10 : C (165888 * k + 80311) = 497664 * k + 240934 := by
    unfold C
    simp [show (165888 * k + 80311) % 2 ≠ 0 by omega]
    omega
  have h11 : C (497664 * k + 240934) = 248832 * k + 120467 := by
    unfold C
    simp [show (497664 * k + 240934) % 2 = 0 by omega]
    omega
  have h12 : C (248832 * k + 120467) = 746496 * k + 361402 := by
    unfold C
    simp [show (248832 * k + 120467) % 2 ≠ 0 by omega]
    omega
  have h13 : C (746496 * k + 361402) = 373248 * k + 180701 := by
    unfold C
    simp [show (746496 * k + 361402) % 2 = 0 by omega]
    omega
  have h14 : C (373248 * k + 180701) = 1119744 * k + 542104 := by
    unfold C
    simp [show (373248 * k + 180701) % 2 ≠ 0 by omega]
    omega
  have h15 : C (1119744 * k + 542104) = 559872 * k + 271052 := by
    unfold C
    simp [show (1119744 * k + 542104) % 2 = 0 by omega]
    omega
  have h16 : C (559872 * k + 271052) = 279936 * k + 135526 := by
    unfold C
    simp [show (559872 * k + 271052) % 2 = 0 by omega]
    omega
  have h17 : C (279936 * k + 135526) = 139968 * k + 67763 := by
    unfold C
    simp [show (279936 * k + 135526) % 2 = 0 by omega]
    omega
  have h18 : C (139968 * k + 67763) = 419904 * k + 203290 := by
    unfold C
    simp [show (139968 * k + 67763) % 2 ≠ 0 by omega]
    omega
  have h19 : C (419904 * k + 203290) = 209952 * k + 101645 := by
    unfold C
    simp [show (419904 * k + 203290) % 2 = 0 by omega]
    omega
  have h20 : C (209952 * k + 101645) = 629856 * k + 304936 := by
    unfold C
    simp [show (209952 * k + 101645) % 2 ≠ 0 by omega]
    omega
  have h21 : C (629856 * k + 304936) = 314928 * k + 152468 := by
    unfold C
    simp [show (629856 * k + 304936) % 2 = 0 by omega]
    omega
  have h22 : C (314928 * k + 152468) = 157464 * k + 76234 := by
    unfold C
    simp [show (314928 * k + 152468) % 2 = 0 by omega]
    omega
  have h23 : C (157464 * k + 76234) = 78732 * k + 38117 := by
    unfold C
    simp [show (157464 * k + 76234) % 2 = 0 by omega]
    omega
  have h24 : C (78732 * k + 38117) = 236196 * k + 114352 := by
    unfold C
    simp [show (78732 * k + 38117) % 2 ≠ 0 by omega]
    omega
  have h25 : C (236196 * k + 114352) = 118098 * k + 57176 := by
    unfold C
    simp [show (236196 * k + 114352) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 57176) = 59049 * k + 28588 := by
    unfold C
    simp [show (118098 * k + 57176) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 31727) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 31727)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_31775 : ∀ k : Nat,
    iterate (65536 * k + 31775) 26 = 59049 * k + 28631 ∧
      59049 * k + 28631 < 65536 * k + 31775 := by
  intro k
  have h1 : C (65536 * k + 31775) = 196608 * k + 95326 := by
    unfold C
    simp [show (65536 * k + 31775) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 95326) = 98304 * k + 47663 := by
    unfold C
    simp [show (196608 * k + 95326) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 47663) = 294912 * k + 142990 := by
    unfold C
    simp [show (98304 * k + 47663) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 142990) = 147456 * k + 71495 := by
    unfold C
    simp [show (294912 * k + 142990) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 71495) = 442368 * k + 214486 := by
    unfold C
    simp [show (147456 * k + 71495) % 2 ≠ 0 by omega]
    omega
  have h6 : C (442368 * k + 214486) = 221184 * k + 107243 := by
    unfold C
    simp [show (442368 * k + 214486) % 2 = 0 by omega]
    omega
  have h7 : C (221184 * k + 107243) = 663552 * k + 321730 := by
    unfold C
    simp [show (221184 * k + 107243) % 2 ≠ 0 by omega]
    omega
  have h8 : C (663552 * k + 321730) = 331776 * k + 160865 := by
    unfold C
    simp [show (663552 * k + 321730) % 2 = 0 by omega]
    omega
  have h9 : C (331776 * k + 160865) = 995328 * k + 482596 := by
    unfold C
    simp [show (331776 * k + 160865) % 2 ≠ 0 by omega]
    omega
  have h10 : C (995328 * k + 482596) = 497664 * k + 241298 := by
    unfold C
    simp [show (995328 * k + 482596) % 2 = 0 by omega]
    omega
  have h11 : C (497664 * k + 241298) = 248832 * k + 120649 := by
    unfold C
    simp [show (497664 * k + 241298) % 2 = 0 by omega]
    omega
  have h12 : C (248832 * k + 120649) = 746496 * k + 361948 := by
    unfold C
    simp [show (248832 * k + 120649) % 2 ≠ 0 by omega]
    omega
  have h13 : C (746496 * k + 361948) = 373248 * k + 180974 := by
    unfold C
    simp [show (746496 * k + 361948) % 2 = 0 by omega]
    omega
  have h14 : C (373248 * k + 180974) = 186624 * k + 90487 := by
    unfold C
    simp [show (373248 * k + 180974) % 2 = 0 by omega]
    omega
  have h15 : C (186624 * k + 90487) = 559872 * k + 271462 := by
    unfold C
    simp [show (186624 * k + 90487) % 2 ≠ 0 by omega]
    omega
  have h16 : C (559872 * k + 271462) = 279936 * k + 135731 := by
    unfold C
    simp [show (559872 * k + 271462) % 2 = 0 by omega]
    omega
  have h17 : C (279936 * k + 135731) = 839808 * k + 407194 := by
    unfold C
    simp [show (279936 * k + 135731) % 2 ≠ 0 by omega]
    omega
  have h18 : C (839808 * k + 407194) = 419904 * k + 203597 := by
    unfold C
    simp [show (839808 * k + 407194) % 2 = 0 by omega]
    omega
  have h19 : C (419904 * k + 203597) = 1259712 * k + 610792 := by
    unfold C
    simp [show (419904 * k + 203597) % 2 ≠ 0 by omega]
    omega
  have h20 : C (1259712 * k + 610792) = 629856 * k + 305396 := by
    unfold C
    simp [show (1259712 * k + 610792) % 2 = 0 by omega]
    omega
  have h21 : C (629856 * k + 305396) = 314928 * k + 152698 := by
    unfold C
    simp [show (629856 * k + 305396) % 2 = 0 by omega]
    omega
  have h22 : C (314928 * k + 152698) = 157464 * k + 76349 := by
    unfold C
    simp [show (314928 * k + 152698) % 2 = 0 by omega]
    omega
  have h23 : C (157464 * k + 76349) = 472392 * k + 229048 := by
    unfold C
    simp [show (157464 * k + 76349) % 2 ≠ 0 by omega]
    omega
  have h24 : C (472392 * k + 229048) = 236196 * k + 114524 := by
    unfold C
    simp [show (472392 * k + 229048) % 2 = 0 by omega]
    omega
  have h25 : C (236196 * k + 114524) = 118098 * k + 57262 := by
    unfold C
    simp [show (236196 * k + 114524) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 57262) = 59049 * k + 28631 := by
    unfold C
    simp [show (118098 * k + 57262) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 31775) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 31775)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_32223 : ∀ k : Nat,
    iterate (65536 * k + 32223) 26 = 59049 * k + 29035 ∧
      59049 * k + 29035 < 65536 * k + 32223 := by
  intro k
  have h1 : C (65536 * k + 32223) = 196608 * k + 96670 := by
    unfold C
    simp [show (65536 * k + 32223) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 96670) = 98304 * k + 48335 := by
    unfold C
    simp [show (196608 * k + 96670) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 48335) = 294912 * k + 145006 := by
    unfold C
    simp [show (98304 * k + 48335) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 145006) = 147456 * k + 72503 := by
    unfold C
    simp [show (294912 * k + 145006) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 72503) = 442368 * k + 217510 := by
    unfold C
    simp [show (147456 * k + 72503) % 2 ≠ 0 by omega]
    omega
  have h6 : C (442368 * k + 217510) = 221184 * k + 108755 := by
    unfold C
    simp [show (442368 * k + 217510) % 2 = 0 by omega]
    omega
  have h7 : C (221184 * k + 108755) = 663552 * k + 326266 := by
    unfold C
    simp [show (221184 * k + 108755) % 2 ≠ 0 by omega]
    omega
  have h8 : C (663552 * k + 326266) = 331776 * k + 163133 := by
    unfold C
    simp [show (663552 * k + 326266) % 2 = 0 by omega]
    omega
  have h9 : C (331776 * k + 163133) = 995328 * k + 489400 := by
    unfold C
    simp [show (331776 * k + 163133) % 2 ≠ 0 by omega]
    omega
  have h10 : C (995328 * k + 489400) = 497664 * k + 244700 := by
    unfold C
    simp [show (995328 * k + 489400) % 2 = 0 by omega]
    omega
  have h11 : C (497664 * k + 244700) = 248832 * k + 122350 := by
    unfold C
    simp [show (497664 * k + 244700) % 2 = 0 by omega]
    omega
  have h12 : C (248832 * k + 122350) = 124416 * k + 61175 := by
    unfold C
    simp [show (248832 * k + 122350) % 2 = 0 by omega]
    omega
  have h13 : C (124416 * k + 61175) = 373248 * k + 183526 := by
    unfold C
    simp [show (124416 * k + 61175) % 2 ≠ 0 by omega]
    omega
  have h14 : C (373248 * k + 183526) = 186624 * k + 91763 := by
    unfold C
    simp [show (373248 * k + 183526) % 2 = 0 by omega]
    omega
  have h15 : C (186624 * k + 91763) = 559872 * k + 275290 := by
    unfold C
    simp [show (186624 * k + 91763) % 2 ≠ 0 by omega]
    omega
  have h16 : C (559872 * k + 275290) = 279936 * k + 137645 := by
    unfold C
    simp [show (559872 * k + 275290) % 2 = 0 by omega]
    omega
  have h17 : C (279936 * k + 137645) = 839808 * k + 412936 := by
    unfold C
    simp [show (279936 * k + 137645) % 2 ≠ 0 by omega]
    omega
  have h18 : C (839808 * k + 412936) = 419904 * k + 206468 := by
    unfold C
    simp [show (839808 * k + 412936) % 2 = 0 by omega]
    omega
  have h19 : C (419904 * k + 206468) = 209952 * k + 103234 := by
    unfold C
    simp [show (419904 * k + 206468) % 2 = 0 by omega]
    omega
  have h20 : C (209952 * k + 103234) = 104976 * k + 51617 := by
    unfold C
    simp [show (209952 * k + 103234) % 2 = 0 by omega]
    omega
  have h21 : C (104976 * k + 51617) = 314928 * k + 154852 := by
    unfold C
    simp [show (104976 * k + 51617) % 2 ≠ 0 by omega]
    omega
  have h22 : C (314928 * k + 154852) = 157464 * k + 77426 := by
    unfold C
    simp [show (314928 * k + 154852) % 2 = 0 by omega]
    omega
  have h23 : C (157464 * k + 77426) = 78732 * k + 38713 := by
    unfold C
    simp [show (157464 * k + 77426) % 2 = 0 by omega]
    omega
  have h24 : C (78732 * k + 38713) = 236196 * k + 116140 := by
    unfold C
    simp [show (78732 * k + 38713) % 2 ≠ 0 by omega]
    omega
  have h25 : C (236196 * k + 116140) = 118098 * k + 58070 := by
    unfold C
    simp [show (236196 * k + 116140) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 58070) = 59049 * k + 29035 := by
    unfold C
    simp [show (118098 * k + 58070) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 32223) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 32223)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_32283 : ∀ k : Nat,
    iterate (65536 * k + 32283) 26 = 59049 * k + 29089 ∧
      59049 * k + 29089 < 65536 * k + 32283 := by
  intro k
  have h1 : C (65536 * k + 32283) = 196608 * k + 96850 := by
    unfold C
    simp [show (65536 * k + 32283) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 96850) = 98304 * k + 48425 := by
    unfold C
    simp [show (196608 * k + 96850) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 48425) = 294912 * k + 145276 := by
    unfold C
    simp [show (98304 * k + 48425) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 145276) = 147456 * k + 72638 := by
    unfold C
    simp [show (294912 * k + 145276) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 72638) = 73728 * k + 36319 := by
    unfold C
    simp [show (147456 * k + 72638) % 2 = 0 by omega]
    omega
  have h6 : C (73728 * k + 36319) = 221184 * k + 108958 := by
    unfold C
    simp [show (73728 * k + 36319) % 2 ≠ 0 by omega]
    omega
  have h7 : C (221184 * k + 108958) = 110592 * k + 54479 := by
    unfold C
    simp [show (221184 * k + 108958) % 2 = 0 by omega]
    omega
  have h8 : C (110592 * k + 54479) = 331776 * k + 163438 := by
    unfold C
    simp [show (110592 * k + 54479) % 2 ≠ 0 by omega]
    omega
  have h9 : C (331776 * k + 163438) = 165888 * k + 81719 := by
    unfold C
    simp [show (331776 * k + 163438) % 2 = 0 by omega]
    omega
  have h10 : C (165888 * k + 81719) = 497664 * k + 245158 := by
    unfold C
    simp [show (165888 * k + 81719) % 2 ≠ 0 by omega]
    omega
  have h11 : C (497664 * k + 245158) = 248832 * k + 122579 := by
    unfold C
    simp [show (497664 * k + 245158) % 2 = 0 by omega]
    omega
  have h12 : C (248832 * k + 122579) = 746496 * k + 367738 := by
    unfold C
    simp [show (248832 * k + 122579) % 2 ≠ 0 by omega]
    omega
  have h13 : C (746496 * k + 367738) = 373248 * k + 183869 := by
    unfold C
    simp [show (746496 * k + 367738) % 2 = 0 by omega]
    omega
  have h14 : C (373248 * k + 183869) = 1119744 * k + 551608 := by
    unfold C
    simp [show (373248 * k + 183869) % 2 ≠ 0 by omega]
    omega
  have h15 : C (1119744 * k + 551608) = 559872 * k + 275804 := by
    unfold C
    simp [show (1119744 * k + 551608) % 2 = 0 by omega]
    omega
  have h16 : C (559872 * k + 275804) = 279936 * k + 137902 := by
    unfold C
    simp [show (559872 * k + 275804) % 2 = 0 by omega]
    omega
  have h17 : C (279936 * k + 137902) = 139968 * k + 68951 := by
    unfold C
    simp [show (279936 * k + 137902) % 2 = 0 by omega]
    omega
  have h18 : C (139968 * k + 68951) = 419904 * k + 206854 := by
    unfold C
    simp [show (139968 * k + 68951) % 2 ≠ 0 by omega]
    omega
  have h19 : C (419904 * k + 206854) = 209952 * k + 103427 := by
    unfold C
    simp [show (419904 * k + 206854) % 2 = 0 by omega]
    omega
  have h20 : C (209952 * k + 103427) = 629856 * k + 310282 := by
    unfold C
    simp [show (209952 * k + 103427) % 2 ≠ 0 by omega]
    omega
  have h21 : C (629856 * k + 310282) = 314928 * k + 155141 := by
    unfold C
    simp [show (629856 * k + 310282) % 2 = 0 by omega]
    omega
  have h22 : C (314928 * k + 155141) = 944784 * k + 465424 := by
    unfold C
    simp [show (314928 * k + 155141) % 2 ≠ 0 by omega]
    omega
  have h23 : C (944784 * k + 465424) = 472392 * k + 232712 := by
    unfold C
    simp [show (944784 * k + 465424) % 2 = 0 by omega]
    omega
  have h24 : C (472392 * k + 232712) = 236196 * k + 116356 := by
    unfold C
    simp [show (472392 * k + 232712) % 2 = 0 by omega]
    omega
  have h25 : C (236196 * k + 116356) = 118098 * k + 58178 := by
    unfold C
    simp [show (236196 * k + 116356) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 58178) = 59049 * k + 29089 := by
    unfold C
    simp [show (118098 * k + 58178) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 32283) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 32283)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_32303 : ∀ k : Nat,
    iterate (65536 * k + 32303) 26 = 59049 * k + 29107 ∧
      59049 * k + 29107 < 65536 * k + 32303 := by
  intro k
  have h1 : C (65536 * k + 32303) = 196608 * k + 96910 := by
    unfold C
    simp [show (65536 * k + 32303) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 96910) = 98304 * k + 48455 := by
    unfold C
    simp [show (196608 * k + 96910) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 48455) = 294912 * k + 145366 := by
    unfold C
    simp [show (98304 * k + 48455) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 145366) = 147456 * k + 72683 := by
    unfold C
    simp [show (294912 * k + 145366) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 72683) = 442368 * k + 218050 := by
    unfold C
    simp [show (147456 * k + 72683) % 2 ≠ 0 by omega]
    omega
  have h6 : C (442368 * k + 218050) = 221184 * k + 109025 := by
    unfold C
    simp [show (442368 * k + 218050) % 2 = 0 by omega]
    omega
  have h7 : C (221184 * k + 109025) = 663552 * k + 327076 := by
    unfold C
    simp [show (221184 * k + 109025) % 2 ≠ 0 by omega]
    omega
  have h8 : C (663552 * k + 327076) = 331776 * k + 163538 := by
    unfold C
    simp [show (663552 * k + 327076) % 2 = 0 by omega]
    omega
  have h9 : C (331776 * k + 163538) = 165888 * k + 81769 := by
    unfold C
    simp [show (331776 * k + 163538) % 2 = 0 by omega]
    omega
  have h10 : C (165888 * k + 81769) = 497664 * k + 245308 := by
    unfold C
    simp [show (165888 * k + 81769) % 2 ≠ 0 by omega]
    omega
  have h11 : C (497664 * k + 245308) = 248832 * k + 122654 := by
    unfold C
    simp [show (497664 * k + 245308) % 2 = 0 by omega]
    omega
  have h12 : C (248832 * k + 122654) = 124416 * k + 61327 := by
    unfold C
    simp [show (248832 * k + 122654) % 2 = 0 by omega]
    omega
  have h13 : C (124416 * k + 61327) = 373248 * k + 183982 := by
    unfold C
    simp [show (124416 * k + 61327) % 2 ≠ 0 by omega]
    omega
  have h14 : C (373248 * k + 183982) = 186624 * k + 91991 := by
    unfold C
    simp [show (373248 * k + 183982) % 2 = 0 by omega]
    omega
  have h15 : C (186624 * k + 91991) = 559872 * k + 275974 := by
    unfold C
    simp [show (186624 * k + 91991) % 2 ≠ 0 by omega]
    omega
  have h16 : C (559872 * k + 275974) = 279936 * k + 137987 := by
    unfold C
    simp [show (559872 * k + 275974) % 2 = 0 by omega]
    omega
  have h17 : C (279936 * k + 137987) = 839808 * k + 413962 := by
    unfold C
    simp [show (279936 * k + 137987) % 2 ≠ 0 by omega]
    omega
  have h18 : C (839808 * k + 413962) = 419904 * k + 206981 := by
    unfold C
    simp [show (839808 * k + 413962) % 2 = 0 by omega]
    omega
  have h19 : C (419904 * k + 206981) = 1259712 * k + 620944 := by
    unfold C
    simp [show (419904 * k + 206981) % 2 ≠ 0 by omega]
    omega
  have h20 : C (1259712 * k + 620944) = 629856 * k + 310472 := by
    unfold C
    simp [show (1259712 * k + 620944) % 2 = 0 by omega]
    omega
  have h21 : C (629856 * k + 310472) = 314928 * k + 155236 := by
    unfold C
    simp [show (629856 * k + 310472) % 2 = 0 by omega]
    omega
  have h22 : C (314928 * k + 155236) = 157464 * k + 77618 := by
    unfold C
    simp [show (314928 * k + 155236) % 2 = 0 by omega]
    omega
  have h23 : C (157464 * k + 77618) = 78732 * k + 38809 := by
    unfold C
    simp [show (157464 * k + 77618) % 2 = 0 by omega]
    omega
  have h24 : C (78732 * k + 38809) = 236196 * k + 116428 := by
    unfold C
    simp [show (78732 * k + 38809) % 2 ≠ 0 by omega]
    omega
  have h25 : C (236196 * k + 116428) = 118098 * k + 58214 := by
    unfold C
    simp [show (236196 * k + 116428) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 58214) = 59049 * k + 29107 := by
    unfold C
    simp [show (118098 * k + 58214) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 32303) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 32303)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_32703 : ∀ k : Nat,
    iterate (65536 * k + 32703) 26 = 59049 * k + 29467 ∧
      59049 * k + 29467 < 65536 * k + 32703 := by
  intro k
  have h1 : C (65536 * k + 32703) = 196608 * k + 98110 := by
    unfold C
    simp [show (65536 * k + 32703) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 98110) = 98304 * k + 49055 := by
    unfold C
    simp [show (196608 * k + 98110) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 49055) = 294912 * k + 147166 := by
    unfold C
    simp [show (98304 * k + 49055) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 147166) = 147456 * k + 73583 := by
    unfold C
    simp [show (294912 * k + 147166) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 73583) = 442368 * k + 220750 := by
    unfold C
    simp [show (147456 * k + 73583) % 2 ≠ 0 by omega]
    omega
  have h6 : C (442368 * k + 220750) = 221184 * k + 110375 := by
    unfold C
    simp [show (442368 * k + 220750) % 2 = 0 by omega]
    omega
  have h7 : C (221184 * k + 110375) = 663552 * k + 331126 := by
    unfold C
    simp [show (221184 * k + 110375) % 2 ≠ 0 by omega]
    omega
  have h8 : C (663552 * k + 331126) = 331776 * k + 165563 := by
    unfold C
    simp [show (663552 * k + 331126) % 2 = 0 by omega]
    omega
  have h9 : C (331776 * k + 165563) = 995328 * k + 496690 := by
    unfold C
    simp [show (331776 * k + 165563) % 2 ≠ 0 by omega]
    omega
  have h10 : C (995328 * k + 496690) = 497664 * k + 248345 := by
    unfold C
    simp [show (995328 * k + 496690) % 2 = 0 by omega]
    omega
  have h11 : C (497664 * k + 248345) = 1492992 * k + 745036 := by
    unfold C
    simp [show (497664 * k + 248345) % 2 ≠ 0 by omega]
    omega
  have h12 : C (1492992 * k + 745036) = 746496 * k + 372518 := by
    unfold C
    simp [show (1492992 * k + 745036) % 2 = 0 by omega]
    omega
  have h13 : C (746496 * k + 372518) = 373248 * k + 186259 := by
    unfold C
    simp [show (746496 * k + 372518) % 2 = 0 by omega]
    omega
  have h14 : C (373248 * k + 186259) = 1119744 * k + 558778 := by
    unfold C
    simp [show (373248 * k + 186259) % 2 ≠ 0 by omega]
    omega
  have h15 : C (1119744 * k + 558778) = 559872 * k + 279389 := by
    unfold C
    simp [show (1119744 * k + 558778) % 2 = 0 by omega]
    omega
  have h16 : C (559872 * k + 279389) = 1679616 * k + 838168 := by
    unfold C
    simp [show (559872 * k + 279389) % 2 ≠ 0 by omega]
    omega
  have h17 : C (1679616 * k + 838168) = 839808 * k + 419084 := by
    unfold C
    simp [show (1679616 * k + 838168) % 2 = 0 by omega]
    omega
  have h18 : C (839808 * k + 419084) = 419904 * k + 209542 := by
    unfold C
    simp [show (839808 * k + 419084) % 2 = 0 by omega]
    omega
  have h19 : C (419904 * k + 209542) = 209952 * k + 104771 := by
    unfold C
    simp [show (419904 * k + 209542) % 2 = 0 by omega]
    omega
  have h20 : C (209952 * k + 104771) = 629856 * k + 314314 := by
    unfold C
    simp [show (209952 * k + 104771) % 2 ≠ 0 by omega]
    omega
  have h21 : C (629856 * k + 314314) = 314928 * k + 157157 := by
    unfold C
    simp [show (629856 * k + 314314) % 2 = 0 by omega]
    omega
  have h22 : C (314928 * k + 157157) = 944784 * k + 471472 := by
    unfold C
    simp [show (314928 * k + 157157) % 2 ≠ 0 by omega]
    omega
  have h23 : C (944784 * k + 471472) = 472392 * k + 235736 := by
    unfold C
    simp [show (944784 * k + 471472) % 2 = 0 by omega]
    omega
  have h24 : C (472392 * k + 235736) = 236196 * k + 117868 := by
    unfold C
    simp [show (472392 * k + 235736) % 2 = 0 by omega]
    omega
  have h25 : C (236196 * k + 117868) = 118098 * k + 58934 := by
    unfold C
    simp [show (236196 * k + 117868) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 58934) = 59049 * k + 29467 := by
    unfold C
    simp [show (118098 * k + 58934) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 32703) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 32703)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_32763 : ∀ k : Nat,
    iterate (65536 * k + 32763) 26 = 59049 * k + 29522 ∧
      59049 * k + 29522 < 65536 * k + 32763 := by
  intro k
  have h1 : C (65536 * k + 32763) = 196608 * k + 98290 := by
    unfold C
    simp [show (65536 * k + 32763) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 98290) = 98304 * k + 49145 := by
    unfold C
    simp [show (196608 * k + 98290) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 49145) = 294912 * k + 147436 := by
    unfold C
    simp [show (98304 * k + 49145) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 147436) = 147456 * k + 73718 := by
    unfold C
    simp [show (294912 * k + 147436) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 73718) = 73728 * k + 36859 := by
    unfold C
    simp [show (147456 * k + 73718) % 2 = 0 by omega]
    omega
  have h6 : C (73728 * k + 36859) = 221184 * k + 110578 := by
    unfold C
    simp [show (73728 * k + 36859) % 2 ≠ 0 by omega]
    omega
  have h7 : C (221184 * k + 110578) = 110592 * k + 55289 := by
    unfold C
    simp [show (221184 * k + 110578) % 2 = 0 by omega]
    omega
  have h8 : C (110592 * k + 55289) = 331776 * k + 165868 := by
    unfold C
    simp [show (110592 * k + 55289) % 2 ≠ 0 by omega]
    omega
  have h9 : C (331776 * k + 165868) = 165888 * k + 82934 := by
    unfold C
    simp [show (331776 * k + 165868) % 2 = 0 by omega]
    omega
  have h10 : C (165888 * k + 82934) = 82944 * k + 41467 := by
    unfold C
    simp [show (165888 * k + 82934) % 2 = 0 by omega]
    omega
  have h11 : C (82944 * k + 41467) = 248832 * k + 124402 := by
    unfold C
    simp [show (82944 * k + 41467) % 2 ≠ 0 by omega]
    omega
  have h12 : C (248832 * k + 124402) = 124416 * k + 62201 := by
    unfold C
    simp [show (248832 * k + 124402) % 2 = 0 by omega]
    omega
  have h13 : C (124416 * k + 62201) = 373248 * k + 186604 := by
    unfold C
    simp [show (124416 * k + 62201) % 2 ≠ 0 by omega]
    omega
  have h14 : C (373248 * k + 186604) = 186624 * k + 93302 := by
    unfold C
    simp [show (373248 * k + 186604) % 2 = 0 by omega]
    omega
  have h15 : C (186624 * k + 93302) = 93312 * k + 46651 := by
    unfold C
    simp [show (186624 * k + 93302) % 2 = 0 by omega]
    omega
  have h16 : C (93312 * k + 46651) = 279936 * k + 139954 := by
    unfold C
    simp [show (93312 * k + 46651) % 2 ≠ 0 by omega]
    omega
  have h17 : C (279936 * k + 139954) = 139968 * k + 69977 := by
    unfold C
    simp [show (279936 * k + 139954) % 2 = 0 by omega]
    omega
  have h18 : C (139968 * k + 69977) = 419904 * k + 209932 := by
    unfold C
    simp [show (139968 * k + 69977) % 2 ≠ 0 by omega]
    omega
  have h19 : C (419904 * k + 209932) = 209952 * k + 104966 := by
    unfold C
    simp [show (419904 * k + 209932) % 2 = 0 by omega]
    omega
  have h20 : C (209952 * k + 104966) = 104976 * k + 52483 := by
    unfold C
    simp [show (209952 * k + 104966) % 2 = 0 by omega]
    omega
  have h21 : C (104976 * k + 52483) = 314928 * k + 157450 := by
    unfold C
    simp [show (104976 * k + 52483) % 2 ≠ 0 by omega]
    omega
  have h22 : C (314928 * k + 157450) = 157464 * k + 78725 := by
    unfold C
    simp [show (314928 * k + 157450) % 2 = 0 by omega]
    omega
  have h23 : C (157464 * k + 78725) = 472392 * k + 236176 := by
    unfold C
    simp [show (157464 * k + 78725) % 2 ≠ 0 by omega]
    omega
  have h24 : C (472392 * k + 236176) = 236196 * k + 118088 := by
    unfold C
    simp [show (472392 * k + 236176) % 2 = 0 by omega]
    omega
  have h25 : C (236196 * k + 118088) = 118098 * k + 59044 := by
    unfold C
    simp [show (236196 * k + 118088) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 59044) = 59049 * k + 29522 := by
    unfold C
    simp [show (118098 * k + 59044) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 32763) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 32763)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_32859 : ∀ k : Nat,
    iterate (65536 * k + 32859) 26 = 59049 * k + 29608 ∧
      59049 * k + 29608 < 65536 * k + 32859 := by
  intro k
  have h1 : C (65536 * k + 32859) = 196608 * k + 98578 := by
    unfold C
    simp [show (65536 * k + 32859) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 98578) = 98304 * k + 49289 := by
    unfold C
    simp [show (196608 * k + 98578) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 49289) = 294912 * k + 147868 := by
    unfold C
    simp [show (98304 * k + 49289) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 147868) = 147456 * k + 73934 := by
    unfold C
    simp [show (294912 * k + 147868) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 73934) = 73728 * k + 36967 := by
    unfold C
    simp [show (147456 * k + 73934) % 2 = 0 by omega]
    omega
  have h6 : C (73728 * k + 36967) = 221184 * k + 110902 := by
    unfold C
    simp [show (73728 * k + 36967) % 2 ≠ 0 by omega]
    omega
  have h7 : C (221184 * k + 110902) = 110592 * k + 55451 := by
    unfold C
    simp [show (221184 * k + 110902) % 2 = 0 by omega]
    omega
  have h8 : C (110592 * k + 55451) = 331776 * k + 166354 := by
    unfold C
    simp [show (110592 * k + 55451) % 2 ≠ 0 by omega]
    omega
  have h9 : C (331776 * k + 166354) = 165888 * k + 83177 := by
    unfold C
    simp [show (331776 * k + 166354) % 2 = 0 by omega]
    omega
  have h10 : C (165888 * k + 83177) = 497664 * k + 249532 := by
    unfold C
    simp [show (165888 * k + 83177) % 2 ≠ 0 by omega]
    omega
  have h11 : C (497664 * k + 249532) = 248832 * k + 124766 := by
    unfold C
    simp [show (497664 * k + 249532) % 2 = 0 by omega]
    omega
  have h12 : C (248832 * k + 124766) = 124416 * k + 62383 := by
    unfold C
    simp [show (248832 * k + 124766) % 2 = 0 by omega]
    omega
  have h13 : C (124416 * k + 62383) = 373248 * k + 187150 := by
    unfold C
    simp [show (124416 * k + 62383) % 2 ≠ 0 by omega]
    omega
  have h14 : C (373248 * k + 187150) = 186624 * k + 93575 := by
    unfold C
    simp [show (373248 * k + 187150) % 2 = 0 by omega]
    omega
  have h15 : C (186624 * k + 93575) = 559872 * k + 280726 := by
    unfold C
    simp [show (186624 * k + 93575) % 2 ≠ 0 by omega]
    omega
  have h16 : C (559872 * k + 280726) = 279936 * k + 140363 := by
    unfold C
    simp [show (559872 * k + 280726) % 2 = 0 by omega]
    omega
  have h17 : C (279936 * k + 140363) = 839808 * k + 421090 := by
    unfold C
    simp [show (279936 * k + 140363) % 2 ≠ 0 by omega]
    omega
  have h18 : C (839808 * k + 421090) = 419904 * k + 210545 := by
    unfold C
    simp [show (839808 * k + 421090) % 2 = 0 by omega]
    omega
  have h19 : C (419904 * k + 210545) = 1259712 * k + 631636 := by
    unfold C
    simp [show (419904 * k + 210545) % 2 ≠ 0 by omega]
    omega
  have h20 : C (1259712 * k + 631636) = 629856 * k + 315818 := by
    unfold C
    simp [show (1259712 * k + 631636) % 2 = 0 by omega]
    omega
  have h21 : C (629856 * k + 315818) = 314928 * k + 157909 := by
    unfold C
    simp [show (629856 * k + 315818) % 2 = 0 by omega]
    omega
  have h22 : C (314928 * k + 157909) = 944784 * k + 473728 := by
    unfold C
    simp [show (314928 * k + 157909) % 2 ≠ 0 by omega]
    omega
  have h23 : C (944784 * k + 473728) = 472392 * k + 236864 := by
    unfold C
    simp [show (944784 * k + 473728) % 2 = 0 by omega]
    omega
  have h24 : C (472392 * k + 236864) = 236196 * k + 118432 := by
    unfold C
    simp [show (472392 * k + 236864) % 2 = 0 by omega]
    omega
  have h25 : C (236196 * k + 118432) = 118098 * k + 59216 := by
    unfold C
    simp [show (236196 * k + 118432) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 59216) = 59049 * k + 29608 := by
    unfold C
    simp [show (118098 * k + 59216) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 32859) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 32859)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_32923 : ∀ k : Nat,
    iterate (65536 * k + 32923) 26 = 59049 * k + 29666 ∧
      59049 * k + 29666 < 65536 * k + 32923 := by
  intro k
  have h1 : C (65536 * k + 32923) = 196608 * k + 98770 := by
    unfold C
    simp [show (65536 * k + 32923) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 98770) = 98304 * k + 49385 := by
    unfold C
    simp [show (196608 * k + 98770) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 49385) = 294912 * k + 148156 := by
    unfold C
    simp [show (98304 * k + 49385) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 148156) = 147456 * k + 74078 := by
    unfold C
    simp [show (294912 * k + 148156) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 74078) = 73728 * k + 37039 := by
    unfold C
    simp [show (147456 * k + 74078) % 2 = 0 by omega]
    omega
  have h6 : C (73728 * k + 37039) = 221184 * k + 111118 := by
    unfold C
    simp [show (73728 * k + 37039) % 2 ≠ 0 by omega]
    omega
  have h7 : C (221184 * k + 111118) = 110592 * k + 55559 := by
    unfold C
    simp [show (221184 * k + 111118) % 2 = 0 by omega]
    omega
  have h8 : C (110592 * k + 55559) = 331776 * k + 166678 := by
    unfold C
    simp [show (110592 * k + 55559) % 2 ≠ 0 by omega]
    omega
  have h9 : C (331776 * k + 166678) = 165888 * k + 83339 := by
    unfold C
    simp [show (331776 * k + 166678) % 2 = 0 by omega]
    omega
  have h10 : C (165888 * k + 83339) = 497664 * k + 250018 := by
    unfold C
    simp [show (165888 * k + 83339) % 2 ≠ 0 by omega]
    omega
  have h11 : C (497664 * k + 250018) = 248832 * k + 125009 := by
    unfold C
    simp [show (497664 * k + 250018) % 2 = 0 by omega]
    omega
  have h12 : C (248832 * k + 125009) = 746496 * k + 375028 := by
    unfold C
    simp [show (248832 * k + 125009) % 2 ≠ 0 by omega]
    omega
  have h13 : C (746496 * k + 375028) = 373248 * k + 187514 := by
    unfold C
    simp [show (746496 * k + 375028) % 2 = 0 by omega]
    omega
  have h14 : C (373248 * k + 187514) = 186624 * k + 93757 := by
    unfold C
    simp [show (373248 * k + 187514) % 2 = 0 by omega]
    omega
  have h15 : C (186624 * k + 93757) = 559872 * k + 281272 := by
    unfold C
    simp [show (186624 * k + 93757) % 2 ≠ 0 by omega]
    omega
  have h16 : C (559872 * k + 281272) = 279936 * k + 140636 := by
    unfold C
    simp [show (559872 * k + 281272) % 2 = 0 by omega]
    omega
  have h17 : C (279936 * k + 140636) = 139968 * k + 70318 := by
    unfold C
    simp [show (279936 * k + 140636) % 2 = 0 by omega]
    omega
  have h18 : C (139968 * k + 70318) = 69984 * k + 35159 := by
    unfold C
    simp [show (139968 * k + 70318) % 2 = 0 by omega]
    omega
  have h19 : C (69984 * k + 35159) = 209952 * k + 105478 := by
    unfold C
    simp [show (69984 * k + 35159) % 2 ≠ 0 by omega]
    omega
  have h20 : C (209952 * k + 105478) = 104976 * k + 52739 := by
    unfold C
    simp [show (209952 * k + 105478) % 2 = 0 by omega]
    omega
  have h21 : C (104976 * k + 52739) = 314928 * k + 158218 := by
    unfold C
    simp [show (104976 * k + 52739) % 2 ≠ 0 by omega]
    omega
  have h22 : C (314928 * k + 158218) = 157464 * k + 79109 := by
    unfold C
    simp [show (314928 * k + 158218) % 2 = 0 by omega]
    omega
  have h23 : C (157464 * k + 79109) = 472392 * k + 237328 := by
    unfold C
    simp [show (157464 * k + 79109) % 2 ≠ 0 by omega]
    omega
  have h24 : C (472392 * k + 237328) = 236196 * k + 118664 := by
    unfold C
    simp [show (472392 * k + 237328) % 2 = 0 by omega]
    omega
  have h25 : C (236196 * k + 118664) = 118098 * k + 59332 := by
    unfold C
    simp [show (236196 * k + 118664) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 59332) = 59049 * k + 29666 := by
    unfold C
    simp [show (118098 * k + 59332) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 32923) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 32923)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_33007 : ∀ k : Nat,
    iterate (65536 * k + 33007) 26 = 59049 * k + 29741 ∧
      59049 * k + 29741 < 65536 * k + 33007 := by
  intro k
  have h1 : C (65536 * k + 33007) = 196608 * k + 99022 := by
    unfold C
    simp [show (65536 * k + 33007) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 99022) = 98304 * k + 49511 := by
    unfold C
    simp [show (196608 * k + 99022) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 49511) = 294912 * k + 148534 := by
    unfold C
    simp [show (98304 * k + 49511) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 148534) = 147456 * k + 74267 := by
    unfold C
    simp [show (294912 * k + 148534) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 74267) = 442368 * k + 222802 := by
    unfold C
    simp [show (147456 * k + 74267) % 2 ≠ 0 by omega]
    omega
  have h6 : C (442368 * k + 222802) = 221184 * k + 111401 := by
    unfold C
    simp [show (442368 * k + 222802) % 2 = 0 by omega]
    omega
  have h7 : C (221184 * k + 111401) = 663552 * k + 334204 := by
    unfold C
    simp [show (221184 * k + 111401) % 2 ≠ 0 by omega]
    omega
  have h8 : C (663552 * k + 334204) = 331776 * k + 167102 := by
    unfold C
    simp [show (663552 * k + 334204) % 2 = 0 by omega]
    omega
  have h9 : C (331776 * k + 167102) = 165888 * k + 83551 := by
    unfold C
    simp [show (331776 * k + 167102) % 2 = 0 by omega]
    omega
  have h10 : C (165888 * k + 83551) = 497664 * k + 250654 := by
    unfold C
    simp [show (165888 * k + 83551) % 2 ≠ 0 by omega]
    omega
  have h11 : C (497664 * k + 250654) = 248832 * k + 125327 := by
    unfold C
    simp [show (497664 * k + 250654) % 2 = 0 by omega]
    omega
  have h12 : C (248832 * k + 125327) = 746496 * k + 375982 := by
    unfold C
    simp [show (248832 * k + 125327) % 2 ≠ 0 by omega]
    omega
  have h13 : C (746496 * k + 375982) = 373248 * k + 187991 := by
    unfold C
    simp [show (746496 * k + 375982) % 2 = 0 by omega]
    omega
  have h14 : C (373248 * k + 187991) = 1119744 * k + 563974 := by
    unfold C
    simp [show (373248 * k + 187991) % 2 ≠ 0 by omega]
    omega
  have h15 : C (1119744 * k + 563974) = 559872 * k + 281987 := by
    unfold C
    simp [show (1119744 * k + 563974) % 2 = 0 by omega]
    omega
  have h16 : C (559872 * k + 281987) = 1679616 * k + 845962 := by
    unfold C
    simp [show (559872 * k + 281987) % 2 ≠ 0 by omega]
    omega
  have h17 : C (1679616 * k + 845962) = 839808 * k + 422981 := by
    unfold C
    simp [show (1679616 * k + 845962) % 2 = 0 by omega]
    omega
  have h18 : C (839808 * k + 422981) = 2519424 * k + 1268944 := by
    unfold C
    simp [show (839808 * k + 422981) % 2 ≠ 0 by omega]
    omega
  have h19 : C (2519424 * k + 1268944) = 1259712 * k + 634472 := by
    unfold C
    simp [show (2519424 * k + 1268944) % 2 = 0 by omega]
    omega
  have h20 : C (1259712 * k + 634472) = 629856 * k + 317236 := by
    unfold C
    simp [show (1259712 * k + 634472) % 2 = 0 by omega]
    omega
  have h21 : C (629856 * k + 317236) = 314928 * k + 158618 := by
    unfold C
    simp [show (629856 * k + 317236) % 2 = 0 by omega]
    omega
  have h22 : C (314928 * k + 158618) = 157464 * k + 79309 := by
    unfold C
    simp [show (314928 * k + 158618) % 2 = 0 by omega]
    omega
  have h23 : C (157464 * k + 79309) = 472392 * k + 237928 := by
    unfold C
    simp [show (157464 * k + 79309) % 2 ≠ 0 by omega]
    omega
  have h24 : C (472392 * k + 237928) = 236196 * k + 118964 := by
    unfold C
    simp [show (472392 * k + 237928) % 2 = 0 by omega]
    omega
  have h25 : C (236196 * k + 118964) = 118098 * k + 59482 := by
    unfold C
    simp [show (236196 * k + 118964) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 59482) = 59049 * k + 29741 := by
    unfold C
    simp [show (118098 * k + 59482) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 33007) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 33007)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

end CollatzM16ShardL
