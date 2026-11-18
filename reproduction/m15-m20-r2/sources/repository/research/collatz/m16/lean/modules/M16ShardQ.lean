import Mathlib.Data.Nat.Prime.Basic

namespace CollatzM16ShardQ

def C (n : Nat) : Nat := if n % 2 = 0 then n / 2 else 3 * n + 1

def iterate (n t : Nat) : Nat := Nat.rec n (fun _ previous => C previous) t

theorem descent_mod65536_44143 : ∀ k : Nat,
    iterate (65536 * k + 44143) 26 = 59049 * k + 39775 ∧
      59049 * k + 39775 < 65536 * k + 44143 := by
  intro k
  have h1 : C (65536 * k + 44143) = 196608 * k + 132430 := by
    unfold C
    simp [show (65536 * k + 44143) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 132430) = 98304 * k + 66215 := by
    unfold C
    simp [show (196608 * k + 132430) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 66215) = 294912 * k + 198646 := by
    unfold C
    simp [show (98304 * k + 66215) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 198646) = 147456 * k + 99323 := by
    unfold C
    simp [show (294912 * k + 198646) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 99323) = 442368 * k + 297970 := by
    unfold C
    simp [show (147456 * k + 99323) % 2 ≠ 0 by omega]
    omega
  have h6 : C (442368 * k + 297970) = 221184 * k + 148985 := by
    unfold C
    simp [show (442368 * k + 297970) % 2 = 0 by omega]
    omega
  have h7 : C (221184 * k + 148985) = 663552 * k + 446956 := by
    unfold C
    simp [show (221184 * k + 148985) % 2 ≠ 0 by omega]
    omega
  have h8 : C (663552 * k + 446956) = 331776 * k + 223478 := by
    unfold C
    simp [show (663552 * k + 446956) % 2 = 0 by omega]
    omega
  have h9 : C (331776 * k + 223478) = 165888 * k + 111739 := by
    unfold C
    simp [show (331776 * k + 223478) % 2 = 0 by omega]
    omega
  have h10 : C (165888 * k + 111739) = 497664 * k + 335218 := by
    unfold C
    simp [show (165888 * k + 111739) % 2 ≠ 0 by omega]
    omega
  have h11 : C (497664 * k + 335218) = 248832 * k + 167609 := by
    unfold C
    simp [show (497664 * k + 335218) % 2 = 0 by omega]
    omega
  have h12 : C (248832 * k + 167609) = 746496 * k + 502828 := by
    unfold C
    simp [show (248832 * k + 167609) % 2 ≠ 0 by omega]
    omega
  have h13 : C (746496 * k + 502828) = 373248 * k + 251414 := by
    unfold C
    simp [show (746496 * k + 502828) % 2 = 0 by omega]
    omega
  have h14 : C (373248 * k + 251414) = 186624 * k + 125707 := by
    unfold C
    simp [show (373248 * k + 251414) % 2 = 0 by omega]
    omega
  have h15 : C (186624 * k + 125707) = 559872 * k + 377122 := by
    unfold C
    simp [show (186624 * k + 125707) % 2 ≠ 0 by omega]
    omega
  have h16 : C (559872 * k + 377122) = 279936 * k + 188561 := by
    unfold C
    simp [show (559872 * k + 377122) % 2 = 0 by omega]
    omega
  have h17 : C (279936 * k + 188561) = 839808 * k + 565684 := by
    unfold C
    simp [show (279936 * k + 188561) % 2 ≠ 0 by omega]
    omega
  have h18 : C (839808 * k + 565684) = 419904 * k + 282842 := by
    unfold C
    simp [show (839808 * k + 565684) % 2 = 0 by omega]
    omega
  have h19 : C (419904 * k + 282842) = 209952 * k + 141421 := by
    unfold C
    simp [show (419904 * k + 282842) % 2 = 0 by omega]
    omega
  have h20 : C (209952 * k + 141421) = 629856 * k + 424264 := by
    unfold C
    simp [show (209952 * k + 141421) % 2 ≠ 0 by omega]
    omega
  have h21 : C (629856 * k + 424264) = 314928 * k + 212132 := by
    unfold C
    simp [show (629856 * k + 424264) % 2 = 0 by omega]
    omega
  have h22 : C (314928 * k + 212132) = 157464 * k + 106066 := by
    unfold C
    simp [show (314928 * k + 212132) % 2 = 0 by omega]
    omega
  have h23 : C (157464 * k + 106066) = 78732 * k + 53033 := by
    unfold C
    simp [show (157464 * k + 106066) % 2 = 0 by omega]
    omega
  have h24 : C (78732 * k + 53033) = 236196 * k + 159100 := by
    unfold C
    simp [show (78732 * k + 53033) % 2 ≠ 0 by omega]
    omega
  have h25 : C (236196 * k + 159100) = 118098 * k + 79550 := by
    unfold C
    simp [show (236196 * k + 159100) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 79550) = 59049 * k + 39775 := by
    unfold C
    simp [show (118098 * k + 79550) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 44143) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 44143)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_44223 : ∀ k : Nat,
    iterate (65536 * k + 44223) 26 = 59049 * k + 39847 ∧
      59049 * k + 39847 < 65536 * k + 44223 := by
  intro k
  have h1 : C (65536 * k + 44223) = 196608 * k + 132670 := by
    unfold C
    simp [show (65536 * k + 44223) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 132670) = 98304 * k + 66335 := by
    unfold C
    simp [show (196608 * k + 132670) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 66335) = 294912 * k + 199006 := by
    unfold C
    simp [show (98304 * k + 66335) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 199006) = 147456 * k + 99503 := by
    unfold C
    simp [show (294912 * k + 199006) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 99503) = 442368 * k + 298510 := by
    unfold C
    simp [show (147456 * k + 99503) % 2 ≠ 0 by omega]
    omega
  have h6 : C (442368 * k + 298510) = 221184 * k + 149255 := by
    unfold C
    simp [show (442368 * k + 298510) % 2 = 0 by omega]
    omega
  have h7 : C (221184 * k + 149255) = 663552 * k + 447766 := by
    unfold C
    simp [show (221184 * k + 149255) % 2 ≠ 0 by omega]
    omega
  have h8 : C (663552 * k + 447766) = 331776 * k + 223883 := by
    unfold C
    simp [show (663552 * k + 447766) % 2 = 0 by omega]
    omega
  have h9 : C (331776 * k + 223883) = 995328 * k + 671650 := by
    unfold C
    simp [show (331776 * k + 223883) % 2 ≠ 0 by omega]
    omega
  have h10 : C (995328 * k + 671650) = 497664 * k + 335825 := by
    unfold C
    simp [show (995328 * k + 671650) % 2 = 0 by omega]
    omega
  have h11 : C (497664 * k + 335825) = 1492992 * k + 1007476 := by
    unfold C
    simp [show (497664 * k + 335825) % 2 ≠ 0 by omega]
    omega
  have h12 : C (1492992 * k + 1007476) = 746496 * k + 503738 := by
    unfold C
    simp [show (1492992 * k + 1007476) % 2 = 0 by omega]
    omega
  have h13 : C (746496 * k + 503738) = 373248 * k + 251869 := by
    unfold C
    simp [show (746496 * k + 503738) % 2 = 0 by omega]
    omega
  have h14 : C (373248 * k + 251869) = 1119744 * k + 755608 := by
    unfold C
    simp [show (373248 * k + 251869) % 2 ≠ 0 by omega]
    omega
  have h15 : C (1119744 * k + 755608) = 559872 * k + 377804 := by
    unfold C
    simp [show (1119744 * k + 755608) % 2 = 0 by omega]
    omega
  have h16 : C (559872 * k + 377804) = 279936 * k + 188902 := by
    unfold C
    simp [show (559872 * k + 377804) % 2 = 0 by omega]
    omega
  have h17 : C (279936 * k + 188902) = 139968 * k + 94451 := by
    unfold C
    simp [show (279936 * k + 188902) % 2 = 0 by omega]
    omega
  have h18 : C (139968 * k + 94451) = 419904 * k + 283354 := by
    unfold C
    simp [show (139968 * k + 94451) % 2 ≠ 0 by omega]
    omega
  have h19 : C (419904 * k + 283354) = 209952 * k + 141677 := by
    unfold C
    simp [show (419904 * k + 283354) % 2 = 0 by omega]
    omega
  have h20 : C (209952 * k + 141677) = 629856 * k + 425032 := by
    unfold C
    simp [show (209952 * k + 141677) % 2 ≠ 0 by omega]
    omega
  have h21 : C (629856 * k + 425032) = 314928 * k + 212516 := by
    unfold C
    simp [show (629856 * k + 425032) % 2 = 0 by omega]
    omega
  have h22 : C (314928 * k + 212516) = 157464 * k + 106258 := by
    unfold C
    simp [show (314928 * k + 212516) % 2 = 0 by omega]
    omega
  have h23 : C (157464 * k + 106258) = 78732 * k + 53129 := by
    unfold C
    simp [show (157464 * k + 106258) % 2 = 0 by omega]
    omega
  have h24 : C (78732 * k + 53129) = 236196 * k + 159388 := by
    unfold C
    simp [show (78732 * k + 53129) % 2 ≠ 0 by omega]
    omega
  have h25 : C (236196 * k + 159388) = 118098 * k + 79694 := by
    unfold C
    simp [show (236196 * k + 159388) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 79694) = 59049 * k + 39847 := by
    unfold C
    simp [show (118098 * k + 79694) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 44223) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 44223)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_44239 : ∀ k : Nat,
    iterate (65536 * k + 44239) 26 = 59049 * k + 39862 ∧
      59049 * k + 39862 < 65536 * k + 44239 := by
  intro k
  have h1 : C (65536 * k + 44239) = 196608 * k + 132718 := by
    unfold C
    simp [show (65536 * k + 44239) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 132718) = 98304 * k + 66359 := by
    unfold C
    simp [show (196608 * k + 132718) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 66359) = 294912 * k + 199078 := by
    unfold C
    simp [show (98304 * k + 66359) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 199078) = 147456 * k + 99539 := by
    unfold C
    simp [show (294912 * k + 199078) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 99539) = 442368 * k + 298618 := by
    unfold C
    simp [show (147456 * k + 99539) % 2 ≠ 0 by omega]
    omega
  have h6 : C (442368 * k + 298618) = 221184 * k + 149309 := by
    unfold C
    simp [show (442368 * k + 298618) % 2 = 0 by omega]
    omega
  have h7 : C (221184 * k + 149309) = 663552 * k + 447928 := by
    unfold C
    simp [show (221184 * k + 149309) % 2 ≠ 0 by omega]
    omega
  have h8 : C (663552 * k + 447928) = 331776 * k + 223964 := by
    unfold C
    simp [show (663552 * k + 447928) % 2 = 0 by omega]
    omega
  have h9 : C (331776 * k + 223964) = 165888 * k + 111982 := by
    unfold C
    simp [show (331776 * k + 223964) % 2 = 0 by omega]
    omega
  have h10 : C (165888 * k + 111982) = 82944 * k + 55991 := by
    unfold C
    simp [show (165888 * k + 111982) % 2 = 0 by omega]
    omega
  have h11 : C (82944 * k + 55991) = 248832 * k + 167974 := by
    unfold C
    simp [show (82944 * k + 55991) % 2 ≠ 0 by omega]
    omega
  have h12 : C (248832 * k + 167974) = 124416 * k + 83987 := by
    unfold C
    simp [show (248832 * k + 167974) % 2 = 0 by omega]
    omega
  have h13 : C (124416 * k + 83987) = 373248 * k + 251962 := by
    unfold C
    simp [show (124416 * k + 83987) % 2 ≠ 0 by omega]
    omega
  have h14 : C (373248 * k + 251962) = 186624 * k + 125981 := by
    unfold C
    simp [show (373248 * k + 251962) % 2 = 0 by omega]
    omega
  have h15 : C (186624 * k + 125981) = 559872 * k + 377944 := by
    unfold C
    simp [show (186624 * k + 125981) % 2 ≠ 0 by omega]
    omega
  have h16 : C (559872 * k + 377944) = 279936 * k + 188972 := by
    unfold C
    simp [show (559872 * k + 377944) % 2 = 0 by omega]
    omega
  have h17 : C (279936 * k + 188972) = 139968 * k + 94486 := by
    unfold C
    simp [show (279936 * k + 188972) % 2 = 0 by omega]
    omega
  have h18 : C (139968 * k + 94486) = 69984 * k + 47243 := by
    unfold C
    simp [show (139968 * k + 94486) % 2 = 0 by omega]
    omega
  have h19 : C (69984 * k + 47243) = 209952 * k + 141730 := by
    unfold C
    simp [show (69984 * k + 47243) % 2 ≠ 0 by omega]
    omega
  have h20 : C (209952 * k + 141730) = 104976 * k + 70865 := by
    unfold C
    simp [show (209952 * k + 141730) % 2 = 0 by omega]
    omega
  have h21 : C (104976 * k + 70865) = 314928 * k + 212596 := by
    unfold C
    simp [show (104976 * k + 70865) % 2 ≠ 0 by omega]
    omega
  have h22 : C (314928 * k + 212596) = 157464 * k + 106298 := by
    unfold C
    simp [show (314928 * k + 212596) % 2 = 0 by omega]
    omega
  have h23 : C (157464 * k + 106298) = 78732 * k + 53149 := by
    unfold C
    simp [show (157464 * k + 106298) % 2 = 0 by omega]
    omega
  have h24 : C (78732 * k + 53149) = 236196 * k + 159448 := by
    unfold C
    simp [show (78732 * k + 53149) % 2 ≠ 0 by omega]
    omega
  have h25 : C (236196 * k + 159448) = 118098 * k + 79724 := by
    unfold C
    simp [show (236196 * k + 159448) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 79724) = 59049 * k + 39862 := by
    unfold C
    simp [show (118098 * k + 79724) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 44239) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 44239)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_44359 : ∀ k : Nat,
    iterate (65536 * k + 44359) 26 = 59049 * k + 39970 ∧
      59049 * k + 39970 < 65536 * k + 44359 := by
  intro k
  have h1 : C (65536 * k + 44359) = 196608 * k + 133078 := by
    unfold C
    simp [show (65536 * k + 44359) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 133078) = 98304 * k + 66539 := by
    unfold C
    simp [show (196608 * k + 133078) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 66539) = 294912 * k + 199618 := by
    unfold C
    simp [show (98304 * k + 66539) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 199618) = 147456 * k + 99809 := by
    unfold C
    simp [show (294912 * k + 199618) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 99809) = 442368 * k + 299428 := by
    unfold C
    simp [show (147456 * k + 99809) % 2 ≠ 0 by omega]
    omega
  have h6 : C (442368 * k + 299428) = 221184 * k + 149714 := by
    unfold C
    simp [show (442368 * k + 299428) % 2 = 0 by omega]
    omega
  have h7 : C (221184 * k + 149714) = 110592 * k + 74857 := by
    unfold C
    simp [show (221184 * k + 149714) % 2 = 0 by omega]
    omega
  have h8 : C (110592 * k + 74857) = 331776 * k + 224572 := by
    unfold C
    simp [show (110592 * k + 74857) % 2 ≠ 0 by omega]
    omega
  have h9 : C (331776 * k + 224572) = 165888 * k + 112286 := by
    unfold C
    simp [show (331776 * k + 224572) % 2 = 0 by omega]
    omega
  have h10 : C (165888 * k + 112286) = 82944 * k + 56143 := by
    unfold C
    simp [show (165888 * k + 112286) % 2 = 0 by omega]
    omega
  have h11 : C (82944 * k + 56143) = 248832 * k + 168430 := by
    unfold C
    simp [show (82944 * k + 56143) % 2 ≠ 0 by omega]
    omega
  have h12 : C (248832 * k + 168430) = 124416 * k + 84215 := by
    unfold C
    simp [show (248832 * k + 168430) % 2 = 0 by omega]
    omega
  have h13 : C (124416 * k + 84215) = 373248 * k + 252646 := by
    unfold C
    simp [show (124416 * k + 84215) % 2 ≠ 0 by omega]
    omega
  have h14 : C (373248 * k + 252646) = 186624 * k + 126323 := by
    unfold C
    simp [show (373248 * k + 252646) % 2 = 0 by omega]
    omega
  have h15 : C (186624 * k + 126323) = 559872 * k + 378970 := by
    unfold C
    simp [show (186624 * k + 126323) % 2 ≠ 0 by omega]
    omega
  have h16 : C (559872 * k + 378970) = 279936 * k + 189485 := by
    unfold C
    simp [show (559872 * k + 378970) % 2 = 0 by omega]
    omega
  have h17 : C (279936 * k + 189485) = 839808 * k + 568456 := by
    unfold C
    simp [show (279936 * k + 189485) % 2 ≠ 0 by omega]
    omega
  have h18 : C (839808 * k + 568456) = 419904 * k + 284228 := by
    unfold C
    simp [show (839808 * k + 568456) % 2 = 0 by omega]
    omega
  have h19 : C (419904 * k + 284228) = 209952 * k + 142114 := by
    unfold C
    simp [show (419904 * k + 284228) % 2 = 0 by omega]
    omega
  have h20 : C (209952 * k + 142114) = 104976 * k + 71057 := by
    unfold C
    simp [show (209952 * k + 142114) % 2 = 0 by omega]
    omega
  have h21 : C (104976 * k + 71057) = 314928 * k + 213172 := by
    unfold C
    simp [show (104976 * k + 71057) % 2 ≠ 0 by omega]
    omega
  have h22 : C (314928 * k + 213172) = 157464 * k + 106586 := by
    unfold C
    simp [show (314928 * k + 213172) % 2 = 0 by omega]
    omega
  have h23 : C (157464 * k + 106586) = 78732 * k + 53293 := by
    unfold C
    simp [show (157464 * k + 106586) % 2 = 0 by omega]
    omega
  have h24 : C (78732 * k + 53293) = 236196 * k + 159880 := by
    unfold C
    simp [show (78732 * k + 53293) % 2 ≠ 0 by omega]
    omega
  have h25 : C (236196 * k + 159880) = 118098 * k + 79940 := by
    unfold C
    simp [show (236196 * k + 159880) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 79940) = 59049 * k + 39970 := by
    unfold C
    simp [show (118098 * k + 79940) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 44359) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 44359)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_44699 : ∀ k : Nat,
    iterate (65536 * k + 44699) 26 = 59049 * k + 40276 ∧
      59049 * k + 40276 < 65536 * k + 44699 := by
  intro k
  have h1 : C (65536 * k + 44699) = 196608 * k + 134098 := by
    unfold C
    simp [show (65536 * k + 44699) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 134098) = 98304 * k + 67049 := by
    unfold C
    simp [show (196608 * k + 134098) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 67049) = 294912 * k + 201148 := by
    unfold C
    simp [show (98304 * k + 67049) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 201148) = 147456 * k + 100574 := by
    unfold C
    simp [show (294912 * k + 201148) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 100574) = 73728 * k + 50287 := by
    unfold C
    simp [show (147456 * k + 100574) % 2 = 0 by omega]
    omega
  have h6 : C (73728 * k + 50287) = 221184 * k + 150862 := by
    unfold C
    simp [show (73728 * k + 50287) % 2 ≠ 0 by omega]
    omega
  have h7 : C (221184 * k + 150862) = 110592 * k + 75431 := by
    unfold C
    simp [show (221184 * k + 150862) % 2 = 0 by omega]
    omega
  have h8 : C (110592 * k + 75431) = 331776 * k + 226294 := by
    unfold C
    simp [show (110592 * k + 75431) % 2 ≠ 0 by omega]
    omega
  have h9 : C (331776 * k + 226294) = 165888 * k + 113147 := by
    unfold C
    simp [show (331776 * k + 226294) % 2 = 0 by omega]
    omega
  have h10 : C (165888 * k + 113147) = 497664 * k + 339442 := by
    unfold C
    simp [show (165888 * k + 113147) % 2 ≠ 0 by omega]
    omega
  have h11 : C (497664 * k + 339442) = 248832 * k + 169721 := by
    unfold C
    simp [show (497664 * k + 339442) % 2 = 0 by omega]
    omega
  have h12 : C (248832 * k + 169721) = 746496 * k + 509164 := by
    unfold C
    simp [show (248832 * k + 169721) % 2 ≠ 0 by omega]
    omega
  have h13 : C (746496 * k + 509164) = 373248 * k + 254582 := by
    unfold C
    simp [show (746496 * k + 509164) % 2 = 0 by omega]
    omega
  have h14 : C (373248 * k + 254582) = 186624 * k + 127291 := by
    unfold C
    simp [show (373248 * k + 254582) % 2 = 0 by omega]
    omega
  have h15 : C (186624 * k + 127291) = 559872 * k + 381874 := by
    unfold C
    simp [show (186624 * k + 127291) % 2 ≠ 0 by omega]
    omega
  have h16 : C (559872 * k + 381874) = 279936 * k + 190937 := by
    unfold C
    simp [show (559872 * k + 381874) % 2 = 0 by omega]
    omega
  have h17 : C (279936 * k + 190937) = 839808 * k + 572812 := by
    unfold C
    simp [show (279936 * k + 190937) % 2 ≠ 0 by omega]
    omega
  have h18 : C (839808 * k + 572812) = 419904 * k + 286406 := by
    unfold C
    simp [show (839808 * k + 572812) % 2 = 0 by omega]
    omega
  have h19 : C (419904 * k + 286406) = 209952 * k + 143203 := by
    unfold C
    simp [show (419904 * k + 286406) % 2 = 0 by omega]
    omega
  have h20 : C (209952 * k + 143203) = 629856 * k + 429610 := by
    unfold C
    simp [show (209952 * k + 143203) % 2 ≠ 0 by omega]
    omega
  have h21 : C (629856 * k + 429610) = 314928 * k + 214805 := by
    unfold C
    simp [show (629856 * k + 429610) % 2 = 0 by omega]
    omega
  have h22 : C (314928 * k + 214805) = 944784 * k + 644416 := by
    unfold C
    simp [show (314928 * k + 214805) % 2 ≠ 0 by omega]
    omega
  have h23 : C (944784 * k + 644416) = 472392 * k + 322208 := by
    unfold C
    simp [show (944784 * k + 644416) % 2 = 0 by omega]
    omega
  have h24 : C (472392 * k + 322208) = 236196 * k + 161104 := by
    unfold C
    simp [show (472392 * k + 322208) % 2 = 0 by omega]
    omega
  have h25 : C (236196 * k + 161104) = 118098 * k + 80552 := by
    unfold C
    simp [show (236196 * k + 161104) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 80552) = 59049 * k + 40276 := by
    unfold C
    simp [show (118098 * k + 80552) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 44699) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 44699)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_44959 : ∀ k : Nat,
    iterate (65536 * k + 44959) 26 = 59049 * k + 40510 ∧
      59049 * k + 40510 < 65536 * k + 44959 := by
  intro k
  have h1 : C (65536 * k + 44959) = 196608 * k + 134878 := by
    unfold C
    simp [show (65536 * k + 44959) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 134878) = 98304 * k + 67439 := by
    unfold C
    simp [show (196608 * k + 134878) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 67439) = 294912 * k + 202318 := by
    unfold C
    simp [show (98304 * k + 67439) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 202318) = 147456 * k + 101159 := by
    unfold C
    simp [show (294912 * k + 202318) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 101159) = 442368 * k + 303478 := by
    unfold C
    simp [show (147456 * k + 101159) % 2 ≠ 0 by omega]
    omega
  have h6 : C (442368 * k + 303478) = 221184 * k + 151739 := by
    unfold C
    simp [show (442368 * k + 303478) % 2 = 0 by omega]
    omega
  have h7 : C (221184 * k + 151739) = 663552 * k + 455218 := by
    unfold C
    simp [show (221184 * k + 151739) % 2 ≠ 0 by omega]
    omega
  have h8 : C (663552 * k + 455218) = 331776 * k + 227609 := by
    unfold C
    simp [show (663552 * k + 455218) % 2 = 0 by omega]
    omega
  have h9 : C (331776 * k + 227609) = 995328 * k + 682828 := by
    unfold C
    simp [show (331776 * k + 227609) % 2 ≠ 0 by omega]
    omega
  have h10 : C (995328 * k + 682828) = 497664 * k + 341414 := by
    unfold C
    simp [show (995328 * k + 682828) % 2 = 0 by omega]
    omega
  have h11 : C (497664 * k + 341414) = 248832 * k + 170707 := by
    unfold C
    simp [show (497664 * k + 341414) % 2 = 0 by omega]
    omega
  have h12 : C (248832 * k + 170707) = 746496 * k + 512122 := by
    unfold C
    simp [show (248832 * k + 170707) % 2 ≠ 0 by omega]
    omega
  have h13 : C (746496 * k + 512122) = 373248 * k + 256061 := by
    unfold C
    simp [show (746496 * k + 512122) % 2 = 0 by omega]
    omega
  have h14 : C (373248 * k + 256061) = 1119744 * k + 768184 := by
    unfold C
    simp [show (373248 * k + 256061) % 2 ≠ 0 by omega]
    omega
  have h15 : C (1119744 * k + 768184) = 559872 * k + 384092 := by
    unfold C
    simp [show (1119744 * k + 768184) % 2 = 0 by omega]
    omega
  have h16 : C (559872 * k + 384092) = 279936 * k + 192046 := by
    unfold C
    simp [show (559872 * k + 384092) % 2 = 0 by omega]
    omega
  have h17 : C (279936 * k + 192046) = 139968 * k + 96023 := by
    unfold C
    simp [show (279936 * k + 192046) % 2 = 0 by omega]
    omega
  have h18 : C (139968 * k + 96023) = 419904 * k + 288070 := by
    unfold C
    simp [show (139968 * k + 96023) % 2 ≠ 0 by omega]
    omega
  have h19 : C (419904 * k + 288070) = 209952 * k + 144035 := by
    unfold C
    simp [show (419904 * k + 288070) % 2 = 0 by omega]
    omega
  have h20 : C (209952 * k + 144035) = 629856 * k + 432106 := by
    unfold C
    simp [show (209952 * k + 144035) % 2 ≠ 0 by omega]
    omega
  have h21 : C (629856 * k + 432106) = 314928 * k + 216053 := by
    unfold C
    simp [show (629856 * k + 432106) % 2 = 0 by omega]
    omega
  have h22 : C (314928 * k + 216053) = 944784 * k + 648160 := by
    unfold C
    simp [show (314928 * k + 216053) % 2 ≠ 0 by omega]
    omega
  have h23 : C (944784 * k + 648160) = 472392 * k + 324080 := by
    unfold C
    simp [show (944784 * k + 648160) % 2 = 0 by omega]
    omega
  have h24 : C (472392 * k + 324080) = 236196 * k + 162040 := by
    unfold C
    simp [show (472392 * k + 324080) % 2 = 0 by omega]
    omega
  have h25 : C (236196 * k + 162040) = 118098 * k + 81020 := by
    unfold C
    simp [show (236196 * k + 162040) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 81020) = 59049 * k + 40510 := by
    unfold C
    simp [show (118098 * k + 81020) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 44959) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 44959)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_45083 : ∀ k : Nat,
    iterate (65536 * k + 45083) 26 = 59049 * k + 40622 ∧
      59049 * k + 40622 < 65536 * k + 45083 := by
  intro k
  have h1 : C (65536 * k + 45083) = 196608 * k + 135250 := by
    unfold C
    simp [show (65536 * k + 45083) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 135250) = 98304 * k + 67625 := by
    unfold C
    simp [show (196608 * k + 135250) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 67625) = 294912 * k + 202876 := by
    unfold C
    simp [show (98304 * k + 67625) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 202876) = 147456 * k + 101438 := by
    unfold C
    simp [show (294912 * k + 202876) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 101438) = 73728 * k + 50719 := by
    unfold C
    simp [show (147456 * k + 101438) % 2 = 0 by omega]
    omega
  have h6 : C (73728 * k + 50719) = 221184 * k + 152158 := by
    unfold C
    simp [show (73728 * k + 50719) % 2 ≠ 0 by omega]
    omega
  have h7 : C (221184 * k + 152158) = 110592 * k + 76079 := by
    unfold C
    simp [show (221184 * k + 152158) % 2 = 0 by omega]
    omega
  have h8 : C (110592 * k + 76079) = 331776 * k + 228238 := by
    unfold C
    simp [show (110592 * k + 76079) % 2 ≠ 0 by omega]
    omega
  have h9 : C (331776 * k + 228238) = 165888 * k + 114119 := by
    unfold C
    simp [show (331776 * k + 228238) % 2 = 0 by omega]
    omega
  have h10 : C (165888 * k + 114119) = 497664 * k + 342358 := by
    unfold C
    simp [show (165888 * k + 114119) % 2 ≠ 0 by omega]
    omega
  have h11 : C (497664 * k + 342358) = 248832 * k + 171179 := by
    unfold C
    simp [show (497664 * k + 342358) % 2 = 0 by omega]
    omega
  have h12 : C (248832 * k + 171179) = 746496 * k + 513538 := by
    unfold C
    simp [show (248832 * k + 171179) % 2 ≠ 0 by omega]
    omega
  have h13 : C (746496 * k + 513538) = 373248 * k + 256769 := by
    unfold C
    simp [show (746496 * k + 513538) % 2 = 0 by omega]
    omega
  have h14 : C (373248 * k + 256769) = 1119744 * k + 770308 := by
    unfold C
    simp [show (373248 * k + 256769) % 2 ≠ 0 by omega]
    omega
  have h15 : C (1119744 * k + 770308) = 559872 * k + 385154 := by
    unfold C
    simp [show (1119744 * k + 770308) % 2 = 0 by omega]
    omega
  have h16 : C (559872 * k + 385154) = 279936 * k + 192577 := by
    unfold C
    simp [show (559872 * k + 385154) % 2 = 0 by omega]
    omega
  have h17 : C (279936 * k + 192577) = 839808 * k + 577732 := by
    unfold C
    simp [show (279936 * k + 192577) % 2 ≠ 0 by omega]
    omega
  have h18 : C (839808 * k + 577732) = 419904 * k + 288866 := by
    unfold C
    simp [show (839808 * k + 577732) % 2 = 0 by omega]
    omega
  have h19 : C (419904 * k + 288866) = 209952 * k + 144433 := by
    unfold C
    simp [show (419904 * k + 288866) % 2 = 0 by omega]
    omega
  have h20 : C (209952 * k + 144433) = 629856 * k + 433300 := by
    unfold C
    simp [show (209952 * k + 144433) % 2 ≠ 0 by omega]
    omega
  have h21 : C (629856 * k + 433300) = 314928 * k + 216650 := by
    unfold C
    simp [show (629856 * k + 433300) % 2 = 0 by omega]
    omega
  have h22 : C (314928 * k + 216650) = 157464 * k + 108325 := by
    unfold C
    simp [show (314928 * k + 216650) % 2 = 0 by omega]
    omega
  have h23 : C (157464 * k + 108325) = 472392 * k + 324976 := by
    unfold C
    simp [show (157464 * k + 108325) % 2 ≠ 0 by omega]
    omega
  have h24 : C (472392 * k + 324976) = 236196 * k + 162488 := by
    unfold C
    simp [show (472392 * k + 324976) % 2 = 0 by omega]
    omega
  have h25 : C (236196 * k + 162488) = 118098 * k + 81244 := by
    unfold C
    simp [show (236196 * k + 162488) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 81244) = 59049 * k + 40622 := by
    unfold C
    simp [show (118098 * k + 81244) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 45083) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 45083)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_45103 : ∀ k : Nat,
    iterate (65536 * k + 45103) 26 = 59049 * k + 40640 ∧
      59049 * k + 40640 < 65536 * k + 45103 := by
  intro k
  have h1 : C (65536 * k + 45103) = 196608 * k + 135310 := by
    unfold C
    simp [show (65536 * k + 45103) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 135310) = 98304 * k + 67655 := by
    unfold C
    simp [show (196608 * k + 135310) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 67655) = 294912 * k + 202966 := by
    unfold C
    simp [show (98304 * k + 67655) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 202966) = 147456 * k + 101483 := by
    unfold C
    simp [show (294912 * k + 202966) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 101483) = 442368 * k + 304450 := by
    unfold C
    simp [show (147456 * k + 101483) % 2 ≠ 0 by omega]
    omega
  have h6 : C (442368 * k + 304450) = 221184 * k + 152225 := by
    unfold C
    simp [show (442368 * k + 304450) % 2 = 0 by omega]
    omega
  have h7 : C (221184 * k + 152225) = 663552 * k + 456676 := by
    unfold C
    simp [show (221184 * k + 152225) % 2 ≠ 0 by omega]
    omega
  have h8 : C (663552 * k + 456676) = 331776 * k + 228338 := by
    unfold C
    simp [show (663552 * k + 456676) % 2 = 0 by omega]
    omega
  have h9 : C (331776 * k + 228338) = 165888 * k + 114169 := by
    unfold C
    simp [show (331776 * k + 228338) % 2 = 0 by omega]
    omega
  have h10 : C (165888 * k + 114169) = 497664 * k + 342508 := by
    unfold C
    simp [show (165888 * k + 114169) % 2 ≠ 0 by omega]
    omega
  have h11 : C (497664 * k + 342508) = 248832 * k + 171254 := by
    unfold C
    simp [show (497664 * k + 342508) % 2 = 0 by omega]
    omega
  have h12 : C (248832 * k + 171254) = 124416 * k + 85627 := by
    unfold C
    simp [show (248832 * k + 171254) % 2 = 0 by omega]
    omega
  have h13 : C (124416 * k + 85627) = 373248 * k + 256882 := by
    unfold C
    simp [show (124416 * k + 85627) % 2 ≠ 0 by omega]
    omega
  have h14 : C (373248 * k + 256882) = 186624 * k + 128441 := by
    unfold C
    simp [show (373248 * k + 256882) % 2 = 0 by omega]
    omega
  have h15 : C (186624 * k + 128441) = 559872 * k + 385324 := by
    unfold C
    simp [show (186624 * k + 128441) % 2 ≠ 0 by omega]
    omega
  have h16 : C (559872 * k + 385324) = 279936 * k + 192662 := by
    unfold C
    simp [show (559872 * k + 385324) % 2 = 0 by omega]
    omega
  have h17 : C (279936 * k + 192662) = 139968 * k + 96331 := by
    unfold C
    simp [show (279936 * k + 192662) % 2 = 0 by omega]
    omega
  have h18 : C (139968 * k + 96331) = 419904 * k + 288994 := by
    unfold C
    simp [show (139968 * k + 96331) % 2 ≠ 0 by omega]
    omega
  have h19 : C (419904 * k + 288994) = 209952 * k + 144497 := by
    unfold C
    simp [show (419904 * k + 288994) % 2 = 0 by omega]
    omega
  have h20 : C (209952 * k + 144497) = 629856 * k + 433492 := by
    unfold C
    simp [show (209952 * k + 144497) % 2 ≠ 0 by omega]
    omega
  have h21 : C (629856 * k + 433492) = 314928 * k + 216746 := by
    unfold C
    simp [show (629856 * k + 433492) % 2 = 0 by omega]
    omega
  have h22 : C (314928 * k + 216746) = 157464 * k + 108373 := by
    unfold C
    simp [show (314928 * k + 216746) % 2 = 0 by omega]
    omega
  have h23 : C (157464 * k + 108373) = 472392 * k + 325120 := by
    unfold C
    simp [show (157464 * k + 108373) % 2 ≠ 0 by omega]
    omega
  have h24 : C (472392 * k + 325120) = 236196 * k + 162560 := by
    unfold C
    simp [show (472392 * k + 325120) % 2 = 0 by omega]
    omega
  have h25 : C (236196 * k + 162560) = 118098 * k + 81280 := by
    unfold C
    simp [show (236196 * k + 162560) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 81280) = 59049 * k + 40640 := by
    unfold C
    simp [show (118098 * k + 81280) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 45103) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 45103)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_45223 : ∀ k : Nat,
    iterate (65536 * k + 45223) 26 = 59049 * k + 40748 ∧
      59049 * k + 40748 < 65536 * k + 45223 := by
  intro k
  have h1 : C (65536 * k + 45223) = 196608 * k + 135670 := by
    unfold C
    simp [show (65536 * k + 45223) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 135670) = 98304 * k + 67835 := by
    unfold C
    simp [show (196608 * k + 135670) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 67835) = 294912 * k + 203506 := by
    unfold C
    simp [show (98304 * k + 67835) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 203506) = 147456 * k + 101753 := by
    unfold C
    simp [show (294912 * k + 203506) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 101753) = 442368 * k + 305260 := by
    unfold C
    simp [show (147456 * k + 101753) % 2 ≠ 0 by omega]
    omega
  have h6 : C (442368 * k + 305260) = 221184 * k + 152630 := by
    unfold C
    simp [show (442368 * k + 305260) % 2 = 0 by omega]
    omega
  have h7 : C (221184 * k + 152630) = 110592 * k + 76315 := by
    unfold C
    simp [show (221184 * k + 152630) % 2 = 0 by omega]
    omega
  have h8 : C (110592 * k + 76315) = 331776 * k + 228946 := by
    unfold C
    simp [show (110592 * k + 76315) % 2 ≠ 0 by omega]
    omega
  have h9 : C (331776 * k + 228946) = 165888 * k + 114473 := by
    unfold C
    simp [show (331776 * k + 228946) % 2 = 0 by omega]
    omega
  have h10 : C (165888 * k + 114473) = 497664 * k + 343420 := by
    unfold C
    simp [show (165888 * k + 114473) % 2 ≠ 0 by omega]
    omega
  have h11 : C (497664 * k + 343420) = 248832 * k + 171710 := by
    unfold C
    simp [show (497664 * k + 343420) % 2 = 0 by omega]
    omega
  have h12 : C (248832 * k + 171710) = 124416 * k + 85855 := by
    unfold C
    simp [show (248832 * k + 171710) % 2 = 0 by omega]
    omega
  have h13 : C (124416 * k + 85855) = 373248 * k + 257566 := by
    unfold C
    simp [show (124416 * k + 85855) % 2 ≠ 0 by omega]
    omega
  have h14 : C (373248 * k + 257566) = 186624 * k + 128783 := by
    unfold C
    simp [show (373248 * k + 257566) % 2 = 0 by omega]
    omega
  have h15 : C (186624 * k + 128783) = 559872 * k + 386350 := by
    unfold C
    simp [show (186624 * k + 128783) % 2 ≠ 0 by omega]
    omega
  have h16 : C (559872 * k + 386350) = 279936 * k + 193175 := by
    unfold C
    simp [show (559872 * k + 386350) % 2 = 0 by omega]
    omega
  have h17 : C (279936 * k + 193175) = 839808 * k + 579526 := by
    unfold C
    simp [show (279936 * k + 193175) % 2 ≠ 0 by omega]
    omega
  have h18 : C (839808 * k + 579526) = 419904 * k + 289763 := by
    unfold C
    simp [show (839808 * k + 579526) % 2 = 0 by omega]
    omega
  have h19 : C (419904 * k + 289763) = 1259712 * k + 869290 := by
    unfold C
    simp [show (419904 * k + 289763) % 2 ≠ 0 by omega]
    omega
  have h20 : C (1259712 * k + 869290) = 629856 * k + 434645 := by
    unfold C
    simp [show (1259712 * k + 869290) % 2 = 0 by omega]
    omega
  have h21 : C (629856 * k + 434645) = 1889568 * k + 1303936 := by
    unfold C
    simp [show (629856 * k + 434645) % 2 ≠ 0 by omega]
    omega
  have h22 : C (1889568 * k + 1303936) = 944784 * k + 651968 := by
    unfold C
    simp [show (1889568 * k + 1303936) % 2 = 0 by omega]
    omega
  have h23 : C (944784 * k + 651968) = 472392 * k + 325984 := by
    unfold C
    simp [show (944784 * k + 651968) % 2 = 0 by omega]
    omega
  have h24 : C (472392 * k + 325984) = 236196 * k + 162992 := by
    unfold C
    simp [show (472392 * k + 325984) % 2 = 0 by omega]
    omega
  have h25 : C (236196 * k + 162992) = 118098 * k + 81496 := by
    unfold C
    simp [show (236196 * k + 162992) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 81496) = 59049 * k + 40748 := by
    unfold C
    simp [show (118098 * k + 81496) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 45223) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 45223)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_45359 : ∀ k : Nat,
    iterate (65536 * k + 45359) 26 = 59049 * k + 40871 ∧
      59049 * k + 40871 < 65536 * k + 45359 := by
  intro k
  have h1 : C (65536 * k + 45359) = 196608 * k + 136078 := by
    unfold C
    simp [show (65536 * k + 45359) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 136078) = 98304 * k + 68039 := by
    unfold C
    simp [show (196608 * k + 136078) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 68039) = 294912 * k + 204118 := by
    unfold C
    simp [show (98304 * k + 68039) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 204118) = 147456 * k + 102059 := by
    unfold C
    simp [show (294912 * k + 204118) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 102059) = 442368 * k + 306178 := by
    unfold C
    simp [show (147456 * k + 102059) % 2 ≠ 0 by omega]
    omega
  have h6 : C (442368 * k + 306178) = 221184 * k + 153089 := by
    unfold C
    simp [show (442368 * k + 306178) % 2 = 0 by omega]
    omega
  have h7 : C (221184 * k + 153089) = 663552 * k + 459268 := by
    unfold C
    simp [show (221184 * k + 153089) % 2 ≠ 0 by omega]
    omega
  have h8 : C (663552 * k + 459268) = 331776 * k + 229634 := by
    unfold C
    simp [show (663552 * k + 459268) % 2 = 0 by omega]
    omega
  have h9 : C (331776 * k + 229634) = 165888 * k + 114817 := by
    unfold C
    simp [show (331776 * k + 229634) % 2 = 0 by omega]
    omega
  have h10 : C (165888 * k + 114817) = 497664 * k + 344452 := by
    unfold C
    simp [show (165888 * k + 114817) % 2 ≠ 0 by omega]
    omega
  have h11 : C (497664 * k + 344452) = 248832 * k + 172226 := by
    unfold C
    simp [show (497664 * k + 344452) % 2 = 0 by omega]
    omega
  have h12 : C (248832 * k + 172226) = 124416 * k + 86113 := by
    unfold C
    simp [show (248832 * k + 172226) % 2 = 0 by omega]
    omega
  have h13 : C (124416 * k + 86113) = 373248 * k + 258340 := by
    unfold C
    simp [show (124416 * k + 86113) % 2 ≠ 0 by omega]
    omega
  have h14 : C (373248 * k + 258340) = 186624 * k + 129170 := by
    unfold C
    simp [show (373248 * k + 258340) % 2 = 0 by omega]
    omega
  have h15 : C (186624 * k + 129170) = 93312 * k + 64585 := by
    unfold C
    simp [show (186624 * k + 129170) % 2 = 0 by omega]
    omega
  have h16 : C (93312 * k + 64585) = 279936 * k + 193756 := by
    unfold C
    simp [show (93312 * k + 64585) % 2 ≠ 0 by omega]
    omega
  have h17 : C (279936 * k + 193756) = 139968 * k + 96878 := by
    unfold C
    simp [show (279936 * k + 193756) % 2 = 0 by omega]
    omega
  have h18 : C (139968 * k + 96878) = 69984 * k + 48439 := by
    unfold C
    simp [show (139968 * k + 96878) % 2 = 0 by omega]
    omega
  have h19 : C (69984 * k + 48439) = 209952 * k + 145318 := by
    unfold C
    simp [show (69984 * k + 48439) % 2 ≠ 0 by omega]
    omega
  have h20 : C (209952 * k + 145318) = 104976 * k + 72659 := by
    unfold C
    simp [show (209952 * k + 145318) % 2 = 0 by omega]
    omega
  have h21 : C (104976 * k + 72659) = 314928 * k + 217978 := by
    unfold C
    simp [show (104976 * k + 72659) % 2 ≠ 0 by omega]
    omega
  have h22 : C (314928 * k + 217978) = 157464 * k + 108989 := by
    unfold C
    simp [show (314928 * k + 217978) % 2 = 0 by omega]
    omega
  have h23 : C (157464 * k + 108989) = 472392 * k + 326968 := by
    unfold C
    simp [show (157464 * k + 108989) % 2 ≠ 0 by omega]
    omega
  have h24 : C (472392 * k + 326968) = 236196 * k + 163484 := by
    unfold C
    simp [show (472392 * k + 326968) % 2 = 0 by omega]
    omega
  have h25 : C (236196 * k + 163484) = 118098 * k + 81742 := by
    unfold C
    simp [show (236196 * k + 163484) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 81742) = 59049 * k + 40871 := by
    unfold C
    simp [show (118098 * k + 81742) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 45359) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 45359)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_45503 : ∀ k : Nat,
    iterate (65536 * k + 45503) 26 = 59049 * k + 41000 ∧
      59049 * k + 41000 < 65536 * k + 45503 := by
  intro k
  have h1 : C (65536 * k + 45503) = 196608 * k + 136510 := by
    unfold C
    simp [show (65536 * k + 45503) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 136510) = 98304 * k + 68255 := by
    unfold C
    simp [show (196608 * k + 136510) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 68255) = 294912 * k + 204766 := by
    unfold C
    simp [show (98304 * k + 68255) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 204766) = 147456 * k + 102383 := by
    unfold C
    simp [show (294912 * k + 204766) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 102383) = 442368 * k + 307150 := by
    unfold C
    simp [show (147456 * k + 102383) % 2 ≠ 0 by omega]
    omega
  have h6 : C (442368 * k + 307150) = 221184 * k + 153575 := by
    unfold C
    simp [show (442368 * k + 307150) % 2 = 0 by omega]
    omega
  have h7 : C (221184 * k + 153575) = 663552 * k + 460726 := by
    unfold C
    simp [show (221184 * k + 153575) % 2 ≠ 0 by omega]
    omega
  have h8 : C (663552 * k + 460726) = 331776 * k + 230363 := by
    unfold C
    simp [show (663552 * k + 460726) % 2 = 0 by omega]
    omega
  have h9 : C (331776 * k + 230363) = 995328 * k + 691090 := by
    unfold C
    simp [show (331776 * k + 230363) % 2 ≠ 0 by omega]
    omega
  have h10 : C (995328 * k + 691090) = 497664 * k + 345545 := by
    unfold C
    simp [show (995328 * k + 691090) % 2 = 0 by omega]
    omega
  have h11 : C (497664 * k + 345545) = 1492992 * k + 1036636 := by
    unfold C
    simp [show (497664 * k + 345545) % 2 ≠ 0 by omega]
    omega
  have h12 : C (1492992 * k + 1036636) = 746496 * k + 518318 := by
    unfold C
    simp [show (1492992 * k + 1036636) % 2 = 0 by omega]
    omega
  have h13 : C (746496 * k + 518318) = 373248 * k + 259159 := by
    unfold C
    simp [show (746496 * k + 518318) % 2 = 0 by omega]
    omega
  have h14 : C (373248 * k + 259159) = 1119744 * k + 777478 := by
    unfold C
    simp [show (373248 * k + 259159) % 2 ≠ 0 by omega]
    omega
  have h15 : C (1119744 * k + 777478) = 559872 * k + 388739 := by
    unfold C
    simp [show (1119744 * k + 777478) % 2 = 0 by omega]
    omega
  have h16 : C (559872 * k + 388739) = 1679616 * k + 1166218 := by
    unfold C
    simp [show (559872 * k + 388739) % 2 ≠ 0 by omega]
    omega
  have h17 : C (1679616 * k + 1166218) = 839808 * k + 583109 := by
    unfold C
    simp [show (1679616 * k + 1166218) % 2 = 0 by omega]
    omega
  have h18 : C (839808 * k + 583109) = 2519424 * k + 1749328 := by
    unfold C
    simp [show (839808 * k + 583109) % 2 ≠ 0 by omega]
    omega
  have h19 : C (2519424 * k + 1749328) = 1259712 * k + 874664 := by
    unfold C
    simp [show (2519424 * k + 1749328) % 2 = 0 by omega]
    omega
  have h20 : C (1259712 * k + 874664) = 629856 * k + 437332 := by
    unfold C
    simp [show (1259712 * k + 874664) % 2 = 0 by omega]
    omega
  have h21 : C (629856 * k + 437332) = 314928 * k + 218666 := by
    unfold C
    simp [show (629856 * k + 437332) % 2 = 0 by omega]
    omega
  have h22 : C (314928 * k + 218666) = 157464 * k + 109333 := by
    unfold C
    simp [show (314928 * k + 218666) % 2 = 0 by omega]
    omega
  have h23 : C (157464 * k + 109333) = 472392 * k + 328000 := by
    unfold C
    simp [show (157464 * k + 109333) % 2 ≠ 0 by omega]
    omega
  have h24 : C (472392 * k + 328000) = 236196 * k + 164000 := by
    unfold C
    simp [show (472392 * k + 328000) % 2 = 0 by omega]
    omega
  have h25 : C (236196 * k + 164000) = 118098 * k + 82000 := by
    unfold C
    simp [show (236196 * k + 164000) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 82000) = 59049 * k + 41000 := by
    unfold C
    simp [show (118098 * k + 82000) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 45503) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 45503)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_45535 : ∀ k : Nat,
    iterate (65536 * k + 45535) 26 = 59049 * k + 41029 ∧
      59049 * k + 41029 < 65536 * k + 45535 := by
  intro k
  have h1 : C (65536 * k + 45535) = 196608 * k + 136606 := by
    unfold C
    simp [show (65536 * k + 45535) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 136606) = 98304 * k + 68303 := by
    unfold C
    simp [show (196608 * k + 136606) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 68303) = 294912 * k + 204910 := by
    unfold C
    simp [show (98304 * k + 68303) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 204910) = 147456 * k + 102455 := by
    unfold C
    simp [show (294912 * k + 204910) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 102455) = 442368 * k + 307366 := by
    unfold C
    simp [show (147456 * k + 102455) % 2 ≠ 0 by omega]
    omega
  have h6 : C (442368 * k + 307366) = 221184 * k + 153683 := by
    unfold C
    simp [show (442368 * k + 307366) % 2 = 0 by omega]
    omega
  have h7 : C (221184 * k + 153683) = 663552 * k + 461050 := by
    unfold C
    simp [show (221184 * k + 153683) % 2 ≠ 0 by omega]
    omega
  have h8 : C (663552 * k + 461050) = 331776 * k + 230525 := by
    unfold C
    simp [show (663552 * k + 461050) % 2 = 0 by omega]
    omega
  have h9 : C (331776 * k + 230525) = 995328 * k + 691576 := by
    unfold C
    simp [show (331776 * k + 230525) % 2 ≠ 0 by omega]
    omega
  have h10 : C (995328 * k + 691576) = 497664 * k + 345788 := by
    unfold C
    simp [show (995328 * k + 691576) % 2 = 0 by omega]
    omega
  have h11 : C (497664 * k + 345788) = 248832 * k + 172894 := by
    unfold C
    simp [show (497664 * k + 345788) % 2 = 0 by omega]
    omega
  have h12 : C (248832 * k + 172894) = 124416 * k + 86447 := by
    unfold C
    simp [show (248832 * k + 172894) % 2 = 0 by omega]
    omega
  have h13 : C (124416 * k + 86447) = 373248 * k + 259342 := by
    unfold C
    simp [show (124416 * k + 86447) % 2 ≠ 0 by omega]
    omega
  have h14 : C (373248 * k + 259342) = 186624 * k + 129671 := by
    unfold C
    simp [show (373248 * k + 259342) % 2 = 0 by omega]
    omega
  have h15 : C (186624 * k + 129671) = 559872 * k + 389014 := by
    unfold C
    simp [show (186624 * k + 129671) % 2 ≠ 0 by omega]
    omega
  have h16 : C (559872 * k + 389014) = 279936 * k + 194507 := by
    unfold C
    simp [show (559872 * k + 389014) % 2 = 0 by omega]
    omega
  have h17 : C (279936 * k + 194507) = 839808 * k + 583522 := by
    unfold C
    simp [show (279936 * k + 194507) % 2 ≠ 0 by omega]
    omega
  have h18 : C (839808 * k + 583522) = 419904 * k + 291761 := by
    unfold C
    simp [show (839808 * k + 583522) % 2 = 0 by omega]
    omega
  have h19 : C (419904 * k + 291761) = 1259712 * k + 875284 := by
    unfold C
    simp [show (419904 * k + 291761) % 2 ≠ 0 by omega]
    omega
  have h20 : C (1259712 * k + 875284) = 629856 * k + 437642 := by
    unfold C
    simp [show (1259712 * k + 875284) % 2 = 0 by omega]
    omega
  have h21 : C (629856 * k + 437642) = 314928 * k + 218821 := by
    unfold C
    simp [show (629856 * k + 437642) % 2 = 0 by omega]
    omega
  have h22 : C (314928 * k + 218821) = 944784 * k + 656464 := by
    unfold C
    simp [show (314928 * k + 218821) % 2 ≠ 0 by omega]
    omega
  have h23 : C (944784 * k + 656464) = 472392 * k + 328232 := by
    unfold C
    simp [show (944784 * k + 656464) % 2 = 0 by omega]
    omega
  have h24 : C (472392 * k + 328232) = 236196 * k + 164116 := by
    unfold C
    simp [show (472392 * k + 328232) % 2 = 0 by omega]
    omega
  have h25 : C (236196 * k + 164116) = 118098 * k + 82058 := by
    unfold C
    simp [show (236196 * k + 164116) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 82058) = 59049 * k + 41029 := by
    unfold C
    simp [show (118098 * k + 82058) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 45535) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 45535)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_45599 : ∀ k : Nat,
    iterate (65536 * k + 45599) 26 = 59049 * k + 41087 ∧
      59049 * k + 41087 < 65536 * k + 45599 := by
  intro k
  have h1 : C (65536 * k + 45599) = 196608 * k + 136798 := by
    unfold C
    simp [show (65536 * k + 45599) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 136798) = 98304 * k + 68399 := by
    unfold C
    simp [show (196608 * k + 136798) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 68399) = 294912 * k + 205198 := by
    unfold C
    simp [show (98304 * k + 68399) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 205198) = 147456 * k + 102599 := by
    unfold C
    simp [show (294912 * k + 205198) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 102599) = 442368 * k + 307798 := by
    unfold C
    simp [show (147456 * k + 102599) % 2 ≠ 0 by omega]
    omega
  have h6 : C (442368 * k + 307798) = 221184 * k + 153899 := by
    unfold C
    simp [show (442368 * k + 307798) % 2 = 0 by omega]
    omega
  have h7 : C (221184 * k + 153899) = 663552 * k + 461698 := by
    unfold C
    simp [show (221184 * k + 153899) % 2 ≠ 0 by omega]
    omega
  have h8 : C (663552 * k + 461698) = 331776 * k + 230849 := by
    unfold C
    simp [show (663552 * k + 461698) % 2 = 0 by omega]
    omega
  have h9 : C (331776 * k + 230849) = 995328 * k + 692548 := by
    unfold C
    simp [show (331776 * k + 230849) % 2 ≠ 0 by omega]
    omega
  have h10 : C (995328 * k + 692548) = 497664 * k + 346274 := by
    unfold C
    simp [show (995328 * k + 692548) % 2 = 0 by omega]
    omega
  have h11 : C (497664 * k + 346274) = 248832 * k + 173137 := by
    unfold C
    simp [show (497664 * k + 346274) % 2 = 0 by omega]
    omega
  have h12 : C (248832 * k + 173137) = 746496 * k + 519412 := by
    unfold C
    simp [show (248832 * k + 173137) % 2 ≠ 0 by omega]
    omega
  have h13 : C (746496 * k + 519412) = 373248 * k + 259706 := by
    unfold C
    simp [show (746496 * k + 519412) % 2 = 0 by omega]
    omega
  have h14 : C (373248 * k + 259706) = 186624 * k + 129853 := by
    unfold C
    simp [show (373248 * k + 259706) % 2 = 0 by omega]
    omega
  have h15 : C (186624 * k + 129853) = 559872 * k + 389560 := by
    unfold C
    simp [show (186624 * k + 129853) % 2 ≠ 0 by omega]
    omega
  have h16 : C (559872 * k + 389560) = 279936 * k + 194780 := by
    unfold C
    simp [show (559872 * k + 389560) % 2 = 0 by omega]
    omega
  have h17 : C (279936 * k + 194780) = 139968 * k + 97390 := by
    unfold C
    simp [show (279936 * k + 194780) % 2 = 0 by omega]
    omega
  have h18 : C (139968 * k + 97390) = 69984 * k + 48695 := by
    unfold C
    simp [show (139968 * k + 97390) % 2 = 0 by omega]
    omega
  have h19 : C (69984 * k + 48695) = 209952 * k + 146086 := by
    unfold C
    simp [show (69984 * k + 48695) % 2 ≠ 0 by omega]
    omega
  have h20 : C (209952 * k + 146086) = 104976 * k + 73043 := by
    unfold C
    simp [show (209952 * k + 146086) % 2 = 0 by omega]
    omega
  have h21 : C (104976 * k + 73043) = 314928 * k + 219130 := by
    unfold C
    simp [show (104976 * k + 73043) % 2 ≠ 0 by omega]
    omega
  have h22 : C (314928 * k + 219130) = 157464 * k + 109565 := by
    unfold C
    simp [show (314928 * k + 219130) % 2 = 0 by omega]
    omega
  have h23 : C (157464 * k + 109565) = 472392 * k + 328696 := by
    unfold C
    simp [show (157464 * k + 109565) % 2 ≠ 0 by omega]
    omega
  have h24 : C (472392 * k + 328696) = 236196 * k + 164348 := by
    unfold C
    simp [show (472392 * k + 328696) % 2 = 0 by omega]
    omega
  have h25 : C (236196 * k + 164348) = 118098 * k + 82174 := by
    unfold C
    simp [show (236196 * k + 164348) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 82174) = 59049 * k + 41087 := by
    unfold C
    simp [show (118098 * k + 82174) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 45599) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 45599)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_45679 : ∀ k : Nat,
    iterate (65536 * k + 45679) 26 = 59049 * k + 41159 ∧
      59049 * k + 41159 < 65536 * k + 45679 := by
  intro k
  have h1 : C (65536 * k + 45679) = 196608 * k + 137038 := by
    unfold C
    simp [show (65536 * k + 45679) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 137038) = 98304 * k + 68519 := by
    unfold C
    simp [show (196608 * k + 137038) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 68519) = 294912 * k + 205558 := by
    unfold C
    simp [show (98304 * k + 68519) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 205558) = 147456 * k + 102779 := by
    unfold C
    simp [show (294912 * k + 205558) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 102779) = 442368 * k + 308338 := by
    unfold C
    simp [show (147456 * k + 102779) % 2 ≠ 0 by omega]
    omega
  have h6 : C (442368 * k + 308338) = 221184 * k + 154169 := by
    unfold C
    simp [show (442368 * k + 308338) % 2 = 0 by omega]
    omega
  have h7 : C (221184 * k + 154169) = 663552 * k + 462508 := by
    unfold C
    simp [show (221184 * k + 154169) % 2 ≠ 0 by omega]
    omega
  have h8 : C (663552 * k + 462508) = 331776 * k + 231254 := by
    unfold C
    simp [show (663552 * k + 462508) % 2 = 0 by omega]
    omega
  have h9 : C (331776 * k + 231254) = 165888 * k + 115627 := by
    unfold C
    simp [show (331776 * k + 231254) % 2 = 0 by omega]
    omega
  have h10 : C (165888 * k + 115627) = 497664 * k + 346882 := by
    unfold C
    simp [show (165888 * k + 115627) % 2 ≠ 0 by omega]
    omega
  have h11 : C (497664 * k + 346882) = 248832 * k + 173441 := by
    unfold C
    simp [show (497664 * k + 346882) % 2 = 0 by omega]
    omega
  have h12 : C (248832 * k + 173441) = 746496 * k + 520324 := by
    unfold C
    simp [show (248832 * k + 173441) % 2 ≠ 0 by omega]
    omega
  have h13 : C (746496 * k + 520324) = 373248 * k + 260162 := by
    unfold C
    simp [show (746496 * k + 520324) % 2 = 0 by omega]
    omega
  have h14 : C (373248 * k + 260162) = 186624 * k + 130081 := by
    unfold C
    simp [show (373248 * k + 260162) % 2 = 0 by omega]
    omega
  have h15 : C (186624 * k + 130081) = 559872 * k + 390244 := by
    unfold C
    simp [show (186624 * k + 130081) % 2 ≠ 0 by omega]
    omega
  have h16 : C (559872 * k + 390244) = 279936 * k + 195122 := by
    unfold C
    simp [show (559872 * k + 390244) % 2 = 0 by omega]
    omega
  have h17 : C (279936 * k + 195122) = 139968 * k + 97561 := by
    unfold C
    simp [show (279936 * k + 195122) % 2 = 0 by omega]
    omega
  have h18 : C (139968 * k + 97561) = 419904 * k + 292684 := by
    unfold C
    simp [show (139968 * k + 97561) % 2 ≠ 0 by omega]
    omega
  have h19 : C (419904 * k + 292684) = 209952 * k + 146342 := by
    unfold C
    simp [show (419904 * k + 292684) % 2 = 0 by omega]
    omega
  have h20 : C (209952 * k + 146342) = 104976 * k + 73171 := by
    unfold C
    simp [show (209952 * k + 146342) % 2 = 0 by omega]
    omega
  have h21 : C (104976 * k + 73171) = 314928 * k + 219514 := by
    unfold C
    simp [show (104976 * k + 73171) % 2 ≠ 0 by omega]
    omega
  have h22 : C (314928 * k + 219514) = 157464 * k + 109757 := by
    unfold C
    simp [show (314928 * k + 219514) % 2 = 0 by omega]
    omega
  have h23 : C (157464 * k + 109757) = 472392 * k + 329272 := by
    unfold C
    simp [show (157464 * k + 109757) % 2 ≠ 0 by omega]
    omega
  have h24 : C (472392 * k + 329272) = 236196 * k + 164636 := by
    unfold C
    simp [show (472392 * k + 329272) % 2 = 0 by omega]
    omega
  have h25 : C (236196 * k + 164636) = 118098 * k + 82318 := by
    unfold C
    simp [show (236196 * k + 164636) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 82318) = 59049 * k + 41159 := by
    unfold C
    simp [show (118098 * k + 82318) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 45679) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 45679)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_45799 : ∀ k : Nat,
    iterate (65536 * k + 45799) 26 = 59049 * k + 41267 ∧
      59049 * k + 41267 < 65536 * k + 45799 := by
  intro k
  have h1 : C (65536 * k + 45799) = 196608 * k + 137398 := by
    unfold C
    simp [show (65536 * k + 45799) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 137398) = 98304 * k + 68699 := by
    unfold C
    simp [show (196608 * k + 137398) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 68699) = 294912 * k + 206098 := by
    unfold C
    simp [show (98304 * k + 68699) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 206098) = 147456 * k + 103049 := by
    unfold C
    simp [show (294912 * k + 206098) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 103049) = 442368 * k + 309148 := by
    unfold C
    simp [show (147456 * k + 103049) % 2 ≠ 0 by omega]
    omega
  have h6 : C (442368 * k + 309148) = 221184 * k + 154574 := by
    unfold C
    simp [show (442368 * k + 309148) % 2 = 0 by omega]
    omega
  have h7 : C (221184 * k + 154574) = 110592 * k + 77287 := by
    unfold C
    simp [show (221184 * k + 154574) % 2 = 0 by omega]
    omega
  have h8 : C (110592 * k + 77287) = 331776 * k + 231862 := by
    unfold C
    simp [show (110592 * k + 77287) % 2 ≠ 0 by omega]
    omega
  have h9 : C (331776 * k + 231862) = 165888 * k + 115931 := by
    unfold C
    simp [show (331776 * k + 231862) % 2 = 0 by omega]
    omega
  have h10 : C (165888 * k + 115931) = 497664 * k + 347794 := by
    unfold C
    simp [show (165888 * k + 115931) % 2 ≠ 0 by omega]
    omega
  have h11 : C (497664 * k + 347794) = 248832 * k + 173897 := by
    unfold C
    simp [show (497664 * k + 347794) % 2 = 0 by omega]
    omega
  have h12 : C (248832 * k + 173897) = 746496 * k + 521692 := by
    unfold C
    simp [show (248832 * k + 173897) % 2 ≠ 0 by omega]
    omega
  have h13 : C (746496 * k + 521692) = 373248 * k + 260846 := by
    unfold C
    simp [show (746496 * k + 521692) % 2 = 0 by omega]
    omega
  have h14 : C (373248 * k + 260846) = 186624 * k + 130423 := by
    unfold C
    simp [show (373248 * k + 260846) % 2 = 0 by omega]
    omega
  have h15 : C (186624 * k + 130423) = 559872 * k + 391270 := by
    unfold C
    simp [show (186624 * k + 130423) % 2 ≠ 0 by omega]
    omega
  have h16 : C (559872 * k + 391270) = 279936 * k + 195635 := by
    unfold C
    simp [show (559872 * k + 391270) % 2 = 0 by omega]
    omega
  have h17 : C (279936 * k + 195635) = 839808 * k + 586906 := by
    unfold C
    simp [show (279936 * k + 195635) % 2 ≠ 0 by omega]
    omega
  have h18 : C (839808 * k + 586906) = 419904 * k + 293453 := by
    unfold C
    simp [show (839808 * k + 586906) % 2 = 0 by omega]
    omega
  have h19 : C (419904 * k + 293453) = 1259712 * k + 880360 := by
    unfold C
    simp [show (419904 * k + 293453) % 2 ≠ 0 by omega]
    omega
  have h20 : C (1259712 * k + 880360) = 629856 * k + 440180 := by
    unfold C
    simp [show (1259712 * k + 880360) % 2 = 0 by omega]
    omega
  have h21 : C (629856 * k + 440180) = 314928 * k + 220090 := by
    unfold C
    simp [show (629856 * k + 440180) % 2 = 0 by omega]
    omega
  have h22 : C (314928 * k + 220090) = 157464 * k + 110045 := by
    unfold C
    simp [show (314928 * k + 220090) % 2 = 0 by omega]
    omega
  have h23 : C (157464 * k + 110045) = 472392 * k + 330136 := by
    unfold C
    simp [show (157464 * k + 110045) % 2 ≠ 0 by omega]
    omega
  have h24 : C (472392 * k + 330136) = 236196 * k + 165068 := by
    unfold C
    simp [show (472392 * k + 330136) % 2 = 0 by omega]
    omega
  have h25 : C (236196 * k + 165068) = 118098 * k + 82534 := by
    unfold C
    simp [show (236196 * k + 165068) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 82534) = 59049 * k + 41267 := by
    unfold C
    simp [show (118098 * k + 82534) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 45799) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 45799)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_45851 : ∀ k : Nat,
    iterate (65536 * k + 45851) 26 = 59049 * k + 41314 ∧
      59049 * k + 41314 < 65536 * k + 45851 := by
  intro k
  have h1 : C (65536 * k + 45851) = 196608 * k + 137554 := by
    unfold C
    simp [show (65536 * k + 45851) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 137554) = 98304 * k + 68777 := by
    unfold C
    simp [show (196608 * k + 137554) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 68777) = 294912 * k + 206332 := by
    unfold C
    simp [show (98304 * k + 68777) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 206332) = 147456 * k + 103166 := by
    unfold C
    simp [show (294912 * k + 206332) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 103166) = 73728 * k + 51583 := by
    unfold C
    simp [show (147456 * k + 103166) % 2 = 0 by omega]
    omega
  have h6 : C (73728 * k + 51583) = 221184 * k + 154750 := by
    unfold C
    simp [show (73728 * k + 51583) % 2 ≠ 0 by omega]
    omega
  have h7 : C (221184 * k + 154750) = 110592 * k + 77375 := by
    unfold C
    simp [show (221184 * k + 154750) % 2 = 0 by omega]
    omega
  have h8 : C (110592 * k + 77375) = 331776 * k + 232126 := by
    unfold C
    simp [show (110592 * k + 77375) % 2 ≠ 0 by omega]
    omega
  have h9 : C (331776 * k + 232126) = 165888 * k + 116063 := by
    unfold C
    simp [show (331776 * k + 232126) % 2 = 0 by omega]
    omega
  have h10 : C (165888 * k + 116063) = 497664 * k + 348190 := by
    unfold C
    simp [show (165888 * k + 116063) % 2 ≠ 0 by omega]
    omega
  have h11 : C (497664 * k + 348190) = 248832 * k + 174095 := by
    unfold C
    simp [show (497664 * k + 348190) % 2 = 0 by omega]
    omega
  have h12 : C (248832 * k + 174095) = 746496 * k + 522286 := by
    unfold C
    simp [show (248832 * k + 174095) % 2 ≠ 0 by omega]
    omega
  have h13 : C (746496 * k + 522286) = 373248 * k + 261143 := by
    unfold C
    simp [show (746496 * k + 522286) % 2 = 0 by omega]
    omega
  have h14 : C (373248 * k + 261143) = 1119744 * k + 783430 := by
    unfold C
    simp [show (373248 * k + 261143) % 2 ≠ 0 by omega]
    omega
  have h15 : C (1119744 * k + 783430) = 559872 * k + 391715 := by
    unfold C
    simp [show (1119744 * k + 783430) % 2 = 0 by omega]
    omega
  have h16 : C (559872 * k + 391715) = 1679616 * k + 1175146 := by
    unfold C
    simp [show (559872 * k + 391715) % 2 ≠ 0 by omega]
    omega
  have h17 : C (1679616 * k + 1175146) = 839808 * k + 587573 := by
    unfold C
    simp [show (1679616 * k + 1175146) % 2 = 0 by omega]
    omega
  have h18 : C (839808 * k + 587573) = 2519424 * k + 1762720 := by
    unfold C
    simp [show (839808 * k + 587573) % 2 ≠ 0 by omega]
    omega
  have h19 : C (2519424 * k + 1762720) = 1259712 * k + 881360 := by
    unfold C
    simp [show (2519424 * k + 1762720) % 2 = 0 by omega]
    omega
  have h20 : C (1259712 * k + 881360) = 629856 * k + 440680 := by
    unfold C
    simp [show (1259712 * k + 881360) % 2 = 0 by omega]
    omega
  have h21 : C (629856 * k + 440680) = 314928 * k + 220340 := by
    unfold C
    simp [show (629856 * k + 440680) % 2 = 0 by omega]
    omega
  have h22 : C (314928 * k + 220340) = 157464 * k + 110170 := by
    unfold C
    simp [show (314928 * k + 220340) % 2 = 0 by omega]
    omega
  have h23 : C (157464 * k + 110170) = 78732 * k + 55085 := by
    unfold C
    simp [show (157464 * k + 110170) % 2 = 0 by omega]
    omega
  have h24 : C (78732 * k + 55085) = 236196 * k + 165256 := by
    unfold C
    simp [show (78732 * k + 55085) % 2 ≠ 0 by omega]
    omega
  have h25 : C (236196 * k + 165256) = 118098 * k + 82628 := by
    unfold C
    simp [show (236196 * k + 165256) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 82628) = 59049 * k + 41314 := by
    unfold C
    simp [show (118098 * k + 82628) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 45851) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 45851)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_46127 : ∀ k : Nat,
    iterate (65536 * k + 46127) 26 = 59049 * k + 41563 ∧
      59049 * k + 41563 < 65536 * k + 46127 := by
  intro k
  have h1 : C (65536 * k + 46127) = 196608 * k + 138382 := by
    unfold C
    simp [show (65536 * k + 46127) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 138382) = 98304 * k + 69191 := by
    unfold C
    simp [show (196608 * k + 138382) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 69191) = 294912 * k + 207574 := by
    unfold C
    simp [show (98304 * k + 69191) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 207574) = 147456 * k + 103787 := by
    unfold C
    simp [show (294912 * k + 207574) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 103787) = 442368 * k + 311362 := by
    unfold C
    simp [show (147456 * k + 103787) % 2 ≠ 0 by omega]
    omega
  have h6 : C (442368 * k + 311362) = 221184 * k + 155681 := by
    unfold C
    simp [show (442368 * k + 311362) % 2 = 0 by omega]
    omega
  have h7 : C (221184 * k + 155681) = 663552 * k + 467044 := by
    unfold C
    simp [show (221184 * k + 155681) % 2 ≠ 0 by omega]
    omega
  have h8 : C (663552 * k + 467044) = 331776 * k + 233522 := by
    unfold C
    simp [show (663552 * k + 467044) % 2 = 0 by omega]
    omega
  have h9 : C (331776 * k + 233522) = 165888 * k + 116761 := by
    unfold C
    simp [show (331776 * k + 233522) % 2 = 0 by omega]
    omega
  have h10 : C (165888 * k + 116761) = 497664 * k + 350284 := by
    unfold C
    simp [show (165888 * k + 116761) % 2 ≠ 0 by omega]
    omega
  have h11 : C (497664 * k + 350284) = 248832 * k + 175142 := by
    unfold C
    simp [show (497664 * k + 350284) % 2 = 0 by omega]
    omega
  have h12 : C (248832 * k + 175142) = 124416 * k + 87571 := by
    unfold C
    simp [show (248832 * k + 175142) % 2 = 0 by omega]
    omega
  have h13 : C (124416 * k + 87571) = 373248 * k + 262714 := by
    unfold C
    simp [show (124416 * k + 87571) % 2 ≠ 0 by omega]
    omega
  have h14 : C (373248 * k + 262714) = 186624 * k + 131357 := by
    unfold C
    simp [show (373248 * k + 262714) % 2 = 0 by omega]
    omega
  have h15 : C (186624 * k + 131357) = 559872 * k + 394072 := by
    unfold C
    simp [show (186624 * k + 131357) % 2 ≠ 0 by omega]
    omega
  have h16 : C (559872 * k + 394072) = 279936 * k + 197036 := by
    unfold C
    simp [show (559872 * k + 394072) % 2 = 0 by omega]
    omega
  have h17 : C (279936 * k + 197036) = 139968 * k + 98518 := by
    unfold C
    simp [show (279936 * k + 197036) % 2 = 0 by omega]
    omega
  have h18 : C (139968 * k + 98518) = 69984 * k + 49259 := by
    unfold C
    simp [show (139968 * k + 98518) % 2 = 0 by omega]
    omega
  have h19 : C (69984 * k + 49259) = 209952 * k + 147778 := by
    unfold C
    simp [show (69984 * k + 49259) % 2 ≠ 0 by omega]
    omega
  have h20 : C (209952 * k + 147778) = 104976 * k + 73889 := by
    unfold C
    simp [show (209952 * k + 147778) % 2 = 0 by omega]
    omega
  have h21 : C (104976 * k + 73889) = 314928 * k + 221668 := by
    unfold C
    simp [show (104976 * k + 73889) % 2 ≠ 0 by omega]
    omega
  have h22 : C (314928 * k + 221668) = 157464 * k + 110834 := by
    unfold C
    simp [show (314928 * k + 221668) % 2 = 0 by omega]
    omega
  have h23 : C (157464 * k + 110834) = 78732 * k + 55417 := by
    unfold C
    simp [show (157464 * k + 110834) % 2 = 0 by omega]
    omega
  have h24 : C (78732 * k + 55417) = 236196 * k + 166252 := by
    unfold C
    simp [show (78732 * k + 55417) % 2 ≠ 0 by omega]
    omega
  have h25 : C (236196 * k + 166252) = 118098 * k + 83126 := by
    unfold C
    simp [show (236196 * k + 166252) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 83126) = 59049 * k + 41563 := by
    unfold C
    simp [show (118098 * k + 83126) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 46127) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 46127)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_46247 : ∀ k : Nat,
    iterate (65536 * k + 46247) 26 = 59049 * k + 41671 ∧
      59049 * k + 41671 < 65536 * k + 46247 := by
  intro k
  have h1 : C (65536 * k + 46247) = 196608 * k + 138742 := by
    unfold C
    simp [show (65536 * k + 46247) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 138742) = 98304 * k + 69371 := by
    unfold C
    simp [show (196608 * k + 138742) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 69371) = 294912 * k + 208114 := by
    unfold C
    simp [show (98304 * k + 69371) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 208114) = 147456 * k + 104057 := by
    unfold C
    simp [show (294912 * k + 208114) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 104057) = 442368 * k + 312172 := by
    unfold C
    simp [show (147456 * k + 104057) % 2 ≠ 0 by omega]
    omega
  have h6 : C (442368 * k + 312172) = 221184 * k + 156086 := by
    unfold C
    simp [show (442368 * k + 312172) % 2 = 0 by omega]
    omega
  have h7 : C (221184 * k + 156086) = 110592 * k + 78043 := by
    unfold C
    simp [show (221184 * k + 156086) % 2 = 0 by omega]
    omega
  have h8 : C (110592 * k + 78043) = 331776 * k + 234130 := by
    unfold C
    simp [show (110592 * k + 78043) % 2 ≠ 0 by omega]
    omega
  have h9 : C (331776 * k + 234130) = 165888 * k + 117065 := by
    unfold C
    simp [show (331776 * k + 234130) % 2 = 0 by omega]
    omega
  have h10 : C (165888 * k + 117065) = 497664 * k + 351196 := by
    unfold C
    simp [show (165888 * k + 117065) % 2 ≠ 0 by omega]
    omega
  have h11 : C (497664 * k + 351196) = 248832 * k + 175598 := by
    unfold C
    simp [show (497664 * k + 351196) % 2 = 0 by omega]
    omega
  have h12 : C (248832 * k + 175598) = 124416 * k + 87799 := by
    unfold C
    simp [show (248832 * k + 175598) % 2 = 0 by omega]
    omega
  have h13 : C (124416 * k + 87799) = 373248 * k + 263398 := by
    unfold C
    simp [show (124416 * k + 87799) % 2 ≠ 0 by omega]
    omega
  have h14 : C (373248 * k + 263398) = 186624 * k + 131699 := by
    unfold C
    simp [show (373248 * k + 263398) % 2 = 0 by omega]
    omega
  have h15 : C (186624 * k + 131699) = 559872 * k + 395098 := by
    unfold C
    simp [show (186624 * k + 131699) % 2 ≠ 0 by omega]
    omega
  have h16 : C (559872 * k + 395098) = 279936 * k + 197549 := by
    unfold C
    simp [show (559872 * k + 395098) % 2 = 0 by omega]
    omega
  have h17 : C (279936 * k + 197549) = 839808 * k + 592648 := by
    unfold C
    simp [show (279936 * k + 197549) % 2 ≠ 0 by omega]
    omega
  have h18 : C (839808 * k + 592648) = 419904 * k + 296324 := by
    unfold C
    simp [show (839808 * k + 592648) % 2 = 0 by omega]
    omega
  have h19 : C (419904 * k + 296324) = 209952 * k + 148162 := by
    unfold C
    simp [show (419904 * k + 296324) % 2 = 0 by omega]
    omega
  have h20 : C (209952 * k + 148162) = 104976 * k + 74081 := by
    unfold C
    simp [show (209952 * k + 148162) % 2 = 0 by omega]
    omega
  have h21 : C (104976 * k + 74081) = 314928 * k + 222244 := by
    unfold C
    simp [show (104976 * k + 74081) % 2 ≠ 0 by omega]
    omega
  have h22 : C (314928 * k + 222244) = 157464 * k + 111122 := by
    unfold C
    simp [show (314928 * k + 222244) % 2 = 0 by omega]
    omega
  have h23 : C (157464 * k + 111122) = 78732 * k + 55561 := by
    unfold C
    simp [show (157464 * k + 111122) % 2 = 0 by omega]
    omega
  have h24 : C (78732 * k + 55561) = 236196 * k + 166684 := by
    unfold C
    simp [show (78732 * k + 55561) % 2 ≠ 0 by omega]
    omega
  have h25 : C (236196 * k + 166684) = 118098 * k + 83342 := by
    unfold C
    simp [show (236196 * k + 166684) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 83342) = 59049 * k + 41671 := by
    unfold C
    simp [show (118098 * k + 83342) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 46247) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 46247)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_46407 : ∀ k : Nat,
    iterate (65536 * k + 46407) 26 = 59049 * k + 41815 ∧
      59049 * k + 41815 < 65536 * k + 46407 := by
  intro k
  have h1 : C (65536 * k + 46407) = 196608 * k + 139222 := by
    unfold C
    simp [show (65536 * k + 46407) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 139222) = 98304 * k + 69611 := by
    unfold C
    simp [show (196608 * k + 139222) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 69611) = 294912 * k + 208834 := by
    unfold C
    simp [show (98304 * k + 69611) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 208834) = 147456 * k + 104417 := by
    unfold C
    simp [show (294912 * k + 208834) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 104417) = 442368 * k + 313252 := by
    unfold C
    simp [show (147456 * k + 104417) % 2 ≠ 0 by omega]
    omega
  have h6 : C (442368 * k + 313252) = 221184 * k + 156626 := by
    unfold C
    simp [show (442368 * k + 313252) % 2 = 0 by omega]
    omega
  have h7 : C (221184 * k + 156626) = 110592 * k + 78313 := by
    unfold C
    simp [show (221184 * k + 156626) % 2 = 0 by omega]
    omega
  have h8 : C (110592 * k + 78313) = 331776 * k + 234940 := by
    unfold C
    simp [show (110592 * k + 78313) % 2 ≠ 0 by omega]
    omega
  have h9 : C (331776 * k + 234940) = 165888 * k + 117470 := by
    unfold C
    simp [show (331776 * k + 234940) % 2 = 0 by omega]
    omega
  have h10 : C (165888 * k + 117470) = 82944 * k + 58735 := by
    unfold C
    simp [show (165888 * k + 117470) % 2 = 0 by omega]
    omega
  have h11 : C (82944 * k + 58735) = 248832 * k + 176206 := by
    unfold C
    simp [show (82944 * k + 58735) % 2 ≠ 0 by omega]
    omega
  have h12 : C (248832 * k + 176206) = 124416 * k + 88103 := by
    unfold C
    simp [show (248832 * k + 176206) % 2 = 0 by omega]
    omega
  have h13 : C (124416 * k + 88103) = 373248 * k + 264310 := by
    unfold C
    simp [show (124416 * k + 88103) % 2 ≠ 0 by omega]
    omega
  have h14 : C (373248 * k + 264310) = 186624 * k + 132155 := by
    unfold C
    simp [show (373248 * k + 264310) % 2 = 0 by omega]
    omega
  have h15 : C (186624 * k + 132155) = 559872 * k + 396466 := by
    unfold C
    simp [show (186624 * k + 132155) % 2 ≠ 0 by omega]
    omega
  have h16 : C (559872 * k + 396466) = 279936 * k + 198233 := by
    unfold C
    simp [show (559872 * k + 396466) % 2 = 0 by omega]
    omega
  have h17 : C (279936 * k + 198233) = 839808 * k + 594700 := by
    unfold C
    simp [show (279936 * k + 198233) % 2 ≠ 0 by omega]
    omega
  have h18 : C (839808 * k + 594700) = 419904 * k + 297350 := by
    unfold C
    simp [show (839808 * k + 594700) % 2 = 0 by omega]
    omega
  have h19 : C (419904 * k + 297350) = 209952 * k + 148675 := by
    unfold C
    simp [show (419904 * k + 297350) % 2 = 0 by omega]
    omega
  have h20 : C (209952 * k + 148675) = 629856 * k + 446026 := by
    unfold C
    simp [show (209952 * k + 148675) % 2 ≠ 0 by omega]
    omega
  have h21 : C (629856 * k + 446026) = 314928 * k + 223013 := by
    unfold C
    simp [show (629856 * k + 446026) % 2 = 0 by omega]
    omega
  have h22 : C (314928 * k + 223013) = 944784 * k + 669040 := by
    unfold C
    simp [show (314928 * k + 223013) % 2 ≠ 0 by omega]
    omega
  have h23 : C (944784 * k + 669040) = 472392 * k + 334520 := by
    unfold C
    simp [show (944784 * k + 669040) % 2 = 0 by omega]
    omega
  have h24 : C (472392 * k + 334520) = 236196 * k + 167260 := by
    unfold C
    simp [show (472392 * k + 334520) % 2 = 0 by omega]
    omega
  have h25 : C (236196 * k + 167260) = 118098 * k + 83630 := by
    unfold C
    simp [show (236196 * k + 167260) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 83630) = 59049 * k + 41815 := by
    unfold C
    simp [show (118098 * k + 83630) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 46407) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 46407)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_47099 : ∀ k : Nat,
    iterate (65536 * k + 47099) 26 = 59049 * k + 42439 ∧
      59049 * k + 42439 < 65536 * k + 47099 := by
  intro k
  have h1 : C (65536 * k + 47099) = 196608 * k + 141298 := by
    unfold C
    simp [show (65536 * k + 47099) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 141298) = 98304 * k + 70649 := by
    unfold C
    simp [show (196608 * k + 141298) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 70649) = 294912 * k + 211948 := by
    unfold C
    simp [show (98304 * k + 70649) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 211948) = 147456 * k + 105974 := by
    unfold C
    simp [show (294912 * k + 211948) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 105974) = 73728 * k + 52987 := by
    unfold C
    simp [show (147456 * k + 105974) % 2 = 0 by omega]
    omega
  have h6 : C (73728 * k + 52987) = 221184 * k + 158962 := by
    unfold C
    simp [show (73728 * k + 52987) % 2 ≠ 0 by omega]
    omega
  have h7 : C (221184 * k + 158962) = 110592 * k + 79481 := by
    unfold C
    simp [show (221184 * k + 158962) % 2 = 0 by omega]
    omega
  have h8 : C (110592 * k + 79481) = 331776 * k + 238444 := by
    unfold C
    simp [show (110592 * k + 79481) % 2 ≠ 0 by omega]
    omega
  have h9 : C (331776 * k + 238444) = 165888 * k + 119222 := by
    unfold C
    simp [show (331776 * k + 238444) % 2 = 0 by omega]
    omega
  have h10 : C (165888 * k + 119222) = 82944 * k + 59611 := by
    unfold C
    simp [show (165888 * k + 119222) % 2 = 0 by omega]
    omega
  have h11 : C (82944 * k + 59611) = 248832 * k + 178834 := by
    unfold C
    simp [show (82944 * k + 59611) % 2 ≠ 0 by omega]
    omega
  have h12 : C (248832 * k + 178834) = 124416 * k + 89417 := by
    unfold C
    simp [show (248832 * k + 178834) % 2 = 0 by omega]
    omega
  have h13 : C (124416 * k + 89417) = 373248 * k + 268252 := by
    unfold C
    simp [show (124416 * k + 89417) % 2 ≠ 0 by omega]
    omega
  have h14 : C (373248 * k + 268252) = 186624 * k + 134126 := by
    unfold C
    simp [show (373248 * k + 268252) % 2 = 0 by omega]
    omega
  have h15 : C (186624 * k + 134126) = 93312 * k + 67063 := by
    unfold C
    simp [show (186624 * k + 134126) % 2 = 0 by omega]
    omega
  have h16 : C (93312 * k + 67063) = 279936 * k + 201190 := by
    unfold C
    simp [show (93312 * k + 67063) % 2 ≠ 0 by omega]
    omega
  have h17 : C (279936 * k + 201190) = 139968 * k + 100595 := by
    unfold C
    simp [show (279936 * k + 201190) % 2 = 0 by omega]
    omega
  have h18 : C (139968 * k + 100595) = 419904 * k + 301786 := by
    unfold C
    simp [show (139968 * k + 100595) % 2 ≠ 0 by omega]
    omega
  have h19 : C (419904 * k + 301786) = 209952 * k + 150893 := by
    unfold C
    simp [show (419904 * k + 301786) % 2 = 0 by omega]
    omega
  have h20 : C (209952 * k + 150893) = 629856 * k + 452680 := by
    unfold C
    simp [show (209952 * k + 150893) % 2 ≠ 0 by omega]
    omega
  have h21 : C (629856 * k + 452680) = 314928 * k + 226340 := by
    unfold C
    simp [show (629856 * k + 452680) % 2 = 0 by omega]
    omega
  have h22 : C (314928 * k + 226340) = 157464 * k + 113170 := by
    unfold C
    simp [show (314928 * k + 226340) % 2 = 0 by omega]
    omega
  have h23 : C (157464 * k + 113170) = 78732 * k + 56585 := by
    unfold C
    simp [show (157464 * k + 113170) % 2 = 0 by omega]
    omega
  have h24 : C (78732 * k + 56585) = 236196 * k + 169756 := by
    unfold C
    simp [show (78732 * k + 56585) % 2 ≠ 0 by omega]
    omega
  have h25 : C (236196 * k + 169756) = 118098 * k + 84878 := by
    unfold C
    simp [show (236196 * k + 169756) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 84878) = 59049 * k + 42439 := by
    unfold C
    simp [show (118098 * k + 84878) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 47099) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 47099)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

end CollatzM16ShardQ
