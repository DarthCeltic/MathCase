import Mathlib.Data.Nat.Prime.Basic

namespace CollatzM15ShardQ

def C (n : Nat) : Nat := if n % 2 = 0 then n / 2 else 3 * n + 1

def iterate (n t : Nat) : Nat := Nat.rec n (fun _ previous => C previous) t

theorem descent_mod32768_23803 : ∀ k : Nat, iterate (32768 * k + 23803) 24 = 19683 * k + 14299 ∧ 19683 * k + 14299 < 32768 * k + 23803 := by
  intro k
  have h1 : C (32768 * k + 23803) = 98304 * k + 71410 := by
    unfold C
    simp [show (32768 * k + 23803) % 2 ≠ 0 by omega]
    omega
  have h2 : C (98304 * k + 71410) = 49152 * k + 35705 := by
    unfold C
    simp [show (98304 * k + 71410) % 2 = 0 by omega]
    omega
  have h3 : C (49152 * k + 35705) = 147456 * k + 107116 := by
    unfold C
    simp [show (49152 * k + 35705) % 2 ≠ 0 by omega]
    omega
  have h4 : C (147456 * k + 107116) = 73728 * k + 53558 := by
    unfold C
    simp [show (147456 * k + 107116) % 2 = 0 by omega]
    omega
  have h5 : C (73728 * k + 53558) = 36864 * k + 26779 := by
    unfold C
    simp [show (73728 * k + 53558) % 2 = 0 by omega]
    omega
  have h6 : C (36864 * k + 26779) = 110592 * k + 80338 := by
    unfold C
    simp [show (36864 * k + 26779) % 2 ≠ 0 by omega]
    omega
  have h7 : C (110592 * k + 80338) = 55296 * k + 40169 := by
    unfold C
    simp [show (110592 * k + 80338) % 2 = 0 by omega]
    omega
  have h8 : C (55296 * k + 40169) = 165888 * k + 120508 := by
    unfold C
    simp [show (55296 * k + 40169) % 2 ≠ 0 by omega]
    omega
  have h9 : C (165888 * k + 120508) = 82944 * k + 60254 := by
    unfold C
    simp [show (165888 * k + 120508) % 2 = 0 by omega]
    omega
  have h10 : C (82944 * k + 60254) = 41472 * k + 30127 := by
    unfold C
    simp [show (82944 * k + 60254) % 2 = 0 by omega]
    omega
  have h11 : C (41472 * k + 30127) = 124416 * k + 90382 := by
    unfold C
    simp [show (41472 * k + 30127) % 2 ≠ 0 by omega]
    omega
  have h12 : C (124416 * k + 90382) = 62208 * k + 45191 := by
    unfold C
    simp [show (124416 * k + 90382) % 2 = 0 by omega]
    omega
  have h13 : C (62208 * k + 45191) = 186624 * k + 135574 := by
    unfold C
    simp [show (62208 * k + 45191) % 2 ≠ 0 by omega]
    omega
  have h14 : C (186624 * k + 135574) = 93312 * k + 67787 := by
    unfold C
    simp [show (186624 * k + 135574) % 2 = 0 by omega]
    omega
  have h15 : C (93312 * k + 67787) = 279936 * k + 203362 := by
    unfold C
    simp [show (93312 * k + 67787) % 2 ≠ 0 by omega]
    omega
  have h16 : C (279936 * k + 203362) = 139968 * k + 101681 := by
    unfold C
    simp [show (279936 * k + 203362) % 2 = 0 by omega]
    omega
  have h17 : C (139968 * k + 101681) = 419904 * k + 305044 := by
    unfold C
    simp [show (139968 * k + 101681) % 2 ≠ 0 by omega]
    omega
  have h18 : C (419904 * k + 305044) = 209952 * k + 152522 := by
    unfold C
    simp [show (419904 * k + 305044) % 2 = 0 by omega]
    omega
  have h19 : C (209952 * k + 152522) = 104976 * k + 76261 := by
    unfold C
    simp [show (209952 * k + 152522) % 2 = 0 by omega]
    omega
  have h20 : C (104976 * k + 76261) = 314928 * k + 228784 := by
    unfold C
    simp [show (104976 * k + 76261) % 2 ≠ 0 by omega]
    omega
  have h21 : C (314928 * k + 228784) = 157464 * k + 114392 := by
    unfold C
    simp [show (314928 * k + 228784) % 2 = 0 by omega]
    omega
  have h22 : C (157464 * k + 114392) = 78732 * k + 57196 := by
    unfold C
    simp [show (157464 * k + 114392) % 2 = 0 by omega]
    omega
  have h23 : C (78732 * k + 57196) = 39366 * k + 28598 := by
    unfold C
    simp [show (78732 * k + 57196) % 2 = 0 by omega]
    omega
  have h24 : C (39366 * k + 28598) = 19683 * k + 14299 := by
    unfold C
    simp [show (39366 * k + 28598) % 2 = 0 by omega]
    omega
  have hIter : iterate (32768 * k + 23803) 24 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (32768 * k + 23803)))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24]
  · omega

