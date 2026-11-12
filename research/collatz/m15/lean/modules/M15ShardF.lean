import Mathlib.Data.Nat.Prime.Basic

namespace CollatzM15ShardF

def C (n : Nat) : Nat := if n % 2 = 0 then n / 2 else 3 * n + 1

def iterate (n t : Nat) : Nat := Nat.rec n (fun _ previous => C previous) t

theorem descent_mod32768_7487 : ∀ k : Nat, iterate (32768 * k + 7487) 24 = 19683 * k + 4498 ∧ 19683 * k + 4498 < 32768 * k + 7487 := by
  intro k
  have h1 : C (32768 * k + 7487) = 98304 * k + 22462 := by
    unfold C
    simp [show (32768 * k + 7487) % 2 ≠ 0 by omega]
    omega
  have h2 : C (98304 * k + 22462) = 49152 * k + 11231 := by
    unfold C
    simp [show (98304 * k + 22462) % 2 = 0 by omega]
    omega
  have h3 : C (49152 * k + 11231) = 147456 * k + 33694 := by
    unfold C
    simp [show (49152 * k + 11231) % 2 ≠ 0 by omega]
    omega
  have h4 : C (147456 * k + 33694) = 73728 * k + 16847 := by
    unfold C
    simp [show (147456 * k + 33694) % 2 = 0 by omega]
    omega
  have h5 : C (73728 * k + 16847) = 221184 * k + 50542 := by
    unfold C
    simp [show (73728 * k + 16847) % 2 ≠ 0 by omega]
    omega
  have h6 : C (221184 * k + 50542) = 110592 * k + 25271 := by
    unfold C
    simp [show (221184 * k + 50542) % 2 = 0 by omega]
    omega
  have h7 : C (110592 * k + 25271) = 331776 * k + 75814 := by
    unfold C
    simp [show (110592 * k + 25271) % 2 ≠ 0 by omega]
    omega
  have h8 : C (331776 * k + 75814) = 165888 * k + 37907 := by
    unfold C
    simp [show (331776 * k + 75814) % 2 = 0 by omega]
    omega
  have h9 : C (165888 * k + 37907) = 497664 * k + 113722 := by
    unfold C
    simp [show (165888 * k + 37907) % 2 ≠ 0 by omega]
    omega
  have h10 : C (497664 * k + 113722) = 248832 * k + 56861 := by
    unfold C
    simp [show (497664 * k + 113722) % 2 = 0 by omega]
    omega
  have h11 : C (248832 * k + 56861) = 746496 * k + 170584 := by
    unfold C
    simp [show (248832 * k + 56861) % 2 ≠ 0 by omega]
    omega
  have h12 : C (746496 * k + 170584) = 373248 * k + 85292 := by
    unfold C
    simp [show (746496 * k + 170584) % 2 = 0 by omega]
    omega
  have h13 : C (373248 * k + 85292) = 186624 * k + 42646 := by
    unfold C
    simp [show (373248 * k + 85292) % 2 = 0 by omega]
    omega
  have h14 : C (186624 * k + 42646) = 93312 * k + 21323 := by
    unfold C
    simp [show (186624 * k + 42646) % 2 = 0 by omega]
    omega
  have h15 : C (93312 * k + 21323) = 279936 * k + 63970 := by
    unfold C
    simp [show (93312 * k + 21323) % 2 ≠ 0 by omega]
    omega
  have h16 : C (279936 * k + 63970) = 139968 * k + 31985 := by
    unfold C
    simp [show (279936 * k + 63970) % 2 = 0 by omega]
    omega
  have h17 : C (139968 * k + 31985) = 419904 * k + 95956 := by
    unfold C
    simp [show (139968 * k + 31985) % 2 ≠ 0 by omega]
    omega
  have h18 : C (419904 * k + 95956) = 209952 * k + 47978 := by
    unfold C
    simp [show (419904 * k + 95956) % 2 = 0 by omega]
    omega
  have h19 : C (209952 * k + 47978) = 104976 * k + 23989 := by
    unfold C
    simp [show (209952 * k + 47978) % 2 = 0 by omega]
    omega
  have h20 : C (104976 * k + 23989) = 314928 * k + 71968 := by
    unfold C
    simp [show (104976 * k + 23989) % 2 ≠ 0 by omega]
    omega
  have h21 : C (314928 * k + 71968) = 157464 * k + 35984 := by
    unfold C
    simp [show (314928 * k + 71968) % 2 = 0 by omega]
    omega
  have h22 : C (157464 * k + 35984) = 78732 * k + 17992 := by
    unfold C
    simp [show (157464 * k + 35984) % 2 = 0 by omega]
    omega
  have h23 : C (78732 * k + 17992) = 39366 * k + 8996 := by
    unfold C
    simp [show (78732 * k + 17992) % 2 = 0 by omega]
    omega
  have h24 : C (39366 * k + 8996) = 19683 * k + 4498 := by
    unfold C
    simp [show (39366 * k + 8996) % 2 = 0 by omega]
    omega
  have hIter : iterate (32768 * k + 7487) 24 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (32768 * k + 7487)))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24]
  · omega

