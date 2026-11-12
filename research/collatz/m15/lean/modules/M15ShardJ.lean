import Mathlib.Data.Nat.Prime.Basic

namespace CollatzM15ShardJ

def C (n : Nat) : Nat := if n % 2 = 0 then n / 2 else 3 * n + 1

def iterate (n t : Nat) : Nat := Nat.rec n (fun _ previous => C previous) t

theorem descent_mod32768_12967 : ∀ k : Nat, iterate (32768 * k + 12967) 24 = 19683 * k + 7790 ∧ 19683 * k + 7790 < 32768 * k + 12967 := by
  intro k
  have h1 : C (32768 * k + 12967) = 98304 * k + 38902 := by
    unfold C
    simp [show (32768 * k + 12967) % 2 ≠ 0 by omega]
    omega
  have h2 : C (98304 * k + 38902) = 49152 * k + 19451 := by
    unfold C
    simp [show (98304 * k + 38902) % 2 = 0 by omega]
    omega
  have h3 : C (49152 * k + 19451) = 147456 * k + 58354 := by
    unfold C
    simp [show (49152 * k + 19451) % 2 ≠ 0 by omega]
    omega
  have h4 : C (147456 * k + 58354) = 73728 * k + 29177 := by
    unfold C
    simp [show (147456 * k + 58354) % 2 = 0 by omega]
    omega
  have h5 : C (73728 * k + 29177) = 221184 * k + 87532 := by
    unfold C
    simp [show (73728 * k + 29177) % 2 ≠ 0 by omega]
    omega
  have h6 : C (221184 * k + 87532) = 110592 * k + 43766 := by
    unfold C
    simp [show (221184 * k + 87532) % 2 = 0 by omega]
    omega
  have h7 : C (110592 * k + 43766) = 55296 * k + 21883 := by
    unfold C
    simp [show (110592 * k + 43766) % 2 = 0 by omega]
    omega
  have h8 : C (55296 * k + 21883) = 165888 * k + 65650 := by
    unfold C
    simp [show (55296 * k + 21883) % 2 ≠ 0 by omega]
    omega
  have h9 : C (165888 * k + 65650) = 82944 * k + 32825 := by
    unfold C
    simp [show (165888 * k + 65650) % 2 = 0 by omega]
    omega
  have h10 : C (82944 * k + 32825) = 248832 * k + 98476 := by
    unfold C
    simp [show (82944 * k + 32825) % 2 ≠ 0 by omega]
    omega
  have h11 : C (248832 * k + 98476) = 124416 * k + 49238 := by
    unfold C
    simp [show (248832 * k + 98476) % 2 = 0 by omega]
    omega
  have h12 : C (124416 * k + 49238) = 62208 * k + 24619 := by
    unfold C
    simp [show (124416 * k + 49238) % 2 = 0 by omega]
    omega
  have h13 : C (62208 * k + 24619) = 186624 * k + 73858 := by
    unfold C
    simp [show (62208 * k + 24619) % 2 ≠ 0 by omega]
    omega
  have h14 : C (186624 * k + 73858) = 93312 * k + 36929 := by
    unfold C
    simp [show (186624 * k + 73858) % 2 = 0 by omega]
    omega
  have h15 : C (93312 * k + 36929) = 279936 * k + 110788 := by
    unfold C
    simp [show (93312 * k + 36929) % 2 ≠ 0 by omega]
    omega
  have h16 : C (279936 * k + 110788) = 139968 * k + 55394 := by
    unfold C
    simp [show (279936 * k + 110788) % 2 = 0 by omega]
    omega
  have h17 : C (139968 * k + 55394) = 69984 * k + 27697 := by
    unfold C
    simp [show (139968 * k + 55394) % 2 = 0 by omega]
    omega
  have h18 : C (69984 * k + 27697) = 209952 * k + 83092 := by
    unfold C
    simp [show (69984 * k + 27697) % 2 ≠ 0 by omega]
    omega
  have h19 : C (209952 * k + 83092) = 104976 * k + 41546 := by
    unfold C
    simp [show (209952 * k + 83092) % 2 = 0 by omega]
    omega
  have h20 : C (104976 * k + 41546) = 52488 * k + 20773 := by
    unfold C
    simp [show (104976 * k + 41546) % 2 = 0 by omega]
    omega
  have h21 : C (52488 * k + 20773) = 157464 * k + 62320 := by
    unfold C
    simp [show (52488 * k + 20773) % 2 ≠ 0 by omega]
    omega
  have h22 : C (157464 * k + 62320) = 78732 * k + 31160 := by
    unfold C
    simp [show (157464 * k + 62320) % 2 = 0 by omega]
    omega
  have h23 : C (78732 * k + 31160) = 39366 * k + 15580 := by
    unfold C
    simp [show (78732 * k + 31160) % 2 = 0 by omega]
    omega
  have h24 : C (39366 * k + 15580) = 19683 * k + 7790 := by
    unfold C
    simp [show (39366 * k + 15580) % 2 = 0 by omega]
    omega
  have hIter : iterate (32768 * k + 12967) 24 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (32768 * k + 12967)))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24]
  · omega