theorem descent_mod32768_23835 : ∀ k : Nat, iterate (32768 * k + 23835) 24 = 19683 * k + 14318 ∧ 19683 * k + 14318 < 32768 * k + 23835 := by
  intro k
  have h1 : C (32768 * k + 23835) = 98304 * k + 71506 := by
    unfold C
    simp [show (32768 * k + 23835) % 2 ≠ 0 by omega]
    omega
  have h2 : C (98304 * k + 71506) = 49152 * k + 35753 := by
    unfold C
    simp [show (98304 * k + 71506) % 2 = 0 by omega]
    omega
  have h3 : C (49152 * k + 35753) = 147456 * k + 107260 := by
    unfold C
    simp [show (49152 * k + 35753) % 2 ≠ 0 by omega]
    omega
  have h4 : C (147456 * k + 107260) = 73728 * k + 53630 := by
    unfold C
    simp [show (147456 * k + 107260) % 2 = 0 by omega]
    omega
  have h5 : C (73728 * k + 53630) = 36864 * k + 26815 := by
    unfold C
    simp [show (73728 * k + 53630) % 2 = 0 by omega]
    omega
  have h6 : C (36864 * k + 26815) = 110592 * k + 80446 := by
    unfold C
    simp [show (36864 * k + 26815) % 2 ≠ 0 by omega]
    omega
  have h7 : C (110592 * k + 80446) = 55296 * k + 40223 := by
    unfold C
    simp [show (110592 * k + 80446) % 2 = 0 by omega]
    omega
  have h8 : C (55296 * k + 40223) = 165888 * k + 120670 := by
    unfold C
    simp [show (55296 * k + 40223) % 2 ≠ 0 by omega]
    omega
  have h9 : C (165888 * k + 120670) = 82944 * k + 60335 := by
    unfold C
    simp [show (165888 * k + 120670) % 2 = 0 by omega]
    omega
  have h10 : C (82944 * k + 60335) = 248832 * k + 181006 := by
    unfold C
    simp [show (82944 * k + 60335) % 2 ≠ 0 by omega]
    omega
  have h11 : C (248832 * k + 181006) = 124416 * k + 90503 := by
    unfold C
    simp [show (248832 * k + 181006) % 2 = 0 by omega]
    omega
  have h12 : C (124416 * k + 90503) = 373248 * k + 271510 := by
    unfold C
    simp [show (124416 * k + 90503) % 2 ≠ 0 by omega]
    omega
  have h13 : C (373248 * k + 271510) = 186624 * k + 135755 := by
    unfold C
    simp [show (373248 * k + 271510) % 2 = 0 by omega]
    omega
  have h14 : C (186624 * k + 135755) = 559872 * k + 407266 := by
    unfold C
    simp [show (186624 * k + 135755) % 2 ≠ 0 by omega]
    omega
  have h15 : C (559872 * k + 407266) = 279936 * k + 203633 := by
    unfold C
    simp [show (559872 * k + 407266) % 2 = 0 by omega]
    omega
  have h16 : C (279936 * k + 203633) = 839808 * k + 610900 := by
    unfold C
    simp [show (279936 * k + 203633) % 2 ≠ 0 by omega]
    omega
  have h17 : C (839808 * k + 610900) = 419904 * k + 305450 := by
    unfold C
    simp [show (839808 * k + 610900) % 2 = 0 by omega]
    omega
  have h18 : C (419904 * k + 305450) = 209952 * k + 152725 := by
    unfold C
    simp [show (419904 * k + 305450) % 2 = 0 by omega]
    omega
  have h19 : C (209952 * k + 152725) = 629856 * k + 458176 := by
    unfold C
    simp [show (209952 * k + 152725) % 2 ≠ 0 by omega]
    omega
  have h20 : C (629856 * k + 458176) = 314928 * k + 229088 := by
    unfold C
    simp [show (629856 * k + 458176) % 2 = 0 by omega]
    omega
  have h21 : C (314928 * k + 229088) = 157464 * k + 114544 := by
    unfold C
    simp [show (314928 * k + 229088) % 2 = 0 by omega]
    omega
  have h22 : C (157464 * k + 114544) = 78732 * k + 57272 := by
    unfold C
    simp [show (157464 * k + 114544) % 2 = 0 by omega]
    omega
  have h23 : C (78732 * k + 57272) = 39366 * k + 28636 := by
    unfold C
    simp [show (78732 * k + 57272) % 2 = 0 by omega]
    omega
  have h24 : C (39366 * k + 28636) = 19683 * k + 14318 := by
    unfold C
    simp [show (39366 * k + 28636) % 2 = 0 by omega]
    omega
  have hIter : iterate (32768 * k + 23835) 24 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (32768 * k + 23835)))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24]
  · omega

