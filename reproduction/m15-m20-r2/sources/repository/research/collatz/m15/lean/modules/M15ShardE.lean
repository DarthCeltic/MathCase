import Mathlib.Data.Nat.Prime.Basic

namespace CollatzM15ShardE

def C (n : Nat) : Nat := if n % 2 = 0 then n / 2 else 3 * n + 1

def iterate (n t : Nat) : Nat := Nat.rec n (fun _ previous => C previous) t

theorem descent_mod32768_6175 : ∀ k : Nat, iterate (32768 * k + 6175) 24 = 19683 * k + 3710 ∧ 19683 * k + 3710 < 32768 * k + 6175 := by
  intro k
  have h1 : C (32768 * k + 6175) = 98304 * k + 18526 := by
    unfold C
    simp [show (32768 * k + 6175) % 2 ≠ 0 by omega]
    omega
  have h2 : C (98304 * k + 18526) = 49152 * k + 9263 := by
    unfold C
    simp [show (98304 * k + 18526) % 2 = 0 by omega]
    omega
  have h3 : C (49152 * k + 9263) = 147456 * k + 27790 := by
    unfold C
    simp [show (49152 * k + 9263) % 2 ≠ 0 by omega]
    omega
  have h4 : C (147456 * k + 27790) = 73728 * k + 13895 := by
    unfold C
    simp [show (147456 * k + 27790) % 2 = 0 by omega]
    omega
  have h5 : C (73728 * k + 13895) = 221184 * k + 41686 := by
    unfold C
    simp [show (73728 * k + 13895) % 2 ≠ 0 by omega]
    omega
  have h6 : C (221184 * k + 41686) = 110592 * k + 20843 := by
    unfold C
    simp [show (221184 * k + 41686) % 2 = 0 by omega]
    omega
  have h7 : C (110592 * k + 20843) = 331776 * k + 62530 := by
    unfold C
    simp [show (110592 * k + 20843) % 2 ≠ 0 by omega]
    omega
  have h8 : C (331776 * k + 62530) = 165888 * k + 31265 := by
    unfold C
    simp [show (331776 * k + 62530) % 2 = 0 by omega]
    omega
  have h9 : C (165888 * k + 31265) = 497664 * k + 93796 := by
    unfold C
    simp [show (165888 * k + 31265) % 2 ≠ 0 by omega]
    omega
  have h10 : C (497664 * k + 93796) = 248832 * k + 46898 := by
    unfold C
    simp [show (497664 * k + 93796) % 2 = 0 by omega]
    omega
  have h11 : C (248832 * k + 46898) = 124416 * k + 23449 := by
    unfold C
    simp [show (248832 * k + 46898) % 2 = 0 by omega]
    omega
  have h12 : C (124416 * k + 23449) = 373248 * k + 70348 := by
    unfold C
    simp [show (124416 * k + 23449) % 2 ≠ 0 by omega]
    omega
  have h13 : C (373248 * k + 70348) = 186624 * k + 35174 := by
    unfold C
    simp [show (373248 * k + 70348) % 2 = 0 by omega]
    omega
  have h14 : C (186624 * k + 35174) = 93312 * k + 17587 := by
    unfold C
    simp [show (186624 * k + 35174) % 2 = 0 by omega]
    omega
  have h15 : C (93312 * k + 17587) = 279936 * k + 52762 := by
    unfold C
    simp [show (93312 * k + 17587) % 2 ≠ 0 by omega]
    omega
  have h16 : C (279936 * k + 52762) = 139968 * k + 26381 := by
    unfold C
    simp [show (279936 * k + 52762) % 2 = 0 by omega]
    omega
  have h17 : C (139968 * k + 26381) = 419904 * k + 79144 := by
    unfold C
    simp [show (139968 * k + 26381) % 2 ≠ 0 by omega]
    omega
  have h18 : C (419904 * k + 79144) = 209952 * k + 39572 := by
    unfold C
    simp [show (419904 * k + 79144) % 2 = 0 by omega]
    omega
  have h19 : C (209952 * k + 39572) = 104976 * k + 19786 := by
    unfold C
    simp [show (209952 * k + 39572) % 2 = 0 by omega]
    omega
  have h20 : C (104976 * k + 19786) = 52488 * k + 9893 := by
    unfold C
    simp [show (104976 * k + 19786) % 2 = 0 by omega]
    omega
  have h21 : C (52488 * k + 9893) = 157464 * k + 29680 := by
    unfold C
    simp [show (52488 * k + 9893) % 2 ≠ 0 by omega]
    omega
  have h22 : C (157464 * k + 29680) = 78732 * k + 14840 := by
    unfold C
    simp [show (157464 * k + 29680) % 2 = 0 by omega]
    omega
  have h23 : C (78732 * k + 14840) = 39366 * k + 7420 := by
    unfold C
    simp [show (78732 * k + 14840) % 2 = 0 by omega]
    omega
  have h24 : C (39366 * k + 7420) = 19683 * k + 3710 := by
    unfold C
    simp [show (39366 * k + 7420) % 2 = 0 by omega]
    omega
  have hIter : iterate (32768 * k + 6175) 24 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (32768 * k + 6175)))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24]
  · omega

