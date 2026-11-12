import Mathlib.Data.Nat.Prime.Basic

namespace CollatzM16ShardV

def C (n : Nat) : Nat := if n % 2 = 0 then n / 2 else 3 * n + 1

def iterate (n t : Nat) : Nat := Nat.rec n (fun _ previous => C previous) t

theorem descent_mod65536_58495 : ∀ k : Nat,
    iterate (65536 * k + 58495) 26 = 59049 * k + 52706 ∧
      59049 * k + 52706 < 65536 * k + 58495 := by
  intro k
  have h1 : C (65536 * k + 58495) = 196608 * k + 175486 := by
    unfold C
    simp [show (65536 * k + 58495) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 175486) = 98304 * k + 87743 := by
    unfold C
    simp [show (196608 * k + 175486) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 87743) = 294912 * k + 263230 := by
    unfold C
    simp [show (98304 * k + 87743) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 263230) = 147456 * k + 131615 := by
    unfold C
    simp [show (294912 * k + 263230) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 131615) = 442368 * k + 394846 := by
    unfold C
    simp [show (147456 * k + 131615) % 2 ≠ 0 by omega]
    omega
  have h6 : C (442368 * k + 394846) = 221184 * k + 197423 := by
    unfold C
    simp [show (442368 * k + 394846) % 2 = 0 by omega]
    omega
  have h7 : C (221184 * k + 197423) = 663552 * k + 592270 := by
    unfold C
    simp [show (221184 * k + 197423) % 2 ≠ 0 by omega]
    omega
  have h8 : C (663552 * k + 592270) = 331776 * k + 296135 := by
    unfold C
    simp [show (663552 * k + 592270) % 2 = 0 by omega]
    omega
  have h9 : C (331776 * k + 296135) = 995328 * k + 888406 := by
    unfold C
    simp [show (331776 * k + 296135) % 2 ≠ 0 by omega]
    omega
  have h10 : C (995328 * k + 888406) = 497664 * k + 444203 := by
    unfold C
    simp [show (995328 * k + 888406) % 2 = 0 by omega]
    omega
  have h11 : C (497664 * k + 444203) = 1492992 * k + 1332610 := by
    unfold C
    simp [show (497664 * k + 444203) % 2 ≠ 0 by omega]
    omega
  have h12 : C (1492992 * k + 1332610) = 746496 * k + 666305 := by
    unfold C
    simp [show (1492992 * k + 1332610) % 2 = 0 by omega]
    omega
  have h13 : C (746496 * k + 666305) = 2239488 * k + 1998916 := by
    unfold C
    simp [show (746496 * k + 666305) % 2 ≠ 0 by omega]
    omega
  have h14 : C (2239488 * k + 1998916) = 1119744 * k + 999458 := by
    unfold C
    simp [show (2239488 * k + 1998916) % 2 = 0 by omega]
    omega
  have h15 : C (1119744 * k + 999458) = 559872 * k + 499729 := by
    unfold C
    simp [show (1119744 * k + 999458) % 2 = 0 by omega]
    omega
  have h16 : C (559872 * k + 499729) = 1679616 * k + 1499188 := by
    unfold C
    simp [show (559872 * k + 499729) % 2 ≠ 0 by omega]
    omega
  have h17 : C (1679616 * k + 1499188) = 839808 * k + 749594 := by
    unfold C
    simp [show (1679616 * k + 1499188) % 2 = 0 by omega]
    omega
  have h18 : C (839808 * k + 749594) = 419904 * k + 374797 := by
    unfold C
    simp [show (839808 * k + 749594) % 2 = 0 by omega]
    omega
  have h19 : C (419904 * k + 374797) = 1259712 * k + 1124392 := by
    unfold C
    simp [show (419904 * k + 374797) % 2 ≠ 0 by omega]
    omega
  have h20 : C (1259712 * k + 1124392) = 629856 * k + 562196 := by
    unfold C
    simp [show (1259712 * k + 1124392) % 2 = 0 by omega]
    omega
  have h21 : C (629856 * k + 562196) = 314928 * k + 281098 := by
    unfold C
    simp [show (629856 * k + 562196) % 2 = 0 by omega]
    omega
  have h22 : C (314928 * k + 281098) = 157464 * k + 140549 := by
    unfold C
    simp [show (314928 * k + 281098) % 2 = 0 by omega]
    omega
  have h23 : C (157464 * k + 140549) = 472392 * k + 421648 := by
    unfold C
    simp [show (157464 * k + 140549) % 2 ≠ 0 by omega]
    omega
  have h24 : C (472392 * k + 421648) = 236196 * k + 210824 := by
    unfold C
    simp [show (472392 * k + 421648) % 2 = 0 by omega]
    omega
  have h25 : C (236196 * k + 210824) = 118098 * k + 105412 := by
    unfold C
    simp [show (236196 * k + 210824) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 105412) = 59049 * k + 52706 := by
    unfold C
    simp [show (118098 * k + 105412) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 58495) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 58495)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_58523 : ∀ k : Nat,
    iterate (65536 * k + 58523) 26 = 59049 * k + 52732 ∧
      59049 * k + 52732 < 65536 * k + 58523 := by
  intro k
  have h1 : C (65536 * k + 58523) = 196608 * k + 175570 := by
    unfold C
    simp [show (65536 * k + 58523) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 175570) = 98304 * k + 87785 := by
    unfold C
    simp [show (196608 * k + 175570) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 87785) = 294912 * k + 263356 := by
    unfold C
    simp [show (98304 * k + 87785) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 263356) = 147456 * k + 131678 := by
    unfold C
    simp [show (294912 * k + 263356) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 131678) = 73728 * k + 65839 := by
    unfold C
    simp [show (147456 * k + 131678) % 2 = 0 by omega]
    omega
  have h6 : C (73728 * k + 65839) = 221184 * k + 197518 := by
    unfold C
    simp [show (73728 * k + 65839) % 2 ≠ 0 by omega]
    omega
  have h7 : C (221184 * k + 197518) = 110592 * k + 98759 := by
    unfold C
    simp [show (221184 * k + 197518) % 2 = 0 by omega]
    omega
  have h8 : C (110592 * k + 98759) = 331776 * k + 296278 := by
    unfold C
    simp [show (110592 * k + 98759) % 2 ≠ 0 by omega]
    omega
  have h9 : C (331776 * k + 296278) = 165888 * k + 148139 := by
    unfold C
    simp [show (331776 * k + 296278) % 2 = 0 by omega]
    omega
  have h10 : C (165888 * k + 148139) = 497664 * k + 444418 := by
    unfold C
    simp [show (165888 * k + 148139) % 2 ≠ 0 by omega]
    omega
  have h11 : C (497664 * k + 444418) = 248832 * k + 222209 := by
    unfold C
    simp [show (497664 * k + 444418) % 2 = 0 by omega]
    omega
  have h12 : C (248832 * k + 222209) = 746496 * k + 666628 := by
    unfold C
    simp [show (248832 * k + 222209) % 2 ≠ 0 by omega]
    omega
  have h13 : C (746496 * k + 666628) = 373248 * k + 333314 := by
    unfold C
    simp [show (746496 * k + 666628) % 2 = 0 by omega]
    omega
  have h14 : C (373248 * k + 333314) = 186624 * k + 166657 := by
    unfold C
    simp [show (373248 * k + 333314) % 2 = 0 by omega]
    omega
  have h15 : C (186624 * k + 166657) = 559872 * k + 499972 := by
    unfold C
    simp [show (186624 * k + 166657) % 2 ≠ 0 by omega]
    omega
  have h16 : C (559872 * k + 499972) = 279936 * k + 249986 := by
    unfold C
    simp [show (559872 * k + 499972) % 2 = 0 by omega]
    omega
  have h17 : C (279936 * k + 249986) = 139968 * k + 124993 := by
    unfold C
    simp [show (279936 * k + 249986) % 2 = 0 by omega]
    omega
  have h18 : C (139968 * k + 124993) = 419904 * k + 374980 := by
    unfold C
    simp [show (139968 * k + 124993) % 2 ≠ 0 by omega]
    omega
  have h19 : C (419904 * k + 374980) = 209952 * k + 187490 := by
    unfold C
    simp [show (419904 * k + 374980) % 2 = 0 by omega]
    omega
  have h20 : C (209952 * k + 187490) = 104976 * k + 93745 := by
    unfold C
    simp [show (209952 * k + 187490) % 2 = 0 by omega]
    omega
  have h21 : C (104976 * k + 93745) = 314928 * k + 281236 := by
    unfold C
    simp [show (104976 * k + 93745) % 2 ≠ 0 by omega]
    omega
  have h22 : C (314928 * k + 281236) = 157464 * k + 140618 := by
    unfold C
    simp [show (314928 * k + 281236) % 2 = 0 by omega]
    omega
  have h23 : C (157464 * k + 140618) = 78732 * k + 70309 := by
    unfold C
    simp [show (157464 * k + 140618) % 2 = 0 by omega]
    omega
  have h24 : C (78732 * k + 70309) = 236196 * k + 210928 := by
    unfold C
    simp [show (78732 * k + 70309) % 2 ≠ 0 by omega]
    omega
  have h25 : C (236196 * k + 210928) = 118098 * k + 105464 := by
    unfold C
    simp [show (236196 * k + 210928) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 105464) = 59049 * k + 52732 := by
    unfold C
    simp [show (118098 * k + 105464) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 58523) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 58523)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_58527 : ∀ k : Nat,
    iterate (65536 * k + 58527) 26 = 59049 * k + 52735 ∧
      59049 * k + 52735 < 65536 * k + 58527 := by
  intro k
  have h1 : C (65536 * k + 58527) = 196608 * k + 175582 := by
    unfold C
    simp [show (65536 * k + 58527) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 175582) = 98304 * k + 87791 := by
    unfold C
    simp [show (196608 * k + 175582) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 87791) = 294912 * k + 263374 := by
    unfold C
    simp [show (98304 * k + 87791) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 263374) = 147456 * k + 131687 := by
    unfold C
    simp [show (294912 * k + 263374) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 131687) = 442368 * k + 395062 := by
    unfold C
    simp [show (147456 * k + 131687) % 2 ≠ 0 by omega]
    omega
  have h6 : C (442368 * k + 395062) = 221184 * k + 197531 := by
    unfold C
    simp [show (442368 * k + 395062) % 2 = 0 by omega]
    omega
  have h7 : C (221184 * k + 197531) = 663552 * k + 592594 := by
    unfold C
    simp [show (221184 * k + 197531) % 2 ≠ 0 by omega]
    omega
  have h8 : C (663552 * k + 592594) = 331776 * k + 296297 := by
    unfold C
    simp [show (663552 * k + 592594) % 2 = 0 by omega]
    omega
  have h9 : C (331776 * k + 296297) = 995328 * k + 888892 := by
    unfold C
    simp [show (331776 * k + 296297) % 2 ≠ 0 by omega]
    omega
  have h10 : C (995328 * k + 888892) = 497664 * k + 444446 := by
    unfold C
    simp [show (995328 * k + 888892) % 2 = 0 by omega]
    omega
  have h11 : C (497664 * k + 444446) = 248832 * k + 222223 := by
    unfold C
    simp [show (497664 * k + 444446) % 2 = 0 by omega]
    omega
  have h12 : C (248832 * k + 222223) = 746496 * k + 666670 := by
    unfold C
    simp [show (248832 * k + 222223) % 2 ≠ 0 by omega]
    omega
  have h13 : C (746496 * k + 666670) = 373248 * k + 333335 := by
    unfold C
    simp [show (746496 * k + 666670) % 2 = 0 by omega]
    omega
  have h14 : C (373248 * k + 333335) = 1119744 * k + 1000006 := by
    unfold C
    simp [show (373248 * k + 333335) % 2 ≠ 0 by omega]
    omega
  have h15 : C (1119744 * k + 1000006) = 559872 * k + 500003 := by
    unfold C
    simp [show (1119744 * k + 1000006) % 2 = 0 by omega]
    omega
  have h16 : C (559872 * k + 500003) = 1679616 * k + 1500010 := by
    unfold C
    simp [show (559872 * k + 500003) % 2 ≠ 0 by omega]
    omega
  have h17 : C (1679616 * k + 1500010) = 839808 * k + 750005 := by
    unfold C
    simp [show (1679616 * k + 1500010) % 2 = 0 by omega]
    omega
  have h18 : C (839808 * k + 750005) = 2519424 * k + 2250016 := by
    unfold C
    simp [show (839808 * k + 750005) % 2 ≠ 0 by omega]
    omega
  have h19 : C (2519424 * k + 2250016) = 1259712 * k + 1125008 := by
    unfold C
    simp [show (2519424 * k + 2250016) % 2 = 0 by omega]
    omega
  have h20 : C (1259712 * k + 1125008) = 629856 * k + 562504 := by
    unfold C
    simp [show (1259712 * k + 1125008) % 2 = 0 by omega]
    omega
  have h21 : C (629856 * k + 562504) = 314928 * k + 281252 := by
    unfold C
    simp [show (629856 * k + 562504) % 2 = 0 by omega]
    omega
  have h22 : C (314928 * k + 281252) = 157464 * k + 140626 := by
    unfold C
    simp [show (314928 * k + 281252) % 2 = 0 by omega]
    omega
  have h23 : C (157464 * k + 140626) = 78732 * k + 70313 := by
    unfold C
    simp [show (157464 * k + 140626) % 2 = 0 by omega]
    omega
  have h24 : C (78732 * k + 70313) = 236196 * k + 210940 := by
    unfold C
    simp [show (78732 * k + 70313) % 2 ≠ 0 by omega]
    omega
  have h25 : C (236196 * k + 210940) = 118098 * k + 105470 := by
    unfold C
    simp [show (236196 * k + 210940) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 105470) = 59049 * k + 52735 := by
    unfold C
    simp [show (118098 * k + 105470) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 58527) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 58527)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_58863 : ∀ k : Nat,
    iterate (65536 * k + 58863) 26 = 59049 * k + 53038 ∧
      59049 * k + 53038 < 65536 * k + 58863 := by
  intro k
  have h1 : C (65536 * k + 58863) = 196608 * k + 176590 := by
    unfold C
    simp [show (65536 * k + 58863) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 176590) = 98304 * k + 88295 := by
    unfold C
    simp [show (196608 * k + 176590) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 88295) = 294912 * k + 264886 := by
    unfold C
    simp [show (98304 * k + 88295) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 264886) = 147456 * k + 132443 := by
    unfold C
    simp [show (294912 * k + 264886) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 132443) = 442368 * k + 397330 := by
    unfold C
    simp [show (147456 * k + 132443) % 2 ≠ 0 by omega]
    omega
  have h6 : C (442368 * k + 397330) = 221184 * k + 198665 := by
    unfold C
    simp [show (442368 * k + 397330) % 2 = 0 by omega]
    omega
  have h7 : C (221184 * k + 198665) = 663552 * k + 595996 := by
    unfold C
    simp [show (221184 * k + 198665) % 2 ≠ 0 by omega]
    omega
  have h8 : C (663552 * k + 595996) = 331776 * k + 297998 := by
    unfold C
    simp [show (663552 * k + 595996) % 2 = 0 by omega]
    omega
  have h9 : C (331776 * k + 297998) = 165888 * k + 148999 := by
    unfold C
    simp [show (331776 * k + 297998) % 2 = 0 by omega]
    omega
  have h10 : C (165888 * k + 148999) = 497664 * k + 446998 := by
    unfold C
    simp [show (165888 * k + 148999) % 2 ≠ 0 by omega]
    omega
  have h11 : C (497664 * k + 446998) = 248832 * k + 223499 := by
    unfold C
    simp [show (497664 * k + 446998) % 2 = 0 by omega]
    omega
  have h12 : C (248832 * k + 223499) = 746496 * k + 670498 := by
    unfold C
    simp [show (248832 * k + 223499) % 2 ≠ 0 by omega]
    omega
  have h13 : C (746496 * k + 670498) = 373248 * k + 335249 := by
    unfold C
    simp [show (746496 * k + 670498) % 2 = 0 by omega]
    omega
  have h14 : C (373248 * k + 335249) = 1119744 * k + 1005748 := by
    unfold C
    simp [show (373248 * k + 335249) % 2 ≠ 0 by omega]
    omega
  have h15 : C (1119744 * k + 1005748) = 559872 * k + 502874 := by
    unfold C
    simp [show (1119744 * k + 1005748) % 2 = 0 by omega]
    omega
  have h16 : C (559872 * k + 502874) = 279936 * k + 251437 := by
    unfold C
    simp [show (559872 * k + 502874) % 2 = 0 by omega]
    omega
  have h17 : C (279936 * k + 251437) = 839808 * k + 754312 := by
    unfold C
    simp [show (279936 * k + 251437) % 2 ≠ 0 by omega]
    omega
  have h18 : C (839808 * k + 754312) = 419904 * k + 377156 := by
    unfold C
    simp [show (839808 * k + 754312) % 2 = 0 by omega]
    omega
  have h19 : C (419904 * k + 377156) = 209952 * k + 188578 := by
    unfold C
    simp [show (419904 * k + 377156) % 2 = 0 by omega]
    omega
  have h20 : C (209952 * k + 188578) = 104976 * k + 94289 := by
    unfold C
    simp [show (209952 * k + 188578) % 2 = 0 by omega]
    omega
  have h21 : C (104976 * k + 94289) = 314928 * k + 282868 := by
    unfold C
    simp [show (104976 * k + 94289) % 2 ≠ 0 by omega]
    omega
  have h22 : C (314928 * k + 282868) = 157464 * k + 141434 := by
    unfold C
    simp [show (314928 * k + 282868) % 2 = 0 by omega]
    omega
  have h23 : C (157464 * k + 141434) = 78732 * k + 70717 := by
    unfold C
    simp [show (157464 * k + 141434) % 2 = 0 by omega]
    omega
  have h24 : C (78732 * k + 70717) = 236196 * k + 212152 := by
    unfold C
    simp [show (78732 * k + 70717) % 2 ≠ 0 by omega]
    omega
  have h25 : C (236196 * k + 212152) = 118098 * k + 106076 := by
    unfold C
    simp [show (236196 * k + 212152) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 106076) = 59049 * k + 53038 := by
    unfold C
    simp [show (118098 * k + 106076) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 58863) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 58863)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_58983 : ∀ k : Nat,
    iterate (65536 * k + 58983) 26 = 59049 * k + 53146 ∧
      59049 * k + 53146 < 65536 * k + 58983 := by
  intro k
  have h1 : C (65536 * k + 58983) = 196608 * k + 176950 := by
    unfold C
    simp [show (65536 * k + 58983) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 176950) = 98304 * k + 88475 := by
    unfold C
    simp [show (196608 * k + 176950) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 88475) = 294912 * k + 265426 := by
    unfold C
    simp [show (98304 * k + 88475) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 265426) = 147456 * k + 132713 := by
    unfold C
    simp [show (294912 * k + 265426) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 132713) = 442368 * k + 398140 := by
    unfold C
    simp [show (147456 * k + 132713) % 2 ≠ 0 by omega]
    omega
  have h6 : C (442368 * k + 398140) = 221184 * k + 199070 := by
    unfold C
    simp [show (442368 * k + 398140) % 2 = 0 by omega]
    omega
  have h7 : C (221184 * k + 199070) = 110592 * k + 99535 := by
    unfold C
    simp [show (221184 * k + 199070) % 2 = 0 by omega]
    omega
  have h8 : C (110592 * k + 99535) = 331776 * k + 298606 := by
    unfold C
    simp [show (110592 * k + 99535) % 2 ≠ 0 by omega]
    omega
  have h9 : C (331776 * k + 298606) = 165888 * k + 149303 := by
    unfold C
    simp [show (331776 * k + 298606) % 2 = 0 by omega]
    omega
  have h10 : C (165888 * k + 149303) = 497664 * k + 447910 := by
    unfold C
    simp [show (165888 * k + 149303) % 2 ≠ 0 by omega]
    omega
  have h11 : C (497664 * k + 447910) = 248832 * k + 223955 := by
    unfold C
    simp [show (497664 * k + 447910) % 2 = 0 by omega]
    omega
  have h12 : C (248832 * k + 223955) = 746496 * k + 671866 := by
    unfold C
    simp [show (248832 * k + 223955) % 2 ≠ 0 by omega]
    omega
  have h13 : C (746496 * k + 671866) = 373248 * k + 335933 := by
    unfold C
    simp [show (746496 * k + 671866) % 2 = 0 by omega]
    omega
  have h14 : C (373248 * k + 335933) = 1119744 * k + 1007800 := by
    unfold C
    simp [show (373248 * k + 335933) % 2 ≠ 0 by omega]
    omega
  have h15 : C (1119744 * k + 1007800) = 559872 * k + 503900 := by
    unfold C
    simp [show (1119744 * k + 1007800) % 2 = 0 by omega]
    omega
  have h16 : C (559872 * k + 503900) = 279936 * k + 251950 := by
    unfold C
    simp [show (559872 * k + 503900) % 2 = 0 by omega]
    omega
  have h17 : C (279936 * k + 251950) = 139968 * k + 125975 := by
    unfold C
    simp [show (279936 * k + 251950) % 2 = 0 by omega]
    omega
  have h18 : C (139968 * k + 125975) = 419904 * k + 377926 := by
    unfold C
    simp [show (139968 * k + 125975) % 2 ≠ 0 by omega]
    omega
  have h19 : C (419904 * k + 377926) = 209952 * k + 188963 := by
    unfold C
    simp [show (419904 * k + 377926) % 2 = 0 by omega]
    omega
  have h20 : C (209952 * k + 188963) = 629856 * k + 566890 := by
    unfold C
    simp [show (209952 * k + 188963) % 2 ≠ 0 by omega]
    omega
  have h21 : C (629856 * k + 566890) = 314928 * k + 283445 := by
    unfold C
    simp [show (629856 * k + 566890) % 2 = 0 by omega]
    omega
  have h22 : C (314928 * k + 283445) = 944784 * k + 850336 := by
    unfold C
    simp [show (314928 * k + 283445) % 2 ≠ 0 by omega]
    omega
  have h23 : C (944784 * k + 850336) = 472392 * k + 425168 := by
    unfold C
    simp [show (944784 * k + 850336) % 2 = 0 by omega]
    omega
  have h24 : C (472392 * k + 425168) = 236196 * k + 212584 := by
    unfold C
    simp [show (472392 * k + 425168) % 2 = 0 by omega]
    omega
  have h25 : C (236196 * k + 212584) = 118098 * k + 106292 := by
    unfold C
    simp [show (236196 * k + 212584) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 106292) = 59049 * k + 53146 := by
    unfold C
    simp [show (118098 * k + 106292) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 58983) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 58983)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_59247 : ∀ k : Nat,
    iterate (65536 * k + 59247) 26 = 59049 * k + 53384 ∧
      59049 * k + 53384 < 65536 * k + 59247 := by
  intro k
  have h1 : C (65536 * k + 59247) = 196608 * k + 177742 := by
    unfold C
    simp [show (65536 * k + 59247) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 177742) = 98304 * k + 88871 := by
    unfold C
    simp [show (196608 * k + 177742) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 88871) = 294912 * k + 266614 := by
    unfold C
    simp [show (98304 * k + 88871) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 266614) = 147456 * k + 133307 := by
    unfold C
    simp [show (294912 * k + 266614) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 133307) = 442368 * k + 399922 := by
    unfold C
    simp [show (147456 * k + 133307) % 2 ≠ 0 by omega]
    omega
  have h6 : C (442368 * k + 399922) = 221184 * k + 199961 := by
    unfold C
    simp [show (442368 * k + 399922) % 2 = 0 by omega]
    omega
  have h7 : C (221184 * k + 199961) = 663552 * k + 599884 := by
    unfold C
    simp [show (221184 * k + 199961) % 2 ≠ 0 by omega]
    omega
  have h8 : C (663552 * k + 599884) = 331776 * k + 299942 := by
    unfold C
    simp [show (663552 * k + 599884) % 2 = 0 by omega]
    omega
  have h9 : C (331776 * k + 299942) = 165888 * k + 149971 := by
    unfold C
    simp [show (331776 * k + 299942) % 2 = 0 by omega]
    omega
  have h10 : C (165888 * k + 149971) = 497664 * k + 449914 := by
    unfold C
    simp [show (165888 * k + 149971) % 2 ≠ 0 by omega]
    omega
  have h11 : C (497664 * k + 449914) = 248832 * k + 224957 := by
    unfold C
    simp [show (497664 * k + 449914) % 2 = 0 by omega]
    omega
  have h12 : C (248832 * k + 224957) = 746496 * k + 674872 := by
    unfold C
    simp [show (248832 * k + 224957) % 2 ≠ 0 by omega]
    omega
  have h13 : C (746496 * k + 674872) = 373248 * k + 337436 := by
    unfold C
    simp [show (746496 * k + 674872) % 2 = 0 by omega]
    omega
  have h14 : C (373248 * k + 337436) = 186624 * k + 168718 := by
    unfold C
    simp [show (373248 * k + 337436) % 2 = 0 by omega]
    omega
  have h15 : C (186624 * k + 168718) = 93312 * k + 84359 := by
    unfold C
    simp [show (186624 * k + 168718) % 2 = 0 by omega]
    omega
  have h16 : C (93312 * k + 84359) = 279936 * k + 253078 := by
    unfold C
    simp [show (93312 * k + 84359) % 2 ≠ 0 by omega]
    omega
  have h17 : C (279936 * k + 253078) = 139968 * k + 126539 := by
    unfold C
    simp [show (279936 * k + 253078) % 2 = 0 by omega]
    omega
  have h18 : C (139968 * k + 126539) = 419904 * k + 379618 := by
    unfold C
    simp [show (139968 * k + 126539) % 2 ≠ 0 by omega]
    omega
  have h19 : C (419904 * k + 379618) = 209952 * k + 189809 := by
    unfold C
    simp [show (419904 * k + 379618) % 2 = 0 by omega]
    omega
  have h20 : C (209952 * k + 189809) = 629856 * k + 569428 := by
    unfold C
    simp [show (209952 * k + 189809) % 2 ≠ 0 by omega]
    omega
  have h21 : C (629856 * k + 569428) = 314928 * k + 284714 := by
    unfold C
    simp [show (629856 * k + 569428) % 2 = 0 by omega]
    omega
  have h22 : C (314928 * k + 284714) = 157464 * k + 142357 := by
    unfold C
    simp [show (314928 * k + 284714) % 2 = 0 by omega]
    omega
  have h23 : C (157464 * k + 142357) = 472392 * k + 427072 := by
    unfold C
    simp [show (157464 * k + 142357) % 2 ≠ 0 by omega]
    omega
  have h24 : C (472392 * k + 427072) = 236196 * k + 213536 := by
    unfold C
    simp [show (472392 * k + 427072) % 2 = 0 by omega]
    omega
  have h25 : C (236196 * k + 213536) = 118098 * k + 106768 := by
    unfold C
    simp [show (236196 * k + 213536) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 106768) = 59049 * k + 53384 := by
    unfold C
    simp [show (118098 * k + 106768) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 59247) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 59247)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_59263 : ∀ k : Nat,
    iterate (65536 * k + 59263) 26 = 59049 * k + 53398 ∧
      59049 * k + 53398 < 65536 * k + 59263 := by
  intro k
  have h1 : C (65536 * k + 59263) = 196608 * k + 177790 := by
    unfold C
    simp [show (65536 * k + 59263) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 177790) = 98304 * k + 88895 := by
    unfold C
    simp [show (196608 * k + 177790) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 88895) = 294912 * k + 266686 := by
    unfold C
    simp [show (98304 * k + 88895) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 266686) = 147456 * k + 133343 := by
    unfold C
    simp [show (294912 * k + 266686) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 133343) = 442368 * k + 400030 := by
    unfold C
    simp [show (147456 * k + 133343) % 2 ≠ 0 by omega]
    omega
  have h6 : C (442368 * k + 400030) = 221184 * k + 200015 := by
    unfold C
    simp [show (442368 * k + 400030) % 2 = 0 by omega]
    omega
  have h7 : C (221184 * k + 200015) = 663552 * k + 600046 := by
    unfold C
    simp [show (221184 * k + 200015) % 2 ≠ 0 by omega]
    omega
  have h8 : C (663552 * k + 600046) = 331776 * k + 300023 := by
    unfold C
    simp [show (663552 * k + 600046) % 2 = 0 by omega]
    omega
  have h9 : C (331776 * k + 300023) = 995328 * k + 900070 := by
    unfold C
    simp [show (331776 * k + 300023) % 2 ≠ 0 by omega]
    omega
  have h10 : C (995328 * k + 900070) = 497664 * k + 450035 := by
    unfold C
    simp [show (995328 * k + 900070) % 2 = 0 by omega]
    omega
  have h11 : C (497664 * k + 450035) = 1492992 * k + 1350106 := by
    unfold C
    simp [show (497664 * k + 450035) % 2 ≠ 0 by omega]
    omega
  have h12 : C (1492992 * k + 1350106) = 746496 * k + 675053 := by
    unfold C
    simp [show (1492992 * k + 1350106) % 2 = 0 by omega]
    omega
  have h13 : C (746496 * k + 675053) = 2239488 * k + 2025160 := by
    unfold C
    simp [show (746496 * k + 675053) % 2 ≠ 0 by omega]
    omega
  have h14 : C (2239488 * k + 2025160) = 1119744 * k + 1012580 := by
    unfold C
    simp [show (2239488 * k + 2025160) % 2 = 0 by omega]
    omega
  have h15 : C (1119744 * k + 1012580) = 559872 * k + 506290 := by
    unfold C
    simp [show (1119744 * k + 1012580) % 2 = 0 by omega]
    omega
  have h16 : C (559872 * k + 506290) = 279936 * k + 253145 := by
    unfold C
    simp [show (559872 * k + 506290) % 2 = 0 by omega]
    omega
  have h17 : C (279936 * k + 253145) = 839808 * k + 759436 := by
    unfold C
    simp [show (279936 * k + 253145) % 2 ≠ 0 by omega]
    omega
  have h18 : C (839808 * k + 759436) = 419904 * k + 379718 := by
    unfold C
    simp [show (839808 * k + 759436) % 2 = 0 by omega]
    omega
  have h19 : C (419904 * k + 379718) = 209952 * k + 189859 := by
    unfold C
    simp [show (419904 * k + 379718) % 2 = 0 by omega]
    omega
  have h20 : C (209952 * k + 189859) = 629856 * k + 569578 := by
    unfold C
    simp [show (209952 * k + 189859) % 2 ≠ 0 by omega]
    omega
  have h21 : C (629856 * k + 569578) = 314928 * k + 284789 := by
    unfold C
    simp [show (629856 * k + 569578) % 2 = 0 by omega]
    omega
  have h22 : C (314928 * k + 284789) = 944784 * k + 854368 := by
    unfold C
    simp [show (314928 * k + 284789) % 2 ≠ 0 by omega]
    omega
  have h23 : C (944784 * k + 854368) = 472392 * k + 427184 := by
    unfold C
    simp [show (944784 * k + 854368) % 2 = 0 by omega]
    omega
  have h24 : C (472392 * k + 427184) = 236196 * k + 213592 := by
    unfold C
    simp [show (472392 * k + 427184) % 2 = 0 by omega]
    omega
  have h25 : C (236196 * k + 213592) = 118098 * k + 106796 := by
    unfold C
    simp [show (236196 * k + 213592) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 106796) = 59049 * k + 53398 := by
    unfold C
    simp [show (118098 * k + 106796) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 59263) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 59263)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_59463 : ∀ k : Nat,
    iterate (65536 * k + 59463) 26 = 59049 * k + 53579 ∧
      59049 * k + 53579 < 65536 * k + 59463 := by
  intro k
  have h1 : C (65536 * k + 59463) = 196608 * k + 178390 := by
    unfold C
    simp [show (65536 * k + 59463) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 178390) = 98304 * k + 89195 := by
    unfold C
    simp [show (196608 * k + 178390) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 89195) = 294912 * k + 267586 := by
    unfold C
    simp [show (98304 * k + 89195) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 267586) = 147456 * k + 133793 := by
    unfold C
    simp [show (294912 * k + 267586) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 133793) = 442368 * k + 401380 := by
    unfold C
    simp [show (147456 * k + 133793) % 2 ≠ 0 by omega]
    omega
  have h6 : C (442368 * k + 401380) = 221184 * k + 200690 := by
    unfold C
    simp [show (442368 * k + 401380) % 2 = 0 by omega]
    omega
  have h7 : C (221184 * k + 200690) = 110592 * k + 100345 := by
    unfold C
    simp [show (221184 * k + 200690) % 2 = 0 by omega]
    omega
  have h8 : C (110592 * k + 100345) = 331776 * k + 301036 := by
    unfold C
    simp [show (110592 * k + 100345) % 2 ≠ 0 by omega]
    omega
  have h9 : C (331776 * k + 301036) = 165888 * k + 150518 := by
    unfold C
    simp [show (331776 * k + 301036) % 2 = 0 by omega]
    omega
  have h10 : C (165888 * k + 150518) = 82944 * k + 75259 := by
    unfold C
    simp [show (165888 * k + 150518) % 2 = 0 by omega]
    omega
  have h11 : C (82944 * k + 75259) = 248832 * k + 225778 := by
    unfold C
    simp [show (82944 * k + 75259) % 2 ≠ 0 by omega]
    omega
  have h12 : C (248832 * k + 225778) = 124416 * k + 112889 := by
    unfold C
    simp [show (248832 * k + 225778) % 2 = 0 by omega]
    omega
  have h13 : C (124416 * k + 112889) = 373248 * k + 338668 := by
    unfold C
    simp [show (124416 * k + 112889) % 2 ≠ 0 by omega]
    omega
  have h14 : C (373248 * k + 338668) = 186624 * k + 169334 := by
    unfold C
    simp [show (373248 * k + 338668) % 2 = 0 by omega]
    omega
  have h15 : C (186624 * k + 169334) = 93312 * k + 84667 := by
    unfold C
    simp [show (186624 * k + 169334) % 2 = 0 by omega]
    omega
  have h16 : C (93312 * k + 84667) = 279936 * k + 254002 := by
    unfold C
    simp [show (93312 * k + 84667) % 2 ≠ 0 by omega]
    omega
  have h17 : C (279936 * k + 254002) = 139968 * k + 127001 := by
    unfold C
    simp [show (279936 * k + 254002) % 2 = 0 by omega]
    omega
  have h18 : C (139968 * k + 127001) = 419904 * k + 381004 := by
    unfold C
    simp [show (139968 * k + 127001) % 2 ≠ 0 by omega]
    omega
  have h19 : C (419904 * k + 381004) = 209952 * k + 190502 := by
    unfold C
    simp [show (419904 * k + 381004) % 2 = 0 by omega]
    omega
  have h20 : C (209952 * k + 190502) = 104976 * k + 95251 := by
    unfold C
    simp [show (209952 * k + 190502) % 2 = 0 by omega]
    omega
  have h21 : C (104976 * k + 95251) = 314928 * k + 285754 := by
    unfold C
    simp [show (104976 * k + 95251) % 2 ≠ 0 by omega]
    omega
  have h22 : C (314928 * k + 285754) = 157464 * k + 142877 := by
    unfold C
    simp [show (314928 * k + 285754) % 2 = 0 by omega]
    omega
  have h23 : C (157464 * k + 142877) = 472392 * k + 428632 := by
    unfold C
    simp [show (157464 * k + 142877) % 2 ≠ 0 by omega]
    omega
  have h24 : C (472392 * k + 428632) = 236196 * k + 214316 := by
    unfold C
    simp [show (472392 * k + 428632) % 2 = 0 by omega]
    omega
  have h25 : C (236196 * k + 214316) = 118098 * k + 107158 := by
    unfold C
    simp [show (236196 * k + 214316) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 107158) = 59049 * k + 53579 := by
    unfold C
    simp [show (118098 * k + 107158) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 59463) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 59463)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_59559 : ∀ k : Nat,
    iterate (65536 * k + 59559) 26 = 59049 * k + 53665 ∧
      59049 * k + 53665 < 65536 * k + 59559 := by
  intro k
  have h1 : C (65536 * k + 59559) = 196608 * k + 178678 := by
    unfold C
    simp [show (65536 * k + 59559) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 178678) = 98304 * k + 89339 := by
    unfold C
    simp [show (196608 * k + 178678) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 89339) = 294912 * k + 268018 := by
    unfold C
    simp [show (98304 * k + 89339) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 268018) = 147456 * k + 134009 := by
    unfold C
    simp [show (294912 * k + 268018) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 134009) = 442368 * k + 402028 := by
    unfold C
    simp [show (147456 * k + 134009) % 2 ≠ 0 by omega]
    omega
  have h6 : C (442368 * k + 402028) = 221184 * k + 201014 := by
    unfold C
    simp [show (442368 * k + 402028) % 2 = 0 by omega]
    omega
  have h7 : C (221184 * k + 201014) = 110592 * k + 100507 := by
    unfold C
    simp [show (221184 * k + 201014) % 2 = 0 by omega]
    omega
  have h8 : C (110592 * k + 100507) = 331776 * k + 301522 := by
    unfold C
    simp [show (110592 * k + 100507) % 2 ≠ 0 by omega]
    omega
  have h9 : C (331776 * k + 301522) = 165888 * k + 150761 := by
    unfold C
    simp [show (331776 * k + 301522) % 2 = 0 by omega]
    omega
  have h10 : C (165888 * k + 150761) = 497664 * k + 452284 := by
    unfold C
    simp [show (165888 * k + 150761) % 2 ≠ 0 by omega]
    omega
  have h11 : C (497664 * k + 452284) = 248832 * k + 226142 := by
    unfold C
    simp [show (497664 * k + 452284) % 2 = 0 by omega]
    omega
  have h12 : C (248832 * k + 226142) = 124416 * k + 113071 := by
    unfold C
    simp [show (248832 * k + 226142) % 2 = 0 by omega]
    omega
  have h13 : C (124416 * k + 113071) = 373248 * k + 339214 := by
    unfold C
    simp [show (124416 * k + 113071) % 2 ≠ 0 by omega]
    omega
  have h14 : C (373248 * k + 339214) = 186624 * k + 169607 := by
    unfold C
    simp [show (373248 * k + 339214) % 2 = 0 by omega]
    omega
  have h15 : C (186624 * k + 169607) = 559872 * k + 508822 := by
    unfold C
    simp [show (186624 * k + 169607) % 2 ≠ 0 by omega]
    omega
  have h16 : C (559872 * k + 508822) = 279936 * k + 254411 := by
    unfold C
    simp [show (559872 * k + 508822) % 2 = 0 by omega]
    omega
  have h17 : C (279936 * k + 254411) = 839808 * k + 763234 := by
    unfold C
    simp [show (279936 * k + 254411) % 2 ≠ 0 by omega]
    omega
  have h18 : C (839808 * k + 763234) = 419904 * k + 381617 := by
    unfold C
    simp [show (839808 * k + 763234) % 2 = 0 by omega]
    omega
  have h19 : C (419904 * k + 381617) = 1259712 * k + 1144852 := by
    unfold C
    simp [show (419904 * k + 381617) % 2 ≠ 0 by omega]
    omega
  have h20 : C (1259712 * k + 1144852) = 629856 * k + 572426 := by
    unfold C
    simp [show (1259712 * k + 1144852) % 2 = 0 by omega]
    omega
  have h21 : C (629856 * k + 572426) = 314928 * k + 286213 := by
    unfold C
    simp [show (629856 * k + 572426) % 2 = 0 by omega]
    omega
  have h22 : C (314928 * k + 286213) = 944784 * k + 858640 := by
    unfold C
    simp [show (314928 * k + 286213) % 2 ≠ 0 by omega]
    omega
  have h23 : C (944784 * k + 858640) = 472392 * k + 429320 := by
    unfold C
    simp [show (944784 * k + 858640) % 2 = 0 by omega]
    omega
  have h24 : C (472392 * k + 429320) = 236196 * k + 214660 := by
    unfold C
    simp [show (472392 * k + 429320) % 2 = 0 by omega]
    omega
  have h25 : C (236196 * k + 214660) = 118098 * k + 107330 := by
    unfold C
    simp [show (236196 * k + 214660) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 107330) = 59049 * k + 53665 := by
    unfold C
    simp [show (118098 * k + 107330) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 59559) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 59559)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_59623 : ∀ k : Nat,
    iterate (65536 * k + 59623) 26 = 59049 * k + 53723 ∧
      59049 * k + 53723 < 65536 * k + 59623 := by
  intro k
  have h1 : C (65536 * k + 59623) = 196608 * k + 178870 := by
    unfold C
    simp [show (65536 * k + 59623) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 178870) = 98304 * k + 89435 := by
    unfold C
    simp [show (196608 * k + 178870) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 89435) = 294912 * k + 268306 := by
    unfold C
    simp [show (98304 * k + 89435) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 268306) = 147456 * k + 134153 := by
    unfold C
    simp [show (294912 * k + 268306) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 134153) = 442368 * k + 402460 := by
    unfold C
    simp [show (147456 * k + 134153) % 2 ≠ 0 by omega]
    omega
  have h6 : C (442368 * k + 402460) = 221184 * k + 201230 := by
    unfold C
    simp [show (442368 * k + 402460) % 2 = 0 by omega]
    omega
  have h7 : C (221184 * k + 201230) = 110592 * k + 100615 := by
    unfold C
    simp [show (221184 * k + 201230) % 2 = 0 by omega]
    omega
  have h8 : C (110592 * k + 100615) = 331776 * k + 301846 := by
    unfold C
    simp [show (110592 * k + 100615) % 2 ≠ 0 by omega]
    omega
  have h9 : C (331776 * k + 301846) = 165888 * k + 150923 := by
    unfold C
    simp [show (331776 * k + 301846) % 2 = 0 by omega]
    omega
  have h10 : C (165888 * k + 150923) = 497664 * k + 452770 := by
    unfold C
    simp [show (165888 * k + 150923) % 2 ≠ 0 by omega]
    omega
  have h11 : C (497664 * k + 452770) = 248832 * k + 226385 := by
    unfold C
    simp [show (497664 * k + 452770) % 2 = 0 by omega]
    omega
  have h12 : C (248832 * k + 226385) = 746496 * k + 679156 := by
    unfold C
    simp [show (248832 * k + 226385) % 2 ≠ 0 by omega]
    omega
  have h13 : C (746496 * k + 679156) = 373248 * k + 339578 := by
    unfold C
    simp [show (746496 * k + 679156) % 2 = 0 by omega]
    omega
  have h14 : C (373248 * k + 339578) = 186624 * k + 169789 := by
    unfold C
    simp [show (373248 * k + 339578) % 2 = 0 by omega]
    omega
  have h15 : C (186624 * k + 169789) = 559872 * k + 509368 := by
    unfold C
    simp [show (186624 * k + 169789) % 2 ≠ 0 by omega]
    omega
  have h16 : C (559872 * k + 509368) = 279936 * k + 254684 := by
    unfold C
    simp [show (559872 * k + 509368) % 2 = 0 by omega]
    omega
  have h17 : C (279936 * k + 254684) = 139968 * k + 127342 := by
    unfold C
    simp [show (279936 * k + 254684) % 2 = 0 by omega]
    omega
  have h18 : C (139968 * k + 127342) = 69984 * k + 63671 := by
    unfold C
    simp [show (139968 * k + 127342) % 2 = 0 by omega]
    omega
  have h19 : C (69984 * k + 63671) = 209952 * k + 191014 := by
    unfold C
    simp [show (69984 * k + 63671) % 2 ≠ 0 by omega]
    omega
  have h20 : C (209952 * k + 191014) = 104976 * k + 95507 := by
    unfold C
    simp [show (209952 * k + 191014) % 2 = 0 by omega]
    omega
  have h21 : C (104976 * k + 95507) = 314928 * k + 286522 := by
    unfold C
    simp [show (104976 * k + 95507) % 2 ≠ 0 by omega]
    omega
  have h22 : C (314928 * k + 286522) = 157464 * k + 143261 := by
    unfold C
    simp [show (314928 * k + 286522) % 2 = 0 by omega]
    omega
  have h23 : C (157464 * k + 143261) = 472392 * k + 429784 := by
    unfold C
    simp [show (157464 * k + 143261) % 2 ≠ 0 by omega]
    omega
  have h24 : C (472392 * k + 429784) = 236196 * k + 214892 := by
    unfold C
    simp [show (472392 * k + 429784) % 2 = 0 by omega]
    omega
  have h25 : C (236196 * k + 214892) = 118098 * k + 107446 := by
    unfold C
    simp [show (236196 * k + 214892) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 107446) = 59049 * k + 53723 := by
    unfold C
    simp [show (118098 * k + 107446) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 59623) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 59623)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_59643 : ∀ k : Nat,
    iterate (65536 * k + 59643) 26 = 59049 * k + 53741 ∧
      59049 * k + 53741 < 65536 * k + 59643 := by
  intro k
  have h1 : C (65536 * k + 59643) = 196608 * k + 178930 := by
    unfold C
    simp [show (65536 * k + 59643) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 178930) = 98304 * k + 89465 := by
    unfold C
    simp [show (196608 * k + 178930) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 89465) = 294912 * k + 268396 := by
    unfold C
    simp [show (98304 * k + 89465) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 268396) = 147456 * k + 134198 := by
    unfold C
    simp [show (294912 * k + 268396) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 134198) = 73728 * k + 67099 := by
    unfold C
    simp [show (147456 * k + 134198) % 2 = 0 by omega]
    omega
  have h6 : C (73728 * k + 67099) = 221184 * k + 201298 := by
    unfold C
    simp [show (73728 * k + 67099) % 2 ≠ 0 by omega]
    omega
  have h7 : C (221184 * k + 201298) = 110592 * k + 100649 := by
    unfold C
    simp [show (221184 * k + 201298) % 2 = 0 by omega]
    omega
  have h8 : C (110592 * k + 100649) = 331776 * k + 301948 := by
    unfold C
    simp [show (110592 * k + 100649) % 2 ≠ 0 by omega]
    omega
  have h9 : C (331776 * k + 301948) = 165888 * k + 150974 := by
    unfold C
    simp [show (331776 * k + 301948) % 2 = 0 by omega]
    omega
  have h10 : C (165888 * k + 150974) = 82944 * k + 75487 := by
    unfold C
    simp [show (165888 * k + 150974) % 2 = 0 by omega]
    omega
  have h11 : C (82944 * k + 75487) = 248832 * k + 226462 := by
    unfold C
    simp [show (82944 * k + 75487) % 2 ≠ 0 by omega]
    omega
  have h12 : C (248832 * k + 226462) = 124416 * k + 113231 := by
    unfold C
    simp [show (248832 * k + 226462) % 2 = 0 by omega]
    omega
  have h13 : C (124416 * k + 113231) = 373248 * k + 339694 := by
    unfold C
    simp [show (124416 * k + 113231) % 2 ≠ 0 by omega]
    omega
  have h14 : C (373248 * k + 339694) = 186624 * k + 169847 := by
    unfold C
    simp [show (373248 * k + 339694) % 2 = 0 by omega]
    omega
  have h15 : C (186624 * k + 169847) = 559872 * k + 509542 := by
    unfold C
    simp [show (186624 * k + 169847) % 2 ≠ 0 by omega]
    omega
  have h16 : C (559872 * k + 509542) = 279936 * k + 254771 := by
    unfold C
    simp [show (559872 * k + 509542) % 2 = 0 by omega]
    omega
  have h17 : C (279936 * k + 254771) = 839808 * k + 764314 := by
    unfold C
    simp [show (279936 * k + 254771) % 2 ≠ 0 by omega]
    omega
  have h18 : C (839808 * k + 764314) = 419904 * k + 382157 := by
    unfold C
    simp [show (839808 * k + 764314) % 2 = 0 by omega]
    omega
  have h19 : C (419904 * k + 382157) = 1259712 * k + 1146472 := by
    unfold C
    simp [show (419904 * k + 382157) % 2 ≠ 0 by omega]
    omega
  have h20 : C (1259712 * k + 1146472) = 629856 * k + 573236 := by
    unfold C
    simp [show (1259712 * k + 1146472) % 2 = 0 by omega]
    omega
  have h21 : C (629856 * k + 573236) = 314928 * k + 286618 := by
    unfold C
    simp [show (629856 * k + 573236) % 2 = 0 by omega]
    omega
  have h22 : C (314928 * k + 286618) = 157464 * k + 143309 := by
    unfold C
    simp [show (314928 * k + 286618) % 2 = 0 by omega]
    omega
  have h23 : C (157464 * k + 143309) = 472392 * k + 429928 := by
    unfold C
    simp [show (157464 * k + 143309) % 2 ≠ 0 by omega]
    omega
  have h24 : C (472392 * k + 429928) = 236196 * k + 214964 := by
    unfold C
    simp [show (472392 * k + 429928) % 2 = 0 by omega]
    omega
  have h25 : C (236196 * k + 214964) = 118098 * k + 107482 := by
    unfold C
    simp [show (236196 * k + 214964) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 107482) = 59049 * k + 53741 := by
    unfold C
    simp [show (118098 * k + 107482) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 59643) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 59643)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_59647 : ∀ k : Nat,
    iterate (65536 * k + 59647) 26 = 59049 * k + 53744 ∧
      59049 * k + 53744 < 65536 * k + 59647 := by
  intro k
  have h1 : C (65536 * k + 59647) = 196608 * k + 178942 := by
    unfold C
    simp [show (65536 * k + 59647) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 178942) = 98304 * k + 89471 := by
    unfold C
    simp [show (196608 * k + 178942) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 89471) = 294912 * k + 268414 := by
    unfold C
    simp [show (98304 * k + 89471) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 268414) = 147456 * k + 134207 := by
    unfold C
    simp [show (294912 * k + 268414) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 134207) = 442368 * k + 402622 := by
    unfold C
    simp [show (147456 * k + 134207) % 2 ≠ 0 by omega]
    omega
  have h6 : C (442368 * k + 402622) = 221184 * k + 201311 := by
    unfold C
    simp [show (442368 * k + 402622) % 2 = 0 by omega]
    omega
  have h7 : C (221184 * k + 201311) = 663552 * k + 603934 := by
    unfold C
    simp [show (221184 * k + 201311) % 2 ≠ 0 by omega]
    omega
  have h8 : C (663552 * k + 603934) = 331776 * k + 301967 := by
    unfold C
    simp [show (663552 * k + 603934) % 2 = 0 by omega]
    omega
  have h9 : C (331776 * k + 301967) = 995328 * k + 905902 := by
    unfold C
    simp [show (331776 * k + 301967) % 2 ≠ 0 by omega]
    omega
  have h10 : C (995328 * k + 905902) = 497664 * k + 452951 := by
    unfold C
    simp [show (995328 * k + 905902) % 2 = 0 by omega]
    omega
  have h11 : C (497664 * k + 452951) = 1492992 * k + 1358854 := by
    unfold C
    simp [show (497664 * k + 452951) % 2 ≠ 0 by omega]
    omega
  have h12 : C (1492992 * k + 1358854) = 746496 * k + 679427 := by
    unfold C
    simp [show (1492992 * k + 1358854) % 2 = 0 by omega]
    omega
  have h13 : C (746496 * k + 679427) = 2239488 * k + 2038282 := by
    unfold C
    simp [show (746496 * k + 679427) % 2 ≠ 0 by omega]
    omega
  have h14 : C (2239488 * k + 2038282) = 1119744 * k + 1019141 := by
    unfold C
    simp [show (2239488 * k + 2038282) % 2 = 0 by omega]
    omega
  have h15 : C (1119744 * k + 1019141) = 3359232 * k + 3057424 := by
    unfold C
    simp [show (1119744 * k + 1019141) % 2 ≠ 0 by omega]
    omega
  have h16 : C (3359232 * k + 3057424) = 1679616 * k + 1528712 := by
    unfold C
    simp [show (3359232 * k + 3057424) % 2 = 0 by omega]
    omega
  have h17 : C (1679616 * k + 1528712) = 839808 * k + 764356 := by
    unfold C
    simp [show (1679616 * k + 1528712) % 2 = 0 by omega]
    omega
  have h18 : C (839808 * k + 764356) = 419904 * k + 382178 := by
    unfold C
    simp [show (839808 * k + 764356) % 2 = 0 by omega]
    omega
  have h19 : C (419904 * k + 382178) = 209952 * k + 191089 := by
    unfold C
    simp [show (419904 * k + 382178) % 2 = 0 by omega]
    omega
  have h20 : C (209952 * k + 191089) = 629856 * k + 573268 := by
    unfold C
    simp [show (209952 * k + 191089) % 2 ≠ 0 by omega]
    omega
  have h21 : C (629856 * k + 573268) = 314928 * k + 286634 := by
    unfold C
    simp [show (629856 * k + 573268) % 2 = 0 by omega]
    omega
  have h22 : C (314928 * k + 286634) = 157464 * k + 143317 := by
    unfold C
    simp [show (314928 * k + 286634) % 2 = 0 by omega]
    omega
  have h23 : C (157464 * k + 143317) = 472392 * k + 429952 := by
    unfold C
    simp [show (157464 * k + 143317) % 2 ≠ 0 by omega]
    omega
  have h24 : C (472392 * k + 429952) = 236196 * k + 214976 := by
    unfold C
    simp [show (472392 * k + 429952) % 2 = 0 by omega]
    omega
  have h25 : C (236196 * k + 214976) = 118098 * k + 107488 := by
    unfold C
    simp [show (236196 * k + 214976) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 107488) = 59049 * k + 53744 := by
    unfold C
    simp [show (118098 * k + 107488) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 59647) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 59647)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_60015 : ∀ k : Nat,
    iterate (65536 * k + 60015) 26 = 59049 * k + 54076 ∧
      59049 * k + 54076 < 65536 * k + 60015 := by
  intro k
  have h1 : C (65536 * k + 60015) = 196608 * k + 180046 := by
    unfold C
    simp [show (65536 * k + 60015) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 180046) = 98304 * k + 90023 := by
    unfold C
    simp [show (196608 * k + 180046) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 90023) = 294912 * k + 270070 := by
    unfold C
    simp [show (98304 * k + 90023) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 270070) = 147456 * k + 135035 := by
    unfold C
    simp [show (294912 * k + 270070) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 135035) = 442368 * k + 405106 := by
    unfold C
    simp [show (147456 * k + 135035) % 2 ≠ 0 by omega]
    omega
  have h6 : C (442368 * k + 405106) = 221184 * k + 202553 := by
    unfold C
    simp [show (442368 * k + 405106) % 2 = 0 by omega]
    omega
  have h7 : C (221184 * k + 202553) = 663552 * k + 607660 := by
    unfold C
    simp [show (221184 * k + 202553) % 2 ≠ 0 by omega]
    omega
  have h8 : C (663552 * k + 607660) = 331776 * k + 303830 := by
    unfold C
    simp [show (663552 * k + 607660) % 2 = 0 by omega]
    omega
  have h9 : C (331776 * k + 303830) = 165888 * k + 151915 := by
    unfold C
    simp [show (331776 * k + 303830) % 2 = 0 by omega]
    omega
  have h10 : C (165888 * k + 151915) = 497664 * k + 455746 := by
    unfold C
    simp [show (165888 * k + 151915) % 2 ≠ 0 by omega]
    omega
  have h11 : C (497664 * k + 455746) = 248832 * k + 227873 := by
    unfold C
    simp [show (497664 * k + 455746) % 2 = 0 by omega]
    omega
  have h12 : C (248832 * k + 227873) = 746496 * k + 683620 := by
    unfold C
    simp [show (248832 * k + 227873) % 2 ≠ 0 by omega]
    omega
  have h13 : C (746496 * k + 683620) = 373248 * k + 341810 := by
    unfold C
    simp [show (746496 * k + 683620) % 2 = 0 by omega]
    omega
  have h14 : C (373248 * k + 341810) = 186624 * k + 170905 := by
    unfold C
    simp [show (373248 * k + 341810) % 2 = 0 by omega]
    omega
  have h15 : C (186624 * k + 170905) = 559872 * k + 512716 := by
    unfold C
    simp [show (186624 * k + 170905) % 2 ≠ 0 by omega]
    omega
  have h16 : C (559872 * k + 512716) = 279936 * k + 256358 := by
    unfold C
    simp [show (559872 * k + 512716) % 2 = 0 by omega]
    omega
  have h17 : C (279936 * k + 256358) = 139968 * k + 128179 := by
    unfold C
    simp [show (279936 * k + 256358) % 2 = 0 by omega]
    omega
  have h18 : C (139968 * k + 128179) = 419904 * k + 384538 := by
    unfold C
    simp [show (139968 * k + 128179) % 2 ≠ 0 by omega]
    omega
  have h19 : C (419904 * k + 384538) = 209952 * k + 192269 := by
    unfold C
    simp [show (419904 * k + 384538) % 2 = 0 by omega]
    omega
  have h20 : C (209952 * k + 192269) = 629856 * k + 576808 := by
    unfold C
    simp [show (209952 * k + 192269) % 2 ≠ 0 by omega]
    omega
  have h21 : C (629856 * k + 576808) = 314928 * k + 288404 := by
    unfold C
    simp [show (629856 * k + 576808) % 2 = 0 by omega]
    omega
  have h22 : C (314928 * k + 288404) = 157464 * k + 144202 := by
    unfold C
    simp [show (314928 * k + 288404) % 2 = 0 by omega]
    omega
  have h23 : C (157464 * k + 144202) = 78732 * k + 72101 := by
    unfold C
    simp [show (157464 * k + 144202) % 2 = 0 by omega]
    omega
  have h24 : C (78732 * k + 72101) = 236196 * k + 216304 := by
    unfold C
    simp [show (78732 * k + 72101) % 2 ≠ 0 by omega]
    omega
  have h25 : C (236196 * k + 216304) = 118098 * k + 108152 := by
    unfold C
    simp [show (236196 * k + 216304) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 108152) = 59049 * k + 54076 := by
    unfold C
    simp [show (118098 * k + 108152) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 60015) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 60015)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_60063 : ∀ k : Nat,
    iterate (65536 * k + 60063) 26 = 59049 * k + 54119 ∧
      59049 * k + 54119 < 65536 * k + 60063 := by
  intro k
  have h1 : C (65536 * k + 60063) = 196608 * k + 180190 := by
    unfold C
    simp [show (65536 * k + 60063) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 180190) = 98304 * k + 90095 := by
    unfold C
    simp [show (196608 * k + 180190) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 90095) = 294912 * k + 270286 := by
    unfold C
    simp [show (98304 * k + 90095) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 270286) = 147456 * k + 135143 := by
    unfold C
    simp [show (294912 * k + 270286) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 135143) = 442368 * k + 405430 := by
    unfold C
    simp [show (147456 * k + 135143) % 2 ≠ 0 by omega]
    omega
  have h6 : C (442368 * k + 405430) = 221184 * k + 202715 := by
    unfold C
    simp [show (442368 * k + 405430) % 2 = 0 by omega]
    omega
  have h7 : C (221184 * k + 202715) = 663552 * k + 608146 := by
    unfold C
    simp [show (221184 * k + 202715) % 2 ≠ 0 by omega]
    omega
  have h8 : C (663552 * k + 608146) = 331776 * k + 304073 := by
    unfold C
    simp [show (663552 * k + 608146) % 2 = 0 by omega]
    omega
  have h9 : C (331776 * k + 304073) = 995328 * k + 912220 := by
    unfold C
    simp [show (331776 * k + 304073) % 2 ≠ 0 by omega]
    omega
  have h10 : C (995328 * k + 912220) = 497664 * k + 456110 := by
    unfold C
    simp [show (995328 * k + 912220) % 2 = 0 by omega]
    omega
  have h11 : C (497664 * k + 456110) = 248832 * k + 228055 := by
    unfold C
    simp [show (497664 * k + 456110) % 2 = 0 by omega]
    omega
  have h12 : C (248832 * k + 228055) = 746496 * k + 684166 := by
    unfold C
    simp [show (248832 * k + 228055) % 2 ≠ 0 by omega]
    omega
  have h13 : C (746496 * k + 684166) = 373248 * k + 342083 := by
    unfold C
    simp [show (746496 * k + 684166) % 2 = 0 by omega]
    omega
  have h14 : C (373248 * k + 342083) = 1119744 * k + 1026250 := by
    unfold C
    simp [show (373248 * k + 342083) % 2 ≠ 0 by omega]
    omega
  have h15 : C (1119744 * k + 1026250) = 559872 * k + 513125 := by
    unfold C
    simp [show (1119744 * k + 1026250) % 2 = 0 by omega]
    omega
  have h16 : C (559872 * k + 513125) = 1679616 * k + 1539376 := by
    unfold C
    simp [show (559872 * k + 513125) % 2 ≠ 0 by omega]
    omega
  have h17 : C (1679616 * k + 1539376) = 839808 * k + 769688 := by
    unfold C
    simp [show (1679616 * k + 1539376) % 2 = 0 by omega]
    omega
  have h18 : C (839808 * k + 769688) = 419904 * k + 384844 := by
    unfold C
    simp [show (839808 * k + 769688) % 2 = 0 by omega]
    omega
  have h19 : C (419904 * k + 384844) = 209952 * k + 192422 := by
    unfold C
    simp [show (419904 * k + 384844) % 2 = 0 by omega]
    omega
  have h20 : C (209952 * k + 192422) = 104976 * k + 96211 := by
    unfold C
    simp [show (209952 * k + 192422) % 2 = 0 by omega]
    omega
  have h21 : C (104976 * k + 96211) = 314928 * k + 288634 := by
    unfold C
    simp [show (104976 * k + 96211) % 2 ≠ 0 by omega]
    omega
  have h22 : C (314928 * k + 288634) = 157464 * k + 144317 := by
    unfold C
    simp [show (314928 * k + 288634) % 2 = 0 by omega]
    omega
  have h23 : C (157464 * k + 144317) = 472392 * k + 432952 := by
    unfold C
    simp [show (157464 * k + 144317) % 2 ≠ 0 by omega]
    omega
  have h24 : C (472392 * k + 432952) = 236196 * k + 216476 := by
    unfold C
    simp [show (472392 * k + 432952) % 2 = 0 by omega]
    omega
  have h25 : C (236196 * k + 216476) = 118098 * k + 108238 := by
    unfold C
    simp [show (236196 * k + 216476) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 108238) = 59049 * k + 54119 := by
    unfold C
    simp [show (118098 * k + 108238) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 60063) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 60063)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_60143 : ∀ k : Nat,
    iterate (65536 * k + 60143) 26 = 59049 * k + 54191 ∧
      59049 * k + 54191 < 65536 * k + 60143 := by
  intro k
  have h1 : C (65536 * k + 60143) = 196608 * k + 180430 := by
    unfold C
    simp [show (65536 * k + 60143) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 180430) = 98304 * k + 90215 := by
    unfold C
    simp [show (196608 * k + 180430) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 90215) = 294912 * k + 270646 := by
    unfold C
    simp [show (98304 * k + 90215) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 270646) = 147456 * k + 135323 := by
    unfold C
    simp [show (294912 * k + 270646) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 135323) = 442368 * k + 405970 := by
    unfold C
    simp [show (147456 * k + 135323) % 2 ≠ 0 by omega]
    omega
  have h6 : C (442368 * k + 405970) = 221184 * k + 202985 := by
    unfold C
    simp [show (442368 * k + 405970) % 2 = 0 by omega]
    omega
  have h7 : C (221184 * k + 202985) = 663552 * k + 608956 := by
    unfold C
    simp [show (221184 * k + 202985) % 2 ≠ 0 by omega]
    omega
  have h8 : C (663552 * k + 608956) = 331776 * k + 304478 := by
    unfold C
    simp [show (663552 * k + 608956) % 2 = 0 by omega]
    omega
  have h9 : C (331776 * k + 304478) = 165888 * k + 152239 := by
    unfold C
    simp [show (331776 * k + 304478) % 2 = 0 by omega]
    omega
  have h10 : C (165888 * k + 152239) = 497664 * k + 456718 := by
    unfold C
    simp [show (165888 * k + 152239) % 2 ≠ 0 by omega]
    omega
  have h11 : C (497664 * k + 456718) = 248832 * k + 228359 := by
    unfold C
    simp [show (497664 * k + 456718) % 2 = 0 by omega]
    omega
  have h12 : C (248832 * k + 228359) = 746496 * k + 685078 := by
    unfold C
    simp [show (248832 * k + 228359) % 2 ≠ 0 by omega]
    omega
  have h13 : C (746496 * k + 685078) = 373248 * k + 342539 := by
    unfold C
    simp [show (746496 * k + 685078) % 2 = 0 by omega]
    omega
  have h14 : C (373248 * k + 342539) = 1119744 * k + 1027618 := by
    unfold C
    simp [show (373248 * k + 342539) % 2 ≠ 0 by omega]
    omega
  have h15 : C (1119744 * k + 1027618) = 559872 * k + 513809 := by
    unfold C
    simp [show (1119744 * k + 1027618) % 2 = 0 by omega]
    omega
  have h16 : C (559872 * k + 513809) = 1679616 * k + 1541428 := by
    unfold C
    simp [show (559872 * k + 513809) % 2 ≠ 0 by omega]
    omega
  have h17 : C (1679616 * k + 1541428) = 839808 * k + 770714 := by
    unfold C
    simp [show (1679616 * k + 1541428) % 2 = 0 by omega]
    omega
  have h18 : C (839808 * k + 770714) = 419904 * k + 385357 := by
    unfold C
    simp [show (839808 * k + 770714) % 2 = 0 by omega]
    omega
  have h19 : C (419904 * k + 385357) = 1259712 * k + 1156072 := by
    unfold C
    simp [show (419904 * k + 385357) % 2 ≠ 0 by omega]
    omega
  have h20 : C (1259712 * k + 1156072) = 629856 * k + 578036 := by
    unfold C
    simp [show (1259712 * k + 1156072) % 2 = 0 by omega]
    omega
  have h21 : C (629856 * k + 578036) = 314928 * k + 289018 := by
    unfold C
    simp [show (629856 * k + 578036) % 2 = 0 by omega]
    omega
  have h22 : C (314928 * k + 289018) = 157464 * k + 144509 := by
    unfold C
    simp [show (314928 * k + 289018) % 2 = 0 by omega]
    omega
  have h23 : C (157464 * k + 144509) = 472392 * k + 433528 := by
    unfold C
    simp [show (157464 * k + 144509) % 2 ≠ 0 by omega]
    omega
  have h24 : C (472392 * k + 433528) = 236196 * k + 216764 := by
    unfold C
    simp [show (472392 * k + 433528) % 2 = 0 by omega]
    omega
  have h25 : C (236196 * k + 216764) = 118098 * k + 108382 := by
    unfold C
    simp [show (236196 * k + 216764) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 108382) = 59049 * k + 54191 := by
    unfold C
    simp [show (118098 * k + 108382) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 60143) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 60143)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_60231 : ∀ k : Nat,
    iterate (65536 * k + 60231) 26 = 59049 * k + 54271 ∧
      59049 * k + 54271 < 65536 * k + 60231 := by
  intro k
  have h1 : C (65536 * k + 60231) = 196608 * k + 180694 := by
    unfold C
    simp [show (65536 * k + 60231) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 180694) = 98304 * k + 90347 := by
    unfold C
    simp [show (196608 * k + 180694) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 90347) = 294912 * k + 271042 := by
    unfold C
    simp [show (98304 * k + 90347) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 271042) = 147456 * k + 135521 := by
    unfold C
    simp [show (294912 * k + 271042) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 135521) = 442368 * k + 406564 := by
    unfold C
    simp [show (147456 * k + 135521) % 2 ≠ 0 by omega]
    omega
  have h6 : C (442368 * k + 406564) = 221184 * k + 203282 := by
    unfold C
    simp [show (442368 * k + 406564) % 2 = 0 by omega]
    omega
  have h7 : C (221184 * k + 203282) = 110592 * k + 101641 := by
    unfold C
    simp [show (221184 * k + 203282) % 2 = 0 by omega]
    omega
  have h8 : C (110592 * k + 101641) = 331776 * k + 304924 := by
    unfold C
    simp [show (110592 * k + 101641) % 2 ≠ 0 by omega]
    omega
  have h9 : C (331776 * k + 304924) = 165888 * k + 152462 := by
    unfold C
    simp [show (331776 * k + 304924) % 2 = 0 by omega]
    omega
  have h10 : C (165888 * k + 152462) = 82944 * k + 76231 := by
    unfold C
    simp [show (165888 * k + 152462) % 2 = 0 by omega]
    omega
  have h11 : C (82944 * k + 76231) = 248832 * k + 228694 := by
    unfold C
    simp [show (82944 * k + 76231) % 2 ≠ 0 by omega]
    omega
  have h12 : C (248832 * k + 228694) = 124416 * k + 114347 := by
    unfold C
    simp [show (248832 * k + 228694) % 2 = 0 by omega]
    omega
  have h13 : C (124416 * k + 114347) = 373248 * k + 343042 := by
    unfold C
    simp [show (124416 * k + 114347) % 2 ≠ 0 by omega]
    omega
  have h14 : C (373248 * k + 343042) = 186624 * k + 171521 := by
    unfold C
    simp [show (373248 * k + 343042) % 2 = 0 by omega]
    omega
  have h15 : C (186624 * k + 171521) = 559872 * k + 514564 := by
    unfold C
    simp [show (186624 * k + 171521) % 2 ≠ 0 by omega]
    omega
  have h16 : C (559872 * k + 514564) = 279936 * k + 257282 := by
    unfold C
    simp [show (559872 * k + 514564) % 2 = 0 by omega]
    omega
  have h17 : C (279936 * k + 257282) = 139968 * k + 128641 := by
    unfold C
    simp [show (279936 * k + 257282) % 2 = 0 by omega]
    omega
  have h18 : C (139968 * k + 128641) = 419904 * k + 385924 := by
    unfold C
    simp [show (139968 * k + 128641) % 2 ≠ 0 by omega]
    omega
  have h19 : C (419904 * k + 385924) = 209952 * k + 192962 := by
    unfold C
    simp [show (419904 * k + 385924) % 2 = 0 by omega]
    omega
  have h20 : C (209952 * k + 192962) = 104976 * k + 96481 := by
    unfold C
    simp [show (209952 * k + 192962) % 2 = 0 by omega]
    omega
  have h21 : C (104976 * k + 96481) = 314928 * k + 289444 := by
    unfold C
    simp [show (104976 * k + 96481) % 2 ≠ 0 by omega]
    omega
  have h22 : C (314928 * k + 289444) = 157464 * k + 144722 := by
    unfold C
    simp [show (314928 * k + 289444) % 2 = 0 by omega]
    omega
  have h23 : C (157464 * k + 144722) = 78732 * k + 72361 := by
    unfold C
    simp [show (157464 * k + 144722) % 2 = 0 by omega]
    omega
  have h24 : C (78732 * k + 72361) = 236196 * k + 217084 := by
    unfold C
    simp [show (78732 * k + 72361) % 2 ≠ 0 by omega]
    omega
  have h25 : C (236196 * k + 217084) = 118098 * k + 108542 := by
    unfold C
    simp [show (236196 * k + 217084) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 108542) = 59049 * k + 54271 := by
    unfold C
    simp [show (118098 * k + 108542) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 60231) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 60231)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_60271 : ∀ k : Nat,
    iterate (65536 * k + 60271) 26 = 59049 * k + 54307 ∧
      59049 * k + 54307 < 65536 * k + 60271 := by
  intro k
  have h1 : C (65536 * k + 60271) = 196608 * k + 180814 := by
    unfold C
    simp [show (65536 * k + 60271) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 180814) = 98304 * k + 90407 := by
    unfold C
    simp [show (196608 * k + 180814) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 90407) = 294912 * k + 271222 := by
    unfold C
    simp [show (98304 * k + 90407) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 271222) = 147456 * k + 135611 := by
    unfold C
    simp [show (294912 * k + 271222) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 135611) = 442368 * k + 406834 := by
    unfold C
    simp [show (147456 * k + 135611) % 2 ≠ 0 by omega]
    omega
  have h6 : C (442368 * k + 406834) = 221184 * k + 203417 := by
    unfold C
    simp [show (442368 * k + 406834) % 2 = 0 by omega]
    omega
  have h7 : C (221184 * k + 203417) = 663552 * k + 610252 := by
    unfold C
    simp [show (221184 * k + 203417) % 2 ≠ 0 by omega]
    omega
  have h8 : C (663552 * k + 610252) = 331776 * k + 305126 := by
    unfold C
    simp [show (663552 * k + 610252) % 2 = 0 by omega]
    omega
  have h9 : C (331776 * k + 305126) = 165888 * k + 152563 := by
    unfold C
    simp [show (331776 * k + 305126) % 2 = 0 by omega]
    omega
  have h10 : C (165888 * k + 152563) = 497664 * k + 457690 := by
    unfold C
    simp [show (165888 * k + 152563) % 2 ≠ 0 by omega]
    omega
  have h11 : C (497664 * k + 457690) = 248832 * k + 228845 := by
    unfold C
    simp [show (497664 * k + 457690) % 2 = 0 by omega]
    omega
  have h12 : C (248832 * k + 228845) = 746496 * k + 686536 := by
    unfold C
    simp [show (248832 * k + 228845) % 2 ≠ 0 by omega]
    omega
  have h13 : C (746496 * k + 686536) = 373248 * k + 343268 := by
    unfold C
    simp [show (746496 * k + 686536) % 2 = 0 by omega]
    omega
  have h14 : C (373248 * k + 343268) = 186624 * k + 171634 := by
    unfold C
    simp [show (373248 * k + 343268) % 2 = 0 by omega]
    omega
  have h15 : C (186624 * k + 171634) = 93312 * k + 85817 := by
    unfold C
    simp [show (186624 * k + 171634) % 2 = 0 by omega]
    omega
  have h16 : C (93312 * k + 85817) = 279936 * k + 257452 := by
    unfold C
    simp [show (93312 * k + 85817) % 2 ≠ 0 by omega]
    omega
  have h17 : C (279936 * k + 257452) = 139968 * k + 128726 := by
    unfold C
    simp [show (279936 * k + 257452) % 2 = 0 by omega]
    omega
  have h18 : C (139968 * k + 128726) = 69984 * k + 64363 := by
    unfold C
    simp [show (139968 * k + 128726) % 2 = 0 by omega]
    omega
  have h19 : C (69984 * k + 64363) = 209952 * k + 193090 := by
    unfold C
    simp [show (69984 * k + 64363) % 2 ≠ 0 by omega]
    omega
  have h20 : C (209952 * k + 193090) = 104976 * k + 96545 := by
    unfold C
    simp [show (209952 * k + 193090) % 2 = 0 by omega]
    omega
  have h21 : C (104976 * k + 96545) = 314928 * k + 289636 := by
    unfold C
    simp [show (104976 * k + 96545) % 2 ≠ 0 by omega]
    omega
  have h22 : C (314928 * k + 289636) = 157464 * k + 144818 := by
    unfold C
    simp [show (314928 * k + 289636) % 2 = 0 by omega]
    omega
  have h23 : C (157464 * k + 144818) = 78732 * k + 72409 := by
    unfold C
    simp [show (157464 * k + 144818) % 2 = 0 by omega]
    omega
  have h24 : C (78732 * k + 72409) = 236196 * k + 217228 := by
    unfold C
    simp [show (78732 * k + 72409) % 2 ≠ 0 by omega]
    omega
  have h25 : C (236196 * k + 217228) = 118098 * k + 108614 := by
    unfold C
    simp [show (236196 * k + 217228) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 108614) = 59049 * k + 54307 := by
    unfold C
    simp [show (118098 * k + 108614) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 60271) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 60271)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_60571 : ∀ k : Nat,
    iterate (65536 * k + 60571) 26 = 59049 * k + 54577 ∧
      59049 * k + 54577 < 65536 * k + 60571 := by
  intro k
  have h1 : C (65536 * k + 60571) = 196608 * k + 181714 := by
    unfold C
    simp [show (65536 * k + 60571) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 181714) = 98304 * k + 90857 := by
    unfold C
    simp [show (196608 * k + 181714) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 90857) = 294912 * k + 272572 := by
    unfold C
    simp [show (98304 * k + 90857) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 272572) = 147456 * k + 136286 := by
    unfold C
    simp [show (294912 * k + 272572) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 136286) = 73728 * k + 68143 := by
    unfold C
    simp [show (147456 * k + 136286) % 2 = 0 by omega]
    omega
  have h6 : C (73728 * k + 68143) = 221184 * k + 204430 := by
    unfold C
    simp [show (73728 * k + 68143) % 2 ≠ 0 by omega]
    omega
  have h7 : C (221184 * k + 204430) = 110592 * k + 102215 := by
    unfold C
    simp [show (221184 * k + 204430) % 2 = 0 by omega]
    omega
  have h8 : C (110592 * k + 102215) = 331776 * k + 306646 := by
    unfold C
    simp [show (110592 * k + 102215) % 2 ≠ 0 by omega]
    omega
  have h9 : C (331776 * k + 306646) = 165888 * k + 153323 := by
    unfold C
    simp [show (331776 * k + 306646) % 2 = 0 by omega]
    omega
  have h10 : C (165888 * k + 153323) = 497664 * k + 459970 := by
    unfold C
    simp [show (165888 * k + 153323) % 2 ≠ 0 by omega]
    omega
  have h11 : C (497664 * k + 459970) = 248832 * k + 229985 := by
    unfold C
    simp [show (497664 * k + 459970) % 2 = 0 by omega]
    omega
  have h12 : C (248832 * k + 229985) = 746496 * k + 689956 := by
    unfold C
    simp [show (248832 * k + 229985) % 2 ≠ 0 by omega]
    omega
  have h13 : C (746496 * k + 689956) = 373248 * k + 344978 := by
    unfold C
    simp [show (746496 * k + 689956) % 2 = 0 by omega]
    omega
  have h14 : C (373248 * k + 344978) = 186624 * k + 172489 := by
    unfold C
    simp [show (373248 * k + 344978) % 2 = 0 by omega]
    omega
  have h15 : C (186624 * k + 172489) = 559872 * k + 517468 := by
    unfold C
    simp [show (186624 * k + 172489) % 2 ≠ 0 by omega]
    omega
  have h16 : C (559872 * k + 517468) = 279936 * k + 258734 := by
    unfold C
    simp [show (559872 * k + 517468) % 2 = 0 by omega]
    omega
  have h17 : C (279936 * k + 258734) = 139968 * k + 129367 := by
    unfold C
    simp [show (279936 * k + 258734) % 2 = 0 by omega]
    omega
  have h18 : C (139968 * k + 129367) = 419904 * k + 388102 := by
    unfold C
    simp [show (139968 * k + 129367) % 2 ≠ 0 by omega]
    omega
  have h19 : C (419904 * k + 388102) = 209952 * k + 194051 := by
    unfold C
    simp [show (419904 * k + 388102) % 2 = 0 by omega]
    omega
  have h20 : C (209952 * k + 194051) = 629856 * k + 582154 := by
    unfold C
    simp [show (209952 * k + 194051) % 2 ≠ 0 by omega]
    omega
  have h21 : C (629856 * k + 582154) = 314928 * k + 291077 := by
    unfold C
    simp [show (629856 * k + 582154) % 2 = 0 by omega]
    omega
  have h22 : C (314928 * k + 291077) = 944784 * k + 873232 := by
    unfold C
    simp [show (314928 * k + 291077) % 2 ≠ 0 by omega]
    omega
  have h23 : C (944784 * k + 873232) = 472392 * k + 436616 := by
    unfold C
    simp [show (944784 * k + 873232) % 2 = 0 by omega]
    omega
  have h24 : C (472392 * k + 436616) = 236196 * k + 218308 := by
    unfold C
    simp [show (472392 * k + 436616) % 2 = 0 by omega]
    omega
  have h25 : C (236196 * k + 218308) = 118098 * k + 109154 := by
    unfold C
    simp [show (236196 * k + 218308) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 109154) = 59049 * k + 54577 := by
    unfold C
    simp [show (118098 * k + 109154) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 60571) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 60571)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_60831 : ∀ k : Nat,
    iterate (65536 * k + 60831) 26 = 59049 * k + 54811 ∧
      59049 * k + 54811 < 65536 * k + 60831 := by
  intro k
  have h1 : C (65536 * k + 60831) = 196608 * k + 182494 := by
    unfold C
    simp [show (65536 * k + 60831) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 182494) = 98304 * k + 91247 := by
    unfold C
    simp [show (196608 * k + 182494) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 91247) = 294912 * k + 273742 := by
    unfold C
    simp [show (98304 * k + 91247) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 273742) = 147456 * k + 136871 := by
    unfold C
    simp [show (294912 * k + 273742) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 136871) = 442368 * k + 410614 := by
    unfold C
    simp [show (147456 * k + 136871) % 2 ≠ 0 by omega]
    omega
  have h6 : C (442368 * k + 410614) = 221184 * k + 205307 := by
    unfold C
    simp [show (442368 * k + 410614) % 2 = 0 by omega]
    omega
  have h7 : C (221184 * k + 205307) = 663552 * k + 615922 := by
    unfold C
    simp [show (221184 * k + 205307) % 2 ≠ 0 by omega]
    omega
  have h8 : C (663552 * k + 615922) = 331776 * k + 307961 := by
    unfold C
    simp [show (663552 * k + 615922) % 2 = 0 by omega]
    omega
  have h9 : C (331776 * k + 307961) = 995328 * k + 923884 := by
    unfold C
    simp [show (331776 * k + 307961) % 2 ≠ 0 by omega]
    omega
  have h10 : C (995328 * k + 923884) = 497664 * k + 461942 := by
    unfold C
    simp [show (995328 * k + 923884) % 2 = 0 by omega]
    omega
  have h11 : C (497664 * k + 461942) = 248832 * k + 230971 := by
    unfold C
    simp [show (497664 * k + 461942) % 2 = 0 by omega]
    omega
  have h12 : C (248832 * k + 230971) = 746496 * k + 692914 := by
    unfold C
    simp [show (248832 * k + 230971) % 2 ≠ 0 by omega]
    omega
  have h13 : C (746496 * k + 692914) = 373248 * k + 346457 := by
    unfold C
    simp [show (746496 * k + 692914) % 2 = 0 by omega]
    omega
  have h14 : C (373248 * k + 346457) = 1119744 * k + 1039372 := by
    unfold C
    simp [show (373248 * k + 346457) % 2 ≠ 0 by omega]
    omega
  have h15 : C (1119744 * k + 1039372) = 559872 * k + 519686 := by
    unfold C
    simp [show (1119744 * k + 1039372) % 2 = 0 by omega]
    omega
  have h16 : C (559872 * k + 519686) = 279936 * k + 259843 := by
    unfold C
    simp [show (559872 * k + 519686) % 2 = 0 by omega]
    omega
  have h17 : C (279936 * k + 259843) = 839808 * k + 779530 := by
    unfold C
    simp [show (279936 * k + 259843) % 2 ≠ 0 by omega]
    omega
  have h18 : C (839808 * k + 779530) = 419904 * k + 389765 := by
    unfold C
    simp [show (839808 * k + 779530) % 2 = 0 by omega]
    omega
  have h19 : C (419904 * k + 389765) = 1259712 * k + 1169296 := by
    unfold C
    simp [show (419904 * k + 389765) % 2 ≠ 0 by omega]
    omega
  have h20 : C (1259712 * k + 1169296) = 629856 * k + 584648 := by
    unfold C
    simp [show (1259712 * k + 1169296) % 2 = 0 by omega]
    omega
  have h21 : C (629856 * k + 584648) = 314928 * k + 292324 := by
    unfold C
    simp [show (629856 * k + 584648) % 2 = 0 by omega]
    omega
  have h22 : C (314928 * k + 292324) = 157464 * k + 146162 := by
    unfold C
    simp [show (314928 * k + 292324) % 2 = 0 by omega]
    omega
  have h23 : C (157464 * k + 146162) = 78732 * k + 73081 := by
    unfold C
    simp [show (157464 * k + 146162) % 2 = 0 by omega]
    omega
  have h24 : C (78732 * k + 73081) = 236196 * k + 219244 := by
    unfold C
    simp [show (78732 * k + 73081) % 2 ≠ 0 by omega]
    omega
  have h25 : C (236196 * k + 219244) = 118098 * k + 109622 := by
    unfold C
    simp [show (236196 * k + 219244) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 109622) = 59049 * k + 54811 := by
    unfold C
    simp [show (118098 * k + 109622) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 60831) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 60831)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_60911 : ∀ k : Nat,
    iterate (65536 * k + 60911) 26 = 59049 * k + 54883 ∧
      59049 * k + 54883 < 65536 * k + 60911 := by
  intro k
  have h1 : C (65536 * k + 60911) = 196608 * k + 182734 := by
    unfold C
    simp [show (65536 * k + 60911) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 182734) = 98304 * k + 91367 := by
    unfold C
    simp [show (196608 * k + 182734) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 91367) = 294912 * k + 274102 := by
    unfold C
    simp [show (98304 * k + 91367) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 274102) = 147456 * k + 137051 := by
    unfold C
    simp [show (294912 * k + 274102) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 137051) = 442368 * k + 411154 := by
    unfold C
    simp [show (147456 * k + 137051) % 2 ≠ 0 by omega]
    omega
  have h6 : C (442368 * k + 411154) = 221184 * k + 205577 := by
    unfold C
    simp [show (442368 * k + 411154) % 2 = 0 by omega]
    omega
  have h7 : C (221184 * k + 205577) = 663552 * k + 616732 := by
    unfold C
    simp [show (221184 * k + 205577) % 2 ≠ 0 by omega]
    omega
  have h8 : C (663552 * k + 616732) = 331776 * k + 308366 := by
    unfold C
    simp [show (663552 * k + 616732) % 2 = 0 by omega]
    omega
  have h9 : C (331776 * k + 308366) = 165888 * k + 154183 := by
    unfold C
    simp [show (331776 * k + 308366) % 2 = 0 by omega]
    omega
  have h10 : C (165888 * k + 154183) = 497664 * k + 462550 := by
    unfold C
    simp [show (165888 * k + 154183) % 2 ≠ 0 by omega]
    omega
  have h11 : C (497664 * k + 462550) = 248832 * k + 231275 := by
    unfold C
    simp [show (497664 * k + 462550) % 2 = 0 by omega]
    omega
  have h12 : C (248832 * k + 231275) = 746496 * k + 693826 := by
    unfold C
    simp [show (248832 * k + 231275) % 2 ≠ 0 by omega]
    omega
  have h13 : C (746496 * k + 693826) = 373248 * k + 346913 := by
    unfold C
    simp [show (746496 * k + 693826) % 2 = 0 by omega]
    omega
  have h14 : C (373248 * k + 346913) = 1119744 * k + 1040740 := by
    unfold C
    simp [show (373248 * k + 346913) % 2 ≠ 0 by omega]
    omega
  have h15 : C (1119744 * k + 1040740) = 559872 * k + 520370 := by
    unfold C
    simp [show (1119744 * k + 1040740) % 2 = 0 by omega]
    omega
  have h16 : C (559872 * k + 520370) = 279936 * k + 260185 := by
    unfold C
    simp [show (559872 * k + 520370) % 2 = 0 by omega]
    omega
  have h17 : C (279936 * k + 260185) = 839808 * k + 780556 := by
    unfold C
    simp [show (279936 * k + 260185) % 2 ≠ 0 by omega]
    omega
  have h18 : C (839808 * k + 780556) = 419904 * k + 390278 := by
    unfold C
    simp [show (839808 * k + 780556) % 2 = 0 by omega]
    omega
  have h19 : C (419904 * k + 390278) = 209952 * k + 195139 := by
    unfold C
    simp [show (419904 * k + 390278) % 2 = 0 by omega]
    omega
  have h20 : C (209952 * k + 195139) = 629856 * k + 585418 := by
    unfold C
    simp [show (209952 * k + 195139) % 2 ≠ 0 by omega]
    omega
  have h21 : C (629856 * k + 585418) = 314928 * k + 292709 := by
    unfold C
    simp [show (629856 * k + 585418) % 2 = 0 by omega]
    omega
  have h22 : C (314928 * k + 292709) = 944784 * k + 878128 := by
    unfold C
    simp [show (314928 * k + 292709) % 2 ≠ 0 by omega]
    omega
  have h23 : C (944784 * k + 878128) = 472392 * k + 439064 := by
    unfold C
    simp [show (944784 * k + 878128) % 2 = 0 by omega]
    omega
  have h24 : C (472392 * k + 439064) = 236196 * k + 219532 := by
    unfold C
    simp [show (472392 * k + 439064) % 2 = 0 by omega]
    omega
  have h25 : C (236196 * k + 219532) = 118098 * k + 109766 := by
    unfold C
    simp [show (236196 * k + 219532) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 109766) = 59049 * k + 54883 := by
    unfold C
    simp [show (118098 * k + 109766) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 60911) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 60911)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

end CollatzM16ShardV
