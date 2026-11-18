import Mathlib.Data.Nat.Prime.Basic

namespace CollatzM15ShardK

def C (n : Nat) : Nat := if n % 2 = 0 then n / 2 else 3 * n + 1

def iterate (n t : Nat) : Nat := Nat.rec n (fun _ previous => C previous) t

theorem descent_mod32768_14399 : ∀ k : Nat, iterate (32768 * k + 14399) 24 = 19683 * k + 8650 ∧ 19683 * k + 8650 < 32768 * k + 14399 := by
  intro k
  have h1 : C (32768 * k + 14399) = 98304 * k + 43198 := by
    unfold C
    simp [show (32768 * k + 14399) % 2 ≠ 0 by omega]
    omega
  have h2 : C (98304 * k + 43198) = 49152 * k + 21599 := by
    unfold C
    simp [show (98304 * k + 43198) % 2 = 0 by omega]
    omega
  have h3 : C (49152 * k + 21599) = 147456 * k + 64798 := by
    unfold C
    simp [show (49152 * k + 21599) % 2 ≠ 0 by omega]
    omega
  have h4 : C (147456 * k + 64798) = 73728 * k + 32399 := by
    unfold C
    simp [show (147456 * k + 64798) % 2 = 0 by omega]
    omega
  have h5 : C (73728 * k + 32399) = 221184 * k + 97198 := by
    unfold C
    simp [show (73728 * k + 32399) % 2 ≠ 0 by omega]
    omega
  have h6 : C (221184 * k + 97198) = 110592 * k + 48599 := by
    unfold C
    simp [show (221184 * k + 97198) % 2 = 0 by omega]
    omega
  have h7 : C (110592 * k + 48599) = 331776 * k + 145798 := by
    unfold C
    simp [show (110592 * k + 48599) % 2 ≠ 0 by omega]
    omega
  have h8 : C (331776 * k + 145798) = 165888 * k + 72899 := by
    unfold C
    simp [show (331776 * k + 145798) % 2 = 0 by omega]
    omega
  have h9 : C (165888 * k + 72899) = 497664 * k + 218698 := by
    unfold C
    simp [show (165888 * k + 72899) % 2 ≠ 0 by omega]
    omega
  have h10 : C (497664 * k + 218698) = 248832 * k + 109349 := by
    unfold C
    simp [show (497664 * k + 218698) % 2 = 0 by omega]
    omega
  have h11 : C (248832 * k + 109349) = 746496 * k + 328048 := by
    unfold C
    simp [show (248832 * k + 109349) % 2 ≠ 0 by omega]
    omega
  have h12 : C (746496 * k + 328048) = 373248 * k + 164024 := by
    unfold C
    simp [show (746496 * k + 328048) % 2 = 0 by omega]
    omega
  have h13 : C (373248 * k + 164024) = 186624 * k + 82012 := by
    unfold C
    simp [show (373248 * k + 164024) % 2 = 0 by omega]
    omega
  have h14 : C (186624 * k + 82012) = 93312 * k + 41006 := by
    unfold C
    simp [show (186624 * k + 82012) % 2 = 0 by omega]
    omega
  have h15 : C (93312 * k + 41006) = 46656 * k + 20503 := by
    unfold C
    simp [show (93312 * k + 41006) % 2 = 0 by omega]
    omega
  have h16 : C (46656 * k + 20503) = 139968 * k + 61510 := by
    unfold C
    simp [show (46656 * k + 20503) % 2 ≠ 0 by omega]
    omega
  have h17 : C (139968 * k + 61510) = 69984 * k + 30755 := by
    unfold C
    simp [show (139968 * k + 61510) % 2 = 0 by omega]
    omega
  have h18 : C (69984 * k + 30755) = 209952 * k + 92266 := by
    unfold C
    simp [show (69984 * k + 30755) % 2 ≠ 0 by omega]
    omega
  have h19 : C (209952 * k + 92266) = 104976 * k + 46133 := by
    unfold C
    simp [show (209952 * k + 92266) % 2 = 0 by omega]
    omega
  have h20 : C (104976 * k + 46133) = 314928 * k + 138400 := by
    unfold C
    simp [show (104976 * k + 46133) % 2 ≠ 0 by omega]
    omega
  have h21 : C (314928 * k + 138400) = 157464 * k + 69200 := by
    unfold C
    simp [show (314928 * k + 138400) % 2 = 0 by omega]
    omega
  have h22 : C (157464 * k + 69200) = 78732 * k + 34600 := by
    unfold C
    simp [show (157464 * k + 69200) % 2 = 0 by omega]
    omega
  have h23 : C (78732 * k + 34600) = 39366 * k + 17300 := by
    unfold C
    simp [show (78732 * k + 34600) % 2 = 0 by omega]
    omega
  have h24 : C (39366 * k + 17300) = 19683 * k + 8650 := by
    unfold C
    simp [show (39366 * k + 17300) % 2 = 0 by omega]
    omega
  have hIter : iterate (32768 * k + 14399) 24 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (32768 * k + 14399)))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24]
  · omega