theorem descent_mod32768_6255 : ∀ k : Nat, iterate (32768 * k + 6255) 24 = 19683 * k + 3758 ∧ 19683 * k + 3758 < 32768 * k + 6255 := by
  intro k
  have h1 : C (32768 * k + 6255) = 98304 * k + 18766 := by
    unfold C
    simp [show (32768 * k + 6255) % 2 ≠ 0 by omega]
    omega
  have h2 : C (98304 * k + 18766) = 49152 * k + 9383 := by
    unfold C
    simp [show (98304 * k + 18766) % 2 = 0 by omega]
    omega
  have h3 : C (49152 * k + 9383) = 147456 * k + 28150 := by
    unfold C
    simp [show (49152 * k + 9383) % 2 ≠ 0 by omega]
    omega
  have h4 : C (147456 * k + 28150) = 73728 * k + 14075 := by
    unfold C
    simp [show (147456 * k + 28150) % 2 = 0 by omega]
    omega
  have h5 : C (73728 * k + 14075) = 221184 * k + 42226 := by
    unfold C
    simp [show (73728 * k + 14075) % 2 ≠ 0 by omega]
    omega
  have h6 : C (221184 * k + 42226) = 110592 * k + 21113 := by
    unfold C
    simp [show (221184 * k + 42226) % 2 = 0 by omega]
    omega
  have h7 : C (110592 * k + 21113) = 331776 * k + 63340 := by
    unfold C
    simp [show (110592 * k + 21113) % 2 ≠ 0 by omega]
    omega
  have h8 : C (331776 * k + 63340) = 165888 * k + 31670 := by
    unfold C
    simp [show (331776 * k + 63340) % 2 = 0 by omega]
    omega
  have h9 : C (165888 * k + 31670) = 82944 * k + 15835 := by
    unfold C
    simp [show (165888 * k + 31670) % 2 = 0 by omega]
    omega
  have h10 : C (82944 * k + 15835) = 248832 * k + 47506 := by
    unfold C
    simp [show (82944 * k + 15835) % 2 ≠ 0 by omega]
    omega
  have h11 : C (248832 * k + 47506) = 124416 * k + 23753 := by
    unfold C
    simp [show (248832 * k + 47506) % 2 = 0 by omega]
    omega
  have h12 : C (124416 * k + 23753) = 373248 * k + 71260 := by
    unfold C
    simp [show (124416 * k + 23753) % 2 ≠ 0 by omega]
    omega
  have h13 : C (373248 * k + 71260) = 186624 * k + 35630 := by
    unfold C
    simp [show (373248 * k + 71260) % 2 = 0 by omega]
    omega
  have h14 : C (186624 * k + 35630) = 93312 * k + 17815 := by
    unfold C
    simp [show (186624 * k + 35630) % 2 = 0 by omega]
    omega
  have h15 : C (93312 * k + 17815) = 279936 * k + 53446 := by
    unfold C
    simp [show (93312 * k + 17815) % 2 ≠ 0 by omega]
    omega
  have h16 : C (279936 * k + 53446) = 139968 * k + 26723 := by
    unfold C
    simp [show (279936 * k + 53446) % 2 = 0 by omega]
    omega
  have h17 : C (139968 * k + 26723) = 419904 * k + 80170 := by
    unfold C
    simp [show (139968 * k + 26723) % 2 ≠ 0 by omega]
    omega
  have h18 : C (419904 * k + 80170) = 209952 * k + 40085 := by
    unfold C
    simp [show (419904 * k + 80170) % 2 = 0 by omega]
    omega
  have h19 : C (209952 * k + 40085) = 629856 * k + 120256 := by
    unfold C
    simp [show (209952 * k + 40085) % 2 ≠ 0 by omega]
    omega
  have h20 : C (629856 * k + 120256) = 314928 * k + 60128 := by
    unfold C
    simp [show (629856 * k + 120256) % 2 = 0 by omega]
    omega
  have h21 : C (314928 * k + 60128) = 157464 * k + 30064 := by
    unfold C
    simp [show (314928 * k + 60128) % 2 = 0 by omega]
    omega
  have h22 : C (157464 * k + 30064) = 78732 * k + 15032 := by
    unfold C
    simp [show (157464 * k + 30064) % 2 = 0 by omega]
    omega
  have h23 : C (78732 * k + 15032) = 39366 * k + 7516 := by
    unfold C
    simp [show (78732 * k + 15032) % 2 = 0 by omega]
    omega
  have h24 : C (39366 * k + 7516) = 19683 * k + 3758 := by
    unfold C
    simp [show (39366 * k + 7516) % 2 = 0 by omega]
    omega
  have hIter : iterate (32768 * k + 6255) 24 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (32768 * k + 6255)))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24]
  · omega

