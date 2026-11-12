import Mathlib.Data.Nat.Prime.Basic

namespace CollatzM15ShardD

def C (n : Nat) : Nat := if n % 2 = 0 then n / 2 else 3 * n + 1

def iterate (n t : Nat) : Nat := Nat.rec n (fun _ previous => C previous) t

theorem descent_mod32768_4031 : ∀ k : Nat, iterate (32768 * k + 4031) 24 = 19683 * k + 2422 ∧ 19683 * k + 2422 < 32768 * k + 4031 := by
  intro k
  have h1 : C (32768 * k + 4031) = 98304 * k + 12094 := by
    unfold C
    simp [show (32768 * k + 4031) % 2 ≠ 0 by omega]
    omega
  have h2 : C (98304 * k + 12094) = 49152 * k + 6047 := by
    unfold C
    simp [show (98304 * k + 12094) % 2 = 0 by omega]
    omega
  have h3 : C (49152 * k + 6047) = 147456 * k + 18142 := by
    unfold C
    simp [show (49152 * k + 6047) % 2 ≠ 0 by omega]
    omega
  have h4 : C (147456 * k + 18142) = 73728 * k + 9071 := by
    unfold C
    simp [show (147456 * k + 18142) % 2 = 0 by omega]
    omega
  have h5 : C (73728 * k + 9071) = 221184 * k + 27214 := by
    unfold C
    simp [show (73728 * k + 9071) % 2 ≠ 0 by omega]
    omega
  have h6 : C (221184 * k + 27214) = 110592 * k + 13607 := by
    unfold C
    simp [show (221184 * k + 27214) % 2 = 0 by omega]
    omega
  have h7 : C (110592 * k + 13607) = 331776 * k + 40822 := by
    unfold C
    simp [show (110592 * k + 13607) % 2 ≠ 0 by omega]
    omega
  have h8 : C (331776 * k + 40822) = 165888 * k + 20411 := by
    unfold C
    simp [show (331776 * k + 40822) % 2 = 0 by omega]
    omega
  have h9 : C (165888 * k + 20411) = 497664 * k + 61234 := by
    unfold C
    simp [show (165888 * k + 20411) % 2 ≠ 0 by omega]
    omega
  have h10 : C (497664 * k + 61234) = 248832 * k + 30617 := by
    unfold C
    simp [show (497664 * k + 61234) % 2 = 0 by omega]
    omega
  have h11 : C (248832 * k + 30617) = 746496 * k + 91852 := by
    unfold C
    simp [show (248832 * k + 30617) % 2 ≠ 0 by omega]
    omega
  have h12 : C (746496 * k + 91852) = 373248 * k + 45926 := by
    unfold C
    simp [show (746496 * k + 91852) % 2 = 0 by omega]
    omega
  have h13 : C (373248 * k + 45926) = 186624 * k + 22963 := by
    unfold C
    simp [show (373248 * k + 45926) % 2 = 0 by omega]
    omega
  have h14 : C (186624 * k + 22963) = 559872 * k + 68890 := by
    unfold C
    simp [show (186624 * k + 22963) % 2 ≠ 0 by omega]
    omega
  have h15 : C (559872 * k + 68890) = 279936 * k + 34445 := by
    unfold C
    simp [show (559872 * k + 68890) % 2 = 0 by omega]
    omega
  have h16 : C (279936 * k + 34445) = 839808 * k + 103336 := by
    unfold C
    simp [show (279936 * k + 34445) % 2 ≠ 0 by omega]
    omega
  have h17 : C (839808 * k + 103336) = 419904 * k + 51668 := by
    unfold C
    simp [show (839808 * k + 103336) % 2 = 0 by omega]
    omega
  have h18 : C (419904 * k + 51668) = 209952 * k + 25834 := by
    unfold C
    simp [show (419904 * k + 51668) % 2 = 0 by omega]
    omega
  have h19 : C (209952 * k + 25834) = 104976 * k + 12917 := by
    unfold C
    simp [show (209952 * k + 25834) % 2 = 0 by omega]
    omega
  have h20 : C (104976 * k + 12917) = 314928 * k + 38752 := by
    unfold C
    simp [show (104976 * k + 12917) % 2 ≠ 0 by omega]
    omega
  have h21 : C (314928 * k + 38752) = 157464 * k + 19376 := by
    unfold C
    simp [show (314928 * k + 38752) % 2 = 0 by omega]
    omega
  have h22 : C (157464 * k + 19376) = 78732 * k + 9688 := by
    unfold C
    simp [show (157464 * k + 19376) % 2 = 0 by omega]
    omega
  have h23 : C (78732 * k + 9688) = 39366 * k + 4844 := by
    unfold C
    simp [show (78732 * k + 9688) % 2 = 0 by omega]
    omega
  have h24 : C (39366 * k + 4844) = 19683 * k + 2422 := by
    unfold C
    simp [show (39366 * k + 4844) % 2 = 0 by omega]
    omega
  have hIter : iterate (32768 * k + 4031) 24 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (32768 * k + 4031)))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24]
  · omega