theorem descent_mod32768_7783 : ∀ k : Nat, iterate (32768 * k + 7783) 24 = 19683 * k + 4676 ∧ 19683 * k + 4676 < 32768 * k + 7783 := by
  intro k
  have h1 : C (32768 * k + 7783) = 98304 * k + 23350 := by
    unfold C
    simp [show (32768 * k + 7783) % 2 ≠ 0 by omega]
    omega
  have h2 : C (98304 * k + 23350) = 49152 * k + 11675 := by
    unfold C
    simp [show (98304 * k + 23350) % 2 = 0 by omega]
    omega
  have h3 : C (49152 * k + 11675) = 147456 * k + 35026 := by
    unfold C
    simp [show (49152 * k + 11675) % 2 ≠ 0 by omega]
    omega
  have h4 : C (147456 * k + 35026) = 73728 * k + 17513 := by
    unfold C
    simp [show (147456 * k + 35026) % 2 = 0 by omega]
    omega
  have h5 : C (73728 * k + 17513) = 221184 * k + 52540 := by
    unfold C
    simp [show (73728 * k + 17513) % 2 ≠ 0 by omega]
    omega
  have h6 : C (221184 * k + 52540) = 110592 * k + 26270 := by
    unfold C
    simp [show (221184 * k + 52540) % 2 = 0 by omega]
    omega
  have h7 : C (110592 * k + 26270) = 55296 * k + 13135 := by
    unfold C
    simp [show (110592 * k + 26270) % 2 = 0 by omega]
    omega
  have h8 : C (55296 * k + 13135) = 165888 * k + 39406 := by
    unfold C
    simp [show (55296 * k + 13135) % 2 ≠ 0 by omega]
    omega
  have h9 : C (165888 * k + 39406) = 82944 * k + 19703 := by
    unfold C
    simp [show (165888 * k + 39406) % 2 = 0 by omega]
    omega
  have h10 : C (82944 * k + 19703) = 248832 * k + 59110 := by
    unfold C
    simp [show (82944 * k + 19703) % 2 ≠ 0 by omega]
    omega
  have h11 : C (248832 * k + 59110) = 124416 * k + 29555 := by
    unfold C
    simp [show (248832 * k + 59110) % 2 = 0 by omega]
    omega
  have h12 : C (124416 * k + 29555) = 373248 * k + 88666 := by
    unfold C
    simp [show (124416 * k + 29555) % 2 ≠ 0 by omega]
    omega
  have h13 : C (373248 * k + 88666) = 186624 * k + 44333 := by
    unfold C
    simp [show (373248 * k + 88666) % 2 = 0 by omega]
    omega
  have h14 : C (186624 * k + 44333) = 559872 * k + 133000 := by
    unfold C
    simp [show (186624 * k + 44333) % 2 ≠ 0 by omega]
    omega
  have h15 : C (559872 * k + 133000) = 279936 * k + 66500 := by
    unfold C
    simp [show (559872 * k + 133000) % 2 = 0 by omega]
    omega
  have h16 : C (279936 * k + 66500) = 139968 * k + 33250 := by
    unfold C
    simp [show (279936 * k + 66500) % 2 = 0 by omega]
    omega
  have h17 : C (139968 * k + 33250) = 69984 * k + 16625 := by
    unfold C
    simp [show (139968 * k + 33250) % 2 = 0 by omega]
    omega
  have h18 : C (69984 * k + 16625) = 209952 * k + 49876 := by
    unfold C
    simp [show (69984 * k + 16625) % 2 ≠ 0 by omega]
    omega
  have h19 : C (209952 * k + 49876) = 104976 * k + 24938 := by
    unfold C
    simp [show (209952 * k + 49876) % 2 = 0 by omega]
    omega
  have h20 : C (104976 * k + 24938) = 52488 * k + 12469 := by
    unfold C
    simp [show (104976 * k + 24938) % 2 = 0 by omega]
    omega
  have h21 : C (52488 * k + 12469) = 157464 * k + 37408 := by
    unfold C
    simp [show (52488 * k + 12469) % 2 ≠ 0 by omega]
    omega
  have h22 : C (157464 * k + 37408) = 78732 * k + 18704 := by
    unfold C
    simp [show (157464 * k + 37408) % 2 = 0 by omega]
    omega
  have h23 : C (78732 * k + 18704) = 39366 * k + 9352 := by
    unfold C
    simp [show (78732 * k + 18704) % 2 = 0 by omega]
    omega
  have h24 : C (39366 * k + 9352) = 19683 * k + 4676 := by
    unfold C
    simp [show (39366 * k + 9352) % 2 = 0 by omega]
    omega
  have hIter : iterate (32768 * k + 7783) 24 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (32768 * k + 7783)))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24]
  · omega