theorem descent_mod32768_23935 : ∀ k : Nat, iterate (32768 * k + 23935) 24 = 19683 * k + 14378 ∧ 19683 * k + 14378 < 32768 * k + 23935 := by
  intro k
  have h1 : C (32768 * k + 23935) = 98304 * k + 71806 := by
    unfold C
    simp [show (32768 * k + 23935) % 2 ≠ 0 by omega]
    omega
  have h2 : C (98304 * k + 71806) = 49152 * k + 35903 := by
    unfold C
    simp [show (98304 * k + 71806) % 2 = 0 by omega]
    omega
  have h3 : C (49152 * k + 35903) = 147456 * k + 107710 := by
    unfold C
    simp [show (49152 * k + 35903) % 2 ≠ 0 by omega]
    omega
  have h4 : C (147456 * k + 107710) = 73728 * k + 53855 := by
    unfold C
    simp [show (147456 * k + 107710) % 2 = 0 by omega]
    omega
  have h5 : C (73728 * k + 53855) = 221184 * k + 161566 := by
    unfold C
    simp [show (73728 * k + 53855) % 2 ≠ 0 by omega]
    omega
  have h6 : C (221184 * k + 161566) = 110592 * k + 80783 := by
    unfold C
    simp [show (221184 * k + 161566) % 2 = 0 by omega]
    omega
  have h7 : C (110592 * k + 80783) = 331776 * k + 242350 := by
    unfold C
    simp [show (110592 * k + 80783) % 2 ≠ 0 by omega]
    omega
  have h8 : C (331776 * k + 242350) = 165888 * k + 121175 := by
    unfold C
    simp [show (331776 * k + 242350) % 2 = 0 by omega]
    omega
  have h9 : C (165888 * k + 121175) = 497664 * k + 363526 := by
    unfold C
    simp [show (165888 * k + 121175) % 2 ≠ 0 by omega]
    omega
  have h10 : C (497664 * k + 363526) = 248832 * k + 181763 := by
    unfold C
    simp [show (497664 * k + 363526) % 2 = 0 by omega]
    omega
  have h11 : C (248832 * k + 181763) = 746496 * k + 545290 := by
    unfold C
    simp [show (248832 * k + 181763) % 2 ≠ 0 by omega]
    omega
  have h12 : C (746496 * k + 545290) = 373248 * k + 272645 := by
    unfold C
    simp [show (746496 * k + 545290) % 2 = 0 by omega]
    omega
  have h13 : C (373248 * k + 272645) = 1119744 * k + 817936 := by
    unfold C
    simp [show (373248 * k + 272645) % 2 ≠ 0 by omega]
    omega
  have h14 : C (1119744 * k + 817936) = 559872 * k + 408968 := by
    unfold C
    simp [show (1119744 * k + 817936) % 2 = 0 by omega]
    omega
  have h15 : C (559872 * k + 408968) = 279936 * k + 204484 := by
    unfold C
    simp [show (559872 * k + 408968) % 2 = 0 by omega]
    omega
  have h16 : C (279936 * k + 204484) = 139968 * k + 102242 := by
    unfold C
    simp [show (279936 * k + 204484) % 2 = 0 by omega]
    omega
  have h17 : C (139968 * k + 102242) = 69984 * k + 51121 := by
    unfold C
    simp [show (139968 * k + 102242) % 2 = 0 by omega]
    omega
  have h18 : C (69984 * k + 51121) = 209952 * k + 153364 := by
    unfold C
    simp [show (69984 * k + 51121) % 2 ≠ 0 by omega]
    omega
  have h19 : C (209952 * k + 153364) = 104976 * k + 76682 := by
    unfold C
    simp [show (209952 * k + 153364) % 2 = 0 by omega]
    omega
  have h20 : C (104976 * k + 76682) = 52488 * k + 38341 := by
    unfold C
    simp [show (104976 * k + 76682) % 2 = 0 by omega]
    omega
  have h21 : C (52488 * k + 38341) = 157464 * k + 115024 := by
    unfold C
    simp [show (52488 * k + 38341) % 2 ≠ 0 by omega]
    omega
  have h22 : C (157464 * k + 115024) = 78732 * k + 57512 := by
    unfold C
    simp [show (157464 * k + 115024) % 2 = 0 by omega]
    omega
  have h23 : C (78732 * k + 57512) = 39366 * k + 28756 := by
    unfold C
    simp [show (78732 * k + 57512) % 2 = 0 by omega]
    omega
  have h24 : C (39366 * k + 28756) = 19683 * k + 14378 := by
    unfold C
    simp [show (39366 * k + 28756) % 2 = 0 by omega]
    omega
  have hIter : iterate (32768 * k + 23935) 24 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (32768 * k + 23935)))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24]
  · omega