theorem descent_mod32768_6503 : ∀ k : Nat, iterate (32768 * k + 6503) 24 = 19683 * k + 3907 ∧ 19683 * k + 3907 < 32768 * k + 6503 := by
  intro k
  have h1 : C (32768 * k + 6503) = 98304 * k + 19510 := by
    unfold C
    simp [show (32768 * k + 6503) % 2 ≠ 0 by omega]
    omega
  have h2 : C (98304 * k + 19510) = 49152 * k + 9755 := by
    unfold C
    simp [show (98304 * k + 19510) % 2 = 0 by omega]
    omega
  have h3 : C (49152 * k + 9755) = 147456 * k + 29266 := by
    unfold C
    simp [show (49152 * k + 9755) % 2 ≠ 0 by omega]
    omega
  have h4 : C (147456 * k + 29266) = 73728 * k + 14633 := by
    unfold C
    simp [show (147456 * k + 29266) % 2 = 0 by omega]
    omega
  have h5 : C (73728 * k + 14633) = 221184 * k + 43900 := by
    unfold C
    simp [show (73728 * k + 14633) % 2 ≠ 0 by omega]
    omega
  have h6 : C (221184 * k + 43900) = 110592 * k + 21950 := by
    unfold C
    simp [show (221184 * k + 43900) % 2 = 0 by omega]
    omega
  have h7 : C (110592 * k + 21950) = 55296 * k + 10975 := by
    unfold C
    simp [show (110592 * k + 21950) % 2 = 0 by omega]
    omega
  have h8 : C (55296 * k + 10975) = 165888 * k + 32926 := by
    unfold C
    simp [show (55296 * k + 10975) % 2 ≠ 0 by omega]
    omega
  have h9 : C (165888 * k + 32926) = 82944 * k + 16463 := by
    unfold C
    simp [show (165888 * k + 32926) % 2 = 0 by omega]
    omega
  have h10 : C (82944 * k + 16463) = 248832 * k + 49390 := by
    unfold C
    simp [show (82944 * k + 16463) % 2 ≠ 0 by omega]
    omega
  have h11 : C (248832 * k + 49390) = 124416 * k + 24695 := by
    unfold C
    simp [show (248832 * k + 49390) % 2 = 0 by omega]
    omega
  have h12 : C (124416 * k + 24695) = 373248 * k + 74086 := by
    unfold C
    simp [show (124416 * k + 24695) % 2 ≠ 0 by omega]
    omega
  have h13 : C (373248 * k + 74086) = 186624 * k + 37043 := by
    unfold C
    simp [show (373248 * k + 74086) % 2 = 0 by omega]
    omega
  have h14 : C (186624 * k + 37043) = 559872 * k + 111130 := by
    unfold C
    simp [show (186624 * k + 37043) % 2 ≠ 0 by omega]
    omega
  have h15 : C (559872 * k + 111130) = 279936 * k + 55565 := by
    unfold C
    simp [show (559872 * k + 111130) % 2 = 0 by omega]
    omega
  have h16 : C (279936 * k + 55565) = 839808 * k + 166696 := by
    unfold C
    simp [show (279936 * k + 55565) % 2 ≠ 0 by omega]
    omega
  have h17 : C (839808 * k + 166696) = 419904 * k + 83348 := by
    unfold C
    simp [show (839808 * k + 166696) % 2 = 0 by omega]
    omega
  have h18 : C (419904 * k + 83348) = 209952 * k + 41674 := by
    unfold C
    simp [show (419904 * k + 83348) % 2 = 0 by omega]
    omega
  have h19 : C (209952 * k + 41674) = 104976 * k + 20837 := by
    unfold C
    simp [show (209952 * k + 41674) % 2 = 0 by omega]
    omega
  have h20 : C (104976 * k + 20837) = 314928 * k + 62512 := by
    unfold C
    simp [show (104976 * k + 20837) % 2 ≠ 0 by omega]
    omega
  have h21 : C (314928 * k + 62512) = 157464 * k + 31256 := by
    unfold C
    simp [show (314928 * k + 62512) % 2 = 0 by omega]
    omega
  have h22 : C (157464 * k + 31256) = 78732 * k + 15628 := by
    unfold C
    simp [show (157464 * k + 31256) % 2 = 0 by omega]
    omega
  have h23 : C (78732 * k + 15628) = 39366 * k + 7814 := by
    unfold C
    simp [show (78732 * k + 15628) % 2 = 0 by omega]
    omega
  have h24 : C (39366 * k + 7814) = 19683 * k + 3907 := by
    unfold C
    simp [show (39366 * k + 7814) % 2 = 0 by omega]
    omega
  have hIter : iterate (32768 * k + 6503) 24 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (32768 * k + 6503)))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24]
  · omega