theorem descent_mod32768_14439 : ∀ k : Nat, iterate (32768 * k + 14439) 24 = 19683 * k + 8674 ∧ 19683 * k + 8674 < 32768 * k + 14439 := by
  intro k
  have h1 : C (32768 * k + 14439) = 98304 * k + 43318 := by
    unfold C
    simp [show (32768 * k + 14439) % 2 ≠ 0 by omega]
    omega
  have h2 : C (98304 * k + 43318) = 49152 * k + 21659 := by
    unfold C
    simp [show (98304 * k + 43318) % 2 = 0 by omega]
    omega
  have h3 : C (49152 * k + 21659) = 147456 * k + 64978 := by
    unfold C
    simp [show (49152 * k + 21659) % 2 ≠ 0 by omega]
    omega
  have h4 : C (147456 * k + 64978) = 73728 * k + 32489 := by
    unfold C
    simp [show (147456 * k + 64978) % 2 = 0 by omega]
    omega
  have h5 : C (73728 * k + 32489) = 221184 * k + 97468 := by
    unfold C
    simp [show (73728 * k + 32489) % 2 ≠ 0 by omega]
    omega
  have h6 : C (221184 * k + 97468) = 110592 * k + 48734 := by
    unfold C
    simp [show (221184 * k + 97468) % 2 = 0 by omega]
    omega
  have h7 : C (110592 * k + 48734) = 55296 * k + 24367 := by
    unfold C
    simp [show (110592 * k + 48734) % 2 = 0 by omega]
    omega
  have h8 : C (55296 * k + 24367) = 165888 * k + 73102 := by
    unfold C
    simp [show (55296 * k + 24367) % 2 ≠ 0 by omega]
    omega
  have h9 : C (165888 * k + 73102) = 82944 * k + 36551 := by
    unfold C
    simp [show (165888 * k + 73102) % 2 = 0 by omega]
    omega
  have h10 : C (82944 * k + 36551) = 248832 * k + 109654 := by
    unfold C
    simp [show (82944 * k + 36551) % 2 ≠ 0 by omega]
    omega
  have h11 : C (248832 * k + 109654) = 124416 * k + 54827 := by
    unfold C
    simp [show (248832 * k + 109654) % 2 = 0 by omega]
    omega
  have h12 : C (124416 * k + 54827) = 373248 * k + 164482 := by
    unfold C
    simp [show (124416 * k + 54827) % 2 ≠ 0 by omega]
    omega
  have h13 : C (373248 * k + 164482) = 186624 * k + 82241 := by
    unfold C
    simp [show (373248 * k + 164482) % 2 = 0 by omega]
    omega
  have h14 : C (186624 * k + 82241) = 559872 * k + 246724 := by
    unfold C
    simp [show (186624 * k + 82241) % 2 ≠ 0 by omega]
    omega
  have h15 : C (559872 * k + 246724) = 279936 * k + 123362 := by
    unfold C
    simp [show (559872 * k + 246724) % 2 = 0 by omega]
    omega
  have h16 : C (279936 * k + 123362) = 139968 * k + 61681 := by
    unfold C
    simp [show (279936 * k + 123362) % 2 = 0 by omega]
    omega
  have h17 : C (139968 * k + 61681) = 419904 * k + 185044 := by
    unfold C
    simp [show (139968 * k + 61681) % 2 ≠ 0 by omega]
    omega
  have h18 : C (419904 * k + 185044) = 209952 * k + 92522 := by
    unfold C
    simp [show (419904 * k + 185044) % 2 = 0 by omega]
    omega
  have h19 : C (209952 * k + 92522) = 104976 * k + 46261 := by
    unfold C
    simp [show (209952 * k + 92522) % 2 = 0 by omega]
    omega
  have h20 : C (104976 * k + 46261) = 314928 * k + 138784 := by
    unfold C
    simp [show (104976 * k + 46261) % 2 ≠ 0 by omega]
    omega
  have h21 : C (314928 * k + 138784) = 157464 * k + 69392 := by
    unfold C
    simp [show (314928 * k + 138784) % 2 = 0 by omega]
    omega
  have h22 : C (157464 * k + 69392) = 78732 * k + 34696 := by
    unfold C
    simp [show (157464 * k + 69392) % 2 = 0 by omega]
    omega
  have h23 : C (78732 * k + 34696) = 39366 * k + 17348 := by
    unfold C
    simp [show (78732 * k + 34696) % 2 = 0 by omega]
    omega
  have h24 : C (39366 * k + 17348) = 19683 * k + 8674 := by
    unfold C
    simp [show (39366 * k + 17348) % 2 = 0 by omega]
    omega
  have hIter : iterate (32768 * k + 14439) 24 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (32768 * k + 14439)))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24]
  · omega