theorem descent_mod32768_24303 : ∀ k : Nat, iterate (32768 * k + 24303) 24 = 19683 * k + 14599 ∧ 19683 * k + 14599 < 32768 * k + 24303 := by
  intro k
  have h1 : C (32768 * k + 24303) = 98304 * k + 72910 := by
    unfold C
    simp [show (32768 * k + 24303) % 2 ≠ 0 by omega]
    omega
  have h2 : C (98304 * k + 72910) = 49152 * k + 36455 := by
    unfold C
    simp [show (98304 * k + 72910) % 2 = 0 by omega]
    omega
  have h3 : C (49152 * k + 36455) = 147456 * k + 109366 := by
    unfold C
    simp [show (49152 * k + 36455) % 2 ≠ 0 by omega]
    omega
  have h4 : C (147456 * k + 109366) = 73728 * k + 54683 := by
    unfold C
    simp [show (147456 * k + 109366) % 2 = 0 by omega]
    omega
  have h5 : C (73728 * k + 54683) = 221184 * k + 164050 := by
    unfold C
    simp [show (73728 * k + 54683) % 2 ≠ 0 by omega]
    omega
  have h6 : C (221184 * k + 164050) = 110592 * k + 82025 := by
    unfold C
    simp [show (221184 * k + 164050) % 2 = 0 by omega]
    omega
  have h7 : C (110592 * k + 82025) = 331776 * k + 246076 := by
    unfold C
    simp [show (110592 * k + 82025) % 2 ≠ 0 by omega]
    omega
  have h8 : C (331776 * k + 246076) = 165888 * k + 123038 := by
    unfold C
    simp [show (331776 * k + 246076) % 2 = 0 by omega]
    omega
  have h9 : C (165888 * k + 123038) = 82944 * k + 61519 := by
    unfold C
    simp [show (165888 * k + 123038) % 2 = 0 by omega]
    omega
  have h10 : C (82944 * k + 61519) = 248832 * k + 184558 := by
    unfold C
    simp [show (82944 * k + 61519) % 2 ≠ 0 by omega]
    omega
  have h11 : C (248832 * k + 184558) = 124416 * k + 92279 := by
    unfold C
    simp [show (248832 * k + 184558) % 2 = 0 by omega]
    omega
  have h12 : C (124416 * k + 92279) = 373248 * k + 276838 := by
    unfold C
    simp [show (124416 * k + 92279) % 2 ≠ 0 by omega]
    omega
  have h13 : C (373248 * k + 276838) = 186624 * k + 138419 := by
    unfold C
    simp [show (373248 * k + 276838) % 2 = 0 by omega]
    omega
  have h14 : C (186624 * k + 138419) = 559872 * k + 415258 := by
    unfold C
    simp [show (186624 * k + 138419) % 2 ≠ 0 by omega]
    omega
  have h15 : C (559872 * k + 415258) = 279936 * k + 207629 := by
    unfold C
    simp [show (559872 * k + 415258) % 2 = 0 by omega]
    omega
  have h16 : C (279936 * k + 207629) = 839808 * k + 622888 := by
    unfold C
    simp [show (279936 * k + 207629) % 2 ≠ 0 by omega]
    omega
  have h17 : C (839808 * k + 622888) = 419904 * k + 311444 := by
    unfold C
    simp [show (839808 * k + 622888) % 2 = 0 by omega]
    omega
  have h18 : C (419904 * k + 311444) = 209952 * k + 155722 := by
    unfold C
    simp [show (419904 * k + 311444) % 2 = 0 by omega]
    omega
  have h19 : C (209952 * k + 155722) = 104976 * k + 77861 := by
    unfold C
    simp [show (209952 * k + 155722) % 2 = 0 by omega]
    omega
  have h20 : C (104976 * k + 77861) = 314928 * k + 233584 := by
    unfold C
    simp [show (104976 * k + 77861) % 2 ≠ 0 by omega]
    omega
  have h21 : C (314928 * k + 233584) = 157464 * k + 116792 := by
    unfold C
    simp [show (314928 * k + 233584) % 2 = 0 by omega]
    omega
  have h22 : C (157464 * k + 116792) = 78732 * k + 58396 := by
    unfold C
    simp [show (157464 * k + 116792) % 2 = 0 by omega]
    omega
  have h23 : C (78732 * k + 58396) = 39366 * k + 29198 := by
    unfold C
    simp [show (78732 * k + 58396) % 2 = 0 by omega]
    omega
  have h24 : C (39366 * k + 29198) = 19683 * k + 14599 := by
    unfold C
    simp [show (39366 * k + 29198) % 2 = 0 by omega]
    omega
  have hIter : iterate (32768 * k + 24303) 24 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (32768 * k + 24303)))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24]
  · omega

