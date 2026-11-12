import Mathlib.Data.Nat.Prime.Basic

namespace CollatzM15ShardI

def C (n : Nat) : Nat := if n % 2 = 0 then n / 2 else 3 * n + 1

def iterate (n t : Nat) : Nat := Nat.rec n (fun _ previous => C previous) t

theorem descent_mod32768_11943 : ∀ k : Nat, iterate (32768 * k + 11943) 24 = 19683 * k + 7175 ∧ 19683 * k + 7175 < 32768 * k + 11943 := by
  intro k
  have h1 : C (32768 * k + 11943) = 98304 * k + 35830 := by
    unfold C
    simp [show (32768 * k + 11943) % 2 ≠ 0 by omega]
    omega
  have h2 : C (98304 * k + 35830) = 49152 * k + 17915 := by
    unfold C
    simp [show (98304 * k + 35830) % 2 = 0 by omega]
    omega
  have h3 : C (49152 * k + 17915) = 147456 * k + 53746 := by
    unfold C
    simp [show (49152 * k + 17915) % 2 ≠ 0 by omega]
    omega
  have h4 : C (147456 * k + 53746) = 73728 * k + 26873 := by
    unfold C
    simp [show (147456 * k + 53746) % 2 = 0 by omega]
    omega
  have h5 : C (73728 * k + 26873) = 221184 * k + 80620 := by
    unfold C
    simp [show (73728 * k + 26873) % 2 ≠ 0 by omega]
    omega
  have h6 : C (221184 * k + 80620) = 110592 * k + 40310 := by
    unfold C
    simp [show (221184 * k + 80620) % 2 = 0 by omega]
    omega
  have h7 : C (110592 * k + 40310) = 55296 * k + 20155 := by
    unfold C
    simp [show (110592 * k + 40310) % 2 = 0 by omega]
    omega
  have h8 : C (55296 * k + 20155) = 165888 * k + 60466 := by
    unfold C
    simp [show (55296 * k + 20155) % 2 ≠ 0 by omega]
    omega
  have h9 : C (165888 * k + 60466) = 82944 * k + 30233 := by
    unfold C
    simp [show (165888 * k + 60466) % 2 = 0 by omega]
    omega
  have h10 : C (82944 * k + 30233) = 248832 * k + 90700 := by
    unfold C
    simp [show (82944 * k + 30233) % 2 ≠ 0 by omega]
    omega
  have h11 : C (248832 * k + 90700) = 124416 * k + 45350 := by
    unfold C
    simp [show (248832 * k + 90700) % 2 = 0 by omega]
    omega
  have h12 : C (124416 * k + 45350) = 62208 * k + 22675 := by
    unfold C
    simp [show (124416 * k + 45350) % 2 = 0 by omega]
    omega
  have h13 : C (62208 * k + 22675) = 186624 * k + 68026 := by
    unfold C
    simp [show (62208 * k + 22675) % 2 ≠ 0 by omega]
    omega
  have h14 : C (186624 * k + 68026) = 93312 * k + 34013 := by
    unfold C
    simp [show (186624 * k + 68026) % 2 = 0 by omega]
    omega
  have h15 : C (93312 * k + 34013) = 279936 * k + 102040 := by
    unfold C
    simp [show (93312 * k + 34013) % 2 ≠ 0 by omega]
    omega
  have h16 : C (279936 * k + 102040) = 139968 * k + 51020 := by
    unfold C
    simp [show (279936 * k + 102040) % 2 = 0 by omega]
    omega
  have h17 : C (139968 * k + 51020) = 69984 * k + 25510 := by
    unfold C
    simp [show (139968 * k + 51020) % 2 = 0 by omega]
    omega
  have h18 : C (69984 * k + 25510) = 34992 * k + 12755 := by
    unfold C
    simp [show (69984 * k + 25510) % 2 = 0 by omega]
    omega
  have h19 : C (34992 * k + 12755) = 104976 * k + 38266 := by
    unfold C
    simp [show (34992 * k + 12755) % 2 ≠ 0 by omega]
    omega
  have h20 : C (104976 * k + 38266) = 52488 * k + 19133 := by
    unfold C
    simp [show (104976 * k + 38266) % 2 = 0 by omega]
    omega
  have h21 : C (52488 * k + 19133) = 157464 * k + 57400 := by
    unfold C
    simp [show (52488 * k + 19133) % 2 ≠ 0 by omega]
    omega
  have h22 : C (157464 * k + 57400) = 78732 * k + 28700 := by
    unfold C
    simp [show (157464 * k + 57400) % 2 = 0 by omega]
    omega
  have h23 : C (78732 * k + 28700) = 39366 * k + 14350 := by
    unfold C
    simp [show (78732 * k + 28700) % 2 = 0 by omega]
    omega
  have h24 : C (39366 * k + 14350) = 19683 * k + 7175 := by
    unfold C
    simp [show (39366 * k + 14350) % 2 = 0 by omega]
    omega
  have hIter : iterate (32768 * k + 11943) 24 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (32768 * k + 11943)))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24]
  · omega