theorem descent_mod32768_8063 : ∀ k : Nat, iterate (32768 * k + 8063) 24 = 19683 * k + 4844 ∧ 19683 * k + 4844 < 32768 * k + 8063 := by
  intro k
  have h1 : C (32768 * k + 8063) = 98304 * k + 24190 := by
    unfold C
    simp [show (32768 * k + 8063) % 2 ≠ 0 by omega]
    omega
  have h2 : C (98304 * k + 24190) = 49152 * k + 12095 := by
    unfold C
    simp [show (98304 * k + 24190) % 2 = 0 by omega]
    omega
  have h3 : C (49152 * k + 12095) = 147456 * k + 36286 := by
    unfold C
    simp [show (49152 * k + 12095) % 2 ≠ 0 by omega]
    omega
  have h4 : C (147456 * k + 36286) = 73728 * k + 18143 := by
    unfold C
    simp [show (147456 * k + 36286) % 2 = 0 by omega]
    omega
  have h5 : C (73728 * k + 18143) = 221184 * k + 54430 := by
    unfold C
    simp [show (73728 * k + 18143) % 2 ≠ 0 by omega]
    omega
  have h6 : C (221184 * k + 54430) = 110592 * k + 27215 := by
    unfold C
    simp [show (221184 * k + 54430) % 2 = 0 by omega]
    omega
  have h7 : C (110592 * k + 27215) = 331776 * k + 81646 := by
    unfold C
    simp [show (110592 * k + 27215) % 2 ≠ 0 by omega]
    omega
  have h8 : C (331776 * k + 81646) = 165888 * k + 40823 := by
    unfold C
    simp [show (331776 * k + 81646) % 2 = 0 by omega]
    omega
  have h9 : C (165888 * k + 40823) = 497664 * k + 122470 := by
    unfold C
    simp [show (165888 * k + 40823) % 2 ≠ 0 by omega]
    omega
  have h10 : C (497664 * k + 122470) = 248832 * k + 61235 := by
    unfold C
    simp [show (497664 * k + 122470) % 2 = 0 by omega]
    omega
  have h11 : C (248832 * k + 61235) = 746496 * k + 183706 := by
    unfold C
    simp [show (248832 * k + 61235) % 2 ≠ 0 by omega]
    omega
  have h12 : C (746496 * k + 183706) = 373248 * k + 91853 := by
    unfold C
    simp [show (746496 * k + 183706) % 2 = 0 by omega]
    omega
  have h13 : C (373248 * k + 91853) = 1119744 * k + 275560 := by
    unfold C
    simp [show (373248 * k + 91853) % 2 ≠ 0 by omega]
    omega
  have h14 : C (1119744 * k + 275560) = 559872 * k + 137780 := by
    unfold C
    simp [show (1119744 * k + 275560) % 2 = 0 by omega]
    omega
  have h15 : C (559872 * k + 137780) = 279936 * k + 68890 := by
    unfold C
    simp [show (559872 * k + 137780) % 2 = 0 by omega]
    omega
  have h16 : C (279936 * k + 68890) = 139968 * k + 34445 := by
    unfold C
    simp [show (279936 * k + 68890) % 2 = 0 by omega]
    omega
  have h17 : C (139968 * k + 34445) = 419904 * k + 103336 := by
    unfold C
    simp [show (139968 * k + 34445) % 2 ≠ 0 by omega]
    omega
  have h18 : C (419904 * k + 103336) = 209952 * k + 51668 := by
    unfold C
    simp [show (419904 * k + 103336) % 2 = 0 by omega]
    omega
  have h19 : C (209952 * k + 51668) = 104976 * k + 25834 := by
    unfold C
    simp [show (209952 * k + 51668) % 2 = 0 by omega]
    omega
  have h20 : C (104976 * k + 25834) = 52488 * k + 12917 := by
    unfold C
    simp [show (104976 * k + 25834) % 2 = 0 by omega]
    omega
  have h21 : C (52488 * k + 12917) = 157464 * k + 38752 := by
    unfold C
    simp [show (52488 * k + 12917) % 2 ≠ 0 by omega]
    omega
  have h22 : C (157464 * k + 38752) = 78732 * k + 19376 := by
    unfold C
    simp [show (157464 * k + 38752) % 2 = 0 by omega]
    omega
  have h23 : C (78732 * k + 19376) = 39366 * k + 9688 := by
    unfold C
    simp [show (78732 * k + 19376) % 2 = 0 by omega]
    omega
  have h24 : C (39366 * k + 9688) = 19683 * k + 4844 := by
    unfold C
    simp [show (39366 * k + 9688) % 2 = 0 by omega]
    omega
  have hIter : iterate (32768 * k + 8063) 24 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (32768 * k + 8063)))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24]
  · omega

