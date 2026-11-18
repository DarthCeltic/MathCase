import Mathlib.Data.Nat.Prime.Basic

namespace CollatzM16ShardN

def C (n : Nat) : Nat := if n % 2 = 0 then n / 2 else 3 * n + 1

def iterate (n t : Nat) : Nat := Nat.rec n (fun _ previous => C previous) t

theorem descent_mod65536_36159 : ∀ k : Nat,
    iterate (65536 * k + 36159) 26 = 59049 * k + 32581 ∧
      59049 * k + 32581 < 65536 * k + 36159 := by
  intro k
  have h1 : C (65536 * k + 36159) = 196608 * k + 108478 := by
    unfold C
    simp [show (65536 * k + 36159) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 108478) = 98304 * k + 54239 := by
    unfold C
    simp [show (196608 * k + 108478) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 54239) = 294912 * k + 162718 := by
    unfold C
    simp [show (98304 * k + 54239) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 162718) = 147456 * k + 81359 := by
    unfold C
    simp [show (294912 * k + 162718) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 81359) = 442368 * k + 244078 := by
    unfold C
    simp [show (147456 * k + 81359) % 2 ≠ 0 by omega]
    omega
  have h6 : C (442368 * k + 244078) = 221184 * k + 122039 := by
    unfold C
    simp [show (442368 * k + 244078) % 2 = 0 by omega]
    omega
  have h7 : C (221184 * k + 122039) = 663552 * k + 366118 := by
    unfold C
    simp [show (221184 * k + 122039) % 2 ≠ 0 by omega]
    omega
  have h8 : C (663552 * k + 366118) = 331776 * k + 183059 := by
    unfold C
    simp [show (663552 * k + 366118) % 2 = 0 by omega]
    omega
  have h9 : C (331776 * k + 183059) = 995328 * k + 549178 := by
    unfold C
    simp [show (331776 * k + 183059) % 2 ≠ 0 by omega]
    omega
  have h10 : C (995328 * k + 549178) = 497664 * k + 274589 := by
    unfold C
    simp [show (995328 * k + 549178) % 2 = 0 by omega]
    omega
  have h11 : C (497664 * k + 274589) = 1492992 * k + 823768 := by
    unfold C
    simp [show (497664 * k + 274589) % 2 ≠ 0 by omega]
    omega
  have h12 : C (1492992 * k + 823768) = 746496 * k + 411884 := by
    unfold C
    simp [show (1492992 * k + 823768) % 2 = 0 by omega]
    omega
  have h13 : C (746496 * k + 411884) = 373248 * k + 205942 := by
    unfold C
    simp [show (746496 * k + 411884) % 2 = 0 by omega]
    omega
  have h14 : C (373248 * k + 205942) = 186624 * k + 102971 := by
    unfold C
    simp [show (373248 * k + 205942) % 2 = 0 by omega]
    omega
  have h15 : C (186624 * k + 102971) = 559872 * k + 308914 := by
    unfold C
    simp [show (186624 * k + 102971) % 2 ≠ 0 by omega]
    omega
  have h16 : C (559872 * k + 308914) = 279936 * k + 154457 := by
    unfold C
    simp [show (559872 * k + 308914) % 2 = 0 by omega]
    omega
  have h17 : C (279936 * k + 154457) = 839808 * k + 463372 := by
    unfold C
    simp [show (279936 * k + 154457) % 2 ≠ 0 by omega]
    omega
  have h18 : C (839808 * k + 463372) = 419904 * k + 231686 := by
    unfold C
    simp [show (839808 * k + 463372) % 2 = 0 by omega]
    omega
  have h19 : C (419904 * k + 231686) = 209952 * k + 115843 := by
    unfold C
    simp [show (419904 * k + 231686) % 2 = 0 by omega]
    omega
  have h20 : C (209952 * k + 115843) = 629856 * k + 347530 := by
    unfold C
    simp [show (209952 * k + 115843) % 2 ≠ 0 by omega]
    omega
  have h21 : C (629856 * k + 347530) = 314928 * k + 173765 := by
    unfold C
    simp [show (629856 * k + 347530) % 2 = 0 by omega]
    omega
  have h22 : C (314928 * k + 173765) = 944784 * k + 521296 := by
    unfold C
    simp [show (314928 * k + 173765) % 2 ≠ 0 by omega]
    omega
  have h23 : C (944784 * k + 521296) = 472392 * k + 260648 := by
    unfold C
    simp [show (944784 * k + 521296) % 2 = 0 by omega]
    omega
  have h24 : C (472392 * k + 260648) = 236196 * k + 130324 := by
    unfold C
    simp [show (472392 * k + 260648) % 2 = 0 by omega]
    omega
  have h25 : C (236196 * k + 130324) = 118098 * k + 65162 := by
    unfold C
    simp [show (236196 * k + 130324) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 65162) = 59049 * k + 32581 := by
    unfold C
    simp [show (118098 * k + 65162) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 36159) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 36159)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_36383 : ∀ k : Nat,
    iterate (65536 * k + 36383) 26 = 59049 * k + 32783 ∧
      59049 * k + 32783 < 65536 * k + 36383 := by
  intro k
  have h1 : C (65536 * k + 36383) = 196608 * k + 109150 := by
    unfold C
    simp [show (65536 * k + 36383) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 109150) = 98304 * k + 54575 := by
    unfold C
    simp [show (196608 * k + 109150) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 54575) = 294912 * k + 163726 := by
    unfold C
    simp [show (98304 * k + 54575) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 163726) = 147456 * k + 81863 := by
    unfold C
    simp [show (294912 * k + 163726) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 81863) = 442368 * k + 245590 := by
    unfold C
    simp [show (147456 * k + 81863) % 2 ≠ 0 by omega]
    omega
  have h6 : C (442368 * k + 245590) = 221184 * k + 122795 := by
    unfold C
    simp [show (442368 * k + 245590) % 2 = 0 by omega]
    omega
  have h7 : C (221184 * k + 122795) = 663552 * k + 368386 := by
    unfold C
    simp [show (221184 * k + 122795) % 2 ≠ 0 by omega]
    omega
  have h8 : C (663552 * k + 368386) = 331776 * k + 184193 := by
    unfold C
    simp [show (663552 * k + 368386) % 2 = 0 by omega]
    omega
  have h9 : C (331776 * k + 184193) = 995328 * k + 552580 := by
    unfold C
    simp [show (331776 * k + 184193) % 2 ≠ 0 by omega]
    omega
  have h10 : C (995328 * k + 552580) = 497664 * k + 276290 := by
    unfold C
    simp [show (995328 * k + 552580) % 2 = 0 by omega]
    omega
  have h11 : C (497664 * k + 276290) = 248832 * k + 138145 := by
    unfold C
    simp [show (497664 * k + 276290) % 2 = 0 by omega]
    omega
  have h12 : C (248832 * k + 138145) = 746496 * k + 414436 := by
    unfold C
    simp [show (248832 * k + 138145) % 2 ≠ 0 by omega]
    omega
  have h13 : C (746496 * k + 414436) = 373248 * k + 207218 := by
    unfold C
    simp [show (746496 * k + 414436) % 2 = 0 by omega]
    omega
  have h14 : C (373248 * k + 207218) = 186624 * k + 103609 := by
    unfold C
    simp [show (373248 * k + 207218) % 2 = 0 by omega]
    omega
  have h15 : C (186624 * k + 103609) = 559872 * k + 310828 := by
    unfold C
    simp [show (186624 * k + 103609) % 2 ≠ 0 by omega]
    omega
  have h16 : C (559872 * k + 310828) = 279936 * k + 155414 := by
    unfold C
    simp [show (559872 * k + 310828) % 2 = 0 by omega]
    omega
  have h17 : C (279936 * k + 155414) = 139968 * k + 77707 := by
    unfold C
    simp [show (279936 * k + 155414) % 2 = 0 by omega]
    omega
  have h18 : C (139968 * k + 77707) = 419904 * k + 233122 := by
    unfold C
    simp [show (139968 * k + 77707) % 2 ≠ 0 by omega]
    omega
  have h19 : C (419904 * k + 233122) = 209952 * k + 116561 := by
    unfold C
    simp [show (419904 * k + 233122) % 2 = 0 by omega]
    omega
  have h20 : C (209952 * k + 116561) = 629856 * k + 349684 := by
    unfold C
    simp [show (209952 * k + 116561) % 2 ≠ 0 by omega]
    omega
  have h21 : C (629856 * k + 349684) = 314928 * k + 174842 := by
    unfold C
    simp [show (629856 * k + 349684) % 2 = 0 by omega]
    omega
  have h22 : C (314928 * k + 174842) = 157464 * k + 87421 := by
    unfold C
    simp [show (314928 * k + 174842) % 2 = 0 by omega]
    omega
  have h23 : C (157464 * k + 87421) = 472392 * k + 262264 := by
    unfold C
    simp [show (157464 * k + 87421) % 2 ≠ 0 by omega]
    omega
  have h24 : C (472392 * k + 262264) = 236196 * k + 131132 := by
    unfold C
    simp [show (472392 * k + 262264) % 2 = 0 by omega]
    omega
  have h25 : C (236196 * k + 131132) = 118098 * k + 65566 := by
    unfold C
    simp [show (236196 * k + 131132) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 65566) = 59049 * k + 32783 := by
    unfold C
    simp [show (118098 * k + 65566) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 36383) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 36383)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_36519 : ∀ k : Nat,
    iterate (65536 * k + 36519) 26 = 59049 * k + 32906 ∧
      59049 * k + 32906 < 65536 * k + 36519 := by
  intro k
  have h1 : C (65536 * k + 36519) = 196608 * k + 109558 := by
    unfold C
    simp [show (65536 * k + 36519) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 109558) = 98304 * k + 54779 := by
    unfold C
    simp [show (196608 * k + 109558) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 54779) = 294912 * k + 164338 := by
    unfold C
    simp [show (98304 * k + 54779) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 164338) = 147456 * k + 82169 := by
    unfold C
    simp [show (294912 * k + 164338) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 82169) = 442368 * k + 246508 := by
    unfold C
    simp [show (147456 * k + 82169) % 2 ≠ 0 by omega]
    omega
  have h6 : C (442368 * k + 246508) = 221184 * k + 123254 := by
    unfold C
    simp [show (442368 * k + 246508) % 2 = 0 by omega]
    omega
  have h7 : C (221184 * k + 123254) = 110592 * k + 61627 := by
    unfold C
    simp [show (221184 * k + 123254) % 2 = 0 by omega]
    omega
  have h8 : C (110592 * k + 61627) = 331776 * k + 184882 := by
    unfold C
    simp [show (110592 * k + 61627) % 2 ≠ 0 by omega]
    omega
  have h9 : C (331776 * k + 184882) = 165888 * k + 92441 := by
    unfold C
    simp [show (331776 * k + 184882) % 2 = 0 by omega]
    omega
  have h10 : C (165888 * k + 92441) = 497664 * k + 277324 := by
    unfold C
    simp [show (165888 * k + 92441) % 2 ≠ 0 by omega]
    omega
  have h11 : C (497664 * k + 277324) = 248832 * k + 138662 := by
    unfold C
    simp [show (497664 * k + 277324) % 2 = 0 by omega]
    omega
  have h12 : C (248832 * k + 138662) = 124416 * k + 69331 := by
    unfold C
    simp [show (248832 * k + 138662) % 2 = 0 by omega]
    omega
  have h13 : C (124416 * k + 69331) = 373248 * k + 207994 := by
    unfold C
    simp [show (124416 * k + 69331) % 2 ≠ 0 by omega]
    omega
  have h14 : C (373248 * k + 207994) = 186624 * k + 103997 := by
    unfold C
    simp [show (373248 * k + 207994) % 2 = 0 by omega]
    omega
  have h15 : C (186624 * k + 103997) = 559872 * k + 311992 := by
    unfold C
    simp [show (186624 * k + 103997) % 2 ≠ 0 by omega]
    omega
  have h16 : C (559872 * k + 311992) = 279936 * k + 155996 := by
    unfold C
    simp [show (559872 * k + 311992) % 2 = 0 by omega]
    omega
  have h17 : C (279936 * k + 155996) = 139968 * k + 77998 := by
    unfold C
    simp [show (279936 * k + 155996) % 2 = 0 by omega]
    omega
  have h18 : C (139968 * k + 77998) = 69984 * k + 38999 := by
    unfold C
    simp [show (139968 * k + 77998) % 2 = 0 by omega]
    omega
  have h19 : C (69984 * k + 38999) = 209952 * k + 116998 := by
    unfold C
    simp [show (69984 * k + 38999) % 2 ≠ 0 by omega]
    omega
  have h20 : C (209952 * k + 116998) = 104976 * k + 58499 := by
    unfold C
    simp [show (209952 * k + 116998) % 2 = 0 by omega]
    omega
  have h21 : C (104976 * k + 58499) = 314928 * k + 175498 := by
    unfold C
    simp [show (104976 * k + 58499) % 2 ≠ 0 by omega]
    omega
  have h22 : C (314928 * k + 175498) = 157464 * k + 87749 := by
    unfold C
    simp [show (314928 * k + 175498) % 2 = 0 by omega]
    omega
  have h23 : C (157464 * k + 87749) = 472392 * k + 263248 := by
    unfold C
    simp [show (157464 * k + 87749) % 2 ≠ 0 by omega]
    omega
  have h24 : C (472392 * k + 263248) = 236196 * k + 131624 := by
    unfold C
    simp [show (472392 * k + 263248) % 2 = 0 by omega]
    omega
  have h25 : C (236196 * k + 131624) = 118098 * k + 65812 := by
    unfold C
    simp [show (236196 * k + 131624) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 65812) = 59049 * k + 32906 := by
    unfold C
    simp [show (118098 * k + 65812) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 36519) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 36519)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_36543 : ∀ k : Nat,
    iterate (65536 * k + 36543) 26 = 59049 * k + 32927 ∧
      59049 * k + 32927 < 65536 * k + 36543 := by
  intro k
  have h1 : C (65536 * k + 36543) = 196608 * k + 109630 := by
    unfold C
    simp [show (65536 * k + 36543) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 109630) = 98304 * k + 54815 := by
    unfold C
    simp [show (196608 * k + 109630) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 54815) = 294912 * k + 164446 := by
    unfold C
    simp [show (98304 * k + 54815) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 164446) = 147456 * k + 82223 := by
    unfold C
    simp [show (294912 * k + 164446) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 82223) = 442368 * k + 246670 := by
    unfold C
    simp [show (147456 * k + 82223) % 2 ≠ 0 by omega]
    omega
  have h6 : C (442368 * k + 246670) = 221184 * k + 123335 := by
    unfold C
    simp [show (442368 * k + 246670) % 2 = 0 by omega]
    omega
  have h7 : C (221184 * k + 123335) = 663552 * k + 370006 := by
    unfold C
    simp [show (221184 * k + 123335) % 2 ≠ 0 by omega]
    omega
  have h8 : C (663552 * k + 370006) = 331776 * k + 185003 := by
    unfold C
    simp [show (663552 * k + 370006) % 2 = 0 by omega]
    omega
  have h9 : C (331776 * k + 185003) = 995328 * k + 555010 := by
    unfold C
    simp [show (331776 * k + 185003) % 2 ≠ 0 by omega]
    omega
  have h10 : C (995328 * k + 555010) = 497664 * k + 277505 := by
    unfold C
    simp [show (995328 * k + 555010) % 2 = 0 by omega]
    omega
  have h11 : C (497664 * k + 277505) = 1492992 * k + 832516 := by
    unfold C
    simp [show (497664 * k + 277505) % 2 ≠ 0 by omega]
    omega
  have h12 : C (1492992 * k + 832516) = 746496 * k + 416258 := by
    unfold C
    simp [show (1492992 * k + 832516) % 2 = 0 by omega]
    omega
  have h13 : C (746496 * k + 416258) = 373248 * k + 208129 := by
    unfold C
    simp [show (746496 * k + 416258) % 2 = 0 by omega]
    omega
  have h14 : C (373248 * k + 208129) = 1119744 * k + 624388 := by
    unfold C
    simp [show (373248 * k + 208129) % 2 ≠ 0 by omega]
    omega
  have h15 : C (1119744 * k + 624388) = 559872 * k + 312194 := by
    unfold C
    simp [show (1119744 * k + 624388) % 2 = 0 by omega]
    omega
  have h16 : C (559872 * k + 312194) = 279936 * k + 156097 := by
    unfold C
    simp [show (559872 * k + 312194) % 2 = 0 by omega]
    omega
  have h17 : C (279936 * k + 156097) = 839808 * k + 468292 := by
    unfold C
    simp [show (279936 * k + 156097) % 2 ≠ 0 by omega]
    omega
  have h18 : C (839808 * k + 468292) = 419904 * k + 234146 := by
    unfold C
    simp [show (839808 * k + 468292) % 2 = 0 by omega]
    omega
  have h19 : C (419904 * k + 234146) = 209952 * k + 117073 := by
    unfold C
    simp [show (419904 * k + 234146) % 2 = 0 by omega]
    omega
  have h20 : C (209952 * k + 117073) = 629856 * k + 351220 := by
    unfold C
    simp [show (209952 * k + 117073) % 2 ≠ 0 by omega]
    omega
  have h21 : C (629856 * k + 351220) = 314928 * k + 175610 := by
    unfold C
    simp [show (629856 * k + 351220) % 2 = 0 by omega]
    omega
  have h22 : C (314928 * k + 175610) = 157464 * k + 87805 := by
    unfold C
    simp [show (314928 * k + 175610) % 2 = 0 by omega]
    omega
  have h23 : C (157464 * k + 87805) = 472392 * k + 263416 := by
    unfold C
    simp [show (157464 * k + 87805) % 2 ≠ 0 by omega]
    omega
  have h24 : C (472392 * k + 263416) = 236196 * k + 131708 := by
    unfold C
    simp [show (472392 * k + 263416) % 2 = 0 by omega]
    omega
  have h25 : C (236196 * k + 131708) = 118098 * k + 65854 := by
    unfold C
    simp [show (236196 * k + 131708) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 65854) = 59049 * k + 32927 := by
    unfold C
    simp [show (118098 * k + 65854) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 36543) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 36543)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_36635 : ∀ k : Nat,
    iterate (65536 * k + 36635) 26 = 59049 * k + 33010 ∧
      59049 * k + 33010 < 65536 * k + 36635 := by
  intro k
  have h1 : C (65536 * k + 36635) = 196608 * k + 109906 := by
    unfold C
    simp [show (65536 * k + 36635) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 109906) = 98304 * k + 54953 := by
    unfold C
    simp [show (196608 * k + 109906) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 54953) = 294912 * k + 164860 := by
    unfold C
    simp [show (98304 * k + 54953) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 164860) = 147456 * k + 82430 := by
    unfold C
    simp [show (294912 * k + 164860) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 82430) = 73728 * k + 41215 := by
    unfold C
    simp [show (147456 * k + 82430) % 2 = 0 by omega]
    omega
  have h6 : C (73728 * k + 41215) = 221184 * k + 123646 := by
    unfold C
    simp [show (73728 * k + 41215) % 2 ≠ 0 by omega]
    omega
  have h7 : C (221184 * k + 123646) = 110592 * k + 61823 := by
    unfold C
    simp [show (221184 * k + 123646) % 2 = 0 by omega]
    omega
  have h8 : C (110592 * k + 61823) = 331776 * k + 185470 := by
    unfold C
    simp [show (110592 * k + 61823) % 2 ≠ 0 by omega]
    omega
  have h9 : C (331776 * k + 185470) = 165888 * k + 92735 := by
    unfold C
    simp [show (331776 * k + 185470) % 2 = 0 by omega]
    omega
  have h10 : C (165888 * k + 92735) = 497664 * k + 278206 := by
    unfold C
    simp [show (165888 * k + 92735) % 2 ≠ 0 by omega]
    omega
  have h11 : C (497664 * k + 278206) = 248832 * k + 139103 := by
    unfold C
    simp [show (497664 * k + 278206) % 2 = 0 by omega]
    omega
  have h12 : C (248832 * k + 139103) = 746496 * k + 417310 := by
    unfold C
    simp [show (248832 * k + 139103) % 2 ≠ 0 by omega]
    omega
  have h13 : C (746496 * k + 417310) = 373248 * k + 208655 := by
    unfold C
    simp [show (746496 * k + 417310) % 2 = 0 by omega]
    omega
  have h14 : C (373248 * k + 208655) = 1119744 * k + 625966 := by
    unfold C
    simp [show (373248 * k + 208655) % 2 ≠ 0 by omega]
    omega
  have h15 : C (1119744 * k + 625966) = 559872 * k + 312983 := by
    unfold C
    simp [show (1119744 * k + 625966) % 2 = 0 by omega]
    omega
  have h16 : C (559872 * k + 312983) = 1679616 * k + 938950 := by
    unfold C
    simp [show (559872 * k + 312983) % 2 ≠ 0 by omega]
    omega
  have h17 : C (1679616 * k + 938950) = 839808 * k + 469475 := by
    unfold C
    simp [show (1679616 * k + 938950) % 2 = 0 by omega]
    omega
  have h18 : C (839808 * k + 469475) = 2519424 * k + 1408426 := by
    unfold C
    simp [show (839808 * k + 469475) % 2 ≠ 0 by omega]
    omega
  have h19 : C (2519424 * k + 1408426) = 1259712 * k + 704213 := by
    unfold C
    simp [show (2519424 * k + 1408426) % 2 = 0 by omega]
    omega
  have h20 : C (1259712 * k + 704213) = 3779136 * k + 2112640 := by
    unfold C
    simp [show (1259712 * k + 704213) % 2 ≠ 0 by omega]
    omega
  have h21 : C (3779136 * k + 2112640) = 1889568 * k + 1056320 := by
    unfold C
    simp [show (3779136 * k + 2112640) % 2 = 0 by omega]
    omega
  have h22 : C (1889568 * k + 1056320) = 944784 * k + 528160 := by
    unfold C
    simp [show (1889568 * k + 1056320) % 2 = 0 by omega]
    omega
  have h23 : C (944784 * k + 528160) = 472392 * k + 264080 := by
    unfold C
    simp [show (944784 * k + 528160) % 2 = 0 by omega]
    omega
  have h24 : C (472392 * k + 264080) = 236196 * k + 132040 := by
    unfold C
    simp [show (472392 * k + 264080) % 2 = 0 by omega]
    omega
  have h25 : C (236196 * k + 132040) = 118098 * k + 66020 := by
    unfold C
    simp [show (236196 * k + 132040) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 66020) = 59049 * k + 33010 := by
    unfold C
    simp [show (118098 * k + 66020) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 36635) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 36635)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_36639 : ∀ k : Nat,
    iterate (65536 * k + 36639) 26 = 59049 * k + 33014 ∧
      59049 * k + 33014 < 65536 * k + 36639 := by
  intro k
  have h1 : C (65536 * k + 36639) = 196608 * k + 109918 := by
    unfold C
    simp [show (65536 * k + 36639) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 109918) = 98304 * k + 54959 := by
    unfold C
    simp [show (196608 * k + 109918) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 54959) = 294912 * k + 164878 := by
    unfold C
    simp [show (98304 * k + 54959) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 164878) = 147456 * k + 82439 := by
    unfold C
    simp [show (294912 * k + 164878) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 82439) = 442368 * k + 247318 := by
    unfold C
    simp [show (147456 * k + 82439) % 2 ≠ 0 by omega]
    omega
  have h6 : C (442368 * k + 247318) = 221184 * k + 123659 := by
    unfold C
    simp [show (442368 * k + 247318) % 2 = 0 by omega]
    omega
  have h7 : C (221184 * k + 123659) = 663552 * k + 370978 := by
    unfold C
    simp [show (221184 * k + 123659) % 2 ≠ 0 by omega]
    omega
  have h8 : C (663552 * k + 370978) = 331776 * k + 185489 := by
    unfold C
    simp [show (663552 * k + 370978) % 2 = 0 by omega]
    omega
  have h9 : C (331776 * k + 185489) = 995328 * k + 556468 := by
    unfold C
    simp [show (331776 * k + 185489) % 2 ≠ 0 by omega]
    omega
  have h10 : C (995328 * k + 556468) = 497664 * k + 278234 := by
    unfold C
    simp [show (995328 * k + 556468) % 2 = 0 by omega]
    omega
  have h11 : C (497664 * k + 278234) = 248832 * k + 139117 := by
    unfold C
    simp [show (497664 * k + 278234) % 2 = 0 by omega]
    omega
  have h12 : C (248832 * k + 139117) = 746496 * k + 417352 := by
    unfold C
    simp [show (248832 * k + 139117) % 2 ≠ 0 by omega]
    omega
  have h13 : C (746496 * k + 417352) = 373248 * k + 208676 := by
    unfold C
    simp [show (746496 * k + 417352) % 2 = 0 by omega]
    omega
  have h14 : C (373248 * k + 208676) = 186624 * k + 104338 := by
    unfold C
    simp [show (373248 * k + 208676) % 2 = 0 by omega]
    omega
  have h15 : C (186624 * k + 104338) = 93312 * k + 52169 := by
    unfold C
    simp [show (186624 * k + 104338) % 2 = 0 by omega]
    omega
  have h16 : C (93312 * k + 52169) = 279936 * k + 156508 := by
    unfold C
    simp [show (93312 * k + 52169) % 2 ≠ 0 by omega]
    omega
  have h17 : C (279936 * k + 156508) = 139968 * k + 78254 := by
    unfold C
    simp [show (279936 * k + 156508) % 2 = 0 by omega]
    omega
  have h18 : C (139968 * k + 78254) = 69984 * k + 39127 := by
    unfold C
    simp [show (139968 * k + 78254) % 2 = 0 by omega]
    omega
  have h19 : C (69984 * k + 39127) = 209952 * k + 117382 := by
    unfold C
    simp [show (69984 * k + 39127) % 2 ≠ 0 by omega]
    omega
  have h20 : C (209952 * k + 117382) = 104976 * k + 58691 := by
    unfold C
    simp [show (209952 * k + 117382) % 2 = 0 by omega]
    omega
  have h21 : C (104976 * k + 58691) = 314928 * k + 176074 := by
    unfold C
    simp [show (104976 * k + 58691) % 2 ≠ 0 by omega]
    omega
  have h22 : C (314928 * k + 176074) = 157464 * k + 88037 := by
    unfold C
    simp [show (314928 * k + 176074) % 2 = 0 by omega]
    omega
  have h23 : C (157464 * k + 88037) = 472392 * k + 264112 := by
    unfold C
    simp [show (157464 * k + 88037) % 2 ≠ 0 by omega]
    omega
  have h24 : C (472392 * k + 264112) = 236196 * k + 132056 := by
    unfold C
    simp [show (472392 * k + 264112) % 2 = 0 by omega]
    omega
  have h25 : C (236196 * k + 132056) = 118098 * k + 66028 := by
    unfold C
    simp [show (236196 * k + 132056) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 66028) = 59049 * k + 33014 := by
    unfold C
    simp [show (118098 * k + 66028) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 36639) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 36639)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_36719 : ∀ k : Nat,
    iterate (65536 * k + 36719) 26 = 59049 * k + 33086 ∧
      59049 * k + 33086 < 65536 * k + 36719 := by
  intro k
  have h1 : C (65536 * k + 36719) = 196608 * k + 110158 := by
    unfold C
    simp [show (65536 * k + 36719) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 110158) = 98304 * k + 55079 := by
    unfold C
    simp [show (196608 * k + 110158) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 55079) = 294912 * k + 165238 := by
    unfold C
    simp [show (98304 * k + 55079) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 165238) = 147456 * k + 82619 := by
    unfold C
    simp [show (294912 * k + 165238) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 82619) = 442368 * k + 247858 := by
    unfold C
    simp [show (147456 * k + 82619) % 2 ≠ 0 by omega]
    omega
  have h6 : C (442368 * k + 247858) = 221184 * k + 123929 := by
    unfold C
    simp [show (442368 * k + 247858) % 2 = 0 by omega]
    omega
  have h7 : C (221184 * k + 123929) = 663552 * k + 371788 := by
    unfold C
    simp [show (221184 * k + 123929) % 2 ≠ 0 by omega]
    omega
  have h8 : C (663552 * k + 371788) = 331776 * k + 185894 := by
    unfold C
    simp [show (663552 * k + 371788) % 2 = 0 by omega]
    omega
  have h9 : C (331776 * k + 185894) = 165888 * k + 92947 := by
    unfold C
    simp [show (331776 * k + 185894) % 2 = 0 by omega]
    omega
  have h10 : C (165888 * k + 92947) = 497664 * k + 278842 := by
    unfold C
    simp [show (165888 * k + 92947) % 2 ≠ 0 by omega]
    omega
  have h11 : C (497664 * k + 278842) = 248832 * k + 139421 := by
    unfold C
    simp [show (497664 * k + 278842) % 2 = 0 by omega]
    omega
  have h12 : C (248832 * k + 139421) = 746496 * k + 418264 := by
    unfold C
    simp [show (248832 * k + 139421) % 2 ≠ 0 by omega]
    omega
  have h13 : C (746496 * k + 418264) = 373248 * k + 209132 := by
    unfold C
    simp [show (746496 * k + 418264) % 2 = 0 by omega]
    omega
  have h14 : C (373248 * k + 209132) = 186624 * k + 104566 := by
    unfold C
    simp [show (373248 * k + 209132) % 2 = 0 by omega]
    omega
  have h15 : C (186624 * k + 104566) = 93312 * k + 52283 := by
    unfold C
    simp [show (186624 * k + 104566) % 2 = 0 by omega]
    omega
  have h16 : C (93312 * k + 52283) = 279936 * k + 156850 := by
    unfold C
    simp [show (93312 * k + 52283) % 2 ≠ 0 by omega]
    omega
  have h17 : C (279936 * k + 156850) = 139968 * k + 78425 := by
    unfold C
    simp [show (279936 * k + 156850) % 2 = 0 by omega]
    omega
  have h18 : C (139968 * k + 78425) = 419904 * k + 235276 := by
    unfold C
    simp [show (139968 * k + 78425) % 2 ≠ 0 by omega]
    omega
  have h19 : C (419904 * k + 235276) = 209952 * k + 117638 := by
    unfold C
    simp [show (419904 * k + 235276) % 2 = 0 by omega]
    omega
  have h20 : C (209952 * k + 117638) = 104976 * k + 58819 := by
    unfold C
    simp [show (209952 * k + 117638) % 2 = 0 by omega]
    omega
  have h21 : C (104976 * k + 58819) = 314928 * k + 176458 := by
    unfold C
    simp [show (104976 * k + 58819) % 2 ≠ 0 by omega]
    omega
  have h22 : C (314928 * k + 176458) = 157464 * k + 88229 := by
    unfold C
    simp [show (314928 * k + 176458) % 2 = 0 by omega]
    omega
  have h23 : C (157464 * k + 88229) = 472392 * k + 264688 := by
    unfold C
    simp [show (157464 * k + 88229) % 2 ≠ 0 by omega]
    omega
  have h24 : C (472392 * k + 264688) = 236196 * k + 132344 := by
    unfold C
    simp [show (472392 * k + 264688) % 2 = 0 by omega]
    omega
  have h25 : C (236196 * k + 132344) = 118098 * k + 66172 := by
    unfold C
    simp [show (236196 * k + 132344) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 66172) = 59049 * k + 33086 := by
    unfold C
    simp [show (118098 * k + 66172) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 36719) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 36719)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_36891 : ∀ k : Nat,
    iterate (65536 * k + 36891) 26 = 59049 * k + 33241 ∧
      59049 * k + 33241 < 65536 * k + 36891 := by
  intro k
  have h1 : C (65536 * k + 36891) = 196608 * k + 110674 := by
    unfold C
    simp [show (65536 * k + 36891) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 110674) = 98304 * k + 55337 := by
    unfold C
    simp [show (196608 * k + 110674) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 55337) = 294912 * k + 166012 := by
    unfold C
    simp [show (98304 * k + 55337) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 166012) = 147456 * k + 83006 := by
    unfold C
    simp [show (294912 * k + 166012) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 83006) = 73728 * k + 41503 := by
    unfold C
    simp [show (147456 * k + 83006) % 2 = 0 by omega]
    omega
  have h6 : C (73728 * k + 41503) = 221184 * k + 124510 := by
    unfold C
    simp [show (73728 * k + 41503) % 2 ≠ 0 by omega]
    omega
  have h7 : C (221184 * k + 124510) = 110592 * k + 62255 := by
    unfold C
    simp [show (221184 * k + 124510) % 2 = 0 by omega]
    omega
  have h8 : C (110592 * k + 62255) = 331776 * k + 186766 := by
    unfold C
    simp [show (110592 * k + 62255) % 2 ≠ 0 by omega]
    omega
  have h9 : C (331776 * k + 186766) = 165888 * k + 93383 := by
    unfold C
    simp [show (331776 * k + 186766) % 2 = 0 by omega]
    omega
  have h10 : C (165888 * k + 93383) = 497664 * k + 280150 := by
    unfold C
    simp [show (165888 * k + 93383) % 2 ≠ 0 by omega]
    omega
  have h11 : C (497664 * k + 280150) = 248832 * k + 140075 := by
    unfold C
    simp [show (497664 * k + 280150) % 2 = 0 by omega]
    omega
  have h12 : C (248832 * k + 140075) = 746496 * k + 420226 := by
    unfold C
    simp [show (248832 * k + 140075) % 2 ≠ 0 by omega]
    omega
  have h13 : C (746496 * k + 420226) = 373248 * k + 210113 := by
    unfold C
    simp [show (746496 * k + 420226) % 2 = 0 by omega]
    omega
  have h14 : C (373248 * k + 210113) = 1119744 * k + 630340 := by
    unfold C
    simp [show (373248 * k + 210113) % 2 ≠ 0 by omega]
    omega
  have h15 : C (1119744 * k + 630340) = 559872 * k + 315170 := by
    unfold C
    simp [show (1119744 * k + 630340) % 2 = 0 by omega]
    omega
  have h16 : C (559872 * k + 315170) = 279936 * k + 157585 := by
    unfold C
    simp [show (559872 * k + 315170) % 2 = 0 by omega]
    omega
  have h17 : C (279936 * k + 157585) = 839808 * k + 472756 := by
    unfold C
    simp [show (279936 * k + 157585) % 2 ≠ 0 by omega]
    omega
  have h18 : C (839808 * k + 472756) = 419904 * k + 236378 := by
    unfold C
    simp [show (839808 * k + 472756) % 2 = 0 by omega]
    omega
  have h19 : C (419904 * k + 236378) = 209952 * k + 118189 := by
    unfold C
    simp [show (419904 * k + 236378) % 2 = 0 by omega]
    omega
  have h20 : C (209952 * k + 118189) = 629856 * k + 354568 := by
    unfold C
    simp [show (209952 * k + 118189) % 2 ≠ 0 by omega]
    omega
  have h21 : C (629856 * k + 354568) = 314928 * k + 177284 := by
    unfold C
    simp [show (629856 * k + 354568) % 2 = 0 by omega]
    omega
  have h22 : C (314928 * k + 177284) = 157464 * k + 88642 := by
    unfold C
    simp [show (314928 * k + 177284) % 2 = 0 by omega]
    omega
  have h23 : C (157464 * k + 88642) = 78732 * k + 44321 := by
    unfold C
    simp [show (157464 * k + 88642) % 2 = 0 by omega]
    omega
  have h24 : C (78732 * k + 44321) = 236196 * k + 132964 := by
    unfold C
    simp [show (78732 * k + 44321) % 2 ≠ 0 by omega]
    omega
  have h25 : C (236196 * k + 132964) = 118098 * k + 66482 := by
    unfold C
    simp [show (236196 * k + 132964) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 66482) = 59049 * k + 33241 := by
    unfold C
    simp [show (118098 * k + 66482) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 36891) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 36891)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_36911 : ∀ k : Nat,
    iterate (65536 * k + 36911) 26 = 59049 * k + 33259 ∧
      59049 * k + 33259 < 65536 * k + 36911 := by
  intro k
  have h1 : C (65536 * k + 36911) = 196608 * k + 110734 := by
    unfold C
    simp [show (65536 * k + 36911) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 110734) = 98304 * k + 55367 := by
    unfold C
    simp [show (196608 * k + 110734) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 55367) = 294912 * k + 166102 := by
    unfold C
    simp [show (98304 * k + 55367) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 166102) = 147456 * k + 83051 := by
    unfold C
    simp [show (294912 * k + 166102) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 83051) = 442368 * k + 249154 := by
    unfold C
    simp [show (147456 * k + 83051) % 2 ≠ 0 by omega]
    omega
  have h6 : C (442368 * k + 249154) = 221184 * k + 124577 := by
    unfold C
    simp [show (442368 * k + 249154) % 2 = 0 by omega]
    omega
  have h7 : C (221184 * k + 124577) = 663552 * k + 373732 := by
    unfold C
    simp [show (221184 * k + 124577) % 2 ≠ 0 by omega]
    omega
  have h8 : C (663552 * k + 373732) = 331776 * k + 186866 := by
    unfold C
    simp [show (663552 * k + 373732) % 2 = 0 by omega]
    omega
  have h9 : C (331776 * k + 186866) = 165888 * k + 93433 := by
    unfold C
    simp [show (331776 * k + 186866) % 2 = 0 by omega]
    omega
  have h10 : C (165888 * k + 93433) = 497664 * k + 280300 := by
    unfold C
    simp [show (165888 * k + 93433) % 2 ≠ 0 by omega]
    omega
  have h11 : C (497664 * k + 280300) = 248832 * k + 140150 := by
    unfold C
    simp [show (497664 * k + 280300) % 2 = 0 by omega]
    omega
  have h12 : C (248832 * k + 140150) = 124416 * k + 70075 := by
    unfold C
    simp [show (248832 * k + 140150) % 2 = 0 by omega]
    omega
  have h13 : C (124416 * k + 70075) = 373248 * k + 210226 := by
    unfold C
    simp [show (124416 * k + 70075) % 2 ≠ 0 by omega]
    omega
  have h14 : C (373248 * k + 210226) = 186624 * k + 105113 := by
    unfold C
    simp [show (373248 * k + 210226) % 2 = 0 by omega]
    omega
  have h15 : C (186624 * k + 105113) = 559872 * k + 315340 := by
    unfold C
    simp [show (186624 * k + 105113) % 2 ≠ 0 by omega]
    omega
  have h16 : C (559872 * k + 315340) = 279936 * k + 157670 := by
    unfold C
    simp [show (559872 * k + 315340) % 2 = 0 by omega]
    omega
  have h17 : C (279936 * k + 157670) = 139968 * k + 78835 := by
    unfold C
    simp [show (279936 * k + 157670) % 2 = 0 by omega]
    omega
  have h18 : C (139968 * k + 78835) = 419904 * k + 236506 := by
    unfold C
    simp [show (139968 * k + 78835) % 2 ≠ 0 by omega]
    omega
  have h19 : C (419904 * k + 236506) = 209952 * k + 118253 := by
    unfold C
    simp [show (419904 * k + 236506) % 2 = 0 by omega]
    omega
  have h20 : C (209952 * k + 118253) = 629856 * k + 354760 := by
    unfold C
    simp [show (209952 * k + 118253) % 2 ≠ 0 by omega]
    omega
  have h21 : C (629856 * k + 354760) = 314928 * k + 177380 := by
    unfold C
    simp [show (629856 * k + 354760) % 2 = 0 by omega]
    omega
  have h22 : C (314928 * k + 177380) = 157464 * k + 88690 := by
    unfold C
    simp [show (314928 * k + 177380) % 2 = 0 by omega]
    omega
  have h23 : C (157464 * k + 88690) = 78732 * k + 44345 := by
    unfold C
    simp [show (157464 * k + 88690) % 2 = 0 by omega]
    omega
  have h24 : C (78732 * k + 44345) = 236196 * k + 133036 := by
    unfold C
    simp [show (78732 * k + 44345) % 2 ≠ 0 by omega]
    omega
  have h25 : C (236196 * k + 133036) = 118098 * k + 66518 := by
    unfold C
    simp [show (236196 * k + 133036) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 66518) = 59049 * k + 33259 := by
    unfold C
    simp [show (118098 * k + 66518) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 36911) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 36911)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_37119 : ∀ k : Nat,
    iterate (65536 * k + 37119) 26 = 59049 * k + 33446 ∧
      59049 * k + 33446 < 65536 * k + 37119 := by
  intro k
  have h1 : C (65536 * k + 37119) = 196608 * k + 111358 := by
    unfold C
    simp [show (65536 * k + 37119) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 111358) = 98304 * k + 55679 := by
    unfold C
    simp [show (196608 * k + 111358) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 55679) = 294912 * k + 167038 := by
    unfold C
    simp [show (98304 * k + 55679) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 167038) = 147456 * k + 83519 := by
    unfold C
    simp [show (294912 * k + 167038) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 83519) = 442368 * k + 250558 := by
    unfold C
    simp [show (147456 * k + 83519) % 2 ≠ 0 by omega]
    omega
  have h6 : C (442368 * k + 250558) = 221184 * k + 125279 := by
    unfold C
    simp [show (442368 * k + 250558) % 2 = 0 by omega]
    omega
  have h7 : C (221184 * k + 125279) = 663552 * k + 375838 := by
    unfold C
    simp [show (221184 * k + 125279) % 2 ≠ 0 by omega]
    omega
  have h8 : C (663552 * k + 375838) = 331776 * k + 187919 := by
    unfold C
    simp [show (663552 * k + 375838) % 2 = 0 by omega]
    omega
  have h9 : C (331776 * k + 187919) = 995328 * k + 563758 := by
    unfold C
    simp [show (331776 * k + 187919) % 2 ≠ 0 by omega]
    omega
  have h10 : C (995328 * k + 563758) = 497664 * k + 281879 := by
    unfold C
    simp [show (995328 * k + 563758) % 2 = 0 by omega]
    omega
  have h11 : C (497664 * k + 281879) = 1492992 * k + 845638 := by
    unfold C
    simp [show (497664 * k + 281879) % 2 ≠ 0 by omega]
    omega
  have h12 : C (1492992 * k + 845638) = 746496 * k + 422819 := by
    unfold C
    simp [show (1492992 * k + 845638) % 2 = 0 by omega]
    omega
  have h13 : C (746496 * k + 422819) = 2239488 * k + 1268458 := by
    unfold C
    simp [show (746496 * k + 422819) % 2 ≠ 0 by omega]
    omega
  have h14 : C (2239488 * k + 1268458) = 1119744 * k + 634229 := by
    unfold C
    simp [show (2239488 * k + 1268458) % 2 = 0 by omega]
    omega
  have h15 : C (1119744 * k + 634229) = 3359232 * k + 1902688 := by
    unfold C
    simp [show (1119744 * k + 634229) % 2 ≠ 0 by omega]
    omega
  have h16 : C (3359232 * k + 1902688) = 1679616 * k + 951344 := by
    unfold C
    simp [show (3359232 * k + 1902688) % 2 = 0 by omega]
    omega
  have h17 : C (1679616 * k + 951344) = 839808 * k + 475672 := by
    unfold C
    simp [show (1679616 * k + 951344) % 2 = 0 by omega]
    omega
  have h18 : C (839808 * k + 475672) = 419904 * k + 237836 := by
    unfold C
    simp [show (839808 * k + 475672) % 2 = 0 by omega]
    omega
  have h19 : C (419904 * k + 237836) = 209952 * k + 118918 := by
    unfold C
    simp [show (419904 * k + 237836) % 2 = 0 by omega]
    omega
  have h20 : C (209952 * k + 118918) = 104976 * k + 59459 := by
    unfold C
    simp [show (209952 * k + 118918) % 2 = 0 by omega]
    omega
  have h21 : C (104976 * k + 59459) = 314928 * k + 178378 := by
    unfold C
    simp [show (104976 * k + 59459) % 2 ≠ 0 by omega]
    omega
  have h22 : C (314928 * k + 178378) = 157464 * k + 89189 := by
    unfold C
    simp [show (314928 * k + 178378) % 2 = 0 by omega]
    omega
  have h23 : C (157464 * k + 89189) = 472392 * k + 267568 := by
    unfold C
    simp [show (157464 * k + 89189) % 2 ≠ 0 by omega]
    omega
  have h24 : C (472392 * k + 267568) = 236196 * k + 133784 := by
    unfold C
    simp [show (472392 * k + 267568) % 2 = 0 by omega]
    omega
  have h25 : C (236196 * k + 133784) = 118098 * k + 66892 := by
    unfold C
    simp [show (236196 * k + 133784) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 66892) = 59049 * k + 33446 := by
    unfold C
    simp [show (118098 * k + 66892) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 37119) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 37119)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_37167 : ∀ k : Nat,
    iterate (65536 * k + 37167) 26 = 59049 * k + 33490 ∧
      59049 * k + 33490 < 65536 * k + 37167 := by
  intro k
  have h1 : C (65536 * k + 37167) = 196608 * k + 111502 := by
    unfold C
    simp [show (65536 * k + 37167) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 111502) = 98304 * k + 55751 := by
    unfold C
    simp [show (196608 * k + 111502) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 55751) = 294912 * k + 167254 := by
    unfold C
    simp [show (98304 * k + 55751) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 167254) = 147456 * k + 83627 := by
    unfold C
    simp [show (294912 * k + 167254) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 83627) = 442368 * k + 250882 := by
    unfold C
    simp [show (147456 * k + 83627) % 2 ≠ 0 by omega]
    omega
  have h6 : C (442368 * k + 250882) = 221184 * k + 125441 := by
    unfold C
    simp [show (442368 * k + 250882) % 2 = 0 by omega]
    omega
  have h7 : C (221184 * k + 125441) = 663552 * k + 376324 := by
    unfold C
    simp [show (221184 * k + 125441) % 2 ≠ 0 by omega]
    omega
  have h8 : C (663552 * k + 376324) = 331776 * k + 188162 := by
    unfold C
    simp [show (663552 * k + 376324) % 2 = 0 by omega]
    omega
  have h9 : C (331776 * k + 188162) = 165888 * k + 94081 := by
    unfold C
    simp [show (331776 * k + 188162) % 2 = 0 by omega]
    omega
  have h10 : C (165888 * k + 94081) = 497664 * k + 282244 := by
    unfold C
    simp [show (165888 * k + 94081) % 2 ≠ 0 by omega]
    omega
  have h11 : C (497664 * k + 282244) = 248832 * k + 141122 := by
    unfold C
    simp [show (497664 * k + 282244) % 2 = 0 by omega]
    omega
  have h12 : C (248832 * k + 141122) = 124416 * k + 70561 := by
    unfold C
    simp [show (248832 * k + 141122) % 2 = 0 by omega]
    omega
  have h13 : C (124416 * k + 70561) = 373248 * k + 211684 := by
    unfold C
    simp [show (124416 * k + 70561) % 2 ≠ 0 by omega]
    omega
  have h14 : C (373248 * k + 211684) = 186624 * k + 105842 := by
    unfold C
    simp [show (373248 * k + 211684) % 2 = 0 by omega]
    omega
  have h15 : C (186624 * k + 105842) = 93312 * k + 52921 := by
    unfold C
    simp [show (186624 * k + 105842) % 2 = 0 by omega]
    omega
  have h16 : C (93312 * k + 52921) = 279936 * k + 158764 := by
    unfold C
    simp [show (93312 * k + 52921) % 2 ≠ 0 by omega]
    omega
  have h17 : C (279936 * k + 158764) = 139968 * k + 79382 := by
    unfold C
    simp [show (279936 * k + 158764) % 2 = 0 by omega]
    omega
  have h18 : C (139968 * k + 79382) = 69984 * k + 39691 := by
    unfold C
    simp [show (139968 * k + 79382) % 2 = 0 by omega]
    omega
  have h19 : C (69984 * k + 39691) = 209952 * k + 119074 := by
    unfold C
    simp [show (69984 * k + 39691) % 2 ≠ 0 by omega]
    omega
  have h20 : C (209952 * k + 119074) = 104976 * k + 59537 := by
    unfold C
    simp [show (209952 * k + 119074) % 2 = 0 by omega]
    omega
  have h21 : C (104976 * k + 59537) = 314928 * k + 178612 := by
    unfold C
    simp [show (104976 * k + 59537) % 2 ≠ 0 by omega]
    omega
  have h22 : C (314928 * k + 178612) = 157464 * k + 89306 := by
    unfold C
    simp [show (314928 * k + 178612) % 2 = 0 by omega]
    omega
  have h23 : C (157464 * k + 89306) = 78732 * k + 44653 := by
    unfold C
    simp [show (157464 * k + 89306) % 2 = 0 by omega]
    omega
  have h24 : C (78732 * k + 44653) = 236196 * k + 133960 := by
    unfold C
    simp [show (78732 * k + 44653) % 2 ≠ 0 by omega]
    omega
  have h25 : C (236196 * k + 133960) = 118098 * k + 66980 := by
    unfold C
    simp [show (236196 * k + 133960) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 66980) = 59049 * k + 33490 := by
    unfold C
    simp [show (118098 * k + 66980) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 37167) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 37167)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_37311 : ∀ k : Nat,
    iterate (65536 * k + 37311) 26 = 59049 * k + 33619 ∧
      59049 * k + 33619 < 65536 * k + 37311 := by
  intro k
  have h1 : C (65536 * k + 37311) = 196608 * k + 111934 := by
    unfold C
    simp [show (65536 * k + 37311) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 111934) = 98304 * k + 55967 := by
    unfold C
    simp [show (196608 * k + 111934) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 55967) = 294912 * k + 167902 := by
    unfold C
    simp [show (98304 * k + 55967) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 167902) = 147456 * k + 83951 := by
    unfold C
    simp [show (294912 * k + 167902) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 83951) = 442368 * k + 251854 := by
    unfold C
    simp [show (147456 * k + 83951) % 2 ≠ 0 by omega]
    omega
  have h6 : C (442368 * k + 251854) = 221184 * k + 125927 := by
    unfold C
    simp [show (442368 * k + 251854) % 2 = 0 by omega]
    omega
  have h7 : C (221184 * k + 125927) = 663552 * k + 377782 := by
    unfold C
    simp [show (221184 * k + 125927) % 2 ≠ 0 by omega]
    omega
  have h8 : C (663552 * k + 377782) = 331776 * k + 188891 := by
    unfold C
    simp [show (663552 * k + 377782) % 2 = 0 by omega]
    omega
  have h9 : C (331776 * k + 188891) = 995328 * k + 566674 := by
    unfold C
    simp [show (331776 * k + 188891) % 2 ≠ 0 by omega]
    omega
  have h10 : C (995328 * k + 566674) = 497664 * k + 283337 := by
    unfold C
    simp [show (995328 * k + 566674) % 2 = 0 by omega]
    omega
  have h11 : C (497664 * k + 283337) = 1492992 * k + 850012 := by
    unfold C
    simp [show (497664 * k + 283337) % 2 ≠ 0 by omega]
    omega
  have h12 : C (1492992 * k + 850012) = 746496 * k + 425006 := by
    unfold C
    simp [show (1492992 * k + 850012) % 2 = 0 by omega]
    omega
  have h13 : C (746496 * k + 425006) = 373248 * k + 212503 := by
    unfold C
    simp [show (746496 * k + 425006) % 2 = 0 by omega]
    omega
  have h14 : C (373248 * k + 212503) = 1119744 * k + 637510 := by
    unfold C
    simp [show (373248 * k + 212503) % 2 ≠ 0 by omega]
    omega
  have h15 : C (1119744 * k + 637510) = 559872 * k + 318755 := by
    unfold C
    simp [show (1119744 * k + 637510) % 2 = 0 by omega]
    omega
  have h16 : C (559872 * k + 318755) = 1679616 * k + 956266 := by
    unfold C
    simp [show (559872 * k + 318755) % 2 ≠ 0 by omega]
    omega
  have h17 : C (1679616 * k + 956266) = 839808 * k + 478133 := by
    unfold C
    simp [show (1679616 * k + 956266) % 2 = 0 by omega]
    omega
  have h18 : C (839808 * k + 478133) = 2519424 * k + 1434400 := by
    unfold C
    simp [show (839808 * k + 478133) % 2 ≠ 0 by omega]
    omega
  have h19 : C (2519424 * k + 1434400) = 1259712 * k + 717200 := by
    unfold C
    simp [show (2519424 * k + 1434400) % 2 = 0 by omega]
    omega
  have h20 : C (1259712 * k + 717200) = 629856 * k + 358600 := by
    unfold C
    simp [show (1259712 * k + 717200) % 2 = 0 by omega]
    omega
  have h21 : C (629856 * k + 358600) = 314928 * k + 179300 := by
    unfold C
    simp [show (629856 * k + 358600) % 2 = 0 by omega]
    omega
  have h22 : C (314928 * k + 179300) = 157464 * k + 89650 := by
    unfold C
    simp [show (314928 * k + 179300) % 2 = 0 by omega]
    omega
  have h23 : C (157464 * k + 89650) = 78732 * k + 44825 := by
    unfold C
    simp [show (157464 * k + 89650) % 2 = 0 by omega]
    omega
  have h24 : C (78732 * k + 44825) = 236196 * k + 134476 := by
    unfold C
    simp [show (78732 * k + 44825) % 2 ≠ 0 by omega]
    omega
  have h25 : C (236196 * k + 134476) = 118098 * k + 67238 := by
    unfold C
    simp [show (236196 * k + 134476) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 67238) = 59049 * k + 33619 := by
    unfold C
    simp [show (118098 * k + 67238) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 37311) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 37311)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_37407 : ∀ k : Nat,
    iterate (65536 * k + 37407) 26 = 59049 * k + 33706 ∧
      59049 * k + 33706 < 65536 * k + 37407 := by
  intro k
  have h1 : C (65536 * k + 37407) = 196608 * k + 112222 := by
    unfold C
    simp [show (65536 * k + 37407) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 112222) = 98304 * k + 56111 := by
    unfold C
    simp [show (196608 * k + 112222) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 56111) = 294912 * k + 168334 := by
    unfold C
    simp [show (98304 * k + 56111) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 168334) = 147456 * k + 84167 := by
    unfold C
    simp [show (294912 * k + 168334) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 84167) = 442368 * k + 252502 := by
    unfold C
    simp [show (147456 * k + 84167) % 2 ≠ 0 by omega]
    omega
  have h6 : C (442368 * k + 252502) = 221184 * k + 126251 := by
    unfold C
    simp [show (442368 * k + 252502) % 2 = 0 by omega]
    omega
  have h7 : C (221184 * k + 126251) = 663552 * k + 378754 := by
    unfold C
    simp [show (221184 * k + 126251) % 2 ≠ 0 by omega]
    omega
  have h8 : C (663552 * k + 378754) = 331776 * k + 189377 := by
    unfold C
    simp [show (663552 * k + 378754) % 2 = 0 by omega]
    omega
  have h9 : C (331776 * k + 189377) = 995328 * k + 568132 := by
    unfold C
    simp [show (331776 * k + 189377) % 2 ≠ 0 by omega]
    omega
  have h10 : C (995328 * k + 568132) = 497664 * k + 284066 := by
    unfold C
    simp [show (995328 * k + 568132) % 2 = 0 by omega]
    omega
  have h11 : C (497664 * k + 284066) = 248832 * k + 142033 := by
    unfold C
    simp [show (497664 * k + 284066) % 2 = 0 by omega]
    omega
  have h12 : C (248832 * k + 142033) = 746496 * k + 426100 := by
    unfold C
    simp [show (248832 * k + 142033) % 2 ≠ 0 by omega]
    omega
  have h13 : C (746496 * k + 426100) = 373248 * k + 213050 := by
    unfold C
    simp [show (746496 * k + 426100) % 2 = 0 by omega]
    omega
  have h14 : C (373248 * k + 213050) = 186624 * k + 106525 := by
    unfold C
    simp [show (373248 * k + 213050) % 2 = 0 by omega]
    omega
  have h15 : C (186624 * k + 106525) = 559872 * k + 319576 := by
    unfold C
    simp [show (186624 * k + 106525) % 2 ≠ 0 by omega]
    omega
  have h16 : C (559872 * k + 319576) = 279936 * k + 159788 := by
    unfold C
    simp [show (559872 * k + 319576) % 2 = 0 by omega]
    omega
  have h17 : C (279936 * k + 159788) = 139968 * k + 79894 := by
    unfold C
    simp [show (279936 * k + 159788) % 2 = 0 by omega]
    omega
  have h18 : C (139968 * k + 79894) = 69984 * k + 39947 := by
    unfold C
    simp [show (139968 * k + 79894) % 2 = 0 by omega]
    omega
  have h19 : C (69984 * k + 39947) = 209952 * k + 119842 := by
    unfold C
    simp [show (69984 * k + 39947) % 2 ≠ 0 by omega]
    omega
  have h20 : C (209952 * k + 119842) = 104976 * k + 59921 := by
    unfold C
    simp [show (209952 * k + 119842) % 2 = 0 by omega]
    omega
  have h21 : C (104976 * k + 59921) = 314928 * k + 179764 := by
    unfold C
    simp [show (104976 * k + 59921) % 2 ≠ 0 by omega]
    omega
  have h22 : C (314928 * k + 179764) = 157464 * k + 89882 := by
    unfold C
    simp [show (314928 * k + 179764) % 2 = 0 by omega]
    omega
  have h23 : C (157464 * k + 89882) = 78732 * k + 44941 := by
    unfold C
    simp [show (157464 * k + 89882) % 2 = 0 by omega]
    omega
  have h24 : C (78732 * k + 44941) = 236196 * k + 134824 := by
    unfold C
    simp [show (78732 * k + 44941) % 2 ≠ 0 by omega]
    omega
  have h25 : C (236196 * k + 134824) = 118098 * k + 67412 := by
    unfold C
    simp [show (236196 * k + 134824) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 67412) = 59049 * k + 33706 := by
    unfold C
    simp [show (118098 * k + 67412) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 37407) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 37407)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_37467 : ∀ k : Nat,
    iterate (65536 * k + 37467) 26 = 59049 * k + 33760 ∧
      59049 * k + 33760 < 65536 * k + 37467 := by
  intro k
  have h1 : C (65536 * k + 37467) = 196608 * k + 112402 := by
    unfold C
    simp [show (65536 * k + 37467) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 112402) = 98304 * k + 56201 := by
    unfold C
    simp [show (196608 * k + 112402) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 56201) = 294912 * k + 168604 := by
    unfold C
    simp [show (98304 * k + 56201) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 168604) = 147456 * k + 84302 := by
    unfold C
    simp [show (294912 * k + 168604) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 84302) = 73728 * k + 42151 := by
    unfold C
    simp [show (147456 * k + 84302) % 2 = 0 by omega]
    omega
  have h6 : C (73728 * k + 42151) = 221184 * k + 126454 := by
    unfold C
    simp [show (73728 * k + 42151) % 2 ≠ 0 by omega]
    omega
  have h7 : C (221184 * k + 126454) = 110592 * k + 63227 := by
    unfold C
    simp [show (221184 * k + 126454) % 2 = 0 by omega]
    omega
  have h8 : C (110592 * k + 63227) = 331776 * k + 189682 := by
    unfold C
    simp [show (110592 * k + 63227) % 2 ≠ 0 by omega]
    omega
  have h9 : C (331776 * k + 189682) = 165888 * k + 94841 := by
    unfold C
    simp [show (331776 * k + 189682) % 2 = 0 by omega]
    omega
  have h10 : C (165888 * k + 94841) = 497664 * k + 284524 := by
    unfold C
    simp [show (165888 * k + 94841) % 2 ≠ 0 by omega]
    omega
  have h11 : C (497664 * k + 284524) = 248832 * k + 142262 := by
    unfold C
    simp [show (497664 * k + 284524) % 2 = 0 by omega]
    omega
  have h12 : C (248832 * k + 142262) = 124416 * k + 71131 := by
    unfold C
    simp [show (248832 * k + 142262) % 2 = 0 by omega]
    omega
  have h13 : C (124416 * k + 71131) = 373248 * k + 213394 := by
    unfold C
    simp [show (124416 * k + 71131) % 2 ≠ 0 by omega]
    omega
  have h14 : C (373248 * k + 213394) = 186624 * k + 106697 := by
    unfold C
    simp [show (373248 * k + 213394) % 2 = 0 by omega]
    omega
  have h15 : C (186624 * k + 106697) = 559872 * k + 320092 := by
    unfold C
    simp [show (186624 * k + 106697) % 2 ≠ 0 by omega]
    omega
  have h16 : C (559872 * k + 320092) = 279936 * k + 160046 := by
    unfold C
    simp [show (559872 * k + 320092) % 2 = 0 by omega]
    omega
  have h17 : C (279936 * k + 160046) = 139968 * k + 80023 := by
    unfold C
    simp [show (279936 * k + 160046) % 2 = 0 by omega]
    omega
  have h18 : C (139968 * k + 80023) = 419904 * k + 240070 := by
    unfold C
    simp [show (139968 * k + 80023) % 2 ≠ 0 by omega]
    omega
  have h19 : C (419904 * k + 240070) = 209952 * k + 120035 := by
    unfold C
    simp [show (419904 * k + 240070) % 2 = 0 by omega]
    omega
  have h20 : C (209952 * k + 120035) = 629856 * k + 360106 := by
    unfold C
    simp [show (209952 * k + 120035) % 2 ≠ 0 by omega]
    omega
  have h21 : C (629856 * k + 360106) = 314928 * k + 180053 := by
    unfold C
    simp [show (629856 * k + 360106) % 2 = 0 by omega]
    omega
  have h22 : C (314928 * k + 180053) = 944784 * k + 540160 := by
    unfold C
    simp [show (314928 * k + 180053) % 2 ≠ 0 by omega]
    omega
  have h23 : C (944784 * k + 540160) = 472392 * k + 270080 := by
    unfold C
    simp [show (944784 * k + 540160) % 2 = 0 by omega]
    omega
  have h24 : C (472392 * k + 270080) = 236196 * k + 135040 := by
    unfold C
    simp [show (472392 * k + 270080) % 2 = 0 by omega]
    omega
  have h25 : C (236196 * k + 135040) = 118098 * k + 67520 := by
    unfold C
    simp [show (236196 * k + 135040) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 67520) = 59049 * k + 33760 := by
    unfold C
    simp [show (118098 * k + 67520) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 37467) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 37467)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_37487 : ∀ k : Nat,
    iterate (65536 * k + 37487) 26 = 59049 * k + 33778 ∧
      59049 * k + 33778 < 65536 * k + 37487 := by
  intro k
  have h1 : C (65536 * k + 37487) = 196608 * k + 112462 := by
    unfold C
    simp [show (65536 * k + 37487) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 112462) = 98304 * k + 56231 := by
    unfold C
    simp [show (196608 * k + 112462) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 56231) = 294912 * k + 168694 := by
    unfold C
    simp [show (98304 * k + 56231) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 168694) = 147456 * k + 84347 := by
    unfold C
    simp [show (294912 * k + 168694) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 84347) = 442368 * k + 253042 := by
    unfold C
    simp [show (147456 * k + 84347) % 2 ≠ 0 by omega]
    omega
  have h6 : C (442368 * k + 253042) = 221184 * k + 126521 := by
    unfold C
    simp [show (442368 * k + 253042) % 2 = 0 by omega]
    omega
  have h7 : C (221184 * k + 126521) = 663552 * k + 379564 := by
    unfold C
    simp [show (221184 * k + 126521) % 2 ≠ 0 by omega]
    omega
  have h8 : C (663552 * k + 379564) = 331776 * k + 189782 := by
    unfold C
    simp [show (663552 * k + 379564) % 2 = 0 by omega]
    omega
  have h9 : C (331776 * k + 189782) = 165888 * k + 94891 := by
    unfold C
    simp [show (331776 * k + 189782) % 2 = 0 by omega]
    omega
  have h10 : C (165888 * k + 94891) = 497664 * k + 284674 := by
    unfold C
    simp [show (165888 * k + 94891) % 2 ≠ 0 by omega]
    omega
  have h11 : C (497664 * k + 284674) = 248832 * k + 142337 := by
    unfold C
    simp [show (497664 * k + 284674) % 2 = 0 by omega]
    omega
  have h12 : C (248832 * k + 142337) = 746496 * k + 427012 := by
    unfold C
    simp [show (248832 * k + 142337) % 2 ≠ 0 by omega]
    omega
  have h13 : C (746496 * k + 427012) = 373248 * k + 213506 := by
    unfold C
    simp [show (746496 * k + 427012) % 2 = 0 by omega]
    omega
  have h14 : C (373248 * k + 213506) = 186624 * k + 106753 := by
    unfold C
    simp [show (373248 * k + 213506) % 2 = 0 by omega]
    omega
  have h15 : C (186624 * k + 106753) = 559872 * k + 320260 := by
    unfold C
    simp [show (186624 * k + 106753) % 2 ≠ 0 by omega]
    omega
  have h16 : C (559872 * k + 320260) = 279936 * k + 160130 := by
    unfold C
    simp [show (559872 * k + 320260) % 2 = 0 by omega]
    omega
  have h17 : C (279936 * k + 160130) = 139968 * k + 80065 := by
    unfold C
    simp [show (279936 * k + 160130) % 2 = 0 by omega]
    omega
  have h18 : C (139968 * k + 80065) = 419904 * k + 240196 := by
    unfold C
    simp [show (139968 * k + 80065) % 2 ≠ 0 by omega]
    omega
  have h19 : C (419904 * k + 240196) = 209952 * k + 120098 := by
    unfold C
    simp [show (419904 * k + 240196) % 2 = 0 by omega]
    omega
  have h20 : C (209952 * k + 120098) = 104976 * k + 60049 := by
    unfold C
    simp [show (209952 * k + 120098) % 2 = 0 by omega]
    omega
  have h21 : C (104976 * k + 60049) = 314928 * k + 180148 := by
    unfold C
    simp [show (104976 * k + 60049) % 2 ≠ 0 by omega]
    omega
  have h22 : C (314928 * k + 180148) = 157464 * k + 90074 := by
    unfold C
    simp [show (314928 * k + 180148) % 2 = 0 by omega]
    omega
  have h23 : C (157464 * k + 90074) = 78732 * k + 45037 := by
    unfold C
    simp [show (157464 * k + 90074) % 2 = 0 by omega]
    omega
  have h24 : C (78732 * k + 45037) = 236196 * k + 135112 := by
    unfold C
    simp [show (78732 * k + 45037) % 2 ≠ 0 by omega]
    omega
  have h25 : C (236196 * k + 135112) = 118098 * k + 67556 := by
    unfold C
    simp [show (236196 * k + 135112) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 67556) = 59049 * k + 33778 := by
    unfold C
    simp [show (118098 * k + 67556) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 37487) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 37487)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_37607 : ∀ k : Nat,
    iterate (65536 * k + 37607) 26 = 59049 * k + 33886 ∧
      59049 * k + 33886 < 65536 * k + 37607 := by
  intro k
  have h1 : C (65536 * k + 37607) = 196608 * k + 112822 := by
    unfold C
    simp [show (65536 * k + 37607) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 112822) = 98304 * k + 56411 := by
    unfold C
    simp [show (196608 * k + 112822) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 56411) = 294912 * k + 169234 := by
    unfold C
    simp [show (98304 * k + 56411) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 169234) = 147456 * k + 84617 := by
    unfold C
    simp [show (294912 * k + 169234) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 84617) = 442368 * k + 253852 := by
    unfold C
    simp [show (147456 * k + 84617) % 2 ≠ 0 by omega]
    omega
  have h6 : C (442368 * k + 253852) = 221184 * k + 126926 := by
    unfold C
    simp [show (442368 * k + 253852) % 2 = 0 by omega]
    omega
  have h7 : C (221184 * k + 126926) = 110592 * k + 63463 := by
    unfold C
    simp [show (221184 * k + 126926) % 2 = 0 by omega]
    omega
  have h8 : C (110592 * k + 63463) = 331776 * k + 190390 := by
    unfold C
    simp [show (110592 * k + 63463) % 2 ≠ 0 by omega]
    omega
  have h9 : C (331776 * k + 190390) = 165888 * k + 95195 := by
    unfold C
    simp [show (331776 * k + 190390) % 2 = 0 by omega]
    omega
  have h10 : C (165888 * k + 95195) = 497664 * k + 285586 := by
    unfold C
    simp [show (165888 * k + 95195) % 2 ≠ 0 by omega]
    omega
  have h11 : C (497664 * k + 285586) = 248832 * k + 142793 := by
    unfold C
    simp [show (497664 * k + 285586) % 2 = 0 by omega]
    omega
  have h12 : C (248832 * k + 142793) = 746496 * k + 428380 := by
    unfold C
    simp [show (248832 * k + 142793) % 2 ≠ 0 by omega]
    omega
  have h13 : C (746496 * k + 428380) = 373248 * k + 214190 := by
    unfold C
    simp [show (746496 * k + 428380) % 2 = 0 by omega]
    omega
  have h14 : C (373248 * k + 214190) = 186624 * k + 107095 := by
    unfold C
    simp [show (373248 * k + 214190) % 2 = 0 by omega]
    omega
  have h15 : C (186624 * k + 107095) = 559872 * k + 321286 := by
    unfold C
    simp [show (186624 * k + 107095) % 2 ≠ 0 by omega]
    omega
  have h16 : C (559872 * k + 321286) = 279936 * k + 160643 := by
    unfold C
    simp [show (559872 * k + 321286) % 2 = 0 by omega]
    omega
  have h17 : C (279936 * k + 160643) = 839808 * k + 481930 := by
    unfold C
    simp [show (279936 * k + 160643) % 2 ≠ 0 by omega]
    omega
  have h18 : C (839808 * k + 481930) = 419904 * k + 240965 := by
    unfold C
    simp [show (839808 * k + 481930) % 2 = 0 by omega]
    omega
  have h19 : C (419904 * k + 240965) = 1259712 * k + 722896 := by
    unfold C
    simp [show (419904 * k + 240965) % 2 ≠ 0 by omega]
    omega
  have h20 : C (1259712 * k + 722896) = 629856 * k + 361448 := by
    unfold C
    simp [show (1259712 * k + 722896) % 2 = 0 by omega]
    omega
  have h21 : C (629856 * k + 361448) = 314928 * k + 180724 := by
    unfold C
    simp [show (629856 * k + 361448) % 2 = 0 by omega]
    omega
  have h22 : C (314928 * k + 180724) = 157464 * k + 90362 := by
    unfold C
    simp [show (314928 * k + 180724) % 2 = 0 by omega]
    omega
  have h23 : C (157464 * k + 90362) = 78732 * k + 45181 := by
    unfold C
    simp [show (157464 * k + 90362) % 2 = 0 by omega]
    omega
  have h24 : C (78732 * k + 45181) = 236196 * k + 135544 := by
    unfold C
    simp [show (78732 * k + 45181) % 2 ≠ 0 by omega]
    omega
  have h25 : C (236196 * k + 135544) = 118098 * k + 67772 := by
    unfold C
    simp [show (236196 * k + 135544) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 67772) = 59049 * k + 33886 := by
    unfold C
    simp [show (118098 * k + 67772) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 37607) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 37607)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_37735 : ∀ k : Nat,
    iterate (65536 * k + 37735) 26 = 59049 * k + 34001 ∧
      59049 * k + 34001 < 65536 * k + 37735 := by
  intro k
  have h1 : C (65536 * k + 37735) = 196608 * k + 113206 := by
    unfold C
    simp [show (65536 * k + 37735) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 113206) = 98304 * k + 56603 := by
    unfold C
    simp [show (196608 * k + 113206) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 56603) = 294912 * k + 169810 := by
    unfold C
    simp [show (98304 * k + 56603) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 169810) = 147456 * k + 84905 := by
    unfold C
    simp [show (294912 * k + 169810) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 84905) = 442368 * k + 254716 := by
    unfold C
    simp [show (147456 * k + 84905) % 2 ≠ 0 by omega]
    omega
  have h6 : C (442368 * k + 254716) = 221184 * k + 127358 := by
    unfold C
    simp [show (442368 * k + 254716) % 2 = 0 by omega]
    omega
  have h7 : C (221184 * k + 127358) = 110592 * k + 63679 := by
    unfold C
    simp [show (221184 * k + 127358) % 2 = 0 by omega]
    omega
  have h8 : C (110592 * k + 63679) = 331776 * k + 191038 := by
    unfold C
    simp [show (110592 * k + 63679) % 2 ≠ 0 by omega]
    omega
  have h9 : C (331776 * k + 191038) = 165888 * k + 95519 := by
    unfold C
    simp [show (331776 * k + 191038) % 2 = 0 by omega]
    omega
  have h10 : C (165888 * k + 95519) = 497664 * k + 286558 := by
    unfold C
    simp [show (165888 * k + 95519) % 2 ≠ 0 by omega]
    omega
  have h11 : C (497664 * k + 286558) = 248832 * k + 143279 := by
    unfold C
    simp [show (497664 * k + 286558) % 2 = 0 by omega]
    omega
  have h12 : C (248832 * k + 143279) = 746496 * k + 429838 := by
    unfold C
    simp [show (248832 * k + 143279) % 2 ≠ 0 by omega]
    omega
  have h13 : C (746496 * k + 429838) = 373248 * k + 214919 := by
    unfold C
    simp [show (746496 * k + 429838) % 2 = 0 by omega]
    omega
  have h14 : C (373248 * k + 214919) = 1119744 * k + 644758 := by
    unfold C
    simp [show (373248 * k + 214919) % 2 ≠ 0 by omega]
    omega
  have h15 : C (1119744 * k + 644758) = 559872 * k + 322379 := by
    unfold C
    simp [show (1119744 * k + 644758) % 2 = 0 by omega]
    omega
  have h16 : C (559872 * k + 322379) = 1679616 * k + 967138 := by
    unfold C
    simp [show (559872 * k + 322379) % 2 ≠ 0 by omega]
    omega
  have h17 : C (1679616 * k + 967138) = 839808 * k + 483569 := by
    unfold C
    simp [show (1679616 * k + 967138) % 2 = 0 by omega]
    omega
  have h18 : C (839808 * k + 483569) = 2519424 * k + 1450708 := by
    unfold C
    simp [show (839808 * k + 483569) % 2 ≠ 0 by omega]
    omega
  have h19 : C (2519424 * k + 1450708) = 1259712 * k + 725354 := by
    unfold C
    simp [show (2519424 * k + 1450708) % 2 = 0 by omega]
    omega
  have h20 : C (1259712 * k + 725354) = 629856 * k + 362677 := by
    unfold C
    simp [show (1259712 * k + 725354) % 2 = 0 by omega]
    omega
  have h21 : C (629856 * k + 362677) = 1889568 * k + 1088032 := by
    unfold C
    simp [show (629856 * k + 362677) % 2 ≠ 0 by omega]
    omega
  have h22 : C (1889568 * k + 1088032) = 944784 * k + 544016 := by
    unfold C
    simp [show (1889568 * k + 1088032) % 2 = 0 by omega]
    omega
  have h23 : C (944784 * k + 544016) = 472392 * k + 272008 := by
    unfold C
    simp [show (944784 * k + 544016) % 2 = 0 by omega]
    omega
  have h24 : C (472392 * k + 272008) = 236196 * k + 136004 := by
    unfold C
    simp [show (472392 * k + 272008) % 2 = 0 by omega]
    omega
  have h25 : C (236196 * k + 136004) = 118098 * k + 68002 := by
    unfold C
    simp [show (236196 * k + 136004) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 68002) = 59049 * k + 34001 := by
    unfold C
    simp [show (118098 * k + 68002) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 37735) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 37735)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_38047 : ∀ k : Nat,
    iterate (65536 * k + 38047) 26 = 59049 * k + 34282 ∧
      59049 * k + 34282 < 65536 * k + 38047 := by
  intro k
  have h1 : C (65536 * k + 38047) = 196608 * k + 114142 := by
    unfold C
    simp [show (65536 * k + 38047) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 114142) = 98304 * k + 57071 := by
    unfold C
    simp [show (196608 * k + 114142) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 57071) = 294912 * k + 171214 := by
    unfold C
    simp [show (98304 * k + 57071) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 171214) = 147456 * k + 85607 := by
    unfold C
    simp [show (294912 * k + 171214) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 85607) = 442368 * k + 256822 := by
    unfold C
    simp [show (147456 * k + 85607) % 2 ≠ 0 by omega]
    omega
  have h6 : C (442368 * k + 256822) = 221184 * k + 128411 := by
    unfold C
    simp [show (442368 * k + 256822) % 2 = 0 by omega]
    omega
  have h7 : C (221184 * k + 128411) = 663552 * k + 385234 := by
    unfold C
    simp [show (221184 * k + 128411) % 2 ≠ 0 by omega]
    omega
  have h8 : C (663552 * k + 385234) = 331776 * k + 192617 := by
    unfold C
    simp [show (663552 * k + 385234) % 2 = 0 by omega]
    omega
  have h9 : C (331776 * k + 192617) = 995328 * k + 577852 := by
    unfold C
    simp [show (331776 * k + 192617) % 2 ≠ 0 by omega]
    omega
  have h10 : C (995328 * k + 577852) = 497664 * k + 288926 := by
    unfold C
    simp [show (995328 * k + 577852) % 2 = 0 by omega]
    omega
  have h11 : C (497664 * k + 288926) = 248832 * k + 144463 := by
    unfold C
    simp [show (497664 * k + 288926) % 2 = 0 by omega]
    omega
  have h12 : C (248832 * k + 144463) = 746496 * k + 433390 := by
    unfold C
    simp [show (248832 * k + 144463) % 2 ≠ 0 by omega]
    omega
  have h13 : C (746496 * k + 433390) = 373248 * k + 216695 := by
    unfold C
    simp [show (746496 * k + 433390) % 2 = 0 by omega]
    omega
  have h14 : C (373248 * k + 216695) = 1119744 * k + 650086 := by
    unfold C
    simp [show (373248 * k + 216695) % 2 ≠ 0 by omega]
    omega
  have h15 : C (1119744 * k + 650086) = 559872 * k + 325043 := by
    unfold C
    simp [show (1119744 * k + 650086) % 2 = 0 by omega]
    omega
  have h16 : C (559872 * k + 325043) = 1679616 * k + 975130 := by
    unfold C
    simp [show (559872 * k + 325043) % 2 ≠ 0 by omega]
    omega
  have h17 : C (1679616 * k + 975130) = 839808 * k + 487565 := by
    unfold C
    simp [show (1679616 * k + 975130) % 2 = 0 by omega]
    omega
  have h18 : C (839808 * k + 487565) = 2519424 * k + 1462696 := by
    unfold C
    simp [show (839808 * k + 487565) % 2 ≠ 0 by omega]
    omega
  have h19 : C (2519424 * k + 1462696) = 1259712 * k + 731348 := by
    unfold C
    simp [show (2519424 * k + 1462696) % 2 = 0 by omega]
    omega
  have h20 : C (1259712 * k + 731348) = 629856 * k + 365674 := by
    unfold C
    simp [show (1259712 * k + 731348) % 2 = 0 by omega]
    omega
  have h21 : C (629856 * k + 365674) = 314928 * k + 182837 := by
    unfold C
    simp [show (629856 * k + 365674) % 2 = 0 by omega]
    omega
  have h22 : C (314928 * k + 182837) = 944784 * k + 548512 := by
    unfold C
    simp [show (314928 * k + 182837) % 2 ≠ 0 by omega]
    omega
  have h23 : C (944784 * k + 548512) = 472392 * k + 274256 := by
    unfold C
    simp [show (944784 * k + 548512) % 2 = 0 by omega]
    omega
  have h24 : C (472392 * k + 274256) = 236196 * k + 137128 := by
    unfold C
    simp [show (472392 * k + 274256) % 2 = 0 by omega]
    omega
  have h25 : C (236196 * k + 137128) = 118098 * k + 68564 := by
    unfold C
    simp [show (236196 * k + 137128) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 68564) = 59049 * k + 34282 := by
    unfold C
    simp [show (118098 * k + 68564) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 38047) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 38047)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_38171 : ∀ k : Nat,
    iterate (65536 * k + 38171) 26 = 59049 * k + 34394 ∧
      59049 * k + 34394 < 65536 * k + 38171 := by
  intro k
  have h1 : C (65536 * k + 38171) = 196608 * k + 114514 := by
    unfold C
    simp [show (65536 * k + 38171) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 114514) = 98304 * k + 57257 := by
    unfold C
    simp [show (196608 * k + 114514) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 57257) = 294912 * k + 171772 := by
    unfold C
    simp [show (98304 * k + 57257) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 171772) = 147456 * k + 85886 := by
    unfold C
    simp [show (294912 * k + 171772) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 85886) = 73728 * k + 42943 := by
    unfold C
    simp [show (147456 * k + 85886) % 2 = 0 by omega]
    omega
  have h6 : C (73728 * k + 42943) = 221184 * k + 128830 := by
    unfold C
    simp [show (73728 * k + 42943) % 2 ≠ 0 by omega]
    omega
  have h7 : C (221184 * k + 128830) = 110592 * k + 64415 := by
    unfold C
    simp [show (221184 * k + 128830) % 2 = 0 by omega]
    omega
  have h8 : C (110592 * k + 64415) = 331776 * k + 193246 := by
    unfold C
    simp [show (110592 * k + 64415) % 2 ≠ 0 by omega]
    omega
  have h9 : C (331776 * k + 193246) = 165888 * k + 96623 := by
    unfold C
    simp [show (331776 * k + 193246) % 2 = 0 by omega]
    omega
  have h10 : C (165888 * k + 96623) = 497664 * k + 289870 := by
    unfold C
    simp [show (165888 * k + 96623) % 2 ≠ 0 by omega]
    omega
  have h11 : C (497664 * k + 289870) = 248832 * k + 144935 := by
    unfold C
    simp [show (497664 * k + 289870) % 2 = 0 by omega]
    omega
  have h12 : C (248832 * k + 144935) = 746496 * k + 434806 := by
    unfold C
    simp [show (248832 * k + 144935) % 2 ≠ 0 by omega]
    omega
  have h13 : C (746496 * k + 434806) = 373248 * k + 217403 := by
    unfold C
    simp [show (746496 * k + 434806) % 2 = 0 by omega]
    omega
  have h14 : C (373248 * k + 217403) = 1119744 * k + 652210 := by
    unfold C
    simp [show (373248 * k + 217403) % 2 ≠ 0 by omega]
    omega
  have h15 : C (1119744 * k + 652210) = 559872 * k + 326105 := by
    unfold C
    simp [show (1119744 * k + 652210) % 2 = 0 by omega]
    omega
  have h16 : C (559872 * k + 326105) = 1679616 * k + 978316 := by
    unfold C
    simp [show (559872 * k + 326105) % 2 ≠ 0 by omega]
    omega
  have h17 : C (1679616 * k + 978316) = 839808 * k + 489158 := by
    unfold C
    simp [show (1679616 * k + 978316) % 2 = 0 by omega]
    omega
  have h18 : C (839808 * k + 489158) = 419904 * k + 244579 := by
    unfold C
    simp [show (839808 * k + 489158) % 2 = 0 by omega]
    omega
  have h19 : C (419904 * k + 244579) = 1259712 * k + 733738 := by
    unfold C
    simp [show (419904 * k + 244579) % 2 ≠ 0 by omega]
    omega
  have h20 : C (1259712 * k + 733738) = 629856 * k + 366869 := by
    unfold C
    simp [show (1259712 * k + 733738) % 2 = 0 by omega]
    omega
  have h21 : C (629856 * k + 366869) = 1889568 * k + 1100608 := by
    unfold C
    simp [show (629856 * k + 366869) % 2 ≠ 0 by omega]
    omega
  have h22 : C (1889568 * k + 1100608) = 944784 * k + 550304 := by
    unfold C
    simp [show (1889568 * k + 1100608) % 2 = 0 by omega]
    omega
  have h23 : C (944784 * k + 550304) = 472392 * k + 275152 := by
    unfold C
    simp [show (944784 * k + 550304) % 2 = 0 by omega]
    omega
  have h24 : C (472392 * k + 275152) = 236196 * k + 137576 := by
    unfold C
    simp [show (472392 * k + 275152) % 2 = 0 by omega]
    omega
  have h25 : C (236196 * k + 137576) = 118098 * k + 68788 := by
    unfold C
    simp [show (236196 * k + 137576) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 68788) = 59049 * k + 34394 := by
    unfold C
    simp [show (118098 * k + 68788) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 38171) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 38171)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_38271 : ∀ k : Nat,
    iterate (65536 * k + 38271) 26 = 59049 * k + 34484 ∧
      59049 * k + 34484 < 65536 * k + 38271 := by
  intro k
  have h1 : C (65536 * k + 38271) = 196608 * k + 114814 := by
    unfold C
    simp [show (65536 * k + 38271) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 114814) = 98304 * k + 57407 := by
    unfold C
    simp [show (196608 * k + 114814) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 57407) = 294912 * k + 172222 := by
    unfold C
    simp [show (98304 * k + 57407) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 172222) = 147456 * k + 86111 := by
    unfold C
    simp [show (294912 * k + 172222) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 86111) = 442368 * k + 258334 := by
    unfold C
    simp [show (147456 * k + 86111) % 2 ≠ 0 by omega]
    omega
  have h6 : C (442368 * k + 258334) = 221184 * k + 129167 := by
    unfold C
    simp [show (442368 * k + 258334) % 2 = 0 by omega]
    omega
  have h7 : C (221184 * k + 129167) = 663552 * k + 387502 := by
    unfold C
    simp [show (221184 * k + 129167) % 2 ≠ 0 by omega]
    omega
  have h8 : C (663552 * k + 387502) = 331776 * k + 193751 := by
    unfold C
    simp [show (663552 * k + 387502) % 2 = 0 by omega]
    omega
  have h9 : C (331776 * k + 193751) = 995328 * k + 581254 := by
    unfold C
    simp [show (331776 * k + 193751) % 2 ≠ 0 by omega]
    omega
  have h10 : C (995328 * k + 581254) = 497664 * k + 290627 := by
    unfold C
    simp [show (995328 * k + 581254) % 2 = 0 by omega]
    omega
  have h11 : C (497664 * k + 290627) = 1492992 * k + 871882 := by
    unfold C
    simp [show (497664 * k + 290627) % 2 ≠ 0 by omega]
    omega
  have h12 : C (1492992 * k + 871882) = 746496 * k + 435941 := by
    unfold C
    simp [show (1492992 * k + 871882) % 2 = 0 by omega]
    omega
  have h13 : C (746496 * k + 435941) = 2239488 * k + 1307824 := by
    unfold C
    simp [show (746496 * k + 435941) % 2 ≠ 0 by omega]
    omega
  have h14 : C (2239488 * k + 1307824) = 1119744 * k + 653912 := by
    unfold C
    simp [show (2239488 * k + 1307824) % 2 = 0 by omega]
    omega
  have h15 : C (1119744 * k + 653912) = 559872 * k + 326956 := by
    unfold C
    simp [show (1119744 * k + 653912) % 2 = 0 by omega]
    omega
  have h16 : C (559872 * k + 326956) = 279936 * k + 163478 := by
    unfold C
    simp [show (559872 * k + 326956) % 2 = 0 by omega]
    omega
  have h17 : C (279936 * k + 163478) = 139968 * k + 81739 := by
    unfold C
    simp [show (279936 * k + 163478) % 2 = 0 by omega]
    omega
  have h18 : C (139968 * k + 81739) = 419904 * k + 245218 := by
    unfold C
    simp [show (139968 * k + 81739) % 2 ≠ 0 by omega]
    omega
  have h19 : C (419904 * k + 245218) = 209952 * k + 122609 := by
    unfold C
    simp [show (419904 * k + 245218) % 2 = 0 by omega]
    omega
  have h20 : C (209952 * k + 122609) = 629856 * k + 367828 := by
    unfold C
    simp [show (209952 * k + 122609) % 2 ≠ 0 by omega]
    omega
  have h21 : C (629856 * k + 367828) = 314928 * k + 183914 := by
    unfold C
    simp [show (629856 * k + 367828) % 2 = 0 by omega]
    omega
  have h22 : C (314928 * k + 183914) = 157464 * k + 91957 := by
    unfold C
    simp [show (314928 * k + 183914) % 2 = 0 by omega]
    omega
  have h23 : C (157464 * k + 91957) = 472392 * k + 275872 := by
    unfold C
    simp [show (157464 * k + 91957) % 2 ≠ 0 by omega]
    omega
  have h24 : C (472392 * k + 275872) = 236196 * k + 137936 := by
    unfold C
    simp [show (472392 * k + 275872) % 2 = 0 by omega]
    omega
  have h25 : C (236196 * k + 137936) = 118098 * k + 68968 := by
    unfold C
    simp [show (236196 * k + 137936) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 68968) = 59049 * k + 34484 := by
    unfold C
    simp [show (118098 * k + 68968) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 38271) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 38271)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

end CollatzM16ShardN