theorem descent_mod32768_24559 : ∀ k : Nat, iterate (32768 * k + 24559) 24 = 19683 * k + 14753 ∧ 19683 * k + 14753 < 32768 * k + 24559 := by
  intro k
  have h1 : C (32768 * k + 24559) = 98304 * k + 73678 := by
    unfold C
    simp [show (32768 * k + 24559) % 2 ≠ 0 by omega]
    omega
  have h2 : C (98304 * k + 73678) = 49152 * k + 36839 := by
    unfold C
    simp [show (98304 * k + 73678) % 2 = 0 by omega]
    omega
  have h3 : C (49152 * k + 36839) = 147456 * k + 110518 := by
    unfold C
    simp [show (49152 * k + 36839) % 2 ≠ 0 by omega]
    omega
  have h4 : C (147456 * k + 110518) = 73728 * k + 55259 := by
    unfold C
    simp [show (147456 * k + 110518) % 2 = 0 by omega]
    omega
  have h5 : C (73728 * k + 55259) = 221184 * k + 165778 := by
    unfold C
    simp [show (73728 * k + 55259) % 2 ≠ 0 by omega]
    omega
  have h6 : C (221184 * k + 165778) = 110592 * k + 82889 := by
    unfold C
    simp [show (221184 * k + 165778) % 2 = 0 by omega]
    omega
  have h7 : C (110592 * k + 82889) = 331776 * k + 248668 := by
    unfold C
    simp [show (110592 * k + 82889) % 2 ≠ 0 by omega]
    omega
  have h8 : C (331776 * k + 248668) = 165888 * k + 124334 := by
    unfold C
    simp [show (331776 * k + 248668) % 2 = 0 by omega]
    omega
  have h9 : C (165888 * k + 124334) = 82944 * k + 62167 := by
    unfold C
    simp [show (165888 * k + 124334) % 2 = 0 by omega]
    omega
  have h10 : C (82944 * k + 62167) = 248832 * k + 186502 := by
    unfold C
    simp [show (82944 * k + 62167) % 2 ≠ 0 by omega]
    omega
  have h11 : C (248832 * k + 186502) = 124416 * k + 93251 := by
    unfold C
    simp [show (248832 * k + 186502) % 2 = 0 by omega]
    omega
  have h12 : C (124416 * k + 93251) = 373248 * k + 279754 := by
    unfold C
    simp [show (124416 * k + 93251) % 2 ≠ 0 by omega]
    omega
  have h13 : C (373248 * k + 279754) = 186624 * k + 139877 := by
    unfold C
    simp [show (373248 * k + 279754) % 2 = 0 by omega]
    omega
  have h14 : C (186624 * k + 139877) = 559872 * k + 419632 := by
    unfold C
    simp [show (186624 * k + 139877) % 2 ≠ 0 by omega]
    omega
  have h15 : C (559872 * k + 419632) = 279936 * k + 209816 := by
    unfold C
    simp [show (559872 * k + 419632) % 2 = 0 by omega]
    omega
  have h16 : C (279936 * k + 209816) = 139968 * k + 104908 := by
    unfold C
    simp [show (279936 * k + 209816) % 2 = 0 by omega]
    omega
  have h17 : C (139968 * k + 104908) = 69984 * k + 52454 := by
    unfold C
    simp [show (139968 * k + 104908) % 2 = 0 by omega]
    omega
  have h18 : C (69984 * k + 52454) = 34992 * k + 26227 := by
    unfold C
    simp [show (69984 * k + 52454) % 2 = 0 by omega]
    omega
  have h19 : C (34992 * k + 26227) = 104976 * k + 78682 := by
    unfold C
    simp [show (34992 * k + 26227) % 2 ≠ 0 by omega]
    omega
  have h20 : C (104976 * k + 78682) = 52488 * k + 39341 := by
    unfold C
    simp [show (104976 * k + 78682) % 2 = 0 by omega]
    omega
  have h21 : C (52488 * k + 39341) = 157464 * k + 118024 := by
    unfold C
    simp [show (52488 * k + 39341) % 2 ≠ 0 by omega]
    omega
  have h22 : C (157464 * k + 118024) = 78732 * k + 59012 := by
    unfold C
    simp [show (157464 * k + 118024) % 2 = 0 by omega]
    omega
  have h23 : C (78732 * k + 59012) = 39366 * k + 29506 := by
    unfold C
    simp [show (78732 * k + 59012) % 2 = 0 by omega]
    omega
  have h24 : C (39366 * k + 29506) = 19683 * k + 14753 := by
    unfold C
    simp [show (39366 * k + 29506) % 2 = 0 by omega]
    omega
  have hIter : iterate (32768 * k + 24559) 24 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (32768 * k + 24559)))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24]
  · omega