theorem descent_mod32768_13007 : ∀ k : Nat, iterate (32768 * k + 13007) 24 = 19683 * k + 7814 ∧ 19683 * k + 7814 < 32768 * k + 13007 := by
  intro k
  have h1 : C (32768 * k + 13007) = 98304 * k + 39022 := by
    unfold C
    simp [show (32768 * k + 13007) % 2 ≠ 0 by omega]
    omega
  have h2 : C (98304 * k + 39022) = 49152 * k + 19511 := by
    unfold C
    simp [show (98304 * k + 39022) % 2 = 0 by omega]
    omega
  have h3 : C (49152 * k + 19511) = 147456 * k + 58534 := by
    unfold C
    simp [show (49152 * k + 19511) % 2 ≠ 0 by omega]
    omega
  have h4 : C (147456 * k + 58534) = 73728 * k + 29267 := by
    unfold C
    simp [show (147456 * k + 58534) % 2 = 0 by omega]
    omega
  have h5 : C (73728 * k + 29267) = 221184 * k + 87802 := by
    unfold C
    simp [show (73728 * k + 29267) % 2 ≠ 0 by omega]
    omega
  have h6 : C (221184 * k + 87802) = 110592 * k + 43901 := by
    unfold C
    simp [show (221184 * k + 87802) % 2 = 0 by omega]
    omega
  have h7 : C (110592 * k + 43901) = 331776 * k + 131704 := by
    unfold C
    simp [show (110592 * k + 43901) % 2 ≠ 0 by omega]
    omega
  have h8 : C (331776 * k + 131704) = 165888 * k + 65852 := by
    unfold C
    simp [show (331776 * k + 131704) % 2 = 0 by omega]
    omega
  have h9 : C (165888 * k + 65852) = 82944 * k + 32926 := by
    unfold C
    simp [show (165888 * k + 65852) % 2 = 0 by omega]
    omega
  have h10 : C (82944 * k + 32926) = 41472 * k + 16463 := by
    unfold C
    simp [show (82944 * k + 32926) % 2 = 0 by omega]
    omega
  have h11 : C (41472 * k + 16463) = 124416 * k + 49390 := by
    unfold C
    simp [show (41472 * k + 16463) % 2 ≠ 0 by omega]
    omega
  have h12 : C (124416 * k + 49390) = 62208 * k + 24695 := by
    unfold C
    simp [show (124416 * k + 49390) % 2 = 0 by omega]
    omega
  have h13 : C (62208 * k + 24695) = 186624 * k + 74086 := by
    unfold C
    simp [show (62208 * k + 24695) % 2 ≠ 0 by omega]
    omega
  have h14 : C (186624 * k + 74086) = 93312 * k + 37043 := by
    unfold C
    simp [show (186624 * k + 74086) % 2 = 0 by omega]
    omega
  have h15 : C (93312 * k + 37043) = 279936 * k + 111130 := by
    unfold C
    simp [show (93312 * k + 37043) % 2 ≠ 0 by omega]
    omega
  have h16 : C (279936 * k + 111130) = 139968 * k + 55565 := by
    unfold C
    simp [show (279936 * k + 111130) % 2 = 0 by omega]
    omega
  have h17 : C (139968 * k + 55565) = 419904 * k + 166696 := by
    unfold C
    simp [show (139968 * k + 55565) % 2 ≠ 0 by omega]
    omega
  have h18 : C (419904 * k + 166696) = 209952 * k + 83348 := by
    unfold C
    simp [show (419904 * k + 166696) % 2 = 0 by omega]
    omega
  have h19 : C (209952 * k + 83348) = 104976 * k + 41674 := by
    unfold C
    simp [show (209952 * k + 83348) % 2 = 0 by omega]
    omega
  have h20 : C (104976 * k + 41674) = 52488 * k + 20837 := by
    unfold C
    simp [show (104976 * k + 41674) % 2 = 0 by omega]
    omega
  have h21 : C (52488 * k + 20837) = 157464 * k + 62512 := by
    unfold C
    simp [show (52488 * k + 20837) % 2 ≠ 0 by omega]
    omega
  have h22 : C (157464 * k + 62512) = 78732 * k + 31256 := by
    unfold C
    simp [show (157464 * k + 62512) % 2 = 0 by omega]
    omega
  have h23 : C (78732 * k + 31256) = 39366 * k + 15628 := by
    unfold C
    simp [show (78732 * k + 31256) % 2 = 0 by omega]
    omega
  have h24 : C (39366 * k + 15628) = 19683 * k + 7814 := by
    unfold C
    simp [show (39366 * k + 15628) % 2 = 0 by omega]
    omega
  have hIter : iterate (32768 * k + 13007) 24 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (32768 * k + 13007)))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24]
  · omega

