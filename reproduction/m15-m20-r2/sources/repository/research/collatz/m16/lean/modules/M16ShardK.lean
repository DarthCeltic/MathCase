import Mathlib.Data.Nat.Prime.Basic

namespace CollatzM16ShardK

def C (n : Nat) : Nat := if n % 2 = 0 then n / 2 else 3 * n + 1

def iterate (n t : Nat) : Nat := Nat.rec n (fun _ previous => C previous) t

theorem descent_mod65536_27903 : ∀ k : Nat,
    iterate (65536 * k + 27903) 26 = 59049 * k + 25142 ∧
      59049 * k + 25142 < 65536 * k + 27903 := by
  intro k
  have h1 : C (65536 * k + 27903) = 196608 * k + 83710 := by
    unfold C
    simp [show (65536 * k + 27903) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 83710) = 98304 * k + 41855 := by
    unfold C
    simp [show (196608 * k + 83710) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 41855) = 294912 * k + 125566 := by
    unfold C
    simp [show (98304 * k + 41855) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 125566) = 147456 * k + 62783 := by
    unfold C
    simp [show (294912 * k + 125566) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 62783) = 442368 * k + 188350 := by
    unfold C
    simp [show (147456 * k + 62783) % 2 ≠ 0 by omega]
    omega
  have h6 : C (442368 * k + 188350) = 221184 * k + 94175 := by
    unfold C
    simp [show (442368 * k + 188350) % 2 = 0 by omega]
    omega
  have h7 : C (221184 * k + 94175) = 663552 * k + 282526 := by
    unfold C
    simp [show (221184 * k + 94175) % 2 ≠ 0 by omega]
    omega
  have h8 : C (663552 * k + 282526) = 331776 * k + 141263 := by
    unfold C
    simp [show (663552 * k + 282526) % 2 = 0 by omega]
    omega
  have h9 : C (331776 * k + 141263) = 995328 * k + 423790 := by
    unfold C
    simp [show (331776 * k + 141263) % 2 ≠ 0 by omega]
    omega
  have h10 : C (995328 * k + 423790) = 497664 * k + 211895 := by
    unfold C
    simp [show (995328 * k + 423790) % 2 = 0 by omega]
    omega
  have h11 : C (497664 * k + 211895) = 1492992 * k + 635686 := by
    unfold C
    simp [show (497664 * k + 211895) % 2 ≠ 0 by omega]
    omega
  have h12 : C (1492992 * k + 635686) = 746496 * k + 317843 := by
    unfold C
    simp [show (1492992 * k + 635686) % 2 = 0 by omega]
    omega
  have h13 : C (746496 * k + 317843) = 2239488 * k + 953530 := by
    unfold C
    simp [show (746496 * k + 317843) % 2 ≠ 0 by omega]
    omega
  have h14 : C (2239488 * k + 953530) = 1119744 * k + 476765 := by
    unfold C
    simp [show (2239488 * k + 953530) % 2 = 0 by omega]
    omega
  have h15 : C (1119744 * k + 476765) = 3359232 * k + 1430296 := by
    unfold C
    simp [show (1119744 * k + 476765) % 2 ≠ 0 by omega]
    omega
  have h16 : C (3359232 * k + 1430296) = 1679616 * k + 715148 := by
    unfold C
    simp [show (3359232 * k + 1430296) % 2 = 0 by omega]
    omega
  have h17 : C (1679616 * k + 715148) = 839808 * k + 357574 := by
    unfold C
    simp [show (1679616 * k + 715148) % 2 = 0 by omega]
    omega
  have h18 : C (839808 * k + 357574) = 419904 * k + 178787 := by
    unfold C
    simp [show (839808 * k + 357574) % 2 = 0 by omega]
    omega
  have h19 : C (419904 * k + 178787) = 1259712 * k + 536362 := by
    unfold C
    simp [show (419904 * k + 178787) % 2 ≠ 0 by omega]
    omega
  have h20 : C (1259712 * k + 536362) = 629856 * k + 268181 := by
    unfold C
    simp [show (1259712 * k + 536362) % 2 = 0 by omega]
    omega
  have h21 : C (629856 * k + 268181) = 1889568 * k + 804544 := by
    unfold C
    simp [show (629856 * k + 268181) % 2 ≠ 0 by omega]
    omega
  have h22 : C (1889568 * k + 804544) = 944784 * k + 402272 := by
    unfold C
    simp [show (1889568 * k + 804544) % 2 = 0 by omega]
    omega
  have h23 : C (944784 * k + 402272) = 472392 * k + 201136 := by
    unfold C
    simp [show (944784 * k + 402272) % 2 = 0 by omega]
    omega
  have h24 : C (472392 * k + 201136) = 236196 * k + 100568 := by
    unfold C
    simp [show (472392 * k + 201136) % 2 = 0 by omega]
    omega
  have h25 : C (236196 * k + 100568) = 118098 * k + 50284 := by
    unfold C
    simp [show (236196 * k + 100568) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 50284) = 59049 * k + 25142 := by
    unfold C
    simp [show (118098 * k + 50284) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 27903) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 27903)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_27951 : ∀ k : Nat,
    iterate (65536 * k + 27951) 26 = 59049 * k + 25186 ∧
      59049 * k + 25186 < 65536 * k + 27951 := by
  intro k
  have h1 : C (65536 * k + 27951) = 196608 * k + 83854 := by
    unfold C
    simp [show (65536 * k + 27951) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 83854) = 98304 * k + 41927 := by
    unfold C
    simp [show (196608 * k + 83854) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 41927) = 294912 * k + 125782 := by
    unfold C
    simp [show (98304 * k + 41927) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 125782) = 147456 * k + 62891 := by
    unfold C
    simp [show (294912 * k + 125782) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 62891) = 442368 * k + 188674 := by
    unfold C
    simp [show (147456 * k + 62891) % 2 ≠ 0 by omega]
    omega
  have h6 : C (442368 * k + 188674) = 221184 * k + 94337 := by
    unfold C
    simp [show (442368 * k + 188674) % 2 = 0 by omega]
    omega
  have h7 : C (221184 * k + 94337) = 663552 * k + 283012 := by
    unfold C
    simp [show (221184 * k + 94337) % 2 ≠ 0 by omega]
    omega
  have h8 : C (663552 * k + 283012) = 331776 * k + 141506 := by
    unfold C
    simp [show (663552 * k + 283012) % 2 = 0 by omega]
    omega
  have h9 : C (331776 * k + 141506) = 165888 * k + 70753 := by
    unfold C
    simp [show (331776 * k + 141506) % 2 = 0 by omega]
    omega
  have h10 : C (165888 * k + 70753) = 497664 * k + 212260 := by
    unfold C
    simp [show (165888 * k + 70753) % 2 ≠ 0 by omega]
    omega
  have h11 : C (497664 * k + 212260) = 248832 * k + 106130 := by
    unfold C
    simp [show (497664 * k + 212260) % 2 = 0 by omega]
    omega
  have h12 : C (248832 * k + 106130) = 124416 * k + 53065 := by
    unfold C
    simp [show (248832 * k + 106130) % 2 = 0 by omega]
    omega
  have h13 : C (124416 * k + 53065) = 373248 * k + 159196 := by
    unfold C
    simp [show (124416 * k + 53065) % 2 ≠ 0 by omega]
    omega
  have h14 : C (373248 * k + 159196) = 186624 * k + 79598 := by
    unfold C
    simp [show (373248 * k + 159196) % 2 = 0 by omega]
    omega
  have h15 : C (186624 * k + 79598) = 93312 * k + 39799 := by
    unfold C
    simp [show (186624 * k + 79598) % 2 = 0 by omega]
    omega
  have h16 : C (93312 * k + 39799) = 279936 * k + 119398 := by
    unfold C
    simp [show (93312 * k + 39799) % 2 ≠ 0 by omega]
    omega
  have h17 : C (279936 * k + 119398) = 139968 * k + 59699 := by
    unfold C
    simp [show (279936 * k + 119398) % 2 = 0 by omega]
    omega
  have h18 : C (139968 * k + 59699) = 419904 * k + 179098 := by
    unfold C
    simp [show (139968 * k + 59699) % 2 ≠ 0 by omega]
    omega
  have h19 : C (419904 * k + 179098) = 209952 * k + 89549 := by
    unfold C
    simp [show (419904 * k + 179098) % 2 = 0 by omega]
    omega
  have h20 : C (209952 * k + 89549) = 629856 * k + 268648 := by
    unfold C
    simp [show (209952 * k + 89549) % 2 ≠ 0 by omega]
    omega
  have h21 : C (629856 * k + 268648) = 314928 * k + 134324 := by
    unfold C
    simp [show (629856 * k + 268648) % 2 = 0 by omega]
    omega
  have h22 : C (314928 * k + 134324) = 157464 * k + 67162 := by
    unfold C
    simp [show (314928 * k + 134324) % 2 = 0 by omega]
    omega
  have h23 : C (157464 * k + 67162) = 78732 * k + 33581 := by
    unfold C
    simp [show (157464 * k + 67162) % 2 = 0 by omega]
    omega
  have h24 : C (78732 * k + 33581) = 236196 * k + 100744 := by
    unfold C
    simp [show (78732 * k + 33581) % 2 ≠ 0 by omega]
    omega
  have h25 : C (236196 * k + 100744) = 118098 * k + 50372 := by
    unfold C
    simp [show (236196 * k + 100744) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 50372) = 59049 * k + 25186 := by
    unfold C
    simp [show (118098 * k + 50372) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 27951) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 27951)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_28095 : ∀ k : Nat,
    iterate (65536 * k + 28095) 26 = 59049 * k + 25315 ∧
      59049 * k + 25315 < 65536 * k + 28095 := by
  intro k
  have h1 : C (65536 * k + 28095) = 196608 * k + 84286 := by
    unfold C
    simp [show (65536 * k + 28095) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 84286) = 98304 * k + 42143 := by
    unfold C
    simp [show (196608 * k + 84286) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 42143) = 294912 * k + 126430 := by
    unfold C
    simp [show (98304 * k + 42143) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 126430) = 147456 * k + 63215 := by
    unfold C
    simp [show (294912 * k + 126430) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 63215) = 442368 * k + 189646 := by
    unfold C
    simp [show (147456 * k + 63215) % 2 ≠ 0 by omega]
    omega
  have h6 : C (442368 * k + 189646) = 221184 * k + 94823 := by
    unfold C
    simp [show (442368 * k + 189646) % 2 = 0 by omega]
    omega
  have h7 : C (221184 * k + 94823) = 663552 * k + 284470 := by
    unfold C
    simp [show (221184 * k + 94823) % 2 ≠ 0 by omega]
    omega
  have h8 : C (663552 * k + 284470) = 331776 * k + 142235 := by
    unfold C
    simp [show (663552 * k + 284470) % 2 = 0 by omega]
    omega
  have h9 : C (331776 * k + 142235) = 995328 * k + 426706 := by
    unfold C
    simp [show (331776 * k + 142235) % 2 ≠ 0 by omega]
    omega
  have h10 : C (995328 * k + 426706) = 497664 * k + 213353 := by
    unfold C
    simp [show (995328 * k + 426706) % 2 = 0 by omega]
    omega
  have h11 : C (497664 * k + 213353) = 1492992 * k + 640060 := by
    unfold C
    simp [show (497664 * k + 213353) % 2 ≠ 0 by omega]
    omega
  have h12 : C (1492992 * k + 640060) = 746496 * k + 320030 := by
    unfold C
    simp [show (1492992 * k + 640060) % 2 = 0 by omega]
    omega
  have h13 : C (746496 * k + 320030) = 373248 * k + 160015 := by
    unfold C
    simp [show (746496 * k + 320030) % 2 = 0 by omega]
    omega
  have h14 : C (373248 * k + 160015) = 1119744 * k + 480046 := by
    unfold C
    simp [show (373248 * k + 160015) % 2 ≠ 0 by omega]
    omega
  have h15 : C (1119744 * k + 480046) = 559872 * k + 240023 := by
    unfold C
    simp [show (1119744 * k + 480046) % 2 = 0 by omega]
    omega
  have h16 : C (559872 * k + 240023) = 1679616 * k + 720070 := by
    unfold C
    simp [show (559872 * k + 240023) % 2 ≠ 0 by omega]
    omega
  have h17 : C (1679616 * k + 720070) = 839808 * k + 360035 := by
    unfold C
    simp [show (1679616 * k + 720070) % 2 = 0 by omega]
    omega
  have h18 : C (839808 * k + 360035) = 2519424 * k + 1080106 := by
    unfold C
    simp [show (839808 * k + 360035) % 2 ≠ 0 by omega]
    omega
  have h19 : C (2519424 * k + 1080106) = 1259712 * k + 540053 := by
    unfold C
    simp [show (2519424 * k + 1080106) % 2 = 0 by omega]
    omega
  have h20 : C (1259712 * k + 540053) = 3779136 * k + 1620160 := by
    unfold C
    simp [show (1259712 * k + 540053) % 2 ≠ 0 by omega]
    omega
  have h21 : C (3779136 * k + 1620160) = 1889568 * k + 810080 := by
    unfold C
    simp [show (3779136 * k + 1620160) % 2 = 0 by omega]
    omega
  have h22 : C (1889568 * k + 810080) = 944784 * k + 405040 := by
    unfold C
    simp [show (1889568 * k + 810080) % 2 = 0 by omega]
    omega
  have h23 : C (944784 * k + 405040) = 472392 * k + 202520 := by
    unfold C
    simp [show (944784 * k + 405040) % 2 = 0 by omega]
    omega
  have h24 : C (472392 * k + 202520) = 236196 * k + 101260 := by
    unfold C
    simp [show (472392 * k + 202520) % 2 = 0 by omega]
    omega
  have h25 : C (236196 * k + 101260) = 118098 * k + 50630 := by
    unfold C
    simp [show (236196 * k + 101260) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 50630) = 59049 * k + 25315 := by
    unfold C
    simp [show (118098 * k + 50630) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 28095) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 28095)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_28191 : ∀ k : Nat,
    iterate (65536 * k + 28191) 26 = 59049 * k + 25402 ∧
      59049 * k + 25402 < 65536 * k + 28191 := by
  intro k
  have h1 : C (65536 * k + 28191) = 196608 * k + 84574 := by
    unfold C
    simp [show (65536 * k + 28191) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 84574) = 98304 * k + 42287 := by
    unfold C
    simp [show (196608 * k + 84574) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 42287) = 294912 * k + 126862 := by
    unfold C
    simp [show (98304 * k + 42287) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 126862) = 147456 * k + 63431 := by
    unfold C
    simp [show (294912 * k + 126862) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 63431) = 442368 * k + 190294 := by
    unfold C
    simp [show (147456 * k + 63431) % 2 ≠ 0 by omega]
    omega
  have h6 : C (442368 * k + 190294) = 221184 * k + 95147 := by
    unfold C
    simp [show (442368 * k + 190294) % 2 = 0 by omega]
    omega
  have h7 : C (221184 * k + 95147) = 663552 * k + 285442 := by
    unfold C
    simp [show (221184 * k + 95147) % 2 ≠ 0 by omega]
    omega
  have h8 : C (663552 * k + 285442) = 331776 * k + 142721 := by
    unfold C
    simp [show (663552 * k + 285442) % 2 = 0 by omega]
    omega
  have h9 : C (331776 * k + 142721) = 995328 * k + 428164 := by
    unfold C
    simp [show (331776 * k + 142721) % 2 ≠ 0 by omega]
    omega
  have h10 : C (995328 * k + 428164) = 497664 * k + 214082 := by
    unfold C
    simp [show (995328 * k + 428164) % 2 = 0 by omega]
    omega
  have h11 : C (497664 * k + 214082) = 248832 * k + 107041 := by
    unfold C
    simp [show (497664 * k + 214082) % 2 = 0 by omega]
    omega
  have h12 : C (248832 * k + 107041) = 746496 * k + 321124 := by
    unfold C
    simp [show (248832 * k + 107041) % 2 ≠ 0 by omega]
    omega
  have h13 : C (746496 * k + 321124) = 373248 * k + 160562 := by
    unfold C
    simp [show (746496 * k + 321124) % 2 = 0 by omega]
    omega
  have h14 : C (373248 * k + 160562) = 186624 * k + 80281 := by
    unfold C
    simp [show (373248 * k + 160562) % 2 = 0 by omega]
    omega
  have h15 : C (186624 * k + 80281) = 559872 * k + 240844 := by
    unfold C
    simp [show (186624 * k + 80281) % 2 ≠ 0 by omega]
    omega
  have h16 : C (559872 * k + 240844) = 279936 * k + 120422 := by
    unfold C
    simp [show (559872 * k + 240844) % 2 = 0 by omega]
    omega
  have h17 : C (279936 * k + 120422) = 139968 * k + 60211 := by
    unfold C
    simp [show (279936 * k + 120422) % 2 = 0 by omega]
    omega
  have h18 : C (139968 * k + 60211) = 419904 * k + 180634 := by
    unfold C
    simp [show (139968 * k + 60211) % 2 ≠ 0 by omega]
    omega
  have h19 : C (419904 * k + 180634) = 209952 * k + 90317 := by
    unfold C
    simp [show (419904 * k + 180634) % 2 = 0 by omega]
    omega
  have h20 : C (209952 * k + 90317) = 629856 * k + 270952 := by
    unfold C
    simp [show (209952 * k + 90317) % 2 ≠ 0 by omega]
    omega
  have h21 : C (629856 * k + 270952) = 314928 * k + 135476 := by
    unfold C
    simp [show (629856 * k + 270952) % 2 = 0 by omega]
    omega
  have h22 : C (314928 * k + 135476) = 157464 * k + 67738 := by
    unfold C
    simp [show (314928 * k + 135476) % 2 = 0 by omega]
    omega
  have h23 : C (157464 * k + 67738) = 78732 * k + 33869 := by
    unfold C
    simp [show (157464 * k + 67738) % 2 = 0 by omega]
    omega
  have h24 : C (78732 * k + 33869) = 236196 * k + 101608 := by
    unfold C
    simp [show (78732 * k + 33869) % 2 ≠ 0 by omega]
    omega
  have h25 : C (236196 * k + 101608) = 118098 * k + 50804 := by
    unfold C
    simp [show (236196 * k + 101608) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 50804) = 59049 * k + 25402 := by
    unfold C
    simp [show (118098 * k + 50804) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 28191) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 28191)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_28319 : ∀ k : Nat,
    iterate (65536 * k + 28319) 26 = 59049 * k + 25517 ∧
      59049 * k + 25517 < 65536 * k + 28319 := by
  intro k
  have h1 : C (65536 * k + 28319) = 196608 * k + 84958 := by
    unfold C
    simp [show (65536 * k + 28319) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 84958) = 98304 * k + 42479 := by
    unfold C
    simp [show (196608 * k + 84958) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 42479) = 294912 * k + 127438 := by
    unfold C
    simp [show (98304 * k + 42479) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 127438) = 147456 * k + 63719 := by
    unfold C
    simp [show (294912 * k + 127438) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 63719) = 442368 * k + 191158 := by
    unfold C
    simp [show (147456 * k + 63719) % 2 ≠ 0 by omega]
    omega
  have h6 : C (442368 * k + 191158) = 221184 * k + 95579 := by
    unfold C
    simp [show (442368 * k + 191158) % 2 = 0 by omega]
    omega
  have h7 : C (221184 * k + 95579) = 663552 * k + 286738 := by
    unfold C
    simp [show (221184 * k + 95579) % 2 ≠ 0 by omega]
    omega
  have h8 : C (663552 * k + 286738) = 331776 * k + 143369 := by
    unfold C
    simp [show (663552 * k + 286738) % 2 = 0 by omega]
    omega
  have h9 : C (331776 * k + 143369) = 995328 * k + 430108 := by
    unfold C
    simp [show (331776 * k + 143369) % 2 ≠ 0 by omega]
    omega
  have h10 : C (995328 * k + 430108) = 497664 * k + 215054 := by
    unfold C
    simp [show (995328 * k + 430108) % 2 = 0 by omega]
    omega
  have h11 : C (497664 * k + 215054) = 248832 * k + 107527 := by
    unfold C
    simp [show (497664 * k + 215054) % 2 = 0 by omega]
    omega
  have h12 : C (248832 * k + 107527) = 746496 * k + 322582 := by
    unfold C
    simp [show (248832 * k + 107527) % 2 ≠ 0 by omega]
    omega
  have h13 : C (746496 * k + 322582) = 373248 * k + 161291 := by
    unfold C
    simp [show (746496 * k + 322582) % 2 = 0 by omega]
    omega
  have h14 : C (373248 * k + 161291) = 1119744 * k + 483874 := by
    unfold C
    simp [show (373248 * k + 161291) % 2 ≠ 0 by omega]
    omega
  have h15 : C (1119744 * k + 483874) = 559872 * k + 241937 := by
    unfold C
    simp [show (1119744 * k + 483874) % 2 = 0 by omega]
    omega
  have h16 : C (559872 * k + 241937) = 1679616 * k + 725812 := by
    unfold C
    simp [show (559872 * k + 241937) % 2 ≠ 0 by omega]
    omega
  have h17 : C (1679616 * k + 725812) = 839808 * k + 362906 := by
    unfold C
    simp [show (1679616 * k + 725812) % 2 = 0 by omega]
    omega
  have h18 : C (839808 * k + 362906) = 419904 * k + 181453 := by
    unfold C
    simp [show (839808 * k + 362906) % 2 = 0 by omega]
    omega
  have h19 : C (419904 * k + 181453) = 1259712 * k + 544360 := by
    unfold C
    simp [show (419904 * k + 181453) % 2 ≠ 0 by omega]
    omega
  have h20 : C (1259712 * k + 544360) = 629856 * k + 272180 := by
    unfold C
    simp [show (1259712 * k + 544360) % 2 = 0 by omega]
    omega
  have h21 : C (629856 * k + 272180) = 314928 * k + 136090 := by
    unfold C
    simp [show (629856 * k + 272180) % 2 = 0 by omega]
    omega
  have h22 : C (314928 * k + 136090) = 157464 * k + 68045 := by
    unfold C
    simp [show (314928 * k + 136090) % 2 = 0 by omega]
    omega
  have h23 : C (157464 * k + 68045) = 472392 * k + 204136 := by
    unfold C
    simp [show (157464 * k + 68045) % 2 ≠ 0 by omega]
    omega
  have h24 : C (472392 * k + 204136) = 236196 * k + 102068 := by
    unfold C
    simp [show (472392 * k + 204136) % 2 = 0 by omega]
    omega
  have h25 : C (236196 * k + 102068) = 118098 * k + 51034 := by
    unfold C
    simp [show (236196 * k + 102068) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 51034) = 59049 * k + 25517 := by
    unfold C
    simp [show (118098 * k + 51034) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 28319) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 28319)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_28327 : ∀ k : Nat,
    iterate (65536 * k + 28327) 26 = 59049 * k + 25525 ∧
      59049 * k + 25525 < 65536 * k + 28327 := by
  intro k
  have h1 : C (65536 * k + 28327) = 196608 * k + 84982 := by
    unfold C
    simp [show (65536 * k + 28327) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 84982) = 98304 * k + 42491 := by
    unfold C
    simp [show (196608 * k + 84982) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 42491) = 294912 * k + 127474 := by
    unfold C
    simp [show (98304 * k + 42491) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 127474) = 147456 * k + 63737 := by
    unfold C
    simp [show (294912 * k + 127474) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 63737) = 442368 * k + 191212 := by
    unfold C
    simp [show (147456 * k + 63737) % 2 ≠ 0 by omega]
    omega
  have h6 : C (442368 * k + 191212) = 221184 * k + 95606 := by
    unfold C
    simp [show (442368 * k + 191212) % 2 = 0 by omega]
    omega
  have h7 : C (221184 * k + 95606) = 110592 * k + 47803 := by
    unfold C
    simp [show (221184 * k + 95606) % 2 = 0 by omega]
    omega
  have h8 : C (110592 * k + 47803) = 331776 * k + 143410 := by
    unfold C
    simp [show (110592 * k + 47803) % 2 ≠ 0 by omega]
    omega
  have h9 : C (331776 * k + 143410) = 165888 * k + 71705 := by
    unfold C
    simp [show (331776 * k + 143410) % 2 = 0 by omega]
    omega
  have h10 : C (165888 * k + 71705) = 497664 * k + 215116 := by
    unfold C
    simp [show (165888 * k + 71705) % 2 ≠ 0 by omega]
    omega
  have h11 : C (497664 * k + 215116) = 248832 * k + 107558 := by
    unfold C
    simp [show (497664 * k + 215116) % 2 = 0 by omega]
    omega
  have h12 : C (248832 * k + 107558) = 124416 * k + 53779 := by
    unfold C
    simp [show (248832 * k + 107558) % 2 = 0 by omega]
    omega
  have h13 : C (124416 * k + 53779) = 373248 * k + 161338 := by
    unfold C
    simp [show (124416 * k + 53779) % 2 ≠ 0 by omega]
    omega
  have h14 : C (373248 * k + 161338) = 186624 * k + 80669 := by
    unfold C
    simp [show (373248 * k + 161338) % 2 = 0 by omega]
    omega
  have h15 : C (186624 * k + 80669) = 559872 * k + 242008 := by
    unfold C
    simp [show (186624 * k + 80669) % 2 ≠ 0 by omega]
    omega
  have h16 : C (559872 * k + 242008) = 279936 * k + 121004 := by
    unfold C
    simp [show (559872 * k + 242008) % 2 = 0 by omega]
    omega
  have h17 : C (279936 * k + 121004) = 139968 * k + 60502 := by
    unfold C
    simp [show (279936 * k + 121004) % 2 = 0 by omega]
    omega
  have h18 : C (139968 * k + 60502) = 69984 * k + 30251 := by
    unfold C
    simp [show (139968 * k + 60502) % 2 = 0 by omega]
    omega
  have h19 : C (69984 * k + 30251) = 209952 * k + 90754 := by
    unfold C
    simp [show (69984 * k + 30251) % 2 ≠ 0 by omega]
    omega
  have h20 : C (209952 * k + 90754) = 104976 * k + 45377 := by
    unfold C
    simp [show (209952 * k + 90754) % 2 = 0 by omega]
    omega
  have h21 : C (104976 * k + 45377) = 314928 * k + 136132 := by
    unfold C
    simp [show (104976 * k + 45377) % 2 ≠ 0 by omega]
    omega
  have h22 : C (314928 * k + 136132) = 157464 * k + 68066 := by
    unfold C
    simp [show (314928 * k + 136132) % 2 = 0 by omega]
    omega
  have h23 : C (157464 * k + 68066) = 78732 * k + 34033 := by
    unfold C
    simp [show (157464 * k + 68066) % 2 = 0 by omega]
    omega
  have h24 : C (78732 * k + 34033) = 236196 * k + 102100 := by
    unfold C
    simp [show (78732 * k + 34033) % 2 ≠ 0 by omega]
    omega
  have h25 : C (236196 * k + 102100) = 118098 * k + 51050 := by
    unfold C
    simp [show (236196 * k + 102100) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 51050) = 59049 * k + 25525 := by
    unfold C
    simp [show (118098 * k + 51050) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 28327) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 28327)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_28351 : ∀ k : Nat,
    iterate (65536 * k + 28351) 26 = 59049 * k + 25546 ∧
      59049 * k + 25546 < 65536 * k + 28351 := by
  intro k
  have h1 : C (65536 * k + 28351) = 196608 * k + 85054 := by
    unfold C
    simp [show (65536 * k + 28351) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 85054) = 98304 * k + 42527 := by
    unfold C
    simp [show (196608 * k + 85054) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 42527) = 294912 * k + 127582 := by
    unfold C
    simp [show (98304 * k + 42527) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 127582) = 147456 * k + 63791 := by
    unfold C
    simp [show (294912 * k + 127582) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 63791) = 442368 * k + 191374 := by
    unfold C
    simp [show (147456 * k + 63791) % 2 ≠ 0 by omega]
    omega
  have h6 : C (442368 * k + 191374) = 221184 * k + 95687 := by
    unfold C
    simp [show (442368 * k + 191374) % 2 = 0 by omega]
    omega
  have h7 : C (221184 * k + 95687) = 663552 * k + 287062 := by
    unfold C
    simp [show (221184 * k + 95687) % 2 ≠ 0 by omega]
    omega
  have h8 : C (663552 * k + 287062) = 331776 * k + 143531 := by
    unfold C
    simp [show (663552 * k + 287062) % 2 = 0 by omega]
    omega
  have h9 : C (331776 * k + 143531) = 995328 * k + 430594 := by
    unfold C
    simp [show (331776 * k + 143531) % 2 ≠ 0 by omega]
    omega
  have h10 : C (995328 * k + 430594) = 497664 * k + 215297 := by
    unfold C
    simp [show (995328 * k + 430594) % 2 = 0 by omega]
    omega
  have h11 : C (497664 * k + 215297) = 1492992 * k + 645892 := by
    unfold C
    simp [show (497664 * k + 215297) % 2 ≠ 0 by omega]
    omega
  have h12 : C (1492992 * k + 645892) = 746496 * k + 322946 := by
    unfold C
    simp [show (1492992 * k + 645892) % 2 = 0 by omega]
    omega
  have h13 : C (746496 * k + 322946) = 373248 * k + 161473 := by
    unfold C
    simp [show (746496 * k + 322946) % 2 = 0 by omega]
    omega
  have h14 : C (373248 * k + 161473) = 1119744 * k + 484420 := by
    unfold C
    simp [show (373248 * k + 161473) % 2 ≠ 0 by omega]
    omega
  have h15 : C (1119744 * k + 484420) = 559872 * k + 242210 := by
    unfold C
    simp [show (1119744 * k + 484420) % 2 = 0 by omega]
    omega
  have h16 : C (559872 * k + 242210) = 279936 * k + 121105 := by
    unfold C
    simp [show (559872 * k + 242210) % 2 = 0 by omega]
    omega
  have h17 : C (279936 * k + 121105) = 839808 * k + 363316 := by
    unfold C
    simp [show (279936 * k + 121105) % 2 ≠ 0 by omega]
    omega
  have h18 : C (839808 * k + 363316) = 419904 * k + 181658 := by
    unfold C
    simp [show (839808 * k + 363316) % 2 = 0 by omega]
    omega
  have h19 : C (419904 * k + 181658) = 209952 * k + 90829 := by
    unfold C
    simp [show (419904 * k + 181658) % 2 = 0 by omega]
    omega
  have h20 : C (209952 * k + 90829) = 629856 * k + 272488 := by
    unfold C
    simp [show (209952 * k + 90829) % 2 ≠ 0 by omega]
    omega
  have h21 : C (629856 * k + 272488) = 314928 * k + 136244 := by
    unfold C
    simp [show (629856 * k + 272488) % 2 = 0 by omega]
    omega
  have h22 : C (314928 * k + 136244) = 157464 * k + 68122 := by
    unfold C
    simp [show (314928 * k + 136244) % 2 = 0 by omega]
    omega
  have h23 : C (157464 * k + 68122) = 78732 * k + 34061 := by
    unfold C
    simp [show (157464 * k + 68122) % 2 = 0 by omega]
    omega
  have h24 : C (78732 * k + 34061) = 236196 * k + 102184 := by
    unfold C
    simp [show (78732 * k + 34061) % 2 ≠ 0 by omega]
    omega
  have h25 : C (236196 * k + 102184) = 118098 * k + 51092 := by
    unfold C
    simp [show (236196 * k + 102184) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 51092) = 59049 * k + 25546 := by
    unfold C
    simp [show (118098 * k + 51092) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 28351) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 28351)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_28447 : ∀ k : Nat,
    iterate (65536 * k + 28447) 26 = 59049 * k + 25633 ∧
      59049 * k + 25633 < 65536 * k + 28447 := by
  intro k
  have h1 : C (65536 * k + 28447) = 196608 * k + 85342 := by
    unfold C
    simp [show (65536 * k + 28447) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 85342) = 98304 * k + 42671 := by
    unfold C
    simp [show (196608 * k + 85342) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 42671) = 294912 * k + 128014 := by
    unfold C
    simp [show (98304 * k + 42671) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 128014) = 147456 * k + 64007 := by
    unfold C
    simp [show (294912 * k + 128014) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 64007) = 442368 * k + 192022 := by
    unfold C
    simp [show (147456 * k + 64007) % 2 ≠ 0 by omega]
    omega
  have h6 : C (442368 * k + 192022) = 221184 * k + 96011 := by
    unfold C
    simp [show (442368 * k + 192022) % 2 = 0 by omega]
    omega
  have h7 : C (221184 * k + 96011) = 663552 * k + 288034 := by
    unfold C
    simp [show (221184 * k + 96011) % 2 ≠ 0 by omega]
    omega
  have h8 : C (663552 * k + 288034) = 331776 * k + 144017 := by
    unfold C
    simp [show (663552 * k + 288034) % 2 = 0 by omega]
    omega
  have h9 : C (331776 * k + 144017) = 995328 * k + 432052 := by
    unfold C
    simp [show (331776 * k + 144017) % 2 ≠ 0 by omega]
    omega
  have h10 : C (995328 * k + 432052) = 497664 * k + 216026 := by
    unfold C
    simp [show (995328 * k + 432052) % 2 = 0 by omega]
    omega
  have h11 : C (497664 * k + 216026) = 248832 * k + 108013 := by
    unfold C
    simp [show (497664 * k + 216026) % 2 = 0 by omega]
    omega
  have h12 : C (248832 * k + 108013) = 746496 * k + 324040 := by
    unfold C
    simp [show (248832 * k + 108013) % 2 ≠ 0 by omega]
    omega
  have h13 : C (746496 * k + 324040) = 373248 * k + 162020 := by
    unfold C
    simp [show (746496 * k + 324040) % 2 = 0 by omega]
    omega
  have h14 : C (373248 * k + 162020) = 186624 * k + 81010 := by
    unfold C
    simp [show (373248 * k + 162020) % 2 = 0 by omega]
    omega
  have h15 : C (186624 * k + 81010) = 93312 * k + 40505 := by
    unfold C
    simp [show (186624 * k + 81010) % 2 = 0 by omega]
    omega
  have h16 : C (93312 * k + 40505) = 279936 * k + 121516 := by
    unfold C
    simp [show (93312 * k + 40505) % 2 ≠ 0 by omega]
    omega
  have h17 : C (279936 * k + 121516) = 139968 * k + 60758 := by
    unfold C
    simp [show (279936 * k + 121516) % 2 = 0 by omega]
    omega
  have h18 : C (139968 * k + 60758) = 69984 * k + 30379 := by
    unfold C
    simp [show (139968 * k + 60758) % 2 = 0 by omega]
    omega
  have h19 : C (69984 * k + 30379) = 209952 * k + 91138 := by
    unfold C
    simp [show (69984 * k + 30379) % 2 ≠ 0 by omega]
    omega
  have h20 : C (209952 * k + 91138) = 104976 * k + 45569 := by
    unfold C
    simp [show (209952 * k + 91138) % 2 = 0 by omega]
    omega
  have h21 : C (104976 * k + 45569) = 314928 * k + 136708 := by
    unfold C
    simp [show (104976 * k + 45569) % 2 ≠ 0 by omega]
    omega
  have h22 : C (314928 * k + 136708) = 157464 * k + 68354 := by
    unfold C
    simp [show (314928 * k + 136708) % 2 = 0 by omega]
    omega
  have h23 : C (157464 * k + 68354) = 78732 * k + 34177 := by
    unfold C
    simp [show (157464 * k + 68354) % 2 = 0 by omega]
    omega
  have h24 : C (78732 * k + 34177) = 236196 * k + 102532 := by
    unfold C
    simp [show (78732 * k + 34177) % 2 ≠ 0 by omega]
    omega
  have h25 : C (236196 * k + 102532) = 118098 * k + 51266 := by
    unfold C
    simp [show (236196 * k + 102532) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 51266) = 59049 * k + 25633 := by
    unfold C
    simp [show (118098 * k + 51266) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 28447) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 28447)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_28507 : ∀ k : Nat,
    iterate (65536 * k + 28507) 26 = 59049 * k + 25687 ∧
      59049 * k + 25687 < 65536 * k + 28507 := by
  intro k
  have h1 : C (65536 * k + 28507) = 196608 * k + 85522 := by
    unfold C
    simp [show (65536 * k + 28507) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 85522) = 98304 * k + 42761 := by
    unfold C
    simp [show (196608 * k + 85522) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 42761) = 294912 * k + 128284 := by
    unfold C
    simp [show (98304 * k + 42761) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 128284) = 147456 * k + 64142 := by
    unfold C
    simp [show (294912 * k + 128284) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 64142) = 73728 * k + 32071 := by
    unfold C
    simp [show (147456 * k + 64142) % 2 = 0 by omega]
    omega
  have h6 : C (73728 * k + 32071) = 221184 * k + 96214 := by
    unfold C
    simp [show (73728 * k + 32071) % 2 ≠ 0 by omega]
    omega
  have h7 : C (221184 * k + 96214) = 110592 * k + 48107 := by
    unfold C
    simp [show (221184 * k + 96214) % 2 = 0 by omega]
    omega
  have h8 : C (110592 * k + 48107) = 331776 * k + 144322 := by
    unfold C
    simp [show (110592 * k + 48107) % 2 ≠ 0 by omega]
    omega
  have h9 : C (331776 * k + 144322) = 165888 * k + 72161 := by
    unfold C
    simp [show (331776 * k + 144322) % 2 = 0 by omega]
    omega
  have h10 : C (165888 * k + 72161) = 497664 * k + 216484 := by
    unfold C
    simp [show (165888 * k + 72161) % 2 ≠ 0 by omega]
    omega
  have h11 : C (497664 * k + 216484) = 248832 * k + 108242 := by
    unfold C
    simp [show (497664 * k + 216484) % 2 = 0 by omega]
    omega
  have h12 : C (248832 * k + 108242) = 124416 * k + 54121 := by
    unfold C
    simp [show (248832 * k + 108242) % 2 = 0 by omega]
    omega
  have h13 : C (124416 * k + 54121) = 373248 * k + 162364 := by
    unfold C
    simp [show (124416 * k + 54121) % 2 ≠ 0 by omega]
    omega
  have h14 : C (373248 * k + 162364) = 186624 * k + 81182 := by
    unfold C
    simp [show (373248 * k + 162364) % 2 = 0 by omega]
    omega
  have h15 : C (186624 * k + 81182) = 93312 * k + 40591 := by
    unfold C
    simp [show (186624 * k + 81182) % 2 = 0 by omega]
    omega
  have h16 : C (93312 * k + 40591) = 279936 * k + 121774 := by
    unfold C
    simp [show (93312 * k + 40591) % 2 ≠ 0 by omega]
    omega
  have h17 : C (279936 * k + 121774) = 139968 * k + 60887 := by
    unfold C
    simp [show (279936 * k + 121774) % 2 = 0 by omega]
    omega
  have h18 : C (139968 * k + 60887) = 419904 * k + 182662 := by
    unfold C
    simp [show (139968 * k + 60887) % 2 ≠ 0 by omega]
    omega
  have h19 : C (419904 * k + 182662) = 209952 * k + 91331 := by
    unfold C
    simp [show (419904 * k + 182662) % 2 = 0 by omega]
    omega
  have h20 : C (209952 * k + 91331) = 629856 * k + 273994 := by
    unfold C
    simp [show (209952 * k + 91331) % 2 ≠ 0 by omega]
    omega
  have h21 : C (629856 * k + 273994) = 314928 * k + 136997 := by
    unfold C
    simp [show (629856 * k + 273994) % 2 = 0 by omega]
    omega
  have h22 : C (314928 * k + 136997) = 944784 * k + 410992 := by
    unfold C
    simp [show (314928 * k + 136997) % 2 ≠ 0 by omega]
    omega
  have h23 : C (944784 * k + 410992) = 472392 * k + 205496 := by
    unfold C
    simp [show (944784 * k + 410992) % 2 = 0 by omega]
    omega
  have h24 : C (472392 * k + 205496) = 236196 * k + 102748 := by
    unfold C
    simp [show (472392 * k + 205496) % 2 = 0 by omega]
    omega
  have h25 : C (236196 * k + 102748) = 118098 * k + 51374 := by
    unfold C
    simp [show (236196 * k + 102748) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 51374) = 59049 * k + 25687 := by
    unfold C
    simp [show (118098 * k + 51374) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 28507) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 28507)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_28527 : ∀ k : Nat,
    iterate (65536 * k + 28527) 26 = 59049 * k + 25705 ∧
      59049 * k + 25705 < 65536 * k + 28527 := by
  intro k
  have h1 : C (65536 * k + 28527) = 196608 * k + 85582 := by
    unfold C
    simp [show (65536 * k + 28527) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 85582) = 98304 * k + 42791 := by
    unfold C
    simp [show (196608 * k + 85582) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 42791) = 294912 * k + 128374 := by
    unfold C
    simp [show (98304 * k + 42791) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 128374) = 147456 * k + 64187 := by
    unfold C
    simp [show (294912 * k + 128374) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 64187) = 442368 * k + 192562 := by
    unfold C
    simp [show (147456 * k + 64187) % 2 ≠ 0 by omega]
    omega
  have h6 : C (442368 * k + 192562) = 221184 * k + 96281 := by
    unfold C
    simp [show (442368 * k + 192562) % 2 = 0 by omega]
    omega
  have h7 : C (221184 * k + 96281) = 663552 * k + 288844 := by
    unfold C
    simp [show (221184 * k + 96281) % 2 ≠ 0 by omega]
    omega
  have h8 : C (663552 * k + 288844) = 331776 * k + 144422 := by
    unfold C
    simp [show (663552 * k + 288844) % 2 = 0 by omega]
    omega
  have h9 : C (331776 * k + 144422) = 165888 * k + 72211 := by
    unfold C
    simp [show (331776 * k + 144422) % 2 = 0 by omega]
    omega
  have h10 : C (165888 * k + 72211) = 497664 * k + 216634 := by
    unfold C
    simp [show (165888 * k + 72211) % 2 ≠ 0 by omega]
    omega
  have h11 : C (497664 * k + 216634) = 248832 * k + 108317 := by
    unfold C
    simp [show (497664 * k + 216634) % 2 = 0 by omega]
    omega
  have h12 : C (248832 * k + 108317) = 746496 * k + 324952 := by
    unfold C
    simp [show (248832 * k + 108317) % 2 ≠ 0 by omega]
    omega
  have h13 : C (746496 * k + 324952) = 373248 * k + 162476 := by
    unfold C
    simp [show (746496 * k + 324952) % 2 = 0 by omega]
    omega
  have h14 : C (373248 * k + 162476) = 186624 * k + 81238 := by
    unfold C
    simp [show (373248 * k + 162476) % 2 = 0 by omega]
    omega
  have h15 : C (186624 * k + 81238) = 93312 * k + 40619 := by
    unfold C
    simp [show (186624 * k + 81238) % 2 = 0 by omega]
    omega
  have h16 : C (93312 * k + 40619) = 279936 * k + 121858 := by
    unfold C
    simp [show (93312 * k + 40619) % 2 ≠ 0 by omega]
    omega
  have h17 : C (279936 * k + 121858) = 139968 * k + 60929 := by
    unfold C
    simp [show (279936 * k + 121858) % 2 = 0 by omega]
    omega
  have h18 : C (139968 * k + 60929) = 419904 * k + 182788 := by
    unfold C
    simp [show (139968 * k + 60929) % 2 ≠ 0 by omega]
    omega
  have h19 : C (419904 * k + 182788) = 209952 * k + 91394 := by
    unfold C
    simp [show (419904 * k + 182788) % 2 = 0 by omega]
    omega
  have h20 : C (209952 * k + 91394) = 104976 * k + 45697 := by
    unfold C
    simp [show (209952 * k + 91394) % 2 = 0 by omega]
    omega
  have h21 : C (104976 * k + 45697) = 314928 * k + 137092 := by
    unfold C
    simp [show (104976 * k + 45697) % 2 ≠ 0 by omega]
    omega
  have h22 : C (314928 * k + 137092) = 157464 * k + 68546 := by
    unfold C
    simp [show (314928 * k + 137092) % 2 = 0 by omega]
    omega
  have h23 : C (157464 * k + 68546) = 78732 * k + 34273 := by
    unfold C
    simp [show (157464 * k + 68546) % 2 = 0 by omega]
    omega
  have h24 : C (78732 * k + 34273) = 236196 * k + 102820 := by
    unfold C
    simp [show (78732 * k + 34273) % 2 ≠ 0 by omega]
    omega
  have h25 : C (236196 * k + 102820) = 118098 * k + 51410 := by
    unfold C
    simp [show (236196 * k + 102820) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 51410) = 59049 * k + 25705 := by
    unfold C
    simp [show (118098 * k + 51410) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 28527) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 28527)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_28927 : ∀ k : Nat,
    iterate (65536 * k + 28927) 26 = 59049 * k + 26065 ∧
      59049 * k + 26065 < 65536 * k + 28927 := by
  intro k
  have h1 : C (65536 * k + 28927) = 196608 * k + 86782 := by
    unfold C
    simp [show (65536 * k + 28927) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 86782) = 98304 * k + 43391 := by
    unfold C
    simp [show (196608 * k + 86782) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 43391) = 294912 * k + 130174 := by
    unfold C
    simp [show (98304 * k + 43391) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 130174) = 147456 * k + 65087 := by
    unfold C
    simp [show (294912 * k + 130174) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 65087) = 442368 * k + 195262 := by
    unfold C
    simp [show (147456 * k + 65087) % 2 ≠ 0 by omega]
    omega
  have h6 : C (442368 * k + 195262) = 221184 * k + 97631 := by
    unfold C
    simp [show (442368 * k + 195262) % 2 = 0 by omega]
    omega
  have h7 : C (221184 * k + 97631) = 663552 * k + 292894 := by
    unfold C
    simp [show (221184 * k + 97631) % 2 ≠ 0 by omega]
    omega
  have h8 : C (663552 * k + 292894) = 331776 * k + 146447 := by
    unfold C
    simp [show (663552 * k + 292894) % 2 = 0 by omega]
    omega
  have h9 : C (331776 * k + 146447) = 995328 * k + 439342 := by
    unfold C
    simp [show (331776 * k + 146447) % 2 ≠ 0 by omega]
    omega
  have h10 : C (995328 * k + 439342) = 497664 * k + 219671 := by
    unfold C
    simp [show (995328 * k + 439342) % 2 = 0 by omega]
    omega
  have h11 : C (497664 * k + 219671) = 1492992 * k + 659014 := by
    unfold C
    simp [show (497664 * k + 219671) % 2 ≠ 0 by omega]
    omega
  have h12 : C (1492992 * k + 659014) = 746496 * k + 329507 := by
    unfold C
    simp [show (1492992 * k + 659014) % 2 = 0 by omega]
    omega
  have h13 : C (746496 * k + 329507) = 2239488 * k + 988522 := by
    unfold C
    simp [show (746496 * k + 329507) % 2 ≠ 0 by omega]
    omega
  have h14 : C (2239488 * k + 988522) = 1119744 * k + 494261 := by
    unfold C
    simp [show (2239488 * k + 988522) % 2 = 0 by omega]
    omega
  have h15 : C (1119744 * k + 494261) = 3359232 * k + 1482784 := by
    unfold C
    simp [show (1119744 * k + 494261) % 2 ≠ 0 by omega]
    omega
  have h16 : C (3359232 * k + 1482784) = 1679616 * k + 741392 := by
    unfold C
    simp [show (3359232 * k + 1482784) % 2 = 0 by omega]
    omega
  have h17 : C (1679616 * k + 741392) = 839808 * k + 370696 := by
    unfold C
    simp [show (1679616 * k + 741392) % 2 = 0 by omega]
    omega
  have h18 : C (839808 * k + 370696) = 419904 * k + 185348 := by
    unfold C
    simp [show (839808 * k + 370696) % 2 = 0 by omega]
    omega
  have h19 : C (419904 * k + 185348) = 209952 * k + 92674 := by
    unfold C
    simp [show (419904 * k + 185348) % 2 = 0 by omega]
    omega
  have h20 : C (209952 * k + 92674) = 104976 * k + 46337 := by
    unfold C
    simp [show (209952 * k + 92674) % 2 = 0 by omega]
    omega
  have h21 : C (104976 * k + 46337) = 314928 * k + 139012 := by
    unfold C
    simp [show (104976 * k + 46337) % 2 ≠ 0 by omega]
    omega
  have h22 : C (314928 * k + 139012) = 157464 * k + 69506 := by
    unfold C
    simp [show (314928 * k + 139012) % 2 = 0 by omega]
    omega
  have h23 : C (157464 * k + 69506) = 78732 * k + 34753 := by
    unfold C
    simp [show (157464 * k + 69506) % 2 = 0 by omega]
    omega
  have h24 : C (78732 * k + 34753) = 236196 * k + 104260 := by
    unfold C
    simp [show (78732 * k + 34753) % 2 ≠ 0 by omega]
    omega
  have h25 : C (236196 * k + 104260) = 118098 * k + 52130 := by
    unfold C
    simp [show (236196 * k + 104260) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 52130) = 59049 * k + 26065 := by
    unfold C
    simp [show (118098 * k + 52130) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 28927) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 28927)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_29087 : ∀ k : Nat,
    iterate (65536 * k + 29087) 26 = 59049 * k + 26209 ∧
      59049 * k + 26209 < 65536 * k + 29087 := by
  intro k
  have h1 : C (65536 * k + 29087) = 196608 * k + 87262 := by
    unfold C
    simp [show (65536 * k + 29087) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 87262) = 98304 * k + 43631 := by
    unfold C
    simp [show (196608 * k + 87262) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 43631) = 294912 * k + 130894 := by
    unfold C
    simp [show (98304 * k + 43631) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 130894) = 147456 * k + 65447 := by
    unfold C
    simp [show (294912 * k + 130894) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 65447) = 442368 * k + 196342 := by
    unfold C
    simp [show (147456 * k + 65447) % 2 ≠ 0 by omega]
    omega
  have h6 : C (442368 * k + 196342) = 221184 * k + 98171 := by
    unfold C
    simp [show (442368 * k + 196342) % 2 = 0 by omega]
    omega
  have h7 : C (221184 * k + 98171) = 663552 * k + 294514 := by
    unfold C
    simp [show (221184 * k + 98171) % 2 ≠ 0 by omega]
    omega
  have h8 : C (663552 * k + 294514) = 331776 * k + 147257 := by
    unfold C
    simp [show (663552 * k + 294514) % 2 = 0 by omega]
    omega
  have h9 : C (331776 * k + 147257) = 995328 * k + 441772 := by
    unfold C
    simp [show (331776 * k + 147257) % 2 ≠ 0 by omega]
    omega
  have h10 : C (995328 * k + 441772) = 497664 * k + 220886 := by
    unfold C
    simp [show (995328 * k + 441772) % 2 = 0 by omega]
    omega
  have h11 : C (497664 * k + 220886) = 248832 * k + 110443 := by
    unfold C
    simp [show (497664 * k + 220886) % 2 = 0 by omega]
    omega
  have h12 : C (248832 * k + 110443) = 746496 * k + 331330 := by
    unfold C
    simp [show (248832 * k + 110443) % 2 ≠ 0 by omega]
    omega
  have h13 : C (746496 * k + 331330) = 373248 * k + 165665 := by
    unfold C
    simp [show (746496 * k + 331330) % 2 = 0 by omega]
    omega
  have h14 : C (373248 * k + 165665) = 1119744 * k + 496996 := by
    unfold C
    simp [show (373248 * k + 165665) % 2 ≠ 0 by omega]
    omega
  have h15 : C (1119744 * k + 496996) = 559872 * k + 248498 := by
    unfold C
    simp [show (1119744 * k + 496996) % 2 = 0 by omega]
    omega
  have h16 : C (559872 * k + 248498) = 279936 * k + 124249 := by
    unfold C
    simp [show (559872 * k + 248498) % 2 = 0 by omega]
    omega
  have h17 : C (279936 * k + 124249) = 839808 * k + 372748 := by
    unfold C
    simp [show (279936 * k + 124249) % 2 ≠ 0 by omega]
    omega
  have h18 : C (839808 * k + 372748) = 419904 * k + 186374 := by
    unfold C
    simp [show (839808 * k + 372748) % 2 = 0 by omega]
    omega
  have h19 : C (419904 * k + 186374) = 209952 * k + 93187 := by
    unfold C
    simp [show (419904 * k + 186374) % 2 = 0 by omega]
    omega
  have h20 : C (209952 * k + 93187) = 629856 * k + 279562 := by
    unfold C
    simp [show (209952 * k + 93187) % 2 ≠ 0 by omega]
    omega
  have h21 : C (629856 * k + 279562) = 314928 * k + 139781 := by
    unfold C
    simp [show (629856 * k + 279562) % 2 = 0 by omega]
    omega
  have h22 : C (314928 * k + 139781) = 944784 * k + 419344 := by
    unfold C
    simp [show (314928 * k + 139781) % 2 ≠ 0 by omega]
    omega
  have h23 : C (944784 * k + 419344) = 472392 * k + 209672 := by
    unfold C
    simp [show (944784 * k + 419344) % 2 = 0 by omega]
    omega
  have h24 : C (472392 * k + 209672) = 236196 * k + 104836 := by
    unfold C
    simp [show (472392 * k + 209672) % 2 = 0 by omega]
    omega
  have h25 : C (236196 * k + 104836) = 118098 * k + 52418 := by
    unfold C
    simp [show (236196 * k + 104836) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 52418) = 59049 * k + 26209 := by
    unfold C
    simp [show (118098 * k + 52418) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 29087) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 29087)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_29231 : ∀ k : Nat,
    iterate (65536 * k + 29231) 26 = 59049 * k + 26339 ∧
      59049 * k + 26339 < 65536 * k + 29231 := by
  intro k
  have h1 : C (65536 * k + 29231) = 196608 * k + 87694 := by
    unfold C
    simp [show (65536 * k + 29231) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 87694) = 98304 * k + 43847 := by
    unfold C
    simp [show (196608 * k + 87694) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 43847) = 294912 * k + 131542 := by
    unfold C
    simp [show (98304 * k + 43847) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 131542) = 147456 * k + 65771 := by
    unfold C
    simp [show (294912 * k + 131542) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 65771) = 442368 * k + 197314 := by
    unfold C
    simp [show (147456 * k + 65771) % 2 ≠ 0 by omega]
    omega
  have h6 : C (442368 * k + 197314) = 221184 * k + 98657 := by
    unfold C
    simp [show (442368 * k + 197314) % 2 = 0 by omega]
    omega
  have h7 : C (221184 * k + 98657) = 663552 * k + 295972 := by
    unfold C
    simp [show (221184 * k + 98657) % 2 ≠ 0 by omega]
    omega
  have h8 : C (663552 * k + 295972) = 331776 * k + 147986 := by
    unfold C
    simp [show (663552 * k + 295972) % 2 = 0 by omega]
    omega
  have h9 : C (331776 * k + 147986) = 165888 * k + 73993 := by
    unfold C
    simp [show (331776 * k + 147986) % 2 = 0 by omega]
    omega
  have h10 : C (165888 * k + 73993) = 497664 * k + 221980 := by
    unfold C
    simp [show (165888 * k + 73993) % 2 ≠ 0 by omega]
    omega
  have h11 : C (497664 * k + 221980) = 248832 * k + 110990 := by
    unfold C
    simp [show (497664 * k + 221980) % 2 = 0 by omega]
    omega
  have h12 : C (248832 * k + 110990) = 124416 * k + 55495 := by
    unfold C
    simp [show (248832 * k + 110990) % 2 = 0 by omega]
    omega
  have h13 : C (124416 * k + 55495) = 373248 * k + 166486 := by
    unfold C
    simp [show (124416 * k + 55495) % 2 ≠ 0 by omega]
    omega
  have h14 : C (373248 * k + 166486) = 186624 * k + 83243 := by
    unfold C
    simp [show (373248 * k + 166486) % 2 = 0 by omega]
    omega
  have h15 : C (186624 * k + 83243) = 559872 * k + 249730 := by
    unfold C
    simp [show (186624 * k + 83243) % 2 ≠ 0 by omega]
    omega
  have h16 : C (559872 * k + 249730) = 279936 * k + 124865 := by
    unfold C
    simp [show (559872 * k + 249730) % 2 = 0 by omega]
    omega
  have h17 : C (279936 * k + 124865) = 839808 * k + 374596 := by
    unfold C
    simp [show (279936 * k + 124865) % 2 ≠ 0 by omega]
    omega
  have h18 : C (839808 * k + 374596) = 419904 * k + 187298 := by
    unfold C
    simp [show (839808 * k + 374596) % 2 = 0 by omega]
    omega
  have h19 : C (419904 * k + 187298) = 209952 * k + 93649 := by
    unfold C
    simp [show (419904 * k + 187298) % 2 = 0 by omega]
    omega
  have h20 : C (209952 * k + 93649) = 629856 * k + 280948 := by
    unfold C
    simp [show (209952 * k + 93649) % 2 ≠ 0 by omega]
    omega
  have h21 : C (629856 * k + 280948) = 314928 * k + 140474 := by
    unfold C
    simp [show (629856 * k + 280948) % 2 = 0 by omega]
    omega
  have h22 : C (314928 * k + 140474) = 157464 * k + 70237 := by
    unfold C
    simp [show (314928 * k + 140474) % 2 = 0 by omega]
    omega
  have h23 : C (157464 * k + 70237) = 472392 * k + 210712 := by
    unfold C
    simp [show (157464 * k + 70237) % 2 ≠ 0 by omega]
    omega
  have h24 : C (472392 * k + 210712) = 236196 * k + 105356 := by
    unfold C
    simp [show (472392 * k + 210712) % 2 = 0 by omega]
    omega
  have h25 : C (236196 * k + 105356) = 118098 * k + 52678 := by
    unfold C
    simp [show (236196 * k + 105356) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 52678) = 59049 * k + 26339 := by
    unfold C
    simp [show (118098 * k + 52678) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 29231) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 29231)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_29631 : ∀ k : Nat,
    iterate (65536 * k + 29631) 26 = 59049 * k + 26699 ∧
      59049 * k + 26699 < 65536 * k + 29631 := by
  intro k
  have h1 : C (65536 * k + 29631) = 196608 * k + 88894 := by
    unfold C
    simp [show (65536 * k + 29631) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 88894) = 98304 * k + 44447 := by
    unfold C
    simp [show (196608 * k + 88894) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 44447) = 294912 * k + 133342 := by
    unfold C
    simp [show (98304 * k + 44447) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 133342) = 147456 * k + 66671 := by
    unfold C
    simp [show (294912 * k + 133342) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 66671) = 442368 * k + 200014 := by
    unfold C
    simp [show (147456 * k + 66671) % 2 ≠ 0 by omega]
    omega
  have h6 : C (442368 * k + 200014) = 221184 * k + 100007 := by
    unfold C
    simp [show (442368 * k + 200014) % 2 = 0 by omega]
    omega
  have h7 : C (221184 * k + 100007) = 663552 * k + 300022 := by
    unfold C
    simp [show (221184 * k + 100007) % 2 ≠ 0 by omega]
    omega
  have h8 : C (663552 * k + 300022) = 331776 * k + 150011 := by
    unfold C
    simp [show (663552 * k + 300022) % 2 = 0 by omega]
    omega
  have h9 : C (331776 * k + 150011) = 995328 * k + 450034 := by
    unfold C
    simp [show (331776 * k + 150011) % 2 ≠ 0 by omega]
    omega
  have h10 : C (995328 * k + 450034) = 497664 * k + 225017 := by
    unfold C
    simp [show (995328 * k + 450034) % 2 = 0 by omega]
    omega
  have h11 : C (497664 * k + 225017) = 1492992 * k + 675052 := by
    unfold C
    simp [show (497664 * k + 225017) % 2 ≠ 0 by omega]
    omega
  have h12 : C (1492992 * k + 675052) = 746496 * k + 337526 := by
    unfold C
    simp [show (1492992 * k + 675052) % 2 = 0 by omega]
    omega
  have h13 : C (746496 * k + 337526) = 373248 * k + 168763 := by
    unfold C
    simp [show (746496 * k + 337526) % 2 = 0 by omega]
    omega
  have h14 : C (373248 * k + 168763) = 1119744 * k + 506290 := by
    unfold C
    simp [show (373248 * k + 168763) % 2 ≠ 0 by omega]
    omega
  have h15 : C (1119744 * k + 506290) = 559872 * k + 253145 := by
    unfold C
    simp [show (1119744 * k + 506290) % 2 = 0 by omega]
    omega
  have h16 : C (559872 * k + 253145) = 1679616 * k + 759436 := by
    unfold C
    simp [show (559872 * k + 253145) % 2 ≠ 0 by omega]
    omega
  have h17 : C (1679616 * k + 759436) = 839808 * k + 379718 := by
    unfold C
    simp [show (1679616 * k + 759436) % 2 = 0 by omega]
    omega
  have h18 : C (839808 * k + 379718) = 419904 * k + 189859 := by
    unfold C
    simp [show (839808 * k + 379718) % 2 = 0 by omega]
    omega
  have h19 : C (419904 * k + 189859) = 1259712 * k + 569578 := by
    unfold C
    simp [show (419904 * k + 189859) % 2 ≠ 0 by omega]
    omega
  have h20 : C (1259712 * k + 569578) = 629856 * k + 284789 := by
    unfold C
    simp [show (1259712 * k + 569578) % 2 = 0 by omega]
    omega
  have h21 : C (629856 * k + 284789) = 1889568 * k + 854368 := by
    unfold C
    simp [show (629856 * k + 284789) % 2 ≠ 0 by omega]
    omega
  have h22 : C (1889568 * k + 854368) = 944784 * k + 427184 := by
    unfold C
    simp [show (1889568 * k + 854368) % 2 = 0 by omega]
    omega
  have h23 : C (944784 * k + 427184) = 472392 * k + 213592 := by
    unfold C
    simp [show (944784 * k + 427184) % 2 = 0 by omega]
    omega
  have h24 : C (472392 * k + 213592) = 236196 * k + 106796 := by
    unfold C
    simp [show (472392 * k + 213592) % 2 = 0 by omega]
    omega
  have h25 : C (236196 * k + 106796) = 118098 * k + 53398 := by
    unfold C
    simp [show (236196 * k + 106796) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 53398) = 59049 * k + 26699 := by
    unfold C
    simp [show (118098 * k + 53398) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 29631) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 29631)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_29807 : ∀ k : Nat,
    iterate (65536 * k + 29807) 26 = 59049 * k + 26858 ∧
      59049 * k + 26858 < 65536 * k + 29807 := by
  intro k
  have h1 : C (65536 * k + 29807) = 196608 * k + 89422 := by
    unfold C
    simp [show (65536 * k + 29807) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 89422) = 98304 * k + 44711 := by
    unfold C
    simp [show (196608 * k + 89422) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 44711) = 294912 * k + 134134 := by
    unfold C
    simp [show (98304 * k + 44711) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 134134) = 147456 * k + 67067 := by
    unfold C
    simp [show (294912 * k + 134134) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 67067) = 442368 * k + 201202 := by
    unfold C
    simp [show (147456 * k + 67067) % 2 ≠ 0 by omega]
    omega
  have h6 : C (442368 * k + 201202) = 221184 * k + 100601 := by
    unfold C
    simp [show (442368 * k + 201202) % 2 = 0 by omega]
    omega
  have h7 : C (221184 * k + 100601) = 663552 * k + 301804 := by
    unfold C
    simp [show (221184 * k + 100601) % 2 ≠ 0 by omega]
    omega
  have h8 : C (663552 * k + 301804) = 331776 * k + 150902 := by
    unfold C
    simp [show (663552 * k + 301804) % 2 = 0 by omega]
    omega
  have h9 : C (331776 * k + 150902) = 165888 * k + 75451 := by
    unfold C
    simp [show (331776 * k + 150902) % 2 = 0 by omega]
    omega
  have h10 : C (165888 * k + 75451) = 497664 * k + 226354 := by
    unfold C
    simp [show (165888 * k + 75451) % 2 ≠ 0 by omega]
    omega
  have h11 : C (497664 * k + 226354) = 248832 * k + 113177 := by
    unfold C
    simp [show (497664 * k + 226354) % 2 = 0 by omega]
    omega
  have h12 : C (248832 * k + 113177) = 746496 * k + 339532 := by
    unfold C
    simp [show (248832 * k + 113177) % 2 ≠ 0 by omega]
    omega
  have h13 : C (746496 * k + 339532) = 373248 * k + 169766 := by
    unfold C
    simp [show (746496 * k + 339532) % 2 = 0 by omega]
    omega
  have h14 : C (373248 * k + 169766) = 186624 * k + 84883 := by
    unfold C
    simp [show (373248 * k + 169766) % 2 = 0 by omega]
    omega
  have h15 : C (186624 * k + 84883) = 559872 * k + 254650 := by
    unfold C
    simp [show (186624 * k + 84883) % 2 ≠ 0 by omega]
    omega
  have h16 : C (559872 * k + 254650) = 279936 * k + 127325 := by
    unfold C
    simp [show (559872 * k + 254650) % 2 = 0 by omega]
    omega
  have h17 : C (279936 * k + 127325) = 839808 * k + 381976 := by
    unfold C
    simp [show (279936 * k + 127325) % 2 ≠ 0 by omega]
    omega
  have h18 : C (839808 * k + 381976) = 419904 * k + 190988 := by
    unfold C
    simp [show (839808 * k + 381976) % 2 = 0 by omega]
    omega
  have h19 : C (419904 * k + 190988) = 209952 * k + 95494 := by
    unfold C
    simp [show (419904 * k + 190988) % 2 = 0 by omega]
    omega
  have h20 : C (209952 * k + 95494) = 104976 * k + 47747 := by
    unfold C
    simp [show (209952 * k + 95494) % 2 = 0 by omega]
    omega
  have h21 : C (104976 * k + 47747) = 314928 * k + 143242 := by
    unfold C
    simp [show (104976 * k + 47747) % 2 ≠ 0 by omega]
    omega
  have h22 : C (314928 * k + 143242) = 157464 * k + 71621 := by
    unfold C
    simp [show (314928 * k + 143242) % 2 = 0 by omega]
    omega
  have h23 : C (157464 * k + 71621) = 472392 * k + 214864 := by
    unfold C
    simp [show (157464 * k + 71621) % 2 ≠ 0 by omega]
    omega
  have h24 : C (472392 * k + 214864) = 236196 * k + 107432 := by
    unfold C
    simp [show (472392 * k + 214864) % 2 = 0 by omega]
    omega
  have h25 : C (236196 * k + 107432) = 118098 * k + 53716 := by
    unfold C
    simp [show (236196 * k + 107432) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 53716) = 59049 * k + 26858 := by
    unfold C
    simp [show (118098 * k + 53716) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 29807) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 29807)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_29823 : ∀ k : Nat,
    iterate (65536 * k + 29823) 26 = 59049 * k + 26872 ∧
      59049 * k + 26872 < 65536 * k + 29823 := by
  intro k
  have h1 : C (65536 * k + 29823) = 196608 * k + 89470 := by
    unfold C
    simp [show (65536 * k + 29823) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 89470) = 98304 * k + 44735 := by
    unfold C
    simp [show (196608 * k + 89470) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 44735) = 294912 * k + 134206 := by
    unfold C
    simp [show (98304 * k + 44735) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 134206) = 147456 * k + 67103 := by
    unfold C
    simp [show (294912 * k + 134206) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 67103) = 442368 * k + 201310 := by
    unfold C
    simp [show (147456 * k + 67103) % 2 ≠ 0 by omega]
    omega
  have h6 : C (442368 * k + 201310) = 221184 * k + 100655 := by
    unfold C
    simp [show (442368 * k + 201310) % 2 = 0 by omega]
    omega
  have h7 : C (221184 * k + 100655) = 663552 * k + 301966 := by
    unfold C
    simp [show (221184 * k + 100655) % 2 ≠ 0 by omega]
    omega
  have h8 : C (663552 * k + 301966) = 331776 * k + 150983 := by
    unfold C
    simp [show (663552 * k + 301966) % 2 = 0 by omega]
    omega
  have h9 : C (331776 * k + 150983) = 995328 * k + 452950 := by
    unfold C
    simp [show (331776 * k + 150983) % 2 ≠ 0 by omega]
    omega
  have h10 : C (995328 * k + 452950) = 497664 * k + 226475 := by
    unfold C
    simp [show (995328 * k + 452950) % 2 = 0 by omega]
    omega
  have h11 : C (497664 * k + 226475) = 1492992 * k + 679426 := by
    unfold C
    simp [show (497664 * k + 226475) % 2 ≠ 0 by omega]
    omega
  have h12 : C (1492992 * k + 679426) = 746496 * k + 339713 := by
    unfold C
    simp [show (1492992 * k + 679426) % 2 = 0 by omega]
    omega
  have h13 : C (746496 * k + 339713) = 2239488 * k + 1019140 := by
    unfold C
    simp [show (746496 * k + 339713) % 2 ≠ 0 by omega]
    omega
  have h14 : C (2239488 * k + 1019140) = 1119744 * k + 509570 := by
    unfold C
    simp [show (2239488 * k + 1019140) % 2 = 0 by omega]
    omega
  have h15 : C (1119744 * k + 509570) = 559872 * k + 254785 := by
    unfold C
    simp [show (1119744 * k + 509570) % 2 = 0 by omega]
    omega
  have h16 : C (559872 * k + 254785) = 1679616 * k + 764356 := by
    unfold C
    simp [show (559872 * k + 254785) % 2 ≠ 0 by omega]
    omega
  have h17 : C (1679616 * k + 764356) = 839808 * k + 382178 := by
    unfold C
    simp [show (1679616 * k + 764356) % 2 = 0 by omega]
    omega
  have h18 : C (839808 * k + 382178) = 419904 * k + 191089 := by
    unfold C
    simp [show (839808 * k + 382178) % 2 = 0 by omega]
    omega
  have h19 : C (419904 * k + 191089) = 1259712 * k + 573268 := by
    unfold C
    simp [show (419904 * k + 191089) % 2 ≠ 0 by omega]
    omega
  have h20 : C (1259712 * k + 573268) = 629856 * k + 286634 := by
    unfold C
    simp [show (1259712 * k + 573268) % 2 = 0 by omega]
    omega
  have h21 : C (629856 * k + 286634) = 314928 * k + 143317 := by
    unfold C
    simp [show (629856 * k + 286634) % 2 = 0 by omega]
    omega
  have h22 : C (314928 * k + 143317) = 944784 * k + 429952 := by
    unfold C
    simp [show (314928 * k + 143317) % 2 ≠ 0 by omega]
    omega
  have h23 : C (944784 * k + 429952) = 472392 * k + 214976 := by
    unfold C
    simp [show (944784 * k + 429952) % 2 = 0 by omega]
    omega
  have h24 : C (472392 * k + 214976) = 236196 * k + 107488 := by
    unfold C
    simp [show (472392 * k + 214976) % 2 = 0 by omega]
    omega
  have h25 : C (236196 * k + 107488) = 118098 * k + 53744 := by
    unfold C
    simp [show (236196 * k + 107488) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 53744) = 59049 * k + 26872 := by
    unfold C
    simp [show (118098 * k + 53744) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 29823) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 29823)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_29887 : ∀ k : Nat,
    iterate (65536 * k + 29887) 26 = 59049 * k + 26930 ∧
      59049 * k + 26930 < 65536 * k + 29887 := by
  intro k
  have h1 : C (65536 * k + 29887) = 196608 * k + 89662 := by
    unfold C
    simp [show (65536 * k + 29887) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 89662) = 98304 * k + 44831 := by
    unfold C
    simp [show (196608 * k + 89662) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 44831) = 294912 * k + 134494 := by
    unfold C
    simp [show (98304 * k + 44831) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 134494) = 147456 * k + 67247 := by
    unfold C
    simp [show (294912 * k + 134494) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 67247) = 442368 * k + 201742 := by
    unfold C
    simp [show (147456 * k + 67247) % 2 ≠ 0 by omega]
    omega
  have h6 : C (442368 * k + 201742) = 221184 * k + 100871 := by
    unfold C
    simp [show (442368 * k + 201742) % 2 = 0 by omega]
    omega
  have h7 : C (221184 * k + 100871) = 663552 * k + 302614 := by
    unfold C
    simp [show (221184 * k + 100871) % 2 ≠ 0 by omega]
    omega
  have h8 : C (663552 * k + 302614) = 331776 * k + 151307 := by
    unfold C
    simp [show (663552 * k + 302614) % 2 = 0 by omega]
    omega
  have h9 : C (331776 * k + 151307) = 995328 * k + 453922 := by
    unfold C
    simp [show (331776 * k + 151307) % 2 ≠ 0 by omega]
    omega
  have h10 : C (995328 * k + 453922) = 497664 * k + 226961 := by
    unfold C
    simp [show (995328 * k + 453922) % 2 = 0 by omega]
    omega
  have h11 : C (497664 * k + 226961) = 1492992 * k + 680884 := by
    unfold C
    simp [show (497664 * k + 226961) % 2 ≠ 0 by omega]
    omega
  have h12 : C (1492992 * k + 680884) = 746496 * k + 340442 := by
    unfold C
    simp [show (1492992 * k + 680884) % 2 = 0 by omega]
    omega
  have h13 : C (746496 * k + 340442) = 373248 * k + 170221 := by
    unfold C
    simp [show (746496 * k + 340442) % 2 = 0 by omega]
    omega
  have h14 : C (373248 * k + 170221) = 1119744 * k + 510664 := by
    unfold C
    simp [show (373248 * k + 170221) % 2 ≠ 0 by omega]
    omega
  have h15 : C (1119744 * k + 510664) = 559872 * k + 255332 := by
    unfold C
    simp [show (1119744 * k + 510664) % 2 = 0 by omega]
    omega
  have h16 : C (559872 * k + 255332) = 279936 * k + 127666 := by
    unfold C
    simp [show (559872 * k + 255332) % 2 = 0 by omega]
    omega
  have h17 : C (279936 * k + 127666) = 139968 * k + 63833 := by
    unfold C
    simp [show (279936 * k + 127666) % 2 = 0 by omega]
    omega
  have h18 : C (139968 * k + 63833) = 419904 * k + 191500 := by
    unfold C
    simp [show (139968 * k + 63833) % 2 ≠ 0 by omega]
    omega
  have h19 : C (419904 * k + 191500) = 209952 * k + 95750 := by
    unfold C
    simp [show (419904 * k + 191500) % 2 = 0 by omega]
    omega
  have h20 : C (209952 * k + 95750) = 104976 * k + 47875 := by
    unfold C
    simp [show (209952 * k + 95750) % 2 = 0 by omega]
    omega
  have h21 : C (104976 * k + 47875) = 314928 * k + 143626 := by
    unfold C
    simp [show (104976 * k + 47875) % 2 ≠ 0 by omega]
    omega
  have h22 : C (314928 * k + 143626) = 157464 * k + 71813 := by
    unfold C
    simp [show (314928 * k + 143626) % 2 = 0 by omega]
    omega
  have h23 : C (157464 * k + 71813) = 472392 * k + 215440 := by
    unfold C
    simp [show (157464 * k + 71813) % 2 ≠ 0 by omega]
    omega
  have h24 : C (472392 * k + 215440) = 236196 * k + 107720 := by
    unfold C
    simp [show (472392 * k + 215440) % 2 = 0 by omega]
    omega
  have h25 : C (236196 * k + 107720) = 118098 * k + 53860 := by
    unfold C
    simp [show (236196 * k + 107720) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 53860) = 59049 * k + 26930 := by
    unfold C
    simp [show (118098 * k + 53860) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 29887) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 29887)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_30079 : ∀ k : Nat,
    iterate (65536 * k + 30079) 26 = 59049 * k + 27103 ∧
      59049 * k + 27103 < 65536 * k + 30079 := by
  intro k
  have h1 : C (65536 * k + 30079) = 196608 * k + 90238 := by
    unfold C
    simp [show (65536 * k + 30079) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 90238) = 98304 * k + 45119 := by
    unfold C
    simp [show (196608 * k + 90238) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 45119) = 294912 * k + 135358 := by
    unfold C
    simp [show (98304 * k + 45119) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 135358) = 147456 * k + 67679 := by
    unfold C
    simp [show (294912 * k + 135358) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 67679) = 442368 * k + 203038 := by
    unfold C
    simp [show (147456 * k + 67679) % 2 ≠ 0 by omega]
    omega
  have h6 : C (442368 * k + 203038) = 221184 * k + 101519 := by
    unfold C
    simp [show (442368 * k + 203038) % 2 = 0 by omega]
    omega
  have h7 : C (221184 * k + 101519) = 663552 * k + 304558 := by
    unfold C
    simp [show (221184 * k + 101519) % 2 ≠ 0 by omega]
    omega
  have h8 : C (663552 * k + 304558) = 331776 * k + 152279 := by
    unfold C
    simp [show (663552 * k + 304558) % 2 = 0 by omega]
    omega
  have h9 : C (331776 * k + 152279) = 995328 * k + 456838 := by
    unfold C
    simp [show (331776 * k + 152279) % 2 ≠ 0 by omega]
    omega
  have h10 : C (995328 * k + 456838) = 497664 * k + 228419 := by
    unfold C
    simp [show (995328 * k + 456838) % 2 = 0 by omega]
    omega
  have h11 : C (497664 * k + 228419) = 1492992 * k + 685258 := by
    unfold C
    simp [show (497664 * k + 228419) % 2 ≠ 0 by omega]
    omega
  have h12 : C (1492992 * k + 685258) = 746496 * k + 342629 := by
    unfold C
    simp [show (1492992 * k + 685258) % 2 = 0 by omega]
    omega
  have h13 : C (746496 * k + 342629) = 2239488 * k + 1027888 := by
    unfold C
    simp [show (746496 * k + 342629) % 2 ≠ 0 by omega]
    omega
  have h14 : C (2239488 * k + 1027888) = 1119744 * k + 513944 := by
    unfold C
    simp [show (2239488 * k + 1027888) % 2 = 0 by omega]
    omega
  have h15 : C (1119744 * k + 513944) = 559872 * k + 256972 := by
    unfold C
    simp [show (1119744 * k + 513944) % 2 = 0 by omega]
    omega
  have h16 : C (559872 * k + 256972) = 279936 * k + 128486 := by
    unfold C
    simp [show (559872 * k + 256972) % 2 = 0 by omega]
    omega
  have h17 : C (279936 * k + 128486) = 139968 * k + 64243 := by
    unfold C
    simp [show (279936 * k + 128486) % 2 = 0 by omega]
    omega
  have h18 : C (139968 * k + 64243) = 419904 * k + 192730 := by
    unfold C
    simp [show (139968 * k + 64243) % 2 ≠ 0 by omega]
    omega
  have h19 : C (419904 * k + 192730) = 209952 * k + 96365 := by
    unfold C
    simp [show (419904 * k + 192730) % 2 = 0 by omega]
    omega
  have h20 : C (209952 * k + 96365) = 629856 * k + 289096 := by
    unfold C
    simp [show (209952 * k + 96365) % 2 ≠ 0 by omega]
    omega
  have h21 : C (629856 * k + 289096) = 314928 * k + 144548 := by
    unfold C
    simp [show (629856 * k + 289096) % 2 = 0 by omega]
    omega
  have h22 : C (314928 * k + 144548) = 157464 * k + 72274 := by
    unfold C
    simp [show (314928 * k + 144548) % 2 = 0 by omega]
    omega
  have h23 : C (157464 * k + 72274) = 78732 * k + 36137 := by
    unfold C
    simp [show (157464 * k + 72274) % 2 = 0 by omega]
    omega
  have h24 : C (78732 * k + 36137) = 236196 * k + 108412 := by
    unfold C
    simp [show (78732 * k + 36137) % 2 ≠ 0 by omega]
    omega
  have h25 : C (236196 * k + 108412) = 118098 * k + 54206 := by
    unfold C
    simp [show (236196 * k + 108412) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 54206) = 59049 * k + 27103 := by
    unfold C
    simp [show (118098 * k + 54206) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 30079) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 30079)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_30207 : ∀ k : Nat,
    iterate (65536 * k + 30207) 26 = 59049 * k + 27218 ∧
      59049 * k + 27218 < 65536 * k + 30207 := by
  intro k
  have h1 : C (65536 * k + 30207) = 196608 * k + 90622 := by
    unfold C
    simp [show (65536 * k + 30207) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 90622) = 98304 * k + 45311 := by
    unfold C
    simp [show (196608 * k + 90622) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 45311) = 294912 * k + 135934 := by
    unfold C
    simp [show (98304 * k + 45311) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 135934) = 147456 * k + 67967 := by
    unfold C
    simp [show (294912 * k + 135934) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 67967) = 442368 * k + 203902 := by
    unfold C
    simp [show (147456 * k + 67967) % 2 ≠ 0 by omega]
    omega
  have h6 : C (442368 * k + 203902) = 221184 * k + 101951 := by
    unfold C
    simp [show (442368 * k + 203902) % 2 = 0 by omega]
    omega
  have h7 : C (221184 * k + 101951) = 663552 * k + 305854 := by
    unfold C
    simp [show (221184 * k + 101951) % 2 ≠ 0 by omega]
    omega
  have h8 : C (663552 * k + 305854) = 331776 * k + 152927 := by
    unfold C
    simp [show (663552 * k + 305854) % 2 = 0 by omega]
    omega
  have h9 : C (331776 * k + 152927) = 995328 * k + 458782 := by
    unfold C
    simp [show (331776 * k + 152927) % 2 ≠ 0 by omega]
    omega
  have h10 : C (995328 * k + 458782) = 497664 * k + 229391 := by
    unfold C
    simp [show (995328 * k + 458782) % 2 = 0 by omega]
    omega
  have h11 : C (497664 * k + 229391) = 1492992 * k + 688174 := by
    unfold C
    simp [show (497664 * k + 229391) % 2 ≠ 0 by omega]
    omega
  have h12 : C (1492992 * k + 688174) = 746496 * k + 344087 := by
    unfold C
    simp [show (1492992 * k + 688174) % 2 = 0 by omega]
    omega
  have h13 : C (746496 * k + 344087) = 2239488 * k + 1032262 := by
    unfold C
    simp [show (746496 * k + 344087) % 2 ≠ 0 by omega]
    omega
  have h14 : C (2239488 * k + 1032262) = 1119744 * k + 516131 := by
    unfold C
    simp [show (2239488 * k + 1032262) % 2 = 0 by omega]
    omega
  have h15 : C (1119744 * k + 516131) = 3359232 * k + 1548394 := by
    unfold C
    simp [show (1119744 * k + 516131) % 2 ≠ 0 by omega]
    omega
  have h16 : C (3359232 * k + 1548394) = 1679616 * k + 774197 := by
    unfold C
    simp [show (3359232 * k + 1548394) % 2 = 0 by omega]
    omega
  have h17 : C (1679616 * k + 774197) = 5038848 * k + 2322592 := by
    unfold C
    simp [show (1679616 * k + 774197) % 2 ≠ 0 by omega]
    omega
  have h18 : C (5038848 * k + 2322592) = 2519424 * k + 1161296 := by
    unfold C
    simp [show (5038848 * k + 2322592) % 2 = 0 by omega]
    omega
  have h19 : C (2519424 * k + 1161296) = 1259712 * k + 580648 := by
    unfold C
    simp [show (2519424 * k + 1161296) % 2 = 0 by omega]
    omega
  have h20 : C (1259712 * k + 580648) = 629856 * k + 290324 := by
    unfold C
    simp [show (1259712 * k + 580648) % 2 = 0 by omega]
    omega
  have h21 : C (629856 * k + 290324) = 314928 * k + 145162 := by
    unfold C
    simp [show (629856 * k + 290324) % 2 = 0 by omega]
    omega
  have h22 : C (314928 * k + 145162) = 157464 * k + 72581 := by
    unfold C
    simp [show (314928 * k + 145162) % 2 = 0 by omega]
    omega
  have h23 : C (157464 * k + 72581) = 472392 * k + 217744 := by
    unfold C
    simp [show (157464 * k + 72581) % 2 ≠ 0 by omega]
    omega
  have h24 : C (472392 * k + 217744) = 236196 * k + 108872 := by
    unfold C
    simp [show (472392 * k + 217744) % 2 = 0 by omega]
    omega
  have h25 : C (236196 * k + 108872) = 118098 * k + 54436 := by
    unfold C
    simp [show (236196 * k + 108872) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 54436) = 59049 * k + 27218 := by
    unfold C
    simp [show (118098 * k + 54436) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 30207) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 30207)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_30235 : ∀ k : Nat,
    iterate (65536 * k + 30235) 26 = 59049 * k + 27244 ∧
      59049 * k + 27244 < 65536 * k + 30235 := by
  intro k
  have h1 : C (65536 * k + 30235) = 196608 * k + 90706 := by
    unfold C
    simp [show (65536 * k + 30235) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 90706) = 98304 * k + 45353 := by
    unfold C
    simp [show (196608 * k + 90706) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 45353) = 294912 * k + 136060 := by
    unfold C
    simp [show (98304 * k + 45353) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 136060) = 147456 * k + 68030 := by
    unfold C
    simp [show (294912 * k + 136060) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 68030) = 73728 * k + 34015 := by
    unfold C
    simp [show (147456 * k + 68030) % 2 = 0 by omega]
    omega
  have h6 : C (73728 * k + 34015) = 221184 * k + 102046 := by
    unfold C
    simp [show (73728 * k + 34015) % 2 ≠ 0 by omega]
    omega
  have h7 : C (221184 * k + 102046) = 110592 * k + 51023 := by
    unfold C
    simp [show (221184 * k + 102046) % 2 = 0 by omega]
    omega
  have h8 : C (110592 * k + 51023) = 331776 * k + 153070 := by
    unfold C
    simp [show (110592 * k + 51023) % 2 ≠ 0 by omega]
    omega
  have h9 : C (331776 * k + 153070) = 165888 * k + 76535 := by
    unfold C
    simp [show (331776 * k + 153070) % 2 = 0 by omega]
    omega
  have h10 : C (165888 * k + 76535) = 497664 * k + 229606 := by
    unfold C
    simp [show (165888 * k + 76535) % 2 ≠ 0 by omega]
    omega
  have h11 : C (497664 * k + 229606) = 248832 * k + 114803 := by
    unfold C
    simp [show (497664 * k + 229606) % 2 = 0 by omega]
    omega
  have h12 : C (248832 * k + 114803) = 746496 * k + 344410 := by
    unfold C
    simp [show (248832 * k + 114803) % 2 ≠ 0 by omega]
    omega
  have h13 : C (746496 * k + 344410) = 373248 * k + 172205 := by
    unfold C
    simp [show (746496 * k + 344410) % 2 = 0 by omega]
    omega
  have h14 : C (373248 * k + 172205) = 1119744 * k + 516616 := by
    unfold C
    simp [show (373248 * k + 172205) % 2 ≠ 0 by omega]
    omega
  have h15 : C (1119744 * k + 516616) = 559872 * k + 258308 := by
    unfold C
    simp [show (1119744 * k + 516616) % 2 = 0 by omega]
    omega
  have h16 : C (559872 * k + 258308) = 279936 * k + 129154 := by
    unfold C
    simp [show (559872 * k + 258308) % 2 = 0 by omega]
    omega
  have h17 : C (279936 * k + 129154) = 139968 * k + 64577 := by
    unfold C
    simp [show (279936 * k + 129154) % 2 = 0 by omega]
    omega
  have h18 : C (139968 * k + 64577) = 419904 * k + 193732 := by
    unfold C
    simp [show (139968 * k + 64577) % 2 ≠ 0 by omega]
    omega
  have h19 : C (419904 * k + 193732) = 209952 * k + 96866 := by
    unfold C
    simp [show (419904 * k + 193732) % 2 = 0 by omega]
    omega
  have h20 : C (209952 * k + 96866) = 104976 * k + 48433 := by
    unfold C
    simp [show (209952 * k + 96866) % 2 = 0 by omega]
    omega
  have h21 : C (104976 * k + 48433) = 314928 * k + 145300 := by
    unfold C
    simp [show (104976 * k + 48433) % 2 ≠ 0 by omega]
    omega
  have h22 : C (314928 * k + 145300) = 157464 * k + 72650 := by
    unfold C
    simp [show (314928 * k + 145300) % 2 = 0 by omega]
    omega
  have h23 : C (157464 * k + 72650) = 78732 * k + 36325 := by
    unfold C
    simp [show (157464 * k + 72650) % 2 = 0 by omega]
    omega
  have h24 : C (78732 * k + 36325) = 236196 * k + 108976 := by
    unfold C
    simp [show (78732 * k + 36325) % 2 ≠ 0 by omega]
    omega
  have h25 : C (236196 * k + 108976) = 118098 * k + 54488 := by
    unfold C
    simp [show (236196 * k + 108976) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 54488) = 59049 * k + 27244 := by
    unfold C
    simp [show (118098 * k + 54488) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 30235) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 30235)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

end CollatzM16ShardK
