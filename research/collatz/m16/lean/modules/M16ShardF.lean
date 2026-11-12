import Mathlib.Data.Nat.Prime.Basic

namespace CollatzM16ShardF

def C (n : Nat) : Nat := if n % 2 = 0 then n / 2 else 3 * n + 1

def iterate (n t : Nat) : Nat := Nat.rec n (fun _ previous => C previous) t

theorem descent_mod65536_14503 : ∀ k : Nat,
    iterate (65536 * k + 14503) 26 = 59049 * k + 13069 ∧
      59049 * k + 13069 < 65536 * k + 14503 := by
  intro k
  have h1 : C (65536 * k + 14503) = 196608 * k + 43510 := by
    unfold C
    simp [show (65536 * k + 14503) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 43510) = 98304 * k + 21755 := by
    unfold C
    simp [show (196608 * k + 43510) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 21755) = 294912 * k + 65266 := by
    unfold C
    simp [show (98304 * k + 21755) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 65266) = 147456 * k + 32633 := by
    unfold C
    simp [show (294912 * k + 65266) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 32633) = 442368 * k + 97900 := by
    unfold C
    simp [show (147456 * k + 32633) % 2 ≠ 0 by omega]
    omega
  have h6 : C (442368 * k + 97900) = 221184 * k + 48950 := by
    unfold C
    simp [show (442368 * k + 97900) % 2 = 0 by omega]
    omega
  have h7 : C (221184 * k + 48950) = 110592 * k + 24475 := by
    unfold C
    simp [show (221184 * k + 48950) % 2 = 0 by omega]
    omega
  have h8 : C (110592 * k + 24475) = 331776 * k + 73426 := by
    unfold C
    simp [show (110592 * k + 24475) % 2 ≠ 0 by omega]
    omega
  have h9 : C (331776 * k + 73426) = 165888 * k + 36713 := by
    unfold C
    simp [show (331776 * k + 73426) % 2 = 0 by omega]
    omega
  have h10 : C (165888 * k + 36713) = 497664 * k + 110140 := by
    unfold C
    simp [show (165888 * k + 36713) % 2 ≠ 0 by omega]
    omega
  have h11 : C (497664 * k + 110140) = 248832 * k + 55070 := by
    unfold C
    simp [show (497664 * k + 110140) % 2 = 0 by omega]
    omega
  have h12 : C (248832 * k + 55070) = 124416 * k + 27535 := by
    unfold C
    simp [show (248832 * k + 55070) % 2 = 0 by omega]
    omega
  have h13 : C (124416 * k + 27535) = 373248 * k + 82606 := by
    unfold C
    simp [show (124416 * k + 27535) % 2 ≠ 0 by omega]
    omega
  have h14 : C (373248 * k + 82606) = 186624 * k + 41303 := by
    unfold C
    simp [show (373248 * k + 82606) % 2 = 0 by omega]
    omega
  have h15 : C (186624 * k + 41303) = 559872 * k + 123910 := by
    unfold C
    simp [show (186624 * k + 41303) % 2 ≠ 0 by omega]
    omega
  have h16 : C (559872 * k + 123910) = 279936 * k + 61955 := by
    unfold C
    simp [show (559872 * k + 123910) % 2 = 0 by omega]
    omega
  have h17 : C (279936 * k + 61955) = 839808 * k + 185866 := by
    unfold C
    simp [show (279936 * k + 61955) % 2 ≠ 0 by omega]
    omega
  have h18 : C (839808 * k + 185866) = 419904 * k + 92933 := by
    unfold C
    simp [show (839808 * k + 185866) % 2 = 0 by omega]
    omega
  have h19 : C (419904 * k + 92933) = 1259712 * k + 278800 := by
    unfold C
    simp [show (419904 * k + 92933) % 2 ≠ 0 by omega]
    omega
  have h20 : C (1259712 * k + 278800) = 629856 * k + 139400 := by
    unfold C
    simp [show (1259712 * k + 278800) % 2 = 0 by omega]
    omega
  have h21 : C (629856 * k + 139400) = 314928 * k + 69700 := by
    unfold C
    simp [show (629856 * k + 139400) % 2 = 0 by omega]
    omega
  have h22 : C (314928 * k + 69700) = 157464 * k + 34850 := by
    unfold C
    simp [show (314928 * k + 69700) % 2 = 0 by omega]
    omega
  have h23 : C (157464 * k + 34850) = 78732 * k + 17425 := by
    unfold C
    simp [show (157464 * k + 34850) % 2 = 0 by omega]
    omega
  have h24 : C (78732 * k + 17425) = 236196 * k + 52276 := by
    unfold C
    simp [show (78732 * k + 17425) % 2 ≠ 0 by omega]
    omega
  have h25 : C (236196 * k + 52276) = 118098 * k + 26138 := by
    unfold C
    simp [show (236196 * k + 52276) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 26138) = 59049 * k + 13069 := by
    unfold C
    simp [show (118098 * k + 26138) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 14503) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 14503)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_14543 : ∀ k : Nat,
    iterate (65536 * k + 14543) 26 = 59049 * k + 13105 ∧
      59049 * k + 13105 < 65536 * k + 14543 := by
  intro k
  have h1 : C (65536 * k + 14543) = 196608 * k + 43630 := by
    unfold C
    simp [show (65536 * k + 14543) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 43630) = 98304 * k + 21815 := by
    unfold C
    simp [show (196608 * k + 43630) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 21815) = 294912 * k + 65446 := by
    unfold C
    simp [show (98304 * k + 21815) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 65446) = 147456 * k + 32723 := by
    unfold C
    simp [show (294912 * k + 65446) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 32723) = 442368 * k + 98170 := by
    unfold C
    simp [show (147456 * k + 32723) % 2 ≠ 0 by omega]
    omega
  have h6 : C (442368 * k + 98170) = 221184 * k + 49085 := by
    unfold C
    simp [show (442368 * k + 98170) % 2 = 0 by omega]
    omega
  have h7 : C (221184 * k + 49085) = 663552 * k + 147256 := by
    unfold C
    simp [show (221184 * k + 49085) % 2 ≠ 0 by omega]
    omega
  have h8 : C (663552 * k + 147256) = 331776 * k + 73628 := by
    unfold C
    simp [show (663552 * k + 147256) % 2 = 0 by omega]
    omega
  have h9 : C (331776 * k + 73628) = 165888 * k + 36814 := by
    unfold C
    simp [show (331776 * k + 73628) % 2 = 0 by omega]
    omega
  have h10 : C (165888 * k + 36814) = 82944 * k + 18407 := by
    unfold C
    simp [show (165888 * k + 36814) % 2 = 0 by omega]
    omega
  have h11 : C (82944 * k + 18407) = 248832 * k + 55222 := by
    unfold C
    simp [show (82944 * k + 18407) % 2 ≠ 0 by omega]
    omega
  have h12 : C (248832 * k + 55222) = 124416 * k + 27611 := by
    unfold C
    simp [show (248832 * k + 55222) % 2 = 0 by omega]
    omega
  have h13 : C (124416 * k + 27611) = 373248 * k + 82834 := by
    unfold C
    simp [show (124416 * k + 27611) % 2 ≠ 0 by omega]
    omega
  have h14 : C (373248 * k + 82834) = 186624 * k + 41417 := by
    unfold C
    simp [show (373248 * k + 82834) % 2 = 0 by omega]
    omega
  have h15 : C (186624 * k + 41417) = 559872 * k + 124252 := by
    unfold C
    simp [show (186624 * k + 41417) % 2 ≠ 0 by omega]
    omega
  have h16 : C (559872 * k + 124252) = 279936 * k + 62126 := by
    unfold C
    simp [show (559872 * k + 124252) % 2 = 0 by omega]
    omega
  have h17 : C (279936 * k + 62126) = 139968 * k + 31063 := by
    unfold C
    simp [show (279936 * k + 62126) % 2 = 0 by omega]
    omega
  have h18 : C (139968 * k + 31063) = 419904 * k + 93190 := by
    unfold C
    simp [show (139968 * k + 31063) % 2 ≠ 0 by omega]
    omega
  have h19 : C (419904 * k + 93190) = 209952 * k + 46595 := by
    unfold C
    simp [show (419904 * k + 93190) % 2 = 0 by omega]
    omega
  have h20 : C (209952 * k + 46595) = 629856 * k + 139786 := by
    unfold C
    simp [show (209952 * k + 46595) % 2 ≠ 0 by omega]
    omega
  have h21 : C (629856 * k + 139786) = 314928 * k + 69893 := by
    unfold C
    simp [show (629856 * k + 139786) % 2 = 0 by omega]
    omega
  have h22 : C (314928 * k + 69893) = 944784 * k + 209680 := by
    unfold C
    simp [show (314928 * k + 69893) % 2 ≠ 0 by omega]
    omega
  have h23 : C (944784 * k + 209680) = 472392 * k + 104840 := by
    unfold C
    simp [show (944784 * k + 209680) % 2 = 0 by omega]
    omega
  have h24 : C (472392 * k + 104840) = 236196 * k + 52420 := by
    unfold C
    simp [show (472392 * k + 104840) % 2 = 0 by omega]
    omega
  have h25 : C (236196 * k + 52420) = 118098 * k + 26210 := by
    unfold C
    simp [show (236196 * k + 52420) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 26210) = 59049 * k + 13105 := by
    unfold C
    simp [show (118098 * k + 26210) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 14543) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 14543)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_14747 : ∀ k : Nat,
    iterate (65536 * k + 14747) 26 = 59049 * k + 13289 ∧
      59049 * k + 13289 < 65536 * k + 14747 := by
  intro k
  have h1 : C (65536 * k + 14747) = 196608 * k + 44242 := by
    unfold C
    simp [show (65536 * k + 14747) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 44242) = 98304 * k + 22121 := by
    unfold C
    simp [show (196608 * k + 44242) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 22121) = 294912 * k + 66364 := by
    unfold C
    simp [show (98304 * k + 22121) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 66364) = 147456 * k + 33182 := by
    unfold C
    simp [show (294912 * k + 66364) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 33182) = 73728 * k + 16591 := by
    unfold C
    simp [show (147456 * k + 33182) % 2 = 0 by omega]
    omega
  have h6 : C (73728 * k + 16591) = 221184 * k + 49774 := by
    unfold C
    simp [show (73728 * k + 16591) % 2 ≠ 0 by omega]
    omega
  have h7 : C (221184 * k + 49774) = 110592 * k + 24887 := by
    unfold C
    simp [show (221184 * k + 49774) % 2 = 0 by omega]
    omega
  have h8 : C (110592 * k + 24887) = 331776 * k + 74662 := by
    unfold C
    simp [show (110592 * k + 24887) % 2 ≠ 0 by omega]
    omega
  have h9 : C (331776 * k + 74662) = 165888 * k + 37331 := by
    unfold C
    simp [show (331776 * k + 74662) % 2 = 0 by omega]
    omega
  have h10 : C (165888 * k + 37331) = 497664 * k + 111994 := by
    unfold C
    simp [show (165888 * k + 37331) % 2 ≠ 0 by omega]
    omega
  have h11 : C (497664 * k + 111994) = 248832 * k + 55997 := by
    unfold C
    simp [show (497664 * k + 111994) % 2 = 0 by omega]
    omega
  have h12 : C (248832 * k + 55997) = 746496 * k + 167992 := by
    unfold C
    simp [show (248832 * k + 55997) % 2 ≠ 0 by omega]
    omega
  have h13 : C (746496 * k + 167992) = 373248 * k + 83996 := by
    unfold C
    simp [show (746496 * k + 167992) % 2 = 0 by omega]
    omega
  have h14 : C (373248 * k + 83996) = 186624 * k + 41998 := by
    unfold C
    simp [show (373248 * k + 83996) % 2 = 0 by omega]
    omega
  have h15 : C (186624 * k + 41998) = 93312 * k + 20999 := by
    unfold C
    simp [show (186624 * k + 41998) % 2 = 0 by omega]
    omega
  have h16 : C (93312 * k + 20999) = 279936 * k + 62998 := by
    unfold C
    simp [show (93312 * k + 20999) % 2 ≠ 0 by omega]
    omega
  have h17 : C (279936 * k + 62998) = 139968 * k + 31499 := by
    unfold C
    simp [show (279936 * k + 62998) % 2 = 0 by omega]
    omega
  have h18 : C (139968 * k + 31499) = 419904 * k + 94498 := by
    unfold C
    simp [show (139968 * k + 31499) % 2 ≠ 0 by omega]
    omega
  have h19 : C (419904 * k + 94498) = 209952 * k + 47249 := by
    unfold C
    simp [show (419904 * k + 94498) % 2 = 0 by omega]
    omega
  have h20 : C (209952 * k + 47249) = 629856 * k + 141748 := by
    unfold C
    simp [show (209952 * k + 47249) % 2 ≠ 0 by omega]
    omega
  have h21 : C (629856 * k + 141748) = 314928 * k + 70874 := by
    unfold C
    simp [show (629856 * k + 141748) % 2 = 0 by omega]
    omega
  have h22 : C (314928 * k + 70874) = 157464 * k + 35437 := by
    unfold C
    simp [show (314928 * k + 70874) % 2 = 0 by omega]
    omega
  have h23 : C (157464 * k + 35437) = 472392 * k + 106312 := by
    unfold C
    simp [show (157464 * k + 35437) % 2 ≠ 0 by omega]
    omega
  have h24 : C (472392 * k + 106312) = 236196 * k + 53156 := by
    unfold C
    simp [show (472392 * k + 106312) % 2 = 0 by omega]
    omega
  have h25 : C (236196 * k + 53156) = 118098 * k + 26578 := by
    unfold C
    simp [show (236196 * k + 53156) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 26578) = 59049 * k + 13289 := by
    unfold C
    simp [show (118098 * k + 26578) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 14747) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 14747)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_15103 : ∀ k : Nat,
    iterate (65536 * k + 15103) 26 = 59049 * k + 13609 ∧
      59049 * k + 13609 < 65536 * k + 15103 := by
  intro k
  have h1 : C (65536 * k + 15103) = 196608 * k + 45310 := by
    unfold C
    simp [show (65536 * k + 15103) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 45310) = 98304 * k + 22655 := by
    unfold C
    simp [show (196608 * k + 45310) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 22655) = 294912 * k + 67966 := by
    unfold C
    simp [show (98304 * k + 22655) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 67966) = 147456 * k + 33983 := by
    unfold C
    simp [show (294912 * k + 67966) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 33983) = 442368 * k + 101950 := by
    unfold C
    simp [show (147456 * k + 33983) % 2 ≠ 0 by omega]
    omega
  have h6 : C (442368 * k + 101950) = 221184 * k + 50975 := by
    unfold C
    simp [show (442368 * k + 101950) % 2 = 0 by omega]
    omega
  have h7 : C (221184 * k + 50975) = 663552 * k + 152926 := by
    unfold C
    simp [show (221184 * k + 50975) % 2 ≠ 0 by omega]
    omega
  have h8 : C (663552 * k + 152926) = 331776 * k + 76463 := by
    unfold C
    simp [show (663552 * k + 152926) % 2 = 0 by omega]
    omega
  have h9 : C (331776 * k + 76463) = 995328 * k + 229390 := by
    unfold C
    simp [show (331776 * k + 76463) % 2 ≠ 0 by omega]
    omega
  have h10 : C (995328 * k + 229390) = 497664 * k + 114695 := by
    unfold C
    simp [show (995328 * k + 229390) % 2 = 0 by omega]
    omega
  have h11 : C (497664 * k + 114695) = 1492992 * k + 344086 := by
    unfold C
    simp [show (497664 * k + 114695) % 2 ≠ 0 by omega]
    omega
  have h12 : C (1492992 * k + 344086) = 746496 * k + 172043 := by
    unfold C
    simp [show (1492992 * k + 344086) % 2 = 0 by omega]
    omega
  have h13 : C (746496 * k + 172043) = 2239488 * k + 516130 := by
    unfold C
    simp [show (746496 * k + 172043) % 2 ≠ 0 by omega]
    omega
  have h14 : C (2239488 * k + 516130) = 1119744 * k + 258065 := by
    unfold C
    simp [show (2239488 * k + 516130) % 2 = 0 by omega]
    omega
  have h15 : C (1119744 * k + 258065) = 3359232 * k + 774196 := by
    unfold C
    simp [show (1119744 * k + 258065) % 2 ≠ 0 by omega]
    omega
  have h16 : C (3359232 * k + 774196) = 1679616 * k + 387098 := by
    unfold C
    simp [show (3359232 * k + 774196) % 2 = 0 by omega]
    omega
  have h17 : C (1679616 * k + 387098) = 839808 * k + 193549 := by
    unfold C
    simp [show (1679616 * k + 387098) % 2 = 0 by omega]
    omega
  have h18 : C (839808 * k + 193549) = 2519424 * k + 580648 := by
    unfold C
    simp [show (839808 * k + 193549) % 2 ≠ 0 by omega]
    omega
  have h19 : C (2519424 * k + 580648) = 1259712 * k + 290324 := by
    unfold C
    simp [show (2519424 * k + 580648) % 2 = 0 by omega]
    omega
  have h20 : C (1259712 * k + 290324) = 629856 * k + 145162 := by
    unfold C
    simp [show (1259712 * k + 290324) % 2 = 0 by omega]
    omega
  have h21 : C (629856 * k + 145162) = 314928 * k + 72581 := by
    unfold C
    simp [show (629856 * k + 145162) % 2 = 0 by omega]
    omega
  have h22 : C (314928 * k + 72581) = 944784 * k + 217744 := by
    unfold C
    simp [show (314928 * k + 72581) % 2 ≠ 0 by omega]
    omega
  have h23 : C (944784 * k + 217744) = 472392 * k + 108872 := by
    unfold C
    simp [show (944784 * k + 217744) % 2 = 0 by omega]
    omega
  have h24 : C (472392 * k + 108872) = 236196 * k + 54436 := by
    unfold C
    simp [show (472392 * k + 108872) % 2 = 0 by omega]
    omega
  have h25 : C (236196 * k + 54436) = 118098 * k + 27218 := by
    unfold C
    simp [show (236196 * k + 54436) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 27218) = 59049 * k + 13609 := by
    unfold C
    simp [show (118098 * k + 27218) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 15103) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 15103)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_15167 : ∀ k : Nat,
    iterate (65536 * k + 15167) 26 = 59049 * k + 13667 ∧
      59049 * k + 13667 < 65536 * k + 15167 := by
  intro k
  have h1 : C (65536 * k + 15167) = 196608 * k + 45502 := by
    unfold C
    simp [show (65536 * k + 15167) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 45502) = 98304 * k + 22751 := by
    unfold C
    simp [show (196608 * k + 45502) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 22751) = 294912 * k + 68254 := by
    unfold C
    simp [show (98304 * k + 22751) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 68254) = 147456 * k + 34127 := by
    unfold C
    simp [show (294912 * k + 68254) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 34127) = 442368 * k + 102382 := by
    unfold C
    simp [show (147456 * k + 34127) % 2 ≠ 0 by omega]
    omega
  have h6 : C (442368 * k + 102382) = 221184 * k + 51191 := by
    unfold C
    simp [show (442368 * k + 102382) % 2 = 0 by omega]
    omega
  have h7 : C (221184 * k + 51191) = 663552 * k + 153574 := by
    unfold C
    simp [show (221184 * k + 51191) % 2 ≠ 0 by omega]
    omega
  have h8 : C (663552 * k + 153574) = 331776 * k + 76787 := by
    unfold C
    simp [show (663552 * k + 153574) % 2 = 0 by omega]
    omega
  have h9 : C (331776 * k + 76787) = 995328 * k + 230362 := by
    unfold C
    simp [show (331776 * k + 76787) % 2 ≠ 0 by omega]
    omega
  have h10 : C (995328 * k + 230362) = 497664 * k + 115181 := by
    unfold C
    simp [show (995328 * k + 230362) % 2 = 0 by omega]
    omega
  have h11 : C (497664 * k + 115181) = 1492992 * k + 345544 := by
    unfold C
    simp [show (497664 * k + 115181) % 2 ≠ 0 by omega]
    omega
  have h12 : C (1492992 * k + 345544) = 746496 * k + 172772 := by
    unfold C
    simp [show (1492992 * k + 345544) % 2 = 0 by omega]
    omega
  have h13 : C (746496 * k + 172772) = 373248 * k + 86386 := by
    unfold C
    simp [show (746496 * k + 172772) % 2 = 0 by omega]
    omega
  have h14 : C (373248 * k + 86386) = 186624 * k + 43193 := by
    unfold C
    simp [show (373248 * k + 86386) % 2 = 0 by omega]
    omega
  have h15 : C (186624 * k + 43193) = 559872 * k + 129580 := by
    unfold C
    simp [show (186624 * k + 43193) % 2 ≠ 0 by omega]
    omega
  have h16 : C (559872 * k + 129580) = 279936 * k + 64790 := by
    unfold C
    simp [show (559872 * k + 129580) % 2 = 0 by omega]
    omega
  have h17 : C (279936 * k + 64790) = 139968 * k + 32395 := by
    unfold C
    simp [show (279936 * k + 64790) % 2 = 0 by omega]
    omega
  have h18 : C (139968 * k + 32395) = 419904 * k + 97186 := by
    unfold C
    simp [show (139968 * k + 32395) % 2 ≠ 0 by omega]
    omega
  have h19 : C (419904 * k + 97186) = 209952 * k + 48593 := by
    unfold C
    simp [show (419904 * k + 97186) % 2 = 0 by omega]
    omega
  have h20 : C (209952 * k + 48593) = 629856 * k + 145780 := by
    unfold C
    simp [show (209952 * k + 48593) % 2 ≠ 0 by omega]
    omega
  have h21 : C (629856 * k + 145780) = 314928 * k + 72890 := by
    unfold C
    simp [show (629856 * k + 145780) % 2 = 0 by omega]
    omega
  have h22 : C (314928 * k + 72890) = 157464 * k + 36445 := by
    unfold C
    simp [show (314928 * k + 72890) % 2 = 0 by omega]
    omega
  have h23 : C (157464 * k + 36445) = 472392 * k + 109336 := by
    unfold C
    simp [show (157464 * k + 36445) % 2 ≠ 0 by omega]
    omega
  have h24 : C (472392 * k + 109336) = 236196 * k + 54668 := by
    unfold C
    simp [show (472392 * k + 109336) % 2 = 0 by omega]
    omega
  have h25 : C (236196 * k + 54668) = 118098 * k + 27334 := by
    unfold C
    simp [show (236196 * k + 54668) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 27334) = 59049 * k + 13667 := by
    unfold C
    simp [show (118098 * k + 27334) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 15167) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 15167)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_15207 : ∀ k : Nat,
    iterate (65536 * k + 15207) 26 = 59049 * k + 13703 ∧
      59049 * k + 13703 < 65536 * k + 15207 := by
  intro k
  have h1 : C (65536 * k + 15207) = 196608 * k + 45622 := by
    unfold C
    simp [show (65536 * k + 15207) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 45622) = 98304 * k + 22811 := by
    unfold C
    simp [show (196608 * k + 45622) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 22811) = 294912 * k + 68434 := by
    unfold C
    simp [show (98304 * k + 22811) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 68434) = 147456 * k + 34217 := by
    unfold C
    simp [show (294912 * k + 68434) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 34217) = 442368 * k + 102652 := by
    unfold C
    simp [show (147456 * k + 34217) % 2 ≠ 0 by omega]
    omega
  have h6 : C (442368 * k + 102652) = 221184 * k + 51326 := by
    unfold C
    simp [show (442368 * k + 102652) % 2 = 0 by omega]
    omega
  have h7 : C (221184 * k + 51326) = 110592 * k + 25663 := by
    unfold C
    simp [show (221184 * k + 51326) % 2 = 0 by omega]
    omega
  have h8 : C (110592 * k + 25663) = 331776 * k + 76990 := by
    unfold C
    simp [show (110592 * k + 25663) % 2 ≠ 0 by omega]
    omega
  have h9 : C (331776 * k + 76990) = 165888 * k + 38495 := by
    unfold C
    simp [show (331776 * k + 76990) % 2 = 0 by omega]
    omega
  have h10 : C (165888 * k + 38495) = 497664 * k + 115486 := by
    unfold C
    simp [show (165888 * k + 38495) % 2 ≠ 0 by omega]
    omega
  have h11 : C (497664 * k + 115486) = 248832 * k + 57743 := by
    unfold C
    simp [show (497664 * k + 115486) % 2 = 0 by omega]
    omega
  have h12 : C (248832 * k + 57743) = 746496 * k + 173230 := by
    unfold C
    simp [show (248832 * k + 57743) % 2 ≠ 0 by omega]
    omega
  have h13 : C (746496 * k + 173230) = 373248 * k + 86615 := by
    unfold C
    simp [show (746496 * k + 173230) % 2 = 0 by omega]
    omega
  have h14 : C (373248 * k + 86615) = 1119744 * k + 259846 := by
    unfold C
    simp [show (373248 * k + 86615) % 2 ≠ 0 by omega]
    omega
  have h15 : C (1119744 * k + 259846) = 559872 * k + 129923 := by
    unfold C
    simp [show (1119744 * k + 259846) % 2 = 0 by omega]
    omega
  have h16 : C (559872 * k + 129923) = 1679616 * k + 389770 := by
    unfold C
    simp [show (559872 * k + 129923) % 2 ≠ 0 by omega]
    omega
  have h17 : C (1679616 * k + 389770) = 839808 * k + 194885 := by
    unfold C
    simp [show (1679616 * k + 389770) % 2 = 0 by omega]
    omega
  have h18 : C (839808 * k + 194885) = 2519424 * k + 584656 := by
    unfold C
    simp [show (839808 * k + 194885) % 2 ≠ 0 by omega]
    omega
  have h19 : C (2519424 * k + 584656) = 1259712 * k + 292328 := by
    unfold C
    simp [show (2519424 * k + 584656) % 2 = 0 by omega]
    omega
  have h20 : C (1259712 * k + 292328) = 629856 * k + 146164 := by
    unfold C
    simp [show (1259712 * k + 292328) % 2 = 0 by omega]
    omega
  have h21 : C (629856 * k + 146164) = 314928 * k + 73082 := by
    unfold C
    simp [show (629856 * k + 146164) % 2 = 0 by omega]
    omega
  have h22 : C (314928 * k + 73082) = 157464 * k + 36541 := by
    unfold C
    simp [show (314928 * k + 73082) % 2 = 0 by omega]
    omega
  have h23 : C (157464 * k + 36541) = 472392 * k + 109624 := by
    unfold C
    simp [show (157464 * k + 36541) % 2 ≠ 0 by omega]
    omega
  have h24 : C (472392 * k + 109624) = 236196 * k + 54812 := by
    unfold C
    simp [show (472392 * k + 109624) % 2 = 0 by omega]
    omega
  have h25 : C (236196 * k + 54812) = 118098 * k + 27406 := by
    unfold C
    simp [show (236196 * k + 54812) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 27406) = 59049 * k + 13703 := by
    unfold C
    simp [show (118098 * k + 27406) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 15207) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 15207)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_15423 : ∀ k : Nat,
    iterate (65536 * k + 15423) 26 = 59049 * k + 13898 ∧
      59049 * k + 13898 < 65536 * k + 15423 := by
  intro k
  have h1 : C (65536 * k + 15423) = 196608 * k + 46270 := by
    unfold C
    simp [show (65536 * k + 15423) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 46270) = 98304 * k + 23135 := by
    unfold C
    simp [show (196608 * k + 46270) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 23135) = 294912 * k + 69406 := by
    unfold C
    simp [show (98304 * k + 23135) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 69406) = 147456 * k + 34703 := by
    unfold C
    simp [show (294912 * k + 69406) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 34703) = 442368 * k + 104110 := by
    unfold C
    simp [show (147456 * k + 34703) % 2 ≠ 0 by omega]
    omega
  have h6 : C (442368 * k + 104110) = 221184 * k + 52055 := by
    unfold C
    simp [show (442368 * k + 104110) % 2 = 0 by omega]
    omega
  have h7 : C (221184 * k + 52055) = 663552 * k + 156166 := by
    unfold C
    simp [show (221184 * k + 52055) % 2 ≠ 0 by omega]
    omega
  have h8 : C (663552 * k + 156166) = 331776 * k + 78083 := by
    unfold C
    simp [show (663552 * k + 156166) % 2 = 0 by omega]
    omega
  have h9 : C (331776 * k + 78083) = 995328 * k + 234250 := by
    unfold C
    simp [show (331776 * k + 78083) % 2 ≠ 0 by omega]
    omega
  have h10 : C (995328 * k + 234250) = 497664 * k + 117125 := by
    unfold C
    simp [show (995328 * k + 234250) % 2 = 0 by omega]
    omega
  have h11 : C (497664 * k + 117125) = 1492992 * k + 351376 := by
    unfold C
    simp [show (497664 * k + 117125) % 2 ≠ 0 by omega]
    omega
  have h12 : C (1492992 * k + 351376) = 746496 * k + 175688 := by
    unfold C
    simp [show (1492992 * k + 351376) % 2 = 0 by omega]
    omega
  have h13 : C (746496 * k + 175688) = 373248 * k + 87844 := by
    unfold C
    simp [show (746496 * k + 175688) % 2 = 0 by omega]
    omega
  have h14 : C (373248 * k + 87844) = 186624 * k + 43922 := by
    unfold C
    simp [show (373248 * k + 87844) % 2 = 0 by omega]
    omega
  have h15 : C (186624 * k + 43922) = 93312 * k + 21961 := by
    unfold C
    simp [show (186624 * k + 43922) % 2 = 0 by omega]
    omega
  have h16 : C (93312 * k + 21961) = 279936 * k + 65884 := by
    unfold C
    simp [show (93312 * k + 21961) % 2 ≠ 0 by omega]
    omega
  have h17 : C (279936 * k + 65884) = 139968 * k + 32942 := by
    unfold C
    simp [show (279936 * k + 65884) % 2 = 0 by omega]
    omega
  have h18 : C (139968 * k + 32942) = 69984 * k + 16471 := by
    unfold C
    simp [show (139968 * k + 32942) % 2 = 0 by omega]
    omega
  have h19 : C (69984 * k + 16471) = 209952 * k + 49414 := by
    unfold C
    simp [show (69984 * k + 16471) % 2 ≠ 0 by omega]
    omega
  have h20 : C (209952 * k + 49414) = 104976 * k + 24707 := by
    unfold C
    simp [show (209952 * k + 49414) % 2 = 0 by omega]
    omega
  have h21 : C (104976 * k + 24707) = 314928 * k + 74122 := by
    unfold C
    simp [show (104976 * k + 24707) % 2 ≠ 0 by omega]
    omega
  have h22 : C (314928 * k + 74122) = 157464 * k + 37061 := by
    unfold C
    simp [show (314928 * k + 74122) % 2 = 0 by omega]
    omega
  have h23 : C (157464 * k + 37061) = 472392 * k + 111184 := by
    unfold C
    simp [show (157464 * k + 37061) % 2 ≠ 0 by omega]
    omega
  have h24 : C (472392 * k + 111184) = 236196 * k + 55592 := by
    unfold C
    simp [show (472392 * k + 111184) % 2 = 0 by omega]
    omega
  have h25 : C (236196 * k + 55592) = 118098 * k + 27796 := by
    unfold C
    simp [show (236196 * k + 55592) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 27796) = 59049 * k + 13898 := by
    unfold C
    simp [show (118098 * k + 27796) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 15423) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 15423)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_15487 : ∀ k : Nat,
    iterate (65536 * k + 15487) 26 = 59049 * k + 13955 ∧
      59049 * k + 13955 < 65536 * k + 15487 := by
  intro k
  have h1 : C (65536 * k + 15487) = 196608 * k + 46462 := by
    unfold C
    simp [show (65536 * k + 15487) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 46462) = 98304 * k + 23231 := by
    unfold C
    simp [show (196608 * k + 46462) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 23231) = 294912 * k + 69694 := by
    unfold C
    simp [show (98304 * k + 23231) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 69694) = 147456 * k + 34847 := by
    unfold C
    simp [show (294912 * k + 69694) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 34847) = 442368 * k + 104542 := by
    unfold C
    simp [show (147456 * k + 34847) % 2 ≠ 0 by omega]
    omega
  have h6 : C (442368 * k + 104542) = 221184 * k + 52271 := by
    unfold C
    simp [show (442368 * k + 104542) % 2 = 0 by omega]
    omega
  have h7 : C (221184 * k + 52271) = 663552 * k + 156814 := by
    unfold C
    simp [show (221184 * k + 52271) % 2 ≠ 0 by omega]
    omega
  have h8 : C (663552 * k + 156814) = 331776 * k + 78407 := by
    unfold C
    simp [show (663552 * k + 156814) % 2 = 0 by omega]
    omega
  have h9 : C (331776 * k + 78407) = 995328 * k + 235222 := by
    unfold C
    simp [show (331776 * k + 78407) % 2 ≠ 0 by omega]
    omega
  have h10 : C (995328 * k + 235222) = 497664 * k + 117611 := by
    unfold C
    simp [show (995328 * k + 235222) % 2 = 0 by omega]
    omega
  have h11 : C (497664 * k + 117611) = 1492992 * k + 352834 := by
    unfold C
    simp [show (497664 * k + 117611) % 2 ≠ 0 by omega]
    omega
  have h12 : C (1492992 * k + 352834) = 746496 * k + 176417 := by
    unfold C
    simp [show (1492992 * k + 352834) % 2 = 0 by omega]
    omega
  have h13 : C (746496 * k + 176417) = 2239488 * k + 529252 := by
    unfold C
    simp [show (746496 * k + 176417) % 2 ≠ 0 by omega]
    omega
  have h14 : C (2239488 * k + 529252) = 1119744 * k + 264626 := by
    unfold C
    simp [show (2239488 * k + 529252) % 2 = 0 by omega]
    omega
  have h15 : C (1119744 * k + 264626) = 559872 * k + 132313 := by
    unfold C
    simp [show (1119744 * k + 264626) % 2 = 0 by omega]
    omega
  have h16 : C (559872 * k + 132313) = 1679616 * k + 396940 := by
    unfold C
    simp [show (559872 * k + 132313) % 2 ≠ 0 by omega]
    omega
  have h17 : C (1679616 * k + 396940) = 839808 * k + 198470 := by
    unfold C
    simp [show (1679616 * k + 396940) % 2 = 0 by omega]
    omega
  have h18 : C (839808 * k + 198470) = 419904 * k + 99235 := by
    unfold C
    simp [show (839808 * k + 198470) % 2 = 0 by omega]
    omega
  have h19 : C (419904 * k + 99235) = 1259712 * k + 297706 := by
    unfold C
    simp [show (419904 * k + 99235) % 2 ≠ 0 by omega]
    omega
  have h20 : C (1259712 * k + 297706) = 629856 * k + 148853 := by
    unfold C
    simp [show (1259712 * k + 297706) % 2 = 0 by omega]
    omega
  have h21 : C (629856 * k + 148853) = 1889568 * k + 446560 := by
    unfold C
    simp [show (629856 * k + 148853) % 2 ≠ 0 by omega]
    omega
  have h22 : C (1889568 * k + 446560) = 944784 * k + 223280 := by
    unfold C
    simp [show (1889568 * k + 446560) % 2 = 0 by omega]
    omega
  have h23 : C (944784 * k + 223280) = 472392 * k + 111640 := by
    unfold C
    simp [show (944784 * k + 223280) % 2 = 0 by omega]
    omega
  have h24 : C (472392 * k + 111640) = 236196 * k + 55820 := by
    unfold C
    simp [show (472392 * k + 111640) % 2 = 0 by omega]
    omega
  have h25 : C (236196 * k + 55820) = 118098 * k + 27910 := by
    unfold C
    simp [show (236196 * k + 55820) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 27910) = 59049 * k + 13955 := by
    unfold C
    simp [show (118098 * k + 27910) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 15487) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 15487)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_15515 : ∀ k : Nat,
    iterate (65536 * k + 15515) 26 = 59049 * k + 13981 ∧
      59049 * k + 13981 < 65536 * k + 15515 := by
  intro k
  have h1 : C (65536 * k + 15515) = 196608 * k + 46546 := by
    unfold C
    simp [show (65536 * k + 15515) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 46546) = 98304 * k + 23273 := by
    unfold C
    simp [show (196608 * k + 46546) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 23273) = 294912 * k + 69820 := by
    unfold C
    simp [show (98304 * k + 23273) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 69820) = 147456 * k + 34910 := by
    unfold C
    simp [show (294912 * k + 69820) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 34910) = 73728 * k + 17455 := by
    unfold C
    simp [show (147456 * k + 34910) % 2 = 0 by omega]
    omega
  have h6 : C (73728 * k + 17455) = 221184 * k + 52366 := by
    unfold C
    simp [show (73728 * k + 17455) % 2 ≠ 0 by omega]
    omega
  have h7 : C (221184 * k + 52366) = 110592 * k + 26183 := by
    unfold C
    simp [show (221184 * k + 52366) % 2 = 0 by omega]
    omega
  have h8 : C (110592 * k + 26183) = 331776 * k + 78550 := by
    unfold C
    simp [show (110592 * k + 26183) % 2 ≠ 0 by omega]
    omega
  have h9 : C (331776 * k + 78550) = 165888 * k + 39275 := by
    unfold C
    simp [show (331776 * k + 78550) % 2 = 0 by omega]
    omega
  have h10 : C (165888 * k + 39275) = 497664 * k + 117826 := by
    unfold C
    simp [show (165888 * k + 39275) % 2 ≠ 0 by omega]
    omega
  have h11 : C (497664 * k + 117826) = 248832 * k + 58913 := by
    unfold C
    simp [show (497664 * k + 117826) % 2 = 0 by omega]
    omega
  have h12 : C (248832 * k + 58913) = 746496 * k + 176740 := by
    unfold C
    simp [show (248832 * k + 58913) % 2 ≠ 0 by omega]
    omega
  have h13 : C (746496 * k + 176740) = 373248 * k + 88370 := by
    unfold C
    simp [show (746496 * k + 176740) % 2 = 0 by omega]
    omega
  have h14 : C (373248 * k + 88370) = 186624 * k + 44185 := by
    unfold C
    simp [show (373248 * k + 88370) % 2 = 0 by omega]
    omega
  have h15 : C (186624 * k + 44185) = 559872 * k + 132556 := by
    unfold C
    simp [show (186624 * k + 44185) % 2 ≠ 0 by omega]
    omega
  have h16 : C (559872 * k + 132556) = 279936 * k + 66278 := by
    unfold C
    simp [show (559872 * k + 132556) % 2 = 0 by omega]
    omega
  have h17 : C (279936 * k + 66278) = 139968 * k + 33139 := by
    unfold C
    simp [show (279936 * k + 66278) % 2 = 0 by omega]
    omega
  have h18 : C (139968 * k + 33139) = 419904 * k + 99418 := by
    unfold C
    simp [show (139968 * k + 33139) % 2 ≠ 0 by omega]
    omega
  have h19 : C (419904 * k + 99418) = 209952 * k + 49709 := by
    unfold C
    simp [show (419904 * k + 99418) % 2 = 0 by omega]
    omega
  have h20 : C (209952 * k + 49709) = 629856 * k + 149128 := by
    unfold C
    simp [show (209952 * k + 49709) % 2 ≠ 0 by omega]
    omega
  have h21 : C (629856 * k + 149128) = 314928 * k + 74564 := by
    unfold C
    simp [show (629856 * k + 149128) % 2 = 0 by omega]
    omega
  have h22 : C (314928 * k + 74564) = 157464 * k + 37282 := by
    unfold C
    simp [show (314928 * k + 74564) % 2 = 0 by omega]
    omega
  have h23 : C (157464 * k + 37282) = 78732 * k + 18641 := by
    unfold C
    simp [show (157464 * k + 37282) % 2 = 0 by omega]
    omega
  have h24 : C (78732 * k + 18641) = 236196 * k + 55924 := by
    unfold C
    simp [show (78732 * k + 18641) % 2 ≠ 0 by omega]
    omega
  have h25 : C (236196 * k + 55924) = 118098 * k + 27962 := by
    unfold C
    simp [show (236196 * k + 55924) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 27962) = 59049 * k + 13981 := by
    unfold C
    simp [show (118098 * k + 27962) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 15515) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 15515)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_15599 : ∀ k : Nat,
    iterate (65536 * k + 15599) 26 = 59049 * k + 14056 ∧
      59049 * k + 14056 < 65536 * k + 15599 := by
  intro k
  have h1 : C (65536 * k + 15599) = 196608 * k + 46798 := by
    unfold C
    simp [show (65536 * k + 15599) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 46798) = 98304 * k + 23399 := by
    unfold C
    simp [show (196608 * k + 46798) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 23399) = 294912 * k + 70198 := by
    unfold C
    simp [show (98304 * k + 23399) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 70198) = 147456 * k + 35099 := by
    unfold C
    simp [show (294912 * k + 70198) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 35099) = 442368 * k + 105298 := by
    unfold C
    simp [show (147456 * k + 35099) % 2 ≠ 0 by omega]
    omega
  have h6 : C (442368 * k + 105298) = 221184 * k + 52649 := by
    unfold C
    simp [show (442368 * k + 105298) % 2 = 0 by omega]
    omega
  have h7 : C (221184 * k + 52649) = 663552 * k + 157948 := by
    unfold C
    simp [show (221184 * k + 52649) % 2 ≠ 0 by omega]
    omega
  have h8 : C (663552 * k + 157948) = 331776 * k + 78974 := by
    unfold C
    simp [show (663552 * k + 157948) % 2 = 0 by omega]
    omega
  have h9 : C (331776 * k + 78974) = 165888 * k + 39487 := by
    unfold C
    simp [show (331776 * k + 78974) % 2 = 0 by omega]
    omega
  have h10 : C (165888 * k + 39487) = 497664 * k + 118462 := by
    unfold C
    simp [show (165888 * k + 39487) % 2 ≠ 0 by omega]
    omega
  have h11 : C (497664 * k + 118462) = 248832 * k + 59231 := by
    unfold C
    simp [show (497664 * k + 118462) % 2 = 0 by omega]
    omega
  have h12 : C (248832 * k + 59231) = 746496 * k + 177694 := by
    unfold C
    simp [show (248832 * k + 59231) % 2 ≠ 0 by omega]
    omega
  have h13 : C (746496 * k + 177694) = 373248 * k + 88847 := by
    unfold C
    simp [show (746496 * k + 177694) % 2 = 0 by omega]
    omega
  have h14 : C (373248 * k + 88847) = 1119744 * k + 266542 := by
    unfold C
    simp [show (373248 * k + 88847) % 2 ≠ 0 by omega]
    omega
  have h15 : C (1119744 * k + 266542) = 559872 * k + 133271 := by
    unfold C
    simp [show (1119744 * k + 266542) % 2 = 0 by omega]
    omega
  have h16 : C (559872 * k + 133271) = 1679616 * k + 399814 := by
    unfold C
    simp [show (559872 * k + 133271) % 2 ≠ 0 by omega]
    omega
  have h17 : C (1679616 * k + 399814) = 839808 * k + 199907 := by
    unfold C
    simp [show (1679616 * k + 399814) % 2 = 0 by omega]
    omega
  have h18 : C (839808 * k + 199907) = 2519424 * k + 599722 := by
    unfold C
    simp [show (839808 * k + 199907) % 2 ≠ 0 by omega]
    omega
  have h19 : C (2519424 * k + 599722) = 1259712 * k + 299861 := by
    unfold C
    simp [show (2519424 * k + 599722) % 2 = 0 by omega]
    omega
  have h20 : C (1259712 * k + 299861) = 3779136 * k + 899584 := by
    unfold C
    simp [show (1259712 * k + 299861) % 2 ≠ 0 by omega]
    omega
  have h21 : C (3779136 * k + 899584) = 1889568 * k + 449792 := by
    unfold C
    simp [show (3779136 * k + 899584) % 2 = 0 by omega]
    omega
  have h22 : C (1889568 * k + 449792) = 944784 * k + 224896 := by
    unfold C
    simp [show (1889568 * k + 449792) % 2 = 0 by omega]
    omega
  have h23 : C (944784 * k + 224896) = 472392 * k + 112448 := by
    unfold C
    simp [show (944784 * k + 224896) % 2 = 0 by omega]
    omega
  have h24 : C (472392 * k + 112448) = 236196 * k + 56224 := by
    unfold C
    simp [show (472392 * k + 112448) % 2 = 0 by omega]
    omega
  have h25 : C (236196 * k + 56224) = 118098 * k + 28112 := by
    unfold C
    simp [show (236196 * k + 56224) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 28112) = 59049 * k + 14056 := by
    unfold C
    simp [show (118098 * k + 28112) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 15599) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 15599)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_15643 : ∀ k : Nat,
    iterate (65536 * k + 15643) 26 = 59049 * k + 14096 ∧
      59049 * k + 14096 < 65536 * k + 15643 := by
  intro k
  have h1 : C (65536 * k + 15643) = 196608 * k + 46930 := by
    unfold C
    simp [show (65536 * k + 15643) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 46930) = 98304 * k + 23465 := by
    unfold C
    simp [show (196608 * k + 46930) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 23465) = 294912 * k + 70396 := by
    unfold C
    simp [show (98304 * k + 23465) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 70396) = 147456 * k + 35198 := by
    unfold C
    simp [show (294912 * k + 70396) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 35198) = 73728 * k + 17599 := by
    unfold C
    simp [show (147456 * k + 35198) % 2 = 0 by omega]
    omega
  have h6 : C (73728 * k + 17599) = 221184 * k + 52798 := by
    unfold C
    simp [show (73728 * k + 17599) % 2 ≠ 0 by omega]
    omega
  have h7 : C (221184 * k + 52798) = 110592 * k + 26399 := by
    unfold C
    simp [show (221184 * k + 52798) % 2 = 0 by omega]
    omega
  have h8 : C (110592 * k + 26399) = 331776 * k + 79198 := by
    unfold C
    simp [show (110592 * k + 26399) % 2 ≠ 0 by omega]
    omega
  have h9 : C (331776 * k + 79198) = 165888 * k + 39599 := by
    unfold C
    simp [show (331776 * k + 79198) % 2 = 0 by omega]
    omega
  have h10 : C (165888 * k + 39599) = 497664 * k + 118798 := by
    unfold C
    simp [show (165888 * k + 39599) % 2 ≠ 0 by omega]
    omega
  have h11 : C (497664 * k + 118798) = 248832 * k + 59399 := by
    unfold C
    simp [show (497664 * k + 118798) % 2 = 0 by omega]
    omega
  have h12 : C (248832 * k + 59399) = 746496 * k + 178198 := by
    unfold C
    simp [show (248832 * k + 59399) % 2 ≠ 0 by omega]
    omega
  have h13 : C (746496 * k + 178198) = 373248 * k + 89099 := by
    unfold C
    simp [show (746496 * k + 178198) % 2 = 0 by omega]
    omega
  have h14 : C (373248 * k + 89099) = 1119744 * k + 267298 := by
    unfold C
    simp [show (373248 * k + 89099) % 2 ≠ 0 by omega]
    omega
  have h15 : C (1119744 * k + 267298) = 559872 * k + 133649 := by
    unfold C
    simp [show (1119744 * k + 267298) % 2 = 0 by omega]
    omega
  have h16 : C (559872 * k + 133649) = 1679616 * k + 400948 := by
    unfold C
    simp [show (559872 * k + 133649) % 2 ≠ 0 by omega]
    omega
  have h17 : C (1679616 * k + 400948) = 839808 * k + 200474 := by
    unfold C
    simp [show (1679616 * k + 400948) % 2 = 0 by omega]
    omega
  have h18 : C (839808 * k + 200474) = 419904 * k + 100237 := by
    unfold C
    simp [show (839808 * k + 200474) % 2 = 0 by omega]
    omega
  have h19 : C (419904 * k + 100237) = 1259712 * k + 300712 := by
    unfold C
    simp [show (419904 * k + 100237) % 2 ≠ 0 by omega]
    omega
  have h20 : C (1259712 * k + 300712) = 629856 * k + 150356 := by
    unfold C
    simp [show (1259712 * k + 300712) % 2 = 0 by omega]
    omega
  have h21 : C (629856 * k + 150356) = 314928 * k + 75178 := by
    unfold C
    simp [show (629856 * k + 150356) % 2 = 0 by omega]
    omega
  have h22 : C (314928 * k + 75178) = 157464 * k + 37589 := by
    unfold C
    simp [show (314928 * k + 75178) % 2 = 0 by omega]
    omega
  have h23 : C (157464 * k + 37589) = 472392 * k + 112768 := by
    unfold C
    simp [show (157464 * k + 37589) % 2 ≠ 0 by omega]
    omega
  have h24 : C (472392 * k + 112768) = 236196 * k + 56384 := by
    unfold C
    simp [show (472392 * k + 112768) % 2 = 0 by omega]
    omega
  have h25 : C (236196 * k + 56384) = 118098 * k + 28192 := by
    unfold C
    simp [show (236196 * k + 56384) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 28192) = 59049 * k + 14096 := by
    unfold C
    simp [show (118098 * k + 28192) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 15643) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 15643)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_15743 : ∀ k : Nat,
    iterate (65536 * k + 15743) 26 = 59049 * k + 14186 ∧
      59049 * k + 14186 < 65536 * k + 15743 := by
  intro k
  have h1 : C (65536 * k + 15743) = 196608 * k + 47230 := by
    unfold C
    simp [show (65536 * k + 15743) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 47230) = 98304 * k + 23615 := by
    unfold C
    simp [show (196608 * k + 47230) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 23615) = 294912 * k + 70846 := by
    unfold C
    simp [show (98304 * k + 23615) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 70846) = 147456 * k + 35423 := by
    unfold C
    simp [show (294912 * k + 70846) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 35423) = 442368 * k + 106270 := by
    unfold C
    simp [show (147456 * k + 35423) % 2 ≠ 0 by omega]
    omega
  have h6 : C (442368 * k + 106270) = 221184 * k + 53135 := by
    unfold C
    simp [show (442368 * k + 106270) % 2 = 0 by omega]
    omega
  have h7 : C (221184 * k + 53135) = 663552 * k + 159406 := by
    unfold C
    simp [show (221184 * k + 53135) % 2 ≠ 0 by omega]
    omega
  have h8 : C (663552 * k + 159406) = 331776 * k + 79703 := by
    unfold C
    simp [show (663552 * k + 159406) % 2 = 0 by omega]
    omega
  have h9 : C (331776 * k + 79703) = 995328 * k + 239110 := by
    unfold C
    simp [show (331776 * k + 79703) % 2 ≠ 0 by omega]
    omega
  have h10 : C (995328 * k + 239110) = 497664 * k + 119555 := by
    unfold C
    simp [show (995328 * k + 239110) % 2 = 0 by omega]
    omega
  have h11 : C (497664 * k + 119555) = 1492992 * k + 358666 := by
    unfold C
    simp [show (497664 * k + 119555) % 2 ≠ 0 by omega]
    omega
  have h12 : C (1492992 * k + 358666) = 746496 * k + 179333 := by
    unfold C
    simp [show (1492992 * k + 358666) % 2 = 0 by omega]
    omega
  have h13 : C (746496 * k + 179333) = 2239488 * k + 538000 := by
    unfold C
    simp [show (746496 * k + 179333) % 2 ≠ 0 by omega]
    omega
  have h14 : C (2239488 * k + 538000) = 1119744 * k + 269000 := by
    unfold C
    simp [show (2239488 * k + 538000) % 2 = 0 by omega]
    omega
  have h15 : C (1119744 * k + 269000) = 559872 * k + 134500 := by
    unfold C
    simp [show (1119744 * k + 269000) % 2 = 0 by omega]
    omega
  have h16 : C (559872 * k + 134500) = 279936 * k + 67250 := by
    unfold C
    simp [show (559872 * k + 134500) % 2 = 0 by omega]
    omega
  have h17 : C (279936 * k + 67250) = 139968 * k + 33625 := by
    unfold C
    simp [show (279936 * k + 67250) % 2 = 0 by omega]
    omega
  have h18 : C (139968 * k + 33625) = 419904 * k + 100876 := by
    unfold C
    simp [show (139968 * k + 33625) % 2 ≠ 0 by omega]
    omega
  have h19 : C (419904 * k + 100876) = 209952 * k + 50438 := by
    unfold C
    simp [show (419904 * k + 100876) % 2 = 0 by omega]
    omega
  have h20 : C (209952 * k + 50438) = 104976 * k + 25219 := by
    unfold C
    simp [show (209952 * k + 50438) % 2 = 0 by omega]
    omega
  have h21 : C (104976 * k + 25219) = 314928 * k + 75658 := by
    unfold C
    simp [show (104976 * k + 25219) % 2 ≠ 0 by omega]
    omega
  have h22 : C (314928 * k + 75658) = 157464 * k + 37829 := by
    unfold C
    simp [show (314928 * k + 75658) % 2 = 0 by omega]
    omega
  have h23 : C (157464 * k + 37829) = 472392 * k + 113488 := by
    unfold C
    simp [show (157464 * k + 37829) % 2 ≠ 0 by omega]
    omega
  have h24 : C (472392 * k + 113488) = 236196 * k + 56744 := by
    unfold C
    simp [show (472392 * k + 113488) % 2 = 0 by omega]
    omega
  have h25 : C (236196 * k + 56744) = 118098 * k + 28372 := by
    unfold C
    simp [show (236196 * k + 56744) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 28372) = 59049 * k + 14186 := by
    unfold C
    simp [show (118098 * k + 28372) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 15743) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 15743)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_15771 : ∀ k : Nat,
    iterate (65536 * k + 15771) 26 = 59049 * k + 14212 ∧
      59049 * k + 14212 < 65536 * k + 15771 := by
  intro k
  have h1 : C (65536 * k + 15771) = 196608 * k + 47314 := by
    unfold C
    simp [show (65536 * k + 15771) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 47314) = 98304 * k + 23657 := by
    unfold C
    simp [show (196608 * k + 47314) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 23657) = 294912 * k + 70972 := by
    unfold C
    simp [show (98304 * k + 23657) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 70972) = 147456 * k + 35486 := by
    unfold C
    simp [show (294912 * k + 70972) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 35486) = 73728 * k + 17743 := by
    unfold C
    simp [show (147456 * k + 35486) % 2 = 0 by omega]
    omega
  have h6 : C (73728 * k + 17743) = 221184 * k + 53230 := by
    unfold C
    simp [show (73728 * k + 17743) % 2 ≠ 0 by omega]
    omega
  have h7 : C (221184 * k + 53230) = 110592 * k + 26615 := by
    unfold C
    simp [show (221184 * k + 53230) % 2 = 0 by omega]
    omega
  have h8 : C (110592 * k + 26615) = 331776 * k + 79846 := by
    unfold C
    simp [show (110592 * k + 26615) % 2 ≠ 0 by omega]
    omega
  have h9 : C (331776 * k + 79846) = 165888 * k + 39923 := by
    unfold C
    simp [show (331776 * k + 79846) % 2 = 0 by omega]
    omega
  have h10 : C (165888 * k + 39923) = 497664 * k + 119770 := by
    unfold C
    simp [show (165888 * k + 39923) % 2 ≠ 0 by omega]
    omega
  have h11 : C (497664 * k + 119770) = 248832 * k + 59885 := by
    unfold C
    simp [show (497664 * k + 119770) % 2 = 0 by omega]
    omega
  have h12 : C (248832 * k + 59885) = 746496 * k + 179656 := by
    unfold C
    simp [show (248832 * k + 59885) % 2 ≠ 0 by omega]
    omega
  have h13 : C (746496 * k + 179656) = 373248 * k + 89828 := by
    unfold C
    simp [show (746496 * k + 179656) % 2 = 0 by omega]
    omega
  have h14 : C (373248 * k + 89828) = 186624 * k + 44914 := by
    unfold C
    simp [show (373248 * k + 89828) % 2 = 0 by omega]
    omega
  have h15 : C (186624 * k + 44914) = 93312 * k + 22457 := by
    unfold C
    simp [show (186624 * k + 44914) % 2 = 0 by omega]
    omega
  have h16 : C (93312 * k + 22457) = 279936 * k + 67372 := by
    unfold C
    simp [show (93312 * k + 22457) % 2 ≠ 0 by omega]
    omega
  have h17 : C (279936 * k + 67372) = 139968 * k + 33686 := by
    unfold C
    simp [show (279936 * k + 67372) % 2 = 0 by omega]
    omega
  have h18 : C (139968 * k + 33686) = 69984 * k + 16843 := by
    unfold C
    simp [show (139968 * k + 33686) % 2 = 0 by omega]
    omega
  have h19 : C (69984 * k + 16843) = 209952 * k + 50530 := by
    unfold C
    simp [show (69984 * k + 16843) % 2 ≠ 0 by omega]
    omega
  have h20 : C (209952 * k + 50530) = 104976 * k + 25265 := by
    unfold C
    simp [show (209952 * k + 50530) % 2 = 0 by omega]
    omega
  have h21 : C (104976 * k + 25265) = 314928 * k + 75796 := by
    unfold C
    simp [show (104976 * k + 25265) % 2 ≠ 0 by omega]
    omega
  have h22 : C (314928 * k + 75796) = 157464 * k + 37898 := by
    unfold C
    simp [show (314928 * k + 75796) % 2 = 0 by omega]
    omega
  have h23 : C (157464 * k + 37898) = 78732 * k + 18949 := by
    unfold C
    simp [show (157464 * k + 37898) % 2 = 0 by omega]
    omega
  have h24 : C (78732 * k + 18949) = 236196 * k + 56848 := by
    unfold C
    simp [show (78732 * k + 18949) % 2 ≠ 0 by omega]
    omega
  have h25 : C (236196 * k + 56848) = 118098 * k + 28424 := by
    unfold C
    simp [show (236196 * k + 56848) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 28424) = 59049 * k + 14212 := by
    unfold C
    simp [show (118098 * k + 28424) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 15771) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 15771)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_15855 : ∀ k : Nat,
    iterate (65536 * k + 15855) 26 = 59049 * k + 14287 ∧
      59049 * k + 14287 < 65536 * k + 15855 := by
  intro k
  have h1 : C (65536 * k + 15855) = 196608 * k + 47566 := by
    unfold C
    simp [show (65536 * k + 15855) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 47566) = 98304 * k + 23783 := by
    unfold C
    simp [show (196608 * k + 47566) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 23783) = 294912 * k + 71350 := by
    unfold C
    simp [show (98304 * k + 23783) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 71350) = 147456 * k + 35675 := by
    unfold C
    simp [show (294912 * k + 71350) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 35675) = 442368 * k + 107026 := by
    unfold C
    simp [show (147456 * k + 35675) % 2 ≠ 0 by omega]
    omega
  have h6 : C (442368 * k + 107026) = 221184 * k + 53513 := by
    unfold C
    simp [show (442368 * k + 107026) % 2 = 0 by omega]
    omega
  have h7 : C (221184 * k + 53513) = 663552 * k + 160540 := by
    unfold C
    simp [show (221184 * k + 53513) % 2 ≠ 0 by omega]
    omega
  have h8 : C (663552 * k + 160540) = 331776 * k + 80270 := by
    unfold C
    simp [show (663552 * k + 160540) % 2 = 0 by omega]
    omega
  have h9 : C (331776 * k + 80270) = 165888 * k + 40135 := by
    unfold C
    simp [show (331776 * k + 80270) % 2 = 0 by omega]
    omega
  have h10 : C (165888 * k + 40135) = 497664 * k + 120406 := by
    unfold C
    simp [show (165888 * k + 40135) % 2 ≠ 0 by omega]
    omega
  have h11 : C (497664 * k + 120406) = 248832 * k + 60203 := by
    unfold C
    simp [show (497664 * k + 120406) % 2 = 0 by omega]
    omega
  have h12 : C (248832 * k + 60203) = 746496 * k + 180610 := by
    unfold C
    simp [show (248832 * k + 60203) % 2 ≠ 0 by omega]
    omega
  have h13 : C (746496 * k + 180610) = 373248 * k + 90305 := by
    unfold C
    simp [show (746496 * k + 180610) % 2 = 0 by omega]
    omega
  have h14 : C (373248 * k + 90305) = 1119744 * k + 270916 := by
    unfold C
    simp [show (373248 * k + 90305) % 2 ≠ 0 by omega]
    omega
  have h15 : C (1119744 * k + 270916) = 559872 * k + 135458 := by
    unfold C
    simp [show (1119744 * k + 270916) % 2 = 0 by omega]
    omega
  have h16 : C (559872 * k + 135458) = 279936 * k + 67729 := by
    unfold C
    simp [show (559872 * k + 135458) % 2 = 0 by omega]
    omega
  have h17 : C (279936 * k + 67729) = 839808 * k + 203188 := by
    unfold C
    simp [show (279936 * k + 67729) % 2 ≠ 0 by omega]
    omega
  have h18 : C (839808 * k + 203188) = 419904 * k + 101594 := by
    unfold C
    simp [show (839808 * k + 203188) % 2 = 0 by omega]
    omega
  have h19 : C (419904 * k + 101594) = 209952 * k + 50797 := by
    unfold C
    simp [show (419904 * k + 101594) % 2 = 0 by omega]
    omega
  have h20 : C (209952 * k + 50797) = 629856 * k + 152392 := by
    unfold C
    simp [show (209952 * k + 50797) % 2 ≠ 0 by omega]
    omega
  have h21 : C (629856 * k + 152392) = 314928 * k + 76196 := by
    unfold C
    simp [show (629856 * k + 152392) % 2 = 0 by omega]
    omega
  have h22 : C (314928 * k + 76196) = 157464 * k + 38098 := by
    unfold C
    simp [show (314928 * k + 76196) % 2 = 0 by omega]
    omega
  have h23 : C (157464 * k + 38098) = 78732 * k + 19049 := by
    unfold C
    simp [show (157464 * k + 38098) % 2 = 0 by omega]
    omega
  have h24 : C (78732 * k + 19049) = 236196 * k + 57148 := by
    unfold C
    simp [show (78732 * k + 19049) % 2 ≠ 0 by omega]
    omega
  have h25 : C (236196 * k + 57148) = 118098 * k + 28574 := by
    unfold C
    simp [show (236196 * k + 57148) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 28574) = 59049 * k + 14287 := by
    unfold C
    simp [show (118098 * k + 28574) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 15855) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 15855)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_16191 : ∀ k : Nat,
    iterate (65536 * k + 16191) 26 = 59049 * k + 14590 ∧
      59049 * k + 14590 < 65536 * k + 16191 := by
  intro k
  have h1 : C (65536 * k + 16191) = 196608 * k + 48574 := by
    unfold C
    simp [show (65536 * k + 16191) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 48574) = 98304 * k + 24287 := by
    unfold C
    simp [show (196608 * k + 48574) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 24287) = 294912 * k + 72862 := by
    unfold C
    simp [show (98304 * k + 24287) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 72862) = 147456 * k + 36431 := by
    unfold C
    simp [show (294912 * k + 72862) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 36431) = 442368 * k + 109294 := by
    unfold C
    simp [show (147456 * k + 36431) % 2 ≠ 0 by omega]
    omega
  have h6 : C (442368 * k + 109294) = 221184 * k + 54647 := by
    unfold C
    simp [show (442368 * k + 109294) % 2 = 0 by omega]
    omega
  have h7 : C (221184 * k + 54647) = 663552 * k + 163942 := by
    unfold C
    simp [show (221184 * k + 54647) % 2 ≠ 0 by omega]
    omega
  have h8 : C (663552 * k + 163942) = 331776 * k + 81971 := by
    unfold C
    simp [show (663552 * k + 163942) % 2 = 0 by omega]
    omega
  have h9 : C (331776 * k + 81971) = 995328 * k + 245914 := by
    unfold C
    simp [show (331776 * k + 81971) % 2 ≠ 0 by omega]
    omega
  have h10 : C (995328 * k + 245914) = 497664 * k + 122957 := by
    unfold C
    simp [show (995328 * k + 245914) % 2 = 0 by omega]
    omega
  have h11 : C (497664 * k + 122957) = 1492992 * k + 368872 := by
    unfold C
    simp [show (497664 * k + 122957) % 2 ≠ 0 by omega]
    omega
  have h12 : C (1492992 * k + 368872) = 746496 * k + 184436 := by
    unfold C
    simp [show (1492992 * k + 368872) % 2 = 0 by omega]
    omega
  have h13 : C (746496 * k + 184436) = 373248 * k + 92218 := by
    unfold C
    simp [show (746496 * k + 184436) % 2 = 0 by omega]
    omega
  have h14 : C (373248 * k + 92218) = 186624 * k + 46109 := by
    unfold C
    simp [show (373248 * k + 92218) % 2 = 0 by omega]
    omega
  have h15 : C (186624 * k + 46109) = 559872 * k + 138328 := by
    unfold C
    simp [show (186624 * k + 46109) % 2 ≠ 0 by omega]
    omega
  have h16 : C (559872 * k + 138328) = 279936 * k + 69164 := by
    unfold C
    simp [show (559872 * k + 138328) % 2 = 0 by omega]
    omega
  have h17 : C (279936 * k + 69164) = 139968 * k + 34582 := by
    unfold C
    simp [show (279936 * k + 69164) % 2 = 0 by omega]
    omega
  have h18 : C (139968 * k + 34582) = 69984 * k + 17291 := by
    unfold C
    simp [show (139968 * k + 34582) % 2 = 0 by omega]
    omega
  have h19 : C (69984 * k + 17291) = 209952 * k + 51874 := by
    unfold C
    simp [show (69984 * k + 17291) % 2 ≠ 0 by omega]
    omega
  have h20 : C (209952 * k + 51874) = 104976 * k + 25937 := by
    unfold C
    simp [show (209952 * k + 51874) % 2 = 0 by omega]
    omega
  have h21 : C (104976 * k + 25937) = 314928 * k + 77812 := by
    unfold C
    simp [show (104976 * k + 25937) % 2 ≠ 0 by omega]
    omega
  have h22 : C (314928 * k + 77812) = 157464 * k + 38906 := by
    unfold C
    simp [show (314928 * k + 77812) % 2 = 0 by omega]
    omega
  have h23 : C (157464 * k + 38906) = 78732 * k + 19453 := by
    unfold C
    simp [show (157464 * k + 38906) % 2 = 0 by omega]
    omega
  have h24 : C (78732 * k + 19453) = 236196 * k + 58360 := by
    unfold C
    simp [show (78732 * k + 19453) % 2 ≠ 0 by omega]
    omega
  have h25 : C (236196 * k + 58360) = 118098 * k + 29180 := by
    unfold C
    simp [show (236196 * k + 58360) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 29180) = 59049 * k + 14590 := by
    unfold C
    simp [show (118098 * k + 29180) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 16191) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 16191)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_16411 : ∀ k : Nat,
    iterate (65536 * k + 16411) 26 = 59049 * k + 14788 ∧
      59049 * k + 14788 < 65536 * k + 16411 := by
  intro k
  have h1 : C (65536 * k + 16411) = 196608 * k + 49234 := by
    unfold C
    simp [show (65536 * k + 16411) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 49234) = 98304 * k + 24617 := by
    unfold C
    simp [show (196608 * k + 49234) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 24617) = 294912 * k + 73852 := by
    unfold C
    simp [show (98304 * k + 24617) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 73852) = 147456 * k + 36926 := by
    unfold C
    simp [show (294912 * k + 73852) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 36926) = 73728 * k + 18463 := by
    unfold C
    simp [show (147456 * k + 36926) % 2 = 0 by omega]
    omega
  have h6 : C (73728 * k + 18463) = 221184 * k + 55390 := by
    unfold C
    simp [show (73728 * k + 18463) % 2 ≠ 0 by omega]
    omega
  have h7 : C (221184 * k + 55390) = 110592 * k + 27695 := by
    unfold C
    simp [show (221184 * k + 55390) % 2 = 0 by omega]
    omega
  have h8 : C (110592 * k + 27695) = 331776 * k + 83086 := by
    unfold C
    simp [show (110592 * k + 27695) % 2 ≠ 0 by omega]
    omega
  have h9 : C (331776 * k + 83086) = 165888 * k + 41543 := by
    unfold C
    simp [show (331776 * k + 83086) % 2 = 0 by omega]
    omega
  have h10 : C (165888 * k + 41543) = 497664 * k + 124630 := by
    unfold C
    simp [show (165888 * k + 41543) % 2 ≠ 0 by omega]
    omega
  have h11 : C (497664 * k + 124630) = 248832 * k + 62315 := by
    unfold C
    simp [show (497664 * k + 124630) % 2 = 0 by omega]
    omega
  have h12 : C (248832 * k + 62315) = 746496 * k + 186946 := by
    unfold C
    simp [show (248832 * k + 62315) % 2 ≠ 0 by omega]
    omega
  have h13 : C (746496 * k + 186946) = 373248 * k + 93473 := by
    unfold C
    simp [show (746496 * k + 186946) % 2 = 0 by omega]
    omega
  have h14 : C (373248 * k + 93473) = 1119744 * k + 280420 := by
    unfold C
    simp [show (373248 * k + 93473) % 2 ≠ 0 by omega]
    omega
  have h15 : C (1119744 * k + 280420) = 559872 * k + 140210 := by
    unfold C
    simp [show (1119744 * k + 280420) % 2 = 0 by omega]
    omega
  have h16 : C (559872 * k + 140210) = 279936 * k + 70105 := by
    unfold C
    simp [show (559872 * k + 140210) % 2 = 0 by omega]
    omega
  have h17 : C (279936 * k + 70105) = 839808 * k + 210316 := by
    unfold C
    simp [show (279936 * k + 70105) % 2 ≠ 0 by omega]
    omega
  have h18 : C (839808 * k + 210316) = 419904 * k + 105158 := by
    unfold C
    simp [show (839808 * k + 210316) % 2 = 0 by omega]
    omega
  have h19 : C (419904 * k + 105158) = 209952 * k + 52579 := by
    unfold C
    simp [show (419904 * k + 105158) % 2 = 0 by omega]
    omega
  have h20 : C (209952 * k + 52579) = 629856 * k + 157738 := by
    unfold C
    simp [show (209952 * k + 52579) % 2 ≠ 0 by omega]
    omega
  have h21 : C (629856 * k + 157738) = 314928 * k + 78869 := by
    unfold C
    simp [show (629856 * k + 157738) % 2 = 0 by omega]
    omega
  have h22 : C (314928 * k + 78869) = 944784 * k + 236608 := by
    unfold C
    simp [show (314928 * k + 78869) % 2 ≠ 0 by omega]
    omega
  have h23 : C (944784 * k + 236608) = 472392 * k + 118304 := by
    unfold C
    simp [show (944784 * k + 236608) % 2 = 0 by omega]
    omega
  have h24 : C (472392 * k + 118304) = 236196 * k + 59152 := by
    unfold C
    simp [show (472392 * k + 118304) % 2 = 0 by omega]
    omega
  have h25 : C (236196 * k + 59152) = 118098 * k + 29576 := by
    unfold C
    simp [show (236196 * k + 59152) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 29576) = 59049 * k + 14788 := by
    unfold C
    simp [show (118098 * k + 29576) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 16411) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 16411)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_16431 : ∀ k : Nat,
    iterate (65536 * k + 16431) 26 = 59049 * k + 14806 ∧
      59049 * k + 14806 < 65536 * k + 16431 := by
  intro k
  have h1 : C (65536 * k + 16431) = 196608 * k + 49294 := by
    unfold C
    simp [show (65536 * k + 16431) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 49294) = 98304 * k + 24647 := by
    unfold C
    simp [show (196608 * k + 49294) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 24647) = 294912 * k + 73942 := by
    unfold C
    simp [show (98304 * k + 24647) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 73942) = 147456 * k + 36971 := by
    unfold C
    simp [show (294912 * k + 73942) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 36971) = 442368 * k + 110914 := by
    unfold C
    simp [show (147456 * k + 36971) % 2 ≠ 0 by omega]
    omega
  have h6 : C (442368 * k + 110914) = 221184 * k + 55457 := by
    unfold C
    simp [show (442368 * k + 110914) % 2 = 0 by omega]
    omega
  have h7 : C (221184 * k + 55457) = 663552 * k + 166372 := by
    unfold C
    simp [show (221184 * k + 55457) % 2 ≠ 0 by omega]
    omega
  have h8 : C (663552 * k + 166372) = 331776 * k + 83186 := by
    unfold C
    simp [show (663552 * k + 166372) % 2 = 0 by omega]
    omega
  have h9 : C (331776 * k + 83186) = 165888 * k + 41593 := by
    unfold C
    simp [show (331776 * k + 83186) % 2 = 0 by omega]
    omega
  have h10 : C (165888 * k + 41593) = 497664 * k + 124780 := by
    unfold C
    simp [show (165888 * k + 41593) % 2 ≠ 0 by omega]
    omega
  have h11 : C (497664 * k + 124780) = 248832 * k + 62390 := by
    unfold C
    simp [show (497664 * k + 124780) % 2 = 0 by omega]
    omega
  have h12 : C (248832 * k + 62390) = 124416 * k + 31195 := by
    unfold C
    simp [show (248832 * k + 62390) % 2 = 0 by omega]
    omega
  have h13 : C (124416 * k + 31195) = 373248 * k + 93586 := by
    unfold C
    simp [show (124416 * k + 31195) % 2 ≠ 0 by omega]
    omega
  have h14 : C (373248 * k + 93586) = 186624 * k + 46793 := by
    unfold C
    simp [show (373248 * k + 93586) % 2 = 0 by omega]
    omega
  have h15 : C (186624 * k + 46793) = 559872 * k + 140380 := by
    unfold C
    simp [show (186624 * k + 46793) % 2 ≠ 0 by omega]
    omega
  have h16 : C (559872 * k + 140380) = 279936 * k + 70190 := by
    unfold C
    simp [show (559872 * k + 140380) % 2 = 0 by omega]
    omega
  have h17 : C (279936 * k + 70190) = 139968 * k + 35095 := by
    unfold C
    simp [show (279936 * k + 70190) % 2 = 0 by omega]
    omega
  have h18 : C (139968 * k + 35095) = 419904 * k + 105286 := by
    unfold C
    simp [show (139968 * k + 35095) % 2 ≠ 0 by omega]
    omega
  have h19 : C (419904 * k + 105286) = 209952 * k + 52643 := by
    unfold C
    simp [show (419904 * k + 105286) % 2 = 0 by omega]
    omega
  have h20 : C (209952 * k + 52643) = 629856 * k + 157930 := by
    unfold C
    simp [show (209952 * k + 52643) % 2 ≠ 0 by omega]
    omega
  have h21 : C (629856 * k + 157930) = 314928 * k + 78965 := by
    unfold C
    simp [show (629856 * k + 157930) % 2 = 0 by omega]
    omega
  have h22 : C (314928 * k + 78965) = 944784 * k + 236896 := by
    unfold C
    simp [show (314928 * k + 78965) % 2 ≠ 0 by omega]
    omega
  have h23 : C (944784 * k + 236896) = 472392 * k + 118448 := by
    unfold C
    simp [show (944784 * k + 236896) % 2 = 0 by omega]
    omega
  have h24 : C (472392 * k + 118448) = 236196 * k + 59224 := by
    unfold C
    simp [show (472392 * k + 118448) % 2 = 0 by omega]
    omega
  have h25 : C (236196 * k + 59224) = 118098 * k + 29612 := by
    unfold C
    simp [show (236196 * k + 59224) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 29612) = 59049 * k + 14806 := by
    unfold C
    simp [show (118098 * k + 29612) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 16431) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 16431)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_16455 : ∀ k : Nat,
    iterate (65536 * k + 16455) 26 = 59049 * k + 14828 ∧
      59049 * k + 14828 < 65536 * k + 16455 := by
  intro k
  have h1 : C (65536 * k + 16455) = 196608 * k + 49366 := by
    unfold C
    simp [show (65536 * k + 16455) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 49366) = 98304 * k + 24683 := by
    unfold C
    simp [show (196608 * k + 49366) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 24683) = 294912 * k + 74050 := by
    unfold C
    simp [show (98304 * k + 24683) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 74050) = 147456 * k + 37025 := by
    unfold C
    simp [show (294912 * k + 74050) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 37025) = 442368 * k + 111076 := by
    unfold C
    simp [show (147456 * k + 37025) % 2 ≠ 0 by omega]
    omega
  have h6 : C (442368 * k + 111076) = 221184 * k + 55538 := by
    unfold C
    simp [show (442368 * k + 111076) % 2 = 0 by omega]
    omega
  have h7 : C (221184 * k + 55538) = 110592 * k + 27769 := by
    unfold C
    simp [show (221184 * k + 55538) % 2 = 0 by omega]
    omega
  have h8 : C (110592 * k + 27769) = 331776 * k + 83308 := by
    unfold C
    simp [show (110592 * k + 27769) % 2 ≠ 0 by omega]
    omega
  have h9 : C (331776 * k + 83308) = 165888 * k + 41654 := by
    unfold C
    simp [show (331776 * k + 83308) % 2 = 0 by omega]
    omega
  have h10 : C (165888 * k + 41654) = 82944 * k + 20827 := by
    unfold C
    simp [show (165888 * k + 41654) % 2 = 0 by omega]
    omega
  have h11 : C (82944 * k + 20827) = 248832 * k + 62482 := by
    unfold C
    simp [show (82944 * k + 20827) % 2 ≠ 0 by omega]
    omega
  have h12 : C (248832 * k + 62482) = 124416 * k + 31241 := by
    unfold C
    simp [show (248832 * k + 62482) % 2 = 0 by omega]
    omega
  have h13 : C (124416 * k + 31241) = 373248 * k + 93724 := by
    unfold C
    simp [show (124416 * k + 31241) % 2 ≠ 0 by omega]
    omega
  have h14 : C (373248 * k + 93724) = 186624 * k + 46862 := by
    unfold C
    simp [show (373248 * k + 93724) % 2 = 0 by omega]
    omega
  have h15 : C (186624 * k + 46862) = 93312 * k + 23431 := by
    unfold C
    simp [show (186624 * k + 46862) % 2 = 0 by omega]
    omega
  have h16 : C (93312 * k + 23431) = 279936 * k + 70294 := by
    unfold C
    simp [show (93312 * k + 23431) % 2 ≠ 0 by omega]
    omega
  have h17 : C (279936 * k + 70294) = 139968 * k + 35147 := by
    unfold C
    simp [show (279936 * k + 70294) % 2 = 0 by omega]
    omega
  have h18 : C (139968 * k + 35147) = 419904 * k + 105442 := by
    unfold C
    simp [show (139968 * k + 35147) % 2 ≠ 0 by omega]
    omega
  have h19 : C (419904 * k + 105442) = 209952 * k + 52721 := by
    unfold C
    simp [show (419904 * k + 105442) % 2 = 0 by omega]
    omega
  have h20 : C (209952 * k + 52721) = 629856 * k + 158164 := by
    unfold C
    simp [show (209952 * k + 52721) % 2 ≠ 0 by omega]
    omega
  have h21 : C (629856 * k + 158164) = 314928 * k + 79082 := by
    unfold C
    simp [show (629856 * k + 158164) % 2 = 0 by omega]
    omega
  have h22 : C (314928 * k + 79082) = 157464 * k + 39541 := by
    unfold C
    simp [show (314928 * k + 79082) % 2 = 0 by omega]
    omega
  have h23 : C (157464 * k + 39541) = 472392 * k + 118624 := by
    unfold C
    simp [show (157464 * k + 39541) % 2 ≠ 0 by omega]
    omega
  have h24 : C (472392 * k + 118624) = 236196 * k + 59312 := by
    unfold C
    simp [show (472392 * k + 118624) % 2 = 0 by omega]
    omega
  have h25 : C (236196 * k + 59312) = 118098 * k + 29656 := by
    unfold C
    simp [show (236196 * k + 59312) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 29656) = 59049 * k + 14828 := by
    unfold C
    simp [show (118098 * k + 29656) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 16455) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 16455)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_16511 : ∀ k : Nat,
    iterate (65536 * k + 16511) 26 = 59049 * k + 14878 ∧
      59049 * k + 14878 < 65536 * k + 16511 := by
  intro k
  have h1 : C (65536 * k + 16511) = 196608 * k + 49534 := by
    unfold C
    simp [show (65536 * k + 16511) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 49534) = 98304 * k + 24767 := by
    unfold C
    simp [show (196608 * k + 49534) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 24767) = 294912 * k + 74302 := by
    unfold C
    simp [show (98304 * k + 24767) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 74302) = 147456 * k + 37151 := by
    unfold C
    simp [show (294912 * k + 74302) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 37151) = 442368 * k + 111454 := by
    unfold C
    simp [show (147456 * k + 37151) % 2 ≠ 0 by omega]
    omega
  have h6 : C (442368 * k + 111454) = 221184 * k + 55727 := by
    unfold C
    simp [show (442368 * k + 111454) % 2 = 0 by omega]
    omega
  have h7 : C (221184 * k + 55727) = 663552 * k + 167182 := by
    unfold C
    simp [show (221184 * k + 55727) % 2 ≠ 0 by omega]
    omega
  have h8 : C (663552 * k + 167182) = 331776 * k + 83591 := by
    unfold C
    simp [show (663552 * k + 167182) % 2 = 0 by omega]
    omega
  have h9 : C (331776 * k + 83591) = 995328 * k + 250774 := by
    unfold C
    simp [show (331776 * k + 83591) % 2 ≠ 0 by omega]
    omega
  have h10 : C (995328 * k + 250774) = 497664 * k + 125387 := by
    unfold C
    simp [show (995328 * k + 250774) % 2 = 0 by omega]
    omega
  have h11 : C (497664 * k + 125387) = 1492992 * k + 376162 := by
    unfold C
    simp [show (497664 * k + 125387) % 2 ≠ 0 by omega]
    omega
  have h12 : C (1492992 * k + 376162) = 746496 * k + 188081 := by
    unfold C
    simp [show (1492992 * k + 376162) % 2 = 0 by omega]
    omega
  have h13 : C (746496 * k + 188081) = 2239488 * k + 564244 := by
    unfold C
    simp [show (746496 * k + 188081) % 2 ≠ 0 by omega]
    omega
  have h14 : C (2239488 * k + 564244) = 1119744 * k + 282122 := by
    unfold C
    simp [show (2239488 * k + 564244) % 2 = 0 by omega]
    omega
  have h15 : C (1119744 * k + 282122) = 559872 * k + 141061 := by
    unfold C
    simp [show (1119744 * k + 282122) % 2 = 0 by omega]
    omega
  have h16 : C (559872 * k + 141061) = 1679616 * k + 423184 := by
    unfold C
    simp [show (559872 * k + 141061) % 2 ≠ 0 by omega]
    omega
  have h17 : C (1679616 * k + 423184) = 839808 * k + 211592 := by
    unfold C
    simp [show (1679616 * k + 423184) % 2 = 0 by omega]
    omega
  have h18 : C (839808 * k + 211592) = 419904 * k + 105796 := by
    unfold C
    simp [show (839808 * k + 211592) % 2 = 0 by omega]
    omega
  have h19 : C (419904 * k + 105796) = 209952 * k + 52898 := by
    unfold C
    simp [show (419904 * k + 105796) % 2 = 0 by omega]
    omega
  have h20 : C (209952 * k + 52898) = 104976 * k + 26449 := by
    unfold C
    simp [show (209952 * k + 52898) % 2 = 0 by omega]
    omega
  have h21 : C (104976 * k + 26449) = 314928 * k + 79348 := by
    unfold C
    simp [show (104976 * k + 26449) % 2 ≠ 0 by omega]
    omega
  have h22 : C (314928 * k + 79348) = 157464 * k + 39674 := by
    unfold C
    simp [show (314928 * k + 79348) % 2 = 0 by omega]
    omega
  have h23 : C (157464 * k + 39674) = 78732 * k + 19837 := by
    unfold C
    simp [show (157464 * k + 39674) % 2 = 0 by omega]
    omega
  have h24 : C (78732 * k + 19837) = 236196 * k + 59512 := by
    unfold C
    simp [show (78732 * k + 19837) % 2 ≠ 0 by omega]
    omega
  have h25 : C (236196 * k + 59512) = 118098 * k + 29756 := by
    unfold C
    simp [show (236196 * k + 59512) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 29756) = 59049 * k + 14878 := by
    unfold C
    simp [show (118098 * k + 29756) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 16511) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 16511)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_16635 : ∀ k : Nat,
    iterate (65536 * k + 16635) 26 = 59049 * k + 14990 ∧
      59049 * k + 14990 < 65536 * k + 16635 := by
  intro k
  have h1 : C (65536 * k + 16635) = 196608 * k + 49906 := by
    unfold C
    simp [show (65536 * k + 16635) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 49906) = 98304 * k + 24953 := by
    unfold C
    simp [show (196608 * k + 49906) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 24953) = 294912 * k + 74860 := by
    unfold C
    simp [show (98304 * k + 24953) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 74860) = 147456 * k + 37430 := by
    unfold C
    simp [show (294912 * k + 74860) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 37430) = 73728 * k + 18715 := by
    unfold C
    simp [show (147456 * k + 37430) % 2 = 0 by omega]
    omega
  have h6 : C (73728 * k + 18715) = 221184 * k + 56146 := by
    unfold C
    simp [show (73728 * k + 18715) % 2 ≠ 0 by omega]
    omega
  have h7 : C (221184 * k + 56146) = 110592 * k + 28073 := by
    unfold C
    simp [show (221184 * k + 56146) % 2 = 0 by omega]
    omega
  have h8 : C (110592 * k + 28073) = 331776 * k + 84220 := by
    unfold C
    simp [show (110592 * k + 28073) % 2 ≠ 0 by omega]
    omega
  have h9 : C (331776 * k + 84220) = 165888 * k + 42110 := by
    unfold C
    simp [show (331776 * k + 84220) % 2 = 0 by omega]
    omega
  have h10 : C (165888 * k + 42110) = 82944 * k + 21055 := by
    unfold C
    simp [show (165888 * k + 42110) % 2 = 0 by omega]
    omega
  have h11 : C (82944 * k + 21055) = 248832 * k + 63166 := by
    unfold C
    simp [show (82944 * k + 21055) % 2 ≠ 0 by omega]
    omega
  have h12 : C (248832 * k + 63166) = 124416 * k + 31583 := by
    unfold C
    simp [show (248832 * k + 63166) % 2 = 0 by omega]
    omega
  have h13 : C (124416 * k + 31583) = 373248 * k + 94750 := by
    unfold C
    simp [show (124416 * k + 31583) % 2 ≠ 0 by omega]
    omega
  have h14 : C (373248 * k + 94750) = 186624 * k + 47375 := by
    unfold C
    simp [show (373248 * k + 94750) % 2 = 0 by omega]
    omega
  have h15 : C (186624 * k + 47375) = 559872 * k + 142126 := by
    unfold C
    simp [show (186624 * k + 47375) % 2 ≠ 0 by omega]
    omega
  have h16 : C (559872 * k + 142126) = 279936 * k + 71063 := by
    unfold C
    simp [show (559872 * k + 142126) % 2 = 0 by omega]
    omega
  have h17 : C (279936 * k + 71063) = 839808 * k + 213190 := by
    unfold C
    simp [show (279936 * k + 71063) % 2 ≠ 0 by omega]
    omega
  have h18 : C (839808 * k + 213190) = 419904 * k + 106595 := by
    unfold C
    simp [show (839808 * k + 213190) % 2 = 0 by omega]
    omega
  have h19 : C (419904 * k + 106595) = 1259712 * k + 319786 := by
    unfold C
    simp [show (419904 * k + 106595) % 2 ≠ 0 by omega]
    omega
  have h20 : C (1259712 * k + 319786) = 629856 * k + 159893 := by
    unfold C
    simp [show (1259712 * k + 319786) % 2 = 0 by omega]
    omega
  have h21 : C (629856 * k + 159893) = 1889568 * k + 479680 := by
    unfold C
    simp [show (629856 * k + 159893) % 2 ≠ 0 by omega]
    omega
  have h22 : C (1889568 * k + 479680) = 944784 * k + 239840 := by
    unfold C
    simp [show (1889568 * k + 479680) % 2 = 0 by omega]
    omega
  have h23 : C (944784 * k + 239840) = 472392 * k + 119920 := by
    unfold C
    simp [show (944784 * k + 239840) % 2 = 0 by omega]
    omega
  have h24 : C (472392 * k + 119920) = 236196 * k + 59960 := by
    unfold C
    simp [show (472392 * k + 119920) % 2 = 0 by omega]
    omega
  have h25 : C (236196 * k + 59960) = 118098 * k + 29980 := by
    unfold C
    simp [show (236196 * k + 59960) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 29980) = 59049 * k + 14990 := by
    unfold C
    simp [show (118098 * k + 29980) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 16635) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 16635)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

end CollatzM16ShardF
