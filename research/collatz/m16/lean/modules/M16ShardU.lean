import Mathlib.Data.Nat.Prime.Basic

namespace CollatzM16ShardU

def C (n : Nat) : Nat := if n % 2 = 0 then n / 2 else 3 * n + 1

def iterate (n t : Nat) : Nat := Nat.rec n (fun _ previous => C previous) t

theorem descent_mod65536_55407 : ∀ k : Nat,
    iterate (65536 * k + 55407) 26 = 59049 * k + 49924 ∧
      59049 * k + 49924 < 65536 * k + 55407 := by
  intro k
  have h1 : C (65536 * k + 55407) = 196608 * k + 166222 := by
    unfold C
    simp [show (65536 * k + 55407) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 166222) = 98304 * k + 83111 := by
    unfold C
    simp [show (196608 * k + 166222) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 83111) = 294912 * k + 249334 := by
    unfold C
    simp [show (98304 * k + 83111) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 249334) = 147456 * k + 124667 := by
    unfold C
    simp [show (294912 * k + 249334) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 124667) = 442368 * k + 374002 := by
    unfold C
    simp [show (147456 * k + 124667) % 2 ≠ 0 by omega]
    omega
  have h6 : C (442368 * k + 374002) = 221184 * k + 187001 := by
    unfold C
    simp [show (442368 * k + 374002) % 2 = 0 by omega]
    omega
  have h7 : C (221184 * k + 187001) = 663552 * k + 561004 := by
    unfold C
    simp [show (221184 * k + 187001) % 2 ≠ 0 by omega]
    omega
  have h8 : C (663552 * k + 561004) = 331776 * k + 280502 := by
    unfold C
    simp [show (663552 * k + 561004) % 2 = 0 by omega]
    omega
  have h9 : C (331776 * k + 280502) = 165888 * k + 140251 := by
    unfold C
    simp [show (331776 * k + 280502) % 2 = 0 by omega]
    omega
  have h10 : C (165888 * k + 140251) = 497664 * k + 420754 := by
    unfold C
    simp [show (165888 * k + 140251) % 2 ≠ 0 by omega]
    omega
  have h11 : C (497664 * k + 420754) = 248832 * k + 210377 := by
    unfold C
    simp [show (497664 * k + 420754) % 2 = 0 by omega]
    omega
  have h12 : C (248832 * k + 210377) = 746496 * k + 631132 := by
    unfold C
    simp [show (248832 * k + 210377) % 2 ≠ 0 by omega]
    omega
  have h13 : C (746496 * k + 631132) = 373248 * k + 315566 := by
    unfold C
    simp [show (746496 * k + 631132) % 2 = 0 by omega]
    omega
  have h14 : C (373248 * k + 315566) = 186624 * k + 157783 := by
    unfold C
    simp [show (373248 * k + 315566) % 2 = 0 by omega]
    omega
  have h15 : C (186624 * k + 157783) = 559872 * k + 473350 := by
    unfold C
    simp [show (186624 * k + 157783) % 2 ≠ 0 by omega]
    omega
  have h16 : C (559872 * k + 473350) = 279936 * k + 236675 := by
    unfold C
    simp [show (559872 * k + 473350) % 2 = 0 by omega]
    omega
  have h17 : C (279936 * k + 236675) = 839808 * k + 710026 := by
    unfold C
    simp [show (279936 * k + 236675) % 2 ≠ 0 by omega]
    omega
  have h18 : C (839808 * k + 710026) = 419904 * k + 355013 := by
    unfold C
    simp [show (839808 * k + 710026) % 2 = 0 by omega]
    omega
  have h19 : C (419904 * k + 355013) = 1259712 * k + 1065040 := by
    unfold C
    simp [show (419904 * k + 355013) % 2 ≠ 0 by omega]
    omega
  have h20 : C (1259712 * k + 1065040) = 629856 * k + 532520 := by
    unfold C
    simp [show (1259712 * k + 1065040) % 2 = 0 by omega]
    omega
  have h21 : C (629856 * k + 532520) = 314928 * k + 266260 := by
    unfold C
    simp [show (629856 * k + 532520) % 2 = 0 by omega]
    omega
  have h22 : C (314928 * k + 266260) = 157464 * k + 133130 := by
    unfold C
    simp [show (314928 * k + 266260) % 2 = 0 by omega]
    omega
  have h23 : C (157464 * k + 133130) = 78732 * k + 66565 := by
    unfold C
    simp [show (157464 * k + 133130) % 2 = 0 by omega]
    omega
  have h24 : C (78732 * k + 66565) = 236196 * k + 199696 := by
    unfold C
    simp [show (78732 * k + 66565) % 2 ≠ 0 by omega]
    omega
  have h25 : C (236196 * k + 199696) = 118098 * k + 99848 := by
    unfold C
    simp [show (236196 * k + 199696) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 99848) = 59049 * k + 49924 := by
    unfold C
    simp [show (118098 * k + 99848) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 55407) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 55407)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_55535 : ∀ k : Nat,
    iterate (65536 * k + 55535) 26 = 59049 * k + 50039 ∧
      59049 * k + 50039 < 65536 * k + 55535 := by
  intro k
  have h1 : C (65536 * k + 55535) = 196608 * k + 166606 := by
    unfold C
    simp [show (65536 * k + 55535) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 166606) = 98304 * k + 83303 := by
    unfold C
    simp [show (196608 * k + 166606) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 83303) = 294912 * k + 249910 := by
    unfold C
    simp [show (98304 * k + 83303) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 249910) = 147456 * k + 124955 := by
    unfold C
    simp [show (294912 * k + 249910) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 124955) = 442368 * k + 374866 := by
    unfold C
    simp [show (147456 * k + 124955) % 2 ≠ 0 by omega]
    omega
  have h6 : C (442368 * k + 374866) = 221184 * k + 187433 := by
    unfold C
    simp [show (442368 * k + 374866) % 2 = 0 by omega]
    omega
  have h7 : C (221184 * k + 187433) = 663552 * k + 562300 := by
    unfold C
    simp [show (221184 * k + 187433) % 2 ≠ 0 by omega]
    omega
  have h8 : C (663552 * k + 562300) = 331776 * k + 281150 := by
    unfold C
    simp [show (663552 * k + 562300) % 2 = 0 by omega]
    omega
  have h9 : C (331776 * k + 281150) = 165888 * k + 140575 := by
    unfold C
    simp [show (331776 * k + 281150) % 2 = 0 by omega]
    omega
  have h10 : C (165888 * k + 140575) = 497664 * k + 421726 := by
    unfold C
    simp [show (165888 * k + 140575) % 2 ≠ 0 by omega]
    omega
  have h11 : C (497664 * k + 421726) = 248832 * k + 210863 := by
    unfold C
    simp [show (497664 * k + 421726) % 2 = 0 by omega]
    omega
  have h12 : C (248832 * k + 210863) = 746496 * k + 632590 := by
    unfold C
    simp [show (248832 * k + 210863) % 2 ≠ 0 by omega]
    omega
  have h13 : C (746496 * k + 632590) = 373248 * k + 316295 := by
    unfold C
    simp [show (746496 * k + 632590) % 2 = 0 by omega]
    omega
  have h14 : C (373248 * k + 316295) = 1119744 * k + 948886 := by
    unfold C
    simp [show (373248 * k + 316295) % 2 ≠ 0 by omega]
    omega
  have h15 : C (1119744 * k + 948886) = 559872 * k + 474443 := by
    unfold C
    simp [show (1119744 * k + 948886) % 2 = 0 by omega]
    omega
  have h16 : C (559872 * k + 474443) = 1679616 * k + 1423330 := by
    unfold C
    simp [show (559872 * k + 474443) % 2 ≠ 0 by omega]
    omega
  have h17 : C (1679616 * k + 1423330) = 839808 * k + 711665 := by
    unfold C
    simp [show (1679616 * k + 1423330) % 2 = 0 by omega]
    omega
  have h18 : C (839808 * k + 711665) = 2519424 * k + 2134996 := by
    unfold C
    simp [show (839808 * k + 711665) % 2 ≠ 0 by omega]
    omega
  have h19 : C (2519424 * k + 2134996) = 1259712 * k + 1067498 := by
    unfold C
    simp [show (2519424 * k + 2134996) % 2 = 0 by omega]
    omega
  have h20 : C (1259712 * k + 1067498) = 629856 * k + 533749 := by
    unfold C
    simp [show (1259712 * k + 1067498) % 2 = 0 by omega]
    omega
  have h21 : C (629856 * k + 533749) = 1889568 * k + 1601248 := by
    unfold C
    simp [show (629856 * k + 533749) % 2 ≠ 0 by omega]
    omega
  have h22 : C (1889568 * k + 1601248) = 944784 * k + 800624 := by
    unfold C
    simp [show (1889568 * k + 1601248) % 2 = 0 by omega]
    omega
  have h23 : C (944784 * k + 800624) = 472392 * k + 400312 := by
    unfold C
    simp [show (944784 * k + 800624) % 2 = 0 by omega]
    omega
  have h24 : C (472392 * k + 400312) = 236196 * k + 200156 := by
    unfold C
    simp [show (472392 * k + 400312) % 2 = 0 by omega]
    omega
  have h25 : C (236196 * k + 200156) = 118098 * k + 100078 := by
    unfold C
    simp [show (236196 * k + 200156) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 100078) = 59049 * k + 50039 := by
    unfold C
    simp [show (118098 * k + 100078) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 55535) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 55535)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_55963 : ∀ k : Nat,
    iterate (65536 * k + 55963) 26 = 59049 * k + 50425 ∧
      59049 * k + 50425 < 65536 * k + 55963 := by
  intro k
  have h1 : C (65536 * k + 55963) = 196608 * k + 167890 := by
    unfold C
    simp [show (65536 * k + 55963) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 167890) = 98304 * k + 83945 := by
    unfold C
    simp [show (196608 * k + 167890) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 83945) = 294912 * k + 251836 := by
    unfold C
    simp [show (98304 * k + 83945) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 251836) = 147456 * k + 125918 := by
    unfold C
    simp [show (294912 * k + 251836) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 125918) = 73728 * k + 62959 := by
    unfold C
    simp [show (147456 * k + 125918) % 2 = 0 by omega]
    omega
  have h6 : C (73728 * k + 62959) = 221184 * k + 188878 := by
    unfold C
    simp [show (73728 * k + 62959) % 2 ≠ 0 by omega]
    omega
  have h7 : C (221184 * k + 188878) = 110592 * k + 94439 := by
    unfold C
    simp [show (221184 * k + 188878) % 2 = 0 by omega]
    omega
  have h8 : C (110592 * k + 94439) = 331776 * k + 283318 := by
    unfold C
    simp [show (110592 * k + 94439) % 2 ≠ 0 by omega]
    omega
  have h9 : C (331776 * k + 283318) = 165888 * k + 141659 := by
    unfold C
    simp [show (331776 * k + 283318) % 2 = 0 by omega]
    omega
  have h10 : C (165888 * k + 141659) = 497664 * k + 424978 := by
    unfold C
    simp [show (165888 * k + 141659) % 2 ≠ 0 by omega]
    omega
  have h11 : C (497664 * k + 424978) = 248832 * k + 212489 := by
    unfold C
    simp [show (497664 * k + 424978) % 2 = 0 by omega]
    omega
  have h12 : C (248832 * k + 212489) = 746496 * k + 637468 := by
    unfold C
    simp [show (248832 * k + 212489) % 2 ≠ 0 by omega]
    omega
  have h13 : C (746496 * k + 637468) = 373248 * k + 318734 := by
    unfold C
    simp [show (746496 * k + 637468) % 2 = 0 by omega]
    omega
  have h14 : C (373248 * k + 318734) = 186624 * k + 159367 := by
    unfold C
    simp [show (373248 * k + 318734) % 2 = 0 by omega]
    omega
  have h15 : C (186624 * k + 159367) = 559872 * k + 478102 := by
    unfold C
    simp [show (186624 * k + 159367) % 2 ≠ 0 by omega]
    omega
  have h16 : C (559872 * k + 478102) = 279936 * k + 239051 := by
    unfold C
    simp [show (559872 * k + 478102) % 2 = 0 by omega]
    omega
  have h17 : C (279936 * k + 239051) = 839808 * k + 717154 := by
    unfold C
    simp [show (279936 * k + 239051) % 2 ≠ 0 by omega]
    omega
  have h18 : C (839808 * k + 717154) = 419904 * k + 358577 := by
    unfold C
    simp [show (839808 * k + 717154) % 2 = 0 by omega]
    omega
  have h19 : C (419904 * k + 358577) = 1259712 * k + 1075732 := by
    unfold C
    simp [show (419904 * k + 358577) % 2 ≠ 0 by omega]
    omega
  have h20 : C (1259712 * k + 1075732) = 629856 * k + 537866 := by
    unfold C
    simp [show (1259712 * k + 1075732) % 2 = 0 by omega]
    omega
  have h21 : C (629856 * k + 537866) = 314928 * k + 268933 := by
    unfold C
    simp [show (629856 * k + 537866) % 2 = 0 by omega]
    omega
  have h22 : C (314928 * k + 268933) = 944784 * k + 806800 := by
    unfold C
    simp [show (314928 * k + 268933) % 2 ≠ 0 by omega]
    omega
  have h23 : C (944784 * k + 806800) = 472392 * k + 403400 := by
    unfold C
    simp [show (944784 * k + 806800) % 2 = 0 by omega]
    omega
  have h24 : C (472392 * k + 403400) = 236196 * k + 201700 := by
    unfold C
    simp [show (472392 * k + 403400) % 2 = 0 by omega]
    omega
  have h25 : C (236196 * k + 201700) = 118098 * k + 100850 := by
    unfold C
    simp [show (236196 * k + 201700) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 100850) = 59049 * k + 50425 := by
    unfold C
    simp [show (118098 * k + 100850) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 55963) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 55963)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_56059 : ∀ k : Nat,
    iterate (65536 * k + 56059) 26 = 59049 * k + 50512 ∧
      59049 * k + 50512 < 65536 * k + 56059 := by
  intro k
  have h1 : C (65536 * k + 56059) = 196608 * k + 168178 := by
    unfold C
    simp [show (65536 * k + 56059) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 168178) = 98304 * k + 84089 := by
    unfold C
    simp [show (196608 * k + 168178) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 84089) = 294912 * k + 252268 := by
    unfold C
    simp [show (98304 * k + 84089) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 252268) = 147456 * k + 126134 := by
    unfold C
    simp [show (294912 * k + 252268) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 126134) = 73728 * k + 63067 := by
    unfold C
    simp [show (147456 * k + 126134) % 2 = 0 by omega]
    omega
  have h6 : C (73728 * k + 63067) = 221184 * k + 189202 := by
    unfold C
    simp [show (73728 * k + 63067) % 2 ≠ 0 by omega]
    omega
  have h7 : C (221184 * k + 189202) = 110592 * k + 94601 := by
    unfold C
    simp [show (221184 * k + 189202) % 2 = 0 by omega]
    omega
  have h8 : C (110592 * k + 94601) = 331776 * k + 283804 := by
    unfold C
    simp [show (110592 * k + 94601) % 2 ≠ 0 by omega]
    omega
  have h9 : C (331776 * k + 283804) = 165888 * k + 141902 := by
    unfold C
    simp [show (331776 * k + 283804) % 2 = 0 by omega]
    omega
  have h10 : C (165888 * k + 141902) = 82944 * k + 70951 := by
    unfold C
    simp [show (165888 * k + 141902) % 2 = 0 by omega]
    omega
  have h11 : C (82944 * k + 70951) = 248832 * k + 212854 := by
    unfold C
    simp [show (82944 * k + 70951) % 2 ≠ 0 by omega]
    omega
  have h12 : C (248832 * k + 212854) = 124416 * k + 106427 := by
    unfold C
    simp [show (248832 * k + 212854) % 2 = 0 by omega]
    omega
  have h13 : C (124416 * k + 106427) = 373248 * k + 319282 := by
    unfold C
    simp [show (124416 * k + 106427) % 2 ≠ 0 by omega]
    omega
  have h14 : C (373248 * k + 319282) = 186624 * k + 159641 := by
    unfold C
    simp [show (373248 * k + 319282) % 2 = 0 by omega]
    omega
  have h15 : C (186624 * k + 159641) = 559872 * k + 478924 := by
    unfold C
    simp [show (186624 * k + 159641) % 2 ≠ 0 by omega]
    omega
  have h16 : C (559872 * k + 478924) = 279936 * k + 239462 := by
    unfold C
    simp [show (559872 * k + 478924) % 2 = 0 by omega]
    omega
  have h17 : C (279936 * k + 239462) = 139968 * k + 119731 := by
    unfold C
    simp [show (279936 * k + 239462) % 2 = 0 by omega]
    omega
  have h18 : C (139968 * k + 119731) = 419904 * k + 359194 := by
    unfold C
    simp [show (139968 * k + 119731) % 2 ≠ 0 by omega]
    omega
  have h19 : C (419904 * k + 359194) = 209952 * k + 179597 := by
    unfold C
    simp [show (419904 * k + 359194) % 2 = 0 by omega]
    omega
  have h20 : C (209952 * k + 179597) = 629856 * k + 538792 := by
    unfold C
    simp [show (209952 * k + 179597) % 2 ≠ 0 by omega]
    omega
  have h21 : C (629856 * k + 538792) = 314928 * k + 269396 := by
    unfold C
    simp [show (629856 * k + 538792) % 2 = 0 by omega]
    omega
  have h22 : C (314928 * k + 269396) = 157464 * k + 134698 := by
    unfold C
    simp [show (314928 * k + 269396) % 2 = 0 by omega]
    omega
  have h23 : C (157464 * k + 134698) = 78732 * k + 67349 := by
    unfold C
    simp [show (157464 * k + 134698) % 2 = 0 by omega]
    omega
  have h24 : C (78732 * k + 67349) = 236196 * k + 202048 := by
    unfold C
    simp [show (78732 * k + 67349) % 2 ≠ 0 by omega]
    omega
  have h25 : C (236196 * k + 202048) = 118098 * k + 101024 := by
    unfold C
    simp [show (236196 * k + 202048) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 101024) = 59049 * k + 50512 := by
    unfold C
    simp [show (118098 * k + 101024) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 56059) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 56059)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_56191 : ∀ k : Nat,
    iterate (65536 * k + 56191) 26 = 59049 * k + 50630 ∧
      59049 * k + 50630 < 65536 * k + 56191 := by
  intro k
  have h1 : C (65536 * k + 56191) = 196608 * k + 168574 := by
    unfold C
    simp [show (65536 * k + 56191) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 168574) = 98304 * k + 84287 := by
    unfold C
    simp [show (196608 * k + 168574) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 84287) = 294912 * k + 252862 := by
    unfold C
    simp [show (98304 * k + 84287) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 252862) = 147456 * k + 126431 := by
    unfold C
    simp [show (294912 * k + 252862) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 126431) = 442368 * k + 379294 := by
    unfold C
    simp [show (147456 * k + 126431) % 2 ≠ 0 by omega]
    omega
  have h6 : C (442368 * k + 379294) = 221184 * k + 189647 := by
    unfold C
    simp [show (442368 * k + 379294) % 2 = 0 by omega]
    omega
  have h7 : C (221184 * k + 189647) = 663552 * k + 568942 := by
    unfold C
    simp [show (221184 * k + 189647) % 2 ≠ 0 by omega]
    omega
  have h8 : C (663552 * k + 568942) = 331776 * k + 284471 := by
    unfold C
    simp [show (663552 * k + 568942) % 2 = 0 by omega]
    omega
  have h9 : C (331776 * k + 284471) = 995328 * k + 853414 := by
    unfold C
    simp [show (331776 * k + 284471) % 2 ≠ 0 by omega]
    omega
  have h10 : C (995328 * k + 853414) = 497664 * k + 426707 := by
    unfold C
    simp [show (995328 * k + 853414) % 2 = 0 by omega]
    omega
  have h11 : C (497664 * k + 426707) = 1492992 * k + 1280122 := by
    unfold C
    simp [show (497664 * k + 426707) % 2 ≠ 0 by omega]
    omega
  have h12 : C (1492992 * k + 1280122) = 746496 * k + 640061 := by
    unfold C
    simp [show (1492992 * k + 1280122) % 2 = 0 by omega]
    omega
  have h13 : C (746496 * k + 640061) = 2239488 * k + 1920184 := by
    unfold C
    simp [show (746496 * k + 640061) % 2 ≠ 0 by omega]
    omega
  have h14 : C (2239488 * k + 1920184) = 1119744 * k + 960092 := by
    unfold C
    simp [show (2239488 * k + 1920184) % 2 = 0 by omega]
    omega
  have h15 : C (1119744 * k + 960092) = 559872 * k + 480046 := by
    unfold C
    simp [show (1119744 * k + 960092) % 2 = 0 by omega]
    omega
  have h16 : C (559872 * k + 480046) = 279936 * k + 240023 := by
    unfold C
    simp [show (559872 * k + 480046) % 2 = 0 by omega]
    omega
  have h17 : C (279936 * k + 240023) = 839808 * k + 720070 := by
    unfold C
    simp [show (279936 * k + 240023) % 2 ≠ 0 by omega]
    omega
  have h18 : C (839808 * k + 720070) = 419904 * k + 360035 := by
    unfold C
    simp [show (839808 * k + 720070) % 2 = 0 by omega]
    omega
  have h19 : C (419904 * k + 360035) = 1259712 * k + 1080106 := by
    unfold C
    simp [show (419904 * k + 360035) % 2 ≠ 0 by omega]
    omega
  have h20 : C (1259712 * k + 1080106) = 629856 * k + 540053 := by
    unfold C
    simp [show (1259712 * k + 1080106) % 2 = 0 by omega]
    omega
  have h21 : C (629856 * k + 540053) = 1889568 * k + 1620160 := by
    unfold C
    simp [show (629856 * k + 540053) % 2 ≠ 0 by omega]
    omega
  have h22 : C (1889568 * k + 1620160) = 944784 * k + 810080 := by
    unfold C
    simp [show (1889568 * k + 1620160) % 2 = 0 by omega]
    omega
  have h23 : C (944784 * k + 810080) = 472392 * k + 405040 := by
    unfold C
    simp [show (944784 * k + 810080) % 2 = 0 by omega]
    omega
  have h24 : C (472392 * k + 405040) = 236196 * k + 202520 := by
    unfold C
    simp [show (472392 * k + 405040) % 2 = 0 by omega]
    omega
  have h25 : C (236196 * k + 202520) = 118098 * k + 101260 := by
    unfold C
    simp [show (236196 * k + 202520) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 101260) = 59049 * k + 50630 := by
    unfold C
    simp [show (118098 * k + 101260) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 56191) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 56191)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_56287 : ∀ k : Nat,
    iterate (65536 * k + 56287) 26 = 59049 * k + 50717 ∧
      59049 * k + 50717 < 65536 * k + 56287 := by
  intro k
  have h1 : C (65536 * k + 56287) = 196608 * k + 168862 := by
    unfold C
    simp [show (65536 * k + 56287) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 168862) = 98304 * k + 84431 := by
    unfold C
    simp [show (196608 * k + 168862) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 84431) = 294912 * k + 253294 := by
    unfold C
    simp [show (98304 * k + 84431) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 253294) = 147456 * k + 126647 := by
    unfold C
    simp [show (294912 * k + 253294) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 126647) = 442368 * k + 379942 := by
    unfold C
    simp [show (147456 * k + 126647) % 2 ≠ 0 by omega]
    omega
  have h6 : C (442368 * k + 379942) = 221184 * k + 189971 := by
    unfold C
    simp [show (442368 * k + 379942) % 2 = 0 by omega]
    omega
  have h7 : C (221184 * k + 189971) = 663552 * k + 569914 := by
    unfold C
    simp [show (221184 * k + 189971) % 2 ≠ 0 by omega]
    omega
  have h8 : C (663552 * k + 569914) = 331776 * k + 284957 := by
    unfold C
    simp [show (663552 * k + 569914) % 2 = 0 by omega]
    omega
  have h9 : C (331776 * k + 284957) = 995328 * k + 854872 := by
    unfold C
    simp [show (331776 * k + 284957) % 2 ≠ 0 by omega]
    omega
  have h10 : C (995328 * k + 854872) = 497664 * k + 427436 := by
    unfold C
    simp [show (995328 * k + 854872) % 2 = 0 by omega]
    omega
  have h11 : C (497664 * k + 427436) = 248832 * k + 213718 := by
    unfold C
    simp [show (497664 * k + 427436) % 2 = 0 by omega]
    omega
  have h12 : C (248832 * k + 213718) = 124416 * k + 106859 := by
    unfold C
    simp [show (248832 * k + 213718) % 2 = 0 by omega]
    omega
  have h13 : C (124416 * k + 106859) = 373248 * k + 320578 := by
    unfold C
    simp [show (124416 * k + 106859) % 2 ≠ 0 by omega]
    omega
  have h14 : C (373248 * k + 320578) = 186624 * k + 160289 := by
    unfold C
    simp [show (373248 * k + 320578) % 2 = 0 by omega]
    omega
  have h15 : C (186624 * k + 160289) = 559872 * k + 480868 := by
    unfold C
    simp [show (186624 * k + 160289) % 2 ≠ 0 by omega]
    omega
  have h16 : C (559872 * k + 480868) = 279936 * k + 240434 := by
    unfold C
    simp [show (559872 * k + 480868) % 2 = 0 by omega]
    omega
  have h17 : C (279936 * k + 240434) = 139968 * k + 120217 := by
    unfold C
    simp [show (279936 * k + 240434) % 2 = 0 by omega]
    omega
  have h18 : C (139968 * k + 120217) = 419904 * k + 360652 := by
    unfold C
    simp [show (139968 * k + 120217) % 2 ≠ 0 by omega]
    omega
  have h19 : C (419904 * k + 360652) = 209952 * k + 180326 := by
    unfold C
    simp [show (419904 * k + 360652) % 2 = 0 by omega]
    omega
  have h20 : C (209952 * k + 180326) = 104976 * k + 90163 := by
    unfold C
    simp [show (209952 * k + 180326) % 2 = 0 by omega]
    omega
  have h21 : C (104976 * k + 90163) = 314928 * k + 270490 := by
    unfold C
    simp [show (104976 * k + 90163) % 2 ≠ 0 by omega]
    omega
  have h22 : C (314928 * k + 270490) = 157464 * k + 135245 := by
    unfold C
    simp [show (314928 * k + 270490) % 2 = 0 by omega]
    omega
  have h23 : C (157464 * k + 135245) = 472392 * k + 405736 := by
    unfold C
    simp [show (157464 * k + 135245) % 2 ≠ 0 by omega]
    omega
  have h24 : C (472392 * k + 405736) = 236196 * k + 202868 := by
    unfold C
    simp [show (472392 * k + 405736) % 2 = 0 by omega]
    omega
  have h25 : C (236196 * k + 202868) = 118098 * k + 101434 := by
    unfold C
    simp [show (236196 * k + 202868) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 101434) = 59049 * k + 50717 := by
    unfold C
    simp [show (118098 * k + 101434) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 56287) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 56287)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_56315 : ∀ k : Nat,
    iterate (65536 * k + 56315) 26 = 59049 * k + 50743 ∧
      59049 * k + 50743 < 65536 * k + 56315 := by
  intro k
  have h1 : C (65536 * k + 56315) = 196608 * k + 168946 := by
    unfold C
    simp [show (65536 * k + 56315) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 168946) = 98304 * k + 84473 := by
    unfold C
    simp [show (196608 * k + 168946) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 84473) = 294912 * k + 253420 := by
    unfold C
    simp [show (98304 * k + 84473) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 253420) = 147456 * k + 126710 := by
    unfold C
    simp [show (294912 * k + 253420) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 126710) = 73728 * k + 63355 := by
    unfold C
    simp [show (147456 * k + 126710) % 2 = 0 by omega]
    omega
  have h6 : C (73728 * k + 63355) = 221184 * k + 190066 := by
    unfold C
    simp [show (73728 * k + 63355) % 2 ≠ 0 by omega]
    omega
  have h7 : C (221184 * k + 190066) = 110592 * k + 95033 := by
    unfold C
    simp [show (221184 * k + 190066) % 2 = 0 by omega]
    omega
  have h8 : C (110592 * k + 95033) = 331776 * k + 285100 := by
    unfold C
    simp [show (110592 * k + 95033) % 2 ≠ 0 by omega]
    omega
  have h9 : C (331776 * k + 285100) = 165888 * k + 142550 := by
    unfold C
    simp [show (331776 * k + 285100) % 2 = 0 by omega]
    omega
  have h10 : C (165888 * k + 142550) = 82944 * k + 71275 := by
    unfold C
    simp [show (165888 * k + 142550) % 2 = 0 by omega]
    omega
  have h11 : C (82944 * k + 71275) = 248832 * k + 213826 := by
    unfold C
    simp [show (82944 * k + 71275) % 2 ≠ 0 by omega]
    omega
  have h12 : C (248832 * k + 213826) = 124416 * k + 106913 := by
    unfold C
    simp [show (248832 * k + 213826) % 2 = 0 by omega]
    omega
  have h13 : C (124416 * k + 106913) = 373248 * k + 320740 := by
    unfold C
    simp [show (124416 * k + 106913) % 2 ≠ 0 by omega]
    omega
  have h14 : C (373248 * k + 320740) = 186624 * k + 160370 := by
    unfold C
    simp [show (373248 * k + 320740) % 2 = 0 by omega]
    omega
  have h15 : C (186624 * k + 160370) = 93312 * k + 80185 := by
    unfold C
    simp [show (186624 * k + 160370) % 2 = 0 by omega]
    omega
  have h16 : C (93312 * k + 80185) = 279936 * k + 240556 := by
    unfold C
    simp [show (93312 * k + 80185) % 2 ≠ 0 by omega]
    omega
  have h17 : C (279936 * k + 240556) = 139968 * k + 120278 := by
    unfold C
    simp [show (279936 * k + 240556) % 2 = 0 by omega]
    omega
  have h18 : C (139968 * k + 120278) = 69984 * k + 60139 := by
    unfold C
    simp [show (139968 * k + 120278) % 2 = 0 by omega]
    omega
  have h19 : C (69984 * k + 60139) = 209952 * k + 180418 := by
    unfold C
    simp [show (69984 * k + 60139) % 2 ≠ 0 by omega]
    omega
  have h20 : C (209952 * k + 180418) = 104976 * k + 90209 := by
    unfold C
    simp [show (209952 * k + 180418) % 2 = 0 by omega]
    omega
  have h21 : C (104976 * k + 90209) = 314928 * k + 270628 := by
    unfold C
    simp [show (104976 * k + 90209) % 2 ≠ 0 by omega]
    omega
  have h22 : C (314928 * k + 270628) = 157464 * k + 135314 := by
    unfold C
    simp [show (314928 * k + 270628) % 2 = 0 by omega]
    omega
  have h23 : C (157464 * k + 135314) = 78732 * k + 67657 := by
    unfold C
    simp [show (157464 * k + 135314) % 2 = 0 by omega]
    omega
  have h24 : C (78732 * k + 67657) = 236196 * k + 202972 := by
    unfold C
    simp [show (78732 * k + 67657) % 2 ≠ 0 by omega]
    omega
  have h25 : C (236196 * k + 202972) = 118098 * k + 101486 := by
    unfold C
    simp [show (236196 * k + 202972) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 101486) = 59049 * k + 50743 := by
    unfold C
    simp [show (118098 * k + 101486) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 56315) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 56315)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_56347 : ∀ k : Nat,
    iterate (65536 * k + 56347) 26 = 59049 * k + 50771 ∧
      59049 * k + 50771 < 65536 * k + 56347 := by
  intro k
  have h1 : C (65536 * k + 56347) = 196608 * k + 169042 := by
    unfold C
    simp [show (65536 * k + 56347) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 169042) = 98304 * k + 84521 := by
    unfold C
    simp [show (196608 * k + 169042) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 84521) = 294912 * k + 253564 := by
    unfold C
    simp [show (98304 * k + 84521) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 253564) = 147456 * k + 126782 := by
    unfold C
    simp [show (294912 * k + 253564) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 126782) = 73728 * k + 63391 := by
    unfold C
    simp [show (147456 * k + 126782) % 2 = 0 by omega]
    omega
  have h6 : C (73728 * k + 63391) = 221184 * k + 190174 := by
    unfold C
    simp [show (73728 * k + 63391) % 2 ≠ 0 by omega]
    omega
  have h7 : C (221184 * k + 190174) = 110592 * k + 95087 := by
    unfold C
    simp [show (221184 * k + 190174) % 2 = 0 by omega]
    omega
  have h8 : C (110592 * k + 95087) = 331776 * k + 285262 := by
    unfold C
    simp [show (110592 * k + 95087) % 2 ≠ 0 by omega]
    omega
  have h9 : C (331776 * k + 285262) = 165888 * k + 142631 := by
    unfold C
    simp [show (331776 * k + 285262) % 2 = 0 by omega]
    omega
  have h10 : C (165888 * k + 142631) = 497664 * k + 427894 := by
    unfold C
    simp [show (165888 * k + 142631) % 2 ≠ 0 by omega]
    omega
  have h11 : C (497664 * k + 427894) = 248832 * k + 213947 := by
    unfold C
    simp [show (497664 * k + 427894) % 2 = 0 by omega]
    omega
  have h12 : C (248832 * k + 213947) = 746496 * k + 641842 := by
    unfold C
    simp [show (248832 * k + 213947) % 2 ≠ 0 by omega]
    omega
  have h13 : C (746496 * k + 641842) = 373248 * k + 320921 := by
    unfold C
    simp [show (746496 * k + 641842) % 2 = 0 by omega]
    omega
  have h14 : C (373248 * k + 320921) = 1119744 * k + 962764 := by
    unfold C
    simp [show (373248 * k + 320921) % 2 ≠ 0 by omega]
    omega
  have h15 : C (1119744 * k + 962764) = 559872 * k + 481382 := by
    unfold C
    simp [show (1119744 * k + 962764) % 2 = 0 by omega]
    omega
  have h16 : C (559872 * k + 481382) = 279936 * k + 240691 := by
    unfold C
    simp [show (559872 * k + 481382) % 2 = 0 by omega]
    omega
  have h17 : C (279936 * k + 240691) = 839808 * k + 722074 := by
    unfold C
    simp [show (279936 * k + 240691) % 2 ≠ 0 by omega]
    omega
  have h18 : C (839808 * k + 722074) = 419904 * k + 361037 := by
    unfold C
    simp [show (839808 * k + 722074) % 2 = 0 by omega]
    omega
  have h19 : C (419904 * k + 361037) = 1259712 * k + 1083112 := by
    unfold C
    simp [show (419904 * k + 361037) % 2 ≠ 0 by omega]
    omega
  have h20 : C (1259712 * k + 1083112) = 629856 * k + 541556 := by
    unfold C
    simp [show (1259712 * k + 1083112) % 2 = 0 by omega]
    omega
  have h21 : C (629856 * k + 541556) = 314928 * k + 270778 := by
    unfold C
    simp [show (629856 * k + 541556) % 2 = 0 by omega]
    omega
  have h22 : C (314928 * k + 270778) = 157464 * k + 135389 := by
    unfold C
    simp [show (314928 * k + 270778) % 2 = 0 by omega]
    omega
  have h23 : C (157464 * k + 135389) = 472392 * k + 406168 := by
    unfold C
    simp [show (157464 * k + 135389) % 2 ≠ 0 by omega]
    omega
  have h24 : C (472392 * k + 406168) = 236196 * k + 203084 := by
    unfold C
    simp [show (472392 * k + 406168) % 2 = 0 by omega]
    omega
  have h25 : C (236196 * k + 203084) = 118098 * k + 101542 := by
    unfold C
    simp [show (236196 * k + 203084) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 101542) = 59049 * k + 50771 := by
    unfold C
    simp [show (118098 * k + 101542) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 56347) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 56347)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_56639 : ∀ k : Nat,
    iterate (65536 * k + 56639) 26 = 59049 * k + 51034 ∧
      59049 * k + 51034 < 65536 * k + 56639 := by
  intro k
  have h1 : C (65536 * k + 56639) = 196608 * k + 169918 := by
    unfold C
    simp [show (65536 * k + 56639) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 169918) = 98304 * k + 84959 := by
    unfold C
    simp [show (196608 * k + 169918) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 84959) = 294912 * k + 254878 := by
    unfold C
    simp [show (98304 * k + 84959) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 254878) = 147456 * k + 127439 := by
    unfold C
    simp [show (294912 * k + 254878) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 127439) = 442368 * k + 382318 := by
    unfold C
    simp [show (147456 * k + 127439) % 2 ≠ 0 by omega]
    omega
  have h6 : C (442368 * k + 382318) = 221184 * k + 191159 := by
    unfold C
    simp [show (442368 * k + 382318) % 2 = 0 by omega]
    omega
  have h7 : C (221184 * k + 191159) = 663552 * k + 573478 := by
    unfold C
    simp [show (221184 * k + 191159) % 2 ≠ 0 by omega]
    omega
  have h8 : C (663552 * k + 573478) = 331776 * k + 286739 := by
    unfold C
    simp [show (663552 * k + 573478) % 2 = 0 by omega]
    omega
  have h9 : C (331776 * k + 286739) = 995328 * k + 860218 := by
    unfold C
    simp [show (331776 * k + 286739) % 2 ≠ 0 by omega]
    omega
  have h10 : C (995328 * k + 860218) = 497664 * k + 430109 := by
    unfold C
    simp [show (995328 * k + 860218) % 2 = 0 by omega]
    omega
  have h11 : C (497664 * k + 430109) = 1492992 * k + 1290328 := by
    unfold C
    simp [show (497664 * k + 430109) % 2 ≠ 0 by omega]
    omega
  have h12 : C (1492992 * k + 1290328) = 746496 * k + 645164 := by
    unfold C
    simp [show (1492992 * k + 1290328) % 2 = 0 by omega]
    omega
  have h13 : C (746496 * k + 645164) = 373248 * k + 322582 := by
    unfold C
    simp [show (746496 * k + 645164) % 2 = 0 by omega]
    omega
  have h14 : C (373248 * k + 322582) = 186624 * k + 161291 := by
    unfold C
    simp [show (373248 * k + 322582) % 2 = 0 by omega]
    omega
  have h15 : C (186624 * k + 161291) = 559872 * k + 483874 := by
    unfold C
    simp [show (186624 * k + 161291) % 2 ≠ 0 by omega]
    omega
  have h16 : C (559872 * k + 483874) = 279936 * k + 241937 := by
    unfold C
    simp [show (559872 * k + 483874) % 2 = 0 by omega]
    omega
  have h17 : C (279936 * k + 241937) = 839808 * k + 725812 := by
    unfold C
    simp [show (279936 * k + 241937) % 2 ≠ 0 by omega]
    omega
  have h18 : C (839808 * k + 725812) = 419904 * k + 362906 := by
    unfold C
    simp [show (839808 * k + 725812) % 2 = 0 by omega]
    omega
  have h19 : C (419904 * k + 362906) = 209952 * k + 181453 := by
    unfold C
    simp [show (419904 * k + 362906) % 2 = 0 by omega]
    omega
  have h20 : C (209952 * k + 181453) = 629856 * k + 544360 := by
    unfold C
    simp [show (209952 * k + 181453) % 2 ≠ 0 by omega]
    omega
  have h21 : C (629856 * k + 544360) = 314928 * k + 272180 := by
    unfold C
    simp [show (629856 * k + 544360) % 2 = 0 by omega]
    omega
  have h22 : C (314928 * k + 272180) = 157464 * k + 136090 := by
    unfold C
    simp [show (314928 * k + 272180) % 2 = 0 by omega]
    omega
  have h23 : C (157464 * k + 136090) = 78732 * k + 68045 := by
    unfold C
    simp [show (157464 * k + 136090) % 2 = 0 by omega]
    omega
  have h24 : C (78732 * k + 68045) = 236196 * k + 204136 := by
    unfold C
    simp [show (78732 * k + 68045) % 2 ≠ 0 by omega]
    omega
  have h25 : C (236196 * k + 204136) = 118098 * k + 102068 := by
    unfold C
    simp [show (236196 * k + 204136) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 102068) = 59049 * k + 51034 := by
    unfold C
    simp [show (118098 * k + 102068) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 56639) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 56639)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_56935 : ∀ k : Nat,
    iterate (65536 * k + 56935) 26 = 59049 * k + 51301 ∧
      59049 * k + 51301 < 65536 * k + 56935 := by
  intro k
  have h1 : C (65536 * k + 56935) = 196608 * k + 170806 := by
    unfold C
    simp [show (65536 * k + 56935) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 170806) = 98304 * k + 85403 := by
    unfold C
    simp [show (196608 * k + 170806) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 85403) = 294912 * k + 256210 := by
    unfold C
    simp [show (98304 * k + 85403) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 256210) = 147456 * k + 128105 := by
    unfold C
    simp [show (294912 * k + 256210) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 128105) = 442368 * k + 384316 := by
    unfold C
    simp [show (147456 * k + 128105) % 2 ≠ 0 by omega]
    omega
  have h6 : C (442368 * k + 384316) = 221184 * k + 192158 := by
    unfold C
    simp [show (442368 * k + 384316) % 2 = 0 by omega]
    omega
  have h7 : C (221184 * k + 192158) = 110592 * k + 96079 := by
    unfold C
    simp [show (221184 * k + 192158) % 2 = 0 by omega]
    omega
  have h8 : C (110592 * k + 96079) = 331776 * k + 288238 := by
    unfold C
    simp [show (110592 * k + 96079) % 2 ≠ 0 by omega]
    omega
  have h9 : C (331776 * k + 288238) = 165888 * k + 144119 := by
    unfold C
    simp [show (331776 * k + 288238) % 2 = 0 by omega]
    omega
  have h10 : C (165888 * k + 144119) = 497664 * k + 432358 := by
    unfold C
    simp [show (165888 * k + 144119) % 2 ≠ 0 by omega]
    omega
  have h11 : C (497664 * k + 432358) = 248832 * k + 216179 := by
    unfold C
    simp [show (497664 * k + 432358) % 2 = 0 by omega]
    omega
  have h12 : C (248832 * k + 216179) = 746496 * k + 648538 := by
    unfold C
    simp [show (248832 * k + 216179) % 2 ≠ 0 by omega]
    omega
  have h13 : C (746496 * k + 648538) = 373248 * k + 324269 := by
    unfold C
    simp [show (746496 * k + 648538) % 2 = 0 by omega]
    omega
  have h14 : C (373248 * k + 324269) = 1119744 * k + 972808 := by
    unfold C
    simp [show (373248 * k + 324269) % 2 ≠ 0 by omega]
    omega
  have h15 : C (1119744 * k + 972808) = 559872 * k + 486404 := by
    unfold C
    simp [show (1119744 * k + 972808) % 2 = 0 by omega]
    omega
  have h16 : C (559872 * k + 486404) = 279936 * k + 243202 := by
    unfold C
    simp [show (559872 * k + 486404) % 2 = 0 by omega]
    omega
  have h17 : C (279936 * k + 243202) = 139968 * k + 121601 := by
    unfold C
    simp [show (279936 * k + 243202) % 2 = 0 by omega]
    omega
  have h18 : C (139968 * k + 121601) = 419904 * k + 364804 := by
    unfold C
    simp [show (139968 * k + 121601) % 2 ≠ 0 by omega]
    omega
  have h19 : C (419904 * k + 364804) = 209952 * k + 182402 := by
    unfold C
    simp [show (419904 * k + 364804) % 2 = 0 by omega]
    omega
  have h20 : C (209952 * k + 182402) = 104976 * k + 91201 := by
    unfold C
    simp [show (209952 * k + 182402) % 2 = 0 by omega]
    omega
  have h21 : C (104976 * k + 91201) = 314928 * k + 273604 := by
    unfold C
    simp [show (104976 * k + 91201) % 2 ≠ 0 by omega]
    omega
  have h22 : C (314928 * k + 273604) = 157464 * k + 136802 := by
    unfold C
    simp [show (314928 * k + 273604) % 2 = 0 by omega]
    omega
  have h23 : C (157464 * k + 136802) = 78732 * k + 68401 := by
    unfold C
    simp [show (157464 * k + 136802) % 2 = 0 by omega]
    omega
  have h24 : C (78732 * k + 68401) = 236196 * k + 205204 := by
    unfold C
    simp [show (78732 * k + 68401) % 2 ≠ 0 by omega]
    omega
  have h25 : C (236196 * k + 205204) = 118098 * k + 102602 := by
    unfold C
    simp [show (236196 * k + 205204) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 102602) = 59049 * k + 51301 := by
    unfold C
    simp [show (118098 * k + 102602) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 56935) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 56935)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_57179 : ∀ k : Nat,
    iterate (65536 * k + 57179) 26 = 59049 * k + 51521 ∧
      59049 * k + 51521 < 65536 * k + 57179 := by
  intro k
  have h1 : C (65536 * k + 57179) = 196608 * k + 171538 := by
    unfold C
    simp [show (65536 * k + 57179) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 171538) = 98304 * k + 85769 := by
    unfold C
    simp [show (196608 * k + 171538) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 85769) = 294912 * k + 257308 := by
    unfold C
    simp [show (98304 * k + 85769) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 257308) = 147456 * k + 128654 := by
    unfold C
    simp [show (294912 * k + 257308) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 128654) = 73728 * k + 64327 := by
    unfold C
    simp [show (147456 * k + 128654) % 2 = 0 by omega]
    omega
  have h6 : C (73728 * k + 64327) = 221184 * k + 192982 := by
    unfold C
    simp [show (73728 * k + 64327) % 2 ≠ 0 by omega]
    omega
  have h7 : C (221184 * k + 192982) = 110592 * k + 96491 := by
    unfold C
    simp [show (221184 * k + 192982) % 2 = 0 by omega]
    omega
  have h8 : C (110592 * k + 96491) = 331776 * k + 289474 := by
    unfold C
    simp [show (110592 * k + 96491) % 2 ≠ 0 by omega]
    omega
  have h9 : C (331776 * k + 289474) = 165888 * k + 144737 := by
    unfold C
    simp [show (331776 * k + 289474) % 2 = 0 by omega]
    omega
  have h10 : C (165888 * k + 144737) = 497664 * k + 434212 := by
    unfold C
    simp [show (165888 * k + 144737) % 2 ≠ 0 by omega]
    omega
  have h11 : C (497664 * k + 434212) = 248832 * k + 217106 := by
    unfold C
    simp [show (497664 * k + 434212) % 2 = 0 by omega]
    omega
  have h12 : C (248832 * k + 217106) = 124416 * k + 108553 := by
    unfold C
    simp [show (248832 * k + 217106) % 2 = 0 by omega]
    omega
  have h13 : C (124416 * k + 108553) = 373248 * k + 325660 := by
    unfold C
    simp [show (124416 * k + 108553) % 2 ≠ 0 by omega]
    omega
  have h14 : C (373248 * k + 325660) = 186624 * k + 162830 := by
    unfold C
    simp [show (373248 * k + 325660) % 2 = 0 by omega]
    omega
  have h15 : C (186624 * k + 162830) = 93312 * k + 81415 := by
    unfold C
    simp [show (186624 * k + 162830) % 2 = 0 by omega]
    omega
  have h16 : C (93312 * k + 81415) = 279936 * k + 244246 := by
    unfold C
    simp [show (93312 * k + 81415) % 2 ≠ 0 by omega]
    omega
  have h17 : C (279936 * k + 244246) = 139968 * k + 122123 := by
    unfold C
    simp [show (279936 * k + 244246) % 2 = 0 by omega]
    omega
  have h18 : C (139968 * k + 122123) = 419904 * k + 366370 := by
    unfold C
    simp [show (139968 * k + 122123) % 2 ≠ 0 by omega]
    omega
  have h19 : C (419904 * k + 366370) = 209952 * k + 183185 := by
    unfold C
    simp [show (419904 * k + 366370) % 2 = 0 by omega]
    omega
  have h20 : C (209952 * k + 183185) = 629856 * k + 549556 := by
    unfold C
    simp [show (209952 * k + 183185) % 2 ≠ 0 by omega]
    omega
  have h21 : C (629856 * k + 549556) = 314928 * k + 274778 := by
    unfold C
    simp [show (629856 * k + 549556) % 2 = 0 by omega]
    omega
  have h22 : C (314928 * k + 274778) = 157464 * k + 137389 := by
    unfold C
    simp [show (314928 * k + 274778) % 2 = 0 by omega]
    omega
  have h23 : C (157464 * k + 137389) = 472392 * k + 412168 := by
    unfold C
    simp [show (157464 * k + 137389) % 2 ≠ 0 by omega]
    omega
  have h24 : C (472392 * k + 412168) = 236196 * k + 206084 := by
    unfold C
    simp [show (472392 * k + 412168) % 2 = 0 by omega]
    omega
  have h25 : C (236196 * k + 206084) = 118098 * k + 103042 := by
    unfold C
    simp [show (236196 * k + 206084) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 103042) = 59049 * k + 51521 := by
    unfold C
    simp [show (118098 * k + 103042) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 57179) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 57179)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_57215 : ∀ k : Nat,
    iterate (65536 * k + 57215) 26 = 59049 * k + 51553 ∧
      59049 * k + 51553 < 65536 * k + 57215 := by
  intro k
  have h1 : C (65536 * k + 57215) = 196608 * k + 171646 := by
    unfold C
    simp [show (65536 * k + 57215) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 171646) = 98304 * k + 85823 := by
    unfold C
    simp [show (196608 * k + 171646) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 85823) = 294912 * k + 257470 := by
    unfold C
    simp [show (98304 * k + 85823) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 257470) = 147456 * k + 128735 := by
    unfold C
    simp [show (294912 * k + 257470) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 128735) = 442368 * k + 386206 := by
    unfold C
    simp [show (147456 * k + 128735) % 2 ≠ 0 by omega]
    omega
  have h6 : C (442368 * k + 386206) = 221184 * k + 193103 := by
    unfold C
    simp [show (442368 * k + 386206) % 2 = 0 by omega]
    omega
  have h7 : C (221184 * k + 193103) = 663552 * k + 579310 := by
    unfold C
    simp [show (221184 * k + 193103) % 2 ≠ 0 by omega]
    omega
  have h8 : C (663552 * k + 579310) = 331776 * k + 289655 := by
    unfold C
    simp [show (663552 * k + 579310) % 2 = 0 by omega]
    omega
  have h9 : C (331776 * k + 289655) = 995328 * k + 868966 := by
    unfold C
    simp [show (331776 * k + 289655) % 2 ≠ 0 by omega]
    omega
  have h10 : C (995328 * k + 868966) = 497664 * k + 434483 := by
    unfold C
    simp [show (995328 * k + 868966) % 2 = 0 by omega]
    omega
  have h11 : C (497664 * k + 434483) = 1492992 * k + 1303450 := by
    unfold C
    simp [show (497664 * k + 434483) % 2 ≠ 0 by omega]
    omega
  have h12 : C (1492992 * k + 1303450) = 746496 * k + 651725 := by
    unfold C
    simp [show (1492992 * k + 1303450) % 2 = 0 by omega]
    omega
  have h13 : C (746496 * k + 651725) = 2239488 * k + 1955176 := by
    unfold C
    simp [show (746496 * k + 651725) % 2 ≠ 0 by omega]
    omega
  have h14 : C (2239488 * k + 1955176) = 1119744 * k + 977588 := by
    unfold C
    simp [show (2239488 * k + 1955176) % 2 = 0 by omega]
    omega
  have h15 : C (1119744 * k + 977588) = 559872 * k + 488794 := by
    unfold C
    simp [show (1119744 * k + 977588) % 2 = 0 by omega]
    omega
  have h16 : C (559872 * k + 488794) = 279936 * k + 244397 := by
    unfold C
    simp [show (559872 * k + 488794) % 2 = 0 by omega]
    omega
  have h17 : C (279936 * k + 244397) = 839808 * k + 733192 := by
    unfold C
    simp [show (279936 * k + 244397) % 2 ≠ 0 by omega]
    omega
  have h18 : C (839808 * k + 733192) = 419904 * k + 366596 := by
    unfold C
    simp [show (839808 * k + 733192) % 2 = 0 by omega]
    omega
  have h19 : C (419904 * k + 366596) = 209952 * k + 183298 := by
    unfold C
    simp [show (419904 * k + 366596) % 2 = 0 by omega]
    omega
  have h20 : C (209952 * k + 183298) = 104976 * k + 91649 := by
    unfold C
    simp [show (209952 * k + 183298) % 2 = 0 by omega]
    omega
  have h21 : C (104976 * k + 91649) = 314928 * k + 274948 := by
    unfold C
    simp [show (104976 * k + 91649) % 2 ≠ 0 by omega]
    omega
  have h22 : C (314928 * k + 274948) = 157464 * k + 137474 := by
    unfold C
    simp [show (314928 * k + 274948) % 2 = 0 by omega]
    omega
  have h23 : C (157464 * k + 137474) = 78732 * k + 68737 := by
    unfold C
    simp [show (157464 * k + 137474) % 2 = 0 by omega]
    omega
  have h24 : C (78732 * k + 68737) = 236196 * k + 206212 := by
    unfold C
    simp [show (78732 * k + 68737) % 2 ≠ 0 by omega]
    omega
  have h25 : C (236196 * k + 206212) = 118098 * k + 103106 := by
    unfold C
    simp [show (236196 * k + 206212) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 103106) = 59049 * k + 51553 := by
    unfold C
    simp [show (118098 * k + 103106) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 57215) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 57215)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_57375 : ∀ k : Nat,
    iterate (65536 * k + 57375) 26 = 59049 * k + 51697 ∧
      59049 * k + 51697 < 65536 * k + 57375 := by
  intro k
  have h1 : C (65536 * k + 57375) = 196608 * k + 172126 := by
    unfold C
    simp [show (65536 * k + 57375) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 172126) = 98304 * k + 86063 := by
    unfold C
    simp [show (196608 * k + 172126) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 86063) = 294912 * k + 258190 := by
    unfold C
    simp [show (98304 * k + 86063) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 258190) = 147456 * k + 129095 := by
    unfold C
    simp [show (294912 * k + 258190) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 129095) = 442368 * k + 387286 := by
    unfold C
    simp [show (147456 * k + 129095) % 2 ≠ 0 by omega]
    omega
  have h6 : C (442368 * k + 387286) = 221184 * k + 193643 := by
    unfold C
    simp [show (442368 * k + 387286) % 2 = 0 by omega]
    omega
  have h7 : C (221184 * k + 193643) = 663552 * k + 580930 := by
    unfold C
    simp [show (221184 * k + 193643) % 2 ≠ 0 by omega]
    omega
  have h8 : C (663552 * k + 580930) = 331776 * k + 290465 := by
    unfold C
    simp [show (663552 * k + 580930) % 2 = 0 by omega]
    omega
  have h9 : C (331776 * k + 290465) = 995328 * k + 871396 := by
    unfold C
    simp [show (331776 * k + 290465) % 2 ≠ 0 by omega]
    omega
  have h10 : C (995328 * k + 871396) = 497664 * k + 435698 := by
    unfold C
    simp [show (995328 * k + 871396) % 2 = 0 by omega]
    omega
  have h11 : C (497664 * k + 435698) = 248832 * k + 217849 := by
    unfold C
    simp [show (497664 * k + 435698) % 2 = 0 by omega]
    omega
  have h12 : C (248832 * k + 217849) = 746496 * k + 653548 := by
    unfold C
    simp [show (248832 * k + 217849) % 2 ≠ 0 by omega]
    omega
  have h13 : C (746496 * k + 653548) = 373248 * k + 326774 := by
    unfold C
    simp [show (746496 * k + 653548) % 2 = 0 by omega]
    omega
  have h14 : C (373248 * k + 326774) = 186624 * k + 163387 := by
    unfold C
    simp [show (373248 * k + 326774) % 2 = 0 by omega]
    omega
  have h15 : C (186624 * k + 163387) = 559872 * k + 490162 := by
    unfold C
    simp [show (186624 * k + 163387) % 2 ≠ 0 by omega]
    omega
  have h16 : C (559872 * k + 490162) = 279936 * k + 245081 := by
    unfold C
    simp [show (559872 * k + 490162) % 2 = 0 by omega]
    omega
  have h17 : C (279936 * k + 245081) = 839808 * k + 735244 := by
    unfold C
    simp [show (279936 * k + 245081) % 2 ≠ 0 by omega]
    omega
  have h18 : C (839808 * k + 735244) = 419904 * k + 367622 := by
    unfold C
    simp [show (839808 * k + 735244) % 2 = 0 by omega]
    omega
  have h19 : C (419904 * k + 367622) = 209952 * k + 183811 := by
    unfold C
    simp [show (419904 * k + 367622) % 2 = 0 by omega]
    omega
  have h20 : C (209952 * k + 183811) = 629856 * k + 551434 := by
    unfold C
    simp [show (209952 * k + 183811) % 2 ≠ 0 by omega]
    omega
  have h21 : C (629856 * k + 551434) = 314928 * k + 275717 := by
    unfold C
    simp [show (629856 * k + 551434) % 2 = 0 by omega]
    omega
  have h22 : C (314928 * k + 275717) = 944784 * k + 827152 := by
    unfold C
    simp [show (314928 * k + 275717) % 2 ≠ 0 by omega]
    omega
  have h23 : C (944784 * k + 827152) = 472392 * k + 413576 := by
    unfold C
    simp [show (944784 * k + 827152) % 2 = 0 by omega]
    omega
  have h24 : C (472392 * k + 413576) = 236196 * k + 206788 := by
    unfold C
    simp [show (472392 * k + 413576) % 2 = 0 by omega]
    omega
  have h25 : C (236196 * k + 206788) = 118098 * k + 103394 := by
    unfold C
    simp [show (236196 * k + 206788) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 103394) = 59049 * k + 51697 := by
    unfold C
    simp [show (118098 * k + 103394) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 57375) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 57375)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_57671 : ∀ k : Nat,
    iterate (65536 * k + 57671) 26 = 59049 * k + 51964 ∧
      59049 * k + 51964 < 65536 * k + 57671 := by
  intro k
  have h1 : C (65536 * k + 57671) = 196608 * k + 173014 := by
    unfold C
    simp [show (65536 * k + 57671) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 173014) = 98304 * k + 86507 := by
    unfold C
    simp [show (196608 * k + 173014) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 86507) = 294912 * k + 259522 := by
    unfold C
    simp [show (98304 * k + 86507) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 259522) = 147456 * k + 129761 := by
    unfold C
    simp [show (294912 * k + 259522) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 129761) = 442368 * k + 389284 := by
    unfold C
    simp [show (147456 * k + 129761) % 2 ≠ 0 by omega]
    omega
  have h6 : C (442368 * k + 389284) = 221184 * k + 194642 := by
    unfold C
    simp [show (442368 * k + 389284) % 2 = 0 by omega]
    omega
  have h7 : C (221184 * k + 194642) = 110592 * k + 97321 := by
    unfold C
    simp [show (221184 * k + 194642) % 2 = 0 by omega]
    omega
  have h8 : C (110592 * k + 97321) = 331776 * k + 291964 := by
    unfold C
    simp [show (110592 * k + 97321) % 2 ≠ 0 by omega]
    omega
  have h9 : C (331776 * k + 291964) = 165888 * k + 145982 := by
    unfold C
    simp [show (331776 * k + 291964) % 2 = 0 by omega]
    omega
  have h10 : C (165888 * k + 145982) = 82944 * k + 72991 := by
    unfold C
    simp [show (165888 * k + 145982) % 2 = 0 by omega]
    omega
  have h11 : C (82944 * k + 72991) = 248832 * k + 218974 := by
    unfold C
    simp [show (82944 * k + 72991) % 2 ≠ 0 by omega]
    omega
  have h12 : C (248832 * k + 218974) = 124416 * k + 109487 := by
    unfold C
    simp [show (248832 * k + 218974) % 2 = 0 by omega]
    omega
  have h13 : C (124416 * k + 109487) = 373248 * k + 328462 := by
    unfold C
    simp [show (124416 * k + 109487) % 2 ≠ 0 by omega]
    omega
  have h14 : C (373248 * k + 328462) = 186624 * k + 164231 := by
    unfold C
    simp [show (373248 * k + 328462) % 2 = 0 by omega]
    omega
  have h15 : C (186624 * k + 164231) = 559872 * k + 492694 := by
    unfold C
    simp [show (186624 * k + 164231) % 2 ≠ 0 by omega]
    omega
  have h16 : C (559872 * k + 492694) = 279936 * k + 246347 := by
    unfold C
    simp [show (559872 * k + 492694) % 2 = 0 by omega]
    omega
  have h17 : C (279936 * k + 246347) = 839808 * k + 739042 := by
    unfold C
    simp [show (279936 * k + 246347) % 2 ≠ 0 by omega]
    omega
  have h18 : C (839808 * k + 739042) = 419904 * k + 369521 := by
    unfold C
    simp [show (839808 * k + 739042) % 2 = 0 by omega]
    omega
  have h19 : C (419904 * k + 369521) = 1259712 * k + 1108564 := by
    unfold C
    simp [show (419904 * k + 369521) % 2 ≠ 0 by omega]
    omega
  have h20 : C (1259712 * k + 1108564) = 629856 * k + 554282 := by
    unfold C
    simp [show (1259712 * k + 1108564) % 2 = 0 by omega]
    omega
  have h21 : C (629856 * k + 554282) = 314928 * k + 277141 := by
    unfold C
    simp [show (629856 * k + 554282) % 2 = 0 by omega]
    omega
  have h22 : C (314928 * k + 277141) = 944784 * k + 831424 := by
    unfold C
    simp [show (314928 * k + 277141) % 2 ≠ 0 by omega]
    omega
  have h23 : C (944784 * k + 831424) = 472392 * k + 415712 := by
    unfold C
    simp [show (944784 * k + 831424) % 2 = 0 by omega]
    omega
  have h24 : C (472392 * k + 415712) = 236196 * k + 207856 := by
    unfold C
    simp [show (472392 * k + 415712) % 2 = 0 by omega]
    omega
  have h25 : C (236196 * k + 207856) = 118098 * k + 103928 := by
    unfold C
    simp [show (236196 * k + 207856) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 103928) = 59049 * k + 51964 := by
    unfold C
    simp [show (118098 * k + 103928) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 57671) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 57671)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_57755 : ∀ k : Nat,
    iterate (65536 * k + 57755) 26 = 59049 * k + 52040 ∧
      59049 * k + 52040 < 65536 * k + 57755 := by
  intro k
  have h1 : C (65536 * k + 57755) = 196608 * k + 173266 := by
    unfold C
    simp [show (65536 * k + 57755) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 173266) = 98304 * k + 86633 := by
    unfold C
    simp [show (196608 * k + 173266) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 86633) = 294912 * k + 259900 := by
    unfold C
    simp [show (98304 * k + 86633) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 259900) = 147456 * k + 129950 := by
    unfold C
    simp [show (294912 * k + 259900) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 129950) = 73728 * k + 64975 := by
    unfold C
    simp [show (147456 * k + 129950) % 2 = 0 by omega]
    omega
  have h6 : C (73728 * k + 64975) = 221184 * k + 194926 := by
    unfold C
    simp [show (73728 * k + 64975) % 2 ≠ 0 by omega]
    omega
  have h7 : C (221184 * k + 194926) = 110592 * k + 97463 := by
    unfold C
    simp [show (221184 * k + 194926) % 2 = 0 by omega]
    omega
  have h8 : C (110592 * k + 97463) = 331776 * k + 292390 := by
    unfold C
    simp [show (110592 * k + 97463) % 2 ≠ 0 by omega]
    omega
  have h9 : C (331776 * k + 292390) = 165888 * k + 146195 := by
    unfold C
    simp [show (331776 * k + 292390) % 2 = 0 by omega]
    omega
  have h10 : C (165888 * k + 146195) = 497664 * k + 438586 := by
    unfold C
    simp [show (165888 * k + 146195) % 2 ≠ 0 by omega]
    omega
  have h11 : C (497664 * k + 438586) = 248832 * k + 219293 := by
    unfold C
    simp [show (497664 * k + 438586) % 2 = 0 by omega]
    omega
  have h12 : C (248832 * k + 219293) = 746496 * k + 657880 := by
    unfold C
    simp [show (248832 * k + 219293) % 2 ≠ 0 by omega]
    omega
  have h13 : C (746496 * k + 657880) = 373248 * k + 328940 := by
    unfold C
    simp [show (746496 * k + 657880) % 2 = 0 by omega]
    omega
  have h14 : C (373248 * k + 328940) = 186624 * k + 164470 := by
    unfold C
    simp [show (373248 * k + 328940) % 2 = 0 by omega]
    omega
  have h15 : C (186624 * k + 164470) = 93312 * k + 82235 := by
    unfold C
    simp [show (186624 * k + 164470) % 2 = 0 by omega]
    omega
  have h16 : C (93312 * k + 82235) = 279936 * k + 246706 := by
    unfold C
    simp [show (93312 * k + 82235) % 2 ≠ 0 by omega]
    omega
  have h17 : C (279936 * k + 246706) = 139968 * k + 123353 := by
    unfold C
    simp [show (279936 * k + 246706) % 2 = 0 by omega]
    omega
  have h18 : C (139968 * k + 123353) = 419904 * k + 370060 := by
    unfold C
    simp [show (139968 * k + 123353) % 2 ≠ 0 by omega]
    omega
  have h19 : C (419904 * k + 370060) = 209952 * k + 185030 := by
    unfold C
    simp [show (419904 * k + 370060) % 2 = 0 by omega]
    omega
  have h20 : C (209952 * k + 185030) = 104976 * k + 92515 := by
    unfold C
    simp [show (209952 * k + 185030) % 2 = 0 by omega]
    omega
  have h21 : C (104976 * k + 92515) = 314928 * k + 277546 := by
    unfold C
    simp [show (104976 * k + 92515) % 2 ≠ 0 by omega]
    omega
  have h22 : C (314928 * k + 277546) = 157464 * k + 138773 := by
    unfold C
    simp [show (314928 * k + 277546) % 2 = 0 by omega]
    omega
  have h23 : C (157464 * k + 138773) = 472392 * k + 416320 := by
    unfold C
    simp [show (157464 * k + 138773) % 2 ≠ 0 by omega]
    omega
  have h24 : C (472392 * k + 416320) = 236196 * k + 208160 := by
    unfold C
    simp [show (472392 * k + 416320) % 2 = 0 by omega]
    omega
  have h25 : C (236196 * k + 208160) = 118098 * k + 104080 := by
    unfold C
    simp [show (236196 * k + 208160) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 104080) = 59049 * k + 52040 := by
    unfold C
    simp [show (118098 * k + 104080) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 57755) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 57755)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_57759 : ∀ k : Nat,
    iterate (65536 * k + 57759) 26 = 59049 * k + 52043 ∧
      59049 * k + 52043 < 65536 * k + 57759 := by
  intro k
  have h1 : C (65536 * k + 57759) = 196608 * k + 173278 := by
    unfold C
    simp [show (65536 * k + 57759) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 173278) = 98304 * k + 86639 := by
    unfold C
    simp [show (196608 * k + 173278) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 86639) = 294912 * k + 259918 := by
    unfold C
    simp [show (98304 * k + 86639) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 259918) = 147456 * k + 129959 := by
    unfold C
    simp [show (294912 * k + 259918) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 129959) = 442368 * k + 389878 := by
    unfold C
    simp [show (147456 * k + 129959) % 2 ≠ 0 by omega]
    omega
  have h6 : C (442368 * k + 389878) = 221184 * k + 194939 := by
    unfold C
    simp [show (442368 * k + 389878) % 2 = 0 by omega]
    omega
  have h7 : C (221184 * k + 194939) = 663552 * k + 584818 := by
    unfold C
    simp [show (221184 * k + 194939) % 2 ≠ 0 by omega]
    omega
  have h8 : C (663552 * k + 584818) = 331776 * k + 292409 := by
    unfold C
    simp [show (663552 * k + 584818) % 2 = 0 by omega]
    omega
  have h9 : C (331776 * k + 292409) = 995328 * k + 877228 := by
    unfold C
    simp [show (331776 * k + 292409) % 2 ≠ 0 by omega]
    omega
  have h10 : C (995328 * k + 877228) = 497664 * k + 438614 := by
    unfold C
    simp [show (995328 * k + 877228) % 2 = 0 by omega]
    omega
  have h11 : C (497664 * k + 438614) = 248832 * k + 219307 := by
    unfold C
    simp [show (497664 * k + 438614) % 2 = 0 by omega]
    omega
  have h12 : C (248832 * k + 219307) = 746496 * k + 657922 := by
    unfold C
    simp [show (248832 * k + 219307) % 2 ≠ 0 by omega]
    omega
  have h13 : C (746496 * k + 657922) = 373248 * k + 328961 := by
    unfold C
    simp [show (746496 * k + 657922) % 2 = 0 by omega]
    omega
  have h14 : C (373248 * k + 328961) = 1119744 * k + 986884 := by
    unfold C
    simp [show (373248 * k + 328961) % 2 ≠ 0 by omega]
    omega
  have h15 : C (1119744 * k + 986884) = 559872 * k + 493442 := by
    unfold C
    simp [show (1119744 * k + 986884) % 2 = 0 by omega]
    omega
  have h16 : C (559872 * k + 493442) = 279936 * k + 246721 := by
    unfold C
    simp [show (559872 * k + 493442) % 2 = 0 by omega]
    omega
  have h17 : C (279936 * k + 246721) = 839808 * k + 740164 := by
    unfold C
    simp [show (279936 * k + 246721) % 2 ≠ 0 by omega]
    omega
  have h18 : C (839808 * k + 740164) = 419904 * k + 370082 := by
    unfold C
    simp [show (839808 * k + 740164) % 2 = 0 by omega]
    omega
  have h19 : C (419904 * k + 370082) = 209952 * k + 185041 := by
    unfold C
    simp [show (419904 * k + 370082) % 2 = 0 by omega]
    omega
  have h20 : C (209952 * k + 185041) = 629856 * k + 555124 := by
    unfold C
    simp [show (209952 * k + 185041) % 2 ≠ 0 by omega]
    omega
  have h21 : C (629856 * k + 555124) = 314928 * k + 277562 := by
    unfold C
    simp [show (629856 * k + 555124) % 2 = 0 by omega]
    omega
  have h22 : C (314928 * k + 277562) = 157464 * k + 138781 := by
    unfold C
    simp [show (314928 * k + 277562) % 2 = 0 by omega]
    omega
  have h23 : C (157464 * k + 138781) = 472392 * k + 416344 := by
    unfold C
    simp [show (157464 * k + 138781) % 2 ≠ 0 by omega]
    omega
  have h24 : C (472392 * k + 416344) = 236196 * k + 208172 := by
    unfold C
    simp [show (472392 * k + 416344) % 2 = 0 by omega]
    omega
  have h25 : C (236196 * k + 208172) = 118098 * k + 104086 := by
    unfold C
    simp [show (236196 * k + 208172) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 104086) = 59049 * k + 52043 := by
    unfold C
    simp [show (118098 * k + 104086) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 57759) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 57759)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_57839 : ∀ k : Nat,
    iterate (65536 * k + 57839) 26 = 59049 * k + 52115 ∧
      59049 * k + 52115 < 65536 * k + 57839 := by
  intro k
  have h1 : C (65536 * k + 57839) = 196608 * k + 173518 := by
    unfold C
    simp [show (65536 * k + 57839) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 173518) = 98304 * k + 86759 := by
    unfold C
    simp [show (196608 * k + 173518) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 86759) = 294912 * k + 260278 := by
    unfold C
    simp [show (98304 * k + 86759) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 260278) = 147456 * k + 130139 := by
    unfold C
    simp [show (294912 * k + 260278) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 130139) = 442368 * k + 390418 := by
    unfold C
    simp [show (147456 * k + 130139) % 2 ≠ 0 by omega]
    omega
  have h6 : C (442368 * k + 390418) = 221184 * k + 195209 := by
    unfold C
    simp [show (442368 * k + 390418) % 2 = 0 by omega]
    omega
  have h7 : C (221184 * k + 195209) = 663552 * k + 585628 := by
    unfold C
    simp [show (221184 * k + 195209) % 2 ≠ 0 by omega]
    omega
  have h8 : C (663552 * k + 585628) = 331776 * k + 292814 := by
    unfold C
    simp [show (663552 * k + 585628) % 2 = 0 by omega]
    omega
  have h9 : C (331776 * k + 292814) = 165888 * k + 146407 := by
    unfold C
    simp [show (331776 * k + 292814) % 2 = 0 by omega]
    omega
  have h10 : C (165888 * k + 146407) = 497664 * k + 439222 := by
    unfold C
    simp [show (165888 * k + 146407) % 2 ≠ 0 by omega]
    omega
  have h11 : C (497664 * k + 439222) = 248832 * k + 219611 := by
    unfold C
    simp [show (497664 * k + 439222) % 2 = 0 by omega]
    omega
  have h12 : C (248832 * k + 219611) = 746496 * k + 658834 := by
    unfold C
    simp [show (248832 * k + 219611) % 2 ≠ 0 by omega]
    omega
  have h13 : C (746496 * k + 658834) = 373248 * k + 329417 := by
    unfold C
    simp [show (746496 * k + 658834) % 2 = 0 by omega]
    omega
  have h14 : C (373248 * k + 329417) = 1119744 * k + 988252 := by
    unfold C
    simp [show (373248 * k + 329417) % 2 ≠ 0 by omega]
    omega
  have h15 : C (1119744 * k + 988252) = 559872 * k + 494126 := by
    unfold C
    simp [show (1119744 * k + 988252) % 2 = 0 by omega]
    omega
  have h16 : C (559872 * k + 494126) = 279936 * k + 247063 := by
    unfold C
    simp [show (559872 * k + 494126) % 2 = 0 by omega]
    omega
  have h17 : C (279936 * k + 247063) = 839808 * k + 741190 := by
    unfold C
    simp [show (279936 * k + 247063) % 2 ≠ 0 by omega]
    omega
  have h18 : C (839808 * k + 741190) = 419904 * k + 370595 := by
    unfold C
    simp [show (839808 * k + 741190) % 2 = 0 by omega]
    omega
  have h19 : C (419904 * k + 370595) = 1259712 * k + 1111786 := by
    unfold C
    simp [show (419904 * k + 370595) % 2 ≠ 0 by omega]
    omega
  have h20 : C (1259712 * k + 1111786) = 629856 * k + 555893 := by
    unfold C
    simp [show (1259712 * k + 1111786) % 2 = 0 by omega]
    omega
  have h21 : C (629856 * k + 555893) = 1889568 * k + 1667680 := by
    unfold C
    simp [show (629856 * k + 555893) % 2 ≠ 0 by omega]
    omega
  have h22 : C (1889568 * k + 1667680) = 944784 * k + 833840 := by
    unfold C
    simp [show (1889568 * k + 1667680) % 2 = 0 by omega]
    omega
  have h23 : C (944784 * k + 833840) = 472392 * k + 416920 := by
    unfold C
    simp [show (944784 * k + 833840) % 2 = 0 by omega]
    omega
  have h24 : C (472392 * k + 416920) = 236196 * k + 208460 := by
    unfold C
    simp [show (472392 * k + 416920) % 2 = 0 by omega]
    omega
  have h25 : C (236196 * k + 208460) = 118098 * k + 104230 := by
    unfold C
    simp [show (236196 * k + 208460) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 104230) = 59049 * k + 52115 := by
    unfold C
    simp [show (118098 * k + 104230) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 57839) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 57839)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_57947 : ∀ k : Nat,
    iterate (65536 * k + 57947) 26 = 59049 * k + 52213 ∧
      59049 * k + 52213 < 65536 * k + 57947 := by
  intro k
  have h1 : C (65536 * k + 57947) = 196608 * k + 173842 := by
    unfold C
    simp [show (65536 * k + 57947) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 173842) = 98304 * k + 86921 := by
    unfold C
    simp [show (196608 * k + 173842) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 86921) = 294912 * k + 260764 := by
    unfold C
    simp [show (98304 * k + 86921) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 260764) = 147456 * k + 130382 := by
    unfold C
    simp [show (294912 * k + 260764) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 130382) = 73728 * k + 65191 := by
    unfold C
    simp [show (147456 * k + 130382) % 2 = 0 by omega]
    omega
  have h6 : C (73728 * k + 65191) = 221184 * k + 195574 := by
    unfold C
    simp [show (73728 * k + 65191) % 2 ≠ 0 by omega]
    omega
  have h7 : C (221184 * k + 195574) = 110592 * k + 97787 := by
    unfold C
    simp [show (221184 * k + 195574) % 2 = 0 by omega]
    omega
  have h8 : C (110592 * k + 97787) = 331776 * k + 293362 := by
    unfold C
    simp [show (110592 * k + 97787) % 2 ≠ 0 by omega]
    omega
  have h9 : C (331776 * k + 293362) = 165888 * k + 146681 := by
    unfold C
    simp [show (331776 * k + 293362) % 2 = 0 by omega]
    omega
  have h10 : C (165888 * k + 146681) = 497664 * k + 440044 := by
    unfold C
    simp [show (165888 * k + 146681) % 2 ≠ 0 by omega]
    omega
  have h11 : C (497664 * k + 440044) = 248832 * k + 220022 := by
    unfold C
    simp [show (497664 * k + 440044) % 2 = 0 by omega]
    omega
  have h12 : C (248832 * k + 220022) = 124416 * k + 110011 := by
    unfold C
    simp [show (248832 * k + 220022) % 2 = 0 by omega]
    omega
  have h13 : C (124416 * k + 110011) = 373248 * k + 330034 := by
    unfold C
    simp [show (124416 * k + 110011) % 2 ≠ 0 by omega]
    omega
  have h14 : C (373248 * k + 330034) = 186624 * k + 165017 := by
    unfold C
    simp [show (373248 * k + 330034) % 2 = 0 by omega]
    omega
  have h15 : C (186624 * k + 165017) = 559872 * k + 495052 := by
    unfold C
    simp [show (186624 * k + 165017) % 2 ≠ 0 by omega]
    omega
  have h16 : C (559872 * k + 495052) = 279936 * k + 247526 := by
    unfold C
    simp [show (559872 * k + 495052) % 2 = 0 by omega]
    omega
  have h17 : C (279936 * k + 247526) = 139968 * k + 123763 := by
    unfold C
    simp [show (279936 * k + 247526) % 2 = 0 by omega]
    omega
  have h18 : C (139968 * k + 123763) = 419904 * k + 371290 := by
    unfold C
    simp [show (139968 * k + 123763) % 2 ≠ 0 by omega]
    omega
  have h19 : C (419904 * k + 371290) = 209952 * k + 185645 := by
    unfold C
    simp [show (419904 * k + 371290) % 2 = 0 by omega]
    omega
  have h20 : C (209952 * k + 185645) = 629856 * k + 556936 := by
    unfold C
    simp [show (209952 * k + 185645) % 2 ≠ 0 by omega]
    omega
  have h21 : C (629856 * k + 556936) = 314928 * k + 278468 := by
    unfold C
    simp [show (629856 * k + 556936) % 2 = 0 by omega]
    omega
  have h22 : C (314928 * k + 278468) = 157464 * k + 139234 := by
    unfold C
    simp [show (314928 * k + 278468) % 2 = 0 by omega]
    omega
  have h23 : C (157464 * k + 139234) = 78732 * k + 69617 := by
    unfold C
    simp [show (157464 * k + 139234) % 2 = 0 by omega]
    omega
  have h24 : C (78732 * k + 69617) = 236196 * k + 208852 := by
    unfold C
    simp [show (78732 * k + 69617) % 2 ≠ 0 by omega]
    omega
  have h25 : C (236196 * k + 208852) = 118098 * k + 104426 := by
    unfold C
    simp [show (236196 * k + 208852) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 104426) = 59049 * k + 52213 := by
    unfold C
    simp [show (118098 * k + 104426) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 57947) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 57947)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_58175 : ∀ k : Nat,
    iterate (65536 * k + 58175) 26 = 59049 * k + 52418 ∧
      59049 * k + 52418 < 65536 * k + 58175 := by
  intro k
  have h1 : C (65536 * k + 58175) = 196608 * k + 174526 := by
    unfold C
    simp [show (65536 * k + 58175) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 174526) = 98304 * k + 87263 := by
    unfold C
    simp [show (196608 * k + 174526) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 87263) = 294912 * k + 261790 := by
    unfold C
    simp [show (98304 * k + 87263) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 261790) = 147456 * k + 130895 := by
    unfold C
    simp [show (294912 * k + 261790) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 130895) = 442368 * k + 392686 := by
    unfold C
    simp [show (147456 * k + 130895) % 2 ≠ 0 by omega]
    omega
  have h6 : C (442368 * k + 392686) = 221184 * k + 196343 := by
    unfold C
    simp [show (442368 * k + 392686) % 2 = 0 by omega]
    omega
  have h7 : C (221184 * k + 196343) = 663552 * k + 589030 := by
    unfold C
    simp [show (221184 * k + 196343) % 2 ≠ 0 by omega]
    omega
  have h8 : C (663552 * k + 589030) = 331776 * k + 294515 := by
    unfold C
    simp [show (663552 * k + 589030) % 2 = 0 by omega]
    omega
  have h9 : C (331776 * k + 294515) = 995328 * k + 883546 := by
    unfold C
    simp [show (331776 * k + 294515) % 2 ≠ 0 by omega]
    omega
  have h10 : C (995328 * k + 883546) = 497664 * k + 441773 := by
    unfold C
    simp [show (995328 * k + 883546) % 2 = 0 by omega]
    omega
  have h11 : C (497664 * k + 441773) = 1492992 * k + 1325320 := by
    unfold C
    simp [show (497664 * k + 441773) % 2 ≠ 0 by omega]
    omega
  have h12 : C (1492992 * k + 1325320) = 746496 * k + 662660 := by
    unfold C
    simp [show (1492992 * k + 1325320) % 2 = 0 by omega]
    omega
  have h13 : C (746496 * k + 662660) = 373248 * k + 331330 := by
    unfold C
    simp [show (746496 * k + 662660) % 2 = 0 by omega]
    omega
  have h14 : C (373248 * k + 331330) = 186624 * k + 165665 := by
    unfold C
    simp [show (373248 * k + 331330) % 2 = 0 by omega]
    omega
  have h15 : C (186624 * k + 165665) = 559872 * k + 496996 := by
    unfold C
    simp [show (186624 * k + 165665) % 2 ≠ 0 by omega]
    omega
  have h16 : C (559872 * k + 496996) = 279936 * k + 248498 := by
    unfold C
    simp [show (559872 * k + 496996) % 2 = 0 by omega]
    omega
  have h17 : C (279936 * k + 248498) = 139968 * k + 124249 := by
    unfold C
    simp [show (279936 * k + 248498) % 2 = 0 by omega]
    omega
  have h18 : C (139968 * k + 124249) = 419904 * k + 372748 := by
    unfold C
    simp [show (139968 * k + 124249) % 2 ≠ 0 by omega]
    omega
  have h19 : C (419904 * k + 372748) = 209952 * k + 186374 := by
    unfold C
    simp [show (419904 * k + 372748) % 2 = 0 by omega]
    omega
  have h20 : C (209952 * k + 186374) = 104976 * k + 93187 := by
    unfold C
    simp [show (209952 * k + 186374) % 2 = 0 by omega]
    omega
  have h21 : C (104976 * k + 93187) = 314928 * k + 279562 := by
    unfold C
    simp [show (104976 * k + 93187) % 2 ≠ 0 by omega]
    omega
  have h22 : C (314928 * k + 279562) = 157464 * k + 139781 := by
    unfold C
    simp [show (314928 * k + 279562) % 2 = 0 by omega]
    omega
  have h23 : C (157464 * k + 139781) = 472392 * k + 419344 := by
    unfold C
    simp [show (157464 * k + 139781) % 2 ≠ 0 by omega]
    omega
  have h24 : C (472392 * k + 419344) = 236196 * k + 209672 := by
    unfold C
    simp [show (472392 * k + 419344) % 2 = 0 by omega]
    omega
  have h25 : C (236196 * k + 209672) = 118098 * k + 104836 := by
    unfold C
    simp [show (236196 * k + 209672) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 104836) = 59049 * k + 52418 := by
    unfold C
    simp [show (118098 * k + 104836) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 58175) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 58175)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_58203 : ∀ k : Nat,
    iterate (65536 * k + 58203) 26 = 59049 * k + 52444 ∧
      59049 * k + 52444 < 65536 * k + 58203 := by
  intro k
  have h1 : C (65536 * k + 58203) = 196608 * k + 174610 := by
    unfold C
    simp [show (65536 * k + 58203) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 174610) = 98304 * k + 87305 := by
    unfold C
    simp [show (196608 * k + 174610) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 87305) = 294912 * k + 261916 := by
    unfold C
    simp [show (98304 * k + 87305) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 261916) = 147456 * k + 130958 := by
    unfold C
    simp [show (294912 * k + 261916) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 130958) = 73728 * k + 65479 := by
    unfold C
    simp [show (147456 * k + 130958) % 2 = 0 by omega]
    omega
  have h6 : C (73728 * k + 65479) = 221184 * k + 196438 := by
    unfold C
    simp [show (73728 * k + 65479) % 2 ≠ 0 by omega]
    omega
  have h7 : C (221184 * k + 196438) = 110592 * k + 98219 := by
    unfold C
    simp [show (221184 * k + 196438) % 2 = 0 by omega]
    omega
  have h8 : C (110592 * k + 98219) = 331776 * k + 294658 := by
    unfold C
    simp [show (110592 * k + 98219) % 2 ≠ 0 by omega]
    omega
  have h9 : C (331776 * k + 294658) = 165888 * k + 147329 := by
    unfold C
    simp [show (331776 * k + 294658) % 2 = 0 by omega]
    omega
  have h10 : C (165888 * k + 147329) = 497664 * k + 441988 := by
    unfold C
    simp [show (165888 * k + 147329) % 2 ≠ 0 by omega]
    omega
  have h11 : C (497664 * k + 441988) = 248832 * k + 220994 := by
    unfold C
    simp [show (497664 * k + 441988) % 2 = 0 by omega]
    omega
  have h12 : C (248832 * k + 220994) = 124416 * k + 110497 := by
    unfold C
    simp [show (248832 * k + 220994) % 2 = 0 by omega]
    omega
  have h13 : C (124416 * k + 110497) = 373248 * k + 331492 := by
    unfold C
    simp [show (124416 * k + 110497) % 2 ≠ 0 by omega]
    omega
  have h14 : C (373248 * k + 331492) = 186624 * k + 165746 := by
    unfold C
    simp [show (373248 * k + 331492) % 2 = 0 by omega]
    omega
  have h15 : C (186624 * k + 165746) = 93312 * k + 82873 := by
    unfold C
    simp [show (186624 * k + 165746) % 2 = 0 by omega]
    omega
  have h16 : C (93312 * k + 82873) = 279936 * k + 248620 := by
    unfold C
    simp [show (93312 * k + 82873) % 2 ≠ 0 by omega]
    omega
  have h17 : C (279936 * k + 248620) = 139968 * k + 124310 := by
    unfold C
    simp [show (279936 * k + 248620) % 2 = 0 by omega]
    omega
  have h18 : C (139968 * k + 124310) = 69984 * k + 62155 := by
    unfold C
    simp [show (139968 * k + 124310) % 2 = 0 by omega]
    omega
  have h19 : C (69984 * k + 62155) = 209952 * k + 186466 := by
    unfold C
    simp [show (69984 * k + 62155) % 2 ≠ 0 by omega]
    omega
  have h20 : C (209952 * k + 186466) = 104976 * k + 93233 := by
    unfold C
    simp [show (209952 * k + 186466) % 2 = 0 by omega]
    omega
  have h21 : C (104976 * k + 93233) = 314928 * k + 279700 := by
    unfold C
    simp [show (104976 * k + 93233) % 2 ≠ 0 by omega]
    omega
  have h22 : C (314928 * k + 279700) = 157464 * k + 139850 := by
    unfold C
    simp [show (314928 * k + 279700) % 2 = 0 by omega]
    omega
  have h23 : C (157464 * k + 139850) = 78732 * k + 69925 := by
    unfold C
    simp [show (157464 * k + 139850) % 2 = 0 by omega]
    omega
  have h24 : C (78732 * k + 69925) = 236196 * k + 209776 := by
    unfold C
    simp [show (78732 * k + 69925) % 2 ≠ 0 by omega]
    omega
  have h25 : C (236196 * k + 209776) = 118098 * k + 104888 := by
    unfold C
    simp [show (236196 * k + 209776) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 104888) = 59049 * k + 52444 := by
    unfold C
    simp [show (118098 * k + 104888) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 58203) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 58203)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

end CollatzM16ShardU
