import Mathlib.Data.Nat.Prime.Basic

namespace CollatzM15ShardA

def C (n : Nat) : Nat := if n % 2 = 0 then n / 2 else 3 * n + 1

def iterate (n t : Nat) : Nat := Nat.rec n (fun _ previous => C previous) t

theorem descent_mod32768_411 : ∀ k : Nat, iterate (32768 * k + 411) 24 = 19683 * k + 248 ∧ 19683 * k + 248 < 32768 * k + 411 := by
  intro k
  have h1 : C (32768 * k + 411) = 98304 * k + 1234 := by
    unfold C
    simp [show (32768 * k + 411) % 2 ≠ 0 by omega]
    omega
  have h2 : C (98304 * k + 1234) = 49152 * k + 617 := by
    unfold C
    simp [show (98304 * k + 1234) % 2 = 0 by omega]
    omega
  have h3 : C (49152 * k + 617) = 147456 * k + 1852 := by
    unfold C
    simp [show (49152 * k + 617) % 2 ≠ 0 by omega]
    omega
  have h4 : C (147456 * k + 1852) = 73728 * k + 926 := by
    unfold C
    simp [show (147456 * k + 1852) % 2 = 0 by omega]
    omega
  have h5 : C (73728 * k + 926) = 36864 * k + 463 := by
    unfold C
    simp [show (73728 * k + 926) % 2 = 0 by omega]
    omega
  have h6 : C (36864 * k + 463) = 110592 * k + 1390 := by
    unfold C
    simp [show (36864 * k + 463) % 2 ≠ 0 by omega]
    omega
  have h7 : C (110592 * k + 1390) = 55296 * k + 695 := by
    unfold C
    simp [show (110592 * k + 1390) % 2 = 0 by omega]
    omega
  have h8 : C (55296 * k + 695) = 165888 * k + 2086 := by
    unfold C
    simp [show (55296 * k + 695) % 2 ≠ 0 by omega]
    omega
  have h9 : C (165888 * k + 2086) = 82944 * k + 1043 := by
    unfold C
    simp [show (165888 * k + 2086) % 2 = 0 by omega]
    omega
  have h10 : C (82944 * k + 1043) = 248832 * k + 3130 := by
    unfold C
    simp [show (82944 * k + 1043) % 2 ≠ 0 by omega]
    omega
  have h11 : C (248832 * k + 3130) = 124416 * k + 1565 := by
    unfold C
    simp [show (248832 * k + 3130) % 2 = 0 by omega]
    omega
  have h12 : C (124416 * k + 1565) = 373248 * k + 4696 := by
    unfold C
    simp [show (124416 * k + 1565) % 2 ≠ 0 by omega]
    omega
  have h13 : C (373248 * k + 4696) = 186624 * k + 2348 := by
    unfold C
    simp [show (373248 * k + 4696) % 2 = 0 by omega]
    omega
  have h14 : C (186624 * k + 2348) = 93312 * k + 1174 := by
    unfold C
    simp [show (186624 * k + 2348) % 2 = 0 by omega]
    omega
  have h15 : C (93312 * k + 1174) = 46656 * k + 587 := by
    unfold C
    simp [show (93312 * k + 1174) % 2 = 0 by omega]
    omega
  have h16 : C (46656 * k + 587) = 139968 * k + 1762 := by
    unfold C
    simp [show (46656 * k + 587) % 2 ≠ 0 by omega]
    omega
  have h17 : C (139968 * k + 1762) = 69984 * k + 881 := by
    unfold C
    simp [show (139968 * k + 1762) % 2 = 0 by omega]
    omega
  have h18 : C (69984 * k + 881) = 209952 * k + 2644 := by
    unfold C
    simp [show (69984 * k + 881) % 2 ≠ 0 by omega]
    omega
  have h19 : C (209952 * k + 2644) = 104976 * k + 1322 := by
    unfold C
    simp [show (209952 * k + 2644) % 2 = 0 by omega]
    omega
  have h20 : C (104976 * k + 1322) = 52488 * k + 661 := by
    unfold C
    simp [show (104976 * k + 1322) % 2 = 0 by omega]
    omega
  have h21 : C (52488 * k + 661) = 157464 * k + 1984 := by
    unfold C
    simp [show (52488 * k + 661) % 2 ≠ 0 by omega]
    omega
  have h22 : C (157464 * k + 1984) = 78732 * k + 992 := by
    unfold C
    simp [show (157464 * k + 1984) % 2 = 0 by omega]
    omega
  have h23 : C (78732 * k + 992) = 39366 * k + 496 := by
    unfold C
    simp [show (78732 * k + 992) % 2 = 0 by omega]
    omega
  have h24 : C (39366 * k + 496) = 19683 * k + 248 := by
    unfold C
    simp [show (39366 * k + 496) % 2 = 0 by omega]
    omega
  have hIter : iterate (32768 * k + 411) 24 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (32768 * k + 411)))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24]
  · omega