theorem descent_mod32768_24639 : ∀ k : Nat, iterate (32768 * k + 24639) 24 = 19683 * k + 14801 ∧ 19683 * k + 14801 < 32768 * k + 24639 := by
  intro k
  have h1 : C (32768 * k + 24639) = 98304 * k + 73918 := by
    unfold C
    simp [show (32768 * k + 24639) % 2 ≠ 0 by omega]
    omega
  have h2 : C (98304 * k + 73918) = 49152 * k + 36959 := by
    unfold C
    simp [show (98304 * k + 73918) % 2 = 0 by omega]
    omega
  have h3 : C (49152 * k + 36959) = 147456 * k + 110878 := by
    unfold C
    simp [show (49152 * k + 36959) % 2 ≠ 0 by omega]
    omega
  have h4 : C (147456 * k + 110878) = 73728 * k + 55439 := by
    unfold C
    simp [show (147456 * k + 110878) % 2 = 0 by omega]
    omega
  have h5 : C (73728 * k + 55439) = 221184 * k + 166318 := by
    unfold C
    simp [show (73728 * k + 55439) % 2 ≠ 0 by omega]
    omega
  have h6 : C (221184 * k + 166318) = 110592 * k + 83159 := by
    unfold C
    simp [show (221184 * k + 166318) % 2 = 0 by omega]
    omega
  have h7 : C (110592 * k + 83159) = 331776 * k + 249478 := by
    unfold C
    simp [show (110592 * k + 83159) % 2 ≠ 0 by omega]
    omega
  have h8 : C (331776 * k + 249478) = 165888 * k + 124739 := by
    unfold C
    simp [show (331776 * k + 249478) % 2 = 0 by omega]
    omega
  have h9 : C (165888 * k + 124739) = 497664 * k + 374218 := by
    unfold C
    simp [show (165888 * k + 124739) % 2 ≠ 0 by omega]
    omega
  have h10 : C (497664 * k + 374218) = 248832 * k + 187109 := by
    unfold C
    simp [show (497664 * k + 374218) % 2 = 0 by omega]
    omega
  have h11 : C (248832 * k + 187109) = 746496 * k + 561328 := by
    unfold C
    simp [show (248832 * k + 187109) % 2 ≠ 0 by omega]
    omega
  have h12 : C (746496 * k + 561328) = 373248 * k + 280664 := by
    unfold C
    simp [show (746496 * k + 561328) % 2 = 0 by omega]
    omega
  have h13 : C (373248 * k + 280664) = 186624 * k + 140332 := by
    unfold C
    simp [show (373248 * k + 280664) % 2 = 0 by omega]
    omega
  have h14 : C (186624 * k + 140332) = 93312 * k + 70166 := by
    unfold C
    simp [show (186624 * k + 140332) % 2 = 0 by omega]
    omega
  have h15 : C (93312 * k + 70166) = 46656 * k + 35083 := by
    unfold C
    simp [show (93312 * k + 70166) % 2 = 0 by omega]
    omega
  have h16 : C (46656 * k + 35083) = 139968 * k + 105250 := by
    unfold C
    simp [show (46656 * k + 35083) % 2 ≠ 0 by omega]
    omega
  have h17 : C (139968 * k + 105250) = 69984 * k + 52625 := by
    unfold C
    simp [show (139968 * k + 105250) % 2 = 0 by omega]
    omega
  have h18 : C (69984 * k + 52625) = 209952 * k + 157876 := by
    unfold C
    simp [show (69984 * k + 52625) % 2 ≠ 0 by omega]
    omega
  have h19 : C (209952 * k + 157876) = 104976 * k + 78938 := by
    unfold C
    simp [show (209952 * k + 157876) % 2 = 0 by omega]
    omega
  have h20 : C (104976 * k + 78938) = 52488 * k + 39469 := by
    unfold C
    simp [show (104976 * k + 78938) % 2 = 0 by omega]
    omega
  have h21 : C (52488 * k + 39469) = 157464 * k + 118408 := by
    unfold C
    simp [show (52488 * k + 39469) % 2 ≠ 0 by omega]
    omega
  have h22 : C (157464 * k + 118408) = 78732 * k + 59204 := by
    unfold C
    simp [show (157464 * k + 118408) % 2 = 0 by omega]
    omega
  have h23 : C (78732 * k + 59204) = 39366 * k + 29602 := by
    unfold C
    simp [show (78732 * k + 59204) % 2 = 0 by omega]
    omega
  have h24 : C (39366 * k + 29602) = 19683 * k + 14801 := by
    unfold C
    simp [show (39366 * k + 29602) % 2 = 0 by omega]
    omega
  have hIter : iterate (32768 * k + 24639) 24 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (32768 * k + 24639)))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24]
  · omega

