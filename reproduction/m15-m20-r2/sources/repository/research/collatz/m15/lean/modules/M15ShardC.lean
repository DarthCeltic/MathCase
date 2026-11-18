import Mathlib.Data.Nat.Prime.Basic

namespace CollatzM15ShardC

def C (n : Nat) : Nat := if n % 2 = 0 then n / 2 else 3 * n + 1

def iterate (n t : Nat) : Nat := Nat.rec n (fun _ previous => C previous) t

theorem descent_mod32768_2799 : ∀ k : Nat, iterate (32768 * k + 2799) 24 = 19683 * k + 1682 ∧ 19683 * k + 1682 < 32768 * k + 2799 := by
  intro k
  have h1 : C (32768 * k + 2799) = 98304 * k + 8398 := by
    unfold C
    simp [show (32768 * k + 2799) % 2 ≠ 0 by omega]
    omega
  have h2 : C (98304 * k + 8398) = 49152 * k + 4199 := by
    unfold C
    simp [show (98304 * k + 8398) % 2 = 0 by omega]
    omega
  have h3 : C (49152 * k + 4199) = 147456 * k + 12598 := by
    unfold C
    simp [show (49152 * k + 4199) % 2 ≠ 0 by omega]
    omega
  have h4 : C (147456 * k + 12598) = 73728 * k + 6299 := by
    unfold C
    simp [show (147456 * k + 12598) % 2 = 0 by omega]
    omega
  have h5 : C (73728 * k + 6299) = 221184 * k + 18898 := by
    unfold C
    simp [show (73728 * k + 6299) % 2 ≠ 0 by omega]
    omega
  have h6 : C (221184 * k + 18898) = 110592 * k + 9449 := by
    unfold C
    simp [show (221184 * k + 18898) % 2 = 0 by omega]
    omega
  have h7 : C (110592 * k + 9449) = 331776 * k + 28348 := by
    unfold C
    simp [show (110592 * k + 9449) % 2 ≠ 0 by omega]
    omega
  have h8 : C (331776 * k + 28348) = 165888 * k + 14174 := by
    unfold C
    simp [show (331776 * k + 28348) % 2 = 0 by omega]
    omega
  have h9 : C (165888 * k + 14174) = 82944 * k + 7087 := by
    unfold C
    simp [show (165888 * k + 14174) % 2 = 0 by omega]
    omega
  have h10 : C (82944 * k + 7087) = 248832 * k + 21262 := by
    unfold C
    simp [show (82944 * k + 7087) % 2 ≠ 0 by omega]
    omega
  have h11 : C (248832 * k + 21262) = 124416 * k + 10631 := by
    unfold C
    simp [show (248832 * k + 21262) % 2 = 0 by omega]
    omega
  have h12 : C (124416 * k + 10631) = 373248 * k + 31894 := by
    unfold C
    simp [show (124416 * k + 10631) % 2 ≠ 0 by omega]
    omega
  have h13 : C (373248 * k + 31894) = 186624 * k + 15947 := by
    unfold C
    simp [show (373248 * k + 31894) % 2 = 0 by omega]
    omega
  have h14 : C (186624 * k + 15947) = 559872 * k + 47842 := by
    unfold C
    simp [show (186624 * k + 15947) % 2 ≠ 0 by omega]
    omega
  have h15 : C (559872 * k + 47842) = 279936 * k + 23921 := by
    unfold C
    simp [show (559872 * k + 47842) % 2 = 0 by omega]
    omega
  have h16 : C (279936 * k + 23921) = 839808 * k + 71764 := by
    unfold C
    simp [show (279936 * k + 23921) % 2 ≠ 0 by omega]
    omega
  have h17 : C (839808 * k + 71764) = 419904 * k + 35882 := by
    unfold C
    simp [show (839808 * k + 71764) % 2 = 0 by omega]
    omega
  have h18 : C (419904 * k + 35882) = 209952 * k + 17941 := by
    unfold C
    simp [show (419904 * k + 35882) % 2 = 0 by omega]
    omega
  have h19 : C (209952 * k + 17941) = 629856 * k + 53824 := by
    unfold C
    simp [show (209952 * k + 17941) % 2 ≠ 0 by omega]
    omega
  have h20 : C (629856 * k + 53824) = 314928 * k + 26912 := by
    unfold C
    simp [show (629856 * k + 53824) % 2 = 0 by omega]
    omega
  have h21 : C (314928 * k + 26912) = 157464 * k + 13456 := by
    unfold C
    simp [show (314928 * k + 26912) % 2 = 0 by omega]
    omega
  have h22 : C (157464 * k + 13456) = 78732 * k + 6728 := by
    unfold C
    simp [show (157464 * k + 13456) % 2 = 0 by omega]
    omega
  have h23 : C (78732 * k + 6728) = 39366 * k + 3364 := by
    unfold C
    simp [show (78732 * k + 6728) % 2 = 0 by omega]
    omega
  have h24 : C (39366 * k + 3364) = 19683 * k + 1682 := by
    unfold C
    simp [show (39366 * k + 3364) % 2 = 0 by omega]
    omega
  have hIter : iterate (32768 * k + 2799) 24 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (32768 * k + 2799)))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24]
  · omega

