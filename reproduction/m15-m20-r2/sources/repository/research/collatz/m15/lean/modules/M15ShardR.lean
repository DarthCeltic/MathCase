import Mathlib.Data.Nat.Prime.Basic

namespace CollatzM15ShardR

def C (n : Nat) : Nat := if n % 2 = 0 then n / 2 else 3 * n + 1

def iterate (n t : Nat) : Nat := Nat.rec n (fun _ previous => C previous) t

theorem descent_mod32768_25247 : ∀ k : Nat, iterate (32768 * k + 25247) 24 = 19683 * k + 15166 ∧ 19683 * k + 15166 < 32768 * k + 25247 := by
  intro k
  have h1 : C (32768 * k + 25247) = 98304 * k + 75742 := by
    unfold C
    simp [show (32768 * k + 25247) % 2 ≠ 0 by omega]
    omega
  have h2 : C (98304 * k + 75742) = 49152 * k + 37871 := by
    unfold C
    simp [show (98304 * k + 75742) % 2 = 0 by omega]
    omega
  have h3 : C (49152 * k + 37871) = 147456 * k + 113614 := by
    unfold C
    simp [show (49152 * k + 37871) % 2 ≠ 0 by omega]
    omega
  have h4 : C (147456 * k + 113614) = 73728 * k + 56807 := by
    unfold C
    simp [show (147456 * k + 113614) % 2 = 0 by omega]
    omega
  have h5 : C (73728 * k + 56807) = 221184 * k + 170422 := by
    unfold C
    simp [show (73728 * k + 56807) % 2 ≠ 0 by omega]
    omega
  have h6 : C (221184 * k + 170422) = 110592 * k + 85211 := by
    unfold C
    simp [show (221184 * k + 170422) % 2 = 0 by omega]
    omega
  have h7 : C (110592 * k + 85211) = 331776 * k + 255634 := by
    unfold C
    simp [show (110592 * k + 85211) % 2 ≠ 0 by omega]
    omega
  have h8 : C (331776 * k + 255634) = 165888 * k + 127817 := by
    unfold C
    simp [show (331776 * k + 255634) % 2 = 0 by omega]
    omega
  have h9 : C (165888 * k + 127817) = 497664 * k + 383452 := by
    unfold C
    simp [show (165888 * k + 127817) % 2 ≠ 0 by omega]
    omega
  have h10 : C (497664 * k + 383452) = 248832 * k + 191726 := by
    unfold C
    simp [show (497664 * k + 383452) % 2 = 0 by omega]
    omega
  have h11 : C (248832 * k + 191726) = 124416 * k + 95863 := by
    unfold C
    simp [show (248832 * k + 191726) % 2 = 0 by omega]
    omega
  have h12 : C (124416 * k + 95863) = 373248 * k + 287590 := by
    unfold C
    simp [show (124416 * k + 95863) % 2 ≠ 0 by omega]
    omega
  have h13 : C (373248 * k + 287590) = 186624 * k + 143795 := by
    unfold C
    simp [show (373248 * k + 287590) % 2 = 0 by omega]
    omega
  have h14 : C (186624 * k + 143795) = 559872 * k + 431386 := by
    unfold C
    simp [show (186624 * k + 143795) % 2 ≠ 0 by omega]
    omega
  have h15 : C (559872 * k + 431386) = 279936 * k + 215693 := by
    unfold C
    simp [show (559872 * k + 431386) % 2 = 0 by omega]
    omega
  have h16 : C (279936 * k + 215693) = 839808 * k + 647080 := by
    unfold C
    simp [show (279936 * k + 215693) % 2 ≠ 0 by omega]
    omega
  have h17 : C (839808 * k + 647080) = 419904 * k + 323540 := by
    unfold C
    simp [show (839808 * k + 647080) % 2 = 0 by omega]
    omega
  have h18 : C (419904 * k + 323540) = 209952 * k + 161770 := by
    unfold C
    simp [show (419904 * k + 323540) % 2 = 0 by omega]
    omega
  have h19 : C (209952 * k + 161770) = 104976 * k + 80885 := by
    unfold C
    simp [show (209952 * k + 161770) % 2 = 0 by omega]
    omega
  have h20 : C (104976 * k + 80885) = 314928 * k + 242656 := by
    unfold C
    simp [show (104976 * k + 80885) % 2 ≠ 0 by omega]
    omega
  have h21 : C (314928 * k + 242656) = 157464 * k + 121328 := by
    unfold C
    simp [show (314928 * k + 242656) % 2 = 0 by omega]
    omega
  have h22 : C (157464 * k + 121328) = 78732 * k + 60664 := by
    unfold C
    simp [show (157464 * k + 121328) % 2 = 0 by omega]
    omega
  have h23 : C (78732 * k + 60664) = 39366 * k + 30332 := by
    unfold C
    simp [show (78732 * k + 60664) % 2 = 0 by omega]
    omega
  have h24 : C (39366 * k + 30332) = 19683 * k + 15166 := by
    unfold C
    simp [show (39366 * k + 30332) % 2 = 0 by omega]
    omega
  have hIter : iterate (32768 * k + 25247) 24 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (32768 * k + 25247)))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24]
  · omega