theorem descent_mod32768_11967 : ∀ k : Nat, iterate (32768 * k + 11967) 24 = 19683 * k + 7189 ∧ 19683 * k + 7189 < 32768 * k + 11967 := by
  intro k
  have h1 : C (32768 * k + 11967) = 98304 * k + 35902 := by
    unfold C
    simp [show (32768 * k + 11967) % 2 ≠ 0 by omega]
    omega
  have h2 : C (98304 * k + 35902) = 49152 * k + 17951 := by
    unfold C
    simp [show (98304 * k + 35902) % 2 = 0 by omega]
    omega
  have h3 : C (49152 * k + 17951) = 147456 * k + 53854 := by
    unfold C
    simp [show (49152 * k + 17951) % 2 ≠ 0 by omega]
    omega
  have h4 : C (147456 * k + 53854) = 73728 * k + 26927 := by
    unfold C
    simp [show (147456 * k + 53854) % 2 = 0 by omega]
    omega
  have h5 : C (73728 * k + 26927) = 221184 * k + 80782 := by
    unfold C
    simp [show (73728 * k + 26927) % 2 ≠ 0 by omega]
    omega
  have h6 : C (221184 * k + 80782) = 110592 * k + 40391 := by
    unfold C
    simp [show (221184 * k + 80782) % 2 = 0 by omega]
    omega
  have h7 : C (110592 * k + 40391) = 331776 * k + 121174 := by
    unfold C
    simp [show (110592 * k + 40391) % 2 ≠ 0 by omega]
    omega
  have h8 : C (331776 * k + 121174) = 165888 * k + 60587 := by
    unfold C
    simp [show (331776 * k + 121174) % 2 = 0 by omega]
    omega
  have h9 : C (165888 * k + 60587) = 497664 * k + 181762 := by
    unfold C
    simp [show (165888 * k + 60587) % 2 ≠ 0 by omega]
    omega
  have h10 : C (497664 * k + 181762) = 248832 * k + 90881 := by
    unfold C
    simp [show (497664 * k + 181762) % 2 = 0 by omega]
    omega
  have h11 : C (248832 * k + 90881) = 746496 * k + 272644 := by
    unfold C
    simp [show (248832 * k + 90881) % 2 ≠ 0 by omega]
    omega
  have h12 : C (746496 * k + 272644) = 373248 * k + 136322 := by
    unfold C
    simp [show (746496 * k + 272644) % 2 = 0 by omega]
    omega
  have h13 : C (373248 * k + 136322) = 186624 * k + 68161 := by
    unfold C
    simp [show (373248 * k + 136322) % 2 = 0 by omega]
    omega
  have h14 : C (186624 * k + 68161) = 559872 * k + 204484 := by
    unfold C
    simp [show (186624 * k + 68161) % 2 ≠ 0 by omega]
    omega
  have h15 : C (559872 * k + 204484) = 279936 * k + 102242 := by
    unfold C
    simp [show (559872 * k + 204484) % 2 = 0 by omega]
    omega
  have h16 : C (279936 * k + 102242) = 139968 * k + 51121 := by
    unfold C
    simp [show (279936 * k + 102242) % 2 = 0 by omega]
    omega
  have h17 : C (139968 * k + 51121) = 419904 * k + 153364 := by
    unfold C
    simp [show (139968 * k + 51121) % 2 ≠ 0 by omega]
    omega
  have h18 : C (419904 * k + 153364) = 209952 * k + 76682 := by
    unfold C
    simp [show (419904 * k + 153364) % 2 = 0 by omega]
    omega
  have h19 : C (209952 * k + 76682) = 104976 * k + 38341 := by
    unfold C
    simp [show (209952 * k + 76682) % 2 = 0 by omega]
    omega
  have h20 : C (104976 * k + 38341) = 314928 * k + 115024 := by
    unfold C
    simp [show (104976 * k + 38341) % 2 ≠ 0 by omega]
    omega
  have h21 : C (314928 * k + 115024) = 157464 * k + 57512 := by
    unfold C
    simp [show (314928 * k + 115024) % 2 = 0 by omega]
    omega
  have h22 : C (157464 * k + 57512) = 78732 * k + 28756 := by
    unfold C
    simp [show (157464 * k + 57512) % 2 = 0 by omega]
    omega
  have h23 : C (78732 * k + 28756) = 39366 * k + 14378 := by
    unfold C
    simp [show (78732 * k + 28756) % 2 = 0 by omega]
    omega
  have h24 : C (39366 * k + 14378) = 19683 * k + 7189 := by
    unfold C
    simp [show (39366 * k + 14378) % 2 = 0 by omega]
    omega
  have hIter : iterate (32768 * k + 11967) 24 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (32768 * k + 11967)))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24]
  · omega