theorem descent_mod32768_6759 : ∀ k : Nat, iterate (32768 * k + 6759) 24 = 19683 * k + 4061 ∧ 19683 * k + 4061 < 32768 * k + 6759 := by
  intro k
  have h1 : C (32768 * k + 6759) = 98304 * k + 20278 := by
    unfold C
    simp [show (32768 * k + 6759) % 2 ≠ 0 by omega]
    omega
  have h2 : C (98304 * k + 20278) = 49152 * k + 10139 := by
    unfold C
    simp [show (98304 * k + 20278) % 2 = 0 by omega]
    omega
  have h3 : C (49152 * k + 10139) = 147456 * k + 30418 := by
    unfold C
    simp [show (49152 * k + 10139) % 2 ≠ 0 by omega]
    omega
  have h4 : C (147456 * k + 30418) = 73728 * k + 15209 := by
    unfold C
    simp [show (147456 * k + 30418) % 2 = 0 by omega]
    omega
  have h5 : C (73728 * k + 15209) = 221184 * k + 45628 := by
    unfold C
    simp [show (73728 * k + 15209) % 2 ≠ 0 by omega]
    omega
  have h6 : C (221184 * k + 45628) = 110592 * k + 22814 := by
    unfold C
    simp [show (221184 * k + 45628) % 2 = 0 by omega]
    omega
  have h7 : C (110592 * k + 22814) = 55296 * k + 11407 := by
    unfold C
    simp [show (110592 * k + 22814) % 2 = 0 by omega]
    omega
  have h8 : C (55296 * k + 11407) = 165888 * k + 34222 := by
    unfold C
    simp [show (55296 * k + 11407) % 2 ≠ 0 by omega]
    omega
  have h9 : C (165888 * k + 34222) = 82944 * k + 17111 := by
    unfold C
    simp [show (165888 * k + 34222) % 2 = 0 by omega]
    omega
  have h10 : C (82944 * k + 17111) = 248832 * k + 51334 := by
    unfold C
    simp [show (82944 * k + 17111) % 2 ≠ 0 by omega]
    omega
  have h11 : C (248832 * k + 51334) = 124416 * k + 25667 := by
    unfold C
    simp [show (248832 * k + 51334) % 2 = 0 by omega]
    omega
  have h12 : C (124416 * k + 25667) = 373248 * k + 77002 := by
    unfold C
    simp [show (124416 * k + 25667) % 2 ≠ 0 by omega]
    omega
  have h13 : C (373248 * k + 77002) = 186624 * k + 38501 := by
    unfold C
    simp [show (373248 * k + 77002) % 2 = 0 by omega]
    omega
  have h14 : C (186624 * k + 38501) = 559872 * k + 115504 := by
    unfold C
    simp [show (186624 * k + 38501) % 2 ≠ 0 by omega]
    omega
  have h15 : C (559872 * k + 115504) = 279936 * k + 57752 := by
    unfold C
    simp [show (559872 * k + 115504) % 2 = 0 by omega]
    omega
  have h16 : C (279936 * k + 57752) = 139968 * k + 28876 := by
    unfold C
    simp [show (279936 * k + 57752) % 2 = 0 by omega]
    omega
  have h17 : C (139968 * k + 28876) = 69984 * k + 14438 := by
    unfold C
    simp [show (139968 * k + 28876) % 2 = 0 by omega]
    omega
  have h18 : C (69984 * k + 14438) = 34992 * k + 7219 := by
    unfold C
    simp [show (69984 * k + 14438) % 2 = 0 by omega]
    omega
  have h19 : C (34992 * k + 7219) = 104976 * k + 21658 := by
    unfold C
    simp [show (34992 * k + 7219) % 2 ≠ 0 by omega]
    omega
  have h20 : C (104976 * k + 21658) = 52488 * k + 10829 := by
    unfold C
    simp [show (104976 * k + 21658) % 2 = 0 by omega]
    omega
  have h21 : C (52488 * k + 10829) = 157464 * k + 32488 := by
    unfold C
    simp [show (52488 * k + 10829) % 2 ≠ 0 by omega]
    omega
  have h22 : C (157464 * k + 32488) = 78732 * k + 16244 := by
    unfold C
    simp [show (157464 * k + 32488) % 2 = 0 by omega]
    omega
  have h23 : C (78732 * k + 16244) = 39366 * k + 8122 := by
    unfold C
    simp [show (78732 * k + 16244) % 2 = 0 by omega]
    omega
  have h24 : C (39366 * k + 8122) = 19683 * k + 4061 := by
    unfold C
    simp [show (39366 * k + 8122) % 2 = 0 by omega]
    omega
  have hIter : iterate (32768 * k + 6759) 24 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (32768 * k + 6759)))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24]
  · omega

