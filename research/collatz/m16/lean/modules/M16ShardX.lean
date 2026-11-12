import Mathlib.Data.Nat.Prime.Basic

namespace CollatzM16ShardX

def C (n : Nat) : Nat := if n % 2 = 0 then n / 2 else 3 * n + 1

def iterate (n t : Nat) : Nat := Nat.rec n (fun _ previous => C previous) t

theorem descent_mod65536_63599 : ∀ k : Nat,
    iterate (65536 * k + 63599) 26 = 59049 * k + 57305 ∧
      59049 * k + 57305 < 65536 * k + 63599 := by
  intro k
  have h1 : C (65536 * k + 63599) = 196608 * k + 190798 := by
    unfold C
    simp [show (65536 * k + 63599) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 190798) = 98304 * k + 95399 := by
    unfold C
    simp [show (196608 * k + 190798) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 95399) = 294912 * k + 286198 := by
    unfold C
    simp [show (98304 * k + 95399) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 286198) = 147456 * k + 143099 := by
    unfold C
    simp [show (294912 * k + 286198) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 143099) = 442368 * k + 429298 := by
    unfold C
    simp [show (147456 * k + 143099) % 2 ≠ 0 by omega]
    omega
  have h6 : C (442368 * k + 429298) = 221184 * k + 214649 := by
    unfold C
    simp [show (442368 * k + 429298) % 2 = 0 by omega]
    omega
  have h7 : C (221184 * k + 214649) = 663552 * k + 643948 := by
    unfold C
    simp [show (221184 * k + 214649) % 2 ≠ 0 by omega]
    omega
  have h8 : C (663552 * k + 643948) = 331776 * k + 321974 := by
    unfold C
    simp [show (663552 * k + 643948) % 2 = 0 by omega]
    omega
  have h9 : C (331776 * k + 321974) = 165888 * k + 160987 := by
    unfold C
    simp [show (331776 * k + 321974) % 2 = 0 by omega]
    omega
  have h10 : C (165888 * k + 160987) = 497664 * k + 482962 := by
    unfold C
    simp [show (165888 * k + 160987) % 2 ≠ 0 by omega]
    omega
  have h11 : C (497664 * k + 482962) = 248832 * k + 241481 := by
    unfold C
    simp [show (497664 * k + 482962) % 2 = 0 by omega]
    omega
  have h12 : C (248832 * k + 241481) = 746496 * k + 724444 := by
    unfold C
    simp [show (248832 * k + 241481) % 2 ≠ 0 by omega]
    omega
  have h13 : C (746496 * k + 724444) = 373248 * k + 362222 := by
    unfold C
    simp [show (746496 * k + 724444) % 2 = 0 by omega]
    omega
  have h14 : C (373248 * k + 362222) = 186624 * k + 181111 := by
    unfold C
    simp [show (373248 * k + 362222) % 2 = 0 by omega]
    omega
  have h15 : C (186624 * k + 181111) = 559872 * k + 543334 := by
    unfold C
    simp [show (186624 * k + 181111) % 2 ≠ 0 by omega]
    omega
  have h16 : C (559872 * k + 543334) = 279936 * k + 271667 := by
    unfold C
    simp [show (559872 * k + 543334) % 2 = 0 by omega]
    omega
  have h17 : C (279936 * k + 271667) = 839808 * k + 815002 := by
    unfold C
    simp [show (279936 * k + 271667) % 2 ≠ 0 by omega]
    omega
  have h18 : C (839808 * k + 815002) = 419904 * k + 407501 := by
    unfold C
    simp [show (839808 * k + 815002) % 2 = 0 by omega]
    omega
  have h19 : C (419904 * k + 407501) = 1259712 * k + 1222504 := by
    unfold C
    simp [show (419904 * k + 407501) % 2 ≠ 0 by omega]
    omega
  have h20 : C (1259712 * k + 1222504) = 629856 * k + 611252 := by
    unfold C
    simp [show (1259712 * k + 1222504) % 2 = 0 by omega]
    omega
  have h21 : C (629856 * k + 611252) = 314928 * k + 305626 := by
    unfold C
    simp [show (629856 * k + 611252) % 2 = 0 by omega]
    omega
  have h22 : C (314928 * k + 305626) = 157464 * k + 152813 := by
    unfold C
    simp [show (314928 * k + 305626) % 2 = 0 by omega]
    omega
  have h23 : C (157464 * k + 152813) = 472392 * k + 458440 := by
    unfold C
    simp [show (157464 * k + 152813) % 2 ≠ 0 by omega]
    omega
  have h24 : C (472392 * k + 458440) = 236196 * k + 229220 := by
    unfold C
    simp [show (472392 * k + 458440) % 2 = 0 by omega]
    omega
  have h25 : C (236196 * k + 229220) = 118098 * k + 114610 := by
    unfold C
    simp [show (236196 * k + 229220) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 114610) = 59049 * k + 57305 := by
    unfold C
    simp [show (118098 * k + 114610) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 63599) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 63599)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_64047 : ∀ k : Nat,
    iterate (65536 * k + 64047) 26 = 59049 * k + 57709 ∧
      59049 * k + 57709 < 65536 * k + 64047 := by
  intro k
  have h1 : C (65536 * k + 64047) = 196608 * k + 192142 := by
    unfold C
    simp [show (65536 * k + 64047) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 192142) = 98304 * k + 96071 := by
    unfold C
    simp [show (196608 * k + 192142) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 96071) = 294912 * k + 288214 := by
    unfold C
    simp [show (98304 * k + 96071) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 288214) = 147456 * k + 144107 := by
    unfold C
    simp [show (294912 * k + 288214) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 144107) = 442368 * k + 432322 := by
    unfold C
    simp [show (147456 * k + 144107) % 2 ≠ 0 by omega]
    omega
  have h6 : C (442368 * k + 432322) = 221184 * k + 216161 := by
    unfold C
    simp [show (442368 * k + 432322) % 2 = 0 by omega]
    omega
  have h7 : C (221184 * k + 216161) = 663552 * k + 648484 := by
    unfold C
    simp [show (221184 * k + 216161) % 2 ≠ 0 by omega]
    omega
  have h8 : C (663552 * k + 648484) = 331776 * k + 324242 := by
    unfold C
    simp [show (663552 * k + 648484) % 2 = 0 by omega]
    omega
  have h9 : C (331776 * k + 324242) = 165888 * k + 162121 := by
    unfold C
    simp [show (331776 * k + 324242) % 2 = 0 by omega]
    omega
  have h10 : C (165888 * k + 162121) = 497664 * k + 486364 := by
    unfold C
    simp [show (165888 * k + 162121) % 2 ≠ 0 by omega]
    omega
  have h11 : C (497664 * k + 486364) = 248832 * k + 243182 := by
    unfold C
    simp [show (497664 * k + 486364) % 2 = 0 by omega]
    omega
  have h12 : C (248832 * k + 243182) = 124416 * k + 121591 := by
    unfold C
    simp [show (248832 * k + 243182) % 2 = 0 by omega]
    omega
  have h13 : C (124416 * k + 121591) = 373248 * k + 364774 := by
    unfold C
    simp [show (124416 * k + 121591) % 2 ≠ 0 by omega]
    omega
  have h14 : C (373248 * k + 364774) = 186624 * k + 182387 := by
    unfold C
    simp [show (373248 * k + 364774) % 2 = 0 by omega]
    omega
  have h15 : C (186624 * k + 182387) = 559872 * k + 547162 := by
    unfold C
    simp [show (186624 * k + 182387) % 2 ≠ 0 by omega]
    omega
  have h16 : C (559872 * k + 547162) = 279936 * k + 273581 := by
    unfold C
    simp [show (559872 * k + 547162) % 2 = 0 by omega]
    omega
  have h17 : C (279936 * k + 273581) = 839808 * k + 820744 := by
    unfold C
    simp [show (279936 * k + 273581) % 2 ≠ 0 by omega]
    omega
  have h18 : C (839808 * k + 820744) = 419904 * k + 410372 := by
    unfold C
    simp [show (839808 * k + 820744) % 2 = 0 by omega]
    omega
  have h19 : C (419904 * k + 410372) = 209952 * k + 205186 := by
    unfold C
    simp [show (419904 * k + 410372) % 2 = 0 by omega]
    omega
  have h20 : C (209952 * k + 205186) = 104976 * k + 102593 := by
    unfold C
    simp [show (209952 * k + 205186) % 2 = 0 by omega]
    omega
  have h21 : C (104976 * k + 102593) = 314928 * k + 307780 := by
    unfold C
    simp [show (104976 * k + 102593) % 2 ≠ 0 by omega]
    omega
  have h22 : C (314928 * k + 307780) = 157464 * k + 153890 := by
    unfold C
    simp [show (314928 * k + 307780) % 2 = 0 by omega]
    omega
  have h23 : C (157464 * k + 153890) = 78732 * k + 76945 := by
    unfold C
    simp [show (157464 * k + 153890) % 2 = 0 by omega]
    omega
  have h24 : C (78732 * k + 76945) = 236196 * k + 230836 := by
    unfold C
    simp [show (78732 * k + 76945) % 2 ≠ 0 by omega]
    omega
  have h25 : C (236196 * k + 230836) = 118098 * k + 115418 := by
    unfold C
    simp [show (236196 * k + 230836) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 115418) = 59049 * k + 57709 := by
    unfold C
    simp [show (118098 * k + 115418) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 64047) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 64047)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_64167 : ∀ k : Nat,
    iterate (65536 * k + 64167) 26 = 59049 * k + 57817 ∧
      59049 * k + 57817 < 65536 * k + 64167 := by
  intro k
  have h1 : C (65536 * k + 64167) = 196608 * k + 192502 := by
    unfold C
    simp [show (65536 * k + 64167) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 192502) = 98304 * k + 96251 := by
    unfold C
    simp [show (196608 * k + 192502) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 96251) = 294912 * k + 288754 := by
    unfold C
    simp [show (98304 * k + 96251) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 288754) = 147456 * k + 144377 := by
    unfold C
    simp [show (294912 * k + 288754) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 144377) = 442368 * k + 433132 := by
    unfold C
    simp [show (147456 * k + 144377) % 2 ≠ 0 by omega]
    omega
  have h6 : C (442368 * k + 433132) = 221184 * k + 216566 := by
    unfold C
    simp [show (442368 * k + 433132) % 2 = 0 by omega]
    omega
  have h7 : C (221184 * k + 216566) = 110592 * k + 108283 := by
    unfold C
    simp [show (221184 * k + 216566) % 2 = 0 by omega]
    omega
  have h8 : C (110592 * k + 108283) = 331776 * k + 324850 := by
    unfold C
    simp [show (110592 * k + 108283) % 2 ≠ 0 by omega]
    omega
  have h9 : C (331776 * k + 324850) = 165888 * k + 162425 := by
    unfold C
    simp [show (331776 * k + 324850) % 2 = 0 by omega]
    omega
  have h10 : C (165888 * k + 162425) = 497664 * k + 487276 := by
    unfold C
    simp [show (165888 * k + 162425) % 2 ≠ 0 by omega]
    omega
  have h11 : C (497664 * k + 487276) = 248832 * k + 243638 := by
    unfold C
    simp [show (497664 * k + 487276) % 2 = 0 by omega]
    omega
  have h12 : C (248832 * k + 243638) = 124416 * k + 121819 := by
    unfold C
    simp [show (248832 * k + 243638) % 2 = 0 by omega]
    omega
  have h13 : C (124416 * k + 121819) = 373248 * k + 365458 := by
    unfold C
    simp [show (124416 * k + 121819) % 2 ≠ 0 by omega]
    omega
  have h14 : C (373248 * k + 365458) = 186624 * k + 182729 := by
    unfold C
    simp [show (373248 * k + 365458) % 2 = 0 by omega]
    omega
  have h15 : C (186624 * k + 182729) = 559872 * k + 548188 := by
    unfold C
    simp [show (186624 * k + 182729) % 2 ≠ 0 by omega]
    omega
  have h16 : C (559872 * k + 548188) = 279936 * k + 274094 := by
    unfold C
    simp [show (559872 * k + 548188) % 2 = 0 by omega]
    omega
  have h17 : C (279936 * k + 274094) = 139968 * k + 137047 := by
    unfold C
    simp [show (279936 * k + 274094) % 2 = 0 by omega]
    omega
  have h18 : C (139968 * k + 137047) = 419904 * k + 411142 := by
    unfold C
    simp [show (139968 * k + 137047) % 2 ≠ 0 by omega]
    omega
  have h19 : C (419904 * k + 411142) = 209952 * k + 205571 := by
    unfold C
    simp [show (419904 * k + 411142) % 2 = 0 by omega]
    omega
  have h20 : C (209952 * k + 205571) = 629856 * k + 616714 := by
    unfold C
    simp [show (209952 * k + 205571) % 2 ≠ 0 by omega]
    omega
  have h21 : C (629856 * k + 616714) = 314928 * k + 308357 := by
    unfold C
    simp [show (629856 * k + 616714) % 2 = 0 by omega]
    omega
  have h22 : C (314928 * k + 308357) = 944784 * k + 925072 := by
    unfold C
    simp [show (314928 * k + 308357) % 2 ≠ 0 by omega]
    omega
  have h23 : C (944784 * k + 925072) = 472392 * k + 462536 := by
    unfold C
    simp [show (944784 * k + 925072) % 2 = 0 by omega]
    omega
  have h24 : C (472392 * k + 462536) = 236196 * k + 231268 := by
    unfold C
    simp [show (472392 * k + 462536) % 2 = 0 by omega]
    omega
  have h25 : C (236196 * k + 231268) = 118098 * k + 115634 := by
    unfold C
    simp [show (236196 * k + 231268) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 115634) = 59049 * k + 57817 := by
    unfold C
    simp [show (118098 * k + 115634) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 64167) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 64167)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_64207 : ∀ k : Nat,
    iterate (65536 * k + 64207) 26 = 59049 * k + 57853 ∧
      59049 * k + 57853 < 65536 * k + 64207 := by
  intro k
  have h1 : C (65536 * k + 64207) = 196608 * k + 192622 := by
    unfold C
    simp [show (65536 * k + 64207) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 192622) = 98304 * k + 96311 := by
    unfold C
    simp [show (196608 * k + 192622) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 96311) = 294912 * k + 288934 := by
    unfold C
    simp [show (98304 * k + 96311) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 288934) = 147456 * k + 144467 := by
    unfold C
    simp [show (294912 * k + 288934) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 144467) = 442368 * k + 433402 := by
    unfold C
    simp [show (147456 * k + 144467) % 2 ≠ 0 by omega]
    omega
  have h6 : C (442368 * k + 433402) = 221184 * k + 216701 := by
    unfold C
    simp [show (442368 * k + 433402) % 2 = 0 by omega]
    omega
  have h7 : C (221184 * k + 216701) = 663552 * k + 650104 := by
    unfold C
    simp [show (221184 * k + 216701) % 2 ≠ 0 by omega]
    omega
  have h8 : C (663552 * k + 650104) = 331776 * k + 325052 := by
    unfold C
    simp [show (663552 * k + 650104) % 2 = 0 by omega]
    omega
  have h9 : C (331776 * k + 325052) = 165888 * k + 162526 := by
    unfold C
    simp [show (331776 * k + 325052) % 2 = 0 by omega]
    omega
  have h10 : C (165888 * k + 162526) = 82944 * k + 81263 := by
    unfold C
    simp [show (165888 * k + 162526) % 2 = 0 by omega]
    omega
  have h11 : C (82944 * k + 81263) = 248832 * k + 243790 := by
    unfold C
    simp [show (82944 * k + 81263) % 2 ≠ 0 by omega]
    omega
  have h12 : C (248832 * k + 243790) = 124416 * k + 121895 := by
    unfold C
    simp [show (248832 * k + 243790) % 2 = 0 by omega]
    omega
  have h13 : C (124416 * k + 121895) = 373248 * k + 365686 := by
    unfold C
    simp [show (124416 * k + 121895) % 2 ≠ 0 by omega]
    omega
  have h14 : C (373248 * k + 365686) = 186624 * k + 182843 := by
    unfold C
    simp [show (373248 * k + 365686) % 2 = 0 by omega]
    omega
  have h15 : C (186624 * k + 182843) = 559872 * k + 548530 := by
    unfold C
    simp [show (186624 * k + 182843) % 2 ≠ 0 by omega]
    omega
  have h16 : C (559872 * k + 548530) = 279936 * k + 274265 := by
    unfold C
    simp [show (559872 * k + 548530) % 2 = 0 by omega]
    omega
  have h17 : C (279936 * k + 274265) = 839808 * k + 822796 := by
    unfold C
    simp [show (279936 * k + 274265) % 2 ≠ 0 by omega]
    omega
  have h18 : C (839808 * k + 822796) = 419904 * k + 411398 := by
    unfold C
    simp [show (839808 * k + 822796) % 2 = 0 by omega]
    omega
  have h19 : C (419904 * k + 411398) = 209952 * k + 205699 := by
    unfold C
    simp [show (419904 * k + 411398) % 2 = 0 by omega]
    omega
  have h20 : C (209952 * k + 205699) = 629856 * k + 617098 := by
    unfold C
    simp [show (209952 * k + 205699) % 2 ≠ 0 by omega]
    omega
  have h21 : C (629856 * k + 617098) = 314928 * k + 308549 := by
    unfold C
    simp [show (629856 * k + 617098) % 2 = 0 by omega]
    omega
  have h22 : C (314928 * k + 308549) = 944784 * k + 925648 := by
    unfold C
    simp [show (314928 * k + 308549) % 2 ≠ 0 by omega]
    omega
  have h23 : C (944784 * k + 925648) = 472392 * k + 462824 := by
    unfold C
    simp [show (944784 * k + 925648) % 2 = 0 by omega]
    omega
  have h24 : C (472392 * k + 462824) = 236196 * k + 231412 := by
    unfold C
    simp [show (472392 * k + 462824) % 2 = 0 by omega]
    omega
  have h25 : C (236196 * k + 231412) = 118098 * k + 115706 := by
    unfold C
    simp [show (236196 * k + 231412) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 115706) = 59049 * k + 57853 := by
    unfold C
    simp [show (118098 * k + 115706) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 64207) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 64207)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_64251 : ∀ k : Nat,
    iterate (65536 * k + 64251) 26 = 59049 * k + 57893 ∧
      59049 * k + 57893 < 65536 * k + 64251 := by
  intro k
  have h1 : C (65536 * k + 64251) = 196608 * k + 192754 := by
    unfold C
    simp [show (65536 * k + 64251) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 192754) = 98304 * k + 96377 := by
    unfold C
    simp [show (196608 * k + 192754) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 96377) = 294912 * k + 289132 := by
    unfold C
    simp [show (98304 * k + 96377) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 289132) = 147456 * k + 144566 := by
    unfold C
    simp [show (294912 * k + 289132) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 144566) = 73728 * k + 72283 := by
    unfold C
    simp [show (147456 * k + 144566) % 2 = 0 by omega]
    omega
  have h6 : C (73728 * k + 72283) = 221184 * k + 216850 := by
    unfold C
    simp [show (73728 * k + 72283) % 2 ≠ 0 by omega]
    omega
  have h7 : C (221184 * k + 216850) = 110592 * k + 108425 := by
    unfold C
    simp [show (221184 * k + 216850) % 2 = 0 by omega]
    omega
  have h8 : C (110592 * k + 108425) = 331776 * k + 325276 := by
    unfold C
    simp [show (110592 * k + 108425) % 2 ≠ 0 by omega]
    omega
  have h9 : C (331776 * k + 325276) = 165888 * k + 162638 := by
    unfold C
    simp [show (331776 * k + 325276) % 2 = 0 by omega]
    omega
  have h10 : C (165888 * k + 162638) = 82944 * k + 81319 := by
    unfold C
    simp [show (165888 * k + 162638) % 2 = 0 by omega]
    omega
  have h11 : C (82944 * k + 81319) = 248832 * k + 243958 := by
    unfold C
    simp [show (82944 * k + 81319) % 2 ≠ 0 by omega]
    omega
  have h12 : C (248832 * k + 243958) = 124416 * k + 121979 := by
    unfold C
    simp [show (248832 * k + 243958) % 2 = 0 by omega]
    omega
  have h13 : C (124416 * k + 121979) = 373248 * k + 365938 := by
    unfold C
    simp [show (124416 * k + 121979) % 2 ≠ 0 by omega]
    omega
  have h14 : C (373248 * k + 365938) = 186624 * k + 182969 := by
    unfold C
    simp [show (373248 * k + 365938) % 2 = 0 by omega]
    omega
  have h15 : C (186624 * k + 182969) = 559872 * k + 548908 := by
    unfold C
    simp [show (186624 * k + 182969) % 2 ≠ 0 by omega]
    omega
  have h16 : C (559872 * k + 548908) = 279936 * k + 274454 := by
    unfold C
    simp [show (559872 * k + 548908) % 2 = 0 by omega]
    omega
  have h17 : C (279936 * k + 274454) = 139968 * k + 137227 := by
    unfold C
    simp [show (279936 * k + 274454) % 2 = 0 by omega]
    omega
  have h18 : C (139968 * k + 137227) = 419904 * k + 411682 := by
    unfold C
    simp [show (139968 * k + 137227) % 2 ≠ 0 by omega]
    omega
  have h19 : C (419904 * k + 411682) = 209952 * k + 205841 := by
    unfold C
    simp [show (419904 * k + 411682) % 2 = 0 by omega]
    omega
  have h20 : C (209952 * k + 205841) = 629856 * k + 617524 := by
    unfold C
    simp [show (209952 * k + 205841) % 2 ≠ 0 by omega]
    omega
  have h21 : C (629856 * k + 617524) = 314928 * k + 308762 := by
    unfold C
    simp [show (629856 * k + 617524) % 2 = 0 by omega]
    omega
  have h22 : C (314928 * k + 308762) = 157464 * k + 154381 := by
    unfold C
    simp [show (314928 * k + 308762) % 2 = 0 by omega]
    omega
  have h23 : C (157464 * k + 154381) = 472392 * k + 463144 := by
    unfold C
    simp [show (157464 * k + 154381) % 2 ≠ 0 by omega]
    omega
  have h24 : C (472392 * k + 463144) = 236196 * k + 231572 := by
    unfold C
    simp [show (472392 * k + 463144) % 2 = 0 by omega]
    omega
  have h25 : C (236196 * k + 231572) = 118098 * k + 115786 := by
    unfold C
    simp [show (236196 * k + 231572) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 115786) = 59049 * k + 57893 := by
    unfold C
    simp [show (118098 * k + 115786) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 64251) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 64251)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_64287 : ∀ k : Nat,
    iterate (65536 * k + 64287) 26 = 59049 * k + 57925 ∧
      59049 * k + 57925 < 65536 * k + 64287 := by
  intro k
  have h1 : C (65536 * k + 64287) = 196608 * k + 192862 := by
    unfold C
    simp [show (65536 * k + 64287) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 192862) = 98304 * k + 96431 := by
    unfold C
    simp [show (196608 * k + 192862) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 96431) = 294912 * k + 289294 := by
    unfold C
    simp [show (98304 * k + 96431) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 289294) = 147456 * k + 144647 := by
    unfold C
    simp [show (294912 * k + 289294) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 144647) = 442368 * k + 433942 := by
    unfold C
    simp [show (147456 * k + 144647) % 2 ≠ 0 by omega]
    omega
  have h6 : C (442368 * k + 433942) = 221184 * k + 216971 := by
    unfold C
    simp [show (442368 * k + 433942) % 2 = 0 by omega]
    omega
  have h7 : C (221184 * k + 216971) = 663552 * k + 650914 := by
    unfold C
    simp [show (221184 * k + 216971) % 2 ≠ 0 by omega]
    omega
  have h8 : C (663552 * k + 650914) = 331776 * k + 325457 := by
    unfold C
    simp [show (663552 * k + 650914) % 2 = 0 by omega]
    omega
  have h9 : C (331776 * k + 325457) = 995328 * k + 976372 := by
    unfold C
    simp [show (331776 * k + 325457) % 2 ≠ 0 by omega]
    omega
  have h10 : C (995328 * k + 976372) = 497664 * k + 488186 := by
    unfold C
    simp [show (995328 * k + 976372) % 2 = 0 by omega]
    omega
  have h11 : C (497664 * k + 488186) = 248832 * k + 244093 := by
    unfold C
    simp [show (497664 * k + 488186) % 2 = 0 by omega]
    omega
  have h12 : C (248832 * k + 244093) = 746496 * k + 732280 := by
    unfold C
    simp [show (248832 * k + 244093) % 2 ≠ 0 by omega]
    omega
  have h13 : C (746496 * k + 732280) = 373248 * k + 366140 := by
    unfold C
    simp [show (746496 * k + 732280) % 2 = 0 by omega]
    omega
  have h14 : C (373248 * k + 366140) = 186624 * k + 183070 := by
    unfold C
    simp [show (373248 * k + 366140) % 2 = 0 by omega]
    omega
  have h15 : C (186624 * k + 183070) = 93312 * k + 91535 := by
    unfold C
    simp [show (186624 * k + 183070) % 2 = 0 by omega]
    omega
  have h16 : C (93312 * k + 91535) = 279936 * k + 274606 := by
    unfold C
    simp [show (93312 * k + 91535) % 2 ≠ 0 by omega]
    omega
  have h17 : C (279936 * k + 274606) = 139968 * k + 137303 := by
    unfold C
    simp [show (279936 * k + 274606) % 2 = 0 by omega]
    omega
  have h18 : C (139968 * k + 137303) = 419904 * k + 411910 := by
    unfold C
    simp [show (139968 * k + 137303) % 2 ≠ 0 by omega]
    omega
  have h19 : C (419904 * k + 411910) = 209952 * k + 205955 := by
    unfold C
    simp [show (419904 * k + 411910) % 2 = 0 by omega]
    omega
  have h20 : C (209952 * k + 205955) = 629856 * k + 617866 := by
    unfold C
    simp [show (209952 * k + 205955) % 2 ≠ 0 by omega]
    omega
  have h21 : C (629856 * k + 617866) = 314928 * k + 308933 := by
    unfold C
    simp [show (629856 * k + 617866) % 2 = 0 by omega]
    omega
  have h22 : C (314928 * k + 308933) = 944784 * k + 926800 := by
    unfold C
    simp [show (314928 * k + 308933) % 2 ≠ 0 by omega]
    omega
  have h23 : C (944784 * k + 926800) = 472392 * k + 463400 := by
    unfold C
    simp [show (944784 * k + 926800) % 2 = 0 by omega]
    omega
  have h24 : C (472392 * k + 463400) = 236196 * k + 231700 := by
    unfold C
    simp [show (472392 * k + 463400) % 2 = 0 by omega]
    omega
  have h25 : C (236196 * k + 231700) = 118098 * k + 115850 := by
    unfold C
    simp [show (236196 * k + 231700) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 115850) = 59049 * k + 57925 := by
    unfold C
    simp [show (118098 * k + 115850) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 64287) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 64287)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_64447 : ∀ k : Nat,
    iterate (65536 * k + 64447) 26 = 59049 * k + 58069 ∧
      59049 * k + 58069 < 65536 * k + 64447 := by
  intro k
  have h1 : C (65536 * k + 64447) = 196608 * k + 193342 := by
    unfold C
    simp [show (65536 * k + 64447) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 193342) = 98304 * k + 96671 := by
    unfold C
    simp [show (196608 * k + 193342) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 96671) = 294912 * k + 290014 := by
    unfold C
    simp [show (98304 * k + 96671) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 290014) = 147456 * k + 145007 := by
    unfold C
    simp [show (294912 * k + 290014) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 145007) = 442368 * k + 435022 := by
    unfold C
    simp [show (147456 * k + 145007) % 2 ≠ 0 by omega]
    omega
  have h6 : C (442368 * k + 435022) = 221184 * k + 217511 := by
    unfold C
    simp [show (442368 * k + 435022) % 2 = 0 by omega]
    omega
  have h7 : C (221184 * k + 217511) = 663552 * k + 652534 := by
    unfold C
    simp [show (221184 * k + 217511) % 2 ≠ 0 by omega]
    omega
  have h8 : C (663552 * k + 652534) = 331776 * k + 326267 := by
    unfold C
    simp [show (663552 * k + 652534) % 2 = 0 by omega]
    omega
  have h9 : C (331776 * k + 326267) = 995328 * k + 978802 := by
    unfold C
    simp [show (331776 * k + 326267) % 2 ≠ 0 by omega]
    omega
  have h10 : C (995328 * k + 978802) = 497664 * k + 489401 := by
    unfold C
    simp [show (995328 * k + 978802) % 2 = 0 by omega]
    omega
  have h11 : C (497664 * k + 489401) = 1492992 * k + 1468204 := by
    unfold C
    simp [show (497664 * k + 489401) % 2 ≠ 0 by omega]
    omega
  have h12 : C (1492992 * k + 1468204) = 746496 * k + 734102 := by
    unfold C
    simp [show (1492992 * k + 1468204) % 2 = 0 by omega]
    omega
  have h13 : C (746496 * k + 734102) = 373248 * k + 367051 := by
    unfold C
    simp [show (746496 * k + 734102) % 2 = 0 by omega]
    omega
  have h14 : C (373248 * k + 367051) = 1119744 * k + 1101154 := by
    unfold C
    simp [show (373248 * k + 367051) % 2 ≠ 0 by omega]
    omega
  have h15 : C (1119744 * k + 1101154) = 559872 * k + 550577 := by
    unfold C
    simp [show (1119744 * k + 1101154) % 2 = 0 by omega]
    omega
  have h16 : C (559872 * k + 550577) = 1679616 * k + 1651732 := by
    unfold C
    simp [show (559872 * k + 550577) % 2 ≠ 0 by omega]
    omega
  have h17 : C (1679616 * k + 1651732) = 839808 * k + 825866 := by
    unfold C
    simp [show (1679616 * k + 1651732) % 2 = 0 by omega]
    omega
  have h18 : C (839808 * k + 825866) = 419904 * k + 412933 := by
    unfold C
    simp [show (839808 * k + 825866) % 2 = 0 by omega]
    omega
  have h19 : C (419904 * k + 412933) = 1259712 * k + 1238800 := by
    unfold C
    simp [show (419904 * k + 412933) % 2 ≠ 0 by omega]
    omega
  have h20 : C (1259712 * k + 1238800) = 629856 * k + 619400 := by
    unfold C
    simp [show (1259712 * k + 1238800) % 2 = 0 by omega]
    omega
  have h21 : C (629856 * k + 619400) = 314928 * k + 309700 := by
    unfold C
    simp [show (629856 * k + 619400) % 2 = 0 by omega]
    omega
  have h22 : C (314928 * k + 309700) = 157464 * k + 154850 := by
    unfold C
    simp [show (314928 * k + 309700) % 2 = 0 by omega]
    omega
  have h23 : C (157464 * k + 154850) = 78732 * k + 77425 := by
    unfold C
    simp [show (157464 * k + 154850) % 2 = 0 by omega]
    omega
  have h24 : C (78732 * k + 77425) = 236196 * k + 232276 := by
    unfold C
    simp [show (78732 * k + 77425) % 2 ≠ 0 by omega]
    omega
  have h25 : C (236196 * k + 232276) = 118098 * k + 116138 := by
    unfold C
    simp [show (236196 * k + 232276) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 116138) = 59049 * k + 58069 := by
    unfold C
    simp [show (118098 * k + 116138) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 64447) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 64447)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_64507 : ∀ k : Nat,
    iterate (65536 * k + 64507) 26 = 59049 * k + 58124 ∧
      59049 * k + 58124 < 65536 * k + 64507 := by
  intro k
  have h1 : C (65536 * k + 64507) = 196608 * k + 193522 := by
    unfold C
    simp [show (65536 * k + 64507) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 193522) = 98304 * k + 96761 := by
    unfold C
    simp [show (196608 * k + 193522) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 96761) = 294912 * k + 290284 := by
    unfold C
    simp [show (98304 * k + 96761) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 290284) = 147456 * k + 145142 := by
    unfold C
    simp [show (294912 * k + 290284) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 145142) = 73728 * k + 72571 := by
    unfold C
    simp [show (147456 * k + 145142) % 2 = 0 by omega]
    omega
  have h6 : C (73728 * k + 72571) = 221184 * k + 217714 := by
    unfold C
    simp [show (73728 * k + 72571) % 2 ≠ 0 by omega]
    omega
  have h7 : C (221184 * k + 217714) = 110592 * k + 108857 := by
    unfold C
    simp [show (221184 * k + 217714) % 2 = 0 by omega]
    omega
  have h8 : C (110592 * k + 108857) = 331776 * k + 326572 := by
    unfold C
    simp [show (110592 * k + 108857) % 2 ≠ 0 by omega]
    omega
  have h9 : C (331776 * k + 326572) = 165888 * k + 163286 := by
    unfold C
    simp [show (331776 * k + 326572) % 2 = 0 by omega]
    omega
  have h10 : C (165888 * k + 163286) = 82944 * k + 81643 := by
    unfold C
    simp [show (165888 * k + 163286) % 2 = 0 by omega]
    omega
  have h11 : C (82944 * k + 81643) = 248832 * k + 244930 := by
    unfold C
    simp [show (82944 * k + 81643) % 2 ≠ 0 by omega]
    omega
  have h12 : C (248832 * k + 244930) = 124416 * k + 122465 := by
    unfold C
    simp [show (248832 * k + 244930) % 2 = 0 by omega]
    omega
  have h13 : C (124416 * k + 122465) = 373248 * k + 367396 := by
    unfold C
    simp [show (124416 * k + 122465) % 2 ≠ 0 by omega]
    omega
  have h14 : C (373248 * k + 367396) = 186624 * k + 183698 := by
    unfold C
    simp [show (373248 * k + 367396) % 2 = 0 by omega]
    omega
  have h15 : C (186624 * k + 183698) = 93312 * k + 91849 := by
    unfold C
    simp [show (186624 * k + 183698) % 2 = 0 by omega]
    omega
  have h16 : C (93312 * k + 91849) = 279936 * k + 275548 := by
    unfold C
    simp [show (93312 * k + 91849) % 2 ≠ 0 by omega]
    omega
  have h17 : C (279936 * k + 275548) = 139968 * k + 137774 := by
    unfold C
    simp [show (279936 * k + 275548) % 2 = 0 by omega]
    omega
  have h18 : C (139968 * k + 137774) = 69984 * k + 68887 := by
    unfold C
    simp [show (139968 * k + 137774) % 2 = 0 by omega]
    omega
  have h19 : C (69984 * k + 68887) = 209952 * k + 206662 := by
    unfold C
    simp [show (69984 * k + 68887) % 2 ≠ 0 by omega]
    omega
  have h20 : C (209952 * k + 206662) = 104976 * k + 103331 := by
    unfold C
    simp [show (209952 * k + 206662) % 2 = 0 by omega]
    omega
  have h21 : C (104976 * k + 103331) = 314928 * k + 309994 := by
    unfold C
    simp [show (104976 * k + 103331) % 2 ≠ 0 by omega]
    omega
  have h22 : C (314928 * k + 309994) = 157464 * k + 154997 := by
    unfold C
    simp [show (314928 * k + 309994) % 2 = 0 by omega]
    omega
  have h23 : C (157464 * k + 154997) = 472392 * k + 464992 := by
    unfold C
    simp [show (157464 * k + 154997) % 2 ≠ 0 by omega]
    omega
  have h24 : C (472392 * k + 464992) = 236196 * k + 232496 := by
    unfold C
    simp [show (472392 * k + 464992) % 2 = 0 by omega]
    omega
  have h25 : C (236196 * k + 232496) = 118098 * k + 116248 := by
    unfold C
    simp [show (236196 * k + 232496) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 116248) = 59049 * k + 58124 := by
    unfold C
    simp [show (118098 * k + 116248) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 64507) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 64507)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_64831 : ∀ k : Nat,
    iterate (65536 * k + 64831) 26 = 59049 * k + 58415 ∧
      59049 * k + 58415 < 65536 * k + 64831 := by
  intro k
  have h1 : C (65536 * k + 64831) = 196608 * k + 194494 := by
    unfold C
    simp [show (65536 * k + 64831) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 194494) = 98304 * k + 97247 := by
    unfold C
    simp [show (196608 * k + 194494) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 97247) = 294912 * k + 291742 := by
    unfold C
    simp [show (98304 * k + 97247) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 291742) = 147456 * k + 145871 := by
    unfold C
    simp [show (294912 * k + 291742) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 145871) = 442368 * k + 437614 := by
    unfold C
    simp [show (147456 * k + 145871) % 2 ≠ 0 by omega]
    omega
  have h6 : C (442368 * k + 437614) = 221184 * k + 218807 := by
    unfold C
    simp [show (442368 * k + 437614) % 2 = 0 by omega]
    omega
  have h7 : C (221184 * k + 218807) = 663552 * k + 656422 := by
    unfold C
    simp [show (221184 * k + 218807) % 2 ≠ 0 by omega]
    omega
  have h8 : C (663552 * k + 656422) = 331776 * k + 328211 := by
    unfold C
    simp [show (663552 * k + 656422) % 2 = 0 by omega]
    omega
  have h9 : C (331776 * k + 328211) = 995328 * k + 984634 := by
    unfold C
    simp [show (331776 * k + 328211) % 2 ≠ 0 by omega]
    omega
  have h10 : C (995328 * k + 984634) = 497664 * k + 492317 := by
    unfold C
    simp [show (995328 * k + 984634) % 2 = 0 by omega]
    omega
  have h11 : C (497664 * k + 492317) = 1492992 * k + 1476952 := by
    unfold C
    simp [show (497664 * k + 492317) % 2 ≠ 0 by omega]
    omega
  have h12 : C (1492992 * k + 1476952) = 746496 * k + 738476 := by
    unfold C
    simp [show (1492992 * k + 1476952) % 2 = 0 by omega]
    omega
  have h13 : C (746496 * k + 738476) = 373248 * k + 369238 := by
    unfold C
    simp [show (746496 * k + 738476) % 2 = 0 by omega]
    omega
  have h14 : C (373248 * k + 369238) = 186624 * k + 184619 := by
    unfold C
    simp [show (373248 * k + 369238) % 2 = 0 by omega]
    omega
  have h15 : C (186624 * k + 184619) = 559872 * k + 553858 := by
    unfold C
    simp [show (186624 * k + 184619) % 2 ≠ 0 by omega]
    omega
  have h16 : C (559872 * k + 553858) = 279936 * k + 276929 := by
    unfold C
    simp [show (559872 * k + 553858) % 2 = 0 by omega]
    omega
  have h17 : C (279936 * k + 276929) = 839808 * k + 830788 := by
    unfold C
    simp [show (279936 * k + 276929) % 2 ≠ 0 by omega]
    omega
  have h18 : C (839808 * k + 830788) = 419904 * k + 415394 := by
    unfold C
    simp [show (839808 * k + 830788) % 2 = 0 by omega]
    omega
  have h19 : C (419904 * k + 415394) = 209952 * k + 207697 := by
    unfold C
    simp [show (419904 * k + 415394) % 2 = 0 by omega]
    omega
  have h20 : C (209952 * k + 207697) = 629856 * k + 623092 := by
    unfold C
    simp [show (209952 * k + 207697) % 2 ≠ 0 by omega]
    omega
  have h21 : C (629856 * k + 623092) = 314928 * k + 311546 := by
    unfold C
    simp [show (629856 * k + 623092) % 2 = 0 by omega]
    omega
  have h22 : C (314928 * k + 311546) = 157464 * k + 155773 := by
    unfold C
    simp [show (314928 * k + 311546) % 2 = 0 by omega]
    omega
  have h23 : C (157464 * k + 155773) = 472392 * k + 467320 := by
    unfold C
    simp [show (157464 * k + 155773) % 2 ≠ 0 by omega]
    omega
  have h24 : C (472392 * k + 467320) = 236196 * k + 233660 := by
    unfold C
    simp [show (472392 * k + 467320) % 2 = 0 by omega]
    omega
  have h25 : C (236196 * k + 233660) = 118098 * k + 116830 := by
    unfold C
    simp [show (236196 * k + 233660) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 116830) = 59049 * k + 58415 := by
    unfold C
    simp [show (118098 * k + 116830) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 64831) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 64831)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_64871 : ∀ k : Nat,
    iterate (65536 * k + 64871) 26 = 59049 * k + 58451 ∧
      59049 * k + 58451 < 65536 * k + 64871 := by
  intro k
  have h1 : C (65536 * k + 64871) = 196608 * k + 194614 := by
    unfold C
    simp [show (65536 * k + 64871) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 194614) = 98304 * k + 97307 := by
    unfold C
    simp [show (196608 * k + 194614) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 97307) = 294912 * k + 291922 := by
    unfold C
    simp [show (98304 * k + 97307) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 291922) = 147456 * k + 145961 := by
    unfold C
    simp [show (294912 * k + 291922) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 145961) = 442368 * k + 437884 := by
    unfold C
    simp [show (147456 * k + 145961) % 2 ≠ 0 by omega]
    omega
  have h6 : C (442368 * k + 437884) = 221184 * k + 218942 := by
    unfold C
    simp [show (442368 * k + 437884) % 2 = 0 by omega]
    omega
  have h7 : C (221184 * k + 218942) = 110592 * k + 109471 := by
    unfold C
    simp [show (221184 * k + 218942) % 2 = 0 by omega]
    omega
  have h8 : C (110592 * k + 109471) = 331776 * k + 328414 := by
    unfold C
    simp [show (110592 * k + 109471) % 2 ≠ 0 by omega]
    omega
  have h9 : C (331776 * k + 328414) = 165888 * k + 164207 := by
    unfold C
    simp [show (331776 * k + 328414) % 2 = 0 by omega]
    omega
  have h10 : C (165888 * k + 164207) = 497664 * k + 492622 := by
    unfold C
    simp [show (165888 * k + 164207) % 2 ≠ 0 by omega]
    omega
  have h11 : C (497664 * k + 492622) = 248832 * k + 246311 := by
    unfold C
    simp [show (497664 * k + 492622) % 2 = 0 by omega]
    omega
  have h12 : C (248832 * k + 246311) = 746496 * k + 738934 := by
    unfold C
    simp [show (248832 * k + 246311) % 2 ≠ 0 by omega]
    omega
  have h13 : C (746496 * k + 738934) = 373248 * k + 369467 := by
    unfold C
    simp [show (746496 * k + 738934) % 2 = 0 by omega]
    omega
  have h14 : C (373248 * k + 369467) = 1119744 * k + 1108402 := by
    unfold C
    simp [show (373248 * k + 369467) % 2 ≠ 0 by omega]
    omega
  have h15 : C (1119744 * k + 1108402) = 559872 * k + 554201 := by
    unfold C
    simp [show (1119744 * k + 1108402) % 2 = 0 by omega]
    omega
  have h16 : C (559872 * k + 554201) = 1679616 * k + 1662604 := by
    unfold C
    simp [show (559872 * k + 554201) % 2 ≠ 0 by omega]
    omega
  have h17 : C (1679616 * k + 1662604) = 839808 * k + 831302 := by
    unfold C
    simp [show (1679616 * k + 1662604) % 2 = 0 by omega]
    omega
  have h18 : C (839808 * k + 831302) = 419904 * k + 415651 := by
    unfold C
    simp [show (839808 * k + 831302) % 2 = 0 by omega]
    omega
  have h19 : C (419904 * k + 415651) = 1259712 * k + 1246954 := by
    unfold C
    simp [show (419904 * k + 415651) % 2 ≠ 0 by omega]
    omega
  have h20 : C (1259712 * k + 1246954) = 629856 * k + 623477 := by
    unfold C
    simp [show (1259712 * k + 1246954) % 2 = 0 by omega]
    omega
  have h21 : C (629856 * k + 623477) = 1889568 * k + 1870432 := by
    unfold C
    simp [show (629856 * k + 623477) % 2 ≠ 0 by omega]
    omega
  have h22 : C (1889568 * k + 1870432) = 944784 * k + 935216 := by
    unfold C
    simp [show (1889568 * k + 1870432) % 2 = 0 by omega]
    omega
  have h23 : C (944784 * k + 935216) = 472392 * k + 467608 := by
    unfold C
    simp [show (944784 * k + 935216) % 2 = 0 by omega]
    omega
  have h24 : C (472392 * k + 467608) = 236196 * k + 233804 := by
    unfold C
    simp [show (472392 * k + 467608) % 2 = 0 by omega]
    omega
  have h25 : C (236196 * k + 233804) = 118098 * k + 116902 := by
    unfold C
    simp [show (236196 * k + 233804) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 116902) = 59049 * k + 58451 := by
    unfold C
    simp [show (118098 * k + 116902) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 64871) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 64871)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_65127 : ∀ k : Nat,
    iterate (65536 * k + 65127) 26 = 59049 * k + 58682 ∧
      59049 * k + 58682 < 65536 * k + 65127 := by
  intro k
  have h1 : C (65536 * k + 65127) = 196608 * k + 195382 := by
    unfold C
    simp [show (65536 * k + 65127) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 195382) = 98304 * k + 97691 := by
    unfold C
    simp [show (196608 * k + 195382) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 97691) = 294912 * k + 293074 := by
    unfold C
    simp [show (98304 * k + 97691) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 293074) = 147456 * k + 146537 := by
    unfold C
    simp [show (294912 * k + 293074) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 146537) = 442368 * k + 439612 := by
    unfold C
    simp [show (147456 * k + 146537) % 2 ≠ 0 by omega]
    omega
  have h6 : C (442368 * k + 439612) = 221184 * k + 219806 := by
    unfold C
    simp [show (442368 * k + 439612) % 2 = 0 by omega]
    omega
  have h7 : C (221184 * k + 219806) = 110592 * k + 109903 := by
    unfold C
    simp [show (221184 * k + 219806) % 2 = 0 by omega]
    omega
  have h8 : C (110592 * k + 109903) = 331776 * k + 329710 := by
    unfold C
    simp [show (110592 * k + 109903) % 2 ≠ 0 by omega]
    omega
  have h9 : C (331776 * k + 329710) = 165888 * k + 164855 := by
    unfold C
    simp [show (331776 * k + 329710) % 2 = 0 by omega]
    omega
  have h10 : C (165888 * k + 164855) = 497664 * k + 494566 := by
    unfold C
    simp [show (165888 * k + 164855) % 2 ≠ 0 by omega]
    omega
  have h11 : C (497664 * k + 494566) = 248832 * k + 247283 := by
    unfold C
    simp [show (497664 * k + 494566) % 2 = 0 by omega]
    omega
  have h12 : C (248832 * k + 247283) = 746496 * k + 741850 := by
    unfold C
    simp [show (248832 * k + 247283) % 2 ≠ 0 by omega]
    omega
  have h13 : C (746496 * k + 741850) = 373248 * k + 370925 := by
    unfold C
    simp [show (746496 * k + 741850) % 2 = 0 by omega]
    omega
  have h14 : C (373248 * k + 370925) = 1119744 * k + 1112776 := by
    unfold C
    simp [show (373248 * k + 370925) % 2 ≠ 0 by omega]
    omega
  have h15 : C (1119744 * k + 1112776) = 559872 * k + 556388 := by
    unfold C
    simp [show (1119744 * k + 1112776) % 2 = 0 by omega]
    omega
  have h16 : C (559872 * k + 556388) = 279936 * k + 278194 := by
    unfold C
    simp [show (559872 * k + 556388) % 2 = 0 by omega]
    omega
  have h17 : C (279936 * k + 278194) = 139968 * k + 139097 := by
    unfold C
    simp [show (279936 * k + 278194) % 2 = 0 by omega]
    omega
  have h18 : C (139968 * k + 139097) = 419904 * k + 417292 := by
    unfold C
    simp [show (139968 * k + 139097) % 2 ≠ 0 by omega]
    omega
  have h19 : C (419904 * k + 417292) = 209952 * k + 208646 := by
    unfold C
    simp [show (419904 * k + 417292) % 2 = 0 by omega]
    omega
  have h20 : C (209952 * k + 208646) = 104976 * k + 104323 := by
    unfold C
    simp [show (209952 * k + 208646) % 2 = 0 by omega]
    omega
  have h21 : C (104976 * k + 104323) = 314928 * k + 312970 := by
    unfold C
    simp [show (104976 * k + 104323) % 2 ≠ 0 by omega]
    omega
  have h22 : C (314928 * k + 312970) = 157464 * k + 156485 := by
    unfold C
    simp [show (314928 * k + 312970) % 2 = 0 by omega]
    omega
  have h23 : C (157464 * k + 156485) = 472392 * k + 469456 := by
    unfold C
    simp [show (157464 * k + 156485) % 2 ≠ 0 by omega]
    omega
  have h24 : C (472392 * k + 469456) = 236196 * k + 234728 := by
    unfold C
    simp [show (472392 * k + 469456) % 2 = 0 by omega]
    omega
  have h25 : C (236196 * k + 234728) = 118098 * k + 117364 := by
    unfold C
    simp [show (236196 * k + 234728) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 117364) = 59049 * k + 58682 := by
    unfold C
    simp [show (118098 * k + 117364) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 65127) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 65127)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_65179 : ∀ k : Nat,
    iterate (65536 * k + 65179) 26 = 59049 * k + 58729 ∧
      59049 * k + 58729 < 65536 * k + 65179 := by
  intro k
  have h1 : C (65536 * k + 65179) = 196608 * k + 195538 := by
    unfold C
    simp [show (65536 * k + 65179) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 195538) = 98304 * k + 97769 := by
    unfold C
    simp [show (196608 * k + 195538) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 97769) = 294912 * k + 293308 := by
    unfold C
    simp [show (98304 * k + 97769) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 293308) = 147456 * k + 146654 := by
    unfold C
    simp [show (294912 * k + 293308) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 146654) = 73728 * k + 73327 := by
    unfold C
    simp [show (147456 * k + 146654) % 2 = 0 by omega]
    omega
  have h6 : C (73728 * k + 73327) = 221184 * k + 219982 := by
    unfold C
    simp [show (73728 * k + 73327) % 2 ≠ 0 by omega]
    omega
  have h7 : C (221184 * k + 219982) = 110592 * k + 109991 := by
    unfold C
    simp [show (221184 * k + 219982) % 2 = 0 by omega]
    omega
  have h8 : C (110592 * k + 109991) = 331776 * k + 329974 := by
    unfold C
    simp [show (110592 * k + 109991) % 2 ≠ 0 by omega]
    omega
  have h9 : C (331776 * k + 329974) = 165888 * k + 164987 := by
    unfold C
    simp [show (331776 * k + 329974) % 2 = 0 by omega]
    omega
  have h10 : C (165888 * k + 164987) = 497664 * k + 494962 := by
    unfold C
    simp [show (165888 * k + 164987) % 2 ≠ 0 by omega]
    omega
  have h11 : C (497664 * k + 494962) = 248832 * k + 247481 := by
    unfold C
    simp [show (497664 * k + 494962) % 2 = 0 by omega]
    omega
  have h12 : C (248832 * k + 247481) = 746496 * k + 742444 := by
    unfold C
    simp [show (248832 * k + 247481) % 2 ≠ 0 by omega]
    omega
  have h13 : C (746496 * k + 742444) = 373248 * k + 371222 := by
    unfold C
    simp [show (746496 * k + 742444) % 2 = 0 by omega]
    omega
  have h14 : C (373248 * k + 371222) = 186624 * k + 185611 := by
    unfold C
    simp [show (373248 * k + 371222) % 2 = 0 by omega]
    omega
  have h15 : C (186624 * k + 185611) = 559872 * k + 556834 := by
    unfold C
    simp [show (186624 * k + 185611) % 2 ≠ 0 by omega]
    omega
  have h16 : C (559872 * k + 556834) = 279936 * k + 278417 := by
    unfold C
    simp [show (559872 * k + 556834) % 2 = 0 by omega]
    omega
  have h17 : C (279936 * k + 278417) = 839808 * k + 835252 := by
    unfold C
    simp [show (279936 * k + 278417) % 2 ≠ 0 by omega]
    omega
  have h18 : C (839808 * k + 835252) = 419904 * k + 417626 := by
    unfold C
    simp [show (839808 * k + 835252) % 2 = 0 by omega]
    omega
  have h19 : C (419904 * k + 417626) = 209952 * k + 208813 := by
    unfold C
    simp [show (419904 * k + 417626) % 2 = 0 by omega]
    omega
  have h20 : C (209952 * k + 208813) = 629856 * k + 626440 := by
    unfold C
    simp [show (209952 * k + 208813) % 2 ≠ 0 by omega]
    omega
  have h21 : C (629856 * k + 626440) = 314928 * k + 313220 := by
    unfold C
    simp [show (629856 * k + 626440) % 2 = 0 by omega]
    omega
  have h22 : C (314928 * k + 313220) = 157464 * k + 156610 := by
    unfold C
    simp [show (314928 * k + 313220) % 2 = 0 by omega]
    omega
  have h23 : C (157464 * k + 156610) = 78732 * k + 78305 := by
    unfold C
    simp [show (157464 * k + 156610) % 2 = 0 by omega]
    omega
  have h24 : C (78732 * k + 78305) = 236196 * k + 234916 := by
    unfold C
    simp [show (78732 * k + 78305) % 2 ≠ 0 by omega]
    omega
  have h25 : C (236196 * k + 234916) = 118098 * k + 117458 := by
    unfold C
    simp [show (236196 * k + 234916) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 117458) = 59049 * k + 58729 := by
    unfold C
    simp [show (118098 * k + 117458) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 65179) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 65179)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_65183 : ∀ k : Nat,
    iterate (65536 * k + 65183) 26 = 59049 * k + 58732 ∧
      59049 * k + 58732 < 65536 * k + 65183 := by
  intro k
  have h1 : C (65536 * k + 65183) = 196608 * k + 195550 := by
    unfold C
    simp [show (65536 * k + 65183) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 195550) = 98304 * k + 97775 := by
    unfold C
    simp [show (196608 * k + 195550) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 97775) = 294912 * k + 293326 := by
    unfold C
    simp [show (98304 * k + 97775) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 293326) = 147456 * k + 146663 := by
    unfold C
    simp [show (294912 * k + 293326) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 146663) = 442368 * k + 439990 := by
    unfold C
    simp [show (147456 * k + 146663) % 2 ≠ 0 by omega]
    omega
  have h6 : C (442368 * k + 439990) = 221184 * k + 219995 := by
    unfold C
    simp [show (442368 * k + 439990) % 2 = 0 by omega]
    omega
  have h7 : C (221184 * k + 219995) = 663552 * k + 659986 := by
    unfold C
    simp [show (221184 * k + 219995) % 2 ≠ 0 by omega]
    omega
  have h8 : C (663552 * k + 659986) = 331776 * k + 329993 := by
    unfold C
    simp [show (663552 * k + 659986) % 2 = 0 by omega]
    omega
  have h9 : C (331776 * k + 329993) = 995328 * k + 989980 := by
    unfold C
    simp [show (331776 * k + 329993) % 2 ≠ 0 by omega]
    omega
  have h10 : C (995328 * k + 989980) = 497664 * k + 494990 := by
    unfold C
    simp [show (995328 * k + 989980) % 2 = 0 by omega]
    omega
  have h11 : C (497664 * k + 494990) = 248832 * k + 247495 := by
    unfold C
    simp [show (497664 * k + 494990) % 2 = 0 by omega]
    omega
  have h12 : C (248832 * k + 247495) = 746496 * k + 742486 := by
    unfold C
    simp [show (248832 * k + 247495) % 2 ≠ 0 by omega]
    omega
  have h13 : C (746496 * k + 742486) = 373248 * k + 371243 := by
    unfold C
    simp [show (746496 * k + 742486) % 2 = 0 by omega]
    omega
  have h14 : C (373248 * k + 371243) = 1119744 * k + 1113730 := by
    unfold C
    simp [show (373248 * k + 371243) % 2 ≠ 0 by omega]
    omega
  have h15 : C (1119744 * k + 1113730) = 559872 * k + 556865 := by
    unfold C
    simp [show (1119744 * k + 1113730) % 2 = 0 by omega]
    omega
  have h16 : C (559872 * k + 556865) = 1679616 * k + 1670596 := by
    unfold C
    simp [show (559872 * k + 556865) % 2 ≠ 0 by omega]
    omega
  have h17 : C (1679616 * k + 1670596) = 839808 * k + 835298 := by
    unfold C
    simp [show (1679616 * k + 1670596) % 2 = 0 by omega]
    omega
  have h18 : C (839808 * k + 835298) = 419904 * k + 417649 := by
    unfold C
    simp [show (839808 * k + 835298) % 2 = 0 by omega]
    omega
  have h19 : C (419904 * k + 417649) = 1259712 * k + 1252948 := by
    unfold C
    simp [show (419904 * k + 417649) % 2 ≠ 0 by omega]
    omega
  have h20 : C (1259712 * k + 1252948) = 629856 * k + 626474 := by
    unfold C
    simp [show (1259712 * k + 1252948) % 2 = 0 by omega]
    omega
  have h21 : C (629856 * k + 626474) = 314928 * k + 313237 := by
    unfold C
    simp [show (629856 * k + 626474) % 2 = 0 by omega]
    omega
  have h22 : C (314928 * k + 313237) = 944784 * k + 939712 := by
    unfold C
    simp [show (314928 * k + 313237) % 2 ≠ 0 by omega]
    omega
  have h23 : C (944784 * k + 939712) = 472392 * k + 469856 := by
    unfold C
    simp [show (944784 * k + 939712) % 2 = 0 by omega]
    omega
  have h24 : C (472392 * k + 469856) = 236196 * k + 234928 := by
    unfold C
    simp [show (472392 * k + 469856) % 2 = 0 by omega]
    omega
  have h25 : C (236196 * k + 234928) = 118098 * k + 117464 := by
    unfold C
    simp [show (236196 * k + 234928) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 117464) = 59049 * k + 58732 := by
    unfold C
    simp [show (118098 * k + 117464) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 65183) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 65183)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_65275 : ∀ k : Nat,
    iterate (65536 * k + 65275) 26 = 59049 * k + 58816 ∧
      59049 * k + 58816 < 65536 * k + 65275 := by
  intro k
  have h1 : C (65536 * k + 65275) = 196608 * k + 195826 := by
    unfold C
    simp [show (65536 * k + 65275) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 195826) = 98304 * k + 97913 := by
    unfold C
    simp [show (196608 * k + 195826) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 97913) = 294912 * k + 293740 := by
    unfold C
    simp [show (98304 * k + 97913) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 293740) = 147456 * k + 146870 := by
    unfold C
    simp [show (294912 * k + 293740) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 146870) = 73728 * k + 73435 := by
    unfold C
    simp [show (147456 * k + 146870) % 2 = 0 by omega]
    omega
  have h6 : C (73728 * k + 73435) = 221184 * k + 220306 := by
    unfold C
    simp [show (73728 * k + 73435) % 2 ≠ 0 by omega]
    omega
  have h7 : C (221184 * k + 220306) = 110592 * k + 110153 := by
    unfold C
    simp [show (221184 * k + 220306) % 2 = 0 by omega]
    omega
  have h8 : C (110592 * k + 110153) = 331776 * k + 330460 := by
    unfold C
    simp [show (110592 * k + 110153) % 2 ≠ 0 by omega]
    omega
  have h9 : C (331776 * k + 330460) = 165888 * k + 165230 := by
    unfold C
    simp [show (331776 * k + 330460) % 2 = 0 by omega]
    omega
  have h10 : C (165888 * k + 165230) = 82944 * k + 82615 := by
    unfold C
    simp [show (165888 * k + 165230) % 2 = 0 by omega]
    omega
  have h11 : C (82944 * k + 82615) = 248832 * k + 247846 := by
    unfold C
    simp [show (82944 * k + 82615) % 2 ≠ 0 by omega]
    omega
  have h12 : C (248832 * k + 247846) = 124416 * k + 123923 := by
    unfold C
    simp [show (248832 * k + 247846) % 2 = 0 by omega]
    omega
  have h13 : C (124416 * k + 123923) = 373248 * k + 371770 := by
    unfold C
    simp [show (124416 * k + 123923) % 2 ≠ 0 by omega]
    omega
  have h14 : C (373248 * k + 371770) = 186624 * k + 185885 := by
    unfold C
    simp [show (373248 * k + 371770) % 2 = 0 by omega]
    omega
  have h15 : C (186624 * k + 185885) = 559872 * k + 557656 := by
    unfold C
    simp [show (186624 * k + 185885) % 2 ≠ 0 by omega]
    omega
  have h16 : C (559872 * k + 557656) = 279936 * k + 278828 := by
    unfold C
    simp [show (559872 * k + 557656) % 2 = 0 by omega]
    omega
  have h17 : C (279936 * k + 278828) = 139968 * k + 139414 := by
    unfold C
    simp [show (279936 * k + 278828) % 2 = 0 by omega]
    omega
  have h18 : C (139968 * k + 139414) = 69984 * k + 69707 := by
    unfold C
    simp [show (139968 * k + 139414) % 2 = 0 by omega]
    omega
  have h19 : C (69984 * k + 69707) = 209952 * k + 209122 := by
    unfold C
    simp [show (69984 * k + 69707) % 2 ≠ 0 by omega]
    omega
  have h20 : C (209952 * k + 209122) = 104976 * k + 104561 := by
    unfold C
    simp [show (209952 * k + 209122) % 2 = 0 by omega]
    omega
  have h21 : C (104976 * k + 104561) = 314928 * k + 313684 := by
    unfold C
    simp [show (104976 * k + 104561) % 2 ≠ 0 by omega]
    omega
  have h22 : C (314928 * k + 313684) = 157464 * k + 156842 := by
    unfold C
    simp [show (314928 * k + 313684) % 2 = 0 by omega]
    omega
  have h23 : C (157464 * k + 156842) = 78732 * k + 78421 := by
    unfold C
    simp [show (157464 * k + 156842) % 2 = 0 by omega]
    omega
  have h24 : C (78732 * k + 78421) = 236196 * k + 235264 := by
    unfold C
    simp [show (78732 * k + 78421) % 2 ≠ 0 by omega]
    omega
  have h25 : C (236196 * k + 235264) = 118098 * k + 117632 := by
    unfold C
    simp [show (236196 * k + 235264) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 117632) = 59049 * k + 58816 := by
    unfold C
    simp [show (118098 * k + 117632) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 65275) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 65275)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_65407 : ∀ k : Nat,
    iterate (65536 * k + 65407) 26 = 59049 * k + 58934 ∧
      59049 * k + 58934 < 65536 * k + 65407 := by
  intro k
  have h1 : C (65536 * k + 65407) = 196608 * k + 196222 := by
    unfold C
    simp [show (65536 * k + 65407) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 196222) = 98304 * k + 98111 := by
    unfold C
    simp [show (196608 * k + 196222) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 98111) = 294912 * k + 294334 := by
    unfold C
    simp [show (98304 * k + 98111) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 294334) = 147456 * k + 147167 := by
    unfold C
    simp [show (294912 * k + 294334) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 147167) = 442368 * k + 441502 := by
    unfold C
    simp [show (147456 * k + 147167) % 2 ≠ 0 by omega]
    omega
  have h6 : C (442368 * k + 441502) = 221184 * k + 220751 := by
    unfold C
    simp [show (442368 * k + 441502) % 2 = 0 by omega]
    omega
  have h7 : C (221184 * k + 220751) = 663552 * k + 662254 := by
    unfold C
    simp [show (221184 * k + 220751) % 2 ≠ 0 by omega]
    omega
  have h8 : C (663552 * k + 662254) = 331776 * k + 331127 := by
    unfold C
    simp [show (663552 * k + 662254) % 2 = 0 by omega]
    omega
  have h9 : C (331776 * k + 331127) = 995328 * k + 993382 := by
    unfold C
    simp [show (331776 * k + 331127) % 2 ≠ 0 by omega]
    omega
  have h10 : C (995328 * k + 993382) = 497664 * k + 496691 := by
    unfold C
    simp [show (995328 * k + 993382) % 2 = 0 by omega]
    omega
  have h11 : C (497664 * k + 496691) = 1492992 * k + 1490074 := by
    unfold C
    simp [show (497664 * k + 496691) % 2 ≠ 0 by omega]
    omega
  have h12 : C (1492992 * k + 1490074) = 746496 * k + 745037 := by
    unfold C
    simp [show (1492992 * k + 1490074) % 2 = 0 by omega]
    omega
  have h13 : C (746496 * k + 745037) = 2239488 * k + 2235112 := by
    unfold C
    simp [show (746496 * k + 745037) % 2 ≠ 0 by omega]
    omega
  have h14 : C (2239488 * k + 2235112) = 1119744 * k + 1117556 := by
    unfold C
    simp [show (2239488 * k + 2235112) % 2 = 0 by omega]
    omega
  have h15 : C (1119744 * k + 1117556) = 559872 * k + 558778 := by
    unfold C
    simp [show (1119744 * k + 1117556) % 2 = 0 by omega]
    omega
  have h16 : C (559872 * k + 558778) = 279936 * k + 279389 := by
    unfold C
    simp [show (559872 * k + 558778) % 2 = 0 by omega]
    omega
  have h17 : C (279936 * k + 279389) = 839808 * k + 838168 := by
    unfold C
    simp [show (279936 * k + 279389) % 2 ≠ 0 by omega]
    omega
  have h18 : C (839808 * k + 838168) = 419904 * k + 419084 := by
    unfold C
    simp [show (839808 * k + 838168) % 2 = 0 by omega]
    omega
  have h19 : C (419904 * k + 419084) = 209952 * k + 209542 := by
    unfold C
    simp [show (419904 * k + 419084) % 2 = 0 by omega]
    omega
  have h20 : C (209952 * k + 209542) = 104976 * k + 104771 := by
    unfold C
    simp [show (209952 * k + 209542) % 2 = 0 by omega]
    omega
  have h21 : C (104976 * k + 104771) = 314928 * k + 314314 := by
    unfold C
    simp [show (104976 * k + 104771) % 2 ≠ 0 by omega]
    omega
  have h22 : C (314928 * k + 314314) = 157464 * k + 157157 := by
    unfold C
    simp [show (314928 * k + 314314) % 2 = 0 by omega]
    omega
  have h23 : C (157464 * k + 157157) = 472392 * k + 471472 := by
    unfold C
    simp [show (157464 * k + 157157) % 2 ≠ 0 by omega]
    omega
  have h24 : C (472392 * k + 471472) = 236196 * k + 235736 := by
    unfold C
    simp [show (472392 * k + 471472) % 2 = 0 by omega]
    omega
  have h25 : C (236196 * k + 235736) = 118098 * k + 117868 := by
    unfold C
    simp [show (236196 * k + 235736) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 117868) = 59049 * k + 58934 := by
    unfold C
    simp [show (118098 * k + 117868) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 65407) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 65407)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_65439 : ∀ k : Nat,
    iterate (65536 * k + 65439) 26 = 59049 * k + 58963 ∧
      59049 * k + 58963 < 65536 * k + 65439 := by
  intro k
  have h1 : C (65536 * k + 65439) = 196608 * k + 196318 := by
    unfold C
    simp [show (65536 * k + 65439) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 196318) = 98304 * k + 98159 := by
    unfold C
    simp [show (196608 * k + 196318) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 98159) = 294912 * k + 294478 := by
    unfold C
    simp [show (98304 * k + 98159) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 294478) = 147456 * k + 147239 := by
    unfold C
    simp [show (294912 * k + 294478) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 147239) = 442368 * k + 441718 := by
    unfold C
    simp [show (147456 * k + 147239) % 2 ≠ 0 by omega]
    omega
  have h6 : C (442368 * k + 441718) = 221184 * k + 220859 := by
    unfold C
    simp [show (442368 * k + 441718) % 2 = 0 by omega]
    omega
  have h7 : C (221184 * k + 220859) = 663552 * k + 662578 := by
    unfold C
    simp [show (221184 * k + 220859) % 2 ≠ 0 by omega]
    omega
  have h8 : C (663552 * k + 662578) = 331776 * k + 331289 := by
    unfold C
    simp [show (663552 * k + 662578) % 2 = 0 by omega]
    omega
  have h9 : C (331776 * k + 331289) = 995328 * k + 993868 := by
    unfold C
    simp [show (331776 * k + 331289) % 2 ≠ 0 by omega]
    omega
  have h10 : C (995328 * k + 993868) = 497664 * k + 496934 := by
    unfold C
    simp [show (995328 * k + 993868) % 2 = 0 by omega]
    omega
  have h11 : C (497664 * k + 496934) = 248832 * k + 248467 := by
    unfold C
    simp [show (497664 * k + 496934) % 2 = 0 by omega]
    omega
  have h12 : C (248832 * k + 248467) = 746496 * k + 745402 := by
    unfold C
    simp [show (248832 * k + 248467) % 2 ≠ 0 by omega]
    omega
  have h13 : C (746496 * k + 745402) = 373248 * k + 372701 := by
    unfold C
    simp [show (746496 * k + 745402) % 2 = 0 by omega]
    omega
  have h14 : C (373248 * k + 372701) = 1119744 * k + 1118104 := by
    unfold C
    simp [show (373248 * k + 372701) % 2 ≠ 0 by omega]
    omega
  have h15 : C (1119744 * k + 1118104) = 559872 * k + 559052 := by
    unfold C
    simp [show (1119744 * k + 1118104) % 2 = 0 by omega]
    omega
  have h16 : C (559872 * k + 559052) = 279936 * k + 279526 := by
    unfold C
    simp [show (559872 * k + 559052) % 2 = 0 by omega]
    omega
  have h17 : C (279936 * k + 279526) = 139968 * k + 139763 := by
    unfold C
    simp [show (279936 * k + 279526) % 2 = 0 by omega]
    omega
  have h18 : C (139968 * k + 139763) = 419904 * k + 419290 := by
    unfold C
    simp [show (139968 * k + 139763) % 2 ≠ 0 by omega]
    omega
  have h19 : C (419904 * k + 419290) = 209952 * k + 209645 := by
    unfold C
    simp [show (419904 * k + 419290) % 2 = 0 by omega]
    omega
  have h20 : C (209952 * k + 209645) = 629856 * k + 628936 := by
    unfold C
    simp [show (209952 * k + 209645) % 2 ≠ 0 by omega]
    omega
  have h21 : C (629856 * k + 628936) = 314928 * k + 314468 := by
    unfold C
    simp [show (629856 * k + 628936) % 2 = 0 by omega]
    omega
  have h22 : C (314928 * k + 314468) = 157464 * k + 157234 := by
    unfold C
    simp [show (314928 * k + 314468) % 2 = 0 by omega]
    omega
  have h23 : C (157464 * k + 157234) = 78732 * k + 78617 := by
    unfold C
    simp [show (157464 * k + 157234) % 2 = 0 by omega]
    omega
  have h24 : C (78732 * k + 78617) = 236196 * k + 235852 := by
    unfold C
    simp [show (78732 * k + 78617) % 2 ≠ 0 by omega]
    omega
  have h25 : C (236196 * k + 235852) = 118098 * k + 117926 := by
    unfold C
    simp [show (236196 * k + 235852) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 117926) = 59049 * k + 58963 := by
    unfold C
    simp [show (118098 * k + 117926) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 65439) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 65439)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

end CollatzM16ShardX