theorem descent_mod32768_8187 : ∀ k : Nat, iterate (32768 * k + 8187) 24 = 19683 * k + 4919 ∧ 19683 * k + 4919 < 32768 * k + 8187 := by
  intro k
  have h1 : C (32768 * k + 8187) = 98304 * k + 24562 := by
    unfold C
    simp [show (32768 * k + 8187) % 2 ≠ 0 by omega]
    omega
  have h2 : C (98304 * k + 24562) = 49152 * k + 12281 := by
    unfold C
    simp [show (98304 * k + 24562) % 2 = 0 by omega]
    omega
  have h3 : C (49152 * k + 12281) = 147456 * k + 36844 := by
    unfold C
    simp [show (49152 * k + 12281) % 2 ≠ 0 by omega]
    omega
  have h4 : C (147456 * k + 36844) = 73728 * k + 18422 := by
    unfold C
    simp [show (147456 * k + 36844) % 2 = 0 by omega]
    omega
  have h5 : C (73728 * k + 18422) = 36864 * k + 9211 := by
    unfold C
    simp [show (73728 * k + 18422) % 2 = 0 by omega]
    omega
  have h6 : C (36864 * k + 9211) = 110592 * k + 27634 := by
    unfold C
    simp [show (36864 * k + 9211) % 2 ≠ 0 by omega]
    omega
  have h7 : C (110592 * k + 27634) = 55296 * k + 13817 := by
    unfold C
    simp [show (110592 * k + 27634) % 2 = 0 by omega]
    omega
  have h8 : C (55296 * k + 13817) = 165888 * k + 41452 := by
    unfold C
    simp [show (55296 * k + 13817) % 2 ≠ 0 by omega]
    omega
  have h9 : C (165888 * k + 41452) = 82944 * k + 20726 := by
    unfold C
    simp [show (165888 * k + 41452) % 2 = 0 by omega]
    omega
  have h10 : C (82944 * k + 20726) = 41472 * k + 10363 := by
    unfold C
    simp [show (82944 * k + 20726) % 2 = 0 by omega]
    omega
  have h11 : C (41472 * k + 10363) = 124416 * k + 31090 := by
    unfold C
    simp [show (41472 * k + 10363) % 2 ≠ 0 by omega]
    omega
  have h12 : C (124416 * k + 31090) = 62208 * k + 15545 := by
    unfold C
    simp [show (124416 * k + 31090) % 2 = 0 by omega]
    omega
  have h13 : C (62208 * k + 15545) = 186624 * k + 46636 := by
    unfold C
    simp [show (62208 * k + 15545) % 2 ≠ 0 by omega]
    omega
  have h14 : C (186624 * k + 46636) = 93312 * k + 23318 := by
    unfold C
    simp [show (186624 * k + 46636) % 2 = 0 by omega]
    omega
  have h15 : C (93312 * k + 23318) = 46656 * k + 11659 := by
    unfold C
    simp [show (93312 * k + 23318) % 2 = 0 by omega]
    omega
  have h16 : C (46656 * k + 11659) = 139968 * k + 34978 := by
    unfold C
    simp [show (46656 * k + 11659) % 2 ≠ 0 by omega]
    omega
  have h17 : C (139968 * k + 34978) = 69984 * k + 17489 := by
    unfold C
    simp [show (139968 * k + 34978) % 2 = 0 by omega]
    omega
  have h18 : C (69984 * k + 17489) = 209952 * k + 52468 := by
    unfold C
    simp [show (69984 * k + 17489) % 2 ≠ 0 by omega]
    omega
  have h19 : C (209952 * k + 52468) = 104976 * k + 26234 := by
    unfold C
    simp [show (209952 * k + 52468) % 2 = 0 by omega]
    omega
  have h20 : C (104976 * k + 26234) = 52488 * k + 13117 := by
    unfold C
    simp [show (104976 * k + 26234) % 2 = 0 by omega]
    omega
  have h21 : C (52488 * k + 13117) = 157464 * k + 39352 := by
    unfold C
    simp [show (52488 * k + 13117) % 2 ≠ 0 by omega]
    omega
  have h22 : C (157464 * k + 39352) = 78732 * k + 19676 := by
    unfold C
    simp [show (157464 * k + 39352) % 2 = 0 by omega]
    omega
  have h23 : C (78732 * k + 19676) = 39366 * k + 9838 := by
    unfold C
    simp [show (78732 * k + 19676) % 2 = 0 by omega]
    omega
  have h24 : C (39366 * k + 9838) = 19683 * k + 4919 := by
    unfold C
    simp [show (39366 * k + 9838) % 2 = 0 by omega]
    omega
  have hIter : iterate (32768 * k + 8187) 24 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (32768 * k + 8187)))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24]
  · omega