theorem descent_mod32768_4187 : ∀ k : Nat, iterate (32768 * k + 4187) 24 = 19683 * k + 2516 ∧ 19683 * k + 2516 < 32768 * k + 4187 := by
  intro k
  have h1 : C (32768 * k + 4187) = 98304 * k + 12562 := by
    unfold C
    simp [show (32768 * k + 4187) % 2 ≠ 0 by omega]
    omega
  have h2 : C (98304 * k + 12562) = 49152 * k + 6281 := by
    unfold C
    simp [show (98304 * k + 12562) % 2 = 0 by omega]
    omega
  have h3 : C (49152 * k + 6281) = 147456 * k + 18844 := by
    unfold C
    simp [show (49152 * k + 6281) % 2 ≠ 0 by omega]
    omega
  have h4 : C (147456 * k + 18844) = 73728 * k + 9422 := by
    unfold C
    simp [show (147456 * k + 18844) % 2 = 0 by omega]
    omega
  have h5 : C (73728 * k + 9422) = 36864 * k + 4711 := by
    unfold C
    simp [show (73728 * k + 9422) % 2 = 0 by omega]
    omega
  have h6 : C (36864 * k + 4711) = 110592 * k + 14134 := by
    unfold C
    simp [show (36864 * k + 4711) % 2 ≠ 0 by omega]
    omega
  have h7 : C (110592 * k + 14134) = 55296 * k + 7067 := by
    unfold C
    simp [show (110592 * k + 14134) % 2 = 0 by omega]
    omega
  have h8 : C (55296 * k + 7067) = 165888 * k + 21202 := by
    unfold C
    simp [show (55296 * k + 7067) % 2 ≠ 0 by omega]
    omega
  have h9 : C (165888 * k + 21202) = 82944 * k + 10601 := by
    unfold C
    simp [show (165888 * k + 21202) % 2 = 0 by omega]
    omega
  have h10 : C (82944 * k + 10601) = 248832 * k + 31804 := by
    unfold C
    simp [show (82944 * k + 10601) % 2 ≠ 0 by omega]
    omega
  have h11 : C (248832 * k + 31804) = 124416 * k + 15902 := by
    unfold C
    simp [show (248832 * k + 31804) % 2 = 0 by omega]
    omega
  have h12 : C (124416 * k + 15902) = 62208 * k + 7951 := by
    unfold C
    simp [show (124416 * k + 15902) % 2 = 0 by omega]
    omega
  have h13 : C (62208 * k + 7951) = 186624 * k + 23854 := by
    unfold C
    simp [show (62208 * k + 7951) % 2 ≠ 0 by omega]
    omega
  have h14 : C (186624 * k + 23854) = 93312 * k + 11927 := by
    unfold C
    simp [show (186624 * k + 23854) % 2 = 0 by omega]
    omega
  have h15 : C (93312 * k + 11927) = 279936 * k + 35782 := by
    unfold C
    simp [show (93312 * k + 11927) % 2 ≠ 0 by omega]
    omega
  have h16 : C (279936 * k + 35782) = 139968 * k + 17891 := by
    unfold C
    simp [show (279936 * k + 35782) % 2 = 0 by omega]
    omega
  have h17 : C (139968 * k + 17891) = 419904 * k + 53674 := by
    unfold C
    simp [show (139968 * k + 17891) % 2 ≠ 0 by omega]
    omega
  have h18 : C (419904 * k + 53674) = 209952 * k + 26837 := by
    unfold C
    simp [show (419904 * k + 53674) % 2 = 0 by omega]
    omega
  have h19 : C (209952 * k + 26837) = 629856 * k + 80512 := by
    unfold C
    simp [show (209952 * k + 26837) % 2 ≠ 0 by omega]
    omega
  have h20 : C (629856 * k + 80512) = 314928 * k + 40256 := by
    unfold C
    simp [show (629856 * k + 80512) % 2 = 0 by omega]
    omega
  have h21 : C (314928 * k + 40256) = 157464 * k + 20128 := by
    unfold C
    simp [show (314928 * k + 40256) % 2 = 0 by omega]
    omega
  have h22 : C (157464 * k + 20128) = 78732 * k + 10064 := by
    unfold C
    simp [show (157464 * k + 20128) % 2 = 0 by omega]
    omega
  have h23 : C (78732 * k + 10064) = 39366 * k + 5032 := by
    unfold C
    simp [show (78732 * k + 10064) % 2 = 0 by omega]
    omega
  have h24 : C (39366 * k + 5032) = 19683 * k + 2516 := by
    unfold C
    simp [show (39366 * k + 5032) % 2 = 0 by omega]
    omega
  have hIter : iterate (32768 * k + 4187) 24 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (32768 * k + 4187)))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24]
  · omega