theorem descent_mod32768_6783 : ∀ k : Nat, iterate (32768 * k + 6783) 24 = 19683 * k + 4075 ∧ 19683 * k + 4075 < 32768 * k + 6783 := by
  intro k
  have h1 : C (32768 * k + 6783) = 98304 * k + 20350 := by
    unfold C
    simp [show (32768 * k + 6783) % 2 ≠ 0 by omega]
    omega
  have h2 : C (98304 * k + 20350) = 49152 * k + 10175 := by
    unfold C
    simp [show (98304 * k + 20350) % 2 = 0 by omega]
    omega
  have h3 : C (49152 * k + 10175) = 147456 * k + 30526 := by
    unfold C
    simp [show (49152 * k + 10175) % 2 ≠ 0 by omega]
    omega
  have h4 : C (147456 * k + 30526) = 73728 * k + 15263 := by
    unfold C
    simp [show (147456 * k + 30526) % 2 = 0 by omega]
    omega
  have h5 : C (73728 * k + 15263) = 221184 * k + 45790 := by
    unfold C
    simp [show (73728 * k + 15263) % 2 ≠ 0 by omega]
    omega
  have h6 : C (221184 * k + 45790) = 110592 * k + 22895 := by
    unfold C
    simp [show (221184 * k + 45790) % 2 = 0 by omega]
    omega
  have h7 : C (110592 * k + 22895) = 331776 * k + 68686 := by
    unfold C
    simp [show (110592 * k + 22895) % 2 ≠ 0 by omega]
    omega
  have h8 : C (331776 * k + 68686) = 165888 * k + 34343 := by
    unfold C
    simp [show (331776 * k + 68686) % 2 = 0 by omega]
    omega
  have h9 : C (165888 * k + 34343) = 497664 * k + 103030 := by
    unfold C
    simp [show (165888 * k + 34343) % 2 ≠ 0 by omega]
    omega
  have h10 : C (497664 * k + 103030) = 248832 * k + 51515 := by
    unfold C
    simp [show (497664 * k + 103030) % 2 = 0 by omega]
    omega
  have h11 : C (248832 * k + 51515) = 746496 * k + 154546 := by
    unfold C
    simp [show (248832 * k + 51515) % 2 ≠ 0 by omega]
    omega
  have h12 : C (746496 * k + 154546) = 373248 * k + 77273 := by
    unfold C
    simp [show (746496 * k + 154546) % 2 = 0 by omega]
    omega
  have h13 : C (373248 * k + 77273) = 1119744 * k + 231820 := by
    unfold C
    simp [show (373248 * k + 77273) % 2 ≠ 0 by omega]
    omega
  have h14 : C (1119744 * k + 231820) = 559872 * k + 115910 := by
    unfold C
    simp [show (1119744 * k + 231820) % 2 = 0 by omega]
    omega
  have h15 : C (559872 * k + 115910) = 279936 * k + 57955 := by
    unfold C
    simp [show (559872 * k + 115910) % 2 = 0 by omega]
    omega
  have h16 : C (279936 * k + 57955) = 839808 * k + 173866 := by
    unfold C
    simp [show (279936 * k + 57955) % 2 ≠ 0 by omega]
    omega
  have h17 : C (839808 * k + 173866) = 419904 * k + 86933 := by
    unfold C
    simp [show (839808 * k + 173866) % 2 = 0 by omega]
    omega
  have h18 : C (419904 * k + 86933) = 1259712 * k + 260800 := by
    unfold C
    simp [show (419904 * k + 86933) % 2 ≠ 0 by omega]
    omega
  have h19 : C (1259712 * k + 260800) = 629856 * k + 130400 := by
    unfold C
    simp [show (1259712 * k + 260800) % 2 = 0 by omega]
    omega
  have h20 : C (629856 * k + 130400) = 314928 * k + 65200 := by
    unfold C
    simp [show (629856 * k + 130400) % 2 = 0 by omega]
    omega
  have h21 : C (314928 * k + 65200) = 157464 * k + 32600 := by
    unfold C
    simp [show (314928 * k + 65200) % 2 = 0 by omega]
    omega
  have h22 : C (157464 * k + 32600) = 78732 * k + 16300 := by
    unfold C
    simp [show (157464 * k + 32600) % 2 = 0 by omega]
    omega
  have h23 : C (78732 * k + 16300) = 39366 * k + 8150 := by
    unfold C
    simp [show (78732 * k + 16300) % 2 = 0 by omega]
    omega
  have h24 : C (39366 * k + 8150) = 19683 * k + 4075 := by
    unfold C
    simp [show (39366 * k + 8150) % 2 = 0 by omega]
    omega
  have hIter : iterate (32768 * k + 6783) 24 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (32768 * k + 6783)))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24]
  · omega