theorem descent_mod32768_12063 : ∀ k : Nat, iterate (32768 * k + 12063) 24 = 19683 * k + 7247 ∧ 19683 * k + 7247 < 32768 * k + 12063 := by
  intro k
  have h1 : C (32768 * k + 12063) = 98304 * k + 36190 := by
    unfold C
    simp [show (32768 * k + 12063) % 2 ≠ 0 by omega]
    omega
  have h2 : C (98304 * k + 36190) = 49152 * k + 18095 := by
    unfold C
    simp [show (98304 * k + 36190) % 2 = 0 by omega]
    omega
  have h3 : C (49152 * k + 18095) = 147456 * k + 54286 := by
    unfold C
    simp [show (49152 * k + 18095) % 2 ≠ 0 by omega]
    omega
  have h4 : C (147456 * k + 54286) = 73728 * k + 27143 := by
    unfold C
    simp [show (147456 * k + 54286) % 2 = 0 by omega]
    omega
  have h5 : C (73728 * k + 27143) = 221184 * k + 81430 := by
    unfold C
    simp [show (73728 * k + 27143) % 2 ≠ 0 by omega]
    omega
  have h6 : C (221184 * k + 81430) = 110592 * k + 40715 := by
    unfold C
    simp [show (221184 * k + 81430) % 2 = 0 by omega]
    omega
  have h7 : C (110592 * k + 40715) = 331776 * k + 122146 := by
    unfold C
    simp [show (110592 * k + 40715) % 2 ≠ 0 by omega]
    omega
  have h8 : C (331776 * k + 122146) = 165888 * k + 61073 := by
    unfold C
    simp [show (331776 * k + 122146) % 2 = 0 by omega]
    omega
  have h9 : C (165888 * k + 61073) = 497664 * k + 183220 := by
    unfold C
    simp [show (165888 * k + 61073) % 2 ≠ 0 by omega]
    omega
  have h10 : C (497664 * k + 183220) = 248832 * k + 91610 := by
    unfold C
    simp [show (497664 * k + 183220) % 2 = 0 by omega]
    omega
  have h11 : C (248832 * k + 91610) = 124416 * k + 45805 := by
    unfold C
    simp [show (248832 * k + 91610) % 2 = 0 by omega]
    omega
  have h12 : C (124416 * k + 45805) = 373248 * k + 137416 := by
    unfold C
    simp [show (124416 * k + 45805) % 2 ≠ 0 by omega]
    omega
  have h13 : C (373248 * k + 137416) = 186624 * k + 68708 := by
    unfold C
    simp [show (373248 * k + 137416) % 2 = 0 by omega]
    omega
  have h14 : C (186624 * k + 68708) = 93312 * k + 34354 := by
    unfold C
    simp [show (186624 * k + 68708) % 2 = 0 by omega]
    omega
  have h15 : C (93312 * k + 34354) = 46656 * k + 17177 := by
    unfold C
    simp [show (93312 * k + 34354) % 2 = 0 by omega]
    omega
  have h16 : C (46656 * k + 17177) = 139968 * k + 51532 := by
    unfold C
    simp [show (46656 * k + 17177) % 2 ≠ 0 by omega]
    omega
  have h17 : C (139968 * k + 51532) = 69984 * k + 25766 := by
    unfold C
    simp [show (139968 * k + 51532) % 2 = 0 by omega]
    omega
  have h18 : C (69984 * k + 25766) = 34992 * k + 12883 := by
    unfold C
    simp [show (69984 * k + 25766) % 2 = 0 by omega]
    omega
  have h19 : C (34992 * k + 12883) = 104976 * k + 38650 := by
    unfold C
    simp [show (34992 * k + 12883) % 2 ≠ 0 by omega]
    omega
  have h20 : C (104976 * k + 38650) = 52488 * k + 19325 := by
    unfold C
    simp [show (104976 * k + 38650) % 2 = 0 by omega]
    omega
  have h21 : C (52488 * k + 19325) = 157464 * k + 57976 := by
    unfold C
    simp [show (52488 * k + 19325) % 2 ≠ 0 by omega]
    omega
  have h22 : C (157464 * k + 57976) = 78732 * k + 28988 := by
    unfold C
    simp [show (157464 * k + 57976) % 2 = 0 by omega]
    omega
  have h23 : C (78732 * k + 28988) = 39366 * k + 14494 := by
    unfold C
    simp [show (78732 * k + 28988) % 2 = 0 by omega]
    omega
  have h24 : C (39366 * k + 14494) = 19683 * k + 7247 := by
    unfold C
    simp [show (39366 * k + 14494) % 2 = 0 by omega]
    omega
  have hIter : iterate (32768 * k + 12063) 24 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (32768 * k + 12063)))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24]
  · omega