theorem descent_mod32768_25503 : ∀ k : Nat, iterate (32768 * k + 25503) 24 = 19683 * k + 15320 ∧ 19683 * k + 15320 < 32768 * k + 25503 := by
  intro k
  have h1 : C (32768 * k + 25503) = 98304 * k + 76510 := by
    unfold C
    simp [show (32768 * k + 25503) % 2 ≠ 0 by omega]
    omega
  have h2 : C (98304 * k + 76510) = 49152 * k + 38255 := by
    unfold C
    simp [show (98304 * k + 76510) % 2 = 0 by omega]
    omega
  have h3 : C (49152 * k + 38255) = 147456 * k + 114766 := by
    unfold C
    simp [show (49152 * k + 38255) % 2 ≠ 0 by omega]
    omega
  have h4 : C (147456 * k + 114766) = 73728 * k + 57383 := by
    unfold C
    simp [show (147456 * k + 114766) % 2 = 0 by omega]
    omega
  have h5 : C (73728 * k + 57383) = 221184 * k + 172150 := by
    unfold C
    simp [show (73728 * k + 57383) % 2 ≠ 0 by omega]
    omega
  have h6 : C (221184 * k + 172150) = 110592 * k + 86075 := by
    unfold C
    simp [show (221184 * k + 172150) % 2 = 0 by omega]
    omega
  have h7 : C (110592 * k + 86075) = 331776 * k + 258226 := by
    unfold C
    simp [show (110592 * k + 86075) % 2 ≠ 0 by omega]
    omega
  have h8 : C (331776 * k + 258226) = 165888 * k + 129113 := by
    unfold C
    simp [show (331776 * k + 258226) % 2 = 0 by omega]
    omega
  have h9 : C (165888 * k + 129113) = 497664 * k + 387340 := by
    unfold C
    simp [show (165888 * k + 129113) % 2 ≠ 0 by omega]
    omega
  have h10 : C (497664 * k + 387340) = 248832 * k + 193670 := by
    unfold C
    simp [show (497664 * k + 387340) % 2 = 0 by omega]
    omega
  have h11 : C (248832 * k + 193670) = 124416 * k + 96835 := by
    unfold C
    simp [show (248832 * k + 193670) % 2 = 0 by omega]
    omega
  have h12 : C (124416 * k + 96835) = 373248 * k + 290506 := by
    unfold C
    simp [show (124416 * k + 96835) % 2 ≠ 0 by omega]
    omega
  have h13 : C (373248 * k + 290506) = 186624 * k + 145253 := by
    unfold C
    simp [show (373248 * k + 290506) % 2 = 0 by omega]
    omega
  have h14 : C (186624 * k + 145253) = 559872 * k + 435760 := by
    unfold C
    simp [show (186624 * k + 145253) % 2 ≠ 0 by omega]
    omega
  have h15 : C (559872 * k + 435760) = 279936 * k + 217880 := by
    unfold C
    simp [show (559872 * k + 435760) % 2 = 0 by omega]
    omega
  have h16 : C (279936 * k + 217880) = 139968 * k + 108940 := by
    unfold C
    simp [show (279936 * k + 217880) % 2 = 0 by omega]
    omega
  have h17 : C (139968 * k + 108940) = 69984 * k + 54470 := by
    unfold C
    simp [show (139968 * k + 108940) % 2 = 0 by omega]
    omega
  have h18 : C (69984 * k + 54470) = 34992 * k + 27235 := by
    unfold C
    simp [show (69984 * k + 54470) % 2 = 0 by omega]
    omega
  have h19 : C (34992 * k + 27235) = 104976 * k + 81706 := by
    unfold C
    simp [show (34992 * k + 27235) % 2 ≠ 0 by omega]
    omega
  have h20 : C (104976 * k + 81706) = 52488 * k + 40853 := by
    unfold C
    simp [show (104976 * k + 81706) % 2 = 0 by omega]
    omega
  have h21 : C (52488 * k + 40853) = 157464 * k + 122560 := by
    unfold C
    simp [show (52488 * k + 40853) % 2 ≠ 0 by omega]
    omega
  have h22 : C (157464 * k + 122560) = 78732 * k + 61280 := by
    unfold C
    simp [show (157464 * k + 122560) % 2 = 0 by omega]
    omega
  have h23 : C (78732 * k + 61280) = 39366 * k + 30640 := by
    unfold C
    simp [show (78732 * k + 61280) % 2 = 0 by omega]
    omega
  have h24 : C (39366 * k + 30640) = 19683 * k + 15320 := by
    unfold C
    simp [show (39366 * k + 30640) % 2 = 0 by omega]
    omega
  have hIter : iterate (32768 * k + 25503) 24 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (32768 * k + 25503)))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24]
  · omega

