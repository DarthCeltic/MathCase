import Mathlib.Data.Nat.Prime.Basic

namespace CollatzM16ShardJ

def C (n : Nat) : Nat := if n % 2 = 0 then n / 2 else 3 * n + 1

def iterate (n t : Nat) : Nat := Nat.rec n (fun _ previous => C previous) t

theorem descent_mod65536_25599 : ∀ k : Nat,
    iterate (65536 * k + 25599) 26 = 59049 * k + 23066 ∧
      59049 * k + 23066 < 65536 * k + 25599 := by
  intro k
  have h1 : C (65536 * k + 25599) = 196608 * k + 76798 := by
    unfold C
    simp [show (65536 * k + 25599) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 76798) = 98304 * k + 38399 := by
    unfold C
    simp [show (196608 * k + 76798) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 38399) = 294912 * k + 115198 := by
    unfold C
    simp [show (98304 * k + 38399) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 115198) = 147456 * k + 57599 := by
    unfold C
    simp [show (294912 * k + 115198) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 57599) = 442368 * k + 172798 := by
    unfold C
    simp [show (147456 * k + 57599) % 2 ≠ 0 by omega]
    omega
  have h6 : C (442368 * k + 172798) = 221184 * k + 86399 := by
    unfold C
    simp [show (442368 * k + 172798) % 2 = 0 by omega]
    omega
  have h7 : C (221184 * k + 86399) = 663552 * k + 259198 := by
    unfold C
    simp [show (221184 * k + 86399) % 2 ≠ 0 by omega]
    omega
  have h8 : C (663552 * k + 259198) = 331776 * k + 129599 := by
    unfold C
    simp [show (663552 * k + 259198) % 2 = 0 by omega]
    omega
  have h9 : C (331776 * k + 129599) = 995328 * k + 388798 := by
    unfold C
    simp [show (331776 * k + 129599) % 2 ≠ 0 by omega]
    omega
  have h10 : C (995328 * k + 388798) = 497664 * k + 194399 := by
    unfold C
    simp [show (995328 * k + 388798) % 2 = 0 by omega]
    omega
  have h11 : C (497664 * k + 194399) = 1492992 * k + 583198 := by
    unfold C
    simp [show (497664 * k + 194399) % 2 ≠ 0 by omega]
    omega
  have h12 : C (1492992 * k + 583198) = 746496 * k + 291599 := by
    unfold C
    simp [show (1492992 * k + 583198) % 2 = 0 by omega]
    omega
  have h13 : C (746496 * k + 291599) = 2239488 * k + 874798 := by
    unfold C
    simp [show (746496 * k + 291599) % 2 ≠ 0 by omega]
    omega
  have h14 : C (2239488 * k + 874798) = 1119744 * k + 437399 := by
    unfold C
    simp [show (2239488 * k + 874798) % 2 = 0 by omega]
    omega
  have h15 : C (1119744 * k + 437399) = 3359232 * k + 1312198 := by
    unfold C
    simp [show (1119744 * k + 437399) % 2 ≠ 0 by omega]
    omega
  have h16 : C (3359232 * k + 1312198) = 1679616 * k + 656099 := by
    unfold C
    simp [show (3359232 * k + 1312198) % 2 = 0 by omega]
    omega
  have h17 : C (1679616 * k + 656099) = 5038848 * k + 1968298 := by
    unfold C
    simp [show (1679616 * k + 656099) % 2 ≠ 0 by omega]
    omega
  have h18 : C (5038848 * k + 1968298) = 2519424 * k + 984149 := by
    unfold C
    simp [show (5038848 * k + 1968298) % 2 = 0 by omega]
    omega
  have h19 : C (2519424 * k + 984149) = 7558272 * k + 2952448 := by
    unfold C
    simp [show (2519424 * k + 984149) % 2 ≠ 0 by omega]
    omega
  have h20 : C (7558272 * k + 2952448) = 3779136 * k + 1476224 := by
    unfold C
    simp [show (7558272 * k + 2952448) % 2 = 0 by omega]
    omega
  have h21 : C (3779136 * k + 1476224) = 1889568 * k + 738112 := by
    unfold C
    simp [show (3779136 * k + 1476224) % 2 = 0 by omega]
    omega
  have h22 : C (1889568 * k + 738112) = 944784 * k + 369056 := by
    unfold C
    simp [show (1889568 * k + 738112) % 2 = 0 by omega]
    omega
  have h23 : C (944784 * k + 369056) = 472392 * k + 184528 := by
    unfold C
    simp [show (944784 * k + 369056) % 2 = 0 by omega]
    omega
  have h24 : C (472392 * k + 184528) = 236196 * k + 92264 := by
    unfold C
    simp [show (472392 * k + 184528) % 2 = 0 by omega]
    omega
  have h25 : C (236196 * k + 92264) = 118098 * k + 46132 := by
    unfold C
    simp [show (236196 * k + 92264) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 46132) = 59049 * k + 23066 := by
    unfold C
    simp [show (118098 * k + 46132) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 25599) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 25599)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_25671 : ∀ k : Nat,
    iterate (65536 * k + 25671) 26 = 59049 * k + 23132 ∧
      59049 * k + 23132 < 65536 * k + 25671 := by
  intro k
  have h1 : C (65536 * k + 25671) = 196608 * k + 77014 := by
    unfold C
    simp [show (65536 * k + 25671) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 77014) = 98304 * k + 38507 := by
    unfold C
    simp [show (196608 * k + 77014) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 38507) = 294912 * k + 115522 := by
    unfold C
    simp [show (98304 * k + 38507) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 115522) = 147456 * k + 57761 := by
    unfold C
    simp [show (294912 * k + 115522) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 57761) = 442368 * k + 173284 := by
    unfold C
    simp [show (147456 * k + 57761) % 2 ≠ 0 by omega]
    omega
  have h6 : C (442368 * k + 173284) = 221184 * k + 86642 := by
    unfold C
    simp [show (442368 * k + 173284) % 2 = 0 by omega]
    omega
  have h7 : C (221184 * k + 86642) = 110592 * k + 43321 := by
    unfold C
    simp [show (221184 * k + 86642) % 2 = 0 by omega]
    omega
  have h8 : C (110592 * k + 43321) = 331776 * k + 129964 := by
    unfold C
    simp [show (110592 * k + 43321) % 2 ≠ 0 by omega]
    omega
  have h9 : C (331776 * k + 129964) = 165888 * k + 64982 := by
    unfold C
    simp [show (331776 * k + 129964) % 2 = 0 by omega]
    omega
  have h10 : C (165888 * k + 64982) = 82944 * k + 32491 := by
    unfold C
    simp [show (165888 * k + 64982) % 2 = 0 by omega]
    omega
  have h11 : C (82944 * k + 32491) = 248832 * k + 97474 := by
    unfold C
    simp [show (82944 * k + 32491) % 2 ≠ 0 by omega]
    omega
  have h12 : C (248832 * k + 97474) = 124416 * k + 48737 := by
    unfold C
    simp [show (248832 * k + 97474) % 2 = 0 by omega]
    omega
  have h13 : C (124416 * k + 48737) = 373248 * k + 146212 := by
    unfold C
    simp [show (124416 * k + 48737) % 2 ≠ 0 by omega]
    omega
  have h14 : C (373248 * k + 146212) = 186624 * k + 73106 := by
    unfold C
    simp [show (373248 * k + 146212) % 2 = 0 by omega]
    omega
  have h15 : C (186624 * k + 73106) = 93312 * k + 36553 := by
    unfold C
    simp [show (186624 * k + 73106) % 2 = 0 by omega]
    omega
  have h16 : C (93312 * k + 36553) = 279936 * k + 109660 := by
    unfold C
    simp [show (93312 * k + 36553) % 2 ≠ 0 by omega]
    omega
  have h17 : C (279936 * k + 109660) = 139968 * k + 54830 := by
    unfold C
    simp [show (279936 * k + 109660) % 2 = 0 by omega]
    omega
  have h18 : C (139968 * k + 54830) = 69984 * k + 27415 := by
    unfold C
    simp [show (139968 * k + 54830) % 2 = 0 by omega]
    omega
  have h19 : C (69984 * k + 27415) = 209952 * k + 82246 := by
    unfold C
    simp [show (69984 * k + 27415) % 2 ≠ 0 by omega]
    omega
  have h20 : C (209952 * k + 82246) = 104976 * k + 41123 := by
    unfold C
    simp [show (209952 * k + 82246) % 2 = 0 by omega]
    omega
  have h21 : C (104976 * k + 41123) = 314928 * k + 123370 := by
    unfold C
    simp [show (104976 * k + 41123) % 2 ≠ 0 by omega]
    omega
  have h22 : C (314928 * k + 123370) = 157464 * k + 61685 := by
    unfold C
    simp [show (314928 * k + 123370) % 2 = 0 by omega]
    omega
  have h23 : C (157464 * k + 61685) = 472392 * k + 185056 := by
    unfold C
    simp [show (157464 * k + 61685) % 2 ≠ 0 by omega]
    omega
  have h24 : C (472392 * k + 185056) = 236196 * k + 92528 := by
    unfold C
    simp [show (472392 * k + 185056) % 2 = 0 by omega]
    omega
  have h25 : C (236196 * k + 92528) = 118098 * k + 46264 := by
    unfold C
    simp [show (236196 * k + 92528) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 46264) = 59049 * k + 23132 := by
    unfold C
    simp [show (118098 * k + 46264) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 25671) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 25671)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_25851 : ∀ k : Nat,
    iterate (65536 * k + 25851) 26 = 59049 * k + 23294 ∧
      59049 * k + 23294 < 65536 * k + 25851 := by
  intro k
  have h1 : C (65536 * k + 25851) = 196608 * k + 77554 := by
    unfold C
    simp [show (65536 * k + 25851) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 77554) = 98304 * k + 38777 := by
    unfold C
    simp [show (196608 * k + 77554) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 38777) = 294912 * k + 116332 := by
    unfold C
    simp [show (98304 * k + 38777) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 116332) = 147456 * k + 58166 := by
    unfold C
    simp [show (294912 * k + 116332) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 58166) = 73728 * k + 29083 := by
    unfold C
    simp [show (147456 * k + 58166) % 2 = 0 by omega]
    omega
  have h6 : C (73728 * k + 29083) = 221184 * k + 87250 := by
    unfold C
    simp [show (73728 * k + 29083) % 2 ≠ 0 by omega]
    omega
  have h7 : C (221184 * k + 87250) = 110592 * k + 43625 := by
    unfold C
    simp [show (221184 * k + 87250) % 2 = 0 by omega]
    omega
  have h8 : C (110592 * k + 43625) = 331776 * k + 130876 := by
    unfold C
    simp [show (110592 * k + 43625) % 2 ≠ 0 by omega]
    omega
  have h9 : C (331776 * k + 130876) = 165888 * k + 65438 := by
    unfold C
    simp [show (331776 * k + 130876) % 2 = 0 by omega]
    omega
  have h10 : C (165888 * k + 65438) = 82944 * k + 32719 := by
    unfold C
    simp [show (165888 * k + 65438) % 2 = 0 by omega]
    omega
  have h11 : C (82944 * k + 32719) = 248832 * k + 98158 := by
    unfold C
    simp [show (82944 * k + 32719) % 2 ≠ 0 by omega]
    omega
  have h12 : C (248832 * k + 98158) = 124416 * k + 49079 := by
    unfold C
    simp [show (248832 * k + 98158) % 2 = 0 by omega]
    omega
  have h13 : C (124416 * k + 49079) = 373248 * k + 147238 := by
    unfold C
    simp [show (124416 * k + 49079) % 2 ≠ 0 by omega]
    omega
  have h14 : C (373248 * k + 147238) = 186624 * k + 73619 := by
    unfold C
    simp [show (373248 * k + 147238) % 2 = 0 by omega]
    omega
  have h15 : C (186624 * k + 73619) = 559872 * k + 220858 := by
    unfold C
    simp [show (186624 * k + 73619) % 2 ≠ 0 by omega]
    omega
  have h16 : C (559872 * k + 220858) = 279936 * k + 110429 := by
    unfold C
    simp [show (559872 * k + 220858) % 2 = 0 by omega]
    omega
  have h17 : C (279936 * k + 110429) = 839808 * k + 331288 := by
    unfold C
    simp [show (279936 * k + 110429) % 2 ≠ 0 by omega]
    omega
  have h18 : C (839808 * k + 331288) = 419904 * k + 165644 := by
    unfold C
    simp [show (839808 * k + 331288) % 2 = 0 by omega]
    omega
  have h19 : C (419904 * k + 165644) = 209952 * k + 82822 := by
    unfold C
    simp [show (419904 * k + 165644) % 2 = 0 by omega]
    omega
  have h20 : C (209952 * k + 82822) = 104976 * k + 41411 := by
    unfold C
    simp [show (209952 * k + 82822) % 2 = 0 by omega]
    omega
  have h21 : C (104976 * k + 41411) = 314928 * k + 124234 := by
    unfold C
    simp [show (104976 * k + 41411) % 2 ≠ 0 by omega]
    omega
  have h22 : C (314928 * k + 124234) = 157464 * k + 62117 := by
    unfold C
    simp [show (314928 * k + 124234) % 2 = 0 by omega]
    omega
  have h23 : C (157464 * k + 62117) = 472392 * k + 186352 := by
    unfold C
    simp [show (157464 * k + 62117) % 2 ≠ 0 by omega]
    omega
  have h24 : C (472392 * k + 186352) = 236196 * k + 93176 := by
    unfold C
    simp [show (472392 * k + 186352) % 2 = 0 by omega]
    omega
  have h25 : C (236196 * k + 93176) = 118098 * k + 46588 := by
    unfold C
    simp [show (236196 * k + 93176) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 46588) = 59049 * k + 23294 := by
    unfold C
    simp [show (118098 * k + 46588) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 25851) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 25851)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_26015 : ∀ k : Nat,
    iterate (65536 * k + 26015) 26 = 59049 * k + 23441 ∧
      59049 * k + 23441 < 65536 * k + 26015 := by
  intro k
  have h1 : C (65536 * k + 26015) = 196608 * k + 78046 := by
    unfold C
    simp [show (65536 * k + 26015) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 78046) = 98304 * k + 39023 := by
    unfold C
    simp [show (196608 * k + 78046) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 39023) = 294912 * k + 117070 := by
    unfold C
    simp [show (98304 * k + 39023) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 117070) = 147456 * k + 58535 := by
    unfold C
    simp [show (294912 * k + 117070) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 58535) = 442368 * k + 175606 := by
    unfold C
    simp [show (147456 * k + 58535) % 2 ≠ 0 by omega]
    omega
  have h6 : C (442368 * k + 175606) = 221184 * k + 87803 := by
    unfold C
    simp [show (442368 * k + 175606) % 2 = 0 by omega]
    omega
  have h7 : C (221184 * k + 87803) = 663552 * k + 263410 := by
    unfold C
    simp [show (221184 * k + 87803) % 2 ≠ 0 by omega]
    omega
  have h8 : C (663552 * k + 263410) = 331776 * k + 131705 := by
    unfold C
    simp [show (663552 * k + 263410) % 2 = 0 by omega]
    omega
  have h9 : C (331776 * k + 131705) = 995328 * k + 395116 := by
    unfold C
    simp [show (331776 * k + 131705) % 2 ≠ 0 by omega]
    omega
  have h10 : C (995328 * k + 395116) = 497664 * k + 197558 := by
    unfold C
    simp [show (995328 * k + 395116) % 2 = 0 by omega]
    omega
  have h11 : C (497664 * k + 197558) = 248832 * k + 98779 := by
    unfold C
    simp [show (497664 * k + 197558) % 2 = 0 by omega]
    omega
  have h12 : C (248832 * k + 98779) = 746496 * k + 296338 := by
    unfold C
    simp [show (248832 * k + 98779) % 2 ≠ 0 by omega]
    omega
  have h13 : C (746496 * k + 296338) = 373248 * k + 148169 := by
    unfold C
    simp [show (746496 * k + 296338) % 2 = 0 by omega]
    omega
  have h14 : C (373248 * k + 148169) = 1119744 * k + 444508 := by
    unfold C
    simp [show (373248 * k + 148169) % 2 ≠ 0 by omega]
    omega
  have h15 : C (1119744 * k + 444508) = 559872 * k + 222254 := by
    unfold C
    simp [show (1119744 * k + 444508) % 2 = 0 by omega]
    omega
  have h16 : C (559872 * k + 222254) = 279936 * k + 111127 := by
    unfold C
    simp [show (559872 * k + 222254) % 2 = 0 by omega]
    omega
  have h17 : C (279936 * k + 111127) = 839808 * k + 333382 := by
    unfold C
    simp [show (279936 * k + 111127) % 2 ≠ 0 by omega]
    omega
  have h18 : C (839808 * k + 333382) = 419904 * k + 166691 := by
    unfold C
    simp [show (839808 * k + 333382) % 2 = 0 by omega]
    omega
  have h19 : C (419904 * k + 166691) = 1259712 * k + 500074 := by
    unfold C
    simp [show (419904 * k + 166691) % 2 ≠ 0 by omega]
    omega
  have h20 : C (1259712 * k + 500074) = 629856 * k + 250037 := by
    unfold C
    simp [show (1259712 * k + 500074) % 2 = 0 by omega]
    omega
  have h21 : C (629856 * k + 250037) = 1889568 * k + 750112 := by
    unfold C
    simp [show (629856 * k + 250037) % 2 ≠ 0 by omega]
    omega
  have h22 : C (1889568 * k + 750112) = 944784 * k + 375056 := by
    unfold C
    simp [show (1889568 * k + 750112) % 2 = 0 by omega]
    omega
  have h23 : C (944784 * k + 375056) = 472392 * k + 187528 := by
    unfold C
    simp [show (944784 * k + 375056) % 2 = 0 by omega]
    omega
  have h24 : C (472392 * k + 187528) = 236196 * k + 93764 := by
    unfold C
    simp [show (472392 * k + 187528) % 2 = 0 by omega]
    omega
  have h25 : C (236196 * k + 93764) = 118098 * k + 46882 := by
    unfold C
    simp [show (236196 * k + 93764) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 46882) = 59049 * k + 23441 := by
    unfold C
    simp [show (118098 * k + 46882) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 26015) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 26015)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_26063 : ∀ k : Nat,
    iterate (65536 * k + 26063) 26 = 59049 * k + 23485 ∧
      59049 * k + 23485 < 65536 * k + 26063 := by
  intro k
  have h1 : C (65536 * k + 26063) = 196608 * k + 78190 := by
    unfold C
    simp [show (65536 * k + 26063) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 78190) = 98304 * k + 39095 := by
    unfold C
    simp [show (196608 * k + 78190) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 39095) = 294912 * k + 117286 := by
    unfold C
    simp [show (98304 * k + 39095) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 117286) = 147456 * k + 58643 := by
    unfold C
    simp [show (294912 * k + 117286) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 58643) = 442368 * k + 175930 := by
    unfold C
    simp [show (147456 * k + 58643) % 2 ≠ 0 by omega]
    omega
  have h6 : C (442368 * k + 175930) = 221184 * k + 87965 := by
    unfold C
    simp [show (442368 * k + 175930) % 2 = 0 by omega]
    omega
  have h7 : C (221184 * k + 87965) = 663552 * k + 263896 := by
    unfold C
    simp [show (221184 * k + 87965) % 2 ≠ 0 by omega]
    omega
  have h8 : C (663552 * k + 263896) = 331776 * k + 131948 := by
    unfold C
    simp [show (663552 * k + 263896) % 2 = 0 by omega]
    omega
  have h9 : C (331776 * k + 131948) = 165888 * k + 65974 := by
    unfold C
    simp [show (331776 * k + 131948) % 2 = 0 by omega]
    omega
  have h10 : C (165888 * k + 65974) = 82944 * k + 32987 := by
    unfold C
    simp [show (165888 * k + 65974) % 2 = 0 by omega]
    omega
  have h11 : C (82944 * k + 32987) = 248832 * k + 98962 := by
    unfold C
    simp [show (82944 * k + 32987) % 2 ≠ 0 by omega]
    omega
  have h12 : C (248832 * k + 98962) = 124416 * k + 49481 := by
    unfold C
    simp [show (248832 * k + 98962) % 2 = 0 by omega]
    omega
  have h13 : C (124416 * k + 49481) = 373248 * k + 148444 := by
    unfold C
    simp [show (124416 * k + 49481) % 2 ≠ 0 by omega]
    omega
  have h14 : C (373248 * k + 148444) = 186624 * k + 74222 := by
    unfold C
    simp [show (373248 * k + 148444) % 2 = 0 by omega]
    omega
  have h15 : C (186624 * k + 74222) = 93312 * k + 37111 := by
    unfold C
    simp [show (186624 * k + 74222) % 2 = 0 by omega]
    omega
  have h16 : C (93312 * k + 37111) = 279936 * k + 111334 := by
    unfold C
    simp [show (93312 * k + 37111) % 2 ≠ 0 by omega]
    omega
  have h17 : C (279936 * k + 111334) = 139968 * k + 55667 := by
    unfold C
    simp [show (279936 * k + 111334) % 2 = 0 by omega]
    omega
  have h18 : C (139968 * k + 55667) = 419904 * k + 167002 := by
    unfold C
    simp [show (139968 * k + 55667) % 2 ≠ 0 by omega]
    omega
  have h19 : C (419904 * k + 167002) = 209952 * k + 83501 := by
    unfold C
    simp [show (419904 * k + 167002) % 2 = 0 by omega]
    omega
  have h20 : C (209952 * k + 83501) = 629856 * k + 250504 := by
    unfold C
    simp [show (209952 * k + 83501) % 2 ≠ 0 by omega]
    omega
  have h21 : C (629856 * k + 250504) = 314928 * k + 125252 := by
    unfold C
    simp [show (629856 * k + 250504) % 2 = 0 by omega]
    omega
  have h22 : C (314928 * k + 125252) = 157464 * k + 62626 := by
    unfold C
    simp [show (314928 * k + 125252) % 2 = 0 by omega]
    omega
  have h23 : C (157464 * k + 62626) = 78732 * k + 31313 := by
    unfold C
    simp [show (157464 * k + 62626) % 2 = 0 by omega]
    omega
  have h24 : C (78732 * k + 31313) = 236196 * k + 93940 := by
    unfold C
    simp [show (78732 * k + 31313) % 2 ≠ 0 by omega]
    omega
  have h25 : C (236196 * k + 93940) = 118098 * k + 46970 := by
    unfold C
    simp [show (236196 * k + 93940) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 46970) = 59049 * k + 23485 := by
    unfold C
    simp [show (118098 * k + 46970) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 26063) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 26063)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_26343 : ∀ k : Nat,
    iterate (65536 * k + 26343) 26 = 59049 * k + 23737 ∧
      59049 * k + 23737 < 65536 * k + 26343 := by
  intro k
  have h1 : C (65536 * k + 26343) = 196608 * k + 79030 := by
    unfold C
    simp [show (65536 * k + 26343) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 79030) = 98304 * k + 39515 := by
    unfold C
    simp [show (196608 * k + 79030) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 39515) = 294912 * k + 118546 := by
    unfold C
    simp [show (98304 * k + 39515) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 118546) = 147456 * k + 59273 := by
    unfold C
    simp [show (294912 * k + 118546) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 59273) = 442368 * k + 177820 := by
    unfold C
    simp [show (147456 * k + 59273) % 2 ≠ 0 by omega]
    omega
  have h6 : C (442368 * k + 177820) = 221184 * k + 88910 := by
    unfold C
    simp [show (442368 * k + 177820) % 2 = 0 by omega]
    omega
  have h7 : C (221184 * k + 88910) = 110592 * k + 44455 := by
    unfold C
    simp [show (221184 * k + 88910) % 2 = 0 by omega]
    omega
  have h8 : C (110592 * k + 44455) = 331776 * k + 133366 := by
    unfold C
    simp [show (110592 * k + 44455) % 2 ≠ 0 by omega]
    omega
  have h9 : C (331776 * k + 133366) = 165888 * k + 66683 := by
    unfold C
    simp [show (331776 * k + 133366) % 2 = 0 by omega]
    omega
  have h10 : C (165888 * k + 66683) = 497664 * k + 200050 := by
    unfold C
    simp [show (165888 * k + 66683) % 2 ≠ 0 by omega]
    omega
  have h11 : C (497664 * k + 200050) = 248832 * k + 100025 := by
    unfold C
    simp [show (497664 * k + 200050) % 2 = 0 by omega]
    omega
  have h12 : C (248832 * k + 100025) = 746496 * k + 300076 := by
    unfold C
    simp [show (248832 * k + 100025) % 2 ≠ 0 by omega]
    omega
  have h13 : C (746496 * k + 300076) = 373248 * k + 150038 := by
    unfold C
    simp [show (746496 * k + 300076) % 2 = 0 by omega]
    omega
  have h14 : C (373248 * k + 150038) = 186624 * k + 75019 := by
    unfold C
    simp [show (373248 * k + 150038) % 2 = 0 by omega]
    omega
  have h15 : C (186624 * k + 75019) = 559872 * k + 225058 := by
    unfold C
    simp [show (186624 * k + 75019) % 2 ≠ 0 by omega]
    omega
  have h16 : C (559872 * k + 225058) = 279936 * k + 112529 := by
    unfold C
    simp [show (559872 * k + 225058) % 2 = 0 by omega]
    omega
  have h17 : C (279936 * k + 112529) = 839808 * k + 337588 := by
    unfold C
    simp [show (279936 * k + 112529) % 2 ≠ 0 by omega]
    omega
  have h18 : C (839808 * k + 337588) = 419904 * k + 168794 := by
    unfold C
    simp [show (839808 * k + 337588) % 2 = 0 by omega]
    omega
  have h19 : C (419904 * k + 168794) = 209952 * k + 84397 := by
    unfold C
    simp [show (419904 * k + 168794) % 2 = 0 by omega]
    omega
  have h20 : C (209952 * k + 84397) = 629856 * k + 253192 := by
    unfold C
    simp [show (209952 * k + 84397) % 2 ≠ 0 by omega]
    omega
  have h21 : C (629856 * k + 253192) = 314928 * k + 126596 := by
    unfold C
    simp [show (629856 * k + 253192) % 2 = 0 by omega]
    omega
  have h22 : C (314928 * k + 126596) = 157464 * k + 63298 := by
    unfold C
    simp [show (314928 * k + 126596) % 2 = 0 by omega]
    omega
  have h23 : C (157464 * k + 63298) = 78732 * k + 31649 := by
    unfold C
    simp [show (157464 * k + 63298) % 2 = 0 by omega]
    omega
  have h24 : C (78732 * k + 31649) = 236196 * k + 94948 := by
    unfold C
    simp [show (78732 * k + 31649) % 2 ≠ 0 by omega]
    omega
  have h25 : C (236196 * k + 94948) = 118098 * k + 47474 := by
    unfold C
    simp [show (236196 * k + 94948) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 47474) = 59049 * k + 23737 := by
    unfold C
    simp [show (118098 * k + 47474) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 26343) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 26343)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_26351 : ∀ k : Nat,
    iterate (65536 * k + 26351) 26 = 59049 * k + 23744 ∧
      59049 * k + 23744 < 65536 * k + 26351 := by
  intro k
  have h1 : C (65536 * k + 26351) = 196608 * k + 79054 := by
    unfold C
    simp [show (65536 * k + 26351) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 79054) = 98304 * k + 39527 := by
    unfold C
    simp [show (196608 * k + 79054) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 39527) = 294912 * k + 118582 := by
    unfold C
    simp [show (98304 * k + 39527) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 118582) = 147456 * k + 59291 := by
    unfold C
    simp [show (294912 * k + 118582) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 59291) = 442368 * k + 177874 := by
    unfold C
    simp [show (147456 * k + 59291) % 2 ≠ 0 by omega]
    omega
  have h6 : C (442368 * k + 177874) = 221184 * k + 88937 := by
    unfold C
    simp [show (442368 * k + 177874) % 2 = 0 by omega]
    omega
  have h7 : C (221184 * k + 88937) = 663552 * k + 266812 := by
    unfold C
    simp [show (221184 * k + 88937) % 2 ≠ 0 by omega]
    omega
  have h8 : C (663552 * k + 266812) = 331776 * k + 133406 := by
    unfold C
    simp [show (663552 * k + 266812) % 2 = 0 by omega]
    omega
  have h9 : C (331776 * k + 133406) = 165888 * k + 66703 := by
    unfold C
    simp [show (331776 * k + 133406) % 2 = 0 by omega]
    omega
  have h10 : C (165888 * k + 66703) = 497664 * k + 200110 := by
    unfold C
    simp [show (165888 * k + 66703) % 2 ≠ 0 by omega]
    omega
  have h11 : C (497664 * k + 200110) = 248832 * k + 100055 := by
    unfold C
    simp [show (497664 * k + 200110) % 2 = 0 by omega]
    omega
  have h12 : C (248832 * k + 100055) = 746496 * k + 300166 := by
    unfold C
    simp [show (248832 * k + 100055) % 2 ≠ 0 by omega]
    omega
  have h13 : C (746496 * k + 300166) = 373248 * k + 150083 := by
    unfold C
    simp [show (746496 * k + 300166) % 2 = 0 by omega]
    omega
  have h14 : C (373248 * k + 150083) = 1119744 * k + 450250 := by
    unfold C
    simp [show (373248 * k + 150083) % 2 ≠ 0 by omega]
    omega
  have h15 : C (1119744 * k + 450250) = 559872 * k + 225125 := by
    unfold C
    simp [show (1119744 * k + 450250) % 2 = 0 by omega]
    omega
  have h16 : C (559872 * k + 225125) = 1679616 * k + 675376 := by
    unfold C
    simp [show (559872 * k + 225125) % 2 ≠ 0 by omega]
    omega
  have h17 : C (1679616 * k + 675376) = 839808 * k + 337688 := by
    unfold C
    simp [show (1679616 * k + 675376) % 2 = 0 by omega]
    omega
  have h18 : C (839808 * k + 337688) = 419904 * k + 168844 := by
    unfold C
    simp [show (839808 * k + 337688) % 2 = 0 by omega]
    omega
  have h19 : C (419904 * k + 168844) = 209952 * k + 84422 := by
    unfold C
    simp [show (419904 * k + 168844) % 2 = 0 by omega]
    omega
  have h20 : C (209952 * k + 84422) = 104976 * k + 42211 := by
    unfold C
    simp [show (209952 * k + 84422) % 2 = 0 by omega]
    omega
  have h21 : C (104976 * k + 42211) = 314928 * k + 126634 := by
    unfold C
    simp [show (104976 * k + 42211) % 2 ≠ 0 by omega]
    omega
  have h22 : C (314928 * k + 126634) = 157464 * k + 63317 := by
    unfold C
    simp [show (314928 * k + 126634) % 2 = 0 by omega]
    omega
  have h23 : C (157464 * k + 63317) = 472392 * k + 189952 := by
    unfold C
    simp [show (157464 * k + 63317) % 2 ≠ 0 by omega]
    omega
  have h24 : C (472392 * k + 189952) = 236196 * k + 94976 := by
    unfold C
    simp [show (472392 * k + 189952) % 2 = 0 by omega]
    omega
  have h25 : C (236196 * k + 94976) = 118098 * k + 47488 := by
    unfold C
    simp [show (236196 * k + 94976) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 47488) = 59049 * k + 23744 := by
    unfold C
    simp [show (118098 * k + 47488) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 26351) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 26351)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_26367 : ∀ k : Nat,
    iterate (65536 * k + 26367) 26 = 59049 * k + 23758 ∧
      59049 * k + 23758 < 65536 * k + 26367 := by
  intro k
  have h1 : C (65536 * k + 26367) = 196608 * k + 79102 := by
    unfold C
    simp [show (65536 * k + 26367) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 79102) = 98304 * k + 39551 := by
    unfold C
    simp [show (196608 * k + 79102) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 39551) = 294912 * k + 118654 := by
    unfold C
    simp [show (98304 * k + 39551) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 118654) = 147456 * k + 59327 := by
    unfold C
    simp [show (294912 * k + 118654) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 59327) = 442368 * k + 177982 := by
    unfold C
    simp [show (147456 * k + 59327) % 2 ≠ 0 by omega]
    omega
  have h6 : C (442368 * k + 177982) = 221184 * k + 88991 := by
    unfold C
    simp [show (442368 * k + 177982) % 2 = 0 by omega]
    omega
  have h7 : C (221184 * k + 88991) = 663552 * k + 266974 := by
    unfold C
    simp [show (221184 * k + 88991) % 2 ≠ 0 by omega]
    omega
  have h8 : C (663552 * k + 266974) = 331776 * k + 133487 := by
    unfold C
    simp [show (663552 * k + 266974) % 2 = 0 by omega]
    omega
  have h9 : C (331776 * k + 133487) = 995328 * k + 400462 := by
    unfold C
    simp [show (331776 * k + 133487) % 2 ≠ 0 by omega]
    omega
  have h10 : C (995328 * k + 400462) = 497664 * k + 200231 := by
    unfold C
    simp [show (995328 * k + 400462) % 2 = 0 by omega]
    omega
  have h11 : C (497664 * k + 200231) = 1492992 * k + 600694 := by
    unfold C
    simp [show (497664 * k + 200231) % 2 ≠ 0 by omega]
    omega
  have h12 : C (1492992 * k + 600694) = 746496 * k + 300347 := by
    unfold C
    simp [show (1492992 * k + 600694) % 2 = 0 by omega]
    omega
  have h13 : C (746496 * k + 300347) = 2239488 * k + 901042 := by
    unfold C
    simp [show (746496 * k + 300347) % 2 ≠ 0 by omega]
    omega
  have h14 : C (2239488 * k + 901042) = 1119744 * k + 450521 := by
    unfold C
    simp [show (2239488 * k + 901042) % 2 = 0 by omega]
    omega
  have h15 : C (1119744 * k + 450521) = 3359232 * k + 1351564 := by
    unfold C
    simp [show (1119744 * k + 450521) % 2 ≠ 0 by omega]
    omega
  have h16 : C (3359232 * k + 1351564) = 1679616 * k + 675782 := by
    unfold C
    simp [show (3359232 * k + 1351564) % 2 = 0 by omega]
    omega
  have h17 : C (1679616 * k + 675782) = 839808 * k + 337891 := by
    unfold C
    simp [show (1679616 * k + 675782) % 2 = 0 by omega]
    omega
  have h18 : C (839808 * k + 337891) = 2519424 * k + 1013674 := by
    unfold C
    simp [show (839808 * k + 337891) % 2 ≠ 0 by omega]
    omega
  have h19 : C (2519424 * k + 1013674) = 1259712 * k + 506837 := by
    unfold C
    simp [show (2519424 * k + 1013674) % 2 = 0 by omega]
    omega
  have h20 : C (1259712 * k + 506837) = 3779136 * k + 1520512 := by
    unfold C
    simp [show (1259712 * k + 506837) % 2 ≠ 0 by omega]
    omega
  have h21 : C (3779136 * k + 1520512) = 1889568 * k + 760256 := by
    unfold C
    simp [show (3779136 * k + 1520512) % 2 = 0 by omega]
    omega
  have h22 : C (1889568 * k + 760256) = 944784 * k + 380128 := by
    unfold C
    simp [show (1889568 * k + 760256) % 2 = 0 by omega]
    omega
  have h23 : C (944784 * k + 380128) = 472392 * k + 190064 := by
    unfold C
    simp [show (944784 * k + 380128) % 2 = 0 by omega]
    omega
  have h24 : C (472392 * k + 190064) = 236196 * k + 95032 := by
    unfold C
    simp [show (472392 * k + 190064) % 2 = 0 by omega]
    omega
  have h25 : C (236196 * k + 95032) = 118098 * k + 47516 := by
    unfold C
    simp [show (236196 * k + 95032) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 47516) = 59049 * k + 23758 := by
    unfold C
    simp [show (118098 * k + 47516) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 26367) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 26367)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_26439 : ∀ k : Nat,
    iterate (65536 * k + 26439) 26 = 59049 * k + 23824 ∧
      59049 * k + 23824 < 65536 * k + 26439 := by
  intro k
  have h1 : C (65536 * k + 26439) = 196608 * k + 79318 := by
    unfold C
    simp [show (65536 * k + 26439) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 79318) = 98304 * k + 39659 := by
    unfold C
    simp [show (196608 * k + 79318) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 39659) = 294912 * k + 118978 := by
    unfold C
    simp [show (98304 * k + 39659) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 118978) = 147456 * k + 59489 := by
    unfold C
    simp [show (294912 * k + 118978) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 59489) = 442368 * k + 178468 := by
    unfold C
    simp [show (147456 * k + 59489) % 2 ≠ 0 by omega]
    omega
  have h6 : C (442368 * k + 178468) = 221184 * k + 89234 := by
    unfold C
    simp [show (442368 * k + 178468) % 2 = 0 by omega]
    omega
  have h7 : C (221184 * k + 89234) = 110592 * k + 44617 := by
    unfold C
    simp [show (221184 * k + 89234) % 2 = 0 by omega]
    omega
  have h8 : C (110592 * k + 44617) = 331776 * k + 133852 := by
    unfold C
    simp [show (110592 * k + 44617) % 2 ≠ 0 by omega]
    omega
  have h9 : C (331776 * k + 133852) = 165888 * k + 66926 := by
    unfold C
    simp [show (331776 * k + 133852) % 2 = 0 by omega]
    omega
  have h10 : C (165888 * k + 66926) = 82944 * k + 33463 := by
    unfold C
    simp [show (165888 * k + 66926) % 2 = 0 by omega]
    omega
  have h11 : C (82944 * k + 33463) = 248832 * k + 100390 := by
    unfold C
    simp [show (82944 * k + 33463) % 2 ≠ 0 by omega]
    omega
  have h12 : C (248832 * k + 100390) = 124416 * k + 50195 := by
    unfold C
    simp [show (248832 * k + 100390) % 2 = 0 by omega]
    omega
  have h13 : C (124416 * k + 50195) = 373248 * k + 150586 := by
    unfold C
    simp [show (124416 * k + 50195) % 2 ≠ 0 by omega]
    omega
  have h14 : C (373248 * k + 150586) = 186624 * k + 75293 := by
    unfold C
    simp [show (373248 * k + 150586) % 2 = 0 by omega]
    omega
  have h15 : C (186624 * k + 75293) = 559872 * k + 225880 := by
    unfold C
    simp [show (186624 * k + 75293) % 2 ≠ 0 by omega]
    omega
  have h16 : C (559872 * k + 225880) = 279936 * k + 112940 := by
    unfold C
    simp [show (559872 * k + 225880) % 2 = 0 by omega]
    omega
  have h17 : C (279936 * k + 112940) = 139968 * k + 56470 := by
    unfold C
    simp [show (279936 * k + 112940) % 2 = 0 by omega]
    omega
  have h18 : C (139968 * k + 56470) = 69984 * k + 28235 := by
    unfold C
    simp [show (139968 * k + 56470) % 2 = 0 by omega]
    omega
  have h19 : C (69984 * k + 28235) = 209952 * k + 84706 := by
    unfold C
    simp [show (69984 * k + 28235) % 2 ≠ 0 by omega]
    omega
  have h20 : C (209952 * k + 84706) = 104976 * k + 42353 := by
    unfold C
    simp [show (209952 * k + 84706) % 2 = 0 by omega]
    omega
  have h21 : C (104976 * k + 42353) = 314928 * k + 127060 := by
    unfold C
    simp [show (104976 * k + 42353) % 2 ≠ 0 by omega]
    omega
  have h22 : C (314928 * k + 127060) = 157464 * k + 63530 := by
    unfold C
    simp [show (314928 * k + 127060) % 2 = 0 by omega]
    omega
  have h23 : C (157464 * k + 63530) = 78732 * k + 31765 := by
    unfold C
    simp [show (157464 * k + 63530) % 2 = 0 by omega]
    omega
  have h24 : C (78732 * k + 31765) = 236196 * k + 95296 := by
    unfold C
    simp [show (78732 * k + 31765) % 2 ≠ 0 by omega]
    omega
  have h25 : C (236196 * k + 95296) = 118098 * k + 47648 := by
    unfold C
    simp [show (236196 * k + 95296) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 47648) = 59049 * k + 23824 := by
    unfold C
    simp [show (118098 * k + 47648) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 26439) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 26439)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_26459 : ∀ k : Nat,
    iterate (65536 * k + 26459) 26 = 59049 * k + 23842 ∧
      59049 * k + 23842 < 65536 * k + 26459 := by
  intro k
  have h1 : C (65536 * k + 26459) = 196608 * k + 79378 := by
    unfold C
    simp [show (65536 * k + 26459) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 79378) = 98304 * k + 39689 := by
    unfold C
    simp [show (196608 * k + 79378) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 39689) = 294912 * k + 119068 := by
    unfold C
    simp [show (98304 * k + 39689) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 119068) = 147456 * k + 59534 := by
    unfold C
    simp [show (294912 * k + 119068) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 59534) = 73728 * k + 29767 := by
    unfold C
    simp [show (147456 * k + 59534) % 2 = 0 by omega]
    omega
  have h6 : C (73728 * k + 29767) = 221184 * k + 89302 := by
    unfold C
    simp [show (73728 * k + 29767) % 2 ≠ 0 by omega]
    omega
  have h7 : C (221184 * k + 89302) = 110592 * k + 44651 := by
    unfold C
    simp [show (221184 * k + 89302) % 2 = 0 by omega]
    omega
  have h8 : C (110592 * k + 44651) = 331776 * k + 133954 := by
    unfold C
    simp [show (110592 * k + 44651) % 2 ≠ 0 by omega]
    omega
  have h9 : C (331776 * k + 133954) = 165888 * k + 66977 := by
    unfold C
    simp [show (331776 * k + 133954) % 2 = 0 by omega]
    omega
  have h10 : C (165888 * k + 66977) = 497664 * k + 200932 := by
    unfold C
    simp [show (165888 * k + 66977) % 2 ≠ 0 by omega]
    omega
  have h11 : C (497664 * k + 200932) = 248832 * k + 100466 := by
    unfold C
    simp [show (497664 * k + 200932) % 2 = 0 by omega]
    omega
  have h12 : C (248832 * k + 100466) = 124416 * k + 50233 := by
    unfold C
    simp [show (248832 * k + 100466) % 2 = 0 by omega]
    omega
  have h13 : C (124416 * k + 50233) = 373248 * k + 150700 := by
    unfold C
    simp [show (124416 * k + 50233) % 2 ≠ 0 by omega]
    omega
  have h14 : C (373248 * k + 150700) = 186624 * k + 75350 := by
    unfold C
    simp [show (373248 * k + 150700) % 2 = 0 by omega]
    omega
  have h15 : C (186624 * k + 75350) = 93312 * k + 37675 := by
    unfold C
    simp [show (186624 * k + 75350) % 2 = 0 by omega]
    omega
  have h16 : C (93312 * k + 37675) = 279936 * k + 113026 := by
    unfold C
    simp [show (93312 * k + 37675) % 2 ≠ 0 by omega]
    omega
  have h17 : C (279936 * k + 113026) = 139968 * k + 56513 := by
    unfold C
    simp [show (279936 * k + 113026) % 2 = 0 by omega]
    omega
  have h18 : C (139968 * k + 56513) = 419904 * k + 169540 := by
    unfold C
    simp [show (139968 * k + 56513) % 2 ≠ 0 by omega]
    omega
  have h19 : C (419904 * k + 169540) = 209952 * k + 84770 := by
    unfold C
    simp [show (419904 * k + 169540) % 2 = 0 by omega]
    omega
  have h20 : C (209952 * k + 84770) = 104976 * k + 42385 := by
    unfold C
    simp [show (209952 * k + 84770) % 2 = 0 by omega]
    omega
  have h21 : C (104976 * k + 42385) = 314928 * k + 127156 := by
    unfold C
    simp [show (104976 * k + 42385) % 2 ≠ 0 by omega]
    omega
  have h22 : C (314928 * k + 127156) = 157464 * k + 63578 := by
    unfold C
    simp [show (314928 * k + 127156) % 2 = 0 by omega]
    omega
  have h23 : C (157464 * k + 63578) = 78732 * k + 31789 := by
    unfold C
    simp [show (157464 * k + 63578) % 2 = 0 by omega]
    omega
  have h24 : C (78732 * k + 31789) = 236196 * k + 95368 := by
    unfold C
    simp [show (78732 * k + 31789) % 2 ≠ 0 by omega]
    omega
  have h25 : C (236196 * k + 95368) = 118098 * k + 47684 := by
    unfold C
    simp [show (236196 * k + 95368) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 47684) = 59049 * k + 23842 := by
    unfold C
    simp [show (118098 * k + 47684) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 26459) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 26459)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_26619 : ∀ k : Nat,
    iterate (65536 * k + 26619) 26 = 59049 * k + 23986 ∧
      59049 * k + 23986 < 65536 * k + 26619 := by
  intro k
  have h1 : C (65536 * k + 26619) = 196608 * k + 79858 := by
    unfold C
    simp [show (65536 * k + 26619) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 79858) = 98304 * k + 39929 := by
    unfold C
    simp [show (196608 * k + 79858) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 39929) = 294912 * k + 119788 := by
    unfold C
    simp [show (98304 * k + 39929) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 119788) = 147456 * k + 59894 := by
    unfold C
    simp [show (294912 * k + 119788) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 59894) = 73728 * k + 29947 := by
    unfold C
    simp [show (147456 * k + 59894) % 2 = 0 by omega]
    omega
  have h6 : C (73728 * k + 29947) = 221184 * k + 89842 := by
    unfold C
    simp [show (73728 * k + 29947) % 2 ≠ 0 by omega]
    omega
  have h7 : C (221184 * k + 89842) = 110592 * k + 44921 := by
    unfold C
    simp [show (221184 * k + 89842) % 2 = 0 by omega]
    omega
  have h8 : C (110592 * k + 44921) = 331776 * k + 134764 := by
    unfold C
    simp [show (110592 * k + 44921) % 2 ≠ 0 by omega]
    omega
  have h9 : C (331776 * k + 134764) = 165888 * k + 67382 := by
    unfold C
    simp [show (331776 * k + 134764) % 2 = 0 by omega]
    omega
  have h10 : C (165888 * k + 67382) = 82944 * k + 33691 := by
    unfold C
    simp [show (165888 * k + 67382) % 2 = 0 by omega]
    omega
  have h11 : C (82944 * k + 33691) = 248832 * k + 101074 := by
    unfold C
    simp [show (82944 * k + 33691) % 2 ≠ 0 by omega]
    omega
  have h12 : C (248832 * k + 101074) = 124416 * k + 50537 := by
    unfold C
    simp [show (248832 * k + 101074) % 2 = 0 by omega]
    omega
  have h13 : C (124416 * k + 50537) = 373248 * k + 151612 := by
    unfold C
    simp [show (124416 * k + 50537) % 2 ≠ 0 by omega]
    omega
  have h14 : C (373248 * k + 151612) = 186624 * k + 75806 := by
    unfold C
    simp [show (373248 * k + 151612) % 2 = 0 by omega]
    omega
  have h15 : C (186624 * k + 75806) = 93312 * k + 37903 := by
    unfold C
    simp [show (186624 * k + 75806) % 2 = 0 by omega]
    omega
  have h16 : C (93312 * k + 37903) = 279936 * k + 113710 := by
    unfold C
    simp [show (93312 * k + 37903) % 2 ≠ 0 by omega]
    omega
  have h17 : C (279936 * k + 113710) = 139968 * k + 56855 := by
    unfold C
    simp [show (279936 * k + 113710) % 2 = 0 by omega]
    omega
  have h18 : C (139968 * k + 56855) = 419904 * k + 170566 := by
    unfold C
    simp [show (139968 * k + 56855) % 2 ≠ 0 by omega]
    omega
  have h19 : C (419904 * k + 170566) = 209952 * k + 85283 := by
    unfold C
    simp [show (419904 * k + 170566) % 2 = 0 by omega]
    omega
  have h20 : C (209952 * k + 85283) = 629856 * k + 255850 := by
    unfold C
    simp [show (209952 * k + 85283) % 2 ≠ 0 by omega]
    omega
  have h21 : C (629856 * k + 255850) = 314928 * k + 127925 := by
    unfold C
    simp [show (629856 * k + 255850) % 2 = 0 by omega]
    omega
  have h22 : C (314928 * k + 127925) = 944784 * k + 383776 := by
    unfold C
    simp [show (314928 * k + 127925) % 2 ≠ 0 by omega]
    omega
  have h23 : C (944784 * k + 383776) = 472392 * k + 191888 := by
    unfold C
    simp [show (944784 * k + 383776) % 2 = 0 by omega]
    omega
  have h24 : C (472392 * k + 191888) = 236196 * k + 95944 := by
    unfold C
    simp [show (472392 * k + 191888) % 2 = 0 by omega]
    omega
  have h25 : C (236196 * k + 95944) = 118098 * k + 47972 := by
    unfold C
    simp [show (236196 * k + 95944) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 47972) = 59049 * k + 23986 := by
    unfold C
    simp [show (118098 * k + 47972) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 26619) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 26619)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_27039 : ∀ k : Nat,
    iterate (65536 * k + 27039) 26 = 59049 * k + 24364 ∧
      59049 * k + 24364 < 65536 * k + 27039 := by
  intro k
  have h1 : C (65536 * k + 27039) = 196608 * k + 81118 := by
    unfold C
    simp [show (65536 * k + 27039) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 81118) = 98304 * k + 40559 := by
    unfold C
    simp [show (196608 * k + 81118) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 40559) = 294912 * k + 121678 := by
    unfold C
    simp [show (98304 * k + 40559) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 121678) = 147456 * k + 60839 := by
    unfold C
    simp [show (294912 * k + 121678) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 60839) = 442368 * k + 182518 := by
    unfold C
    simp [show (147456 * k + 60839) % 2 ≠ 0 by omega]
    omega
  have h6 : C (442368 * k + 182518) = 221184 * k + 91259 := by
    unfold C
    simp [show (442368 * k + 182518) % 2 = 0 by omega]
    omega
  have h7 : C (221184 * k + 91259) = 663552 * k + 273778 := by
    unfold C
    simp [show (221184 * k + 91259) % 2 ≠ 0 by omega]
    omega
  have h8 : C (663552 * k + 273778) = 331776 * k + 136889 := by
    unfold C
    simp [show (663552 * k + 273778) % 2 = 0 by omega]
    omega
  have h9 : C (331776 * k + 136889) = 995328 * k + 410668 := by
    unfold C
    simp [show (331776 * k + 136889) % 2 ≠ 0 by omega]
    omega
  have h10 : C (995328 * k + 410668) = 497664 * k + 205334 := by
    unfold C
    simp [show (995328 * k + 410668) % 2 = 0 by omega]
    omega
  have h11 : C (497664 * k + 205334) = 248832 * k + 102667 := by
    unfold C
    simp [show (497664 * k + 205334) % 2 = 0 by omega]
    omega
  have h12 : C (248832 * k + 102667) = 746496 * k + 308002 := by
    unfold C
    simp [show (248832 * k + 102667) % 2 ≠ 0 by omega]
    omega
  have h13 : C (746496 * k + 308002) = 373248 * k + 154001 := by
    unfold C
    simp [show (746496 * k + 308002) % 2 = 0 by omega]
    omega
  have h14 : C (373248 * k + 154001) = 1119744 * k + 462004 := by
    unfold C
    simp [show (373248 * k + 154001) % 2 ≠ 0 by omega]
    omega
  have h15 : C (1119744 * k + 462004) = 559872 * k + 231002 := by
    unfold C
    simp [show (1119744 * k + 462004) % 2 = 0 by omega]
    omega
  have h16 : C (559872 * k + 231002) = 279936 * k + 115501 := by
    unfold C
    simp [show (559872 * k + 231002) % 2 = 0 by omega]
    omega
  have h17 : C (279936 * k + 115501) = 839808 * k + 346504 := by
    unfold C
    simp [show (279936 * k + 115501) % 2 ≠ 0 by omega]
    omega
  have h18 : C (839808 * k + 346504) = 419904 * k + 173252 := by
    unfold C
    simp [show (839808 * k + 346504) % 2 = 0 by omega]
    omega
  have h19 : C (419904 * k + 173252) = 209952 * k + 86626 := by
    unfold C
    simp [show (419904 * k + 173252) % 2 = 0 by omega]
    omega
  have h20 : C (209952 * k + 86626) = 104976 * k + 43313 := by
    unfold C
    simp [show (209952 * k + 86626) % 2 = 0 by omega]
    omega
  have h21 : C (104976 * k + 43313) = 314928 * k + 129940 := by
    unfold C
    simp [show (104976 * k + 43313) % 2 ≠ 0 by omega]
    omega
  have h22 : C (314928 * k + 129940) = 157464 * k + 64970 := by
    unfold C
    simp [show (314928 * k + 129940) % 2 = 0 by omega]
    omega
  have h23 : C (157464 * k + 64970) = 78732 * k + 32485 := by
    unfold C
    simp [show (157464 * k + 64970) % 2 = 0 by omega]
    omega
  have h24 : C (78732 * k + 32485) = 236196 * k + 97456 := by
    unfold C
    simp [show (78732 * k + 32485) % 2 ≠ 0 by omega]
    omega
  have h25 : C (236196 * k + 97456) = 118098 * k + 48728 := by
    unfold C
    simp [show (236196 * k + 97456) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 48728) = 59049 * k + 24364 := by
    unfold C
    simp [show (118098 * k + 48728) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 27039) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 27039)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_27119 : ∀ k : Nat,
    iterate (65536 * k + 27119) 26 = 59049 * k + 24436 ∧
      59049 * k + 24436 < 65536 * k + 27119 := by
  intro k
  have h1 : C (65536 * k + 27119) = 196608 * k + 81358 := by
    unfold C
    simp [show (65536 * k + 27119) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 81358) = 98304 * k + 40679 := by
    unfold C
    simp [show (196608 * k + 81358) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 40679) = 294912 * k + 122038 := by
    unfold C
    simp [show (98304 * k + 40679) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 122038) = 147456 * k + 61019 := by
    unfold C
    simp [show (294912 * k + 122038) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 61019) = 442368 * k + 183058 := by
    unfold C
    simp [show (147456 * k + 61019) % 2 ≠ 0 by omega]
    omega
  have h6 : C (442368 * k + 183058) = 221184 * k + 91529 := by
    unfold C
    simp [show (442368 * k + 183058) % 2 = 0 by omega]
    omega
  have h7 : C (221184 * k + 91529) = 663552 * k + 274588 := by
    unfold C
    simp [show (221184 * k + 91529) % 2 ≠ 0 by omega]
    omega
  have h8 : C (663552 * k + 274588) = 331776 * k + 137294 := by
    unfold C
    simp [show (663552 * k + 274588) % 2 = 0 by omega]
    omega
  have h9 : C (331776 * k + 137294) = 165888 * k + 68647 := by
    unfold C
    simp [show (331776 * k + 137294) % 2 = 0 by omega]
    omega
  have h10 : C (165888 * k + 68647) = 497664 * k + 205942 := by
    unfold C
    simp [show (165888 * k + 68647) % 2 ≠ 0 by omega]
    omega
  have h11 : C (497664 * k + 205942) = 248832 * k + 102971 := by
    unfold C
    simp [show (497664 * k + 205942) % 2 = 0 by omega]
    omega
  have h12 : C (248832 * k + 102971) = 746496 * k + 308914 := by
    unfold C
    simp [show (248832 * k + 102971) % 2 ≠ 0 by omega]
    omega
  have h13 : C (746496 * k + 308914) = 373248 * k + 154457 := by
    unfold C
    simp [show (746496 * k + 308914) % 2 = 0 by omega]
    omega
  have h14 : C (373248 * k + 154457) = 1119744 * k + 463372 := by
    unfold C
    simp [show (373248 * k + 154457) % 2 ≠ 0 by omega]
    omega
  have h15 : C (1119744 * k + 463372) = 559872 * k + 231686 := by
    unfold C
    simp [show (1119744 * k + 463372) % 2 = 0 by omega]
    omega
  have h16 : C (559872 * k + 231686) = 279936 * k + 115843 := by
    unfold C
    simp [show (559872 * k + 231686) % 2 = 0 by omega]
    omega
  have h17 : C (279936 * k + 115843) = 839808 * k + 347530 := by
    unfold C
    simp [show (279936 * k + 115843) % 2 ≠ 0 by omega]
    omega
  have h18 : C (839808 * k + 347530) = 419904 * k + 173765 := by
    unfold C
    simp [show (839808 * k + 347530) % 2 = 0 by omega]
    omega
  have h19 : C (419904 * k + 173765) = 1259712 * k + 521296 := by
    unfold C
    simp [show (419904 * k + 173765) % 2 ≠ 0 by omega]
    omega
  have h20 : C (1259712 * k + 521296) = 629856 * k + 260648 := by
    unfold C
    simp [show (1259712 * k + 521296) % 2 = 0 by omega]
    omega
  have h21 : C (629856 * k + 260648) = 314928 * k + 130324 := by
    unfold C
    simp [show (629856 * k + 260648) % 2 = 0 by omega]
    omega
  have h22 : C (314928 * k + 130324) = 157464 * k + 65162 := by
    unfold C
    simp [show (314928 * k + 130324) % 2 = 0 by omega]
    omega
  have h23 : C (157464 * k + 65162) = 78732 * k + 32581 := by
    unfold C
    simp [show (157464 * k + 65162) % 2 = 0 by omega]
    omega
  have h24 : C (78732 * k + 32581) = 236196 * k + 97744 := by
    unfold C
    simp [show (78732 * k + 32581) % 2 ≠ 0 by omega]
    omega
  have h25 : C (236196 * k + 97744) = 118098 * k + 48872 := by
    unfold C
    simp [show (236196 * k + 97744) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 48872) = 59049 * k + 24436 := by
    unfold C
    simp [show (118098 * k + 48872) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 27119) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 27119)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_27303 : ∀ k : Nat,
    iterate (65536 * k + 27303) 26 = 59049 * k + 24602 ∧
      59049 * k + 24602 < 65536 * k + 27303 := by
  intro k
  have h1 : C (65536 * k + 27303) = 196608 * k + 81910 := by
    unfold C
    simp [show (65536 * k + 27303) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 81910) = 98304 * k + 40955 := by
    unfold C
    simp [show (196608 * k + 81910) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 40955) = 294912 * k + 122866 := by
    unfold C
    simp [show (98304 * k + 40955) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 122866) = 147456 * k + 61433 := by
    unfold C
    simp [show (294912 * k + 122866) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 61433) = 442368 * k + 184300 := by
    unfold C
    simp [show (147456 * k + 61433) % 2 ≠ 0 by omega]
    omega
  have h6 : C (442368 * k + 184300) = 221184 * k + 92150 := by
    unfold C
    simp [show (442368 * k + 184300) % 2 = 0 by omega]
    omega
  have h7 : C (221184 * k + 92150) = 110592 * k + 46075 := by
    unfold C
    simp [show (221184 * k + 92150) % 2 = 0 by omega]
    omega
  have h8 : C (110592 * k + 46075) = 331776 * k + 138226 := by
    unfold C
    simp [show (110592 * k + 46075) % 2 ≠ 0 by omega]
    omega
  have h9 : C (331776 * k + 138226) = 165888 * k + 69113 := by
    unfold C
    simp [show (331776 * k + 138226) % 2 = 0 by omega]
    omega
  have h10 : C (165888 * k + 69113) = 497664 * k + 207340 := by
    unfold C
    simp [show (165888 * k + 69113) % 2 ≠ 0 by omega]
    omega
  have h11 : C (497664 * k + 207340) = 248832 * k + 103670 := by
    unfold C
    simp [show (497664 * k + 207340) % 2 = 0 by omega]
    omega
  have h12 : C (248832 * k + 103670) = 124416 * k + 51835 := by
    unfold C
    simp [show (248832 * k + 103670) % 2 = 0 by omega]
    omega
  have h13 : C (124416 * k + 51835) = 373248 * k + 155506 := by
    unfold C
    simp [show (124416 * k + 51835) % 2 ≠ 0 by omega]
    omega
  have h14 : C (373248 * k + 155506) = 186624 * k + 77753 := by
    unfold C
    simp [show (373248 * k + 155506) % 2 = 0 by omega]
    omega
  have h15 : C (186624 * k + 77753) = 559872 * k + 233260 := by
    unfold C
    simp [show (186624 * k + 77753) % 2 ≠ 0 by omega]
    omega
  have h16 : C (559872 * k + 233260) = 279936 * k + 116630 := by
    unfold C
    simp [show (559872 * k + 233260) % 2 = 0 by omega]
    omega
  have h17 : C (279936 * k + 116630) = 139968 * k + 58315 := by
    unfold C
    simp [show (279936 * k + 116630) % 2 = 0 by omega]
    omega
  have h18 : C (139968 * k + 58315) = 419904 * k + 174946 := by
    unfold C
    simp [show (139968 * k + 58315) % 2 ≠ 0 by omega]
    omega
  have h19 : C (419904 * k + 174946) = 209952 * k + 87473 := by
    unfold C
    simp [show (419904 * k + 174946) % 2 = 0 by omega]
    omega
  have h20 : C (209952 * k + 87473) = 629856 * k + 262420 := by
    unfold C
    simp [show (209952 * k + 87473) % 2 ≠ 0 by omega]
    omega
  have h21 : C (629856 * k + 262420) = 314928 * k + 131210 := by
    unfold C
    simp [show (629856 * k + 262420) % 2 = 0 by omega]
    omega
  have h22 : C (314928 * k + 131210) = 157464 * k + 65605 := by
    unfold C
    simp [show (314928 * k + 131210) % 2 = 0 by omega]
    omega
  have h23 : C (157464 * k + 65605) = 472392 * k + 196816 := by
    unfold C
    simp [show (157464 * k + 65605) % 2 ≠ 0 by omega]
    omega
  have h24 : C (472392 * k + 196816) = 236196 * k + 98408 := by
    unfold C
    simp [show (472392 * k + 196816) % 2 = 0 by omega]
    omega
  have h25 : C (236196 * k + 98408) = 118098 * k + 49204 := by
    unfold C
    simp [show (236196 * k + 98408) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 49204) = 59049 * k + 24602 := by
    unfold C
    simp [show (118098 * k + 49204) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 27303) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 27303)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_27343 : ∀ k : Nat,
    iterate (65536 * k + 27343) 26 = 59049 * k + 24638 ∧
      59049 * k + 24638 < 65536 * k + 27343 := by
  intro k
  have h1 : C (65536 * k + 27343) = 196608 * k + 82030 := by
    unfold C
    simp [show (65536 * k + 27343) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 82030) = 98304 * k + 41015 := by
    unfold C
    simp [show (196608 * k + 82030) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 41015) = 294912 * k + 123046 := by
    unfold C
    simp [show (98304 * k + 41015) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 123046) = 147456 * k + 61523 := by
    unfold C
    simp [show (294912 * k + 123046) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 61523) = 442368 * k + 184570 := by
    unfold C
    simp [show (147456 * k + 61523) % 2 ≠ 0 by omega]
    omega
  have h6 : C (442368 * k + 184570) = 221184 * k + 92285 := by
    unfold C
    simp [show (442368 * k + 184570) % 2 = 0 by omega]
    omega
  have h7 : C (221184 * k + 92285) = 663552 * k + 276856 := by
    unfold C
    simp [show (221184 * k + 92285) % 2 ≠ 0 by omega]
    omega
  have h8 : C (663552 * k + 276856) = 331776 * k + 138428 := by
    unfold C
    simp [show (663552 * k + 276856) % 2 = 0 by omega]
    omega
  have h9 : C (331776 * k + 138428) = 165888 * k + 69214 := by
    unfold C
    simp [show (331776 * k + 138428) % 2 = 0 by omega]
    omega
  have h10 : C (165888 * k + 69214) = 82944 * k + 34607 := by
    unfold C
    simp [show (165888 * k + 69214) % 2 = 0 by omega]
    omega
  have h11 : C (82944 * k + 34607) = 248832 * k + 103822 := by
    unfold C
    simp [show (82944 * k + 34607) % 2 ≠ 0 by omega]
    omega
  have h12 : C (248832 * k + 103822) = 124416 * k + 51911 := by
    unfold C
    simp [show (248832 * k + 103822) % 2 = 0 by omega]
    omega
  have h13 : C (124416 * k + 51911) = 373248 * k + 155734 := by
    unfold C
    simp [show (124416 * k + 51911) % 2 ≠ 0 by omega]
    omega
  have h14 : C (373248 * k + 155734) = 186624 * k + 77867 := by
    unfold C
    simp [show (373248 * k + 155734) % 2 = 0 by omega]
    omega
  have h15 : C (186624 * k + 77867) = 559872 * k + 233602 := by
    unfold C
    simp [show (186624 * k + 77867) % 2 ≠ 0 by omega]
    omega
  have h16 : C (559872 * k + 233602) = 279936 * k + 116801 := by
    unfold C
    simp [show (559872 * k + 233602) % 2 = 0 by omega]
    omega
  have h17 : C (279936 * k + 116801) = 839808 * k + 350404 := by
    unfold C
    simp [show (279936 * k + 116801) % 2 ≠ 0 by omega]
    omega
  have h18 : C (839808 * k + 350404) = 419904 * k + 175202 := by
    unfold C
    simp [show (839808 * k + 350404) % 2 = 0 by omega]
    omega
  have h19 : C (419904 * k + 175202) = 209952 * k + 87601 := by
    unfold C
    simp [show (419904 * k + 175202) % 2 = 0 by omega]
    omega
  have h20 : C (209952 * k + 87601) = 629856 * k + 262804 := by
    unfold C
    simp [show (209952 * k + 87601) % 2 ≠ 0 by omega]
    omega
  have h21 : C (629856 * k + 262804) = 314928 * k + 131402 := by
    unfold C
    simp [show (629856 * k + 262804) % 2 = 0 by omega]
    omega
  have h22 : C (314928 * k + 131402) = 157464 * k + 65701 := by
    unfold C
    simp [show (314928 * k + 131402) % 2 = 0 by omega]
    omega
  have h23 : C (157464 * k + 65701) = 472392 * k + 197104 := by
    unfold C
    simp [show (157464 * k + 65701) % 2 ≠ 0 by omega]
    omega
  have h24 : C (472392 * k + 197104) = 236196 * k + 98552 := by
    unfold C
    simp [show (472392 * k + 197104) % 2 = 0 by omega]
    omega
  have h25 : C (236196 * k + 98552) = 118098 * k + 49276 := by
    unfold C
    simp [show (236196 * k + 98552) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 49276) = 59049 * k + 24638 := by
    unfold C
    simp [show (118098 * k + 49276) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 27343) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 27343)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_27423 : ∀ k : Nat,
    iterate (65536 * k + 27423) 26 = 59049 * k + 24710 ∧
      59049 * k + 24710 < 65536 * k + 27423 := by
  intro k
  have h1 : C (65536 * k + 27423) = 196608 * k + 82270 := by
    unfold C
    simp [show (65536 * k + 27423) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 82270) = 98304 * k + 41135 := by
    unfold C
    simp [show (196608 * k + 82270) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 41135) = 294912 * k + 123406 := by
    unfold C
    simp [show (98304 * k + 41135) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 123406) = 147456 * k + 61703 := by
    unfold C
    simp [show (294912 * k + 123406) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 61703) = 442368 * k + 185110 := by
    unfold C
    simp [show (147456 * k + 61703) % 2 ≠ 0 by omega]
    omega
  have h6 : C (442368 * k + 185110) = 221184 * k + 92555 := by
    unfold C
    simp [show (442368 * k + 185110) % 2 = 0 by omega]
    omega
  have h7 : C (221184 * k + 92555) = 663552 * k + 277666 := by
    unfold C
    simp [show (221184 * k + 92555) % 2 ≠ 0 by omega]
    omega
  have h8 : C (663552 * k + 277666) = 331776 * k + 138833 := by
    unfold C
    simp [show (663552 * k + 277666) % 2 = 0 by omega]
    omega
  have h9 : C (331776 * k + 138833) = 995328 * k + 416500 := by
    unfold C
    simp [show (331776 * k + 138833) % 2 ≠ 0 by omega]
    omega
  have h10 : C (995328 * k + 416500) = 497664 * k + 208250 := by
    unfold C
    simp [show (995328 * k + 416500) % 2 = 0 by omega]
    omega
  have h11 : C (497664 * k + 208250) = 248832 * k + 104125 := by
    unfold C
    simp [show (497664 * k + 208250) % 2 = 0 by omega]
    omega
  have h12 : C (248832 * k + 104125) = 746496 * k + 312376 := by
    unfold C
    simp [show (248832 * k + 104125) % 2 ≠ 0 by omega]
    omega
  have h13 : C (746496 * k + 312376) = 373248 * k + 156188 := by
    unfold C
    simp [show (746496 * k + 312376) % 2 = 0 by omega]
    omega
  have h14 : C (373248 * k + 156188) = 186624 * k + 78094 := by
    unfold C
    simp [show (373248 * k + 156188) % 2 = 0 by omega]
    omega
  have h15 : C (186624 * k + 78094) = 93312 * k + 39047 := by
    unfold C
    simp [show (186624 * k + 78094) % 2 = 0 by omega]
    omega
  have h16 : C (93312 * k + 39047) = 279936 * k + 117142 := by
    unfold C
    simp [show (93312 * k + 39047) % 2 ≠ 0 by omega]
    omega
  have h17 : C (279936 * k + 117142) = 139968 * k + 58571 := by
    unfold C
    simp [show (279936 * k + 117142) % 2 = 0 by omega]
    omega
  have h18 : C (139968 * k + 58571) = 419904 * k + 175714 := by
    unfold C
    simp [show (139968 * k + 58571) % 2 ≠ 0 by omega]
    omega
  have h19 : C (419904 * k + 175714) = 209952 * k + 87857 := by
    unfold C
    simp [show (419904 * k + 175714) % 2 = 0 by omega]
    omega
  have h20 : C (209952 * k + 87857) = 629856 * k + 263572 := by
    unfold C
    simp [show (209952 * k + 87857) % 2 ≠ 0 by omega]
    omega
  have h21 : C (629856 * k + 263572) = 314928 * k + 131786 := by
    unfold C
    simp [show (629856 * k + 263572) % 2 = 0 by omega]
    omega
  have h22 : C (314928 * k + 131786) = 157464 * k + 65893 := by
    unfold C
    simp [show (314928 * k + 131786) % 2 = 0 by omega]
    omega
  have h23 : C (157464 * k + 65893) = 472392 * k + 197680 := by
    unfold C
    simp [show (157464 * k + 65893) % 2 ≠ 0 by omega]
    omega
  have h24 : C (472392 * k + 197680) = 236196 * k + 98840 := by
    unfold C
    simp [show (472392 * k + 197680) % 2 = 0 by omega]
    omega
  have h25 : C (236196 * k + 98840) = 118098 * k + 49420 := by
    unfold C
    simp [show (236196 * k + 98840) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 49420) = 59049 * k + 24710 := by
    unfold C
    simp [show (118098 * k + 49420) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 27423) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 27423)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_27559 : ∀ k : Nat,
    iterate (65536 * k + 27559) 26 = 59049 * k + 24833 ∧
      59049 * k + 24833 < 65536 * k + 27559 := by
  intro k
  have h1 : C (65536 * k + 27559) = 196608 * k + 82678 := by
    unfold C
    simp [show (65536 * k + 27559) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 82678) = 98304 * k + 41339 := by
    unfold C
    simp [show (196608 * k + 82678) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 41339) = 294912 * k + 124018 := by
    unfold C
    simp [show (98304 * k + 41339) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 124018) = 147456 * k + 62009 := by
    unfold C
    simp [show (294912 * k + 124018) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 62009) = 442368 * k + 186028 := by
    unfold C
    simp [show (147456 * k + 62009) % 2 ≠ 0 by omega]
    omega
  have h6 : C (442368 * k + 186028) = 221184 * k + 93014 := by
    unfold C
    simp [show (442368 * k + 186028) % 2 = 0 by omega]
    omega
  have h7 : C (221184 * k + 93014) = 110592 * k + 46507 := by
    unfold C
    simp [show (221184 * k + 93014) % 2 = 0 by omega]
    omega
  have h8 : C (110592 * k + 46507) = 331776 * k + 139522 := by
    unfold C
    simp [show (110592 * k + 46507) % 2 ≠ 0 by omega]
    omega
  have h9 : C (331776 * k + 139522) = 165888 * k + 69761 := by
    unfold C
    simp [show (331776 * k + 139522) % 2 = 0 by omega]
    omega
  have h10 : C (165888 * k + 69761) = 497664 * k + 209284 := by
    unfold C
    simp [show (165888 * k + 69761) % 2 ≠ 0 by omega]
    omega
  have h11 : C (497664 * k + 209284) = 248832 * k + 104642 := by
    unfold C
    simp [show (497664 * k + 209284) % 2 = 0 by omega]
    omega
  have h12 : C (248832 * k + 104642) = 124416 * k + 52321 := by
    unfold C
    simp [show (248832 * k + 104642) % 2 = 0 by omega]
    omega
  have h13 : C (124416 * k + 52321) = 373248 * k + 156964 := by
    unfold C
    simp [show (124416 * k + 52321) % 2 ≠ 0 by omega]
    omega
  have h14 : C (373248 * k + 156964) = 186624 * k + 78482 := by
    unfold C
    simp [show (373248 * k + 156964) % 2 = 0 by omega]
    omega
  have h15 : C (186624 * k + 78482) = 93312 * k + 39241 := by
    unfold C
    simp [show (186624 * k + 78482) % 2 = 0 by omega]
    omega
  have h16 : C (93312 * k + 39241) = 279936 * k + 117724 := by
    unfold C
    simp [show (93312 * k + 39241) % 2 ≠ 0 by omega]
    omega
  have h17 : C (279936 * k + 117724) = 139968 * k + 58862 := by
    unfold C
    simp [show (279936 * k + 117724) % 2 = 0 by omega]
    omega
  have h18 : C (139968 * k + 58862) = 69984 * k + 29431 := by
    unfold C
    simp [show (139968 * k + 58862) % 2 = 0 by omega]
    omega
  have h19 : C (69984 * k + 29431) = 209952 * k + 88294 := by
    unfold C
    simp [show (69984 * k + 29431) % 2 ≠ 0 by omega]
    omega
  have h20 : C (209952 * k + 88294) = 104976 * k + 44147 := by
    unfold C
    simp [show (209952 * k + 88294) % 2 = 0 by omega]
    omega
  have h21 : C (104976 * k + 44147) = 314928 * k + 132442 := by
    unfold C
    simp [show (104976 * k + 44147) % 2 ≠ 0 by omega]
    omega
  have h22 : C (314928 * k + 132442) = 157464 * k + 66221 := by
    unfold C
    simp [show (314928 * k + 132442) % 2 = 0 by omega]
    omega
  have h23 : C (157464 * k + 66221) = 472392 * k + 198664 := by
    unfold C
    simp [show (157464 * k + 66221) % 2 ≠ 0 by omega]
    omega
  have h24 : C (472392 * k + 198664) = 236196 * k + 99332 := by
    unfold C
    simp [show (472392 * k + 198664) % 2 = 0 by omega]
    omega
  have h25 : C (236196 * k + 99332) = 118098 * k + 49666 := by
    unfold C
    simp [show (236196 * k + 99332) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 49666) = 59049 * k + 24833 := by
    unfold C
    simp [show (118098 * k + 49666) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 27559) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 27559)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_27675 : ∀ k : Nat,
    iterate (65536 * k + 27675) 26 = 59049 * k + 24937 ∧
      59049 * k + 24937 < 65536 * k + 27675 := by
  intro k
  have h1 : C (65536 * k + 27675) = 196608 * k + 83026 := by
    unfold C
    simp [show (65536 * k + 27675) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 83026) = 98304 * k + 41513 := by
    unfold C
    simp [show (196608 * k + 83026) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 41513) = 294912 * k + 124540 := by
    unfold C
    simp [show (98304 * k + 41513) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 124540) = 147456 * k + 62270 := by
    unfold C
    simp [show (294912 * k + 124540) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 62270) = 73728 * k + 31135 := by
    unfold C
    simp [show (147456 * k + 62270) % 2 = 0 by omega]
    omega
  have h6 : C (73728 * k + 31135) = 221184 * k + 93406 := by
    unfold C
    simp [show (73728 * k + 31135) % 2 ≠ 0 by omega]
    omega
  have h7 : C (221184 * k + 93406) = 110592 * k + 46703 := by
    unfold C
    simp [show (221184 * k + 93406) % 2 = 0 by omega]
    omega
  have h8 : C (110592 * k + 46703) = 331776 * k + 140110 := by
    unfold C
    simp [show (110592 * k + 46703) % 2 ≠ 0 by omega]
    omega
  have h9 : C (331776 * k + 140110) = 165888 * k + 70055 := by
    unfold C
    simp [show (331776 * k + 140110) % 2 = 0 by omega]
    omega
  have h10 : C (165888 * k + 70055) = 497664 * k + 210166 := by
    unfold C
    simp [show (165888 * k + 70055) % 2 ≠ 0 by omega]
    omega
  have h11 : C (497664 * k + 210166) = 248832 * k + 105083 := by
    unfold C
    simp [show (497664 * k + 210166) % 2 = 0 by omega]
    omega
  have h12 : C (248832 * k + 105083) = 746496 * k + 315250 := by
    unfold C
    simp [show (248832 * k + 105083) % 2 ≠ 0 by omega]
    omega
  have h13 : C (746496 * k + 315250) = 373248 * k + 157625 := by
    unfold C
    simp [show (746496 * k + 315250) % 2 = 0 by omega]
    omega
  have h14 : C (373248 * k + 157625) = 1119744 * k + 472876 := by
    unfold C
    simp [show (373248 * k + 157625) % 2 ≠ 0 by omega]
    omega
  have h15 : C (1119744 * k + 472876) = 559872 * k + 236438 := by
    unfold C
    simp [show (1119744 * k + 472876) % 2 = 0 by omega]
    omega
  have h16 : C (559872 * k + 236438) = 279936 * k + 118219 := by
    unfold C
    simp [show (559872 * k + 236438) % 2 = 0 by omega]
    omega
  have h17 : C (279936 * k + 118219) = 839808 * k + 354658 := by
    unfold C
    simp [show (279936 * k + 118219) % 2 ≠ 0 by omega]
    omega
  have h18 : C (839808 * k + 354658) = 419904 * k + 177329 := by
    unfold C
    simp [show (839808 * k + 354658) % 2 = 0 by omega]
    omega
  have h19 : C (419904 * k + 177329) = 1259712 * k + 531988 := by
    unfold C
    simp [show (419904 * k + 177329) % 2 ≠ 0 by omega]
    omega
  have h20 : C (1259712 * k + 531988) = 629856 * k + 265994 := by
    unfold C
    simp [show (1259712 * k + 531988) % 2 = 0 by omega]
    omega
  have h21 : C (629856 * k + 265994) = 314928 * k + 132997 := by
    unfold C
    simp [show (629856 * k + 265994) % 2 = 0 by omega]
    omega
  have h22 : C (314928 * k + 132997) = 944784 * k + 398992 := by
    unfold C
    simp [show (314928 * k + 132997) % 2 ≠ 0 by omega]
    omega
  have h23 : C (944784 * k + 398992) = 472392 * k + 199496 := by
    unfold C
    simp [show (944784 * k + 398992) % 2 = 0 by omega]
    omega
  have h24 : C (472392 * k + 199496) = 236196 * k + 99748 := by
    unfold C
    simp [show (472392 * k + 199496) % 2 = 0 by omega]
    omega
  have h25 : C (236196 * k + 99748) = 118098 * k + 49874 := by
    unfold C
    simp [show (236196 * k + 99748) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 49874) = 59049 * k + 24937 := by
    unfold C
    simp [show (118098 * k + 49874) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 27675) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 27675)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_27739 : ∀ k : Nat,
    iterate (65536 * k + 27739) 26 = 59049 * k + 24995 ∧
      59049 * k + 24995 < 65536 * k + 27739 := by
  intro k
  have h1 : C (65536 * k + 27739) = 196608 * k + 83218 := by
    unfold C
    simp [show (65536 * k + 27739) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 83218) = 98304 * k + 41609 := by
    unfold C
    simp [show (196608 * k + 83218) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 41609) = 294912 * k + 124828 := by
    unfold C
    simp [show (98304 * k + 41609) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 124828) = 147456 * k + 62414 := by
    unfold C
    simp [show (294912 * k + 124828) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 62414) = 73728 * k + 31207 := by
    unfold C
    simp [show (147456 * k + 62414) % 2 = 0 by omega]
    omega
  have h6 : C (73728 * k + 31207) = 221184 * k + 93622 := by
    unfold C
    simp [show (73728 * k + 31207) % 2 ≠ 0 by omega]
    omega
  have h7 : C (221184 * k + 93622) = 110592 * k + 46811 := by
    unfold C
    simp [show (221184 * k + 93622) % 2 = 0 by omega]
    omega
  have h8 : C (110592 * k + 46811) = 331776 * k + 140434 := by
    unfold C
    simp [show (110592 * k + 46811) % 2 ≠ 0 by omega]
    omega
  have h9 : C (331776 * k + 140434) = 165888 * k + 70217 := by
    unfold C
    simp [show (331776 * k + 140434) % 2 = 0 by omega]
    omega
  have h10 : C (165888 * k + 70217) = 497664 * k + 210652 := by
    unfold C
    simp [show (165888 * k + 70217) % 2 ≠ 0 by omega]
    omega
  have h11 : C (497664 * k + 210652) = 248832 * k + 105326 := by
    unfold C
    simp [show (497664 * k + 210652) % 2 = 0 by omega]
    omega
  have h12 : C (248832 * k + 105326) = 124416 * k + 52663 := by
    unfold C
    simp [show (248832 * k + 105326) % 2 = 0 by omega]
    omega
  have h13 : C (124416 * k + 52663) = 373248 * k + 157990 := by
    unfold C
    simp [show (124416 * k + 52663) % 2 ≠ 0 by omega]
    omega
  have h14 : C (373248 * k + 157990) = 186624 * k + 78995 := by
    unfold C
    simp [show (373248 * k + 157990) % 2 = 0 by omega]
    omega
  have h15 : C (186624 * k + 78995) = 559872 * k + 236986 := by
    unfold C
    simp [show (186624 * k + 78995) % 2 ≠ 0 by omega]
    omega
  have h16 : C (559872 * k + 236986) = 279936 * k + 118493 := by
    unfold C
    simp [show (559872 * k + 236986) % 2 = 0 by omega]
    omega
  have h17 : C (279936 * k + 118493) = 839808 * k + 355480 := by
    unfold C
    simp [show (279936 * k + 118493) % 2 ≠ 0 by omega]
    omega
  have h18 : C (839808 * k + 355480) = 419904 * k + 177740 := by
    unfold C
    simp [show (839808 * k + 355480) % 2 = 0 by omega]
    omega
  have h19 : C (419904 * k + 177740) = 209952 * k + 88870 := by
    unfold C
    simp [show (419904 * k + 177740) % 2 = 0 by omega]
    omega
  have h20 : C (209952 * k + 88870) = 104976 * k + 44435 := by
    unfold C
    simp [show (209952 * k + 88870) % 2 = 0 by omega]
    omega
  have h21 : C (104976 * k + 44435) = 314928 * k + 133306 := by
    unfold C
    simp [show (104976 * k + 44435) % 2 ≠ 0 by omega]
    omega
  have h22 : C (314928 * k + 133306) = 157464 * k + 66653 := by
    unfold C
    simp [show (314928 * k + 133306) % 2 = 0 by omega]
    omega
  have h23 : C (157464 * k + 66653) = 472392 * k + 199960 := by
    unfold C
    simp [show (157464 * k + 66653) % 2 ≠ 0 by omega]
    omega
  have h24 : C (472392 * k + 199960) = 236196 * k + 99980 := by
    unfold C
    simp [show (472392 * k + 199960) % 2 = 0 by omega]
    omega
  have h25 : C (236196 * k + 99980) = 118098 * k + 49990 := by
    unfold C
    simp [show (236196 * k + 99980) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 49990) = 59049 * k + 24995 := by
    unfold C
    simp [show (118098 * k + 49990) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 27739) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 27739)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_27879 : ∀ k : Nat,
    iterate (65536 * k + 27879) 26 = 59049 * k + 25121 ∧
      59049 * k + 25121 < 65536 * k + 27879 := by
  intro k
  have h1 : C (65536 * k + 27879) = 196608 * k + 83638 := by
    unfold C
    simp [show (65536 * k + 27879) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 83638) = 98304 * k + 41819 := by
    unfold C
    simp [show (196608 * k + 83638) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 41819) = 294912 * k + 125458 := by
    unfold C
    simp [show (98304 * k + 41819) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 125458) = 147456 * k + 62729 := by
    unfold C
    simp [show (294912 * k + 125458) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 62729) = 442368 * k + 188188 := by
    unfold C
    simp [show (147456 * k + 62729) % 2 ≠ 0 by omega]
    omega
  have h6 : C (442368 * k + 188188) = 221184 * k + 94094 := by
    unfold C
    simp [show (442368 * k + 188188) % 2 = 0 by omega]
    omega
  have h7 : C (221184 * k + 94094) = 110592 * k + 47047 := by
    unfold C
    simp [show (221184 * k + 94094) % 2 = 0 by omega]
    omega
  have h8 : C (110592 * k + 47047) = 331776 * k + 141142 := by
    unfold C
    simp [show (110592 * k + 47047) % 2 ≠ 0 by omega]
    omega
  have h9 : C (331776 * k + 141142) = 165888 * k + 70571 := by
    unfold C
    simp [show (331776 * k + 141142) % 2 = 0 by omega]
    omega
  have h10 : C (165888 * k + 70571) = 497664 * k + 211714 := by
    unfold C
    simp [show (165888 * k + 70571) % 2 ≠ 0 by omega]
    omega
  have h11 : C (497664 * k + 211714) = 248832 * k + 105857 := by
    unfold C
    simp [show (497664 * k + 211714) % 2 = 0 by omega]
    omega
  have h12 : C (248832 * k + 105857) = 746496 * k + 317572 := by
    unfold C
    simp [show (248832 * k + 105857) % 2 ≠ 0 by omega]
    omega
  have h13 : C (746496 * k + 317572) = 373248 * k + 158786 := by
    unfold C
    simp [show (746496 * k + 317572) % 2 = 0 by omega]
    omega
  have h14 : C (373248 * k + 158786) = 186624 * k + 79393 := by
    unfold C
    simp [show (373248 * k + 158786) % 2 = 0 by omega]
    omega
  have h15 : C (186624 * k + 79393) = 559872 * k + 238180 := by
    unfold C
    simp [show (186624 * k + 79393) % 2 ≠ 0 by omega]
    omega
  have h16 : C (559872 * k + 238180) = 279936 * k + 119090 := by
    unfold C
    simp [show (559872 * k + 238180) % 2 = 0 by omega]
    omega
  have h17 : C (279936 * k + 119090) = 139968 * k + 59545 := by
    unfold C
    simp [show (279936 * k + 119090) % 2 = 0 by omega]
    omega
  have h18 : C (139968 * k + 59545) = 419904 * k + 178636 := by
    unfold C
    simp [show (139968 * k + 59545) % 2 ≠ 0 by omega]
    omega
  have h19 : C (419904 * k + 178636) = 209952 * k + 89318 := by
    unfold C
    simp [show (419904 * k + 178636) % 2 = 0 by omega]
    omega
  have h20 : C (209952 * k + 89318) = 104976 * k + 44659 := by
    unfold C
    simp [show (209952 * k + 89318) % 2 = 0 by omega]
    omega
  have h21 : C (104976 * k + 44659) = 314928 * k + 133978 := by
    unfold C
    simp [show (104976 * k + 44659) % 2 ≠ 0 by omega]
    omega
  have h22 : C (314928 * k + 133978) = 157464 * k + 66989 := by
    unfold C
    simp [show (314928 * k + 133978) % 2 = 0 by omega]
    omega
  have h23 : C (157464 * k + 66989) = 472392 * k + 200968 := by
    unfold C
    simp [show (157464 * k + 66989) % 2 ≠ 0 by omega]
    omega
  have h24 : C (472392 * k + 200968) = 236196 * k + 100484 := by
    unfold C
    simp [show (472392 * k + 200968) % 2 = 0 by omega]
    omega
  have h25 : C (236196 * k + 100484) = 118098 * k + 50242 := by
    unfold C
    simp [show (236196 * k + 100484) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 50242) = 59049 * k + 25121 := by
    unfold C
    simp [show (118098 * k + 50242) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 27879) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 27879)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

end CollatzM16ShardJ