theorem descent_mod32768_8347 : ∀ k : Nat, iterate (32768 * k + 8347) 24 = 19683 * k + 5015 ∧ 19683 * k + 5015 < 32768 * k + 8347 := by
  intro k
  have h1 : C (32768 * k + 8347) = 98304 * k + 25042 := by
    unfold C
    simp [show (32768 * k + 8347) % 2 ≠ 0 by omega]
    omega
  have h2 : C (98304 * k + 25042) = 49152 * k + 12521 := by
    unfold C
    simp [show (98304 * k + 25042) % 2 = 0 by omega]
    omega
  have h3 : C (49152 * k + 12521) = 147456 * k + 37564 := by
    unfold C
    simp [show (49152 * k + 12521) % 2 ≠ 0 by omega]
    omega
  have h4 : C (147456 * k + 37564) = 73728 * k + 18782 := by
    unfold C
    simp [show (147456 * k + 37564) % 2 = 0 by omega]
    omega
  have h5 : C (73728 * k + 18782) = 36864 * k + 9391 := by
    unfold C
    simp [show (73728 * k + 18782) % 2 = 0 by omega]
    omega
  have h6 : C (36864 * k + 9391) = 110592 * k + 28174 := by
    unfold C
    simp [show (36864 * k + 9391) % 2 ≠ 0 by omega]
    omega
  have h7 : C (110592 * k + 28174) = 55296 * k + 14087 := by
    unfold C
    simp [show (110592 * k + 28174) % 2 = 0 by omega]
    omega
  have h8 : C (55296 * k + 14087) = 165888 * k + 42262 := by
    unfold C
    simp [show (55296 * k + 14087) % 2 ≠ 0 by omega]
    omega
  have h9 : C (165888 * k + 42262) = 82944 * k + 21131 := by
    unfold C
    simp [show (165888 * k + 42262) % 2 = 0 by omega]
    omega
  have h10 : C (82944 * k + 21131) = 248832 * k + 63394 := by
    unfold C
    simp [show (82944 * k + 21131) % 2 ≠ 0 by omega]
    omega
  have h11 : C (248832 * k + 63394) = 124416 * k + 31697 := by
    unfold C
    simp [show (248832 * k + 63394) % 2 = 0 by omega]
    omega
  have h12 : C (124416 * k + 31697) = 373248 * k + 95092 := by
    unfold C
    simp [show (124416 * k + 31697) % 2 ≠ 0 by omega]
    omega
  have h13 : C (373248 * k + 95092) = 186624 * k + 47546 := by
    unfold C
    simp [show (373248 * k + 95092) % 2 = 0 by omega]
    omega
  have h14 : C (186624 * k + 47546) = 93312 * k + 23773 := by
    unfold C
    simp [show (186624 * k + 47546) % 2 = 0 by omega]
    omega
  have h15 : C (93312 * k + 23773) = 279936 * k + 71320 := by
    unfold C
    simp [show (93312 * k + 23773) % 2 ≠ 0 by omega]
    omega
  have h16 : C (279936 * k + 71320) = 139968 * k + 35660 := by
    unfold C
    simp [show (279936 * k + 71320) % 2 = 0 by omega]
    omega
  have h17 : C (139968 * k + 35660) = 69984 * k + 17830 := by
    unfold C
    simp [show (139968 * k + 35660) % 2 = 0 by omega]
    omega
  have h18 : C (69984 * k + 17830) = 34992 * k + 8915 := by
    unfold C
    simp [show (69984 * k + 17830) % 2 = 0 by omega]
    omega
  have h19 : C (34992 * k + 8915) = 104976 * k + 26746 := by
    unfold C
    simp [show (34992 * k + 8915) % 2 ≠ 0 by omega]
    omega
  have h20 : C (104976 * k + 26746) = 52488 * k + 13373 := by
    unfold C
    simp [show (104976 * k + 26746) % 2 = 0 by omega]
    omega
  have h21 : C (52488 * k + 13373) = 157464 * k + 40120 := by
    unfold C
    simp [show (52488 * k + 13373) % 2 ≠ 0 by omega]
    omega
  have h22 : C (157464 * k + 40120) = 78732 * k + 20060 := by
    unfold C
    simp [show (157464 * k + 40120) % 2 = 0 by omega]
    omega
  have h23 : C (78732 * k + 20060) = 39366 * k + 10030 := by
    unfold C
    simp [show (78732 * k + 20060) % 2 = 0 by omega]
    omega
  have h24 : C (39366 * k + 10030) = 19683 * k + 5015 := by
    unfold C
    simp [show (39366 * k + 10030) % 2 = 0 by omega]
    omega
  have hIter : iterate (32768 * k + 8347) 24 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (32768 * k + 8347)))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24]
  · omega