theorem descent_mod32768_14895 : ∀ k : Nat, iterate (32768 * k + 14895) 24 = 19683 * k + 8948 ∧ 19683 * k + 8948 < 32768 * k + 14895 := by
  intro k
  have h1 : C (32768 * k + 14895) = 98304 * k + 44686 := by
    unfold C
    simp [show (32768 * k + 14895) % 2 ≠ 0 by omega]
    omega
  have h2 : C (98304 * k + 44686) = 49152 * k + 22343 := by
    unfold C
    simp [show (98304 * k + 44686) % 2 = 0 by omega]
    omega
  have h3 : C (49152 * k + 22343) = 147456 * k + 67030 := by
    unfold C
    simp [show (49152 * k + 22343) % 2 ≠ 0 by omega]
    omega
  have h4 : C (147456 * k + 67030) = 73728 * k + 33515 := by
    unfold C
    simp [show (147456 * k + 67030) % 2 = 0 by omega]
    omega
  have h5 : C (73728 * k + 33515) = 221184 * k + 100546 := by
    unfold C
    simp [show (73728 * k + 33515) % 2 ≠ 0 by omega]
    omega
  have h6 : C (221184 * k + 100546) = 110592 * k + 50273 := by
    unfold C
    simp [show (221184 * k + 100546) % 2 = 0 by omega]
    omega
  have h7 : C (110592 * k + 50273) = 331776 * k + 150820 := by
    unfold C
    simp [show (110592 * k + 50273) % 2 ≠ 0 by omega]
    omega
  have h8 : C (331776 * k + 150820) = 165888 * k + 75410 := by
    unfold C
    simp [show (331776 * k + 150820) % 2 = 0 by omega]
    omega
  have h9 : C (165888 * k + 75410) = 82944 * k + 37705 := by
    unfold C
    simp [show (165888 * k + 75410) % 2 = 0 by omega]
    omega
  have h10 : C (82944 * k + 37705) = 248832 * k + 113116 := by
    unfold C
    simp [show (82944 * k + 37705) % 2 ≠ 0 by omega]
    omega
  have h11 : C (248832 * k + 113116) = 124416 * k + 56558 := by
    unfold C
    simp [show (248832 * k + 113116) % 2 = 0 by omega]
    omega
  have h12 : C (124416 * k + 56558) = 62208 * k + 28279 := by
    unfold C
    simp [show (124416 * k + 56558) % 2 = 0 by omega]
    omega
  have h13 : C (62208 * k + 28279) = 186624 * k + 84838 := by
    unfold C
    simp [show (62208 * k + 28279) % 2 ≠ 0 by omega]
    omega
  have h14 : C (186624 * k + 84838) = 93312 * k + 42419 := by
    unfold C
    simp [show (186624 * k + 84838) % 2 = 0 by omega]
    omega
  have h15 : C (93312 * k + 42419) = 279936 * k + 127258 := by
    unfold C
    simp [show (93312 * k + 42419) % 2 ≠ 0 by omega]
    omega
  have h16 : C (279936 * k + 127258) = 139968 * k + 63629 := by
    unfold C
    simp [show (279936 * k + 127258) % 2 = 0 by omega]
    omega
  have h17 : C (139968 * k + 63629) = 419904 * k + 190888 := by
    unfold C
    simp [show (139968 * k + 63629) % 2 ≠ 0 by omega]
    omega
  have h18 : C (419904 * k + 190888) = 209952 * k + 95444 := by
    unfold C
    simp [show (419904 * k + 190888) % 2 = 0 by omega]
    omega
  have h19 : C (209952 * k + 95444) = 104976 * k + 47722 := by
    unfold C
    simp [show (209952 * k + 95444) % 2 = 0 by omega]
    omega
  have h20 : C (104976 * k + 47722) = 52488 * k + 23861 := by
    unfold C
    simp [show (104976 * k + 47722) % 2 = 0 by omega]
    omega
  have h21 : C (52488 * k + 23861) = 157464 * k + 71584 := by
    unfold C
    simp [show (52488 * k + 23861) % 2 ≠ 0 by omega]
    omega
  have h22 : C (157464 * k + 71584) = 78732 * k + 35792 := by
    unfold C
    simp [show (157464 * k + 71584) % 2 = 0 by omega]
    omega
  have h23 : C (78732 * k + 35792) = 39366 * k + 17896 := by
    unfold C
    simp [show (78732 * k + 35792) % 2 = 0 by omega]
    omega
  have h24 : C (39366 * k + 17896) = 19683 * k + 8948 := by
    unfold C
    simp [show (39366 * k + 17896) % 2 = 0 by omega]
    omega
  have hIter : iterate (32768 * k + 14895) 24 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (32768 * k + 14895)))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24]
  · omega