theorem descent_mod32768_25583 : ∀ k : Nat, iterate (32768 * k + 25583) 24 = 19683 * k + 15368 ∧ 19683 * k + 15368 < 32768 * k + 25583 := by
  intro k
  have h1 : C (32768 * k + 25583) = 98304 * k + 76750 := by
    unfold C
    simp [show (32768 * k + 25583) % 2 ≠ 0 by omega]
    omega
  have h2 : C (98304 * k + 76750) = 49152 * k + 38375 := by
    unfold C
    simp [show (98304 * k + 76750) % 2 = 0 by omega]
    omega
  have h3 : C (49152 * k + 38375) = 147456 * k + 115126 := by
    unfold C
    simp [show (49152 * k + 38375) % 2 ≠ 0 by omega]
    omega
  have h4 : C (147456 * k + 115126) = 73728 * k + 57563 := by
    unfold C
    simp [show (147456 * k + 115126) % 2 = 0 by omega]
    omega
  have h5 : C (73728 * k + 57563) = 221184 * k + 172690 := by
    unfold C
    simp [show (73728 * k + 57563) % 2 ≠ 0 by omega]
    omega
  have h6 : C (221184 * k + 172690) = 110592 * k + 86345 := by
    unfold C
    simp [show (221184 * k + 172690) % 2 = 0 by omega]
    omega
  have h7 : C (110592 * k + 86345) = 331776 * k + 259036 := by
    unfold C
    simp [show (110592 * k + 86345) % 2 ≠ 0 by omega]
    omega
  have h8 : C (331776 * k + 259036) = 165888 * k + 129518 := by
    unfold C
    simp [show (331776 * k + 259036) % 2 = 0 by omega]
    omega
  have h9 : C (165888 * k + 129518) = 82944 * k + 64759 := by
    unfold C
    simp [show (165888 * k + 129518) % 2 = 0 by omega]
    omega
  have h10 : C (82944 * k + 64759) = 248832 * k + 194278 := by
    unfold C
    simp [show (82944 * k + 64759) % 2 ≠ 0 by omega]
    omega
  have h11 : C (248832 * k + 194278) = 124416 * k + 97139 := by
    unfold C
    simp [show (248832 * k + 194278) % 2 = 0 by omega]
    omega
  have h12 : C (124416 * k + 97139) = 373248 * k + 291418 := by
    unfold C
    simp [show (124416 * k + 97139) % 2 ≠ 0 by omega]
    omega
  have h13 : C (373248 * k + 291418) = 186624 * k + 145709 := by
    unfold C
    simp [show (373248 * k + 291418) % 2 = 0 by omega]
    omega
  have h14 : C (186624 * k + 145709) = 559872 * k + 437128 := by
    unfold C
    simp [show (186624 * k + 145709) % 2 ≠ 0 by omega]
    omega
  have h15 : C (559872 * k + 437128) = 279936 * k + 218564 := by
    unfold C
    simp [show (559872 * k + 437128) % 2 = 0 by omega]
    omega
  have h16 : C (279936 * k + 218564) = 139968 * k + 109282 := by
    unfold C
    simp [show (279936 * k + 218564) % 2 = 0 by omega]
    omega
  have h17 : C (139968 * k + 109282) = 69984 * k + 54641 := by
    unfold C
    simp [show (139968 * k + 109282) % 2 = 0 by omega]
    omega
  have h18 : C (69984 * k + 54641) = 209952 * k + 163924 := by
    unfold C
    simp [show (69984 * k + 54641) % 2 ≠ 0 by omega]
    omega
  have h19 : C (209952 * k + 163924) = 104976 * k + 81962 := by
    unfold C
    simp [show (209952 * k + 163924) % 2 = 0 by omega]
    omega
  have h20 : C (104976 * k + 81962) = 52488 * k + 40981 := by
    unfold C
    simp [show (104976 * k + 81962) % 2 = 0 by omega]
    omega
  have h21 : C (52488 * k + 40981) = 157464 * k + 122944 := by
    unfold C
    simp [show (52488 * k + 40981) % 2 ≠ 0 by omega]
    omega
  have h22 : C (157464 * k + 122944) = 78732 * k + 61472 := by
    unfold C
    simp [show (157464 * k + 122944) % 2 = 0 by omega]
    omega
  have h23 : C (78732 * k + 61472) = 39366 * k + 30736 := by
    unfold C
    simp [show (78732 * k + 61472) % 2 = 0 by omega]
    omega
  have h24 : C (39366 * k + 30736) = 19683 * k + 15368 := by
    unfold C
    simp [show (39366 * k + 30736) % 2 = 0 by omega]
    omega
  have hIter : iterate (32768 * k + 25583) 24 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (32768 * k + 25583)))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24]
  · omega

