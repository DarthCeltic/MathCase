import Mathlib.Data.Nat.Prime.Basic

namespace CollatzM16ShardA

def C (n : Nat) : Nat := if n % 2 = 0 then n / 2 else 3 * n + 1

def iterate (n t : Nat) : Nat := Nat.rec n (fun _ previous => C previous) t

theorem descent_mod65536_359 : ∀ k : Nat,
    iterate (65536 * k + 359) 26 = 59049 * k + 325 ∧
      59049 * k + 325 < 65536 * k + 359 := by
  intro k
  have h1 : C (65536 * k + 359) = 196608 * k + 1078 := by
    unfold C
    simp [show (65536 * k + 359) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 1078) = 98304 * k + 539 := by
    unfold C
    simp [show (196608 * k + 1078) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 539) = 294912 * k + 1618 := by
    unfold C
    simp [show (98304 * k + 539) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 1618) = 147456 * k + 809 := by
    unfold C
    simp [show (294912 * k + 1618) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 809) = 442368 * k + 2428 := by
    unfold C
    simp [show (147456 * k + 809) % 2 ≠ 0 by omega]
    omega
  have h6 : C (442368 * k + 2428) = 221184 * k + 1214 := by
    unfold C
    simp [show (442368 * k + 2428) % 2 = 0 by omega]
    omega
  have h7 : C (221184 * k + 1214) = 110592 * k + 607 := by
    unfold C
    simp [show (221184 * k + 1214) % 2 = 0 by omega]
    omega
  have h8 : C (110592 * k + 607) = 331776 * k + 1822 := by
    unfold C
    simp [show (110592 * k + 607) % 2 ≠ 0 by omega]
    omega
  have h9 : C (331776 * k + 1822) = 165888 * k + 911 := by
    unfold C
    simp [show (331776 * k + 1822) % 2 = 0 by omega]
    omega
  have h10 : C (165888 * k + 911) = 497664 * k + 2734 := by
    unfold C
    simp [show (165888 * k + 911) % 2 ≠ 0 by omega]
    omega
  have h11 : C (497664 * k + 2734) = 248832 * k + 1367 := by
    unfold C
    simp [show (497664 * k + 2734) % 2 = 0 by omega]
    omega
  have h12 : C (248832 * k + 1367) = 746496 * k + 4102 := by
    unfold C
    simp [show (248832 * k + 1367) % 2 ≠ 0 by omega]
    omega
  have h13 : C (746496 * k + 4102) = 373248 * k + 2051 := by
    unfold C
    simp [show (746496 * k + 4102) % 2 = 0 by omega]
    omega
  have h14 : C (373248 * k + 2051) = 1119744 * k + 6154 := by
    unfold C
    simp [show (373248 * k + 2051) % 2 ≠ 0 by omega]
    omega
  have h15 : C (1119744 * k + 6154) = 559872 * k + 3077 := by
    unfold C
    simp [show (1119744 * k + 6154) % 2 = 0 by omega]
    omega
  have h16 : C (559872 * k + 3077) = 1679616 * k + 9232 := by
    unfold C
    simp [show (559872 * k + 3077) % 2 ≠ 0 by omega]
    omega
  have h17 : C (1679616 * k + 9232) = 839808 * k + 4616 := by
    unfold C
    simp [show (1679616 * k + 9232) % 2 = 0 by omega]
    omega
  have h18 : C (839808 * k + 4616) = 419904 * k + 2308 := by
    unfold C
    simp [show (839808 * k + 4616) % 2 = 0 by omega]
    omega
  have h19 : C (419904 * k + 2308) = 209952 * k + 1154 := by
    unfold C
    simp [show (419904 * k + 2308) % 2 = 0 by omega]
    omega
  have h20 : C (209952 * k + 1154) = 104976 * k + 577 := by
    unfold C
    simp [show (209952 * k + 1154) % 2 = 0 by omega]
    omega
  have h21 : C (104976 * k + 577) = 314928 * k + 1732 := by
    unfold C
    simp [show (104976 * k + 577) % 2 ≠ 0 by omega]
    omega
  have h22 : C (314928 * k + 1732) = 157464 * k + 866 := by
    unfold C
    simp [show (314928 * k + 1732) % 2 = 0 by omega]
    omega
  have h23 : C (157464 * k + 866) = 78732 * k + 433 := by
    unfold C
    simp [show (157464 * k + 866) % 2 = 0 by omega]
    omega
  have h24 : C (78732 * k + 433) = 236196 * k + 1300 := by
    unfold C
    simp [show (78732 * k + 433) % 2 ≠ 0 by omega]
    omega
  have h25 : C (236196 * k + 1300) = 118098 * k + 650 := by
    unfold C
    simp [show (236196 * k + 1300) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 650) = 59049 * k + 325 := by
    unfold C
    simp [show (118098 * k + 650) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 359) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 359)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_479 : ∀ k : Nat,
    iterate (65536 * k + 479) 26 = 59049 * k + 433 ∧
      59049 * k + 433 < 65536 * k + 479 := by
  intro k
  have h1 : C (65536 * k + 479) = 196608 * k + 1438 := by
    unfold C
    simp [show (65536 * k + 479) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 1438) = 98304 * k + 719 := by
    unfold C
    simp [show (196608 * k + 1438) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 719) = 294912 * k + 2158 := by
    unfold C
    simp [show (98304 * k + 719) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 2158) = 147456 * k + 1079 := by
    unfold C
    simp [show (294912 * k + 2158) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 1079) = 442368 * k + 3238 := by
    unfold C
    simp [show (147456 * k + 1079) % 2 ≠ 0 by omega]
    omega
  have h6 : C (442368 * k + 3238) = 221184 * k + 1619 := by
    unfold C
    simp [show (442368 * k + 3238) % 2 = 0 by omega]
    omega
  have h7 : C (221184 * k + 1619) = 663552 * k + 4858 := by
    unfold C
    simp [show (221184 * k + 1619) % 2 ≠ 0 by omega]
    omega
  have h8 : C (663552 * k + 4858) = 331776 * k + 2429 := by
    unfold C
    simp [show (663552 * k + 4858) % 2 = 0 by omega]
    omega
  have h9 : C (331776 * k + 2429) = 995328 * k + 7288 := by
    unfold C
    simp [show (331776 * k + 2429) % 2 ≠ 0 by omega]
    omega
  have h10 : C (995328 * k + 7288) = 497664 * k + 3644 := by
    unfold C
    simp [show (995328 * k + 7288) % 2 = 0 by omega]
    omega
  have h11 : C (497664 * k + 3644) = 248832 * k + 1822 := by
    unfold C
    simp [show (497664 * k + 3644) % 2 = 0 by omega]
    omega
  have h12 : C (248832 * k + 1822) = 124416 * k + 911 := by
    unfold C
    simp [show (248832 * k + 1822) % 2 = 0 by omega]
    omega
  have h13 : C (124416 * k + 911) = 373248 * k + 2734 := by
    unfold C
    simp [show (124416 * k + 911) % 2 ≠ 0 by omega]
    omega
  have h14 : C (373248 * k + 2734) = 186624 * k + 1367 := by
    unfold C
    simp [show (373248 * k + 2734) % 2 = 0 by omega]
    omega
  have h15 : C (186624 * k + 1367) = 559872 * k + 4102 := by
    unfold C
    simp [show (186624 * k + 1367) % 2 ≠ 0 by omega]
    omega
  have h16 : C (559872 * k + 4102) = 279936 * k + 2051 := by
    unfold C
    simp [show (559872 * k + 4102) % 2 = 0 by omega]
    omega
  have h17 : C (279936 * k + 2051) = 839808 * k + 6154 := by
    unfold C
    simp [show (279936 * k + 2051) % 2 ≠ 0 by omega]
    omega
  have h18 : C (839808 * k + 6154) = 419904 * k + 3077 := by
    unfold C
    simp [show (839808 * k + 6154) % 2 = 0 by omega]
    omega
  have h19 : C (419904 * k + 3077) = 1259712 * k + 9232 := by
    unfold C
    simp [show (419904 * k + 3077) % 2 ≠ 0 by omega]
    omega
  have h20 : C (1259712 * k + 9232) = 629856 * k + 4616 := by
    unfold C
    simp [show (1259712 * k + 9232) % 2 = 0 by omega]
    omega
  have h21 : C (629856 * k + 4616) = 314928 * k + 2308 := by
    unfold C
    simp [show (629856 * k + 4616) % 2 = 0 by omega]
    omega
  have h22 : C (314928 * k + 2308) = 157464 * k + 1154 := by
    unfold C
    simp [show (314928 * k + 2308) % 2 = 0 by omega]
    omega
  have h23 : C (157464 * k + 1154) = 78732 * k + 577 := by
    unfold C
    simp [show (157464 * k + 1154) % 2 = 0 by omega]
    omega
  have h24 : C (78732 * k + 577) = 236196 * k + 1732 := by
    unfold C
    simp [show (78732 * k + 577) % 2 ≠ 0 by omega]
    omega
  have h25 : C (236196 * k + 1732) = 118098 * k + 866 := by
    unfold C
    simp [show (236196 * k + 1732) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 866) = 59049 * k + 433 := by
    unfold C
    simp [show (118098 * k + 866) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 479) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 479)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_559 : ∀ k : Nat,
    iterate (65536 * k + 559) 26 = 59049 * k + 505 ∧
      59049 * k + 505 < 65536 * k + 559 := by
  intro k
  have h1 : C (65536 * k + 559) = 196608 * k + 1678 := by
    unfold C
    simp [show (65536 * k + 559) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 1678) = 98304 * k + 839 := by
    unfold C
    simp [show (196608 * k + 1678) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 839) = 294912 * k + 2518 := by
    unfold C
    simp [show (98304 * k + 839) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 2518) = 147456 * k + 1259 := by
    unfold C
    simp [show (294912 * k + 2518) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 1259) = 442368 * k + 3778 := by
    unfold C
    simp [show (147456 * k + 1259) % 2 ≠ 0 by omega]
    omega
  have h6 : C (442368 * k + 3778) = 221184 * k + 1889 := by
    unfold C
    simp [show (442368 * k + 3778) % 2 = 0 by omega]
    omega
  have h7 : C (221184 * k + 1889) = 663552 * k + 5668 := by
    unfold C
    simp [show (221184 * k + 1889) % 2 ≠ 0 by omega]
    omega
  have h8 : C (663552 * k + 5668) = 331776 * k + 2834 := by
    unfold C
    simp [show (663552 * k + 5668) % 2 = 0 by omega]
    omega
  have h9 : C (331776 * k + 2834) = 165888 * k + 1417 := by
    unfold C
    simp [show (331776 * k + 2834) % 2 = 0 by omega]
    omega
  have h10 : C (165888 * k + 1417) = 497664 * k + 4252 := by
    unfold C
    simp [show (165888 * k + 1417) % 2 ≠ 0 by omega]
    omega
  have h11 : C (497664 * k + 4252) = 248832 * k + 2126 := by
    unfold C
    simp [show (497664 * k + 4252) % 2 = 0 by omega]
    omega
  have h12 : C (248832 * k + 2126) = 124416 * k + 1063 := by
    unfold C
    simp [show (248832 * k + 2126) % 2 = 0 by omega]
    omega
  have h13 : C (124416 * k + 1063) = 373248 * k + 3190 := by
    unfold C
    simp [show (124416 * k + 1063) % 2 ≠ 0 by omega]
    omega
  have h14 : C (373248 * k + 3190) = 186624 * k + 1595 := by
    unfold C
    simp [show (373248 * k + 3190) % 2 = 0 by omega]
    omega
  have h15 : C (186624 * k + 1595) = 559872 * k + 4786 := by
    unfold C
    simp [show (186624 * k + 1595) % 2 ≠ 0 by omega]
    omega
  have h16 : C (559872 * k + 4786) = 279936 * k + 2393 := by
    unfold C
    simp [show (559872 * k + 4786) % 2 = 0 by omega]
    omega
  have h17 : C (279936 * k + 2393) = 839808 * k + 7180 := by
    unfold C
    simp [show (279936 * k + 2393) % 2 ≠ 0 by omega]
    omega
  have h18 : C (839808 * k + 7180) = 419904 * k + 3590 := by
    unfold C
    simp [show (839808 * k + 7180) % 2 = 0 by omega]
    omega
  have h19 : C (419904 * k + 3590) = 209952 * k + 1795 := by
    unfold C
    simp [show (419904 * k + 3590) % 2 = 0 by omega]
    omega
  have h20 : C (209952 * k + 1795) = 629856 * k + 5386 := by
    unfold C
    simp [show (209952 * k + 1795) % 2 ≠ 0 by omega]
    omega
  have h21 : C (629856 * k + 5386) = 314928 * k + 2693 := by
    unfold C
    simp [show (629856 * k + 5386) % 2 = 0 by omega]
    omega
  have h22 : C (314928 * k + 2693) = 944784 * k + 8080 := by
    unfold C
    simp [show (314928 * k + 2693) % 2 ≠ 0 by omega]
    omega
  have h23 : C (944784 * k + 8080) = 472392 * k + 4040 := by
    unfold C
    simp [show (944784 * k + 8080) % 2 = 0 by omega]
    omega
  have h24 : C (472392 * k + 4040) = 236196 * k + 2020 := by
    unfold C
    simp [show (472392 * k + 4040) % 2 = 0 by omega]
    omega
  have h25 : C (236196 * k + 2020) = 118098 * k + 1010 := by
    unfold C
    simp [show (236196 * k + 2020) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 1010) = 59049 * k + 505 := by
    unfold C
    simp [show (118098 * k + 1010) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 559) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 559)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_603 : ∀ k : Nat,
    iterate (65536 * k + 603) 26 = 59049 * k + 545 ∧
      59049 * k + 545 < 65536 * k + 603 := by
  intro k
  have h1 : C (65536 * k + 603) = 196608 * k + 1810 := by
    unfold C
    simp [show (65536 * k + 603) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 1810) = 98304 * k + 905 := by
    unfold C
    simp [show (196608 * k + 1810) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 905) = 294912 * k + 2716 := by
    unfold C
    simp [show (98304 * k + 905) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 2716) = 147456 * k + 1358 := by
    unfold C
    simp [show (294912 * k + 2716) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 1358) = 73728 * k + 679 := by
    unfold C
    simp [show (147456 * k + 1358) % 2 = 0 by omega]
    omega
  have h6 : C (73728 * k + 679) = 221184 * k + 2038 := by
    unfold C
    simp [show (73728 * k + 679) % 2 ≠ 0 by omega]
    omega
  have h7 : C (221184 * k + 2038) = 110592 * k + 1019 := by
    unfold C
    simp [show (221184 * k + 2038) % 2 = 0 by omega]
    omega
  have h8 : C (110592 * k + 1019) = 331776 * k + 3058 := by
    unfold C
    simp [show (110592 * k + 1019) % 2 ≠ 0 by omega]
    omega
  have h9 : C (331776 * k + 3058) = 165888 * k + 1529 := by
    unfold C
    simp [show (331776 * k + 3058) % 2 = 0 by omega]
    omega
  have h10 : C (165888 * k + 1529) = 497664 * k + 4588 := by
    unfold C
    simp [show (165888 * k + 1529) % 2 ≠ 0 by omega]
    omega
  have h11 : C (497664 * k + 4588) = 248832 * k + 2294 := by
    unfold C
    simp [show (497664 * k + 4588) % 2 = 0 by omega]
    omega
  have h12 : C (248832 * k + 2294) = 124416 * k + 1147 := by
    unfold C
    simp [show (248832 * k + 2294) % 2 = 0 by omega]
    omega
  have h13 : C (124416 * k + 1147) = 373248 * k + 3442 := by
    unfold C
    simp [show (124416 * k + 1147) % 2 ≠ 0 by omega]
    omega
  have h14 : C (373248 * k + 3442) = 186624 * k + 1721 := by
    unfold C
    simp [show (373248 * k + 3442) % 2 = 0 by omega]
    omega
  have h15 : C (186624 * k + 1721) = 559872 * k + 5164 := by
    unfold C
    simp [show (186624 * k + 1721) % 2 ≠ 0 by omega]
    omega
  have h16 : C (559872 * k + 5164) = 279936 * k + 2582 := by
    unfold C
    simp [show (559872 * k + 5164) % 2 = 0 by omega]
    omega
  have h17 : C (279936 * k + 2582) = 139968 * k + 1291 := by
    unfold C
    simp [show (279936 * k + 2582) % 2 = 0 by omega]
    omega
  have h18 : C (139968 * k + 1291) = 419904 * k + 3874 := by
    unfold C
    simp [show (139968 * k + 1291) % 2 ≠ 0 by omega]
    omega
  have h19 : C (419904 * k + 3874) = 209952 * k + 1937 := by
    unfold C
    simp [show (419904 * k + 3874) % 2 = 0 by omega]
    omega
  have h20 : C (209952 * k + 1937) = 629856 * k + 5812 := by
    unfold C
    simp [show (209952 * k + 1937) % 2 ≠ 0 by omega]
    omega
  have h21 : C (629856 * k + 5812) = 314928 * k + 2906 := by
    unfold C
    simp [show (629856 * k + 5812) % 2 = 0 by omega]
    omega
  have h22 : C (314928 * k + 2906) = 157464 * k + 1453 := by
    unfold C
    simp [show (314928 * k + 2906) % 2 = 0 by omega]
    omega
  have h23 : C (157464 * k + 1453) = 472392 * k + 4360 := by
    unfold C
    simp [show (157464 * k + 1453) % 2 ≠ 0 by omega]
    omega
  have h24 : C (472392 * k + 4360) = 236196 * k + 2180 := by
    unfold C
    simp [show (472392 * k + 4360) % 2 = 0 by omega]
    omega
  have h25 : C (236196 * k + 2180) = 118098 * k + 1090 := by
    unfold C
    simp [show (236196 * k + 2180) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 1090) = 59049 * k + 545 := by
    unfold C
    simp [show (118098 * k + 1090) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 603) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 603)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_767 : ∀ k : Nat,
    iterate (65536 * k + 767) 26 = 59049 * k + 692 ∧
      59049 * k + 692 < 65536 * k + 767 := by
  intro k
  have h1 : C (65536 * k + 767) = 196608 * k + 2302 := by
    unfold C
    simp [show (65536 * k + 767) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 2302) = 98304 * k + 1151 := by
    unfold C
    simp [show (196608 * k + 2302) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 1151) = 294912 * k + 3454 := by
    unfold C
    simp [show (98304 * k + 1151) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 3454) = 147456 * k + 1727 := by
    unfold C
    simp [show (294912 * k + 3454) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 1727) = 442368 * k + 5182 := by
    unfold C
    simp [show (147456 * k + 1727) % 2 ≠ 0 by omega]
    omega
  have h6 : C (442368 * k + 5182) = 221184 * k + 2591 := by
    unfold C
    simp [show (442368 * k + 5182) % 2 = 0 by omega]
    omega
  have h7 : C (221184 * k + 2591) = 663552 * k + 7774 := by
    unfold C
    simp [show (221184 * k + 2591) % 2 ≠ 0 by omega]
    omega
  have h8 : C (663552 * k + 7774) = 331776 * k + 3887 := by
    unfold C
    simp [show (663552 * k + 7774) % 2 = 0 by omega]
    omega
  have h9 : C (331776 * k + 3887) = 995328 * k + 11662 := by
    unfold C
    simp [show (331776 * k + 3887) % 2 ≠ 0 by omega]
    omega
  have h10 : C (995328 * k + 11662) = 497664 * k + 5831 := by
    unfold C
    simp [show (995328 * k + 11662) % 2 = 0 by omega]
    omega
  have h11 : C (497664 * k + 5831) = 1492992 * k + 17494 := by
    unfold C
    simp [show (497664 * k + 5831) % 2 ≠ 0 by omega]
    omega
  have h12 : C (1492992 * k + 17494) = 746496 * k + 8747 := by
    unfold C
    simp [show (1492992 * k + 17494) % 2 = 0 by omega]
    omega
  have h13 : C (746496 * k + 8747) = 2239488 * k + 26242 := by
    unfold C
    simp [show (746496 * k + 8747) % 2 ≠ 0 by omega]
    omega
  have h14 : C (2239488 * k + 26242) = 1119744 * k + 13121 := by
    unfold C
    simp [show (2239488 * k + 26242) % 2 = 0 by omega]
    omega
  have h15 : C (1119744 * k + 13121) = 3359232 * k + 39364 := by
    unfold C
    simp [show (1119744 * k + 13121) % 2 ≠ 0 by omega]
    omega
  have h16 : C (3359232 * k + 39364) = 1679616 * k + 19682 := by
    unfold C
    simp [show (3359232 * k + 39364) % 2 = 0 by omega]
    omega
  have h17 : C (1679616 * k + 19682) = 839808 * k + 9841 := by
    unfold C
    simp [show (1679616 * k + 19682) % 2 = 0 by omega]
    omega
  have h18 : C (839808 * k + 9841) = 2519424 * k + 29524 := by
    unfold C
    simp [show (839808 * k + 9841) % 2 ≠ 0 by omega]
    omega
  have h19 : C (2519424 * k + 29524) = 1259712 * k + 14762 := by
    unfold C
    simp [show (2519424 * k + 29524) % 2 = 0 by omega]
    omega
  have h20 : C (1259712 * k + 14762) = 629856 * k + 7381 := by
    unfold C
    simp [show (1259712 * k + 14762) % 2 = 0 by omega]
    omega
  have h21 : C (629856 * k + 7381) = 1889568 * k + 22144 := by
    unfold C
    simp [show (629856 * k + 7381) % 2 ≠ 0 by omega]
    omega
  have h22 : C (1889568 * k + 22144) = 944784 * k + 11072 := by
    unfold C
    simp [show (1889568 * k + 22144) % 2 = 0 by omega]
    omega
  have h23 : C (944784 * k + 11072) = 472392 * k + 5536 := by
    unfold C
    simp [show (944784 * k + 11072) % 2 = 0 by omega]
    omega
  have h24 : C (472392 * k + 5536) = 236196 * k + 2768 := by
    unfold C
    simp [show (472392 * k + 5536) % 2 = 0 by omega]
    omega
  have h25 : C (236196 * k + 2768) = 118098 * k + 1384 := by
    unfold C
    simp [show (236196 * k + 2768) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 1384) = 59049 * k + 692 := by
    unfold C
    simp [show (118098 * k + 1384) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 767) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 767)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_859 : ∀ k : Nat,
    iterate (65536 * k + 859) 26 = 59049 * k + 776 ∧
      59049 * k + 776 < 65536 * k + 859 := by
  intro k
  have h1 : C (65536 * k + 859) = 196608 * k + 2578 := by
    unfold C
    simp [show (65536 * k + 859) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 2578) = 98304 * k + 1289 := by
    unfold C
    simp [show (196608 * k + 2578) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 1289) = 294912 * k + 3868 := by
    unfold C
    simp [show (98304 * k + 1289) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 3868) = 147456 * k + 1934 := by
    unfold C
    simp [show (294912 * k + 3868) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 1934) = 73728 * k + 967 := by
    unfold C
    simp [show (147456 * k + 1934) % 2 = 0 by omega]
    omega
  have h6 : C (73728 * k + 967) = 221184 * k + 2902 := by
    unfold C
    simp [show (73728 * k + 967) % 2 ≠ 0 by omega]
    omega
  have h7 : C (221184 * k + 2902) = 110592 * k + 1451 := by
    unfold C
    simp [show (221184 * k + 2902) % 2 = 0 by omega]
    omega
  have h8 : C (110592 * k + 1451) = 331776 * k + 4354 := by
    unfold C
    simp [show (110592 * k + 1451) % 2 ≠ 0 by omega]
    omega
  have h9 : C (331776 * k + 4354) = 165888 * k + 2177 := by
    unfold C
    simp [show (331776 * k + 4354) % 2 = 0 by omega]
    omega
  have h10 : C (165888 * k + 2177) = 497664 * k + 6532 := by
    unfold C
    simp [show (165888 * k + 2177) % 2 ≠ 0 by omega]
    omega
  have h11 : C (497664 * k + 6532) = 248832 * k + 3266 := by
    unfold C
    simp [show (497664 * k + 6532) % 2 = 0 by omega]
    omega
  have h12 : C (248832 * k + 3266) = 124416 * k + 1633 := by
    unfold C
    simp [show (248832 * k + 3266) % 2 = 0 by omega]
    omega
  have h13 : C (124416 * k + 1633) = 373248 * k + 4900 := by
    unfold C
    simp [show (124416 * k + 1633) % 2 ≠ 0 by omega]
    omega
  have h14 : C (373248 * k + 4900) = 186624 * k + 2450 := by
    unfold C
    simp [show (373248 * k + 4900) % 2 = 0 by omega]
    omega
  have h15 : C (186624 * k + 2450) = 93312 * k + 1225 := by
    unfold C
    simp [show (186624 * k + 2450) % 2 = 0 by omega]
    omega
  have h16 : C (93312 * k + 1225) = 279936 * k + 3676 := by
    unfold C
    simp [show (93312 * k + 1225) % 2 ≠ 0 by omega]
    omega
  have h17 : C (279936 * k + 3676) = 139968 * k + 1838 := by
    unfold C
    simp [show (279936 * k + 3676) % 2 = 0 by omega]
    omega
  have h18 : C (139968 * k + 1838) = 69984 * k + 919 := by
    unfold C
    simp [show (139968 * k + 1838) % 2 = 0 by omega]
    omega
  have h19 : C (69984 * k + 919) = 209952 * k + 2758 := by
    unfold C
    simp [show (69984 * k + 919) % 2 ≠ 0 by omega]
    omega
  have h20 : C (209952 * k + 2758) = 104976 * k + 1379 := by
    unfold C
    simp [show (209952 * k + 2758) % 2 = 0 by omega]
    omega
  have h21 : C (104976 * k + 1379) = 314928 * k + 4138 := by
    unfold C
    simp [show (104976 * k + 1379) % 2 ≠ 0 by omega]
    omega
  have h22 : C (314928 * k + 4138) = 157464 * k + 2069 := by
    unfold C
    simp [show (314928 * k + 4138) % 2 = 0 by omega]
    omega
  have h23 : C (157464 * k + 2069) = 472392 * k + 6208 := by
    unfold C
    simp [show (157464 * k + 2069) % 2 ≠ 0 by omega]
    omega
  have h24 : C (472392 * k + 6208) = 236196 * k + 3104 := by
    unfold C
    simp [show (472392 * k + 6208) % 2 = 0 by omega]
    omega
  have h25 : C (236196 * k + 3104) = 118098 * k + 1552 := by
    unfold C
    simp [show (236196 * k + 3104) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 1552) = 59049 * k + 776 := by
    unfold C
    simp [show (118098 * k + 1552) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 859) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 859)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_1179 : ∀ k : Nat,
    iterate (65536 * k + 1179) 26 = 59049 * k + 1064 ∧
      59049 * k + 1064 < 65536 * k + 1179 := by
  intro k
  have h1 : C (65536 * k + 1179) = 196608 * k + 3538 := by
    unfold C
    simp [show (65536 * k + 1179) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 3538) = 98304 * k + 1769 := by
    unfold C
    simp [show (196608 * k + 3538) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 1769) = 294912 * k + 5308 := by
    unfold C
    simp [show (98304 * k + 1769) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 5308) = 147456 * k + 2654 := by
    unfold C
    simp [show (294912 * k + 5308) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 2654) = 73728 * k + 1327 := by
    unfold C
    simp [show (147456 * k + 2654) % 2 = 0 by omega]
    omega
  have h6 : C (73728 * k + 1327) = 221184 * k + 3982 := by
    unfold C
    simp [show (73728 * k + 1327) % 2 ≠ 0 by omega]
    omega
  have h7 : C (221184 * k + 3982) = 110592 * k + 1991 := by
    unfold C
    simp [show (221184 * k + 3982) % 2 = 0 by omega]
    omega
  have h8 : C (110592 * k + 1991) = 331776 * k + 5974 := by
    unfold C
    simp [show (110592 * k + 1991) % 2 ≠ 0 by omega]
    omega
  have h9 : C (331776 * k + 5974) = 165888 * k + 2987 := by
    unfold C
    simp [show (331776 * k + 5974) % 2 = 0 by omega]
    omega
  have h10 : C (165888 * k + 2987) = 497664 * k + 8962 := by
    unfold C
    simp [show (165888 * k + 2987) % 2 ≠ 0 by omega]
    omega
  have h11 : C (497664 * k + 8962) = 248832 * k + 4481 := by
    unfold C
    simp [show (497664 * k + 8962) % 2 = 0 by omega]
    omega
  have h12 : C (248832 * k + 4481) = 746496 * k + 13444 := by
    unfold C
    simp [show (248832 * k + 4481) % 2 ≠ 0 by omega]
    omega
  have h13 : C (746496 * k + 13444) = 373248 * k + 6722 := by
    unfold C
    simp [show (746496 * k + 13444) % 2 = 0 by omega]
    omega
  have h14 : C (373248 * k + 6722) = 186624 * k + 3361 := by
    unfold C
    simp [show (373248 * k + 6722) % 2 = 0 by omega]
    omega
  have h15 : C (186624 * k + 3361) = 559872 * k + 10084 := by
    unfold C
    simp [show (186624 * k + 3361) % 2 ≠ 0 by omega]
    omega
  have h16 : C (559872 * k + 10084) = 279936 * k + 5042 := by
    unfold C
    simp [show (559872 * k + 10084) % 2 = 0 by omega]
    omega
  have h17 : C (279936 * k + 5042) = 139968 * k + 2521 := by
    unfold C
    simp [show (279936 * k + 5042) % 2 = 0 by omega]
    omega
  have h18 : C (139968 * k + 2521) = 419904 * k + 7564 := by
    unfold C
    simp [show (139968 * k + 2521) % 2 ≠ 0 by omega]
    omega
  have h19 : C (419904 * k + 7564) = 209952 * k + 3782 := by
    unfold C
    simp [show (419904 * k + 7564) % 2 = 0 by omega]
    omega
  have h20 : C (209952 * k + 3782) = 104976 * k + 1891 := by
    unfold C
    simp [show (209952 * k + 3782) % 2 = 0 by omega]
    omega
  have h21 : C (104976 * k + 1891) = 314928 * k + 5674 := by
    unfold C
    simp [show (104976 * k + 1891) % 2 ≠ 0 by omega]
    omega
  have h22 : C (314928 * k + 5674) = 157464 * k + 2837 := by
    unfold C
    simp [show (314928 * k + 5674) % 2 = 0 by omega]
    omega
  have h23 : C (157464 * k + 2837) = 472392 * k + 8512 := by
    unfold C
    simp [show (157464 * k + 2837) % 2 ≠ 0 by omega]
    omega
  have h24 : C (472392 * k + 8512) = 236196 * k + 4256 := by
    unfold C
    simp [show (472392 * k + 8512) % 2 = 0 by omega]
    omega
  have h25 : C (236196 * k + 4256) = 118098 * k + 2128 := by
    unfold C
    simp [show (236196 * k + 4256) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 2128) = 59049 * k + 1064 := by
    unfold C
    simp [show (118098 * k + 2128) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 1179) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 1179)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_1183 : ∀ k : Nat,
    iterate (65536 * k + 1183) 26 = 59049 * k + 1067 ∧
      59049 * k + 1067 < 65536 * k + 1183 := by
  intro k
  have h1 : C (65536 * k + 1183) = 196608 * k + 3550 := by
    unfold C
    simp [show (65536 * k + 1183) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 3550) = 98304 * k + 1775 := by
    unfold C
    simp [show (196608 * k + 3550) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 1775) = 294912 * k + 5326 := by
    unfold C
    simp [show (98304 * k + 1775) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 5326) = 147456 * k + 2663 := by
    unfold C
    simp [show (294912 * k + 5326) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 2663) = 442368 * k + 7990 := by
    unfold C
    simp [show (147456 * k + 2663) % 2 ≠ 0 by omega]
    omega
  have h6 : C (442368 * k + 7990) = 221184 * k + 3995 := by
    unfold C
    simp [show (442368 * k + 7990) % 2 = 0 by omega]
    omega
  have h7 : C (221184 * k + 3995) = 663552 * k + 11986 := by
    unfold C
    simp [show (221184 * k + 3995) % 2 ≠ 0 by omega]
    omega
  have h8 : C (663552 * k + 11986) = 331776 * k + 5993 := by
    unfold C
    simp [show (663552 * k + 11986) % 2 = 0 by omega]
    omega
  have h9 : C (331776 * k + 5993) = 995328 * k + 17980 := by
    unfold C
    simp [show (331776 * k + 5993) % 2 ≠ 0 by omega]
    omega
  have h10 : C (995328 * k + 17980) = 497664 * k + 8990 := by
    unfold C
    simp [show (995328 * k + 17980) % 2 = 0 by omega]
    omega
  have h11 : C (497664 * k + 8990) = 248832 * k + 4495 := by
    unfold C
    simp [show (497664 * k + 8990) % 2 = 0 by omega]
    omega
  have h12 : C (248832 * k + 4495) = 746496 * k + 13486 := by
    unfold C
    simp [show (248832 * k + 4495) % 2 ≠ 0 by omega]
    omega
  have h13 : C (746496 * k + 13486) = 373248 * k + 6743 := by
    unfold C
    simp [show (746496 * k + 13486) % 2 = 0 by omega]
    omega
  have h14 : C (373248 * k + 6743) = 1119744 * k + 20230 := by
    unfold C
    simp [show (373248 * k + 6743) % 2 ≠ 0 by omega]
    omega
  have h15 : C (1119744 * k + 20230) = 559872 * k + 10115 := by
    unfold C
    simp [show (1119744 * k + 20230) % 2 = 0 by omega]
    omega
  have h16 : C (559872 * k + 10115) = 1679616 * k + 30346 := by
    unfold C
    simp [show (559872 * k + 10115) % 2 ≠ 0 by omega]
    omega
  have h17 : C (1679616 * k + 30346) = 839808 * k + 15173 := by
    unfold C
    simp [show (1679616 * k + 30346) % 2 = 0 by omega]
    omega
  have h18 : C (839808 * k + 15173) = 2519424 * k + 45520 := by
    unfold C
    simp [show (839808 * k + 15173) % 2 ≠ 0 by omega]
    omega
  have h19 : C (2519424 * k + 45520) = 1259712 * k + 22760 := by
    unfold C
    simp [show (2519424 * k + 45520) % 2 = 0 by omega]
    omega
  have h20 : C (1259712 * k + 22760) = 629856 * k + 11380 := by
    unfold C
    simp [show (1259712 * k + 22760) % 2 = 0 by omega]
    omega
  have h21 : C (629856 * k + 11380) = 314928 * k + 5690 := by
    unfold C
    simp [show (629856 * k + 11380) % 2 = 0 by omega]
    omega
  have h22 : C (314928 * k + 5690) = 157464 * k + 2845 := by
    unfold C
    simp [show (314928 * k + 5690) % 2 = 0 by omega]
    omega
  have h23 : C (157464 * k + 2845) = 472392 * k + 8536 := by
    unfold C
    simp [show (157464 * k + 2845) % 2 ≠ 0 by omega]
    omega
  have h24 : C (472392 * k + 8536) = 236196 * k + 4268 := by
    unfold C
    simp [show (472392 * k + 8536) % 2 = 0 by omega]
    omega
  have h25 : C (236196 * k + 4268) = 118098 * k + 2134 := by
    unfold C
    simp [show (236196 * k + 4268) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 2134) = 59049 * k + 1067 := by
    unfold C
    simp [show (118098 * k + 2134) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 1183) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 1183)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_1351 : ∀ k : Nat,
    iterate (65536 * k + 1351) 26 = 59049 * k + 1219 ∧
      59049 * k + 1219 < 65536 * k + 1351 := by
  intro k
  have h1 : C (65536 * k + 1351) = 196608 * k + 4054 := by
    unfold C
    simp [show (65536 * k + 1351) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 4054) = 98304 * k + 2027 := by
    unfold C
    simp [show (196608 * k + 4054) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 2027) = 294912 * k + 6082 := by
    unfold C
    simp [show (98304 * k + 2027) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 6082) = 147456 * k + 3041 := by
    unfold C
    simp [show (294912 * k + 6082) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 3041) = 442368 * k + 9124 := by
    unfold C
    simp [show (147456 * k + 3041) % 2 ≠ 0 by omega]
    omega
  have h6 : C (442368 * k + 9124) = 221184 * k + 4562 := by
    unfold C
    simp [show (442368 * k + 9124) % 2 = 0 by omega]
    omega
  have h7 : C (221184 * k + 4562) = 110592 * k + 2281 := by
    unfold C
    simp [show (221184 * k + 4562) % 2 = 0 by omega]
    omega
  have h8 : C (110592 * k + 2281) = 331776 * k + 6844 := by
    unfold C
    simp [show (110592 * k + 2281) % 2 ≠ 0 by omega]
    omega
  have h9 : C (331776 * k + 6844) = 165888 * k + 3422 := by
    unfold C
    simp [show (331776 * k + 6844) % 2 = 0 by omega]
    omega
  have h10 : C (165888 * k + 3422) = 82944 * k + 1711 := by
    unfold C
    simp [show (165888 * k + 3422) % 2 = 0 by omega]
    omega
  have h11 : C (82944 * k + 1711) = 248832 * k + 5134 := by
    unfold C
    simp [show (82944 * k + 1711) % 2 ≠ 0 by omega]
    omega
  have h12 : C (248832 * k + 5134) = 124416 * k + 2567 := by
    unfold C
    simp [show (248832 * k + 5134) % 2 = 0 by omega]
    omega
  have h13 : C (124416 * k + 2567) = 373248 * k + 7702 := by
    unfold C
    simp [show (124416 * k + 2567) % 2 ≠ 0 by omega]
    omega
  have h14 : C (373248 * k + 7702) = 186624 * k + 3851 := by
    unfold C
    simp [show (373248 * k + 7702) % 2 = 0 by omega]
    omega
  have h15 : C (186624 * k + 3851) = 559872 * k + 11554 := by
    unfold C
    simp [show (186624 * k + 3851) % 2 ≠ 0 by omega]
    omega
  have h16 : C (559872 * k + 11554) = 279936 * k + 5777 := by
    unfold C
    simp [show (559872 * k + 11554) % 2 = 0 by omega]
    omega
  have h17 : C (279936 * k + 5777) = 839808 * k + 17332 := by
    unfold C
    simp [show (279936 * k + 5777) % 2 ≠ 0 by omega]
    omega
  have h18 : C (839808 * k + 17332) = 419904 * k + 8666 := by
    unfold C
    simp [show (839808 * k + 17332) % 2 = 0 by omega]
    omega
  have h19 : C (419904 * k + 8666) = 209952 * k + 4333 := by
    unfold C
    simp [show (419904 * k + 8666) % 2 = 0 by omega]
    omega
  have h20 : C (209952 * k + 4333) = 629856 * k + 13000 := by
    unfold C
    simp [show (209952 * k + 4333) % 2 ≠ 0 by omega]
    omega
  have h21 : C (629856 * k + 13000) = 314928 * k + 6500 := by
    unfold C
    simp [show (629856 * k + 13000) % 2 = 0 by omega]
    omega
  have h22 : C (314928 * k + 6500) = 157464 * k + 3250 := by
    unfold C
    simp [show (314928 * k + 6500) % 2 = 0 by omega]
    omega
  have h23 : C (157464 * k + 3250) = 78732 * k + 1625 := by
    unfold C
    simp [show (157464 * k + 3250) % 2 = 0 by omega]
    omega
  have h24 : C (78732 * k + 1625) = 236196 * k + 4876 := by
    unfold C
    simp [show (78732 * k + 1625) % 2 ≠ 0 by omega]
    omega
  have h25 : C (236196 * k + 4876) = 118098 * k + 2438 := by
    unfold C
    simp [show (236196 * k + 4876) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 2438) = 59049 * k + 1219 := by
    unfold C
    simp [show (118098 * k + 2438) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 1351) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 1351)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_1519 : ∀ k : Nat,
    iterate (65536 * k + 1519) 26 = 59049 * k + 1370 ∧
      59049 * k + 1370 < 65536 * k + 1519 := by
  intro k
  have h1 : C (65536 * k + 1519) = 196608 * k + 4558 := by
    unfold C
    simp [show (65536 * k + 1519) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 4558) = 98304 * k + 2279 := by
    unfold C
    simp [show (196608 * k + 4558) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 2279) = 294912 * k + 6838 := by
    unfold C
    simp [show (98304 * k + 2279) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 6838) = 147456 * k + 3419 := by
    unfold C
    simp [show (294912 * k + 6838) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 3419) = 442368 * k + 10258 := by
    unfold C
    simp [show (147456 * k + 3419) % 2 ≠ 0 by omega]
    omega
  have h6 : C (442368 * k + 10258) = 221184 * k + 5129 := by
    unfold C
    simp [show (442368 * k + 10258) % 2 = 0 by omega]
    omega
  have h7 : C (221184 * k + 5129) = 663552 * k + 15388 := by
    unfold C
    simp [show (221184 * k + 5129) % 2 ≠ 0 by omega]
    omega
  have h8 : C (663552 * k + 15388) = 331776 * k + 7694 := by
    unfold C
    simp [show (663552 * k + 15388) % 2 = 0 by omega]
    omega
  have h9 : C (331776 * k + 7694) = 165888 * k + 3847 := by
    unfold C
    simp [show (331776 * k + 7694) % 2 = 0 by omega]
    omega
  have h10 : C (165888 * k + 3847) = 497664 * k + 11542 := by
    unfold C
    simp [show (165888 * k + 3847) % 2 ≠ 0 by omega]
    omega
  have h11 : C (497664 * k + 11542) = 248832 * k + 5771 := by
    unfold C
    simp [show (497664 * k + 11542) % 2 = 0 by omega]
    omega
  have h12 : C (248832 * k + 5771) = 746496 * k + 17314 := by
    unfold C
    simp [show (248832 * k + 5771) % 2 ≠ 0 by omega]
    omega
  have h13 : C (746496 * k + 17314) = 373248 * k + 8657 := by
    unfold C
    simp [show (746496 * k + 17314) % 2 = 0 by omega]
    omega
  have h14 : C (373248 * k + 8657) = 1119744 * k + 25972 := by
    unfold C
    simp [show (373248 * k + 8657) % 2 ≠ 0 by omega]
    omega
  have h15 : C (1119744 * k + 25972) = 559872 * k + 12986 := by
    unfold C
    simp [show (1119744 * k + 25972) % 2 = 0 by omega]
    omega
  have h16 : C (559872 * k + 12986) = 279936 * k + 6493 := by
    unfold C
    simp [show (559872 * k + 12986) % 2 = 0 by omega]
    omega
  have h17 : C (279936 * k + 6493) = 839808 * k + 19480 := by
    unfold C
    simp [show (279936 * k + 6493) % 2 ≠ 0 by omega]
    omega
  have h18 : C (839808 * k + 19480) = 419904 * k + 9740 := by
    unfold C
    simp [show (839808 * k + 19480) % 2 = 0 by omega]
    omega
  have h19 : C (419904 * k + 9740) = 209952 * k + 4870 := by
    unfold C
    simp [show (419904 * k + 9740) % 2 = 0 by omega]
    omega
  have h20 : C (209952 * k + 4870) = 104976 * k + 2435 := by
    unfold C
    simp [show (209952 * k + 4870) % 2 = 0 by omega]
    omega
  have h21 : C (104976 * k + 2435) = 314928 * k + 7306 := by
    unfold C
    simp [show (104976 * k + 2435) % 2 ≠ 0 by omega]
    omega
  have h22 : C (314928 * k + 7306) = 157464 * k + 3653 := by
    unfold C
    simp [show (314928 * k + 7306) % 2 = 0 by omega]
    omega
  have h23 : C (157464 * k + 3653) = 472392 * k + 10960 := by
    unfold C
    simp [show (157464 * k + 3653) % 2 ≠ 0 by omega]
    omega
  have h24 : C (472392 * k + 10960) = 236196 * k + 5480 := by
    unfold C
    simp [show (472392 * k + 10960) % 2 = 0 by omega]
    omega
  have h25 : C (236196 * k + 5480) = 118098 * k + 2740 := by
    unfold C
    simp [show (236196 * k + 5480) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 2740) = 59049 * k + 1370 := by
    unfold C
    simp [show (118098 * k + 2740) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 1519) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 1519)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_1535 : ∀ k : Nat,
    iterate (65536 * k + 1535) 26 = 59049 * k + 1384 ∧
      59049 * k + 1384 < 65536 * k + 1535 := by
  intro k
  have h1 : C (65536 * k + 1535) = 196608 * k + 4606 := by
    unfold C
    simp [show (65536 * k + 1535) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 4606) = 98304 * k + 2303 := by
    unfold C
    simp [show (196608 * k + 4606) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 2303) = 294912 * k + 6910 := by
    unfold C
    simp [show (98304 * k + 2303) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 6910) = 147456 * k + 3455 := by
    unfold C
    simp [show (294912 * k + 6910) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 3455) = 442368 * k + 10366 := by
    unfold C
    simp [show (147456 * k + 3455) % 2 ≠ 0 by omega]
    omega
  have h6 : C (442368 * k + 10366) = 221184 * k + 5183 := by
    unfold C
    simp [show (442368 * k + 10366) % 2 = 0 by omega]
    omega
  have h7 : C (221184 * k + 5183) = 663552 * k + 15550 := by
    unfold C
    simp [show (221184 * k + 5183) % 2 ≠ 0 by omega]
    omega
  have h8 : C (663552 * k + 15550) = 331776 * k + 7775 := by
    unfold C
    simp [show (663552 * k + 15550) % 2 = 0 by omega]
    omega
  have h9 : C (331776 * k + 7775) = 995328 * k + 23326 := by
    unfold C
    simp [show (331776 * k + 7775) % 2 ≠ 0 by omega]
    omega
  have h10 : C (995328 * k + 23326) = 497664 * k + 11663 := by
    unfold C
    simp [show (995328 * k + 23326) % 2 = 0 by omega]
    omega
  have h11 : C (497664 * k + 11663) = 1492992 * k + 34990 := by
    unfold C
    simp [show (497664 * k + 11663) % 2 ≠ 0 by omega]
    omega
  have h12 : C (1492992 * k + 34990) = 746496 * k + 17495 := by
    unfold C
    simp [show (1492992 * k + 34990) % 2 = 0 by omega]
    omega
  have h13 : C (746496 * k + 17495) = 2239488 * k + 52486 := by
    unfold C
    simp [show (746496 * k + 17495) % 2 ≠ 0 by omega]
    omega
  have h14 : C (2239488 * k + 52486) = 1119744 * k + 26243 := by
    unfold C
    simp [show (2239488 * k + 52486) % 2 = 0 by omega]
    omega
  have h15 : C (1119744 * k + 26243) = 3359232 * k + 78730 := by
    unfold C
    simp [show (1119744 * k + 26243) % 2 ≠ 0 by omega]
    omega
  have h16 : C (3359232 * k + 78730) = 1679616 * k + 39365 := by
    unfold C
    simp [show (3359232 * k + 78730) % 2 = 0 by omega]
    omega
  have h17 : C (1679616 * k + 39365) = 5038848 * k + 118096 := by
    unfold C
    simp [show (1679616 * k + 39365) % 2 ≠ 0 by omega]
    omega
  have h18 : C (5038848 * k + 118096) = 2519424 * k + 59048 := by
    unfold C
    simp [show (5038848 * k + 118096) % 2 = 0 by omega]
    omega
  have h19 : C (2519424 * k + 59048) = 1259712 * k + 29524 := by
    unfold C
    simp [show (2519424 * k + 59048) % 2 = 0 by omega]
    omega
  have h20 : C (1259712 * k + 29524) = 629856 * k + 14762 := by
    unfold C
    simp [show (1259712 * k + 29524) % 2 = 0 by omega]
    omega
  have h21 : C (629856 * k + 14762) = 314928 * k + 7381 := by
    unfold C
    simp [show (629856 * k + 14762) % 2 = 0 by omega]
    omega
  have h22 : C (314928 * k + 7381) = 944784 * k + 22144 := by
    unfold C
    simp [show (314928 * k + 7381) % 2 ≠ 0 by omega]
    omega
  have h23 : C (944784 * k + 22144) = 472392 * k + 11072 := by
    unfold C
    simp [show (944784 * k + 22144) % 2 = 0 by omega]
    omega
  have h24 : C (472392 * k + 11072) = 236196 * k + 5536 := by
    unfold C
    simp [show (472392 * k + 11072) % 2 = 0 by omega]
    omega
  have h25 : C (236196 * k + 5536) = 118098 * k + 2768 := by
    unfold C
    simp [show (236196 * k + 5536) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 2768) = 59049 * k + 1384 := by
    unfold C
    simp [show (118098 * k + 2768) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 1535) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 1535)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_1627 : ∀ k : Nat,
    iterate (65536 * k + 1627) 26 = 59049 * k + 1468 ∧
      59049 * k + 1468 < 65536 * k + 1627 := by
  intro k
  have h1 : C (65536 * k + 1627) = 196608 * k + 4882 := by
    unfold C
    simp [show (65536 * k + 1627) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 4882) = 98304 * k + 2441 := by
    unfold C
    simp [show (196608 * k + 4882) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 2441) = 294912 * k + 7324 := by
    unfold C
    simp [show (98304 * k + 2441) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 7324) = 147456 * k + 3662 := by
    unfold C
    simp [show (294912 * k + 7324) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 3662) = 73728 * k + 1831 := by
    unfold C
    simp [show (147456 * k + 3662) % 2 = 0 by omega]
    omega
  have h6 : C (73728 * k + 1831) = 221184 * k + 5494 := by
    unfold C
    simp [show (73728 * k + 1831) % 2 ≠ 0 by omega]
    omega
  have h7 : C (221184 * k + 5494) = 110592 * k + 2747 := by
    unfold C
    simp [show (221184 * k + 5494) % 2 = 0 by omega]
    omega
  have h8 : C (110592 * k + 2747) = 331776 * k + 8242 := by
    unfold C
    simp [show (110592 * k + 2747) % 2 ≠ 0 by omega]
    omega
  have h9 : C (331776 * k + 8242) = 165888 * k + 4121 := by
    unfold C
    simp [show (331776 * k + 8242) % 2 = 0 by omega]
    omega
  have h10 : C (165888 * k + 4121) = 497664 * k + 12364 := by
    unfold C
    simp [show (165888 * k + 4121) % 2 ≠ 0 by omega]
    omega
  have h11 : C (497664 * k + 12364) = 248832 * k + 6182 := by
    unfold C
    simp [show (497664 * k + 12364) % 2 = 0 by omega]
    omega
  have h12 : C (248832 * k + 6182) = 124416 * k + 3091 := by
    unfold C
    simp [show (248832 * k + 6182) % 2 = 0 by omega]
    omega
  have h13 : C (124416 * k + 3091) = 373248 * k + 9274 := by
    unfold C
    simp [show (124416 * k + 3091) % 2 ≠ 0 by omega]
    omega
  have h14 : C (373248 * k + 9274) = 186624 * k + 4637 := by
    unfold C
    simp [show (373248 * k + 9274) % 2 = 0 by omega]
    omega
  have h15 : C (186624 * k + 4637) = 559872 * k + 13912 := by
    unfold C
    simp [show (186624 * k + 4637) % 2 ≠ 0 by omega]
    omega
  have h16 : C (559872 * k + 13912) = 279936 * k + 6956 := by
    unfold C
    simp [show (559872 * k + 13912) % 2 = 0 by omega]
    omega
  have h17 : C (279936 * k + 6956) = 139968 * k + 3478 := by
    unfold C
    simp [show (279936 * k + 6956) % 2 = 0 by omega]
    omega
  have h18 : C (139968 * k + 3478) = 69984 * k + 1739 := by
    unfold C
    simp [show (139968 * k + 3478) % 2 = 0 by omega]
    omega
  have h19 : C (69984 * k + 1739) = 209952 * k + 5218 := by
    unfold C
    simp [show (69984 * k + 1739) % 2 ≠ 0 by omega]
    omega
  have h20 : C (209952 * k + 5218) = 104976 * k + 2609 := by
    unfold C
    simp [show (209952 * k + 5218) % 2 = 0 by omega]
    omega
  have h21 : C (104976 * k + 2609) = 314928 * k + 7828 := by
    unfold C
    simp [show (104976 * k + 2609) % 2 ≠ 0 by omega]
    omega
  have h22 : C (314928 * k + 7828) = 157464 * k + 3914 := by
    unfold C
    simp [show (314928 * k + 7828) % 2 = 0 by omega]
    omega
  have h23 : C (157464 * k + 3914) = 78732 * k + 1957 := by
    unfold C
    simp [show (157464 * k + 3914) % 2 = 0 by omega]
    omega
  have h24 : C (78732 * k + 1957) = 236196 * k + 5872 := by
    unfold C
    simp [show (78732 * k + 1957) % 2 ≠ 0 by omega]
    omega
  have h25 : C (236196 * k + 5872) = 118098 * k + 2936 := by
    unfold C
    simp [show (236196 * k + 5872) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 2936) = 59049 * k + 1468 := by
    unfold C
    simp [show (118098 * k + 2936) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 1627) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 1627)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_2367 : ∀ k : Nat,
    iterate (65536 * k + 2367) 26 = 59049 * k + 2134 ∧
      59049 * k + 2134 < 65536 * k + 2367 := by
  intro k
  have h1 : C (65536 * k + 2367) = 196608 * k + 7102 := by
    unfold C
    simp [show (65536 * k + 2367) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 7102) = 98304 * k + 3551 := by
    unfold C
    simp [show (196608 * k + 7102) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 3551) = 294912 * k + 10654 := by
    unfold C
    simp [show (98304 * k + 3551) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 10654) = 147456 * k + 5327 := by
    unfold C
    simp [show (294912 * k + 10654) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 5327) = 442368 * k + 15982 := by
    unfold C
    simp [show (147456 * k + 5327) % 2 ≠ 0 by omega]
    omega
  have h6 : C (442368 * k + 15982) = 221184 * k + 7991 := by
    unfold C
    simp [show (442368 * k + 15982) % 2 = 0 by omega]
    omega
  have h7 : C (221184 * k + 7991) = 663552 * k + 23974 := by
    unfold C
    simp [show (221184 * k + 7991) % 2 ≠ 0 by omega]
    omega
  have h8 : C (663552 * k + 23974) = 331776 * k + 11987 := by
    unfold C
    simp [show (663552 * k + 23974) % 2 = 0 by omega]
    omega
  have h9 : C (331776 * k + 11987) = 995328 * k + 35962 := by
    unfold C
    simp [show (331776 * k + 11987) % 2 ≠ 0 by omega]
    omega
  have h10 : C (995328 * k + 35962) = 497664 * k + 17981 := by
    unfold C
    simp [show (995328 * k + 35962) % 2 = 0 by omega]
    omega
  have h11 : C (497664 * k + 17981) = 1492992 * k + 53944 := by
    unfold C
    simp [show (497664 * k + 17981) % 2 ≠ 0 by omega]
    omega
  have h12 : C (1492992 * k + 53944) = 746496 * k + 26972 := by
    unfold C
    simp [show (1492992 * k + 53944) % 2 = 0 by omega]
    omega
  have h13 : C (746496 * k + 26972) = 373248 * k + 13486 := by
    unfold C
    simp [show (746496 * k + 26972) % 2 = 0 by omega]
    omega
  have h14 : C (373248 * k + 13486) = 186624 * k + 6743 := by
    unfold C
    simp [show (373248 * k + 13486) % 2 = 0 by omega]
    omega
  have h15 : C (186624 * k + 6743) = 559872 * k + 20230 := by
    unfold C
    simp [show (186624 * k + 6743) % 2 ≠ 0 by omega]
    omega
  have h16 : C (559872 * k + 20230) = 279936 * k + 10115 := by
    unfold C
    simp [show (559872 * k + 20230) % 2 = 0 by omega]
    omega
  have h17 : C (279936 * k + 10115) = 839808 * k + 30346 := by
    unfold C
    simp [show (279936 * k + 10115) % 2 ≠ 0 by omega]
    omega
  have h18 : C (839808 * k + 30346) = 419904 * k + 15173 := by
    unfold C
    simp [show (839808 * k + 30346) % 2 = 0 by omega]
    omega
  have h19 : C (419904 * k + 15173) = 1259712 * k + 45520 := by
    unfold C
    simp [show (419904 * k + 15173) % 2 ≠ 0 by omega]
    omega
  have h20 : C (1259712 * k + 45520) = 629856 * k + 22760 := by
    unfold C
    simp [show (1259712 * k + 45520) % 2 = 0 by omega]
    omega
  have h21 : C (629856 * k + 22760) = 314928 * k + 11380 := by
    unfold C
    simp [show (629856 * k + 22760) % 2 = 0 by omega]
    omega
  have h22 : C (314928 * k + 11380) = 157464 * k + 5690 := by
    unfold C
    simp [show (314928 * k + 11380) % 2 = 0 by omega]
    omega
  have h23 : C (157464 * k + 5690) = 78732 * k + 2845 := by
    unfold C
    simp [show (157464 * k + 5690) % 2 = 0 by omega]
    omega
  have h24 : C (78732 * k + 2845) = 236196 * k + 8536 := by
    unfold C
    simp [show (78732 * k + 2845) % 2 ≠ 0 by omega]
    omega
  have h25 : C (236196 * k + 8536) = 118098 * k + 4268 := by
    unfold C
    simp [show (236196 * k + 8536) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 4268) = 59049 * k + 2134 := by
    unfold C
    simp [show (118098 * k + 4268) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 2367) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 2367)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_2407 : ∀ k : Nat,
    iterate (65536 * k + 2407) 26 = 59049 * k + 2170 ∧
      59049 * k + 2170 < 65536 * k + 2407 := by
  intro k
  have h1 : C (65536 * k + 2407) = 196608 * k + 7222 := by
    unfold C
    simp [show (65536 * k + 2407) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 7222) = 98304 * k + 3611 := by
    unfold C
    simp [show (196608 * k + 7222) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 3611) = 294912 * k + 10834 := by
    unfold C
    simp [show (98304 * k + 3611) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 10834) = 147456 * k + 5417 := by
    unfold C
    simp [show (294912 * k + 10834) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 5417) = 442368 * k + 16252 := by
    unfold C
    simp [show (147456 * k + 5417) % 2 ≠ 0 by omega]
    omega
  have h6 : C (442368 * k + 16252) = 221184 * k + 8126 := by
    unfold C
    simp [show (442368 * k + 16252) % 2 = 0 by omega]
    omega
  have h7 : C (221184 * k + 8126) = 110592 * k + 4063 := by
    unfold C
    simp [show (221184 * k + 8126) % 2 = 0 by omega]
    omega
  have h8 : C (110592 * k + 4063) = 331776 * k + 12190 := by
    unfold C
    simp [show (110592 * k + 4063) % 2 ≠ 0 by omega]
    omega
  have h9 : C (331776 * k + 12190) = 165888 * k + 6095 := by
    unfold C
    simp [show (331776 * k + 12190) % 2 = 0 by omega]
    omega
  have h10 : C (165888 * k + 6095) = 497664 * k + 18286 := by
    unfold C
    simp [show (165888 * k + 6095) % 2 ≠ 0 by omega]
    omega
  have h11 : C (497664 * k + 18286) = 248832 * k + 9143 := by
    unfold C
    simp [show (497664 * k + 18286) % 2 = 0 by omega]
    omega
  have h12 : C (248832 * k + 9143) = 746496 * k + 27430 := by
    unfold C
    simp [show (248832 * k + 9143) % 2 ≠ 0 by omega]
    omega
  have h13 : C (746496 * k + 27430) = 373248 * k + 13715 := by
    unfold C
    simp [show (746496 * k + 27430) % 2 = 0 by omega]
    omega
  have h14 : C (373248 * k + 13715) = 1119744 * k + 41146 := by
    unfold C
    simp [show (373248 * k + 13715) % 2 ≠ 0 by omega]
    omega
  have h15 : C (1119744 * k + 41146) = 559872 * k + 20573 := by
    unfold C
    simp [show (1119744 * k + 41146) % 2 = 0 by omega]
    omega
  have h16 : C (559872 * k + 20573) = 1679616 * k + 61720 := by
    unfold C
    simp [show (559872 * k + 20573) % 2 ≠ 0 by omega]
    omega
  have h17 : C (1679616 * k + 61720) = 839808 * k + 30860 := by
    unfold C
    simp [show (1679616 * k + 61720) % 2 = 0 by omega]
    omega
  have h18 : C (839808 * k + 30860) = 419904 * k + 15430 := by
    unfold C
    simp [show (839808 * k + 30860) % 2 = 0 by omega]
    omega
  have h19 : C (419904 * k + 15430) = 209952 * k + 7715 := by
    unfold C
    simp [show (419904 * k + 15430) % 2 = 0 by omega]
    omega
  have h20 : C (209952 * k + 7715) = 629856 * k + 23146 := by
    unfold C
    simp [show (209952 * k + 7715) % 2 ≠ 0 by omega]
    omega
  have h21 : C (629856 * k + 23146) = 314928 * k + 11573 := by
    unfold C
    simp [show (629856 * k + 23146) % 2 = 0 by omega]
    omega
  have h22 : C (314928 * k + 11573) = 944784 * k + 34720 := by
    unfold C
    simp [show (314928 * k + 11573) % 2 ≠ 0 by omega]
    omega
  have h23 : C (944784 * k + 34720) = 472392 * k + 17360 := by
    unfold C
    simp [show (944784 * k + 34720) % 2 = 0 by omega]
    omega
  have h24 : C (472392 * k + 17360) = 236196 * k + 8680 := by
    unfold C
    simp [show (472392 * k + 17360) % 2 = 0 by omega]
    omega
  have h25 : C (236196 * k + 8680) = 118098 * k + 4340 := by
    unfold C
    simp [show (236196 * k + 8680) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 4340) = 59049 * k + 2170 := by
    unfold C
    simp [show (118098 * k + 4340) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 2407) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 2407)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_2495 : ∀ k : Nat,
    iterate (65536 * k + 2495) 26 = 59049 * k + 2249 ∧
      59049 * k + 2249 < 65536 * k + 2495 := by
  intro k
  have h1 : C (65536 * k + 2495) = 196608 * k + 7486 := by
    unfold C
    simp [show (65536 * k + 2495) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 7486) = 98304 * k + 3743 := by
    unfold C
    simp [show (196608 * k + 7486) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 3743) = 294912 * k + 11230 := by
    unfold C
    simp [show (98304 * k + 3743) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 11230) = 147456 * k + 5615 := by
    unfold C
    simp [show (294912 * k + 11230) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 5615) = 442368 * k + 16846 := by
    unfold C
    simp [show (147456 * k + 5615) % 2 ≠ 0 by omega]
    omega
  have h6 : C (442368 * k + 16846) = 221184 * k + 8423 := by
    unfold C
    simp [show (442368 * k + 16846) % 2 = 0 by omega]
    omega
  have h7 : C (221184 * k + 8423) = 663552 * k + 25270 := by
    unfold C
    simp [show (221184 * k + 8423) % 2 ≠ 0 by omega]
    omega
  have h8 : C (663552 * k + 25270) = 331776 * k + 12635 := by
    unfold C
    simp [show (663552 * k + 25270) % 2 = 0 by omega]
    omega
  have h9 : C (331776 * k + 12635) = 995328 * k + 37906 := by
    unfold C
    simp [show (331776 * k + 12635) % 2 ≠ 0 by omega]
    omega
  have h10 : C (995328 * k + 37906) = 497664 * k + 18953 := by
    unfold C
    simp [show (995328 * k + 37906) % 2 = 0 by omega]
    omega
  have h11 : C (497664 * k + 18953) = 1492992 * k + 56860 := by
    unfold C
    simp [show (497664 * k + 18953) % 2 ≠ 0 by omega]
    omega
  have h12 : C (1492992 * k + 56860) = 746496 * k + 28430 := by
    unfold C
    simp [show (1492992 * k + 56860) % 2 = 0 by omega]
    omega
  have h13 : C (746496 * k + 28430) = 373248 * k + 14215 := by
    unfold C
    simp [show (746496 * k + 28430) % 2 = 0 by omega]
    omega
  have h14 : C (373248 * k + 14215) = 1119744 * k + 42646 := by
    unfold C
    simp [show (373248 * k + 14215) % 2 ≠ 0 by omega]
    omega
  have h15 : C (1119744 * k + 42646) = 559872 * k + 21323 := by
    unfold C
    simp [show (1119744 * k + 42646) % 2 = 0 by omega]
    omega
  have h16 : C (559872 * k + 21323) = 1679616 * k + 63970 := by
    unfold C
    simp [show (559872 * k + 21323) % 2 ≠ 0 by omega]
    omega
  have h17 : C (1679616 * k + 63970) = 839808 * k + 31985 := by
    unfold C
    simp [show (1679616 * k + 63970) % 2 = 0 by omega]
    omega
  have h18 : C (839808 * k + 31985) = 2519424 * k + 95956 := by
    unfold C
    simp [show (839808 * k + 31985) % 2 ≠ 0 by omega]
    omega
  have h19 : C (2519424 * k + 95956) = 1259712 * k + 47978 := by
    unfold C
    simp [show (2519424 * k + 95956) % 2 = 0 by omega]
    omega
  have h20 : C (1259712 * k + 47978) = 629856 * k + 23989 := by
    unfold C
    simp [show (1259712 * k + 47978) % 2 = 0 by omega]
    omega
  have h21 : C (629856 * k + 23989) = 1889568 * k + 71968 := by
    unfold C
    simp [show (629856 * k + 23989) % 2 ≠ 0 by omega]
    omega
  have h22 : C (1889568 * k + 71968) = 944784 * k + 35984 := by
    unfold C
    simp [show (1889568 * k + 71968) % 2 = 0 by omega]
    omega
  have h23 : C (944784 * k + 35984) = 472392 * k + 17992 := by
    unfold C
    simp [show (944784 * k + 35984) % 2 = 0 by omega]
    omega
  have h24 : C (472392 * k + 17992) = 236196 * k + 8996 := by
    unfold C
    simp [show (472392 * k + 17992) % 2 = 0 by omega]
    omega
  have h25 : C (236196 * k + 8996) = 118098 * k + 4498 := by
    unfold C
    simp [show (236196 * k + 8996) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 4498) = 59049 * k + 2249 := by
    unfold C
    simp [show (118098 * k + 4498) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 2495) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 2495)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_2671 : ∀ k : Nat,
    iterate (65536 * k + 2671) 26 = 59049 * k + 2408 ∧
      59049 * k + 2408 < 65536 * k + 2671 := by
  intro k
  have h1 : C (65536 * k + 2671) = 196608 * k + 8014 := by
    unfold C
    simp [show (65536 * k + 2671) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 8014) = 98304 * k + 4007 := by
    unfold C
    simp [show (196608 * k + 8014) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 4007) = 294912 * k + 12022 := by
    unfold C
    simp [show (98304 * k + 4007) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 12022) = 147456 * k + 6011 := by
    unfold C
    simp [show (294912 * k + 12022) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 6011) = 442368 * k + 18034 := by
    unfold C
    simp [show (147456 * k + 6011) % 2 ≠ 0 by omega]
    omega
  have h6 : C (442368 * k + 18034) = 221184 * k + 9017 := by
    unfold C
    simp [show (442368 * k + 18034) % 2 = 0 by omega]
    omega
  have h7 : C (221184 * k + 9017) = 663552 * k + 27052 := by
    unfold C
    simp [show (221184 * k + 9017) % 2 ≠ 0 by omega]
    omega
  have h8 : C (663552 * k + 27052) = 331776 * k + 13526 := by
    unfold C
    simp [show (663552 * k + 27052) % 2 = 0 by omega]
    omega
  have h9 : C (331776 * k + 13526) = 165888 * k + 6763 := by
    unfold C
    simp [show (331776 * k + 13526) % 2 = 0 by omega]
    omega
  have h10 : C (165888 * k + 6763) = 497664 * k + 20290 := by
    unfold C
    simp [show (165888 * k + 6763) % 2 ≠ 0 by omega]
    omega
  have h11 : C (497664 * k + 20290) = 248832 * k + 10145 := by
    unfold C
    simp [show (497664 * k + 20290) % 2 = 0 by omega]
    omega
  have h12 : C (248832 * k + 10145) = 746496 * k + 30436 := by
    unfold C
    simp [show (248832 * k + 10145) % 2 ≠ 0 by omega]
    omega
  have h13 : C (746496 * k + 30436) = 373248 * k + 15218 := by
    unfold C
    simp [show (746496 * k + 30436) % 2 = 0 by omega]
    omega
  have h14 : C (373248 * k + 15218) = 186624 * k + 7609 := by
    unfold C
    simp [show (373248 * k + 15218) % 2 = 0 by omega]
    omega
  have h15 : C (186624 * k + 7609) = 559872 * k + 22828 := by
    unfold C
    simp [show (186624 * k + 7609) % 2 ≠ 0 by omega]
    omega
  have h16 : C (559872 * k + 22828) = 279936 * k + 11414 := by
    unfold C
    simp [show (559872 * k + 22828) % 2 = 0 by omega]
    omega
  have h17 : C (279936 * k + 11414) = 139968 * k + 5707 := by
    unfold C
    simp [show (279936 * k + 11414) % 2 = 0 by omega]
    omega
  have h18 : C (139968 * k + 5707) = 419904 * k + 17122 := by
    unfold C
    simp [show (139968 * k + 5707) % 2 ≠ 0 by omega]
    omega
  have h19 : C (419904 * k + 17122) = 209952 * k + 8561 := by
    unfold C
    simp [show (419904 * k + 17122) % 2 = 0 by omega]
    omega
  have h20 : C (209952 * k + 8561) = 629856 * k + 25684 := by
    unfold C
    simp [show (209952 * k + 8561) % 2 ≠ 0 by omega]
    omega
  have h21 : C (629856 * k + 25684) = 314928 * k + 12842 := by
    unfold C
    simp [show (629856 * k + 25684) % 2 = 0 by omega]
    omega
  have h22 : C (314928 * k + 12842) = 157464 * k + 6421 := by
    unfold C
    simp [show (314928 * k + 12842) % 2 = 0 by omega]
    omega
  have h23 : C (157464 * k + 6421) = 472392 * k + 19264 := by
    unfold C
    simp [show (157464 * k + 6421) % 2 ≠ 0 by omega]
    omega
  have h24 : C (472392 * k + 19264) = 236196 * k + 9632 := by
    unfold C
    simp [show (472392 * k + 19264) % 2 = 0 by omega]
    omega
  have h25 : C (236196 * k + 9632) = 118098 * k + 4816 := by
    unfold C
    simp [show (236196 * k + 9632) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 4816) = 59049 * k + 2408 := by
    unfold C
    simp [show (118098 * k + 4816) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 2671) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 2671)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_2687 : ∀ k : Nat,
    iterate (65536 * k + 2687) 26 = 59049 * k + 2422 ∧
      59049 * k + 2422 < 65536 * k + 2687 := by
  intro k
  have h1 : C (65536 * k + 2687) = 196608 * k + 8062 := by
    unfold C
    simp [show (65536 * k + 2687) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 8062) = 98304 * k + 4031 := by
    unfold C
    simp [show (196608 * k + 8062) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 4031) = 294912 * k + 12094 := by
    unfold C
    simp [show (98304 * k + 4031) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 12094) = 147456 * k + 6047 := by
    unfold C
    simp [show (294912 * k + 12094) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 6047) = 442368 * k + 18142 := by
    unfold C
    simp [show (147456 * k + 6047) % 2 ≠ 0 by omega]
    omega
  have h6 : C (442368 * k + 18142) = 221184 * k + 9071 := by
    unfold C
    simp [show (442368 * k + 18142) % 2 = 0 by omega]
    omega
  have h7 : C (221184 * k + 9071) = 663552 * k + 27214 := by
    unfold C
    simp [show (221184 * k + 9071) % 2 ≠ 0 by omega]
    omega
  have h8 : C (663552 * k + 27214) = 331776 * k + 13607 := by
    unfold C
    simp [show (663552 * k + 27214) % 2 = 0 by omega]
    omega
  have h9 : C (331776 * k + 13607) = 995328 * k + 40822 := by
    unfold C
    simp [show (331776 * k + 13607) % 2 ≠ 0 by omega]
    omega
  have h10 : C (995328 * k + 40822) = 497664 * k + 20411 := by
    unfold C
    simp [show (995328 * k + 40822) % 2 = 0 by omega]
    omega
  have h11 : C (497664 * k + 20411) = 1492992 * k + 61234 := by
    unfold C
    simp [show (497664 * k + 20411) % 2 ≠ 0 by omega]
    omega
  have h12 : C (1492992 * k + 61234) = 746496 * k + 30617 := by
    unfold C
    simp [show (1492992 * k + 61234) % 2 = 0 by omega]
    omega
  have h13 : C (746496 * k + 30617) = 2239488 * k + 91852 := by
    unfold C
    simp [show (746496 * k + 30617) % 2 ≠ 0 by omega]
    omega
  have h14 : C (2239488 * k + 91852) = 1119744 * k + 45926 := by
    unfold C
    simp [show (2239488 * k + 91852) % 2 = 0 by omega]
    omega
  have h15 : C (1119744 * k + 45926) = 559872 * k + 22963 := by
    unfold C
    simp [show (1119744 * k + 45926) % 2 = 0 by omega]
    omega
  have h16 : C (559872 * k + 22963) = 1679616 * k + 68890 := by
    unfold C
    simp [show (559872 * k + 22963) % 2 ≠ 0 by omega]
    omega
  have h17 : C (1679616 * k + 68890) = 839808 * k + 34445 := by
    unfold C
    simp [show (1679616 * k + 68890) % 2 = 0 by omega]
    omega
  have h18 : C (839808 * k + 34445) = 2519424 * k + 103336 := by
    unfold C
    simp [show (839808 * k + 34445) % 2 ≠ 0 by omega]
    omega
  have h19 : C (2519424 * k + 103336) = 1259712 * k + 51668 := by
    unfold C
    simp [show (2519424 * k + 103336) % 2 = 0 by omega]
    omega
  have h20 : C (1259712 * k + 51668) = 629856 * k + 25834 := by
    unfold C
    simp [show (1259712 * k + 51668) % 2 = 0 by omega]
    omega
  have h21 : C (629856 * k + 25834) = 314928 * k + 12917 := by
    unfold C
    simp [show (629856 * k + 25834) % 2 = 0 by omega]
    omega
  have h22 : C (314928 * k + 12917) = 944784 * k + 38752 := by
    unfold C
    simp [show (314928 * k + 12917) % 2 ≠ 0 by omega]
    omega
  have h23 : C (944784 * k + 38752) = 472392 * k + 19376 := by
    unfold C
    simp [show (944784 * k + 38752) % 2 = 0 by omega]
    omega
  have h24 : C (472392 * k + 19376) = 236196 * k + 9688 := by
    unfold C
    simp [show (472392 * k + 19376) % 2 = 0 by omega]
    omega
  have h25 : C (236196 * k + 9688) = 118098 * k + 4844 := by
    unfold C
    simp [show (236196 * k + 9688) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 4844) = 59049 * k + 2422 := by
    unfold C
    simp [show (118098 * k + 4844) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 2687) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 2687)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_2791 : ∀ k : Nat,
    iterate (65536 * k + 2791) 26 = 59049 * k + 2516 ∧
      59049 * k + 2516 < 65536 * k + 2791 := by
  intro k
  have h1 : C (65536 * k + 2791) = 196608 * k + 8374 := by
    unfold C
    simp [show (65536 * k + 2791) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 8374) = 98304 * k + 4187 := by
    unfold C
    simp [show (196608 * k + 8374) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 4187) = 294912 * k + 12562 := by
    unfold C
    simp [show (98304 * k + 4187) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 12562) = 147456 * k + 6281 := by
    unfold C
    simp [show (294912 * k + 12562) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 6281) = 442368 * k + 18844 := by
    unfold C
    simp [show (147456 * k + 6281) % 2 ≠ 0 by omega]
    omega
  have h6 : C (442368 * k + 18844) = 221184 * k + 9422 := by
    unfold C
    simp [show (442368 * k + 18844) % 2 = 0 by omega]
    omega
  have h7 : C (221184 * k + 9422) = 110592 * k + 4711 := by
    unfold C
    simp [show (221184 * k + 9422) % 2 = 0 by omega]
    omega
  have h8 : C (110592 * k + 4711) = 331776 * k + 14134 := by
    unfold C
    simp [show (110592 * k + 4711) % 2 ≠ 0 by omega]
    omega
  have h9 : C (331776 * k + 14134) = 165888 * k + 7067 := by
    unfold C
    simp [show (331776 * k + 14134) % 2 = 0 by omega]
    omega
  have h10 : C (165888 * k + 7067) = 497664 * k + 21202 := by
    unfold C
    simp [show (165888 * k + 7067) % 2 ≠ 0 by omega]
    omega
  have h11 : C (497664 * k + 21202) = 248832 * k + 10601 := by
    unfold C
    simp [show (497664 * k + 21202) % 2 = 0 by omega]
    omega
  have h12 : C (248832 * k + 10601) = 746496 * k + 31804 := by
    unfold C
    simp [show (248832 * k + 10601) % 2 ≠ 0 by omega]
    omega
  have h13 : C (746496 * k + 31804) = 373248 * k + 15902 := by
    unfold C
    simp [show (746496 * k + 31804) % 2 = 0 by omega]
    omega
  have h14 : C (373248 * k + 15902) = 186624 * k + 7951 := by
    unfold C
    simp [show (373248 * k + 15902) % 2 = 0 by omega]
    omega
  have h15 : C (186624 * k + 7951) = 559872 * k + 23854 := by
    unfold C
    simp [show (186624 * k + 7951) % 2 ≠ 0 by omega]
    omega
  have h16 : C (559872 * k + 23854) = 279936 * k + 11927 := by
    unfold C
    simp [show (559872 * k + 23854) % 2 = 0 by omega]
    omega
  have h17 : C (279936 * k + 11927) = 839808 * k + 35782 := by
    unfold C
    simp [show (279936 * k + 11927) % 2 ≠ 0 by omega]
    omega
  have h18 : C (839808 * k + 35782) = 419904 * k + 17891 := by
    unfold C
    simp [show (839808 * k + 35782) % 2 = 0 by omega]
    omega
  have h19 : C (419904 * k + 17891) = 1259712 * k + 53674 := by
    unfold C
    simp [show (419904 * k + 17891) % 2 ≠ 0 by omega]
    omega
  have h20 : C (1259712 * k + 53674) = 629856 * k + 26837 := by
    unfold C
    simp [show (1259712 * k + 53674) % 2 = 0 by omega]
    omega
  have h21 : C (629856 * k + 26837) = 1889568 * k + 80512 := by
    unfold C
    simp [show (629856 * k + 26837) % 2 ≠ 0 by omega]
    omega
  have h22 : C (1889568 * k + 80512) = 944784 * k + 40256 := by
    unfold C
    simp [show (1889568 * k + 80512) % 2 = 0 by omega]
    omega
  have h23 : C (944784 * k + 40256) = 472392 * k + 20128 := by
    unfold C
    simp [show (944784 * k + 40256) % 2 = 0 by omega]
    omega
  have h24 : C (472392 * k + 20128) = 236196 * k + 10064 := by
    unfold C
    simp [show (472392 * k + 20128) % 2 = 0 by omega]
    omega
  have h25 : C (236196 * k + 10064) = 118098 * k + 5032 := by
    unfold C
    simp [show (236196 * k + 10064) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 5032) = 59049 * k + 2516 := by
    unfold C
    simp [show (118098 * k + 5032) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 2791) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 2791)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_2887 : ∀ k : Nat,
    iterate (65536 * k + 2887) 26 = 59049 * k + 2603 ∧
      59049 * k + 2603 < 65536 * k + 2887 := by
  intro k
  have h1 : C (65536 * k + 2887) = 196608 * k + 8662 := by
    unfold C
    simp [show (65536 * k + 2887) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 8662) = 98304 * k + 4331 := by
    unfold C
    simp [show (196608 * k + 8662) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 4331) = 294912 * k + 12994 := by
    unfold C
    simp [show (98304 * k + 4331) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 12994) = 147456 * k + 6497 := by
    unfold C
    simp [show (294912 * k + 12994) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 6497) = 442368 * k + 19492 := by
    unfold C
    simp [show (147456 * k + 6497) % 2 ≠ 0 by omega]
    omega
  have h6 : C (442368 * k + 19492) = 221184 * k + 9746 := by
    unfold C
    simp [show (442368 * k + 19492) % 2 = 0 by omega]
    omega
  have h7 : C (221184 * k + 9746) = 110592 * k + 4873 := by
    unfold C
    simp [show (221184 * k + 9746) % 2 = 0 by omega]
    omega
  have h8 : C (110592 * k + 4873) = 331776 * k + 14620 := by
    unfold C
    simp [show (110592 * k + 4873) % 2 ≠ 0 by omega]
    omega
  have h9 : C (331776 * k + 14620) = 165888 * k + 7310 := by
    unfold C
    simp [show (331776 * k + 14620) % 2 = 0 by omega]
    omega
  have h10 : C (165888 * k + 7310) = 82944 * k + 3655 := by
    unfold C
    simp [show (165888 * k + 7310) % 2 = 0 by omega]
    omega
  have h11 : C (82944 * k + 3655) = 248832 * k + 10966 := by
    unfold C
    simp [show (82944 * k + 3655) % 2 ≠ 0 by omega]
    omega
  have h12 : C (248832 * k + 10966) = 124416 * k + 5483 := by
    unfold C
    simp [show (248832 * k + 10966) % 2 = 0 by omega]
    omega
  have h13 : C (124416 * k + 5483) = 373248 * k + 16450 := by
    unfold C
    simp [show (124416 * k + 5483) % 2 ≠ 0 by omega]
    omega
  have h14 : C (373248 * k + 16450) = 186624 * k + 8225 := by
    unfold C
    simp [show (373248 * k + 16450) % 2 = 0 by omega]
    omega
  have h15 : C (186624 * k + 8225) = 559872 * k + 24676 := by
    unfold C
    simp [show (186624 * k + 8225) % 2 ≠ 0 by omega]
    omega
  have h16 : C (559872 * k + 24676) = 279936 * k + 12338 := by
    unfold C
    simp [show (559872 * k + 24676) % 2 = 0 by omega]
    omega
  have h17 : C (279936 * k + 12338) = 139968 * k + 6169 := by
    unfold C
    simp [show (279936 * k + 12338) % 2 = 0 by omega]
    omega
  have h18 : C (139968 * k + 6169) = 419904 * k + 18508 := by
    unfold C
    simp [show (139968 * k + 6169) % 2 ≠ 0 by omega]
    omega
  have h19 : C (419904 * k + 18508) = 209952 * k + 9254 := by
    unfold C
    simp [show (419904 * k + 18508) % 2 = 0 by omega]
    omega
  have h20 : C (209952 * k + 9254) = 104976 * k + 4627 := by
    unfold C
    simp [show (209952 * k + 9254) % 2 = 0 by omega]
    omega
  have h21 : C (104976 * k + 4627) = 314928 * k + 13882 := by
    unfold C
    simp [show (104976 * k + 4627) % 2 ≠ 0 by omega]
    omega
  have h22 : C (314928 * k + 13882) = 157464 * k + 6941 := by
    unfold C
    simp [show (314928 * k + 13882) % 2 = 0 by omega]
    omega
  have h23 : C (157464 * k + 6941) = 472392 * k + 20824 := by
    unfold C
    simp [show (157464 * k + 6941) % 2 ≠ 0 by omega]
    omega
  have h24 : C (472392 * k + 20824) = 236196 * k + 10412 := by
    unfold C
    simp [show (472392 * k + 20824) % 2 = 0 by omega]
    omega
  have h25 : C (236196 * k + 10412) = 118098 * k + 5206 := by
    unfold C
    simp [show (236196 * k + 10412) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 5206) = 59049 * k + 2603 := by
    unfold C
    simp [show (118098 * k + 5206) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 2887) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 2887)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_2927 : ∀ k : Nat,
    iterate (65536 * k + 2927) 26 = 59049 * k + 2639 ∧
      59049 * k + 2639 < 65536 * k + 2927 := by
  intro k
  have h1 : C (65536 * k + 2927) = 196608 * k + 8782 := by
    unfold C
    simp [show (65536 * k + 2927) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 8782) = 98304 * k + 4391 := by
    unfold C
    simp [show (196608 * k + 8782) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 4391) = 294912 * k + 13174 := by
    unfold C
    simp [show (98304 * k + 4391) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 13174) = 147456 * k + 6587 := by
    unfold C
    simp [show (294912 * k + 13174) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 6587) = 442368 * k + 19762 := by
    unfold C
    simp [show (147456 * k + 6587) % 2 ≠ 0 by omega]
    omega
  have h6 : C (442368 * k + 19762) = 221184 * k + 9881 := by
    unfold C
    simp [show (442368 * k + 19762) % 2 = 0 by omega]
    omega
  have h7 : C (221184 * k + 9881) = 663552 * k + 29644 := by
    unfold C
    simp [show (221184 * k + 9881) % 2 ≠ 0 by omega]
    omega
  have h8 : C (663552 * k + 29644) = 331776 * k + 14822 := by
    unfold C
    simp [show (663552 * k + 29644) % 2 = 0 by omega]
    omega
  have h9 : C (331776 * k + 14822) = 165888 * k + 7411 := by
    unfold C
    simp [show (331776 * k + 14822) % 2 = 0 by omega]
    omega
  have h10 : C (165888 * k + 7411) = 497664 * k + 22234 := by
    unfold C
    simp [show (165888 * k + 7411) % 2 ≠ 0 by omega]
    omega
  have h11 : C (497664 * k + 22234) = 248832 * k + 11117 := by
    unfold C
    simp [show (497664 * k + 22234) % 2 = 0 by omega]
    omega
  have h12 : C (248832 * k + 11117) = 746496 * k + 33352 := by
    unfold C
    simp [show (248832 * k + 11117) % 2 ≠ 0 by omega]
    omega
  have h13 : C (746496 * k + 33352) = 373248 * k + 16676 := by
    unfold C
    simp [show (746496 * k + 33352) % 2 = 0 by omega]
    omega
  have h14 : C (373248 * k + 16676) = 186624 * k + 8338 := by
    unfold C
    simp [show (373248 * k + 16676) % 2 = 0 by omega]
    omega
  have h15 : C (186624 * k + 8338) = 93312 * k + 4169 := by
    unfold C
    simp [show (186624 * k + 8338) % 2 = 0 by omega]
    omega
  have h16 : C (93312 * k + 4169) = 279936 * k + 12508 := by
    unfold C
    simp [show (93312 * k + 4169) % 2 ≠ 0 by omega]
    omega
  have h17 : C (279936 * k + 12508) = 139968 * k + 6254 := by
    unfold C
    simp [show (279936 * k + 12508) % 2 = 0 by omega]
    omega
  have h18 : C (139968 * k + 6254) = 69984 * k + 3127 := by
    unfold C
    simp [show (139968 * k + 6254) % 2 = 0 by omega]
    omega
  have h19 : C (69984 * k + 3127) = 209952 * k + 9382 := by
    unfold C
    simp [show (69984 * k + 3127) % 2 ≠ 0 by omega]
    omega
  have h20 : C (209952 * k + 9382) = 104976 * k + 4691 := by
    unfold C
    simp [show (209952 * k + 9382) % 2 = 0 by omega]
    omega
  have h21 : C (104976 * k + 4691) = 314928 * k + 14074 := by
    unfold C
    simp [show (104976 * k + 4691) % 2 ≠ 0 by omega]
    omega
  have h22 : C (314928 * k + 14074) = 157464 * k + 7037 := by
    unfold C
    simp [show (314928 * k + 14074) % 2 = 0 by omega]
    omega
  have h23 : C (157464 * k + 7037) = 472392 * k + 21112 := by
    unfold C
    simp [show (157464 * k + 7037) % 2 ≠ 0 by omega]
    omega
  have h24 : C (472392 * k + 21112) = 236196 * k + 10556 := by
    unfold C
    simp [show (472392 * k + 21112) % 2 = 0 by omega]
    omega
  have h25 : C (236196 * k + 10556) = 118098 * k + 5278 := by
    unfold C
    simp [show (236196 * k + 10556) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 5278) = 59049 * k + 2639 := by
    unfold C
    simp [show (118098 * k + 5278) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 2927) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 2927)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

end CollatzM16ShardA