theorem descent_mod32768_2847 : ∀ k : Nat, iterate (32768 * k + 2847) 24 = 19683 * k + 1711 ∧ 19683 * k + 1711 < 32768 * k + 2847 := by
  intro k
  have h1 : C (32768 * k + 2847) = 98304 * k + 8542 := by
    unfold C
    simp [show (32768 * k + 2847) % 2 ≠ 0 by omega]
    omega
  have h2 : C (98304 * k + 8542) = 49152 * k + 4271 := by
    unfold C
    simp [show (98304 * k + 8542) % 2 = 0 by omega]
    omega
  have h3 : C (49152 * k + 4271) = 147456 * k + 12814 := by
    unfold C
    simp [show (49152 * k + 4271) % 2 ≠ 0 by omega]
    omega
  have h4 : C (147456 * k + 12814) = 73728 * k + 6407 := by
    unfold C
    simp [show (147456 * k + 12814) % 2 = 0 by omega]
    omega
  have h5 : C (73728 * k + 6407) = 221184 * k + 19222 := by
    unfold C
    simp [show (73728 * k + 6407) % 2 ≠ 0 by omega]
    omega
  have h6 : C (221184 * k + 19222) = 110592 * k + 9611 := by
    unfold C
    simp [show (221184 * k + 19222) % 2 = 0 by omega]
    omega
  have h7 : C (110592 * k + 9611) = 331776 * k + 28834 := by
    unfold C
    simp [show (110592 * k + 9611) % 2 ≠ 0 by omega]
    omega
  have h8 : C (331776 * k + 28834) = 165888 * k + 14417 := by
    unfold C
    simp [show (331776 * k + 28834) % 2 = 0 by omega]
    omega
  have h9 : C (165888 * k + 14417) = 497664 * k + 43252 := by
    unfold C
    simp [show (165888 * k + 14417) % 2 ≠ 0 by omega]
    omega
  have h10 : C (497664 * k + 43252) = 248832 * k + 21626 := by
    unfold C
    simp [show (497664 * k + 43252) % 2 = 0 by omega]
    omega
  have h11 : C (248832 * k + 21626) = 124416 * k + 10813 := by
    unfold C
    simp [show (248832 * k + 21626) % 2 = 0 by omega]
    omega
  have h12 : C (124416 * k + 10813) = 373248 * k + 32440 := by
    unfold C
    simp [show (124416 * k + 10813) % 2 ≠ 0 by omega]
    omega
  have h13 : C (373248 * k + 32440) = 186624 * k + 16220 := by
    unfold C
    simp [show (373248 * k + 32440) % 2 = 0 by omega]
    omega
  have h14 : C (186624 * k + 16220) = 93312 * k + 8110 := by
    unfold C
    simp [show (186624 * k + 16220) % 2 = 0 by omega]
    omega
  have h15 : C (93312 * k + 8110) = 46656 * k + 4055 := by
    unfold C
    simp [show (93312 * k + 8110) % 2 = 0 by omega]
    omega
  have h16 : C (46656 * k + 4055) = 139968 * k + 12166 := by
    unfold C
    simp [show (46656 * k + 4055) % 2 ≠ 0 by omega]
    omega
  have h17 : C (139968 * k + 12166) = 69984 * k + 6083 := by
    unfold C
    simp [show (139968 * k + 12166) % 2 = 0 by omega]
    omega
  have h18 : C (69984 * k + 6083) = 209952 * k + 18250 := by
    unfold C
    simp [show (69984 * k + 6083) % 2 ≠ 0 by omega]
    omega
  have h19 : C (209952 * k + 18250) = 104976 * k + 9125 := by
    unfold C
    simp [show (209952 * k + 18250) % 2 = 0 by omega]
    omega
  have h20 : C (104976 * k + 9125) = 314928 * k + 27376 := by
    unfold C
    simp [show (104976 * k + 9125) % 2 ≠ 0 by omega]
    omega
  have h21 : C (314928 * k + 27376) = 157464 * k + 13688 := by
    unfold C
    simp [show (314928 * k + 27376) % 2 = 0 by omega]
    omega
  have h22 : C (157464 * k + 13688) = 78732 * k + 6844 := by
    unfold C
    simp [show (157464 * k + 13688) % 2 = 0 by omega]
    omega
  have h23 : C (78732 * k + 6844) = 39366 * k + 3422 := by
    unfold C
    simp [show (78732 * k + 6844) % 2 = 0 by omega]
    omega
  have h24 : C (39366 * k + 3422) = 19683 * k + 1711 := by
    unfold C
    simp [show (39366 * k + 3422) % 2 = 0 by omega]
    omega
  have hIter : iterate (32768 * k + 2847) 24 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (32768 * k + 2847)))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24]
  · omega