theorem descent_mod32768_415 : ∀ k : Nat, iterate (32768 * k + 415) 24 = 19683 * k + 250 ∧ 19683 * k + 250 < 32768 * k + 415 := by
  intro k
  have h1 : C (32768 * k + 415) = 98304 * k + 1246 := by
    unfold C
    simp [show (32768 * k + 415) % 2 ≠ 0 by omega]
    omega
  have h2 : C (98304 * k + 1246) = 49152 * k + 623 := by
    unfold C
    simp [show (98304 * k + 1246) % 2 = 0 by omega]
    omega
  have h3 : C (49152 * k + 623) = 147456 * k + 1870 := by
    unfold C
    simp [show (49152 * k + 623) % 2 ≠ 0 by omega]
    omega
  have h4 : C (147456 * k + 1870) = 73728 * k + 935 := by
    unfold C
    simp [show (147456 * k + 1870) % 2 = 0 by omega]
    omega
  have h5 : C (73728 * k + 935) = 221184 * k + 2806 := by
    unfold C
    simp [show (73728 * k + 935) % 2 ≠ 0 by omega]
    omega
  have h6 : C (221184 * k + 2806) = 110592 * k + 1403 := by
    unfold C
    simp [show (221184 * k + 2806) % 2 = 0 by omega]
    omega
  have h7 : C (110592 * k + 1403) = 331776 * k + 4210 := by
    unfold C
    simp [show (110592 * k + 1403) % 2 ≠ 0 by omega]
    omega
  have h8 : C (331776 * k + 4210) = 165888 * k + 2105 := by
    unfold C
    simp [show (331776 * k + 4210) % 2 = 0 by omega]
    omega
  have h9 : C (165888 * k + 2105) = 497664 * k + 6316 := by
    unfold C
    simp [show (165888 * k + 2105) % 2 ≠ 0 by omega]
    omega
  have h10 : C (497664 * k + 6316) = 248832 * k + 3158 := by
    unfold C
    simp [show (497664 * k + 6316) % 2 = 0 by omega]
    omega
  have h11 : C (248832 * k + 3158) = 124416 * k + 1579 := by
    unfold C
    simp [show (248832 * k + 3158) % 2 = 0 by omega]
    omega
  have h12 : C (124416 * k + 1579) = 373248 * k + 4738 := by
    unfold C
    simp [show (124416 * k + 1579) % 2 ≠ 0 by omega]
    omega
  have h13 : C (373248 * k + 4738) = 186624 * k + 2369 := by
    unfold C
    simp [show (373248 * k + 4738) % 2 = 0 by omega]
    omega
  have h14 : C (186624 * k + 2369) = 559872 * k + 7108 := by
    unfold C
    simp [show (186624 * k + 2369) % 2 ≠ 0 by omega]
    omega
  have h15 : C (559872 * k + 7108) = 279936 * k + 3554 := by
    unfold C
    simp [show (559872 * k + 7108) % 2 = 0 by omega]
    omega
  have h16 : C (279936 * k + 3554) = 139968 * k + 1777 := by
    unfold C
    simp [show (279936 * k + 3554) % 2 = 0 by omega]
    omega
  have h17 : C (139968 * k + 1777) = 419904 * k + 5332 := by
    unfold C
    simp [show (139968 * k + 1777) % 2 ≠ 0 by omega]
    omega
  have h18 : C (419904 * k + 5332) = 209952 * k + 2666 := by
    unfold C
    simp [show (419904 * k + 5332) % 2 = 0 by omega]
    omega
  have h19 : C (209952 * k + 2666) = 104976 * k + 1333 := by
    unfold C
    simp [show (209952 * k + 2666) % 2 = 0 by omega]
    omega
  have h20 : C (104976 * k + 1333) = 314928 * k + 4000 := by
    unfold C
    simp [show (104976 * k + 1333) % 2 ≠ 0 by omega]
    omega
  have h21 : C (314928 * k + 4000) = 157464 * k + 2000 := by
    unfold C
    simp [show (314928 * k + 4000) % 2 = 0 by omega]
    omega
  have h22 : C (157464 * k + 2000) = 78732 * k + 1000 := by
    unfold C
    simp [show (157464 * k + 2000) % 2 = 0 by omega]
    omega
  have h23 : C (78732 * k + 1000) = 39366 * k + 500 := by
    unfold C
    simp [show (78732 * k + 1000) % 2 = 0 by omega]
    omega
  have h24 : C (39366 * k + 500) = 19683 * k + 250 := by
    unfold C
    simp [show (39366 * k + 500) % 2 = 0 by omega]
    omega
  have hIter : iterate (32768 * k + 415) 24 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (32768 * k + 415)))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24]
  · omega