theorem descent_mod32768_4287 : ∀ k : Nat, iterate (32768 * k + 4287) 24 = 19683 * k + 2576 ∧ 19683 * k + 2576 < 32768 * k + 4287 := by
  intro k
  have h1 : C (32768 * k + 4287) = 98304 * k + 12862 := by
    unfold C
    simp [show (32768 * k + 4287) % 2 ≠ 0 by omega]
    omega
  have h2 : C (98304 * k + 12862) = 49152 * k + 6431 := by
    unfold C
    simp [show (98304 * k + 12862) % 2 = 0 by omega]
    omega
  have h3 : C (49152 * k + 6431) = 147456 * k + 19294 := by
    unfold C
    simp [show (49152 * k + 6431) % 2 ≠ 0 by omega]
    omega
  have h4 : C (147456 * k + 19294) = 73728 * k + 9647 := by
    unfold C
    simp [show (147456 * k + 19294) % 2 = 0 by omega]
    omega
  have h5 : C (73728 * k + 9647) = 221184 * k + 28942 := by
    unfold C
    simp [show (73728 * k + 9647) % 2 ≠ 0 by omega]
    omega
  have h6 : C (221184 * k + 28942) = 110592 * k + 14471 := by
    unfold C
    simp [show (221184 * k + 28942) % 2 = 0 by omega]
    omega
  have h7 : C (110592 * k + 14471) = 331776 * k + 43414 := by
    unfold C
    simp [show (110592 * k + 14471) % 2 ≠ 0 by omega]
    omega
  have h8 : C (331776 * k + 43414) = 165888 * k + 21707 := by
    unfold C
    simp [show (331776 * k + 43414) % 2 = 0 by omega]
    omega
  have h9 : C (165888 * k + 21707) = 497664 * k + 65122 := by
    unfold C
    simp [show (165888 * k + 21707) % 2 ≠ 0 by omega]
    omega
  have h10 : C (497664 * k + 65122) = 248832 * k + 32561 := by
    unfold C
    simp [show (497664 * k + 65122) % 2 = 0 by omega]
    omega
  have h11 : C (248832 * k + 32561) = 746496 * k + 97684 := by
    unfold C
    simp [show (248832 * k + 32561) % 2 ≠ 0 by omega]
    omega
  have h12 : C (746496 * k + 97684) = 373248 * k + 48842 := by
    unfold C
    simp [show (746496 * k + 97684) % 2 = 0 by omega]
    omega
  have h13 : C (373248 * k + 48842) = 186624 * k + 24421 := by
    unfold C
    simp [show (373248 * k + 48842) % 2 = 0 by omega]
    omega
  have h14 : C (186624 * k + 24421) = 559872 * k + 73264 := by
    unfold C
    simp [show (186624 * k + 24421) % 2 ≠ 0 by omega]
    omega
  have h15 : C (559872 * k + 73264) = 279936 * k + 36632 := by
    unfold C
    simp [show (559872 * k + 73264) % 2 = 0 by omega]
    omega
  have h16 : C (279936 * k + 36632) = 139968 * k + 18316 := by
    unfold C
    simp [show (279936 * k + 36632) % 2 = 0 by omega]
    omega
  have h17 : C (139968 * k + 18316) = 69984 * k + 9158 := by
    unfold C
    simp [show (139968 * k + 18316) % 2 = 0 by omega]
    omega
  have h18 : C (69984 * k + 9158) = 34992 * k + 4579 := by
    unfold C
    simp [show (69984 * k + 9158) % 2 = 0 by omega]
    omega
  have h19 : C (34992 * k + 4579) = 104976 * k + 13738 := by
    unfold C
    simp [show (34992 * k + 4579) % 2 ≠ 0 by omega]
    omega
  have h20 : C (104976 * k + 13738) = 52488 * k + 6869 := by
    unfold C
    simp [show (104976 * k + 13738) % 2 = 0 by omega]
    omega
  have h21 : C (52488 * k + 6869) = 157464 * k + 20608 := by
    unfold C
    simp [show (52488 * k + 6869) % 2 ≠ 0 by omega]
    omega
  have h22 : C (157464 * k + 20608) = 78732 * k + 10304 := by
    unfold C
    simp [show (157464 * k + 20608) % 2 = 0 by omega]
    omega
  have h23 : C (78732 * k + 10304) = 39366 * k + 5152 := by
    unfold C
    simp [show (78732 * k + 10304) % 2 = 0 by omega]
    omega
  have h24 : C (39366 * k + 5152) = 19683 * k + 2576 := by
    unfold C
    simp [show (39366 * k + 5152) % 2 = 0 by omega]
    omega
  have hIter : iterate (32768 * k + 4287) 24 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (32768 * k + 4287)))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24]
  · omega

