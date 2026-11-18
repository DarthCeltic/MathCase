import Mathlib.Data.Nat.Prime.Basic

namespace CollatzM16ShardG

def C (n : Nat) : Nat := if n % 2 = 0 then n / 2 else 3 * n + 1

def iterate (n t : Nat) : Nat := Nat.rec n (fun _ previous => C previous) t

theorem descent_mod65536_16831 : ∀ k : Nat,
    iterate (65536 * k + 16831) 26 = 59049 * k + 15166 ∧
      59049 * k + 15166 < 65536 * k + 16831 := by
  intro k
  have h1 : C (65536 * k + 16831) = 196608 * k + 50494 := by
    unfold C
    simp [show (65536 * k + 16831) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 50494) = 98304 * k + 25247 := by
    unfold C
    simp [show (196608 * k + 50494) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 25247) = 294912 * k + 75742 := by
    unfold C
    simp [show (98304 * k + 25247) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 75742) = 147456 * k + 37871 := by
    unfold C
    simp [show (294912 * k + 75742) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 37871) = 442368 * k + 113614 := by
    unfold C
    simp [show (147456 * k + 37871) % 2 ≠ 0 by omega]
    omega
  have h6 : C (442368 * k + 113614) = 221184 * k + 56807 := by
    unfold C
    simp [show (442368 * k + 113614) % 2 = 0 by omega]
    omega
  have h7 : C (221184 * k + 56807) = 663552 * k + 170422 := by
    unfold C
    simp [show (221184 * k + 56807) % 2 ≠ 0 by omega]
    omega
  have h8 : C (663552 * k + 170422) = 331776 * k + 85211 := by
    unfold C
    simp [show (663552 * k + 170422) % 2 = 0 by omega]
    omega
  have h9 : C (331776 * k + 85211) = 995328 * k + 255634 := by
    unfold C
    simp [show (331776 * k + 85211) % 2 ≠ 0 by omega]
    omega
  have h10 : C (995328 * k + 255634) = 497664 * k + 127817 := by
    unfold C
    simp [show (995328 * k + 255634) % 2 = 0 by omega]
    omega
  have h11 : C (497664 * k + 127817) = 1492992 * k + 383452 := by
    unfold C
    simp [show (497664 * k + 127817) % 2 ≠ 0 by omega]
    omega
  have h12 : C (1492992 * k + 383452) = 746496 * k + 191726 := by
    unfold C
    simp [show (1492992 * k + 383452) % 2 = 0 by omega]
    omega
  have h13 : C (746496 * k + 191726) = 373248 * k + 95863 := by
    unfold C
    simp [show (746496 * k + 191726) % 2 = 0 by omega]
    omega
  have h14 : C (373248 * k + 95863) = 1119744 * k + 287590 := by
    unfold C
    simp [show (373248 * k + 95863) % 2 ≠ 0 by omega]
    omega
  have h15 : C (1119744 * k + 287590) = 559872 * k + 143795 := by
    unfold C
    simp [show (1119744 * k + 287590) % 2 = 0 by omega]
    omega
  have h16 : C (559872 * k + 143795) = 1679616 * k + 431386 := by
    unfold C
    simp [show (559872 * k + 143795) % 2 ≠ 0 by omega]
    omega
  have h17 : C (1679616 * k + 431386) = 839808 * k + 215693 := by
    unfold C
    simp [show (1679616 * k + 431386) % 2 = 0 by omega]
    omega
  have h18 : C (839808 * k + 215693) = 2519424 * k + 647080 := by
    unfold C
    simp [show (839808 * k + 215693) % 2 ≠ 0 by omega]
    omega
  have h19 : C (2519424 * k + 647080) = 1259712 * k + 323540 := by
    unfold C
    simp [show (2519424 * k + 647080) % 2 = 0 by omega]
    omega
  have h20 : C (1259712 * k + 323540) = 629856 * k + 161770 := by
    unfold C
    simp [show (1259712 * k + 323540) % 2 = 0 by omega]
    omega
  have h21 : C (629856 * k + 161770) = 314928 * k + 80885 := by
    unfold C
    simp [show (629856 * k + 161770) % 2 = 0 by omega]
    omega
  have h22 : C (314928 * k + 80885) = 944784 * k + 242656 := by
    unfold C
    simp [show (314928 * k + 80885) % 2 ≠ 0 by omega]
    omega
  have h23 : C (944784 * k + 242656) = 472392 * k + 121328 := by
    unfold C
    simp [show (944784 * k + 242656) % 2 = 0 by omega]
    omega
  have h24 : C (472392 * k + 121328) = 236196 * k + 60664 := by
    unfold C
    simp [show (472392 * k + 121328) % 2 = 0 by omega]
    omega
  have h25 : C (236196 * k + 60664) = 118098 * k + 30332 := by
    unfold C
    simp [show (236196 * k + 60664) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 30332) = 59049 * k + 15166 := by
    unfold C
    simp [show (118098 * k + 30332) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 16831) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 16831)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_17055 : ∀ k : Nat,
    iterate (65536 * k + 17055) 26 = 59049 * k + 15368 ∧
      59049 * k + 15368 < 65536 * k + 17055 := by
  intro k
  have h1 : C (65536 * k + 17055) = 196608 * k + 51166 := by
    unfold C
    simp [show (65536 * k + 17055) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 51166) = 98304 * k + 25583 := by
    unfold C
    simp [show (196608 * k + 51166) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 25583) = 294912 * k + 76750 := by
    unfold C
    simp [show (98304 * k + 25583) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 76750) = 147456 * k + 38375 := by
    unfold C
    simp [show (294912 * k + 76750) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 38375) = 442368 * k + 115126 := by
    unfold C
    simp [show (147456 * k + 38375) % 2 ≠ 0 by omega]
    omega
  have h6 : C (442368 * k + 115126) = 221184 * k + 57563 := by
    unfold C
    simp [show (442368 * k + 115126) % 2 = 0 by omega]
    omega
  have h7 : C (221184 * k + 57563) = 663552 * k + 172690 := by
    unfold C
    simp [show (221184 * k + 57563) % 2 ≠ 0 by omega]
    omega
  have h8 : C (663552 * k + 172690) = 331776 * k + 86345 := by
    unfold C
    simp [show (663552 * k + 172690) % 2 = 0 by omega]
    omega
  have h9 : C (331776 * k + 86345) = 995328 * k + 259036 := by
    unfold C
    simp [show (331776 * k + 86345) % 2 ≠ 0 by omega]
    omega
  have h10 : C (995328 * k + 259036) = 497664 * k + 129518 := by
    unfold C
    simp [show (995328 * k + 259036) % 2 = 0 by omega]
    omega
  have h11 : C (497664 * k + 129518) = 248832 * k + 64759 := by
    unfold C
    simp [show (497664 * k + 129518) % 2 = 0 by omega]
    omega
  have h12 : C (248832 * k + 64759) = 746496 * k + 194278 := by
    unfold C
    simp [show (248832 * k + 64759) % 2 ≠ 0 by omega]
    omega
  have h13 : C (746496 * k + 194278) = 373248 * k + 97139 := by
    unfold C
    simp [show (746496 * k + 194278) % 2 = 0 by omega]
    omega
  have h14 : C (373248 * k + 97139) = 1119744 * k + 291418 := by
    unfold C
    simp [show (373248 * k + 97139) % 2 ≠ 0 by omega]
    omega
  have h15 : C (1119744 * k + 291418) = 559872 * k + 145709 := by
    unfold C
    simp [show (1119744 * k + 291418) % 2 = 0 by omega]
    omega
  have h16 : C (559872 * k + 145709) = 1679616 * k + 437128 := by
    unfold C
    simp [show (559872 * k + 145709) % 2 ≠ 0 by omega]
    omega
  have h17 : C (1679616 * k + 437128) = 839808 * k + 218564 := by
    unfold C
    simp [show (1679616 * k + 437128) % 2 = 0 by omega]
    omega
  have h18 : C (839808 * k + 218564) = 419904 * k + 109282 := by
    unfold C
    simp [show (839808 * k + 218564) % 2 = 0 by omega]
    omega
  have h19 : C (419904 * k + 109282) = 209952 * k + 54641 := by
    unfold C
    simp [show (419904 * k + 109282) % 2 = 0 by omega]
    omega
  have h20 : C (209952 * k + 54641) = 629856 * k + 163924 := by
    unfold C
    simp [show (209952 * k + 54641) % 2 ≠ 0 by omega]
    omega
  have h21 : C (629856 * k + 163924) = 314928 * k + 81962 := by
    unfold C
    simp [show (629856 * k + 163924) % 2 = 0 by omega]
    omega
  have h22 : C (314928 * k + 81962) = 157464 * k + 40981 := by
    unfold C
    simp [show (314928 * k + 81962) % 2 = 0 by omega]
    omega
  have h23 : C (157464 * k + 40981) = 472392 * k + 122944 := by
    unfold C
    simp [show (157464 * k + 40981) % 2 ≠ 0 by omega]
    omega
  have h24 : C (472392 * k + 122944) = 236196 * k + 61472 := by
    unfold C
    simp [show (472392 * k + 122944) % 2 = 0 by omega]
    omega
  have h25 : C (236196 * k + 61472) = 118098 * k + 30736 := by
    unfold C
    simp [show (236196 * k + 61472) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 30736) = 59049 * k + 15368 := by
    unfold C
    simp [show (118098 * k + 30736) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 17055) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 17055)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_17127 : ∀ k : Nat,
    iterate (65536 * k + 17127) 26 = 59049 * k + 15433 ∧
      59049 * k + 15433 < 65536 * k + 17127 := by
  intro k
  have h1 : C (65536 * k + 17127) = 196608 * k + 51382 := by
    unfold C
    simp [show (65536 * k + 17127) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 51382) = 98304 * k + 25691 := by
    unfold C
    simp [show (196608 * k + 51382) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 25691) = 294912 * k + 77074 := by
    unfold C
    simp [show (98304 * k + 25691) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 77074) = 147456 * k + 38537 := by
    unfold C
    simp [show (294912 * k + 77074) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 38537) = 442368 * k + 115612 := by
    unfold C
    simp [show (147456 * k + 38537) % 2 ≠ 0 by omega]
    omega
  have h6 : C (442368 * k + 115612) = 221184 * k + 57806 := by
    unfold C
    simp [show (442368 * k + 115612) % 2 = 0 by omega]
    omega
  have h7 : C (221184 * k + 57806) = 110592 * k + 28903 := by
    unfold C
    simp [show (221184 * k + 57806) % 2 = 0 by omega]
    omega
  have h8 : C (110592 * k + 28903) = 331776 * k + 86710 := by
    unfold C
    simp [show (110592 * k + 28903) % 2 ≠ 0 by omega]
    omega
  have h9 : C (331776 * k + 86710) = 165888 * k + 43355 := by
    unfold C
    simp [show (331776 * k + 86710) % 2 = 0 by omega]
    omega
  have h10 : C (165888 * k + 43355) = 497664 * k + 130066 := by
    unfold C
    simp [show (165888 * k + 43355) % 2 ≠ 0 by omega]
    omega
  have h11 : C (497664 * k + 130066) = 248832 * k + 65033 := by
    unfold C
    simp [show (497664 * k + 130066) % 2 = 0 by omega]
    omega
  have h12 : C (248832 * k + 65033) = 746496 * k + 195100 := by
    unfold C
    simp [show (248832 * k + 65033) % 2 ≠ 0 by omega]
    omega
  have h13 : C (746496 * k + 195100) = 373248 * k + 97550 := by
    unfold C
    simp [show (746496 * k + 195100) % 2 = 0 by omega]
    omega
  have h14 : C (373248 * k + 97550) = 186624 * k + 48775 := by
    unfold C
    simp [show (373248 * k + 97550) % 2 = 0 by omega]
    omega
  have h15 : C (186624 * k + 48775) = 559872 * k + 146326 := by
    unfold C
    simp [show (186624 * k + 48775) % 2 ≠ 0 by omega]
    omega
  have h16 : C (559872 * k + 146326) = 279936 * k + 73163 := by
    unfold C
    simp [show (559872 * k + 146326) % 2 = 0 by omega]
    omega
  have h17 : C (279936 * k + 73163) = 839808 * k + 219490 := by
    unfold C
    simp [show (279936 * k + 73163) % 2 ≠ 0 by omega]
    omega
  have h18 : C (839808 * k + 219490) = 419904 * k + 109745 := by
    unfold C
    simp [show (839808 * k + 219490) % 2 = 0 by omega]
    omega
  have h19 : C (419904 * k + 109745) = 1259712 * k + 329236 := by
    unfold C
    simp [show (419904 * k + 109745) % 2 ≠ 0 by omega]
    omega
  have h20 : C (1259712 * k + 329236) = 629856 * k + 164618 := by
    unfold C
    simp [show (1259712 * k + 329236) % 2 = 0 by omega]
    omega
  have h21 : C (629856 * k + 164618) = 314928 * k + 82309 := by
    unfold C
    simp [show (629856 * k + 164618) % 2 = 0 by omega]
    omega
  have h22 : C (314928 * k + 82309) = 944784 * k + 246928 := by
    unfold C
    simp [show (314928 * k + 82309) % 2 ≠ 0 by omega]
    omega
  have h23 : C (944784 * k + 246928) = 472392 * k + 123464 := by
    unfold C
    simp [show (944784 * k + 246928) % 2 = 0 by omega]
    omega
  have h24 : C (472392 * k + 123464) = 236196 * k + 61732 := by
    unfold C
    simp [show (472392 * k + 123464) % 2 = 0 by omega]
    omega
  have h25 : C (236196 * k + 61732) = 118098 * k + 30866 := by
    unfold C
    simp [show (236196 * k + 61732) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 30866) = 59049 * k + 15433 := by
    unfold C
    simp [show (118098 * k + 30866) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 17127) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 17127)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_17135 : ∀ k : Nat,
    iterate (65536 * k + 17135) 26 = 59049 * k + 15440 ∧
      59049 * k + 15440 < 65536 * k + 17135 := by
  intro k
  have h1 : C (65536 * k + 17135) = 196608 * k + 51406 := by
    unfold C
    simp [show (65536 * k + 17135) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 51406) = 98304 * k + 25703 := by
    unfold C
    simp [show (196608 * k + 51406) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 25703) = 294912 * k + 77110 := by
    unfold C
    simp [show (98304 * k + 25703) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 77110) = 147456 * k + 38555 := by
    unfold C
    simp [show (294912 * k + 77110) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 38555) = 442368 * k + 115666 := by
    unfold C
    simp [show (147456 * k + 38555) % 2 ≠ 0 by omega]
    omega
  have h6 : C (442368 * k + 115666) = 221184 * k + 57833 := by
    unfold C
    simp [show (442368 * k + 115666) % 2 = 0 by omega]
    omega
  have h7 : C (221184 * k + 57833) = 663552 * k + 173500 := by
    unfold C
    simp [show (221184 * k + 57833) % 2 ≠ 0 by omega]
    omega
  have h8 : C (663552 * k + 173500) = 331776 * k + 86750 := by
    unfold C
    simp [show (663552 * k + 173500) % 2 = 0 by omega]
    omega
  have h9 : C (331776 * k + 86750) = 165888 * k + 43375 := by
    unfold C
    simp [show (331776 * k + 86750) % 2 = 0 by omega]
    omega
  have h10 : C (165888 * k + 43375) = 497664 * k + 130126 := by
    unfold C
    simp [show (165888 * k + 43375) % 2 ≠ 0 by omega]
    omega
  have h11 : C (497664 * k + 130126) = 248832 * k + 65063 := by
    unfold C
    simp [show (497664 * k + 130126) % 2 = 0 by omega]
    omega
  have h12 : C (248832 * k + 65063) = 746496 * k + 195190 := by
    unfold C
    simp [show (248832 * k + 65063) % 2 ≠ 0 by omega]
    omega
  have h13 : C (746496 * k + 195190) = 373248 * k + 97595 := by
    unfold C
    simp [show (746496 * k + 195190) % 2 = 0 by omega]
    omega
  have h14 : C (373248 * k + 97595) = 1119744 * k + 292786 := by
    unfold C
    simp [show (373248 * k + 97595) % 2 ≠ 0 by omega]
    omega
  have h15 : C (1119744 * k + 292786) = 559872 * k + 146393 := by
    unfold C
    simp [show (1119744 * k + 292786) % 2 = 0 by omega]
    omega
  have h16 : C (559872 * k + 146393) = 1679616 * k + 439180 := by
    unfold C
    simp [show (559872 * k + 146393) % 2 ≠ 0 by omega]
    omega
  have h17 : C (1679616 * k + 439180) = 839808 * k + 219590 := by
    unfold C
    simp [show (1679616 * k + 439180) % 2 = 0 by omega]
    omega
  have h18 : C (839808 * k + 219590) = 419904 * k + 109795 := by
    unfold C
    simp [show (839808 * k + 219590) % 2 = 0 by omega]
    omega
  have h19 : C (419904 * k + 109795) = 1259712 * k + 329386 := by
    unfold C
    simp [show (419904 * k + 109795) % 2 ≠ 0 by omega]
    omega
  have h20 : C (1259712 * k + 329386) = 629856 * k + 164693 := by
    unfold C
    simp [show (1259712 * k + 329386) % 2 = 0 by omega]
    omega
  have h21 : C (629856 * k + 164693) = 1889568 * k + 494080 := by
    unfold C
    simp [show (629856 * k + 164693) % 2 ≠ 0 by omega]
    omega
  have h22 : C (1889568 * k + 494080) = 944784 * k + 247040 := by
    unfold C
    simp [show (1889568 * k + 494080) % 2 = 0 by omega]
    omega
  have h23 : C (944784 * k + 247040) = 472392 * k + 123520 := by
    unfold C
    simp [show (944784 * k + 247040) % 2 = 0 by omega]
    omega
  have h24 : C (472392 * k + 123520) = 236196 * k + 61760 := by
    unfold C
    simp [show (472392 * k + 123520) % 2 = 0 by omega]
    omega
  have h25 : C (236196 * k + 61760) = 118098 * k + 30880 := by
    unfold C
    simp [show (236196 * k + 61760) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 30880) = 59049 * k + 15440 := by
    unfold C
    simp [show (118098 * k + 30880) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 17135) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 17135)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_17223 : ∀ k : Nat,
    iterate (65536 * k + 17223) 26 = 59049 * k + 15520 ∧
      59049 * k + 15520 < 65536 * k + 17223 := by
  intro k
  have h1 : C (65536 * k + 17223) = 196608 * k + 51670 := by
    unfold C
    simp [show (65536 * k + 17223) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 51670) = 98304 * k + 25835 := by
    unfold C
    simp [show (196608 * k + 51670) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 25835) = 294912 * k + 77506 := by
    unfold C
    simp [show (98304 * k + 25835) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 77506) = 147456 * k + 38753 := by
    unfold C
    simp [show (294912 * k + 77506) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 38753) = 442368 * k + 116260 := by
    unfold C
    simp [show (147456 * k + 38753) % 2 ≠ 0 by omega]
    omega
  have h6 : C (442368 * k + 116260) = 221184 * k + 58130 := by
    unfold C
    simp [show (442368 * k + 116260) % 2 = 0 by omega]
    omega
  have h7 : C (221184 * k + 58130) = 110592 * k + 29065 := by
    unfold C
    simp [show (221184 * k + 58130) % 2 = 0 by omega]
    omega
  have h8 : C (110592 * k + 29065) = 331776 * k + 87196 := by
    unfold C
    simp [show (110592 * k + 29065) % 2 ≠ 0 by omega]
    omega
  have h9 : C (331776 * k + 87196) = 165888 * k + 43598 := by
    unfold C
    simp [show (331776 * k + 87196) % 2 = 0 by omega]
    omega
  have h10 : C (165888 * k + 43598) = 82944 * k + 21799 := by
    unfold C
    simp [show (165888 * k + 43598) % 2 = 0 by omega]
    omega
  have h11 : C (82944 * k + 21799) = 248832 * k + 65398 := by
    unfold C
    simp [show (82944 * k + 21799) % 2 ≠ 0 by omega]
    omega
  have h12 : C (248832 * k + 65398) = 124416 * k + 32699 := by
    unfold C
    simp [show (248832 * k + 65398) % 2 = 0 by omega]
    omega
  have h13 : C (124416 * k + 32699) = 373248 * k + 98098 := by
    unfold C
    simp [show (124416 * k + 32699) % 2 ≠ 0 by omega]
    omega
  have h14 : C (373248 * k + 98098) = 186624 * k + 49049 := by
    unfold C
    simp [show (373248 * k + 98098) % 2 = 0 by omega]
    omega
  have h15 : C (186624 * k + 49049) = 559872 * k + 147148 := by
    unfold C
    simp [show (186624 * k + 49049) % 2 ≠ 0 by omega]
    omega
  have h16 : C (559872 * k + 147148) = 279936 * k + 73574 := by
    unfold C
    simp [show (559872 * k + 147148) % 2 = 0 by omega]
    omega
  have h17 : C (279936 * k + 73574) = 139968 * k + 36787 := by
    unfold C
    simp [show (279936 * k + 73574) % 2 = 0 by omega]
    omega
  have h18 : C (139968 * k + 36787) = 419904 * k + 110362 := by
    unfold C
    simp [show (139968 * k + 36787) % 2 ≠ 0 by omega]
    omega
  have h19 : C (419904 * k + 110362) = 209952 * k + 55181 := by
    unfold C
    simp [show (419904 * k + 110362) % 2 = 0 by omega]
    omega
  have h20 : C (209952 * k + 55181) = 629856 * k + 165544 := by
    unfold C
    simp [show (209952 * k + 55181) % 2 ≠ 0 by omega]
    omega
  have h21 : C (629856 * k + 165544) = 314928 * k + 82772 := by
    unfold C
    simp [show (629856 * k + 165544) % 2 = 0 by omega]
    omega
  have h22 : C (314928 * k + 82772) = 157464 * k + 41386 := by
    unfold C
    simp [show (314928 * k + 82772) % 2 = 0 by omega]
    omega
  have h23 : C (157464 * k + 41386) = 78732 * k + 20693 := by
    unfold C
    simp [show (157464 * k + 41386) % 2 = 0 by omega]
    omega
  have h24 : C (78732 * k + 20693) = 236196 * k + 62080 := by
    unfold C
    simp [show (78732 * k + 20693) % 2 ≠ 0 by omega]
    omega
  have h25 : C (236196 * k + 62080) = 118098 * k + 31040 := by
    unfold C
    simp [show (236196 * k + 62080) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 31040) = 59049 * k + 15520 := by
    unfold C
    simp [show (118098 * k + 31040) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 17223) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 17223)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_17311 : ∀ k : Nat,
    iterate (65536 * k + 17311) 26 = 59049 * k + 15599 ∧
      59049 * k + 15599 < 65536 * k + 17311 := by
  intro k
  have h1 : C (65536 * k + 17311) = 196608 * k + 51934 := by
    unfold C
    simp [show (65536 * k + 17311) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 51934) = 98304 * k + 25967 := by
    unfold C
    simp [show (196608 * k + 51934) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 25967) = 294912 * k + 77902 := by
    unfold C
    simp [show (98304 * k + 25967) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 77902) = 147456 * k + 38951 := by
    unfold C
    simp [show (294912 * k + 77902) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 38951) = 442368 * k + 116854 := by
    unfold C
    simp [show (147456 * k + 38951) % 2 ≠ 0 by omega]
    omega
  have h6 : C (442368 * k + 116854) = 221184 * k + 58427 := by
    unfold C
    simp [show (442368 * k + 116854) % 2 = 0 by omega]
    omega
  have h7 : C (221184 * k + 58427) = 663552 * k + 175282 := by
    unfold C
    simp [show (221184 * k + 58427) % 2 ≠ 0 by omega]
    omega
  have h8 : C (663552 * k + 175282) = 331776 * k + 87641 := by
    unfold C
    simp [show (663552 * k + 175282) % 2 = 0 by omega]
    omega
  have h9 : C (331776 * k + 87641) = 995328 * k + 262924 := by
    unfold C
    simp [show (331776 * k + 87641) % 2 ≠ 0 by omega]
    omega
  have h10 : C (995328 * k + 262924) = 497664 * k + 131462 := by
    unfold C
    simp [show (995328 * k + 262924) % 2 = 0 by omega]
    omega
  have h11 : C (497664 * k + 131462) = 248832 * k + 65731 := by
    unfold C
    simp [show (497664 * k + 131462) % 2 = 0 by omega]
    omega
  have h12 : C (248832 * k + 65731) = 746496 * k + 197194 := by
    unfold C
    simp [show (248832 * k + 65731) % 2 ≠ 0 by omega]
    omega
  have h13 : C (746496 * k + 197194) = 373248 * k + 98597 := by
    unfold C
    simp [show (746496 * k + 197194) % 2 = 0 by omega]
    omega
  have h14 : C (373248 * k + 98597) = 1119744 * k + 295792 := by
    unfold C
    simp [show (373248 * k + 98597) % 2 ≠ 0 by omega]
    omega
  have h15 : C (1119744 * k + 295792) = 559872 * k + 147896 := by
    unfold C
    simp [show (1119744 * k + 295792) % 2 = 0 by omega]
    omega
  have h16 : C (559872 * k + 147896) = 279936 * k + 73948 := by
    unfold C
    simp [show (559872 * k + 147896) % 2 = 0 by omega]
    omega
  have h17 : C (279936 * k + 73948) = 139968 * k + 36974 := by
    unfold C
    simp [show (279936 * k + 73948) % 2 = 0 by omega]
    omega
  have h18 : C (139968 * k + 36974) = 69984 * k + 18487 := by
    unfold C
    simp [show (139968 * k + 36974) % 2 = 0 by omega]
    omega
  have h19 : C (69984 * k + 18487) = 209952 * k + 55462 := by
    unfold C
    simp [show (69984 * k + 18487) % 2 ≠ 0 by omega]
    omega
  have h20 : C (209952 * k + 55462) = 104976 * k + 27731 := by
    unfold C
    simp [show (209952 * k + 55462) % 2 = 0 by omega]
    omega
  have h21 : C (104976 * k + 27731) = 314928 * k + 83194 := by
    unfold C
    simp [show (104976 * k + 27731) % 2 ≠ 0 by omega]
    omega
  have h22 : C (314928 * k + 83194) = 157464 * k + 41597 := by
    unfold C
    simp [show (314928 * k + 83194) % 2 = 0 by omega]
    omega
  have h23 : C (157464 * k + 41597) = 472392 * k + 124792 := by
    unfold C
    simp [show (157464 * k + 41597) % 2 ≠ 0 by omega]
    omega
  have h24 : C (472392 * k + 124792) = 236196 * k + 62396 := by
    unfold C
    simp [show (472392 * k + 124792) % 2 = 0 by omega]
    omega
  have h25 : C (236196 * k + 62396) = 118098 * k + 31198 := by
    unfold C
    simp [show (236196 * k + 62396) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 31198) = 59049 * k + 15599 := by
    unfold C
    simp [show (118098 * k + 31198) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 17311) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 17311)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_17391 : ∀ k : Nat,
    iterate (65536 * k + 17391) 26 = 59049 * k + 15671 ∧
      59049 * k + 15671 < 65536 * k + 17391 := by
  intro k
  have h1 : C (65536 * k + 17391) = 196608 * k + 52174 := by
    unfold C
    simp [show (65536 * k + 17391) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 52174) = 98304 * k + 26087 := by
    unfold C
    simp [show (196608 * k + 52174) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 26087) = 294912 * k + 78262 := by
    unfold C
    simp [show (98304 * k + 26087) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 78262) = 147456 * k + 39131 := by
    unfold C
    simp [show (294912 * k + 78262) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 39131) = 442368 * k + 117394 := by
    unfold C
    simp [show (147456 * k + 39131) % 2 ≠ 0 by omega]
    omega
  have h6 : C (442368 * k + 117394) = 221184 * k + 58697 := by
    unfold C
    simp [show (442368 * k + 117394) % 2 = 0 by omega]
    omega
  have h7 : C (221184 * k + 58697) = 663552 * k + 176092 := by
    unfold C
    simp [show (221184 * k + 58697) % 2 ≠ 0 by omega]
    omega
  have h8 : C (663552 * k + 176092) = 331776 * k + 88046 := by
    unfold C
    simp [show (663552 * k + 176092) % 2 = 0 by omega]
    omega
  have h9 : C (331776 * k + 88046) = 165888 * k + 44023 := by
    unfold C
    simp [show (331776 * k + 88046) % 2 = 0 by omega]
    omega
  have h10 : C (165888 * k + 44023) = 497664 * k + 132070 := by
    unfold C
    simp [show (165888 * k + 44023) % 2 ≠ 0 by omega]
    omega
  have h11 : C (497664 * k + 132070) = 248832 * k + 66035 := by
    unfold C
    simp [show (497664 * k + 132070) % 2 = 0 by omega]
    omega
  have h12 : C (248832 * k + 66035) = 746496 * k + 198106 := by
    unfold C
    simp [show (248832 * k + 66035) % 2 ≠ 0 by omega]
    omega
  have h13 : C (746496 * k + 198106) = 373248 * k + 99053 := by
    unfold C
    simp [show (746496 * k + 198106) % 2 = 0 by omega]
    omega
  have h14 : C (373248 * k + 99053) = 1119744 * k + 297160 := by
    unfold C
    simp [show (373248 * k + 99053) % 2 ≠ 0 by omega]
    omega
  have h15 : C (1119744 * k + 297160) = 559872 * k + 148580 := by
    unfold C
    simp [show (1119744 * k + 297160) % 2 = 0 by omega]
    omega
  have h16 : C (559872 * k + 148580) = 279936 * k + 74290 := by
    unfold C
    simp [show (559872 * k + 148580) % 2 = 0 by omega]
    omega
  have h17 : C (279936 * k + 74290) = 139968 * k + 37145 := by
    unfold C
    simp [show (279936 * k + 74290) % 2 = 0 by omega]
    omega
  have h18 : C (139968 * k + 37145) = 419904 * k + 111436 := by
    unfold C
    simp [show (139968 * k + 37145) % 2 ≠ 0 by omega]
    omega
  have h19 : C (419904 * k + 111436) = 209952 * k + 55718 := by
    unfold C
    simp [show (419904 * k + 111436) % 2 = 0 by omega]
    omega
  have h20 : C (209952 * k + 55718) = 104976 * k + 27859 := by
    unfold C
    simp [show (209952 * k + 55718) % 2 = 0 by omega]
    omega
  have h21 : C (104976 * k + 27859) = 314928 * k + 83578 := by
    unfold C
    simp [show (104976 * k + 27859) % 2 ≠ 0 by omega]
    omega
  have h22 : C (314928 * k + 83578) = 157464 * k + 41789 := by
    unfold C
    simp [show (314928 * k + 83578) % 2 = 0 by omega]
    omega
  have h23 : C (157464 * k + 41789) = 472392 * k + 125368 := by
    unfold C
    simp [show (157464 * k + 41789) % 2 ≠ 0 by omega]
    omega
  have h24 : C (472392 * k + 125368) = 236196 * k + 62684 := by
    unfold C
    simp [show (472392 * k + 125368) % 2 = 0 by omega]
    omega
  have h25 : C (236196 * k + 62684) = 118098 * k + 31342 := by
    unfold C
    simp [show (236196 * k + 62684) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 31342) = 59049 * k + 15671 := by
    unfold C
    simp [show (118098 * k + 31342) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 17391) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 17391)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_17479 : ∀ k : Nat,
    iterate (65536 * k + 17479) 26 = 59049 * k + 15751 ∧
      59049 * k + 15751 < 65536 * k + 17479 := by
  intro k
  have h1 : C (65536 * k + 17479) = 196608 * k + 52438 := by
    unfold C
    simp [show (65536 * k + 17479) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 52438) = 98304 * k + 26219 := by
    unfold C
    simp [show (196608 * k + 52438) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 26219) = 294912 * k + 78658 := by
    unfold C
    simp [show (98304 * k + 26219) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 78658) = 147456 * k + 39329 := by
    unfold C
    simp [show (294912 * k + 78658) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 39329) = 442368 * k + 117988 := by
    unfold C
    simp [show (147456 * k + 39329) % 2 ≠ 0 by omega]
    omega
  have h6 : C (442368 * k + 117988) = 221184 * k + 58994 := by
    unfold C
    simp [show (442368 * k + 117988) % 2 = 0 by omega]
    omega
  have h7 : C (221184 * k + 58994) = 110592 * k + 29497 := by
    unfold C
    simp [show (221184 * k + 58994) % 2 = 0 by omega]
    omega
  have h8 : C (110592 * k + 29497) = 331776 * k + 88492 := by
    unfold C
    simp [show (110592 * k + 29497) % 2 ≠ 0 by omega]
    omega
  have h9 : C (331776 * k + 88492) = 165888 * k + 44246 := by
    unfold C
    simp [show (331776 * k + 88492) % 2 = 0 by omega]
    omega
  have h10 : C (165888 * k + 44246) = 82944 * k + 22123 := by
    unfold C
    simp [show (165888 * k + 44246) % 2 = 0 by omega]
    omega
  have h11 : C (82944 * k + 22123) = 248832 * k + 66370 := by
    unfold C
    simp [show (82944 * k + 22123) % 2 ≠ 0 by omega]
    omega
  have h12 : C (248832 * k + 66370) = 124416 * k + 33185 := by
    unfold C
    simp [show (248832 * k + 66370) % 2 = 0 by omega]
    omega
  have h13 : C (124416 * k + 33185) = 373248 * k + 99556 := by
    unfold C
    simp [show (124416 * k + 33185) % 2 ≠ 0 by omega]
    omega
  have h14 : C (373248 * k + 99556) = 186624 * k + 49778 := by
    unfold C
    simp [show (373248 * k + 99556) % 2 = 0 by omega]
    omega
  have h15 : C (186624 * k + 49778) = 93312 * k + 24889 := by
    unfold C
    simp [show (186624 * k + 49778) % 2 = 0 by omega]
    omega
  have h16 : C (93312 * k + 24889) = 279936 * k + 74668 := by
    unfold C
    simp [show (93312 * k + 24889) % 2 ≠ 0 by omega]
    omega
  have h17 : C (279936 * k + 74668) = 139968 * k + 37334 := by
    unfold C
    simp [show (279936 * k + 74668) % 2 = 0 by omega]
    omega
  have h18 : C (139968 * k + 37334) = 69984 * k + 18667 := by
    unfold C
    simp [show (139968 * k + 37334) % 2 = 0 by omega]
    omega
  have h19 : C (69984 * k + 18667) = 209952 * k + 56002 := by
    unfold C
    simp [show (69984 * k + 18667) % 2 ≠ 0 by omega]
    omega
  have h20 : C (209952 * k + 56002) = 104976 * k + 28001 := by
    unfold C
    simp [show (209952 * k + 56002) % 2 = 0 by omega]
    omega
  have h21 : C (104976 * k + 28001) = 314928 * k + 84004 := by
    unfold C
    simp [show (104976 * k + 28001) % 2 ≠ 0 by omega]
    omega
  have h22 : C (314928 * k + 84004) = 157464 * k + 42002 := by
    unfold C
    simp [show (314928 * k + 84004) % 2 = 0 by omega]
    omega
  have h23 : C (157464 * k + 42002) = 78732 * k + 21001 := by
    unfold C
    simp [show (157464 * k + 42002) % 2 = 0 by omega]
    omega
  have h24 : C (78732 * k + 21001) = 236196 * k + 63004 := by
    unfold C
    simp [show (78732 * k + 21001) % 2 ≠ 0 by omega]
    omega
  have h25 : C (236196 * k + 63004) = 118098 * k + 31502 := by
    unfold C
    simp [show (236196 * k + 63004) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 31502) = 59049 * k + 15751 := by
    unfold C
    simp [show (118098 * k + 31502) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 17479) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 17479)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_17511 : ∀ k : Nat,
    iterate (65536 * k + 17511) 26 = 59049 * k + 15779 ∧
      59049 * k + 15779 < 65536 * k + 17511 := by
  intro k
  have h1 : C (65536 * k + 17511) = 196608 * k + 52534 := by
    unfold C
    simp [show (65536 * k + 17511) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 52534) = 98304 * k + 26267 := by
    unfold C
    simp [show (196608 * k + 52534) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 26267) = 294912 * k + 78802 := by
    unfold C
    simp [show (98304 * k + 26267) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 78802) = 147456 * k + 39401 := by
    unfold C
    simp [show (294912 * k + 78802) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 39401) = 442368 * k + 118204 := by
    unfold C
    simp [show (147456 * k + 39401) % 2 ≠ 0 by omega]
    omega
  have h6 : C (442368 * k + 118204) = 221184 * k + 59102 := by
    unfold C
    simp [show (442368 * k + 118204) % 2 = 0 by omega]
    omega
  have h7 : C (221184 * k + 59102) = 110592 * k + 29551 := by
    unfold C
    simp [show (221184 * k + 59102) % 2 = 0 by omega]
    omega
  have h8 : C (110592 * k + 29551) = 331776 * k + 88654 := by
    unfold C
    simp [show (110592 * k + 29551) % 2 ≠ 0 by omega]
    omega
  have h9 : C (331776 * k + 88654) = 165888 * k + 44327 := by
    unfold C
    simp [show (331776 * k + 88654) % 2 = 0 by omega]
    omega
  have h10 : C (165888 * k + 44327) = 497664 * k + 132982 := by
    unfold C
    simp [show (165888 * k + 44327) % 2 ≠ 0 by omega]
    omega
  have h11 : C (497664 * k + 132982) = 248832 * k + 66491 := by
    unfold C
    simp [show (497664 * k + 132982) % 2 = 0 by omega]
    omega
  have h12 : C (248832 * k + 66491) = 746496 * k + 199474 := by
    unfold C
    simp [show (248832 * k + 66491) % 2 ≠ 0 by omega]
    omega
  have h13 : C (746496 * k + 199474) = 373248 * k + 99737 := by
    unfold C
    simp [show (746496 * k + 199474) % 2 = 0 by omega]
    omega
  have h14 : C (373248 * k + 99737) = 1119744 * k + 299212 := by
    unfold C
    simp [show (373248 * k + 99737) % 2 ≠ 0 by omega]
    omega
  have h15 : C (1119744 * k + 299212) = 559872 * k + 149606 := by
    unfold C
    simp [show (1119744 * k + 299212) % 2 = 0 by omega]
    omega
  have h16 : C (559872 * k + 149606) = 279936 * k + 74803 := by
    unfold C
    simp [show (559872 * k + 149606) % 2 = 0 by omega]
    omega
  have h17 : C (279936 * k + 74803) = 839808 * k + 224410 := by
    unfold C
    simp [show (279936 * k + 74803) % 2 ≠ 0 by omega]
    omega
  have h18 : C (839808 * k + 224410) = 419904 * k + 112205 := by
    unfold C
    simp [show (839808 * k + 224410) % 2 = 0 by omega]
    omega
  have h19 : C (419904 * k + 112205) = 1259712 * k + 336616 := by
    unfold C
    simp [show (419904 * k + 112205) % 2 ≠ 0 by omega]
    omega
  have h20 : C (1259712 * k + 336616) = 629856 * k + 168308 := by
    unfold C
    simp [show (1259712 * k + 336616) % 2 = 0 by omega]
    omega
  have h21 : C (629856 * k + 168308) = 314928 * k + 84154 := by
    unfold C
    simp [show (629856 * k + 168308) % 2 = 0 by omega]
    omega
  have h22 : C (314928 * k + 84154) = 157464 * k + 42077 := by
    unfold C
    simp [show (314928 * k + 84154) % 2 = 0 by omega]
    omega
  have h23 : C (157464 * k + 42077) = 472392 * k + 126232 := by
    unfold C
    simp [show (157464 * k + 42077) % 2 ≠ 0 by omega]
    omega
  have h24 : C (472392 * k + 126232) = 236196 * k + 63116 := by
    unfold C
    simp [show (472392 * k + 126232) % 2 = 0 by omega]
    omega
  have h25 : C (236196 * k + 63116) = 118098 * k + 31558 := by
    unfold C
    simp [show (236196 * k + 63116) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 31558) = 59049 * k + 15779 := by
    unfold C
    simp [show (118098 * k + 31558) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 17511) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 17511)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_17659 : ∀ k : Nat,
    iterate (65536 * k + 17659) 26 = 59049 * k + 15913 ∧
      59049 * k + 15913 < 65536 * k + 17659 := by
  intro k
  have h1 : C (65536 * k + 17659) = 196608 * k + 52978 := by
    unfold C
    simp [show (65536 * k + 17659) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 52978) = 98304 * k + 26489 := by
    unfold C
    simp [show (196608 * k + 52978) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 26489) = 294912 * k + 79468 := by
    unfold C
    simp [show (98304 * k + 26489) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 79468) = 147456 * k + 39734 := by
    unfold C
    simp [show (294912 * k + 79468) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 39734) = 73728 * k + 19867 := by
    unfold C
    simp [show (147456 * k + 39734) % 2 = 0 by omega]
    omega
  have h6 : C (73728 * k + 19867) = 221184 * k + 59602 := by
    unfold C
    simp [show (73728 * k + 19867) % 2 ≠ 0 by omega]
    omega
  have h7 : C (221184 * k + 59602) = 110592 * k + 29801 := by
    unfold C
    simp [show (221184 * k + 59602) % 2 = 0 by omega]
    omega
  have h8 : C (110592 * k + 29801) = 331776 * k + 89404 := by
    unfold C
    simp [show (110592 * k + 29801) % 2 ≠ 0 by omega]
    omega
  have h9 : C (331776 * k + 89404) = 165888 * k + 44702 := by
    unfold C
    simp [show (331776 * k + 89404) % 2 = 0 by omega]
    omega
  have h10 : C (165888 * k + 44702) = 82944 * k + 22351 := by
    unfold C
    simp [show (165888 * k + 44702) % 2 = 0 by omega]
    omega
  have h11 : C (82944 * k + 22351) = 248832 * k + 67054 := by
    unfold C
    simp [show (82944 * k + 22351) % 2 ≠ 0 by omega]
    omega
  have h12 : C (248832 * k + 67054) = 124416 * k + 33527 := by
    unfold C
    simp [show (248832 * k + 67054) % 2 = 0 by omega]
    omega
  have h13 : C (124416 * k + 33527) = 373248 * k + 100582 := by
    unfold C
    simp [show (124416 * k + 33527) % 2 ≠ 0 by omega]
    omega
  have h14 : C (373248 * k + 100582) = 186624 * k + 50291 := by
    unfold C
    simp [show (373248 * k + 100582) % 2 = 0 by omega]
    omega
  have h15 : C (186624 * k + 50291) = 559872 * k + 150874 := by
    unfold C
    simp [show (186624 * k + 50291) % 2 ≠ 0 by omega]
    omega
  have h16 : C (559872 * k + 150874) = 279936 * k + 75437 := by
    unfold C
    simp [show (559872 * k + 150874) % 2 = 0 by omega]
    omega
  have h17 : C (279936 * k + 75437) = 839808 * k + 226312 := by
    unfold C
    simp [show (279936 * k + 75437) % 2 ≠ 0 by omega]
    omega
  have h18 : C (839808 * k + 226312) = 419904 * k + 113156 := by
    unfold C
    simp [show (839808 * k + 226312) % 2 = 0 by omega]
    omega
  have h19 : C (419904 * k + 113156) = 209952 * k + 56578 := by
    unfold C
    simp [show (419904 * k + 113156) % 2 = 0 by omega]
    omega
  have h20 : C (209952 * k + 56578) = 104976 * k + 28289 := by
    unfold C
    simp [show (209952 * k + 56578) % 2 = 0 by omega]
    omega
  have h21 : C (104976 * k + 28289) = 314928 * k + 84868 := by
    unfold C
    simp [show (104976 * k + 28289) % 2 ≠ 0 by omega]
    omega
  have h22 : C (314928 * k + 84868) = 157464 * k + 42434 := by
    unfold C
    simp [show (314928 * k + 84868) % 2 = 0 by omega]
    omega
  have h23 : C (157464 * k + 42434) = 78732 * k + 21217 := by
    unfold C
    simp [show (157464 * k + 42434) % 2 = 0 by omega]
    omega
  have h24 : C (78732 * k + 21217) = 236196 * k + 63652 := by
    unfold C
    simp [show (78732 * k + 21217) % 2 ≠ 0 by omega]
    omega
  have h25 : C (236196 * k + 63652) = 118098 * k + 31826 := by
    unfold C
    simp [show (236196 * k + 63652) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 31826) = 59049 * k + 15913 := by
    unfold C
    simp [show (118098 * k + 31826) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 17659) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 17659)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_18159 : ∀ k : Nat,
    iterate (65536 * k + 18159) 26 = 59049 * k + 16363 ∧
      59049 * k + 16363 < 65536 * k + 18159 := by
  intro k
  have h1 : C (65536 * k + 18159) = 196608 * k + 54478 := by
    unfold C
    simp [show (65536 * k + 18159) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 54478) = 98304 * k + 27239 := by
    unfold C
    simp [show (196608 * k + 54478) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 27239) = 294912 * k + 81718 := by
    unfold C
    simp [show (98304 * k + 27239) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 81718) = 147456 * k + 40859 := by
    unfold C
    simp [show (294912 * k + 81718) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 40859) = 442368 * k + 122578 := by
    unfold C
    simp [show (147456 * k + 40859) % 2 ≠ 0 by omega]
    omega
  have h6 : C (442368 * k + 122578) = 221184 * k + 61289 := by
    unfold C
    simp [show (442368 * k + 122578) % 2 = 0 by omega]
    omega
  have h7 : C (221184 * k + 61289) = 663552 * k + 183868 := by
    unfold C
    simp [show (221184 * k + 61289) % 2 ≠ 0 by omega]
    omega
  have h8 : C (663552 * k + 183868) = 331776 * k + 91934 := by
    unfold C
    simp [show (663552 * k + 183868) % 2 = 0 by omega]
    omega
  have h9 : C (331776 * k + 91934) = 165888 * k + 45967 := by
    unfold C
    simp [show (331776 * k + 91934) % 2 = 0 by omega]
    omega
  have h10 : C (165888 * k + 45967) = 497664 * k + 137902 := by
    unfold C
    simp [show (165888 * k + 45967) % 2 ≠ 0 by omega]
    omega
  have h11 : C (497664 * k + 137902) = 248832 * k + 68951 := by
    unfold C
    simp [show (497664 * k + 137902) % 2 = 0 by omega]
    omega
  have h12 : C (248832 * k + 68951) = 746496 * k + 206854 := by
    unfold C
    simp [show (248832 * k + 68951) % 2 ≠ 0 by omega]
    omega
  have h13 : C (746496 * k + 206854) = 373248 * k + 103427 := by
    unfold C
    simp [show (746496 * k + 206854) % 2 = 0 by omega]
    omega
  have h14 : C (373248 * k + 103427) = 1119744 * k + 310282 := by
    unfold C
    simp [show (373248 * k + 103427) % 2 ≠ 0 by omega]
    omega
  have h15 : C (1119744 * k + 310282) = 559872 * k + 155141 := by
    unfold C
    simp [show (1119744 * k + 310282) % 2 = 0 by omega]
    omega
  have h16 : C (559872 * k + 155141) = 1679616 * k + 465424 := by
    unfold C
    simp [show (559872 * k + 155141) % 2 ≠ 0 by omega]
    omega
  have h17 : C (1679616 * k + 465424) = 839808 * k + 232712 := by
    unfold C
    simp [show (1679616 * k + 465424) % 2 = 0 by omega]
    omega
  have h18 : C (839808 * k + 232712) = 419904 * k + 116356 := by
    unfold C
    simp [show (839808 * k + 232712) % 2 = 0 by omega]
    omega
  have h19 : C (419904 * k + 116356) = 209952 * k + 58178 := by
    unfold C
    simp [show (419904 * k + 116356) % 2 = 0 by omega]
    omega
  have h20 : C (209952 * k + 58178) = 104976 * k + 29089 := by
    unfold C
    simp [show (209952 * k + 58178) % 2 = 0 by omega]
    omega
  have h21 : C (104976 * k + 29089) = 314928 * k + 87268 := by
    unfold C
    simp [show (104976 * k + 29089) % 2 ≠ 0 by omega]
    omega
  have h22 : C (314928 * k + 87268) = 157464 * k + 43634 := by
    unfold C
    simp [show (314928 * k + 87268) % 2 = 0 by omega]
    omega
  have h23 : C (157464 * k + 43634) = 78732 * k + 21817 := by
    unfold C
    simp [show (157464 * k + 43634) % 2 = 0 by omega]
    omega
  have h24 : C (78732 * k + 21817) = 236196 * k + 65452 := by
    unfold C
    simp [show (78732 * k + 21817) % 2 ≠ 0 by omega]
    omega
  have h25 : C (236196 * k + 65452) = 118098 * k + 32726 := by
    unfold C
    simp [show (236196 * k + 65452) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 32726) = 59049 * k + 16363 := by
    unfold C
    simp [show (118098 * k + 32726) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 18159) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 18159)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_18343 : ∀ k : Nat,
    iterate (65536 * k + 18343) 26 = 59049 * k + 16529 ∧
      59049 * k + 16529 < 65536 * k + 18343 := by
  intro k
  have h1 : C (65536 * k + 18343) = 196608 * k + 55030 := by
    unfold C
    simp [show (65536 * k + 18343) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 55030) = 98304 * k + 27515 := by
    unfold C
    simp [show (196608 * k + 55030) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 27515) = 294912 * k + 82546 := by
    unfold C
    simp [show (98304 * k + 27515) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 82546) = 147456 * k + 41273 := by
    unfold C
    simp [show (294912 * k + 82546) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 41273) = 442368 * k + 123820 := by
    unfold C
    simp [show (147456 * k + 41273) % 2 ≠ 0 by omega]
    omega
  have h6 : C (442368 * k + 123820) = 221184 * k + 61910 := by
    unfold C
    simp [show (442368 * k + 123820) % 2 = 0 by omega]
    omega
  have h7 : C (221184 * k + 61910) = 110592 * k + 30955 := by
    unfold C
    simp [show (221184 * k + 61910) % 2 = 0 by omega]
    omega
  have h8 : C (110592 * k + 30955) = 331776 * k + 92866 := by
    unfold C
    simp [show (110592 * k + 30955) % 2 ≠ 0 by omega]
    omega
  have h9 : C (331776 * k + 92866) = 165888 * k + 46433 := by
    unfold C
    simp [show (331776 * k + 92866) % 2 = 0 by omega]
    omega
  have h10 : C (165888 * k + 46433) = 497664 * k + 139300 := by
    unfold C
    simp [show (165888 * k + 46433) % 2 ≠ 0 by omega]
    omega
  have h11 : C (497664 * k + 139300) = 248832 * k + 69650 := by
    unfold C
    simp [show (497664 * k + 139300) % 2 = 0 by omega]
    omega
  have h12 : C (248832 * k + 69650) = 124416 * k + 34825 := by
    unfold C
    simp [show (248832 * k + 69650) % 2 = 0 by omega]
    omega
  have h13 : C (124416 * k + 34825) = 373248 * k + 104476 := by
    unfold C
    simp [show (124416 * k + 34825) % 2 ≠ 0 by omega]
    omega
  have h14 : C (373248 * k + 104476) = 186624 * k + 52238 := by
    unfold C
    simp [show (373248 * k + 104476) % 2 = 0 by omega]
    omega
  have h15 : C (186624 * k + 52238) = 93312 * k + 26119 := by
    unfold C
    simp [show (186624 * k + 52238) % 2 = 0 by omega]
    omega
  have h16 : C (93312 * k + 26119) = 279936 * k + 78358 := by
    unfold C
    simp [show (93312 * k + 26119) % 2 ≠ 0 by omega]
    omega
  have h17 : C (279936 * k + 78358) = 139968 * k + 39179 := by
    unfold C
    simp [show (279936 * k + 78358) % 2 = 0 by omega]
    omega
  have h18 : C (139968 * k + 39179) = 419904 * k + 117538 := by
    unfold C
    simp [show (139968 * k + 39179) % 2 ≠ 0 by omega]
    omega
  have h19 : C (419904 * k + 117538) = 209952 * k + 58769 := by
    unfold C
    simp [show (419904 * k + 117538) % 2 = 0 by omega]
    omega
  have h20 : C (209952 * k + 58769) = 629856 * k + 176308 := by
    unfold C
    simp [show (209952 * k + 58769) % 2 ≠ 0 by omega]
    omega
  have h21 : C (629856 * k + 176308) = 314928 * k + 88154 := by
    unfold C
    simp [show (629856 * k + 176308) % 2 = 0 by omega]
    omega
  have h22 : C (314928 * k + 88154) = 157464 * k + 44077 := by
    unfold C
    simp [show (314928 * k + 88154) % 2 = 0 by omega]
    omega
  have h23 : C (157464 * k + 44077) = 472392 * k + 132232 := by
    unfold C
    simp [show (157464 * k + 44077) % 2 ≠ 0 by omega]
    omega
  have h24 : C (472392 * k + 132232) = 236196 * k + 66116 := by
    unfold C
    simp [show (472392 * k + 132232) % 2 = 0 by omega]
    omega
  have h25 : C (236196 * k + 66116) = 118098 * k + 33058 := by
    unfold C
    simp [show (236196 * k + 66116) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 33058) = 59049 * k + 16529 := by
    unfold C
    simp [show (118098 * k + 33058) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 18343) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 18343)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_18523 : ∀ k : Nat,
    iterate (65536 * k + 18523) 26 = 59049 * k + 16691 ∧
      59049 * k + 16691 < 65536 * k + 18523 := by
  intro k
  have h1 : C (65536 * k + 18523) = 196608 * k + 55570 := by
    unfold C
    simp [show (65536 * k + 18523) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 55570) = 98304 * k + 27785 := by
    unfold C
    simp [show (196608 * k + 55570) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 27785) = 294912 * k + 83356 := by
    unfold C
    simp [show (98304 * k + 27785) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 83356) = 147456 * k + 41678 := by
    unfold C
    simp [show (294912 * k + 83356) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 41678) = 73728 * k + 20839 := by
    unfold C
    simp [show (147456 * k + 41678) % 2 = 0 by omega]
    omega
  have h6 : C (73728 * k + 20839) = 221184 * k + 62518 := by
    unfold C
    simp [show (73728 * k + 20839) % 2 ≠ 0 by omega]
    omega
  have h7 : C (221184 * k + 62518) = 110592 * k + 31259 := by
    unfold C
    simp [show (221184 * k + 62518) % 2 = 0 by omega]
    omega
  have h8 : C (110592 * k + 31259) = 331776 * k + 93778 := by
    unfold C
    simp [show (110592 * k + 31259) % 2 ≠ 0 by omega]
    omega
  have h9 : C (331776 * k + 93778) = 165888 * k + 46889 := by
    unfold C
    simp [show (331776 * k + 93778) % 2 = 0 by omega]
    omega
  have h10 : C (165888 * k + 46889) = 497664 * k + 140668 := by
    unfold C
    simp [show (165888 * k + 46889) % 2 ≠ 0 by omega]
    omega
  have h11 : C (497664 * k + 140668) = 248832 * k + 70334 := by
    unfold C
    simp [show (497664 * k + 140668) % 2 = 0 by omega]
    omega
  have h12 : C (248832 * k + 70334) = 124416 * k + 35167 := by
    unfold C
    simp [show (248832 * k + 70334) % 2 = 0 by omega]
    omega
  have h13 : C (124416 * k + 35167) = 373248 * k + 105502 := by
    unfold C
    simp [show (124416 * k + 35167) % 2 ≠ 0 by omega]
    omega
  have h14 : C (373248 * k + 105502) = 186624 * k + 52751 := by
    unfold C
    simp [show (373248 * k + 105502) % 2 = 0 by omega]
    omega
  have h15 : C (186624 * k + 52751) = 559872 * k + 158254 := by
    unfold C
    simp [show (186624 * k + 52751) % 2 ≠ 0 by omega]
    omega
  have h16 : C (559872 * k + 158254) = 279936 * k + 79127 := by
    unfold C
    simp [show (559872 * k + 158254) % 2 = 0 by omega]
    omega
  have h17 : C (279936 * k + 79127) = 839808 * k + 237382 := by
    unfold C
    simp [show (279936 * k + 79127) % 2 ≠ 0 by omega]
    omega
  have h18 : C (839808 * k + 237382) = 419904 * k + 118691 := by
    unfold C
    simp [show (839808 * k + 237382) % 2 = 0 by omega]
    omega
  have h19 : C (419904 * k + 118691) = 1259712 * k + 356074 := by
    unfold C
    simp [show (419904 * k + 118691) % 2 ≠ 0 by omega]
    omega
  have h20 : C (1259712 * k + 356074) = 629856 * k + 178037 := by
    unfold C
    simp [show (1259712 * k + 356074) % 2 = 0 by omega]
    omega
  have h21 : C (629856 * k + 178037) = 1889568 * k + 534112 := by
    unfold C
    simp [show (629856 * k + 178037) % 2 ≠ 0 by omega]
    omega
  have h22 : C (1889568 * k + 534112) = 944784 * k + 267056 := by
    unfold C
    simp [show (1889568 * k + 534112) % 2 = 0 by omega]
    omega
  have h23 : C (944784 * k + 267056) = 472392 * k + 133528 := by
    unfold C
    simp [show (944784 * k + 267056) % 2 = 0 by omega]
    omega
  have h24 : C (472392 * k + 133528) = 236196 * k + 66764 := by
    unfold C
    simp [show (472392 * k + 133528) % 2 = 0 by omega]
    omega
  have h25 : C (236196 * k + 66764) = 118098 * k + 33382 := by
    unfold C
    simp [show (236196 * k + 66764) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 33382) = 59049 * k + 16691 := by
    unfold C
    simp [show (118098 * k + 33382) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 18523) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 18523)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_18559 : ∀ k : Nat,
    iterate (65536 * k + 18559) 26 = 59049 * k + 16723 ∧
      59049 * k + 16723 < 65536 * k + 18559 := by
  intro k
  have h1 : C (65536 * k + 18559) = 196608 * k + 55678 := by
    unfold C
    simp [show (65536 * k + 18559) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 55678) = 98304 * k + 27839 := by
    unfold C
    simp [show (196608 * k + 55678) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 27839) = 294912 * k + 83518 := by
    unfold C
    simp [show (98304 * k + 27839) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 83518) = 147456 * k + 41759 := by
    unfold C
    simp [show (294912 * k + 83518) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 41759) = 442368 * k + 125278 := by
    unfold C
    simp [show (147456 * k + 41759) % 2 ≠ 0 by omega]
    omega
  have h6 : C (442368 * k + 125278) = 221184 * k + 62639 := by
    unfold C
    simp [show (442368 * k + 125278) % 2 = 0 by omega]
    omega
  have h7 : C (221184 * k + 62639) = 663552 * k + 187918 := by
    unfold C
    simp [show (221184 * k + 62639) % 2 ≠ 0 by omega]
    omega
  have h8 : C (663552 * k + 187918) = 331776 * k + 93959 := by
    unfold C
    simp [show (663552 * k + 187918) % 2 = 0 by omega]
    omega
  have h9 : C (331776 * k + 93959) = 995328 * k + 281878 := by
    unfold C
    simp [show (331776 * k + 93959) % 2 ≠ 0 by omega]
    omega
  have h10 : C (995328 * k + 281878) = 497664 * k + 140939 := by
    unfold C
    simp [show (995328 * k + 281878) % 2 = 0 by omega]
    omega
  have h11 : C (497664 * k + 140939) = 1492992 * k + 422818 := by
    unfold C
    simp [show (497664 * k + 140939) % 2 ≠ 0 by omega]
    omega
  have h12 : C (1492992 * k + 422818) = 746496 * k + 211409 := by
    unfold C
    simp [show (1492992 * k + 422818) % 2 = 0 by omega]
    omega
  have h13 : C (746496 * k + 211409) = 2239488 * k + 634228 := by
    unfold C
    simp [show (746496 * k + 211409) % 2 ≠ 0 by omega]
    omega
  have h14 : C (2239488 * k + 634228) = 1119744 * k + 317114 := by
    unfold C
    simp [show (2239488 * k + 634228) % 2 = 0 by omega]
    omega
  have h15 : C (1119744 * k + 317114) = 559872 * k + 158557 := by
    unfold C
    simp [show (1119744 * k + 317114) % 2 = 0 by omega]
    omega
  have h16 : C (559872 * k + 158557) = 1679616 * k + 475672 := by
    unfold C
    simp [show (559872 * k + 158557) % 2 ≠ 0 by omega]
    omega
  have h17 : C (1679616 * k + 475672) = 839808 * k + 237836 := by
    unfold C
    simp [show (1679616 * k + 475672) % 2 = 0 by omega]
    omega
  have h18 : C (839808 * k + 237836) = 419904 * k + 118918 := by
    unfold C
    simp [show (839808 * k + 237836) % 2 = 0 by omega]
    omega
  have h19 : C (419904 * k + 118918) = 209952 * k + 59459 := by
    unfold C
    simp [show (419904 * k + 118918) % 2 = 0 by omega]
    omega
  have h20 : C (209952 * k + 59459) = 629856 * k + 178378 := by
    unfold C
    simp [show (209952 * k + 59459) % 2 ≠ 0 by omega]
    omega
  have h21 : C (629856 * k + 178378) = 314928 * k + 89189 := by
    unfold C
    simp [show (629856 * k + 178378) % 2 = 0 by omega]
    omega
  have h22 : C (314928 * k + 89189) = 944784 * k + 267568 := by
    unfold C
    simp [show (314928 * k + 89189) % 2 ≠ 0 by omega]
    omega
  have h23 : C (944784 * k + 267568) = 472392 * k + 133784 := by
    unfold C
    simp [show (944784 * k + 267568) % 2 = 0 by omega]
    omega
  have h24 : C (472392 * k + 133784) = 236196 * k + 66892 := by
    unfold C
    simp [show (472392 * k + 133784) % 2 = 0 by omega]
    omega
  have h25 : C (236196 * k + 66892) = 118098 * k + 33446 := by
    unfold C
    simp [show (236196 * k + 66892) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 33446) = 59049 * k + 16723 := by
    unfold C
    simp [show (118098 * k + 33446) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 18559) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 18559)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_18919 : ∀ k : Nat,
    iterate (65536 * k + 18919) 26 = 59049 * k + 17048 ∧
      59049 * k + 17048 < 65536 * k + 18919 := by
  intro k
  have h1 : C (65536 * k + 18919) = 196608 * k + 56758 := by
    unfold C
    simp [show (65536 * k + 18919) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 56758) = 98304 * k + 28379 := by
    unfold C
    simp [show (196608 * k + 56758) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 28379) = 294912 * k + 85138 := by
    unfold C
    simp [show (98304 * k + 28379) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 85138) = 147456 * k + 42569 := by
    unfold C
    simp [show (294912 * k + 85138) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 42569) = 442368 * k + 127708 := by
    unfold C
    simp [show (147456 * k + 42569) % 2 ≠ 0 by omega]
    omega
  have h6 : C (442368 * k + 127708) = 221184 * k + 63854 := by
    unfold C
    simp [show (442368 * k + 127708) % 2 = 0 by omega]
    omega
  have h7 : C (221184 * k + 63854) = 110592 * k + 31927 := by
    unfold C
    simp [show (221184 * k + 63854) % 2 = 0 by omega]
    omega
  have h8 : C (110592 * k + 31927) = 331776 * k + 95782 := by
    unfold C
    simp [show (110592 * k + 31927) % 2 ≠ 0 by omega]
    omega
  have h9 : C (331776 * k + 95782) = 165888 * k + 47891 := by
    unfold C
    simp [show (331776 * k + 95782) % 2 = 0 by omega]
    omega
  have h10 : C (165888 * k + 47891) = 497664 * k + 143674 := by
    unfold C
    simp [show (165888 * k + 47891) % 2 ≠ 0 by omega]
    omega
  have h11 : C (497664 * k + 143674) = 248832 * k + 71837 := by
    unfold C
    simp [show (497664 * k + 143674) % 2 = 0 by omega]
    omega
  have h12 : C (248832 * k + 71837) = 746496 * k + 215512 := by
    unfold C
    simp [show (248832 * k + 71837) % 2 ≠ 0 by omega]
    omega
  have h13 : C (746496 * k + 215512) = 373248 * k + 107756 := by
    unfold C
    simp [show (746496 * k + 215512) % 2 = 0 by omega]
    omega
  have h14 : C (373248 * k + 107756) = 186624 * k + 53878 := by
    unfold C
    simp [show (373248 * k + 107756) % 2 = 0 by omega]
    omega
  have h15 : C (186624 * k + 53878) = 93312 * k + 26939 := by
    unfold C
    simp [show (186624 * k + 53878) % 2 = 0 by omega]
    omega
  have h16 : C (93312 * k + 26939) = 279936 * k + 80818 := by
    unfold C
    simp [show (93312 * k + 26939) % 2 ≠ 0 by omega]
    omega
  have h17 : C (279936 * k + 80818) = 139968 * k + 40409 := by
    unfold C
    simp [show (279936 * k + 80818) % 2 = 0 by omega]
    omega
  have h18 : C (139968 * k + 40409) = 419904 * k + 121228 := by
    unfold C
    simp [show (139968 * k + 40409) % 2 ≠ 0 by omega]
    omega
  have h19 : C (419904 * k + 121228) = 209952 * k + 60614 := by
    unfold C
    simp [show (419904 * k + 121228) % 2 = 0 by omega]
    omega
  have h20 : C (209952 * k + 60614) = 104976 * k + 30307 := by
    unfold C
    simp [show (209952 * k + 60614) % 2 = 0 by omega]
    omega
  have h21 : C (104976 * k + 30307) = 314928 * k + 90922 := by
    unfold C
    simp [show (104976 * k + 30307) % 2 ≠ 0 by omega]
    omega
  have h22 : C (314928 * k + 90922) = 157464 * k + 45461 := by
    unfold C
    simp [show (314928 * k + 90922) % 2 = 0 by omega]
    omega
  have h23 : C (157464 * k + 45461) = 472392 * k + 136384 := by
    unfold C
    simp [show (157464 * k + 45461) % 2 ≠ 0 by omega]
    omega
  have h24 : C (472392 * k + 136384) = 236196 * k + 68192 := by
    unfold C
    simp [show (472392 * k + 136384) % 2 = 0 by omega]
    omega
  have h25 : C (236196 * k + 68192) = 118098 * k + 34096 := by
    unfold C
    simp [show (236196 * k + 68192) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 34096) = 59049 * k + 17048 := by
    unfold C
    simp [show (118098 * k + 34096) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 18919) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 18919)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_19099 : ∀ k : Nat,
    iterate (65536 * k + 19099) 26 = 59049 * k + 17210 ∧
      59049 * k + 17210 < 65536 * k + 19099 := by
  intro k
  have h1 : C (65536 * k + 19099) = 196608 * k + 57298 := by
    unfold C
    simp [show (65536 * k + 19099) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 57298) = 98304 * k + 28649 := by
    unfold C
    simp [show (196608 * k + 57298) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 28649) = 294912 * k + 85948 := by
    unfold C
    simp [show (98304 * k + 28649) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 85948) = 147456 * k + 42974 := by
    unfold C
    simp [show (294912 * k + 85948) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 42974) = 73728 * k + 21487 := by
    unfold C
    simp [show (147456 * k + 42974) % 2 = 0 by omega]
    omega
  have h6 : C (73728 * k + 21487) = 221184 * k + 64462 := by
    unfold C
    simp [show (73728 * k + 21487) % 2 ≠ 0 by omega]
    omega
  have h7 : C (221184 * k + 64462) = 110592 * k + 32231 := by
    unfold C
    simp [show (221184 * k + 64462) % 2 = 0 by omega]
    omega
  have h8 : C (110592 * k + 32231) = 331776 * k + 96694 := by
    unfold C
    simp [show (110592 * k + 32231) % 2 ≠ 0 by omega]
    omega
  have h9 : C (331776 * k + 96694) = 165888 * k + 48347 := by
    unfold C
    simp [show (331776 * k + 96694) % 2 = 0 by omega]
    omega
  have h10 : C (165888 * k + 48347) = 497664 * k + 145042 := by
    unfold C
    simp [show (165888 * k + 48347) % 2 ≠ 0 by omega]
    omega
  have h11 : C (497664 * k + 145042) = 248832 * k + 72521 := by
    unfold C
    simp [show (497664 * k + 145042) % 2 = 0 by omega]
    omega
  have h12 : C (248832 * k + 72521) = 746496 * k + 217564 := by
    unfold C
    simp [show (248832 * k + 72521) % 2 ≠ 0 by omega]
    omega
  have h13 : C (746496 * k + 217564) = 373248 * k + 108782 := by
    unfold C
    simp [show (746496 * k + 217564) % 2 = 0 by omega]
    omega
  have h14 : C (373248 * k + 108782) = 186624 * k + 54391 := by
    unfold C
    simp [show (373248 * k + 108782) % 2 = 0 by omega]
    omega
  have h15 : C (186624 * k + 54391) = 559872 * k + 163174 := by
    unfold C
    simp [show (186624 * k + 54391) % 2 ≠ 0 by omega]
    omega
  have h16 : C (559872 * k + 163174) = 279936 * k + 81587 := by
    unfold C
    simp [show (559872 * k + 163174) % 2 = 0 by omega]
    omega
  have h17 : C (279936 * k + 81587) = 839808 * k + 244762 := by
    unfold C
    simp [show (279936 * k + 81587) % 2 ≠ 0 by omega]
    omega
  have h18 : C (839808 * k + 244762) = 419904 * k + 122381 := by
    unfold C
    simp [show (839808 * k + 244762) % 2 = 0 by omega]
    omega
  have h19 : C (419904 * k + 122381) = 1259712 * k + 367144 := by
    unfold C
    simp [show (419904 * k + 122381) % 2 ≠ 0 by omega]
    omega
  have h20 : C (1259712 * k + 367144) = 629856 * k + 183572 := by
    unfold C
    simp [show (1259712 * k + 367144) % 2 = 0 by omega]
    omega
  have h21 : C (629856 * k + 183572) = 314928 * k + 91786 := by
    unfold C
    simp [show (629856 * k + 183572) % 2 = 0 by omega]
    omega
  have h22 : C (314928 * k + 91786) = 157464 * k + 45893 := by
    unfold C
    simp [show (314928 * k + 91786) % 2 = 0 by omega]
    omega
  have h23 : C (157464 * k + 45893) = 472392 * k + 137680 := by
    unfold C
    simp [show (157464 * k + 45893) % 2 ≠ 0 by omega]
    omega
  have h24 : C (472392 * k + 137680) = 236196 * k + 68840 := by
    unfold C
    simp [show (472392 * k + 137680) % 2 = 0 by omega]
    omega
  have h25 : C (236196 * k + 68840) = 118098 * k + 34420 := by
    unfold C
    simp [show (236196 * k + 68840) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 34420) = 59049 * k + 17210 := by
    unfold C
    simp [show (118098 * k + 34420) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 19099) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 19099)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_19111 : ∀ k : Nat,
    iterate (65536 * k + 19111) 26 = 59049 * k + 17221 ∧
      59049 * k + 17221 < 65536 * k + 19111 := by
  intro k
  have h1 : C (65536 * k + 19111) = 196608 * k + 57334 := by
    unfold C
    simp [show (65536 * k + 19111) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 57334) = 98304 * k + 28667 := by
    unfold C
    simp [show (196608 * k + 57334) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 28667) = 294912 * k + 86002 := by
    unfold C
    simp [show (98304 * k + 28667) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 86002) = 147456 * k + 43001 := by
    unfold C
    simp [show (294912 * k + 86002) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 43001) = 442368 * k + 129004 := by
    unfold C
    simp [show (147456 * k + 43001) % 2 ≠ 0 by omega]
    omega
  have h6 : C (442368 * k + 129004) = 221184 * k + 64502 := by
    unfold C
    simp [show (442368 * k + 129004) % 2 = 0 by omega]
    omega
  have h7 : C (221184 * k + 64502) = 110592 * k + 32251 := by
    unfold C
    simp [show (221184 * k + 64502) % 2 = 0 by omega]
    omega
  have h8 : C (110592 * k + 32251) = 331776 * k + 96754 := by
    unfold C
    simp [show (110592 * k + 32251) % 2 ≠ 0 by omega]
    omega
  have h9 : C (331776 * k + 96754) = 165888 * k + 48377 := by
    unfold C
    simp [show (331776 * k + 96754) % 2 = 0 by omega]
    omega
  have h10 : C (165888 * k + 48377) = 497664 * k + 145132 := by
    unfold C
    simp [show (165888 * k + 48377) % 2 ≠ 0 by omega]
    omega
  have h11 : C (497664 * k + 145132) = 248832 * k + 72566 := by
    unfold C
    simp [show (497664 * k + 145132) % 2 = 0 by omega]
    omega
  have h12 : C (248832 * k + 72566) = 124416 * k + 36283 := by
    unfold C
    simp [show (248832 * k + 72566) % 2 = 0 by omega]
    omega
  have h13 : C (124416 * k + 36283) = 373248 * k + 108850 := by
    unfold C
    simp [show (124416 * k + 36283) % 2 ≠ 0 by omega]
    omega
  have h14 : C (373248 * k + 108850) = 186624 * k + 54425 := by
    unfold C
    simp [show (373248 * k + 108850) % 2 = 0 by omega]
    omega
  have h15 : C (186624 * k + 54425) = 559872 * k + 163276 := by
    unfold C
    simp [show (186624 * k + 54425) % 2 ≠ 0 by omega]
    omega
  have h16 : C (559872 * k + 163276) = 279936 * k + 81638 := by
    unfold C
    simp [show (559872 * k + 163276) % 2 = 0 by omega]
    omega
  have h17 : C (279936 * k + 81638) = 139968 * k + 40819 := by
    unfold C
    simp [show (279936 * k + 81638) % 2 = 0 by omega]
    omega
  have h18 : C (139968 * k + 40819) = 419904 * k + 122458 := by
    unfold C
    simp [show (139968 * k + 40819) % 2 ≠ 0 by omega]
    omega
  have h19 : C (419904 * k + 122458) = 209952 * k + 61229 := by
    unfold C
    simp [show (419904 * k + 122458) % 2 = 0 by omega]
    omega
  have h20 : C (209952 * k + 61229) = 629856 * k + 183688 := by
    unfold C
    simp [show (209952 * k + 61229) % 2 ≠ 0 by omega]
    omega
  have h21 : C (629856 * k + 183688) = 314928 * k + 91844 := by
    unfold C
    simp [show (629856 * k + 183688) % 2 = 0 by omega]
    omega
  have h22 : C (314928 * k + 91844) = 157464 * k + 45922 := by
    unfold C
    simp [show (314928 * k + 91844) % 2 = 0 by omega]
    omega
  have h23 : C (157464 * k + 45922) = 78732 * k + 22961 := by
    unfold C
    simp [show (157464 * k + 45922) % 2 = 0 by omega]
    omega
  have h24 : C (78732 * k + 22961) = 236196 * k + 68884 := by
    unfold C
    simp [show (78732 * k + 22961) % 2 ≠ 0 by omega]
    omega
  have h25 : C (236196 * k + 68884) = 118098 * k + 34442 := by
    unfold C
    simp [show (236196 * k + 68884) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 34442) = 59049 * k + 17221 := by
    unfold C
    simp [show (118098 * k + 34442) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 19111) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 19111)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_19135 : ∀ k : Nat,
    iterate (65536 * k + 19135) 26 = 59049 * k + 17242 ∧
      59049 * k + 17242 < 65536 * k + 19135 := by
  intro k
  have h1 : C (65536 * k + 19135) = 196608 * k + 57406 := by
    unfold C
    simp [show (65536 * k + 19135) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 57406) = 98304 * k + 28703 := by
    unfold C
    simp [show (196608 * k + 57406) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 28703) = 294912 * k + 86110 := by
    unfold C
    simp [show (98304 * k + 28703) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 86110) = 147456 * k + 43055 := by
    unfold C
    simp [show (294912 * k + 86110) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 43055) = 442368 * k + 129166 := by
    unfold C
    simp [show (147456 * k + 43055) % 2 ≠ 0 by omega]
    omega
  have h6 : C (442368 * k + 129166) = 221184 * k + 64583 := by
    unfold C
    simp [show (442368 * k + 129166) % 2 = 0 by omega]
    omega
  have h7 : C (221184 * k + 64583) = 663552 * k + 193750 := by
    unfold C
    simp [show (221184 * k + 64583) % 2 ≠ 0 by omega]
    omega
  have h8 : C (663552 * k + 193750) = 331776 * k + 96875 := by
    unfold C
    simp [show (663552 * k + 193750) % 2 = 0 by omega]
    omega
  have h9 : C (331776 * k + 96875) = 995328 * k + 290626 := by
    unfold C
    simp [show (331776 * k + 96875) % 2 ≠ 0 by omega]
    omega
  have h10 : C (995328 * k + 290626) = 497664 * k + 145313 := by
    unfold C
    simp [show (995328 * k + 290626) % 2 = 0 by omega]
    omega
  have h11 : C (497664 * k + 145313) = 1492992 * k + 435940 := by
    unfold C
    simp [show (497664 * k + 145313) % 2 ≠ 0 by omega]
    omega
  have h12 : C (1492992 * k + 435940) = 746496 * k + 217970 := by
    unfold C
    simp [show (1492992 * k + 435940) % 2 = 0 by omega]
    omega
  have h13 : C (746496 * k + 217970) = 373248 * k + 108985 := by
    unfold C
    simp [show (746496 * k + 217970) % 2 = 0 by omega]
    omega
  have h14 : C (373248 * k + 108985) = 1119744 * k + 326956 := by
    unfold C
    simp [show (373248 * k + 108985) % 2 ≠ 0 by omega]
    omega
  have h15 : C (1119744 * k + 326956) = 559872 * k + 163478 := by
    unfold C
    simp [show (1119744 * k + 326956) % 2 = 0 by omega]
    omega
  have h16 : C (559872 * k + 163478) = 279936 * k + 81739 := by
    unfold C
    simp [show (559872 * k + 163478) % 2 = 0 by omega]
    omega
  have h17 : C (279936 * k + 81739) = 839808 * k + 245218 := by
    unfold C
    simp [show (279936 * k + 81739) % 2 ≠ 0 by omega]
    omega
  have h18 : C (839808 * k + 245218) = 419904 * k + 122609 := by
    unfold C
    simp [show (839808 * k + 245218) % 2 = 0 by omega]
    omega
  have h19 : C (419904 * k + 122609) = 1259712 * k + 367828 := by
    unfold C
    simp [show (419904 * k + 122609) % 2 ≠ 0 by omega]
    omega
  have h20 : C (1259712 * k + 367828) = 629856 * k + 183914 := by
    unfold C
    simp [show (1259712 * k + 367828) % 2 = 0 by omega]
    omega
  have h21 : C (629856 * k + 183914) = 314928 * k + 91957 := by
    unfold C
    simp [show (629856 * k + 183914) % 2 = 0 by omega]
    omega
  have h22 : C (314928 * k + 91957) = 944784 * k + 275872 := by
    unfold C
    simp [show (314928 * k + 91957) % 2 ≠ 0 by omega]
    omega
  have h23 : C (944784 * k + 275872) = 472392 * k + 137936 := by
    unfold C
    simp [show (944784 * k + 275872) % 2 = 0 by omega]
    omega
  have h24 : C (472392 * k + 137936) = 236196 * k + 68968 := by
    unfold C
    simp [show (472392 * k + 137936) % 2 = 0 by omega]
    omega
  have h25 : C (236196 * k + 68968) = 118098 * k + 34484 := by
    unfold C
    simp [show (236196 * k + 68968) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 34484) = 59049 * k + 17242 := by
    unfold C
    simp [show (118098 * k + 34484) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 19135) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 19135)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_19151 : ∀ k : Nat,
    iterate (65536 * k + 19151) 26 = 59049 * k + 17257 ∧
      59049 * k + 17257 < 65536 * k + 19151 := by
  intro k
  have h1 : C (65536 * k + 19151) = 196608 * k + 57454 := by
    unfold C
    simp [show (65536 * k + 19151) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 57454) = 98304 * k + 28727 := by
    unfold C
    simp [show (196608 * k + 57454) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 28727) = 294912 * k + 86182 := by
    unfold C
    simp [show (98304 * k + 28727) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 86182) = 147456 * k + 43091 := by
    unfold C
    simp [show (294912 * k + 86182) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 43091) = 442368 * k + 129274 := by
    unfold C
    simp [show (147456 * k + 43091) % 2 ≠ 0 by omega]
    omega
  have h6 : C (442368 * k + 129274) = 221184 * k + 64637 := by
    unfold C
    simp [show (442368 * k + 129274) % 2 = 0 by omega]
    omega
  have h7 : C (221184 * k + 64637) = 663552 * k + 193912 := by
    unfold C
    simp [show (221184 * k + 64637) % 2 ≠ 0 by omega]
    omega
  have h8 : C (663552 * k + 193912) = 331776 * k + 96956 := by
    unfold C
    simp [show (663552 * k + 193912) % 2 = 0 by omega]
    omega
  have h9 : C (331776 * k + 96956) = 165888 * k + 48478 := by
    unfold C
    simp [show (331776 * k + 96956) % 2 = 0 by omega]
    omega
  have h10 : C (165888 * k + 48478) = 82944 * k + 24239 := by
    unfold C
    simp [show (165888 * k + 48478) % 2 = 0 by omega]
    omega
  have h11 : C (82944 * k + 24239) = 248832 * k + 72718 := by
    unfold C
    simp [show (82944 * k + 24239) % 2 ≠ 0 by omega]
    omega
  have h12 : C (248832 * k + 72718) = 124416 * k + 36359 := by
    unfold C
    simp [show (248832 * k + 72718) % 2 = 0 by omega]
    omega
  have h13 : C (124416 * k + 36359) = 373248 * k + 109078 := by
    unfold C
    simp [show (124416 * k + 36359) % 2 ≠ 0 by omega]
    omega
  have h14 : C (373248 * k + 109078) = 186624 * k + 54539 := by
    unfold C
    simp [show (373248 * k + 109078) % 2 = 0 by omega]
    omega
  have h15 : C (186624 * k + 54539) = 559872 * k + 163618 := by
    unfold C
    simp [show (186624 * k + 54539) % 2 ≠ 0 by omega]
    omega
  have h16 : C (559872 * k + 163618) = 279936 * k + 81809 := by
    unfold C
    simp [show (559872 * k + 163618) % 2 = 0 by omega]
    omega
  have h17 : C (279936 * k + 81809) = 839808 * k + 245428 := by
    unfold C
    simp [show (279936 * k + 81809) % 2 ≠ 0 by omega]
    omega
  have h18 : C (839808 * k + 245428) = 419904 * k + 122714 := by
    unfold C
    simp [show (839808 * k + 245428) % 2 = 0 by omega]
    omega
  have h19 : C (419904 * k + 122714) = 209952 * k + 61357 := by
    unfold C
    simp [show (419904 * k + 122714) % 2 = 0 by omega]
    omega
  have h20 : C (209952 * k + 61357) = 629856 * k + 184072 := by
    unfold C
    simp [show (209952 * k + 61357) % 2 ≠ 0 by omega]
    omega
  have h21 : C (629856 * k + 184072) = 314928 * k + 92036 := by
    unfold C
    simp [show (629856 * k + 184072) % 2 = 0 by omega]
    omega
  have h22 : C (314928 * k + 92036) = 157464 * k + 46018 := by
    unfold C
    simp [show (314928 * k + 92036) % 2 = 0 by omega]
    omega
  have h23 : C (157464 * k + 46018) = 78732 * k + 23009 := by
    unfold C
    simp [show (157464 * k + 46018) % 2 = 0 by omega]
    omega
  have h24 : C (78732 * k + 23009) = 236196 * k + 69028 := by
    unfold C
    simp [show (78732 * k + 23009) % 2 ≠ 0 by omega]
    omega
  have h25 : C (236196 * k + 69028) = 118098 * k + 34514 := by
    unfold C
    simp [show (236196 * k + 69028) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 34514) = 59049 * k + 17257 := by
    unfold C
    simp [show (118098 * k + 34514) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 19151) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 19151)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_19231 : ∀ k : Nat,
    iterate (65536 * k + 19231) 26 = 59049 * k + 17329 ∧
      59049 * k + 17329 < 65536 * k + 19231 := by
  intro k
  have h1 : C (65536 * k + 19231) = 196608 * k + 57694 := by
    unfold C
    simp [show (65536 * k + 19231) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 57694) = 98304 * k + 28847 := by
    unfold C
    simp [show (196608 * k + 57694) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 28847) = 294912 * k + 86542 := by
    unfold C
    simp [show (98304 * k + 28847) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 86542) = 147456 * k + 43271 := by
    unfold C
    simp [show (294912 * k + 86542) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 43271) = 442368 * k + 129814 := by
    unfold C
    simp [show (147456 * k + 43271) % 2 ≠ 0 by omega]
    omega
  have h6 : C (442368 * k + 129814) = 221184 * k + 64907 := by
    unfold C
    simp [show (442368 * k + 129814) % 2 = 0 by omega]
    omega
  have h7 : C (221184 * k + 64907) = 663552 * k + 194722 := by
    unfold C
    simp [show (221184 * k + 64907) % 2 ≠ 0 by omega]
    omega
  have h8 : C (663552 * k + 194722) = 331776 * k + 97361 := by
    unfold C
    simp [show (663552 * k + 194722) % 2 = 0 by omega]
    omega
  have h9 : C (331776 * k + 97361) = 995328 * k + 292084 := by
    unfold C
    simp [show (331776 * k + 97361) % 2 ≠ 0 by omega]
    omega
  have h10 : C (995328 * k + 292084) = 497664 * k + 146042 := by
    unfold C
    simp [show (995328 * k + 292084) % 2 = 0 by omega]
    omega
  have h11 : C (497664 * k + 146042) = 248832 * k + 73021 := by
    unfold C
    simp [show (497664 * k + 146042) % 2 = 0 by omega]
    omega
  have h12 : C (248832 * k + 73021) = 746496 * k + 219064 := by
    unfold C
    simp [show (248832 * k + 73021) % 2 ≠ 0 by omega]
    omega
  have h13 : C (746496 * k + 219064) = 373248 * k + 109532 := by
    unfold C
    simp [show (746496 * k + 219064) % 2 = 0 by omega]
    omega
  have h14 : C (373248 * k + 109532) = 186624 * k + 54766 := by
    unfold C
    simp [show (373248 * k + 109532) % 2 = 0 by omega]
    omega
  have h15 : C (186624 * k + 54766) = 93312 * k + 27383 := by
    unfold C
    simp [show (186624 * k + 54766) % 2 = 0 by omega]
    omega
  have h16 : C (93312 * k + 27383) = 279936 * k + 82150 := by
    unfold C
    simp [show (93312 * k + 27383) % 2 ≠ 0 by omega]
    omega
  have h17 : C (279936 * k + 82150) = 139968 * k + 41075 := by
    unfold C
    simp [show (279936 * k + 82150) % 2 = 0 by omega]
    omega
  have h18 : C (139968 * k + 41075) = 419904 * k + 123226 := by
    unfold C
    simp [show (139968 * k + 41075) % 2 ≠ 0 by omega]
    omega
  have h19 : C (419904 * k + 123226) = 209952 * k + 61613 := by
    unfold C
    simp [show (419904 * k + 123226) % 2 = 0 by omega]
    omega
  have h20 : C (209952 * k + 61613) = 629856 * k + 184840 := by
    unfold C
    simp [show (209952 * k + 61613) % 2 ≠ 0 by omega]
    omega
  have h21 : C (629856 * k + 184840) = 314928 * k + 92420 := by
    unfold C
    simp [show (629856 * k + 184840) % 2 = 0 by omega]
    omega
  have h22 : C (314928 * k + 92420) = 157464 * k + 46210 := by
    unfold C
    simp [show (314928 * k + 92420) % 2 = 0 by omega]
    omega
  have h23 : C (157464 * k + 46210) = 78732 * k + 23105 := by
    unfold C
    simp [show (157464 * k + 46210) % 2 = 0 by omega]
    omega
  have h24 : C (78732 * k + 23105) = 236196 * k + 69316 := by
    unfold C
    simp [show (78732 * k + 23105) % 2 ≠ 0 by omega]
    omega
  have h25 : C (236196 * k + 69316) = 118098 * k + 34658 := by
    unfold C
    simp [show (236196 * k + 69316) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 34658) = 59049 * k + 17329 := by
    unfold C
    simp [show (118098 * k + 34658) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 19231) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 19231)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

end CollatzM16ShardG
