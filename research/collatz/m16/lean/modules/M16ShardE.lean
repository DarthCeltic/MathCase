import Mathlib.Data.Nat.Prime.Basic

namespace CollatzM16ShardE

def C (n : Nat) : Nat := if n % 2 = 0 then n / 2 else 3 * n + 1

def iterate (n t : Nat) : Nat := Nat.rec n (fun _ previous => C previous) t

theorem descent_mod65536_11887 : ∀ k : Nat,
    iterate (65536 * k + 11887) 26 = 59049 * k + 10712 ∧
      59049 * k + 10712 < 65536 * k + 11887 := by
  intro k
  have h1 : C (65536 * k + 11887) = 196608 * k + 35662 := by
    unfold C
    simp [show (65536 * k + 11887) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 35662) = 98304 * k + 17831 := by
    unfold C
    simp [show (196608 * k + 35662) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 17831) = 294912 * k + 53494 := by
    unfold C
    simp [show (98304 * k + 17831) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 53494) = 147456 * k + 26747 := by
    unfold C
    simp [show (294912 * k + 53494) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 26747) = 442368 * k + 80242 := by
    unfold C
    simp [show (147456 * k + 26747) % 2 ≠ 0 by omega]
    omega
  have h6 : C (442368 * k + 80242) = 221184 * k + 40121 := by
    unfold C
    simp [show (442368 * k + 80242) % 2 = 0 by omega]
    omega
  have h7 : C (221184 * k + 40121) = 663552 * k + 120364 := by
    unfold C
    simp [show (221184 * k + 40121) % 2 ≠ 0 by omega]
    omega
  have h8 : C (663552 * k + 120364) = 331776 * k + 60182 := by
    unfold C
    simp [show (663552 * k + 120364) % 2 = 0 by omega]
    omega
  have h9 : C (331776 * k + 60182) = 165888 * k + 30091 := by
    unfold C
    simp [show (331776 * k + 60182) % 2 = 0 by omega]
    omega
  have h10 : C (165888 * k + 30091) = 497664 * k + 90274 := by
    unfold C
    simp [show (165888 * k + 30091) % 2 ≠ 0 by omega]
    omega
  have h11 : C (497664 * k + 90274) = 248832 * k + 45137 := by
    unfold C
    simp [show (497664 * k + 90274) % 2 = 0 by omega]
    omega
  have h12 : C (248832 * k + 45137) = 746496 * k + 135412 := by
    unfold C
    simp [show (248832 * k + 45137) % 2 ≠ 0 by omega]
    omega
  have h13 : C (746496 * k + 135412) = 373248 * k + 67706 := by
    unfold C
    simp [show (746496 * k + 135412) % 2 = 0 by omega]
    omega
  have h14 : C (373248 * k + 67706) = 186624 * k + 33853 := by
    unfold C
    simp [show (373248 * k + 67706) % 2 = 0 by omega]
    omega
  have h15 : C (186624 * k + 33853) = 559872 * k + 101560 := by
    unfold C
    simp [show (186624 * k + 33853) % 2 ≠ 0 by omega]
    omega
  have h16 : C (559872 * k + 101560) = 279936 * k + 50780 := by
    unfold C
    simp [show (559872 * k + 101560) % 2 = 0 by omega]
    omega
  have h17 : C (279936 * k + 50780) = 139968 * k + 25390 := by
    unfold C
    simp [show (279936 * k + 50780) % 2 = 0 by omega]
    omega
  have h18 : C (139968 * k + 25390) = 69984 * k + 12695 := by
    unfold C
    simp [show (139968 * k + 25390) % 2 = 0 by omega]
    omega
  have h19 : C (69984 * k + 12695) = 209952 * k + 38086 := by
    unfold C
    simp [show (69984 * k + 12695) % 2 ≠ 0 by omega]
    omega
  have h20 : C (209952 * k + 38086) = 104976 * k + 19043 := by
    unfold C
    simp [show (209952 * k + 38086) % 2 = 0 by omega]
    omega
  have h21 : C (104976 * k + 19043) = 314928 * k + 57130 := by
    unfold C
    simp [show (104976 * k + 19043) % 2 ≠ 0 by omega]
    omega
  have h22 : C (314928 * k + 57130) = 157464 * k + 28565 := by
    unfold C
    simp [show (314928 * k + 57130) % 2 = 0 by omega]
    omega
  have h23 : C (157464 * k + 28565) = 472392 * k + 85696 := by
    unfold C
    simp [show (157464 * k + 28565) % 2 ≠ 0 by omega]
    omega
  have h24 : C (472392 * k + 85696) = 236196 * k + 42848 := by
    unfold C
    simp [show (472392 * k + 85696) % 2 = 0 by omega]
    omega
  have h25 : C (236196 * k + 42848) = 118098 * k + 21424 := by
    unfold C
    simp [show (236196 * k + 42848) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 21424) = 59049 * k + 10712 := by
    unfold C
    simp [show (118098 * k + 21424) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 11887) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 11887)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_12007 : ∀ k : Nat,
    iterate (65536 * k + 12007) 26 = 59049 * k + 10820 ∧
      59049 * k + 10820 < 65536 * k + 12007 := by
  intro k
  have h1 : C (65536 * k + 12007) = 196608 * k + 36022 := by
    unfold C
    simp [show (65536 * k + 12007) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 36022) = 98304 * k + 18011 := by
    unfold C
    simp [show (196608 * k + 36022) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 18011) = 294912 * k + 54034 := by
    unfold C
    simp [show (98304 * k + 18011) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 54034) = 147456 * k + 27017 := by
    unfold C
    simp [show (294912 * k + 54034) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 27017) = 442368 * k + 81052 := by
    unfold C
    simp [show (147456 * k + 27017) % 2 ≠ 0 by omega]
    omega
  have h6 : C (442368 * k + 81052) = 221184 * k + 40526 := by
    unfold C
    simp [show (442368 * k + 81052) % 2 = 0 by omega]
    omega
  have h7 : C (221184 * k + 40526) = 110592 * k + 20263 := by
    unfold C
    simp [show (221184 * k + 40526) % 2 = 0 by omega]
    omega
  have h8 : C (110592 * k + 20263) = 331776 * k + 60790 := by
    unfold C
    simp [show (110592 * k + 20263) % 2 ≠ 0 by omega]
    omega
  have h9 : C (331776 * k + 60790) = 165888 * k + 30395 := by
    unfold C
    simp [show (331776 * k + 60790) % 2 = 0 by omega]
    omega
  have h10 : C (165888 * k + 30395) = 497664 * k + 91186 := by
    unfold C
    simp [show (165888 * k + 30395) % 2 ≠ 0 by omega]
    omega
  have h11 : C (497664 * k + 91186) = 248832 * k + 45593 := by
    unfold C
    simp [show (497664 * k + 91186) % 2 = 0 by omega]
    omega
  have h12 : C (248832 * k + 45593) = 746496 * k + 136780 := by
    unfold C
    simp [show (248832 * k + 45593) % 2 ≠ 0 by omega]
    omega
  have h13 : C (746496 * k + 136780) = 373248 * k + 68390 := by
    unfold C
    simp [show (746496 * k + 136780) % 2 = 0 by omega]
    omega
  have h14 : C (373248 * k + 68390) = 186624 * k + 34195 := by
    unfold C
    simp [show (373248 * k + 68390) % 2 = 0 by omega]
    omega
  have h15 : C (186624 * k + 34195) = 559872 * k + 102586 := by
    unfold C
    simp [show (186624 * k + 34195) % 2 ≠ 0 by omega]
    omega
  have h16 : C (559872 * k + 102586) = 279936 * k + 51293 := by
    unfold C
    simp [show (559872 * k + 102586) % 2 = 0 by omega]
    omega
  have h17 : C (279936 * k + 51293) = 839808 * k + 153880 := by
    unfold C
    simp [show (279936 * k + 51293) % 2 ≠ 0 by omega]
    omega
  have h18 : C (839808 * k + 153880) = 419904 * k + 76940 := by
    unfold C
    simp [show (839808 * k + 153880) % 2 = 0 by omega]
    omega
  have h19 : C (419904 * k + 76940) = 209952 * k + 38470 := by
    unfold C
    simp [show (419904 * k + 76940) % 2 = 0 by omega]
    omega
  have h20 : C (209952 * k + 38470) = 104976 * k + 19235 := by
    unfold C
    simp [show (209952 * k + 38470) % 2 = 0 by omega]
    omega
  have h21 : C (104976 * k + 19235) = 314928 * k + 57706 := by
    unfold C
    simp [show (104976 * k + 19235) % 2 ≠ 0 by omega]
    omega
  have h22 : C (314928 * k + 57706) = 157464 * k + 28853 := by
    unfold C
    simp [show (314928 * k + 57706) % 2 = 0 by omega]
    omega
  have h23 : C (157464 * k + 28853) = 472392 * k + 86560 := by
    unfold C
    simp [show (157464 * k + 28853) % 2 ≠ 0 by omega]
    omega
  have h24 : C (472392 * k + 86560) = 236196 * k + 43280 := by
    unfold C
    simp [show (472392 * k + 86560) % 2 = 0 by omega]
    omega
  have h25 : C (236196 * k + 43280) = 118098 * k + 21640 := by
    unfold C
    simp [show (236196 * k + 43280) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 21640) = 59049 * k + 10820 := by
    unfold C
    simp [show (118098 * k + 21640) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 12007) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 12007)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_12319 : ∀ k : Nat,
    iterate (65536 * k + 12319) 26 = 59049 * k + 11101 ∧
      59049 * k + 11101 < 65536 * k + 12319 := by
  intro k
  have h1 : C (65536 * k + 12319) = 196608 * k + 36958 := by
    unfold C
    simp [show (65536 * k + 12319) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 36958) = 98304 * k + 18479 := by
    unfold C
    simp [show (196608 * k + 36958) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 18479) = 294912 * k + 55438 := by
    unfold C
    simp [show (98304 * k + 18479) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 55438) = 147456 * k + 27719 := by
    unfold C
    simp [show (294912 * k + 55438) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 27719) = 442368 * k + 83158 := by
    unfold C
    simp [show (147456 * k + 27719) % 2 ≠ 0 by omega]
    omega
  have h6 : C (442368 * k + 83158) = 221184 * k + 41579 := by
    unfold C
    simp [show (442368 * k + 83158) % 2 = 0 by omega]
    omega
  have h7 : C (221184 * k + 41579) = 663552 * k + 124738 := by
    unfold C
    simp [show (221184 * k + 41579) % 2 ≠ 0 by omega]
    omega
  have h8 : C (663552 * k + 124738) = 331776 * k + 62369 := by
    unfold C
    simp [show (663552 * k + 124738) % 2 = 0 by omega]
    omega
  have h9 : C (331776 * k + 62369) = 995328 * k + 187108 := by
    unfold C
    simp [show (331776 * k + 62369) % 2 ≠ 0 by omega]
    omega
  have h10 : C (995328 * k + 187108) = 497664 * k + 93554 := by
    unfold C
    simp [show (995328 * k + 187108) % 2 = 0 by omega]
    omega
  have h11 : C (497664 * k + 93554) = 248832 * k + 46777 := by
    unfold C
    simp [show (497664 * k + 93554) % 2 = 0 by omega]
    omega
  have h12 : C (248832 * k + 46777) = 746496 * k + 140332 := by
    unfold C
    simp [show (248832 * k + 46777) % 2 ≠ 0 by omega]
    omega
  have h13 : C (746496 * k + 140332) = 373248 * k + 70166 := by
    unfold C
    simp [show (746496 * k + 140332) % 2 = 0 by omega]
    omega
  have h14 : C (373248 * k + 70166) = 186624 * k + 35083 := by
    unfold C
    simp [show (373248 * k + 70166) % 2 = 0 by omega]
    omega
  have h15 : C (186624 * k + 35083) = 559872 * k + 105250 := by
    unfold C
    simp [show (186624 * k + 35083) % 2 ≠ 0 by omega]
    omega
  have h16 : C (559872 * k + 105250) = 279936 * k + 52625 := by
    unfold C
    simp [show (559872 * k + 105250) % 2 = 0 by omega]
    omega
  have h17 : C (279936 * k + 52625) = 839808 * k + 157876 := by
    unfold C
    simp [show (279936 * k + 52625) % 2 ≠ 0 by omega]
    omega
  have h18 : C (839808 * k + 157876) = 419904 * k + 78938 := by
    unfold C
    simp [show (839808 * k + 157876) % 2 = 0 by omega]
    omega
  have h19 : C (419904 * k + 78938) = 209952 * k + 39469 := by
    unfold C
    simp [show (419904 * k + 78938) % 2 = 0 by omega]
    omega
  have h20 : C (209952 * k + 39469) = 629856 * k + 118408 := by
    unfold C
    simp [show (209952 * k + 39469) % 2 ≠ 0 by omega]
    omega
  have h21 : C (629856 * k + 118408) = 314928 * k + 59204 := by
    unfold C
    simp [show (629856 * k + 118408) % 2 = 0 by omega]
    omega
  have h22 : C (314928 * k + 59204) = 157464 * k + 29602 := by
    unfold C
    simp [show (314928 * k + 59204) % 2 = 0 by omega]
    omega
  have h23 : C (157464 * k + 29602) = 78732 * k + 14801 := by
    unfold C
    simp [show (157464 * k + 29602) % 2 = 0 by omega]
    omega
  have h24 : C (78732 * k + 14801) = 236196 * k + 44404 := by
    unfold C
    simp [show (78732 * k + 14801) % 2 ≠ 0 by omega]
    omega
  have h25 : C (236196 * k + 44404) = 118098 * k + 22202 := by
    unfold C
    simp [show (236196 * k + 44404) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 22202) = 59049 * k + 11101 := by
    unfold C
    simp [show (118098 * k + 22202) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 12319) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 12319)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_12495 : ∀ k : Nat,
    iterate (65536 * k + 12495) 26 = 59049 * k + 11260 ∧
      59049 * k + 11260 < 65536 * k + 12495 := by
  intro k
  have h1 : C (65536 * k + 12495) = 196608 * k + 37486 := by
    unfold C
    simp [show (65536 * k + 12495) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 37486) = 98304 * k + 18743 := by
    unfold C
    simp [show (196608 * k + 37486) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 18743) = 294912 * k + 56230 := by
    unfold C
    simp [show (98304 * k + 18743) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 56230) = 147456 * k + 28115 := by
    unfold C
    simp [show (294912 * k + 56230) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 28115) = 442368 * k + 84346 := by
    unfold C
    simp [show (147456 * k + 28115) % 2 ≠ 0 by omega]
    omega
  have h6 : C (442368 * k + 84346) = 221184 * k + 42173 := by
    unfold C
    simp [show (442368 * k + 84346) % 2 = 0 by omega]
    omega
  have h7 : C (221184 * k + 42173) = 663552 * k + 126520 := by
    unfold C
    simp [show (221184 * k + 42173) % 2 ≠ 0 by omega]
    omega
  have h8 : C (663552 * k + 126520) = 331776 * k + 63260 := by
    unfold C
    simp [show (663552 * k + 126520) % 2 = 0 by omega]
    omega
  have h9 : C (331776 * k + 63260) = 165888 * k + 31630 := by
    unfold C
    simp [show (331776 * k + 63260) % 2 = 0 by omega]
    omega
  have h10 : C (165888 * k + 31630) = 82944 * k + 15815 := by
    unfold C
    simp [show (165888 * k + 31630) % 2 = 0 by omega]
    omega
  have h11 : C (82944 * k + 15815) = 248832 * k + 47446 := by
    unfold C
    simp [show (82944 * k + 15815) % 2 ≠ 0 by omega]
    omega
  have h12 : C (248832 * k + 47446) = 124416 * k + 23723 := by
    unfold C
    simp [show (248832 * k + 47446) % 2 = 0 by omega]
    omega
  have h13 : C (124416 * k + 23723) = 373248 * k + 71170 := by
    unfold C
    simp [show (124416 * k + 23723) % 2 ≠ 0 by omega]
    omega
  have h14 : C (373248 * k + 71170) = 186624 * k + 35585 := by
    unfold C
    simp [show (373248 * k + 71170) % 2 = 0 by omega]
    omega
  have h15 : C (186624 * k + 35585) = 559872 * k + 106756 := by
    unfold C
    simp [show (186624 * k + 35585) % 2 ≠ 0 by omega]
    omega
  have h16 : C (559872 * k + 106756) = 279936 * k + 53378 := by
    unfold C
    simp [show (559872 * k + 106756) % 2 = 0 by omega]
    omega
  have h17 : C (279936 * k + 53378) = 139968 * k + 26689 := by
    unfold C
    simp [show (279936 * k + 53378) % 2 = 0 by omega]
    omega
  have h18 : C (139968 * k + 26689) = 419904 * k + 80068 := by
    unfold C
    simp [show (139968 * k + 26689) % 2 ≠ 0 by omega]
    omega
  have h19 : C (419904 * k + 80068) = 209952 * k + 40034 := by
    unfold C
    simp [show (419904 * k + 80068) % 2 = 0 by omega]
    omega
  have h20 : C (209952 * k + 40034) = 104976 * k + 20017 := by
    unfold C
    simp [show (209952 * k + 40034) % 2 = 0 by omega]
    omega
  have h21 : C (104976 * k + 20017) = 314928 * k + 60052 := by
    unfold C
    simp [show (104976 * k + 20017) % 2 ≠ 0 by omega]
    omega
  have h22 : C (314928 * k + 60052) = 157464 * k + 30026 := by
    unfold C
    simp [show (314928 * k + 60052) % 2 = 0 by omega]
    omega
  have h23 : C (157464 * k + 30026) = 78732 * k + 15013 := by
    unfold C
    simp [show (157464 * k + 30026) % 2 = 0 by omega]
    omega
  have h24 : C (78732 * k + 15013) = 236196 * k + 45040 := by
    unfold C
    simp [show (78732 * k + 15013) % 2 ≠ 0 by omega]
    omega
  have h25 : C (236196 * k + 45040) = 118098 * k + 22520 := by
    unfold C
    simp [show (236196 * k + 45040) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 22520) = 59049 * k + 11260 := by
    unfold C
    simp [show (118098 * k + 22520) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 12495) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 12495)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_12615 : ∀ k : Nat,
    iterate (65536 * k + 12615) 26 = 59049 * k + 11368 ∧
      59049 * k + 11368 < 65536 * k + 12615 := by
  intro k
  have h1 : C (65536 * k + 12615) = 196608 * k + 37846 := by
    unfold C
    simp [show (65536 * k + 12615) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 37846) = 98304 * k + 18923 := by
    unfold C
    simp [show (196608 * k + 37846) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 18923) = 294912 * k + 56770 := by
    unfold C
    simp [show (98304 * k + 18923) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 56770) = 147456 * k + 28385 := by
    unfold C
    simp [show (294912 * k + 56770) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 28385) = 442368 * k + 85156 := by
    unfold C
    simp [show (147456 * k + 28385) % 2 ≠ 0 by omega]
    omega
  have h6 : C (442368 * k + 85156) = 221184 * k + 42578 := by
    unfold C
    simp [show (442368 * k + 85156) % 2 = 0 by omega]
    omega
  have h7 : C (221184 * k + 42578) = 110592 * k + 21289 := by
    unfold C
    simp [show (221184 * k + 42578) % 2 = 0 by omega]
    omega
  have h8 : C (110592 * k + 21289) = 331776 * k + 63868 := by
    unfold C
    simp [show (110592 * k + 21289) % 2 ≠ 0 by omega]
    omega
  have h9 : C (331776 * k + 63868) = 165888 * k + 31934 := by
    unfold C
    simp [show (331776 * k + 63868) % 2 = 0 by omega]
    omega
  have h10 : C (165888 * k + 31934) = 82944 * k + 15967 := by
    unfold C
    simp [show (165888 * k + 31934) % 2 = 0 by omega]
    omega
  have h11 : C (82944 * k + 15967) = 248832 * k + 47902 := by
    unfold C
    simp [show (82944 * k + 15967) % 2 ≠ 0 by omega]
    omega
  have h12 : C (248832 * k + 47902) = 124416 * k + 23951 := by
    unfold C
    simp [show (248832 * k + 47902) % 2 = 0 by omega]
    omega
  have h13 : C (124416 * k + 23951) = 373248 * k + 71854 := by
    unfold C
    simp [show (124416 * k + 23951) % 2 ≠ 0 by omega]
    omega
  have h14 : C (373248 * k + 71854) = 186624 * k + 35927 := by
    unfold C
    simp [show (373248 * k + 71854) % 2 = 0 by omega]
    omega
  have h15 : C (186624 * k + 35927) = 559872 * k + 107782 := by
    unfold C
    simp [show (186624 * k + 35927) % 2 ≠ 0 by omega]
    omega
  have h16 : C (559872 * k + 107782) = 279936 * k + 53891 := by
    unfold C
    simp [show (559872 * k + 107782) % 2 = 0 by omega]
    omega
  have h17 : C (279936 * k + 53891) = 839808 * k + 161674 := by
    unfold C
    simp [show (279936 * k + 53891) % 2 ≠ 0 by omega]
    omega
  have h18 : C (839808 * k + 161674) = 419904 * k + 80837 := by
    unfold C
    simp [show (839808 * k + 161674) % 2 = 0 by omega]
    omega
  have h19 : C (419904 * k + 80837) = 1259712 * k + 242512 := by
    unfold C
    simp [show (419904 * k + 80837) % 2 ≠ 0 by omega]
    omega
  have h20 : C (1259712 * k + 242512) = 629856 * k + 121256 := by
    unfold C
    simp [show (1259712 * k + 242512) % 2 = 0 by omega]
    omega
  have h21 : C (629856 * k + 121256) = 314928 * k + 60628 := by
    unfold C
    simp [show (629856 * k + 121256) % 2 = 0 by omega]
    omega
  have h22 : C (314928 * k + 60628) = 157464 * k + 30314 := by
    unfold C
    simp [show (314928 * k + 60628) % 2 = 0 by omega]
    omega
  have h23 : C (157464 * k + 30314) = 78732 * k + 15157 := by
    unfold C
    simp [show (157464 * k + 30314) % 2 = 0 by omega]
    omega
  have h24 : C (78732 * k + 15157) = 236196 * k + 45472 := by
    unfold C
    simp [show (78732 * k + 15157) % 2 ≠ 0 by omega]
    omega
  have h25 : C (236196 * k + 45472) = 118098 * k + 22736 := by
    unfold C
    simp [show (236196 * k + 45472) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 22736) = 59049 * k + 11368 := by
    unfold C
    simp [show (118098 * k + 22736) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 12615) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 12615)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_12775 : ∀ k : Nat,
    iterate (65536 * k + 12775) 26 = 59049 * k + 11512 ∧
      59049 * k + 11512 < 65536 * k + 12775 := by
  intro k
  have h1 : C (65536 * k + 12775) = 196608 * k + 38326 := by
    unfold C
    simp [show (65536 * k + 12775) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 38326) = 98304 * k + 19163 := by
    unfold C
    simp [show (196608 * k + 38326) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 19163) = 294912 * k + 57490 := by
    unfold C
    simp [show (98304 * k + 19163) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 57490) = 147456 * k + 28745 := by
    unfold C
    simp [show (294912 * k + 57490) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 28745) = 442368 * k + 86236 := by
    unfold C
    simp [show (147456 * k + 28745) % 2 ≠ 0 by omega]
    omega
  have h6 : C (442368 * k + 86236) = 221184 * k + 43118 := by
    unfold C
    simp [show (442368 * k + 86236) % 2 = 0 by omega]
    omega
  have h7 : C (221184 * k + 43118) = 110592 * k + 21559 := by
    unfold C
    simp [show (221184 * k + 43118) % 2 = 0 by omega]
    omega
  have h8 : C (110592 * k + 21559) = 331776 * k + 64678 := by
    unfold C
    simp [show (110592 * k + 21559) % 2 ≠ 0 by omega]
    omega
  have h9 : C (331776 * k + 64678) = 165888 * k + 32339 := by
    unfold C
    simp [show (331776 * k + 64678) % 2 = 0 by omega]
    omega
  have h10 : C (165888 * k + 32339) = 497664 * k + 97018 := by
    unfold C
    simp [show (165888 * k + 32339) % 2 ≠ 0 by omega]
    omega
  have h11 : C (497664 * k + 97018) = 248832 * k + 48509 := by
    unfold C
    simp [show (497664 * k + 97018) % 2 = 0 by omega]
    omega
  have h12 : C (248832 * k + 48509) = 746496 * k + 145528 := by
    unfold C
    simp [show (248832 * k + 48509) % 2 ≠ 0 by omega]
    omega
  have h13 : C (746496 * k + 145528) = 373248 * k + 72764 := by
    unfold C
    simp [show (746496 * k + 145528) % 2 = 0 by omega]
    omega
  have h14 : C (373248 * k + 72764) = 186624 * k + 36382 := by
    unfold C
    simp [show (373248 * k + 72764) % 2 = 0 by omega]
    omega
  have h15 : C (186624 * k + 36382) = 93312 * k + 18191 := by
    unfold C
    simp [show (186624 * k + 36382) % 2 = 0 by omega]
    omega
  have h16 : C (93312 * k + 18191) = 279936 * k + 54574 := by
    unfold C
    simp [show (93312 * k + 18191) % 2 ≠ 0 by omega]
    omega
  have h17 : C (279936 * k + 54574) = 139968 * k + 27287 := by
    unfold C
    simp [show (279936 * k + 54574) % 2 = 0 by omega]
    omega
  have h18 : C (139968 * k + 27287) = 419904 * k + 81862 := by
    unfold C
    simp [show (139968 * k + 27287) % 2 ≠ 0 by omega]
    omega
  have h19 : C (419904 * k + 81862) = 209952 * k + 40931 := by
    unfold C
    simp [show (419904 * k + 81862) % 2 = 0 by omega]
    omega
  have h20 : C (209952 * k + 40931) = 629856 * k + 122794 := by
    unfold C
    simp [show (209952 * k + 40931) % 2 ≠ 0 by omega]
    omega
  have h21 : C (629856 * k + 122794) = 314928 * k + 61397 := by
    unfold C
    simp [show (629856 * k + 122794) % 2 = 0 by omega]
    omega
  have h22 : C (314928 * k + 61397) = 944784 * k + 184192 := by
    unfold C
    simp [show (314928 * k + 61397) % 2 ≠ 0 by omega]
    omega
  have h23 : C (944784 * k + 184192) = 472392 * k + 92096 := by
    unfold C
    simp [show (944784 * k + 184192) % 2 = 0 by omega]
    omega
  have h24 : C (472392 * k + 92096) = 236196 * k + 46048 := by
    unfold C
    simp [show (472392 * k + 92096) % 2 = 0 by omega]
    omega
  have h25 : C (236196 * k + 46048) = 118098 * k + 23024 := by
    unfold C
    simp [show (236196 * k + 46048) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 23024) = 59049 * k + 11512 := by
    unfold C
    simp [show (118098 * k + 23024) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 12775) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 12775)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_12799 : ∀ k : Nat,
    iterate (65536 * k + 12799) 26 = 59049 * k + 11533 ∧
      59049 * k + 11533 < 65536 * k + 12799 := by
  intro k
  have h1 : C (65536 * k + 12799) = 196608 * k + 38398 := by
    unfold C
    simp [show (65536 * k + 12799) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 38398) = 98304 * k + 19199 := by
    unfold C
    simp [show (196608 * k + 38398) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 19199) = 294912 * k + 57598 := by
    unfold C
    simp [show (98304 * k + 19199) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 57598) = 147456 * k + 28799 := by
    unfold C
    simp [show (294912 * k + 57598) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 28799) = 442368 * k + 86398 := by
    unfold C
    simp [show (147456 * k + 28799) % 2 ≠ 0 by omega]
    omega
  have h6 : C (442368 * k + 86398) = 221184 * k + 43199 := by
    unfold C
    simp [show (442368 * k + 86398) % 2 = 0 by omega]
    omega
  have h7 : C (221184 * k + 43199) = 663552 * k + 129598 := by
    unfold C
    simp [show (221184 * k + 43199) % 2 ≠ 0 by omega]
    omega
  have h8 : C (663552 * k + 129598) = 331776 * k + 64799 := by
    unfold C
    simp [show (663552 * k + 129598) % 2 = 0 by omega]
    omega
  have h9 : C (331776 * k + 64799) = 995328 * k + 194398 := by
    unfold C
    simp [show (331776 * k + 64799) % 2 ≠ 0 by omega]
    omega
  have h10 : C (995328 * k + 194398) = 497664 * k + 97199 := by
    unfold C
    simp [show (995328 * k + 194398) % 2 = 0 by omega]
    omega
  have h11 : C (497664 * k + 97199) = 1492992 * k + 291598 := by
    unfold C
    simp [show (497664 * k + 97199) % 2 ≠ 0 by omega]
    omega
  have h12 : C (1492992 * k + 291598) = 746496 * k + 145799 := by
    unfold C
    simp [show (1492992 * k + 291598) % 2 = 0 by omega]
    omega
  have h13 : C (746496 * k + 145799) = 2239488 * k + 437398 := by
    unfold C
    simp [show (746496 * k + 145799) % 2 ≠ 0 by omega]
    omega
  have h14 : C (2239488 * k + 437398) = 1119744 * k + 218699 := by
    unfold C
    simp [show (2239488 * k + 437398) % 2 = 0 by omega]
    omega
  have h15 : C (1119744 * k + 218699) = 3359232 * k + 656098 := by
    unfold C
    simp [show (1119744 * k + 218699) % 2 ≠ 0 by omega]
    omega
  have h16 : C (3359232 * k + 656098) = 1679616 * k + 328049 := by
    unfold C
    simp [show (3359232 * k + 656098) % 2 = 0 by omega]
    omega
  have h17 : C (1679616 * k + 328049) = 5038848 * k + 984148 := by
    unfold C
    simp [show (1679616 * k + 328049) % 2 ≠ 0 by omega]
    omega
  have h18 : C (5038848 * k + 984148) = 2519424 * k + 492074 := by
    unfold C
    simp [show (5038848 * k + 984148) % 2 = 0 by omega]
    omega
  have h19 : C (2519424 * k + 492074) = 1259712 * k + 246037 := by
    unfold C
    simp [show (2519424 * k + 492074) % 2 = 0 by omega]
    omega
  have h20 : C (1259712 * k + 246037) = 3779136 * k + 738112 := by
    unfold C
    simp [show (1259712 * k + 246037) % 2 ≠ 0 by omega]
    omega
  have h21 : C (3779136 * k + 738112) = 1889568 * k + 369056 := by
    unfold C
    simp [show (3779136 * k + 738112) % 2 = 0 by omega]
    omega
  have h22 : C (1889568 * k + 369056) = 944784 * k + 184528 := by
    unfold C
    simp [show (1889568 * k + 369056) % 2 = 0 by omega]
    omega
  have h23 : C (944784 * k + 184528) = 472392 * k + 92264 := by
    unfold C
    simp [show (944784 * k + 184528) % 2 = 0 by omega]
    omega
  have h24 : C (472392 * k + 92264) = 236196 * k + 46132 := by
    unfold C
    simp [show (472392 * k + 92264) % 2 = 0 by omega]
    omega
  have h25 : C (236196 * k + 46132) = 118098 * k + 23066 := by
    unfold C
    simp [show (236196 * k + 46132) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 23066) = 59049 * k + 11533 := by
    unfold C
    simp [show (118098 * k + 23066) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 12799) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 12799)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_13279 : ∀ k : Nat,
    iterate (65536 * k + 13279) 26 = 59049 * k + 11966 ∧
      59049 * k + 11966 < 65536 * k + 13279 := by
  intro k
  have h1 : C (65536 * k + 13279) = 196608 * k + 39838 := by
    unfold C
    simp [show (65536 * k + 13279) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 39838) = 98304 * k + 19919 := by
    unfold C
    simp [show (196608 * k + 39838) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 19919) = 294912 * k + 59758 := by
    unfold C
    simp [show (98304 * k + 19919) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 59758) = 147456 * k + 29879 := by
    unfold C
    simp [show (294912 * k + 59758) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 29879) = 442368 * k + 89638 := by
    unfold C
    simp [show (147456 * k + 29879) % 2 ≠ 0 by omega]
    omega
  have h6 : C (442368 * k + 89638) = 221184 * k + 44819 := by
    unfold C
    simp [show (442368 * k + 89638) % 2 = 0 by omega]
    omega
  have h7 : C (221184 * k + 44819) = 663552 * k + 134458 := by
    unfold C
    simp [show (221184 * k + 44819) % 2 ≠ 0 by omega]
    omega
  have h8 : C (663552 * k + 134458) = 331776 * k + 67229 := by
    unfold C
    simp [show (663552 * k + 134458) % 2 = 0 by omega]
    omega
  have h9 : C (331776 * k + 67229) = 995328 * k + 201688 := by
    unfold C
    simp [show (331776 * k + 67229) % 2 ≠ 0 by omega]
    omega
  have h10 : C (995328 * k + 201688) = 497664 * k + 100844 := by
    unfold C
    simp [show (995328 * k + 201688) % 2 = 0 by omega]
    omega
  have h11 : C (497664 * k + 100844) = 248832 * k + 50422 := by
    unfold C
    simp [show (497664 * k + 100844) % 2 = 0 by omega]
    omega
  have h12 : C (248832 * k + 50422) = 124416 * k + 25211 := by
    unfold C
    simp [show (248832 * k + 50422) % 2 = 0 by omega]
    omega
  have h13 : C (124416 * k + 25211) = 373248 * k + 75634 := by
    unfold C
    simp [show (124416 * k + 25211) % 2 ≠ 0 by omega]
    omega
  have h14 : C (373248 * k + 75634) = 186624 * k + 37817 := by
    unfold C
    simp [show (373248 * k + 75634) % 2 = 0 by omega]
    omega
  have h15 : C (186624 * k + 37817) = 559872 * k + 113452 := by
    unfold C
    simp [show (186624 * k + 37817) % 2 ≠ 0 by omega]
    omega
  have h16 : C (559872 * k + 113452) = 279936 * k + 56726 := by
    unfold C
    simp [show (559872 * k + 113452) % 2 = 0 by omega]
    omega
  have h17 : C (279936 * k + 56726) = 139968 * k + 28363 := by
    unfold C
    simp [show (279936 * k + 56726) % 2 = 0 by omega]
    omega
  have h18 : C (139968 * k + 28363) = 419904 * k + 85090 := by
    unfold C
    simp [show (139968 * k + 28363) % 2 ≠ 0 by omega]
    omega
  have h19 : C (419904 * k + 85090) = 209952 * k + 42545 := by
    unfold C
    simp [show (419904 * k + 85090) % 2 = 0 by omega]
    omega
  have h20 : C (209952 * k + 42545) = 629856 * k + 127636 := by
    unfold C
    simp [show (209952 * k + 42545) % 2 ≠ 0 by omega]
    omega
  have h21 : C (629856 * k + 127636) = 314928 * k + 63818 := by
    unfold C
    simp [show (629856 * k + 127636) % 2 = 0 by omega]
    omega
  have h22 : C (314928 * k + 63818) = 157464 * k + 31909 := by
    unfold C
    simp [show (314928 * k + 63818) % 2 = 0 by omega]
    omega
  have h23 : C (157464 * k + 31909) = 472392 * k + 95728 := by
    unfold C
    simp [show (157464 * k + 31909) % 2 ≠ 0 by omega]
    omega
  have h24 : C (472392 * k + 95728) = 236196 * k + 47864 := by
    unfold C
    simp [show (472392 * k + 95728) % 2 = 0 by omega]
    omega
  have h25 : C (236196 * k + 47864) = 118098 * k + 23932 := by
    unfold C
    simp [show (236196 * k + 47864) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 23932) = 59049 * k + 11966 := by
    unfold C
    simp [show (118098 * k + 23932) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 13279) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 13279)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_13339 : ∀ k : Nat,
    iterate (65536 * k + 13339) 26 = 59049 * k + 12020 ∧
      59049 * k + 12020 < 65536 * k + 13339 := by
  intro k
  have h1 : C (65536 * k + 13339) = 196608 * k + 40018 := by
    unfold C
    simp [show (65536 * k + 13339) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 40018) = 98304 * k + 20009 := by
    unfold C
    simp [show (196608 * k + 40018) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 20009) = 294912 * k + 60028 := by
    unfold C
    simp [show (98304 * k + 20009) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 60028) = 147456 * k + 30014 := by
    unfold C
    simp [show (294912 * k + 60028) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 30014) = 73728 * k + 15007 := by
    unfold C
    simp [show (147456 * k + 30014) % 2 = 0 by omega]
    omega
  have h6 : C (73728 * k + 15007) = 221184 * k + 45022 := by
    unfold C
    simp [show (73728 * k + 15007) % 2 ≠ 0 by omega]
    omega
  have h7 : C (221184 * k + 45022) = 110592 * k + 22511 := by
    unfold C
    simp [show (221184 * k + 45022) % 2 = 0 by omega]
    omega
  have h8 : C (110592 * k + 22511) = 331776 * k + 67534 := by
    unfold C
    simp [show (110592 * k + 22511) % 2 ≠ 0 by omega]
    omega
  have h9 : C (331776 * k + 67534) = 165888 * k + 33767 := by
    unfold C
    simp [show (331776 * k + 67534) % 2 = 0 by omega]
    omega
  have h10 : C (165888 * k + 33767) = 497664 * k + 101302 := by
    unfold C
    simp [show (165888 * k + 33767) % 2 ≠ 0 by omega]
    omega
  have h11 : C (497664 * k + 101302) = 248832 * k + 50651 := by
    unfold C
    simp [show (497664 * k + 101302) % 2 = 0 by omega]
    omega
  have h12 : C (248832 * k + 50651) = 746496 * k + 151954 := by
    unfold C
    simp [show (248832 * k + 50651) % 2 ≠ 0 by omega]
    omega
  have h13 : C (746496 * k + 151954) = 373248 * k + 75977 := by
    unfold C
    simp [show (746496 * k + 151954) % 2 = 0 by omega]
    omega
  have h14 : C (373248 * k + 75977) = 1119744 * k + 227932 := by
    unfold C
    simp [show (373248 * k + 75977) % 2 ≠ 0 by omega]
    omega
  have h15 : C (1119744 * k + 227932) = 559872 * k + 113966 := by
    unfold C
    simp [show (1119744 * k + 227932) % 2 = 0 by omega]
    omega
  have h16 : C (559872 * k + 113966) = 279936 * k + 56983 := by
    unfold C
    simp [show (559872 * k + 113966) % 2 = 0 by omega]
    omega
  have h17 : C (279936 * k + 56983) = 839808 * k + 170950 := by
    unfold C
    simp [show (279936 * k + 56983) % 2 ≠ 0 by omega]
    omega
  have h18 : C (839808 * k + 170950) = 419904 * k + 85475 := by
    unfold C
    simp [show (839808 * k + 170950) % 2 = 0 by omega]
    omega
  have h19 : C (419904 * k + 85475) = 1259712 * k + 256426 := by
    unfold C
    simp [show (419904 * k + 85475) % 2 ≠ 0 by omega]
    omega
  have h20 : C (1259712 * k + 256426) = 629856 * k + 128213 := by
    unfold C
    simp [show (1259712 * k + 256426) % 2 = 0 by omega]
    omega
  have h21 : C (629856 * k + 128213) = 1889568 * k + 384640 := by
    unfold C
    simp [show (629856 * k + 128213) % 2 ≠ 0 by omega]
    omega
  have h22 : C (1889568 * k + 384640) = 944784 * k + 192320 := by
    unfold C
    simp [show (1889568 * k + 384640) % 2 = 0 by omega]
    omega
  have h23 : C (944784 * k + 192320) = 472392 * k + 96160 := by
    unfold C
    simp [show (944784 * k + 192320) % 2 = 0 by omega]
    omega
  have h24 : C (472392 * k + 96160) = 236196 * k + 48080 := by
    unfold C
    simp [show (472392 * k + 96160) % 2 = 0 by omega]
    omega
  have h25 : C (236196 * k + 48080) = 118098 * k + 24040 := by
    unfold C
    simp [show (236196 * k + 48080) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 24040) = 59049 * k + 12020 := by
    unfold C
    simp [show (118098 * k + 24040) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 13339) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 13339)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_13535 : ∀ k : Nat,
    iterate (65536 * k + 13535) 26 = 59049 * k + 12197 ∧
      59049 * k + 12197 < 65536 * k + 13535 := by
  intro k
  have h1 : C (65536 * k + 13535) = 196608 * k + 40606 := by
    unfold C
    simp [show (65536 * k + 13535) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 40606) = 98304 * k + 20303 := by
    unfold C
    simp [show (196608 * k + 40606) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 20303) = 294912 * k + 60910 := by
    unfold C
    simp [show (98304 * k + 20303) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 60910) = 147456 * k + 30455 := by
    unfold C
    simp [show (294912 * k + 60910) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 30455) = 442368 * k + 91366 := by
    unfold C
    simp [show (147456 * k + 30455) % 2 ≠ 0 by omega]
    omega
  have h6 : C (442368 * k + 91366) = 221184 * k + 45683 := by
    unfold C
    simp [show (442368 * k + 91366) % 2 = 0 by omega]
    omega
  have h7 : C (221184 * k + 45683) = 663552 * k + 137050 := by
    unfold C
    simp [show (221184 * k + 45683) % 2 ≠ 0 by omega]
    omega
  have h8 : C (663552 * k + 137050) = 331776 * k + 68525 := by
    unfold C
    simp [show (663552 * k + 137050) % 2 = 0 by omega]
    omega
  have h9 : C (331776 * k + 68525) = 995328 * k + 205576 := by
    unfold C
    simp [show (331776 * k + 68525) % 2 ≠ 0 by omega]
    omega
  have h10 : C (995328 * k + 205576) = 497664 * k + 102788 := by
    unfold C
    simp [show (995328 * k + 205576) % 2 = 0 by omega]
    omega
  have h11 : C (497664 * k + 102788) = 248832 * k + 51394 := by
    unfold C
    simp [show (497664 * k + 102788) % 2 = 0 by omega]
    omega
  have h12 : C (248832 * k + 51394) = 124416 * k + 25697 := by
    unfold C
    simp [show (248832 * k + 51394) % 2 = 0 by omega]
    omega
  have h13 : C (124416 * k + 25697) = 373248 * k + 77092 := by
    unfold C
    simp [show (124416 * k + 25697) % 2 ≠ 0 by omega]
    omega
  have h14 : C (373248 * k + 77092) = 186624 * k + 38546 := by
    unfold C
    simp [show (373248 * k + 77092) % 2 = 0 by omega]
    omega
  have h15 : C (186624 * k + 38546) = 93312 * k + 19273 := by
    unfold C
    simp [show (186624 * k + 38546) % 2 = 0 by omega]
    omega
  have h16 : C (93312 * k + 19273) = 279936 * k + 57820 := by
    unfold C
    simp [show (93312 * k + 19273) % 2 ≠ 0 by omega]
    omega
  have h17 : C (279936 * k + 57820) = 139968 * k + 28910 := by
    unfold C
    simp [show (279936 * k + 57820) % 2 = 0 by omega]
    omega
  have h18 : C (139968 * k + 28910) = 69984 * k + 14455 := by
    unfold C
    simp [show (139968 * k + 28910) % 2 = 0 by omega]
    omega
  have h19 : C (69984 * k + 14455) = 209952 * k + 43366 := by
    unfold C
    simp [show (69984 * k + 14455) % 2 ≠ 0 by omega]
    omega
  have h20 : C (209952 * k + 43366) = 104976 * k + 21683 := by
    unfold C
    simp [show (209952 * k + 43366) % 2 = 0 by omega]
    omega
  have h21 : C (104976 * k + 21683) = 314928 * k + 65050 := by
    unfold C
    simp [show (104976 * k + 21683) % 2 ≠ 0 by omega]
    omega
  have h22 : C (314928 * k + 65050) = 157464 * k + 32525 := by
    unfold C
    simp [show (314928 * k + 65050) % 2 = 0 by omega]
    omega
  have h23 : C (157464 * k + 32525) = 472392 * k + 97576 := by
    unfold C
    simp [show (157464 * k + 32525) % 2 ≠ 0 by omega]
    omega
  have h24 : C (472392 * k + 97576) = 236196 * k + 48788 := by
    unfold C
    simp [show (472392 * k + 97576) % 2 = 0 by omega]
    omega
  have h25 : C (236196 * k + 48788) = 118098 * k + 24394 := by
    unfold C
    simp [show (236196 * k + 48788) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 24394) = 59049 * k + 12197 := by
    unfold C
    simp [show (118098 * k + 24394) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 13535) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 13535)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_13615 : ∀ k : Nat,
    iterate (65536 * k + 13615) 26 = 59049 * k + 12269 ∧
      59049 * k + 12269 < 65536 * k + 13615 := by
  intro k
  have h1 : C (65536 * k + 13615) = 196608 * k + 40846 := by
    unfold C
    simp [show (65536 * k + 13615) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 40846) = 98304 * k + 20423 := by
    unfold C
    simp [show (196608 * k + 40846) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 20423) = 294912 * k + 61270 := by
    unfold C
    simp [show (98304 * k + 20423) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 61270) = 147456 * k + 30635 := by
    unfold C
    simp [show (294912 * k + 61270) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 30635) = 442368 * k + 91906 := by
    unfold C
    simp [show (147456 * k + 30635) % 2 ≠ 0 by omega]
    omega
  have h6 : C (442368 * k + 91906) = 221184 * k + 45953 := by
    unfold C
    simp [show (442368 * k + 91906) % 2 = 0 by omega]
    omega
  have h7 : C (221184 * k + 45953) = 663552 * k + 137860 := by
    unfold C
    simp [show (221184 * k + 45953) % 2 ≠ 0 by omega]
    omega
  have h8 : C (663552 * k + 137860) = 331776 * k + 68930 := by
    unfold C
    simp [show (663552 * k + 137860) % 2 = 0 by omega]
    omega
  have h9 : C (331776 * k + 68930) = 165888 * k + 34465 := by
    unfold C
    simp [show (331776 * k + 68930) % 2 = 0 by omega]
    omega
  have h10 : C (165888 * k + 34465) = 497664 * k + 103396 := by
    unfold C
    simp [show (165888 * k + 34465) % 2 ≠ 0 by omega]
    omega
  have h11 : C (497664 * k + 103396) = 248832 * k + 51698 := by
    unfold C
    simp [show (497664 * k + 103396) % 2 = 0 by omega]
    omega
  have h12 : C (248832 * k + 51698) = 124416 * k + 25849 := by
    unfold C
    simp [show (248832 * k + 51698) % 2 = 0 by omega]
    omega
  have h13 : C (124416 * k + 25849) = 373248 * k + 77548 := by
    unfold C
    simp [show (124416 * k + 25849) % 2 ≠ 0 by omega]
    omega
  have h14 : C (373248 * k + 77548) = 186624 * k + 38774 := by
    unfold C
    simp [show (373248 * k + 77548) % 2 = 0 by omega]
    omega
  have h15 : C (186624 * k + 38774) = 93312 * k + 19387 := by
    unfold C
    simp [show (186624 * k + 38774) % 2 = 0 by omega]
    omega
  have h16 : C (93312 * k + 19387) = 279936 * k + 58162 := by
    unfold C
    simp [show (93312 * k + 19387) % 2 ≠ 0 by omega]
    omega
  have h17 : C (279936 * k + 58162) = 139968 * k + 29081 := by
    unfold C
    simp [show (279936 * k + 58162) % 2 = 0 by omega]
    omega
  have h18 : C (139968 * k + 29081) = 419904 * k + 87244 := by
    unfold C
    simp [show (139968 * k + 29081) % 2 ≠ 0 by omega]
    omega
  have h19 : C (419904 * k + 87244) = 209952 * k + 43622 := by
    unfold C
    simp [show (419904 * k + 87244) % 2 = 0 by omega]
    omega
  have h20 : C (209952 * k + 43622) = 104976 * k + 21811 := by
    unfold C
    simp [show (209952 * k + 43622) % 2 = 0 by omega]
    omega
  have h21 : C (104976 * k + 21811) = 314928 * k + 65434 := by
    unfold C
    simp [show (104976 * k + 21811) % 2 ≠ 0 by omega]
    omega
  have h22 : C (314928 * k + 65434) = 157464 * k + 32717 := by
    unfold C
    simp [show (314928 * k + 65434) % 2 = 0 by omega]
    omega
  have h23 : C (157464 * k + 32717) = 472392 * k + 98152 := by
    unfold C
    simp [show (157464 * k + 32717) % 2 ≠ 0 by omega]
    omega
  have h24 : C (472392 * k + 98152) = 236196 * k + 49076 := by
    unfold C
    simp [show (472392 * k + 98152) % 2 = 0 by omega]
    omega
  have h25 : C (236196 * k + 49076) = 118098 * k + 24538 := by
    unfold C
    simp [show (236196 * k + 49076) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 24538) = 59049 * k + 12269 := by
    unfold C
    simp [show (118098 * k + 24538) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 13615) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 13615)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_13671 : ∀ k : Nat,
    iterate (65536 * k + 13671) 26 = 59049 * k + 12319 ∧
      59049 * k + 12319 < 65536 * k + 13671 := by
  intro k
  have h1 : C (65536 * k + 13671) = 196608 * k + 41014 := by
    unfold C
    simp [show (65536 * k + 13671) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 41014) = 98304 * k + 20507 := by
    unfold C
    simp [show (196608 * k + 41014) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 20507) = 294912 * k + 61522 := by
    unfold C
    simp [show (98304 * k + 20507) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 61522) = 147456 * k + 30761 := by
    unfold C
    simp [show (294912 * k + 61522) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 30761) = 442368 * k + 92284 := by
    unfold C
    simp [show (147456 * k + 30761) % 2 ≠ 0 by omega]
    omega
  have h6 : C (442368 * k + 92284) = 221184 * k + 46142 := by
    unfold C
    simp [show (442368 * k + 92284) % 2 = 0 by omega]
    omega
  have h7 : C (221184 * k + 46142) = 110592 * k + 23071 := by
    unfold C
    simp [show (221184 * k + 46142) % 2 = 0 by omega]
    omega
  have h8 : C (110592 * k + 23071) = 331776 * k + 69214 := by
    unfold C
    simp [show (110592 * k + 23071) % 2 ≠ 0 by omega]
    omega
  have h9 : C (331776 * k + 69214) = 165888 * k + 34607 := by
    unfold C
    simp [show (331776 * k + 69214) % 2 = 0 by omega]
    omega
  have h10 : C (165888 * k + 34607) = 497664 * k + 103822 := by
    unfold C
    simp [show (165888 * k + 34607) % 2 ≠ 0 by omega]
    omega
  have h11 : C (497664 * k + 103822) = 248832 * k + 51911 := by
    unfold C
    simp [show (497664 * k + 103822) % 2 = 0 by omega]
    omega
  have h12 : C (248832 * k + 51911) = 746496 * k + 155734 := by
    unfold C
    simp [show (248832 * k + 51911) % 2 ≠ 0 by omega]
    omega
  have h13 : C (746496 * k + 155734) = 373248 * k + 77867 := by
    unfold C
    simp [show (746496 * k + 155734) % 2 = 0 by omega]
    omega
  have h14 : C (373248 * k + 77867) = 1119744 * k + 233602 := by
    unfold C
    simp [show (373248 * k + 77867) % 2 ≠ 0 by omega]
    omega
  have h15 : C (1119744 * k + 233602) = 559872 * k + 116801 := by
    unfold C
    simp [show (1119744 * k + 233602) % 2 = 0 by omega]
    omega
  have h16 : C (559872 * k + 116801) = 1679616 * k + 350404 := by
    unfold C
    simp [show (559872 * k + 116801) % 2 ≠ 0 by omega]
    omega
  have h17 : C (1679616 * k + 350404) = 839808 * k + 175202 := by
    unfold C
    simp [show (1679616 * k + 350404) % 2 = 0 by omega]
    omega
  have h18 : C (839808 * k + 175202) = 419904 * k + 87601 := by
    unfold C
    simp [show (839808 * k + 175202) % 2 = 0 by omega]
    omega
  have h19 : C (419904 * k + 87601) = 1259712 * k + 262804 := by
    unfold C
    simp [show (419904 * k + 87601) % 2 ≠ 0 by omega]
    omega
  have h20 : C (1259712 * k + 262804) = 629856 * k + 131402 := by
    unfold C
    simp [show (1259712 * k + 262804) % 2 = 0 by omega]
    omega
  have h21 : C (629856 * k + 131402) = 314928 * k + 65701 := by
    unfold C
    simp [show (629856 * k + 131402) % 2 = 0 by omega]
    omega
  have h22 : C (314928 * k + 65701) = 944784 * k + 197104 := by
    unfold C
    simp [show (314928 * k + 65701) % 2 ≠ 0 by omega]
    omega
  have h23 : C (944784 * k + 197104) = 472392 * k + 98552 := by
    unfold C
    simp [show (944784 * k + 197104) % 2 = 0 by omega]
    omega
  have h24 : C (472392 * k + 98552) = 236196 * k + 49276 := by
    unfold C
    simp [show (472392 * k + 98552) % 2 = 0 by omega]
    omega
  have h25 : C (236196 * k + 49276) = 118098 * k + 24638 := by
    unfold C
    simp [show (236196 * k + 49276) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 24638) = 59049 * k + 12319 := by
    unfold C
    simp [show (118098 * k + 24638) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 13671) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 13671)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_13855 : ∀ k : Nat,
    iterate (65536 * k + 13855) 26 = 59049 * k + 12485 ∧
      59049 * k + 12485 < 65536 * k + 13855 := by
  intro k
  have h1 : C (65536 * k + 13855) = 196608 * k + 41566 := by
    unfold C
    simp [show (65536 * k + 13855) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 41566) = 98304 * k + 20783 := by
    unfold C
    simp [show (196608 * k + 41566) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 20783) = 294912 * k + 62350 := by
    unfold C
    simp [show (98304 * k + 20783) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 62350) = 147456 * k + 31175 := by
    unfold C
    simp [show (294912 * k + 62350) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 31175) = 442368 * k + 93526 := by
    unfold C
    simp [show (147456 * k + 31175) % 2 ≠ 0 by omega]
    omega
  have h6 : C (442368 * k + 93526) = 221184 * k + 46763 := by
    unfold C
    simp [show (442368 * k + 93526) % 2 = 0 by omega]
    omega
  have h7 : C (221184 * k + 46763) = 663552 * k + 140290 := by
    unfold C
    simp [show (221184 * k + 46763) % 2 ≠ 0 by omega]
    omega
  have h8 : C (663552 * k + 140290) = 331776 * k + 70145 := by
    unfold C
    simp [show (663552 * k + 140290) % 2 = 0 by omega]
    omega
  have h9 : C (331776 * k + 70145) = 995328 * k + 210436 := by
    unfold C
    simp [show (331776 * k + 70145) % 2 ≠ 0 by omega]
    omega
  have h10 : C (995328 * k + 210436) = 497664 * k + 105218 := by
    unfold C
    simp [show (995328 * k + 210436) % 2 = 0 by omega]
    omega
  have h11 : C (497664 * k + 105218) = 248832 * k + 52609 := by
    unfold C
    simp [show (497664 * k + 105218) % 2 = 0 by omega]
    omega
  have h12 : C (248832 * k + 52609) = 746496 * k + 157828 := by
    unfold C
    simp [show (248832 * k + 52609) % 2 ≠ 0 by omega]
    omega
  have h13 : C (746496 * k + 157828) = 373248 * k + 78914 := by
    unfold C
    simp [show (746496 * k + 157828) % 2 = 0 by omega]
    omega
  have h14 : C (373248 * k + 78914) = 186624 * k + 39457 := by
    unfold C
    simp [show (373248 * k + 78914) % 2 = 0 by omega]
    omega
  have h15 : C (186624 * k + 39457) = 559872 * k + 118372 := by
    unfold C
    simp [show (186624 * k + 39457) % 2 ≠ 0 by omega]
    omega
  have h16 : C (559872 * k + 118372) = 279936 * k + 59186 := by
    unfold C
    simp [show (559872 * k + 118372) % 2 = 0 by omega]
    omega
  have h17 : C (279936 * k + 59186) = 139968 * k + 29593 := by
    unfold C
    simp [show (279936 * k + 59186) % 2 = 0 by omega]
    omega
  have h18 : C (139968 * k + 29593) = 419904 * k + 88780 := by
    unfold C
    simp [show (139968 * k + 29593) % 2 ≠ 0 by omega]
    omega
  have h19 : C (419904 * k + 88780) = 209952 * k + 44390 := by
    unfold C
    simp [show (419904 * k + 88780) % 2 = 0 by omega]
    omega
  have h20 : C (209952 * k + 44390) = 104976 * k + 22195 := by
    unfold C
    simp [show (209952 * k + 44390) % 2 = 0 by omega]
    omega
  have h21 : C (104976 * k + 22195) = 314928 * k + 66586 := by
    unfold C
    simp [show (104976 * k + 22195) % 2 ≠ 0 by omega]
    omega
  have h22 : C (314928 * k + 66586) = 157464 * k + 33293 := by
    unfold C
    simp [show (314928 * k + 66586) % 2 = 0 by omega]
    omega
  have h23 : C (157464 * k + 33293) = 472392 * k + 99880 := by
    unfold C
    simp [show (157464 * k + 33293) % 2 ≠ 0 by omega]
    omega
  have h24 : C (472392 * k + 99880) = 236196 * k + 49940 := by
    unfold C
    simp [show (472392 * k + 99880) % 2 = 0 by omega]
    omega
  have h25 : C (236196 * k + 49940) = 118098 * k + 24970 := by
    unfold C
    simp [show (236196 * k + 49940) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 24970) = 59049 * k + 12485 := by
    unfold C
    simp [show (118098 * k + 24970) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 13855) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 13855)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_13927 : ∀ k : Nat,
    iterate (65536 * k + 13927) 26 = 59049 * k + 12550 ∧
      59049 * k + 12550 < 65536 * k + 13927 := by
  intro k
  have h1 : C (65536 * k + 13927) = 196608 * k + 41782 := by
    unfold C
    simp [show (65536 * k + 13927) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 41782) = 98304 * k + 20891 := by
    unfold C
    simp [show (196608 * k + 41782) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 20891) = 294912 * k + 62674 := by
    unfold C
    simp [show (98304 * k + 20891) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 62674) = 147456 * k + 31337 := by
    unfold C
    simp [show (294912 * k + 62674) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 31337) = 442368 * k + 94012 := by
    unfold C
    simp [show (147456 * k + 31337) % 2 ≠ 0 by omega]
    omega
  have h6 : C (442368 * k + 94012) = 221184 * k + 47006 := by
    unfold C
    simp [show (442368 * k + 94012) % 2 = 0 by omega]
    omega
  have h7 : C (221184 * k + 47006) = 110592 * k + 23503 := by
    unfold C
    simp [show (221184 * k + 47006) % 2 = 0 by omega]
    omega
  have h8 : C (110592 * k + 23503) = 331776 * k + 70510 := by
    unfold C
    simp [show (110592 * k + 23503) % 2 ≠ 0 by omega]
    omega
  have h9 : C (331776 * k + 70510) = 165888 * k + 35255 := by
    unfold C
    simp [show (331776 * k + 70510) % 2 = 0 by omega]
    omega
  have h10 : C (165888 * k + 35255) = 497664 * k + 105766 := by
    unfold C
    simp [show (165888 * k + 35255) % 2 ≠ 0 by omega]
    omega
  have h11 : C (497664 * k + 105766) = 248832 * k + 52883 := by
    unfold C
    simp [show (497664 * k + 105766) % 2 = 0 by omega]
    omega
  have h12 : C (248832 * k + 52883) = 746496 * k + 158650 := by
    unfold C
    simp [show (248832 * k + 52883) % 2 ≠ 0 by omega]
    omega
  have h13 : C (746496 * k + 158650) = 373248 * k + 79325 := by
    unfold C
    simp [show (746496 * k + 158650) % 2 = 0 by omega]
    omega
  have h14 : C (373248 * k + 79325) = 1119744 * k + 237976 := by
    unfold C
    simp [show (373248 * k + 79325) % 2 ≠ 0 by omega]
    omega
  have h15 : C (1119744 * k + 237976) = 559872 * k + 118988 := by
    unfold C
    simp [show (1119744 * k + 237976) % 2 = 0 by omega]
    omega
  have h16 : C (559872 * k + 118988) = 279936 * k + 59494 := by
    unfold C
    simp [show (559872 * k + 118988) % 2 = 0 by omega]
    omega
  have h17 : C (279936 * k + 59494) = 139968 * k + 29747 := by
    unfold C
    simp [show (279936 * k + 59494) % 2 = 0 by omega]
    omega
  have h18 : C (139968 * k + 29747) = 419904 * k + 89242 := by
    unfold C
    simp [show (139968 * k + 29747) % 2 ≠ 0 by omega]
    omega
  have h19 : C (419904 * k + 89242) = 209952 * k + 44621 := by
    unfold C
    simp [show (419904 * k + 89242) % 2 = 0 by omega]
    omega
  have h20 : C (209952 * k + 44621) = 629856 * k + 133864 := by
    unfold C
    simp [show (209952 * k + 44621) % 2 ≠ 0 by omega]
    omega
  have h21 : C (629856 * k + 133864) = 314928 * k + 66932 := by
    unfold C
    simp [show (629856 * k + 133864) % 2 = 0 by omega]
    omega
  have h22 : C (314928 * k + 66932) = 157464 * k + 33466 := by
    unfold C
    simp [show (314928 * k + 66932) % 2 = 0 by omega]
    omega
  have h23 : C (157464 * k + 33466) = 78732 * k + 16733 := by
    unfold C
    simp [show (157464 * k + 33466) % 2 = 0 by omega]
    omega
  have h24 : C (78732 * k + 16733) = 236196 * k + 50200 := by
    unfold C
    simp [show (78732 * k + 16733) % 2 ≠ 0 by omega]
    omega
  have h25 : C (236196 * k + 50200) = 118098 * k + 25100 := by
    unfold C
    simp [show (236196 * k + 50200) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 25100) = 59049 * k + 12550 := by
    unfold C
    simp [show (118098 * k + 25100) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 13927) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 13927)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_13951 : ∀ k : Nat,
    iterate (65536 * k + 13951) 26 = 59049 * k + 12571 ∧
      59049 * k + 12571 < 65536 * k + 13951 := by
  intro k
  have h1 : C (65536 * k + 13951) = 196608 * k + 41854 := by
    unfold C
    simp [show (65536 * k + 13951) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 41854) = 98304 * k + 20927 := by
    unfold C
    simp [show (196608 * k + 41854) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 20927) = 294912 * k + 62782 := by
    unfold C
    simp [show (98304 * k + 20927) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 62782) = 147456 * k + 31391 := by
    unfold C
    simp [show (294912 * k + 62782) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 31391) = 442368 * k + 94174 := by
    unfold C
    simp [show (147456 * k + 31391) % 2 ≠ 0 by omega]
    omega
  have h6 : C (442368 * k + 94174) = 221184 * k + 47087 := by
    unfold C
    simp [show (442368 * k + 94174) % 2 = 0 by omega]
    omega
  have h7 : C (221184 * k + 47087) = 663552 * k + 141262 := by
    unfold C
    simp [show (221184 * k + 47087) % 2 ≠ 0 by omega]
    omega
  have h8 : C (663552 * k + 141262) = 331776 * k + 70631 := by
    unfold C
    simp [show (663552 * k + 141262) % 2 = 0 by omega]
    omega
  have h9 : C (331776 * k + 70631) = 995328 * k + 211894 := by
    unfold C
    simp [show (331776 * k + 70631) % 2 ≠ 0 by omega]
    omega
  have h10 : C (995328 * k + 211894) = 497664 * k + 105947 := by
    unfold C
    simp [show (995328 * k + 211894) % 2 = 0 by omega]
    omega
  have h11 : C (497664 * k + 105947) = 1492992 * k + 317842 := by
    unfold C
    simp [show (497664 * k + 105947) % 2 ≠ 0 by omega]
    omega
  have h12 : C (1492992 * k + 317842) = 746496 * k + 158921 := by
    unfold C
    simp [show (1492992 * k + 317842) % 2 = 0 by omega]
    omega
  have h13 : C (746496 * k + 158921) = 2239488 * k + 476764 := by
    unfold C
    simp [show (746496 * k + 158921) % 2 ≠ 0 by omega]
    omega
  have h14 : C (2239488 * k + 476764) = 1119744 * k + 238382 := by
    unfold C
    simp [show (2239488 * k + 476764) % 2 = 0 by omega]
    omega
  have h15 : C (1119744 * k + 238382) = 559872 * k + 119191 := by
    unfold C
    simp [show (1119744 * k + 238382) % 2 = 0 by omega]
    omega
  have h16 : C (559872 * k + 119191) = 1679616 * k + 357574 := by
    unfold C
    simp [show (559872 * k + 119191) % 2 ≠ 0 by omega]
    omega
  have h17 : C (1679616 * k + 357574) = 839808 * k + 178787 := by
    unfold C
    simp [show (1679616 * k + 357574) % 2 = 0 by omega]
    omega
  have h18 : C (839808 * k + 178787) = 2519424 * k + 536362 := by
    unfold C
    simp [show (839808 * k + 178787) % 2 ≠ 0 by omega]
    omega
  have h19 : C (2519424 * k + 536362) = 1259712 * k + 268181 := by
    unfold C
    simp [show (2519424 * k + 536362) % 2 = 0 by omega]
    omega
  have h20 : C (1259712 * k + 268181) = 3779136 * k + 804544 := by
    unfold C
    simp [show (1259712 * k + 268181) % 2 ≠ 0 by omega]
    omega
  have h21 : C (3779136 * k + 804544) = 1889568 * k + 402272 := by
    unfold C
    simp [show (3779136 * k + 804544) % 2 = 0 by omega]
    omega
  have h22 : C (1889568 * k + 402272) = 944784 * k + 201136 := by
    unfold C
    simp [show (1889568 * k + 402272) % 2 = 0 by omega]
    omega
  have h23 : C (944784 * k + 201136) = 472392 * k + 100568 := by
    unfold C
    simp [show (944784 * k + 201136) % 2 = 0 by omega]
    omega
  have h24 : C (472392 * k + 100568) = 236196 * k + 50284 := by
    unfold C
    simp [show (472392 * k + 100568) % 2 = 0 by omega]
    omega
  have h25 : C (236196 * k + 50284) = 118098 * k + 25142 := by
    unfold C
    simp [show (236196 * k + 50284) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 25142) = 59049 * k + 12571 := by
    unfold C
    simp [show (118098 * k + 25142) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 13951) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 13951)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_14015 : ∀ k : Nat,
    iterate (65536 * k + 14015) 26 = 59049 * k + 12629 ∧
      59049 * k + 12629 < 65536 * k + 14015 := by
  intro k
  have h1 : C (65536 * k + 14015) = 196608 * k + 42046 := by
    unfold C
    simp [show (65536 * k + 14015) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 42046) = 98304 * k + 21023 := by
    unfold C
    simp [show (196608 * k + 42046) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 21023) = 294912 * k + 63070 := by
    unfold C
    simp [show (98304 * k + 21023) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 63070) = 147456 * k + 31535 := by
    unfold C
    simp [show (294912 * k + 63070) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 31535) = 442368 * k + 94606 := by
    unfold C
    simp [show (147456 * k + 31535) % 2 ≠ 0 by omega]
    omega
  have h6 : C (442368 * k + 94606) = 221184 * k + 47303 := by
    unfold C
    simp [show (442368 * k + 94606) % 2 = 0 by omega]
    omega
  have h7 : C (221184 * k + 47303) = 663552 * k + 141910 := by
    unfold C
    simp [show (221184 * k + 47303) % 2 ≠ 0 by omega]
    omega
  have h8 : C (663552 * k + 141910) = 331776 * k + 70955 := by
    unfold C
    simp [show (663552 * k + 141910) % 2 = 0 by omega]
    omega
  have h9 : C (331776 * k + 70955) = 995328 * k + 212866 := by
    unfold C
    simp [show (331776 * k + 70955) % 2 ≠ 0 by omega]
    omega
  have h10 : C (995328 * k + 212866) = 497664 * k + 106433 := by
    unfold C
    simp [show (995328 * k + 212866) % 2 = 0 by omega]
    omega
  have h11 : C (497664 * k + 106433) = 1492992 * k + 319300 := by
    unfold C
    simp [show (497664 * k + 106433) % 2 ≠ 0 by omega]
    omega
  have h12 : C (1492992 * k + 319300) = 746496 * k + 159650 := by
    unfold C
    simp [show (1492992 * k + 319300) % 2 = 0 by omega]
    omega
  have h13 : C (746496 * k + 159650) = 373248 * k + 79825 := by
    unfold C
    simp [show (746496 * k + 159650) % 2 = 0 by omega]
    omega
  have h14 : C (373248 * k + 79825) = 1119744 * k + 239476 := by
    unfold C
    simp [show (373248 * k + 79825) % 2 ≠ 0 by omega]
    omega
  have h15 : C (1119744 * k + 239476) = 559872 * k + 119738 := by
    unfold C
    simp [show (1119744 * k + 239476) % 2 = 0 by omega]
    omega
  have h16 : C (559872 * k + 119738) = 279936 * k + 59869 := by
    unfold C
    simp [show (559872 * k + 119738) % 2 = 0 by omega]
    omega
  have h17 : C (279936 * k + 59869) = 839808 * k + 179608 := by
    unfold C
    simp [show (279936 * k + 59869) % 2 ≠ 0 by omega]
    omega
  have h18 : C (839808 * k + 179608) = 419904 * k + 89804 := by
    unfold C
    simp [show (839808 * k + 179608) % 2 = 0 by omega]
    omega
  have h19 : C (419904 * k + 89804) = 209952 * k + 44902 := by
    unfold C
    simp [show (419904 * k + 89804) % 2 = 0 by omega]
    omega
  have h20 : C (209952 * k + 44902) = 104976 * k + 22451 := by
    unfold C
    simp [show (209952 * k + 44902) % 2 = 0 by omega]
    omega
  have h21 : C (104976 * k + 22451) = 314928 * k + 67354 := by
    unfold C
    simp [show (104976 * k + 22451) % 2 ≠ 0 by omega]
    omega
  have h22 : C (314928 * k + 67354) = 157464 * k + 33677 := by
    unfold C
    simp [show (314928 * k + 67354) % 2 = 0 by omega]
    omega
  have h23 : C (157464 * k + 33677) = 472392 * k + 101032 := by
    unfold C
    simp [show (157464 * k + 33677) % 2 ≠ 0 by omega]
    omega
  have h24 : C (472392 * k + 101032) = 236196 * k + 50516 := by
    unfold C
    simp [show (472392 * k + 101032) % 2 = 0 by omega]
    omega
  have h25 : C (236196 * k + 50516) = 118098 * k + 25258 := by
    unfold C
    simp [show (236196 * k + 50516) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 25258) = 59049 * k + 12629 := by
    unfold C
    simp [show (118098 * k + 25258) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 14015) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 14015)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_14207 : ∀ k : Nat,
    iterate (65536 * k + 14207) 26 = 59049 * k + 12802 ∧
      59049 * k + 12802 < 65536 * k + 14207 := by
  intro k
  have h1 : C (65536 * k + 14207) = 196608 * k + 42622 := by
    unfold C
    simp [show (65536 * k + 14207) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 42622) = 98304 * k + 21311 := by
    unfold C
    simp [show (196608 * k + 42622) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 21311) = 294912 * k + 63934 := by
    unfold C
    simp [show (98304 * k + 21311) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 63934) = 147456 * k + 31967 := by
    unfold C
    simp [show (294912 * k + 63934) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 31967) = 442368 * k + 95902 := by
    unfold C
    simp [show (147456 * k + 31967) % 2 ≠ 0 by omega]
    omega
  have h6 : C (442368 * k + 95902) = 221184 * k + 47951 := by
    unfold C
    simp [show (442368 * k + 95902) % 2 = 0 by omega]
    omega
  have h7 : C (221184 * k + 47951) = 663552 * k + 143854 := by
    unfold C
    simp [show (221184 * k + 47951) % 2 ≠ 0 by omega]
    omega
  have h8 : C (663552 * k + 143854) = 331776 * k + 71927 := by
    unfold C
    simp [show (663552 * k + 143854) % 2 = 0 by omega]
    omega
  have h9 : C (331776 * k + 71927) = 995328 * k + 215782 := by
    unfold C
    simp [show (331776 * k + 71927) % 2 ≠ 0 by omega]
    omega
  have h10 : C (995328 * k + 215782) = 497664 * k + 107891 := by
    unfold C
    simp [show (995328 * k + 215782) % 2 = 0 by omega]
    omega
  have h11 : C (497664 * k + 107891) = 1492992 * k + 323674 := by
    unfold C
    simp [show (497664 * k + 107891) % 2 ≠ 0 by omega]
    omega
  have h12 : C (1492992 * k + 323674) = 746496 * k + 161837 := by
    unfold C
    simp [show (1492992 * k + 323674) % 2 = 0 by omega]
    omega
  have h13 : C (746496 * k + 161837) = 2239488 * k + 485512 := by
    unfold C
    simp [show (746496 * k + 161837) % 2 ≠ 0 by omega]
    omega
  have h14 : C (2239488 * k + 485512) = 1119744 * k + 242756 := by
    unfold C
    simp [show (2239488 * k + 485512) % 2 = 0 by omega]
    omega
  have h15 : C (1119744 * k + 242756) = 559872 * k + 121378 := by
    unfold C
    simp [show (1119744 * k + 242756) % 2 = 0 by omega]
    omega
  have h16 : C (559872 * k + 121378) = 279936 * k + 60689 := by
    unfold C
    simp [show (559872 * k + 121378) % 2 = 0 by omega]
    omega
  have h17 : C (279936 * k + 60689) = 839808 * k + 182068 := by
    unfold C
    simp [show (279936 * k + 60689) % 2 ≠ 0 by omega]
    omega
  have h18 : C (839808 * k + 182068) = 419904 * k + 91034 := by
    unfold C
    simp [show (839808 * k + 182068) % 2 = 0 by omega]
    omega
  have h19 : C (419904 * k + 91034) = 209952 * k + 45517 := by
    unfold C
    simp [show (419904 * k + 91034) % 2 = 0 by omega]
    omega
  have h20 : C (209952 * k + 45517) = 629856 * k + 136552 := by
    unfold C
    simp [show (209952 * k + 45517) % 2 ≠ 0 by omega]
    omega
  have h21 : C (629856 * k + 136552) = 314928 * k + 68276 := by
    unfold C
    simp [show (629856 * k + 136552) % 2 = 0 by omega]
    omega
  have h22 : C (314928 * k + 68276) = 157464 * k + 34138 := by
    unfold C
    simp [show (314928 * k + 68276) % 2 = 0 by omega]
    omega
  have h23 : C (157464 * k + 34138) = 78732 * k + 17069 := by
    unfold C
    simp [show (157464 * k + 34138) % 2 = 0 by omega]
    omega
  have h24 : C (78732 * k + 17069) = 236196 * k + 51208 := by
    unfold C
    simp [show (78732 * k + 17069) % 2 ≠ 0 by omega]
    omega
  have h25 : C (236196 * k + 51208) = 118098 * k + 25604 := by
    unfold C
    simp [show (236196 * k + 51208) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 25604) = 59049 * k + 12802 := by
    unfold C
    simp [show (118098 * k + 25604) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 14207) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 14207)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_14303 : ∀ k : Nat,
    iterate (65536 * k + 14303) 26 = 59049 * k + 12889 ∧
      59049 * k + 12889 < 65536 * k + 14303 := by
  intro k
  have h1 : C (65536 * k + 14303) = 196608 * k + 42910 := by
    unfold C
    simp [show (65536 * k + 14303) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 42910) = 98304 * k + 21455 := by
    unfold C
    simp [show (196608 * k + 42910) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 21455) = 294912 * k + 64366 := by
    unfold C
    simp [show (98304 * k + 21455) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 64366) = 147456 * k + 32183 := by
    unfold C
    simp [show (294912 * k + 64366) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 32183) = 442368 * k + 96550 := by
    unfold C
    simp [show (147456 * k + 32183) % 2 ≠ 0 by omega]
    omega
  have h6 : C (442368 * k + 96550) = 221184 * k + 48275 := by
    unfold C
    simp [show (442368 * k + 96550) % 2 = 0 by omega]
    omega
  have h7 : C (221184 * k + 48275) = 663552 * k + 144826 := by
    unfold C
    simp [show (221184 * k + 48275) % 2 ≠ 0 by omega]
    omega
  have h8 : C (663552 * k + 144826) = 331776 * k + 72413 := by
    unfold C
    simp [show (663552 * k + 144826) % 2 = 0 by omega]
    omega
  have h9 : C (331776 * k + 72413) = 995328 * k + 217240 := by
    unfold C
    simp [show (331776 * k + 72413) % 2 ≠ 0 by omega]
    omega
  have h10 : C (995328 * k + 217240) = 497664 * k + 108620 := by
    unfold C
    simp [show (995328 * k + 217240) % 2 = 0 by omega]
    omega
  have h11 : C (497664 * k + 108620) = 248832 * k + 54310 := by
    unfold C
    simp [show (497664 * k + 108620) % 2 = 0 by omega]
    omega
  have h12 : C (248832 * k + 54310) = 124416 * k + 27155 := by
    unfold C
    simp [show (248832 * k + 54310) % 2 = 0 by omega]
    omega
  have h13 : C (124416 * k + 27155) = 373248 * k + 81466 := by
    unfold C
    simp [show (124416 * k + 27155) % 2 ≠ 0 by omega]
    omega
  have h14 : C (373248 * k + 81466) = 186624 * k + 40733 := by
    unfold C
    simp [show (373248 * k + 81466) % 2 = 0 by omega]
    omega
  have h15 : C (186624 * k + 40733) = 559872 * k + 122200 := by
    unfold C
    simp [show (186624 * k + 40733) % 2 ≠ 0 by omega]
    omega
  have h16 : C (559872 * k + 122200) = 279936 * k + 61100 := by
    unfold C
    simp [show (559872 * k + 122200) % 2 = 0 by omega]
    omega
  have h17 : C (279936 * k + 61100) = 139968 * k + 30550 := by
    unfold C
    simp [show (279936 * k + 61100) % 2 = 0 by omega]
    omega
  have h18 : C (139968 * k + 30550) = 69984 * k + 15275 := by
    unfold C
    simp [show (139968 * k + 30550) % 2 = 0 by omega]
    omega
  have h19 : C (69984 * k + 15275) = 209952 * k + 45826 := by
    unfold C
    simp [show (69984 * k + 15275) % 2 ≠ 0 by omega]
    omega
  have h20 : C (209952 * k + 45826) = 104976 * k + 22913 := by
    unfold C
    simp [show (209952 * k + 45826) % 2 = 0 by omega]
    omega
  have h21 : C (104976 * k + 22913) = 314928 * k + 68740 := by
    unfold C
    simp [show (104976 * k + 22913) % 2 ≠ 0 by omega]
    omega
  have h22 : C (314928 * k + 68740) = 157464 * k + 34370 := by
    unfold C
    simp [show (314928 * k + 68740) % 2 = 0 by omega]
    omega
  have h23 : C (157464 * k + 34370) = 78732 * k + 17185 := by
    unfold C
    simp [show (157464 * k + 34370) % 2 = 0 by omega]
    omega
  have h24 : C (78732 * k + 17185) = 236196 * k + 51556 := by
    unfold C
    simp [show (78732 * k + 17185) % 2 ≠ 0 by omega]
    omega
  have h25 : C (236196 * k + 51556) = 118098 * k + 25778 := by
    unfold C
    simp [show (236196 * k + 51556) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 25778) = 59049 * k + 12889 := by
    unfold C
    simp [show (118098 * k + 25778) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 14303) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 14303)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_14363 : ∀ k : Nat,
    iterate (65536 * k + 14363) 26 = 59049 * k + 12943 ∧
      59049 * k + 12943 < 65536 * k + 14363 := by
  intro k
  have h1 : C (65536 * k + 14363) = 196608 * k + 43090 := by
    unfold C
    simp [show (65536 * k + 14363) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 43090) = 98304 * k + 21545 := by
    unfold C
    simp [show (196608 * k + 43090) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 21545) = 294912 * k + 64636 := by
    unfold C
    simp [show (98304 * k + 21545) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 64636) = 147456 * k + 32318 := by
    unfold C
    simp [show (294912 * k + 64636) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 32318) = 73728 * k + 16159 := by
    unfold C
    simp [show (147456 * k + 32318) % 2 = 0 by omega]
    omega
  have h6 : C (73728 * k + 16159) = 221184 * k + 48478 := by
    unfold C
    simp [show (73728 * k + 16159) % 2 ≠ 0 by omega]
    omega
  have h7 : C (221184 * k + 48478) = 110592 * k + 24239 := by
    unfold C
    simp [show (221184 * k + 48478) % 2 = 0 by omega]
    omega
  have h8 : C (110592 * k + 24239) = 331776 * k + 72718 := by
    unfold C
    simp [show (110592 * k + 24239) % 2 ≠ 0 by omega]
    omega
  have h9 : C (331776 * k + 72718) = 165888 * k + 36359 := by
    unfold C
    simp [show (331776 * k + 72718) % 2 = 0 by omega]
    omega
  have h10 : C (165888 * k + 36359) = 497664 * k + 109078 := by
    unfold C
    simp [show (165888 * k + 36359) % 2 ≠ 0 by omega]
    omega
  have h11 : C (497664 * k + 109078) = 248832 * k + 54539 := by
    unfold C
    simp [show (497664 * k + 109078) % 2 = 0 by omega]
    omega
  have h12 : C (248832 * k + 54539) = 746496 * k + 163618 := by
    unfold C
    simp [show (248832 * k + 54539) % 2 ≠ 0 by omega]
    omega
  have h13 : C (746496 * k + 163618) = 373248 * k + 81809 := by
    unfold C
    simp [show (746496 * k + 163618) % 2 = 0 by omega]
    omega
  have h14 : C (373248 * k + 81809) = 1119744 * k + 245428 := by
    unfold C
    simp [show (373248 * k + 81809) % 2 ≠ 0 by omega]
    omega
  have h15 : C (1119744 * k + 245428) = 559872 * k + 122714 := by
    unfold C
    simp [show (1119744 * k + 245428) % 2 = 0 by omega]
    omega
  have h16 : C (559872 * k + 122714) = 279936 * k + 61357 := by
    unfold C
    simp [show (559872 * k + 122714) % 2 = 0 by omega]
    omega
  have h17 : C (279936 * k + 61357) = 839808 * k + 184072 := by
    unfold C
    simp [show (279936 * k + 61357) % 2 ≠ 0 by omega]
    omega
  have h18 : C (839808 * k + 184072) = 419904 * k + 92036 := by
    unfold C
    simp [show (839808 * k + 184072) % 2 = 0 by omega]
    omega
  have h19 : C (419904 * k + 92036) = 209952 * k + 46018 := by
    unfold C
    simp [show (419904 * k + 92036) % 2 = 0 by omega]
    omega
  have h20 : C (209952 * k + 46018) = 104976 * k + 23009 := by
    unfold C
    simp [show (209952 * k + 46018) % 2 = 0 by omega]
    omega
  have h21 : C (104976 * k + 23009) = 314928 * k + 69028 := by
    unfold C
    simp [show (104976 * k + 23009) % 2 ≠ 0 by omega]
    omega
  have h22 : C (314928 * k + 69028) = 157464 * k + 34514 := by
    unfold C
    simp [show (314928 * k + 69028) % 2 = 0 by omega]
    omega
  have h23 : C (157464 * k + 34514) = 78732 * k + 17257 := by
    unfold C
    simp [show (157464 * k + 34514) % 2 = 0 by omega]
    omega
  have h24 : C (78732 * k + 17257) = 236196 * k + 51772 := by
    unfold C
    simp [show (78732 * k + 17257) % 2 ≠ 0 by omega]
    omega
  have h25 : C (236196 * k + 51772) = 118098 * k + 25886 := by
    unfold C
    simp [show (236196 * k + 51772) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 25886) = 59049 * k + 12943 := by
    unfold C
    simp [show (118098 * k + 25886) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 14363) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 14363)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_14383 : ∀ k : Nat,
    iterate (65536 * k + 14383) 26 = 59049 * k + 12961 ∧
      59049 * k + 12961 < 65536 * k + 14383 := by
  intro k
  have h1 : C (65536 * k + 14383) = 196608 * k + 43150 := by
    unfold C
    simp [show (65536 * k + 14383) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 43150) = 98304 * k + 21575 := by
    unfold C
    simp [show (196608 * k + 43150) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 21575) = 294912 * k + 64726 := by
    unfold C
    simp [show (98304 * k + 21575) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 64726) = 147456 * k + 32363 := by
    unfold C
    simp [show (294912 * k + 64726) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 32363) = 442368 * k + 97090 := by
    unfold C
    simp [show (147456 * k + 32363) % 2 ≠ 0 by omega]
    omega
  have h6 : C (442368 * k + 97090) = 221184 * k + 48545 := by
    unfold C
    simp [show (442368 * k + 97090) % 2 = 0 by omega]
    omega
  have h7 : C (221184 * k + 48545) = 663552 * k + 145636 := by
    unfold C
    simp [show (221184 * k + 48545) % 2 ≠ 0 by omega]
    omega
  have h8 : C (663552 * k + 145636) = 331776 * k + 72818 := by
    unfold C
    simp [show (663552 * k + 145636) % 2 = 0 by omega]
    omega
  have h9 : C (331776 * k + 72818) = 165888 * k + 36409 := by
    unfold C
    simp [show (331776 * k + 72818) % 2 = 0 by omega]
    omega
  have h10 : C (165888 * k + 36409) = 497664 * k + 109228 := by
    unfold C
    simp [show (165888 * k + 36409) % 2 ≠ 0 by omega]
    omega
  have h11 : C (497664 * k + 109228) = 248832 * k + 54614 := by
    unfold C
    simp [show (497664 * k + 109228) % 2 = 0 by omega]
    omega
  have h12 : C (248832 * k + 54614) = 124416 * k + 27307 := by
    unfold C
    simp [show (248832 * k + 54614) % 2 = 0 by omega]
    omega
  have h13 : C (124416 * k + 27307) = 373248 * k + 81922 := by
    unfold C
    simp [show (124416 * k + 27307) % 2 ≠ 0 by omega]
    omega
  have h14 : C (373248 * k + 81922) = 186624 * k + 40961 := by
    unfold C
    simp [show (373248 * k + 81922) % 2 = 0 by omega]
    omega
  have h15 : C (186624 * k + 40961) = 559872 * k + 122884 := by
    unfold C
    simp [show (186624 * k + 40961) % 2 ≠ 0 by omega]
    omega
  have h16 : C (559872 * k + 122884) = 279936 * k + 61442 := by
    unfold C
    simp [show (559872 * k + 122884) % 2 = 0 by omega]
    omega
  have h17 : C (279936 * k + 61442) = 139968 * k + 30721 := by
    unfold C
    simp [show (279936 * k + 61442) % 2 = 0 by omega]
    omega
  have h18 : C (139968 * k + 30721) = 419904 * k + 92164 := by
    unfold C
    simp [show (139968 * k + 30721) % 2 ≠ 0 by omega]
    omega
  have h19 : C (419904 * k + 92164) = 209952 * k + 46082 := by
    unfold C
    simp [show (419904 * k + 92164) % 2 = 0 by omega]
    omega
  have h20 : C (209952 * k + 46082) = 104976 * k + 23041 := by
    unfold C
    simp [show (209952 * k + 46082) % 2 = 0 by omega]
    omega
  have h21 : C (104976 * k + 23041) = 314928 * k + 69124 := by
    unfold C
    simp [show (104976 * k + 23041) % 2 ≠ 0 by omega]
    omega
  have h22 : C (314928 * k + 69124) = 157464 * k + 34562 := by
    unfold C
    simp [show (314928 * k + 69124) % 2 = 0 by omega]
    omega
  have h23 : C (157464 * k + 34562) = 78732 * k + 17281 := by
    unfold C
    simp [show (157464 * k + 34562) % 2 = 0 by omega]
    omega
  have h24 : C (78732 * k + 17281) = 236196 * k + 51844 := by
    unfold C
    simp [show (78732 * k + 17281) % 2 ≠ 0 by omega]
    omega
  have h25 : C (236196 * k + 51844) = 118098 * k + 25922 := by
    unfold C
    simp [show (236196 * k + 51844) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 25922) = 59049 * k + 12961 := by
    unfold C
    simp [show (118098 * k + 25922) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 14383) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 14383)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

end CollatzM16ShardE