theorem descent_mod32768_831 : ∀ k : Nat, iterate (32768 * k + 831) 24 = 19683 * k + 500 ∧ 19683 * k + 500 < 32768 * k + 831 := by
  intro k
  have h1 : C (32768 * k + 831) = 98304 * k + 2494 := by
    unfold C
    simp [show (32768 * k + 831) % 2 ≠ 0 by omega]
    omega
  have h2 : C (98304 * k + 2494) = 49152 * k + 1247 := by
    unfold C
    simp [show (98304 * k + 2494) % 2 = 0 by omega]
    omega
  have h3 : C (49152 * k + 1247) = 147456 * k + 3742 := by
    unfold C
    simp [show (49152 * k + 1247) % 2 ≠ 0 by omega]
    omega
  have h4 : C (147456 * k + 3742) = 73728 * k + 1871 := by
    unfold C
    simp [show (147456 * k + 3742) % 2 = 0 by omega]
    omega
  have h5 : C (73728 * k + 1871) = 221184 * k + 5614 := by
    unfold C
    simp [show (73728 * k + 1871) % 2 ≠ 0 by omega]
    omega
  have h6 : C (221184 * k + 5614) = 110592 * k + 2807 := by
    unfold C
    simp [show (221184 * k + 5614) % 2 = 0 by omega]
    omega
  have h7 : C (110592 * k + 2807) = 331776 * k + 8422 := by
    unfold C
    simp [show (110592 * k + 2807) % 2 ≠ 0 by omega]
    omega
  have h8 : C (331776 * k + 8422) = 165888 * k + 4211 := by
    unfold C
    simp [show (331776 * k + 8422) % 2 = 0 by omega]
    omega
  have h9 : C (165888 * k + 4211) = 497664 * k + 12634 := by
    unfold C
    simp [show (165888 * k + 4211) % 2 ≠ 0 by omega]
    omega
  have h10 : C (497664 * k + 12634) = 248832 * k + 6317 := by
    unfold C
    simp [show (497664 * k + 12634) % 2 = 0 by omega]
    omega
  have h11 : C (248832 * k + 6317) = 746496 * k + 18952 := by
    unfold C
    simp [show (248832 * k + 6317) % 2 ≠ 0 by omega]
    omega
  have h12 : C (746496 * k + 18952) = 373248 * k + 9476 := by
    unfold C
    simp [show (746496 * k + 18952) % 2 = 0 by omega]
    omega
  have h13 : C (373248 * k + 9476) = 186624 * k + 4738 := by
    unfold C
    simp [show (373248 * k + 9476) % 2 = 0 by omega]
    omega
  have h14 : C (186624 * k + 4738) = 93312 * k + 2369 := by
    unfold C
    simp [show (186624 * k + 4738) % 2 = 0 by omega]
    omega
  have h15 : C (93312 * k + 2369) = 279936 * k + 7108 := by
    unfold C
    simp [show (93312 * k + 2369) % 2 ≠ 0 by omega]
    omega
  have h16 : C (279936 * k + 7108) = 139968 * k + 3554 := by
    unfold C
    simp [show (279936 * k + 7108) % 2 = 0 by omega]
    omega
  have h17 : C (139968 * k + 3554) = 69984 * k + 1777 := by
    unfold C
    simp [show (139968 * k + 3554) % 2 = 0 by omega]
    omega
  have h18 : C (69984 * k + 1777) = 209952 * k + 5332 := by
    unfold C
    simp [show (69984 * k + 1777) % 2 ≠ 0 by omega]
    omega
  have h19 : C (209952 * k + 5332) = 104976 * k + 2666 := by
    unfold C
    simp [show (209952 * k + 5332) % 2 = 0 by omega]
    omega
  have h20 : C (104976 * k + 2666) = 52488 * k + 1333 := by
    unfold C
    simp [show (104976 * k + 2666) % 2 = 0 by omega]
    omega
  have h21 : C (52488 * k + 1333) = 157464 * k + 4000 := by
    unfold C
    simp [show (52488 * k + 1333) % 2 ≠ 0 by omega]
    omega
  have h22 : C (157464 * k + 4000) = 78732 * k + 2000 := by
    unfold C
    simp [show (157464 * k + 4000) % 2 = 0 by omega]
    omega
  have h23 : C (78732 * k + 2000) = 39366 * k + 1000 := by
    unfold C
    simp [show (78732 * k + 2000) % 2 = 0 by omega]
    omega
  have h24 : C (39366 * k + 1000) = 19683 * k + 500 := by
    unfold C
    simp [show (39366 * k + 1000) % 2 = 0 by omega]
    omega
  have hIter : iterate (32768 * k + 831) 24 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (32768 * k + 831)))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24]
  · omega