theorem descent_mod32768_2983 : ∀ k : Nat, iterate (32768 * k + 2983) 24 = 19683 * k + 1793 ∧ 19683 * k + 1793 < 32768 * k + 2983 := by
  intro k
  have h1 : C (32768 * k + 2983) = 98304 * k + 8950 := by
    unfold C
    simp [show (32768 * k + 2983) % 2 ≠ 0 by omega]
    omega
  have h2 : C (98304 * k + 8950) = 49152 * k + 4475 := by
    unfold C
    simp [show (98304 * k + 8950) % 2 = 0 by omega]
    omega
  have h3 : C (49152 * k + 4475) = 147456 * k + 13426 := by
    unfold C
    simp [show (49152 * k + 4475) % 2 ≠ 0 by omega]
    omega
  have h4 : C (147456 * k + 13426) = 73728 * k + 6713 := by
    unfold C
    simp [show (147456 * k + 13426) % 2 = 0 by omega]
    omega
  have h5 : C (73728 * k + 6713) = 221184 * k + 20140 := by
    unfold C
    simp [show (73728 * k + 6713) % 2 ≠ 0 by omega]
    omega
  have h6 : C (221184 * k + 20140) = 110592 * k + 10070 := by
    unfold C
    simp [show (221184 * k + 20140) % 2 = 0 by omega]
    omega
  have h7 : C (110592 * k + 10070) = 55296 * k + 5035 := by
    unfold C
    simp [show (110592 * k + 10070) % 2 = 0 by omega]
    omega
  have h8 : C (55296 * k + 5035) = 165888 * k + 15106 := by
    unfold C
    simp [show (55296 * k + 5035) % 2 ≠ 0 by omega]
    omega
  have h9 : C (165888 * k + 15106) = 82944 * k + 7553 := by
    unfold C
    simp [show (165888 * k + 15106) % 2 = 0 by omega]
    omega
  have h10 : C (82944 * k + 7553) = 248832 * k + 22660 := by
    unfold C
    simp [show (82944 * k + 7553) % 2 ≠ 0 by omega]
    omega
  have h11 : C (248832 * k + 22660) = 124416 * k + 11330 := by
    unfold C
    simp [show (248832 * k + 22660) % 2 = 0 by omega]
    omega
  have h12 : C (124416 * k + 11330) = 62208 * k + 5665 := by
    unfold C
    simp [show (124416 * k + 11330) % 2 = 0 by omega]
    omega
  have h13 : C (62208 * k + 5665) = 186624 * k + 16996 := by
    unfold C
    simp [show (62208 * k + 5665) % 2 ≠ 0 by omega]
    omega
  have h14 : C (186624 * k + 16996) = 93312 * k + 8498 := by
    unfold C
    simp [show (186624 * k + 16996) % 2 = 0 by omega]
    omega
  have h15 : C (93312 * k + 8498) = 46656 * k + 4249 := by
    unfold C
    simp [show (93312 * k + 8498) % 2 = 0 by omega]
    omega
  have h16 : C (46656 * k + 4249) = 139968 * k + 12748 := by
    unfold C
    simp [show (46656 * k + 4249) % 2 ≠ 0 by omega]
    omega
  have h17 : C (139968 * k + 12748) = 69984 * k + 6374 := by
    unfold C
    simp [show (139968 * k + 12748) % 2 = 0 by omega]
    omega
  have h18 : C (69984 * k + 6374) = 34992 * k + 3187 := by
    unfold C
    simp [show (69984 * k + 6374) % 2 = 0 by omega]
    omega
  have h19 : C (34992 * k + 3187) = 104976 * k + 9562 := by
    unfold C
    simp [show (34992 * k + 3187) % 2 ≠ 0 by omega]
    omega
  have h20 : C (104976 * k + 9562) = 52488 * k + 4781 := by
    unfold C
    simp [show (104976 * k + 9562) % 2 = 0 by omega]
    omega
  have h21 : C (52488 * k + 4781) = 157464 * k + 14344 := by
    unfold C
    simp [show (52488 * k + 4781) % 2 ≠ 0 by omega]
    omega
  have h22 : C (157464 * k + 14344) = 78732 * k + 7172 := by
    unfold C
    simp [show (157464 * k + 14344) % 2 = 0 by omega]
    omega
  have h23 : C (78732 * k + 7172) = 39366 * k + 3586 := by
    unfold C
    simp [show (78732 * k + 7172) % 2 = 0 by omega]
    omega
  have h24 : C (39366 * k + 3586) = 19683 * k + 1793 := by
    unfold C
    simp [show (39366 * k + 3586) % 2 = 0 by omega]
    omega
  have hIter : iterate (32768 * k + 2983) 24 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (32768 * k + 2983)))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24]
  · omega