theorem descent_mod32768_15295 : ∀ k : Nat, iterate (32768 * k + 15295) 24 = 19683 * k + 9188 ∧ 19683 * k + 9188 < 32768 * k + 15295 := by
  intro k
  have h1 : C (32768 * k + 15295) = 98304 * k + 45886 := by
    unfold C
    simp [show (32768 * k + 15295) % 2 ≠ 0 by omega]
    omega
  have h2 : C (98304 * k + 45886) = 49152 * k + 22943 := by
    unfold C
    simp [show (98304 * k + 45886) % 2 = 0 by omega]
    omega
  have h3 : C (49152 * k + 22943) = 147456 * k + 68830 := by
    unfold C
    simp [show (49152 * k + 22943) % 2 ≠ 0 by omega]
    omega
  have h4 : C (147456 * k + 68830) = 73728 * k + 34415 := by
    unfold C
    simp [show (147456 * k + 68830) % 2 = 0 by omega]
    omega
  have h5 : C (73728 * k + 34415) = 221184 * k + 103246 := by
    unfold C
    simp [show (73728 * k + 34415) % 2 ≠ 0 by omega]
    omega
  have h6 : C (221184 * k + 103246) = 110592 * k + 51623 := by
    unfold C
    simp [show (221184 * k + 103246) % 2 = 0 by omega]
    omega
  have h7 : C (110592 * k + 51623) = 331776 * k + 154870 := by
    unfold C
    simp [show (110592 * k + 51623) % 2 ≠ 0 by omega]
    omega
  have h8 : C (331776 * k + 154870) = 165888 * k + 77435 := by
    unfold C
    simp [show (331776 * k + 154870) % 2 = 0 by omega]
    omega
  have h9 : C (165888 * k + 77435) = 497664 * k + 232306 := by
    unfold C
    simp [show (165888 * k + 77435) % 2 ≠ 0 by omega]
    omega
  have h10 : C (497664 * k + 232306) = 248832 * k + 116153 := by
    unfold C
    simp [show (497664 * k + 232306) % 2 = 0 by omega]
    omega
  have h11 : C (248832 * k + 116153) = 746496 * k + 348460 := by
    unfold C
    simp [show (248832 * k + 116153) % 2 ≠ 0 by omega]
    omega
  have h12 : C (746496 * k + 348460) = 373248 * k + 174230 := by
    unfold C
    simp [show (746496 * k + 348460) % 2 = 0 by omega]
    omega
  have h13 : C (373248 * k + 174230) = 186624 * k + 87115 := by
    unfold C
    simp [show (373248 * k + 174230) % 2 = 0 by omega]
    omega
  have h14 : C (186624 * k + 87115) = 559872 * k + 261346 := by
    unfold C
    simp [show (186624 * k + 87115) % 2 ≠ 0 by omega]
    omega
  have h15 : C (559872 * k + 261346) = 279936 * k + 130673 := by
    unfold C
    simp [show (559872 * k + 261346) % 2 = 0 by omega]
    omega
  have h16 : C (279936 * k + 130673) = 839808 * k + 392020 := by
    unfold C
    simp [show (279936 * k + 130673) % 2 ≠ 0 by omega]
    omega
  have h17 : C (839808 * k + 392020) = 419904 * k + 196010 := by
    unfold C
    simp [show (839808 * k + 392020) % 2 = 0 by omega]
    omega
  have h18 : C (419904 * k + 196010) = 209952 * k + 98005 := by
    unfold C
    simp [show (419904 * k + 196010) % 2 = 0 by omega]
    omega
  have h19 : C (209952 * k + 98005) = 629856 * k + 294016 := by
    unfold C
    simp [show (209952 * k + 98005) % 2 ≠ 0 by omega]
    omega
  have h20 : C (629856 * k + 294016) = 314928 * k + 147008 := by
    unfold C
    simp [show (629856 * k + 294016) % 2 = 0 by omega]
    omega
  have h21 : C (314928 * k + 147008) = 157464 * k + 73504 := by
    unfold C
    simp [show (314928 * k + 147008) % 2 = 0 by omega]
    omega
  have h22 : C (157464 * k + 73504) = 78732 * k + 36752 := by
    unfold C
    simp [show (157464 * k + 73504) % 2 = 0 by omega]
    omega
  have h23 : C (78732 * k + 36752) = 39366 * k + 18376 := by
    unfold C
    simp [show (78732 * k + 36752) % 2 = 0 by omega]
    omega
  have h24 : C (39366 * k + 18376) = 19683 * k + 9188 := by
    unfold C
    simp [show (39366 * k + 18376) % 2 = 0 by omega]
    omega
  have hIter : iterate (32768 * k + 15295) 24 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (32768 * k + 15295)))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24]
  · omega