theorem descent_mod32768_8431 : ∀ k : Nat, iterate (32768 * k + 8431) 24 = 19683 * k + 5065 ∧ 19683 * k + 5065 < 32768 * k + 8431 := by
  intro k
  have h1 : C (32768 * k + 8431) = 98304 * k + 25294 := by
    unfold C
    simp [show (32768 * k + 8431) % 2 ≠ 0 by omega]
    omega
  have h2 : C (98304 * k + 25294) = 49152 * k + 12647 := by
    unfold C
    simp [show (98304 * k + 25294) % 2 = 0 by omega]
    omega
  have h3 : C (49152 * k + 12647) = 147456 * k + 37942 := by
    unfold C
    simp [show (49152 * k + 12647) % 2 ≠ 0 by omega]
    omega
  have h4 : C (147456 * k + 37942) = 73728 * k + 18971 := by
    unfold C
    simp [show (147456 * k + 37942) % 2 = 0 by omega]
    omega
  have h5 : C (73728 * k + 18971) = 221184 * k + 56914 := by
    unfold C
    simp [show (73728 * k + 18971) % 2 ≠ 0 by omega]
    omega
  have h6 : C (221184 * k + 56914) = 110592 * k + 28457 := by
    unfold C
    simp [show (221184 * k + 56914) % 2 = 0 by omega]
    omega
  have h7 : C (110592 * k + 28457) = 331776 * k + 85372 := by
    unfold C
    simp [show (110592 * k + 28457) % 2 ≠ 0 by omega]
    omega
  have h8 : C (331776 * k + 85372) = 165888 * k + 42686 := by
    unfold C
    simp [show (331776 * k + 85372) % 2 = 0 by omega]
    omega
  have h9 : C (165888 * k + 42686) = 82944 * k + 21343 := by
    unfold C
    simp [show (165888 * k + 42686) % 2 = 0 by omega]
    omega
  have h10 : C (82944 * k + 21343) = 248832 * k + 64030 := by
    unfold C
    simp [show (82944 * k + 21343) % 2 ≠ 0 by omega]
    omega
  have h11 : C (248832 * k + 64030) = 124416 * k + 32015 := by
    unfold C
    simp [show (248832 * k + 64030) % 2 = 0 by omega]
    omega
  have h12 : C (124416 * k + 32015) = 373248 * k + 96046 := by
    unfold C
    simp [show (124416 * k + 32015) % 2 ≠ 0 by omega]
    omega
  have h13 : C (373248 * k + 96046) = 186624 * k + 48023 := by
    unfold C
    simp [show (373248 * k + 96046) % 2 = 0 by omega]
    omega
  have h14 : C (186624 * k + 48023) = 559872 * k + 144070 := by
    unfold C
    simp [show (186624 * k + 48023) % 2 ≠ 0 by omega]
    omega
  have h15 : C (559872 * k + 144070) = 279936 * k + 72035 := by
    unfold C
    simp [show (559872 * k + 144070) % 2 = 0 by omega]
    omega
  have h16 : C (279936 * k + 72035) = 839808 * k + 216106 := by
    unfold C
    simp [show (279936 * k + 72035) % 2 ≠ 0 by omega]
    omega
  have h17 : C (839808 * k + 216106) = 419904 * k + 108053 := by
    unfold C
    simp [show (839808 * k + 216106) % 2 = 0 by omega]
    omega
  have h18 : C (419904 * k + 108053) = 1259712 * k + 324160 := by
    unfold C
    simp [show (419904 * k + 108053) % 2 ≠ 0 by omega]
    omega
  have h19 : C (1259712 * k + 324160) = 629856 * k + 162080 := by
    unfold C
    simp [show (1259712 * k + 324160) % 2 = 0 by omega]
    omega
  have h20 : C (629856 * k + 162080) = 314928 * k + 81040 := by
    unfold C
    simp [show (629856 * k + 162080) % 2 = 0 by omega]
    omega
  have h21 : C (314928 * k + 81040) = 157464 * k + 40520 := by
    unfold C
    simp [show (314928 * k + 81040) % 2 = 0 by omega]
    omega
  have h22 : C (157464 * k + 40520) = 78732 * k + 20260 := by
    unfold C
    simp [show (157464 * k + 40520) % 2 = 0 by omega]
    omega
  have h23 : C (78732 * k + 20260) = 39366 * k + 10130 := by
    unfold C
    simp [show (78732 * k + 20260) % 2 = 0 by omega]
    omega
  have h24 : C (39366 * k + 10130) = 19683 * k + 5065 := by
    unfold C
    simp [show (39366 * k + 10130) % 2 = 0 by omega]
    omega
  have hIter : iterate (32768 * k + 8431) 24 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (32768 * k + 8431)))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24]
  · omega