theorem descent_mod32768_3163 : ∀ k : Nat, iterate (32768 * k + 3163) 24 = 19683 * k + 1901 ∧ 19683 * k + 1901 < 32768 * k + 3163 := by
  intro k
  have h1 : C (32768 * k + 3163) = 98304 * k + 9490 := by
    unfold C
    simp [show (32768 * k + 3163) % 2 ≠ 0 by omega]
    omega
  have h2 : C (98304 * k + 9490) = 49152 * k + 4745 := by
    unfold C
    simp [show (98304 * k + 9490) % 2 = 0 by omega]
    omega
  have h3 : C (49152 * k + 4745) = 147456 * k + 14236 := by
    unfold C
    simp [show (49152 * k + 4745) % 2 ≠ 0 by omega]
    omega
  have h4 : C (147456 * k + 14236) = 73728 * k + 7118 := by
    unfold C
    simp [show (147456 * k + 14236) % 2 = 0 by omega]
    omega
  have h5 : C (73728 * k + 7118) = 36864 * k + 3559 := by
    unfold C
    simp [show (73728 * k + 7118) % 2 = 0 by omega]
    omega
  have h6 : C (36864 * k + 3559) = 110592 * k + 10678 := by
    unfold C
    simp [show (36864 * k + 3559) % 2 ≠ 0 by omega]
    omega
  have h7 : C (110592 * k + 10678) = 55296 * k + 5339 := by
    unfold C
    simp [show (110592 * k + 10678) % 2 = 0 by omega]
    omega
  have h8 : C (55296 * k + 5339) = 165888 * k + 16018 := by
    unfold C
    simp [show (55296 * k + 5339) % 2 ≠ 0 by omega]
    omega
  have h9 : C (165888 * k + 16018) = 82944 * k + 8009 := by
    unfold C
    simp [show (165888 * k + 16018) % 2 = 0 by omega]
    omega
  have h10 : C (82944 * k + 8009) = 248832 * k + 24028 := by
    unfold C
    simp [show (82944 * k + 8009) % 2 ≠ 0 by omega]
    omega
  have h11 : C (248832 * k + 24028) = 124416 * k + 12014 := by
    unfold C
    simp [show (248832 * k + 24028) % 2 = 0 by omega]
    omega
  have h12 : C (124416 * k + 12014) = 62208 * k + 6007 := by
    unfold C
    simp [show (124416 * k + 12014) % 2 = 0 by omega]
    omega
  have h13 : C (62208 * k + 6007) = 186624 * k + 18022 := by
    unfold C
    simp [show (62208 * k + 6007) % 2 ≠ 0 by omega]
    omega
  have h14 : C (186624 * k + 18022) = 93312 * k + 9011 := by
    unfold C
    simp [show (186624 * k + 18022) % 2 = 0 by omega]
    omega
  have h15 : C (93312 * k + 9011) = 279936 * k + 27034 := by
    unfold C
    simp [show (93312 * k + 9011) % 2 ≠ 0 by omega]
    omega
  have h16 : C (279936 * k + 27034) = 139968 * k + 13517 := by
    unfold C
    simp [show (279936 * k + 27034) % 2 = 0 by omega]
    omega
  have h17 : C (139968 * k + 13517) = 419904 * k + 40552 := by
    unfold C
    simp [show (139968 * k + 13517) % 2 ≠ 0 by omega]
    omega
  have h18 : C (419904 * k + 40552) = 209952 * k + 20276 := by
    unfold C
    simp [show (419904 * k + 40552) % 2 = 0 by omega]
    omega
  have h19 : C (209952 * k + 20276) = 104976 * k + 10138 := by
    unfold C
    simp [show (209952 * k + 20276) % 2 = 0 by omega]
    omega
  have h20 : C (104976 * k + 10138) = 52488 * k + 5069 := by
    unfold C
    simp [show (104976 * k + 10138) % 2 = 0 by omega]
    omega
  have h21 : C (52488 * k + 5069) = 157464 * k + 15208 := by
    unfold C
    simp [show (52488 * k + 5069) % 2 ≠ 0 by omega]
    omega
  have h22 : C (157464 * k + 15208) = 78732 * k + 7604 := by
    unfold C
    simp [show (157464 * k + 15208) % 2 = 0 by omega]
    omega
  have h23 : C (78732 * k + 7604) = 39366 * k + 3802 := by
    unfold C
    simp [show (78732 * k + 7604) % 2 = 0 by omega]
    omega
  have h24 : C (39366 * k + 3802) = 19683 * k + 1901 := by
    unfold C
    simp [show (39366 * k + 3802) % 2 = 0 by omega]
    omega
  have hIter : iterate (32768 * k + 3163) 24 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (32768 * k + 3163)))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24]
  · omega

