import Mathlib.Data.Nat.Prime.Basic

namespace CollatzM16ShardS

def C (n : Nat) : Nat := if n % 2 = 0 then n / 2 else 3 * n + 1

def iterate (n t : Nat) : Nat := Nat.rec n (fun _ previous => C previous) t

theorem descent_mod65536_50267 : ∀ k : Nat,
    iterate (65536 * k + 50267) 26 = 59049 * k + 45293 ∧
      59049 * k + 45293 < 65536 * k + 50267 := by
  intro k
  have h1 : C (65536 * k + 50267) = 196608 * k + 150802 := by
    unfold C
    simp [show (65536 * k + 50267) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 150802) = 98304 * k + 75401 := by
    unfold C
    simp [show (196608 * k + 150802) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 75401) = 294912 * k + 226204 := by
    unfold C
    simp [show (98304 * k + 75401) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 226204) = 147456 * k + 113102 := by
    unfold C
    simp [show (294912 * k + 226204) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 113102) = 73728 * k + 56551 := by
    unfold C
    simp [show (147456 * k + 113102) % 2 = 0 by omega]
    omega
  have h6 : C (73728 * k + 56551) = 221184 * k + 169654 := by
    unfold C
    simp [show (73728 * k + 56551) % 2 ≠ 0 by omega]
    omega
  have h7 : C (221184 * k + 169654) = 110592 * k + 84827 := by
    unfold C
    simp [show (221184 * k + 169654) % 2 = 0 by omega]
    omega
  have h8 : C (110592 * k + 84827) = 331776 * k + 254482 := by
    unfold C
    simp [show (110592 * k + 84827) % 2 ≠ 0 by omega]
    omega
  have h9 : C (331776 * k + 254482) = 165888 * k + 127241 := by
    unfold C
    simp [show (331776 * k + 254482) % 2 = 0 by omega]
    omega
  have h10 : C (165888 * k + 127241) = 497664 * k + 381724 := by
    unfold C
    simp [show (165888 * k + 127241) % 2 ≠ 0 by omega]
    omega
  have h11 : C (497664 * k + 381724) = 248832 * k + 190862 := by
    unfold C
    simp [show (497664 * k + 381724) % 2 = 0 by omega]
    omega
  have h12 : C (248832 * k + 190862) = 124416 * k + 95431 := by
    unfold C
    simp [show (248832 * k + 190862) % 2 = 0 by omega]
    omega
  have h13 : C (124416 * k + 95431) = 373248 * k + 286294 := by
    unfold C
    simp [show (124416 * k + 95431) % 2 ≠ 0 by omega]
    omega
  have h14 : C (373248 * k + 286294) = 186624 * k + 143147 := by
    unfold C
    simp [show (373248 * k + 286294) % 2 = 0 by omega]
    omega
  have h15 : C (186624 * k + 143147) = 559872 * k + 429442 := by
    unfold C
    simp [show (186624 * k + 143147) % 2 ≠ 0 by omega]
    omega
  have h16 : C (559872 * k + 429442) = 279936 * k + 214721 := by
    unfold C
    simp [show (559872 * k + 429442) % 2 = 0 by omega]
    omega
  have h17 : C (279936 * k + 214721) = 839808 * k + 644164 := by
    unfold C
    simp [show (279936 * k + 214721) % 2 ≠ 0 by omega]
    omega
  have h18 : C (839808 * k + 644164) = 419904 * k + 322082 := by
    unfold C
    simp [show (839808 * k + 644164) % 2 = 0 by omega]
    omega
  have h19 : C (419904 * k + 322082) = 209952 * k + 161041 := by
    unfold C
    simp [show (419904 * k + 322082) % 2 = 0 by omega]
    omega
  have h20 : C (209952 * k + 161041) = 629856 * k + 483124 := by
    unfold C
    simp [show (209952 * k + 161041) % 2 ≠ 0 by omega]
    omega
  have h21 : C (629856 * k + 483124) = 314928 * k + 241562 := by
    unfold C
    simp [show (629856 * k + 483124) % 2 = 0 by omega]
    omega
  have h22 : C (314928 * k + 241562) = 157464 * k + 120781 := by
    unfold C
    simp [show (314928 * k + 241562) % 2 = 0 by omega]
    omega
  have h23 : C (157464 * k + 120781) = 472392 * k + 362344 := by
    unfold C
    simp [show (157464 * k + 120781) % 2 ≠ 0 by omega]
    omega
  have h24 : C (472392 * k + 362344) = 236196 * k + 181172 := by
    unfold C
    simp [show (472392 * k + 362344) % 2 = 0 by omega]
    omega
  have h25 : C (236196 * k + 181172) = 118098 * k + 90586 := by
    unfold C
    simp [show (236196 * k + 181172) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 90586) = 59049 * k + 45293 := by
    unfold C
    simp [show (118098 * k + 90586) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 50267) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 50267)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_50303 : ∀ k : Nat,
    iterate (65536 * k + 50303) 26 = 59049 * k + 45325 ∧
      59049 * k + 45325 < 65536 * k + 50303 := by
  intro k
  have h1 : C (65536 * k + 50303) = 196608 * k + 150910 := by
    unfold C
    simp [show (65536 * k + 50303) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 150910) = 98304 * k + 75455 := by
    unfold C
    simp [show (196608 * k + 150910) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 75455) = 294912 * k + 226366 := by
    unfold C
    simp [show (98304 * k + 75455) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 226366) = 147456 * k + 113183 := by
    unfold C
    simp [show (294912 * k + 226366) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 113183) = 442368 * k + 339550 := by
    unfold C
    simp [show (147456 * k + 113183) % 2 ≠ 0 by omega]
    omega
  have h6 : C (442368 * k + 339550) = 221184 * k + 169775 := by
    unfold C
    simp [show (442368 * k + 339550) % 2 = 0 by omega]
    omega
  have h7 : C (221184 * k + 169775) = 663552 * k + 509326 := by
    unfold C
    simp [show (221184 * k + 169775) % 2 ≠ 0 by omega]
    omega
  have h8 : C (663552 * k + 509326) = 331776 * k + 254663 := by
    unfold C
    simp [show (663552 * k + 509326) % 2 = 0 by omega]
    omega
  have h9 : C (331776 * k + 254663) = 995328 * k + 763990 := by
    unfold C
    simp [show (331776 * k + 254663) % 2 ≠ 0 by omega]
    omega
  have h10 : C (995328 * k + 763990) = 497664 * k + 381995 := by
    unfold C
    simp [show (995328 * k + 763990) % 2 = 0 by omega]
    omega
  have h11 : C (497664 * k + 381995) = 1492992 * k + 1145986 := by
    unfold C
    simp [show (497664 * k + 381995) % 2 ≠ 0 by omega]
    omega
  have h12 : C (1492992 * k + 1145986) = 746496 * k + 572993 := by
    unfold C
    simp [show (1492992 * k + 1145986) % 2 = 0 by omega]
    omega
  have h13 : C (746496 * k + 572993) = 2239488 * k + 1718980 := by
    unfold C
    simp [show (746496 * k + 572993) % 2 ≠ 0 by omega]
    omega
  have h14 : C (2239488 * k + 1718980) = 1119744 * k + 859490 := by
    unfold C
    simp [show (2239488 * k + 1718980) % 2 = 0 by omega]
    omega
  have h15 : C (1119744 * k + 859490) = 559872 * k + 429745 := by
    unfold C
    simp [show (1119744 * k + 859490) % 2 = 0 by omega]
    omega
  have h16 : C (559872 * k + 429745) = 1679616 * k + 1289236 := by
    unfold C
    simp [show (559872 * k + 429745) % 2 ≠ 0 by omega]
    omega
  have h17 : C (1679616 * k + 1289236) = 839808 * k + 644618 := by
    unfold C
    simp [show (1679616 * k + 1289236) % 2 = 0 by omega]
    omega
  have h18 : C (839808 * k + 644618) = 419904 * k + 322309 := by
    unfold C
    simp [show (839808 * k + 644618) % 2 = 0 by omega]
    omega
  have h19 : C (419904 * k + 322309) = 1259712 * k + 966928 := by
    unfold C
    simp [show (419904 * k + 322309) % 2 ≠ 0 by omega]
    omega
  have h20 : C (1259712 * k + 966928) = 629856 * k + 483464 := by
    unfold C
    simp [show (1259712 * k + 966928) % 2 = 0 by omega]
    omega
  have h21 : C (629856 * k + 483464) = 314928 * k + 241732 := by
    unfold C
    simp [show (629856 * k + 483464) % 2 = 0 by omega]
    omega
  have h22 : C (314928 * k + 241732) = 157464 * k + 120866 := by
    unfold C
    simp [show (314928 * k + 241732) % 2 = 0 by omega]
    omega
  have h23 : C (157464 * k + 120866) = 78732 * k + 60433 := by
    unfold C
    simp [show (157464 * k + 120866) % 2 = 0 by omega]
    omega
  have h24 : C (78732 * k + 60433) = 236196 * k + 181300 := by
    unfold C
    simp [show (78732 * k + 60433) % 2 ≠ 0 by omega]
    omega
  have h25 : C (236196 * k + 181300) = 118098 * k + 90650 := by
    unfold C
    simp [show (236196 * k + 181300) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 90650) = 59049 * k + 45325 := by
    unfold C
    simp [show (118098 * k + 90650) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 50303) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 50303)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_50407 : ∀ k : Nat,
    iterate (65536 * k + 50407) 26 = 59049 * k + 45419 ∧
      59049 * k + 45419 < 65536 * k + 50407 := by
  intro k
  have h1 : C (65536 * k + 50407) = 196608 * k + 151222 := by
    unfold C
    simp [show (65536 * k + 50407) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 151222) = 98304 * k + 75611 := by
    unfold C
    simp [show (196608 * k + 151222) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 75611) = 294912 * k + 226834 := by
    unfold C
    simp [show (98304 * k + 75611) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 226834) = 147456 * k + 113417 := by
    unfold C
    simp [show (294912 * k + 226834) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 113417) = 442368 * k + 340252 := by
    unfold C
    simp [show (147456 * k + 113417) % 2 ≠ 0 by omega]
    omega
  have h6 : C (442368 * k + 340252) = 221184 * k + 170126 := by
    unfold C
    simp [show (442368 * k + 340252) % 2 = 0 by omega]
    omega
  have h7 : C (221184 * k + 170126) = 110592 * k + 85063 := by
    unfold C
    simp [show (221184 * k + 170126) % 2 = 0 by omega]
    omega
  have h8 : C (110592 * k + 85063) = 331776 * k + 255190 := by
    unfold C
    simp [show (110592 * k + 85063) % 2 ≠ 0 by omega]
    omega
  have h9 : C (331776 * k + 255190) = 165888 * k + 127595 := by
    unfold C
    simp [show (331776 * k + 255190) % 2 = 0 by omega]
    omega
  have h10 : C (165888 * k + 127595) = 497664 * k + 382786 := by
    unfold C
    simp [show (165888 * k + 127595) % 2 ≠ 0 by omega]
    omega
  have h11 : C (497664 * k + 382786) = 248832 * k + 191393 := by
    unfold C
    simp [show (497664 * k + 382786) % 2 = 0 by omega]
    omega
  have h12 : C (248832 * k + 191393) = 746496 * k + 574180 := by
    unfold C
    simp [show (248832 * k + 191393) % 2 ≠ 0 by omega]
    omega
  have h13 : C (746496 * k + 574180) = 373248 * k + 287090 := by
    unfold C
    simp [show (746496 * k + 574180) % 2 = 0 by omega]
    omega
  have h14 : C (373248 * k + 287090) = 186624 * k + 143545 := by
    unfold C
    simp [show (373248 * k + 287090) % 2 = 0 by omega]
    omega
  have h15 : C (186624 * k + 143545) = 559872 * k + 430636 := by
    unfold C
    simp [show (186624 * k + 143545) % 2 ≠ 0 by omega]
    omega
  have h16 : C (559872 * k + 430636) = 279936 * k + 215318 := by
    unfold C
    simp [show (559872 * k + 430636) % 2 = 0 by omega]
    omega
  have h17 : C (279936 * k + 215318) = 139968 * k + 107659 := by
    unfold C
    simp [show (279936 * k + 215318) % 2 = 0 by omega]
    omega
  have h18 : C (139968 * k + 107659) = 419904 * k + 322978 := by
    unfold C
    simp [show (139968 * k + 107659) % 2 ≠ 0 by omega]
    omega
  have h19 : C (419904 * k + 322978) = 209952 * k + 161489 := by
    unfold C
    simp [show (419904 * k + 322978) % 2 = 0 by omega]
    omega
  have h20 : C (209952 * k + 161489) = 629856 * k + 484468 := by
    unfold C
    simp [show (209952 * k + 161489) % 2 ≠ 0 by omega]
    omega
  have h21 : C (629856 * k + 484468) = 314928 * k + 242234 := by
    unfold C
    simp [show (629856 * k + 484468) % 2 = 0 by omega]
    omega
  have h22 : C (314928 * k + 242234) = 157464 * k + 121117 := by
    unfold C
    simp [show (314928 * k + 242234) % 2 = 0 by omega]
    omega
  have h23 : C (157464 * k + 121117) = 472392 * k + 363352 := by
    unfold C
    simp [show (157464 * k + 121117) % 2 ≠ 0 by omega]
    omega
  have h24 : C (472392 * k + 363352) = 236196 * k + 181676 := by
    unfold C
    simp [show (472392 * k + 363352) % 2 = 0 by omega]
    omega
  have h25 : C (236196 * k + 181676) = 118098 * k + 90838 := by
    unfold C
    simp [show (236196 * k + 181676) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 90838) = 59049 * k + 45419 := by
    unfold C
    simp [show (118098 * k + 90838) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 50407) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 50407)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_50663 : ∀ k : Nat,
    iterate (65536 * k + 50663) 26 = 59049 * k + 45650 ∧
      59049 * k + 45650 < 65536 * k + 50663 := by
  intro k
  have h1 : C (65536 * k + 50663) = 196608 * k + 151990 := by
    unfold C
    simp [show (65536 * k + 50663) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 151990) = 98304 * k + 75995 := by
    unfold C
    simp [show (196608 * k + 151990) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 75995) = 294912 * k + 227986 := by
    unfold C
    simp [show (98304 * k + 75995) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 227986) = 147456 * k + 113993 := by
    unfold C
    simp [show (294912 * k + 227986) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 113993) = 442368 * k + 341980 := by
    unfold C
    simp [show (147456 * k + 113993) % 2 ≠ 0 by omega]
    omega
  have h6 : C (442368 * k + 341980) = 221184 * k + 170990 := by
    unfold C
    simp [show (442368 * k + 341980) % 2 = 0 by omega]
    omega
  have h7 : C (221184 * k + 170990) = 110592 * k + 85495 := by
    unfold C
    simp [show (221184 * k + 170990) % 2 = 0 by omega]
    omega
  have h8 : C (110592 * k + 85495) = 331776 * k + 256486 := by
    unfold C
    simp [show (110592 * k + 85495) % 2 ≠ 0 by omega]
    omega
  have h9 : C (331776 * k + 256486) = 165888 * k + 128243 := by
    unfold C
    simp [show (331776 * k + 256486) % 2 = 0 by omega]
    omega
  have h10 : C (165888 * k + 128243) = 497664 * k + 384730 := by
    unfold C
    simp [show (165888 * k + 128243) % 2 ≠ 0 by omega]
    omega
  have h11 : C (497664 * k + 384730) = 248832 * k + 192365 := by
    unfold C
    simp [show (497664 * k + 384730) % 2 = 0 by omega]
    omega
  have h12 : C (248832 * k + 192365) = 746496 * k + 577096 := by
    unfold C
    simp [show (248832 * k + 192365) % 2 ≠ 0 by omega]
    omega
  have h13 : C (746496 * k + 577096) = 373248 * k + 288548 := by
    unfold C
    simp [show (746496 * k + 577096) % 2 = 0 by omega]
    omega
  have h14 : C (373248 * k + 288548) = 186624 * k + 144274 := by
    unfold C
    simp [show (373248 * k + 288548) % 2 = 0 by omega]
    omega
  have h15 : C (186624 * k + 144274) = 93312 * k + 72137 := by
    unfold C
    simp [show (186624 * k + 144274) % 2 = 0 by omega]
    omega
  have h16 : C (93312 * k + 72137) = 279936 * k + 216412 := by
    unfold C
    simp [show (93312 * k + 72137) % 2 ≠ 0 by omega]
    omega
  have h17 : C (279936 * k + 216412) = 139968 * k + 108206 := by
    unfold C
    simp [show (279936 * k + 216412) % 2 = 0 by omega]
    omega
  have h18 : C (139968 * k + 108206) = 69984 * k + 54103 := by
    unfold C
    simp [show (139968 * k + 108206) % 2 = 0 by omega]
    omega
  have h19 : C (69984 * k + 54103) = 209952 * k + 162310 := by
    unfold C
    simp [show (69984 * k + 54103) % 2 ≠ 0 by omega]
    omega
  have h20 : C (209952 * k + 162310) = 104976 * k + 81155 := by
    unfold C
    simp [show (209952 * k + 162310) % 2 = 0 by omega]
    omega
  have h21 : C (104976 * k + 81155) = 314928 * k + 243466 := by
    unfold C
    simp [show (104976 * k + 81155) % 2 ≠ 0 by omega]
    omega
  have h22 : C (314928 * k + 243466) = 157464 * k + 121733 := by
    unfold C
    simp [show (314928 * k + 243466) % 2 = 0 by omega]
    omega
  have h23 : C (157464 * k + 121733) = 472392 * k + 365200 := by
    unfold C
    simp [show (157464 * k + 121733) % 2 ≠ 0 by omega]
    omega
  have h24 : C (472392 * k + 365200) = 236196 * k + 182600 := by
    unfold C
    simp [show (472392 * k + 365200) % 2 = 0 by omega]
    omega
  have h25 : C (236196 * k + 182600) = 118098 * k + 91300 := by
    unfold C
    simp [show (236196 * k + 182600) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 91300) = 59049 * k + 45650 := by
    unfold C
    simp [show (118098 * k + 91300) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 50663) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 50663)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_50843 : ∀ k : Nat,
    iterate (65536 * k + 50843) 26 = 59049 * k + 45812 ∧
      59049 * k + 45812 < 65536 * k + 50843 := by
  intro k
  have h1 : C (65536 * k + 50843) = 196608 * k + 152530 := by
    unfold C
    simp [show (65536 * k + 50843) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 152530) = 98304 * k + 76265 := by
    unfold C
    simp [show (196608 * k + 152530) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 76265) = 294912 * k + 228796 := by
    unfold C
    simp [show (98304 * k + 76265) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 228796) = 147456 * k + 114398 := by
    unfold C
    simp [show (294912 * k + 228796) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 114398) = 73728 * k + 57199 := by
    unfold C
    simp [show (147456 * k + 114398) % 2 = 0 by omega]
    omega
  have h6 : C (73728 * k + 57199) = 221184 * k + 171598 := by
    unfold C
    simp [show (73728 * k + 57199) % 2 ≠ 0 by omega]
    omega
  have h7 : C (221184 * k + 171598) = 110592 * k + 85799 := by
    unfold C
    simp [show (221184 * k + 171598) % 2 = 0 by omega]
    omega
  have h8 : C (110592 * k + 85799) = 331776 * k + 257398 := by
    unfold C
    simp [show (110592 * k + 85799) % 2 ≠ 0 by omega]
    omega
  have h9 : C (331776 * k + 257398) = 165888 * k + 128699 := by
    unfold C
    simp [show (331776 * k + 257398) % 2 = 0 by omega]
    omega
  have h10 : C (165888 * k + 128699) = 497664 * k + 386098 := by
    unfold C
    simp [show (165888 * k + 128699) % 2 ≠ 0 by omega]
    omega
  have h11 : C (497664 * k + 386098) = 248832 * k + 193049 := by
    unfold C
    simp [show (497664 * k + 386098) % 2 = 0 by omega]
    omega
  have h12 : C (248832 * k + 193049) = 746496 * k + 579148 := by
    unfold C
    simp [show (248832 * k + 193049) % 2 ≠ 0 by omega]
    omega
  have h13 : C (746496 * k + 579148) = 373248 * k + 289574 := by
    unfold C
    simp [show (746496 * k + 579148) % 2 = 0 by omega]
    omega
  have h14 : C (373248 * k + 289574) = 186624 * k + 144787 := by
    unfold C
    simp [show (373248 * k + 289574) % 2 = 0 by omega]
    omega
  have h15 : C (186624 * k + 144787) = 559872 * k + 434362 := by
    unfold C
    simp [show (186624 * k + 144787) % 2 ≠ 0 by omega]
    omega
  have h16 : C (559872 * k + 434362) = 279936 * k + 217181 := by
    unfold C
    simp [show (559872 * k + 434362) % 2 = 0 by omega]
    omega
  have h17 : C (279936 * k + 217181) = 839808 * k + 651544 := by
    unfold C
    simp [show (279936 * k + 217181) % 2 ≠ 0 by omega]
    omega
  have h18 : C (839808 * k + 651544) = 419904 * k + 325772 := by
    unfold C
    simp [show (839808 * k + 651544) % 2 = 0 by omega]
    omega
  have h19 : C (419904 * k + 325772) = 209952 * k + 162886 := by
    unfold C
    simp [show (419904 * k + 325772) % 2 = 0 by omega]
    omega
  have h20 : C (209952 * k + 162886) = 104976 * k + 81443 := by
    unfold C
    simp [show (209952 * k + 162886) % 2 = 0 by omega]
    omega
  have h21 : C (104976 * k + 81443) = 314928 * k + 244330 := by
    unfold C
    simp [show (104976 * k + 81443) % 2 ≠ 0 by omega]
    omega
  have h22 : C (314928 * k + 244330) = 157464 * k + 122165 := by
    unfold C
    simp [show (314928 * k + 244330) % 2 = 0 by omega]
    omega
  have h23 : C (157464 * k + 122165) = 472392 * k + 366496 := by
    unfold C
    simp [show (157464 * k + 122165) % 2 ≠ 0 by omega]
    omega
  have h24 : C (472392 * k + 366496) = 236196 * k + 183248 := by
    unfold C
    simp [show (472392 * k + 366496) % 2 = 0 by omega]
    omega
  have h25 : C (236196 * k + 183248) = 118098 * k + 91624 := by
    unfold C
    simp [show (236196 * k + 183248) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 91624) = 59049 * k + 45812 := by
    unfold C
    simp [show (118098 * k + 91624) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 50843) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 50843)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_50847 : ∀ k : Nat,
    iterate (65536 * k + 50847) 26 = 59049 * k + 45815 ∧
      59049 * k + 45815 < 65536 * k + 50847 := by
  intro k
  have h1 : C (65536 * k + 50847) = 196608 * k + 152542 := by
    unfold C
    simp [show (65536 * k + 50847) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 152542) = 98304 * k + 76271 := by
    unfold C
    simp [show (196608 * k + 152542) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 76271) = 294912 * k + 228814 := by
    unfold C
    simp [show (98304 * k + 76271) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 228814) = 147456 * k + 114407 := by
    unfold C
    simp [show (294912 * k + 228814) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 114407) = 442368 * k + 343222 := by
    unfold C
    simp [show (147456 * k + 114407) % 2 ≠ 0 by omega]
    omega
  have h6 : C (442368 * k + 343222) = 221184 * k + 171611 := by
    unfold C
    simp [show (442368 * k + 343222) % 2 = 0 by omega]
    omega
  have h7 : C (221184 * k + 171611) = 663552 * k + 514834 := by
    unfold C
    simp [show (221184 * k + 171611) % 2 ≠ 0 by omega]
    omega
  have h8 : C (663552 * k + 514834) = 331776 * k + 257417 := by
    unfold C
    simp [show (663552 * k + 514834) % 2 = 0 by omega]
    omega
  have h9 : C (331776 * k + 257417) = 995328 * k + 772252 := by
    unfold C
    simp [show (331776 * k + 257417) % 2 ≠ 0 by omega]
    omega
  have h10 : C (995328 * k + 772252) = 497664 * k + 386126 := by
    unfold C
    simp [show (995328 * k + 772252) % 2 = 0 by omega]
    omega
  have h11 : C (497664 * k + 386126) = 248832 * k + 193063 := by
    unfold C
    simp [show (497664 * k + 386126) % 2 = 0 by omega]
    omega
  have h12 : C (248832 * k + 193063) = 746496 * k + 579190 := by
    unfold C
    simp [show (248832 * k + 193063) % 2 ≠ 0 by omega]
    omega
  have h13 : C (746496 * k + 579190) = 373248 * k + 289595 := by
    unfold C
    simp [show (746496 * k + 579190) % 2 = 0 by omega]
    omega
  have h14 : C (373248 * k + 289595) = 1119744 * k + 868786 := by
    unfold C
    simp [show (373248 * k + 289595) % 2 ≠ 0 by omega]
    omega
  have h15 : C (1119744 * k + 868786) = 559872 * k + 434393 := by
    unfold C
    simp [show (1119744 * k + 868786) % 2 = 0 by omega]
    omega
  have h16 : C (559872 * k + 434393) = 1679616 * k + 1303180 := by
    unfold C
    simp [show (559872 * k + 434393) % 2 ≠ 0 by omega]
    omega
  have h17 : C (1679616 * k + 1303180) = 839808 * k + 651590 := by
    unfold C
    simp [show (1679616 * k + 1303180) % 2 = 0 by omega]
    omega
  have h18 : C (839808 * k + 651590) = 419904 * k + 325795 := by
    unfold C
    simp [show (839808 * k + 651590) % 2 = 0 by omega]
    omega
  have h19 : C (419904 * k + 325795) = 1259712 * k + 977386 := by
    unfold C
    simp [show (419904 * k + 325795) % 2 ≠ 0 by omega]
    omega
  have h20 : C (1259712 * k + 977386) = 629856 * k + 488693 := by
    unfold C
    simp [show (1259712 * k + 977386) % 2 = 0 by omega]
    omega
  have h21 : C (629856 * k + 488693) = 1889568 * k + 1466080 := by
    unfold C
    simp [show (629856 * k + 488693) % 2 ≠ 0 by omega]
    omega
  have h22 : C (1889568 * k + 1466080) = 944784 * k + 733040 := by
    unfold C
    simp [show (1889568 * k + 1466080) % 2 = 0 by omega]
    omega
  have h23 : C (944784 * k + 733040) = 472392 * k + 366520 := by
    unfold C
    simp [show (944784 * k + 733040) % 2 = 0 by omega]
    omega
  have h24 : C (472392 * k + 366520) = 236196 * k + 183260 := by
    unfold C
    simp [show (472392 * k + 366520) % 2 = 0 by omega]
    omega
  have h25 : C (236196 * k + 183260) = 118098 * k + 91630 := by
    unfold C
    simp [show (236196 * k + 183260) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 91630) = 59049 * k + 45815 := by
    unfold C
    simp [show (118098 * k + 91630) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 50847) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 50847)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_51055 : ∀ k : Nat,
    iterate (65536 * k + 51055) 26 = 59049 * k + 46003 ∧
      59049 * k + 46003 < 65536 * k + 51055 := by
  intro k
  have h1 : C (65536 * k + 51055) = 196608 * k + 153166 := by
    unfold C
    simp [show (65536 * k + 51055) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 153166) = 98304 * k + 76583 := by
    unfold C
    simp [show (196608 * k + 153166) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 76583) = 294912 * k + 229750 := by
    unfold C
    simp [show (98304 * k + 76583) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 229750) = 147456 * k + 114875 := by
    unfold C
    simp [show (294912 * k + 229750) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 114875) = 442368 * k + 344626 := by
    unfold C
    simp [show (147456 * k + 114875) % 2 ≠ 0 by omega]
    omega
  have h6 : C (442368 * k + 344626) = 221184 * k + 172313 := by
    unfold C
    simp [show (442368 * k + 344626) % 2 = 0 by omega]
    omega
  have h7 : C (221184 * k + 172313) = 663552 * k + 516940 := by
    unfold C
    simp [show (221184 * k + 172313) % 2 ≠ 0 by omega]
    omega
  have h8 : C (663552 * k + 516940) = 331776 * k + 258470 := by
    unfold C
    simp [show (663552 * k + 516940) % 2 = 0 by omega]
    omega
  have h9 : C (331776 * k + 258470) = 165888 * k + 129235 := by
    unfold C
    simp [show (331776 * k + 258470) % 2 = 0 by omega]
    omega
  have h10 : C (165888 * k + 129235) = 497664 * k + 387706 := by
    unfold C
    simp [show (165888 * k + 129235) % 2 ≠ 0 by omega]
    omega
  have h11 : C (497664 * k + 387706) = 248832 * k + 193853 := by
    unfold C
    simp [show (497664 * k + 387706) % 2 = 0 by omega]
    omega
  have h12 : C (248832 * k + 193853) = 746496 * k + 581560 := by
    unfold C
    simp [show (248832 * k + 193853) % 2 ≠ 0 by omega]
    omega
  have h13 : C (746496 * k + 581560) = 373248 * k + 290780 := by
    unfold C
    simp [show (746496 * k + 581560) % 2 = 0 by omega]
    omega
  have h14 : C (373248 * k + 290780) = 186624 * k + 145390 := by
    unfold C
    simp [show (373248 * k + 290780) % 2 = 0 by omega]
    omega
  have h15 : C (186624 * k + 145390) = 93312 * k + 72695 := by
    unfold C
    simp [show (186624 * k + 145390) % 2 = 0 by omega]
    omega
  have h16 : C (93312 * k + 72695) = 279936 * k + 218086 := by
    unfold C
    simp [show (93312 * k + 72695) % 2 ≠ 0 by omega]
    omega
  have h17 : C (279936 * k + 218086) = 139968 * k + 109043 := by
    unfold C
    simp [show (279936 * k + 218086) % 2 = 0 by omega]
    omega
  have h18 : C (139968 * k + 109043) = 419904 * k + 327130 := by
    unfold C
    simp [show (139968 * k + 109043) % 2 ≠ 0 by omega]
    omega
  have h19 : C (419904 * k + 327130) = 209952 * k + 163565 := by
    unfold C
    simp [show (419904 * k + 327130) % 2 = 0 by omega]
    omega
  have h20 : C (209952 * k + 163565) = 629856 * k + 490696 := by
    unfold C
    simp [show (209952 * k + 163565) % 2 ≠ 0 by omega]
    omega
  have h21 : C (629856 * k + 490696) = 314928 * k + 245348 := by
    unfold C
    simp [show (629856 * k + 490696) % 2 = 0 by omega]
    omega
  have h22 : C (314928 * k + 245348) = 157464 * k + 122674 := by
    unfold C
    simp [show (314928 * k + 245348) % 2 = 0 by omega]
    omega
  have h23 : C (157464 * k + 122674) = 78732 * k + 61337 := by
    unfold C
    simp [show (157464 * k + 122674) % 2 = 0 by omega]
    omega
  have h24 : C (78732 * k + 61337) = 236196 * k + 184012 := by
    unfold C
    simp [show (78732 * k + 61337) % 2 ≠ 0 by omega]
    omega
  have h25 : C (236196 * k + 184012) = 118098 * k + 92006 := by
    unfold C
    simp [show (236196 * k + 184012) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 92006) = 59049 * k + 46003 := by
    unfold C
    simp [show (118098 * k + 92006) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 51055) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 51055)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_51103 : ∀ k : Nat,
    iterate (65536 * k + 51103) 26 = 59049 * k + 46046 ∧
      59049 * k + 46046 < 65536 * k + 51103 := by
  intro k
  have h1 : C (65536 * k + 51103) = 196608 * k + 153310 := by
    unfold C
    simp [show (65536 * k + 51103) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 153310) = 98304 * k + 76655 := by
    unfold C
    simp [show (196608 * k + 153310) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 76655) = 294912 * k + 229966 := by
    unfold C
    simp [show (98304 * k + 76655) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 229966) = 147456 * k + 114983 := by
    unfold C
    simp [show (294912 * k + 229966) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 114983) = 442368 * k + 344950 := by
    unfold C
    simp [show (147456 * k + 114983) % 2 ≠ 0 by omega]
    omega
  have h6 : C (442368 * k + 344950) = 221184 * k + 172475 := by
    unfold C
    simp [show (442368 * k + 344950) % 2 = 0 by omega]
    omega
  have h7 : C (221184 * k + 172475) = 663552 * k + 517426 := by
    unfold C
    simp [show (221184 * k + 172475) % 2 ≠ 0 by omega]
    omega
  have h8 : C (663552 * k + 517426) = 331776 * k + 258713 := by
    unfold C
    simp [show (663552 * k + 517426) % 2 = 0 by omega]
    omega
  have h9 : C (331776 * k + 258713) = 995328 * k + 776140 := by
    unfold C
    simp [show (331776 * k + 258713) % 2 ≠ 0 by omega]
    omega
  have h10 : C (995328 * k + 776140) = 497664 * k + 388070 := by
    unfold C
    simp [show (995328 * k + 776140) % 2 = 0 by omega]
    omega
  have h11 : C (497664 * k + 388070) = 248832 * k + 194035 := by
    unfold C
    simp [show (497664 * k + 388070) % 2 = 0 by omega]
    omega
  have h12 : C (248832 * k + 194035) = 746496 * k + 582106 := by
    unfold C
    simp [show (248832 * k + 194035) % 2 ≠ 0 by omega]
    omega
  have h13 : C (746496 * k + 582106) = 373248 * k + 291053 := by
    unfold C
    simp [show (746496 * k + 582106) % 2 = 0 by omega]
    omega
  have h14 : C (373248 * k + 291053) = 1119744 * k + 873160 := by
    unfold C
    simp [show (373248 * k + 291053) % 2 ≠ 0 by omega]
    omega
  have h15 : C (1119744 * k + 873160) = 559872 * k + 436580 := by
    unfold C
    simp [show (1119744 * k + 873160) % 2 = 0 by omega]
    omega
  have h16 : C (559872 * k + 436580) = 279936 * k + 218290 := by
    unfold C
    simp [show (559872 * k + 436580) % 2 = 0 by omega]
    omega
  have h17 : C (279936 * k + 218290) = 139968 * k + 109145 := by
    unfold C
    simp [show (279936 * k + 218290) % 2 = 0 by omega]
    omega
  have h18 : C (139968 * k + 109145) = 419904 * k + 327436 := by
    unfold C
    simp [show (139968 * k + 109145) % 2 ≠ 0 by omega]
    omega
  have h19 : C (419904 * k + 327436) = 209952 * k + 163718 := by
    unfold C
    simp [show (419904 * k + 327436) % 2 = 0 by omega]
    omega
  have h20 : C (209952 * k + 163718) = 104976 * k + 81859 := by
    unfold C
    simp [show (209952 * k + 163718) % 2 = 0 by omega]
    omega
  have h21 : C (104976 * k + 81859) = 314928 * k + 245578 := by
    unfold C
    simp [show (104976 * k + 81859) % 2 ≠ 0 by omega]
    omega
  have h22 : C (314928 * k + 245578) = 157464 * k + 122789 := by
    unfold C
    simp [show (314928 * k + 245578) % 2 = 0 by omega]
    omega
  have h23 : C (157464 * k + 122789) = 472392 * k + 368368 := by
    unfold C
    simp [show (157464 * k + 122789) % 2 ≠ 0 by omega]
    omega
  have h24 : C (472392 * k + 368368) = 236196 * k + 184184 := by
    unfold C
    simp [show (472392 * k + 368368) % 2 = 0 by omega]
    omega
  have h25 : C (236196 * k + 184184) = 118098 * k + 92092 := by
    unfold C
    simp [show (236196 * k + 184184) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 92092) = 59049 * k + 46046 := by
    unfold C
    simp [show (118098 * k + 92092) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 51103) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 51103)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_51271 : ∀ k : Nat,
    iterate (65536 * k + 51271) 26 = 59049 * k + 46198 ∧
      59049 * k + 46198 < 65536 * k + 51271 := by
  intro k
  have h1 : C (65536 * k + 51271) = 196608 * k + 153814 := by
    unfold C
    simp [show (65536 * k + 51271) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 153814) = 98304 * k + 76907 := by
    unfold C
    simp [show (196608 * k + 153814) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 76907) = 294912 * k + 230722 := by
    unfold C
    simp [show (98304 * k + 76907) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 230722) = 147456 * k + 115361 := by
    unfold C
    simp [show (294912 * k + 230722) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 115361) = 442368 * k + 346084 := by
    unfold C
    simp [show (147456 * k + 115361) % 2 ≠ 0 by omega]
    omega
  have h6 : C (442368 * k + 346084) = 221184 * k + 173042 := by
    unfold C
    simp [show (442368 * k + 346084) % 2 = 0 by omega]
    omega
  have h7 : C (221184 * k + 173042) = 110592 * k + 86521 := by
    unfold C
    simp [show (221184 * k + 173042) % 2 = 0 by omega]
    omega
  have h8 : C (110592 * k + 86521) = 331776 * k + 259564 := by
    unfold C
    simp [show (110592 * k + 86521) % 2 ≠ 0 by omega]
    omega
  have h9 : C (331776 * k + 259564) = 165888 * k + 129782 := by
    unfold C
    simp [show (331776 * k + 259564) % 2 = 0 by omega]
    omega
  have h10 : C (165888 * k + 129782) = 82944 * k + 64891 := by
    unfold C
    simp [show (165888 * k + 129782) % 2 = 0 by omega]
    omega
  have h11 : C (82944 * k + 64891) = 248832 * k + 194674 := by
    unfold C
    simp [show (82944 * k + 64891) % 2 ≠ 0 by omega]
    omega
  have h12 : C (248832 * k + 194674) = 124416 * k + 97337 := by
    unfold C
    simp [show (248832 * k + 194674) % 2 = 0 by omega]
    omega
  have h13 : C (124416 * k + 97337) = 373248 * k + 292012 := by
    unfold C
    simp [show (124416 * k + 97337) % 2 ≠ 0 by omega]
    omega
  have h14 : C (373248 * k + 292012) = 186624 * k + 146006 := by
    unfold C
    simp [show (373248 * k + 292012) % 2 = 0 by omega]
    omega
  have h15 : C (186624 * k + 146006) = 93312 * k + 73003 := by
    unfold C
    simp [show (186624 * k + 146006) % 2 = 0 by omega]
    omega
  have h16 : C (93312 * k + 73003) = 279936 * k + 219010 := by
    unfold C
    simp [show (93312 * k + 73003) % 2 ≠ 0 by omega]
    omega
  have h17 : C (279936 * k + 219010) = 139968 * k + 109505 := by
    unfold C
    simp [show (279936 * k + 219010) % 2 = 0 by omega]
    omega
  have h18 : C (139968 * k + 109505) = 419904 * k + 328516 := by
    unfold C
    simp [show (139968 * k + 109505) % 2 ≠ 0 by omega]
    omega
  have h19 : C (419904 * k + 328516) = 209952 * k + 164258 := by
    unfold C
    simp [show (419904 * k + 328516) % 2 = 0 by omega]
    omega
  have h20 : C (209952 * k + 164258) = 104976 * k + 82129 := by
    unfold C
    simp [show (209952 * k + 164258) % 2 = 0 by omega]
    omega
  have h21 : C (104976 * k + 82129) = 314928 * k + 246388 := by
    unfold C
    simp [show (104976 * k + 82129) % 2 ≠ 0 by omega]
    omega
  have h22 : C (314928 * k + 246388) = 157464 * k + 123194 := by
    unfold C
    simp [show (314928 * k + 246388) % 2 = 0 by omega]
    omega
  have h23 : C (157464 * k + 123194) = 78732 * k + 61597 := by
    unfold C
    simp [show (157464 * k + 123194) % 2 = 0 by omega]
    omega
  have h24 : C (78732 * k + 61597) = 236196 * k + 184792 := by
    unfold C
    simp [show (78732 * k + 61597) % 2 ≠ 0 by omega]
    omega
  have h25 : C (236196 * k + 184792) = 118098 * k + 92396 := by
    unfold C
    simp [show (236196 * k + 184792) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 92396) = 59049 * k + 46198 := by
    unfold C
    simp [show (118098 * k + 92396) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 51271) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 51271)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_51431 : ∀ k : Nat,
    iterate (65536 * k + 51431) 26 = 59049 * k + 46342 ∧
      59049 * k + 46342 < 65536 * k + 51431 := by
  intro k
  have h1 : C (65536 * k + 51431) = 196608 * k + 154294 := by
    unfold C
    simp [show (65536 * k + 51431) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 154294) = 98304 * k + 77147 := by
    unfold C
    simp [show (196608 * k + 154294) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 77147) = 294912 * k + 231442 := by
    unfold C
    simp [show (98304 * k + 77147) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 231442) = 147456 * k + 115721 := by
    unfold C
    simp [show (294912 * k + 231442) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 115721) = 442368 * k + 347164 := by
    unfold C
    simp [show (147456 * k + 115721) % 2 ≠ 0 by omega]
    omega
  have h6 : C (442368 * k + 347164) = 221184 * k + 173582 := by
    unfold C
    simp [show (442368 * k + 347164) % 2 = 0 by omega]
    omega
  have h7 : C (221184 * k + 173582) = 110592 * k + 86791 := by
    unfold C
    simp [show (221184 * k + 173582) % 2 = 0 by omega]
    omega
  have h8 : C (110592 * k + 86791) = 331776 * k + 260374 := by
    unfold C
    simp [show (110592 * k + 86791) % 2 ≠ 0 by omega]
    omega
  have h9 : C (331776 * k + 260374) = 165888 * k + 130187 := by
    unfold C
    simp [show (331776 * k + 260374) % 2 = 0 by omega]
    omega
  have h10 : C (165888 * k + 130187) = 497664 * k + 390562 := by
    unfold C
    simp [show (165888 * k + 130187) % 2 ≠ 0 by omega]
    omega
  have h11 : C (497664 * k + 390562) = 248832 * k + 195281 := by
    unfold C
    simp [show (497664 * k + 390562) % 2 = 0 by omega]
    omega
  have h12 : C (248832 * k + 195281) = 746496 * k + 585844 := by
    unfold C
    simp [show (248832 * k + 195281) % 2 ≠ 0 by omega]
    omega
  have h13 : C (746496 * k + 585844) = 373248 * k + 292922 := by
    unfold C
    simp [show (746496 * k + 585844) % 2 = 0 by omega]
    omega
  have h14 : C (373248 * k + 292922) = 186624 * k + 146461 := by
    unfold C
    simp [show (373248 * k + 292922) % 2 = 0 by omega]
    omega
  have h15 : C (186624 * k + 146461) = 559872 * k + 439384 := by
    unfold C
    simp [show (186624 * k + 146461) % 2 ≠ 0 by omega]
    omega
  have h16 : C (559872 * k + 439384) = 279936 * k + 219692 := by
    unfold C
    simp [show (559872 * k + 439384) % 2 = 0 by omega]
    omega
  have h17 : C (279936 * k + 219692) = 139968 * k + 109846 := by
    unfold C
    simp [show (279936 * k + 219692) % 2 = 0 by omega]
    omega
  have h18 : C (139968 * k + 109846) = 69984 * k + 54923 := by
    unfold C
    simp [show (139968 * k + 109846) % 2 = 0 by omega]
    omega
  have h19 : C (69984 * k + 54923) = 209952 * k + 164770 := by
    unfold C
    simp [show (69984 * k + 54923) % 2 ≠ 0 by omega]
    omega
  have h20 : C (209952 * k + 164770) = 104976 * k + 82385 := by
    unfold C
    simp [show (209952 * k + 164770) % 2 = 0 by omega]
    omega
  have h21 : C (104976 * k + 82385) = 314928 * k + 247156 := by
    unfold C
    simp [show (104976 * k + 82385) % 2 ≠ 0 by omega]
    omega
  have h22 : C (314928 * k + 247156) = 157464 * k + 123578 := by
    unfold C
    simp [show (314928 * k + 247156) % 2 = 0 by omega]
    omega
  have h23 : C (157464 * k + 123578) = 78732 * k + 61789 := by
    unfold C
    simp [show (157464 * k + 123578) % 2 = 0 by omega]
    omega
  have h24 : C (78732 * k + 61789) = 236196 * k + 185368 := by
    unfold C
    simp [show (78732 * k + 61789) % 2 ≠ 0 by omega]
    omega
  have h25 : C (236196 * k + 185368) = 118098 * k + 92684 := by
    unfold C
    simp [show (236196 * k + 185368) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 92684) = 59049 * k + 46342 := by
    unfold C
    simp [show (118098 * k + 92684) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 51431) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 51431)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_51451 : ∀ k : Nat,
    iterate (65536 * k + 51451) 26 = 59049 * k + 46360 ∧
      59049 * k + 46360 < 65536 * k + 51451 := by
  intro k
  have h1 : C (65536 * k + 51451) = 196608 * k + 154354 := by
    unfold C
    simp [show (65536 * k + 51451) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 154354) = 98304 * k + 77177 := by
    unfold C
    simp [show (196608 * k + 154354) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 77177) = 294912 * k + 231532 := by
    unfold C
    simp [show (98304 * k + 77177) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 231532) = 147456 * k + 115766 := by
    unfold C
    simp [show (294912 * k + 231532) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 115766) = 73728 * k + 57883 := by
    unfold C
    simp [show (147456 * k + 115766) % 2 = 0 by omega]
    omega
  have h6 : C (73728 * k + 57883) = 221184 * k + 173650 := by
    unfold C
    simp [show (73728 * k + 57883) % 2 ≠ 0 by omega]
    omega
  have h7 : C (221184 * k + 173650) = 110592 * k + 86825 := by
    unfold C
    simp [show (221184 * k + 173650) % 2 = 0 by omega]
    omega
  have h8 : C (110592 * k + 86825) = 331776 * k + 260476 := by
    unfold C
    simp [show (110592 * k + 86825) % 2 ≠ 0 by omega]
    omega
  have h9 : C (331776 * k + 260476) = 165888 * k + 130238 := by
    unfold C
    simp [show (331776 * k + 260476) % 2 = 0 by omega]
    omega
  have h10 : C (165888 * k + 130238) = 82944 * k + 65119 := by
    unfold C
    simp [show (165888 * k + 130238) % 2 = 0 by omega]
    omega
  have h11 : C (82944 * k + 65119) = 248832 * k + 195358 := by
    unfold C
    simp [show (82944 * k + 65119) % 2 ≠ 0 by omega]
    omega
  have h12 : C (248832 * k + 195358) = 124416 * k + 97679 := by
    unfold C
    simp [show (248832 * k + 195358) % 2 = 0 by omega]
    omega
  have h13 : C (124416 * k + 97679) = 373248 * k + 293038 := by
    unfold C
    simp [show (124416 * k + 97679) % 2 ≠ 0 by omega]
    omega
  have h14 : C (373248 * k + 293038) = 186624 * k + 146519 := by
    unfold C
    simp [show (373248 * k + 293038) % 2 = 0 by omega]
    omega
  have h15 : C (186624 * k + 146519) = 559872 * k + 439558 := by
    unfold C
    simp [show (186624 * k + 146519) % 2 ≠ 0 by omega]
    omega
  have h16 : C (559872 * k + 439558) = 279936 * k + 219779 := by
    unfold C
    simp [show (559872 * k + 439558) % 2 = 0 by omega]
    omega
  have h17 : C (279936 * k + 219779) = 839808 * k + 659338 := by
    unfold C
    simp [show (279936 * k + 219779) % 2 ≠ 0 by omega]
    omega
  have h18 : C (839808 * k + 659338) = 419904 * k + 329669 := by
    unfold C
    simp [show (839808 * k + 659338) % 2 = 0 by omega]
    omega
  have h19 : C (419904 * k + 329669) = 1259712 * k + 989008 := by
    unfold C
    simp [show (419904 * k + 329669) % 2 ≠ 0 by omega]
    omega
  have h20 : C (1259712 * k + 989008) = 629856 * k + 494504 := by
    unfold C
    simp [show (1259712 * k + 989008) % 2 = 0 by omega]
    omega
  have h21 : C (629856 * k + 494504) = 314928 * k + 247252 := by
    unfold C
    simp [show (629856 * k + 494504) % 2 = 0 by omega]
    omega
  have h22 : C (314928 * k + 247252) = 157464 * k + 123626 := by
    unfold C
    simp [show (314928 * k + 247252) % 2 = 0 by omega]
    omega
  have h23 : C (157464 * k + 123626) = 78732 * k + 61813 := by
    unfold C
    simp [show (157464 * k + 123626) % 2 = 0 by omega]
    omega
  have h24 : C (78732 * k + 61813) = 236196 * k + 185440 := by
    unfold C
    simp [show (78732 * k + 61813) % 2 ≠ 0 by omega]
    omega
  have h25 : C (236196 * k + 185440) = 118098 * k + 92720 := by
    unfold C
    simp [show (236196 * k + 185440) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 92720) = 59049 * k + 46360 := by
    unfold C
    simp [show (118098 * k + 92720) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 51451) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 51451)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_51455 : ∀ k : Nat,
    iterate (65536 * k + 51455) 26 = 59049 * k + 46363 ∧
      59049 * k + 46363 < 65536 * k + 51455 := by
  intro k
  have h1 : C (65536 * k + 51455) = 196608 * k + 154366 := by
    unfold C
    simp [show (65536 * k + 51455) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 154366) = 98304 * k + 77183 := by
    unfold C
    simp [show (196608 * k + 154366) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 77183) = 294912 * k + 231550 := by
    unfold C
    simp [show (98304 * k + 77183) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 231550) = 147456 * k + 115775 := by
    unfold C
    simp [show (294912 * k + 231550) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 115775) = 442368 * k + 347326 := by
    unfold C
    simp [show (147456 * k + 115775) % 2 ≠ 0 by omega]
    omega
  have h6 : C (442368 * k + 347326) = 221184 * k + 173663 := by
    unfold C
    simp [show (442368 * k + 347326) % 2 = 0 by omega]
    omega
  have h7 : C (221184 * k + 173663) = 663552 * k + 520990 := by
    unfold C
    simp [show (221184 * k + 173663) % 2 ≠ 0 by omega]
    omega
  have h8 : C (663552 * k + 520990) = 331776 * k + 260495 := by
    unfold C
    simp [show (663552 * k + 520990) % 2 = 0 by omega]
    omega
  have h9 : C (331776 * k + 260495) = 995328 * k + 781486 := by
    unfold C
    simp [show (331776 * k + 260495) % 2 ≠ 0 by omega]
    omega
  have h10 : C (995328 * k + 781486) = 497664 * k + 390743 := by
    unfold C
    simp [show (995328 * k + 781486) % 2 = 0 by omega]
    omega
  have h11 : C (497664 * k + 390743) = 1492992 * k + 1172230 := by
    unfold C
    simp [show (497664 * k + 390743) % 2 ≠ 0 by omega]
    omega
  have h12 : C (1492992 * k + 1172230) = 746496 * k + 586115 := by
    unfold C
    simp [show (1492992 * k + 1172230) % 2 = 0 by omega]
    omega
  have h13 : C (746496 * k + 586115) = 2239488 * k + 1758346 := by
    unfold C
    simp [show (746496 * k + 586115) % 2 ≠ 0 by omega]
    omega
  have h14 : C (2239488 * k + 1758346) = 1119744 * k + 879173 := by
    unfold C
    simp [show (2239488 * k + 1758346) % 2 = 0 by omega]
    omega
  have h15 : C (1119744 * k + 879173) = 3359232 * k + 2637520 := by
    unfold C
    simp [show (1119744 * k + 879173) % 2 ≠ 0 by omega]
    omega
  have h16 : C (3359232 * k + 2637520) = 1679616 * k + 1318760 := by
    unfold C
    simp [show (3359232 * k + 2637520) % 2 = 0 by omega]
    omega
  have h17 : C (1679616 * k + 1318760) = 839808 * k + 659380 := by
    unfold C
    simp [show (1679616 * k + 1318760) % 2 = 0 by omega]
    omega
  have h18 : C (839808 * k + 659380) = 419904 * k + 329690 := by
    unfold C
    simp [show (839808 * k + 659380) % 2 = 0 by omega]
    omega
  have h19 : C (419904 * k + 329690) = 209952 * k + 164845 := by
    unfold C
    simp [show (419904 * k + 329690) % 2 = 0 by omega]
    omega
  have h20 : C (209952 * k + 164845) = 629856 * k + 494536 := by
    unfold C
    simp [show (209952 * k + 164845) % 2 ≠ 0 by omega]
    omega
  have h21 : C (629856 * k + 494536) = 314928 * k + 247268 := by
    unfold C
    simp [show (629856 * k + 494536) % 2 = 0 by omega]
    omega
  have h22 : C (314928 * k + 247268) = 157464 * k + 123634 := by
    unfold C
    simp [show (314928 * k + 247268) % 2 = 0 by omega]
    omega
  have h23 : C (157464 * k + 123634) = 78732 * k + 61817 := by
    unfold C
    simp [show (157464 * k + 123634) % 2 = 0 by omega]
    omega
  have h24 : C (78732 * k + 61817) = 236196 * k + 185452 := by
    unfold C
    simp [show (78732 * k + 61817) % 2 ≠ 0 by omega]
    omega
  have h25 : C (236196 * k + 185452) = 118098 * k + 92726 := by
    unfold C
    simp [show (236196 * k + 185452) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 92726) = 59049 * k + 46363 := by
    unfold C
    simp [show (118098 * k + 92726) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 51455) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 51455)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_51611 : ∀ k : Nat,
    iterate (65536 * k + 51611) 26 = 59049 * k + 46504 ∧
      59049 * k + 46504 < 65536 * k + 51611 := by
  intro k
  have h1 : C (65536 * k + 51611) = 196608 * k + 154834 := by
    unfold C
    simp [show (65536 * k + 51611) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 154834) = 98304 * k + 77417 := by
    unfold C
    simp [show (196608 * k + 154834) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 77417) = 294912 * k + 232252 := by
    unfold C
    simp [show (98304 * k + 77417) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 232252) = 147456 * k + 116126 := by
    unfold C
    simp [show (294912 * k + 232252) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 116126) = 73728 * k + 58063 := by
    unfold C
    simp [show (147456 * k + 116126) % 2 = 0 by omega]
    omega
  have h6 : C (73728 * k + 58063) = 221184 * k + 174190 := by
    unfold C
    simp [show (73728 * k + 58063) % 2 ≠ 0 by omega]
    omega
  have h7 : C (221184 * k + 174190) = 110592 * k + 87095 := by
    unfold C
    simp [show (221184 * k + 174190) % 2 = 0 by omega]
    omega
  have h8 : C (110592 * k + 87095) = 331776 * k + 261286 := by
    unfold C
    simp [show (110592 * k + 87095) % 2 ≠ 0 by omega]
    omega
  have h9 : C (331776 * k + 261286) = 165888 * k + 130643 := by
    unfold C
    simp [show (331776 * k + 261286) % 2 = 0 by omega]
    omega
  have h10 : C (165888 * k + 130643) = 497664 * k + 391930 := by
    unfold C
    simp [show (165888 * k + 130643) % 2 ≠ 0 by omega]
    omega
  have h11 : C (497664 * k + 391930) = 248832 * k + 195965 := by
    unfold C
    simp [show (497664 * k + 391930) % 2 = 0 by omega]
    omega
  have h12 : C (248832 * k + 195965) = 746496 * k + 587896 := by
    unfold C
    simp [show (248832 * k + 195965) % 2 ≠ 0 by omega]
    omega
  have h13 : C (746496 * k + 587896) = 373248 * k + 293948 := by
    unfold C
    simp [show (746496 * k + 587896) % 2 = 0 by omega]
    omega
  have h14 : C (373248 * k + 293948) = 186624 * k + 146974 := by
    unfold C
    simp [show (373248 * k + 293948) % 2 = 0 by omega]
    omega
  have h15 : C (186624 * k + 146974) = 93312 * k + 73487 := by
    unfold C
    simp [show (186624 * k + 146974) % 2 = 0 by omega]
    omega
  have h16 : C (93312 * k + 73487) = 279936 * k + 220462 := by
    unfold C
    simp [show (93312 * k + 73487) % 2 ≠ 0 by omega]
    omega
  have h17 : C (279936 * k + 220462) = 139968 * k + 110231 := by
    unfold C
    simp [show (279936 * k + 220462) % 2 = 0 by omega]
    omega
  have h18 : C (139968 * k + 110231) = 419904 * k + 330694 := by
    unfold C
    simp [show (139968 * k + 110231) % 2 ≠ 0 by omega]
    omega
  have h19 : C (419904 * k + 330694) = 209952 * k + 165347 := by
    unfold C
    simp [show (419904 * k + 330694) % 2 = 0 by omega]
    omega
  have h20 : C (209952 * k + 165347) = 629856 * k + 496042 := by
    unfold C
    simp [show (209952 * k + 165347) % 2 ≠ 0 by omega]
    omega
  have h21 : C (629856 * k + 496042) = 314928 * k + 248021 := by
    unfold C
    simp [show (629856 * k + 496042) % 2 = 0 by omega]
    omega
  have h22 : C (314928 * k + 248021) = 944784 * k + 744064 := by
    unfold C
    simp [show (314928 * k + 248021) % 2 ≠ 0 by omega]
    omega
  have h23 : C (944784 * k + 744064) = 472392 * k + 372032 := by
    unfold C
    simp [show (944784 * k + 744064) % 2 = 0 by omega]
    omega
  have h24 : C (472392 * k + 372032) = 236196 * k + 186016 := by
    unfold C
    simp [show (472392 * k + 372032) % 2 = 0 by omega]
    omega
  have h25 : C (236196 * k + 186016) = 118098 * k + 93008 := by
    unfold C
    simp [show (236196 * k + 186016) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 93008) = 59049 * k + 46504 := by
    unfold C
    simp [show (118098 * k + 93008) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 51611) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 51611)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_51871 : ∀ k : Nat,
    iterate (65536 * k + 51871) 26 = 59049 * k + 46738 ∧
      59049 * k + 46738 < 65536 * k + 51871 := by
  intro k
  have h1 : C (65536 * k + 51871) = 196608 * k + 155614 := by
    unfold C
    simp [show (65536 * k + 51871) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 155614) = 98304 * k + 77807 := by
    unfold C
    simp [show (196608 * k + 155614) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 77807) = 294912 * k + 233422 := by
    unfold C
    simp [show (98304 * k + 77807) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 233422) = 147456 * k + 116711 := by
    unfold C
    simp [show (294912 * k + 233422) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 116711) = 442368 * k + 350134 := by
    unfold C
    simp [show (147456 * k + 116711) % 2 ≠ 0 by omega]
    omega
  have h6 : C (442368 * k + 350134) = 221184 * k + 175067 := by
    unfold C
    simp [show (442368 * k + 350134) % 2 = 0 by omega]
    omega
  have h7 : C (221184 * k + 175067) = 663552 * k + 525202 := by
    unfold C
    simp [show (221184 * k + 175067) % 2 ≠ 0 by omega]
    omega
  have h8 : C (663552 * k + 525202) = 331776 * k + 262601 := by
    unfold C
    simp [show (663552 * k + 525202) % 2 = 0 by omega]
    omega
  have h9 : C (331776 * k + 262601) = 995328 * k + 787804 := by
    unfold C
    simp [show (331776 * k + 262601) % 2 ≠ 0 by omega]
    omega
  have h10 : C (995328 * k + 787804) = 497664 * k + 393902 := by
    unfold C
    simp [show (995328 * k + 787804) % 2 = 0 by omega]
    omega
  have h11 : C (497664 * k + 393902) = 248832 * k + 196951 := by
    unfold C
    simp [show (497664 * k + 393902) % 2 = 0 by omega]
    omega
  have h12 : C (248832 * k + 196951) = 746496 * k + 590854 := by
    unfold C
    simp [show (248832 * k + 196951) % 2 ≠ 0 by omega]
    omega
  have h13 : C (746496 * k + 590854) = 373248 * k + 295427 := by
    unfold C
    simp [show (746496 * k + 590854) % 2 = 0 by omega]
    omega
  have h14 : C (373248 * k + 295427) = 1119744 * k + 886282 := by
    unfold C
    simp [show (373248 * k + 295427) % 2 ≠ 0 by omega]
    omega
  have h15 : C (1119744 * k + 886282) = 559872 * k + 443141 := by
    unfold C
    simp [show (1119744 * k + 886282) % 2 = 0 by omega]
    omega
  have h16 : C (559872 * k + 443141) = 1679616 * k + 1329424 := by
    unfold C
    simp [show (559872 * k + 443141) % 2 ≠ 0 by omega]
    omega
  have h17 : C (1679616 * k + 1329424) = 839808 * k + 664712 := by
    unfold C
    simp [show (1679616 * k + 1329424) % 2 = 0 by omega]
    omega
  have h18 : C (839808 * k + 664712) = 419904 * k + 332356 := by
    unfold C
    simp [show (839808 * k + 664712) % 2 = 0 by omega]
    omega
  have h19 : C (419904 * k + 332356) = 209952 * k + 166178 := by
    unfold C
    simp [show (419904 * k + 332356) % 2 = 0 by omega]
    omega
  have h20 : C (209952 * k + 166178) = 104976 * k + 83089 := by
    unfold C
    simp [show (209952 * k + 166178) % 2 = 0 by omega]
    omega
  have h21 : C (104976 * k + 83089) = 314928 * k + 249268 := by
    unfold C
    simp [show (104976 * k + 83089) % 2 ≠ 0 by omega]
    omega
  have h22 : C (314928 * k + 249268) = 157464 * k + 124634 := by
    unfold C
    simp [show (314928 * k + 249268) % 2 = 0 by omega]
    omega
  have h23 : C (157464 * k + 124634) = 78732 * k + 62317 := by
    unfold C
    simp [show (157464 * k + 124634) % 2 = 0 by omega]
    omega
  have h24 : C (78732 * k + 62317) = 236196 * k + 186952 := by
    unfold C
    simp [show (78732 * k + 62317) % 2 ≠ 0 by omega]
    omega
  have h25 : C (236196 * k + 186952) = 118098 * k + 93476 := by
    unfold C
    simp [show (236196 * k + 186952) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 93476) = 59049 * k + 46738 := by
    unfold C
    simp [show (118098 * k + 93476) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 51871) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 51871)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_51951 : ∀ k : Nat,
    iterate (65536 * k + 51951) 26 = 59049 * k + 46810 ∧
      59049 * k + 46810 < 65536 * k + 51951 := by
  intro k
  have h1 : C (65536 * k + 51951) = 196608 * k + 155854 := by
    unfold C
    simp [show (65536 * k + 51951) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 155854) = 98304 * k + 77927 := by
    unfold C
    simp [show (196608 * k + 155854) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 77927) = 294912 * k + 233782 := by
    unfold C
    simp [show (98304 * k + 77927) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 233782) = 147456 * k + 116891 := by
    unfold C
    simp [show (294912 * k + 233782) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 116891) = 442368 * k + 350674 := by
    unfold C
    simp [show (147456 * k + 116891) % 2 ≠ 0 by omega]
    omega
  have h6 : C (442368 * k + 350674) = 221184 * k + 175337 := by
    unfold C
    simp [show (442368 * k + 350674) % 2 = 0 by omega]
    omega
  have h7 : C (221184 * k + 175337) = 663552 * k + 526012 := by
    unfold C
    simp [show (221184 * k + 175337) % 2 ≠ 0 by omega]
    omega
  have h8 : C (663552 * k + 526012) = 331776 * k + 263006 := by
    unfold C
    simp [show (663552 * k + 526012) % 2 = 0 by omega]
    omega
  have h9 : C (331776 * k + 263006) = 165888 * k + 131503 := by
    unfold C
    simp [show (331776 * k + 263006) % 2 = 0 by omega]
    omega
  have h10 : C (165888 * k + 131503) = 497664 * k + 394510 := by
    unfold C
    simp [show (165888 * k + 131503) % 2 ≠ 0 by omega]
    omega
  have h11 : C (497664 * k + 394510) = 248832 * k + 197255 := by
    unfold C
    simp [show (497664 * k + 394510) % 2 = 0 by omega]
    omega
  have h12 : C (248832 * k + 197255) = 746496 * k + 591766 := by
    unfold C
    simp [show (248832 * k + 197255) % 2 ≠ 0 by omega]
    omega
  have h13 : C (746496 * k + 591766) = 373248 * k + 295883 := by
    unfold C
    simp [show (746496 * k + 591766) % 2 = 0 by omega]
    omega
  have h14 : C (373248 * k + 295883) = 1119744 * k + 887650 := by
    unfold C
    simp [show (373248 * k + 295883) % 2 ≠ 0 by omega]
    omega
  have h15 : C (1119744 * k + 887650) = 559872 * k + 443825 := by
    unfold C
    simp [show (1119744 * k + 887650) % 2 = 0 by omega]
    omega
  have h16 : C (559872 * k + 443825) = 1679616 * k + 1331476 := by
    unfold C
    simp [show (559872 * k + 443825) % 2 ≠ 0 by omega]
    omega
  have h17 : C (1679616 * k + 1331476) = 839808 * k + 665738 := by
    unfold C
    simp [show (1679616 * k + 1331476) % 2 = 0 by omega]
    omega
  have h18 : C (839808 * k + 665738) = 419904 * k + 332869 := by
    unfold C
    simp [show (839808 * k + 665738) % 2 = 0 by omega]
    omega
  have h19 : C (419904 * k + 332869) = 1259712 * k + 998608 := by
    unfold C
    simp [show (419904 * k + 332869) % 2 ≠ 0 by omega]
    omega
  have h20 : C (1259712 * k + 998608) = 629856 * k + 499304 := by
    unfold C
    simp [show (1259712 * k + 998608) % 2 = 0 by omega]
    omega
  have h21 : C (629856 * k + 499304) = 314928 * k + 249652 := by
    unfold C
    simp [show (629856 * k + 499304) % 2 = 0 by omega]
    omega
  have h22 : C (314928 * k + 249652) = 157464 * k + 124826 := by
    unfold C
    simp [show (314928 * k + 249652) % 2 = 0 by omega]
    omega
  have h23 : C (157464 * k + 124826) = 78732 * k + 62413 := by
    unfold C
    simp [show (157464 * k + 124826) % 2 = 0 by omega]
    omega
  have h24 : C (78732 * k + 62413) = 236196 * k + 187240 := by
    unfold C
    simp [show (78732 * k + 62413) % 2 ≠ 0 by omega]
    omega
  have h25 : C (236196 * k + 187240) = 118098 * k + 93620 := by
    unfold C
    simp [show (236196 * k + 187240) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 93620) = 59049 * k + 46810 := by
    unfold C
    simp [show (118098 * k + 93620) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 51951) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 51951)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_52031 : ∀ k : Nat,
    iterate (65536 * k + 52031) 26 = 59049 * k + 46882 ∧
      59049 * k + 46882 < 65536 * k + 52031 := by
  intro k
  have h1 : C (65536 * k + 52031) = 196608 * k + 156094 := by
    unfold C
    simp [show (65536 * k + 52031) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 156094) = 98304 * k + 78047 := by
    unfold C
    simp [show (196608 * k + 156094) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 78047) = 294912 * k + 234142 := by
    unfold C
    simp [show (98304 * k + 78047) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 234142) = 147456 * k + 117071 := by
    unfold C
    simp [show (294912 * k + 234142) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 117071) = 442368 * k + 351214 := by
    unfold C
    simp [show (147456 * k + 117071) % 2 ≠ 0 by omega]
    omega
  have h6 : C (442368 * k + 351214) = 221184 * k + 175607 := by
    unfold C
    simp [show (442368 * k + 351214) % 2 = 0 by omega]
    omega
  have h7 : C (221184 * k + 175607) = 663552 * k + 526822 := by
    unfold C
    simp [show (221184 * k + 175607) % 2 ≠ 0 by omega]
    omega
  have h8 : C (663552 * k + 526822) = 331776 * k + 263411 := by
    unfold C
    simp [show (663552 * k + 526822) % 2 = 0 by omega]
    omega
  have h9 : C (331776 * k + 263411) = 995328 * k + 790234 := by
    unfold C
    simp [show (331776 * k + 263411) % 2 ≠ 0 by omega]
    omega
  have h10 : C (995328 * k + 790234) = 497664 * k + 395117 := by
    unfold C
    simp [show (995328 * k + 790234) % 2 = 0 by omega]
    omega
  have h11 : C (497664 * k + 395117) = 1492992 * k + 1185352 := by
    unfold C
    simp [show (497664 * k + 395117) % 2 ≠ 0 by omega]
    omega
  have h12 : C (1492992 * k + 1185352) = 746496 * k + 592676 := by
    unfold C
    simp [show (1492992 * k + 1185352) % 2 = 0 by omega]
    omega
  have h13 : C (746496 * k + 592676) = 373248 * k + 296338 := by
    unfold C
    simp [show (746496 * k + 592676) % 2 = 0 by omega]
    omega
  have h14 : C (373248 * k + 296338) = 186624 * k + 148169 := by
    unfold C
    simp [show (373248 * k + 296338) % 2 = 0 by omega]
    omega
  have h15 : C (186624 * k + 148169) = 559872 * k + 444508 := by
    unfold C
    simp [show (186624 * k + 148169) % 2 ≠ 0 by omega]
    omega
  have h16 : C (559872 * k + 444508) = 279936 * k + 222254 := by
    unfold C
    simp [show (559872 * k + 444508) % 2 = 0 by omega]
    omega
  have h17 : C (279936 * k + 222254) = 139968 * k + 111127 := by
    unfold C
    simp [show (279936 * k + 222254) % 2 = 0 by omega]
    omega
  have h18 : C (139968 * k + 111127) = 419904 * k + 333382 := by
    unfold C
    simp [show (139968 * k + 111127) % 2 ≠ 0 by omega]
    omega
  have h19 : C (419904 * k + 333382) = 209952 * k + 166691 := by
    unfold C
    simp [show (419904 * k + 333382) % 2 = 0 by omega]
    omega
  have h20 : C (209952 * k + 166691) = 629856 * k + 500074 := by
    unfold C
    simp [show (209952 * k + 166691) % 2 ≠ 0 by omega]
    omega
  have h21 : C (629856 * k + 500074) = 314928 * k + 250037 := by
    unfold C
    simp [show (629856 * k + 500074) % 2 = 0 by omega]
    omega
  have h22 : C (314928 * k + 250037) = 944784 * k + 750112 := by
    unfold C
    simp [show (314928 * k + 250037) % 2 ≠ 0 by omega]
    omega
  have h23 : C (944784 * k + 750112) = 472392 * k + 375056 := by
    unfold C
    simp [show (944784 * k + 750112) % 2 = 0 by omega]
    omega
  have h24 : C (472392 * k + 375056) = 236196 * k + 187528 := by
    unfold C
    simp [show (472392 * k + 375056) % 2 = 0 by omega]
    omega
  have h25 : C (236196 * k + 187528) = 118098 * k + 93764 := by
    unfold C
    simp [show (236196 * k + 187528) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 93764) = 59049 * k + 46882 := by
    unfold C
    simp [show (118098 * k + 93764) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 52031) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 52031)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_52071 : ∀ k : Nat,
    iterate (65536 * k + 52071) 26 = 59049 * k + 46918 ∧
      59049 * k + 46918 < 65536 * k + 52071 := by
  intro k
  have h1 : C (65536 * k + 52071) = 196608 * k + 156214 := by
    unfold C
    simp [show (65536 * k + 52071) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 156214) = 98304 * k + 78107 := by
    unfold C
    simp [show (196608 * k + 156214) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 78107) = 294912 * k + 234322 := by
    unfold C
    simp [show (98304 * k + 78107) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 234322) = 147456 * k + 117161 := by
    unfold C
    simp [show (294912 * k + 234322) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 117161) = 442368 * k + 351484 := by
    unfold C
    simp [show (147456 * k + 117161) % 2 ≠ 0 by omega]
    omega
  have h6 : C (442368 * k + 351484) = 221184 * k + 175742 := by
    unfold C
    simp [show (442368 * k + 351484) % 2 = 0 by omega]
    omega
  have h7 : C (221184 * k + 175742) = 110592 * k + 87871 := by
    unfold C
    simp [show (221184 * k + 175742) % 2 = 0 by omega]
    omega
  have h8 : C (110592 * k + 87871) = 331776 * k + 263614 := by
    unfold C
    simp [show (110592 * k + 87871) % 2 ≠ 0 by omega]
    omega
  have h9 : C (331776 * k + 263614) = 165888 * k + 131807 := by
    unfold C
    simp [show (331776 * k + 263614) % 2 = 0 by omega]
    omega
  have h10 : C (165888 * k + 131807) = 497664 * k + 395422 := by
    unfold C
    simp [show (165888 * k + 131807) % 2 ≠ 0 by omega]
    omega
  have h11 : C (497664 * k + 395422) = 248832 * k + 197711 := by
    unfold C
    simp [show (497664 * k + 395422) % 2 = 0 by omega]
    omega
  have h12 : C (248832 * k + 197711) = 746496 * k + 593134 := by
    unfold C
    simp [show (248832 * k + 197711) % 2 ≠ 0 by omega]
    omega
  have h13 : C (746496 * k + 593134) = 373248 * k + 296567 := by
    unfold C
    simp [show (746496 * k + 593134) % 2 = 0 by omega]
    omega
  have h14 : C (373248 * k + 296567) = 1119744 * k + 889702 := by
    unfold C
    simp [show (373248 * k + 296567) % 2 ≠ 0 by omega]
    omega
  have h15 : C (1119744 * k + 889702) = 559872 * k + 444851 := by
    unfold C
    simp [show (1119744 * k + 889702) % 2 = 0 by omega]
    omega
  have h16 : C (559872 * k + 444851) = 1679616 * k + 1334554 := by
    unfold C
    simp [show (559872 * k + 444851) % 2 ≠ 0 by omega]
    omega
  have h17 : C (1679616 * k + 1334554) = 839808 * k + 667277 := by
    unfold C
    simp [show (1679616 * k + 1334554) % 2 = 0 by omega]
    omega
  have h18 : C (839808 * k + 667277) = 2519424 * k + 2001832 := by
    unfold C
    simp [show (839808 * k + 667277) % 2 ≠ 0 by omega]
    omega
  have h19 : C (2519424 * k + 2001832) = 1259712 * k + 1000916 := by
    unfold C
    simp [show (2519424 * k + 2001832) % 2 = 0 by omega]
    omega
  have h20 : C (1259712 * k + 1000916) = 629856 * k + 500458 := by
    unfold C
    simp [show (1259712 * k + 1000916) % 2 = 0 by omega]
    omega
  have h21 : C (629856 * k + 500458) = 314928 * k + 250229 := by
    unfold C
    simp [show (629856 * k + 500458) % 2 = 0 by omega]
    omega
  have h22 : C (314928 * k + 250229) = 944784 * k + 750688 := by
    unfold C
    simp [show (314928 * k + 250229) % 2 ≠ 0 by omega]
    omega
  have h23 : C (944784 * k + 750688) = 472392 * k + 375344 := by
    unfold C
    simp [show (944784 * k + 750688) % 2 = 0 by omega]
    omega
  have h24 : C (472392 * k + 375344) = 236196 * k + 187672 := by
    unfold C
    simp [show (472392 * k + 375344) % 2 = 0 by omega]
    omega
  have h25 : C (236196 * k + 187672) = 118098 * k + 93836 := by
    unfold C
    simp [show (236196 * k + 187672) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 93836) = 59049 * k + 46918 := by
    unfold C
    simp [show (118098 * k + 93836) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 52071) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 52071)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_52335 : ∀ k : Nat,
    iterate (65536 * k + 52335) 26 = 59049 * k + 47156 ∧
      59049 * k + 47156 < 65536 * k + 52335 := by
  intro k
  have h1 : C (65536 * k + 52335) = 196608 * k + 157006 := by
    unfold C
    simp [show (65536 * k + 52335) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 157006) = 98304 * k + 78503 := by
    unfold C
    simp [show (196608 * k + 157006) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 78503) = 294912 * k + 235510 := by
    unfold C
    simp [show (98304 * k + 78503) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 235510) = 147456 * k + 117755 := by
    unfold C
    simp [show (294912 * k + 235510) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 117755) = 442368 * k + 353266 := by
    unfold C
    simp [show (147456 * k + 117755) % 2 ≠ 0 by omega]
    omega
  have h6 : C (442368 * k + 353266) = 221184 * k + 176633 := by
    unfold C
    simp [show (442368 * k + 353266) % 2 = 0 by omega]
    omega
  have h7 : C (221184 * k + 176633) = 663552 * k + 529900 := by
    unfold C
    simp [show (221184 * k + 176633) % 2 ≠ 0 by omega]
    omega
  have h8 : C (663552 * k + 529900) = 331776 * k + 264950 := by
    unfold C
    simp [show (663552 * k + 529900) % 2 = 0 by omega]
    omega
  have h9 : C (331776 * k + 264950) = 165888 * k + 132475 := by
    unfold C
    simp [show (331776 * k + 264950) % 2 = 0 by omega]
    omega
  have h10 : C (165888 * k + 132475) = 497664 * k + 397426 := by
    unfold C
    simp [show (165888 * k + 132475) % 2 ≠ 0 by omega]
    omega
  have h11 : C (497664 * k + 397426) = 248832 * k + 198713 := by
    unfold C
    simp [show (497664 * k + 397426) % 2 = 0 by omega]
    omega
  have h12 : C (248832 * k + 198713) = 746496 * k + 596140 := by
    unfold C
    simp [show (248832 * k + 198713) % 2 ≠ 0 by omega]
    omega
  have h13 : C (746496 * k + 596140) = 373248 * k + 298070 := by
    unfold C
    simp [show (746496 * k + 596140) % 2 = 0 by omega]
    omega
  have h14 : C (373248 * k + 298070) = 186624 * k + 149035 := by
    unfold C
    simp [show (373248 * k + 298070) % 2 = 0 by omega]
    omega
  have h15 : C (186624 * k + 149035) = 559872 * k + 447106 := by
    unfold C
    simp [show (186624 * k + 149035) % 2 ≠ 0 by omega]
    omega
  have h16 : C (559872 * k + 447106) = 279936 * k + 223553 := by
    unfold C
    simp [show (559872 * k + 447106) % 2 = 0 by omega]
    omega
  have h17 : C (279936 * k + 223553) = 839808 * k + 670660 := by
    unfold C
    simp [show (279936 * k + 223553) % 2 ≠ 0 by omega]
    omega
  have h18 : C (839808 * k + 670660) = 419904 * k + 335330 := by
    unfold C
    simp [show (839808 * k + 670660) % 2 = 0 by omega]
    omega
  have h19 : C (419904 * k + 335330) = 209952 * k + 167665 := by
    unfold C
    simp [show (419904 * k + 335330) % 2 = 0 by omega]
    omega
  have h20 : C (209952 * k + 167665) = 629856 * k + 502996 := by
    unfold C
    simp [show (209952 * k + 167665) % 2 ≠ 0 by omega]
    omega
  have h21 : C (629856 * k + 502996) = 314928 * k + 251498 := by
    unfold C
    simp [show (629856 * k + 502996) % 2 = 0 by omega]
    omega
  have h22 : C (314928 * k + 251498) = 157464 * k + 125749 := by
    unfold C
    simp [show (314928 * k + 251498) % 2 = 0 by omega]
    omega
  have h23 : C (157464 * k + 125749) = 472392 * k + 377248 := by
    unfold C
    simp [show (157464 * k + 125749) % 2 ≠ 0 by omega]
    omega
  have h24 : C (472392 * k + 377248) = 236196 * k + 188624 := by
    unfold C
    simp [show (472392 * k + 377248) % 2 = 0 by omega]
    omega
  have h25 : C (236196 * k + 188624) = 118098 * k + 94312 := by
    unfold C
    simp [show (236196 * k + 188624) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 94312) = 59049 * k + 47156 := by
    unfold C
    simp [show (118098 * k + 94312) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 52335) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 52335)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_52415 : ∀ k : Nat,
    iterate (65536 * k + 52415) 26 = 59049 * k + 47228 ∧
      59049 * k + 47228 < 65536 * k + 52415 := by
  intro k
  have h1 : C (65536 * k + 52415) = 196608 * k + 157246 := by
    unfold C
    simp [show (65536 * k + 52415) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 157246) = 98304 * k + 78623 := by
    unfold C
    simp [show (196608 * k + 157246) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 78623) = 294912 * k + 235870 := by
    unfold C
    simp [show (98304 * k + 78623) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 235870) = 147456 * k + 117935 := by
    unfold C
    simp [show (294912 * k + 235870) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 117935) = 442368 * k + 353806 := by
    unfold C
    simp [show (147456 * k + 117935) % 2 ≠ 0 by omega]
    omega
  have h6 : C (442368 * k + 353806) = 221184 * k + 176903 := by
    unfold C
    simp [show (442368 * k + 353806) % 2 = 0 by omega]
    omega
  have h7 : C (221184 * k + 176903) = 663552 * k + 530710 := by
    unfold C
    simp [show (221184 * k + 176903) % 2 ≠ 0 by omega]
    omega
  have h8 : C (663552 * k + 530710) = 331776 * k + 265355 := by
    unfold C
    simp [show (663552 * k + 530710) % 2 = 0 by omega]
    omega
  have h9 : C (331776 * k + 265355) = 995328 * k + 796066 := by
    unfold C
    simp [show (331776 * k + 265355) % 2 ≠ 0 by omega]
    omega
  have h10 : C (995328 * k + 796066) = 497664 * k + 398033 := by
    unfold C
    simp [show (995328 * k + 796066) % 2 = 0 by omega]
    omega
  have h11 : C (497664 * k + 398033) = 1492992 * k + 1194100 := by
    unfold C
    simp [show (497664 * k + 398033) % 2 ≠ 0 by omega]
    omega
  have h12 : C (1492992 * k + 1194100) = 746496 * k + 597050 := by
    unfold C
    simp [show (1492992 * k + 1194100) % 2 = 0 by omega]
    omega
  have h13 : C (746496 * k + 597050) = 373248 * k + 298525 := by
    unfold C
    simp [show (746496 * k + 597050) % 2 = 0 by omega]
    omega
  have h14 : C (373248 * k + 298525) = 1119744 * k + 895576 := by
    unfold C
    simp [show (373248 * k + 298525) % 2 ≠ 0 by omega]
    omega
  have h15 : C (1119744 * k + 895576) = 559872 * k + 447788 := by
    unfold C
    simp [show (1119744 * k + 895576) % 2 = 0 by omega]
    omega
  have h16 : C (559872 * k + 447788) = 279936 * k + 223894 := by
    unfold C
    simp [show (559872 * k + 447788) % 2 = 0 by omega]
    omega
  have h17 : C (279936 * k + 223894) = 139968 * k + 111947 := by
    unfold C
    simp [show (279936 * k + 223894) % 2 = 0 by omega]
    omega
  have h18 : C (139968 * k + 111947) = 419904 * k + 335842 := by
    unfold C
    simp [show (139968 * k + 111947) % 2 ≠ 0 by omega]
    omega
  have h19 : C (419904 * k + 335842) = 209952 * k + 167921 := by
    unfold C
    simp [show (419904 * k + 335842) % 2 = 0 by omega]
    omega
  have h20 : C (209952 * k + 167921) = 629856 * k + 503764 := by
    unfold C
    simp [show (209952 * k + 167921) % 2 ≠ 0 by omega]
    omega
  have h21 : C (629856 * k + 503764) = 314928 * k + 251882 := by
    unfold C
    simp [show (629856 * k + 503764) % 2 = 0 by omega]
    omega
  have h22 : C (314928 * k + 251882) = 157464 * k + 125941 := by
    unfold C
    simp [show (314928 * k + 251882) % 2 = 0 by omega]
    omega
  have h23 : C (157464 * k + 125941) = 472392 * k + 377824 := by
    unfold C
    simp [show (157464 * k + 125941) % 2 ≠ 0 by omega]
    omega
  have h24 : C (472392 * k + 377824) = 236196 * k + 188912 := by
    unfold C
    simp [show (472392 * k + 377824) % 2 = 0 by omega]
    omega
  have h25 : C (236196 * k + 188912) = 118098 * k + 94456 := by
    unfold C
    simp [show (236196 * k + 188912) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 94456) = 59049 * k + 47228 := by
    unfold C
    simp [show (118098 * k + 94456) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 52415) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 52415)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_52431 : ∀ k : Nat,
    iterate (65536 * k + 52431) 26 = 59049 * k + 47243 ∧
      59049 * k + 47243 < 65536 * k + 52431 := by
  intro k
  have h1 : C (65536 * k + 52431) = 196608 * k + 157294 := by
    unfold C
    simp [show (65536 * k + 52431) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 157294) = 98304 * k + 78647 := by
    unfold C
    simp [show (196608 * k + 157294) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 78647) = 294912 * k + 235942 := by
    unfold C
    simp [show (98304 * k + 78647) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 235942) = 147456 * k + 117971 := by
    unfold C
    simp [show (294912 * k + 235942) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 117971) = 442368 * k + 353914 := by
    unfold C
    simp [show (147456 * k + 117971) % 2 ≠ 0 by omega]
    omega
  have h6 : C (442368 * k + 353914) = 221184 * k + 176957 := by
    unfold C
    simp [show (442368 * k + 353914) % 2 = 0 by omega]
    omega
  have h7 : C (221184 * k + 176957) = 663552 * k + 530872 := by
    unfold C
    simp [show (221184 * k + 176957) % 2 ≠ 0 by omega]
    omega
  have h8 : C (663552 * k + 530872) = 331776 * k + 265436 := by
    unfold C
    simp [show (663552 * k + 530872) % 2 = 0 by omega]
    omega
  have h9 : C (331776 * k + 265436) = 165888 * k + 132718 := by
    unfold C
    simp [show (331776 * k + 265436) % 2 = 0 by omega]
    omega
  have h10 : C (165888 * k + 132718) = 82944 * k + 66359 := by
    unfold C
    simp [show (165888 * k + 132718) % 2 = 0 by omega]
    omega
  have h11 : C (82944 * k + 66359) = 248832 * k + 199078 := by
    unfold C
    simp [show (82944 * k + 66359) % 2 ≠ 0 by omega]
    omega
  have h12 : C (248832 * k + 199078) = 124416 * k + 99539 := by
    unfold C
    simp [show (248832 * k + 199078) % 2 = 0 by omega]
    omega
  have h13 : C (124416 * k + 99539) = 373248 * k + 298618 := by
    unfold C
    simp [show (124416 * k + 99539) % 2 ≠ 0 by omega]
    omega
  have h14 : C (373248 * k + 298618) = 186624 * k + 149309 := by
    unfold C
    simp [show (373248 * k + 298618) % 2 = 0 by omega]
    omega
  have h15 : C (186624 * k + 149309) = 559872 * k + 447928 := by
    unfold C
    simp [show (186624 * k + 149309) % 2 ≠ 0 by omega]
    omega
  have h16 : C (559872 * k + 447928) = 279936 * k + 223964 := by
    unfold C
    simp [show (559872 * k + 447928) % 2 = 0 by omega]
    omega
  have h17 : C (279936 * k + 223964) = 139968 * k + 111982 := by
    unfold C
    simp [show (279936 * k + 223964) % 2 = 0 by omega]
    omega
  have h18 : C (139968 * k + 111982) = 69984 * k + 55991 := by
    unfold C
    simp [show (139968 * k + 111982) % 2 = 0 by omega]
    omega
  have h19 : C (69984 * k + 55991) = 209952 * k + 167974 := by
    unfold C
    simp [show (69984 * k + 55991) % 2 ≠ 0 by omega]
    omega
  have h20 : C (209952 * k + 167974) = 104976 * k + 83987 := by
    unfold C
    simp [show (209952 * k + 167974) % 2 = 0 by omega]
    omega
  have h21 : C (104976 * k + 83987) = 314928 * k + 251962 := by
    unfold C
    simp [show (104976 * k + 83987) % 2 ≠ 0 by omega]
    omega
  have h22 : C (314928 * k + 251962) = 157464 * k + 125981 := by
    unfold C
    simp [show (314928 * k + 251962) % 2 = 0 by omega]
    omega
  have h23 : C (157464 * k + 125981) = 472392 * k + 377944 := by
    unfold C
    simp [show (157464 * k + 125981) % 2 ≠ 0 by omega]
    omega
  have h24 : C (472392 * k + 377944) = 236196 * k + 188972 := by
    unfold C
    simp [show (472392 * k + 377944) % 2 = 0 by omega]
    omega
  have h25 : C (236196 * k + 188972) = 118098 * k + 94486 := by
    unfold C
    simp [show (236196 * k + 188972) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 94486) = 59049 * k + 47243 := by
    unfold C
    simp [show (118098 * k + 94486) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 52431) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 52431)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

end CollatzM16ShardS