theorem descent_mod32768_839 : ∀ k : Nat, iterate (32768 * k + 839) 24 = 19683 * k + 505 ∧ 19683 * k + 505 < 32768 * k + 839 := by
  intro k
  have h1 : C (32768 * k + 839) = 98304 * k + 2518 := by
    unfold C
    simp [show (32768 * k + 839) % 2 ≠ 0 by omega]
    omega
  have h2 : C (98304 * k + 2518) = 49152 * k + 1259 := by
    unfold C
    simp [show (98304 * k + 2518) % 2 = 0 by omega]
    omega
  have h3 : C (49152 * k + 1259) = 147456 * k + 3778 := by
    unfold C
    simp [show (49152 * k + 1259) % 2 ≠ 0 by omega]
    omega
  have h4 : C (147456 * k + 3778) = 73728 * k + 1889 := by
    unfold C
    simp [show (147456 * k + 3778) % 2 = 0 by omega]
    omega
  have h5 : C (73728 * k + 1889) = 221184 * k + 5668 := by
    unfold C
    simp [show (73728 * k + 1889) % 2 ≠ 0 by omega]
    omega
  have h6 : C (221184 * k + 5668) = 110592 * k + 2834 := by
    unfold C
    simp [show (221184 * k + 5668) % 2 = 0 by omega]
    omega
  have h7 : C (110592 * k + 2834) = 55296 * k + 1417 := by
    unfold C
    simp [show (110592 * k + 2834) % 2 = 0 by omega]
    omega
  have h8 : C (55296 * k + 1417) = 165888 * k + 4252 := by
    unfold C
    simp [show (55296 * k + 1417) % 2 ≠ 0 by omega]
    omega
  have h9 : C (165888 * k + 4252) = 82944 * k + 2126 := by
    unfold C
    simp [show (165888 * k + 4252) % 2 = 0 by omega]
    omega
  have h10 : C (82944 * k + 2126) = 41472 * k + 1063 := by
    unfold C
    simp [show (82944 * k + 2126) % 2 = 0 by omega]
    omega
  have h11 : C (41472 * k + 1063) = 124416 * k + 3190 := by
    unfold C
    simp [show (41472 * k + 1063) % 2 ≠ 0 by omega]
    omega
  have h12 : C (124416 * k + 3190) = 62208 * k + 1595 := by
    unfold C
    simp [show (124416 * k + 3190) % 2 = 0 by omega]
    omega
  have h13 : C (62208 * k + 1595) = 186624 * k + 4786 := by
    unfold C
    simp [show (62208 * k + 1595) % 2 ≠ 0 by omega]
    omega
  have h14 : C (186624 * k + 4786) = 93312 * k + 2393 := by
    unfold C
    simp [show (186624 * k + 4786) % 2 = 0 by omega]
    omega
  have h15 : C (93312 * k + 2393) = 279936 * k + 7180 := by
    unfold C
    simp [show (93312 * k + 2393) % 2 ≠ 0 by omega]
    omega
  have h16 : C (279936 * k + 7180) = 139968 * k + 3590 := by
    unfold C
    simp [show (279936 * k + 7180) % 2 = 0 by omega]
    omega
  have h17 : C (139968 * k + 3590) = 69984 * k + 1795 := by
    unfold C
    simp [show (139968 * k + 3590) % 2 = 0 by omega]
    omega
  have h18 : C (69984 * k + 1795) = 209952 * k + 5386 := by
    unfold C
    simp [show (69984 * k + 1795) % 2 ≠ 0 by omega]
    omega
  have h19 : C (209952 * k + 5386) = 104976 * k + 2693 := by
    unfold C
    simp [show (209952 * k + 5386) % 2 = 0 by omega]
    omega
  have h20 : C (104976 * k + 2693) = 314928 * k + 8080 := by
    unfold C
    simp [show (104976 * k + 2693) % 2 ≠ 0 by omega]
    omega
  have h21 : C (314928 * k + 8080) = 157464 * k + 4040 := by
    unfold C
    simp [show (314928 * k + 8080) % 2 = 0 by omega]
    omega
  have h22 : C (157464 * k + 4040) = 78732 * k + 2020 := by
    unfold C
    simp [show (157464 * k + 4040) % 2 = 0 by omega]
    omega
  have h23 : C (78732 * k + 2020) = 39366 * k + 1010 := by
    unfold C
    simp [show (78732 * k + 2020) % 2 = 0 by omega]
    omega
  have h24 : C (39366 * k + 1010) = 19683 * k + 505 := by
    unfold C
    simp [show (39366 * k + 1010) % 2 = 0 by omega]
    omega
  have hIter : iterate (32768 * k + 839) 24 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (32768 * k + 839)))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24]
  · omega