theorem descent_mod32768_13087 : ∀ k : Nat, iterate (32768 * k + 13087) 24 = 19683 * k + 7862 ∧ 19683 * k + 7862 < 32768 * k + 13087 := by
  intro k
  have h1 : C (32768 * k + 13087) = 98304 * k + 39262 := by
    unfold C
    simp [show (32768 * k + 13087) % 2 ≠ 0 by omega]
    omega
  have h2 : C (98304 * k + 39262) = 49152 * k + 19631 := by
    unfold C
    simp [show (98304 * k + 39262) % 2 = 0 by omega]
    omega
  have h3 : C (49152 * k + 19631) = 147456 * k + 58894 := by
    unfold C
    simp [show (49152 * k + 19631) % 2 ≠ 0 by omega]
    omega
  have h4 : C (147456 * k + 58894) = 73728 * k + 29447 := by
    unfold C
    simp [show (147456 * k + 58894) % 2 = 0 by omega]
    omega
  have h5 : C (73728 * k + 29447) = 221184 * k + 88342 := by
    unfold C
    simp [show (73728 * k + 29447) % 2 ≠ 0 by omega]
    omega
  have h6 : C (221184 * k + 88342) = 110592 * k + 44171 := by
    unfold C
    simp [show (221184 * k + 88342) % 2 = 0 by omega]
    omega
  have h7 : C (110592 * k + 44171) = 331776 * k + 132514 := by
    unfold C
    simp [show (110592 * k + 44171) % 2 ≠ 0 by omega]
    omega
  have h8 : C (331776 * k + 132514) = 165888 * k + 66257 := by
    unfold C
    simp [show (331776 * k + 132514) % 2 = 0 by omega]
    omega
  have h9 : C (165888 * k + 66257) = 497664 * k + 198772 := by
    unfold C
    simp [show (165888 * k + 66257) % 2 ≠ 0 by omega]
    omega
  have h10 : C (497664 * k + 198772) = 248832 * k + 99386 := by
    unfold C
    simp [show (497664 * k + 198772) % 2 = 0 by omega]
    omega
  have h11 : C (248832 * k + 99386) = 124416 * k + 49693 := by
    unfold C
    simp [show (248832 * k + 99386) % 2 = 0 by omega]
    omega
  have h12 : C (124416 * k + 49693) = 373248 * k + 149080 := by
    unfold C
    simp [show (124416 * k + 49693) % 2 ≠ 0 by omega]
    omega
  have h13 : C (373248 * k + 149080) = 186624 * k + 74540 := by
    unfold C
    simp [show (373248 * k + 149080) % 2 = 0 by omega]
    omega
  have h14 : C (186624 * k + 74540) = 93312 * k + 37270 := by
    unfold C
    simp [show (186624 * k + 74540) % 2 = 0 by omega]
    omega
  have h15 : C (93312 * k + 37270) = 46656 * k + 18635 := by
    unfold C
    simp [show (93312 * k + 37270) % 2 = 0 by omega]
    omega
  have h16 : C (46656 * k + 18635) = 139968 * k + 55906 := by
    unfold C
    simp [show (46656 * k + 18635) % 2 ≠ 0 by omega]
    omega
  have h17 : C (139968 * k + 55906) = 69984 * k + 27953 := by
    unfold C
    simp [show (139968 * k + 55906) % 2 = 0 by omega]
    omega
  have h18 : C (69984 * k + 27953) = 209952 * k + 83860 := by
    unfold C
    simp [show (69984 * k + 27953) % 2 ≠ 0 by omega]
    omega
  have h19 : C (209952 * k + 83860) = 104976 * k + 41930 := by
    unfold C
    simp [show (209952 * k + 83860) % 2 = 0 by omega]
    omega
  have h20 : C (104976 * k + 41930) = 52488 * k + 20965 := by
    unfold C
    simp [show (104976 * k + 41930) % 2 = 0 by omega]
    omega
  have h21 : C (52488 * k + 20965) = 157464 * k + 62896 := by
    unfold C
    simp [show (52488 * k + 20965) % 2 ≠ 0 by omega]
    omega
  have h22 : C (157464 * k + 62896) = 78732 * k + 31448 := by
    unfold C
    simp [show (157464 * k + 62896) % 2 = 0 by omega]
    omega
  have h23 : C (78732 * k + 31448) = 39366 * k + 15724 := by
    unfold C
    simp [show (78732 * k + 31448) % 2 = 0 by omega]
    omega
  have h24 : C (39366 * k + 15724) = 19683 * k + 7862 := by
    unfold C
    simp [show (39366 * k + 15724) % 2 = 0 by omega]
    omega
  have hIter : iterate (32768 * k + 13087) 24 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (32768 * k + 13087)))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24]
  · omega