theorem descent_mod32768_12143 : ∀ k : Nat, iterate (32768 * k + 12143) 24 = 19683 * k + 7295 ∧ 19683 * k + 7295 < 32768 * k + 12143 := by
  intro k
  have h1 : C (32768 * k + 12143) = 98304 * k + 36430 := by
    unfold C
    simp [show (32768 * k + 12143) % 2 ≠ 0 by omega]
    omega
  have h2 : C (98304 * k + 36430) = 49152 * k + 18215 := by
    unfold C
    simp [show (98304 * k + 36430) % 2 = 0 by omega]
    omega
  have h3 : C (49152 * k + 18215) = 147456 * k + 54646 := by
    unfold C
    simp [show (49152 * k + 18215) % 2 ≠ 0 by omega]
    omega
  have h4 : C (147456 * k + 54646) = 73728 * k + 27323 := by
    unfold C
    simp [show (147456 * k + 54646) % 2 = 0 by omega]
    omega
  have h5 : C (73728 * k + 27323) = 221184 * k + 81970 := by
    unfold C
    simp [show (73728 * k + 27323) % 2 ≠ 0 by omega]
    omega
  have h6 : C (221184 * k + 81970) = 110592 * k + 40985 := by
    unfold C
    simp [show (221184 * k + 81970) % 2 = 0 by omega]
    omega
  have h7 : C (110592 * k + 40985) = 331776 * k + 122956 := by
    unfold C
    simp [show (110592 * k + 40985) % 2 ≠ 0 by omega]
    omega
  have h8 : C (331776 * k + 122956) = 165888 * k + 61478 := by
    unfold C
    simp [show (331776 * k + 122956) % 2 = 0 by omega]
    omega
  have h9 : C (165888 * k + 61478) = 82944 * k + 30739 := by
    unfold C
    simp [show (165888 * k + 61478) % 2 = 0 by omega]
    omega
  have h10 : C (82944 * k + 30739) = 248832 * k + 92218 := by
    unfold C
    simp [show (82944 * k + 30739) % 2 ≠ 0 by omega]
    omega
  have h11 : C (248832 * k + 92218) = 124416 * k + 46109 := by
    unfold C
    simp [show (248832 * k + 92218) % 2 = 0 by omega]
    omega
  have h12 : C (124416 * k + 46109) = 373248 * k + 138328 := by
    unfold C
    simp [show (124416 * k + 46109) % 2 ≠ 0 by omega]
    omega
  have h13 : C (373248 * k + 138328) = 186624 * k + 69164 := by
    unfold C
    simp [show (373248 * k + 138328) % 2 = 0 by omega]
    omega
  have h14 : C (186624 * k + 69164) = 93312 * k + 34582 := by
    unfold C
    simp [show (186624 * k + 69164) % 2 = 0 by omega]
    omega
  have h15 : C (93312 * k + 34582) = 46656 * k + 17291 := by
    unfold C
    simp [show (93312 * k + 34582) % 2 = 0 by omega]
    omega
  have h16 : C (46656 * k + 17291) = 139968 * k + 51874 := by
    unfold C
    simp [show (46656 * k + 17291) % 2 ≠ 0 by omega]
    omega
  have h17 : C (139968 * k + 51874) = 69984 * k + 25937 := by
    unfold C
    simp [show (139968 * k + 51874) % 2 = 0 by omega]
    omega
  have h18 : C (69984 * k + 25937) = 209952 * k + 77812 := by
    unfold C
    simp [show (69984 * k + 25937) % 2 ≠ 0 by omega]
    omega
  have h19 : C (209952 * k + 77812) = 104976 * k + 38906 := by
    unfold C
    simp [show (209952 * k + 77812) % 2 = 0 by omega]
    omega
  have h20 : C (104976 * k + 38906) = 52488 * k + 19453 := by
    unfold C
    simp [show (104976 * k + 38906) % 2 = 0 by omega]
    omega
  have h21 : C (52488 * k + 19453) = 157464 * k + 58360 := by
    unfold C
    simp [show (52488 * k + 19453) % 2 ≠ 0 by omega]
    omega
  have h22 : C (157464 * k + 58360) = 78732 * k + 29180 := by
    unfold C
    simp [show (157464 * k + 58360) % 2 = 0 by omega]
    omega
  have h23 : C (78732 * k + 29180) = 39366 * k + 14590 := by
    unfold C
    simp [show (78732 * k + 29180) % 2 = 0 by omega]
    omega
  have h24 : C (39366 * k + 14590) = 19683 * k + 7295 := by
    unfold C
    simp [show (39366 * k + 14590) % 2 = 0 by omega]
    omega
  have hIter : iterate (32768 * k + 12143) 24 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (32768 * k + 12143)))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24]
  · omega