theorem descent_mod32768_25691 : ∀ k : Nat, iterate (32768 * k + 25691) 24 = 19683 * k + 15433 ∧ 19683 * k + 15433 < 32768 * k + 25691 := by
  intro k
  have h1 : C (32768 * k + 25691) = 98304 * k + 77074 := by
    unfold C
    simp [show (32768 * k + 25691) % 2 ≠ 0 by omega]
    omega
  have h2 : C (98304 * k + 77074) = 49152 * k + 38537 := by
    unfold C
    simp [show (98304 * k + 77074) % 2 = 0 by omega]
    omega
  have h3 : C (49152 * k + 38537) = 147456 * k + 115612 := by
    unfold C
    simp [show (49152 * k + 38537) % 2 ≠ 0 by omega]
    omega
  have h4 : C (147456 * k + 115612) = 73728 * k + 57806 := by
    unfold C
    simp [show (147456 * k + 115612) % 2 = 0 by omega]
    omega
  have h5 : C (73728 * k + 57806) = 36864 * k + 28903 := by
    unfold C
    simp [show (73728 * k + 57806) % 2 = 0 by omega]
    omega
  have h6 : C (36864 * k + 28903) = 110592 * k + 86710 := by
    unfold C
    simp [show (36864 * k + 28903) % 2 ≠ 0 by omega]
    omega
  have h7 : C (110592 * k + 86710) = 55296 * k + 43355 := by
    unfold C
    simp [show (110592 * k + 86710) % 2 = 0 by omega]
    omega
  have h8 : C (55296 * k + 43355) = 165888 * k + 130066 := by
    unfold C
    simp [show (55296 * k + 43355) % 2 ≠ 0 by omega]
    omega
  have h9 : C (165888 * k + 130066) = 82944 * k + 65033 := by
    unfold C
    simp [show (165888 * k + 130066) % 2 = 0 by omega]
    omega
  have h10 : C (82944 * k + 65033) = 248832 * k + 195100 := by
    unfold C
    simp [show (82944 * k + 65033) % 2 ≠ 0 by omega]
    omega
  have h11 : C (248832 * k + 195100) = 124416 * k + 97550 := by
    unfold C
    simp [show (248832 * k + 195100) % 2 = 0 by omega]
    omega
  have h12 : C (124416 * k + 97550) = 62208 * k + 48775 := by
    unfold C
    simp [show (124416 * k + 97550) % 2 = 0 by omega]
    omega
  have h13 : C (62208 * k + 48775) = 186624 * k + 146326 := by
    unfold C
    simp [show (62208 * k + 48775) % 2 ≠ 0 by omega]
    omega
  have h14 : C (186624 * k + 146326) = 93312 * k + 73163 := by
    unfold C
    simp [show (186624 * k + 146326) % 2 = 0 by omega]
    omega
  have h15 : C (93312 * k + 73163) = 279936 * k + 219490 := by
    unfold C
    simp [show (93312 * k + 73163) % 2 ≠ 0 by omega]
    omega
  have h16 : C (279936 * k + 219490) = 139968 * k + 109745 := by
    unfold C
    simp [show (279936 * k + 219490) % 2 = 0 by omega]
    omega
  have h17 : C (139968 * k + 109745) = 419904 * k + 329236 := by
    unfold C
    simp [show (139968 * k + 109745) % 2 ≠ 0 by omega]
    omega
  have h18 : C (419904 * k + 329236) = 209952 * k + 164618 := by
    unfold C
    simp [show (419904 * k + 329236) % 2 = 0 by omega]
    omega
  have h19 : C (209952 * k + 164618) = 104976 * k + 82309 := by
    unfold C
    simp [show (209952 * k + 164618) % 2 = 0 by omega]
    omega
  have h20 : C (104976 * k + 82309) = 314928 * k + 246928 := by
    unfold C
    simp [show (104976 * k + 82309) % 2 ≠ 0 by omega]
    omega
  have h21 : C (314928 * k + 246928) = 157464 * k + 123464 := by
    unfold C
    simp [show (314928 * k + 246928) % 2 = 0 by omega]
    omega
  have h22 : C (157464 * k + 123464) = 78732 * k + 61732 := by
    unfold C
    simp [show (157464 * k + 123464) % 2 = 0 by omega]
    omega
  have h23 : C (78732 * k + 61732) = 39366 * k + 30866 := by
    unfold C
    simp [show (78732 * k + 61732) % 2 = 0 by omega]
    omega
  have h24 : C (39366 * k + 30866) = 19683 * k + 15433 := by
    unfold C
    simp [show (39366 * k + 30866) % 2 = 0 by omega]
    omega
  have hIter : iterate (32768 * k + 25691) 24 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (32768 * k + 25691)))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24]
  · omega