theorem descent_mod32768_13567 : ∀ k : Nat, iterate (32768 * k + 13567) 24 = 19683 * k + 8150 ∧ 19683 * k + 8150 < 32768 * k + 13567 := by
  intro k
  have h1 : C (32768 * k + 13567) = 98304 * k + 40702 := by
    unfold C
    simp [show (32768 * k + 13567) % 2 ≠ 0 by omega]
    omega
  have h2 : C (98304 * k + 40702) = 49152 * k + 20351 := by
    unfold C
    simp [show (98304 * k + 40702) % 2 = 0 by omega]
    omega
  have h3 : C (49152 * k + 20351) = 147456 * k + 61054 := by
    unfold C
    simp [show (49152 * k + 20351) % 2 ≠ 0 by omega]
    omega
  have h4 : C (147456 * k + 61054) = 73728 * k + 30527 := by
    unfold C
    simp [show (147456 * k + 61054) % 2 = 0 by omega]
    omega
  have h5 : C (73728 * k + 30527) = 221184 * k + 91582 := by
    unfold C
    simp [show (73728 * k + 30527) % 2 ≠ 0 by omega]
    omega
  have h6 : C (221184 * k + 91582) = 110592 * k + 45791 := by
    unfold C
    simp [show (221184 * k + 91582) % 2 = 0 by omega]
    omega
  have h7 : C (110592 * k + 45791) = 331776 * k + 137374 := by
    unfold C
    simp [show (110592 * k + 45791) % 2 ≠ 0 by omega]
    omega
  have h8 : C (331776 * k + 137374) = 165888 * k + 68687 := by
    unfold C
    simp [show (331776 * k + 137374) % 2 = 0 by omega]
    omega
  have h9 : C (165888 * k + 68687) = 497664 * k + 206062 := by
    unfold C
    simp [show (165888 * k + 68687) % 2 ≠ 0 by omega]
    omega
  have h10 : C (497664 * k + 206062) = 248832 * k + 103031 := by
    unfold C
    simp [show (497664 * k + 206062) % 2 = 0 by omega]
    omega
  have h11 : C (248832 * k + 103031) = 746496 * k + 309094 := by
    unfold C
    simp [show (248832 * k + 103031) % 2 ≠ 0 by omega]
    omega
  have h12 : C (746496 * k + 309094) = 373248 * k + 154547 := by
    unfold C
    simp [show (746496 * k + 309094) % 2 = 0 by omega]
    omega
  have h13 : C (373248 * k + 154547) = 1119744 * k + 463642 := by
    unfold C
    simp [show (373248 * k + 154547) % 2 ≠ 0 by omega]
    omega
  have h14 : C (1119744 * k + 463642) = 559872 * k + 231821 := by
    unfold C
    simp [show (1119744 * k + 463642) % 2 = 0 by omega]
    omega
  have h15 : C (559872 * k + 231821) = 1679616 * k + 695464 := by
    unfold C
    simp [show (559872 * k + 231821) % 2 ≠ 0 by omega]
    omega
  have h16 : C (1679616 * k + 695464) = 839808 * k + 347732 := by
    unfold C
    simp [show (1679616 * k + 695464) % 2 = 0 by omega]
    omega
  have h17 : C (839808 * k + 347732) = 419904 * k + 173866 := by
    unfold C
    simp [show (839808 * k + 347732) % 2 = 0 by omega]
    omega
  have h18 : C (419904 * k + 173866) = 209952 * k + 86933 := by
    unfold C
    simp [show (419904 * k + 173866) % 2 = 0 by omega]
    omega
  have h19 : C (209952 * k + 86933) = 629856 * k + 260800 := by
    unfold C
    simp [show (209952 * k + 86933) % 2 ≠ 0 by omega]
    omega
  have h20 : C (629856 * k + 260800) = 314928 * k + 130400 := by
    unfold C
    simp [show (629856 * k + 260800) % 2 = 0 by omega]
    omega
  have h21 : C (314928 * k + 130400) = 157464 * k + 65200 := by
    unfold C
    simp [show (314928 * k + 130400) % 2 = 0 by omega]
    omega
  have h22 : C (157464 * k + 65200) = 78732 * k + 32600 := by
    unfold C
    simp [show (157464 * k + 65200) % 2 = 0 by omega]
    omega
  have h23 : C (78732 * k + 32600) = 39366 * k + 16300 := by
    unfold C
    simp [show (78732 * k + 32600) % 2 = 0 by omega]
    omega
  have h24 : C (39366 * k + 16300) = 19683 * k + 8150 := by
    unfold C
    simp [show (39366 * k + 16300) % 2 = 0 by omega]
    omega
  have hIter : iterate (32768 * k + 13567) 24 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (32768 * k + 13567)))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24]
  · omega