theorem descent_mod32768_24647 : ∀ k : Nat, iterate (32768 * k + 24647) 24 = 19683 * k + 14806 ∧ 19683 * k + 14806 < 32768 * k + 24647 := by
  intro k
  have h1 : C (32768 * k + 24647) = 98304 * k + 73942 := by
    unfold C
    simp [show (32768 * k + 24647) % 2 ≠ 0 by omega]
    omega
  have h2 : C (98304 * k + 73942) = 49152 * k + 36971 := by
    unfold C
    simp [show (98304 * k + 73942) % 2 = 0 by omega]
    omega
  have h3 : C (49152 * k + 36971) = 147456 * k + 110914 := by
    unfold C
    simp [show (49152 * k + 36971) % 2 ≠ 0 by omega]
    omega
  have h4 : C (147456 * k + 110914) = 73728 * k + 55457 := by
    unfold C
    simp [show (147456 * k + 110914) % 2 = 0 by omega]
    omega
  have h5 : C (73728 * k + 55457) = 221184 * k + 166372 := by
    unfold C
    simp [show (73728 * k + 55457) % 2 ≠ 0 by omega]
    omega
  have h6 : C (221184 * k + 166372) = 110592 * k + 83186 := by
    unfold C
    simp [show (221184 * k + 166372) % 2 = 0 by omega]
    omega
  have h7 : C (110592 * k + 83186) = 55296 * k + 41593 := by
    unfold C
    simp [show (110592 * k + 83186) % 2 = 0 by omega]
    omega
  have h8 : C (55296 * k + 41593) = 165888 * k + 124780 := by
    unfold C
    simp [show (55296 * k + 41593) % 2 ≠ 0 by omega]
    omega
  have h9 : C (165888 * k + 124780) = 82944 * k + 62390 := by
    unfold C
    simp [show (165888 * k + 124780) % 2 = 0 by omega]
    omega
  have h10 : C (82944 * k + 62390) = 41472 * k + 31195 := by
    unfold C
    simp [show (82944 * k + 62390) % 2 = 0 by omega]
    omega
  have h11 : C (41472 * k + 31195) = 124416 * k + 93586 := by
    unfold C
    simp [show (41472 * k + 31195) % 2 ≠ 0 by omega]
    omega
  have h12 : C (124416 * k + 93586) = 62208 * k + 46793 := by
    unfold C
    simp [show (124416 * k + 93586) % 2 = 0 by omega]
    omega
  have h13 : C (62208 * k + 46793) = 186624 * k + 140380 := by
    unfold C
    simp [show (62208 * k + 46793) % 2 ≠ 0 by omega]
    omega
  have h14 : C (186624 * k + 140380) = 93312 * k + 70190 := by
    unfold C
    simp [show (186624 * k + 140380) % 2 = 0 by omega]
    omega
  have h15 : C (93312 * k + 70190) = 46656 * k + 35095 := by
    unfold C
    simp [show (93312 * k + 70190) % 2 = 0 by omega]
    omega
  have h16 : C (46656 * k + 35095) = 139968 * k + 105286 := by
    unfold C
    simp [show (46656 * k + 35095) % 2 ≠ 0 by omega]
    omega
  have h17 : C (139968 * k + 105286) = 69984 * k + 52643 := by
    unfold C
    simp [show (139968 * k + 105286) % 2 = 0 by omega]
    omega
  have h18 : C (69984 * k + 52643) = 209952 * k + 157930 := by
    unfold C
    simp [show (69984 * k + 52643) % 2 ≠ 0 by omega]
    omega
  have h19 : C (209952 * k + 157930) = 104976 * k + 78965 := by
    unfold C
    simp [show (209952 * k + 157930) % 2 = 0 by omega]
    omega
  have h20 : C (104976 * k + 78965) = 314928 * k + 236896 := by
    unfold C
    simp [show (104976 * k + 78965) % 2 ≠ 0 by omega]
    omega
  have h21 : C (314928 * k + 236896) = 157464 * k + 118448 := by
    unfold C
    simp [show (314928 * k + 236896) % 2 = 0 by omega]
    omega
  have h22 : C (157464 * k + 118448) = 78732 * k + 59224 := by
    unfold C
    simp [show (157464 * k + 118448) % 2 = 0 by omega]
    omega
  have h23 : C (78732 * k + 59224) = 39366 * k + 29612 := by
    unfold C
    simp [show (78732 * k + 59224) % 2 = 0 by omega]
    omega
  have h24 : C (39366 * k + 29612) = 19683 * k + 14806 := by
    unfold C
    simp [show (39366 * k + 29612) % 2 = 0 by omega]
    omega
  have hIter : iterate (32768 * k + 24647) 24 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (32768 * k + 24647)))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24]
  · omega