theorem descent_mod32768_25703 : ∀ k : Nat, iterate (32768 * k + 25703) 24 = 19683 * k + 15440 ∧ 19683 * k + 15440 < 32768 * k + 25703 := by
  intro k
  have h1 : C (32768 * k + 25703) = 98304 * k + 77110 := by
    unfold C
    simp [show (32768 * k + 25703) % 2 ≠ 0 by omega]
    omega
  have h2 : C (98304 * k + 77110) = 49152 * k + 38555 := by
    unfold C
    simp [show (98304 * k + 77110) % 2 = 0 by omega]
    omega
  have h3 : C (49152 * k + 38555) = 147456 * k + 115666 := by
    unfold C
    simp [show (49152 * k + 38555) % 2 ≠ 0 by omega]
    omega
  have h4 : C (147456 * k + 115666) = 73728 * k + 57833 := by
    unfold C
    simp [show (147456 * k + 115666) % 2 = 0 by omega]
    omega
  have h5 : C (73728 * k + 57833) = 221184 * k + 173500 := by
    unfold C
    simp [show (73728 * k + 57833) % 2 ≠ 0 by omega]
    omega
  have h6 : C (221184 * k + 173500) = 110592 * k + 86750 := by
    unfold C
    simp [show (221184 * k + 173500) % 2 = 0 by omega]
    omega
  have h7 : C (110592 * k + 86750) = 55296 * k + 43375 := by
    unfold C
    simp [show (110592 * k + 86750) % 2 = 0 by omega]
    omega
  have h8 : C (55296 * k + 43375) = 165888 * k + 130126 := by
    unfold C
    simp [show (55296 * k + 43375) % 2 ≠ 0 by omega]
    omega
  have h9 : C (165888 * k + 130126) = 82944 * k + 65063 := by
    unfold C
    simp [show (165888 * k + 130126) % 2 = 0 by omega]
    omega
  have h10 : C (82944 * k + 65063) = 248832 * k + 195190 := by
    unfold C
    simp [show (82944 * k + 65063) % 2 ≠ 0 by omega]
    omega
  have h11 : C (248832 * k + 195190) = 124416 * k + 97595 := by
    unfold C
    simp [show (248832 * k + 195190) % 2 = 0 by omega]
    omega
  have h12 : C (124416 * k + 97595) = 373248 * k + 292786 := by
    unfold C
    simp [show (124416 * k + 97595) % 2 ≠ 0 by omega]
    omega
  have h13 : C (373248 * k + 292786) = 186624 * k + 146393 := by
    unfold C
    simp [show (373248 * k + 292786) % 2 = 0 by omega]
    omega
  have h14 : C (186624 * k + 146393) = 559872 * k + 439180 := by
    unfold C
    simp [show (186624 * k + 146393) % 2 ≠ 0 by omega]
    omega
  have h15 : C (559872 * k + 439180) = 279936 * k + 219590 := by
    unfold C
    simp [show (559872 * k + 439180) % 2 = 0 by omega]
    omega
  have h16 : C (279936 * k + 219590) = 139968 * k + 109795 := by
    unfold C
    simp [show (279936 * k + 219590) % 2 = 0 by omega]
    omega
  have h17 : C (139968 * k + 109795) = 419904 * k + 329386 := by
    unfold C
    simp [show (139968 * k + 109795) % 2 ≠ 0 by omega]
    omega
  have h18 : C (419904 * k + 329386) = 209952 * k + 164693 := by
    unfold C
    simp [show (419904 * k + 329386) % 2 = 0 by omega]
    omega
  have h19 : C (209952 * k + 164693) = 629856 * k + 494080 := by
    unfold C
    simp [show (209952 * k + 164693) % 2 ≠ 0 by omega]
    omega
  have h20 : C (629856 * k + 494080) = 314928 * k + 247040 := by
    unfold C
    simp [show (629856 * k + 494080) % 2 = 0 by omega]
    omega
  have h21 : C (314928 * k + 247040) = 157464 * k + 123520 := by
    unfold C
    simp [show (314928 * k + 247040) % 2 = 0 by omega]
    omega
  have h22 : C (157464 * k + 123520) = 78732 * k + 61760 := by
    unfold C
    simp [show (157464 * k + 123520) % 2 = 0 by omega]
    omega
  have h23 : C (78732 * k + 61760) = 39366 * k + 30880 := by
    unfold C
    simp [show (78732 * k + 61760) % 2 = 0 by omega]
    omega
  have h24 : C (39366 * k + 30880) = 19683 * k + 15440 := by
    unfold C
    simp [show (39366 * k + 30880) % 2 = 0 by omega]
    omega
  have hIter : iterate (32768 * k + 25703) 24 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (32768 * k + 25703)))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24]
  · omega