theorem descent_mod32768_12511 : ∀ k : Nat, iterate (32768 * k + 12511) 24 = 19683 * k + 7516 ∧ 19683 * k + 7516 < 32768 * k + 12511 := by
  intro k
  have h1 : C (32768 * k + 12511) = 98304 * k + 37534 := by
    unfold C
    simp [show (32768 * k + 12511) % 2 ≠ 0 by omega]
    omega
  have h2 : C (98304 * k + 37534) = 49152 * k + 18767 := by
    unfold C
    simp [show (98304 * k + 37534) % 2 = 0 by omega]
    omega
  have h3 : C (49152 * k + 18767) = 147456 * k + 56302 := by
    unfold C
    simp [show (49152 * k + 18767) % 2 ≠ 0 by omega]
    omega
  have h4 : C (147456 * k + 56302) = 73728 * k + 28151 := by
    unfold C
    simp [show (147456 * k + 56302) % 2 = 0 by omega]
    omega
  have h5 : C (73728 * k + 28151) = 221184 * k + 84454 := by
    unfold C
    simp [show (73728 * k + 28151) % 2 ≠ 0 by omega]
    omega
  have h6 : C (221184 * k + 84454) = 110592 * k + 42227 := by
    unfold C
    simp [show (221184 * k + 84454) % 2 = 0 by omega]
    omega
  have h7 : C (110592 * k + 42227) = 331776 * k + 126682 := by
    unfold C
    simp [show (110592 * k + 42227) % 2 ≠ 0 by omega]
    omega
  have h8 : C (331776 * k + 126682) = 165888 * k + 63341 := by
    unfold C
    simp [show (331776 * k + 126682) % 2 = 0 by omega]
    omega
  have h9 : C (165888 * k + 63341) = 497664 * k + 190024 := by
    unfold C
    simp [show (165888 * k + 63341) % 2 ≠ 0 by omega]
    omega
  have h10 : C (497664 * k + 190024) = 248832 * k + 95012 := by
    unfold C
    simp [show (497664 * k + 190024) % 2 = 0 by omega]
    omega
  have h11 : C (248832 * k + 95012) = 124416 * k + 47506 := by
    unfold C
    simp [show (248832 * k + 95012) % 2 = 0 by omega]
    omega
  have h12 : C (124416 * k + 47506) = 62208 * k + 23753 := by
    unfold C
    simp [show (124416 * k + 47506) % 2 = 0 by omega]
    omega
  have h13 : C (62208 * k + 23753) = 186624 * k + 71260 := by
    unfold C
    simp [show (62208 * k + 23753) % 2 ≠ 0 by omega]
    omega
  have h14 : C (186624 * k + 71260) = 93312 * k + 35630 := by
    unfold C
    simp [show (186624 * k + 71260) % 2 = 0 by omega]
    omega
  have h15 : C (93312 * k + 35630) = 46656 * k + 17815 := by
    unfold C
    simp [show (93312 * k + 35630) % 2 = 0 by omega]
    omega
  have h16 : C (46656 * k + 17815) = 139968 * k + 53446 := by
    unfold C
    simp [show (46656 * k + 17815) % 2 ≠ 0 by omega]
    omega
  have h17 : C (139968 * k + 53446) = 69984 * k + 26723 := by
    unfold C
    simp [show (139968 * k + 53446) % 2 = 0 by omega]
    omega
  have h18 : C (69984 * k + 26723) = 209952 * k + 80170 := by
    unfold C
    simp [show (69984 * k + 26723) % 2 ≠ 0 by omega]
    omega
  have h19 : C (209952 * k + 80170) = 104976 * k + 40085 := by
    unfold C
    simp [show (209952 * k + 80170) % 2 = 0 by omega]
    omega
  have h20 : C (104976 * k + 40085) = 314928 * k + 120256 := by
    unfold C
    simp [show (104976 * k + 40085) % 2 ≠ 0 by omega]
    omega
  have h21 : C (314928 * k + 120256) = 157464 * k + 60128 := by
    unfold C
    simp [show (314928 * k + 120256) % 2 = 0 by omega]
    omega
  have h22 : C (157464 * k + 60128) = 78732 * k + 30064 := by
    unfold C
    simp [show (157464 * k + 60128) % 2 = 0 by omega]
    omega
  have h23 : C (78732 * k + 30064) = 39366 * k + 15032 := by
    unfold C
    simp [show (78732 * k + 30064) % 2 = 0 by omega]
    omega
  have h24 : C (39366 * k + 15032) = 19683 * k + 7516 := by
    unfold C
    simp [show (39366 * k + 15032) % 2 = 0 by omega]
    omega
  have hIter : iterate (32768 * k + 12511) 24 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (32768 * k + 12511)))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24]
  · omega