theorem descent_mod32768_13695 : ∀ k : Nat, iterate (32768 * k + 13695) 24 = 19683 * k + 8227 ∧ 19683 * k + 8227 < 32768 * k + 13695 := by
  intro k
  have h1 : C (32768 * k + 13695) = 98304 * k + 41086 := by
    unfold C
    simp [show (32768 * k + 13695) % 2 ≠ 0 by omega]
    omega
  have h2 : C (98304 * k + 41086) = 49152 * k + 20543 := by
    unfold C
    simp [show (98304 * k + 41086) % 2 = 0 by omega]
    omega
  have h3 : C (49152 * k + 20543) = 147456 * k + 61630 := by
    unfold C
    simp [show (49152 * k + 20543) % 2 ≠ 0 by omega]
    omega
  have h4 : C (147456 * k + 61630) = 73728 * k + 30815 := by
    unfold C
    simp [show (147456 * k + 61630) % 2 = 0 by omega]
    omega
  have h5 : C (73728 * k + 30815) = 221184 * k + 92446 := by
    unfold C
    simp [show (73728 * k + 30815) % 2 ≠ 0 by omega]
    omega
  have h6 : C (221184 * k + 92446) = 110592 * k + 46223 := by
    unfold C
    simp [show (221184 * k + 92446) % 2 = 0 by omega]
    omega
  have h7 : C (110592 * k + 46223) = 331776 * k + 138670 := by
    unfold C
    simp [show (110592 * k + 46223) % 2 ≠ 0 by omega]
    omega
  have h8 : C (331776 * k + 138670) = 165888 * k + 69335 := by
    unfold C
    simp [show (331776 * k + 138670) % 2 = 0 by omega]
    omega
  have h9 : C (165888 * k + 69335) = 497664 * k + 208006 := by
    unfold C
    simp [show (165888 * k + 69335) % 2 ≠ 0 by omega]
    omega
  have h10 : C (497664 * k + 208006) = 248832 * k + 104003 := by
    unfold C
    simp [show (497664 * k + 208006) % 2 = 0 by omega]
    omega
  have h11 : C (248832 * k + 104003) = 746496 * k + 312010 := by
    unfold C
    simp [show (248832 * k + 104003) % 2 ≠ 0 by omega]
    omega
  have h12 : C (746496 * k + 312010) = 373248 * k + 156005 := by
    unfold C
    simp [show (746496 * k + 312010) % 2 = 0 by omega]
    omega
  have h13 : C (373248 * k + 156005) = 1119744 * k + 468016 := by
    unfold C
    simp [show (373248 * k + 156005) % 2 ≠ 0 by omega]
    omega
  have h14 : C (1119744 * k + 468016) = 559872 * k + 234008 := by
    unfold C
    simp [show (1119744 * k + 468016) % 2 = 0 by omega]
    omega
  have h15 : C (559872 * k + 234008) = 279936 * k + 117004 := by
    unfold C
    simp [show (559872 * k + 234008) % 2 = 0 by omega]
    omega
  have h16 : C (279936 * k + 117004) = 139968 * k + 58502 := by
    unfold C
    simp [show (279936 * k + 117004) % 2 = 0 by omega]
    omega
  have h17 : C (139968 * k + 58502) = 69984 * k + 29251 := by
    unfold C
    simp [show (139968 * k + 58502) % 2 = 0 by omega]
    omega
  have h18 : C (69984 * k + 29251) = 209952 * k + 87754 := by
    unfold C
    simp [show (69984 * k + 29251) % 2 ≠ 0 by omega]
    omega
  have h19 : C (209952 * k + 87754) = 104976 * k + 43877 := by
    unfold C
    simp [show (209952 * k + 87754) % 2 = 0 by omega]
    omega
  have h20 : C (104976 * k + 43877) = 314928 * k + 131632 := by
    unfold C
    simp [show (104976 * k + 43877) % 2 ≠ 0 by omega]
    omega
  have h21 : C (314928 * k + 131632) = 157464 * k + 65816 := by
    unfold C
    simp [show (314928 * k + 131632) % 2 = 0 by omega]
    omega
  have h22 : C (157464 * k + 65816) = 78732 * k + 32908 := by
    unfold C
    simp [show (157464 * k + 65816) % 2 = 0 by omega]
    omega
  have h23 : C (78732 * k + 32908) = 39366 * k + 16454 := by
    unfold C
    simp [show (78732 * k + 32908) % 2 = 0 by omega]
    omega
  have h24 : C (39366 * k + 16454) = 19683 * k + 8227 := by
    unfold C
    simp [show (39366 * k + 16454) % 2 = 0 by omega]
    omega
  have hIter : iterate (32768 * k + 13695) 24 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (32768 * k + 13695)))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24]
  · omega