theorem descent_mod32768_15343 : ∀ k : Nat, iterate (32768 * k + 15343) 24 = 19683 * k + 9217 ∧ 19683 * k + 9217 < 32768 * k + 15343 := by
  intro k
  have h1 : C (32768 * k + 15343) = 98304 * k + 46030 := by
    unfold C
    simp [show (32768 * k + 15343) % 2 ≠ 0 by omega]
    omega
  have h2 : C (98304 * k + 46030) = 49152 * k + 23015 := by
    unfold C
    simp [show (98304 * k + 46030) % 2 = 0 by omega]
    omega
  have h3 : C (49152 * k + 23015) = 147456 * k + 69046 := by
    unfold C
    simp [show (49152 * k + 23015) % 2 ≠ 0 by omega]
    omega
  have h4 : C (147456 * k + 69046) = 73728 * k + 34523 := by
    unfold C
    simp [show (147456 * k + 69046) % 2 = 0 by omega]
    omega
  have h5 : C (73728 * k + 34523) = 221184 * k + 103570 := by
    unfold C
    simp [show (73728 * k + 34523) % 2 ≠ 0 by omega]
    omega
  have h6 : C (221184 * k + 103570) = 110592 * k + 51785 := by
    unfold C
    simp [show (221184 * k + 103570) % 2 = 0 by omega]
    omega
  have h7 : C (110592 * k + 51785) = 331776 * k + 155356 := by
    unfold C
    simp [show (110592 * k + 51785) % 2 ≠ 0 by omega]
    omega
  have h8 : C (331776 * k + 155356) = 165888 * k + 77678 := by
    unfold C
    simp [show (331776 * k + 155356) % 2 = 0 by omega]
    omega
  have h9 : C (165888 * k + 77678) = 82944 * k + 38839 := by
    unfold C
    simp [show (165888 * k + 77678) % 2 = 0 by omega]
    omega
  have h10 : C (82944 * k + 38839) = 248832 * k + 116518 := by
    unfold C
    simp [show (82944 * k + 38839) % 2 ≠ 0 by omega]
    omega
  have h11 : C (248832 * k + 116518) = 124416 * k + 58259 := by
    unfold C
    simp [show (248832 * k + 116518) % 2 = 0 by omega]
    omega
  have h12 : C (124416 * k + 58259) = 373248 * k + 174778 := by
    unfold C
    simp [show (124416 * k + 58259) % 2 ≠ 0 by omega]
    omega
  have h13 : C (373248 * k + 174778) = 186624 * k + 87389 := by
    unfold C
    simp [show (373248 * k + 174778) % 2 = 0 by omega]
    omega
  have h14 : C (186624 * k + 87389) = 559872 * k + 262168 := by
    unfold C
    simp [show (186624 * k + 87389) % 2 ≠ 0 by omega]
    omega
  have h15 : C (559872 * k + 262168) = 279936 * k + 131084 := by
    unfold C
    simp [show (559872 * k + 262168) % 2 = 0 by omega]
    omega
  have h16 : C (279936 * k + 131084) = 139968 * k + 65542 := by
    unfold C
    simp [show (279936 * k + 131084) % 2 = 0 by omega]
    omega
  have h17 : C (139968 * k + 65542) = 69984 * k + 32771 := by
    unfold C
    simp [show (139968 * k + 65542) % 2 = 0 by omega]
    omega
  have h18 : C (69984 * k + 32771) = 209952 * k + 98314 := by
    unfold C
    simp [show (69984 * k + 32771) % 2 ≠ 0 by omega]
    omega
  have h19 : C (209952 * k + 98314) = 104976 * k + 49157 := by
    unfold C
    simp [show (209952 * k + 98314) % 2 = 0 by omega]
    omega
  have h20 : C (104976 * k + 49157) = 314928 * k + 147472 := by
    unfold C
    simp [show (104976 * k + 49157) % 2 ≠ 0 by omega]
    omega
  have h21 : C (314928 * k + 147472) = 157464 * k + 73736 := by
    unfold C
    simp [show (314928 * k + 147472) % 2 = 0 by omega]
    omega
  have h22 : C (157464 * k + 73736) = 78732 * k + 36868 := by
    unfold C
    simp [show (157464 * k + 73736) % 2 = 0 by omega]
    omega
  have h23 : C (78732 * k + 36868) = 39366 * k + 18434 := by
    unfold C
    simp [show (78732 * k + 36868) % 2 = 0 by omega]
    omega
  have h24 : C (39366 * k + 18434) = 19683 * k + 9217 := by
    unfold C
    simp [show (39366 * k + 18434) % 2 = 0 by omega]
    omega
  have hIter : iterate (32768 * k + 15343) 24 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (32768 * k + 15343)))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24]
  · omega