theorem descent_mod32768_12543 : ∀ k : Nat, iterate (32768 * k + 12543) 24 = 19683 * k + 7535 ∧ 19683 * k + 7535 < 32768 * k + 12543 := by
  intro k
  have h1 : C (32768 * k + 12543) = 98304 * k + 37630 := by
    unfold C
    simp [show (32768 * k + 12543) % 2 ≠ 0 by omega]
    omega
  have h2 : C (98304 * k + 37630) = 49152 * k + 18815 := by
    unfold C
    simp [show (98304 * k + 37630) % 2 = 0 by omega]
    omega
  have h3 : C (49152 * k + 18815) = 147456 * k + 56446 := by
    unfold C
    simp [show (49152 * k + 18815) % 2 ≠ 0 by omega]
    omega
  have h4 : C (147456 * k + 56446) = 73728 * k + 28223 := by
    unfold C
    simp [show (147456 * k + 56446) % 2 = 0 by omega]
    omega
  have h5 : C (73728 * k + 28223) = 221184 * k + 84670 := by
    unfold C
    simp [show (73728 * k + 28223) % 2 ≠ 0 by omega]
    omega
  have h6 : C (221184 * k + 84670) = 110592 * k + 42335 := by
    unfold C
    simp [show (221184 * k + 84670) % 2 = 0 by omega]
    omega
  have h7 : C (110592 * k + 42335) = 331776 * k + 127006 := by
    unfold C
    simp [show (110592 * k + 42335) % 2 ≠ 0 by omega]
    omega
  have h8 : C (331776 * k + 127006) = 165888 * k + 63503 := by
    unfold C
    simp [show (331776 * k + 127006) % 2 = 0 by omega]
    omega
  have h9 : C (165888 * k + 63503) = 497664 * k + 190510 := by
    unfold C
    simp [show (165888 * k + 63503) % 2 ≠ 0 by omega]
    omega
  have h10 : C (497664 * k + 190510) = 248832 * k + 95255 := by
    unfold C
    simp [show (497664 * k + 190510) % 2 = 0 by omega]
    omega
  have h11 : C (248832 * k + 95255) = 746496 * k + 285766 := by
    unfold C
    simp [show (248832 * k + 95255) % 2 ≠ 0 by omega]
    omega
  have h12 : C (746496 * k + 285766) = 373248 * k + 142883 := by
    unfold C
    simp [show (746496 * k + 285766) % 2 = 0 by omega]
    omega
  have h13 : C (373248 * k + 142883) = 1119744 * k + 428650 := by
    unfold C
    simp [show (373248 * k + 142883) % 2 ≠ 0 by omega]
    omega
  have h14 : C (1119744 * k + 428650) = 559872 * k + 214325 := by
    unfold C
    simp [show (1119744 * k + 428650) % 2 = 0 by omega]
    omega
  have h15 : C (559872 * k + 214325) = 1679616 * k + 642976 := by
    unfold C
    simp [show (559872 * k + 214325) % 2 ≠ 0 by omega]
    omega
  have h16 : C (1679616 * k + 642976) = 839808 * k + 321488 := by
    unfold C
    simp [show (1679616 * k + 642976) % 2 = 0 by omega]
    omega
  have h17 : C (839808 * k + 321488) = 419904 * k + 160744 := by
    unfold C
    simp [show (839808 * k + 321488) % 2 = 0 by omega]
    omega
  have h18 : C (419904 * k + 160744) = 209952 * k + 80372 := by
    unfold C
    simp [show (419904 * k + 160744) % 2 = 0 by omega]
    omega
  have h19 : C (209952 * k + 80372) = 104976 * k + 40186 := by
    unfold C
    simp [show (209952 * k + 80372) % 2 = 0 by omega]
    omega
  have h20 : C (104976 * k + 40186) = 52488 * k + 20093 := by
    unfold C
    simp [show (104976 * k + 40186) % 2 = 0 by omega]
    omega
  have h21 : C (52488 * k + 20093) = 157464 * k + 60280 := by
    unfold C
    simp [show (52488 * k + 20093) % 2 ≠ 0 by omega]
    omega
  have h22 : C (157464 * k + 60280) = 78732 * k + 30140 := by
    unfold C
    simp [show (157464 * k + 60280) % 2 = 0 by omega]
    omega
  have h23 : C (78732 * k + 30140) = 39366 * k + 15070 := by
    unfold C
    simp [show (78732 * k + 30140) % 2 = 0 by omega]
    omega
  have h24 : C (39366 * k + 15070) = 19683 * k + 7535 := by
    unfold C
    simp [show (39366 * k + 15070) % 2 = 0 by omega]
    omega
  have hIter : iterate (32768 * k + 12543) 24 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (32768 * k + 12543)))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24]
  · omega