theorem descent_mod32768_13851 : ∀ k : Nat, iterate (32768 * k + 13851) 24 = 19683 * k + 8321 ∧ 19683 * k + 8321 < 32768 * k + 13851 := by
  intro k
  have h1 : C (32768 * k + 13851) = 98304 * k + 41554 := by
    unfold C
    simp [show (32768 * k + 13851) % 2 ≠ 0 by omega]
    omega
  have h2 : C (98304 * k + 41554) = 49152 * k + 20777 := by
    unfold C
    simp [show (98304 * k + 41554) % 2 = 0 by omega]
    omega
  have h3 : C (49152 * k + 20777) = 147456 * k + 62332 := by
    unfold C
    simp [show (49152 * k + 20777) % 2 ≠ 0 by omega]
    omega
  have h4 : C (147456 * k + 62332) = 73728 * k + 31166 := by
    unfold C
    simp [show (147456 * k + 62332) % 2 = 0 by omega]
    omega
  have h5 : C (73728 * k + 31166) = 36864 * k + 15583 := by
    unfold C
    simp [show (73728 * k + 31166) % 2 = 0 by omega]
    omega
  have h6 : C (36864 * k + 15583) = 110592 * k + 46750 := by
    unfold C
    simp [show (36864 * k + 15583) % 2 ≠ 0 by omega]
    omega
  have h7 : C (110592 * k + 46750) = 55296 * k + 23375 := by
    unfold C
    simp [show (110592 * k + 46750) % 2 = 0 by omega]
    omega
  have h8 : C (55296 * k + 23375) = 165888 * k + 70126 := by
    unfold C
    simp [show (55296 * k + 23375) % 2 ≠ 0 by omega]
    omega
  have h9 : C (165888 * k + 70126) = 82944 * k + 35063 := by
    unfold C
    simp [show (165888 * k + 70126) % 2 = 0 by omega]
    omega
  have h10 : C (82944 * k + 35063) = 248832 * k + 105190 := by
    unfold C
    simp [show (82944 * k + 35063) % 2 ≠ 0 by omega]
    omega
  have h11 : C (248832 * k + 105190) = 124416 * k + 52595 := by
    unfold C
    simp [show (248832 * k + 105190) % 2 = 0 by omega]
    omega
  have h12 : C (124416 * k + 52595) = 373248 * k + 157786 := by
    unfold C
    simp [show (124416 * k + 52595) % 2 ≠ 0 by omega]
    omega
  have h13 : C (373248 * k + 157786) = 186624 * k + 78893 := by
    unfold C
    simp [show (373248 * k + 157786) % 2 = 0 by omega]
    omega
  have h14 : C (186624 * k + 78893) = 559872 * k + 236680 := by
    unfold C
    simp [show (186624 * k + 78893) % 2 ≠ 0 by omega]
    omega
  have h15 : C (559872 * k + 236680) = 279936 * k + 118340 := by
    unfold C
    simp [show (559872 * k + 236680) % 2 = 0 by omega]
    omega
  have h16 : C (279936 * k + 118340) = 139968 * k + 59170 := by
    unfold C
    simp [show (279936 * k + 118340) % 2 = 0 by omega]
    omega
  have h17 : C (139968 * k + 59170) = 69984 * k + 29585 := by
    unfold C
    simp [show (139968 * k + 59170) % 2 = 0 by omega]
    omega
  have h18 : C (69984 * k + 29585) = 209952 * k + 88756 := by
    unfold C
    simp [show (69984 * k + 29585) % 2 ≠ 0 by omega]
    omega
  have h19 : C (209952 * k + 88756) = 104976 * k + 44378 := by
    unfold C
    simp [show (209952 * k + 88756) % 2 = 0 by omega]
    omega
  have h20 : C (104976 * k + 44378) = 52488 * k + 22189 := by
    unfold C
    simp [show (104976 * k + 44378) % 2 = 0 by omega]
    omega
  have h21 : C (52488 * k + 22189) = 157464 * k + 66568 := by
    unfold C
    simp [show (52488 * k + 22189) % 2 ≠ 0 by omega]
    omega
  have h22 : C (157464 * k + 66568) = 78732 * k + 33284 := by
    unfold C
    simp [show (157464 * k + 66568) % 2 = 0 by omega]
    omega
  have h23 : C (78732 * k + 33284) = 39366 * k + 16642 := by
    unfold C
    simp [show (78732 * k + 33284) % 2 = 0 by omega]
    omega
  have h24 : C (39366 * k + 16642) = 19683 * k + 8321 := by
    unfold C
    simp [show (39366 * k + 16642) % 2 = 0 by omega]
    omega
  have hIter : iterate (32768 * k + 13851) 24 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (32768 * k + 13851)))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24]
  · omega