theorem descent_mod32768_15839 : ∀ k : Nat, iterate (32768 * k + 15839) 24 = 19683 * k + 9515 ∧ 19683 * k + 9515 < 32768 * k + 15839 := by
  intro k
  have h1 : C (32768 * k + 15839) = 98304 * k + 47518 := by
    unfold C
    simp [show (32768 * k + 15839) % 2 ≠ 0 by omega]
    omega
  have h2 : C (98304 * k + 47518) = 49152 * k + 23759 := by
    unfold C
    simp [show (98304 * k + 47518) % 2 = 0 by omega]
    omega
  have h3 : C (49152 * k + 23759) = 147456 * k + 71278 := by
    unfold C
    simp [show (49152 * k + 23759) % 2 ≠ 0 by omega]
    omega
  have h4 : C (147456 * k + 71278) = 73728 * k + 35639 := by
    unfold C
    simp [show (147456 * k + 71278) % 2 = 0 by omega]
    omega
  have h5 : C (73728 * k + 35639) = 221184 * k + 106918 := by
    unfold C
    simp [show (73728 * k + 35639) % 2 ≠ 0 by omega]
    omega
  have h6 : C (221184 * k + 106918) = 110592 * k + 53459 := by
    unfold C
    simp [show (221184 * k + 106918) % 2 = 0 by omega]
    omega
  have h7 : C (110592 * k + 53459) = 331776 * k + 160378 := by
    unfold C
    simp [show (110592 * k + 53459) % 2 ≠ 0 by omega]
    omega
  have h8 : C (331776 * k + 160378) = 165888 * k + 80189 := by
    unfold C
    simp [show (331776 * k + 160378) % 2 = 0 by omega]
    omega
  have h9 : C (165888 * k + 80189) = 497664 * k + 240568 := by
    unfold C
    simp [show (165888 * k + 80189) % 2 ≠ 0 by omega]
    omega
  have h10 : C (497664 * k + 240568) = 248832 * k + 120284 := by
    unfold C
    simp [show (497664 * k + 240568) % 2 = 0 by omega]
    omega
  have h11 : C (248832 * k + 120284) = 124416 * k + 60142 := by
    unfold C
    simp [show (248832 * k + 120284) % 2 = 0 by omega]
    omega
  have h12 : C (124416 * k + 60142) = 62208 * k + 30071 := by
    unfold C
    simp [show (124416 * k + 60142) % 2 = 0 by omega]
    omega
  have h13 : C (62208 * k + 30071) = 186624 * k + 90214 := by
    unfold C
    simp [show (62208 * k + 30071) % 2 ≠ 0 by omega]
    omega
  have h14 : C (186624 * k + 90214) = 93312 * k + 45107 := by
    unfold C
    simp [show (186624 * k + 90214) % 2 = 0 by omega]
    omega
  have h15 : C (93312 * k + 45107) = 279936 * k + 135322 := by
    unfold C
    simp [show (93312 * k + 45107) % 2 ≠ 0 by omega]
    omega
  have h16 : C (279936 * k + 135322) = 139968 * k + 67661 := by
    unfold C
    simp [show (279936 * k + 135322) % 2 = 0 by omega]
    omega
  have h17 : C (139968 * k + 67661) = 419904 * k + 202984 := by
    unfold C
    simp [show (139968 * k + 67661) % 2 ≠ 0 by omega]
    omega
  have h18 : C (419904 * k + 202984) = 209952 * k + 101492 := by
    unfold C
    simp [show (419904 * k + 202984) % 2 = 0 by omega]
    omega
  have h19 : C (209952 * k + 101492) = 104976 * k + 50746 := by
    unfold C
    simp [show (209952 * k + 101492) % 2 = 0 by omega]
    omega
  have h20 : C (104976 * k + 50746) = 52488 * k + 25373 := by
    unfold C
    simp [show (104976 * k + 50746) % 2 = 0 by omega]
    omega
  have h21 : C (52488 * k + 25373) = 157464 * k + 76120 := by
    unfold C
    simp [show (52488 * k + 25373) % 2 ≠ 0 by omega]
    omega
  have h22 : C (157464 * k + 76120) = 78732 * k + 38060 := by
    unfold C
    simp [show (157464 * k + 76120) % 2 = 0 by omega]
    omega
  have h23 : C (78732 * k + 38060) = 39366 * k + 19030 := by
    unfold C
    simp [show (78732 * k + 38060) % 2 = 0 by omega]
    omega
  have h24 : C (39366 * k + 19030) = 19683 * k + 9515 := by
    unfold C
    simp [show (39366 * k + 19030) % 2 = 0 by omega]
    omega
  have hIter : iterate (32768 * k + 15839) 24 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (32768 * k + 15839)))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24]
  · omega