theorem descent_mod32768_4655 : ∀ k : Nat, iterate (32768 * k + 4655) 24 = 19683 * k + 2797 ∧ 19683 * k + 2797 < 32768 * k + 4655 := by
  intro k
  have h1 : C (32768 * k + 4655) = 98304 * k + 13966 := by
    unfold C
    simp [show (32768 * k + 4655) % 2 ≠ 0 by omega]
    omega
  have h2 : C (98304 * k + 13966) = 49152 * k + 6983 := by
    unfold C
    simp [show (98304 * k + 13966) % 2 = 0 by omega]
    omega
  have h3 : C (49152 * k + 6983) = 147456 * k + 20950 := by
    unfold C
    simp [show (49152 * k + 6983) % 2 ≠ 0 by omega]
    omega
  have h4 : C (147456 * k + 20950) = 73728 * k + 10475 := by
    unfold C
    simp [show (147456 * k + 20950) % 2 = 0 by omega]
    omega
  have h5 : C (73728 * k + 10475) = 221184 * k + 31426 := by
    unfold C
    simp [show (73728 * k + 10475) % 2 ≠ 0 by omega]
    omega
  have h6 : C (221184 * k + 31426) = 110592 * k + 15713 := by
    unfold C
    simp [show (221184 * k + 31426) % 2 = 0 by omega]
    omega
  have h7 : C (110592 * k + 15713) = 331776 * k + 47140 := by
    unfold C
    simp [show (110592 * k + 15713) % 2 ≠ 0 by omega]
    omega
  have h8 : C (331776 * k + 47140) = 165888 * k + 23570 := by
    unfold C
    simp [show (331776 * k + 47140) % 2 = 0 by omega]
    omega
  have h9 : C (165888 * k + 23570) = 82944 * k + 11785 := by
    unfold C
    simp [show (165888 * k + 23570) % 2 = 0 by omega]
    omega
  have h10 : C (82944 * k + 11785) = 248832 * k + 35356 := by
    unfold C
    simp [show (82944 * k + 11785) % 2 ≠ 0 by omega]
    omega
  have h11 : C (248832 * k + 35356) = 124416 * k + 17678 := by
    unfold C
    simp [show (248832 * k + 35356) % 2 = 0 by omega]
    omega
  have h12 : C (124416 * k + 17678) = 62208 * k + 8839 := by
    unfold C
    simp [show (124416 * k + 17678) % 2 = 0 by omega]
    omega
  have h13 : C (62208 * k + 8839) = 186624 * k + 26518 := by
    unfold C
    simp [show (62208 * k + 8839) % 2 ≠ 0 by omega]
    omega
  have h14 : C (186624 * k + 26518) = 93312 * k + 13259 := by
    unfold C
    simp [show (186624 * k + 26518) % 2 = 0 by omega]
    omega
  have h15 : C (93312 * k + 13259) = 279936 * k + 39778 := by
    unfold C
    simp [show (93312 * k + 13259) % 2 ≠ 0 by omega]
    omega
  have h16 : C (279936 * k + 39778) = 139968 * k + 19889 := by
    unfold C
    simp [show (279936 * k + 39778) % 2 = 0 by omega]
    omega
  have h17 : C (139968 * k + 19889) = 419904 * k + 59668 := by
    unfold C
    simp [show (139968 * k + 19889) % 2 ≠ 0 by omega]
    omega
  have h18 : C (419904 * k + 59668) = 209952 * k + 29834 := by
    unfold C
    simp [show (419904 * k + 59668) % 2 = 0 by omega]
    omega
  have h19 : C (209952 * k + 29834) = 104976 * k + 14917 := by
    unfold C
    simp [show (209952 * k + 29834) % 2 = 0 by omega]
    omega
  have h20 : C (104976 * k + 14917) = 314928 * k + 44752 := by
    unfold C
    simp [show (104976 * k + 14917) % 2 ≠ 0 by omega]
    omega
  have h21 : C (314928 * k + 44752) = 157464 * k + 22376 := by
    unfold C
    simp [show (314928 * k + 44752) % 2 = 0 by omega]
    omega
  have h22 : C (157464 * k + 22376) = 78732 * k + 11188 := by
    unfold C
    simp [show (157464 * k + 22376) % 2 = 0 by omega]
    omega
  have h23 : C (78732 * k + 11188) = 39366 * k + 5594 := by
    unfold C
    simp [show (78732 * k + 11188) % 2 = 0 by omega]
    omega
  have h24 : C (39366 * k + 5594) = 19683 * k + 2797 := by
    unfold C
    simp [show (39366 * k + 5594) % 2 = 0 by omega]
    omega
  have hIter : iterate (32768 * k + 4655) 24 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (32768 * k + 4655)))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24]
  · omega