theorem descent_mod32768_12571 : ∀ k : Nat, iterate (32768 * k + 12571) 24 = 19683 * k + 7552 ∧ 19683 * k + 7552 < 32768 * k + 12571 := by
  intro k
  have h1 : C (32768 * k + 12571) = 98304 * k + 37714 := by
    unfold C
    simp [show (32768 * k + 12571) % 2 ≠ 0 by omega]
    omega
  have h2 : C (98304 * k + 37714) = 49152 * k + 18857 := by
    unfold C
    simp [show (98304 * k + 37714) % 2 = 0 by omega]
    omega
  have h3 : C (49152 * k + 18857) = 147456 * k + 56572 := by
    unfold C
    simp [show (49152 * k + 18857) % 2 ≠ 0 by omega]
    omega
  have h4 : C (147456 * k + 56572) = 73728 * k + 28286 := by
    unfold C
    simp [show (147456 * k + 56572) % 2 = 0 by omega]
    omega
  have h5 : C (73728 * k + 28286) = 36864 * k + 14143 := by
    unfold C
    simp [show (73728 * k + 28286) % 2 = 0 by omega]
    omega
  have h6 : C (36864 * k + 14143) = 110592 * k + 42430 := by
    unfold C
    simp [show (36864 * k + 14143) % 2 ≠ 0 by omega]
    omega
  have h7 : C (110592 * k + 42430) = 55296 * k + 21215 := by
    unfold C
    simp [show (110592 * k + 42430) % 2 = 0 by omega]
    omega
  have h8 : C (55296 * k + 21215) = 165888 * k + 63646 := by
    unfold C
    simp [show (55296 * k + 21215) % 2 ≠ 0 by omega]
    omega
  have h9 : C (165888 * k + 63646) = 82944 * k + 31823 := by
    unfold C
    simp [show (165888 * k + 63646) % 2 = 0 by omega]
    omega
  have h10 : C (82944 * k + 31823) = 248832 * k + 95470 := by
    unfold C
    simp [show (82944 * k + 31823) % 2 ≠ 0 by omega]
    omega
  have h11 : C (248832 * k + 95470) = 124416 * k + 47735 := by
    unfold C
    simp [show (248832 * k + 95470) % 2 = 0 by omega]
    omega
  have h12 : C (124416 * k + 47735) = 373248 * k + 143206 := by
    unfold C
    simp [show (124416 * k + 47735) % 2 ≠ 0 by omega]
    omega
  have h13 : C (373248 * k + 143206) = 186624 * k + 71603 := by
    unfold C
    simp [show (373248 * k + 143206) % 2 = 0 by omega]
    omega
  have h14 : C (186624 * k + 71603) = 559872 * k + 214810 := by
    unfold C
    simp [show (186624 * k + 71603) % 2 ≠ 0 by omega]
    omega
  have h15 : C (559872 * k + 214810) = 279936 * k + 107405 := by
    unfold C
    simp [show (559872 * k + 214810) % 2 = 0 by omega]
    omega
  have h16 : C (279936 * k + 107405) = 839808 * k + 322216 := by
    unfold C
    simp [show (279936 * k + 107405) % 2 ≠ 0 by omega]
    omega
  have h17 : C (839808 * k + 322216) = 419904 * k + 161108 := by
    unfold C
    simp [show (839808 * k + 322216) % 2 = 0 by omega]
    omega
  have h18 : C (419904 * k + 161108) = 209952 * k + 80554 := by
    unfold C
    simp [show (419904 * k + 161108) % 2 = 0 by omega]
    omega
  have h19 : C (209952 * k + 80554) = 104976 * k + 40277 := by
    unfold C
    simp [show (209952 * k + 80554) % 2 = 0 by omega]
    omega
  have h20 : C (104976 * k + 40277) = 314928 * k + 120832 := by
    unfold C
    simp [show (104976 * k + 40277) % 2 ≠ 0 by omega]
    omega
  have h21 : C (314928 * k + 120832) = 157464 * k + 60416 := by
    unfold C
    simp [show (314928 * k + 120832) % 2 = 0 by omega]
    omega
  have h22 : C (157464 * k + 60416) = 78732 * k + 30208 := by
    unfold C
    simp [show (157464 * k + 60416) % 2 = 0 by omega]
    omega
  have h23 : C (78732 * k + 30208) = 39366 * k + 15104 := by
    unfold C
    simp [show (78732 * k + 30208) % 2 = 0 by omega]
    omega
  have h24 : C (39366 * k + 15104) = 19683 * k + 7552 := by
    unfold C
    simp [show (39366 * k + 15104) % 2 = 0 by omega]
    omega
  have hIter : iterate (32768 * k + 12571) 24 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (32768 * k + 12571)))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24]
  · omega