theorem descent_mod32768_24679 : ∀ k : Nat, iterate (32768 * k + 24679) 24 = 19683 * k + 14825 ∧ 19683 * k + 14825 < 32768 * k + 24679 := by
  intro k
  have h1 : C (32768 * k + 24679) = 98304 * k + 74038 := by
    unfold C
    simp [show (32768 * k + 24679) % 2 ≠ 0 by omega]
    omega
  have h2 : C (98304 * k + 74038) = 49152 * k + 37019 := by
    unfold C
    simp [show (98304 * k + 74038) % 2 = 0 by omega]
    omega
  have h3 : C (49152 * k + 37019) = 147456 * k + 111058 := by
    unfold C
    simp [show (49152 * k + 37019) % 2 ≠ 0 by omega]
    omega
  have h4 : C (147456 * k + 111058) = 73728 * k + 55529 := by
    unfold C
    simp [show (147456 * k + 111058) % 2 = 0 by omega]
    omega
  have h5 : C (73728 * k + 55529) = 221184 * k + 166588 := by
    unfold C
    simp [show (73728 * k + 55529) % 2 ≠ 0 by omega]
    omega
  have h6 : C (221184 * k + 166588) = 110592 * k + 83294 := by
    unfold C
    simp [show (221184 * k + 166588) % 2 = 0 by omega]
    omega
  have h7 : C (110592 * k + 83294) = 55296 * k + 41647 := by
    unfold C
    simp [show (110592 * k + 83294) % 2 = 0 by omega]
    omega
  have h8 : C (55296 * k + 41647) = 165888 * k + 124942 := by
    unfold C
    simp [show (55296 * k + 41647) % 2 ≠ 0 by omega]
    omega
  have h9 : C (165888 * k + 124942) = 82944 * k + 62471 := by
    unfold C
    simp [show (165888 * k + 124942) % 2 = 0 by omega]
    omega
  have h10 : C (82944 * k + 62471) = 248832 * k + 187414 := by
    unfold C
    simp [show (82944 * k + 62471) % 2 ≠ 0 by omega]
    omega
  have h11 : C (248832 * k + 187414) = 124416 * k + 93707 := by
    unfold C
    simp [show (248832 * k + 187414) % 2 = 0 by omega]
    omega
  have h12 : C (124416 * k + 93707) = 373248 * k + 281122 := by
    unfold C
    simp [show (124416 * k + 93707) % 2 ≠ 0 by omega]
    omega
  have h13 : C (373248 * k + 281122) = 186624 * k + 140561 := by
    unfold C
    simp [show (373248 * k + 281122) % 2 = 0 by omega]
    omega
  have h14 : C (186624 * k + 140561) = 559872 * k + 421684 := by
    unfold C
    simp [show (186624 * k + 140561) % 2 ≠ 0 by omega]
    omega
  have h15 : C (559872 * k + 421684) = 279936 * k + 210842 := by
    unfold C
    simp [show (559872 * k + 421684) % 2 = 0 by omega]
    omega
  have h16 : C (279936 * k + 210842) = 139968 * k + 105421 := by
    unfold C
    simp [show (279936 * k + 210842) % 2 = 0 by omega]
    omega
  have h17 : C (139968 * k + 105421) = 419904 * k + 316264 := by
    unfold C
    simp [show (139968 * k + 105421) % 2 ≠ 0 by omega]
    omega
  have h18 : C (419904 * k + 316264) = 209952 * k + 158132 := by
    unfold C
    simp [show (419904 * k + 316264) % 2 = 0 by omega]
    omega
  have h19 : C (209952 * k + 158132) = 104976 * k + 79066 := by
    unfold C
    simp [show (209952 * k + 158132) % 2 = 0 by omega]
    omega
  have h20 : C (104976 * k + 79066) = 52488 * k + 39533 := by
    unfold C
    simp [show (104976 * k + 79066) % 2 = 0 by omega]
    omega
  have h21 : C (52488 * k + 39533) = 157464 * k + 118600 := by
    unfold C
    simp [show (52488 * k + 39533) % 2 ≠ 0 by omega]
    omega
  have h22 : C (157464 * k + 118600) = 78732 * k + 59300 := by
    unfold C
    simp [show (157464 * k + 118600) % 2 = 0 by omega]
    omega
  have h23 : C (78732 * k + 59300) = 39366 * k + 29650 := by
    unfold C
    simp [show (78732 * k + 59300) % 2 = 0 by omega]
    omega
  have h24 : C (39366 * k + 29650) = 19683 * k + 14825 := by
    unfold C
    simp [show (39366 * k + 29650) % 2 = 0 by omega]
    omega
  have hIter : iterate (32768 * k + 24679) 24 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (32768 * k + 24679)))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24]
  · omega

#print axioms descent_mod32768_23803
#print axioms descent_mod32768_23835
#print axioms descent_mod32768_23935
#print axioms descent_mod32768_24303
#print axioms descent_mod32768_24559
#print axioms descent_mod32768_24639
#print axioms descent_mod32768_24647
#print axioms descent_mod32768_24679

end CollatzM15ShardQ