theorem descent_mod32768_5231 : ∀ k : Nat, iterate (32768 * k + 5231) 24 = 19683 * k + 3143 ∧ 19683 * k + 3143 < 32768 * k + 5231 := by
  intro k
  have h1 : C (32768 * k + 5231) = 98304 * k + 15694 := by
    unfold C
    simp [show (32768 * k + 5231) % 2 ≠ 0 by omega]
    omega
  have h2 : C (98304 * k + 15694) = 49152 * k + 7847 := by
    unfold C
    simp [show (98304 * k + 15694) % 2 = 0 by omega]
    omega
  have h3 : C (49152 * k + 7847) = 147456 * k + 23542 := by
    unfold C
    simp [show (49152 * k + 7847) % 2 ≠ 0 by omega]
    omega
  have h4 : C (147456 * k + 23542) = 73728 * k + 11771 := by
    unfold C
    simp [show (147456 * k + 23542) % 2 = 0 by omega]
    omega
  have h5 : C (73728 * k + 11771) = 221184 * k + 35314 := by
    unfold C
    simp [show (73728 * k + 11771) % 2 ≠ 0 by omega]
    omega
  have h6 : C (221184 * k + 35314) = 110592 * k + 17657 := by
    unfold C
    simp [show (221184 * k + 35314) % 2 = 0 by omega]
    omega
  have h7 : C (110592 * k + 17657) = 331776 * k + 52972 := by
    unfold C
    simp [show (110592 * k + 17657) % 2 ≠ 0 by omega]
    omega
  have h8 : C (331776 * k + 52972) = 165888 * k + 26486 := by
    unfold C
    simp [show (331776 * k + 52972) % 2 = 0 by omega]
    omega
  have h9 : C (165888 * k + 26486) = 82944 * k + 13243 := by
    unfold C
    simp [show (165888 * k + 26486) % 2 = 0 by omega]
    omega
  have h10 : C (82944 * k + 13243) = 248832 * k + 39730 := by
    unfold C
    simp [show (82944 * k + 13243) % 2 ≠ 0 by omega]
    omega
  have h11 : C (248832 * k + 39730) = 124416 * k + 19865 := by
    unfold C
    simp [show (248832 * k + 39730) % 2 = 0 by omega]
    omega
  have h12 : C (124416 * k + 19865) = 373248 * k + 59596 := by
    unfold C
    simp [show (124416 * k + 19865) % 2 ≠ 0 by omega]
    omega
  have h13 : C (373248 * k + 59596) = 186624 * k + 29798 := by
    unfold C
    simp [show (373248 * k + 59596) % 2 = 0 by omega]
    omega
  have h14 : C (186624 * k + 29798) = 93312 * k + 14899 := by
    unfold C
    simp [show (186624 * k + 29798) % 2 = 0 by omega]
    omega
  have h15 : C (93312 * k + 14899) = 279936 * k + 44698 := by
    unfold C
    simp [show (93312 * k + 14899) % 2 ≠ 0 by omega]
    omega
  have h16 : C (279936 * k + 44698) = 139968 * k + 22349 := by
    unfold C
    simp [show (279936 * k + 44698) % 2 = 0 by omega]
    omega
  have h17 : C (139968 * k + 22349) = 419904 * k + 67048 := by
    unfold C
    simp [show (139968 * k + 22349) % 2 ≠ 0 by omega]
    omega
  have h18 : C (419904 * k + 67048) = 209952 * k + 33524 := by
    unfold C
    simp [show (419904 * k + 67048) % 2 = 0 by omega]
    omega
  have h19 : C (209952 * k + 33524) = 104976 * k + 16762 := by
    unfold C
    simp [show (209952 * k + 33524) % 2 = 0 by omega]
    omega
  have h20 : C (104976 * k + 16762) = 52488 * k + 8381 := by
    unfold C
    simp [show (104976 * k + 16762) % 2 = 0 by omega]
    omega
  have h21 : C (52488 * k + 8381) = 157464 * k + 25144 := by
    unfold C
    simp [show (52488 * k + 8381) % 2 ≠ 0 by omega]
    omega
  have h22 : C (157464 * k + 25144) = 78732 * k + 12572 := by
    unfold C
    simp [show (157464 * k + 25144) % 2 = 0 by omega]
    omega
  have h23 : C (78732 * k + 12572) = 39366 * k + 6286 := by
    unfold C
    simp [show (78732 * k + 12572) % 2 = 0 by omega]
    omega
  have h24 : C (39366 * k + 6286) = 19683 * k + 3143 := by
    unfold C
    simp [show (39366 * k + 6286) % 2 = 0 by omega]
    omega
  have hIter : iterate (32768 * k + 5231) 24 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (32768 * k + 5231)))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24]
  · omega