theorem descent_mod32768_6907 : ∀ k : Nat, iterate (32768 * k + 6907) 24 = 19683 * k + 4150 ∧ 19683 * k + 4150 < 32768 * k + 6907 := by
  intro k
  have h1 : C (32768 * k + 6907) = 98304 * k + 20722 := by
    unfold C
    simp [show (32768 * k + 6907) % 2 ≠ 0 by omega]
    omega
  have h2 : C (98304 * k + 20722) = 49152 * k + 10361 := by
    unfold C
    simp [show (98304 * k + 20722) % 2 = 0 by omega]
    omega
  have h3 : C (49152 * k + 10361) = 147456 * k + 31084 := by
    unfold C
    simp [show (49152 * k + 10361) % 2 ≠ 0 by omega]
    omega
  have h4 : C (147456 * k + 31084) = 73728 * k + 15542 := by
    unfold C
    simp [show (147456 * k + 31084) % 2 = 0 by omega]
    omega
  have h5 : C (73728 * k + 15542) = 36864 * k + 7771 := by
    unfold C
    simp [show (73728 * k + 15542) % 2 = 0 by omega]
    omega
  have h6 : C (36864 * k + 7771) = 110592 * k + 23314 := by
    unfold C
    simp [show (36864 * k + 7771) % 2 ≠ 0 by omega]
    omega
  have h7 : C (110592 * k + 23314) = 55296 * k + 11657 := by
    unfold C
    simp [show (110592 * k + 23314) % 2 = 0 by omega]
    omega
  have h8 : C (55296 * k + 11657) = 165888 * k + 34972 := by
    unfold C
    simp [show (55296 * k + 11657) % 2 ≠ 0 by omega]
    omega
  have h9 : C (165888 * k + 34972) = 82944 * k + 17486 := by
    unfold C
    simp [show (165888 * k + 34972) % 2 = 0 by omega]
    omega
  have h10 : C (82944 * k + 17486) = 41472 * k + 8743 := by
    unfold C
    simp [show (82944 * k + 17486) % 2 = 0 by omega]
    omega
  have h11 : C (41472 * k + 8743) = 124416 * k + 26230 := by
    unfold C
    simp [show (41472 * k + 8743) % 2 ≠ 0 by omega]
    omega
  have h12 : C (124416 * k + 26230) = 62208 * k + 13115 := by
    unfold C
    simp [show (124416 * k + 26230) % 2 = 0 by omega]
    omega
  have h13 : C (62208 * k + 13115) = 186624 * k + 39346 := by
    unfold C
    simp [show (62208 * k + 13115) % 2 ≠ 0 by omega]
    omega
  have h14 : C (186624 * k + 39346) = 93312 * k + 19673 := by
    unfold C
    simp [show (186624 * k + 39346) % 2 = 0 by omega]
    omega
  have h15 : C (93312 * k + 19673) = 279936 * k + 59020 := by
    unfold C
    simp [show (93312 * k + 19673) % 2 ≠ 0 by omega]
    omega
  have h16 : C (279936 * k + 59020) = 139968 * k + 29510 := by
    unfold C
    simp [show (279936 * k + 59020) % 2 = 0 by omega]
    omega
  have h17 : C (139968 * k + 29510) = 69984 * k + 14755 := by
    unfold C
    simp [show (139968 * k + 29510) % 2 = 0 by omega]
    omega
  have h18 : C (69984 * k + 14755) = 209952 * k + 44266 := by
    unfold C
    simp [show (69984 * k + 14755) % 2 ≠ 0 by omega]
    omega
  have h19 : C (209952 * k + 44266) = 104976 * k + 22133 := by
    unfold C
    simp [show (209952 * k + 44266) % 2 = 0 by omega]
    omega
  have h20 : C (104976 * k + 22133) = 314928 * k + 66400 := by
    unfold C
    simp [show (104976 * k + 22133) % 2 ≠ 0 by omega]
    omega
  have h21 : C (314928 * k + 66400) = 157464 * k + 33200 := by
    unfold C
    simp [show (314928 * k + 66400) % 2 = 0 by omega]
    omega
  have h22 : C (157464 * k + 33200) = 78732 * k + 16600 := by
    unfold C
    simp [show (157464 * k + 33200) % 2 = 0 by omega]
    omega
  have h23 : C (78732 * k + 16600) = 39366 * k + 8300 := by
    unfold C
    simp [show (78732 * k + 16600) % 2 = 0 by omega]
    omega
  have h24 : C (39366 * k + 8300) = 19683 * k + 4150 := by
    unfold C
    simp [show (39366 * k + 8300) % 2 = 0 by omega]
    omega
  have hIter : iterate (32768 * k + 6907) 24 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (32768 * k + 6907)))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24]
  · omega