theorem descent_mod32768_25831 : ∀ k : Nat, iterate (32768 * k + 25831) 24 = 19683 * k + 15517 ∧ 19683 * k + 15517 < 32768 * k + 25831 := by
  intro k
  have h1 : C (32768 * k + 25831) = 98304 * k + 77494 := by
    unfold C
    simp [show (32768 * k + 25831) % 2 ≠ 0 by omega]
    omega
  have h2 : C (98304 * k + 77494) = 49152 * k + 38747 := by
    unfold C
    simp [show (98304 * k + 77494) % 2 = 0 by omega]
    omega
  have h3 : C (49152 * k + 38747) = 147456 * k + 116242 := by
    unfold C
    simp [show (49152 * k + 38747) % 2 ≠ 0 by omega]
    omega
  have h4 : C (147456 * k + 116242) = 73728 * k + 58121 := by
    unfold C
    simp [show (147456 * k + 116242) % 2 = 0 by omega]
    omega
  have h5 : C (73728 * k + 58121) = 221184 * k + 174364 := by
    unfold C
    simp [show (73728 * k + 58121) % 2 ≠ 0 by omega]
    omega
  have h6 : C (221184 * k + 174364) = 110592 * k + 87182 := by
    unfold C
    simp [show (221184 * k + 174364) % 2 = 0 by omega]
    omega
  have h7 : C (110592 * k + 87182) = 55296 * k + 43591 := by
    unfold C
    simp [show (110592 * k + 87182) % 2 = 0 by omega]
    omega
  have h8 : C (55296 * k + 43591) = 165888 * k + 130774 := by
    unfold C
    simp [show (55296 * k + 43591) % 2 ≠ 0 by omega]
    omega
  have h9 : C (165888 * k + 130774) = 82944 * k + 65387 := by
    unfold C
    simp [show (165888 * k + 130774) % 2 = 0 by omega]
    omega
  have h10 : C (82944 * k + 65387) = 248832 * k + 196162 := by
    unfold C
    simp [show (82944 * k + 65387) % 2 ≠ 0 by omega]
    omega
  have h11 : C (248832 * k + 196162) = 124416 * k + 98081 := by
    unfold C
    simp [show (248832 * k + 196162) % 2 = 0 by omega]
    omega
  have h12 : C (124416 * k + 98081) = 373248 * k + 294244 := by
    unfold C
    simp [show (124416 * k + 98081) % 2 ≠ 0 by omega]
    omega
  have h13 : C (373248 * k + 294244) = 186624 * k + 147122 := by
    unfold C
    simp [show (373248 * k + 294244) % 2 = 0 by omega]
    omega
  have h14 : C (186624 * k + 147122) = 93312 * k + 73561 := by
    unfold C
    simp [show (186624 * k + 147122) % 2 = 0 by omega]
    omega
  have h15 : C (93312 * k + 73561) = 279936 * k + 220684 := by
    unfold C
    simp [show (93312 * k + 73561) % 2 ≠ 0 by omega]
    omega
  have h16 : C (279936 * k + 220684) = 139968 * k + 110342 := by
    unfold C
    simp [show (279936 * k + 220684) % 2 = 0 by omega]
    omega
  have h17 : C (139968 * k + 110342) = 69984 * k + 55171 := by
    unfold C
    simp [show (139968 * k + 110342) % 2 = 0 by omega]
    omega
  have h18 : C (69984 * k + 55171) = 209952 * k + 165514 := by
    unfold C
    simp [show (69984 * k + 55171) % 2 ≠ 0 by omega]
    omega
  have h19 : C (209952 * k + 165514) = 104976 * k + 82757 := by
    unfold C
    simp [show (209952 * k + 165514) % 2 = 0 by omega]
    omega
  have h20 : C (104976 * k + 82757) = 314928 * k + 248272 := by
    unfold C
    simp [show (104976 * k + 82757) % 2 ≠ 0 by omega]
    omega
  have h21 : C (314928 * k + 248272) = 157464 * k + 124136 := by
    unfold C
    simp [show (314928 * k + 248272) % 2 = 0 by omega]
    omega
  have h22 : C (157464 * k + 124136) = 78732 * k + 62068 := by
    unfold C
    simp [show (157464 * k + 124136) % 2 = 0 by omega]
    omega
  have h23 : C (78732 * k + 62068) = 39366 * k + 31034 := by
    unfold C
    simp [show (78732 * k + 62068) % 2 = 0 by omega]
    omega
  have h24 : C (39366 * k + 31034) = 19683 * k + 15517 := by
    unfold C
    simp [show (39366 * k + 31034) % 2 = 0 by omega]
    omega
  have hIter : iterate (32768 * k + 25831) 24 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (32768 * k + 25831)))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24]
  · omega

