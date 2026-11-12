import Mathlib.Data.Nat.Prime.Basic

namespace CollatzM16ShardC

def C (n : Nat) : Nat := if n % 2 = 0 then n / 2 else 3 * n + 1

def iterate (n t : Nat) : Nat := Nat.rec n (fun _ previous => C previous) t

theorem descent_mod65536_5663 : ∀ k : Nat,
    iterate (65536 * k + 5663) 26 = 59049 * k + 5104 ∧
      59049 * k + 5104 < 65536 * k + 5663 := by
  intro k
  have h1 : C (65536 * k + 5663) = 196608 * k + 16990 := by
    unfold C
    simp [show (65536 * k + 5663) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 16990) = 98304 * k + 8495 := by
    unfold C
    simp [show (196608 * k + 16990) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 8495) = 294912 * k + 25486 := by
    unfold C
    simp [show (98304 * k + 8495) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 25486) = 147456 * k + 12743 := by
    unfold C
    simp [show (294912 * k + 25486) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 12743) = 442368 * k + 38230 := by
    unfold C
    simp [show (147456 * k + 12743) % 2 ≠ 0 by omega]
    omega
  have h6 : C (442368 * k + 38230) = 221184 * k + 19115 := by
    unfold C
    simp [show (442368 * k + 38230) % 2 = 0 by omega]
    omega
  have h7 : C (221184 * k + 19115) = 663552 * k + 57346 := by
    unfold C
    simp [show (221184 * k + 19115) % 2 ≠ 0 by omega]
    omega
  have h8 : C (663552 * k + 57346) = 331776 * k + 28673 := by
    unfold C
    simp [show (663552 * k + 57346) % 2 = 0 by omega]
    omega
  have h9 : C (331776 * k + 28673) = 995328 * k + 86020 := by
    unfold C
    simp [show (331776 * k + 28673) % 2 ≠ 0 by omega]
    omega
  have h10 : C (995328 * k + 86020) = 497664 * k + 43010 := by
    unfold C
    simp [show (995328 * k + 86020) % 2 = 0 by omega]
    omega
  have h11 : C (497664 * k + 43010) = 248832 * k + 21505 := by
    unfold C
    simp [show (497664 * k + 43010) % 2 = 0 by omega]
    omega
  have h12 : C (248832 * k + 21505) = 746496 * k + 64516 := by
    unfold C
    simp [show (248832 * k + 21505) % 2 ≠ 0 by omega]
    omega
  have h13 : C (746496 * k + 64516) = 373248 * k + 32258 := by
    unfold C
    simp [show (746496 * k + 64516) % 2 = 0 by omega]
    omega
  have h14 : C (373248 * k + 32258) = 186624 * k + 16129 := by
    unfold C
    simp [show (373248 * k + 32258) % 2 = 0 by omega]
    omega
  have h15 : C (186624 * k + 16129) = 559872 * k + 48388 := by
    unfold C
    simp [show (186624 * k + 16129) % 2 ≠ 0 by omega]
    omega
  have h16 : C (559872 * k + 48388) = 279936 * k + 24194 := by
    unfold C
    simp [show (559872 * k + 48388) % 2 = 0 by omega]
    omega
  have h17 : C (279936 * k + 24194) = 139968 * k + 12097 := by
    unfold C
    simp [show (279936 * k + 24194) % 2 = 0 by omega]
    omega
  have h18 : C (139968 * k + 12097) = 419904 * k + 36292 := by
    unfold C
    simp [show (139968 * k + 12097) % 2 ≠ 0 by omega]
    omega
  have h19 : C (419904 * k + 36292) = 209952 * k + 18146 := by
    unfold C
    simp [show (419904 * k + 36292) % 2 = 0 by omega]
    omega
  have h20 : C (209952 * k + 18146) = 104976 * k + 9073 := by
    unfold C
    simp [show (209952 * k + 18146) % 2 = 0 by omega]
    omega
  have h21 : C (104976 * k + 9073) = 314928 * k + 27220 := by
    unfold C
    simp [show (104976 * k + 9073) % 2 ≠ 0 by omega]
    omega
  have h22 : C (314928 * k + 27220) = 157464 * k + 13610 := by
    unfold C
    simp [show (314928 * k + 27220) % 2 = 0 by omega]
    omega
  have h23 : C (157464 * k + 13610) = 78732 * k + 6805 := by
    unfold C
    simp [show (157464 * k + 13610) % 2 = 0 by omega]
    omega
  have h24 : C (78732 * k + 6805) = 236196 * k + 20416 := by
    unfold C
    simp [show (78732 * k + 6805) % 2 ≠ 0 by omega]
    omega
  have h25 : C (236196 * k + 20416) = 118098 * k + 10208 := by
    unfold C
    simp [show (236196 * k + 20416) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 10208) = 59049 * k + 5104 := by
    unfold C
    simp [show (118098 * k + 10208) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 5663) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 5663)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_5823 : ∀ k : Nat,
    iterate (65536 * k + 5823) 26 = 59049 * k + 5248 ∧
      59049 * k + 5248 < 65536 * k + 5823 := by
  intro k
  have h1 : C (65536 * k + 5823) = 196608 * k + 17470 := by
    unfold C
    simp [show (65536 * k + 5823) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 17470) = 98304 * k + 8735 := by
    unfold C
    simp [show (196608 * k + 17470) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 8735) = 294912 * k + 26206 := by
    unfold C
    simp [show (98304 * k + 8735) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 26206) = 147456 * k + 13103 := by
    unfold C
    simp [show (294912 * k + 26206) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 13103) = 442368 * k + 39310 := by
    unfold C
    simp [show (147456 * k + 13103) % 2 ≠ 0 by omega]
    omega
  have h6 : C (442368 * k + 39310) = 221184 * k + 19655 := by
    unfold C
    simp [show (442368 * k + 39310) % 2 = 0 by omega]
    omega
  have h7 : C (221184 * k + 19655) = 663552 * k + 58966 := by
    unfold C
    simp [show (221184 * k + 19655) % 2 ≠ 0 by omega]
    omega
  have h8 : C (663552 * k + 58966) = 331776 * k + 29483 := by
    unfold C
    simp [show (663552 * k + 58966) % 2 = 0 by omega]
    omega
  have h9 : C (331776 * k + 29483) = 995328 * k + 88450 := by
    unfold C
    simp [show (331776 * k + 29483) % 2 ≠ 0 by omega]
    omega
  have h10 : C (995328 * k + 88450) = 497664 * k + 44225 := by
    unfold C
    simp [show (995328 * k + 88450) % 2 = 0 by omega]
    omega
  have h11 : C (497664 * k + 44225) = 1492992 * k + 132676 := by
    unfold C
    simp [show (497664 * k + 44225) % 2 ≠ 0 by omega]
    omega
  have h12 : C (1492992 * k + 132676) = 746496 * k + 66338 := by
    unfold C
    simp [show (1492992 * k + 132676) % 2 = 0 by omega]
    omega
  have h13 : C (746496 * k + 66338) = 373248 * k + 33169 := by
    unfold C
    simp [show (746496 * k + 66338) % 2 = 0 by omega]
    omega
  have h14 : C (373248 * k + 33169) = 1119744 * k + 99508 := by
    unfold C
    simp [show (373248 * k + 33169) % 2 ≠ 0 by omega]
    omega
  have h15 : C (1119744 * k + 99508) = 559872 * k + 49754 := by
    unfold C
    simp [show (1119744 * k + 99508) % 2 = 0 by omega]
    omega
  have h16 : C (559872 * k + 49754) = 279936 * k + 24877 := by
    unfold C
    simp [show (559872 * k + 49754) % 2 = 0 by omega]
    omega
  have h17 : C (279936 * k + 24877) = 839808 * k + 74632 := by
    unfold C
    simp [show (279936 * k + 24877) % 2 ≠ 0 by omega]
    omega
  have h18 : C (839808 * k + 74632) = 419904 * k + 37316 := by
    unfold C
    simp [show (839808 * k + 74632) % 2 = 0 by omega]
    omega
  have h19 : C (419904 * k + 37316) = 209952 * k + 18658 := by
    unfold C
    simp [show (419904 * k + 37316) % 2 = 0 by omega]
    omega
  have h20 : C (209952 * k + 18658) = 104976 * k + 9329 := by
    unfold C
    simp [show (209952 * k + 18658) % 2 = 0 by omega]
    omega
  have h21 : C (104976 * k + 9329) = 314928 * k + 27988 := by
    unfold C
    simp [show (104976 * k + 9329) % 2 ≠ 0 by omega]
    omega
  have h22 : C (314928 * k + 27988) = 157464 * k + 13994 := by
    unfold C
    simp [show (314928 * k + 27988) % 2 = 0 by omega]
    omega
  have h23 : C (157464 * k + 13994) = 78732 * k + 6997 := by
    unfold C
    simp [show (157464 * k + 13994) % 2 = 0 by omega]
    omega
  have h24 : C (78732 * k + 6997) = 236196 * k + 20992 := by
    unfold C
    simp [show (78732 * k + 6997) % 2 ≠ 0 by omega]
    omega
  have h25 : C (236196 * k + 20992) = 118098 * k + 10496 := by
    unfold C
    simp [show (236196 * k + 20992) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 10496) = 59049 * k + 5248 := by
    unfold C
    simp [show (118098 * k + 10496) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 5823) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 5823)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_5863 : ∀ k : Nat,
    iterate (65536 * k + 5863) 26 = 59049 * k + 5284 ∧
      59049 * k + 5284 < 65536 * k + 5863 := by
  intro k
  have h1 : C (65536 * k + 5863) = 196608 * k + 17590 := by
    unfold C
    simp [show (65536 * k + 5863) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 17590) = 98304 * k + 8795 := by
    unfold C
    simp [show (196608 * k + 17590) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 8795) = 294912 * k + 26386 := by
    unfold C
    simp [show (98304 * k + 8795) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 26386) = 147456 * k + 13193 := by
    unfold C
    simp [show (294912 * k + 26386) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 13193) = 442368 * k + 39580 := by
    unfold C
    simp [show (147456 * k + 13193) % 2 ≠ 0 by omega]
    omega
  have h6 : C (442368 * k + 39580) = 221184 * k + 19790 := by
    unfold C
    simp [show (442368 * k + 39580) % 2 = 0 by omega]
    omega
  have h7 : C (221184 * k + 19790) = 110592 * k + 9895 := by
    unfold C
    simp [show (221184 * k + 19790) % 2 = 0 by omega]
    omega
  have h8 : C (110592 * k + 9895) = 331776 * k + 29686 := by
    unfold C
    simp [show (110592 * k + 9895) % 2 ≠ 0 by omega]
    omega
  have h9 : C (331776 * k + 29686) = 165888 * k + 14843 := by
    unfold C
    simp [show (331776 * k + 29686) % 2 = 0 by omega]
    omega
  have h10 : C (165888 * k + 14843) = 497664 * k + 44530 := by
    unfold C
    simp [show (165888 * k + 14843) % 2 ≠ 0 by omega]
    omega
  have h11 : C (497664 * k + 44530) = 248832 * k + 22265 := by
    unfold C
    simp [show (497664 * k + 44530) % 2 = 0 by omega]
    omega
  have h12 : C (248832 * k + 22265) = 746496 * k + 66796 := by
    unfold C
    simp [show (248832 * k + 22265) % 2 ≠ 0 by omega]
    omega
  have h13 : C (746496 * k + 66796) = 373248 * k + 33398 := by
    unfold C
    simp [show (746496 * k + 66796) % 2 = 0 by omega]
    omega
  have h14 : C (373248 * k + 33398) = 186624 * k + 16699 := by
    unfold C
    simp [show (373248 * k + 33398) % 2 = 0 by omega]
    omega
  have h15 : C (186624 * k + 16699) = 559872 * k + 50098 := by
    unfold C
    simp [show (186624 * k + 16699) % 2 ≠ 0 by omega]
    omega
  have h16 : C (559872 * k + 50098) = 279936 * k + 25049 := by
    unfold C
    simp [show (559872 * k + 50098) % 2 = 0 by omega]
    omega
  have h17 : C (279936 * k + 25049) = 839808 * k + 75148 := by
    unfold C
    simp [show (279936 * k + 25049) % 2 ≠ 0 by omega]
    omega
  have h18 : C (839808 * k + 75148) = 419904 * k + 37574 := by
    unfold C
    simp [show (839808 * k + 75148) % 2 = 0 by omega]
    omega
  have h19 : C (419904 * k + 37574) = 209952 * k + 18787 := by
    unfold C
    simp [show (419904 * k + 37574) % 2 = 0 by omega]
    omega
  have h20 : C (209952 * k + 18787) = 629856 * k + 56362 := by
    unfold C
    simp [show (209952 * k + 18787) % 2 ≠ 0 by omega]
    omega
  have h21 : C (629856 * k + 56362) = 314928 * k + 28181 := by
    unfold C
    simp [show (629856 * k + 56362) % 2 = 0 by omega]
    omega
  have h22 : C (314928 * k + 28181) = 944784 * k + 84544 := by
    unfold C
    simp [show (314928 * k + 28181) % 2 ≠ 0 by omega]
    omega
  have h23 : C (944784 * k + 84544) = 472392 * k + 42272 := by
    unfold C
    simp [show (944784 * k + 84544) % 2 = 0 by omega]
    omega
  have h24 : C (472392 * k + 42272) = 236196 * k + 21136 := by
    unfold C
    simp [show (472392 * k + 42272) % 2 = 0 by omega]
    omega
  have h25 : C (236196 * k + 21136) = 118098 * k + 10568 := by
    unfold C
    simp [show (236196 * k + 21136) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 10568) = 59049 * k + 5284 := by
    unfold C
    simp [show (118098 * k + 10568) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 5863) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 5863)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_6207 : ∀ k : Nat,
    iterate (65536 * k + 6207) 26 = 59049 * k + 5594 ∧
      59049 * k + 5594 < 65536 * k + 6207 := by
  intro k
  have h1 : C (65536 * k + 6207) = 196608 * k + 18622 := by
    unfold C
    simp [show (65536 * k + 6207) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 18622) = 98304 * k + 9311 := by
    unfold C
    simp [show (196608 * k + 18622) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 9311) = 294912 * k + 27934 := by
    unfold C
    simp [show (98304 * k + 9311) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 27934) = 147456 * k + 13967 := by
    unfold C
    simp [show (294912 * k + 27934) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 13967) = 442368 * k + 41902 := by
    unfold C
    simp [show (147456 * k + 13967) % 2 ≠ 0 by omega]
    omega
  have h6 : C (442368 * k + 41902) = 221184 * k + 20951 := by
    unfold C
    simp [show (442368 * k + 41902) % 2 = 0 by omega]
    omega
  have h7 : C (221184 * k + 20951) = 663552 * k + 62854 := by
    unfold C
    simp [show (221184 * k + 20951) % 2 ≠ 0 by omega]
    omega
  have h8 : C (663552 * k + 62854) = 331776 * k + 31427 := by
    unfold C
    simp [show (663552 * k + 62854) % 2 = 0 by omega]
    omega
  have h9 : C (331776 * k + 31427) = 995328 * k + 94282 := by
    unfold C
    simp [show (331776 * k + 31427) % 2 ≠ 0 by omega]
    omega
  have h10 : C (995328 * k + 94282) = 497664 * k + 47141 := by
    unfold C
    simp [show (995328 * k + 94282) % 2 = 0 by omega]
    omega
  have h11 : C (497664 * k + 47141) = 1492992 * k + 141424 := by
    unfold C
    simp [show (497664 * k + 47141) % 2 ≠ 0 by omega]
    omega
  have h12 : C (1492992 * k + 141424) = 746496 * k + 70712 := by
    unfold C
    simp [show (1492992 * k + 141424) % 2 = 0 by omega]
    omega
  have h13 : C (746496 * k + 70712) = 373248 * k + 35356 := by
    unfold C
    simp [show (746496 * k + 70712) % 2 = 0 by omega]
    omega
  have h14 : C (373248 * k + 35356) = 186624 * k + 17678 := by
    unfold C
    simp [show (373248 * k + 35356) % 2 = 0 by omega]
    omega
  have h15 : C (186624 * k + 17678) = 93312 * k + 8839 := by
    unfold C
    simp [show (186624 * k + 17678) % 2 = 0 by omega]
    omega
  have h16 : C (93312 * k + 8839) = 279936 * k + 26518 := by
    unfold C
    simp [show (93312 * k + 8839) % 2 ≠ 0 by omega]
    omega
  have h17 : C (279936 * k + 26518) = 139968 * k + 13259 := by
    unfold C
    simp [show (279936 * k + 26518) % 2 = 0 by omega]
    omega
  have h18 : C (139968 * k + 13259) = 419904 * k + 39778 := by
    unfold C
    simp [show (139968 * k + 13259) % 2 ≠ 0 by omega]
    omega
  have h19 : C (419904 * k + 39778) = 209952 * k + 19889 := by
    unfold C
    simp [show (419904 * k + 39778) % 2 = 0 by omega]
    omega
  have h20 : C (209952 * k + 19889) = 629856 * k + 59668 := by
    unfold C
    simp [show (209952 * k + 19889) % 2 ≠ 0 by omega]
    omega
  have h21 : C (629856 * k + 59668) = 314928 * k + 29834 := by
    unfold C
    simp [show (629856 * k + 59668) % 2 = 0 by omega]
    omega
  have h22 : C (314928 * k + 29834) = 157464 * k + 14917 := by
    unfold C
    simp [show (314928 * k + 29834) % 2 = 0 by omega]
    omega
  have h23 : C (157464 * k + 14917) = 472392 * k + 44752 := by
    unfold C
    simp [show (157464 * k + 14917) % 2 ≠ 0 by omega]
    omega
  have h24 : C (472392 * k + 44752) = 236196 * k + 22376 := by
    unfold C
    simp [show (472392 * k + 44752) % 2 = 0 by omega]
    omega
  have h25 : C (236196 * k + 22376) = 118098 * k + 11188 := by
    unfold C
    simp [show (236196 * k + 22376) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 11188) = 59049 * k + 5594 := by
    unfold C
    simp [show (118098 * k + 11188) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 6207) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 6207)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_6247 : ∀ k : Nat,
    iterate (65536 * k + 6247) 26 = 59049 * k + 5630 ∧
      59049 * k + 5630 < 65536 * k + 6247 := by
  intro k
  have h1 : C (65536 * k + 6247) = 196608 * k + 18742 := by
    unfold C
    simp [show (65536 * k + 6247) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 18742) = 98304 * k + 9371 := by
    unfold C
    simp [show (196608 * k + 18742) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 9371) = 294912 * k + 28114 := by
    unfold C
    simp [show (98304 * k + 9371) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 28114) = 147456 * k + 14057 := by
    unfold C
    simp [show (294912 * k + 28114) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 14057) = 442368 * k + 42172 := by
    unfold C
    simp [show (147456 * k + 14057) % 2 ≠ 0 by omega]
    omega
  have h6 : C (442368 * k + 42172) = 221184 * k + 21086 := by
    unfold C
    simp [show (442368 * k + 42172) % 2 = 0 by omega]
    omega
  have h7 : C (221184 * k + 21086) = 110592 * k + 10543 := by
    unfold C
    simp [show (221184 * k + 21086) % 2 = 0 by omega]
    omega
  have h8 : C (110592 * k + 10543) = 331776 * k + 31630 := by
    unfold C
    simp [show (110592 * k + 10543) % 2 ≠ 0 by omega]
    omega
  have h9 : C (331776 * k + 31630) = 165888 * k + 15815 := by
    unfold C
    simp [show (331776 * k + 31630) % 2 = 0 by omega]
    omega
  have h10 : C (165888 * k + 15815) = 497664 * k + 47446 := by
    unfold C
    simp [show (165888 * k + 15815) % 2 ≠ 0 by omega]
    omega
  have h11 : C (497664 * k + 47446) = 248832 * k + 23723 := by
    unfold C
    simp [show (497664 * k + 47446) % 2 = 0 by omega]
    omega
  have h12 : C (248832 * k + 23723) = 746496 * k + 71170 := by
    unfold C
    simp [show (248832 * k + 23723) % 2 ≠ 0 by omega]
    omega
  have h13 : C (746496 * k + 71170) = 373248 * k + 35585 := by
    unfold C
    simp [show (746496 * k + 71170) % 2 = 0 by omega]
    omega
  have h14 : C (373248 * k + 35585) = 1119744 * k + 106756 := by
    unfold C
    simp [show (373248 * k + 35585) % 2 ≠ 0 by omega]
    omega
  have h15 : C (1119744 * k + 106756) = 559872 * k + 53378 := by
    unfold C
    simp [show (1119744 * k + 106756) % 2 = 0 by omega]
    omega
  have h16 : C (559872 * k + 53378) = 279936 * k + 26689 := by
    unfold C
    simp [show (559872 * k + 53378) % 2 = 0 by omega]
    omega
  have h17 : C (279936 * k + 26689) = 839808 * k + 80068 := by
    unfold C
    simp [show (279936 * k + 26689) % 2 ≠ 0 by omega]
    omega
  have h18 : C (839808 * k + 80068) = 419904 * k + 40034 := by
    unfold C
    simp [show (839808 * k + 80068) % 2 = 0 by omega]
    omega
  have h19 : C (419904 * k + 40034) = 209952 * k + 20017 := by
    unfold C
    simp [show (419904 * k + 40034) % 2 = 0 by omega]
    omega
  have h20 : C (209952 * k + 20017) = 629856 * k + 60052 := by
    unfold C
    simp [show (209952 * k + 20017) % 2 ≠ 0 by omega]
    omega
  have h21 : C (629856 * k + 60052) = 314928 * k + 30026 := by
    unfold C
    simp [show (629856 * k + 60052) % 2 = 0 by omega]
    omega
  have h22 : C (314928 * k + 30026) = 157464 * k + 15013 := by
    unfold C
    simp [show (314928 * k + 30026) % 2 = 0 by omega]
    omega
  have h23 : C (157464 * k + 15013) = 472392 * k + 45040 := by
    unfold C
    simp [show (157464 * k + 15013) % 2 ≠ 0 by omega]
    omega
  have h24 : C (472392 * k + 45040) = 236196 * k + 22520 := by
    unfold C
    simp [show (472392 * k + 45040) % 2 = 0 by omega]
    omega
  have h25 : C (236196 * k + 22520) = 118098 * k + 11260 := by
    unfold C
    simp [show (236196 * k + 22520) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 11260) = 59049 * k + 5630 := by
    unfold C
    simp [show (118098 * k + 11260) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 6247) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 6247)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_6555 : ∀ k : Nat,
    iterate (65536 * k + 6555) 26 = 59049 * k + 5908 ∧
      59049 * k + 5908 < 65536 * k + 6555 := by
  intro k
  have h1 : C (65536 * k + 6555) = 196608 * k + 19666 := by
    unfold C
    simp [show (65536 * k + 6555) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 19666) = 98304 * k + 9833 := by
    unfold C
    simp [show (196608 * k + 19666) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 9833) = 294912 * k + 29500 := by
    unfold C
    simp [show (98304 * k + 9833) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 29500) = 147456 * k + 14750 := by
    unfold C
    simp [show (294912 * k + 29500) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 14750) = 73728 * k + 7375 := by
    unfold C
    simp [show (147456 * k + 14750) % 2 = 0 by omega]
    omega
  have h6 : C (73728 * k + 7375) = 221184 * k + 22126 := by
    unfold C
    simp [show (73728 * k + 7375) % 2 ≠ 0 by omega]
    omega
  have h7 : C (221184 * k + 22126) = 110592 * k + 11063 := by
    unfold C
    simp [show (221184 * k + 22126) % 2 = 0 by omega]
    omega
  have h8 : C (110592 * k + 11063) = 331776 * k + 33190 := by
    unfold C
    simp [show (110592 * k + 11063) % 2 ≠ 0 by omega]
    omega
  have h9 : C (331776 * k + 33190) = 165888 * k + 16595 := by
    unfold C
    simp [show (331776 * k + 33190) % 2 = 0 by omega]
    omega
  have h10 : C (165888 * k + 16595) = 497664 * k + 49786 := by
    unfold C
    simp [show (165888 * k + 16595) % 2 ≠ 0 by omega]
    omega
  have h11 : C (497664 * k + 49786) = 248832 * k + 24893 := by
    unfold C
    simp [show (497664 * k + 49786) % 2 = 0 by omega]
    omega
  have h12 : C (248832 * k + 24893) = 746496 * k + 74680 := by
    unfold C
    simp [show (248832 * k + 24893) % 2 ≠ 0 by omega]
    omega
  have h13 : C (746496 * k + 74680) = 373248 * k + 37340 := by
    unfold C
    simp [show (746496 * k + 74680) % 2 = 0 by omega]
    omega
  have h14 : C (373248 * k + 37340) = 186624 * k + 18670 := by
    unfold C
    simp [show (373248 * k + 37340) % 2 = 0 by omega]
    omega
  have h15 : C (186624 * k + 18670) = 93312 * k + 9335 := by
    unfold C
    simp [show (186624 * k + 18670) % 2 = 0 by omega]
    omega
  have h16 : C (93312 * k + 9335) = 279936 * k + 28006 := by
    unfold C
    simp [show (93312 * k + 9335) % 2 ≠ 0 by omega]
    omega
  have h17 : C (279936 * k + 28006) = 139968 * k + 14003 := by
    unfold C
    simp [show (279936 * k + 28006) % 2 = 0 by omega]
    omega
  have h18 : C (139968 * k + 14003) = 419904 * k + 42010 := by
    unfold C
    simp [show (139968 * k + 14003) % 2 ≠ 0 by omega]
    omega
  have h19 : C (419904 * k + 42010) = 209952 * k + 21005 := by
    unfold C
    simp [show (419904 * k + 42010) % 2 = 0 by omega]
    omega
  have h20 : C (209952 * k + 21005) = 629856 * k + 63016 := by
    unfold C
    simp [show (209952 * k + 21005) % 2 ≠ 0 by omega]
    omega
  have h21 : C (629856 * k + 63016) = 314928 * k + 31508 := by
    unfold C
    simp [show (629856 * k + 63016) % 2 = 0 by omega]
    omega
  have h22 : C (314928 * k + 31508) = 157464 * k + 15754 := by
    unfold C
    simp [show (314928 * k + 31508) % 2 = 0 by omega]
    omega
  have h23 : C (157464 * k + 15754) = 78732 * k + 7877 := by
    unfold C
    simp [show (157464 * k + 15754) % 2 = 0 by omega]
    omega
  have h24 : C (78732 * k + 7877) = 236196 * k + 23632 := by
    unfold C
    simp [show (78732 * k + 7877) % 2 ≠ 0 by omega]
    omega
  have h25 : C (236196 * k + 23632) = 118098 * k + 11816 := by
    unfold C
    simp [show (236196 * k + 23632) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 11816) = 59049 * k + 5908 := by
    unfold C
    simp [show (118098 * k + 11816) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 6555) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 6555)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_6639 : ∀ k : Nat,
    iterate (65536 * k + 6639) 26 = 59049 * k + 5983 ∧
      59049 * k + 5983 < 65536 * k + 6639 := by
  intro k
  have h1 : C (65536 * k + 6639) = 196608 * k + 19918 := by
    unfold C
    simp [show (65536 * k + 6639) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 19918) = 98304 * k + 9959 := by
    unfold C
    simp [show (196608 * k + 19918) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 9959) = 294912 * k + 29878 := by
    unfold C
    simp [show (98304 * k + 9959) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 29878) = 147456 * k + 14939 := by
    unfold C
    simp [show (294912 * k + 29878) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 14939) = 442368 * k + 44818 := by
    unfold C
    simp [show (147456 * k + 14939) % 2 ≠ 0 by omega]
    omega
  have h6 : C (442368 * k + 44818) = 221184 * k + 22409 := by
    unfold C
    simp [show (442368 * k + 44818) % 2 = 0 by omega]
    omega
  have h7 : C (221184 * k + 22409) = 663552 * k + 67228 := by
    unfold C
    simp [show (221184 * k + 22409) % 2 ≠ 0 by omega]
    omega
  have h8 : C (663552 * k + 67228) = 331776 * k + 33614 := by
    unfold C
    simp [show (663552 * k + 67228) % 2 = 0 by omega]
    omega
  have h9 : C (331776 * k + 33614) = 165888 * k + 16807 := by
    unfold C
    simp [show (331776 * k + 33614) % 2 = 0 by omega]
    omega
  have h10 : C (165888 * k + 16807) = 497664 * k + 50422 := by
    unfold C
    simp [show (165888 * k + 16807) % 2 ≠ 0 by omega]
    omega
  have h11 : C (497664 * k + 50422) = 248832 * k + 25211 := by
    unfold C
    simp [show (497664 * k + 50422) % 2 = 0 by omega]
    omega
  have h12 : C (248832 * k + 25211) = 746496 * k + 75634 := by
    unfold C
    simp [show (248832 * k + 25211) % 2 ≠ 0 by omega]
    omega
  have h13 : C (746496 * k + 75634) = 373248 * k + 37817 := by
    unfold C
    simp [show (746496 * k + 75634) % 2 = 0 by omega]
    omega
  have h14 : C (373248 * k + 37817) = 1119744 * k + 113452 := by
    unfold C
    simp [show (373248 * k + 37817) % 2 ≠ 0 by omega]
    omega
  have h15 : C (1119744 * k + 113452) = 559872 * k + 56726 := by
    unfold C
    simp [show (1119744 * k + 113452) % 2 = 0 by omega]
    omega
  have h16 : C (559872 * k + 56726) = 279936 * k + 28363 := by
    unfold C
    simp [show (559872 * k + 56726) % 2 = 0 by omega]
    omega
  have h17 : C (279936 * k + 28363) = 839808 * k + 85090 := by
    unfold C
    simp [show (279936 * k + 28363) % 2 ≠ 0 by omega]
    omega
  have h18 : C (839808 * k + 85090) = 419904 * k + 42545 := by
    unfold C
    simp [show (839808 * k + 85090) % 2 = 0 by omega]
    omega
  have h19 : C (419904 * k + 42545) = 1259712 * k + 127636 := by
    unfold C
    simp [show (419904 * k + 42545) % 2 ≠ 0 by omega]
    omega
  have h20 : C (1259712 * k + 127636) = 629856 * k + 63818 := by
    unfold C
    simp [show (1259712 * k + 127636) % 2 = 0 by omega]
    omega
  have h21 : C (629856 * k + 63818) = 314928 * k + 31909 := by
    unfold C
    simp [show (629856 * k + 63818) % 2 = 0 by omega]
    omega
  have h22 : C (314928 * k + 31909) = 944784 * k + 95728 := by
    unfold C
    simp [show (314928 * k + 31909) % 2 ≠ 0 by omega]
    omega
  have h23 : C (944784 * k + 95728) = 472392 * k + 47864 := by
    unfold C
    simp [show (944784 * k + 95728) % 2 = 0 by omega]
    omega
  have h24 : C (472392 * k + 47864) = 236196 * k + 23932 := by
    unfold C
    simp [show (472392 * k + 47864) % 2 = 0 by omega]
    omega
  have h25 : C (236196 * k + 23932) = 118098 * k + 11966 := by
    unfold C
    simp [show (236196 * k + 23932) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 11966) = 59049 * k + 5983 := by
    unfold C
    simp [show (118098 * k + 11966) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 6639) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 6639)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_6703 : ∀ k : Nat,
    iterate (65536 * k + 6703) 26 = 59049 * k + 6041 ∧
      59049 * k + 6041 < 65536 * k + 6703 := by
  intro k
  have h1 : C (65536 * k + 6703) = 196608 * k + 20110 := by
    unfold C
    simp [show (65536 * k + 6703) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 20110) = 98304 * k + 10055 := by
    unfold C
    simp [show (196608 * k + 20110) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 10055) = 294912 * k + 30166 := by
    unfold C
    simp [show (98304 * k + 10055) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 30166) = 147456 * k + 15083 := by
    unfold C
    simp [show (294912 * k + 30166) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 15083) = 442368 * k + 45250 := by
    unfold C
    simp [show (147456 * k + 15083) % 2 ≠ 0 by omega]
    omega
  have h6 : C (442368 * k + 45250) = 221184 * k + 22625 := by
    unfold C
    simp [show (442368 * k + 45250) % 2 = 0 by omega]
    omega
  have h7 : C (221184 * k + 22625) = 663552 * k + 67876 := by
    unfold C
    simp [show (221184 * k + 22625) % 2 ≠ 0 by omega]
    omega
  have h8 : C (663552 * k + 67876) = 331776 * k + 33938 := by
    unfold C
    simp [show (663552 * k + 67876) % 2 = 0 by omega]
    omega
  have h9 : C (331776 * k + 33938) = 165888 * k + 16969 := by
    unfold C
    simp [show (331776 * k + 33938) % 2 = 0 by omega]
    omega
  have h10 : C (165888 * k + 16969) = 497664 * k + 50908 := by
    unfold C
    simp [show (165888 * k + 16969) % 2 ≠ 0 by omega]
    omega
  have h11 : C (497664 * k + 50908) = 248832 * k + 25454 := by
    unfold C
    simp [show (497664 * k + 50908) % 2 = 0 by omega]
    omega
  have h12 : C (248832 * k + 25454) = 124416 * k + 12727 := by
    unfold C
    simp [show (248832 * k + 25454) % 2 = 0 by omega]
    omega
  have h13 : C (124416 * k + 12727) = 373248 * k + 38182 := by
    unfold C
    simp [show (124416 * k + 12727) % 2 ≠ 0 by omega]
    omega
  have h14 : C (373248 * k + 38182) = 186624 * k + 19091 := by
    unfold C
    simp [show (373248 * k + 38182) % 2 = 0 by omega]
    omega
  have h15 : C (186624 * k + 19091) = 559872 * k + 57274 := by
    unfold C
    simp [show (186624 * k + 19091) % 2 ≠ 0 by omega]
    omega
  have h16 : C (559872 * k + 57274) = 279936 * k + 28637 := by
    unfold C
    simp [show (559872 * k + 57274) % 2 = 0 by omega]
    omega
  have h17 : C (279936 * k + 28637) = 839808 * k + 85912 := by
    unfold C
    simp [show (279936 * k + 28637) % 2 ≠ 0 by omega]
    omega
  have h18 : C (839808 * k + 85912) = 419904 * k + 42956 := by
    unfold C
    simp [show (839808 * k + 85912) % 2 = 0 by omega]
    omega
  have h19 : C (419904 * k + 42956) = 209952 * k + 21478 := by
    unfold C
    simp [show (419904 * k + 42956) % 2 = 0 by omega]
    omega
  have h20 : C (209952 * k + 21478) = 104976 * k + 10739 := by
    unfold C
    simp [show (209952 * k + 21478) % 2 = 0 by omega]
    omega
  have h21 : C (104976 * k + 10739) = 314928 * k + 32218 := by
    unfold C
    simp [show (104976 * k + 10739) % 2 ≠ 0 by omega]
    omega
  have h22 : C (314928 * k + 32218) = 157464 * k + 16109 := by
    unfold C
    simp [show (314928 * k + 32218) % 2 = 0 by omega]
    omega
  have h23 : C (157464 * k + 16109) = 472392 * k + 48328 := by
    unfold C
    simp [show (157464 * k + 16109) % 2 ≠ 0 by omega]
    omega
  have h24 : C (472392 * k + 48328) = 236196 * k + 24164 := by
    unfold C
    simp [show (472392 * k + 48328) % 2 = 0 by omega]
    omega
  have h25 : C (236196 * k + 24164) = 118098 * k + 12082 := by
    unfold C
    simp [show (236196 * k + 24164) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 12082) = 59049 * k + 6041 := by
    unfold C
    simp [show (118098 * k + 12082) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 6703) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 6703)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_6975 : ∀ k : Nat,
    iterate (65536 * k + 6975) 26 = 59049 * k + 6286 ∧
      59049 * k + 6286 < 65536 * k + 6975 := by
  intro k
  have h1 : C (65536 * k + 6975) = 196608 * k + 20926 := by
    unfold C
    simp [show (65536 * k + 6975) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 20926) = 98304 * k + 10463 := by
    unfold C
    simp [show (196608 * k + 20926) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 10463) = 294912 * k + 31390 := by
    unfold C
    simp [show (98304 * k + 10463) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 31390) = 147456 * k + 15695 := by
    unfold C
    simp [show (294912 * k + 31390) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 15695) = 442368 * k + 47086 := by
    unfold C
    simp [show (147456 * k + 15695) % 2 ≠ 0 by omega]
    omega
  have h6 : C (442368 * k + 47086) = 221184 * k + 23543 := by
    unfold C
    simp [show (442368 * k + 47086) % 2 = 0 by omega]
    omega
  have h7 : C (221184 * k + 23543) = 663552 * k + 70630 := by
    unfold C
    simp [show (221184 * k + 23543) % 2 ≠ 0 by omega]
    omega
  have h8 : C (663552 * k + 70630) = 331776 * k + 35315 := by
    unfold C
    simp [show (663552 * k + 70630) % 2 = 0 by omega]
    omega
  have h9 : C (331776 * k + 35315) = 995328 * k + 105946 := by
    unfold C
    simp [show (331776 * k + 35315) % 2 ≠ 0 by omega]
    omega
  have h10 : C (995328 * k + 105946) = 497664 * k + 52973 := by
    unfold C
    simp [show (995328 * k + 105946) % 2 = 0 by omega]
    omega
  have h11 : C (497664 * k + 52973) = 1492992 * k + 158920 := by
    unfold C
    simp [show (497664 * k + 52973) % 2 ≠ 0 by omega]
    omega
  have h12 : C (1492992 * k + 158920) = 746496 * k + 79460 := by
    unfold C
    simp [show (1492992 * k + 158920) % 2 = 0 by omega]
    omega
  have h13 : C (746496 * k + 79460) = 373248 * k + 39730 := by
    unfold C
    simp [show (746496 * k + 79460) % 2 = 0 by omega]
    omega
  have h14 : C (373248 * k + 39730) = 186624 * k + 19865 := by
    unfold C
    simp [show (373248 * k + 39730) % 2 = 0 by omega]
    omega
  have h15 : C (186624 * k + 19865) = 559872 * k + 59596 := by
    unfold C
    simp [show (186624 * k + 19865) % 2 ≠ 0 by omega]
    omega
  have h16 : C (559872 * k + 59596) = 279936 * k + 29798 := by
    unfold C
    simp [show (559872 * k + 59596) % 2 = 0 by omega]
    omega
  have h17 : C (279936 * k + 29798) = 139968 * k + 14899 := by
    unfold C
    simp [show (279936 * k + 29798) % 2 = 0 by omega]
    omega
  have h18 : C (139968 * k + 14899) = 419904 * k + 44698 := by
    unfold C
    simp [show (139968 * k + 14899) % 2 ≠ 0 by omega]
    omega
  have h19 : C (419904 * k + 44698) = 209952 * k + 22349 := by
    unfold C
    simp [show (419904 * k + 44698) % 2 = 0 by omega]
    omega
  have h20 : C (209952 * k + 22349) = 629856 * k + 67048 := by
    unfold C
    simp [show (209952 * k + 22349) % 2 ≠ 0 by omega]
    omega
  have h21 : C (629856 * k + 67048) = 314928 * k + 33524 := by
    unfold C
    simp [show (629856 * k + 67048) % 2 = 0 by omega]
    omega
  have h22 : C (314928 * k + 33524) = 157464 * k + 16762 := by
    unfold C
    simp [show (314928 * k + 33524) % 2 = 0 by omega]
    omega
  have h23 : C (157464 * k + 16762) = 78732 * k + 8381 := by
    unfold C
    simp [show (157464 * k + 16762) % 2 = 0 by omega]
    omega
  have h24 : C (78732 * k + 8381) = 236196 * k + 25144 := by
    unfold C
    simp [show (78732 * k + 8381) % 2 ≠ 0 by omega]
    omega
  have h25 : C (236196 * k + 25144) = 118098 * k + 12572 := by
    unfold C
    simp [show (236196 * k + 25144) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 12572) = 59049 * k + 6286 := by
    unfold C
    simp [show (118098 * k + 12572) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 6975) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 6975)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_7015 : ∀ k : Nat,
    iterate (65536 * k + 7015) 26 = 59049 * k + 6322 ∧
      59049 * k + 6322 < 65536 * k + 7015 := by
  intro k
  have h1 : C (65536 * k + 7015) = 196608 * k + 21046 := by
    unfold C
    simp [show (65536 * k + 7015) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 21046) = 98304 * k + 10523 := by
    unfold C
    simp [show (196608 * k + 21046) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 10523) = 294912 * k + 31570 := by
    unfold C
    simp [show (98304 * k + 10523) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 31570) = 147456 * k + 15785 := by
    unfold C
    simp [show (294912 * k + 31570) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 15785) = 442368 * k + 47356 := by
    unfold C
    simp [show (147456 * k + 15785) % 2 ≠ 0 by omega]
    omega
  have h6 : C (442368 * k + 47356) = 221184 * k + 23678 := by
    unfold C
    simp [show (442368 * k + 47356) % 2 = 0 by omega]
    omega
  have h7 : C (221184 * k + 23678) = 110592 * k + 11839 := by
    unfold C
    simp [show (221184 * k + 23678) % 2 = 0 by omega]
    omega
  have h8 : C (110592 * k + 11839) = 331776 * k + 35518 := by
    unfold C
    simp [show (110592 * k + 11839) % 2 ≠ 0 by omega]
    omega
  have h9 : C (331776 * k + 35518) = 165888 * k + 17759 := by
    unfold C
    simp [show (331776 * k + 35518) % 2 = 0 by omega]
    omega
  have h10 : C (165888 * k + 17759) = 497664 * k + 53278 := by
    unfold C
    simp [show (165888 * k + 17759) % 2 ≠ 0 by omega]
    omega
  have h11 : C (497664 * k + 53278) = 248832 * k + 26639 := by
    unfold C
    simp [show (497664 * k + 53278) % 2 = 0 by omega]
    omega
  have h12 : C (248832 * k + 26639) = 746496 * k + 79918 := by
    unfold C
    simp [show (248832 * k + 26639) % 2 ≠ 0 by omega]
    omega
  have h13 : C (746496 * k + 79918) = 373248 * k + 39959 := by
    unfold C
    simp [show (746496 * k + 79918) % 2 = 0 by omega]
    omega
  have h14 : C (373248 * k + 39959) = 1119744 * k + 119878 := by
    unfold C
    simp [show (373248 * k + 39959) % 2 ≠ 0 by omega]
    omega
  have h15 : C (1119744 * k + 119878) = 559872 * k + 59939 := by
    unfold C
    simp [show (1119744 * k + 119878) % 2 = 0 by omega]
    omega
  have h16 : C (559872 * k + 59939) = 1679616 * k + 179818 := by
    unfold C
    simp [show (559872 * k + 59939) % 2 ≠ 0 by omega]
    omega
  have h17 : C (1679616 * k + 179818) = 839808 * k + 89909 := by
    unfold C
    simp [show (1679616 * k + 179818) % 2 = 0 by omega]
    omega
  have h18 : C (839808 * k + 89909) = 2519424 * k + 269728 := by
    unfold C
    simp [show (839808 * k + 89909) % 2 ≠ 0 by omega]
    omega
  have h19 : C (2519424 * k + 269728) = 1259712 * k + 134864 := by
    unfold C
    simp [show (2519424 * k + 269728) % 2 = 0 by omega]
    omega
  have h20 : C (1259712 * k + 134864) = 629856 * k + 67432 := by
    unfold C
    simp [show (1259712 * k + 134864) % 2 = 0 by omega]
    omega
  have h21 : C (629856 * k + 67432) = 314928 * k + 33716 := by
    unfold C
    simp [show (629856 * k + 67432) % 2 = 0 by omega]
    omega
  have h22 : C (314928 * k + 33716) = 157464 * k + 16858 := by
    unfold C
    simp [show (314928 * k + 33716) % 2 = 0 by omega]
    omega
  have h23 : C (157464 * k + 16858) = 78732 * k + 8429 := by
    unfold C
    simp [show (157464 * k + 16858) % 2 = 0 by omega]
    omega
  have h24 : C (78732 * k + 8429) = 236196 * k + 25288 := by
    unfold C
    simp [show (78732 * k + 8429) % 2 ≠ 0 by omega]
    omega
  have h25 : C (236196 * k + 25288) = 118098 * k + 12644 := by
    unfold C
    simp [show (236196 * k + 25288) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 12644) = 59049 * k + 6322 := by
    unfold C
    simp [show (118098 * k + 12644) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 7015) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 7015)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_7103 : ∀ k : Nat,
    iterate (65536 * k + 7103) 26 = 59049 * k + 6401 ∧
      59049 * k + 6401 < 65536 * k + 7103 := by
  intro k
  have h1 : C (65536 * k + 7103) = 196608 * k + 21310 := by
    unfold C
    simp [show (65536 * k + 7103) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 21310) = 98304 * k + 10655 := by
    unfold C
    simp [show (196608 * k + 21310) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 10655) = 294912 * k + 31966 := by
    unfold C
    simp [show (98304 * k + 10655) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 31966) = 147456 * k + 15983 := by
    unfold C
    simp [show (294912 * k + 31966) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 15983) = 442368 * k + 47950 := by
    unfold C
    simp [show (147456 * k + 15983) % 2 ≠ 0 by omega]
    omega
  have h6 : C (442368 * k + 47950) = 221184 * k + 23975 := by
    unfold C
    simp [show (442368 * k + 47950) % 2 = 0 by omega]
    omega
  have h7 : C (221184 * k + 23975) = 663552 * k + 71926 := by
    unfold C
    simp [show (221184 * k + 23975) % 2 ≠ 0 by omega]
    omega
  have h8 : C (663552 * k + 71926) = 331776 * k + 35963 := by
    unfold C
    simp [show (663552 * k + 71926) % 2 = 0 by omega]
    omega
  have h9 : C (331776 * k + 35963) = 995328 * k + 107890 := by
    unfold C
    simp [show (331776 * k + 35963) % 2 ≠ 0 by omega]
    omega
  have h10 : C (995328 * k + 107890) = 497664 * k + 53945 := by
    unfold C
    simp [show (995328 * k + 107890) % 2 = 0 by omega]
    omega
  have h11 : C (497664 * k + 53945) = 1492992 * k + 161836 := by
    unfold C
    simp [show (497664 * k + 53945) % 2 ≠ 0 by omega]
    omega
  have h12 : C (1492992 * k + 161836) = 746496 * k + 80918 := by
    unfold C
    simp [show (1492992 * k + 161836) % 2 = 0 by omega]
    omega
  have h13 : C (746496 * k + 80918) = 373248 * k + 40459 := by
    unfold C
    simp [show (746496 * k + 80918) % 2 = 0 by omega]
    omega
  have h14 : C (373248 * k + 40459) = 1119744 * k + 121378 := by
    unfold C
    simp [show (373248 * k + 40459) % 2 ≠ 0 by omega]
    omega
  have h15 : C (1119744 * k + 121378) = 559872 * k + 60689 := by
    unfold C
    simp [show (1119744 * k + 121378) % 2 = 0 by omega]
    omega
  have h16 : C (559872 * k + 60689) = 1679616 * k + 182068 := by
    unfold C
    simp [show (559872 * k + 60689) % 2 ≠ 0 by omega]
    omega
  have h17 : C (1679616 * k + 182068) = 839808 * k + 91034 := by
    unfold C
    simp [show (1679616 * k + 182068) % 2 = 0 by omega]
    omega
  have h18 : C (839808 * k + 91034) = 419904 * k + 45517 := by
    unfold C
    simp [show (839808 * k + 91034) % 2 = 0 by omega]
    omega
  have h19 : C (419904 * k + 45517) = 1259712 * k + 136552 := by
    unfold C
    simp [show (419904 * k + 45517) % 2 ≠ 0 by omega]
    omega
  have h20 : C (1259712 * k + 136552) = 629856 * k + 68276 := by
    unfold C
    simp [show (1259712 * k + 136552) % 2 = 0 by omega]
    omega
  have h21 : C (629856 * k + 68276) = 314928 * k + 34138 := by
    unfold C
    simp [show (629856 * k + 68276) % 2 = 0 by omega]
    omega
  have h22 : C (314928 * k + 34138) = 157464 * k + 17069 := by
    unfold C
    simp [show (314928 * k + 34138) % 2 = 0 by omega]
    omega
  have h23 : C (157464 * k + 17069) = 472392 * k + 51208 := by
    unfold C
    simp [show (157464 * k + 17069) % 2 ≠ 0 by omega]
    omega
  have h24 : C (472392 * k + 51208) = 236196 * k + 25604 := by
    unfold C
    simp [show (472392 * k + 51208) % 2 = 0 by omega]
    omega
  have h25 : C (236196 * k + 25604) = 118098 * k + 12802 := by
    unfold C
    simp [show (236196 * k + 25604) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 12802) = 59049 * k + 6401 := by
    unfold C
    simp [show (118098 * k + 12802) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 7103) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 7103)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_7231 : ∀ k : Nat,
    iterate (65536 * k + 7231) 26 = 59049 * k + 6517 ∧
      59049 * k + 6517 < 65536 * k + 7231 := by
  intro k
  have h1 : C (65536 * k + 7231) = 196608 * k + 21694 := by
    unfold C
    simp [show (65536 * k + 7231) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 21694) = 98304 * k + 10847 := by
    unfold C
    simp [show (196608 * k + 21694) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 10847) = 294912 * k + 32542 := by
    unfold C
    simp [show (98304 * k + 10847) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 32542) = 147456 * k + 16271 := by
    unfold C
    simp [show (294912 * k + 32542) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 16271) = 442368 * k + 48814 := by
    unfold C
    simp [show (147456 * k + 16271) % 2 ≠ 0 by omega]
    omega
  have h6 : C (442368 * k + 48814) = 221184 * k + 24407 := by
    unfold C
    simp [show (442368 * k + 48814) % 2 = 0 by omega]
    omega
  have h7 : C (221184 * k + 24407) = 663552 * k + 73222 := by
    unfold C
    simp [show (221184 * k + 24407) % 2 ≠ 0 by omega]
    omega
  have h8 : C (663552 * k + 73222) = 331776 * k + 36611 := by
    unfold C
    simp [show (663552 * k + 73222) % 2 = 0 by omega]
    omega
  have h9 : C (331776 * k + 36611) = 995328 * k + 109834 := by
    unfold C
    simp [show (331776 * k + 36611) % 2 ≠ 0 by omega]
    omega
  have h10 : C (995328 * k + 109834) = 497664 * k + 54917 := by
    unfold C
    simp [show (995328 * k + 109834) % 2 = 0 by omega]
    omega
  have h11 : C (497664 * k + 54917) = 1492992 * k + 164752 := by
    unfold C
    simp [show (497664 * k + 54917) % 2 ≠ 0 by omega]
    omega
  have h12 : C (1492992 * k + 164752) = 746496 * k + 82376 := by
    unfold C
    simp [show (1492992 * k + 164752) % 2 = 0 by omega]
    omega
  have h13 : C (746496 * k + 82376) = 373248 * k + 41188 := by
    unfold C
    simp [show (746496 * k + 82376) % 2 = 0 by omega]
    omega
  have h14 : C (373248 * k + 41188) = 186624 * k + 20594 := by
    unfold C
    simp [show (373248 * k + 41188) % 2 = 0 by omega]
    omega
  have h15 : C (186624 * k + 20594) = 93312 * k + 10297 := by
    unfold C
    simp [show (186624 * k + 20594) % 2 = 0 by omega]
    omega
  have h16 : C (93312 * k + 10297) = 279936 * k + 30892 := by
    unfold C
    simp [show (93312 * k + 10297) % 2 ≠ 0 by omega]
    omega
  have h17 : C (279936 * k + 30892) = 139968 * k + 15446 := by
    unfold C
    simp [show (279936 * k + 30892) % 2 = 0 by omega]
    omega
  have h18 : C (139968 * k + 15446) = 69984 * k + 7723 := by
    unfold C
    simp [show (139968 * k + 15446) % 2 = 0 by omega]
    omega
  have h19 : C (69984 * k + 7723) = 209952 * k + 23170 := by
    unfold C
    simp [show (69984 * k + 7723) % 2 ≠ 0 by omega]
    omega
  have h20 : C (209952 * k + 23170) = 104976 * k + 11585 := by
    unfold C
    simp [show (209952 * k + 23170) % 2 = 0 by omega]
    omega
  have h21 : C (104976 * k + 11585) = 314928 * k + 34756 := by
    unfold C
    simp [show (104976 * k + 11585) % 2 ≠ 0 by omega]
    omega
  have h22 : C (314928 * k + 34756) = 157464 * k + 17378 := by
    unfold C
    simp [show (314928 * k + 34756) % 2 = 0 by omega]
    omega
  have h23 : C (157464 * k + 17378) = 78732 * k + 8689 := by
    unfold C
    simp [show (157464 * k + 17378) % 2 = 0 by omega]
    omega
  have h24 : C (78732 * k + 8689) = 236196 * k + 26068 := by
    unfold C
    simp [show (78732 * k + 8689) % 2 ≠ 0 by omega]
    omega
  have h25 : C (236196 * k + 26068) = 118098 * k + 13034 := by
    unfold C
    simp [show (236196 * k + 26068) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 13034) = 59049 * k + 6517 := by
    unfold C
    simp [show (118098 * k + 13034) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 7231) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 7231)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_7451 : ∀ k : Nat,
    iterate (65536 * k + 7451) 26 = 59049 * k + 6715 ∧
      59049 * k + 6715 < 65536 * k + 7451 := by
  intro k
  have h1 : C (65536 * k + 7451) = 196608 * k + 22354 := by
    unfold C
    simp [show (65536 * k + 7451) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 22354) = 98304 * k + 11177 := by
    unfold C
    simp [show (196608 * k + 22354) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 11177) = 294912 * k + 33532 := by
    unfold C
    simp [show (98304 * k + 11177) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 33532) = 147456 * k + 16766 := by
    unfold C
    simp [show (294912 * k + 33532) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 16766) = 73728 * k + 8383 := by
    unfold C
    simp [show (147456 * k + 16766) % 2 = 0 by omega]
    omega
  have h6 : C (73728 * k + 8383) = 221184 * k + 25150 := by
    unfold C
    simp [show (73728 * k + 8383) % 2 ≠ 0 by omega]
    omega
  have h7 : C (221184 * k + 25150) = 110592 * k + 12575 := by
    unfold C
    simp [show (221184 * k + 25150) % 2 = 0 by omega]
    omega
  have h8 : C (110592 * k + 12575) = 331776 * k + 37726 := by
    unfold C
    simp [show (110592 * k + 12575) % 2 ≠ 0 by omega]
    omega
  have h9 : C (331776 * k + 37726) = 165888 * k + 18863 := by
    unfold C
    simp [show (331776 * k + 37726) % 2 = 0 by omega]
    omega
  have h10 : C (165888 * k + 18863) = 497664 * k + 56590 := by
    unfold C
    simp [show (165888 * k + 18863) % 2 ≠ 0 by omega]
    omega
  have h11 : C (497664 * k + 56590) = 248832 * k + 28295 := by
    unfold C
    simp [show (497664 * k + 56590) % 2 = 0 by omega]
    omega
  have h12 : C (248832 * k + 28295) = 746496 * k + 84886 := by
    unfold C
    simp [show (248832 * k + 28295) % 2 ≠ 0 by omega]
    omega
  have h13 : C (746496 * k + 84886) = 373248 * k + 42443 := by
    unfold C
    simp [show (746496 * k + 84886) % 2 = 0 by omega]
    omega
  have h14 : C (373248 * k + 42443) = 1119744 * k + 127330 := by
    unfold C
    simp [show (373248 * k + 42443) % 2 ≠ 0 by omega]
    omega
  have h15 : C (1119744 * k + 127330) = 559872 * k + 63665 := by
    unfold C
    simp [show (1119744 * k + 127330) % 2 = 0 by omega]
    omega
  have h16 : C (559872 * k + 63665) = 1679616 * k + 190996 := by
    unfold C
    simp [show (559872 * k + 63665) % 2 ≠ 0 by omega]
    omega
  have h17 : C (1679616 * k + 190996) = 839808 * k + 95498 := by
    unfold C
    simp [show (1679616 * k + 190996) % 2 = 0 by omega]
    omega
  have h18 : C (839808 * k + 95498) = 419904 * k + 47749 := by
    unfold C
    simp [show (839808 * k + 95498) % 2 = 0 by omega]
    omega
  have h19 : C (419904 * k + 47749) = 1259712 * k + 143248 := by
    unfold C
    simp [show (419904 * k + 47749) % 2 ≠ 0 by omega]
    omega
  have h20 : C (1259712 * k + 143248) = 629856 * k + 71624 := by
    unfold C
    simp [show (1259712 * k + 143248) % 2 = 0 by omega]
    omega
  have h21 : C (629856 * k + 71624) = 314928 * k + 35812 := by
    unfold C
    simp [show (629856 * k + 71624) % 2 = 0 by omega]
    omega
  have h22 : C (314928 * k + 35812) = 157464 * k + 17906 := by
    unfold C
    simp [show (314928 * k + 35812) % 2 = 0 by omega]
    omega
  have h23 : C (157464 * k + 17906) = 78732 * k + 8953 := by
    unfold C
    simp [show (157464 * k + 17906) % 2 = 0 by omega]
    omega
  have h24 : C (78732 * k + 8953) = 236196 * k + 26860 := by
    unfold C
    simp [show (78732 * k + 8953) % 2 ≠ 0 by omega]
    omega
  have h25 : C (236196 * k + 26860) = 118098 * k + 13430 := by
    unfold C
    simp [show (236196 * k + 26860) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 13430) = 59049 * k + 6715 := by
    unfold C
    simp [show (118098 * k + 13430) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 7451) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 7451)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_7471 : ∀ k : Nat,
    iterate (65536 * k + 7471) 26 = 59049 * k + 6733 ∧
      59049 * k + 6733 < 65536 * k + 7471 := by
  intro k
  have h1 : C (65536 * k + 7471) = 196608 * k + 22414 := by
    unfold C
    simp [show (65536 * k + 7471) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 22414) = 98304 * k + 11207 := by
    unfold C
    simp [show (196608 * k + 22414) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 11207) = 294912 * k + 33622 := by
    unfold C
    simp [show (98304 * k + 11207) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 33622) = 147456 * k + 16811 := by
    unfold C
    simp [show (294912 * k + 33622) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 16811) = 442368 * k + 50434 := by
    unfold C
    simp [show (147456 * k + 16811) % 2 ≠ 0 by omega]
    omega
  have h6 : C (442368 * k + 50434) = 221184 * k + 25217 := by
    unfold C
    simp [show (442368 * k + 50434) % 2 = 0 by omega]
    omega
  have h7 : C (221184 * k + 25217) = 663552 * k + 75652 := by
    unfold C
    simp [show (221184 * k + 25217) % 2 ≠ 0 by omega]
    omega
  have h8 : C (663552 * k + 75652) = 331776 * k + 37826 := by
    unfold C
    simp [show (663552 * k + 75652) % 2 = 0 by omega]
    omega
  have h9 : C (331776 * k + 37826) = 165888 * k + 18913 := by
    unfold C
    simp [show (331776 * k + 37826) % 2 = 0 by omega]
    omega
  have h10 : C (165888 * k + 18913) = 497664 * k + 56740 := by
    unfold C
    simp [show (165888 * k + 18913) % 2 ≠ 0 by omega]
    omega
  have h11 : C (497664 * k + 56740) = 248832 * k + 28370 := by
    unfold C
    simp [show (497664 * k + 56740) % 2 = 0 by omega]
    omega
  have h12 : C (248832 * k + 28370) = 124416 * k + 14185 := by
    unfold C
    simp [show (248832 * k + 28370) % 2 = 0 by omega]
    omega
  have h13 : C (124416 * k + 14185) = 373248 * k + 42556 := by
    unfold C
    simp [show (124416 * k + 14185) % 2 ≠ 0 by omega]
    omega
  have h14 : C (373248 * k + 42556) = 186624 * k + 21278 := by
    unfold C
    simp [show (373248 * k + 42556) % 2 = 0 by omega]
    omega
  have h15 : C (186624 * k + 21278) = 93312 * k + 10639 := by
    unfold C
    simp [show (186624 * k + 21278) % 2 = 0 by omega]
    omega
  have h16 : C (93312 * k + 10639) = 279936 * k + 31918 := by
    unfold C
    simp [show (93312 * k + 10639) % 2 ≠ 0 by omega]
    omega
  have h17 : C (279936 * k + 31918) = 139968 * k + 15959 := by
    unfold C
    simp [show (279936 * k + 31918) % 2 = 0 by omega]
    omega
  have h18 : C (139968 * k + 15959) = 419904 * k + 47878 := by
    unfold C
    simp [show (139968 * k + 15959) % 2 ≠ 0 by omega]
    omega
  have h19 : C (419904 * k + 47878) = 209952 * k + 23939 := by
    unfold C
    simp [show (419904 * k + 47878) % 2 = 0 by omega]
    omega
  have h20 : C (209952 * k + 23939) = 629856 * k + 71818 := by
    unfold C
    simp [show (209952 * k + 23939) % 2 ≠ 0 by omega]
    omega
  have h21 : C (629856 * k + 71818) = 314928 * k + 35909 := by
    unfold C
    simp [show (629856 * k + 71818) % 2 = 0 by omega]
    omega
  have h22 : C (314928 * k + 35909) = 944784 * k + 107728 := by
    unfold C
    simp [show (314928 * k + 35909) % 2 ≠ 0 by omega]
    omega
  have h23 : C (944784 * k + 107728) = 472392 * k + 53864 := by
    unfold C
    simp [show (944784 * k + 107728) % 2 = 0 by omega]
    omega
  have h24 : C (472392 * k + 53864) = 236196 * k + 26932 := by
    unfold C
    simp [show (472392 * k + 53864) % 2 = 0 by omega]
    omega
  have h25 : C (236196 * k + 26932) = 118098 * k + 13466 := by
    unfold C
    simp [show (236196 * k + 26932) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 13466) = 59049 * k + 6733 := by
    unfold C
    simp [show (118098 * k + 13466) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 7471) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 7471)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_7551 : ∀ k : Nat,
    iterate (65536 * k + 7551) 26 = 59049 * k + 6805 ∧
      59049 * k + 6805 < 65536 * k + 7551 := by
  intro k
  have h1 : C (65536 * k + 7551) = 196608 * k + 22654 := by
    unfold C
    simp [show (65536 * k + 7551) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 22654) = 98304 * k + 11327 := by
    unfold C
    simp [show (196608 * k + 22654) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 11327) = 294912 * k + 33982 := by
    unfold C
    simp [show (98304 * k + 11327) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 33982) = 147456 * k + 16991 := by
    unfold C
    simp [show (294912 * k + 33982) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 16991) = 442368 * k + 50974 := by
    unfold C
    simp [show (147456 * k + 16991) % 2 ≠ 0 by omega]
    omega
  have h6 : C (442368 * k + 50974) = 221184 * k + 25487 := by
    unfold C
    simp [show (442368 * k + 50974) % 2 = 0 by omega]
    omega
  have h7 : C (221184 * k + 25487) = 663552 * k + 76462 := by
    unfold C
    simp [show (221184 * k + 25487) % 2 ≠ 0 by omega]
    omega
  have h8 : C (663552 * k + 76462) = 331776 * k + 38231 := by
    unfold C
    simp [show (663552 * k + 76462) % 2 = 0 by omega]
    omega
  have h9 : C (331776 * k + 38231) = 995328 * k + 114694 := by
    unfold C
    simp [show (331776 * k + 38231) % 2 ≠ 0 by omega]
    omega
  have h10 : C (995328 * k + 114694) = 497664 * k + 57347 := by
    unfold C
    simp [show (995328 * k + 114694) % 2 = 0 by omega]
    omega
  have h11 : C (497664 * k + 57347) = 1492992 * k + 172042 := by
    unfold C
    simp [show (497664 * k + 57347) % 2 ≠ 0 by omega]
    omega
  have h12 : C (1492992 * k + 172042) = 746496 * k + 86021 := by
    unfold C
    simp [show (1492992 * k + 172042) % 2 = 0 by omega]
    omega
  have h13 : C (746496 * k + 86021) = 2239488 * k + 258064 := by
    unfold C
    simp [show (746496 * k + 86021) % 2 ≠ 0 by omega]
    omega
  have h14 : C (2239488 * k + 258064) = 1119744 * k + 129032 := by
    unfold C
    simp [show (2239488 * k + 258064) % 2 = 0 by omega]
    omega
  have h15 : C (1119744 * k + 129032) = 559872 * k + 64516 := by
    unfold C
    simp [show (1119744 * k + 129032) % 2 = 0 by omega]
    omega
  have h16 : C (559872 * k + 64516) = 279936 * k + 32258 := by
    unfold C
    simp [show (559872 * k + 64516) % 2 = 0 by omega]
    omega
  have h17 : C (279936 * k + 32258) = 139968 * k + 16129 := by
    unfold C
    simp [show (279936 * k + 32258) % 2 = 0 by omega]
    omega
  have h18 : C (139968 * k + 16129) = 419904 * k + 48388 := by
    unfold C
    simp [show (139968 * k + 16129) % 2 ≠ 0 by omega]
    omega
  have h19 : C (419904 * k + 48388) = 209952 * k + 24194 := by
    unfold C
    simp [show (419904 * k + 48388) % 2 = 0 by omega]
    omega
  have h20 : C (209952 * k + 24194) = 104976 * k + 12097 := by
    unfold C
    simp [show (209952 * k + 24194) % 2 = 0 by omega]
    omega
  have h21 : C (104976 * k + 12097) = 314928 * k + 36292 := by
    unfold C
    simp [show (104976 * k + 12097) % 2 ≠ 0 by omega]
    omega
  have h22 : C (314928 * k + 36292) = 157464 * k + 18146 := by
    unfold C
    simp [show (314928 * k + 36292) % 2 = 0 by omega]
    omega
  have h23 : C (157464 * k + 18146) = 78732 * k + 9073 := by
    unfold C
    simp [show (157464 * k + 18146) % 2 = 0 by omega]
    omega
  have h24 : C (78732 * k + 9073) = 236196 * k + 27220 := by
    unfold C
    simp [show (78732 * k + 9073) % 2 ≠ 0 by omega]
    omega
  have h25 : C (236196 * k + 27220) = 118098 * k + 13610 := by
    unfold C
    simp [show (236196 * k + 27220) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 13610) = 59049 * k + 6805 := by
    unfold C
    simp [show (118098 * k + 13610) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 7551) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 7551)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_7711 : ∀ k : Nat,
    iterate (65536 * k + 7711) 26 = 59049 * k + 6949 ∧
      59049 * k + 6949 < 65536 * k + 7711 := by
  intro k
  have h1 : C (65536 * k + 7711) = 196608 * k + 23134 := by
    unfold C
    simp [show (65536 * k + 7711) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 23134) = 98304 * k + 11567 := by
    unfold C
    simp [show (196608 * k + 23134) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 11567) = 294912 * k + 34702 := by
    unfold C
    simp [show (98304 * k + 11567) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 34702) = 147456 * k + 17351 := by
    unfold C
    simp [show (294912 * k + 34702) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 17351) = 442368 * k + 52054 := by
    unfold C
    simp [show (147456 * k + 17351) % 2 ≠ 0 by omega]
    omega
  have h6 : C (442368 * k + 52054) = 221184 * k + 26027 := by
    unfold C
    simp [show (442368 * k + 52054) % 2 = 0 by omega]
    omega
  have h7 : C (221184 * k + 26027) = 663552 * k + 78082 := by
    unfold C
    simp [show (221184 * k + 26027) % 2 ≠ 0 by omega]
    omega
  have h8 : C (663552 * k + 78082) = 331776 * k + 39041 := by
    unfold C
    simp [show (663552 * k + 78082) % 2 = 0 by omega]
    omega
  have h9 : C (331776 * k + 39041) = 995328 * k + 117124 := by
    unfold C
    simp [show (331776 * k + 39041) % 2 ≠ 0 by omega]
    omega
  have h10 : C (995328 * k + 117124) = 497664 * k + 58562 := by
    unfold C
    simp [show (995328 * k + 117124) % 2 = 0 by omega]
    omega
  have h11 : C (497664 * k + 58562) = 248832 * k + 29281 := by
    unfold C
    simp [show (497664 * k + 58562) % 2 = 0 by omega]
    omega
  have h12 : C (248832 * k + 29281) = 746496 * k + 87844 := by
    unfold C
    simp [show (248832 * k + 29281) % 2 ≠ 0 by omega]
    omega
  have h13 : C (746496 * k + 87844) = 373248 * k + 43922 := by
    unfold C
    simp [show (746496 * k + 87844) % 2 = 0 by omega]
    omega
  have h14 : C (373248 * k + 43922) = 186624 * k + 21961 := by
    unfold C
    simp [show (373248 * k + 43922) % 2 = 0 by omega]
    omega
  have h15 : C (186624 * k + 21961) = 559872 * k + 65884 := by
    unfold C
    simp [show (186624 * k + 21961) % 2 ≠ 0 by omega]
    omega
  have h16 : C (559872 * k + 65884) = 279936 * k + 32942 := by
    unfold C
    simp [show (559872 * k + 65884) % 2 = 0 by omega]
    omega
  have h17 : C (279936 * k + 32942) = 139968 * k + 16471 := by
    unfold C
    simp [show (279936 * k + 32942) % 2 = 0 by omega]
    omega
  have h18 : C (139968 * k + 16471) = 419904 * k + 49414 := by
    unfold C
    simp [show (139968 * k + 16471) % 2 ≠ 0 by omega]
    omega
  have h19 : C (419904 * k + 49414) = 209952 * k + 24707 := by
    unfold C
    simp [show (419904 * k + 49414) % 2 = 0 by omega]
    omega
  have h20 : C (209952 * k + 24707) = 629856 * k + 74122 := by
    unfold C
    simp [show (209952 * k + 24707) % 2 ≠ 0 by omega]
    omega
  have h21 : C (629856 * k + 74122) = 314928 * k + 37061 := by
    unfold C
    simp [show (629856 * k + 74122) % 2 = 0 by omega]
    omega
  have h22 : C (314928 * k + 37061) = 944784 * k + 111184 := by
    unfold C
    simp [show (314928 * k + 37061) % 2 ≠ 0 by omega]
    omega
  have h23 : C (944784 * k + 111184) = 472392 * k + 55592 := by
    unfold C
    simp [show (944784 * k + 111184) % 2 = 0 by omega]
    omega
  have h24 : C (472392 * k + 55592) = 236196 * k + 27796 := by
    unfold C
    simp [show (472392 * k + 55592) % 2 = 0 by omega]
    omega
  have h25 : C (236196 * k + 27796) = 118098 * k + 13898 := by
    unfold C
    simp [show (236196 * k + 27796) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 13898) = 59049 * k + 6949 := by
    unfold C
    simp [show (118098 * k + 13898) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 7711) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 7711)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_7835 : ∀ k : Nat,
    iterate (65536 * k + 7835) 26 = 59049 * k + 7061 ∧
      59049 * k + 7061 < 65536 * k + 7835 := by
  intro k
  have h1 : C (65536 * k + 7835) = 196608 * k + 23506 := by
    unfold C
    simp [show (65536 * k + 7835) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 23506) = 98304 * k + 11753 := by
    unfold C
    simp [show (196608 * k + 23506) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 11753) = 294912 * k + 35260 := by
    unfold C
    simp [show (98304 * k + 11753) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 35260) = 147456 * k + 17630 := by
    unfold C
    simp [show (294912 * k + 35260) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 17630) = 73728 * k + 8815 := by
    unfold C
    simp [show (147456 * k + 17630) % 2 = 0 by omega]
    omega
  have h6 : C (73728 * k + 8815) = 221184 * k + 26446 := by
    unfold C
    simp [show (73728 * k + 8815) % 2 ≠ 0 by omega]
    omega
  have h7 : C (221184 * k + 26446) = 110592 * k + 13223 := by
    unfold C
    simp [show (221184 * k + 26446) % 2 = 0 by omega]
    omega
  have h8 : C (110592 * k + 13223) = 331776 * k + 39670 := by
    unfold C
    simp [show (110592 * k + 13223) % 2 ≠ 0 by omega]
    omega
  have h9 : C (331776 * k + 39670) = 165888 * k + 19835 := by
    unfold C
    simp [show (331776 * k + 39670) % 2 = 0 by omega]
    omega
  have h10 : C (165888 * k + 19835) = 497664 * k + 59506 := by
    unfold C
    simp [show (165888 * k + 19835) % 2 ≠ 0 by omega]
    omega
  have h11 : C (497664 * k + 59506) = 248832 * k + 29753 := by
    unfold C
    simp [show (497664 * k + 59506) % 2 = 0 by omega]
    omega
  have h12 : C (248832 * k + 29753) = 746496 * k + 89260 := by
    unfold C
    simp [show (248832 * k + 29753) % 2 ≠ 0 by omega]
    omega
  have h13 : C (746496 * k + 89260) = 373248 * k + 44630 := by
    unfold C
    simp [show (746496 * k + 89260) % 2 = 0 by omega]
    omega
  have h14 : C (373248 * k + 44630) = 186624 * k + 22315 := by
    unfold C
    simp [show (373248 * k + 44630) % 2 = 0 by omega]
    omega
  have h15 : C (186624 * k + 22315) = 559872 * k + 66946 := by
    unfold C
    simp [show (186624 * k + 22315) % 2 ≠ 0 by omega]
    omega
  have h16 : C (559872 * k + 66946) = 279936 * k + 33473 := by
    unfold C
    simp [show (559872 * k + 66946) % 2 = 0 by omega]
    omega
  have h17 : C (279936 * k + 33473) = 839808 * k + 100420 := by
    unfold C
    simp [show (279936 * k + 33473) % 2 ≠ 0 by omega]
    omega
  have h18 : C (839808 * k + 100420) = 419904 * k + 50210 := by
    unfold C
    simp [show (839808 * k + 100420) % 2 = 0 by omega]
    omega
  have h19 : C (419904 * k + 50210) = 209952 * k + 25105 := by
    unfold C
    simp [show (419904 * k + 50210) % 2 = 0 by omega]
    omega
  have h20 : C (209952 * k + 25105) = 629856 * k + 75316 := by
    unfold C
    simp [show (209952 * k + 25105) % 2 ≠ 0 by omega]
    omega
  have h21 : C (629856 * k + 75316) = 314928 * k + 37658 := by
    unfold C
    simp [show (629856 * k + 75316) % 2 = 0 by omega]
    omega
  have h22 : C (314928 * k + 37658) = 157464 * k + 18829 := by
    unfold C
    simp [show (314928 * k + 37658) % 2 = 0 by omega]
    omega
  have h23 : C (157464 * k + 18829) = 472392 * k + 56488 := by
    unfold C
    simp [show (157464 * k + 18829) % 2 ≠ 0 by omega]
    omega
  have h24 : C (472392 * k + 56488) = 236196 * k + 28244 := by
    unfold C
    simp [show (472392 * k + 56488) % 2 = 0 by omega]
    omega
  have h25 : C (236196 * k + 28244) = 118098 * k + 14122 := by
    unfold C
    simp [show (236196 * k + 28244) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 14122) = 59049 * k + 7061 := by
    unfold C
    simp [show (118098 * k + 14122) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 7835) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 7835)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_7871 : ∀ k : Nat,
    iterate (65536 * k + 7871) 26 = 59049 * k + 7093 ∧
      59049 * k + 7093 < 65536 * k + 7871 := by
  intro k
  have h1 : C (65536 * k + 7871) = 196608 * k + 23614 := by
    unfold C
    simp [show (65536 * k + 7871) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 23614) = 98304 * k + 11807 := by
    unfold C
    simp [show (196608 * k + 23614) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 11807) = 294912 * k + 35422 := by
    unfold C
    simp [show (98304 * k + 11807) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 35422) = 147456 * k + 17711 := by
    unfold C
    simp [show (294912 * k + 35422) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 17711) = 442368 * k + 53134 := by
    unfold C
    simp [show (147456 * k + 17711) % 2 ≠ 0 by omega]
    omega
  have h6 : C (442368 * k + 53134) = 221184 * k + 26567 := by
    unfold C
    simp [show (442368 * k + 53134) % 2 = 0 by omega]
    omega
  have h7 : C (221184 * k + 26567) = 663552 * k + 79702 := by
    unfold C
    simp [show (221184 * k + 26567) % 2 ≠ 0 by omega]
    omega
  have h8 : C (663552 * k + 79702) = 331776 * k + 39851 := by
    unfold C
    simp [show (663552 * k + 79702) % 2 = 0 by omega]
    omega
  have h9 : C (331776 * k + 39851) = 995328 * k + 119554 := by
    unfold C
    simp [show (331776 * k + 39851) % 2 ≠ 0 by omega]
    omega
  have h10 : C (995328 * k + 119554) = 497664 * k + 59777 := by
    unfold C
    simp [show (995328 * k + 119554) % 2 = 0 by omega]
    omega
  have h11 : C (497664 * k + 59777) = 1492992 * k + 179332 := by
    unfold C
    simp [show (497664 * k + 59777) % 2 ≠ 0 by omega]
    omega
  have h12 : C (1492992 * k + 179332) = 746496 * k + 89666 := by
    unfold C
    simp [show (1492992 * k + 179332) % 2 = 0 by omega]
    omega
  have h13 : C (746496 * k + 89666) = 373248 * k + 44833 := by
    unfold C
    simp [show (746496 * k + 89666) % 2 = 0 by omega]
    omega
  have h14 : C (373248 * k + 44833) = 1119744 * k + 134500 := by
    unfold C
    simp [show (373248 * k + 44833) % 2 ≠ 0 by omega]
    omega
  have h15 : C (1119744 * k + 134500) = 559872 * k + 67250 := by
    unfold C
    simp [show (1119744 * k + 134500) % 2 = 0 by omega]
    omega
  have h16 : C (559872 * k + 67250) = 279936 * k + 33625 := by
    unfold C
    simp [show (559872 * k + 67250) % 2 = 0 by omega]
    omega
  have h17 : C (279936 * k + 33625) = 839808 * k + 100876 := by
    unfold C
    simp [show (279936 * k + 33625) % 2 ≠ 0 by omega]
    omega
  have h18 : C (839808 * k + 100876) = 419904 * k + 50438 := by
    unfold C
    simp [show (839808 * k + 100876) % 2 = 0 by omega]
    omega
  have h19 : C (419904 * k + 50438) = 209952 * k + 25219 := by
    unfold C
    simp [show (419904 * k + 50438) % 2 = 0 by omega]
    omega
  have h20 : C (209952 * k + 25219) = 629856 * k + 75658 := by
    unfold C
    simp [show (209952 * k + 25219) % 2 ≠ 0 by omega]
    omega
  have h21 : C (629856 * k + 75658) = 314928 * k + 37829 := by
    unfold C
    simp [show (629856 * k + 75658) % 2 = 0 by omega]
    omega
  have h22 : C (314928 * k + 37829) = 944784 * k + 113488 := by
    unfold C
    simp [show (314928 * k + 37829) % 2 ≠ 0 by omega]
    omega
  have h23 : C (944784 * k + 113488) = 472392 * k + 56744 := by
    unfold C
    simp [show (944784 * k + 113488) % 2 = 0 by omega]
    omega
  have h24 : C (472392 * k + 56744) = 236196 * k + 28372 := by
    unfold C
    simp [show (472392 * k + 56744) % 2 = 0 by omega]
    omega
  have h25 : C (236196 * k + 28372) = 118098 * k + 14186 := by
    unfold C
    simp [show (236196 * k + 28372) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 14186) = 59049 * k + 7093 := by
    unfold C
    simp [show (118098 * k + 14186) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 7871) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 7871)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_7931 : ∀ k : Nat,
    iterate (65536 * k + 7931) 26 = 59049 * k + 7148 ∧
      59049 * k + 7148 < 65536 * k + 7931 := by
  intro k
  have h1 : C (65536 * k + 7931) = 196608 * k + 23794 := by
    unfold C
    simp [show (65536 * k + 7931) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 23794) = 98304 * k + 11897 := by
    unfold C
    simp [show (196608 * k + 23794) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 11897) = 294912 * k + 35692 := by
    unfold C
    simp [show (98304 * k + 11897) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 35692) = 147456 * k + 17846 := by
    unfold C
    simp [show (294912 * k + 35692) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 17846) = 73728 * k + 8923 := by
    unfold C
    simp [show (147456 * k + 17846) % 2 = 0 by omega]
    omega
  have h6 : C (73728 * k + 8923) = 221184 * k + 26770 := by
    unfold C
    simp [show (73728 * k + 8923) % 2 ≠ 0 by omega]
    omega
  have h7 : C (221184 * k + 26770) = 110592 * k + 13385 := by
    unfold C
    simp [show (221184 * k + 26770) % 2 = 0 by omega]
    omega
  have h8 : C (110592 * k + 13385) = 331776 * k + 40156 := by
    unfold C
    simp [show (110592 * k + 13385) % 2 ≠ 0 by omega]
    omega
  have h9 : C (331776 * k + 40156) = 165888 * k + 20078 := by
    unfold C
    simp [show (331776 * k + 40156) % 2 = 0 by omega]
    omega
  have h10 : C (165888 * k + 20078) = 82944 * k + 10039 := by
    unfold C
    simp [show (165888 * k + 20078) % 2 = 0 by omega]
    omega
  have h11 : C (82944 * k + 10039) = 248832 * k + 30118 := by
    unfold C
    simp [show (82944 * k + 10039) % 2 ≠ 0 by omega]
    omega
  have h12 : C (248832 * k + 30118) = 124416 * k + 15059 := by
    unfold C
    simp [show (248832 * k + 30118) % 2 = 0 by omega]
    omega
  have h13 : C (124416 * k + 15059) = 373248 * k + 45178 := by
    unfold C
    simp [show (124416 * k + 15059) % 2 ≠ 0 by omega]
    omega
  have h14 : C (373248 * k + 45178) = 186624 * k + 22589 := by
    unfold C
    simp [show (373248 * k + 45178) % 2 = 0 by omega]
    omega
  have h15 : C (186624 * k + 22589) = 559872 * k + 67768 := by
    unfold C
    simp [show (186624 * k + 22589) % 2 ≠ 0 by omega]
    omega
  have h16 : C (559872 * k + 67768) = 279936 * k + 33884 := by
    unfold C
    simp [show (559872 * k + 67768) % 2 = 0 by omega]
    omega
  have h17 : C (279936 * k + 33884) = 139968 * k + 16942 := by
    unfold C
    simp [show (279936 * k + 33884) % 2 = 0 by omega]
    omega
  have h18 : C (139968 * k + 16942) = 69984 * k + 8471 := by
    unfold C
    simp [show (139968 * k + 16942) % 2 = 0 by omega]
    omega
  have h19 : C (69984 * k + 8471) = 209952 * k + 25414 := by
    unfold C
    simp [show (69984 * k + 8471) % 2 ≠ 0 by omega]
    omega
  have h20 : C (209952 * k + 25414) = 104976 * k + 12707 := by
    unfold C
    simp [show (209952 * k + 25414) % 2 = 0 by omega]
    omega
  have h21 : C (104976 * k + 12707) = 314928 * k + 38122 := by
    unfold C
    simp [show (104976 * k + 12707) % 2 ≠ 0 by omega]
    omega
  have h22 : C (314928 * k + 38122) = 157464 * k + 19061 := by
    unfold C
    simp [show (314928 * k + 38122) % 2 = 0 by omega]
    omega
  have h23 : C (157464 * k + 19061) = 472392 * k + 57184 := by
    unfold C
    simp [show (157464 * k + 19061) % 2 ≠ 0 by omega]
    omega
  have h24 : C (472392 * k + 57184) = 236196 * k + 28592 := by
    unfold C
    simp [show (472392 * k + 57184) % 2 = 0 by omega]
    omega
  have h25 : C (236196 * k + 28592) = 118098 * k + 14296 := by
    unfold C
    simp [show (236196 * k + 28592) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 14296) = 59049 * k + 7148 := by
    unfold C
    simp [show (118098 * k + 14296) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 7931) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 7931)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_8095 : ∀ k : Nat,
    iterate (65536 * k + 8095) 26 = 59049 * k + 7295 ∧
      59049 * k + 7295 < 65536 * k + 8095 := by
  intro k
  have h1 : C (65536 * k + 8095) = 196608 * k + 24286 := by
    unfold C
    simp [show (65536 * k + 8095) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 24286) = 98304 * k + 12143 := by
    unfold C
    simp [show (196608 * k + 24286) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 12143) = 294912 * k + 36430 := by
    unfold C
    simp [show (98304 * k + 12143) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 36430) = 147456 * k + 18215 := by
    unfold C
    simp [show (294912 * k + 36430) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 18215) = 442368 * k + 54646 := by
    unfold C
    simp [show (147456 * k + 18215) % 2 ≠ 0 by omega]
    omega
  have h6 : C (442368 * k + 54646) = 221184 * k + 27323 := by
    unfold C
    simp [show (442368 * k + 54646) % 2 = 0 by omega]
    omega
  have h7 : C (221184 * k + 27323) = 663552 * k + 81970 := by
    unfold C
    simp [show (221184 * k + 27323) % 2 ≠ 0 by omega]
    omega
  have h8 : C (663552 * k + 81970) = 331776 * k + 40985 := by
    unfold C
    simp [show (663552 * k + 81970) % 2 = 0 by omega]
    omega
  have h9 : C (331776 * k + 40985) = 995328 * k + 122956 := by
    unfold C
    simp [show (331776 * k + 40985) % 2 ≠ 0 by omega]
    omega
  have h10 : C (995328 * k + 122956) = 497664 * k + 61478 := by
    unfold C
    simp [show (995328 * k + 122956) % 2 = 0 by omega]
    omega
  have h11 : C (497664 * k + 61478) = 248832 * k + 30739 := by
    unfold C
    simp [show (497664 * k + 61478) % 2 = 0 by omega]
    omega
  have h12 : C (248832 * k + 30739) = 746496 * k + 92218 := by
    unfold C
    simp [show (248832 * k + 30739) % 2 ≠ 0 by omega]
    omega
  have h13 : C (746496 * k + 92218) = 373248 * k + 46109 := by
    unfold C
    simp [show (746496 * k + 92218) % 2 = 0 by omega]
    omega
  have h14 : C (373248 * k + 46109) = 1119744 * k + 138328 := by
    unfold C
    simp [show (373248 * k + 46109) % 2 ≠ 0 by omega]
    omega
  have h15 : C (1119744 * k + 138328) = 559872 * k + 69164 := by
    unfold C
    simp [show (1119744 * k + 138328) % 2 = 0 by omega]
    omega
  have h16 : C (559872 * k + 69164) = 279936 * k + 34582 := by
    unfold C
    simp [show (559872 * k + 69164) % 2 = 0 by omega]
    omega
  have h17 : C (279936 * k + 34582) = 139968 * k + 17291 := by
    unfold C
    simp [show (279936 * k + 34582) % 2 = 0 by omega]
    omega
  have h18 : C (139968 * k + 17291) = 419904 * k + 51874 := by
    unfold C
    simp [show (139968 * k + 17291) % 2 ≠ 0 by omega]
    omega
  have h19 : C (419904 * k + 51874) = 209952 * k + 25937 := by
    unfold C
    simp [show (419904 * k + 51874) % 2 = 0 by omega]
    omega
  have h20 : C (209952 * k + 25937) = 629856 * k + 77812 := by
    unfold C
    simp [show (209952 * k + 25937) % 2 ≠ 0 by omega]
    omega
  have h21 : C (629856 * k + 77812) = 314928 * k + 38906 := by
    unfold C
    simp [show (629856 * k + 77812) % 2 = 0 by omega]
    omega
  have h22 : C (314928 * k + 38906) = 157464 * k + 19453 := by
    unfold C
    simp [show (314928 * k + 38906) % 2 = 0 by omega]
    omega
  have h23 : C (157464 * k + 19453) = 472392 * k + 58360 := by
    unfold C
    simp [show (157464 * k + 19453) % 2 ≠ 0 by omega]
    omega
  have h24 : C (472392 * k + 58360) = 236196 * k + 29180 := by
    unfold C
    simp [show (472392 * k + 58360) % 2 = 0 by omega]
    omega
  have h25 : C (236196 * k + 29180) = 118098 * k + 14590 := by
    unfold C
    simp [show (236196 * k + 29180) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 14590) = 59049 * k + 7295 := by
    unfold C
    simp [show (118098 * k + 14590) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 8095) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 8095)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

end CollatzM16ShardC