theorem descent_mod32768_15919 : ∀ k : Nat, iterate (32768 * k + 15919) 24 = 19683 * k + 9563 ∧ 19683 * k + 9563 < 32768 * k + 15919 := by
  intro k
  have h1 : C (32768 * k + 15919) = 98304 * k + 47758 := by
    unfold C
    simp [show (32768 * k + 15919) % 2 ≠ 0 by omega]
    omega
  have h2 : C (98304 * k + 47758) = 49152 * k + 23879 := by
    unfold C
    simp [show (98304 * k + 47758) % 2 = 0 by omega]
    omega
  have h3 : C (49152 * k + 23879) = 147456 * k + 71638 := by
    unfold C
    simp [show (49152 * k + 23879) % 2 ≠ 0 by omega]
    omega
  have h4 : C (147456 * k + 71638) = 73728 * k + 35819 := by
    unfold C
    simp [show (147456 * k + 71638) % 2 = 0 by omega]
    omega
  have h5 : C (73728 * k + 35819) = 221184 * k + 107458 := by
    unfold C
    simp [show (73728 * k + 35819) % 2 ≠ 0 by omega]
    omega
  have h6 : C (221184 * k + 107458) = 110592 * k + 53729 := by
    unfold C
    simp [show (221184 * k + 107458) % 2 = 0 by omega]
    omega
  have h7 : C (110592 * k + 53729) = 331776 * k + 161188 := by
    unfold C
    simp [show (110592 * k + 53729) % 2 ≠ 0 by omega]
    omega
  have h8 : C (331776 * k + 161188) = 165888 * k + 80594 := by
    unfold C
    simp [show (331776 * k + 161188) % 2 = 0 by omega]
    omega
  have h9 : C (165888 * k + 80594) = 82944 * k + 40297 := by
    unfold C
    simp [show (165888 * k + 80594) % 2 = 0 by omega]
    omega
  have h10 : C (82944 * k + 40297) = 248832 * k + 120892 := by
    unfold C
    simp [show (82944 * k + 40297) % 2 ≠ 0 by omega]
    omega
  have h11 : C (248832 * k + 120892) = 124416 * k + 60446 := by
    unfold C
    simp [show (248832 * k + 120892) % 2 = 0 by omega]
    omega
  have h12 : C (124416 * k + 60446) = 62208 * k + 30223 := by
    unfold C
    simp [show (124416 * k + 60446) % 2 = 0 by omega]
    omega
  have h13 : C (62208 * k + 30223) = 186624 * k + 90670 := by
    unfold C
    simp [show (62208 * k + 30223) % 2 ≠ 0 by omega]
    omega
  have h14 : C (186624 * k + 90670) = 93312 * k + 45335 := by
    unfold C
    simp [show (186624 * k + 90670) % 2 = 0 by omega]
    omega
  have h15 : C (93312 * k + 45335) = 279936 * k + 136006 := by
    unfold C
    simp [show (93312 * k + 45335) % 2 ≠ 0 by omega]
    omega
  have h16 : C (279936 * k + 136006) = 139968 * k + 68003 := by
    unfold C
    simp [show (279936 * k + 136006) % 2 = 0 by omega]
    omega
  have h17 : C (139968 * k + 68003) = 419904 * k + 204010 := by
    unfold C
    simp [show (139968 * k + 68003) % 2 ≠ 0 by omega]
    omega
  have h18 : C (419904 * k + 204010) = 209952 * k + 102005 := by
    unfold C
    simp [show (419904 * k + 204010) % 2 = 0 by omega]
    omega
  have h19 : C (209952 * k + 102005) = 629856 * k + 306016 := by
    unfold C
    simp [show (209952 * k + 102005) % 2 ≠ 0 by omega]
    omega
  have h20 : C (629856 * k + 306016) = 314928 * k + 153008 := by
    unfold C
    simp [show (629856 * k + 306016) % 2 = 0 by omega]
    omega
  have h21 : C (314928 * k + 153008) = 157464 * k + 76504 := by
    unfold C
    simp [show (314928 * k + 153008) % 2 = 0 by omega]
    omega
  have h22 : C (157464 * k + 76504) = 78732 * k + 38252 := by
    unfold C
    simp [show (157464 * k + 76504) % 2 = 0 by omega]
    omega
  have h23 : C (78732 * k + 38252) = 39366 * k + 19126 := by
    unfold C
    simp [show (78732 * k + 38252) % 2 = 0 by omega]
    omega
  have h24 : C (39366 * k + 19126) = 19683 * k + 9563 := by
    unfold C
    simp [show (39366 * k + 19126) % 2 = 0 by omega]
    omega
  have hIter : iterate (32768 * k + 15919) 24 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (32768 * k + 15919)))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24]
  · omega