theorem descent_mod32768_14031 : ∀ k : Nat, iterate (32768 * k + 14031) 24 = 19683 * k + 8429 ∧ 19683 * k + 8429 < 32768 * k + 14031 := by
  intro k
  have h1 : C (32768 * k + 14031) = 98304 * k + 42094 := by
    unfold C
    simp [show (32768 * k + 14031) % 2 ≠ 0 by omega]
    omega
  have h2 : C (98304 * k + 42094) = 49152 * k + 21047 := by
    unfold C
    simp [show (98304 * k + 42094) % 2 = 0 by omega]
    omega
  have h3 : C (49152 * k + 21047) = 147456 * k + 63142 := by
    unfold C
    simp [show (49152 * k + 21047) % 2 ≠ 0 by omega]
    omega
  have h4 : C (147456 * k + 63142) = 73728 * k + 31571 := by
    unfold C
    simp [show (147456 * k + 63142) % 2 = 0 by omega]
    omega
  have h5 : C (73728 * k + 31571) = 221184 * k + 94714 := by
    unfold C
    simp [show (73728 * k + 31571) % 2 ≠ 0 by omega]
    omega
  have h6 : C (221184 * k + 94714) = 110592 * k + 47357 := by
    unfold C
    simp [show (221184 * k + 94714) % 2 = 0 by omega]
    omega
  have h7 : C (110592 * k + 47357) = 331776 * k + 142072 := by
    unfold C
    simp [show (110592 * k + 47357) % 2 ≠ 0 by omega]
    omega
  have h8 : C (331776 * k + 142072) = 165888 * k + 71036 := by
    unfold C
    simp [show (331776 * k + 142072) % 2 = 0 by omega]
    omega
  have h9 : C (165888 * k + 71036) = 82944 * k + 35518 := by
    unfold C
    simp [show (165888 * k + 71036) % 2 = 0 by omega]
    omega
  have h10 : C (82944 * k + 35518) = 41472 * k + 17759 := by
    unfold C
    simp [show (82944 * k + 35518) % 2 = 0 by omega]
    omega
  have h11 : C (41472 * k + 17759) = 124416 * k + 53278 := by
    unfold C
    simp [show (41472 * k + 17759) % 2 ≠ 0 by omega]
    omega
  have h12 : C (124416 * k + 53278) = 62208 * k + 26639 := by
    unfold C
    simp [show (124416 * k + 53278) % 2 = 0 by omega]
    omega
  have h13 : C (62208 * k + 26639) = 186624 * k + 79918 := by
    unfold C
    simp [show (62208 * k + 26639) % 2 ≠ 0 by omega]
    omega
  have h14 : C (186624 * k + 79918) = 93312 * k + 39959 := by
    unfold C
    simp [show (186624 * k + 79918) % 2 = 0 by omega]
    omega
  have h15 : C (93312 * k + 39959) = 279936 * k + 119878 := by
    unfold C
    simp [show (93312 * k + 39959) % 2 ≠ 0 by omega]
    omega
  have h16 : C (279936 * k + 119878) = 139968 * k + 59939 := by
    unfold C
    simp [show (279936 * k + 119878) % 2 = 0 by omega]
    omega
  have h17 : C (139968 * k + 59939) = 419904 * k + 179818 := by
    unfold C
    simp [show (139968 * k + 59939) % 2 ≠ 0 by omega]
    omega
  have h18 : C (419904 * k + 179818) = 209952 * k + 89909 := by
    unfold C
    simp [show (419904 * k + 179818) % 2 = 0 by omega]
    omega
  have h19 : C (209952 * k + 89909) = 629856 * k + 269728 := by
    unfold C
    simp [show (209952 * k + 89909) % 2 ≠ 0 by omega]
    omega
  have h20 : C (629856 * k + 269728) = 314928 * k + 134864 := by
    unfold C
    simp [show (629856 * k + 269728) % 2 = 0 by omega]
    omega
  have h21 : C (314928 * k + 134864) = 157464 * k + 67432 := by
    unfold C
    simp [show (314928 * k + 134864) % 2 = 0 by omega]
    omega
  have h22 : C (157464 * k + 67432) = 78732 * k + 33716 := by
    unfold C
    simp [show (157464 * k + 67432) % 2 = 0 by omega]
    omega
  have h23 : C (78732 * k + 33716) = 39366 * k + 16858 := by
    unfold C
    simp [show (78732 * k + 33716) % 2 = 0 by omega]
    omega
  have h24 : C (39366 * k + 16858) = 19683 * k + 8429 := by
    unfold C
    simp [show (39366 * k + 16858) % 2 = 0 by omega]
    omega
  have hIter : iterate (32768 * k + 14031) 24 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (32768 * k + 14031)))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24]
  · omega