theorem descent_mod32768_1095 : ∀ k : Nat, iterate (32768 * k + 1095) 24 = 19683 * k + 659 ∧ 19683 * k + 659 < 32768 * k + 1095 := by
  intro k
  have h1 : C (32768 * k + 1095) = 98304 * k + 3286 := by
    unfold C
    simp [show (32768 * k + 1095) % 2 ≠ 0 by omega]
    omega
  have h2 : C (98304 * k + 3286) = 49152 * k + 1643 := by
    unfold C
    simp [show (98304 * k + 3286) % 2 = 0 by omega]
    omega
  have h3 : C (49152 * k + 1643) = 147456 * k + 4930 := by
    unfold C
    simp [show (49152 * k + 1643) % 2 ≠ 0 by omega]
    omega
  have h4 : C (147456 * k + 4930) = 73728 * k + 2465 := by
    unfold C
    simp [show (147456 * k + 4930) % 2 = 0 by omega]
    omega
  have h5 : C (73728 * k + 2465) = 221184 * k + 7396 := by
    unfold C
    simp [show (73728 * k + 2465) % 2 ≠ 0 by omega]
    omega
  have h6 : C (221184 * k + 7396) = 110592 * k + 3698 := by
    unfold C
    simp [show (221184 * k + 7396) % 2 = 0 by omega]
    omega
  have h7 : C (110592 * k + 3698) = 55296 * k + 1849 := by
    unfold C
    simp [show (110592 * k + 3698) % 2 = 0 by omega]
    omega
  have h8 : C (55296 * k + 1849) = 165888 * k + 5548 := by
    unfold C
    simp [show (55296 * k + 1849) % 2 ≠ 0 by omega]
    omega
  have h9 : C (165888 * k + 5548) = 82944 * k + 2774 := by
    unfold C
    simp [show (165888 * k + 5548) % 2 = 0 by omega]
    omega
  have h10 : C (82944 * k + 2774) = 41472 * k + 1387 := by
    unfold C
    simp [show (82944 * k + 2774) % 2 = 0 by omega]
    omega
  have h11 : C (41472 * k + 1387) = 124416 * k + 4162 := by
    unfold C
    simp [show (41472 * k + 1387) % 2 ≠ 0 by omega]
    omega
  have h12 : C (124416 * k + 4162) = 62208 * k + 2081 := by
    unfold C
    simp [show (124416 * k + 4162) % 2 = 0 by omega]
    omega
  have h13 : C (62208 * k + 2081) = 186624 * k + 6244 := by
    unfold C
    simp [show (62208 * k + 2081) % 2 ≠ 0 by omega]
    omega
  have h14 : C (186624 * k + 6244) = 93312 * k + 3122 := by
    unfold C
    simp [show (186624 * k + 6244) % 2 = 0 by omega]
    omega
  have h15 : C (93312 * k + 3122) = 46656 * k + 1561 := by
    unfold C
    simp [show (93312 * k + 3122) % 2 = 0 by omega]
    omega
  have h16 : C (46656 * k + 1561) = 139968 * k + 4684 := by
    unfold C
    simp [show (46656 * k + 1561) % 2 ≠ 0 by omega]
    omega
  have h17 : C (139968 * k + 4684) = 69984 * k + 2342 := by
    unfold C
    simp [show (139968 * k + 4684) % 2 = 0 by omega]
    omega
  have h18 : C (69984 * k + 2342) = 34992 * k + 1171 := by
    unfold C
    simp [show (69984 * k + 2342) % 2 = 0 by omega]
    omega
  have h19 : C (34992 * k + 1171) = 104976 * k + 3514 := by
    unfold C
    simp [show (34992 * k + 1171) % 2 ≠ 0 by omega]
    omega
  have h20 : C (104976 * k + 3514) = 52488 * k + 1757 := by
    unfold C
    simp [show (104976 * k + 3514) % 2 = 0 by omega]
    omega
  have h21 : C (52488 * k + 1757) = 157464 * k + 5272 := by
    unfold C
    simp [show (52488 * k + 1757) % 2 ≠ 0 by omega]
    omega
  have h22 : C (157464 * k + 5272) = 78732 * k + 2636 := by
    unfold C
    simp [show (157464 * k + 5272) % 2 = 0 by omega]
    omega
  have h23 : C (78732 * k + 2636) = 39366 * k + 1318 := by
    unfold C
    simp [show (78732 * k + 2636) % 2 = 0 by omega]
    omega
  have h24 : C (39366 * k + 1318) = 19683 * k + 659 := by
    unfold C
    simp [show (39366 * k + 1318) % 2 = 0 by omega]
    omega
  have hIter : iterate (32768 * k + 1095) 24 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (32768 * k + 1095)))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24]
  · omega