theorem descent_mod32768_26087 : ∀ k : Nat, iterate (32768 * k + 26087) 24 = 19683 * k + 15671 ∧ 19683 * k + 15671 < 32768 * k + 26087 := by
  intro k
  have h1 : C (32768 * k + 26087) = 98304 * k + 78262 := by
    unfold C
    simp [show (32768 * k + 26087) % 2 ≠ 0 by omega]
    omega
  have h2 : C (98304 * k + 78262) = 49152 * k + 39131 := by
    unfold C
    simp [show (98304 * k + 78262) % 2 = 0 by omega]
    omega
  have h3 : C (49152 * k + 39131) = 147456 * k + 117394 := by
    unfold C
    simp [show (49152 * k + 39131) % 2 ≠ 0 by omega]
    omega
  have h4 : C (147456 * k + 117394) = 73728 * k + 58697 := by
    unfold C
    simp [show (147456 * k + 117394) % 2 = 0 by omega]
    omega
  have h5 : C (73728 * k + 58697) = 221184 * k + 176092 := by
    unfold C
    simp [show (73728 * k + 58697) % 2 ≠ 0 by omega]
    omega
  have h6 : C (221184 * k + 176092) = 110592 * k + 88046 := by
    unfold C
    simp [show (221184 * k + 176092) % 2 = 0 by omega]
    omega
  have h7 : C (110592 * k + 88046) = 55296 * k + 44023 := by
    unfold C
    simp [show (110592 * k + 88046) % 2 = 0 by omega]
    omega
  have h8 : C (55296 * k + 44023) = 165888 * k + 132070 := by
    unfold C
    simp [show (55296 * k + 44023) % 2 ≠ 0 by omega]
    omega
  have h9 : C (165888 * k + 132070) = 82944 * k + 66035 := by
    unfold C
    simp [show (165888 * k + 132070) % 2 = 0 by omega]
    omega
  have h10 : C (82944 * k + 66035) = 248832 * k + 198106 := by
    unfold C
    simp [show (82944 * k + 66035) % 2 ≠ 0 by omega]
    omega
  have h11 : C (248832 * k + 198106) = 124416 * k + 99053 := by
    unfold C
    simp [show (248832 * k + 198106) % 2 = 0 by omega]
    omega
  have h12 : C (124416 * k + 99053) = 373248 * k + 297160 := by
    unfold C
    simp [show (124416 * k + 99053) % 2 ≠ 0 by omega]
    omega
  have h13 : C (373248 * k + 297160) = 186624 * k + 148580 := by
    unfold C
    simp [show (373248 * k + 297160) % 2 = 0 by omega]
    omega
  have h14 : C (186624 * k + 148580) = 93312 * k + 74290 := by
    unfold C
    simp [show (186624 * k + 148580) % 2 = 0 by omega]
    omega
  have h15 : C (93312 * k + 74290) = 46656 * k + 37145 := by
    unfold C
    simp [show (93312 * k + 74290) % 2 = 0 by omega]
    omega
  have h16 : C (46656 * k + 37145) = 139968 * k + 111436 := by
    unfold C
    simp [show (46656 * k + 37145) % 2 ≠ 0 by omega]
    omega
  have h17 : C (139968 * k + 111436) = 69984 * k + 55718 := by
    unfold C
    simp [show (139968 * k + 111436) % 2 = 0 by omega]
    omega
  have h18 : C (69984 * k + 55718) = 34992 * k + 27859 := by
    unfold C
    simp [show (69984 * k + 55718) % 2 = 0 by omega]
    omega
  have h19 : C (34992 * k + 27859) = 104976 * k + 83578 := by
    unfold C
    simp [show (34992 * k + 27859) % 2 ≠ 0 by omega]
    omega
  have h20 : C (104976 * k + 83578) = 52488 * k + 41789 := by
    unfold C
    simp [show (104976 * k + 83578) % 2 = 0 by omega]
    omega
  have h21 : C (52488 * k + 41789) = 157464 * k + 125368 := by
    unfold C
    simp [show (52488 * k + 41789) % 2 ≠ 0 by omega]
    omega
  have h22 : C (157464 * k + 125368) = 78732 * k + 62684 := by
    unfold C
    simp [show (157464 * k + 125368) % 2 = 0 by omega]
    omega
  have h23 : C (78732 * k + 62684) = 39366 * k + 31342 := by
    unfold C
    simp [show (78732 * k + 62684) % 2 = 0 by omega]
    omega
  have h24 : C (39366 * k + 31342) = 19683 * k + 15671 := by
    unfold C
    simp [show (39366 * k + 31342) % 2 = 0 by omega]
    omega
  have hIter : iterate (32768 * k + 26087) 24 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (32768 * k + 26087)))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24]
  · omega