theorem descent_mod32768_14271 : ∀ k : Nat, iterate (32768 * k + 14271) 24 = 19683 * k + 8573 ∧ 19683 * k + 8573 < 32768 * k + 14271 := by
  intro k
  have h1 : C (32768 * k + 14271) = 98304 * k + 42814 := by
    unfold C
    simp [show (32768 * k + 14271) % 2 ≠ 0 by omega]
    omega
  have h2 : C (98304 * k + 42814) = 49152 * k + 21407 := by
    unfold C
    simp [show (98304 * k + 42814) % 2 = 0 by omega]
    omega
  have h3 : C (49152 * k + 21407) = 147456 * k + 64222 := by
    unfold C
    simp [show (49152 * k + 21407) % 2 ≠ 0 by omega]
    omega
  have h4 : C (147456 * k + 64222) = 73728 * k + 32111 := by
    unfold C
    simp [show (147456 * k + 64222) % 2 = 0 by omega]
    omega
  have h5 : C (73728 * k + 32111) = 221184 * k + 96334 := by
    unfold C
    simp [show (73728 * k + 32111) % 2 ≠ 0 by omega]
    omega
  have h6 : C (221184 * k + 96334) = 110592 * k + 48167 := by
    unfold C
    simp [show (221184 * k + 96334) % 2 = 0 by omega]
    omega
  have h7 : C (110592 * k + 48167) = 331776 * k + 144502 := by
    unfold C
    simp [show (110592 * k + 48167) % 2 ≠ 0 by omega]
    omega
  have h8 : C (331776 * k + 144502) = 165888 * k + 72251 := by
    unfold C
    simp [show (331776 * k + 144502) % 2 = 0 by omega]
    omega
  have h9 : C (165888 * k + 72251) = 497664 * k + 216754 := by
    unfold C
    simp [show (165888 * k + 72251) % 2 ≠ 0 by omega]
    omega
  have h10 : C (497664 * k + 216754) = 248832 * k + 108377 := by
    unfold C
    simp [show (497664 * k + 216754) % 2 = 0 by omega]
    omega
  have h11 : C (248832 * k + 108377) = 746496 * k + 325132 := by
    unfold C
    simp [show (248832 * k + 108377) % 2 ≠ 0 by omega]
    omega
  have h12 : C (746496 * k + 325132) = 373248 * k + 162566 := by
    unfold C
    simp [show (746496 * k + 325132) % 2 = 0 by omega]
    omega
  have h13 : C (373248 * k + 162566) = 186624 * k + 81283 := by
    unfold C
    simp [show (373248 * k + 162566) % 2 = 0 by omega]
    omega
  have h14 : C (186624 * k + 81283) = 559872 * k + 243850 := by
    unfold C
    simp [show (186624 * k + 81283) % 2 ≠ 0 by omega]
    omega
  have h15 : C (559872 * k + 243850) = 279936 * k + 121925 := by
    unfold C
    simp [show (559872 * k + 243850) % 2 = 0 by omega]
    omega
  have h16 : C (279936 * k + 121925) = 839808 * k + 365776 := by
    unfold C
    simp [show (279936 * k + 121925) % 2 ≠ 0 by omega]
    omega
  have h17 : C (839808 * k + 365776) = 419904 * k + 182888 := by
    unfold C
    simp [show (839808 * k + 365776) % 2 = 0 by omega]
    omega
  have h18 : C (419904 * k + 182888) = 209952 * k + 91444 := by
    unfold C
    simp [show (419904 * k + 182888) % 2 = 0 by omega]
    omega
  have h19 : C (209952 * k + 91444) = 104976 * k + 45722 := by
    unfold C
    simp [show (209952 * k + 91444) % 2 = 0 by omega]
    omega
  have h20 : C (104976 * k + 45722) = 52488 * k + 22861 := by
    unfold C
    simp [show (104976 * k + 45722) % 2 = 0 by omega]
    omega
  have h21 : C (52488 * k + 22861) = 157464 * k + 68584 := by
    unfold C
    simp [show (52488 * k + 22861) % 2 ≠ 0 by omega]
    omega
  have h22 : C (157464 * k + 68584) = 78732 * k + 34292 := by
    unfold C
    simp [show (157464 * k + 68584) % 2 = 0 by omega]
    omega
  have h23 : C (78732 * k + 34292) = 39366 * k + 17146 := by
    unfold C
    simp [show (78732 * k + 34292) % 2 = 0 by omega]
    omega
  have h24 : C (39366 * k + 17146) = 19683 * k + 8573 := by
    unfold C
    simp [show (39366 * k + 17146) % 2 = 0 by omega]
    omega
  have hIter : iterate (32768 * k + 14271) 24 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (32768 * k + 14271)))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24]
  · omega

#print axioms descent_mod32768_12967
#print axioms descent_mod32768_13007
#print axioms descent_mod32768_13087
#print axioms descent_mod32768_13567
#print axioms descent_mod32768_13695
#print axioms descent_mod32768_13851
#print axioms descent_mod32768_14031
#print axioms descent_mod32768_14271

end CollatzM15ShardJ