theorem descent_mod32768_1151 : ∀ k : Nat, iterate (32768 * k + 1151) 24 = 19683 * k + 692 ∧ 19683 * k + 692 < 32768 * k + 1151 := by
  intro k
  have h1 : C (32768 * k + 1151) = 98304 * k + 3454 := by
    unfold C
    simp [show (32768 * k + 1151) % 2 ≠ 0 by omega]
    omega
  have h2 : C (98304 * k + 3454) = 49152 * k + 1727 := by
    unfold C
    simp [show (98304 * k + 3454) % 2 = 0 by omega]
    omega
  have h3 : C (49152 * k + 1727) = 147456 * k + 5182 := by
    unfold C
    simp [show (49152 * k + 1727) % 2 ≠ 0 by omega]
    omega
  have h4 : C (147456 * k + 5182) = 73728 * k + 2591 := by
    unfold C
    simp [show (147456 * k + 5182) % 2 = 0 by omega]
    omega
  have h5 : C (73728 * k + 2591) = 221184 * k + 7774 := by
    unfold C
    simp [show (73728 * k + 2591) % 2 ≠ 0 by omega]
    omega
  have h6 : C (221184 * k + 7774) = 110592 * k + 3887 := by
    unfold C
    simp [show (221184 * k + 7774) % 2 = 0 by omega]
    omega
  have h7 : C (110592 * k + 3887) = 331776 * k + 11662 := by
    unfold C
    simp [show (110592 * k + 3887) % 2 ≠ 0 by omega]
    omega
  have h8 : C (331776 * k + 11662) = 165888 * k + 5831 := by
    unfold C
    simp [show (331776 * k + 11662) % 2 = 0 by omega]
    omega
  have h9 : C (165888 * k + 5831) = 497664 * k + 17494 := by
    unfold C
    simp [show (165888 * k + 5831) % 2 ≠ 0 by omega]
    omega
  have h10 : C (497664 * k + 17494) = 248832 * k + 8747 := by
    unfold C
    simp [show (497664 * k + 17494) % 2 = 0 by omega]
    omega
  have h11 : C (248832 * k + 8747) = 746496 * k + 26242 := by
    unfold C
    simp [show (248832 * k + 8747) % 2 ≠ 0 by omega]
    omega
  have h12 : C (746496 * k + 26242) = 373248 * k + 13121 := by
    unfold C
    simp [show (746496 * k + 26242) % 2 = 0 by omega]
    omega
  have h13 : C (373248 * k + 13121) = 1119744 * k + 39364 := by
    unfold C
    simp [show (373248 * k + 13121) % 2 ≠ 0 by omega]
    omega
  have h14 : C (1119744 * k + 39364) = 559872 * k + 19682 := by
    unfold C
    simp [show (1119744 * k + 39364) % 2 = 0 by omega]
    omega
  have h15 : C (559872 * k + 19682) = 279936 * k + 9841 := by
    unfold C
    simp [show (559872 * k + 19682) % 2 = 0 by omega]
    omega
  have h16 : C (279936 * k + 9841) = 839808 * k + 29524 := by
    unfold C
    simp [show (279936 * k + 9841) % 2 ≠ 0 by omega]
    omega
  have h17 : C (839808 * k + 29524) = 419904 * k + 14762 := by
    unfold C
    simp [show (839808 * k + 29524) % 2 = 0 by omega]
    omega
  have h18 : C (419904 * k + 14762) = 209952 * k + 7381 := by
    unfold C
    simp [show (419904 * k + 14762) % 2 = 0 by omega]
    omega
  have h19 : C (209952 * k + 7381) = 629856 * k + 22144 := by
    unfold C
    simp [show (209952 * k + 7381) % 2 ≠ 0 by omega]
    omega
  have h20 : C (629856 * k + 22144) = 314928 * k + 11072 := by
    unfold C
    simp [show (629856 * k + 22144) % 2 = 0 by omega]
    omega
  have h21 : C (314928 * k + 11072) = 157464 * k + 5536 := by
    unfold C
    simp [show (314928 * k + 11072) % 2 = 0 by omega]
    omega
  have h22 : C (157464 * k + 5536) = 78732 * k + 2768 := by
    unfold C
    simp [show (157464 * k + 5536) % 2 = 0 by omega]
    omega
  have h23 : C (78732 * k + 2768) = 39366 * k + 1384 := by
    unfold C
    simp [show (78732 * k + 2768) % 2 = 0 by omega]
    omega
  have h24 : C (39366 * k + 1384) = 19683 * k + 692 := by
    unfold C
    simp [show (39366 * k + 1384) % 2 = 0 by omega]
    omega
  have hIter : iterate (32768 * k + 1151) 24 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (32768 * k + 1151)))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24]
  · omega