theorem descent_mod32768_16027 : ∀ k : Nat, iterate (32768 * k + 16027) 24 = 19683 * k + 9628 ∧ 19683 * k + 9628 < 32768 * k + 16027 := by
  intro k
  have h1 : C (32768 * k + 16027) = 98304 * k + 48082 := by
    unfold C
    simp [show (32768 * k + 16027) % 2 ≠ 0 by omega]
    omega
  have h2 : C (98304 * k + 48082) = 49152 * k + 24041 := by
    unfold C
    simp [show (98304 * k + 48082) % 2 = 0 by omega]
    omega
  have h3 : C (49152 * k + 24041) = 147456 * k + 72124 := by
    unfold C
    simp [show (49152 * k + 24041) % 2 ≠ 0 by omega]
    omega
  have h4 : C (147456 * k + 72124) = 73728 * k + 36062 := by
    unfold C
    simp [show (147456 * k + 72124) % 2 = 0 by omega]
    omega
  have h5 : C (73728 * k + 36062) = 36864 * k + 18031 := by
    unfold C
    simp [show (73728 * k + 36062) % 2 = 0 by omega]
    omega
  have h6 : C (36864 * k + 18031) = 110592 * k + 54094 := by
    unfold C
    simp [show (36864 * k + 18031) % 2 ≠ 0 by omega]
    omega
  have h7 : C (110592 * k + 54094) = 55296 * k + 27047 := by
    unfold C
    simp [show (110592 * k + 54094) % 2 = 0 by omega]
    omega
  have h8 : C (55296 * k + 27047) = 165888 * k + 81142 := by
    unfold C
    simp [show (55296 * k + 27047) % 2 ≠ 0 by omega]
    omega
  have h9 : C (165888 * k + 81142) = 82944 * k + 40571 := by
    unfold C
    simp [show (165888 * k + 81142) % 2 = 0 by omega]
    omega
  have h10 : C (82944 * k + 40571) = 248832 * k + 121714 := by
    unfold C
    simp [show (82944 * k + 40571) % 2 ≠ 0 by omega]
    omega
  have h11 : C (248832 * k + 121714) = 124416 * k + 60857 := by
    unfold C
    simp [show (248832 * k + 121714) % 2 = 0 by omega]
    omega
  have h12 : C (124416 * k + 60857) = 373248 * k + 182572 := by
    unfold C
    simp [show (124416 * k + 60857) % 2 ≠ 0 by omega]
    omega
  have h13 : C (373248 * k + 182572) = 186624 * k + 91286 := by
    unfold C
    simp [show (373248 * k + 182572) % 2 = 0 by omega]
    omega
  have h14 : C (186624 * k + 91286) = 93312 * k + 45643 := by
    unfold C
    simp [show (186624 * k + 91286) % 2 = 0 by omega]
    omega
  have h15 : C (93312 * k + 45643) = 279936 * k + 136930 := by
    unfold C
    simp [show (93312 * k + 45643) % 2 ≠ 0 by omega]
    omega
  have h16 : C (279936 * k + 136930) = 139968 * k + 68465 := by
    unfold C
    simp [show (279936 * k + 136930) % 2 = 0 by omega]
    omega
  have h17 : C (139968 * k + 68465) = 419904 * k + 205396 := by
    unfold C
    simp [show (139968 * k + 68465) % 2 ≠ 0 by omega]
    omega
  have h18 : C (419904 * k + 205396) = 209952 * k + 102698 := by
    unfold C
    simp [show (419904 * k + 205396) % 2 = 0 by omega]
    omega
  have h19 : C (209952 * k + 102698) = 104976 * k + 51349 := by
    unfold C
    simp [show (209952 * k + 102698) % 2 = 0 by omega]
    omega
  have h20 : C (104976 * k + 51349) = 314928 * k + 154048 := by
    unfold C
    simp [show (104976 * k + 51349) % 2 ≠ 0 by omega]
    omega
  have h21 : C (314928 * k + 154048) = 157464 * k + 77024 := by
    unfold C
    simp [show (314928 * k + 154048) % 2 = 0 by omega]
    omega
  have h22 : C (157464 * k + 77024) = 78732 * k + 38512 := by
    unfold C
    simp [show (157464 * k + 77024) % 2 = 0 by omega]
    omega
  have h23 : C (78732 * k + 38512) = 39366 * k + 19256 := by
    unfold C
    simp [show (78732 * k + 38512) % 2 = 0 by omega]
    omega
  have h24 : C (39366 * k + 19256) = 19683 * k + 9628 := by
    unfold C
    simp [show (39366 * k + 19256) % 2 = 0 by omega]
    omega
  have hIter : iterate (32768 * k + 16027) 24 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (32768 * k + 16027)))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24]
  · omega

#print axioms descent_mod32768_14399
#print axioms descent_mod32768_14439
#print axioms descent_mod32768_14895
#print axioms descent_mod32768_15295
#print axioms descent_mod32768_15343
#print axioms descent_mod32768_15839
#print axioms descent_mod32768_15919
#print axioms descent_mod32768_16027

end CollatzM15ShardK