theorem descent_mod32768_5311 : ∀ k : Nat, iterate (32768 * k + 5311) 24 = 19683 * k + 3191 ∧ 19683 * k + 3191 < 32768 * k + 5311 := by
  intro k
  have h1 : C (32768 * k + 5311) = 98304 * k + 15934 := by
    unfold C
    simp [show (32768 * k + 5311) % 2 ≠ 0 by omega]
    omega
  have h2 : C (98304 * k + 15934) = 49152 * k + 7967 := by
    unfold C
    simp [show (98304 * k + 15934) % 2 = 0 by omega]
    omega
  have h3 : C (49152 * k + 7967) = 147456 * k + 23902 := by
    unfold C
    simp [show (49152 * k + 7967) % 2 ≠ 0 by omega]
    omega
  have h4 : C (147456 * k + 23902) = 73728 * k + 11951 := by
    unfold C
    simp [show (147456 * k + 23902) % 2 = 0 by omega]
    omega
  have h5 : C (73728 * k + 11951) = 221184 * k + 35854 := by
    unfold C
    simp [show (73728 * k + 11951) % 2 ≠ 0 by omega]
    omega
  have h6 : C (221184 * k + 35854) = 110592 * k + 17927 := by
    unfold C
    simp [show (221184 * k + 35854) % 2 = 0 by omega]
    omega
  have h7 : C (110592 * k + 17927) = 331776 * k + 53782 := by
    unfold C
    simp [show (110592 * k + 17927) % 2 ≠ 0 by omega]
    omega
  have h8 : C (331776 * k + 53782) = 165888 * k + 26891 := by
    unfold C
    simp [show (331776 * k + 53782) % 2 = 0 by omega]
    omega
  have h9 : C (165888 * k + 26891) = 497664 * k + 80674 := by
    unfold C
    simp [show (165888 * k + 26891) % 2 ≠ 0 by omega]
    omega
  have h10 : C (497664 * k + 80674) = 248832 * k + 40337 := by
    unfold C
    simp [show (497664 * k + 80674) % 2 = 0 by omega]
    omega
  have h11 : C (248832 * k + 40337) = 746496 * k + 121012 := by
    unfold C
    simp [show (248832 * k + 40337) % 2 ≠ 0 by omega]
    omega
  have h12 : C (746496 * k + 121012) = 373248 * k + 60506 := by
    unfold C
    simp [show (746496 * k + 121012) % 2 = 0 by omega]
    omega
  have h13 : C (373248 * k + 60506) = 186624 * k + 30253 := by
    unfold C
    simp [show (373248 * k + 60506) % 2 = 0 by omega]
    omega
  have h14 : C (186624 * k + 30253) = 559872 * k + 90760 := by
    unfold C
    simp [show (186624 * k + 30253) % 2 ≠ 0 by omega]
    omega
  have h15 : C (559872 * k + 90760) = 279936 * k + 45380 := by
    unfold C
    simp [show (559872 * k + 90760) % 2 = 0 by omega]
    omega
  have h16 : C (279936 * k + 45380) = 139968 * k + 22690 := by
    unfold C
    simp [show (279936 * k + 45380) % 2 = 0 by omega]
    omega
  have h17 : C (139968 * k + 22690) = 69984 * k + 11345 := by
    unfold C
    simp [show (139968 * k + 22690) % 2 = 0 by omega]
    omega
  have h18 : C (69984 * k + 11345) = 209952 * k + 34036 := by
    unfold C
    simp [show (69984 * k + 11345) % 2 ≠ 0 by omega]
    omega
  have h19 : C (209952 * k + 34036) = 104976 * k + 17018 := by
    unfold C
    simp [show (209952 * k + 34036) % 2 = 0 by omega]
    omega
  have h20 : C (104976 * k + 17018) = 52488 * k + 8509 := by
    unfold C
    simp [show (104976 * k + 17018) % 2 = 0 by omega]
    omega
  have h21 : C (52488 * k + 8509) = 157464 * k + 25528 := by
    unfold C
    simp [show (52488 * k + 8509) % 2 ≠ 0 by omega]
    omega
  have h22 : C (157464 * k + 25528) = 78732 * k + 12764 := by
    unfold C
    simp [show (157464 * k + 25528) % 2 = 0 by omega]
    omega
  have h23 : C (78732 * k + 12764) = 39366 * k + 6382 := by
    unfold C
    simp [show (78732 * k + 12764) % 2 = 0 by omega]
    omega
  have h24 : C (39366 * k + 6382) = 19683 * k + 3191 := by
    unfold C
    simp [show (39366 * k + 6382) % 2 = 0 by omega]
    omega
  have hIter : iterate (32768 * k + 5311) 24 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (32768 * k + 5311)))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24]
  · omega