theorem descent_mod32768_3303 : ∀ k : Nat, iterate (32768 * k + 3303) 24 = 19683 * k + 1985 ∧ 19683 * k + 1985 < 32768 * k + 3303 := by
  intro k
  have h1 : C (32768 * k + 3303) = 98304 * k + 9910 := by
    unfold C
    simp [show (32768 * k + 3303) % 2 ≠ 0 by omega]
    omega
  have h2 : C (98304 * k + 9910) = 49152 * k + 4955 := by
    unfold C
    simp [show (98304 * k + 9910) % 2 = 0 by omega]
    omega
  have h3 : C (49152 * k + 4955) = 147456 * k + 14866 := by
    unfold C
    simp [show (49152 * k + 4955) % 2 ≠ 0 by omega]
    omega
  have h4 : C (147456 * k + 14866) = 73728 * k + 7433 := by
    unfold C
    simp [show (147456 * k + 14866) % 2 = 0 by omega]
    omega
  have h5 : C (73728 * k + 7433) = 221184 * k + 22300 := by
    unfold C
    simp [show (73728 * k + 7433) % 2 ≠ 0 by omega]
    omega
  have h6 : C (221184 * k + 22300) = 110592 * k + 11150 := by
    unfold C
    simp [show (221184 * k + 22300) % 2 = 0 by omega]
    omega
  have h7 : C (110592 * k + 11150) = 55296 * k + 5575 := by
    unfold C
    simp [show (110592 * k + 11150) % 2 = 0 by omega]
    omega
  have h8 : C (55296 * k + 5575) = 165888 * k + 16726 := by
    unfold C
    simp [show (55296 * k + 5575) % 2 ≠ 0 by omega]
    omega
  have h9 : C (165888 * k + 16726) = 82944 * k + 8363 := by
    unfold C
    simp [show (165888 * k + 16726) % 2 = 0 by omega]
    omega
  have h10 : C (82944 * k + 8363) = 248832 * k + 25090 := by
    unfold C
    simp [show (82944 * k + 8363) % 2 ≠ 0 by omega]
    omega
  have h11 : C (248832 * k + 25090) = 124416 * k + 12545 := by
    unfold C
    simp [show (248832 * k + 25090) % 2 = 0 by omega]
    omega
  have h12 : C (124416 * k + 12545) = 373248 * k + 37636 := by
    unfold C
    simp [show (124416 * k + 12545) % 2 ≠ 0 by omega]
    omega
  have h13 : C (373248 * k + 37636) = 186624 * k + 18818 := by
    unfold C
    simp [show (373248 * k + 37636) % 2 = 0 by omega]
    omega
  have h14 : C (186624 * k + 18818) = 93312 * k + 9409 := by
    unfold C
    simp [show (186624 * k + 18818) % 2 = 0 by omega]
    omega
  have h15 : C (93312 * k + 9409) = 279936 * k + 28228 := by
    unfold C
    simp [show (93312 * k + 9409) % 2 ≠ 0 by omega]
    omega
  have h16 : C (279936 * k + 28228) = 139968 * k + 14114 := by
    unfold C
    simp [show (279936 * k + 28228) % 2 = 0 by omega]
    omega
  have h17 : C (139968 * k + 14114) = 69984 * k + 7057 := by
    unfold C
    simp [show (139968 * k + 14114) % 2 = 0 by omega]
    omega
  have h18 : C (69984 * k + 7057) = 209952 * k + 21172 := by
    unfold C
    simp [show (69984 * k + 7057) % 2 ≠ 0 by omega]
    omega
  have h19 : C (209952 * k + 21172) = 104976 * k + 10586 := by
    unfold C
    simp [show (209952 * k + 21172) % 2 = 0 by omega]
    omega
  have h20 : C (104976 * k + 10586) = 52488 * k + 5293 := by
    unfold C
    simp [show (104976 * k + 10586) % 2 = 0 by omega]
    omega
  have h21 : C (52488 * k + 5293) = 157464 * k + 15880 := by
    unfold C
    simp [show (52488 * k + 5293) % 2 ≠ 0 by omega]
    omega
  have h22 : C (157464 * k + 15880) = 78732 * k + 7940 := by
    unfold C
    simp [show (157464 * k + 15880) % 2 = 0 by omega]
    omega
  have h23 : C (78732 * k + 7940) = 39366 * k + 3970 := by
    unfold C
    simp [show (78732 * k + 7940) % 2 = 0 by omega]
    omega
  have h24 : C (39366 * k + 3970) = 19683 * k + 1985 := by
    unfold C
    simp [show (39366 * k + 3970) % 2 = 0 by omega]
    omega
  have hIter : iterate (32768 * k + 3303) 24 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (32768 * k + 3303)))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24]
  · omega