theorem descent_mod32768_8795 : ∀ k : Nat, iterate (32768 * k + 8795) 24 = 19683 * k + 5284 ∧ 19683 * k + 5284 < 32768 * k + 8795 := by
  intro k
  have h1 : C (32768 * k + 8795) = 98304 * k + 26386 := by
    unfold C
    simp [show (32768 * k + 8795) % 2 ≠ 0 by omega]
    omega
  have h2 : C (98304 * k + 26386) = 49152 * k + 13193 := by
    unfold C
    simp [show (98304 * k + 26386) % 2 = 0 by omega]
    omega
  have h3 : C (49152 * k + 13193) = 147456 * k + 39580 := by
    unfold C
    simp [show (49152 * k + 13193) % 2 ≠ 0 by omega]
    omega
  have h4 : C (147456 * k + 39580) = 73728 * k + 19790 := by
    unfold C
    simp [show (147456 * k + 39580) % 2 = 0 by omega]
    omega
  have h5 : C (73728 * k + 19790) = 36864 * k + 9895 := by
    unfold C
    simp [show (73728 * k + 19790) % 2 = 0 by omega]
    omega
  have h6 : C (36864 * k + 9895) = 110592 * k + 29686 := by
    unfold C
    simp [show (36864 * k + 9895) % 2 ≠ 0 by omega]
    omega
  have h7 : C (110592 * k + 29686) = 55296 * k + 14843 := by
    unfold C
    simp [show (110592 * k + 29686) % 2 = 0 by omega]
    omega
  have h8 : C (55296 * k + 14843) = 165888 * k + 44530 := by
    unfold C
    simp [show (55296 * k + 14843) % 2 ≠ 0 by omega]
    omega
  have h9 : C (165888 * k + 44530) = 82944 * k + 22265 := by
    unfold C
    simp [show (165888 * k + 44530) % 2 = 0 by omega]
    omega
  have h10 : C (82944 * k + 22265) = 248832 * k + 66796 := by
    unfold C
    simp [show (82944 * k + 22265) % 2 ≠ 0 by omega]
    omega
  have h11 : C (248832 * k + 66796) = 124416 * k + 33398 := by
    unfold C
    simp [show (248832 * k + 66796) % 2 = 0 by omega]
    omega
  have h12 : C (124416 * k + 33398) = 62208 * k + 16699 := by
    unfold C
    simp [show (124416 * k + 33398) % 2 = 0 by omega]
    omega
  have h13 : C (62208 * k + 16699) = 186624 * k + 50098 := by
    unfold C
    simp [show (62208 * k + 16699) % 2 ≠ 0 by omega]
    omega
  have h14 : C (186624 * k + 50098) = 93312 * k + 25049 := by
    unfold C
    simp [show (186624 * k + 50098) % 2 = 0 by omega]
    omega
  have h15 : C (93312 * k + 25049) = 279936 * k + 75148 := by
    unfold C
    simp [show (93312 * k + 25049) % 2 ≠ 0 by omega]
    omega
  have h16 : C (279936 * k + 75148) = 139968 * k + 37574 := by
    unfold C
    simp [show (279936 * k + 75148) % 2 = 0 by omega]
    omega
  have h17 : C (139968 * k + 37574) = 69984 * k + 18787 := by
    unfold C
    simp [show (139968 * k + 37574) % 2 = 0 by omega]
    omega
  have h18 : C (69984 * k + 18787) = 209952 * k + 56362 := by
    unfold C
    simp [show (69984 * k + 18787) % 2 ≠ 0 by omega]
    omega
  have h19 : C (209952 * k + 56362) = 104976 * k + 28181 := by
    unfold C
    simp [show (209952 * k + 56362) % 2 = 0 by omega]
    omega
  have h20 : C (104976 * k + 28181) = 314928 * k + 84544 := by
    unfold C
    simp [show (104976 * k + 28181) % 2 ≠ 0 by omega]
    omega
  have h21 : C (314928 * k + 84544) = 157464 * k + 42272 := by
    unfold C
    simp [show (314928 * k + 84544) % 2 = 0 by omega]
    omega
  have h22 : C (157464 * k + 42272) = 78732 * k + 21136 := by
    unfold C
    simp [show (157464 * k + 42272) % 2 = 0 by omega]
    omega
  have h23 : C (78732 * k + 21136) = 39366 * k + 10568 := by
    unfold C
    simp [show (78732 * k + 21136) % 2 = 0 by omega]
    omega
  have h24 : C (39366 * k + 10568) = 19683 * k + 5284 := by
    unfold C
    simp [show (39366 * k + 10568) % 2 = 0 by omega]
    omega
  have hIter : iterate (32768 * k + 8795) 24 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (32768 * k + 8795)))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24]
  · omega