theorem descent_mod32768_7163 : ∀ k : Nat, iterate (32768 * k + 7163) 24 = 19683 * k + 4304 ∧ 19683 * k + 4304 < 32768 * k + 7163 := by
  intro k
  have h1 : C (32768 * k + 7163) = 98304 * k + 21490 := by
    unfold C
    simp [show (32768 * k + 7163) % 2 ≠ 0 by omega]
    omega
  have h2 : C (98304 * k + 21490) = 49152 * k + 10745 := by
    unfold C
    simp [show (98304 * k + 21490) % 2 = 0 by omega]
    omega
  have h3 : C (49152 * k + 10745) = 147456 * k + 32236 := by
    unfold C
    simp [show (49152 * k + 10745) % 2 ≠ 0 by omega]
    omega
  have h4 : C (147456 * k + 32236) = 73728 * k + 16118 := by
    unfold C
    simp [show (147456 * k + 32236) % 2 = 0 by omega]
    omega
  have h5 : C (73728 * k + 16118) = 36864 * k + 8059 := by
    unfold C
    simp [show (73728 * k + 16118) % 2 = 0 by omega]
    omega
  have h6 : C (36864 * k + 8059) = 110592 * k + 24178 := by
    unfold C
    simp [show (36864 * k + 8059) % 2 ≠ 0 by omega]
    omega
  have h7 : C (110592 * k + 24178) = 55296 * k + 12089 := by
    unfold C
    simp [show (110592 * k + 24178) % 2 = 0 by omega]
    omega
  have h8 : C (55296 * k + 12089) = 165888 * k + 36268 := by
    unfold C
    simp [show (55296 * k + 12089) % 2 ≠ 0 by omega]
    omega
  have h9 : C (165888 * k + 36268) = 82944 * k + 18134 := by
    unfold C
    simp [show (165888 * k + 36268) % 2 = 0 by omega]
    omega
  have h10 : C (82944 * k + 18134) = 41472 * k + 9067 := by
    unfold C
    simp [show (82944 * k + 18134) % 2 = 0 by omega]
    omega
  have h11 : C (41472 * k + 9067) = 124416 * k + 27202 := by
    unfold C
    simp [show (41472 * k + 9067) % 2 ≠ 0 by omega]
    omega
  have h12 : C (124416 * k + 27202) = 62208 * k + 13601 := by
    unfold C
    simp [show (124416 * k + 27202) % 2 = 0 by omega]
    omega
  have h13 : C (62208 * k + 13601) = 186624 * k + 40804 := by
    unfold C
    simp [show (62208 * k + 13601) % 2 ≠ 0 by omega]
    omega
  have h14 : C (186624 * k + 40804) = 93312 * k + 20402 := by
    unfold C
    simp [show (186624 * k + 40804) % 2 = 0 by omega]
    omega
  have h15 : C (93312 * k + 20402) = 46656 * k + 10201 := by
    unfold C
    simp [show (93312 * k + 20402) % 2 = 0 by omega]
    omega
  have h16 : C (46656 * k + 10201) = 139968 * k + 30604 := by
    unfold C
    simp [show (46656 * k + 10201) % 2 ≠ 0 by omega]
    omega
  have h17 : C (139968 * k + 30604) = 69984 * k + 15302 := by
    unfold C
    simp [show (139968 * k + 30604) % 2 = 0 by omega]
    omega
  have h18 : C (69984 * k + 15302) = 34992 * k + 7651 := by
    unfold C
    simp [show (69984 * k + 15302) % 2 = 0 by omega]
    omega
  have h19 : C (34992 * k + 7651) = 104976 * k + 22954 := by
    unfold C
    simp [show (34992 * k + 7651) % 2 ≠ 0 by omega]
    omega
  have h20 : C (104976 * k + 22954) = 52488 * k + 11477 := by
    unfold C
    simp [show (104976 * k + 22954) % 2 = 0 by omega]
    omega
  have h21 : C (52488 * k + 11477) = 157464 * k + 34432 := by
    unfold C
    simp [show (52488 * k + 11477) % 2 ≠ 0 by omega]
    omega
  have h22 : C (157464 * k + 34432) = 78732 * k + 17216 := by
    unfold C
    simp [show (157464 * k + 34432) % 2 = 0 by omega]
    omega
  have h23 : C (78732 * k + 17216) = 39366 * k + 8608 := by
    unfold C
    simp [show (78732 * k + 17216) % 2 = 0 by omega]
    omega
  have h24 : C (39366 * k + 8608) = 19683 * k + 4304 := by
    unfold C
    simp [show (39366 * k + 8608) % 2 = 0 by omega]
    omega
  have hIter : iterate (32768 * k + 7163) 24 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (32768 * k + 7163)))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24]
  · omega

