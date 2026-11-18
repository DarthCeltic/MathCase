import Mathlib.Data.Nat.Prime.Basic

namespace CollatzM16ShardH

def C (n : Nat) : Nat := if n % 2 = 0 then n / 2 else 3 * n + 1

def iterate (n t : Nat) : Nat := Nat.rec n (fun _ previous => C previous) t

theorem descent_mod65536_19367 : ∀ k : Nat,
    iterate (65536 * k + 19367) 26 = 59049 * k + 17452 ∧
      59049 * k + 17452 < 65536 * k + 19367 := by
  intro k
  have h1 : C (65536 * k + 19367) = 196608 * k + 58102 := by
    unfold C
    simp [show (65536 * k + 19367) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 58102) = 98304 * k + 29051 := by
    unfold C
    simp [show (196608 * k + 58102) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 29051) = 294912 * k + 87154 := by
    unfold C
    simp [show (98304 * k + 29051) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 87154) = 147456 * k + 43577 := by
    unfold C
    simp [show (294912 * k + 87154) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 43577) = 442368 * k + 130732 := by
    unfold C
    simp [show (147456 * k + 43577) % 2 ≠ 0 by omega]
    omega
  have h6 : C (442368 * k + 130732) = 221184 * k + 65366 := by
    unfold C
    simp [show (442368 * k + 130732) % 2 = 0 by omega]
    omega
  have h7 : C (221184 * k + 65366) = 110592 * k + 32683 := by
    unfold C
    simp [show (221184 * k + 65366) % 2 = 0 by omega]
    omega
  have h8 : C (110592 * k + 32683) = 331776 * k + 98050 := by
    unfold C
    simp [show (110592 * k + 32683) % 2 ≠ 0 by omega]
    omega
  have h9 : C (331776 * k + 98050) = 165888 * k + 49025 := by
    unfold C
    simp [show (331776 * k + 98050) % 2 = 0 by omega]
    omega
  have h10 : C (165888 * k + 49025) = 497664 * k + 147076 := by
    unfold C
    simp [show (165888 * k + 49025) % 2 ≠ 0 by omega]
    omega
  have h11 : C (497664 * k + 147076) = 248832 * k + 73538 := by
    unfold C
    simp [show (497664 * k + 147076) % 2 = 0 by omega]
    omega
  have h12 : C (248832 * k + 73538) = 124416 * k + 36769 := by
    unfold C
    simp [show (248832 * k + 73538) % 2 = 0 by omega]
    omega
  have h13 : C (124416 * k + 36769) = 373248 * k + 110308 := by
    unfold C
    simp [show (124416 * k + 36769) % 2 ≠ 0 by omega]
    omega
  have h14 : C (373248 * k + 110308) = 186624 * k + 55154 := by
    unfold C
    simp [show (373248 * k + 110308) % 2 = 0 by omega]
    omega
  have h15 : C (186624 * k + 55154) = 93312 * k + 27577 := by
    unfold C
    simp [show (186624 * k + 55154) % 2 = 0 by omega]
    omega
  have h16 : C (93312 * k + 27577) = 279936 * k + 82732 := by
    unfold C
    simp [show (93312 * k + 27577) % 2 ≠ 0 by omega]
    omega
  have h17 : C (279936 * k + 82732) = 139968 * k + 41366 := by
    unfold C
    simp [show (279936 * k + 82732) % 2 = 0 by omega]
    omega
  have h18 : C (139968 * k + 41366) = 69984 * k + 20683 := by
    unfold C
    simp [show (139968 * k + 41366) % 2 = 0 by omega]
    omega
  have h19 : C (69984 * k + 20683) = 209952 * k + 62050 := by
    unfold C
    simp [show (69984 * k + 20683) % 2 ≠ 0 by omega]
    omega
  have h20 : C (209952 * k + 62050) = 104976 * k + 31025 := by
    unfold C
    simp [show (209952 * k + 62050) % 2 = 0 by omega]
    omega
  have h21 : C (104976 * k + 31025) = 314928 * k + 93076 := by
    unfold C
    simp [show (104976 * k + 31025) % 2 ≠ 0 by omega]
    omega
  have h22 : C (314928 * k + 93076) = 157464 * k + 46538 := by
    unfold C
    simp [show (314928 * k + 93076) % 2 = 0 by omega]
    omega
  have h23 : C (157464 * k + 46538) = 78732 * k + 23269 := by
    unfold C
    simp [show (157464 * k + 46538) % 2 = 0 by omega]
    omega
  have h24 : C (78732 * k + 23269) = 236196 * k + 69808 := by
    unfold C
    simp [show (78732 * k + 23269) % 2 ≠ 0 by omega]
    omega
  have h25 : C (236196 * k + 69808) = 118098 * k + 34904 := by
    unfold C
    simp [show (236196 * k + 69808) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 34904) = 59049 * k + 17452 := by
    unfold C
    simp [show (118098 * k + 34904) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 19367) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 19367)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_19547 : ∀ k : Nat,
    iterate (65536 * k + 19547) 26 = 59049 * k + 17614 ∧
      59049 * k + 17614 < 65536 * k + 19547 := by
  intro k
  have h1 : C (65536 * k + 19547) = 196608 * k + 58642 := by
    unfold C
    simp [show (65536 * k + 19547) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 58642) = 98304 * k + 29321 := by
    unfold C
    simp [show (196608 * k + 58642) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 29321) = 294912 * k + 87964 := by
    unfold C
    simp [show (98304 * k + 29321) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 87964) = 147456 * k + 43982 := by
    unfold C
    simp [show (294912 * k + 87964) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 43982) = 73728 * k + 21991 := by
    unfold C
    simp [show (147456 * k + 43982) % 2 = 0 by omega]
    omega
  have h6 : C (73728 * k + 21991) = 221184 * k + 65974 := by
    unfold C
    simp [show (73728 * k + 21991) % 2 ≠ 0 by omega]
    omega
  have h7 : C (221184 * k + 65974) = 110592 * k + 32987 := by
    unfold C
    simp [show (221184 * k + 65974) % 2 = 0 by omega]
    omega
  have h8 : C (110592 * k + 32987) = 331776 * k + 98962 := by
    unfold C
    simp [show (110592 * k + 32987) % 2 ≠ 0 by omega]
    omega
  have h9 : C (331776 * k + 98962) = 165888 * k + 49481 := by
    unfold C
    simp [show (331776 * k + 98962) % 2 = 0 by omega]
    omega
  have h10 : C (165888 * k + 49481) = 497664 * k + 148444 := by
    unfold C
    simp [show (165888 * k + 49481) % 2 ≠ 0 by omega]
    omega
  have h11 : C (497664 * k + 148444) = 248832 * k + 74222 := by
    unfold C
    simp [show (497664 * k + 148444) % 2 = 0 by omega]
    omega
  have h12 : C (248832 * k + 74222) = 124416 * k + 37111 := by
    unfold C
    simp [show (248832 * k + 74222) % 2 = 0 by omega]
    omega
  have h13 : C (124416 * k + 37111) = 373248 * k + 111334 := by
    unfold C
    simp [show (124416 * k + 37111) % 2 ≠ 0 by omega]
    omega
  have h14 : C (373248 * k + 111334) = 186624 * k + 55667 := by
    unfold C
    simp [show (373248 * k + 111334) % 2 = 0 by omega]
    omega
  have h15 : C (186624 * k + 55667) = 559872 * k + 167002 := by
    unfold C
    simp [show (186624 * k + 55667) % 2 ≠ 0 by omega]
    omega
  have h16 : C (559872 * k + 167002) = 279936 * k + 83501 := by
    unfold C
    simp [show (559872 * k + 167002) % 2 = 0 by omega]
    omega
  have h17 : C (279936 * k + 83501) = 839808 * k + 250504 := by
    unfold C
    simp [show (279936 * k + 83501) % 2 ≠ 0 by omega]
    omega
  have h18 : C (839808 * k + 250504) = 419904 * k + 125252 := by
    unfold C
    simp [show (839808 * k + 250504) % 2 = 0 by omega]
    omega
  have h19 : C (419904 * k + 125252) = 209952 * k + 62626 := by
    unfold C
    simp [show (419904 * k + 125252) % 2 = 0 by omega]
    omega
  have h20 : C (209952 * k + 62626) = 104976 * k + 31313 := by
    unfold C
    simp [show (209952 * k + 62626) % 2 = 0 by omega]
    omega
  have h21 : C (104976 * k + 31313) = 314928 * k + 93940 := by
    unfold C
    simp [show (104976 * k + 31313) % 2 ≠ 0 by omega]
    omega
  have h22 : C (314928 * k + 93940) = 157464 * k + 46970 := by
    unfold C
    simp [show (314928 * k + 93940) % 2 = 0 by omega]
    omega
  have h23 : C (157464 * k + 46970) = 78732 * k + 23485 := by
    unfold C
    simp [show (157464 * k + 46970) % 2 = 0 by omega]
    omega
  have h24 : C (78732 * k + 23485) = 236196 * k + 70456 := by
    unfold C
    simp [show (78732 * k + 23485) % 2 ≠ 0 by omega]
    omega
  have h25 : C (236196 * k + 70456) = 118098 * k + 35228 := by
    unfold C
    simp [show (236196 * k + 70456) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 35228) = 59049 * k + 17614 := by
    unfold C
    simp [show (118098 * k + 35228) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 19547) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 19547)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_19687 : ∀ k : Nat,
    iterate (65536 * k + 19687) 26 = 59049 * k + 17740 ∧
      59049 * k + 17740 < 65536 * k + 19687 := by
  intro k
  have h1 : C (65536 * k + 19687) = 196608 * k + 59062 := by
    unfold C
    simp [show (65536 * k + 19687) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 59062) = 98304 * k + 29531 := by
    unfold C
    simp [show (196608 * k + 59062) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 29531) = 294912 * k + 88594 := by
    unfold C
    simp [show (98304 * k + 29531) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 88594) = 147456 * k + 44297 := by
    unfold C
    simp [show (294912 * k + 88594) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 44297) = 442368 * k + 132892 := by
    unfold C
    simp [show (147456 * k + 44297) % 2 ≠ 0 by omega]
    omega
  have h6 : C (442368 * k + 132892) = 221184 * k + 66446 := by
    unfold C
    simp [show (442368 * k + 132892) % 2 = 0 by omega]
    omega
  have h7 : C (221184 * k + 66446) = 110592 * k + 33223 := by
    unfold C
    simp [show (221184 * k + 66446) % 2 = 0 by omega]
    omega
  have h8 : C (110592 * k + 33223) = 331776 * k + 99670 := by
    unfold C
    simp [show (110592 * k + 33223) % 2 ≠ 0 by omega]
    omega
  have h9 : C (331776 * k + 99670) = 165888 * k + 49835 := by
    unfold C
    simp [show (331776 * k + 99670) % 2 = 0 by omega]
    omega
  have h10 : C (165888 * k + 49835) = 497664 * k + 149506 := by
    unfold C
    simp [show (165888 * k + 49835) % 2 ≠ 0 by omega]
    omega
  have h11 : C (497664 * k + 149506) = 248832 * k + 74753 := by
    unfold C
    simp [show (497664 * k + 149506) % 2 = 0 by omega]
    omega
  have h12 : C (248832 * k + 74753) = 746496 * k + 224260 := by
    unfold C
    simp [show (248832 * k + 74753) % 2 ≠ 0 by omega]
    omega
  have h13 : C (746496 * k + 224260) = 373248 * k + 112130 := by
    unfold C
    simp [show (746496 * k + 224260) % 2 = 0 by omega]
    omega
  have h14 : C (373248 * k + 112130) = 186624 * k + 56065 := by
    unfold C
    simp [show (373248 * k + 112130) % 2 = 0 by omega]
    omega
  have h15 : C (186624 * k + 56065) = 559872 * k + 168196 := by
    unfold C
    simp [show (186624 * k + 56065) % 2 ≠ 0 by omega]
    omega
  have h16 : C (559872 * k + 168196) = 279936 * k + 84098 := by
    unfold C
    simp [show (559872 * k + 168196) % 2 = 0 by omega]
    omega
  have h17 : C (279936 * k + 84098) = 139968 * k + 42049 := by
    unfold C
    simp [show (279936 * k + 84098) % 2 = 0 by omega]
    omega
  have h18 : C (139968 * k + 42049) = 419904 * k + 126148 := by
    unfold C
    simp [show (139968 * k + 42049) % 2 ≠ 0 by omega]
    omega
  have h19 : C (419904 * k + 126148) = 209952 * k + 63074 := by
    unfold C
    simp [show (419904 * k + 126148) % 2 = 0 by omega]
    omega
  have h20 : C (209952 * k + 63074) = 104976 * k + 31537 := by
    unfold C
    simp [show (209952 * k + 63074) % 2 = 0 by omega]
    omega
  have h21 : C (104976 * k + 31537) = 314928 * k + 94612 := by
    unfold C
    simp [show (104976 * k + 31537) % 2 ≠ 0 by omega]
    omega
  have h22 : C (314928 * k + 94612) = 157464 * k + 47306 := by
    unfold C
    simp [show (314928 * k + 94612) % 2 = 0 by omega]
    omega
  have h23 : C (157464 * k + 47306) = 78732 * k + 23653 := by
    unfold C
    simp [show (157464 * k + 47306) % 2 = 0 by omega]
    omega
  have h24 : C (78732 * k + 23653) = 236196 * k + 70960 := by
    unfold C
    simp [show (78732 * k + 23653) % 2 ≠ 0 by omega]
    omega
  have h25 : C (236196 * k + 70960) = 118098 * k + 35480 := by
    unfold C
    simp [show (236196 * k + 70960) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 35480) = 59049 * k + 17740 := by
    unfold C
    simp [show (118098 * k + 35480) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 19687) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 19687)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_19707 : ∀ k : Nat,
    iterate (65536 * k + 19707) 26 = 59049 * k + 17758 ∧
      59049 * k + 17758 < 65536 * k + 19707 := by
  intro k
  have h1 : C (65536 * k + 19707) = 196608 * k + 59122 := by
    unfold C
    simp [show (65536 * k + 19707) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 59122) = 98304 * k + 29561 := by
    unfold C
    simp [show (196608 * k + 59122) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 29561) = 294912 * k + 88684 := by
    unfold C
    simp [show (98304 * k + 29561) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 88684) = 147456 * k + 44342 := by
    unfold C
    simp [show (294912 * k + 88684) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 44342) = 73728 * k + 22171 := by
    unfold C
    simp [show (147456 * k + 44342) % 2 = 0 by omega]
    omega
  have h6 : C (73728 * k + 22171) = 221184 * k + 66514 := by
    unfold C
    simp [show (73728 * k + 22171) % 2 ≠ 0 by omega]
    omega
  have h7 : C (221184 * k + 66514) = 110592 * k + 33257 := by
    unfold C
    simp [show (221184 * k + 66514) % 2 = 0 by omega]
    omega
  have h8 : C (110592 * k + 33257) = 331776 * k + 99772 := by
    unfold C
    simp [show (110592 * k + 33257) % 2 ≠ 0 by omega]
    omega
  have h9 : C (331776 * k + 99772) = 165888 * k + 49886 := by
    unfold C
    simp [show (331776 * k + 99772) % 2 = 0 by omega]
    omega
  have h10 : C (165888 * k + 49886) = 82944 * k + 24943 := by
    unfold C
    simp [show (165888 * k + 49886) % 2 = 0 by omega]
    omega
  have h11 : C (82944 * k + 24943) = 248832 * k + 74830 := by
    unfold C
    simp [show (82944 * k + 24943) % 2 ≠ 0 by omega]
    omega
  have h12 : C (248832 * k + 74830) = 124416 * k + 37415 := by
    unfold C
    simp [show (248832 * k + 74830) % 2 = 0 by omega]
    omega
  have h13 : C (124416 * k + 37415) = 373248 * k + 112246 := by
    unfold C
    simp [show (124416 * k + 37415) % 2 ≠ 0 by omega]
    omega
  have h14 : C (373248 * k + 112246) = 186624 * k + 56123 := by
    unfold C
    simp [show (373248 * k + 112246) % 2 = 0 by omega]
    omega
  have h15 : C (186624 * k + 56123) = 559872 * k + 168370 := by
    unfold C
    simp [show (186624 * k + 56123) % 2 ≠ 0 by omega]
    omega
  have h16 : C (559872 * k + 168370) = 279936 * k + 84185 := by
    unfold C
    simp [show (559872 * k + 168370) % 2 = 0 by omega]
    omega
  have h17 : C (279936 * k + 84185) = 839808 * k + 252556 := by
    unfold C
    simp [show (279936 * k + 84185) % 2 ≠ 0 by omega]
    omega
  have h18 : C (839808 * k + 252556) = 419904 * k + 126278 := by
    unfold C
    simp [show (839808 * k + 252556) % 2 = 0 by omega]
    omega
  have h19 : C (419904 * k + 126278) = 209952 * k + 63139 := by
    unfold C
    simp [show (419904 * k + 126278) % 2 = 0 by omega]
    omega
  have h20 : C (209952 * k + 63139) = 629856 * k + 189418 := by
    unfold C
    simp [show (209952 * k + 63139) % 2 ≠ 0 by omega]
    omega
  have h21 : C (629856 * k + 189418) = 314928 * k + 94709 := by
    unfold C
    simp [show (629856 * k + 189418) % 2 = 0 by omega]
    omega
  have h22 : C (314928 * k + 94709) = 944784 * k + 284128 := by
    unfold C
    simp [show (314928 * k + 94709) % 2 ≠ 0 by omega]
    omega
  have h23 : C (944784 * k + 284128) = 472392 * k + 142064 := by
    unfold C
    simp [show (944784 * k + 284128) % 2 = 0 by omega]
    omega
  have h24 : C (472392 * k + 142064) = 236196 * k + 71032 := by
    unfold C
    simp [show (472392 * k + 142064) % 2 = 0 by omega]
    omega
  have h25 : C (236196 * k + 71032) = 118098 * k + 35516 := by
    unfold C
    simp [show (236196 * k + 71032) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 35516) = 59049 * k + 17758 := by
    unfold C
    simp [show (118098 * k + 35516) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 19707) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 19707)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_20127 : ∀ k : Nat,
    iterate (65536 * k + 20127) 26 = 59049 * k + 18136 ∧
      59049 * k + 18136 < 65536 * k + 20127 := by
  intro k
  have h1 : C (65536 * k + 20127) = 196608 * k + 60382 := by
    unfold C
    simp [show (65536 * k + 20127) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 60382) = 98304 * k + 30191 := by
    unfold C
    simp [show (196608 * k + 60382) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 30191) = 294912 * k + 90574 := by
    unfold C
    simp [show (98304 * k + 30191) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 90574) = 147456 * k + 45287 := by
    unfold C
    simp [show (294912 * k + 90574) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 45287) = 442368 * k + 135862 := by
    unfold C
    simp [show (147456 * k + 45287) % 2 ≠ 0 by omega]
    omega
  have h6 : C (442368 * k + 135862) = 221184 * k + 67931 := by
    unfold C
    simp [show (442368 * k + 135862) % 2 = 0 by omega]
    omega
  have h7 : C (221184 * k + 67931) = 663552 * k + 203794 := by
    unfold C
    simp [show (221184 * k + 67931) % 2 ≠ 0 by omega]
    omega
  have h8 : C (663552 * k + 203794) = 331776 * k + 101897 := by
    unfold C
    simp [show (663552 * k + 203794) % 2 = 0 by omega]
    omega
  have h9 : C (331776 * k + 101897) = 995328 * k + 305692 := by
    unfold C
    simp [show (331776 * k + 101897) % 2 ≠ 0 by omega]
    omega
  have h10 : C (995328 * k + 305692) = 497664 * k + 152846 := by
    unfold C
    simp [show (995328 * k + 305692) % 2 = 0 by omega]
    omega
  have h11 : C (497664 * k + 152846) = 248832 * k + 76423 := by
    unfold C
    simp [show (497664 * k + 152846) % 2 = 0 by omega]
    omega
  have h12 : C (248832 * k + 76423) = 746496 * k + 229270 := by
    unfold C
    simp [show (248832 * k + 76423) % 2 ≠ 0 by omega]
    omega
  have h13 : C (746496 * k + 229270) = 373248 * k + 114635 := by
    unfold C
    simp [show (746496 * k + 229270) % 2 = 0 by omega]
    omega
  have h14 : C (373248 * k + 114635) = 1119744 * k + 343906 := by
    unfold C
    simp [show (373248 * k + 114635) % 2 ≠ 0 by omega]
    omega
  have h15 : C (1119744 * k + 343906) = 559872 * k + 171953 := by
    unfold C
    simp [show (1119744 * k + 343906) % 2 = 0 by omega]
    omega
  have h16 : C (559872 * k + 171953) = 1679616 * k + 515860 := by
    unfold C
    simp [show (559872 * k + 171953) % 2 ≠ 0 by omega]
    omega
  have h17 : C (1679616 * k + 515860) = 839808 * k + 257930 := by
    unfold C
    simp [show (1679616 * k + 515860) % 2 = 0 by omega]
    omega
  have h18 : C (839808 * k + 257930) = 419904 * k + 128965 := by
    unfold C
    simp [show (839808 * k + 257930) % 2 = 0 by omega]
    omega
  have h19 : C (419904 * k + 128965) = 1259712 * k + 386896 := by
    unfold C
    simp [show (419904 * k + 128965) % 2 ≠ 0 by omega]
    omega
  have h20 : C (1259712 * k + 386896) = 629856 * k + 193448 := by
    unfold C
    simp [show (1259712 * k + 386896) % 2 = 0 by omega]
    omega
  have h21 : C (629856 * k + 193448) = 314928 * k + 96724 := by
    unfold C
    simp [show (629856 * k + 193448) % 2 = 0 by omega]
    omega
  have h22 : C (314928 * k + 96724) = 157464 * k + 48362 := by
    unfold C
    simp [show (314928 * k + 96724) % 2 = 0 by omega]
    omega
  have h23 : C (157464 * k + 48362) = 78732 * k + 24181 := by
    unfold C
    simp [show (157464 * k + 48362) % 2 = 0 by omega]
    omega
  have h24 : C (78732 * k + 24181) = 236196 * k + 72544 := by
    unfold C
    simp [show (78732 * k + 24181) % 2 ≠ 0 by omega]
    omega
  have h25 : C (236196 * k + 72544) = 118098 * k + 36272 := by
    unfold C
    simp [show (236196 * k + 72544) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 36272) = 59049 * k + 18136 := by
    unfold C
    simp [show (118098 * k + 36272) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 20127) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 20127)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_20207 : ∀ k : Nat,
    iterate (65536 * k + 20207) 26 = 59049 * k + 18208 ∧
      59049 * k + 18208 < 65536 * k + 20207 := by
  intro k
  have h1 : C (65536 * k + 20207) = 196608 * k + 60622 := by
    unfold C
    simp [show (65536 * k + 20207) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 60622) = 98304 * k + 30311 := by
    unfold C
    simp [show (196608 * k + 60622) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 30311) = 294912 * k + 90934 := by
    unfold C
    simp [show (98304 * k + 30311) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 90934) = 147456 * k + 45467 := by
    unfold C
    simp [show (294912 * k + 90934) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 45467) = 442368 * k + 136402 := by
    unfold C
    simp [show (147456 * k + 45467) % 2 ≠ 0 by omega]
    omega
  have h6 : C (442368 * k + 136402) = 221184 * k + 68201 := by
    unfold C
    simp [show (442368 * k + 136402) % 2 = 0 by omega]
    omega
  have h7 : C (221184 * k + 68201) = 663552 * k + 204604 := by
    unfold C
    simp [show (221184 * k + 68201) % 2 ≠ 0 by omega]
    omega
  have h8 : C (663552 * k + 204604) = 331776 * k + 102302 := by
    unfold C
    simp [show (663552 * k + 204604) % 2 = 0 by omega]
    omega
  have h9 : C (331776 * k + 102302) = 165888 * k + 51151 := by
    unfold C
    simp [show (331776 * k + 102302) % 2 = 0 by omega]
    omega
  have h10 : C (165888 * k + 51151) = 497664 * k + 153454 := by
    unfold C
    simp [show (165888 * k + 51151) % 2 ≠ 0 by omega]
    omega
  have h11 : C (497664 * k + 153454) = 248832 * k + 76727 := by
    unfold C
    simp [show (497664 * k + 153454) % 2 = 0 by omega]
    omega
  have h12 : C (248832 * k + 76727) = 746496 * k + 230182 := by
    unfold C
    simp [show (248832 * k + 76727) % 2 ≠ 0 by omega]
    omega
  have h13 : C (746496 * k + 230182) = 373248 * k + 115091 := by
    unfold C
    simp [show (746496 * k + 230182) % 2 = 0 by omega]
    omega
  have h14 : C (373248 * k + 115091) = 1119744 * k + 345274 := by
    unfold C
    simp [show (373248 * k + 115091) % 2 ≠ 0 by omega]
    omega
  have h15 : C (1119744 * k + 345274) = 559872 * k + 172637 := by
    unfold C
    simp [show (1119744 * k + 345274) % 2 = 0 by omega]
    omega
  have h16 : C (559872 * k + 172637) = 1679616 * k + 517912 := by
    unfold C
    simp [show (559872 * k + 172637) % 2 ≠ 0 by omega]
    omega
  have h17 : C (1679616 * k + 517912) = 839808 * k + 258956 := by
    unfold C
    simp [show (1679616 * k + 517912) % 2 = 0 by omega]
    omega
  have h18 : C (839808 * k + 258956) = 419904 * k + 129478 := by
    unfold C
    simp [show (839808 * k + 258956) % 2 = 0 by omega]
    omega
  have h19 : C (419904 * k + 129478) = 209952 * k + 64739 := by
    unfold C
    simp [show (419904 * k + 129478) % 2 = 0 by omega]
    omega
  have h20 : C (209952 * k + 64739) = 629856 * k + 194218 := by
    unfold C
    simp [show (209952 * k + 64739) % 2 ≠ 0 by omega]
    omega
  have h21 : C (629856 * k + 194218) = 314928 * k + 97109 := by
    unfold C
    simp [show (629856 * k + 194218) % 2 = 0 by omega]
    omega
  have h22 : C (314928 * k + 97109) = 944784 * k + 291328 := by
    unfold C
    simp [show (314928 * k + 97109) % 2 ≠ 0 by omega]
    omega
  have h23 : C (944784 * k + 291328) = 472392 * k + 145664 := by
    unfold C
    simp [show (944784 * k + 291328) % 2 = 0 by omega]
    omega
  have h24 : C (472392 * k + 145664) = 236196 * k + 72832 := by
    unfold C
    simp [show (472392 * k + 145664) % 2 = 0 by omega]
    omega
  have h25 : C (236196 * k + 72832) = 118098 * k + 36416 := by
    unfold C
    simp [show (236196 * k + 72832) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 36416) = 59049 * k + 18208 := by
    unfold C
    simp [show (118098 * k + 36416) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 20207) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 20207)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_20511 : ∀ k : Nat,
    iterate (65536 * k + 20511) 26 = 59049 * k + 18482 ∧
      59049 * k + 18482 < 65536 * k + 20511 := by
  intro k
  have h1 : C (65536 * k + 20511) = 196608 * k + 61534 := by
    unfold C
    simp [show (65536 * k + 20511) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 61534) = 98304 * k + 30767 := by
    unfold C
    simp [show (196608 * k + 61534) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 30767) = 294912 * k + 92302 := by
    unfold C
    simp [show (98304 * k + 30767) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 92302) = 147456 * k + 46151 := by
    unfold C
    simp [show (294912 * k + 92302) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 46151) = 442368 * k + 138454 := by
    unfold C
    simp [show (147456 * k + 46151) % 2 ≠ 0 by omega]
    omega
  have h6 : C (442368 * k + 138454) = 221184 * k + 69227 := by
    unfold C
    simp [show (442368 * k + 138454) % 2 = 0 by omega]
    omega
  have h7 : C (221184 * k + 69227) = 663552 * k + 207682 := by
    unfold C
    simp [show (221184 * k + 69227) % 2 ≠ 0 by omega]
    omega
  have h8 : C (663552 * k + 207682) = 331776 * k + 103841 := by
    unfold C
    simp [show (663552 * k + 207682) % 2 = 0 by omega]
    omega
  have h9 : C (331776 * k + 103841) = 995328 * k + 311524 := by
    unfold C
    simp [show (331776 * k + 103841) % 2 ≠ 0 by omega]
    omega
  have h10 : C (995328 * k + 311524) = 497664 * k + 155762 := by
    unfold C
    simp [show (995328 * k + 311524) % 2 = 0 by omega]
    omega
  have h11 : C (497664 * k + 155762) = 248832 * k + 77881 := by
    unfold C
    simp [show (497664 * k + 155762) % 2 = 0 by omega]
    omega
  have h12 : C (248832 * k + 77881) = 746496 * k + 233644 := by
    unfold C
    simp [show (248832 * k + 77881) % 2 ≠ 0 by omega]
    omega
  have h13 : C (746496 * k + 233644) = 373248 * k + 116822 := by
    unfold C
    simp [show (746496 * k + 233644) % 2 = 0 by omega]
    omega
  have h14 : C (373248 * k + 116822) = 186624 * k + 58411 := by
    unfold C
    simp [show (373248 * k + 116822) % 2 = 0 by omega]
    omega
  have h15 : C (186624 * k + 58411) = 559872 * k + 175234 := by
    unfold C
    simp [show (186624 * k + 58411) % 2 ≠ 0 by omega]
    omega
  have h16 : C (559872 * k + 175234) = 279936 * k + 87617 := by
    unfold C
    simp [show (559872 * k + 175234) % 2 = 0 by omega]
    omega
  have h17 : C (279936 * k + 87617) = 839808 * k + 262852 := by
    unfold C
    simp [show (279936 * k + 87617) % 2 ≠ 0 by omega]
    omega
  have h18 : C (839808 * k + 262852) = 419904 * k + 131426 := by
    unfold C
    simp [show (839808 * k + 262852) % 2 = 0 by omega]
    omega
  have h19 : C (419904 * k + 131426) = 209952 * k + 65713 := by
    unfold C
    simp [show (419904 * k + 131426) % 2 = 0 by omega]
    omega
  have h20 : C (209952 * k + 65713) = 629856 * k + 197140 := by
    unfold C
    simp [show (209952 * k + 65713) % 2 ≠ 0 by omega]
    omega
  have h21 : C (629856 * k + 197140) = 314928 * k + 98570 := by
    unfold C
    simp [show (629856 * k + 197140) % 2 = 0 by omega]
    omega
  have h22 : C (314928 * k + 98570) = 157464 * k + 49285 := by
    unfold C
    simp [show (314928 * k + 98570) % 2 = 0 by omega]
    omega
  have h23 : C (157464 * k + 49285) = 472392 * k + 147856 := by
    unfold C
    simp [show (157464 * k + 49285) % 2 ≠ 0 by omega]
    omega
  have h24 : C (472392 * k + 147856) = 236196 * k + 73928 := by
    unfold C
    simp [show (472392 * k + 147856) % 2 = 0 by omega]
    omega
  have h25 : C (236196 * k + 73928) = 118098 * k + 36964 := by
    unfold C
    simp [show (236196 * k + 73928) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 36964) = 59049 * k + 18482 := by
    unfold C
    simp [show (118098 * k + 36964) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 20511) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 20511)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_20591 : ∀ k : Nat,
    iterate (65536 * k + 20591) 26 = 59049 * k + 18554 ∧
      59049 * k + 18554 < 65536 * k + 20591 := by
  intro k
  have h1 : C (65536 * k + 20591) = 196608 * k + 61774 := by
    unfold C
    simp [show (65536 * k + 20591) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 61774) = 98304 * k + 30887 := by
    unfold C
    simp [show (196608 * k + 61774) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 30887) = 294912 * k + 92662 := by
    unfold C
    simp [show (98304 * k + 30887) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 92662) = 147456 * k + 46331 := by
    unfold C
    simp [show (294912 * k + 92662) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 46331) = 442368 * k + 138994 := by
    unfold C
    simp [show (147456 * k + 46331) % 2 ≠ 0 by omega]
    omega
  have h6 : C (442368 * k + 138994) = 221184 * k + 69497 := by
    unfold C
    simp [show (442368 * k + 138994) % 2 = 0 by omega]
    omega
  have h7 : C (221184 * k + 69497) = 663552 * k + 208492 := by
    unfold C
    simp [show (221184 * k + 69497) % 2 ≠ 0 by omega]
    omega
  have h8 : C (663552 * k + 208492) = 331776 * k + 104246 := by
    unfold C
    simp [show (663552 * k + 208492) % 2 = 0 by omega]
    omega
  have h9 : C (331776 * k + 104246) = 165888 * k + 52123 := by
    unfold C
    simp [show (331776 * k + 104246) % 2 = 0 by omega]
    omega
  have h10 : C (165888 * k + 52123) = 497664 * k + 156370 := by
    unfold C
    simp [show (165888 * k + 52123) % 2 ≠ 0 by omega]
    omega
  have h11 : C (497664 * k + 156370) = 248832 * k + 78185 := by
    unfold C
    simp [show (497664 * k + 156370) % 2 = 0 by omega]
    omega
  have h12 : C (248832 * k + 78185) = 746496 * k + 234556 := by
    unfold C
    simp [show (248832 * k + 78185) % 2 ≠ 0 by omega]
    omega
  have h13 : C (746496 * k + 234556) = 373248 * k + 117278 := by
    unfold C
    simp [show (746496 * k + 234556) % 2 = 0 by omega]
    omega
  have h14 : C (373248 * k + 117278) = 186624 * k + 58639 := by
    unfold C
    simp [show (373248 * k + 117278) % 2 = 0 by omega]
    omega
  have h15 : C (186624 * k + 58639) = 559872 * k + 175918 := by
    unfold C
    simp [show (186624 * k + 58639) % 2 ≠ 0 by omega]
    omega
  have h16 : C (559872 * k + 175918) = 279936 * k + 87959 := by
    unfold C
    simp [show (559872 * k + 175918) % 2 = 0 by omega]
    omega
  have h17 : C (279936 * k + 87959) = 839808 * k + 263878 := by
    unfold C
    simp [show (279936 * k + 87959) % 2 ≠ 0 by omega]
    omega
  have h18 : C (839808 * k + 263878) = 419904 * k + 131939 := by
    unfold C
    simp [show (839808 * k + 263878) % 2 = 0 by omega]
    omega
  have h19 : C (419904 * k + 131939) = 1259712 * k + 395818 := by
    unfold C
    simp [show (419904 * k + 131939) % 2 ≠ 0 by omega]
    omega
  have h20 : C (1259712 * k + 395818) = 629856 * k + 197909 := by
    unfold C
    simp [show (1259712 * k + 395818) % 2 = 0 by omega]
    omega
  have h21 : C (629856 * k + 197909) = 1889568 * k + 593728 := by
    unfold C
    simp [show (629856 * k + 197909) % 2 ≠ 0 by omega]
    omega
  have h22 : C (1889568 * k + 593728) = 944784 * k + 296864 := by
    unfold C
    simp [show (1889568 * k + 593728) % 2 = 0 by omega]
    omega
  have h23 : C (944784 * k + 296864) = 472392 * k + 148432 := by
    unfold C
    simp [show (944784 * k + 296864) % 2 = 0 by omega]
    omega
  have h24 : C (472392 * k + 148432) = 236196 * k + 74216 := by
    unfold C
    simp [show (472392 * k + 148432) % 2 = 0 by omega]
    omega
  have h25 : C (236196 * k + 74216) = 118098 * k + 37108 := by
    unfold C
    simp [show (236196 * k + 74216) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 37108) = 59049 * k + 18554 := by
    unfold C
    simp [show (118098 * k + 37108) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 20591) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 20591)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_20687 : ∀ k : Nat,
    iterate (65536 * k + 20687) 26 = 59049 * k + 18641 ∧
      59049 * k + 18641 < 65536 * k + 20687 := by
  intro k
  have h1 : C (65536 * k + 20687) = 196608 * k + 62062 := by
    unfold C
    simp [show (65536 * k + 20687) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 62062) = 98304 * k + 31031 := by
    unfold C
    simp [show (196608 * k + 62062) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 31031) = 294912 * k + 93094 := by
    unfold C
    simp [show (98304 * k + 31031) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 93094) = 147456 * k + 46547 := by
    unfold C
    simp [show (294912 * k + 93094) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 46547) = 442368 * k + 139642 := by
    unfold C
    simp [show (147456 * k + 46547) % 2 ≠ 0 by omega]
    omega
  have h6 : C (442368 * k + 139642) = 221184 * k + 69821 := by
    unfold C
    simp [show (442368 * k + 139642) % 2 = 0 by omega]
    omega
  have h7 : C (221184 * k + 69821) = 663552 * k + 209464 := by
    unfold C
    simp [show (221184 * k + 69821) % 2 ≠ 0 by omega]
    omega
  have h8 : C (663552 * k + 209464) = 331776 * k + 104732 := by
    unfold C
    simp [show (663552 * k + 209464) % 2 = 0 by omega]
    omega
  have h9 : C (331776 * k + 104732) = 165888 * k + 52366 := by
    unfold C
    simp [show (331776 * k + 104732) % 2 = 0 by omega]
    omega
  have h10 : C (165888 * k + 52366) = 82944 * k + 26183 := by
    unfold C
    simp [show (165888 * k + 52366) % 2 = 0 by omega]
    omega
  have h11 : C (82944 * k + 26183) = 248832 * k + 78550 := by
    unfold C
    simp [show (82944 * k + 26183) % 2 ≠ 0 by omega]
    omega
  have h12 : C (248832 * k + 78550) = 124416 * k + 39275 := by
    unfold C
    simp [show (248832 * k + 78550) % 2 = 0 by omega]
    omega
  have h13 : C (124416 * k + 39275) = 373248 * k + 117826 := by
    unfold C
    simp [show (124416 * k + 39275) % 2 ≠ 0 by omega]
    omega
  have h14 : C (373248 * k + 117826) = 186624 * k + 58913 := by
    unfold C
    simp [show (373248 * k + 117826) % 2 = 0 by omega]
    omega
  have h15 : C (186624 * k + 58913) = 559872 * k + 176740 := by
    unfold C
    simp [show (186624 * k + 58913) % 2 ≠ 0 by omega]
    omega
  have h16 : C (559872 * k + 176740) = 279936 * k + 88370 := by
    unfold C
    simp [show (559872 * k + 176740) % 2 = 0 by omega]
    omega
  have h17 : C (279936 * k + 88370) = 139968 * k + 44185 := by
    unfold C
    simp [show (279936 * k + 88370) % 2 = 0 by omega]
    omega
  have h18 : C (139968 * k + 44185) = 419904 * k + 132556 := by
    unfold C
    simp [show (139968 * k + 44185) % 2 ≠ 0 by omega]
    omega
  have h19 : C (419904 * k + 132556) = 209952 * k + 66278 := by
    unfold C
    simp [show (419904 * k + 132556) % 2 = 0 by omega]
    omega
  have h20 : C (209952 * k + 66278) = 104976 * k + 33139 := by
    unfold C
    simp [show (209952 * k + 66278) % 2 = 0 by omega]
    omega
  have h21 : C (104976 * k + 33139) = 314928 * k + 99418 := by
    unfold C
    simp [show (104976 * k + 33139) % 2 ≠ 0 by omega]
    omega
  have h22 : C (314928 * k + 99418) = 157464 * k + 49709 := by
    unfold C
    simp [show (314928 * k + 99418) % 2 = 0 by omega]
    omega
  have h23 : C (157464 * k + 49709) = 472392 * k + 149128 := by
    unfold C
    simp [show (157464 * k + 49709) % 2 ≠ 0 by omega]
    omega
  have h24 : C (472392 * k + 149128) = 236196 * k + 74564 := by
    unfold C
    simp [show (472392 * k + 149128) % 2 = 0 by omega]
    omega
  have h25 : C (236196 * k + 74564) = 118098 * k + 37282 := by
    unfold C
    simp [show (236196 * k + 74564) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 37282) = 59049 * k + 18641 := by
    unfold C
    simp [show (118098 * k + 37282) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 20687) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 20687)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_20807 : ∀ k : Nat,
    iterate (65536 * k + 20807) 26 = 59049 * k + 18749 ∧
      59049 * k + 18749 < 65536 * k + 20807 := by
  intro k
  have h1 : C (65536 * k + 20807) = 196608 * k + 62422 := by
    unfold C
    simp [show (65536 * k + 20807) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 62422) = 98304 * k + 31211 := by
    unfold C
    simp [show (196608 * k + 62422) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 31211) = 294912 * k + 93634 := by
    unfold C
    simp [show (98304 * k + 31211) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 93634) = 147456 * k + 46817 := by
    unfold C
    simp [show (294912 * k + 93634) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 46817) = 442368 * k + 140452 := by
    unfold C
    simp [show (147456 * k + 46817) % 2 ≠ 0 by omega]
    omega
  have h6 : C (442368 * k + 140452) = 221184 * k + 70226 := by
    unfold C
    simp [show (442368 * k + 140452) % 2 = 0 by omega]
    omega
  have h7 : C (221184 * k + 70226) = 110592 * k + 35113 := by
    unfold C
    simp [show (221184 * k + 70226) % 2 = 0 by omega]
    omega
  have h8 : C (110592 * k + 35113) = 331776 * k + 105340 := by
    unfold C
    simp [show (110592 * k + 35113) % 2 ≠ 0 by omega]
    omega
  have h9 : C (331776 * k + 105340) = 165888 * k + 52670 := by
    unfold C
    simp [show (331776 * k + 105340) % 2 = 0 by omega]
    omega
  have h10 : C (165888 * k + 52670) = 82944 * k + 26335 := by
    unfold C
    simp [show (165888 * k + 52670) % 2 = 0 by omega]
    omega
  have h11 : C (82944 * k + 26335) = 248832 * k + 79006 := by
    unfold C
    simp [show (82944 * k + 26335) % 2 ≠ 0 by omega]
    omega
  have h12 : C (248832 * k + 79006) = 124416 * k + 39503 := by
    unfold C
    simp [show (248832 * k + 79006) % 2 = 0 by omega]
    omega
  have h13 : C (124416 * k + 39503) = 373248 * k + 118510 := by
    unfold C
    simp [show (124416 * k + 39503) % 2 ≠ 0 by omega]
    omega
  have h14 : C (373248 * k + 118510) = 186624 * k + 59255 := by
    unfold C
    simp [show (373248 * k + 118510) % 2 = 0 by omega]
    omega
  have h15 : C (186624 * k + 59255) = 559872 * k + 177766 := by
    unfold C
    simp [show (186624 * k + 59255) % 2 ≠ 0 by omega]
    omega
  have h16 : C (559872 * k + 177766) = 279936 * k + 88883 := by
    unfold C
    simp [show (559872 * k + 177766) % 2 = 0 by omega]
    omega
  have h17 : C (279936 * k + 88883) = 839808 * k + 266650 := by
    unfold C
    simp [show (279936 * k + 88883) % 2 ≠ 0 by omega]
    omega
  have h18 : C (839808 * k + 266650) = 419904 * k + 133325 := by
    unfold C
    simp [show (839808 * k + 266650) % 2 = 0 by omega]
    omega
  have h19 : C (419904 * k + 133325) = 1259712 * k + 399976 := by
    unfold C
    simp [show (419904 * k + 133325) % 2 ≠ 0 by omega]
    omega
  have h20 : C (1259712 * k + 399976) = 629856 * k + 199988 := by
    unfold C
    simp [show (1259712 * k + 399976) % 2 = 0 by omega]
    omega
  have h21 : C (629856 * k + 199988) = 314928 * k + 99994 := by
    unfold C
    simp [show (629856 * k + 199988) % 2 = 0 by omega]
    omega
  have h22 : C (314928 * k + 99994) = 157464 * k + 49997 := by
    unfold C
    simp [show (314928 * k + 99994) % 2 = 0 by omega]
    omega
  have h23 : C (157464 * k + 49997) = 472392 * k + 149992 := by
    unfold C
    simp [show (157464 * k + 49997) % 2 ≠ 0 by omega]
    omega
  have h24 : C (472392 * k + 149992) = 236196 * k + 74996 := by
    unfold C
    simp [show (472392 * k + 149992) % 2 = 0 by omega]
    omega
  have h25 : C (236196 * k + 74996) = 118098 * k + 37498 := by
    unfold C
    simp [show (236196 * k + 74996) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 37498) = 59049 * k + 18749 := by
    unfold C
    simp [show (118098 * k + 37498) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 20807) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 20807)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_21039 : ∀ k : Nat,
    iterate (65536 * k + 21039) 26 = 59049 * k + 18958 ∧
      59049 * k + 18958 < 65536 * k + 21039 := by
  intro k
  have h1 : C (65536 * k + 21039) = 196608 * k + 63118 := by
    unfold C
    simp [show (65536 * k + 21039) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 63118) = 98304 * k + 31559 := by
    unfold C
    simp [show (196608 * k + 63118) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 31559) = 294912 * k + 94678 := by
    unfold C
    simp [show (98304 * k + 31559) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 94678) = 147456 * k + 47339 := by
    unfold C
    simp [show (294912 * k + 94678) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 47339) = 442368 * k + 142018 := by
    unfold C
    simp [show (147456 * k + 47339) % 2 ≠ 0 by omega]
    omega
  have h6 : C (442368 * k + 142018) = 221184 * k + 71009 := by
    unfold C
    simp [show (442368 * k + 142018) % 2 = 0 by omega]
    omega
  have h7 : C (221184 * k + 71009) = 663552 * k + 213028 := by
    unfold C
    simp [show (221184 * k + 71009) % 2 ≠ 0 by omega]
    omega
  have h8 : C (663552 * k + 213028) = 331776 * k + 106514 := by
    unfold C
    simp [show (663552 * k + 213028) % 2 = 0 by omega]
    omega
  have h9 : C (331776 * k + 106514) = 165888 * k + 53257 := by
    unfold C
    simp [show (331776 * k + 106514) % 2 = 0 by omega]
    omega
  have h10 : C (165888 * k + 53257) = 497664 * k + 159772 := by
    unfold C
    simp [show (165888 * k + 53257) % 2 ≠ 0 by omega]
    omega
  have h11 : C (497664 * k + 159772) = 248832 * k + 79886 := by
    unfold C
    simp [show (497664 * k + 159772) % 2 = 0 by omega]
    omega
  have h12 : C (248832 * k + 79886) = 124416 * k + 39943 := by
    unfold C
    simp [show (248832 * k + 79886) % 2 = 0 by omega]
    omega
  have h13 : C (124416 * k + 39943) = 373248 * k + 119830 := by
    unfold C
    simp [show (124416 * k + 39943) % 2 ≠ 0 by omega]
    omega
  have h14 : C (373248 * k + 119830) = 186624 * k + 59915 := by
    unfold C
    simp [show (373248 * k + 119830) % 2 = 0 by omega]
    omega
  have h15 : C (186624 * k + 59915) = 559872 * k + 179746 := by
    unfold C
    simp [show (186624 * k + 59915) % 2 ≠ 0 by omega]
    omega
  have h16 : C (559872 * k + 179746) = 279936 * k + 89873 := by
    unfold C
    simp [show (559872 * k + 179746) % 2 = 0 by omega]
    omega
  have h17 : C (279936 * k + 89873) = 839808 * k + 269620 := by
    unfold C
    simp [show (279936 * k + 89873) % 2 ≠ 0 by omega]
    omega
  have h18 : C (839808 * k + 269620) = 419904 * k + 134810 := by
    unfold C
    simp [show (839808 * k + 269620) % 2 = 0 by omega]
    omega
  have h19 : C (419904 * k + 134810) = 209952 * k + 67405 := by
    unfold C
    simp [show (419904 * k + 134810) % 2 = 0 by omega]
    omega
  have h20 : C (209952 * k + 67405) = 629856 * k + 202216 := by
    unfold C
    simp [show (209952 * k + 67405) % 2 ≠ 0 by omega]
    omega
  have h21 : C (629856 * k + 202216) = 314928 * k + 101108 := by
    unfold C
    simp [show (629856 * k + 202216) % 2 = 0 by omega]
    omega
  have h22 : C (314928 * k + 101108) = 157464 * k + 50554 := by
    unfold C
    simp [show (314928 * k + 101108) % 2 = 0 by omega]
    omega
  have h23 : C (157464 * k + 50554) = 78732 * k + 25277 := by
    unfold C
    simp [show (157464 * k + 50554) % 2 = 0 by omega]
    omega
  have h24 : C (78732 * k + 25277) = 236196 * k + 75832 := by
    unfold C
    simp [show (78732 * k + 25277) % 2 ≠ 0 by omega]
    omega
  have h25 : C (236196 * k + 75832) = 118098 * k + 37916 := by
    unfold C
    simp [show (236196 * k + 75832) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 37916) = 59049 * k + 18958 := by
    unfold C
    simp [show (118098 * k + 37916) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 21039) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 21039)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_21595 : ∀ k : Nat,
    iterate (65536 * k + 21595) 26 = 59049 * k + 19459 ∧
      59049 * k + 19459 < 65536 * k + 21595 := by
  intro k
  have h1 : C (65536 * k + 21595) = 196608 * k + 64786 := by
    unfold C
    simp [show (65536 * k + 21595) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 64786) = 98304 * k + 32393 := by
    unfold C
    simp [show (196608 * k + 64786) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 32393) = 294912 * k + 97180 := by
    unfold C
    simp [show (98304 * k + 32393) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 97180) = 147456 * k + 48590 := by
    unfold C
    simp [show (294912 * k + 97180) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 48590) = 73728 * k + 24295 := by
    unfold C
    simp [show (147456 * k + 48590) % 2 = 0 by omega]
    omega
  have h6 : C (73728 * k + 24295) = 221184 * k + 72886 := by
    unfold C
    simp [show (73728 * k + 24295) % 2 ≠ 0 by omega]
    omega
  have h7 : C (221184 * k + 72886) = 110592 * k + 36443 := by
    unfold C
    simp [show (221184 * k + 72886) % 2 = 0 by omega]
    omega
  have h8 : C (110592 * k + 36443) = 331776 * k + 109330 := by
    unfold C
    simp [show (110592 * k + 36443) % 2 ≠ 0 by omega]
    omega
  have h9 : C (331776 * k + 109330) = 165888 * k + 54665 := by
    unfold C
    simp [show (331776 * k + 109330) % 2 = 0 by omega]
    omega
  have h10 : C (165888 * k + 54665) = 497664 * k + 163996 := by
    unfold C
    simp [show (165888 * k + 54665) % 2 ≠ 0 by omega]
    omega
  have h11 : C (497664 * k + 163996) = 248832 * k + 81998 := by
    unfold C
    simp [show (497664 * k + 163996) % 2 = 0 by omega]
    omega
  have h12 : C (248832 * k + 81998) = 124416 * k + 40999 := by
    unfold C
    simp [show (248832 * k + 81998) % 2 = 0 by omega]
    omega
  have h13 : C (124416 * k + 40999) = 373248 * k + 122998 := by
    unfold C
    simp [show (124416 * k + 40999) % 2 ≠ 0 by omega]
    omega
  have h14 : C (373248 * k + 122998) = 186624 * k + 61499 := by
    unfold C
    simp [show (373248 * k + 122998) % 2 = 0 by omega]
    omega
  have h15 : C (186624 * k + 61499) = 559872 * k + 184498 := by
    unfold C
    simp [show (186624 * k + 61499) % 2 ≠ 0 by omega]
    omega
  have h16 : C (559872 * k + 184498) = 279936 * k + 92249 := by
    unfold C
    simp [show (559872 * k + 184498) % 2 = 0 by omega]
    omega
  have h17 : C (279936 * k + 92249) = 839808 * k + 276748 := by
    unfold C
    simp [show (279936 * k + 92249) % 2 ≠ 0 by omega]
    omega
  have h18 : C (839808 * k + 276748) = 419904 * k + 138374 := by
    unfold C
    simp [show (839808 * k + 276748) % 2 = 0 by omega]
    omega
  have h19 : C (419904 * k + 138374) = 209952 * k + 69187 := by
    unfold C
    simp [show (419904 * k + 138374) % 2 = 0 by omega]
    omega
  have h20 : C (209952 * k + 69187) = 629856 * k + 207562 := by
    unfold C
    simp [show (209952 * k + 69187) % 2 ≠ 0 by omega]
    omega
  have h21 : C (629856 * k + 207562) = 314928 * k + 103781 := by
    unfold C
    simp [show (629856 * k + 207562) % 2 = 0 by omega]
    omega
  have h22 : C (314928 * k + 103781) = 944784 * k + 311344 := by
    unfold C
    simp [show (314928 * k + 103781) % 2 ≠ 0 by omega]
    omega
  have h23 : C (944784 * k + 311344) = 472392 * k + 155672 := by
    unfold C
    simp [show (944784 * k + 311344) % 2 = 0 by omega]
    omega
  have h24 : C (472392 * k + 155672) = 236196 * k + 77836 := by
    unfold C
    simp [show (472392 * k + 155672) % 2 = 0 by omega]
    omega
  have h25 : C (236196 * k + 77836) = 118098 * k + 38918 := by
    unfold C
    simp [show (236196 * k + 77836) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 38918) = 59049 * k + 19459 := by
    unfold C
    simp [show (118098 * k + 38918) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 21595) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 21595)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_21615 : ∀ k : Nat,
    iterate (65536 * k + 21615) 26 = 59049 * k + 19477 ∧
      59049 * k + 19477 < 65536 * k + 21615 := by
  intro k
  have h1 : C (65536 * k + 21615) = 196608 * k + 64846 := by
    unfold C
    simp [show (65536 * k + 21615) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 64846) = 98304 * k + 32423 := by
    unfold C
    simp [show (196608 * k + 64846) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 32423) = 294912 * k + 97270 := by
    unfold C
    simp [show (98304 * k + 32423) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 97270) = 147456 * k + 48635 := by
    unfold C
    simp [show (294912 * k + 97270) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 48635) = 442368 * k + 145906 := by
    unfold C
    simp [show (147456 * k + 48635) % 2 ≠ 0 by omega]
    omega
  have h6 : C (442368 * k + 145906) = 221184 * k + 72953 := by
    unfold C
    simp [show (442368 * k + 145906) % 2 = 0 by omega]
    omega
  have h7 : C (221184 * k + 72953) = 663552 * k + 218860 := by
    unfold C
    simp [show (221184 * k + 72953) % 2 ≠ 0 by omega]
    omega
  have h8 : C (663552 * k + 218860) = 331776 * k + 109430 := by
    unfold C
    simp [show (663552 * k + 218860) % 2 = 0 by omega]
    omega
  have h9 : C (331776 * k + 109430) = 165888 * k + 54715 := by
    unfold C
    simp [show (331776 * k + 109430) % 2 = 0 by omega]
    omega
  have h10 : C (165888 * k + 54715) = 497664 * k + 164146 := by
    unfold C
    simp [show (165888 * k + 54715) % 2 ≠ 0 by omega]
    omega
  have h11 : C (497664 * k + 164146) = 248832 * k + 82073 := by
    unfold C
    simp [show (497664 * k + 164146) % 2 = 0 by omega]
    omega
  have h12 : C (248832 * k + 82073) = 746496 * k + 246220 := by
    unfold C
    simp [show (248832 * k + 82073) % 2 ≠ 0 by omega]
    omega
  have h13 : C (746496 * k + 246220) = 373248 * k + 123110 := by
    unfold C
    simp [show (746496 * k + 246220) % 2 = 0 by omega]
    omega
  have h14 : C (373248 * k + 123110) = 186624 * k + 61555 := by
    unfold C
    simp [show (373248 * k + 123110) % 2 = 0 by omega]
    omega
  have h15 : C (186624 * k + 61555) = 559872 * k + 184666 := by
    unfold C
    simp [show (186624 * k + 61555) % 2 ≠ 0 by omega]
    omega
  have h16 : C (559872 * k + 184666) = 279936 * k + 92333 := by
    unfold C
    simp [show (559872 * k + 184666) % 2 = 0 by omega]
    omega
  have h17 : C (279936 * k + 92333) = 839808 * k + 277000 := by
    unfold C
    simp [show (279936 * k + 92333) % 2 ≠ 0 by omega]
    omega
  have h18 : C (839808 * k + 277000) = 419904 * k + 138500 := by
    unfold C
    simp [show (839808 * k + 277000) % 2 = 0 by omega]
    omega
  have h19 : C (419904 * k + 138500) = 209952 * k + 69250 := by
    unfold C
    simp [show (419904 * k + 138500) % 2 = 0 by omega]
    omega
  have h20 : C (209952 * k + 69250) = 104976 * k + 34625 := by
    unfold C
    simp [show (209952 * k + 69250) % 2 = 0 by omega]
    omega
  have h21 : C (104976 * k + 34625) = 314928 * k + 103876 := by
    unfold C
    simp [show (104976 * k + 34625) % 2 ≠ 0 by omega]
    omega
  have h22 : C (314928 * k + 103876) = 157464 * k + 51938 := by
    unfold C
    simp [show (314928 * k + 103876) % 2 = 0 by omega]
    omega
  have h23 : C (157464 * k + 51938) = 78732 * k + 25969 := by
    unfold C
    simp [show (157464 * k + 51938) % 2 = 0 by omega]
    omega
  have h24 : C (78732 * k + 25969) = 236196 * k + 77908 := by
    unfold C
    simp [show (78732 * k + 25969) % 2 ≠ 0 by omega]
    omega
  have h25 : C (236196 * k + 77908) = 118098 * k + 38954 := by
    unfold C
    simp [show (236196 * k + 77908) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 38954) = 59049 * k + 19477 := by
    unfold C
    simp [show (118098 * k + 38954) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 21615) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 21615)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_21695 : ∀ k : Nat,
    iterate (65536 * k + 21695) 26 = 59049 * k + 19549 ∧
      59049 * k + 19549 < 65536 * k + 21695 := by
  intro k
  have h1 : C (65536 * k + 21695) = 196608 * k + 65086 := by
    unfold C
    simp [show (65536 * k + 21695) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 65086) = 98304 * k + 32543 := by
    unfold C
    simp [show (196608 * k + 65086) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 32543) = 294912 * k + 97630 := by
    unfold C
    simp [show (98304 * k + 32543) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 97630) = 147456 * k + 48815 := by
    unfold C
    simp [show (294912 * k + 97630) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 48815) = 442368 * k + 146446 := by
    unfold C
    simp [show (147456 * k + 48815) % 2 ≠ 0 by omega]
    omega
  have h6 : C (442368 * k + 146446) = 221184 * k + 73223 := by
    unfold C
    simp [show (442368 * k + 146446) % 2 = 0 by omega]
    omega
  have h7 : C (221184 * k + 73223) = 663552 * k + 219670 := by
    unfold C
    simp [show (221184 * k + 73223) % 2 ≠ 0 by omega]
    omega
  have h8 : C (663552 * k + 219670) = 331776 * k + 109835 := by
    unfold C
    simp [show (663552 * k + 219670) % 2 = 0 by omega]
    omega
  have h9 : C (331776 * k + 109835) = 995328 * k + 329506 := by
    unfold C
    simp [show (331776 * k + 109835) % 2 ≠ 0 by omega]
    omega
  have h10 : C (995328 * k + 329506) = 497664 * k + 164753 := by
    unfold C
    simp [show (995328 * k + 329506) % 2 = 0 by omega]
    omega
  have h11 : C (497664 * k + 164753) = 1492992 * k + 494260 := by
    unfold C
    simp [show (497664 * k + 164753) % 2 ≠ 0 by omega]
    omega
  have h12 : C (1492992 * k + 494260) = 746496 * k + 247130 := by
    unfold C
    simp [show (1492992 * k + 494260) % 2 = 0 by omega]
    omega
  have h13 : C (746496 * k + 247130) = 373248 * k + 123565 := by
    unfold C
    simp [show (746496 * k + 247130) % 2 = 0 by omega]
    omega
  have h14 : C (373248 * k + 123565) = 1119744 * k + 370696 := by
    unfold C
    simp [show (373248 * k + 123565) % 2 ≠ 0 by omega]
    omega
  have h15 : C (1119744 * k + 370696) = 559872 * k + 185348 := by
    unfold C
    simp [show (1119744 * k + 370696) % 2 = 0 by omega]
    omega
  have h16 : C (559872 * k + 185348) = 279936 * k + 92674 := by
    unfold C
    simp [show (559872 * k + 185348) % 2 = 0 by omega]
    omega
  have h17 : C (279936 * k + 92674) = 139968 * k + 46337 := by
    unfold C
    simp [show (279936 * k + 92674) % 2 = 0 by omega]
    omega
  have h18 : C (139968 * k + 46337) = 419904 * k + 139012 := by
    unfold C
    simp [show (139968 * k + 46337) % 2 ≠ 0 by omega]
    omega
  have h19 : C (419904 * k + 139012) = 209952 * k + 69506 := by
    unfold C
    simp [show (419904 * k + 139012) % 2 = 0 by omega]
    omega
  have h20 : C (209952 * k + 69506) = 104976 * k + 34753 := by
    unfold C
    simp [show (209952 * k + 69506) % 2 = 0 by omega]
    omega
  have h21 : C (104976 * k + 34753) = 314928 * k + 104260 := by
    unfold C
    simp [show (104976 * k + 34753) % 2 ≠ 0 by omega]
    omega
  have h22 : C (314928 * k + 104260) = 157464 * k + 52130 := by
    unfold C
    simp [show (314928 * k + 104260) % 2 = 0 by omega]
    omega
  have h23 : C (157464 * k + 52130) = 78732 * k + 26065 := by
    unfold C
    simp [show (157464 * k + 52130) % 2 = 0 by omega]
    omega
  have h24 : C (78732 * k + 26065) = 236196 * k + 78196 := by
    unfold C
    simp [show (78732 * k + 26065) % 2 ≠ 0 by omega]
    omega
  have h25 : C (236196 * k + 78196) = 118098 * k + 39098 := by
    unfold C
    simp [show (236196 * k + 78196) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 39098) = 59049 * k + 19549 := by
    unfold C
    simp [show (118098 * k + 39098) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 21695) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 21695)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_21735 : ∀ k : Nat,
    iterate (65536 * k + 21735) 26 = 59049 * k + 19585 ∧
      59049 * k + 19585 < 65536 * k + 21735 := by
  intro k
  have h1 : C (65536 * k + 21735) = 196608 * k + 65206 := by
    unfold C
    simp [show (65536 * k + 21735) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 65206) = 98304 * k + 32603 := by
    unfold C
    simp [show (196608 * k + 65206) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 32603) = 294912 * k + 97810 := by
    unfold C
    simp [show (98304 * k + 32603) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 97810) = 147456 * k + 48905 := by
    unfold C
    simp [show (294912 * k + 97810) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 48905) = 442368 * k + 146716 := by
    unfold C
    simp [show (147456 * k + 48905) % 2 ≠ 0 by omega]
    omega
  have h6 : C (442368 * k + 146716) = 221184 * k + 73358 := by
    unfold C
    simp [show (442368 * k + 146716) % 2 = 0 by omega]
    omega
  have h7 : C (221184 * k + 73358) = 110592 * k + 36679 := by
    unfold C
    simp [show (221184 * k + 73358) % 2 = 0 by omega]
    omega
  have h8 : C (110592 * k + 36679) = 331776 * k + 110038 := by
    unfold C
    simp [show (110592 * k + 36679) % 2 ≠ 0 by omega]
    omega
  have h9 : C (331776 * k + 110038) = 165888 * k + 55019 := by
    unfold C
    simp [show (331776 * k + 110038) % 2 = 0 by omega]
    omega
  have h10 : C (165888 * k + 55019) = 497664 * k + 165058 := by
    unfold C
    simp [show (165888 * k + 55019) % 2 ≠ 0 by omega]
    omega
  have h11 : C (497664 * k + 165058) = 248832 * k + 82529 := by
    unfold C
    simp [show (497664 * k + 165058) % 2 = 0 by omega]
    omega
  have h12 : C (248832 * k + 82529) = 746496 * k + 247588 := by
    unfold C
    simp [show (248832 * k + 82529) % 2 ≠ 0 by omega]
    omega
  have h13 : C (746496 * k + 247588) = 373248 * k + 123794 := by
    unfold C
    simp [show (746496 * k + 247588) % 2 = 0 by omega]
    omega
  have h14 : C (373248 * k + 123794) = 186624 * k + 61897 := by
    unfold C
    simp [show (373248 * k + 123794) % 2 = 0 by omega]
    omega
  have h15 : C (186624 * k + 61897) = 559872 * k + 185692 := by
    unfold C
    simp [show (186624 * k + 61897) % 2 ≠ 0 by omega]
    omega
  have h16 : C (559872 * k + 185692) = 279936 * k + 92846 := by
    unfold C
    simp [show (559872 * k + 185692) % 2 = 0 by omega]
    omega
  have h17 : C (279936 * k + 92846) = 139968 * k + 46423 := by
    unfold C
    simp [show (279936 * k + 92846) % 2 = 0 by omega]
    omega
  have h18 : C (139968 * k + 46423) = 419904 * k + 139270 := by
    unfold C
    simp [show (139968 * k + 46423) % 2 ≠ 0 by omega]
    omega
  have h19 : C (419904 * k + 139270) = 209952 * k + 69635 := by
    unfold C
    simp [show (419904 * k + 139270) % 2 = 0 by omega]
    omega
  have h20 : C (209952 * k + 69635) = 629856 * k + 208906 := by
    unfold C
    simp [show (209952 * k + 69635) % 2 ≠ 0 by omega]
    omega
  have h21 : C (629856 * k + 208906) = 314928 * k + 104453 := by
    unfold C
    simp [show (629856 * k + 208906) % 2 = 0 by omega]
    omega
  have h22 : C (314928 * k + 104453) = 944784 * k + 313360 := by
    unfold C
    simp [show (314928 * k + 104453) % 2 ≠ 0 by omega]
    omega
  have h23 : C (944784 * k + 313360) = 472392 * k + 156680 := by
    unfold C
    simp [show (944784 * k + 313360) % 2 = 0 by omega]
    omega
  have h24 : C (472392 * k + 156680) = 236196 * k + 78340 := by
    unfold C
    simp [show (472392 * k + 156680) % 2 = 0 by omega]
    omega
  have h25 : C (236196 * k + 78340) = 118098 * k + 39170 := by
    unfold C
    simp [show (236196 * k + 78340) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 39170) = 59049 * k + 19585 := by
    unfold C
    simp [show (118098 * k + 39170) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 21735) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 21735)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_22015 : ∀ k : Nat,
    iterate (65536 * k + 22015) 26 = 59049 * k + 19837 ∧
      59049 * k + 19837 < 65536 * k + 22015 := by
  intro k
  have h1 : C (65536 * k + 22015) = 196608 * k + 66046 := by
    unfold C
    simp [show (65536 * k + 22015) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 66046) = 98304 * k + 33023 := by
    unfold C
    simp [show (196608 * k + 66046) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 33023) = 294912 * k + 99070 := by
    unfold C
    simp [show (98304 * k + 33023) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 99070) = 147456 * k + 49535 := by
    unfold C
    simp [show (294912 * k + 99070) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 49535) = 442368 * k + 148606 := by
    unfold C
    simp [show (147456 * k + 49535) % 2 ≠ 0 by omega]
    omega
  have h6 : C (442368 * k + 148606) = 221184 * k + 74303 := by
    unfold C
    simp [show (442368 * k + 148606) % 2 = 0 by omega]
    omega
  have h7 : C (221184 * k + 74303) = 663552 * k + 222910 := by
    unfold C
    simp [show (221184 * k + 74303) % 2 ≠ 0 by omega]
    omega
  have h8 : C (663552 * k + 222910) = 331776 * k + 111455 := by
    unfold C
    simp [show (663552 * k + 222910) % 2 = 0 by omega]
    omega
  have h9 : C (331776 * k + 111455) = 995328 * k + 334366 := by
    unfold C
    simp [show (331776 * k + 111455) % 2 ≠ 0 by omega]
    omega
  have h10 : C (995328 * k + 334366) = 497664 * k + 167183 := by
    unfold C
    simp [show (995328 * k + 334366) % 2 = 0 by omega]
    omega
  have h11 : C (497664 * k + 167183) = 1492992 * k + 501550 := by
    unfold C
    simp [show (497664 * k + 167183) % 2 ≠ 0 by omega]
    omega
  have h12 : C (1492992 * k + 501550) = 746496 * k + 250775 := by
    unfold C
    simp [show (1492992 * k + 501550) % 2 = 0 by omega]
    omega
  have h13 : C (746496 * k + 250775) = 2239488 * k + 752326 := by
    unfold C
    simp [show (746496 * k + 250775) % 2 ≠ 0 by omega]
    omega
  have h14 : C (2239488 * k + 752326) = 1119744 * k + 376163 := by
    unfold C
    simp [show (2239488 * k + 752326) % 2 = 0 by omega]
    omega
  have h15 : C (1119744 * k + 376163) = 3359232 * k + 1128490 := by
    unfold C
    simp [show (1119744 * k + 376163) % 2 ≠ 0 by omega]
    omega
  have h16 : C (3359232 * k + 1128490) = 1679616 * k + 564245 := by
    unfold C
    simp [show (3359232 * k + 1128490) % 2 = 0 by omega]
    omega
  have h17 : C (1679616 * k + 564245) = 5038848 * k + 1692736 := by
    unfold C
    simp [show (1679616 * k + 564245) % 2 ≠ 0 by omega]
    omega
  have h18 : C (5038848 * k + 1692736) = 2519424 * k + 846368 := by
    unfold C
    simp [show (5038848 * k + 1692736) % 2 = 0 by omega]
    omega
  have h19 : C (2519424 * k + 846368) = 1259712 * k + 423184 := by
    unfold C
    simp [show (2519424 * k + 846368) % 2 = 0 by omega]
    omega
  have h20 : C (1259712 * k + 423184) = 629856 * k + 211592 := by
    unfold C
    simp [show (1259712 * k + 423184) % 2 = 0 by omega]
    omega
  have h21 : C (629856 * k + 211592) = 314928 * k + 105796 := by
    unfold C
    simp [show (629856 * k + 211592) % 2 = 0 by omega]
    omega
  have h22 : C (314928 * k + 105796) = 157464 * k + 52898 := by
    unfold C
    simp [show (314928 * k + 105796) % 2 = 0 by omega]
    omega
  have h23 : C (157464 * k + 52898) = 78732 * k + 26449 := by
    unfold C
    simp [show (157464 * k + 52898) % 2 = 0 by omega]
    omega
  have h24 : C (78732 * k + 26449) = 236196 * k + 79348 := by
    unfold C
    simp [show (78732 * k + 26449) % 2 ≠ 0 by omega]
    omega
  have h25 : C (236196 * k + 79348) = 118098 * k + 39674 := by
    unfold C
    simp [show (236196 * k + 79348) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 39674) = 59049 * k + 19837 := by
    unfold C
    simp [show (118098 * k + 39674) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 22015) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 22015)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_22119 : ∀ k : Nat,
    iterate (65536 * k + 22119) 26 = 59049 * k + 19931 ∧
      59049 * k + 19931 < 65536 * k + 22119 := by
  intro k
  have h1 : C (65536 * k + 22119) = 196608 * k + 66358 := by
    unfold C
    simp [show (65536 * k + 22119) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 66358) = 98304 * k + 33179 := by
    unfold C
    simp [show (196608 * k + 66358) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 33179) = 294912 * k + 99538 := by
    unfold C
    simp [show (98304 * k + 33179) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 99538) = 147456 * k + 49769 := by
    unfold C
    simp [show (294912 * k + 99538) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 49769) = 442368 * k + 149308 := by
    unfold C
    simp [show (147456 * k + 49769) % 2 ≠ 0 by omega]
    omega
  have h6 : C (442368 * k + 149308) = 221184 * k + 74654 := by
    unfold C
    simp [show (442368 * k + 149308) % 2 = 0 by omega]
    omega
  have h7 : C (221184 * k + 74654) = 110592 * k + 37327 := by
    unfold C
    simp [show (221184 * k + 74654) % 2 = 0 by omega]
    omega
  have h8 : C (110592 * k + 37327) = 331776 * k + 111982 := by
    unfold C
    simp [show (110592 * k + 37327) % 2 ≠ 0 by omega]
    omega
  have h9 : C (331776 * k + 111982) = 165888 * k + 55991 := by
    unfold C
    simp [show (331776 * k + 111982) % 2 = 0 by omega]
    omega
  have h10 : C (165888 * k + 55991) = 497664 * k + 167974 := by
    unfold C
    simp [show (165888 * k + 55991) % 2 ≠ 0 by omega]
    omega
  have h11 : C (497664 * k + 167974) = 248832 * k + 83987 := by
    unfold C
    simp [show (497664 * k + 167974) % 2 = 0 by omega]
    omega
  have h12 : C (248832 * k + 83987) = 746496 * k + 251962 := by
    unfold C
    simp [show (248832 * k + 83987) % 2 ≠ 0 by omega]
    omega
  have h13 : C (746496 * k + 251962) = 373248 * k + 125981 := by
    unfold C
    simp [show (746496 * k + 251962) % 2 = 0 by omega]
    omega
  have h14 : C (373248 * k + 125981) = 1119744 * k + 377944 := by
    unfold C
    simp [show (373248 * k + 125981) % 2 ≠ 0 by omega]
    omega
  have h15 : C (1119744 * k + 377944) = 559872 * k + 188972 := by
    unfold C
    simp [show (1119744 * k + 377944) % 2 = 0 by omega]
    omega
  have h16 : C (559872 * k + 188972) = 279936 * k + 94486 := by
    unfold C
    simp [show (559872 * k + 188972) % 2 = 0 by omega]
    omega
  have h17 : C (279936 * k + 94486) = 139968 * k + 47243 := by
    unfold C
    simp [show (279936 * k + 94486) % 2 = 0 by omega]
    omega
  have h18 : C (139968 * k + 47243) = 419904 * k + 141730 := by
    unfold C
    simp [show (139968 * k + 47243) % 2 ≠ 0 by omega]
    omega
  have h19 : C (419904 * k + 141730) = 209952 * k + 70865 := by
    unfold C
    simp [show (419904 * k + 141730) % 2 = 0 by omega]
    omega
  have h20 : C (209952 * k + 70865) = 629856 * k + 212596 := by
    unfold C
    simp [show (209952 * k + 70865) % 2 ≠ 0 by omega]
    omega
  have h21 : C (629856 * k + 212596) = 314928 * k + 106298 := by
    unfold C
    simp [show (629856 * k + 212596) % 2 = 0 by omega]
    omega
  have h22 : C (314928 * k + 106298) = 157464 * k + 53149 := by
    unfold C
    simp [show (314928 * k + 106298) % 2 = 0 by omega]
    omega
  have h23 : C (157464 * k + 53149) = 472392 * k + 159448 := by
    unfold C
    simp [show (157464 * k + 53149) % 2 ≠ 0 by omega]
    omega
  have h24 : C (472392 * k + 159448) = 236196 * k + 79724 := by
    unfold C
    simp [show (472392 * k + 159448) % 2 = 0 by omega]
    omega
  have h25 : C (236196 * k + 79724) = 118098 * k + 39862 := by
    unfold C
    simp [show (236196 * k + 79724) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 39862) = 59049 * k + 19931 := by
    unfold C
    simp [show (118098 * k + 39862) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 22119) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 22119)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_22399 : ∀ k : Nat,
    iterate (65536 * k + 22399) 26 = 59049 * k + 20183 ∧
      59049 * k + 20183 < 65536 * k + 22399 := by
  intro k
  have h1 : C (65536 * k + 22399) = 196608 * k + 67198 := by
    unfold C
    simp [show (65536 * k + 22399) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 67198) = 98304 * k + 33599 := by
    unfold C
    simp [show (196608 * k + 67198) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 33599) = 294912 * k + 100798 := by
    unfold C
    simp [show (98304 * k + 33599) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 100798) = 147456 * k + 50399 := by
    unfold C
    simp [show (294912 * k + 100798) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 50399) = 442368 * k + 151198 := by
    unfold C
    simp [show (147456 * k + 50399) % 2 ≠ 0 by omega]
    omega
  have h6 : C (442368 * k + 151198) = 221184 * k + 75599 := by
    unfold C
    simp [show (442368 * k + 151198) % 2 = 0 by omega]
    omega
  have h7 : C (221184 * k + 75599) = 663552 * k + 226798 := by
    unfold C
    simp [show (221184 * k + 75599) % 2 ≠ 0 by omega]
    omega
  have h8 : C (663552 * k + 226798) = 331776 * k + 113399 := by
    unfold C
    simp [show (663552 * k + 226798) % 2 = 0 by omega]
    omega
  have h9 : C (331776 * k + 113399) = 995328 * k + 340198 := by
    unfold C
    simp [show (331776 * k + 113399) % 2 ≠ 0 by omega]
    omega
  have h10 : C (995328 * k + 340198) = 497664 * k + 170099 := by
    unfold C
    simp [show (995328 * k + 340198) % 2 = 0 by omega]
    omega
  have h11 : C (497664 * k + 170099) = 1492992 * k + 510298 := by
    unfold C
    simp [show (497664 * k + 170099) % 2 ≠ 0 by omega]
    omega
  have h12 : C (1492992 * k + 510298) = 746496 * k + 255149 := by
    unfold C
    simp [show (1492992 * k + 510298) % 2 = 0 by omega]
    omega
  have h13 : C (746496 * k + 255149) = 2239488 * k + 765448 := by
    unfold C
    simp [show (746496 * k + 255149) % 2 ≠ 0 by omega]
    omega
  have h14 : C (2239488 * k + 765448) = 1119744 * k + 382724 := by
    unfold C
    simp [show (2239488 * k + 765448) % 2 = 0 by omega]
    omega
  have h15 : C (1119744 * k + 382724) = 559872 * k + 191362 := by
    unfold C
    simp [show (1119744 * k + 382724) % 2 = 0 by omega]
    omega
  have h16 : C (559872 * k + 191362) = 279936 * k + 95681 := by
    unfold C
    simp [show (559872 * k + 191362) % 2 = 0 by omega]
    omega
  have h17 : C (279936 * k + 95681) = 839808 * k + 287044 := by
    unfold C
    simp [show (279936 * k + 95681) % 2 ≠ 0 by omega]
    omega
  have h18 : C (839808 * k + 287044) = 419904 * k + 143522 := by
    unfold C
    simp [show (839808 * k + 287044) % 2 = 0 by omega]
    omega
  have h19 : C (419904 * k + 143522) = 209952 * k + 71761 := by
    unfold C
    simp [show (419904 * k + 143522) % 2 = 0 by omega]
    omega
  have h20 : C (209952 * k + 71761) = 629856 * k + 215284 := by
    unfold C
    simp [show (209952 * k + 71761) % 2 ≠ 0 by omega]
    omega
  have h21 : C (629856 * k + 215284) = 314928 * k + 107642 := by
    unfold C
    simp [show (629856 * k + 215284) % 2 = 0 by omega]
    omega
  have h22 : C (314928 * k + 107642) = 157464 * k + 53821 := by
    unfold C
    simp [show (314928 * k + 107642) % 2 = 0 by omega]
    omega
  have h23 : C (157464 * k + 53821) = 472392 * k + 161464 := by
    unfold C
    simp [show (157464 * k + 53821) % 2 ≠ 0 by omega]
    omega
  have h24 : C (472392 * k + 161464) = 236196 * k + 80732 := by
    unfold C
    simp [show (472392 * k + 161464) % 2 = 0 by omega]
    omega
  have h25 : C (236196 * k + 80732) = 118098 * k + 40366 := by
    unfold C
    simp [show (236196 * k + 80732) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 40366) = 59049 * k + 20183 := by
    unfold C
    simp [show (118098 * k + 40366) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 22399) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 22399)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_22495 : ∀ k : Nat,
    iterate (65536 * k + 22495) 26 = 59049 * k + 20270 ∧
      59049 * k + 20270 < 65536 * k + 22495 := by
  intro k
  have h1 : C (65536 * k + 22495) = 196608 * k + 67486 := by
    unfold C
    simp [show (65536 * k + 22495) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 67486) = 98304 * k + 33743 := by
    unfold C
    simp [show (196608 * k + 67486) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 33743) = 294912 * k + 101230 := by
    unfold C
    simp [show (98304 * k + 33743) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 101230) = 147456 * k + 50615 := by
    unfold C
    simp [show (294912 * k + 101230) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 50615) = 442368 * k + 151846 := by
    unfold C
    simp [show (147456 * k + 50615) % 2 ≠ 0 by omega]
    omega
  have h6 : C (442368 * k + 151846) = 221184 * k + 75923 := by
    unfold C
    simp [show (442368 * k + 151846) % 2 = 0 by omega]
    omega
  have h7 : C (221184 * k + 75923) = 663552 * k + 227770 := by
    unfold C
    simp [show (221184 * k + 75923) % 2 ≠ 0 by omega]
    omega
  have h8 : C (663552 * k + 227770) = 331776 * k + 113885 := by
    unfold C
    simp [show (663552 * k + 227770) % 2 = 0 by omega]
    omega
  have h9 : C (331776 * k + 113885) = 995328 * k + 341656 := by
    unfold C
    simp [show (331776 * k + 113885) % 2 ≠ 0 by omega]
    omega
  have h10 : C (995328 * k + 341656) = 497664 * k + 170828 := by
    unfold C
    simp [show (995328 * k + 341656) % 2 = 0 by omega]
    omega
  have h11 : C (497664 * k + 170828) = 248832 * k + 85414 := by
    unfold C
    simp [show (497664 * k + 170828) % 2 = 0 by omega]
    omega
  have h12 : C (248832 * k + 85414) = 124416 * k + 42707 := by
    unfold C
    simp [show (248832 * k + 85414) % 2 = 0 by omega]
    omega
  have h13 : C (124416 * k + 42707) = 373248 * k + 128122 := by
    unfold C
    simp [show (124416 * k + 42707) % 2 ≠ 0 by omega]
    omega
  have h14 : C (373248 * k + 128122) = 186624 * k + 64061 := by
    unfold C
    simp [show (373248 * k + 128122) % 2 = 0 by omega]
    omega
  have h15 : C (186624 * k + 64061) = 559872 * k + 192184 := by
    unfold C
    simp [show (186624 * k + 64061) % 2 ≠ 0 by omega]
    omega
  have h16 : C (559872 * k + 192184) = 279936 * k + 96092 := by
    unfold C
    simp [show (559872 * k + 192184) % 2 = 0 by omega]
    omega
  have h17 : C (279936 * k + 96092) = 139968 * k + 48046 := by
    unfold C
    simp [show (279936 * k + 96092) % 2 = 0 by omega]
    omega
  have h18 : C (139968 * k + 48046) = 69984 * k + 24023 := by
    unfold C
    simp [show (139968 * k + 48046) % 2 = 0 by omega]
    omega
  have h19 : C (69984 * k + 24023) = 209952 * k + 72070 := by
    unfold C
    simp [show (69984 * k + 24023) % 2 ≠ 0 by omega]
    omega
  have h20 : C (209952 * k + 72070) = 104976 * k + 36035 := by
    unfold C
    simp [show (209952 * k + 72070) % 2 = 0 by omega]
    omega
  have h21 : C (104976 * k + 36035) = 314928 * k + 108106 := by
    unfold C
    simp [show (104976 * k + 36035) % 2 ≠ 0 by omega]
    omega
  have h22 : C (314928 * k + 108106) = 157464 * k + 54053 := by
    unfold C
    simp [show (314928 * k + 108106) % 2 = 0 by omega]
    omega
  have h23 : C (157464 * k + 54053) = 472392 * k + 162160 := by
    unfold C
    simp [show (157464 * k + 54053) % 2 ≠ 0 by omega]
    omega
  have h24 : C (472392 * k + 162160) = 236196 * k + 81080 := by
    unfold C
    simp [show (472392 * k + 162160) % 2 = 0 by omega]
    omega
  have h25 : C (236196 * k + 81080) = 118098 * k + 40540 := by
    unfold C
    simp [show (236196 * k + 81080) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 40540) = 59049 * k + 20270 := by
    unfold C
    simp [show (118098 * k + 40540) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 22495) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 22495)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_22555 : ∀ k : Nat,
    iterate (65536 * k + 22555) 26 = 59049 * k + 20324 ∧
      59049 * k + 20324 < 65536 * k + 22555 := by
  intro k
  have h1 : C (65536 * k + 22555) = 196608 * k + 67666 := by
    unfold C
    simp [show (65536 * k + 22555) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 67666) = 98304 * k + 33833 := by
    unfold C
    simp [show (196608 * k + 67666) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 33833) = 294912 * k + 101500 := by
    unfold C
    simp [show (98304 * k + 33833) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 101500) = 147456 * k + 50750 := by
    unfold C
    simp [show (294912 * k + 101500) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 50750) = 73728 * k + 25375 := by
    unfold C
    simp [show (147456 * k + 50750) % 2 = 0 by omega]
    omega
  have h6 : C (73728 * k + 25375) = 221184 * k + 76126 := by
    unfold C
    simp [show (73728 * k + 25375) % 2 ≠ 0 by omega]
    omega
  have h7 : C (221184 * k + 76126) = 110592 * k + 38063 := by
    unfold C
    simp [show (221184 * k + 76126) % 2 = 0 by omega]
    omega
  have h8 : C (110592 * k + 38063) = 331776 * k + 114190 := by
    unfold C
    simp [show (110592 * k + 38063) % 2 ≠ 0 by omega]
    omega
  have h9 : C (331776 * k + 114190) = 165888 * k + 57095 := by
    unfold C
    simp [show (331776 * k + 114190) % 2 = 0 by omega]
    omega
  have h10 : C (165888 * k + 57095) = 497664 * k + 171286 := by
    unfold C
    simp [show (165888 * k + 57095) % 2 ≠ 0 by omega]
    omega
  have h11 : C (497664 * k + 171286) = 248832 * k + 85643 := by
    unfold C
    simp [show (497664 * k + 171286) % 2 = 0 by omega]
    omega
  have h12 : C (248832 * k + 85643) = 746496 * k + 256930 := by
    unfold C
    simp [show (248832 * k + 85643) % 2 ≠ 0 by omega]
    omega
  have h13 : C (746496 * k + 256930) = 373248 * k + 128465 := by
    unfold C
    simp [show (746496 * k + 256930) % 2 = 0 by omega]
    omega
  have h14 : C (373248 * k + 128465) = 1119744 * k + 385396 := by
    unfold C
    simp [show (373248 * k + 128465) % 2 ≠ 0 by omega]
    omega
  have h15 : C (1119744 * k + 385396) = 559872 * k + 192698 := by
    unfold C
    simp [show (1119744 * k + 385396) % 2 = 0 by omega]
    omega
  have h16 : C (559872 * k + 192698) = 279936 * k + 96349 := by
    unfold C
    simp [show (559872 * k + 192698) % 2 = 0 by omega]
    omega
  have h17 : C (279936 * k + 96349) = 839808 * k + 289048 := by
    unfold C
    simp [show (279936 * k + 96349) % 2 ≠ 0 by omega]
    omega
  have h18 : C (839808 * k + 289048) = 419904 * k + 144524 := by
    unfold C
    simp [show (839808 * k + 289048) % 2 = 0 by omega]
    omega
  have h19 : C (419904 * k + 144524) = 209952 * k + 72262 := by
    unfold C
    simp [show (419904 * k + 144524) % 2 = 0 by omega]
    omega
  have h20 : C (209952 * k + 72262) = 104976 * k + 36131 := by
    unfold C
    simp [show (209952 * k + 72262) % 2 = 0 by omega]
    omega
  have h21 : C (104976 * k + 36131) = 314928 * k + 108394 := by
    unfold C
    simp [show (104976 * k + 36131) % 2 ≠ 0 by omega]
    omega
  have h22 : C (314928 * k + 108394) = 157464 * k + 54197 := by
    unfold C
    simp [show (314928 * k + 108394) % 2 = 0 by omega]
    omega
  have h23 : C (157464 * k + 54197) = 472392 * k + 162592 := by
    unfold C
    simp [show (157464 * k + 54197) % 2 ≠ 0 by omega]
    omega
  have h24 : C (472392 * k + 162592) = 236196 * k + 81296 := by
    unfold C
    simp [show (472392 * k + 162592) % 2 = 0 by omega]
    omega
  have h25 : C (236196 * k + 81296) = 118098 * k + 40648 := by
    unfold C
    simp [show (236196 * k + 81296) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 40648) = 59049 * k + 20324 := by
    unfold C
    simp [show (118098 * k + 40648) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 22555) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 22555)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

end CollatzM16ShardH