theorem descent_mod32768_3611 : ∀ k : Nat, iterate (32768 * k + 3611) 24 = 19683 * k + 2170 ∧ 19683 * k + 2170 < 32768 * k + 3611 := by
  intro k
  have h1 : C (32768 * k + 3611) = 98304 * k + 10834 := by
    unfold C
    simp [show (32768 * k + 3611) % 2 ≠ 0 by omega]
    omega
  have h2 : C (98304 * k + 10834) = 49152 * k + 5417 := by
    unfold C
    simp [show (98304 * k + 10834) % 2 = 0 by omega]
    omega
  have h3 : C (49152 * k + 5417) = 147456 * k + 16252 := by
    unfold C
    simp [show (49152 * k + 5417) % 2 ≠ 0 by omega]
    omega
  have h4 : C (147456 * k + 16252) = 73728 * k + 8126 := by
    unfold C
    simp [show (147456 * k + 16252) % 2 = 0 by omega]
    omega
  have h5 : C (73728 * k + 8126) = 36864 * k + 4063 := by
    unfold C
    simp [show (73728 * k + 8126) % 2 = 0 by omega]
    omega
  have h6 : C (36864 * k + 4063) = 110592 * k + 12190 := by
    unfold C
    simp [show (36864 * k + 4063) % 2 ≠ 0 by omega]
    omega
  have h7 : C (110592 * k + 12190) = 55296 * k + 6095 := by
    unfold C
    simp [show (110592 * k + 12190) % 2 = 0 by omega]
    omega
  have h8 : C (55296 * k + 6095) = 165888 * k + 18286 := by
    unfold C
    simp [show (55296 * k + 6095) % 2 ≠ 0 by omega]
    omega
  have h9 : C (165888 * k + 18286) = 82944 * k + 9143 := by
    unfold C
    simp [show (165888 * k + 18286) % 2 = 0 by omega]
    omega
  have h10 : C (82944 * k + 9143) = 248832 * k + 27430 := by
    unfold C
    simp [show (82944 * k + 9143) % 2 ≠ 0 by omega]
    omega
  have h11 : C (248832 * k + 27430) = 124416 * k + 13715 := by
    unfold C
    simp [show (248832 * k + 27430) % 2 = 0 by omega]
    omega
  have h12 : C (124416 * k + 13715) = 373248 * k + 41146 := by
    unfold C
    simp [show (124416 * k + 13715) % 2 ≠ 0 by omega]
    omega
  have h13 : C (373248 * k + 41146) = 186624 * k + 20573 := by
    unfold C
    simp [show (373248 * k + 41146) % 2 = 0 by omega]
    omega
  have h14 : C (186624 * k + 20573) = 559872 * k + 61720 := by
    unfold C
    simp [show (186624 * k + 20573) % 2 ≠ 0 by omega]
    omega
  have h15 : C (559872 * k + 61720) = 279936 * k + 30860 := by
    unfold C
    simp [show (559872 * k + 61720) % 2 = 0 by omega]
    omega
  have h16 : C (279936 * k + 30860) = 139968 * k + 15430 := by
    unfold C
    simp [show (279936 * k + 30860) % 2 = 0 by omega]
    omega
  have h17 : C (139968 * k + 15430) = 69984 * k + 7715 := by
    unfold C
    simp [show (139968 * k + 15430) % 2 = 0 by omega]
    omega
  have h18 : C (69984 * k + 7715) = 209952 * k + 23146 := by
    unfold C
    simp [show (69984 * k + 7715) % 2 ≠ 0 by omega]
    omega
  have h19 : C (209952 * k + 23146) = 104976 * k + 11573 := by
    unfold C
    simp [show (209952 * k + 23146) % 2 = 0 by omega]
    omega
  have h20 : C (104976 * k + 11573) = 314928 * k + 34720 := by
    unfold C
    simp [show (104976 * k + 11573) % 2 ≠ 0 by omega]
    omega
  have h21 : C (314928 * k + 34720) = 157464 * k + 17360 := by
    unfold C
    simp [show (314928 * k + 34720) % 2 = 0 by omega]
    omega
  have h22 : C (157464 * k + 17360) = 78732 * k + 8680 := by
    unfold C
    simp [show (157464 * k + 17360) % 2 = 0 by omega]
    omega
  have h23 : C (78732 * k + 8680) = 39366 * k + 4340 := by
    unfold C
    simp [show (78732 * k + 8680) % 2 = 0 by omega]
    omega
  have h24 : C (39366 * k + 4340) = 19683 * k + 2170 := by
    unfold C
    simp [show (39366 * k + 4340) % 2 = 0 by omega]
    omega
  have hIter : iterate (32768 * k + 3611) 24 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (32768 * k + 3611)))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24]
  · omega