theorem descent_mod32768_1275 : ∀ k : Nat, iterate (32768 * k + 1275) 24 = 19683 * k + 767 ∧ 19683 * k + 767 < 32768 * k + 1275 := by
  intro k
  have h1 : C (32768 * k + 1275) = 98304 * k + 3826 := by
    unfold C
    simp [show (32768 * k + 1275) % 2 ≠ 0 by omega]
    omega
  have h2 : C (98304 * k + 3826) = 49152 * k + 1913 := by
    unfold C
    simp [show (98304 * k + 3826) % 2 = 0 by omega]
    omega
  have h3 : C (49152 * k + 1913) = 147456 * k + 5740 := by
    unfold C
    simp [show (49152 * k + 1913) % 2 ≠ 0 by omega]
    omega
  have h4 : C (147456 * k + 5740) = 73728 * k + 2870 := by
    unfold C
    simp [show (147456 * k + 5740) % 2 = 0 by omega]
    omega
  have h5 : C (73728 * k + 2870) = 36864 * k + 1435 := by
    unfold C
    simp [show (73728 * k + 2870) % 2 = 0 by omega]
    omega
  have h6 : C (36864 * k + 1435) = 110592 * k + 4306 := by
    unfold C
    simp [show (36864 * k + 1435) % 2 ≠ 0 by omega]
    omega
  have h7 : C (110592 * k + 4306) = 55296 * k + 2153 := by
    unfold C
    simp [show (110592 * k + 4306) % 2 = 0 by omega]
    omega
  have h8 : C (55296 * k + 2153) = 165888 * k + 6460 := by
    unfold C
    simp [show (55296 * k + 2153) % 2 ≠ 0 by omega]
    omega
  have h9 : C (165888 * k + 6460) = 82944 * k + 3230 := by
    unfold C
    simp [show (165888 * k + 6460) % 2 = 0 by omega]
    omega
  have h10 : C (82944 * k + 3230) = 41472 * k + 1615 := by
    unfold C
    simp [show (82944 * k + 3230) % 2 = 0 by omega]
    omega
  have h11 : C (41472 * k + 1615) = 124416 * k + 4846 := by
    unfold C
    simp [show (41472 * k + 1615) % 2 ≠ 0 by omega]
    omega
  have h12 : C (124416 * k + 4846) = 62208 * k + 2423 := by
    unfold C
    simp [show (124416 * k + 4846) % 2 = 0 by omega]
    omega
  have h13 : C (62208 * k + 2423) = 186624 * k + 7270 := by
    unfold C
    simp [show (62208 * k + 2423) % 2 ≠ 0 by omega]
    omega
  have h14 : C (186624 * k + 7270) = 93312 * k + 3635 := by
    unfold C
    simp [show (186624 * k + 7270) % 2 = 0 by omega]
    omega
  have h15 : C (93312 * k + 3635) = 279936 * k + 10906 := by
    unfold C
    simp [show (93312 * k + 3635) % 2 ≠ 0 by omega]
    omega
  have h16 : C (279936 * k + 10906) = 139968 * k + 5453 := by
    unfold C
    simp [show (279936 * k + 10906) % 2 = 0 by omega]
    omega
  have h17 : C (139968 * k + 5453) = 419904 * k + 16360 := by
    unfold C
    simp [show (139968 * k + 5453) % 2 ≠ 0 by omega]
    omega
  have h18 : C (419904 * k + 16360) = 209952 * k + 8180 := by
    unfold C
    simp [show (419904 * k + 16360) % 2 = 0 by omega]
    omega
  have h19 : C (209952 * k + 8180) = 104976 * k + 4090 := by
    unfold C
    simp [show (209952 * k + 8180) % 2 = 0 by omega]
    omega
  have h20 : C (104976 * k + 4090) = 52488 * k + 2045 := by
    unfold C
    simp [show (104976 * k + 4090) % 2 = 0 by omega]
    omega
  have h21 : C (52488 * k + 2045) = 157464 * k + 6136 := by
    unfold C
    simp [show (52488 * k + 2045) % 2 ≠ 0 by omega]
    omega
  have h22 : C (157464 * k + 6136) = 78732 * k + 3068 := by
    unfold C
    simp [show (157464 * k + 6136) % 2 = 0 by omega]
    omega
  have h23 : C (78732 * k + 3068) = 39366 * k + 1534 := by
    unfold C
    simp [show (78732 * k + 3068) % 2 = 0 by omega]
    omega
  have h24 : C (39366 * k + 1534) = 19683 * k + 767 := by
    unfold C
    simp [show (39366 * k + 1534) % 2 = 0 by omega]
    omega
  have hIter : iterate (32768 * k + 1275) 24 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (32768 * k + 1275)))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24]
  · omega