theorem descent_mod32768_9051 : ∀ k : Nat, iterate (32768 * k + 9051) 24 = 19683 * k + 5438 ∧ 19683 * k + 5438 < 32768 * k + 9051 := by
  intro k
  have h1 : C (32768 * k + 9051) = 98304 * k + 27154 := by
    unfold C
    simp [show (32768 * k + 9051) % 2 ≠ 0 by omega]
    omega
  have h2 : C (98304 * k + 27154) = 49152 * k + 13577 := by
    unfold C
    simp [show (98304 * k + 27154) % 2 = 0 by omega]
    omega
  have h3 : C (49152 * k + 13577) = 147456 * k + 40732 := by
    unfold C
    simp [show (49152 * k + 13577) % 2 ≠ 0 by omega]
    omega
  have h4 : C (147456 * k + 40732) = 73728 * k + 20366 := by
    unfold C
    simp [show (147456 * k + 40732) % 2 = 0 by omega]
    omega
  have h5 : C (73728 * k + 20366) = 36864 * k + 10183 := by
    unfold C
    simp [show (73728 * k + 20366) % 2 = 0 by omega]
    omega
  have h6 : C (36864 * k + 10183) = 110592 * k + 30550 := by
    unfold C
    simp [show (36864 * k + 10183) % 2 ≠ 0 by omega]
    omega
  have h7 : C (110592 * k + 30550) = 55296 * k + 15275 := by
    unfold C
    simp [show (110592 * k + 30550) % 2 = 0 by omega]
    omega
  have h8 : C (55296 * k + 15275) = 165888 * k + 45826 := by
    unfold C
    simp [show (55296 * k + 15275) % 2 ≠ 0 by omega]
    omega
  have h9 : C (165888 * k + 45826) = 82944 * k + 22913 := by
    unfold C
    simp [show (165888 * k + 45826) % 2 = 0 by omega]
    omega
  have h10 : C (82944 * k + 22913) = 248832 * k + 68740 := by
    unfold C
    simp [show (82944 * k + 22913) % 2 ≠ 0 by omega]
    omega
  have h11 : C (248832 * k + 68740) = 124416 * k + 34370 := by
    unfold C
    simp [show (248832 * k + 68740) % 2 = 0 by omega]
    omega
  have h12 : C (124416 * k + 34370) = 62208 * k + 17185 := by
    unfold C
    simp [show (124416 * k + 34370) % 2 = 0 by omega]
    omega
  have h13 : C (62208 * k + 17185) = 186624 * k + 51556 := by
    unfold C
    simp [show (62208 * k + 17185) % 2 ≠ 0 by omega]
    omega
  have h14 : C (186624 * k + 51556) = 93312 * k + 25778 := by
    unfold C
    simp [show (186624 * k + 51556) % 2 = 0 by omega]
    omega
  have h15 : C (93312 * k + 25778) = 46656 * k + 12889 := by
    unfold C
    simp [show (93312 * k + 25778) % 2 = 0 by omega]
    omega
  have h16 : C (46656 * k + 12889) = 139968 * k + 38668 := by
    unfold C
    simp [show (46656 * k + 12889) % 2 ≠ 0 by omega]
    omega
  have h17 : C (139968 * k + 38668) = 69984 * k + 19334 := by
    unfold C
    simp [show (139968 * k + 38668) % 2 = 0 by omega]
    omega
  have h18 : C (69984 * k + 19334) = 34992 * k + 9667 := by
    unfold C
    simp [show (69984 * k + 19334) % 2 = 0 by omega]
    omega
  have h19 : C (34992 * k + 9667) = 104976 * k + 29002 := by
    unfold C
    simp [show (34992 * k + 9667) % 2 ≠ 0 by omega]
    omega
  have h20 : C (104976 * k + 29002) = 52488 * k + 14501 := by
    unfold C
    simp [show (104976 * k + 29002) % 2 = 0 by omega]
    omega
  have h21 : C (52488 * k + 14501) = 157464 * k + 43504 := by
    unfold C
    simp [show (52488 * k + 14501) % 2 ≠ 0 by omega]
    omega
  have h22 : C (157464 * k + 43504) = 78732 * k + 21752 := by
    unfold C
    simp [show (157464 * k + 43504) % 2 = 0 by omega]
    omega
  have h23 : C (78732 * k + 21752) = 39366 * k + 10876 := by
    unfold C
    simp [show (78732 * k + 21752) % 2 = 0 by omega]
    omega
  have h24 : C (39366 * k + 10876) = 19683 * k + 5438 := by
    unfold C
    simp [show (39366 * k + 10876) % 2 = 0 by omega]
    omega
  have hIter : iterate (32768 * k + 9051) 24 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (32768 * k + 9051)))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24]
  · omega

#print axioms descent_mod32768_7487
#print axioms descent_mod32768_7783
#print axioms descent_mod32768_8063
#print axioms descent_mod32768_8187
#print axioms descent_mod32768_8347
#print axioms descent_mod32768_8431
#print axioms descent_mod32768_8795
#print axioms descent_mod32768_9051

end CollatzM15ShardF