theorem descent_mod32768_3743 : ∀ k : Nat, iterate (32768 * k + 3743) 24 = 19683 * k + 2249 ∧ 19683 * k + 2249 < 32768 * k + 3743 := by
  intro k
  have h1 : C (32768 * k + 3743) = 98304 * k + 11230 := by
    unfold C
    simp [show (32768 * k + 3743) % 2 ≠ 0 by omega]
    omega
  have h2 : C (98304 * k + 11230) = 49152 * k + 5615 := by
    unfold C
    simp [show (98304 * k + 11230) % 2 = 0 by omega]
    omega
  have h3 : C (49152 * k + 5615) = 147456 * k + 16846 := by
    unfold C
    simp [show (49152 * k + 5615) % 2 ≠ 0 by omega]
    omega
  have h4 : C (147456 * k + 16846) = 73728 * k + 8423 := by
    unfold C
    simp [show (147456 * k + 16846) % 2 = 0 by omega]
    omega
  have h5 : C (73728 * k + 8423) = 221184 * k + 25270 := by
    unfold C
    simp [show (73728 * k + 8423) % 2 ≠ 0 by omega]
    omega
  have h6 : C (221184 * k + 25270) = 110592 * k + 12635 := by
    unfold C
    simp [show (221184 * k + 25270) % 2 = 0 by omega]
    omega
  have h7 : C (110592 * k + 12635) = 331776 * k + 37906 := by
    unfold C
    simp [show (110592 * k + 12635) % 2 ≠ 0 by omega]
    omega
  have h8 : C (331776 * k + 37906) = 165888 * k + 18953 := by
    unfold C
    simp [show (331776 * k + 37906) % 2 = 0 by omega]
    omega
  have h9 : C (165888 * k + 18953) = 497664 * k + 56860 := by
    unfold C
    simp [show (165888 * k + 18953) % 2 ≠ 0 by omega]
    omega
  have h10 : C (497664 * k + 56860) = 248832 * k + 28430 := by
    unfold C
    simp [show (497664 * k + 56860) % 2 = 0 by omega]
    omega
  have h11 : C (248832 * k + 28430) = 124416 * k + 14215 := by
    unfold C
    simp [show (248832 * k + 28430) % 2 = 0 by omega]
    omega
  have h12 : C (124416 * k + 14215) = 373248 * k + 42646 := by
    unfold C
    simp [show (124416 * k + 14215) % 2 ≠ 0 by omega]
    omega
  have h13 : C (373248 * k + 42646) = 186624 * k + 21323 := by
    unfold C
    simp [show (373248 * k + 42646) % 2 = 0 by omega]
    omega
  have h14 : C (186624 * k + 21323) = 559872 * k + 63970 := by
    unfold C
    simp [show (186624 * k + 21323) % 2 ≠ 0 by omega]
    omega
  have h15 : C (559872 * k + 63970) = 279936 * k + 31985 := by
    unfold C
    simp [show (559872 * k + 63970) % 2 = 0 by omega]
    omega
  have h16 : C (279936 * k + 31985) = 839808 * k + 95956 := by
    unfold C
    simp [show (279936 * k + 31985) % 2 ≠ 0 by omega]
    omega
  have h17 : C (839808 * k + 95956) = 419904 * k + 47978 := by
    unfold C
    simp [show (839808 * k + 95956) % 2 = 0 by omega]
    omega
  have h18 : C (419904 * k + 47978) = 209952 * k + 23989 := by
    unfold C
    simp [show (419904 * k + 47978) % 2 = 0 by omega]
    omega
  have h19 : C (209952 * k + 23989) = 629856 * k + 71968 := by
    unfold C
    simp [show (209952 * k + 23989) % 2 ≠ 0 by omega]
    omega
  have h20 : C (629856 * k + 71968) = 314928 * k + 35984 := by
    unfold C
    simp [show (629856 * k + 71968) % 2 = 0 by omega]
    omega
  have h21 : C (314928 * k + 35984) = 157464 * k + 17992 := by
    unfold C
    simp [show (314928 * k + 35984) % 2 = 0 by omega]
    omega
  have h22 : C (157464 * k + 17992) = 78732 * k + 8996 := by
    unfold C
    simp [show (157464 * k + 17992) % 2 = 0 by omega]
    omega
  have h23 : C (78732 * k + 8996) = 39366 * k + 4498 := by
    unfold C
    simp [show (78732 * k + 8996) % 2 = 0 by omega]
    omega
  have h24 : C (39366 * k + 4498) = 19683 * k + 2249 := by
    unfold C
    simp [show (39366 * k + 4498) % 2 = 0 by omega]
    omega
  have hIter : iterate (32768 * k + 3743) 24 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (32768 * k + 3743)))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24]
  · omega

