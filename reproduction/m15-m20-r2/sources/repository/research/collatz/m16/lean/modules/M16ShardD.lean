import Mathlib.Data.Nat.Prime.Basic

namespace CollatzM16ShardD

def C (n : Nat) : Nat := if n % 2 = 0 then n / 2 else 3 * n + 1

def iterate (n t : Nat) : Nat := Nat.rec n (fun _ previous => C previous) t

theorem descent_mod65536_8263 : ∀ k : Nat,
    iterate (65536 * k + 8263) 26 = 59049 * k + 7447 ∧
      59049 * k + 7447 < 65536 * k + 8263 := by
  intro k
  have h1 : C (65536 * k + 8263) = 196608 * k + 24790 := by
    unfold C
    simp [show (65536 * k + 8263) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 24790) = 98304 * k + 12395 := by
    unfold C
    simp [show (196608 * k + 24790) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 12395) = 294912 * k + 37186 := by
    unfold C
    simp [show (98304 * k + 12395) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 37186) = 147456 * k + 18593 := by
    unfold C
    simp [show (294912 * k + 37186) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 18593) = 442368 * k + 55780 := by
    unfold C
    simp [show (147456 * k + 18593) % 2 ≠ 0 by omega]
    omega
  have h6 : C (442368 * k + 55780) = 221184 * k + 27890 := by
    unfold C
    simp [show (442368 * k + 55780) % 2 = 0 by omega]
    omega
  have h7 : C (221184 * k + 27890) = 110592 * k + 13945 := by
    unfold C
    simp [show (221184 * k + 27890) % 2 = 0 by omega]
    omega
  have h8 : C (110592 * k + 13945) = 331776 * k + 41836 := by
    unfold C
    simp [show (110592 * k + 13945) % 2 ≠ 0 by omega]
    omega
  have h9 : C (331776 * k + 41836) = 165888 * k + 20918 := by
    unfold C
    simp [show (331776 * k + 41836) % 2 = 0 by omega]
    omega
  have h10 : C (165888 * k + 20918) = 82944 * k + 10459 := by
    unfold C
    simp [show (165888 * k + 20918) % 2 = 0 by omega]
    omega
  have h11 : C (82944 * k + 10459) = 248832 * k + 31378 := by
    unfold C
    simp [show (82944 * k + 10459) % 2 ≠ 0 by omega]
    omega
  have h12 : C (248832 * k + 31378) = 124416 * k + 15689 := by
    unfold C
    simp [show (248832 * k + 31378) % 2 = 0 by omega]
    omega
  have h13 : C (124416 * k + 15689) = 373248 * k + 47068 := by
    unfold C
    simp [show (124416 * k + 15689) % 2 ≠ 0 by omega]
    omega
  have h14 : C (373248 * k + 47068) = 186624 * k + 23534 := by
    unfold C
    simp [show (373248 * k + 47068) % 2 = 0 by omega]
    omega
  have h15 : C (186624 * k + 23534) = 93312 * k + 11767 := by
    unfold C
    simp [show (186624 * k + 23534) % 2 = 0 by omega]
    omega
  have h16 : C (93312 * k + 11767) = 279936 * k + 35302 := by
    unfold C
    simp [show (93312 * k + 11767) % 2 ≠ 0 by omega]
    omega
  have h17 : C (279936 * k + 35302) = 139968 * k + 17651 := by
    unfold C
    simp [show (279936 * k + 35302) % 2 = 0 by omega]
    omega
  have h18 : C (139968 * k + 17651) = 419904 * k + 52954 := by
    unfold C
    simp [show (139968 * k + 17651) % 2 ≠ 0 by omega]
    omega
  have h19 : C (419904 * k + 52954) = 209952 * k + 26477 := by
    unfold C
    simp [show (419904 * k + 52954) % 2 = 0 by omega]
    omega
  have h20 : C (209952 * k + 26477) = 629856 * k + 79432 := by
    unfold C
    simp [show (209952 * k + 26477) % 2 ≠ 0 by omega]
    omega
  have h21 : C (629856 * k + 79432) = 314928 * k + 39716 := by
    unfold C
    simp [show (629856 * k + 79432) % 2 = 0 by omega]
    omega
  have h22 : C (314928 * k + 39716) = 157464 * k + 19858 := by
    unfold C
    simp [show (314928 * k + 39716) % 2 = 0 by omega]
    omega
  have h23 : C (157464 * k + 19858) = 78732 * k + 9929 := by
    unfold C
    simp [show (157464 * k + 19858) % 2 = 0 by omega]
    omega
  have h24 : C (78732 * k + 9929) = 236196 * k + 29788 := by
    unfold C
    simp [show (78732 * k + 9929) % 2 ≠ 0 by omega]
    omega
  have h25 : C (236196 * k + 29788) = 118098 * k + 14894 := by
    unfold C
    simp [show (236196 * k + 29788) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 14894) = 59049 * k + 7447 := by
    unfold C
    simp [show (118098 * k + 14894) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 8263) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 8263)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_8551 : ∀ k : Nat,
    iterate (65536 * k + 8551) 26 = 59049 * k + 7706 ∧
      59049 * k + 7706 < 65536 * k + 8551 := by
  intro k
  have h1 : C (65536 * k + 8551) = 196608 * k + 25654 := by
    unfold C
    simp [show (65536 * k + 8551) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 25654) = 98304 * k + 12827 := by
    unfold C
    simp [show (196608 * k + 25654) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 12827) = 294912 * k + 38482 := by
    unfold C
    simp [show (98304 * k + 12827) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 38482) = 147456 * k + 19241 := by
    unfold C
    simp [show (294912 * k + 38482) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 19241) = 442368 * k + 57724 := by
    unfold C
    simp [show (147456 * k + 19241) % 2 ≠ 0 by omega]
    omega
  have h6 : C (442368 * k + 57724) = 221184 * k + 28862 := by
    unfold C
    simp [show (442368 * k + 57724) % 2 = 0 by omega]
    omega
  have h7 : C (221184 * k + 28862) = 110592 * k + 14431 := by
    unfold C
    simp [show (221184 * k + 28862) % 2 = 0 by omega]
    omega
  have h8 : C (110592 * k + 14431) = 331776 * k + 43294 := by
    unfold C
    simp [show (110592 * k + 14431) % 2 ≠ 0 by omega]
    omega
  have h9 : C (331776 * k + 43294) = 165888 * k + 21647 := by
    unfold C
    simp [show (331776 * k + 43294) % 2 = 0 by omega]
    omega
  have h10 : C (165888 * k + 21647) = 497664 * k + 64942 := by
    unfold C
    simp [show (165888 * k + 21647) % 2 ≠ 0 by omega]
    omega
  have h11 : C (497664 * k + 64942) = 248832 * k + 32471 := by
    unfold C
    simp [show (497664 * k + 64942) % 2 = 0 by omega]
    omega
  have h12 : C (248832 * k + 32471) = 746496 * k + 97414 := by
    unfold C
    simp [show (248832 * k + 32471) % 2 ≠ 0 by omega]
    omega
  have h13 : C (746496 * k + 97414) = 373248 * k + 48707 := by
    unfold C
    simp [show (746496 * k + 97414) % 2 = 0 by omega]
    omega
  have h14 : C (373248 * k + 48707) = 1119744 * k + 146122 := by
    unfold C
    simp [show (373248 * k + 48707) % 2 ≠ 0 by omega]
    omega
  have h15 : C (1119744 * k + 146122) = 559872 * k + 73061 := by
    unfold C
    simp [show (1119744 * k + 146122) % 2 = 0 by omega]
    omega
  have h16 : C (559872 * k + 73061) = 1679616 * k + 219184 := by
    unfold C
    simp [show (559872 * k + 73061) % 2 ≠ 0 by omega]
    omega
  have h17 : C (1679616 * k + 219184) = 839808 * k + 109592 := by
    unfold C
    simp [show (1679616 * k + 219184) % 2 = 0 by omega]
    omega
  have h18 : C (839808 * k + 109592) = 419904 * k + 54796 := by
    unfold C
    simp [show (839808 * k + 109592) % 2 = 0 by omega]
    omega
  have h19 : C (419904 * k + 54796) = 209952 * k + 27398 := by
    unfold C
    simp [show (419904 * k + 54796) % 2 = 0 by omega]
    omega
  have h20 : C (209952 * k + 27398) = 104976 * k + 13699 := by
    unfold C
    simp [show (209952 * k + 27398) % 2 = 0 by omega]
    omega
  have h21 : C (104976 * k + 13699) = 314928 * k + 41098 := by
    unfold C
    simp [show (104976 * k + 13699) % 2 ≠ 0 by omega]
    omega
  have h22 : C (314928 * k + 41098) = 157464 * k + 20549 := by
    unfold C
    simp [show (314928 * k + 41098) % 2 = 0 by omega]
    omega
  have h23 : C (157464 * k + 20549) = 472392 * k + 61648 := by
    unfold C
    simp [show (157464 * k + 20549) % 2 ≠ 0 by omega]
    omega
  have h24 : C (472392 * k + 61648) = 236196 * k + 30824 := by
    unfold C
    simp [show (472392 * k + 61648) % 2 = 0 by omega]
    omega
  have h25 : C (236196 * k + 30824) = 118098 * k + 15412 := by
    unfold C
    simp [show (236196 * k + 30824) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 15412) = 59049 * k + 7706 := by
    unfold C
    simp [show (118098 * k + 15412) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 8551) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 8551)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_8671 : ∀ k : Nat,
    iterate (65536 * k + 8671) 26 = 59049 * k + 7814 ∧
      59049 * k + 7814 < 65536 * k + 8671 := by
  intro k
  have h1 : C (65536 * k + 8671) = 196608 * k + 26014 := by
    unfold C
    simp [show (65536 * k + 8671) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 26014) = 98304 * k + 13007 := by
    unfold C
    simp [show (196608 * k + 26014) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 13007) = 294912 * k + 39022 := by
    unfold C
    simp [show (98304 * k + 13007) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 39022) = 147456 * k + 19511 := by
    unfold C
    simp [show (294912 * k + 39022) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 19511) = 442368 * k + 58534 := by
    unfold C
    simp [show (147456 * k + 19511) % 2 ≠ 0 by omega]
    omega
  have h6 : C (442368 * k + 58534) = 221184 * k + 29267 := by
    unfold C
    simp [show (442368 * k + 58534) % 2 = 0 by omega]
    omega
  have h7 : C (221184 * k + 29267) = 663552 * k + 87802 := by
    unfold C
    simp [show (221184 * k + 29267) % 2 ≠ 0 by omega]
    omega
  have h8 : C (663552 * k + 87802) = 331776 * k + 43901 := by
    unfold C
    simp [show (663552 * k + 87802) % 2 = 0 by omega]
    omega
  have h9 : C (331776 * k + 43901) = 995328 * k + 131704 := by
    unfold C
    simp [show (331776 * k + 43901) % 2 ≠ 0 by omega]
    omega
  have h10 : C (995328 * k + 131704) = 497664 * k + 65852 := by
    unfold C
    simp [show (995328 * k + 131704) % 2 = 0 by omega]
    omega
  have h11 : C (497664 * k + 65852) = 248832 * k + 32926 := by
    unfold C
    simp [show (497664 * k + 65852) % 2 = 0 by omega]
    omega
  have h12 : C (248832 * k + 32926) = 124416 * k + 16463 := by
    unfold C
    simp [show (248832 * k + 32926) % 2 = 0 by omega]
    omega
  have h13 : C (124416 * k + 16463) = 373248 * k + 49390 := by
    unfold C
    simp [show (124416 * k + 16463) % 2 ≠ 0 by omega]
    omega
  have h14 : C (373248 * k + 49390) = 186624 * k + 24695 := by
    unfold C
    simp [show (373248 * k + 49390) % 2 = 0 by omega]
    omega
  have h15 : C (186624 * k + 24695) = 559872 * k + 74086 := by
    unfold C
    simp [show (186624 * k + 24695) % 2 ≠ 0 by omega]
    omega
  have h16 : C (559872 * k + 74086) = 279936 * k + 37043 := by
    unfold C
    simp [show (559872 * k + 74086) % 2 = 0 by omega]
    omega
  have h17 : C (279936 * k + 37043) = 839808 * k + 111130 := by
    unfold C
    simp [show (279936 * k + 37043) % 2 ≠ 0 by omega]
    omega
  have h18 : C (839808 * k + 111130) = 419904 * k + 55565 := by
    unfold C
    simp [show (839808 * k + 111130) % 2 = 0 by omega]
    omega
  have h19 : C (419904 * k + 55565) = 1259712 * k + 166696 := by
    unfold C
    simp [show (419904 * k + 55565) % 2 ≠ 0 by omega]
    omega
  have h20 : C (1259712 * k + 166696) = 629856 * k + 83348 := by
    unfold C
    simp [show (1259712 * k + 166696) % 2 = 0 by omega]
    omega
  have h21 : C (629856 * k + 83348) = 314928 * k + 41674 := by
    unfold C
    simp [show (629856 * k + 83348) % 2 = 0 by omega]
    omega
  have h22 : C (314928 * k + 41674) = 157464 * k + 20837 := by
    unfold C
    simp [show (314928 * k + 41674) % 2 = 0 by omega]
    omega
  have h23 : C (157464 * k + 20837) = 472392 * k + 62512 := by
    unfold C
    simp [show (157464 * k + 20837) % 2 ≠ 0 by omega]
    omega
  have h24 : C (472392 * k + 62512) = 236196 * k + 31256 := by
    unfold C
    simp [show (472392 * k + 62512) % 2 = 0 by omega]
    omega
  have h25 : C (236196 * k + 31256) = 118098 * k + 15628 := by
    unfold C
    simp [show (236196 * k + 31256) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 15628) = 59049 * k + 7814 := by
    unfold C
    simp [show (118098 * k + 15628) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 8671) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 8671)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_8863 : ∀ k : Nat,
    iterate (65536 * k + 8863) 26 = 59049 * k + 7987 ∧
      59049 * k + 7987 < 65536 * k + 8863 := by
  intro k
  have h1 : C (65536 * k + 8863) = 196608 * k + 26590 := by
    unfold C
    simp [show (65536 * k + 8863) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 26590) = 98304 * k + 13295 := by
    unfold C
    simp [show (196608 * k + 26590) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 13295) = 294912 * k + 39886 := by
    unfold C
    simp [show (98304 * k + 13295) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 39886) = 147456 * k + 19943 := by
    unfold C
    simp [show (294912 * k + 39886) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 19943) = 442368 * k + 59830 := by
    unfold C
    simp [show (147456 * k + 19943) % 2 ≠ 0 by omega]
    omega
  have h6 : C (442368 * k + 59830) = 221184 * k + 29915 := by
    unfold C
    simp [show (442368 * k + 59830) % 2 = 0 by omega]
    omega
  have h7 : C (221184 * k + 29915) = 663552 * k + 89746 := by
    unfold C
    simp [show (221184 * k + 29915) % 2 ≠ 0 by omega]
    omega
  have h8 : C (663552 * k + 89746) = 331776 * k + 44873 := by
    unfold C
    simp [show (663552 * k + 89746) % 2 = 0 by omega]
    omega
  have h9 : C (331776 * k + 44873) = 995328 * k + 134620 := by
    unfold C
    simp [show (331776 * k + 44873) % 2 ≠ 0 by omega]
    omega
  have h10 : C (995328 * k + 134620) = 497664 * k + 67310 := by
    unfold C
    simp [show (995328 * k + 134620) % 2 = 0 by omega]
    omega
  have h11 : C (497664 * k + 67310) = 248832 * k + 33655 := by
    unfold C
    simp [show (497664 * k + 67310) % 2 = 0 by omega]
    omega
  have h12 : C (248832 * k + 33655) = 746496 * k + 100966 := by
    unfold C
    simp [show (248832 * k + 33655) % 2 ≠ 0 by omega]
    omega
  have h13 : C (746496 * k + 100966) = 373248 * k + 50483 := by
    unfold C
    simp [show (746496 * k + 100966) % 2 = 0 by omega]
    omega
  have h14 : C (373248 * k + 50483) = 1119744 * k + 151450 := by
    unfold C
    simp [show (373248 * k + 50483) % 2 ≠ 0 by omega]
    omega
  have h15 : C (1119744 * k + 151450) = 559872 * k + 75725 := by
    unfold C
    simp [show (1119744 * k + 151450) % 2 = 0 by omega]
    omega
  have h16 : C (559872 * k + 75725) = 1679616 * k + 227176 := by
    unfold C
    simp [show (559872 * k + 75725) % 2 ≠ 0 by omega]
    omega
  have h17 : C (1679616 * k + 227176) = 839808 * k + 113588 := by
    unfold C
    simp [show (1679616 * k + 227176) % 2 = 0 by omega]
    omega
  have h18 : C (839808 * k + 113588) = 419904 * k + 56794 := by
    unfold C
    simp [show (839808 * k + 113588) % 2 = 0 by omega]
    omega
  have h19 : C (419904 * k + 56794) = 209952 * k + 28397 := by
    unfold C
    simp [show (419904 * k + 56794) % 2 = 0 by omega]
    omega
  have h20 : C (209952 * k + 28397) = 629856 * k + 85192 := by
    unfold C
    simp [show (209952 * k + 28397) % 2 ≠ 0 by omega]
    omega
  have h21 : C (629856 * k + 85192) = 314928 * k + 42596 := by
    unfold C
    simp [show (629856 * k + 85192) % 2 = 0 by omega]
    omega
  have h22 : C (314928 * k + 42596) = 157464 * k + 21298 := by
    unfold C
    simp [show (314928 * k + 42596) % 2 = 0 by omega]
    omega
  have h23 : C (157464 * k + 21298) = 78732 * k + 10649 := by
    unfold C
    simp [show (157464 * k + 21298) % 2 = 0 by omega]
    omega
  have h24 : C (78732 * k + 10649) = 236196 * k + 31948 := by
    unfold C
    simp [show (78732 * k + 10649) % 2 ≠ 0 by omega]
    omega
  have h25 : C (236196 * k + 31948) = 118098 * k + 15974 := by
    unfold C
    simp [show (236196 * k + 31948) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 15974) = 59049 * k + 7987 := by
    unfold C
    simp [show (118098 * k + 15974) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 8863) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 8863)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_9119 : ∀ k : Nat,
    iterate (65536 * k + 9119) 26 = 59049 * k + 8218 ∧
      59049 * k + 8218 < 65536 * k + 9119 := by
  intro k
  have h1 : C (65536 * k + 9119) = 196608 * k + 27358 := by
    unfold C
    simp [show (65536 * k + 9119) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 27358) = 98304 * k + 13679 := by
    unfold C
    simp [show (196608 * k + 27358) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 13679) = 294912 * k + 41038 := by
    unfold C
    simp [show (98304 * k + 13679) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 41038) = 147456 * k + 20519 := by
    unfold C
    simp [show (294912 * k + 41038) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 20519) = 442368 * k + 61558 := by
    unfold C
    simp [show (147456 * k + 20519) % 2 ≠ 0 by omega]
    omega
  have h6 : C (442368 * k + 61558) = 221184 * k + 30779 := by
    unfold C
    simp [show (442368 * k + 61558) % 2 = 0 by omega]
    omega
  have h7 : C (221184 * k + 30779) = 663552 * k + 92338 := by
    unfold C
    simp [show (221184 * k + 30779) % 2 ≠ 0 by omega]
    omega
  have h8 : C (663552 * k + 92338) = 331776 * k + 46169 := by
    unfold C
    simp [show (663552 * k + 92338) % 2 = 0 by omega]
    omega
  have h9 : C (331776 * k + 46169) = 995328 * k + 138508 := by
    unfold C
    simp [show (331776 * k + 46169) % 2 ≠ 0 by omega]
    omega
  have h10 : C (995328 * k + 138508) = 497664 * k + 69254 := by
    unfold C
    simp [show (995328 * k + 138508) % 2 = 0 by omega]
    omega
  have h11 : C (497664 * k + 69254) = 248832 * k + 34627 := by
    unfold C
    simp [show (497664 * k + 69254) % 2 = 0 by omega]
    omega
  have h12 : C (248832 * k + 34627) = 746496 * k + 103882 := by
    unfold C
    simp [show (248832 * k + 34627) % 2 ≠ 0 by omega]
    omega
  have h13 : C (746496 * k + 103882) = 373248 * k + 51941 := by
    unfold C
    simp [show (746496 * k + 103882) % 2 = 0 by omega]
    omega
  have h14 : C (373248 * k + 51941) = 1119744 * k + 155824 := by
    unfold C
    simp [show (373248 * k + 51941) % 2 ≠ 0 by omega]
    omega
  have h15 : C (1119744 * k + 155824) = 559872 * k + 77912 := by
    unfold C
    simp [show (1119744 * k + 155824) % 2 = 0 by omega]
    omega
  have h16 : C (559872 * k + 77912) = 279936 * k + 38956 := by
    unfold C
    simp [show (559872 * k + 77912) % 2 = 0 by omega]
    omega
  have h17 : C (279936 * k + 38956) = 139968 * k + 19478 := by
    unfold C
    simp [show (279936 * k + 38956) % 2 = 0 by omega]
    omega
  have h18 : C (139968 * k + 19478) = 69984 * k + 9739 := by
    unfold C
    simp [show (139968 * k + 19478) % 2 = 0 by omega]
    omega
  have h19 : C (69984 * k + 9739) = 209952 * k + 29218 := by
    unfold C
    simp [show (69984 * k + 9739) % 2 ≠ 0 by omega]
    omega
  have h20 : C (209952 * k + 29218) = 104976 * k + 14609 := by
    unfold C
    simp [show (209952 * k + 29218) % 2 = 0 by omega]
    omega
  have h21 : C (104976 * k + 14609) = 314928 * k + 43828 := by
    unfold C
    simp [show (104976 * k + 14609) % 2 ≠ 0 by omega]
    omega
  have h22 : C (314928 * k + 43828) = 157464 * k + 21914 := by
    unfold C
    simp [show (314928 * k + 43828) % 2 = 0 by omega]
    omega
  have h23 : C (157464 * k + 21914) = 78732 * k + 10957 := by
    unfold C
    simp [show (157464 * k + 21914) % 2 = 0 by omega]
    omega
  have h24 : C (78732 * k + 10957) = 236196 * k + 32872 := by
    unfold C
    simp [show (78732 * k + 10957) % 2 ≠ 0 by omega]
    omega
  have h25 : C (236196 * k + 32872) = 118098 * k + 16436 := by
    unfold C
    simp [show (236196 * k + 32872) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 16436) = 59049 * k + 8218 := by
    unfold C
    simp [show (118098 * k + 16436) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 9119) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 9119)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_9199 : ∀ k : Nat,
    iterate (65536 * k + 9199) 26 = 59049 * k + 8290 ∧
      59049 * k + 8290 < 65536 * k + 9199 := by
  intro k
  have h1 : C (65536 * k + 9199) = 196608 * k + 27598 := by
    unfold C
    simp [show (65536 * k + 9199) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 27598) = 98304 * k + 13799 := by
    unfold C
    simp [show (196608 * k + 27598) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 13799) = 294912 * k + 41398 := by
    unfold C
    simp [show (98304 * k + 13799) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 41398) = 147456 * k + 20699 := by
    unfold C
    simp [show (294912 * k + 41398) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 20699) = 442368 * k + 62098 := by
    unfold C
    simp [show (147456 * k + 20699) % 2 ≠ 0 by omega]
    omega
  have h6 : C (442368 * k + 62098) = 221184 * k + 31049 := by
    unfold C
    simp [show (442368 * k + 62098) % 2 = 0 by omega]
    omega
  have h7 : C (221184 * k + 31049) = 663552 * k + 93148 := by
    unfold C
    simp [show (221184 * k + 31049) % 2 ≠ 0 by omega]
    omega
  have h8 : C (663552 * k + 93148) = 331776 * k + 46574 := by
    unfold C
    simp [show (663552 * k + 93148) % 2 = 0 by omega]
    omega
  have h9 : C (331776 * k + 46574) = 165888 * k + 23287 := by
    unfold C
    simp [show (331776 * k + 46574) % 2 = 0 by omega]
    omega
  have h10 : C (165888 * k + 23287) = 497664 * k + 69862 := by
    unfold C
    simp [show (165888 * k + 23287) % 2 ≠ 0 by omega]
    omega
  have h11 : C (497664 * k + 69862) = 248832 * k + 34931 := by
    unfold C
    simp [show (497664 * k + 69862) % 2 = 0 by omega]
    omega
  have h12 : C (248832 * k + 34931) = 746496 * k + 104794 := by
    unfold C
    simp [show (248832 * k + 34931) % 2 ≠ 0 by omega]
    omega
  have h13 : C (746496 * k + 104794) = 373248 * k + 52397 := by
    unfold C
    simp [show (746496 * k + 104794) % 2 = 0 by omega]
    omega
  have h14 : C (373248 * k + 52397) = 1119744 * k + 157192 := by
    unfold C
    simp [show (373248 * k + 52397) % 2 ≠ 0 by omega]
    omega
  have h15 : C (1119744 * k + 157192) = 559872 * k + 78596 := by
    unfold C
    simp [show (1119744 * k + 157192) % 2 = 0 by omega]
    omega
  have h16 : C (559872 * k + 78596) = 279936 * k + 39298 := by
    unfold C
    simp [show (559872 * k + 78596) % 2 = 0 by omega]
    omega
  have h17 : C (279936 * k + 39298) = 139968 * k + 19649 := by
    unfold C
    simp [show (279936 * k + 39298) % 2 = 0 by omega]
    omega
  have h18 : C (139968 * k + 19649) = 419904 * k + 58948 := by
    unfold C
    simp [show (139968 * k + 19649) % 2 ≠ 0 by omega]
    omega
  have h19 : C (419904 * k + 58948) = 209952 * k + 29474 := by
    unfold C
    simp [show (419904 * k + 58948) % 2 = 0 by omega]
    omega
  have h20 : C (209952 * k + 29474) = 104976 * k + 14737 := by
    unfold C
    simp [show (209952 * k + 29474) % 2 = 0 by omega]
    omega
  have h21 : C (104976 * k + 14737) = 314928 * k + 44212 := by
    unfold C
    simp [show (104976 * k + 14737) % 2 ≠ 0 by omega]
    omega
  have h22 : C (314928 * k + 44212) = 157464 * k + 22106 := by
    unfold C
    simp [show (314928 * k + 44212) % 2 = 0 by omega]
    omega
  have h23 : C (157464 * k + 22106) = 78732 * k + 11053 := by
    unfold C
    simp [show (157464 * k + 22106) % 2 = 0 by omega]
    omega
  have h24 : C (78732 * k + 11053) = 236196 * k + 33160 := by
    unfold C
    simp [show (78732 * k + 11053) % 2 ≠ 0 by omega]
    omega
  have h25 : C (236196 * k + 33160) = 118098 * k + 16580 := by
    unfold C
    simp [show (236196 * k + 33160) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 16580) = 59049 * k + 8290 := by
    unfold C
    simp [show (118098 * k + 16580) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 9199) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 9199)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_9319 : ∀ k : Nat,
    iterate (65536 * k + 9319) 26 = 59049 * k + 8398 ∧
      59049 * k + 8398 < 65536 * k + 9319 := by
  intro k
  have h1 : C (65536 * k + 9319) = 196608 * k + 27958 := by
    unfold C
    simp [show (65536 * k + 9319) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 27958) = 98304 * k + 13979 := by
    unfold C
    simp [show (196608 * k + 27958) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 13979) = 294912 * k + 41938 := by
    unfold C
    simp [show (98304 * k + 13979) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 41938) = 147456 * k + 20969 := by
    unfold C
    simp [show (294912 * k + 41938) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 20969) = 442368 * k + 62908 := by
    unfold C
    simp [show (147456 * k + 20969) % 2 ≠ 0 by omega]
    omega
  have h6 : C (442368 * k + 62908) = 221184 * k + 31454 := by
    unfold C
    simp [show (442368 * k + 62908) % 2 = 0 by omega]
    omega
  have h7 : C (221184 * k + 31454) = 110592 * k + 15727 := by
    unfold C
    simp [show (221184 * k + 31454) % 2 = 0 by omega]
    omega
  have h8 : C (110592 * k + 15727) = 331776 * k + 47182 := by
    unfold C
    simp [show (110592 * k + 15727) % 2 ≠ 0 by omega]
    omega
  have h9 : C (331776 * k + 47182) = 165888 * k + 23591 := by
    unfold C
    simp [show (331776 * k + 47182) % 2 = 0 by omega]
    omega
  have h10 : C (165888 * k + 23591) = 497664 * k + 70774 := by
    unfold C
    simp [show (165888 * k + 23591) % 2 ≠ 0 by omega]
    omega
  have h11 : C (497664 * k + 70774) = 248832 * k + 35387 := by
    unfold C
    simp [show (497664 * k + 70774) % 2 = 0 by omega]
    omega
  have h12 : C (248832 * k + 35387) = 746496 * k + 106162 := by
    unfold C
    simp [show (248832 * k + 35387) % 2 ≠ 0 by omega]
    omega
  have h13 : C (746496 * k + 106162) = 373248 * k + 53081 := by
    unfold C
    simp [show (746496 * k + 106162) % 2 = 0 by omega]
    omega
  have h14 : C (373248 * k + 53081) = 1119744 * k + 159244 := by
    unfold C
    simp [show (373248 * k + 53081) % 2 ≠ 0 by omega]
    omega
  have h15 : C (1119744 * k + 159244) = 559872 * k + 79622 := by
    unfold C
    simp [show (1119744 * k + 159244) % 2 = 0 by omega]
    omega
  have h16 : C (559872 * k + 79622) = 279936 * k + 39811 := by
    unfold C
    simp [show (559872 * k + 79622) % 2 = 0 by omega]
    omega
  have h17 : C (279936 * k + 39811) = 839808 * k + 119434 := by
    unfold C
    simp [show (279936 * k + 39811) % 2 ≠ 0 by omega]
    omega
  have h18 : C (839808 * k + 119434) = 419904 * k + 59717 := by
    unfold C
    simp [show (839808 * k + 119434) % 2 = 0 by omega]
    omega
  have h19 : C (419904 * k + 59717) = 1259712 * k + 179152 := by
    unfold C
    simp [show (419904 * k + 59717) % 2 ≠ 0 by omega]
    omega
  have h20 : C (1259712 * k + 179152) = 629856 * k + 89576 := by
    unfold C
    simp [show (1259712 * k + 179152) % 2 = 0 by omega]
    omega
  have h21 : C (629856 * k + 89576) = 314928 * k + 44788 := by
    unfold C
    simp [show (629856 * k + 89576) % 2 = 0 by omega]
    omega
  have h22 : C (314928 * k + 44788) = 157464 * k + 22394 := by
    unfold C
    simp [show (314928 * k + 44788) % 2 = 0 by omega]
    omega
  have h23 : C (157464 * k + 22394) = 78732 * k + 11197 := by
    unfold C
    simp [show (157464 * k + 22394) % 2 = 0 by omega]
    omega
  have h24 : C (78732 * k + 11197) = 236196 * k + 33592 := by
    unfold C
    simp [show (78732 * k + 11197) % 2 ≠ 0 by omega]
    omega
  have h25 : C (236196 * k + 33592) = 118098 * k + 16796 := by
    unfold C
    simp [show (236196 * k + 33592) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 16796) = 59049 * k + 8398 := by
    unfold C
    simp [show (118098 * k + 16796) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 9319) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 9319)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_9543 : ∀ k : Nat,
    iterate (65536 * k + 9543) 26 = 59049 * k + 8600 ∧
      59049 * k + 8600 < 65536 * k + 9543 := by
  intro k
  have h1 : C (65536 * k + 9543) = 196608 * k + 28630 := by
    unfold C
    simp [show (65536 * k + 9543) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 28630) = 98304 * k + 14315 := by
    unfold C
    simp [show (196608 * k + 28630) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 14315) = 294912 * k + 42946 := by
    unfold C
    simp [show (98304 * k + 14315) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 42946) = 147456 * k + 21473 := by
    unfold C
    simp [show (294912 * k + 42946) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 21473) = 442368 * k + 64420 := by
    unfold C
    simp [show (147456 * k + 21473) % 2 ≠ 0 by omega]
    omega
  have h6 : C (442368 * k + 64420) = 221184 * k + 32210 := by
    unfold C
    simp [show (442368 * k + 64420) % 2 = 0 by omega]
    omega
  have h7 : C (221184 * k + 32210) = 110592 * k + 16105 := by
    unfold C
    simp [show (221184 * k + 32210) % 2 = 0 by omega]
    omega
  have h8 : C (110592 * k + 16105) = 331776 * k + 48316 := by
    unfold C
    simp [show (110592 * k + 16105) % 2 ≠ 0 by omega]
    omega
  have h9 : C (331776 * k + 48316) = 165888 * k + 24158 := by
    unfold C
    simp [show (331776 * k + 48316) % 2 = 0 by omega]
    omega
  have h10 : C (165888 * k + 24158) = 82944 * k + 12079 := by
    unfold C
    simp [show (165888 * k + 24158) % 2 = 0 by omega]
    omega
  have h11 : C (82944 * k + 12079) = 248832 * k + 36238 := by
    unfold C
    simp [show (82944 * k + 12079) % 2 ≠ 0 by omega]
    omega
  have h12 : C (248832 * k + 36238) = 124416 * k + 18119 := by
    unfold C
    simp [show (248832 * k + 36238) % 2 = 0 by omega]
    omega
  have h13 : C (124416 * k + 18119) = 373248 * k + 54358 := by
    unfold C
    simp [show (124416 * k + 18119) % 2 ≠ 0 by omega]
    omega
  have h14 : C (373248 * k + 54358) = 186624 * k + 27179 := by
    unfold C
    simp [show (373248 * k + 54358) % 2 = 0 by omega]
    omega
  have h15 : C (186624 * k + 27179) = 559872 * k + 81538 := by
    unfold C
    simp [show (186624 * k + 27179) % 2 ≠ 0 by omega]
    omega
  have h16 : C (559872 * k + 81538) = 279936 * k + 40769 := by
    unfold C
    simp [show (559872 * k + 81538) % 2 = 0 by omega]
    omega
  have h17 : C (279936 * k + 40769) = 839808 * k + 122308 := by
    unfold C
    simp [show (279936 * k + 40769) % 2 ≠ 0 by omega]
    omega
  have h18 : C (839808 * k + 122308) = 419904 * k + 61154 := by
    unfold C
    simp [show (839808 * k + 122308) % 2 = 0 by omega]
    omega
  have h19 : C (419904 * k + 61154) = 209952 * k + 30577 := by
    unfold C
    simp [show (419904 * k + 61154) % 2 = 0 by omega]
    omega
  have h20 : C (209952 * k + 30577) = 629856 * k + 91732 := by
    unfold C
    simp [show (209952 * k + 30577) % 2 ≠ 0 by omega]
    omega
  have h21 : C (629856 * k + 91732) = 314928 * k + 45866 := by
    unfold C
    simp [show (629856 * k + 91732) % 2 = 0 by omega]
    omega
  have h22 : C (314928 * k + 45866) = 157464 * k + 22933 := by
    unfold C
    simp [show (314928 * k + 45866) % 2 = 0 by omega]
    omega
  have h23 : C (157464 * k + 22933) = 472392 * k + 68800 := by
    unfold C
    simp [show (157464 * k + 22933) % 2 ≠ 0 by omega]
    omega
  have h24 : C (472392 * k + 68800) = 236196 * k + 34400 := by
    unfold C
    simp [show (472392 * k + 68800) % 2 = 0 by omega]
    omega
  have h25 : C (236196 * k + 34400) = 118098 * k + 17200 := by
    unfold C
    simp [show (236196 * k + 34400) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 17200) = 59049 * k + 8600 := by
    unfold C
    simp [show (118098 * k + 17200) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 9543) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 9543)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_9599 : ∀ k : Nat,
    iterate (65536 * k + 9599) 26 = 59049 * k + 8650 ∧
      59049 * k + 8650 < 65536 * k + 9599 := by
  intro k
  have h1 : C (65536 * k + 9599) = 196608 * k + 28798 := by
    unfold C
    simp [show (65536 * k + 9599) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 28798) = 98304 * k + 14399 := by
    unfold C
    simp [show (196608 * k + 28798) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 14399) = 294912 * k + 43198 := by
    unfold C
    simp [show (98304 * k + 14399) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 43198) = 147456 * k + 21599 := by
    unfold C
    simp [show (294912 * k + 43198) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 21599) = 442368 * k + 64798 := by
    unfold C
    simp [show (147456 * k + 21599) % 2 ≠ 0 by omega]
    omega
  have h6 : C (442368 * k + 64798) = 221184 * k + 32399 := by
    unfold C
    simp [show (442368 * k + 64798) % 2 = 0 by omega]
    omega
  have h7 : C (221184 * k + 32399) = 663552 * k + 97198 := by
    unfold C
    simp [show (221184 * k + 32399) % 2 ≠ 0 by omega]
    omega
  have h8 : C (663552 * k + 97198) = 331776 * k + 48599 := by
    unfold C
    simp [show (663552 * k + 97198) % 2 = 0 by omega]
    omega
  have h9 : C (331776 * k + 48599) = 995328 * k + 145798 := by
    unfold C
    simp [show (331776 * k + 48599) % 2 ≠ 0 by omega]
    omega
  have h10 : C (995328 * k + 145798) = 497664 * k + 72899 := by
    unfold C
    simp [show (995328 * k + 145798) % 2 = 0 by omega]
    omega
  have h11 : C (497664 * k + 72899) = 1492992 * k + 218698 := by
    unfold C
    simp [show (497664 * k + 72899) % 2 ≠ 0 by omega]
    omega
  have h12 : C (1492992 * k + 218698) = 746496 * k + 109349 := by
    unfold C
    simp [show (1492992 * k + 218698) % 2 = 0 by omega]
    omega
  have h13 : C (746496 * k + 109349) = 2239488 * k + 328048 := by
    unfold C
    simp [show (746496 * k + 109349) % 2 ≠ 0 by omega]
    omega
  have h14 : C (2239488 * k + 328048) = 1119744 * k + 164024 := by
    unfold C
    simp [show (2239488 * k + 328048) % 2 = 0 by omega]
    omega
  have h15 : C (1119744 * k + 164024) = 559872 * k + 82012 := by
    unfold C
    simp [show (1119744 * k + 164024) % 2 = 0 by omega]
    omega
  have h16 : C (559872 * k + 82012) = 279936 * k + 41006 := by
    unfold C
    simp [show (559872 * k + 82012) % 2 = 0 by omega]
    omega
  have h17 : C (279936 * k + 41006) = 139968 * k + 20503 := by
    unfold C
    simp [show (279936 * k + 41006) % 2 = 0 by omega]
    omega
  have h18 : C (139968 * k + 20503) = 419904 * k + 61510 := by
    unfold C
    simp [show (139968 * k + 20503) % 2 ≠ 0 by omega]
    omega
  have h19 : C (419904 * k + 61510) = 209952 * k + 30755 := by
    unfold C
    simp [show (419904 * k + 61510) % 2 = 0 by omega]
    omega
  have h20 : C (209952 * k + 30755) = 629856 * k + 92266 := by
    unfold C
    simp [show (209952 * k + 30755) % 2 ≠ 0 by omega]
    omega
  have h21 : C (629856 * k + 92266) = 314928 * k + 46133 := by
    unfold C
    simp [show (629856 * k + 92266) % 2 = 0 by omega]
    omega
  have h22 : C (314928 * k + 46133) = 944784 * k + 138400 := by
    unfold C
    simp [show (314928 * k + 46133) % 2 ≠ 0 by omega]
    omega
  have h23 : C (944784 * k + 138400) = 472392 * k + 69200 := by
    unfold C
    simp [show (944784 * k + 138400) % 2 = 0 by omega]
    omega
  have h24 : C (472392 * k + 69200) = 236196 * k + 34600 := by
    unfold C
    simp [show (472392 * k + 69200) % 2 = 0 by omega]
    omega
  have h25 : C (236196 * k + 34600) = 118098 * k + 17300 := by
    unfold C
    simp [show (236196 * k + 34600) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 17300) = 59049 * k + 8650 := by
    unfold C
    simp [show (118098 * k + 17300) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 9599) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 9599)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_9819 : ∀ k : Nat,
    iterate (65536 * k + 9819) 26 = 59049 * k + 8849 ∧
      59049 * k + 8849 < 65536 * k + 9819 := by
  intro k
  have h1 : C (65536 * k + 9819) = 196608 * k + 29458 := by
    unfold C
    simp [show (65536 * k + 9819) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 29458) = 98304 * k + 14729 := by
    unfold C
    simp [show (196608 * k + 29458) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 14729) = 294912 * k + 44188 := by
    unfold C
    simp [show (98304 * k + 14729) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 44188) = 147456 * k + 22094 := by
    unfold C
    simp [show (294912 * k + 44188) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 22094) = 73728 * k + 11047 := by
    unfold C
    simp [show (147456 * k + 22094) % 2 = 0 by omega]
    omega
  have h6 : C (73728 * k + 11047) = 221184 * k + 33142 := by
    unfold C
    simp [show (73728 * k + 11047) % 2 ≠ 0 by omega]
    omega
  have h7 : C (221184 * k + 33142) = 110592 * k + 16571 := by
    unfold C
    simp [show (221184 * k + 33142) % 2 = 0 by omega]
    omega
  have h8 : C (110592 * k + 16571) = 331776 * k + 49714 := by
    unfold C
    simp [show (110592 * k + 16571) % 2 ≠ 0 by omega]
    omega
  have h9 : C (331776 * k + 49714) = 165888 * k + 24857 := by
    unfold C
    simp [show (331776 * k + 49714) % 2 = 0 by omega]
    omega
  have h10 : C (165888 * k + 24857) = 497664 * k + 74572 := by
    unfold C
    simp [show (165888 * k + 24857) % 2 ≠ 0 by omega]
    omega
  have h11 : C (497664 * k + 74572) = 248832 * k + 37286 := by
    unfold C
    simp [show (497664 * k + 74572) % 2 = 0 by omega]
    omega
  have h12 : C (248832 * k + 37286) = 124416 * k + 18643 := by
    unfold C
    simp [show (248832 * k + 37286) % 2 = 0 by omega]
    omega
  have h13 : C (124416 * k + 18643) = 373248 * k + 55930 := by
    unfold C
    simp [show (124416 * k + 18643) % 2 ≠ 0 by omega]
    omega
  have h14 : C (373248 * k + 55930) = 186624 * k + 27965 := by
    unfold C
    simp [show (373248 * k + 55930) % 2 = 0 by omega]
    omega
  have h15 : C (186624 * k + 27965) = 559872 * k + 83896 := by
    unfold C
    simp [show (186624 * k + 27965) % 2 ≠ 0 by omega]
    omega
  have h16 : C (559872 * k + 83896) = 279936 * k + 41948 := by
    unfold C
    simp [show (559872 * k + 83896) % 2 = 0 by omega]
    omega
  have h17 : C (279936 * k + 41948) = 139968 * k + 20974 := by
    unfold C
    simp [show (279936 * k + 41948) % 2 = 0 by omega]
    omega
  have h18 : C (139968 * k + 20974) = 69984 * k + 10487 := by
    unfold C
    simp [show (139968 * k + 20974) % 2 = 0 by omega]
    omega
  have h19 : C (69984 * k + 10487) = 209952 * k + 31462 := by
    unfold C
    simp [show (69984 * k + 10487) % 2 ≠ 0 by omega]
    omega
  have h20 : C (209952 * k + 31462) = 104976 * k + 15731 := by
    unfold C
    simp [show (209952 * k + 31462) % 2 = 0 by omega]
    omega
  have h21 : C (104976 * k + 15731) = 314928 * k + 47194 := by
    unfold C
    simp [show (104976 * k + 15731) % 2 ≠ 0 by omega]
    omega
  have h22 : C (314928 * k + 47194) = 157464 * k + 23597 := by
    unfold C
    simp [show (314928 * k + 47194) % 2 = 0 by omega]
    omega
  have h23 : C (157464 * k + 23597) = 472392 * k + 70792 := by
    unfold C
    simp [show (157464 * k + 23597) % 2 ≠ 0 by omega]
    omega
  have h24 : C (472392 * k + 70792) = 236196 * k + 35396 := by
    unfold C
    simp [show (472392 * k + 70792) % 2 = 0 by omega]
    omega
  have h25 : C (236196 * k + 35396) = 118098 * k + 17698 := by
    unfold C
    simp [show (236196 * k + 35396) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 17698) = 59049 * k + 8849 := by
    unfold C
    simp [show (118098 * k + 17698) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 9819) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 9819)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_9935 : ∀ k : Nat,
    iterate (65536 * k + 9935) 26 = 59049 * k + 8953 ∧
      59049 * k + 8953 < 65536 * k + 9935 := by
  intro k
  have h1 : C (65536 * k + 9935) = 196608 * k + 29806 := by
    unfold C
    simp [show (65536 * k + 9935) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 29806) = 98304 * k + 14903 := by
    unfold C
    simp [show (196608 * k + 29806) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 14903) = 294912 * k + 44710 := by
    unfold C
    simp [show (98304 * k + 14903) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 44710) = 147456 * k + 22355 := by
    unfold C
    simp [show (294912 * k + 44710) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 22355) = 442368 * k + 67066 := by
    unfold C
    simp [show (147456 * k + 22355) % 2 ≠ 0 by omega]
    omega
  have h6 : C (442368 * k + 67066) = 221184 * k + 33533 := by
    unfold C
    simp [show (442368 * k + 67066) % 2 = 0 by omega]
    omega
  have h7 : C (221184 * k + 33533) = 663552 * k + 100600 := by
    unfold C
    simp [show (221184 * k + 33533) % 2 ≠ 0 by omega]
    omega
  have h8 : C (663552 * k + 100600) = 331776 * k + 50300 := by
    unfold C
    simp [show (663552 * k + 100600) % 2 = 0 by omega]
    omega
  have h9 : C (331776 * k + 50300) = 165888 * k + 25150 := by
    unfold C
    simp [show (331776 * k + 50300) % 2 = 0 by omega]
    omega
  have h10 : C (165888 * k + 25150) = 82944 * k + 12575 := by
    unfold C
    simp [show (165888 * k + 25150) % 2 = 0 by omega]
    omega
  have h11 : C (82944 * k + 12575) = 248832 * k + 37726 := by
    unfold C
    simp [show (82944 * k + 12575) % 2 ≠ 0 by omega]
    omega
  have h12 : C (248832 * k + 37726) = 124416 * k + 18863 := by
    unfold C
    simp [show (248832 * k + 37726) % 2 = 0 by omega]
    omega
  have h13 : C (124416 * k + 18863) = 373248 * k + 56590 := by
    unfold C
    simp [show (124416 * k + 18863) % 2 ≠ 0 by omega]
    omega
  have h14 : C (373248 * k + 56590) = 186624 * k + 28295 := by
    unfold C
    simp [show (373248 * k + 56590) % 2 = 0 by omega]
    omega
  have h15 : C (186624 * k + 28295) = 559872 * k + 84886 := by
    unfold C
    simp [show (186624 * k + 28295) % 2 ≠ 0 by omega]
    omega
  have h16 : C (559872 * k + 84886) = 279936 * k + 42443 := by
    unfold C
    simp [show (559872 * k + 84886) % 2 = 0 by omega]
    omega
  have h17 : C (279936 * k + 42443) = 839808 * k + 127330 := by
    unfold C
    simp [show (279936 * k + 42443) % 2 ≠ 0 by omega]
    omega
  have h18 : C (839808 * k + 127330) = 419904 * k + 63665 := by
    unfold C
    simp [show (839808 * k + 127330) % 2 = 0 by omega]
    omega
  have h19 : C (419904 * k + 63665) = 1259712 * k + 190996 := by
    unfold C
    simp [show (419904 * k + 63665) % 2 ≠ 0 by omega]
    omega
  have h20 : C (1259712 * k + 190996) = 629856 * k + 95498 := by
    unfold C
    simp [show (1259712 * k + 190996) % 2 = 0 by omega]
    omega
  have h21 : C (629856 * k + 95498) = 314928 * k + 47749 := by
    unfold C
    simp [show (629856 * k + 95498) % 2 = 0 by omega]
    omega
  have h22 : C (314928 * k + 47749) = 944784 * k + 143248 := by
    unfold C
    simp [show (314928 * k + 47749) % 2 ≠ 0 by omega]
    omega
  have h23 : C (944784 * k + 143248) = 472392 * k + 71624 := by
    unfold C
    simp [show (944784 * k + 143248) % 2 = 0 by omega]
    omega
  have h24 : C (472392 * k + 71624) = 236196 * k + 35812 := by
    unfold C
    simp [show (472392 * k + 71624) % 2 = 0 by omega]
    omega
  have h25 : C (236196 * k + 35812) = 118098 * k + 17906 := by
    unfold C
    simp [show (236196 * k + 35812) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 17906) = 59049 * k + 8953 := by
    unfold C
    simp [show (118098 * k + 17906) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 9935) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 9935)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_10151 : ∀ k : Nat,
    iterate (65536 * k + 10151) 26 = 59049 * k + 9148 ∧
      59049 * k + 9148 < 65536 * k + 10151 := by
  intro k
  have h1 : C (65536 * k + 10151) = 196608 * k + 30454 := by
    unfold C
    simp [show (65536 * k + 10151) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 30454) = 98304 * k + 15227 := by
    unfold C
    simp [show (196608 * k + 30454) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 15227) = 294912 * k + 45682 := by
    unfold C
    simp [show (98304 * k + 15227) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 45682) = 147456 * k + 22841 := by
    unfold C
    simp [show (294912 * k + 45682) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 22841) = 442368 * k + 68524 := by
    unfold C
    simp [show (147456 * k + 22841) % 2 ≠ 0 by omega]
    omega
  have h6 : C (442368 * k + 68524) = 221184 * k + 34262 := by
    unfold C
    simp [show (442368 * k + 68524) % 2 = 0 by omega]
    omega
  have h7 : C (221184 * k + 34262) = 110592 * k + 17131 := by
    unfold C
    simp [show (221184 * k + 34262) % 2 = 0 by omega]
    omega
  have h8 : C (110592 * k + 17131) = 331776 * k + 51394 := by
    unfold C
    simp [show (110592 * k + 17131) % 2 ≠ 0 by omega]
    omega
  have h9 : C (331776 * k + 51394) = 165888 * k + 25697 := by
    unfold C
    simp [show (331776 * k + 51394) % 2 = 0 by omega]
    omega
  have h10 : C (165888 * k + 25697) = 497664 * k + 77092 := by
    unfold C
    simp [show (165888 * k + 25697) % 2 ≠ 0 by omega]
    omega
  have h11 : C (497664 * k + 77092) = 248832 * k + 38546 := by
    unfold C
    simp [show (497664 * k + 77092) % 2 = 0 by omega]
    omega
  have h12 : C (248832 * k + 38546) = 124416 * k + 19273 := by
    unfold C
    simp [show (248832 * k + 38546) % 2 = 0 by omega]
    omega
  have h13 : C (124416 * k + 19273) = 373248 * k + 57820 := by
    unfold C
    simp [show (124416 * k + 19273) % 2 ≠ 0 by omega]
    omega
  have h14 : C (373248 * k + 57820) = 186624 * k + 28910 := by
    unfold C
    simp [show (373248 * k + 57820) % 2 = 0 by omega]
    omega
  have h15 : C (186624 * k + 28910) = 93312 * k + 14455 := by
    unfold C
    simp [show (186624 * k + 28910) % 2 = 0 by omega]
    omega
  have h16 : C (93312 * k + 14455) = 279936 * k + 43366 := by
    unfold C
    simp [show (93312 * k + 14455) % 2 ≠ 0 by omega]
    omega
  have h17 : C (279936 * k + 43366) = 139968 * k + 21683 := by
    unfold C
    simp [show (279936 * k + 43366) % 2 = 0 by omega]
    omega
  have h18 : C (139968 * k + 21683) = 419904 * k + 65050 := by
    unfold C
    simp [show (139968 * k + 21683) % 2 ≠ 0 by omega]
    omega
  have h19 : C (419904 * k + 65050) = 209952 * k + 32525 := by
    unfold C
    simp [show (419904 * k + 65050) % 2 = 0 by omega]
    omega
  have h20 : C (209952 * k + 32525) = 629856 * k + 97576 := by
    unfold C
    simp [show (209952 * k + 32525) % 2 ≠ 0 by omega]
    omega
  have h21 : C (629856 * k + 97576) = 314928 * k + 48788 := by
    unfold C
    simp [show (629856 * k + 97576) % 2 = 0 by omega]
    omega
  have h22 : C (314928 * k + 48788) = 157464 * k + 24394 := by
    unfold C
    simp [show (314928 * k + 48788) % 2 = 0 by omega]
    omega
  have h23 : C (157464 * k + 24394) = 78732 * k + 12197 := by
    unfold C
    simp [show (157464 * k + 24394) % 2 = 0 by omega]
    omega
  have h24 : C (78732 * k + 12197) = 236196 * k + 36592 := by
    unfold C
    simp [show (78732 * k + 12197) % 2 ≠ 0 by omega]
    omega
  have h25 : C (236196 * k + 36592) = 118098 * k + 18296 := by
    unfold C
    simp [show (236196 * k + 36592) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 18296) = 59049 * k + 9148 := by
    unfold C
    simp [show (118098 * k + 18296) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 10151) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 10151)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_10559 : ∀ k : Nat,
    iterate (65536 * k + 10559) 26 = 59049 * k + 9515 ∧
      59049 * k + 9515 < 65536 * k + 10559 := by
  intro k
  have h1 : C (65536 * k + 10559) = 196608 * k + 31678 := by
    unfold C
    simp [show (65536 * k + 10559) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 31678) = 98304 * k + 15839 := by
    unfold C
    simp [show (196608 * k + 31678) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 15839) = 294912 * k + 47518 := by
    unfold C
    simp [show (98304 * k + 15839) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 47518) = 147456 * k + 23759 := by
    unfold C
    simp [show (294912 * k + 47518) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 23759) = 442368 * k + 71278 := by
    unfold C
    simp [show (147456 * k + 23759) % 2 ≠ 0 by omega]
    omega
  have h6 : C (442368 * k + 71278) = 221184 * k + 35639 := by
    unfold C
    simp [show (442368 * k + 71278) % 2 = 0 by omega]
    omega
  have h7 : C (221184 * k + 35639) = 663552 * k + 106918 := by
    unfold C
    simp [show (221184 * k + 35639) % 2 ≠ 0 by omega]
    omega
  have h8 : C (663552 * k + 106918) = 331776 * k + 53459 := by
    unfold C
    simp [show (663552 * k + 106918) % 2 = 0 by omega]
    omega
  have h9 : C (331776 * k + 53459) = 995328 * k + 160378 := by
    unfold C
    simp [show (331776 * k + 53459) % 2 ≠ 0 by omega]
    omega
  have h10 : C (995328 * k + 160378) = 497664 * k + 80189 := by
    unfold C
    simp [show (995328 * k + 160378) % 2 = 0 by omega]
    omega
  have h11 : C (497664 * k + 80189) = 1492992 * k + 240568 := by
    unfold C
    simp [show (497664 * k + 80189) % 2 ≠ 0 by omega]
    omega
  have h12 : C (1492992 * k + 240568) = 746496 * k + 120284 := by
    unfold C
    simp [show (1492992 * k + 240568) % 2 = 0 by omega]
    omega
  have h13 : C (746496 * k + 120284) = 373248 * k + 60142 := by
    unfold C
    simp [show (746496 * k + 120284) % 2 = 0 by omega]
    omega
  have h14 : C (373248 * k + 60142) = 186624 * k + 30071 := by
    unfold C
    simp [show (373248 * k + 60142) % 2 = 0 by omega]
    omega
  have h15 : C (186624 * k + 30071) = 559872 * k + 90214 := by
    unfold C
    simp [show (186624 * k + 30071) % 2 ≠ 0 by omega]
    omega
  have h16 : C (559872 * k + 90214) = 279936 * k + 45107 := by
    unfold C
    simp [show (559872 * k + 90214) % 2 = 0 by omega]
    omega
  have h17 : C (279936 * k + 45107) = 839808 * k + 135322 := by
    unfold C
    simp [show (279936 * k + 45107) % 2 ≠ 0 by omega]
    omega
  have h18 : C (839808 * k + 135322) = 419904 * k + 67661 := by
    unfold C
    simp [show (839808 * k + 135322) % 2 = 0 by omega]
    omega
  have h19 : C (419904 * k + 67661) = 1259712 * k + 202984 := by
    unfold C
    simp [show (419904 * k + 67661) % 2 ≠ 0 by omega]
    omega
  have h20 : C (1259712 * k + 202984) = 629856 * k + 101492 := by
    unfold C
    simp [show (1259712 * k + 202984) % 2 = 0 by omega]
    omega
  have h21 : C (629856 * k + 101492) = 314928 * k + 50746 := by
    unfold C
    simp [show (629856 * k + 101492) % 2 = 0 by omega]
    omega
  have h22 : C (314928 * k + 50746) = 157464 * k + 25373 := by
    unfold C
    simp [show (314928 * k + 50746) % 2 = 0 by omega]
    omega
  have h23 : C (157464 * k + 25373) = 472392 * k + 76120 := by
    unfold C
    simp [show (157464 * k + 25373) % 2 ≠ 0 by omega]
    omega
  have h24 : C (472392 * k + 76120) = 236196 * k + 38060 := by
    unfold C
    simp [show (472392 * k + 76120) % 2 = 0 by omega]
    omega
  have h25 : C (236196 * k + 38060) = 118098 * k + 19030 := by
    unfold C
    simp [show (236196 * k + 38060) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 19030) = 59049 * k + 9515 := by
    unfold C
    simp [show (118098 * k + 19030) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 10559) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 10559)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_10727 : ∀ k : Nat,
    iterate (65536 * k + 10727) 26 = 59049 * k + 9667 ∧
      59049 * k + 9667 < 65536 * k + 10727 := by
  intro k
  have h1 : C (65536 * k + 10727) = 196608 * k + 32182 := by
    unfold C
    simp [show (65536 * k + 10727) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 32182) = 98304 * k + 16091 := by
    unfold C
    simp [show (196608 * k + 32182) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 16091) = 294912 * k + 48274 := by
    unfold C
    simp [show (98304 * k + 16091) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 48274) = 147456 * k + 24137 := by
    unfold C
    simp [show (294912 * k + 48274) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 24137) = 442368 * k + 72412 := by
    unfold C
    simp [show (147456 * k + 24137) % 2 ≠ 0 by omega]
    omega
  have h6 : C (442368 * k + 72412) = 221184 * k + 36206 := by
    unfold C
    simp [show (442368 * k + 72412) % 2 = 0 by omega]
    omega
  have h7 : C (221184 * k + 36206) = 110592 * k + 18103 := by
    unfold C
    simp [show (221184 * k + 36206) % 2 = 0 by omega]
    omega
  have h8 : C (110592 * k + 18103) = 331776 * k + 54310 := by
    unfold C
    simp [show (110592 * k + 18103) % 2 ≠ 0 by omega]
    omega
  have h9 : C (331776 * k + 54310) = 165888 * k + 27155 := by
    unfold C
    simp [show (331776 * k + 54310) % 2 = 0 by omega]
    omega
  have h10 : C (165888 * k + 27155) = 497664 * k + 81466 := by
    unfold C
    simp [show (165888 * k + 27155) % 2 ≠ 0 by omega]
    omega
  have h11 : C (497664 * k + 81466) = 248832 * k + 40733 := by
    unfold C
    simp [show (497664 * k + 81466) % 2 = 0 by omega]
    omega
  have h12 : C (248832 * k + 40733) = 746496 * k + 122200 := by
    unfold C
    simp [show (248832 * k + 40733) % 2 ≠ 0 by omega]
    omega
  have h13 : C (746496 * k + 122200) = 373248 * k + 61100 := by
    unfold C
    simp [show (746496 * k + 122200) % 2 = 0 by omega]
    omega
  have h14 : C (373248 * k + 61100) = 186624 * k + 30550 := by
    unfold C
    simp [show (373248 * k + 61100) % 2 = 0 by omega]
    omega
  have h15 : C (186624 * k + 30550) = 93312 * k + 15275 := by
    unfold C
    simp [show (186624 * k + 30550) % 2 = 0 by omega]
    omega
  have h16 : C (93312 * k + 15275) = 279936 * k + 45826 := by
    unfold C
    simp [show (93312 * k + 15275) % 2 ≠ 0 by omega]
    omega
  have h17 : C (279936 * k + 45826) = 139968 * k + 22913 := by
    unfold C
    simp [show (279936 * k + 45826) % 2 = 0 by omega]
    omega
  have h18 : C (139968 * k + 22913) = 419904 * k + 68740 := by
    unfold C
    simp [show (139968 * k + 22913) % 2 ≠ 0 by omega]
    omega
  have h19 : C (419904 * k + 68740) = 209952 * k + 34370 := by
    unfold C
    simp [show (419904 * k + 68740) % 2 = 0 by omega]
    omega
  have h20 : C (209952 * k + 34370) = 104976 * k + 17185 := by
    unfold C
    simp [show (209952 * k + 34370) % 2 = 0 by omega]
    omega
  have h21 : C (104976 * k + 17185) = 314928 * k + 51556 := by
    unfold C
    simp [show (104976 * k + 17185) % 2 ≠ 0 by omega]
    omega
  have h22 : C (314928 * k + 51556) = 157464 * k + 25778 := by
    unfold C
    simp [show (314928 * k + 51556) % 2 = 0 by omega]
    omega
  have h23 : C (157464 * k + 25778) = 78732 * k + 12889 := by
    unfold C
    simp [show (157464 * k + 25778) % 2 = 0 by omega]
    omega
  have h24 : C (78732 * k + 12889) = 236196 * k + 38668 := by
    unfold C
    simp [show (78732 * k + 12889) % 2 ≠ 0 by omega]
    omega
  have h25 : C (236196 * k + 38668) = 118098 * k + 19334 := by
    unfold C
    simp [show (236196 * k + 38668) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 19334) = 59049 * k + 9667 := by
    unfold C
    simp [show (118098 * k + 19334) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 10727) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 10727)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_10907 : ∀ k : Nat,
    iterate (65536 * k + 10907) 26 = 59049 * k + 9829 ∧
      59049 * k + 9829 < 65536 * k + 10907 := by
  intro k
  have h1 : C (65536 * k + 10907) = 196608 * k + 32722 := by
    unfold C
    simp [show (65536 * k + 10907) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 32722) = 98304 * k + 16361 := by
    unfold C
    simp [show (196608 * k + 32722) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 16361) = 294912 * k + 49084 := by
    unfold C
    simp [show (98304 * k + 16361) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 49084) = 147456 * k + 24542 := by
    unfold C
    simp [show (294912 * k + 49084) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 24542) = 73728 * k + 12271 := by
    unfold C
    simp [show (147456 * k + 24542) % 2 = 0 by omega]
    omega
  have h6 : C (73728 * k + 12271) = 221184 * k + 36814 := by
    unfold C
    simp [show (73728 * k + 12271) % 2 ≠ 0 by omega]
    omega
  have h7 : C (221184 * k + 36814) = 110592 * k + 18407 := by
    unfold C
    simp [show (221184 * k + 36814) % 2 = 0 by omega]
    omega
  have h8 : C (110592 * k + 18407) = 331776 * k + 55222 := by
    unfold C
    simp [show (110592 * k + 18407) % 2 ≠ 0 by omega]
    omega
  have h9 : C (331776 * k + 55222) = 165888 * k + 27611 := by
    unfold C
    simp [show (331776 * k + 55222) % 2 = 0 by omega]
    omega
  have h10 : C (165888 * k + 27611) = 497664 * k + 82834 := by
    unfold C
    simp [show (165888 * k + 27611) % 2 ≠ 0 by omega]
    omega
  have h11 : C (497664 * k + 82834) = 248832 * k + 41417 := by
    unfold C
    simp [show (497664 * k + 82834) % 2 = 0 by omega]
    omega
  have h12 : C (248832 * k + 41417) = 746496 * k + 124252 := by
    unfold C
    simp [show (248832 * k + 41417) % 2 ≠ 0 by omega]
    omega
  have h13 : C (746496 * k + 124252) = 373248 * k + 62126 := by
    unfold C
    simp [show (746496 * k + 124252) % 2 = 0 by omega]
    omega
  have h14 : C (373248 * k + 62126) = 186624 * k + 31063 := by
    unfold C
    simp [show (373248 * k + 62126) % 2 = 0 by omega]
    omega
  have h15 : C (186624 * k + 31063) = 559872 * k + 93190 := by
    unfold C
    simp [show (186624 * k + 31063) % 2 ≠ 0 by omega]
    omega
  have h16 : C (559872 * k + 93190) = 279936 * k + 46595 := by
    unfold C
    simp [show (559872 * k + 93190) % 2 = 0 by omega]
    omega
  have h17 : C (279936 * k + 46595) = 839808 * k + 139786 := by
    unfold C
    simp [show (279936 * k + 46595) % 2 ≠ 0 by omega]
    omega
  have h18 : C (839808 * k + 139786) = 419904 * k + 69893 := by
    unfold C
    simp [show (839808 * k + 139786) % 2 = 0 by omega]
    omega
  have h19 : C (419904 * k + 69893) = 1259712 * k + 209680 := by
    unfold C
    simp [show (419904 * k + 69893) % 2 ≠ 0 by omega]
    omega
  have h20 : C (1259712 * k + 209680) = 629856 * k + 104840 := by
    unfold C
    simp [show (1259712 * k + 209680) % 2 = 0 by omega]
    omega
  have h21 : C (629856 * k + 104840) = 314928 * k + 52420 := by
    unfold C
    simp [show (629856 * k + 104840) % 2 = 0 by omega]
    omega
  have h22 : C (314928 * k + 52420) = 157464 * k + 26210 := by
    unfold C
    simp [show (314928 * k + 52420) % 2 = 0 by omega]
    omega
  have h23 : C (157464 * k + 26210) = 78732 * k + 13105 := by
    unfold C
    simp [show (157464 * k + 26210) % 2 = 0 by omega]
    omega
  have h24 : C (78732 * k + 13105) = 236196 * k + 39316 := by
    unfold C
    simp [show (78732 * k + 13105) % 2 ≠ 0 by omega]
    omega
  have h25 : C (236196 * k + 39316) = 118098 * k + 19658 := by
    unfold C
    simp [show (236196 * k + 39316) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 19658) = 59049 * k + 9829 := by
    unfold C
    simp [show (118098 * k + 19658) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 10907) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 10907)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_11035 : ∀ k : Nat,
    iterate (65536 * k + 11035) 26 = 59049 * k + 9944 ∧
      59049 * k + 9944 < 65536 * k + 11035 := by
  intro k
  have h1 : C (65536 * k + 11035) = 196608 * k + 33106 := by
    unfold C
    simp [show (65536 * k + 11035) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 33106) = 98304 * k + 16553 := by
    unfold C
    simp [show (196608 * k + 33106) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 16553) = 294912 * k + 49660 := by
    unfold C
    simp [show (98304 * k + 16553) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 49660) = 147456 * k + 24830 := by
    unfold C
    simp [show (294912 * k + 49660) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 24830) = 73728 * k + 12415 := by
    unfold C
    simp [show (147456 * k + 24830) % 2 = 0 by omega]
    omega
  have h6 : C (73728 * k + 12415) = 221184 * k + 37246 := by
    unfold C
    simp [show (73728 * k + 12415) % 2 ≠ 0 by omega]
    omega
  have h7 : C (221184 * k + 37246) = 110592 * k + 18623 := by
    unfold C
    simp [show (221184 * k + 37246) % 2 = 0 by omega]
    omega
  have h8 : C (110592 * k + 18623) = 331776 * k + 55870 := by
    unfold C
    simp [show (110592 * k + 18623) % 2 ≠ 0 by omega]
    omega
  have h9 : C (331776 * k + 55870) = 165888 * k + 27935 := by
    unfold C
    simp [show (331776 * k + 55870) % 2 = 0 by omega]
    omega
  have h10 : C (165888 * k + 27935) = 497664 * k + 83806 := by
    unfold C
    simp [show (165888 * k + 27935) % 2 ≠ 0 by omega]
    omega
  have h11 : C (497664 * k + 83806) = 248832 * k + 41903 := by
    unfold C
    simp [show (497664 * k + 83806) % 2 = 0 by omega]
    omega
  have h12 : C (248832 * k + 41903) = 746496 * k + 125710 := by
    unfold C
    simp [show (248832 * k + 41903) % 2 ≠ 0 by omega]
    omega
  have h13 : C (746496 * k + 125710) = 373248 * k + 62855 := by
    unfold C
    simp [show (746496 * k + 125710) % 2 = 0 by omega]
    omega
  have h14 : C (373248 * k + 62855) = 1119744 * k + 188566 := by
    unfold C
    simp [show (373248 * k + 62855) % 2 ≠ 0 by omega]
    omega
  have h15 : C (1119744 * k + 188566) = 559872 * k + 94283 := by
    unfold C
    simp [show (1119744 * k + 188566) % 2 = 0 by omega]
    omega
  have h16 : C (559872 * k + 94283) = 1679616 * k + 282850 := by
    unfold C
    simp [show (559872 * k + 94283) % 2 ≠ 0 by omega]
    omega
  have h17 : C (1679616 * k + 282850) = 839808 * k + 141425 := by
    unfold C
    simp [show (1679616 * k + 282850) % 2 = 0 by omega]
    omega
  have h18 : C (839808 * k + 141425) = 2519424 * k + 424276 := by
    unfold C
    simp [show (839808 * k + 141425) % 2 ≠ 0 by omega]
    omega
  have h19 : C (2519424 * k + 424276) = 1259712 * k + 212138 := by
    unfold C
    simp [show (2519424 * k + 424276) % 2 = 0 by omega]
    omega
  have h20 : C (1259712 * k + 212138) = 629856 * k + 106069 := by
    unfold C
    simp [show (1259712 * k + 212138) % 2 = 0 by omega]
    omega
  have h21 : C (629856 * k + 106069) = 1889568 * k + 318208 := by
    unfold C
    simp [show (629856 * k + 106069) % 2 ≠ 0 by omega]
    omega
  have h22 : C (1889568 * k + 318208) = 944784 * k + 159104 := by
    unfold C
    simp [show (1889568 * k + 318208) % 2 = 0 by omega]
    omega
  have h23 : C (944784 * k + 159104) = 472392 * k + 79552 := by
    unfold C
    simp [show (944784 * k + 159104) % 2 = 0 by omega]
    omega
  have h24 : C (472392 * k + 79552) = 236196 * k + 39776 := by
    unfold C
    simp [show (472392 * k + 79552) % 2 = 0 by omega]
    omega
  have h25 : C (236196 * k + 39776) = 118098 * k + 19888 := by
    unfold C
    simp [show (236196 * k + 39776) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 19888) = 59049 * k + 9944 := by
    unfold C
    simp [show (118098 * k + 19888) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 11035) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 11035)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_11247 : ∀ k : Nat,
    iterate (65536 * k + 11247) 26 = 59049 * k + 10135 ∧
      59049 * k + 10135 < 65536 * k + 11247 := by
  intro k
  have h1 : C (65536 * k + 11247) = 196608 * k + 33742 := by
    unfold C
    simp [show (65536 * k + 11247) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 33742) = 98304 * k + 16871 := by
    unfold C
    simp [show (196608 * k + 33742) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 16871) = 294912 * k + 50614 := by
    unfold C
    simp [show (98304 * k + 16871) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 50614) = 147456 * k + 25307 := by
    unfold C
    simp [show (294912 * k + 50614) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 25307) = 442368 * k + 75922 := by
    unfold C
    simp [show (147456 * k + 25307) % 2 ≠ 0 by omega]
    omega
  have h6 : C (442368 * k + 75922) = 221184 * k + 37961 := by
    unfold C
    simp [show (442368 * k + 75922) % 2 = 0 by omega]
    omega
  have h7 : C (221184 * k + 37961) = 663552 * k + 113884 := by
    unfold C
    simp [show (221184 * k + 37961) % 2 ≠ 0 by omega]
    omega
  have h8 : C (663552 * k + 113884) = 331776 * k + 56942 := by
    unfold C
    simp [show (663552 * k + 113884) % 2 = 0 by omega]
    omega
  have h9 : C (331776 * k + 56942) = 165888 * k + 28471 := by
    unfold C
    simp [show (331776 * k + 56942) % 2 = 0 by omega]
    omega
  have h10 : C (165888 * k + 28471) = 497664 * k + 85414 := by
    unfold C
    simp [show (165888 * k + 28471) % 2 ≠ 0 by omega]
    omega
  have h11 : C (497664 * k + 85414) = 248832 * k + 42707 := by
    unfold C
    simp [show (497664 * k + 85414) % 2 = 0 by omega]
    omega
  have h12 : C (248832 * k + 42707) = 746496 * k + 128122 := by
    unfold C
    simp [show (248832 * k + 42707) % 2 ≠ 0 by omega]
    omega
  have h13 : C (746496 * k + 128122) = 373248 * k + 64061 := by
    unfold C
    simp [show (746496 * k + 128122) % 2 = 0 by omega]
    omega
  have h14 : C (373248 * k + 64061) = 1119744 * k + 192184 := by
    unfold C
    simp [show (373248 * k + 64061) % 2 ≠ 0 by omega]
    omega
  have h15 : C (1119744 * k + 192184) = 559872 * k + 96092 := by
    unfold C
    simp [show (1119744 * k + 192184) % 2 = 0 by omega]
    omega
  have h16 : C (559872 * k + 96092) = 279936 * k + 48046 := by
    unfold C
    simp [show (559872 * k + 96092) % 2 = 0 by omega]
    omega
  have h17 : C (279936 * k + 48046) = 139968 * k + 24023 := by
    unfold C
    simp [show (279936 * k + 48046) % 2 = 0 by omega]
    omega
  have h18 : C (139968 * k + 24023) = 419904 * k + 72070 := by
    unfold C
    simp [show (139968 * k + 24023) % 2 ≠ 0 by omega]
    omega
  have h19 : C (419904 * k + 72070) = 209952 * k + 36035 := by
    unfold C
    simp [show (419904 * k + 72070) % 2 = 0 by omega]
    omega
  have h20 : C (209952 * k + 36035) = 629856 * k + 108106 := by
    unfold C
    simp [show (209952 * k + 36035) % 2 ≠ 0 by omega]
    omega
  have h21 : C (629856 * k + 108106) = 314928 * k + 54053 := by
    unfold C
    simp [show (629856 * k + 108106) % 2 = 0 by omega]
    omega
  have h22 : C (314928 * k + 54053) = 944784 * k + 162160 := by
    unfold C
    simp [show (314928 * k + 54053) % 2 ≠ 0 by omega]
    omega
  have h23 : C (944784 * k + 162160) = 472392 * k + 81080 := by
    unfold C
    simp [show (944784 * k + 162160) % 2 = 0 by omega]
    omega
  have h24 : C (472392 * k + 81080) = 236196 * k + 40540 := by
    unfold C
    simp [show (472392 * k + 81080) % 2 = 0 by omega]
    omega
  have h25 : C (236196 * k + 40540) = 118098 * k + 20270 := by
    unfold C
    simp [show (236196 * k + 40540) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 20270) = 59049 * k + 10135 := by
    unfold C
    simp [show (118098 * k + 20270) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 11247) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 11247)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_11431 : ∀ k : Nat,
    iterate (65536 * k + 11431) 26 = 59049 * k + 10301 ∧
      59049 * k + 10301 < 65536 * k + 11431 := by
  intro k
  have h1 : C (65536 * k + 11431) = 196608 * k + 34294 := by
    unfold C
    simp [show (65536 * k + 11431) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 34294) = 98304 * k + 17147 := by
    unfold C
    simp [show (196608 * k + 34294) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 17147) = 294912 * k + 51442 := by
    unfold C
    simp [show (98304 * k + 17147) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 51442) = 147456 * k + 25721 := by
    unfold C
    simp [show (294912 * k + 51442) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 25721) = 442368 * k + 77164 := by
    unfold C
    simp [show (147456 * k + 25721) % 2 ≠ 0 by omega]
    omega
  have h6 : C (442368 * k + 77164) = 221184 * k + 38582 := by
    unfold C
    simp [show (442368 * k + 77164) % 2 = 0 by omega]
    omega
  have h7 : C (221184 * k + 38582) = 110592 * k + 19291 := by
    unfold C
    simp [show (221184 * k + 38582) % 2 = 0 by omega]
    omega
  have h8 : C (110592 * k + 19291) = 331776 * k + 57874 := by
    unfold C
    simp [show (110592 * k + 19291) % 2 ≠ 0 by omega]
    omega
  have h9 : C (331776 * k + 57874) = 165888 * k + 28937 := by
    unfold C
    simp [show (331776 * k + 57874) % 2 = 0 by omega]
    omega
  have h10 : C (165888 * k + 28937) = 497664 * k + 86812 := by
    unfold C
    simp [show (165888 * k + 28937) % 2 ≠ 0 by omega]
    omega
  have h11 : C (497664 * k + 86812) = 248832 * k + 43406 := by
    unfold C
    simp [show (497664 * k + 86812) % 2 = 0 by omega]
    omega
  have h12 : C (248832 * k + 43406) = 124416 * k + 21703 := by
    unfold C
    simp [show (248832 * k + 43406) % 2 = 0 by omega]
    omega
  have h13 : C (124416 * k + 21703) = 373248 * k + 65110 := by
    unfold C
    simp [show (124416 * k + 21703) % 2 ≠ 0 by omega]
    omega
  have h14 : C (373248 * k + 65110) = 186624 * k + 32555 := by
    unfold C
    simp [show (373248 * k + 65110) % 2 = 0 by omega]
    omega
  have h15 : C (186624 * k + 32555) = 559872 * k + 97666 := by
    unfold C
    simp [show (186624 * k + 32555) % 2 ≠ 0 by omega]
    omega
  have h16 : C (559872 * k + 97666) = 279936 * k + 48833 := by
    unfold C
    simp [show (559872 * k + 97666) % 2 = 0 by omega]
    omega
  have h17 : C (279936 * k + 48833) = 839808 * k + 146500 := by
    unfold C
    simp [show (279936 * k + 48833) % 2 ≠ 0 by omega]
    omega
  have h18 : C (839808 * k + 146500) = 419904 * k + 73250 := by
    unfold C
    simp [show (839808 * k + 146500) % 2 = 0 by omega]
    omega
  have h19 : C (419904 * k + 73250) = 209952 * k + 36625 := by
    unfold C
    simp [show (419904 * k + 73250) % 2 = 0 by omega]
    omega
  have h20 : C (209952 * k + 36625) = 629856 * k + 109876 := by
    unfold C
    simp [show (209952 * k + 36625) % 2 ≠ 0 by omega]
    omega
  have h21 : C (629856 * k + 109876) = 314928 * k + 54938 := by
    unfold C
    simp [show (629856 * k + 109876) % 2 = 0 by omega]
    omega
  have h22 : C (314928 * k + 54938) = 157464 * k + 27469 := by
    unfold C
    simp [show (314928 * k + 54938) % 2 = 0 by omega]
    omega
  have h23 : C (157464 * k + 27469) = 472392 * k + 82408 := by
    unfold C
    simp [show (157464 * k + 27469) % 2 ≠ 0 by omega]
    omega
  have h24 : C (472392 * k + 82408) = 236196 * k + 41204 := by
    unfold C
    simp [show (472392 * k + 82408) % 2 = 0 by omega]
    omega
  have h25 : C (236196 * k + 41204) = 118098 * k + 20602 := by
    unfold C
    simp [show (236196 * k + 41204) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 20602) = 59049 * k + 10301 := by
    unfold C
    simp [show (118098 * k + 20602) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 11431) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 11431)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_11727 : ∀ k : Nat,
    iterate (65536 * k + 11727) 26 = 59049 * k + 10568 ∧
      59049 * k + 10568 < 65536 * k + 11727 := by
  intro k
  have h1 : C (65536 * k + 11727) = 196608 * k + 35182 := by
    unfold C
    simp [show (65536 * k + 11727) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 35182) = 98304 * k + 17591 := by
    unfold C
    simp [show (196608 * k + 35182) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 17591) = 294912 * k + 52774 := by
    unfold C
    simp [show (98304 * k + 17591) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 52774) = 147456 * k + 26387 := by
    unfold C
    simp [show (294912 * k + 52774) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 26387) = 442368 * k + 79162 := by
    unfold C
    simp [show (147456 * k + 26387) % 2 ≠ 0 by omega]
    omega
  have h6 : C (442368 * k + 79162) = 221184 * k + 39581 := by
    unfold C
    simp [show (442368 * k + 79162) % 2 = 0 by omega]
    omega
  have h7 : C (221184 * k + 39581) = 663552 * k + 118744 := by
    unfold C
    simp [show (221184 * k + 39581) % 2 ≠ 0 by omega]
    omega
  have h8 : C (663552 * k + 118744) = 331776 * k + 59372 := by
    unfold C
    simp [show (663552 * k + 118744) % 2 = 0 by omega]
    omega
  have h9 : C (331776 * k + 59372) = 165888 * k + 29686 := by
    unfold C
    simp [show (331776 * k + 59372) % 2 = 0 by omega]
    omega
  have h10 : C (165888 * k + 29686) = 82944 * k + 14843 := by
    unfold C
    simp [show (165888 * k + 29686) % 2 = 0 by omega]
    omega
  have h11 : C (82944 * k + 14843) = 248832 * k + 44530 := by
    unfold C
    simp [show (82944 * k + 14843) % 2 ≠ 0 by omega]
    omega
  have h12 : C (248832 * k + 44530) = 124416 * k + 22265 := by
    unfold C
    simp [show (248832 * k + 44530) % 2 = 0 by omega]
    omega
  have h13 : C (124416 * k + 22265) = 373248 * k + 66796 := by
    unfold C
    simp [show (124416 * k + 22265) % 2 ≠ 0 by omega]
    omega
  have h14 : C (373248 * k + 66796) = 186624 * k + 33398 := by
    unfold C
    simp [show (373248 * k + 66796) % 2 = 0 by omega]
    omega
  have h15 : C (186624 * k + 33398) = 93312 * k + 16699 := by
    unfold C
    simp [show (186624 * k + 33398) % 2 = 0 by omega]
    omega
  have h16 : C (93312 * k + 16699) = 279936 * k + 50098 := by
    unfold C
    simp [show (93312 * k + 16699) % 2 ≠ 0 by omega]
    omega
  have h17 : C (279936 * k + 50098) = 139968 * k + 25049 := by
    unfold C
    simp [show (279936 * k + 50098) % 2 = 0 by omega]
    omega
  have h18 : C (139968 * k + 25049) = 419904 * k + 75148 := by
    unfold C
    simp [show (139968 * k + 25049) % 2 ≠ 0 by omega]
    omega
  have h19 : C (419904 * k + 75148) = 209952 * k + 37574 := by
    unfold C
    simp [show (419904 * k + 75148) % 2 = 0 by omega]
    omega
  have h20 : C (209952 * k + 37574) = 104976 * k + 18787 := by
    unfold C
    simp [show (209952 * k + 37574) % 2 = 0 by omega]
    omega
  have h21 : C (104976 * k + 18787) = 314928 * k + 56362 := by
    unfold C
    simp [show (104976 * k + 18787) % 2 ≠ 0 by omega]
    omega
  have h22 : C (314928 * k + 56362) = 157464 * k + 28181 := by
    unfold C
    simp [show (314928 * k + 56362) % 2 = 0 by omega]
    omega
  have h23 : C (157464 * k + 28181) = 472392 * k + 84544 := by
    unfold C
    simp [show (157464 * k + 28181) % 2 ≠ 0 by omega]
    omega
  have h24 : C (472392 * k + 84544) = 236196 * k + 42272 := by
    unfold C
    simp [show (472392 * k + 84544) % 2 = 0 by omega]
    omega
  have h25 : C (236196 * k + 42272) = 118098 * k + 21136 := by
    unfold C
    simp [show (236196 * k + 42272) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 21136) = 59049 * k + 10568 := by
    unfold C
    simp [show (118098 * k + 21136) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 11727) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 11727)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_11823 : ∀ k : Nat,
    iterate (65536 * k + 11823) 26 = 59049 * k + 10654 ∧
      59049 * k + 10654 < 65536 * k + 11823 := by
  intro k
  have h1 : C (65536 * k + 11823) = 196608 * k + 35470 := by
    unfold C
    simp [show (65536 * k + 11823) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 35470) = 98304 * k + 17735 := by
    unfold C
    simp [show (196608 * k + 35470) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 17735) = 294912 * k + 53206 := by
    unfold C
    simp [show (98304 * k + 17735) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 53206) = 147456 * k + 26603 := by
    unfold C
    simp [show (294912 * k + 53206) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 26603) = 442368 * k + 79810 := by
    unfold C
    simp [show (147456 * k + 26603) % 2 ≠ 0 by omega]
    omega
  have h6 : C (442368 * k + 79810) = 221184 * k + 39905 := by
    unfold C
    simp [show (442368 * k + 79810) % 2 = 0 by omega]
    omega
  have h7 : C (221184 * k + 39905) = 663552 * k + 119716 := by
    unfold C
    simp [show (221184 * k + 39905) % 2 ≠ 0 by omega]
    omega
  have h8 : C (663552 * k + 119716) = 331776 * k + 59858 := by
    unfold C
    simp [show (663552 * k + 119716) % 2 = 0 by omega]
    omega
  have h9 : C (331776 * k + 59858) = 165888 * k + 29929 := by
    unfold C
    simp [show (331776 * k + 59858) % 2 = 0 by omega]
    omega
  have h10 : C (165888 * k + 29929) = 497664 * k + 89788 := by
    unfold C
    simp [show (165888 * k + 29929) % 2 ≠ 0 by omega]
    omega
  have h11 : C (497664 * k + 89788) = 248832 * k + 44894 := by
    unfold C
    simp [show (497664 * k + 89788) % 2 = 0 by omega]
    omega
  have h12 : C (248832 * k + 44894) = 124416 * k + 22447 := by
    unfold C
    simp [show (248832 * k + 44894) % 2 = 0 by omega]
    omega
  have h13 : C (124416 * k + 22447) = 373248 * k + 67342 := by
    unfold C
    simp [show (124416 * k + 22447) % 2 ≠ 0 by omega]
    omega
  have h14 : C (373248 * k + 67342) = 186624 * k + 33671 := by
    unfold C
    simp [show (373248 * k + 67342) % 2 = 0 by omega]
    omega
  have h15 : C (186624 * k + 33671) = 559872 * k + 101014 := by
    unfold C
    simp [show (186624 * k + 33671) % 2 ≠ 0 by omega]
    omega
  have h16 : C (559872 * k + 101014) = 279936 * k + 50507 := by
    unfold C
    simp [show (559872 * k + 101014) % 2 = 0 by omega]
    omega
  have h17 : C (279936 * k + 50507) = 839808 * k + 151522 := by
    unfold C
    simp [show (279936 * k + 50507) % 2 ≠ 0 by omega]
    omega
  have h18 : C (839808 * k + 151522) = 419904 * k + 75761 := by
    unfold C
    simp [show (839808 * k + 151522) % 2 = 0 by omega]
    omega
  have h19 : C (419904 * k + 75761) = 1259712 * k + 227284 := by
    unfold C
    simp [show (419904 * k + 75761) % 2 ≠ 0 by omega]
    omega
  have h20 : C (1259712 * k + 227284) = 629856 * k + 113642 := by
    unfold C
    simp [show (1259712 * k + 227284) % 2 = 0 by omega]
    omega
  have h21 : C (629856 * k + 113642) = 314928 * k + 56821 := by
    unfold C
    simp [show (629856 * k + 113642) % 2 = 0 by omega]
    omega
  have h22 : C (314928 * k + 56821) = 944784 * k + 170464 := by
    unfold C
    simp [show (314928 * k + 56821) % 2 ≠ 0 by omega]
    omega
  have h23 : C (944784 * k + 170464) = 472392 * k + 85232 := by
    unfold C
    simp [show (944784 * k + 170464) % 2 = 0 by omega]
    omega
  have h24 : C (472392 * k + 85232) = 236196 * k + 42616 := by
    unfold C
    simp [show (472392 * k + 85232) % 2 = 0 by omega]
    omega
  have h25 : C (236196 * k + 42616) = 118098 * k + 21308 := by
    unfold C
    simp [show (236196 * k + 42616) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 21308) = 59049 * k + 10654 := by
    unfold C
    simp [show (118098 * k + 21308) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 11823) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 11823)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

end CollatzM16ShardD