theorem descent_mod32768_12827 : ∀ k : Nat, iterate (32768 * k + 12827) 24 = 19683 * k + 7706 ∧ 19683 * k + 7706 < 32768 * k + 12827 := by
  intro k
  have h1 : C (32768 * k + 12827) = 98304 * k + 38482 := by
    unfold C
    simp [show (32768 * k + 12827) % 2 ≠ 0 by omega]
    omega
  have h2 : C (98304 * k + 38482) = 49152 * k + 19241 := by
    unfold C
    simp [show (98304 * k + 38482) % 2 = 0 by omega]
    omega
  have h3 : C (49152 * k + 19241) = 147456 * k + 57724 := by
    unfold C
    simp [show (49152 * k + 19241) % 2 ≠ 0 by omega]
    omega
  have h4 : C (147456 * k + 57724) = 73728 * k + 28862 := by
    unfold C
    simp [show (147456 * k + 57724) % 2 = 0 by omega]
    omega
  have h5 : C (73728 * k + 28862) = 36864 * k + 14431 := by
    unfold C
    simp [show (73728 * k + 28862) % 2 = 0 by omega]
    omega
  have h6 : C (36864 * k + 14431) = 110592 * k + 43294 := by
    unfold C
    simp [show (36864 * k + 14431) % 2 ≠ 0 by omega]
    omega
  have h7 : C (110592 * k + 43294) = 55296 * k + 21647 := by
    unfold C
    simp [show (110592 * k + 43294) % 2 = 0 by omega]
    omega
  have h8 : C (55296 * k + 21647) = 165888 * k + 64942 := by
    unfold C
    simp [show (55296 * k + 21647) % 2 ≠ 0 by omega]
    omega
  have h9 : C (165888 * k + 64942) = 82944 * k + 32471 := by
    unfold C
    simp [show (165888 * k + 64942) % 2 = 0 by omega]
    omega
  have h10 : C (82944 * k + 32471) = 248832 * k + 97414 := by
    unfold C
    simp [show (82944 * k + 32471) % 2 ≠ 0 by omega]
    omega
  have h11 : C (248832 * k + 97414) = 124416 * k + 48707 := by
    unfold C
    simp [show (248832 * k + 97414) % 2 = 0 by omega]
    omega
  have h12 : C (124416 * k + 48707) = 373248 * k + 146122 := by
    unfold C
    simp [show (124416 * k + 48707) % 2 ≠ 0 by omega]
    omega
  have h13 : C (373248 * k + 146122) = 186624 * k + 73061 := by
    unfold C
    simp [show (373248 * k + 146122) % 2 = 0 by omega]
    omega
  have h14 : C (186624 * k + 73061) = 559872 * k + 219184 := by
    unfold C
    simp [show (186624 * k + 73061) % 2 ≠ 0 by omega]
    omega
  have h15 : C (559872 * k + 219184) = 279936 * k + 109592 := by
    unfold C
    simp [show (559872 * k + 219184) % 2 = 0 by omega]
    omega
  have h16 : C (279936 * k + 109592) = 139968 * k + 54796 := by
    unfold C
    simp [show (279936 * k + 109592) % 2 = 0 by omega]
    omega
  have h17 : C (139968 * k + 54796) = 69984 * k + 27398 := by
    unfold C
    simp [show (139968 * k + 54796) % 2 = 0 by omega]
    omega
  have h18 : C (69984 * k + 27398) = 34992 * k + 13699 := by
    unfold C
    simp [show (69984 * k + 27398) % 2 = 0 by omega]
    omega
  have h19 : C (34992 * k + 13699) = 104976 * k + 41098 := by
    unfold C
    simp [show (34992 * k + 13699) % 2 ≠ 0 by omega]
    omega
  have h20 : C (104976 * k + 41098) = 52488 * k + 20549 := by
    unfold C
    simp [show (104976 * k + 41098) % 2 = 0 by omega]
    omega
  have h21 : C (52488 * k + 20549) = 157464 * k + 61648 := by
    unfold C
    simp [show (52488 * k + 20549) % 2 ≠ 0 by omega]
    omega
  have h22 : C (157464 * k + 61648) = 78732 * k + 30824 := by
    unfold C
    simp [show (157464 * k + 61648) % 2 = 0 by omega]
    omega
  have h23 : C (78732 * k + 30824) = 39366 * k + 15412 := by
    unfold C
    simp [show (78732 * k + 30824) % 2 = 0 by omega]
    omega
  have h24 : C (39366 * k + 15412) = 19683 * k + 7706 := by
    unfold C
    simp [show (39366 * k + 15412) % 2 = 0 by omega]
    omega
  have hIter : iterate (32768 * k + 12827) 24 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (32768 * k + 12827)))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24]
  · omega

#print axioms descent_mod32768_11943
#print axioms descent_mod32768_11967
#print axioms descent_mod32768_12063
#print axioms descent_mod32768_12143
#print axioms descent_mod32768_12511
#print axioms descent_mod32768_12543
#print axioms descent_mod32768_12571
#print axioms descent_mod32768_12827

end CollatzM15ShardI