theorem descent_mod32768_7199 : ∀ k : Nat, iterate (32768 * k + 7199) 24 = 19683 * k + 4325 ∧ 19683 * k + 4325 < 32768 * k + 7199 := by
  intro k
  have h1 : C (32768 * k + 7199) = 98304 * k + 21598 := by
    unfold C
    simp [show (32768 * k + 7199) % 2 ≠ 0 by omega]
    omega
  have h2 : C (98304 * k + 21598) = 49152 * k + 10799 := by
    unfold C
    simp [show (98304 * k + 21598) % 2 = 0 by omega]
    omega
  have h3 : C (49152 * k + 10799) = 147456 * k + 32398 := by
    unfold C
    simp [show (49152 * k + 10799) % 2 ≠ 0 by omega]
    omega
  have h4 : C (147456 * k + 32398) = 73728 * k + 16199 := by
    unfold C
    simp [show (147456 * k + 32398) % 2 = 0 by omega]
    omega
  have h5 : C (73728 * k + 16199) = 221184 * k + 48598 := by
    unfold C
    simp [show (73728 * k + 16199) % 2 ≠ 0 by omega]
    omega
  have h6 : C (221184 * k + 48598) = 110592 * k + 24299 := by
    unfold C
    simp [show (221184 * k + 48598) % 2 = 0 by omega]
    omega
  have h7 : C (110592 * k + 24299) = 331776 * k + 72898 := by
    unfold C
    simp [show (110592 * k + 24299) % 2 ≠ 0 by omega]
    omega
  have h8 : C (331776 * k + 72898) = 165888 * k + 36449 := by
    unfold C
    simp [show (331776 * k + 72898) % 2 = 0 by omega]
    omega
  have h9 : C (165888 * k + 36449) = 497664 * k + 109348 := by
    unfold C
    simp [show (165888 * k + 36449) % 2 ≠ 0 by omega]
    omega
  have h10 : C (497664 * k + 109348) = 248832 * k + 54674 := by
    unfold C
    simp [show (497664 * k + 109348) % 2 = 0 by omega]
    omega
  have h11 : C (248832 * k + 54674) = 124416 * k + 27337 := by
    unfold C
    simp [show (248832 * k + 54674) % 2 = 0 by omega]
    omega
  have h12 : C (124416 * k + 27337) = 373248 * k + 82012 := by
    unfold C
    simp [show (124416 * k + 27337) % 2 ≠ 0 by omega]
    omega
  have h13 : C (373248 * k + 82012) = 186624 * k + 41006 := by
    unfold C
    simp [show (373248 * k + 82012) % 2 = 0 by omega]
    omega
  have h14 : C (186624 * k + 41006) = 93312 * k + 20503 := by
    unfold C
    simp [show (186624 * k + 41006) % 2 = 0 by omega]
    omega
  have h15 : C (93312 * k + 20503) = 279936 * k + 61510 := by
    unfold C
    simp [show (93312 * k + 20503) % 2 ≠ 0 by omega]
    omega
  have h16 : C (279936 * k + 61510) = 139968 * k + 30755 := by
    unfold C
    simp [show (279936 * k + 61510) % 2 = 0 by omega]
    omega
  have h17 : C (139968 * k + 30755) = 419904 * k + 92266 := by
    unfold C
    simp [show (139968 * k + 30755) % 2 ≠ 0 by omega]
    omega
  have h18 : C (419904 * k + 92266) = 209952 * k + 46133 := by
    unfold C
    simp [show (419904 * k + 92266) % 2 = 0 by omega]
    omega
  have h19 : C (209952 * k + 46133) = 629856 * k + 138400 := by
    unfold C
    simp [show (209952 * k + 46133) % 2 ≠ 0 by omega]
    omega
  have h20 : C (629856 * k + 138400) = 314928 * k + 69200 := by
    unfold C
    simp [show (629856 * k + 138400) % 2 = 0 by omega]
    omega
  have h21 : C (314928 * k + 69200) = 157464 * k + 34600 := by
    unfold C
    simp [show (314928 * k + 69200) % 2 = 0 by omega]
    omega
  have h22 : C (157464 * k + 34600) = 78732 * k + 17300 := by
    unfold C
    simp [show (157464 * k + 34600) % 2 = 0 by omega]
    omega
  have h23 : C (78732 * k + 17300) = 39366 * k + 8650 := by
    unfold C
    simp [show (78732 * k + 17300) % 2 = 0 by omega]
    omega
  have h24 : C (39366 * k + 8650) = 19683 * k + 4325 := by
    unfold C
    simp [show (39366 * k + 8650) % 2 = 0 by omega]
    omega
  have hIter : iterate (32768 * k + 7199) 24 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (32768 * k + 7199)))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24]
  · omega

#print axioms descent_mod32768_6175
#print axioms descent_mod32768_6255
#print axioms descent_mod32768_6503
#print axioms descent_mod32768_6759
#print axioms descent_mod32768_6783
#print axioms descent_mod32768_6907
#print axioms descent_mod32768_7163
#print axioms descent_mod32768_7199

end CollatzM15ShardE
