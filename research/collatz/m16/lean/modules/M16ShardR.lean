import Mathlib.Data.Nat.Prime.Basic

namespace CollatzM16ShardR

def C (n : Nat) : Nat := if n % 2 = 0 then n / 2 else 3 * n + 1

def iterate (n t : Nat) : Nat := Nat.rec n (fun _ previous => C previous) t

theorem descent_mod65536_47231 : ∀ k : Nat,
    iterate (65536 * k + 47231) 26 = 59049 * k + 42557 ∧
      59049 * k + 42557 < 65536 * k + 47231 := by
  intro k
  have h1 : C (65536 * k + 47231) = 196608 * k + 141694 := by
    unfold C
    simp [show (65536 * k + 47231) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 141694) = 98304 * k + 70847 := by
    unfold C
    simp [show (196608 * k + 141694) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 70847) = 294912 * k + 212542 := by
    unfold C
    simp [show (98304 * k + 70847) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 212542) = 147456 * k + 106271 := by
    unfold C
    simp [show (294912 * k + 212542) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 106271) = 442368 * k + 318814 := by
    unfold C
    simp [show (147456 * k + 106271) % 2 ≠ 0 by omega]
    omega
  have h6 : C (442368 * k + 318814) = 221184 * k + 159407 := by
    unfold C
    simp [show (442368 * k + 318814) % 2 = 0 by omega]
    omega
  have h7 : C (221184 * k + 159407) = 663552 * k + 478222 := by
    unfold C
    simp [show (221184 * k + 159407) % 2 ≠ 0 by omega]
    omega
  have h8 : C (663552 * k + 478222) = 331776 * k + 239111 := by
    unfold C
    simp [show (663552 * k + 478222) % 2 = 0 by omega]
    omega
  have h9 : C (331776 * k + 239111) = 995328 * k + 717334 := by
    unfold C
    simp [show (331776 * k + 239111) % 2 ≠ 0 by omega]
    omega
  have h10 : C (995328 * k + 717334) = 497664 * k + 358667 := by
    unfold C
    simp [show (995328 * k + 717334) % 2 = 0 by omega]
    omega
  have h11 : C (497664 * k + 358667) = 1492992 * k + 1076002 := by
    unfold C
    simp [show (497664 * k + 358667) % 2 ≠ 0 by omega]
    omega
  have h12 : C (1492992 * k + 1076002) = 746496 * k + 538001 := by
    unfold C
    simp [show (1492992 * k + 1076002) % 2 = 0 by omega]
    omega
  have h13 : C (746496 * k + 538001) = 2239488 * k + 1614004 := by
    unfold C
    simp [show (746496 * k + 538001) % 2 ≠ 0 by omega]
    omega
  have h14 : C (2239488 * k + 1614004) = 1119744 * k + 807002 := by
    unfold C
    simp [show (2239488 * k + 1614004) % 2 = 0 by omega]
    omega
  have h15 : C (1119744 * k + 807002) = 559872 * k + 403501 := by
    unfold C
    simp [show (1119744 * k + 807002) % 2 = 0 by omega]
    omega
  have h16 : C (559872 * k + 403501) = 1679616 * k + 1210504 := by
    unfold C
    simp [show (559872 * k + 403501) % 2 ≠ 0 by omega]
    omega
  have h17 : C (1679616 * k + 1210504) = 839808 * k + 605252 := by
    unfold C
    simp [show (1679616 * k + 1210504) % 2 = 0 by omega]
    omega
  have h18 : C (839808 * k + 605252) = 419904 * k + 302626 := by
    unfold C
    simp [show (839808 * k + 605252) % 2 = 0 by omega]
    omega
  have h19 : C (419904 * k + 302626) = 209952 * k + 151313 := by
    unfold C
    simp [show (419904 * k + 302626) % 2 = 0 by omega]
    omega
  have h20 : C (209952 * k + 151313) = 629856 * k + 453940 := by
    unfold C
    simp [show (209952 * k + 151313) % 2 ≠ 0 by omega]
    omega
  have h21 : C (629856 * k + 453940) = 314928 * k + 226970 := by
    unfold C
    simp [show (629856 * k + 453940) % 2 = 0 by omega]
    omega
  have h22 : C (314928 * k + 226970) = 157464 * k + 113485 := by
    unfold C
    simp [show (314928 * k + 226970) % 2 = 0 by omega]
    omega
  have h23 : C (157464 * k + 113485) = 472392 * k + 340456 := by
    unfold C
    simp [show (157464 * k + 113485) % 2 ≠ 0 by omega]
    omega
  have h24 : C (472392 * k + 340456) = 236196 * k + 170228 := by
    unfold C
    simp [show (472392 * k + 340456) % 2 = 0 by omega]
    omega
  have h25 : C (236196 * k + 170228) = 118098 * k + 85114 := by
    unfold C
    simp [show (236196 * k + 170228) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 85114) = 59049 * k + 42557 := by
    unfold C
    simp [show (118098 * k + 85114) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 47231) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 47231)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_47327 : ∀ k : Nat,
    iterate (65536 * k + 47327) 26 = 59049 * k + 42644 ∧
      59049 * k + 42644 < 65536 * k + 47327 := by
  intro k
  have h1 : C (65536 * k + 47327) = 196608 * k + 141982 := by
    unfold C
    simp [show (65536 * k + 47327) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 141982) = 98304 * k + 70991 := by
    unfold C
    simp [show (196608 * k + 141982) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 70991) = 294912 * k + 212974 := by
    unfold C
    simp [show (98304 * k + 70991) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 212974) = 147456 * k + 106487 := by
    unfold C
    simp [show (294912 * k + 212974) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 106487) = 442368 * k + 319462 := by
    unfold C
    simp [show (147456 * k + 106487) % 2 ≠ 0 by omega]
    omega
  have h6 : C (442368 * k + 319462) = 221184 * k + 159731 := by
    unfold C
    simp [show (442368 * k + 319462) % 2 = 0 by omega]
    omega
  have h7 : C (221184 * k + 159731) = 663552 * k + 479194 := by
    unfold C
    simp [show (221184 * k + 159731) % 2 ≠ 0 by omega]
    omega
  have h8 : C (663552 * k + 479194) = 331776 * k + 239597 := by
    unfold C
    simp [show (663552 * k + 479194) % 2 = 0 by omega]
    omega
  have h9 : C (331776 * k + 239597) = 995328 * k + 718792 := by
    unfold C
    simp [show (331776 * k + 239597) % 2 ≠ 0 by omega]
    omega
  have h10 : C (995328 * k + 718792) = 497664 * k + 359396 := by
    unfold C
    simp [show (995328 * k + 718792) % 2 = 0 by omega]
    omega
  have h11 : C (497664 * k + 359396) = 248832 * k + 179698 := by
    unfold C
    simp [show (497664 * k + 359396) % 2 = 0 by omega]
    omega
  have h12 : C (248832 * k + 179698) = 124416 * k + 89849 := by
    unfold C
    simp [show (248832 * k + 179698) % 2 = 0 by omega]
    omega
  have h13 : C (124416 * k + 89849) = 373248 * k + 269548 := by
    unfold C
    simp [show (124416 * k + 89849) % 2 ≠ 0 by omega]
    omega
  have h14 : C (373248 * k + 269548) = 186624 * k + 134774 := by
    unfold C
    simp [show (373248 * k + 269548) % 2 = 0 by omega]
    omega
  have h15 : C (186624 * k + 134774) = 93312 * k + 67387 := by
    unfold C
    simp [show (186624 * k + 134774) % 2 = 0 by omega]
    omega
  have h16 : C (93312 * k + 67387) = 279936 * k + 202162 := by
    unfold C
    simp [show (93312 * k + 67387) % 2 ≠ 0 by omega]
    omega
  have h17 : C (279936 * k + 202162) = 139968 * k + 101081 := by
    unfold C
    simp [show (279936 * k + 202162) % 2 = 0 by omega]
    omega
  have h18 : C (139968 * k + 101081) = 419904 * k + 303244 := by
    unfold C
    simp [show (139968 * k + 101081) % 2 ≠ 0 by omega]
    omega
  have h19 : C (419904 * k + 303244) = 209952 * k + 151622 := by
    unfold C
    simp [show (419904 * k + 303244) % 2 = 0 by omega]
    omega
  have h20 : C (209952 * k + 151622) = 104976 * k + 75811 := by
    unfold C
    simp [show (209952 * k + 151622) % 2 = 0 by omega]
    omega
  have h21 : C (104976 * k + 75811) = 314928 * k + 227434 := by
    unfold C
    simp [show (104976 * k + 75811) % 2 ≠ 0 by omega]
    omega
  have h22 : C (314928 * k + 227434) = 157464 * k + 113717 := by
    unfold C
    simp [show (314928 * k + 227434) % 2 = 0 by omega]
    omega
  have h23 : C (157464 * k + 113717) = 472392 * k + 341152 := by
    unfold C
    simp [show (157464 * k + 113717) % 2 ≠ 0 by omega]
    omega
  have h24 : C (472392 * k + 341152) = 236196 * k + 170576 := by
    unfold C
    simp [show (472392 * k + 341152) % 2 = 0 by omega]
    omega
  have h25 : C (236196 * k + 170576) = 118098 * k + 85288 := by
    unfold C
    simp [show (236196 * k + 170576) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 85288) = 59049 * k + 42644 := by
    unfold C
    simp [show (118098 * k + 85288) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 47327) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 47327)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_47387 : ∀ k : Nat,
    iterate (65536 * k + 47387) 26 = 59049 * k + 42698 ∧
      59049 * k + 42698 < 65536 * k + 47387 := by
  intro k
  have h1 : C (65536 * k + 47387) = 196608 * k + 142162 := by
    unfold C
    simp [show (65536 * k + 47387) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 142162) = 98304 * k + 71081 := by
    unfold C
    simp [show (196608 * k + 142162) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 71081) = 294912 * k + 213244 := by
    unfold C
    simp [show (98304 * k + 71081) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 213244) = 147456 * k + 106622 := by
    unfold C
    simp [show (294912 * k + 213244) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 106622) = 73728 * k + 53311 := by
    unfold C
    simp [show (147456 * k + 106622) % 2 = 0 by omega]
    omega
  have h6 : C (73728 * k + 53311) = 221184 * k + 159934 := by
    unfold C
    simp [show (73728 * k + 53311) % 2 ≠ 0 by omega]
    omega
  have h7 : C (221184 * k + 159934) = 110592 * k + 79967 := by
    unfold C
    simp [show (221184 * k + 159934) % 2 = 0 by omega]
    omega
  have h8 : C (110592 * k + 79967) = 331776 * k + 239902 := by
    unfold C
    simp [show (110592 * k + 79967) % 2 ≠ 0 by omega]
    omega
  have h9 : C (331776 * k + 239902) = 165888 * k + 119951 := by
    unfold C
    simp [show (331776 * k + 239902) % 2 = 0 by omega]
    omega
  have h10 : C (165888 * k + 119951) = 497664 * k + 359854 := by
    unfold C
    simp [show (165888 * k + 119951) % 2 ≠ 0 by omega]
    omega
  have h11 : C (497664 * k + 359854) = 248832 * k + 179927 := by
    unfold C
    simp [show (497664 * k + 359854) % 2 = 0 by omega]
    omega
  have h12 : C (248832 * k + 179927) = 746496 * k + 539782 := by
    unfold C
    simp [show (248832 * k + 179927) % 2 ≠ 0 by omega]
    omega
  have h13 : C (746496 * k + 539782) = 373248 * k + 269891 := by
    unfold C
    simp [show (746496 * k + 539782) % 2 = 0 by omega]
    omega
  have h14 : C (373248 * k + 269891) = 1119744 * k + 809674 := by
    unfold C
    simp [show (373248 * k + 269891) % 2 ≠ 0 by omega]
    omega
  have h15 : C (1119744 * k + 809674) = 559872 * k + 404837 := by
    unfold C
    simp [show (1119744 * k + 809674) % 2 = 0 by omega]
    omega
  have h16 : C (559872 * k + 404837) = 1679616 * k + 1214512 := by
    unfold C
    simp [show (559872 * k + 404837) % 2 ≠ 0 by omega]
    omega
  have h17 : C (1679616 * k + 1214512) = 839808 * k + 607256 := by
    unfold C
    simp [show (1679616 * k + 1214512) % 2 = 0 by omega]
    omega
  have h18 : C (839808 * k + 607256) = 419904 * k + 303628 := by
    unfold C
    simp [show (839808 * k + 607256) % 2 = 0 by omega]
    omega
  have h19 : C (419904 * k + 303628) = 209952 * k + 151814 := by
    unfold C
    simp [show (419904 * k + 303628) % 2 = 0 by omega]
    omega
  have h20 : C (209952 * k + 151814) = 104976 * k + 75907 := by
    unfold C
    simp [show (209952 * k + 151814) % 2 = 0 by omega]
    omega
  have h21 : C (104976 * k + 75907) = 314928 * k + 227722 := by
    unfold C
    simp [show (104976 * k + 75907) % 2 ≠ 0 by omega]
    omega
  have h22 : C (314928 * k + 227722) = 157464 * k + 113861 := by
    unfold C
    simp [show (314928 * k + 227722) % 2 = 0 by omega]
    omega
  have h23 : C (157464 * k + 113861) = 472392 * k + 341584 := by
    unfold C
    simp [show (157464 * k + 113861) % 2 ≠ 0 by omega]
    omega
  have h24 : C (472392 * k + 341584) = 236196 * k + 170792 := by
    unfold C
    simp [show (472392 * k + 341584) % 2 = 0 by omega]
    omega
  have h25 : C (236196 * k + 170792) = 118098 * k + 85396 := by
    unfold C
    simp [show (236196 * k + 170792) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 85396) = 59049 * k + 42698 := by
    unfold C
    simp [show (118098 * k + 85396) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 47387) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 47387)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_47423 : ∀ k : Nat,
    iterate (65536 * k + 47423) 26 = 59049 * k + 42730 ∧
      59049 * k + 42730 < 65536 * k + 47423 := by
  intro k
  have h1 : C (65536 * k + 47423) = 196608 * k + 142270 := by
    unfold C
    simp [show (65536 * k + 47423) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 142270) = 98304 * k + 71135 := by
    unfold C
    simp [show (196608 * k + 142270) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 71135) = 294912 * k + 213406 := by
    unfold C
    simp [show (98304 * k + 71135) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 213406) = 147456 * k + 106703 := by
    unfold C
    simp [show (294912 * k + 213406) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 106703) = 442368 * k + 320110 := by
    unfold C
    simp [show (147456 * k + 106703) % 2 ≠ 0 by omega]
    omega
  have h6 : C (442368 * k + 320110) = 221184 * k + 160055 := by
    unfold C
    simp [show (442368 * k + 320110) % 2 = 0 by omega]
    omega
  have h7 : C (221184 * k + 160055) = 663552 * k + 480166 := by
    unfold C
    simp [show (221184 * k + 160055) % 2 ≠ 0 by omega]
    omega
  have h8 : C (663552 * k + 480166) = 331776 * k + 240083 := by
    unfold C
    simp [show (663552 * k + 480166) % 2 = 0 by omega]
    omega
  have h9 : C (331776 * k + 240083) = 995328 * k + 720250 := by
    unfold C
    simp [show (331776 * k + 240083) % 2 ≠ 0 by omega]
    omega
  have h10 : C (995328 * k + 720250) = 497664 * k + 360125 := by
    unfold C
    simp [show (995328 * k + 720250) % 2 = 0 by omega]
    omega
  have h11 : C (497664 * k + 360125) = 1492992 * k + 1080376 := by
    unfold C
    simp [show (497664 * k + 360125) % 2 ≠ 0 by omega]
    omega
  have h12 : C (1492992 * k + 1080376) = 746496 * k + 540188 := by
    unfold C
    simp [show (1492992 * k + 1080376) % 2 = 0 by omega]
    omega
  have h13 : C (746496 * k + 540188) = 373248 * k + 270094 := by
    unfold C
    simp [show (746496 * k + 540188) % 2 = 0 by omega]
    omega
  have h14 : C (373248 * k + 270094) = 186624 * k + 135047 := by
    unfold C
    simp [show (373248 * k + 270094) % 2 = 0 by omega]
    omega
  have h15 : C (186624 * k + 135047) = 559872 * k + 405142 := by
    unfold C
    simp [show (186624 * k + 135047) % 2 ≠ 0 by omega]
    omega
  have h16 : C (559872 * k + 405142) = 279936 * k + 202571 := by
    unfold C
    simp [show (559872 * k + 405142) % 2 = 0 by omega]
    omega
  have h17 : C (279936 * k + 202571) = 839808 * k + 607714 := by
    unfold C
    simp [show (279936 * k + 202571) % 2 ≠ 0 by omega]
    omega
  have h18 : C (839808 * k + 607714) = 419904 * k + 303857 := by
    unfold C
    simp [show (839808 * k + 607714) % 2 = 0 by omega]
    omega
  have h19 : C (419904 * k + 303857) = 1259712 * k + 911572 := by
    unfold C
    simp [show (419904 * k + 303857) % 2 ≠ 0 by omega]
    omega
  have h20 : C (1259712 * k + 911572) = 629856 * k + 455786 := by
    unfold C
    simp [show (1259712 * k + 911572) % 2 = 0 by omega]
    omega
  have h21 : C (629856 * k + 455786) = 314928 * k + 227893 := by
    unfold C
    simp [show (629856 * k + 455786) % 2 = 0 by omega]
    omega
  have h22 : C (314928 * k + 227893) = 944784 * k + 683680 := by
    unfold C
    simp [show (314928 * k + 227893) % 2 ≠ 0 by omega]
    omega
  have h23 : C (944784 * k + 683680) = 472392 * k + 341840 := by
    unfold C
    simp [show (944784 * k + 683680) % 2 = 0 by omega]
    omega
  have h24 : C (472392 * k + 341840) = 236196 * k + 170920 := by
    unfold C
    simp [show (472392 * k + 341840) % 2 = 0 by omega]
    omega
  have h25 : C (236196 * k + 170920) = 118098 * k + 85460 := by
    unfold C
    simp [show (236196 * k + 170920) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 85460) = 59049 * k + 42730 := by
    unfold C
    simp [show (118098 * k + 85460) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 47423) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 47423)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_47487 : ∀ k : Nat,
    iterate (65536 * k + 47487) 26 = 59049 * k + 42788 ∧
      59049 * k + 42788 < 65536 * k + 47487 := by
  intro k
  have h1 : C (65536 * k + 47487) = 196608 * k + 142462 := by
    unfold C
    simp [show (65536 * k + 47487) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 142462) = 98304 * k + 71231 := by
    unfold C
    simp [show (196608 * k + 142462) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 71231) = 294912 * k + 213694 := by
    unfold C
    simp [show (98304 * k + 71231) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 213694) = 147456 * k + 106847 := by
    unfold C
    simp [show (294912 * k + 213694) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 106847) = 442368 * k + 320542 := by
    unfold C
    simp [show (147456 * k + 106847) % 2 ≠ 0 by omega]
    omega
  have h6 : C (442368 * k + 320542) = 221184 * k + 160271 := by
    unfold C
    simp [show (442368 * k + 320542) % 2 = 0 by omega]
    omega
  have h7 : C (221184 * k + 160271) = 663552 * k + 480814 := by
    unfold C
    simp [show (221184 * k + 160271) % 2 ≠ 0 by omega]
    omega
  have h8 : C (663552 * k + 480814) = 331776 * k + 240407 := by
    unfold C
    simp [show (663552 * k + 480814) % 2 = 0 by omega]
    omega
  have h9 : C (331776 * k + 240407) = 995328 * k + 721222 := by
    unfold C
    simp [show (331776 * k + 240407) % 2 ≠ 0 by omega]
    omega
  have h10 : C (995328 * k + 721222) = 497664 * k + 360611 := by
    unfold C
    simp [show (995328 * k + 721222) % 2 = 0 by omega]
    omega
  have h11 : C (497664 * k + 360611) = 1492992 * k + 1081834 := by
    unfold C
    simp [show (497664 * k + 360611) % 2 ≠ 0 by omega]
    omega
  have h12 : C (1492992 * k + 1081834) = 746496 * k + 540917 := by
    unfold C
    simp [show (1492992 * k + 1081834) % 2 = 0 by omega]
    omega
  have h13 : C (746496 * k + 540917) = 2239488 * k + 1622752 := by
    unfold C
    simp [show (746496 * k + 540917) % 2 ≠ 0 by omega]
    omega
  have h14 : C (2239488 * k + 1622752) = 1119744 * k + 811376 := by
    unfold C
    simp [show (2239488 * k + 1622752) % 2 = 0 by omega]
    omega
  have h15 : C (1119744 * k + 811376) = 559872 * k + 405688 := by
    unfold C
    simp [show (1119744 * k + 811376) % 2 = 0 by omega]
    omega
  have h16 : C (559872 * k + 405688) = 279936 * k + 202844 := by
    unfold C
    simp [show (559872 * k + 405688) % 2 = 0 by omega]
    omega
  have h17 : C (279936 * k + 202844) = 139968 * k + 101422 := by
    unfold C
    simp [show (279936 * k + 202844) % 2 = 0 by omega]
    omega
  have h18 : C (139968 * k + 101422) = 69984 * k + 50711 := by
    unfold C
    simp [show (139968 * k + 101422) % 2 = 0 by omega]
    omega
  have h19 : C (69984 * k + 50711) = 209952 * k + 152134 := by
    unfold C
    simp [show (69984 * k + 50711) % 2 ≠ 0 by omega]
    omega
  have h20 : C (209952 * k + 152134) = 104976 * k + 76067 := by
    unfold C
    simp [show (209952 * k + 152134) % 2 = 0 by omega]
    omega
  have h21 : C (104976 * k + 76067) = 314928 * k + 228202 := by
    unfold C
    simp [show (104976 * k + 76067) % 2 ≠ 0 by omega]
    omega
  have h22 : C (314928 * k + 228202) = 157464 * k + 114101 := by
    unfold C
    simp [show (314928 * k + 228202) % 2 = 0 by omega]
    omega
  have h23 : C (157464 * k + 114101) = 472392 * k + 342304 := by
    unfold C
    simp [show (157464 * k + 114101) % 2 ≠ 0 by omega]
    omega
  have h24 : C (472392 * k + 342304) = 236196 * k + 171152 := by
    unfold C
    simp [show (472392 * k + 342304) % 2 = 0 by omega]
    omega
  have h25 : C (236196 * k + 171152) = 118098 * k + 85576 := by
    unfold C
    simp [show (236196 * k + 171152) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 85576) = 59049 * k + 42788 := by
    unfold C
    simp [show (118098 * k + 85576) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 47487) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 47487)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_47807 : ∀ k : Nat,
    iterate (65536 * k + 47807) 26 = 59049 * k + 43076 ∧
      59049 * k + 43076 < 65536 * k + 47807 := by
  intro k
  have h1 : C (65536 * k + 47807) = 196608 * k + 143422 := by
    unfold C
    simp [show (65536 * k + 47807) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 143422) = 98304 * k + 71711 := by
    unfold C
    simp [show (196608 * k + 143422) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 71711) = 294912 * k + 215134 := by
    unfold C
    simp [show (98304 * k + 71711) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 215134) = 147456 * k + 107567 := by
    unfold C
    simp [show (294912 * k + 215134) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 107567) = 442368 * k + 322702 := by
    unfold C
    simp [show (147456 * k + 107567) % 2 ≠ 0 by omega]
    omega
  have h6 : C (442368 * k + 322702) = 221184 * k + 161351 := by
    unfold C
    simp [show (442368 * k + 322702) % 2 = 0 by omega]
    omega
  have h7 : C (221184 * k + 161351) = 663552 * k + 484054 := by
    unfold C
    simp [show (221184 * k + 161351) % 2 ≠ 0 by omega]
    omega
  have h8 : C (663552 * k + 484054) = 331776 * k + 242027 := by
    unfold C
    simp [show (663552 * k + 484054) % 2 = 0 by omega]
    omega
  have h9 : C (331776 * k + 242027) = 995328 * k + 726082 := by
    unfold C
    simp [show (331776 * k + 242027) % 2 ≠ 0 by omega]
    omega
  have h10 : C (995328 * k + 726082) = 497664 * k + 363041 := by
    unfold C
    simp [show (995328 * k + 726082) % 2 = 0 by omega]
    omega
  have h11 : C (497664 * k + 363041) = 1492992 * k + 1089124 := by
    unfold C
    simp [show (497664 * k + 363041) % 2 ≠ 0 by omega]
    omega
  have h12 : C (1492992 * k + 1089124) = 746496 * k + 544562 := by
    unfold C
    simp [show (1492992 * k + 1089124) % 2 = 0 by omega]
    omega
  have h13 : C (746496 * k + 544562) = 373248 * k + 272281 := by
    unfold C
    simp [show (746496 * k + 544562) % 2 = 0 by omega]
    omega
  have h14 : C (373248 * k + 272281) = 1119744 * k + 816844 := by
    unfold C
    simp [show (373248 * k + 272281) % 2 ≠ 0 by omega]
    omega
  have h15 : C (1119744 * k + 816844) = 559872 * k + 408422 := by
    unfold C
    simp [show (1119744 * k + 816844) % 2 = 0 by omega]
    omega
  have h16 : C (559872 * k + 408422) = 279936 * k + 204211 := by
    unfold C
    simp [show (559872 * k + 408422) % 2 = 0 by omega]
    omega
  have h17 : C (279936 * k + 204211) = 839808 * k + 612634 := by
    unfold C
    simp [show (279936 * k + 204211) % 2 ≠ 0 by omega]
    omega
  have h18 : C (839808 * k + 612634) = 419904 * k + 306317 := by
    unfold C
    simp [show (839808 * k + 612634) % 2 = 0 by omega]
    omega
  have h19 : C (419904 * k + 306317) = 1259712 * k + 918952 := by
    unfold C
    simp [show (419904 * k + 306317) % 2 ≠ 0 by omega]
    omega
  have h20 : C (1259712 * k + 918952) = 629856 * k + 459476 := by
    unfold C
    simp [show (1259712 * k + 918952) % 2 = 0 by omega]
    omega
  have h21 : C (629856 * k + 459476) = 314928 * k + 229738 := by
    unfold C
    simp [show (629856 * k + 459476) % 2 = 0 by omega]
    omega
  have h22 : C (314928 * k + 229738) = 157464 * k + 114869 := by
    unfold C
    simp [show (314928 * k + 229738) % 2 = 0 by omega]
    omega
  have h23 : C (157464 * k + 114869) = 472392 * k + 344608 := by
    unfold C
    simp [show (157464 * k + 114869) % 2 ≠ 0 by omega]
    omega
  have h24 : C (472392 * k + 344608) = 236196 * k + 172304 := by
    unfold C
    simp [show (472392 * k + 344608) % 2 = 0 by omega]
    omega
  have h25 : C (236196 * k + 172304) = 118098 * k + 86152 := by
    unfold C
    simp [show (236196 * k + 172304) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 86152) = 59049 * k + 43076 := by
    unfold C
    simp [show (118098 * k + 86152) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 47807) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 47807)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_48095 : ∀ k : Nat,
    iterate (65536 * k + 48095) 26 = 59049 * k + 43336 ∧
      59049 * k + 43336 < 65536 * k + 48095 := by
  intro k
  have h1 : C (65536 * k + 48095) = 196608 * k + 144286 := by
    unfold C
    simp [show (65536 * k + 48095) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 144286) = 98304 * k + 72143 := by
    unfold C
    simp [show (196608 * k + 144286) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 72143) = 294912 * k + 216430 := by
    unfold C
    simp [show (98304 * k + 72143) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 216430) = 147456 * k + 108215 := by
    unfold C
    simp [show (294912 * k + 216430) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 108215) = 442368 * k + 324646 := by
    unfold C
    simp [show (147456 * k + 108215) % 2 ≠ 0 by omega]
    omega
  have h6 : C (442368 * k + 324646) = 221184 * k + 162323 := by
    unfold C
    simp [show (442368 * k + 324646) % 2 = 0 by omega]
    omega
  have h7 : C (221184 * k + 162323) = 663552 * k + 486970 := by
    unfold C
    simp [show (221184 * k + 162323) % 2 ≠ 0 by omega]
    omega
  have h8 : C (663552 * k + 486970) = 331776 * k + 243485 := by
    unfold C
    simp [show (663552 * k + 486970) % 2 = 0 by omega]
    omega
  have h9 : C (331776 * k + 243485) = 995328 * k + 730456 := by
    unfold C
    simp [show (331776 * k + 243485) % 2 ≠ 0 by omega]
    omega
  have h10 : C (995328 * k + 730456) = 497664 * k + 365228 := by
    unfold C
    simp [show (995328 * k + 730456) % 2 = 0 by omega]
    omega
  have h11 : C (497664 * k + 365228) = 248832 * k + 182614 := by
    unfold C
    simp [show (497664 * k + 365228) % 2 = 0 by omega]
    omega
  have h12 : C (248832 * k + 182614) = 124416 * k + 91307 := by
    unfold C
    simp [show (248832 * k + 182614) % 2 = 0 by omega]
    omega
  have h13 : C (124416 * k + 91307) = 373248 * k + 273922 := by
    unfold C
    simp [show (124416 * k + 91307) % 2 ≠ 0 by omega]
    omega
  have h14 : C (373248 * k + 273922) = 186624 * k + 136961 := by
    unfold C
    simp [show (373248 * k + 273922) % 2 = 0 by omega]
    omega
  have h15 : C (186624 * k + 136961) = 559872 * k + 410884 := by
    unfold C
    simp [show (186624 * k + 136961) % 2 ≠ 0 by omega]
    omega
  have h16 : C (559872 * k + 410884) = 279936 * k + 205442 := by
    unfold C
    simp [show (559872 * k + 410884) % 2 = 0 by omega]
    omega
  have h17 : C (279936 * k + 205442) = 139968 * k + 102721 := by
    unfold C
    simp [show (279936 * k + 205442) % 2 = 0 by omega]
    omega
  have h18 : C (139968 * k + 102721) = 419904 * k + 308164 := by
    unfold C
    simp [show (139968 * k + 102721) % 2 ≠ 0 by omega]
    omega
  have h19 : C (419904 * k + 308164) = 209952 * k + 154082 := by
    unfold C
    simp [show (419904 * k + 308164) % 2 = 0 by omega]
    omega
  have h20 : C (209952 * k + 154082) = 104976 * k + 77041 := by
    unfold C
    simp [show (209952 * k + 154082) % 2 = 0 by omega]
    omega
  have h21 : C (104976 * k + 77041) = 314928 * k + 231124 := by
    unfold C
    simp [show (104976 * k + 77041) % 2 ≠ 0 by omega]
    omega
  have h22 : C (314928 * k + 231124) = 157464 * k + 115562 := by
    unfold C
    simp [show (314928 * k + 231124) % 2 = 0 by omega]
    omega
  have h23 : C (157464 * k + 115562) = 78732 * k + 57781 := by
    unfold C
    simp [show (157464 * k + 115562) % 2 = 0 by omega]
    omega
  have h24 : C (78732 * k + 57781) = 236196 * k + 173344 := by
    unfold C
    simp [show (78732 * k + 57781) % 2 ≠ 0 by omega]
    omega
  have h25 : C (236196 * k + 173344) = 118098 * k + 86672 := by
    unfold C
    simp [show (236196 * k + 173344) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 86672) = 59049 * k + 43336 := by
    unfold C
    simp [show (118098 * k + 86672) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 48095) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 48095)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_48155 : ∀ k : Nat,
    iterate (65536 * k + 48155) 26 = 59049 * k + 43390 ∧
      59049 * k + 43390 < 65536 * k + 48155 := by
  intro k
  have h1 : C (65536 * k + 48155) = 196608 * k + 144466 := by
    unfold C
    simp [show (65536 * k + 48155) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 144466) = 98304 * k + 72233 := by
    unfold C
    simp [show (196608 * k + 144466) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 72233) = 294912 * k + 216700 := by
    unfold C
    simp [show (98304 * k + 72233) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 216700) = 147456 * k + 108350 := by
    unfold C
    simp [show (294912 * k + 216700) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 108350) = 73728 * k + 54175 := by
    unfold C
    simp [show (147456 * k + 108350) % 2 = 0 by omega]
    omega
  have h6 : C (73728 * k + 54175) = 221184 * k + 162526 := by
    unfold C
    simp [show (73728 * k + 54175) % 2 ≠ 0 by omega]
    omega
  have h7 : C (221184 * k + 162526) = 110592 * k + 81263 := by
    unfold C
    simp [show (221184 * k + 162526) % 2 = 0 by omega]
    omega
  have h8 : C (110592 * k + 81263) = 331776 * k + 243790 := by
    unfold C
    simp [show (110592 * k + 81263) % 2 ≠ 0 by omega]
    omega
  have h9 : C (331776 * k + 243790) = 165888 * k + 121895 := by
    unfold C
    simp [show (331776 * k + 243790) % 2 = 0 by omega]
    omega
  have h10 : C (165888 * k + 121895) = 497664 * k + 365686 := by
    unfold C
    simp [show (165888 * k + 121895) % 2 ≠ 0 by omega]
    omega
  have h11 : C (497664 * k + 365686) = 248832 * k + 182843 := by
    unfold C
    simp [show (497664 * k + 365686) % 2 = 0 by omega]
    omega
  have h12 : C (248832 * k + 182843) = 746496 * k + 548530 := by
    unfold C
    simp [show (248832 * k + 182843) % 2 ≠ 0 by omega]
    omega
  have h13 : C (746496 * k + 548530) = 373248 * k + 274265 := by
    unfold C
    simp [show (746496 * k + 548530) % 2 = 0 by omega]
    omega
  have h14 : C (373248 * k + 274265) = 1119744 * k + 822796 := by
    unfold C
    simp [show (373248 * k + 274265) % 2 ≠ 0 by omega]
    omega
  have h15 : C (1119744 * k + 822796) = 559872 * k + 411398 := by
    unfold C
    simp [show (1119744 * k + 822796) % 2 = 0 by omega]
    omega
  have h16 : C (559872 * k + 411398) = 279936 * k + 205699 := by
    unfold C
    simp [show (559872 * k + 411398) % 2 = 0 by omega]
    omega
  have h17 : C (279936 * k + 205699) = 839808 * k + 617098 := by
    unfold C
    simp [show (279936 * k + 205699) % 2 ≠ 0 by omega]
    omega
  have h18 : C (839808 * k + 617098) = 419904 * k + 308549 := by
    unfold C
    simp [show (839808 * k + 617098) % 2 = 0 by omega]
    omega
  have h19 : C (419904 * k + 308549) = 1259712 * k + 925648 := by
    unfold C
    simp [show (419904 * k + 308549) % 2 ≠ 0 by omega]
    omega
  have h20 : C (1259712 * k + 925648) = 629856 * k + 462824 := by
    unfold C
    simp [show (1259712 * k + 925648) % 2 = 0 by omega]
    omega
  have h21 : C (629856 * k + 462824) = 314928 * k + 231412 := by
    unfold C
    simp [show (629856 * k + 462824) % 2 = 0 by omega]
    omega
  have h22 : C (314928 * k + 231412) = 157464 * k + 115706 := by
    unfold C
    simp [show (314928 * k + 231412) % 2 = 0 by omega]
    omega
  have h23 : C (157464 * k + 115706) = 78732 * k + 57853 := by
    unfold C
    simp [show (157464 * k + 115706) % 2 = 0 by omega]
    omega
  have h24 : C (78732 * k + 57853) = 236196 * k + 173560 := by
    unfold C
    simp [show (78732 * k + 57853) % 2 ≠ 0 by omega]
    omega
  have h25 : C (236196 * k + 173560) = 118098 * k + 86780 := by
    unfold C
    simp [show (236196 * k + 173560) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 86780) = 59049 * k + 43390 := by
    unfold C
    simp [show (118098 * k + 86780) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 48155) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 48155)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_48295 : ∀ k : Nat,
    iterate (65536 * k + 48295) 26 = 59049 * k + 43516 ∧
      59049 * k + 43516 < 65536 * k + 48295 := by
  intro k
  have h1 : C (65536 * k + 48295) = 196608 * k + 144886 := by
    unfold C
    simp [show (65536 * k + 48295) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 144886) = 98304 * k + 72443 := by
    unfold C
    simp [show (196608 * k + 144886) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 72443) = 294912 * k + 217330 := by
    unfold C
    simp [show (98304 * k + 72443) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 217330) = 147456 * k + 108665 := by
    unfold C
    simp [show (294912 * k + 217330) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 108665) = 442368 * k + 325996 := by
    unfold C
    simp [show (147456 * k + 108665) % 2 ≠ 0 by omega]
    omega
  have h6 : C (442368 * k + 325996) = 221184 * k + 162998 := by
    unfold C
    simp [show (442368 * k + 325996) % 2 = 0 by omega]
    omega
  have h7 : C (221184 * k + 162998) = 110592 * k + 81499 := by
    unfold C
    simp [show (221184 * k + 162998) % 2 = 0 by omega]
    omega
  have h8 : C (110592 * k + 81499) = 331776 * k + 244498 := by
    unfold C
    simp [show (110592 * k + 81499) % 2 ≠ 0 by omega]
    omega
  have h9 : C (331776 * k + 244498) = 165888 * k + 122249 := by
    unfold C
    simp [show (331776 * k + 244498) % 2 = 0 by omega]
    omega
  have h10 : C (165888 * k + 122249) = 497664 * k + 366748 := by
    unfold C
    simp [show (165888 * k + 122249) % 2 ≠ 0 by omega]
    omega
  have h11 : C (497664 * k + 366748) = 248832 * k + 183374 := by
    unfold C
    simp [show (497664 * k + 366748) % 2 = 0 by omega]
    omega
  have h12 : C (248832 * k + 183374) = 124416 * k + 91687 := by
    unfold C
    simp [show (248832 * k + 183374) % 2 = 0 by omega]
    omega
  have h13 : C (124416 * k + 91687) = 373248 * k + 275062 := by
    unfold C
    simp [show (124416 * k + 91687) % 2 ≠ 0 by omega]
    omega
  have h14 : C (373248 * k + 275062) = 186624 * k + 137531 := by
    unfold C
    simp [show (373248 * k + 275062) % 2 = 0 by omega]
    omega
  have h15 : C (186624 * k + 137531) = 559872 * k + 412594 := by
    unfold C
    simp [show (186624 * k + 137531) % 2 ≠ 0 by omega]
    omega
  have h16 : C (559872 * k + 412594) = 279936 * k + 206297 := by
    unfold C
    simp [show (559872 * k + 412594) % 2 = 0 by omega]
    omega
  have h17 : C (279936 * k + 206297) = 839808 * k + 618892 := by
    unfold C
    simp [show (279936 * k + 206297) % 2 ≠ 0 by omega]
    omega
  have h18 : C (839808 * k + 618892) = 419904 * k + 309446 := by
    unfold C
    simp [show (839808 * k + 618892) % 2 = 0 by omega]
    omega
  have h19 : C (419904 * k + 309446) = 209952 * k + 154723 := by
    unfold C
    simp [show (419904 * k + 309446) % 2 = 0 by omega]
    omega
  have h20 : C (209952 * k + 154723) = 629856 * k + 464170 := by
    unfold C
    simp [show (209952 * k + 154723) % 2 ≠ 0 by omega]
    omega
  have h21 : C (629856 * k + 464170) = 314928 * k + 232085 := by
    unfold C
    simp [show (629856 * k + 464170) % 2 = 0 by omega]
    omega
  have h22 : C (314928 * k + 232085) = 944784 * k + 696256 := by
    unfold C
    simp [show (314928 * k + 232085) % 2 ≠ 0 by omega]
    omega
  have h23 : C (944784 * k + 696256) = 472392 * k + 348128 := by
    unfold C
    simp [show (944784 * k + 696256) % 2 = 0 by omega]
    omega
  have h24 : C (472392 * k + 348128) = 236196 * k + 174064 := by
    unfold C
    simp [show (472392 * k + 348128) % 2 = 0 by omega]
    omega
  have h25 : C (236196 * k + 174064) = 118098 * k + 87032 := by
    unfold C
    simp [show (236196 * k + 174064) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 87032) = 59049 * k + 43516 := by
    unfold C
    simp [show (118098 * k + 87032) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 48295) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 48295)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_48379 : ∀ k : Nat,
    iterate (65536 * k + 48379) 26 = 59049 * k + 43592 ∧
      59049 * k + 43592 < 65536 * k + 48379 := by
  intro k
  have h1 : C (65536 * k + 48379) = 196608 * k + 145138 := by
    unfold C
    simp [show (65536 * k + 48379) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 145138) = 98304 * k + 72569 := by
    unfold C
    simp [show (196608 * k + 145138) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 72569) = 294912 * k + 217708 := by
    unfold C
    simp [show (98304 * k + 72569) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 217708) = 147456 * k + 108854 := by
    unfold C
    simp [show (294912 * k + 217708) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 108854) = 73728 * k + 54427 := by
    unfold C
    simp [show (147456 * k + 108854) % 2 = 0 by omega]
    omega
  have h6 : C (73728 * k + 54427) = 221184 * k + 163282 := by
    unfold C
    simp [show (73728 * k + 54427) % 2 ≠ 0 by omega]
    omega
  have h7 : C (221184 * k + 163282) = 110592 * k + 81641 := by
    unfold C
    simp [show (221184 * k + 163282) % 2 = 0 by omega]
    omega
  have h8 : C (110592 * k + 81641) = 331776 * k + 244924 := by
    unfold C
    simp [show (110592 * k + 81641) % 2 ≠ 0 by omega]
    omega
  have h9 : C (331776 * k + 244924) = 165888 * k + 122462 := by
    unfold C
    simp [show (331776 * k + 244924) % 2 = 0 by omega]
    omega
  have h10 : C (165888 * k + 122462) = 82944 * k + 61231 := by
    unfold C
    simp [show (165888 * k + 122462) % 2 = 0 by omega]
    omega
  have h11 : C (82944 * k + 61231) = 248832 * k + 183694 := by
    unfold C
    simp [show (82944 * k + 61231) % 2 ≠ 0 by omega]
    omega
  have h12 : C (248832 * k + 183694) = 124416 * k + 91847 := by
    unfold C
    simp [show (248832 * k + 183694) % 2 = 0 by omega]
    omega
  have h13 : C (124416 * k + 91847) = 373248 * k + 275542 := by
    unfold C
    simp [show (124416 * k + 91847) % 2 ≠ 0 by omega]
    omega
  have h14 : C (373248 * k + 275542) = 186624 * k + 137771 := by
    unfold C
    simp [show (373248 * k + 275542) % 2 = 0 by omega]
    omega
  have h15 : C (186624 * k + 137771) = 559872 * k + 413314 := by
    unfold C
    simp [show (186624 * k + 137771) % 2 ≠ 0 by omega]
    omega
  have h16 : C (559872 * k + 413314) = 279936 * k + 206657 := by
    unfold C
    simp [show (559872 * k + 413314) % 2 = 0 by omega]
    omega
  have h17 : C (279936 * k + 206657) = 839808 * k + 619972 := by
    unfold C
    simp [show (279936 * k + 206657) % 2 ≠ 0 by omega]
    omega
  have h18 : C (839808 * k + 619972) = 419904 * k + 309986 := by
    unfold C
    simp [show (839808 * k + 619972) % 2 = 0 by omega]
    omega
  have h19 : C (419904 * k + 309986) = 209952 * k + 154993 := by
    unfold C
    simp [show (419904 * k + 309986) % 2 = 0 by omega]
    omega
  have h20 : C (209952 * k + 154993) = 629856 * k + 464980 := by
    unfold C
    simp [show (209952 * k + 154993) % 2 ≠ 0 by omega]
    omega
  have h21 : C (629856 * k + 464980) = 314928 * k + 232490 := by
    unfold C
    simp [show (629856 * k + 464980) % 2 = 0 by omega]
    omega
  have h22 : C (314928 * k + 232490) = 157464 * k + 116245 := by
    unfold C
    simp [show (314928 * k + 232490) % 2 = 0 by omega]
    omega
  have h23 : C (157464 * k + 116245) = 472392 * k + 348736 := by
    unfold C
    simp [show (157464 * k + 116245) % 2 ≠ 0 by omega]
    omega
  have h24 : C (472392 * k + 348736) = 236196 * k + 174368 := by
    unfold C
    simp [show (472392 * k + 348736) % 2 = 0 by omega]
    omega
  have h25 : C (236196 * k + 174368) = 118098 * k + 87184 := by
    unfold C
    simp [show (236196 * k + 174368) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 87184) = 59049 * k + 43592 := by
    unfold C
    simp [show (118098 * k + 87184) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 48379) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 48379)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_48879 : ∀ k : Nat,
    iterate (65536 * k + 48879) 26 = 59049 * k + 44042 ∧
      59049 * k + 44042 < 65536 * k + 48879 := by
  intro k
  have h1 : C (65536 * k + 48879) = 196608 * k + 146638 := by
    unfold C
    simp [show (65536 * k + 48879) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 146638) = 98304 * k + 73319 := by
    unfold C
    simp [show (196608 * k + 146638) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 73319) = 294912 * k + 219958 := by
    unfold C
    simp [show (98304 * k + 73319) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 219958) = 147456 * k + 109979 := by
    unfold C
    simp [show (294912 * k + 219958) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 109979) = 442368 * k + 329938 := by
    unfold C
    simp [show (147456 * k + 109979) % 2 ≠ 0 by omega]
    omega
  have h6 : C (442368 * k + 329938) = 221184 * k + 164969 := by
    unfold C
    simp [show (442368 * k + 329938) % 2 = 0 by omega]
    omega
  have h7 : C (221184 * k + 164969) = 663552 * k + 494908 := by
    unfold C
    simp [show (221184 * k + 164969) % 2 ≠ 0 by omega]
    omega
  have h8 : C (663552 * k + 494908) = 331776 * k + 247454 := by
    unfold C
    simp [show (663552 * k + 494908) % 2 = 0 by omega]
    omega
  have h9 : C (331776 * k + 247454) = 165888 * k + 123727 := by
    unfold C
    simp [show (331776 * k + 247454) % 2 = 0 by omega]
    omega
  have h10 : C (165888 * k + 123727) = 497664 * k + 371182 := by
    unfold C
    simp [show (165888 * k + 123727) % 2 ≠ 0 by omega]
    omega
  have h11 : C (497664 * k + 371182) = 248832 * k + 185591 := by
    unfold C
    simp [show (497664 * k + 371182) % 2 = 0 by omega]
    omega
  have h12 : C (248832 * k + 185591) = 746496 * k + 556774 := by
    unfold C
    simp [show (248832 * k + 185591) % 2 ≠ 0 by omega]
    omega
  have h13 : C (746496 * k + 556774) = 373248 * k + 278387 := by
    unfold C
    simp [show (746496 * k + 556774) % 2 = 0 by omega]
    omega
  have h14 : C (373248 * k + 278387) = 1119744 * k + 835162 := by
    unfold C
    simp [show (373248 * k + 278387) % 2 ≠ 0 by omega]
    omega
  have h15 : C (1119744 * k + 835162) = 559872 * k + 417581 := by
    unfold C
    simp [show (1119744 * k + 835162) % 2 = 0 by omega]
    omega
  have h16 : C (559872 * k + 417581) = 1679616 * k + 1252744 := by
    unfold C
    simp [show (559872 * k + 417581) % 2 ≠ 0 by omega]
    omega
  have h17 : C (1679616 * k + 1252744) = 839808 * k + 626372 := by
    unfold C
    simp [show (1679616 * k + 1252744) % 2 = 0 by omega]
    omega
  have h18 : C (839808 * k + 626372) = 419904 * k + 313186 := by
    unfold C
    simp [show (839808 * k + 626372) % 2 = 0 by omega]
    omega
  have h19 : C (419904 * k + 313186) = 209952 * k + 156593 := by
    unfold C
    simp [show (419904 * k + 313186) % 2 = 0 by omega]
    omega
  have h20 : C (209952 * k + 156593) = 629856 * k + 469780 := by
    unfold C
    simp [show (209952 * k + 156593) % 2 ≠ 0 by omega]
    omega
  have h21 : C (629856 * k + 469780) = 314928 * k + 234890 := by
    unfold C
    simp [show (629856 * k + 469780) % 2 = 0 by omega]
    omega
  have h22 : C (314928 * k + 234890) = 157464 * k + 117445 := by
    unfold C
    simp [show (314928 * k + 234890) % 2 = 0 by omega]
    omega
  have h23 : C (157464 * k + 117445) = 472392 * k + 352336 := by
    unfold C
    simp [show (157464 * k + 117445) % 2 ≠ 0 by omega]
    omega
  have h24 : C (472392 * k + 352336) = 236196 * k + 176168 := by
    unfold C
    simp [show (472392 * k + 352336) % 2 = 0 by omega]
    omega
  have h25 : C (236196 * k + 176168) = 118098 * k + 88084 := by
    unfold C
    simp [show (236196 * k + 176168) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 88084) = 59049 * k + 44042 := by
    unfold C
    simp [show (118098 * k + 88084) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 48879) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 48879)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_48987 : ∀ k : Nat,
    iterate (65536 * k + 48987) 26 = 59049 * k + 44140 ∧
      59049 * k + 44140 < 65536 * k + 48987 := by
  intro k
  have h1 : C (65536 * k + 48987) = 196608 * k + 146962 := by
    unfold C
    simp [show (65536 * k + 48987) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 146962) = 98304 * k + 73481 := by
    unfold C
    simp [show (196608 * k + 146962) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 73481) = 294912 * k + 220444 := by
    unfold C
    simp [show (98304 * k + 73481) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 220444) = 147456 * k + 110222 := by
    unfold C
    simp [show (294912 * k + 220444) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 110222) = 73728 * k + 55111 := by
    unfold C
    simp [show (147456 * k + 110222) % 2 = 0 by omega]
    omega
  have h6 : C (73728 * k + 55111) = 221184 * k + 165334 := by
    unfold C
    simp [show (73728 * k + 55111) % 2 ≠ 0 by omega]
    omega
  have h7 : C (221184 * k + 165334) = 110592 * k + 82667 := by
    unfold C
    simp [show (221184 * k + 165334) % 2 = 0 by omega]
    omega
  have h8 : C (110592 * k + 82667) = 331776 * k + 248002 := by
    unfold C
    simp [show (110592 * k + 82667) % 2 ≠ 0 by omega]
    omega
  have h9 : C (331776 * k + 248002) = 165888 * k + 124001 := by
    unfold C
    simp [show (331776 * k + 248002) % 2 = 0 by omega]
    omega
  have h10 : C (165888 * k + 124001) = 497664 * k + 372004 := by
    unfold C
    simp [show (165888 * k + 124001) % 2 ≠ 0 by omega]
    omega
  have h11 : C (497664 * k + 372004) = 248832 * k + 186002 := by
    unfold C
    simp [show (497664 * k + 372004) % 2 = 0 by omega]
    omega
  have h12 : C (248832 * k + 186002) = 124416 * k + 93001 := by
    unfold C
    simp [show (248832 * k + 186002) % 2 = 0 by omega]
    omega
  have h13 : C (124416 * k + 93001) = 373248 * k + 279004 := by
    unfold C
    simp [show (124416 * k + 93001) % 2 ≠ 0 by omega]
    omega
  have h14 : C (373248 * k + 279004) = 186624 * k + 139502 := by
    unfold C
    simp [show (373248 * k + 279004) % 2 = 0 by omega]
    omega
  have h15 : C (186624 * k + 139502) = 93312 * k + 69751 := by
    unfold C
    simp [show (186624 * k + 139502) % 2 = 0 by omega]
    omega
  have h16 : C (93312 * k + 69751) = 279936 * k + 209254 := by
    unfold C
    simp [show (93312 * k + 69751) % 2 ≠ 0 by omega]
    omega
  have h17 : C (279936 * k + 209254) = 139968 * k + 104627 := by
    unfold C
    simp [show (279936 * k + 209254) % 2 = 0 by omega]
    omega
  have h18 : C (139968 * k + 104627) = 419904 * k + 313882 := by
    unfold C
    simp [show (139968 * k + 104627) % 2 ≠ 0 by omega]
    omega
  have h19 : C (419904 * k + 313882) = 209952 * k + 156941 := by
    unfold C
    simp [show (419904 * k + 313882) % 2 = 0 by omega]
    omega
  have h20 : C (209952 * k + 156941) = 629856 * k + 470824 := by
    unfold C
    simp [show (209952 * k + 156941) % 2 ≠ 0 by omega]
    omega
  have h21 : C (629856 * k + 470824) = 314928 * k + 235412 := by
    unfold C
    simp [show (629856 * k + 470824) % 2 = 0 by omega]
    omega
  have h22 : C (314928 * k + 235412) = 157464 * k + 117706 := by
    unfold C
    simp [show (314928 * k + 235412) % 2 = 0 by omega]
    omega
  have h23 : C (157464 * k + 117706) = 78732 * k + 58853 := by
    unfold C
    simp [show (157464 * k + 117706) % 2 = 0 by omega]
    omega
  have h24 : C (78732 * k + 58853) = 236196 * k + 176560 := by
    unfold C
    simp [show (78732 * k + 58853) % 2 ≠ 0 by omega]
    omega
  have h25 : C (236196 * k + 176560) = 118098 * k + 88280 := by
    unfold C
    simp [show (236196 * k + 176560) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 88280) = 59049 * k + 44140 := by
    unfold C
    simp [show (118098 * k + 88280) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 48987) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 48987)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_49135 : ∀ k : Nat,
    iterate (65536 * k + 49135) 26 = 59049 * k + 44273 ∧
      59049 * k + 44273 < 65536 * k + 49135 := by
  intro k
  have h1 : C (65536 * k + 49135) = 196608 * k + 147406 := by
    unfold C
    simp [show (65536 * k + 49135) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 147406) = 98304 * k + 73703 := by
    unfold C
    simp [show (196608 * k + 147406) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 73703) = 294912 * k + 221110 := by
    unfold C
    simp [show (98304 * k + 73703) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 221110) = 147456 * k + 110555 := by
    unfold C
    simp [show (294912 * k + 221110) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 110555) = 442368 * k + 331666 := by
    unfold C
    simp [show (147456 * k + 110555) % 2 ≠ 0 by omega]
    omega
  have h6 : C (442368 * k + 331666) = 221184 * k + 165833 := by
    unfold C
    simp [show (442368 * k + 331666) % 2 = 0 by omega]
    omega
  have h7 : C (221184 * k + 165833) = 663552 * k + 497500 := by
    unfold C
    simp [show (221184 * k + 165833) % 2 ≠ 0 by omega]
    omega
  have h8 : C (663552 * k + 497500) = 331776 * k + 248750 := by
    unfold C
    simp [show (663552 * k + 497500) % 2 = 0 by omega]
    omega
  have h9 : C (331776 * k + 248750) = 165888 * k + 124375 := by
    unfold C
    simp [show (331776 * k + 248750) % 2 = 0 by omega]
    omega
  have h10 : C (165888 * k + 124375) = 497664 * k + 373126 := by
    unfold C
    simp [show (165888 * k + 124375) % 2 ≠ 0 by omega]
    omega
  have h11 : C (497664 * k + 373126) = 248832 * k + 186563 := by
    unfold C
    simp [show (497664 * k + 373126) % 2 = 0 by omega]
    omega
  have h12 : C (248832 * k + 186563) = 746496 * k + 559690 := by
    unfold C
    simp [show (248832 * k + 186563) % 2 ≠ 0 by omega]
    omega
  have h13 : C (746496 * k + 559690) = 373248 * k + 279845 := by
    unfold C
    simp [show (746496 * k + 559690) % 2 = 0 by omega]
    omega
  have h14 : C (373248 * k + 279845) = 1119744 * k + 839536 := by
    unfold C
    simp [show (373248 * k + 279845) % 2 ≠ 0 by omega]
    omega
  have h15 : C (1119744 * k + 839536) = 559872 * k + 419768 := by
    unfold C
    simp [show (1119744 * k + 839536) % 2 = 0 by omega]
    omega
  have h16 : C (559872 * k + 419768) = 279936 * k + 209884 := by
    unfold C
    simp [show (559872 * k + 419768) % 2 = 0 by omega]
    omega
  have h17 : C (279936 * k + 209884) = 139968 * k + 104942 := by
    unfold C
    simp [show (279936 * k + 209884) % 2 = 0 by omega]
    omega
  have h18 : C (139968 * k + 104942) = 69984 * k + 52471 := by
    unfold C
    simp [show (139968 * k + 104942) % 2 = 0 by omega]
    omega
  have h19 : C (69984 * k + 52471) = 209952 * k + 157414 := by
    unfold C
    simp [show (69984 * k + 52471) % 2 ≠ 0 by omega]
    omega
  have h20 : C (209952 * k + 157414) = 104976 * k + 78707 := by
    unfold C
    simp [show (209952 * k + 157414) % 2 = 0 by omega]
    omega
  have h21 : C (104976 * k + 78707) = 314928 * k + 236122 := by
    unfold C
    simp [show (104976 * k + 78707) % 2 ≠ 0 by omega]
    omega
  have h22 : C (314928 * k + 236122) = 157464 * k + 118061 := by
    unfold C
    simp [show (314928 * k + 236122) % 2 = 0 by omega]
    omega
  have h23 : C (157464 * k + 118061) = 472392 * k + 354184 := by
    unfold C
    simp [show (157464 * k + 118061) % 2 ≠ 0 by omega]
    omega
  have h24 : C (472392 * k + 354184) = 236196 * k + 177092 := by
    unfold C
    simp [show (472392 * k + 354184) % 2 = 0 by omega]
    omega
  have h25 : C (236196 * k + 177092) = 118098 * k + 88546 := by
    unfold C
    simp [show (236196 * k + 177092) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 88546) = 59049 * k + 44273 := by
    unfold C
    simp [show (118098 * k + 88546) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 49135) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 49135)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_49215 : ∀ k : Nat,
    iterate (65536 * k + 49215) 26 = 59049 * k + 44345 ∧
      59049 * k + 44345 < 65536 * k + 49215 := by
  intro k
  have h1 : C (65536 * k + 49215) = 196608 * k + 147646 := by
    unfold C
    simp [show (65536 * k + 49215) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 147646) = 98304 * k + 73823 := by
    unfold C
    simp [show (196608 * k + 147646) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 73823) = 294912 * k + 221470 := by
    unfold C
    simp [show (98304 * k + 73823) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 221470) = 147456 * k + 110735 := by
    unfold C
    simp [show (294912 * k + 221470) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 110735) = 442368 * k + 332206 := by
    unfold C
    simp [show (147456 * k + 110735) % 2 ≠ 0 by omega]
    omega
  have h6 : C (442368 * k + 332206) = 221184 * k + 166103 := by
    unfold C
    simp [show (442368 * k + 332206) % 2 = 0 by omega]
    omega
  have h7 : C (221184 * k + 166103) = 663552 * k + 498310 := by
    unfold C
    simp [show (221184 * k + 166103) % 2 ≠ 0 by omega]
    omega
  have h8 : C (663552 * k + 498310) = 331776 * k + 249155 := by
    unfold C
    simp [show (663552 * k + 498310) % 2 = 0 by omega]
    omega
  have h9 : C (331776 * k + 249155) = 995328 * k + 747466 := by
    unfold C
    simp [show (331776 * k + 249155) % 2 ≠ 0 by omega]
    omega
  have h10 : C (995328 * k + 747466) = 497664 * k + 373733 := by
    unfold C
    simp [show (995328 * k + 747466) % 2 = 0 by omega]
    omega
  have h11 : C (497664 * k + 373733) = 1492992 * k + 1121200 := by
    unfold C
    simp [show (497664 * k + 373733) % 2 ≠ 0 by omega]
    omega
  have h12 : C (1492992 * k + 1121200) = 746496 * k + 560600 := by
    unfold C
    simp [show (1492992 * k + 1121200) % 2 = 0 by omega]
    omega
  have h13 : C (746496 * k + 560600) = 373248 * k + 280300 := by
    unfold C
    simp [show (746496 * k + 560600) % 2 = 0 by omega]
    omega
  have h14 : C (373248 * k + 280300) = 186624 * k + 140150 := by
    unfold C
    simp [show (373248 * k + 280300) % 2 = 0 by omega]
    omega
  have h15 : C (186624 * k + 140150) = 93312 * k + 70075 := by
    unfold C
    simp [show (186624 * k + 140150) % 2 = 0 by omega]
    omega
  have h16 : C (93312 * k + 70075) = 279936 * k + 210226 := by
    unfold C
    simp [show (93312 * k + 70075) % 2 ≠ 0 by omega]
    omega
  have h17 : C (279936 * k + 210226) = 139968 * k + 105113 := by
    unfold C
    simp [show (279936 * k + 210226) % 2 = 0 by omega]
    omega
  have h18 : C (139968 * k + 105113) = 419904 * k + 315340 := by
    unfold C
    simp [show (139968 * k + 105113) % 2 ≠ 0 by omega]
    omega
  have h19 : C (419904 * k + 315340) = 209952 * k + 157670 := by
    unfold C
    simp [show (419904 * k + 315340) % 2 = 0 by omega]
    omega
  have h20 : C (209952 * k + 157670) = 104976 * k + 78835 := by
    unfold C
    simp [show (209952 * k + 157670) % 2 = 0 by omega]
    omega
  have h21 : C (104976 * k + 78835) = 314928 * k + 236506 := by
    unfold C
    simp [show (104976 * k + 78835) % 2 ≠ 0 by omega]
    omega
  have h22 : C (314928 * k + 236506) = 157464 * k + 118253 := by
    unfold C
    simp [show (314928 * k + 236506) % 2 = 0 by omega]
    omega
  have h23 : C (157464 * k + 118253) = 472392 * k + 354760 := by
    unfold C
    simp [show (157464 * k + 118253) % 2 ≠ 0 by omega]
    omega
  have h24 : C (472392 * k + 354760) = 236196 * k + 177380 := by
    unfold C
    simp [show (472392 * k + 354760) % 2 = 0 by omega]
    omega
  have h25 : C (236196 * k + 177380) = 118098 * k + 88690 := by
    unfold C
    simp [show (236196 * k + 177380) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 88690) = 59049 * k + 44345 := by
    unfold C
    simp [show (118098 * k + 88690) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 49215) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 49215)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_49255 : ∀ k : Nat,
    iterate (65536 * k + 49255) 26 = 59049 * k + 44381 ∧
      59049 * k + 44381 < 65536 * k + 49255 := by
  intro k
  have h1 : C (65536 * k + 49255) = 196608 * k + 147766 := by
    unfold C
    simp [show (65536 * k + 49255) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 147766) = 98304 * k + 73883 := by
    unfold C
    simp [show (196608 * k + 147766) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 73883) = 294912 * k + 221650 := by
    unfold C
    simp [show (98304 * k + 73883) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 221650) = 147456 * k + 110825 := by
    unfold C
    simp [show (294912 * k + 221650) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 110825) = 442368 * k + 332476 := by
    unfold C
    simp [show (147456 * k + 110825) % 2 ≠ 0 by omega]
    omega
  have h6 : C (442368 * k + 332476) = 221184 * k + 166238 := by
    unfold C
    simp [show (442368 * k + 332476) % 2 = 0 by omega]
    omega
  have h7 : C (221184 * k + 166238) = 110592 * k + 83119 := by
    unfold C
    simp [show (221184 * k + 166238) % 2 = 0 by omega]
    omega
  have h8 : C (110592 * k + 83119) = 331776 * k + 249358 := by
    unfold C
    simp [show (110592 * k + 83119) % 2 ≠ 0 by omega]
    omega
  have h9 : C (331776 * k + 249358) = 165888 * k + 124679 := by
    unfold C
    simp [show (331776 * k + 249358) % 2 = 0 by omega]
    omega
  have h10 : C (165888 * k + 124679) = 497664 * k + 374038 := by
    unfold C
    simp [show (165888 * k + 124679) % 2 ≠ 0 by omega]
    omega
  have h11 : C (497664 * k + 374038) = 248832 * k + 187019 := by
    unfold C
    simp [show (497664 * k + 374038) % 2 = 0 by omega]
    omega
  have h12 : C (248832 * k + 187019) = 746496 * k + 561058 := by
    unfold C
    simp [show (248832 * k + 187019) % 2 ≠ 0 by omega]
    omega
  have h13 : C (746496 * k + 561058) = 373248 * k + 280529 := by
    unfold C
    simp [show (746496 * k + 561058) % 2 = 0 by omega]
    omega
  have h14 : C (373248 * k + 280529) = 1119744 * k + 841588 := by
    unfold C
    simp [show (373248 * k + 280529) % 2 ≠ 0 by omega]
    omega
  have h15 : C (1119744 * k + 841588) = 559872 * k + 420794 := by
    unfold C
    simp [show (1119744 * k + 841588) % 2 = 0 by omega]
    omega
  have h16 : C (559872 * k + 420794) = 279936 * k + 210397 := by
    unfold C
    simp [show (559872 * k + 420794) % 2 = 0 by omega]
    omega
  have h17 : C (279936 * k + 210397) = 839808 * k + 631192 := by
    unfold C
    simp [show (279936 * k + 210397) % 2 ≠ 0 by omega]
    omega
  have h18 : C (839808 * k + 631192) = 419904 * k + 315596 := by
    unfold C
    simp [show (839808 * k + 631192) % 2 = 0 by omega]
    omega
  have h19 : C (419904 * k + 315596) = 209952 * k + 157798 := by
    unfold C
    simp [show (419904 * k + 315596) % 2 = 0 by omega]
    omega
  have h20 : C (209952 * k + 157798) = 104976 * k + 78899 := by
    unfold C
    simp [show (209952 * k + 157798) % 2 = 0 by omega]
    omega
  have h21 : C (104976 * k + 78899) = 314928 * k + 236698 := by
    unfold C
    simp [show (104976 * k + 78899) % 2 ≠ 0 by omega]
    omega
  have h22 : C (314928 * k + 236698) = 157464 * k + 118349 := by
    unfold C
    simp [show (314928 * k + 236698) % 2 = 0 by omega]
    omega
  have h23 : C (157464 * k + 118349) = 472392 * k + 355048 := by
    unfold C
    simp [show (157464 * k + 118349) % 2 ≠ 0 by omega]
    omega
  have h24 : C (472392 * k + 355048) = 236196 * k + 177524 := by
    unfold C
    simp [show (472392 * k + 355048) % 2 = 0 by omega]
    omega
  have h25 : C (236196 * k + 177524) = 118098 * k + 88762 := by
    unfold C
    simp [show (236196 * k + 177524) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 88762) = 59049 * k + 44381 := by
    unfold C
    simp [show (118098 * k + 88762) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 49255) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 49255)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_49311 : ∀ k : Nat,
    iterate (65536 * k + 49311) 26 = 59049 * k + 44431 ∧
      59049 * k + 44431 < 65536 * k + 49311 := by
  intro k
  have h1 : C (65536 * k + 49311) = 196608 * k + 147934 := by
    unfold C
    simp [show (65536 * k + 49311) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 147934) = 98304 * k + 73967 := by
    unfold C
    simp [show (196608 * k + 147934) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 73967) = 294912 * k + 221902 := by
    unfold C
    simp [show (98304 * k + 73967) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 221902) = 147456 * k + 110951 := by
    unfold C
    simp [show (294912 * k + 221902) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 110951) = 442368 * k + 332854 := by
    unfold C
    simp [show (147456 * k + 110951) % 2 ≠ 0 by omega]
    omega
  have h6 : C (442368 * k + 332854) = 221184 * k + 166427 := by
    unfold C
    simp [show (442368 * k + 332854) % 2 = 0 by omega]
    omega
  have h7 : C (221184 * k + 166427) = 663552 * k + 499282 := by
    unfold C
    simp [show (221184 * k + 166427) % 2 ≠ 0 by omega]
    omega
  have h8 : C (663552 * k + 499282) = 331776 * k + 249641 := by
    unfold C
    simp [show (663552 * k + 499282) % 2 = 0 by omega]
    omega
  have h9 : C (331776 * k + 249641) = 995328 * k + 748924 := by
    unfold C
    simp [show (331776 * k + 249641) % 2 ≠ 0 by omega]
    omega
  have h10 : C (995328 * k + 748924) = 497664 * k + 374462 := by
    unfold C
    simp [show (995328 * k + 748924) % 2 = 0 by omega]
    omega
  have h11 : C (497664 * k + 374462) = 248832 * k + 187231 := by
    unfold C
    simp [show (497664 * k + 374462) % 2 = 0 by omega]
    omega
  have h12 : C (248832 * k + 187231) = 746496 * k + 561694 := by
    unfold C
    simp [show (248832 * k + 187231) % 2 ≠ 0 by omega]
    omega
  have h13 : C (746496 * k + 561694) = 373248 * k + 280847 := by
    unfold C
    simp [show (746496 * k + 561694) % 2 = 0 by omega]
    omega
  have h14 : C (373248 * k + 280847) = 1119744 * k + 842542 := by
    unfold C
    simp [show (373248 * k + 280847) % 2 ≠ 0 by omega]
    omega
  have h15 : C (1119744 * k + 842542) = 559872 * k + 421271 := by
    unfold C
    simp [show (1119744 * k + 842542) % 2 = 0 by omega]
    omega
  have h16 : C (559872 * k + 421271) = 1679616 * k + 1263814 := by
    unfold C
    simp [show (559872 * k + 421271) % 2 ≠ 0 by omega]
    omega
  have h17 : C (1679616 * k + 1263814) = 839808 * k + 631907 := by
    unfold C
    simp [show (1679616 * k + 1263814) % 2 = 0 by omega]
    omega
  have h18 : C (839808 * k + 631907) = 2519424 * k + 1895722 := by
    unfold C
    simp [show (839808 * k + 631907) % 2 ≠ 0 by omega]
    omega
  have h19 : C (2519424 * k + 1895722) = 1259712 * k + 947861 := by
    unfold C
    simp [show (2519424 * k + 1895722) % 2 = 0 by omega]
    omega
  have h20 : C (1259712 * k + 947861) = 3779136 * k + 2843584 := by
    unfold C
    simp [show (1259712 * k + 947861) % 2 ≠ 0 by omega]
    omega
  have h21 : C (3779136 * k + 2843584) = 1889568 * k + 1421792 := by
    unfold C
    simp [show (3779136 * k + 2843584) % 2 = 0 by omega]
    omega
  have h22 : C (1889568 * k + 1421792) = 944784 * k + 710896 := by
    unfold C
    simp [show (1889568 * k + 1421792) % 2 = 0 by omega]
    omega
  have h23 : C (944784 * k + 710896) = 472392 * k + 355448 := by
    unfold C
    simp [show (944784 * k + 710896) % 2 = 0 by omega]
    omega
  have h24 : C (472392 * k + 355448) = 236196 * k + 177724 := by
    unfold C
    simp [show (472392 * k + 355448) % 2 = 0 by omega]
    omega
  have h25 : C (236196 * k + 177724) = 118098 * k + 88862 := by
    unfold C
    simp [show (236196 * k + 177724) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 88862) = 59049 * k + 44431 := by
    unfold C
    simp [show (118098 * k + 88862) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 49311) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 49311)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_49563 : ∀ k : Nat,
    iterate (65536 * k + 49563) 26 = 59049 * k + 44659 ∧
      59049 * k + 44659 < 65536 * k + 49563 := by
  intro k
  have h1 : C (65536 * k + 49563) = 196608 * k + 148690 := by
    unfold C
    simp [show (65536 * k + 49563) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 148690) = 98304 * k + 74345 := by
    unfold C
    simp [show (196608 * k + 148690) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 74345) = 294912 * k + 223036 := by
    unfold C
    simp [show (98304 * k + 74345) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 223036) = 147456 * k + 111518 := by
    unfold C
    simp [show (294912 * k + 223036) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 111518) = 73728 * k + 55759 := by
    unfold C
    simp [show (147456 * k + 111518) % 2 = 0 by omega]
    omega
  have h6 : C (73728 * k + 55759) = 221184 * k + 167278 := by
    unfold C
    simp [show (73728 * k + 55759) % 2 ≠ 0 by omega]
    omega
  have h7 : C (221184 * k + 167278) = 110592 * k + 83639 := by
    unfold C
    simp [show (221184 * k + 167278) % 2 = 0 by omega]
    omega
  have h8 : C (110592 * k + 83639) = 331776 * k + 250918 := by
    unfold C
    simp [show (110592 * k + 83639) % 2 ≠ 0 by omega]
    omega
  have h9 : C (331776 * k + 250918) = 165888 * k + 125459 := by
    unfold C
    simp [show (331776 * k + 250918) % 2 = 0 by omega]
    omega
  have h10 : C (165888 * k + 125459) = 497664 * k + 376378 := by
    unfold C
    simp [show (165888 * k + 125459) % 2 ≠ 0 by omega]
    omega
  have h11 : C (497664 * k + 376378) = 248832 * k + 188189 := by
    unfold C
    simp [show (497664 * k + 376378) % 2 = 0 by omega]
    omega
  have h12 : C (248832 * k + 188189) = 746496 * k + 564568 := by
    unfold C
    simp [show (248832 * k + 188189) % 2 ≠ 0 by omega]
    omega
  have h13 : C (746496 * k + 564568) = 373248 * k + 282284 := by
    unfold C
    simp [show (746496 * k + 564568) % 2 = 0 by omega]
    omega
  have h14 : C (373248 * k + 282284) = 186624 * k + 141142 := by
    unfold C
    simp [show (373248 * k + 282284) % 2 = 0 by omega]
    omega
  have h15 : C (186624 * k + 141142) = 93312 * k + 70571 := by
    unfold C
    simp [show (186624 * k + 141142) % 2 = 0 by omega]
    omega
  have h16 : C (93312 * k + 70571) = 279936 * k + 211714 := by
    unfold C
    simp [show (93312 * k + 70571) % 2 ≠ 0 by omega]
    omega
  have h17 : C (279936 * k + 211714) = 139968 * k + 105857 := by
    unfold C
    simp [show (279936 * k + 211714) % 2 = 0 by omega]
    omega
  have h18 : C (139968 * k + 105857) = 419904 * k + 317572 := by
    unfold C
    simp [show (139968 * k + 105857) % 2 ≠ 0 by omega]
    omega
  have h19 : C (419904 * k + 317572) = 209952 * k + 158786 := by
    unfold C
    simp [show (419904 * k + 317572) % 2 = 0 by omega]
    omega
  have h20 : C (209952 * k + 158786) = 104976 * k + 79393 := by
    unfold C
    simp [show (209952 * k + 158786) % 2 = 0 by omega]
    omega
  have h21 : C (104976 * k + 79393) = 314928 * k + 238180 := by
    unfold C
    simp [show (104976 * k + 79393) % 2 ≠ 0 by omega]
    omega
  have h22 : C (314928 * k + 238180) = 157464 * k + 119090 := by
    unfold C
    simp [show (314928 * k + 238180) % 2 = 0 by omega]
    omega
  have h23 : C (157464 * k + 119090) = 78732 * k + 59545 := by
    unfold C
    simp [show (157464 * k + 119090) % 2 = 0 by omega]
    omega
  have h24 : C (78732 * k + 59545) = 236196 * k + 178636 := by
    unfold C
    simp [show (78732 * k + 59545) % 2 ≠ 0 by omega]
    omega
  have h25 : C (236196 * k + 178636) = 118098 * k + 89318 := by
    unfold C
    simp [show (236196 * k + 178636) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 89318) = 59049 * k + 44659 := by
    unfold C
    simp [show (118098 * k + 89318) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 49563) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 49563)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_49567 : ∀ k : Nat,
    iterate (65536 * k + 49567) 26 = 59049 * k + 44662 ∧
      59049 * k + 44662 < 65536 * k + 49567 := by
  intro k
  have h1 : C (65536 * k + 49567) = 196608 * k + 148702 := by
    unfold C
    simp [show (65536 * k + 49567) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 148702) = 98304 * k + 74351 := by
    unfold C
    simp [show (196608 * k + 148702) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 74351) = 294912 * k + 223054 := by
    unfold C
    simp [show (98304 * k + 74351) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 223054) = 147456 * k + 111527 := by
    unfold C
    simp [show (294912 * k + 223054) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 111527) = 442368 * k + 334582 := by
    unfold C
    simp [show (147456 * k + 111527) % 2 ≠ 0 by omega]
    omega
  have h6 : C (442368 * k + 334582) = 221184 * k + 167291 := by
    unfold C
    simp [show (442368 * k + 334582) % 2 = 0 by omega]
    omega
  have h7 : C (221184 * k + 167291) = 663552 * k + 501874 := by
    unfold C
    simp [show (221184 * k + 167291) % 2 ≠ 0 by omega]
    omega
  have h8 : C (663552 * k + 501874) = 331776 * k + 250937 := by
    unfold C
    simp [show (663552 * k + 501874) % 2 = 0 by omega]
    omega
  have h9 : C (331776 * k + 250937) = 995328 * k + 752812 := by
    unfold C
    simp [show (331776 * k + 250937) % 2 ≠ 0 by omega]
    omega
  have h10 : C (995328 * k + 752812) = 497664 * k + 376406 := by
    unfold C
    simp [show (995328 * k + 752812) % 2 = 0 by omega]
    omega
  have h11 : C (497664 * k + 376406) = 248832 * k + 188203 := by
    unfold C
    simp [show (497664 * k + 376406) % 2 = 0 by omega]
    omega
  have h12 : C (248832 * k + 188203) = 746496 * k + 564610 := by
    unfold C
    simp [show (248832 * k + 188203) % 2 ≠ 0 by omega]
    omega
  have h13 : C (746496 * k + 564610) = 373248 * k + 282305 := by
    unfold C
    simp [show (746496 * k + 564610) % 2 = 0 by omega]
    omega
  have h14 : C (373248 * k + 282305) = 1119744 * k + 846916 := by
    unfold C
    simp [show (373248 * k + 282305) % 2 ≠ 0 by omega]
    omega
  have h15 : C (1119744 * k + 846916) = 559872 * k + 423458 := by
    unfold C
    simp [show (1119744 * k + 846916) % 2 = 0 by omega]
    omega
  have h16 : C (559872 * k + 423458) = 279936 * k + 211729 := by
    unfold C
    simp [show (559872 * k + 423458) % 2 = 0 by omega]
    omega
  have h17 : C (279936 * k + 211729) = 839808 * k + 635188 := by
    unfold C
    simp [show (279936 * k + 211729) % 2 ≠ 0 by omega]
    omega
  have h18 : C (839808 * k + 635188) = 419904 * k + 317594 := by
    unfold C
    simp [show (839808 * k + 635188) % 2 = 0 by omega]
    omega
  have h19 : C (419904 * k + 317594) = 209952 * k + 158797 := by
    unfold C
    simp [show (419904 * k + 317594) % 2 = 0 by omega]
    omega
  have h20 : C (209952 * k + 158797) = 629856 * k + 476392 := by
    unfold C
    simp [show (209952 * k + 158797) % 2 ≠ 0 by omega]
    omega
  have h21 : C (629856 * k + 476392) = 314928 * k + 238196 := by
    unfold C
    simp [show (629856 * k + 476392) % 2 = 0 by omega]
    omega
  have h22 : C (314928 * k + 238196) = 157464 * k + 119098 := by
    unfold C
    simp [show (314928 * k + 238196) % 2 = 0 by omega]
    omega
  have h23 : C (157464 * k + 119098) = 78732 * k + 59549 := by
    unfold C
    simp [show (157464 * k + 119098) % 2 = 0 by omega]
    omega
  have h24 : C (78732 * k + 59549) = 236196 * k + 178648 := by
    unfold C
    simp [show (78732 * k + 59549) % 2 ≠ 0 by omega]
    omega
  have h25 : C (236196 * k + 178648) = 118098 * k + 89324 := by
    unfold C
    simp [show (236196 * k + 178648) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 89324) = 59049 * k + 44662 := by
    unfold C
    simp [show (118098 * k + 89324) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 49567) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 49567)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_49983 : ∀ k : Nat,
    iterate (65536 * k + 49983) 26 = 59049 * k + 45037 ∧
      59049 * k + 45037 < 65536 * k + 49983 := by
  intro k
  have h1 : C (65536 * k + 49983) = 196608 * k + 149950 := by
    unfold C
    simp [show (65536 * k + 49983) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 149950) = 98304 * k + 74975 := by
    unfold C
    simp [show (196608 * k + 149950) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 74975) = 294912 * k + 224926 := by
    unfold C
    simp [show (98304 * k + 74975) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 224926) = 147456 * k + 112463 := by
    unfold C
    simp [show (294912 * k + 224926) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 112463) = 442368 * k + 337390 := by
    unfold C
    simp [show (147456 * k + 112463) % 2 ≠ 0 by omega]
    omega
  have h6 : C (442368 * k + 337390) = 221184 * k + 168695 := by
    unfold C
    simp [show (442368 * k + 337390) % 2 = 0 by omega]
    omega
  have h7 : C (221184 * k + 168695) = 663552 * k + 506086 := by
    unfold C
    simp [show (221184 * k + 168695) % 2 ≠ 0 by omega]
    omega
  have h8 : C (663552 * k + 506086) = 331776 * k + 253043 := by
    unfold C
    simp [show (663552 * k + 506086) % 2 = 0 by omega]
    omega
  have h9 : C (331776 * k + 253043) = 995328 * k + 759130 := by
    unfold C
    simp [show (331776 * k + 253043) % 2 ≠ 0 by omega]
    omega
  have h10 : C (995328 * k + 759130) = 497664 * k + 379565 := by
    unfold C
    simp [show (995328 * k + 759130) % 2 = 0 by omega]
    omega
  have h11 : C (497664 * k + 379565) = 1492992 * k + 1138696 := by
    unfold C
    simp [show (497664 * k + 379565) % 2 ≠ 0 by omega]
    omega
  have h12 : C (1492992 * k + 1138696) = 746496 * k + 569348 := by
    unfold C
    simp [show (1492992 * k + 1138696) % 2 = 0 by omega]
    omega
  have h13 : C (746496 * k + 569348) = 373248 * k + 284674 := by
    unfold C
    simp [show (746496 * k + 569348) % 2 = 0 by omega]
    omega
  have h14 : C (373248 * k + 284674) = 186624 * k + 142337 := by
    unfold C
    simp [show (373248 * k + 284674) % 2 = 0 by omega]
    omega
  have h15 : C (186624 * k + 142337) = 559872 * k + 427012 := by
    unfold C
    simp [show (186624 * k + 142337) % 2 ≠ 0 by omega]
    omega
  have h16 : C (559872 * k + 427012) = 279936 * k + 213506 := by
    unfold C
    simp [show (559872 * k + 427012) % 2 = 0 by omega]
    omega
  have h17 : C (279936 * k + 213506) = 139968 * k + 106753 := by
    unfold C
    simp [show (279936 * k + 213506) % 2 = 0 by omega]
    omega
  have h18 : C (139968 * k + 106753) = 419904 * k + 320260 := by
    unfold C
    simp [show (139968 * k + 106753) % 2 ≠ 0 by omega]
    omega
  have h19 : C (419904 * k + 320260) = 209952 * k + 160130 := by
    unfold C
    simp [show (419904 * k + 320260) % 2 = 0 by omega]
    omega
  have h20 : C (209952 * k + 160130) = 104976 * k + 80065 := by
    unfold C
    simp [show (209952 * k + 160130) % 2 = 0 by omega]
    omega
  have h21 : C (104976 * k + 80065) = 314928 * k + 240196 := by
    unfold C
    simp [show (104976 * k + 80065) % 2 ≠ 0 by omega]
    omega
  have h22 : C (314928 * k + 240196) = 157464 * k + 120098 := by
    unfold C
    simp [show (314928 * k + 240196) % 2 = 0 by omega]
    omega
  have h23 : C (157464 * k + 120098) = 78732 * k + 60049 := by
    unfold C
    simp [show (157464 * k + 120098) % 2 = 0 by omega]
    omega
  have h24 : C (78732 * k + 60049) = 236196 * k + 180148 := by
    unfold C
    simp [show (78732 * k + 60049) % 2 ≠ 0 by omega]
    omega
  have h25 : C (236196 * k + 180148) = 118098 * k + 90074 := by
    unfold C
    simp [show (236196 * k + 180148) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 90074) = 59049 * k + 45037 := by
    unfold C
    simp [show (118098 * k + 90074) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 49983) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 49983)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_50143 : ∀ k : Nat,
    iterate (65536 * k + 50143) 26 = 59049 * k + 45181 ∧
      59049 * k + 45181 < 65536 * k + 50143 := by
  intro k
  have h1 : C (65536 * k + 50143) = 196608 * k + 150430 := by
    unfold C
    simp [show (65536 * k + 50143) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 150430) = 98304 * k + 75215 := by
    unfold C
    simp [show (196608 * k + 150430) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 75215) = 294912 * k + 225646 := by
    unfold C
    simp [show (98304 * k + 75215) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 225646) = 147456 * k + 112823 := by
    unfold C
    simp [show (294912 * k + 225646) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 112823) = 442368 * k + 338470 := by
    unfold C
    simp [show (147456 * k + 112823) % 2 ≠ 0 by omega]
    omega
  have h6 : C (442368 * k + 338470) = 221184 * k + 169235 := by
    unfold C
    simp [show (442368 * k + 338470) % 2 = 0 by omega]
    omega
  have h7 : C (221184 * k + 169235) = 663552 * k + 507706 := by
    unfold C
    simp [show (221184 * k + 169235) % 2 ≠ 0 by omega]
    omega
  have h8 : C (663552 * k + 507706) = 331776 * k + 253853 := by
    unfold C
    simp [show (663552 * k + 507706) % 2 = 0 by omega]
    omega
  have h9 : C (331776 * k + 253853) = 995328 * k + 761560 := by
    unfold C
    simp [show (331776 * k + 253853) % 2 ≠ 0 by omega]
    omega
  have h10 : C (995328 * k + 761560) = 497664 * k + 380780 := by
    unfold C
    simp [show (995328 * k + 761560) % 2 = 0 by omega]
    omega
  have h11 : C (497664 * k + 380780) = 248832 * k + 190390 := by
    unfold C
    simp [show (497664 * k + 380780) % 2 = 0 by omega]
    omega
  have h12 : C (248832 * k + 190390) = 124416 * k + 95195 := by
    unfold C
    simp [show (248832 * k + 190390) % 2 = 0 by omega]
    omega
  have h13 : C (124416 * k + 95195) = 373248 * k + 285586 := by
    unfold C
    simp [show (124416 * k + 95195) % 2 ≠ 0 by omega]
    omega
  have h14 : C (373248 * k + 285586) = 186624 * k + 142793 := by
    unfold C
    simp [show (373248 * k + 285586) % 2 = 0 by omega]
    omega
  have h15 : C (186624 * k + 142793) = 559872 * k + 428380 := by
    unfold C
    simp [show (186624 * k + 142793) % 2 ≠ 0 by omega]
    omega
  have h16 : C (559872 * k + 428380) = 279936 * k + 214190 := by
    unfold C
    simp [show (559872 * k + 428380) % 2 = 0 by omega]
    omega
  have h17 : C (279936 * k + 214190) = 139968 * k + 107095 := by
    unfold C
    simp [show (279936 * k + 214190) % 2 = 0 by omega]
    omega
  have h18 : C (139968 * k + 107095) = 419904 * k + 321286 := by
    unfold C
    simp [show (139968 * k + 107095) % 2 ≠ 0 by omega]
    omega
  have h19 : C (419904 * k + 321286) = 209952 * k + 160643 := by
    unfold C
    simp [show (419904 * k + 321286) % 2 = 0 by omega]
    omega
  have h20 : C (209952 * k + 160643) = 629856 * k + 481930 := by
    unfold C
    simp [show (209952 * k + 160643) % 2 ≠ 0 by omega]
    omega
  have h21 : C (629856 * k + 481930) = 314928 * k + 240965 := by
    unfold C
    simp [show (629856 * k + 481930) % 2 = 0 by omega]
    omega
  have h22 : C (314928 * k + 240965) = 944784 * k + 722896 := by
    unfold C
    simp [show (314928 * k + 240965) % 2 ≠ 0 by omega]
    omega
  have h23 : C (944784 * k + 722896) = 472392 * k + 361448 := by
    unfold C
    simp [show (944784 * k + 722896) % 2 = 0 by omega]
    omega
  have h24 : C (472392 * k + 361448) = 236196 * k + 180724 := by
    unfold C
    simp [show (472392 * k + 361448) % 2 = 0 by omega]
    omega
  have h25 : C (236196 * k + 180724) = 118098 * k + 90362 := by
    unfold C
    simp [show (236196 * k + 180724) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 90362) = 59049 * k + 45181 := by
    unfold C
    simp [show (118098 * k + 90362) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 50143) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 50143)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

end CollatzM16ShardR