theorem descent_mod32768_5599 : ∀ k : Nat, iterate (32768 * k + 5599) 24 = 19683 * k + 3364 ∧ 19683 * k + 3364 < 32768 * k + 5599 := by
  intro k
  have h1 : C (32768 * k + 5599) = 98304 * k + 16798 := by
    unfold C
    simp [show (32768 * k + 5599) % 2 ≠ 0 by omega]
    omega
  have h2 : C (98304 * k + 16798) = 49152 * k + 8399 := by
    unfold C
    simp [show (98304 * k + 16798) % 2 = 0 by omega]
    omega
  have h3 : C (49152 * k + 8399) = 147456 * k + 25198 := by
    unfold C
    simp [show (49152 * k + 8399) % 2 ≠ 0 by omega]
    omega
  have h4 : C (147456 * k + 25198) = 73728 * k + 12599 := by
    unfold C
    simp [show (147456 * k + 25198) % 2 = 0 by omega]
    omega
  have h5 : C (73728 * k + 12599) = 221184 * k + 37798 := by
    unfold C
    simp [show (73728 * k + 12599) % 2 ≠ 0 by omega]
    omega
  have h6 : C (221184 * k + 37798) = 110592 * k + 18899 := by
    unfold C
    simp [show (221184 * k + 37798) % 2 = 0 by omega]
    omega
  have h7 : C (110592 * k + 18899) = 331776 * k + 56698 := by
    unfold C
    simp [show (110592 * k + 18899) % 2 ≠ 0 by omega]
    omega
  have h8 : C (331776 * k + 56698) = 165888 * k + 28349 := by
    unfold C
    simp [show (331776 * k + 56698) % 2 = 0 by omega]
    omega
  have h9 : C (165888 * k + 28349) = 497664 * k + 85048 := by
    unfold C
    simp [show (165888 * k + 28349) % 2 ≠ 0 by omega]
    omega
  have h10 : C (497664 * k + 85048) = 248832 * k + 42524 := by
    unfold C
    simp [show (497664 * k + 85048) % 2 = 0 by omega]
    omega
  have h11 : C (248832 * k + 42524) = 124416 * k + 21262 := by
    unfold C
    simp [show (248832 * k + 42524) % 2 = 0 by omega]
    omega
  have h12 : C (124416 * k + 21262) = 62208 * k + 10631 := by
    unfold C
    simp [show (124416 * k + 21262) % 2 = 0 by omega]
    omega
  have h13 : C (62208 * k + 10631) = 186624 * k + 31894 := by
    unfold C
    simp [show (62208 * k + 10631) % 2 ≠ 0 by omega]
    omega
  have h14 : C (186624 * k + 31894) = 93312 * k + 15947 := by
    unfold C
    simp [show (186624 * k + 31894) % 2 = 0 by omega]
    omega
  have h15 : C (93312 * k + 15947) = 279936 * k + 47842 := by
    unfold C
    simp [show (93312 * k + 15947) % 2 ≠ 0 by omega]
    omega
  have h16 : C (279936 * k + 47842) = 139968 * k + 23921 := by
    unfold C
    simp [show (279936 * k + 47842) % 2 = 0 by omega]
    omega
  have h17 : C (139968 * k + 23921) = 419904 * k + 71764 := by
    unfold C
    simp [show (139968 * k + 23921) % 2 ≠ 0 by omega]
    omega
  have h18 : C (419904 * k + 71764) = 209952 * k + 35882 := by
    unfold C
    simp [show (419904 * k + 71764) % 2 = 0 by omega]
    omega
  have h19 : C (209952 * k + 35882) = 104976 * k + 17941 := by
    unfold C
    simp [show (209952 * k + 35882) % 2 = 0 by omega]
    omega
  have h20 : C (104976 * k + 17941) = 314928 * k + 53824 := by
    unfold C
    simp [show (104976 * k + 17941) % 2 ≠ 0 by omega]
    omega
  have h21 : C (314928 * k + 53824) = 157464 * k + 26912 := by
    unfold C
    simp [show (314928 * k + 53824) % 2 = 0 by omega]
    omega
  have h22 : C (157464 * k + 26912) = 78732 * k + 13456 := by
    unfold C
    simp [show (157464 * k + 26912) % 2 = 0 by omega]
    omega
  have h23 : C (78732 * k + 13456) = 39366 * k + 6728 := by
    unfold C
    simp [show (78732 * k + 13456) % 2 = 0 by omega]
    omega
  have h24 : C (39366 * k + 6728) = 19683 * k + 3364 := by
    unfold C
    simp [show (39366 * k + 6728) % 2 = 0 by omega]
    omega
  have hIter : iterate (32768 * k + 5599) 24 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (32768 * k + 5599)))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24]
  · omega