theorem descent_mod32768_1775 : ∀ k : Nat, iterate (32768 * k + 1775) 24 = 19683 * k + 1067 ∧ 19683 * k + 1067 < 32768 * k + 1775 := by
  intro k
  have h1 : C (32768 * k + 1775) = 98304 * k + 5326 := by
    unfold C
    simp [show (32768 * k + 1775) % 2 ≠ 0 by omega]
    omega
  have h2 : C (98304 * k + 5326) = 49152 * k + 2663 := by
    unfold C
    simp [show (98304 * k + 5326) % 2 = 0 by omega]
    omega
  have h3 : C (49152 * k + 2663) = 147456 * k + 7990 := by
    unfold C
    simp [show (49152 * k + 2663) % 2 ≠ 0 by omega]
    omega
  have h4 : C (147456 * k + 7990) = 73728 * k + 3995 := by
    unfold C
    simp [show (147456 * k + 7990) % 2 = 0 by omega]
    omega
  have h5 : C (73728 * k + 3995) = 221184 * k + 11986 := by
    unfold C
    simp [show (73728 * k + 3995) % 2 ≠ 0 by omega]
    omega
  have h6 : C (221184 * k + 11986) = 110592 * k + 5993 := by
    unfold C
    simp [show (221184 * k + 11986) % 2 = 0 by omega]
    omega
  have h7 : C (110592 * k + 5993) = 331776 * k + 17980 := by
    unfold C
    simp [show (110592 * k + 5993) % 2 ≠ 0 by omega]
    omega
  have h8 : C (331776 * k + 17980) = 165888 * k + 8990 := by
    unfold C
    simp [show (331776 * k + 17980) % 2 = 0 by omega]
    omega
  have h9 : C (165888 * k + 8990) = 82944 * k + 4495 := by
    unfold C
    simp [show (165888 * k + 8990) % 2 = 0 by omega]
    omega
  have h10 : C (82944 * k + 4495) = 248832 * k + 13486 := by
    unfold C
    simp [show (82944 * k + 4495) % 2 ≠ 0 by omega]
    omega
  have h11 : C (248832 * k + 13486) = 124416 * k + 6743 := by
    unfold C
    simp [show (248832 * k + 13486) % 2 = 0 by omega]
    omega
  have h12 : C (124416 * k + 6743) = 373248 * k + 20230 := by
    unfold C
    simp [show (124416 * k + 6743) % 2 ≠ 0 by omega]
    omega
  have h13 : C (373248 * k + 20230) = 186624 * k + 10115 := by
    unfold C
    simp [show (373248 * k + 20230) % 2 = 0 by omega]
    omega
  have h14 : C (186624 * k + 10115) = 559872 * k + 30346 := by
    unfold C
    simp [show (186624 * k + 10115) % 2 ≠ 0 by omega]
    omega
  have h15 : C (559872 * k + 30346) = 279936 * k + 15173 := by
    unfold C
    simp [show (559872 * k + 30346) % 2 = 0 by omega]
    omega
  have h16 : C (279936 * k + 15173) = 839808 * k + 45520 := by
    unfold C
    simp [show (279936 * k + 15173) % 2 ≠ 0 by omega]
    omega
  have h17 : C (839808 * k + 45520) = 419904 * k + 22760 := by
    unfold C
    simp [show (839808 * k + 45520) % 2 = 0 by omega]
    omega
  have h18 : C (419904 * k + 22760) = 209952 * k + 11380 := by
    unfold C
    simp [show (419904 * k + 22760) % 2 = 0 by omega]
    omega
  have h19 : C (209952 * k + 11380) = 104976 * k + 5690 := by
    unfold C
    simp [show (209952 * k + 11380) % 2 = 0 by omega]
    omega
  have h20 : C (104976 * k + 5690) = 52488 * k + 2845 := by
    unfold C
    simp [show (104976 * k + 5690) % 2 = 0 by omega]
    omega
  have h21 : C (52488 * k + 2845) = 157464 * k + 8536 := by
    unfold C
    simp [show (52488 * k + 2845) % 2 ≠ 0 by omega]
    omega
  have h22 : C (157464 * k + 8536) = 78732 * k + 4268 := by
    unfold C
    simp [show (157464 * k + 8536) % 2 = 0 by omega]
    omega
  have h23 : C (78732 * k + 4268) = 39366 * k + 2134 := by
    unfold C
    simp [show (78732 * k + 4268) % 2 = 0 by omega]
    omega
  have h24 : C (39366 * k + 2134) = 19683 * k + 1067 := by
    unfold C
    simp [show (39366 * k + 2134) % 2 = 0 by omega]
    omega
  have hIter : iterate (32768 * k + 1775) 24 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (32768 * k + 1775)))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24]
  · omega

#print axioms descent_mod32768_411
#print axioms descent_mod32768_415
#print axioms descent_mod32768_831
#print axioms descent_mod32768_839
#print axioms descent_mod32768_1095
#print axioms descent_mod32768_1151
#print axioms descent_mod32768_1275
#print axioms descent_mod32768_1775

end CollatzM15ShardA