theorem descent_mod32768_4007 : ∀ k : Nat, iterate (32768 * k + 4007) 24 = 19683 * k + 2408 ∧ 19683 * k + 2408 < 32768 * k + 4007 := by
  intro k
  have h1 : C (32768 * k + 4007) = 98304 * k + 12022 := by
    unfold C
    simp [show (32768 * k + 4007) % 2 ≠ 0 by omega]
    omega
  have h2 : C (98304 * k + 12022) = 49152 * k + 6011 := by
    unfold C
    simp [show (98304 * k + 12022) % 2 = 0 by omega]
    omega
  have h3 : C (49152 * k + 6011) = 147456 * k + 18034 := by
    unfold C
    simp [show (49152 * k + 6011) % 2 ≠ 0 by omega]
    omega
  have h4 : C (147456 * k + 18034) = 73728 * k + 9017 := by
    unfold C
    simp [show (147456 * k + 18034) % 2 = 0 by omega]
    omega
  have h5 : C (73728 * k + 9017) = 221184 * k + 27052 := by
    unfold C
    simp [show (73728 * k + 9017) % 2 ≠ 0 by omega]
    omega
  have h6 : C (221184 * k + 27052) = 110592 * k + 13526 := by
    unfold C
    simp [show (221184 * k + 27052) % 2 = 0 by omega]
    omega
  have h7 : C (110592 * k + 13526) = 55296 * k + 6763 := by
    unfold C
    simp [show (110592 * k + 13526) % 2 = 0 by omega]
    omega
  have h8 : C (55296 * k + 6763) = 165888 * k + 20290 := by
    unfold C
    simp [show (55296 * k + 6763) % 2 ≠ 0 by omega]
    omega
  have h9 : C (165888 * k + 20290) = 82944 * k + 10145 := by
    unfold C
    simp [show (165888 * k + 20290) % 2 = 0 by omega]
    omega
  have h10 : C (82944 * k + 10145) = 248832 * k + 30436 := by
    unfold C
    simp [show (82944 * k + 10145) % 2 ≠ 0 by omega]
    omega
  have h11 : C (248832 * k + 30436) = 124416 * k + 15218 := by
    unfold C
    simp [show (248832 * k + 30436) % 2 = 0 by omega]
    omega
  have h12 : C (124416 * k + 15218) = 62208 * k + 7609 := by
    unfold C
    simp [show (124416 * k + 15218) % 2 = 0 by omega]
    omega
  have h13 : C (62208 * k + 7609) = 186624 * k + 22828 := by
    unfold C
    simp [show (62208 * k + 7609) % 2 ≠ 0 by omega]
    omega
  have h14 : C (186624 * k + 22828) = 93312 * k + 11414 := by
    unfold C
    simp [show (186624 * k + 22828) % 2 = 0 by omega]
    omega
  have h15 : C (93312 * k + 11414) = 46656 * k + 5707 := by
    unfold C
    simp [show (93312 * k + 11414) % 2 = 0 by omega]
    omega
  have h16 : C (46656 * k + 5707) = 139968 * k + 17122 := by
    unfold C
    simp [show (46656 * k + 5707) % 2 ≠ 0 by omega]
    omega
  have h17 : C (139968 * k + 17122) = 69984 * k + 8561 := by
    unfold C
    simp [show (139968 * k + 17122) % 2 = 0 by omega]
    omega
  have h18 : C (69984 * k + 8561) = 209952 * k + 25684 := by
    unfold C
    simp [show (69984 * k + 8561) % 2 ≠ 0 by omega]
    omega
  have h19 : C (209952 * k + 25684) = 104976 * k + 12842 := by
    unfold C
    simp [show (209952 * k + 25684) % 2 = 0 by omega]
    omega
  have h20 : C (104976 * k + 12842) = 52488 * k + 6421 := by
    unfold C
    simp [show (104976 * k + 12842) % 2 = 0 by omega]
    omega
  have h21 : C (52488 * k + 6421) = 157464 * k + 19264 := by
    unfold C
    simp [show (52488 * k + 6421) % 2 ≠ 0 by omega]
    omega
  have h22 : C (157464 * k + 19264) = 78732 * k + 9632 := by
    unfold C
    simp [show (157464 * k + 19264) % 2 = 0 by omega]
    omega
  have h23 : C (78732 * k + 9632) = 39366 * k + 4816 := by
    unfold C
    simp [show (78732 * k + 9632) % 2 = 0 by omega]
    omega
  have h24 : C (39366 * k + 4816) = 19683 * k + 2408 := by
    unfold C
    simp [show (39366 * k + 4816) % 2 = 0 by omega]
    omega
  have hIter : iterate (32768 * k + 4007) 24 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (32768 * k + 4007)))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24]
  · omega

#print axioms descent_mod32768_2799
#print axioms descent_mod32768_2847
#print axioms descent_mod32768_2983
#print axioms descent_mod32768_3163
#print axioms descent_mod32768_3303
#print axioms descent_mod32768_3611
#print axioms descent_mod32768_3743
#print axioms descent_mod32768_4007

end CollatzM15ShardC