theorem descent_mod32768_5631 : ∀ k : Nat, iterate (32768 * k + 5631) 24 = 19683 * k + 3383 ∧ 19683 * k + 3383 < 32768 * k + 5631 := by
  intro k
  have h1 : C (32768 * k + 5631) = 98304 * k + 16894 := by
    unfold C
    simp [show (32768 * k + 5631) % 2 ≠ 0 by omega]
    omega
  have h2 : C (98304 * k + 16894) = 49152 * k + 8447 := by
    unfold C
    simp [show (98304 * k + 16894) % 2 = 0 by omega]
    omega
  have h3 : C (49152 * k + 8447) = 147456 * k + 25342 := by
    unfold C
    simp [show (49152 * k + 8447) % 2 ≠ 0 by omega]
    omega
  have h4 : C (147456 * k + 25342) = 73728 * k + 12671 := by
    unfold C
    simp [show (147456 * k + 25342) % 2 = 0 by omega]
    omega
  have h5 : C (73728 * k + 12671) = 221184 * k + 38014 := by
    unfold C
    simp [show (73728 * k + 12671) % 2 ≠ 0 by omega]
    omega
  have h6 : C (221184 * k + 38014) = 110592 * k + 19007 := by
    unfold C
    simp [show (221184 * k + 38014) % 2 = 0 by omega]
    omega
  have h7 : C (110592 * k + 19007) = 331776 * k + 57022 := by
    unfold C
    simp [show (110592 * k + 19007) % 2 ≠ 0 by omega]
    omega
  have h8 : C (331776 * k + 57022) = 165888 * k + 28511 := by
    unfold C
    simp [show (331776 * k + 57022) % 2 = 0 by omega]
    omega
  have h9 : C (165888 * k + 28511) = 497664 * k + 85534 := by
    unfold C
    simp [show (165888 * k + 28511) % 2 ≠ 0 by omega]
    omega
  have h10 : C (497664 * k + 85534) = 248832 * k + 42767 := by
    unfold C
    simp [show (497664 * k + 85534) % 2 = 0 by omega]
    omega
  have h11 : C (248832 * k + 42767) = 746496 * k + 128302 := by
    unfold C
    simp [show (248832 * k + 42767) % 2 ≠ 0 by omega]
    omega
  have h12 : C (746496 * k + 128302) = 373248 * k + 64151 := by
    unfold C
    simp [show (746496 * k + 128302) % 2 = 0 by omega]
    omega
  have h13 : C (373248 * k + 64151) = 1119744 * k + 192454 := by
    unfold C
    simp [show (373248 * k + 64151) % 2 ≠ 0 by omega]
    omega
  have h14 : C (1119744 * k + 192454) = 559872 * k + 96227 := by
    unfold C
    simp [show (1119744 * k + 192454) % 2 = 0 by omega]
    omega
  have h15 : C (559872 * k + 96227) = 1679616 * k + 288682 := by
    unfold C
    simp [show (559872 * k + 96227) % 2 ≠ 0 by omega]
    omega
  have h16 : C (1679616 * k + 288682) = 839808 * k + 144341 := by
    unfold C
    simp [show (1679616 * k + 288682) % 2 = 0 by omega]
    omega
  have h17 : C (839808 * k + 144341) = 2519424 * k + 433024 := by
    unfold C
    simp [show (839808 * k + 144341) % 2 ≠ 0 by omega]
    omega
  have h18 : C (2519424 * k + 433024) = 1259712 * k + 216512 := by
    unfold C
    simp [show (2519424 * k + 433024) % 2 = 0 by omega]
    omega
  have h19 : C (1259712 * k + 216512) = 629856 * k + 108256 := by
    unfold C
    simp [show (1259712 * k + 216512) % 2 = 0 by omega]
    omega
  have h20 : C (629856 * k + 108256) = 314928 * k + 54128 := by
    unfold C
    simp [show (629856 * k + 108256) % 2 = 0 by omega]
    omega
  have h21 : C (314928 * k + 54128) = 157464 * k + 27064 := by
    unfold C
    simp [show (314928 * k + 54128) % 2 = 0 by omega]
    omega
  have h22 : C (157464 * k + 27064) = 78732 * k + 13532 := by
    unfold C
    simp [show (157464 * k + 27064) % 2 = 0 by omega]
    omega
  have h23 : C (78732 * k + 13532) = 39366 * k + 6766 := by
    unfold C
    simp [show (78732 * k + 13532) % 2 = 0 by omega]
    omega
  have h24 : C (39366 * k + 6766) = 19683 * k + 3383 := by
    unfold C
    simp [show (39366 * k + 6766) % 2 = 0 by omega]
    omega
  have hIter : iterate (32768 * k + 5631) 24 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (32768 * k + 5631)))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24]
  · omega

#print axioms descent_mod32768_4031
#print axioms descent_mod32768_4187
#print axioms descent_mod32768_4287
#print axioms descent_mod32768_4655
#print axioms descent_mod32768_5231
#print axioms descent_mod32768_5311
#print axioms descent_mod32768_5599
#print axioms descent_mod32768_5631

end CollatzM15ShardD