theorem descent_mod32768_26267 : ∀ k : Nat, iterate (32768 * k + 26267) 24 = 19683 * k + 15779 ∧ 19683 * k + 15779 < 32768 * k + 26267 := by
  intro k
  have h1 : C (32768 * k + 26267) = 98304 * k + 78802 := by
    unfold C
    simp [show (32768 * k + 26267) % 2 ≠ 0 by omega]
    omega
  have h2 : C (98304 * k + 78802) = 49152 * k + 39401 := by
    unfold C
    simp [show (98304 * k + 78802) % 2 = 0 by omega]
    omega
  have h3 : C (49152 * k + 39401) = 147456 * k + 118204 := by
    unfold C
    simp [show (49152 * k + 39401) % 2 ≠ 0 by omega]
    omega
  have h4 : C (147456 * k + 118204) = 73728 * k + 59102 := by
    unfold C
    simp [show (147456 * k + 118204) % 2 = 0 by omega]
    omega
  have h5 : C (73728 * k + 59102) = 36864 * k + 29551 := by
    unfold C
    simp [show (73728 * k + 59102) % 2 = 0 by omega]
    omega
  have h6 : C (36864 * k + 29551) = 110592 * k + 88654 := by
    unfold C
    simp [show (36864 * k + 29551) % 2 ≠ 0 by omega]
    omega
  have h7 : C (110592 * k + 88654) = 55296 * k + 44327 := by
    unfold C
    simp [show (110592 * k + 88654) % 2 = 0 by omega]
    omega
  have h8 : C (55296 * k + 44327) = 165888 * k + 132982 := by
    unfold C
    simp [show (55296 * k + 44327) % 2 ≠ 0 by omega]
    omega
  have h9 : C (165888 * k + 132982) = 82944 * k + 66491 := by
    unfold C
    simp [show (165888 * k + 132982) % 2 = 0 by omega]
    omega
  have h10 : C (82944 * k + 66491) = 248832 * k + 199474 := by
    unfold C
    simp [show (82944 * k + 66491) % 2 ≠ 0 by omega]
    omega
  have h11 : C (248832 * k + 199474) = 124416 * k + 99737 := by
    unfold C
    simp [show (248832 * k + 199474) % 2 = 0 by omega]
    omega
  have h12 : C (124416 * k + 99737) = 373248 * k + 299212 := by
    unfold C
    simp [show (124416 * k + 99737) % 2 ≠ 0 by omega]
    omega
  have h13 : C (373248 * k + 299212) = 186624 * k + 149606 := by
    unfold C
    simp [show (373248 * k + 299212) % 2 = 0 by omega]
    omega
  have h14 : C (186624 * k + 149606) = 93312 * k + 74803 := by
    unfold C
    simp [show (186624 * k + 149606) % 2 = 0 by omega]
    omega
  have h15 : C (93312 * k + 74803) = 279936 * k + 224410 := by
    unfold C
    simp [show (93312 * k + 74803) % 2 ≠ 0 by omega]
    omega
  have h16 : C (279936 * k + 224410) = 139968 * k + 112205 := by
    unfold C
    simp [show (279936 * k + 224410) % 2 = 0 by omega]
    omega
  have h17 : C (139968 * k + 112205) = 419904 * k + 336616 := by
    unfold C
    simp [show (139968 * k + 112205) % 2 ≠ 0 by omega]
    omega
  have h18 : C (419904 * k + 336616) = 209952 * k + 168308 := by
    unfold C
    simp [show (419904 * k + 336616) % 2 = 0 by omega]
    omega
  have h19 : C (209952 * k + 168308) = 104976 * k + 84154 := by
    unfold C
    simp [show (209952 * k + 168308) % 2 = 0 by omega]
    omega
  have h20 : C (104976 * k + 84154) = 52488 * k + 42077 := by
    unfold C
    simp [show (104976 * k + 84154) % 2 = 0 by omega]
    omega
  have h21 : C (52488 * k + 42077) = 157464 * k + 126232 := by
    unfold C
    simp [show (52488 * k + 42077) % 2 ≠ 0 by omega]
    omega
  have h22 : C (157464 * k + 126232) = 78732 * k + 63116 := by
    unfold C
    simp [show (157464 * k + 126232) % 2 = 0 by omega]
    omega
  have h23 : C (78732 * k + 63116) = 39366 * k + 31558 := by
    unfold C
    simp [show (78732 * k + 63116) % 2 = 0 by omega]
    omega
  have h24 : C (39366 * k + 31558) = 19683 * k + 15779 := by
    unfold C
    simp [show (39366 * k + 31558) % 2 = 0 by omega]
    omega
  have hIter : iterate (32768 * k + 26267) 24 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (32768 * k + 26267)))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24]
  · omega

#print axioms descent_mod32768_25247
#print axioms descent_mod32768_25503
#print axioms descent_mod32768_25583
#print axioms descent_mod32768_25691
#print axioms descent_mod32768_25703
#print axioms descent_mod32768_25831
#print axioms descent_mod32768_26087
#print axioms descent_mod32768_26267

end CollatzM15ShardR
