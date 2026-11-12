import Mathlib.Data.Nat.Prime.Basic

namespace CollatzM16ShardM

def C (n : Nat) : Nat := if n % 2 = 0 then n / 2 else 3 * n + 1

def iterate (n t : Nat) : Nat := Nat.rec n (fun _ previous => C previous) t

theorem descent_mod65536_33087 : ∀ k : Nat,
    iterate (65536 * k + 33087) 26 = 59049 * k + 29813 ∧
      59049 * k + 29813 < 65536 * k + 33087 := by
  intro k
  have h1 : C (65536 * k + 33087) = 196608 * k + 99262 := by
    unfold C
    simp [show (65536 * k + 33087) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 99262) = 98304 * k + 49631 := by
    unfold C
    simp [show (196608 * k + 99262) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 49631) = 294912 * k + 148894 := by
    unfold C
    simp [show (98304 * k + 49631) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 148894) = 147456 * k + 74447 := by
    unfold C
    simp [show (294912 * k + 148894) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 74447) = 442368 * k + 223342 := by
    unfold C
    simp [show (147456 * k + 74447) % 2 ≠ 0 by omega]
    omega
  have h6 : C (442368 * k + 223342) = 221184 * k + 111671 := by
    unfold C
    simp [show (442368 * k + 223342) % 2 = 0 by omega]
    omega
  have h7 : C (221184 * k + 111671) = 663552 * k + 335014 := by
    unfold C
    simp [show (221184 * k + 111671) % 2 ≠ 0 by omega]
    omega
  have h8 : C (663552 * k + 335014) = 331776 * k + 167507 := by
    unfold C
    simp [show (663552 * k + 335014) % 2 = 0 by omega]
    omega
  have h9 : C (331776 * k + 167507) = 995328 * k + 502522 := by
    unfold C
    simp [show (331776 * k + 167507) % 2 ≠ 0 by omega]
    omega
  have h10 : C (995328 * k + 502522) = 497664 * k + 251261 := by
    unfold C
    simp [show (995328 * k + 502522) % 2 = 0 by omega]
    omega
  have h11 : C (497664 * k + 251261) = 1492992 * k + 753784 := by
    unfold C
    simp [show (497664 * k + 251261) % 2 ≠ 0 by omega]
    omega
  have h12 : C (1492992 * k + 753784) = 746496 * k + 376892 := by
    unfold C
    simp [show (1492992 * k + 753784) % 2 = 0 by omega]
    omega
  have h13 : C (746496 * k + 376892) = 373248 * k + 188446 := by
    unfold C
    simp [show (746496 * k + 376892) % 2 = 0 by omega]
    omega
  have h14 : C (373248 * k + 188446) = 186624 * k + 94223 := by
    unfold C
    simp [show (373248 * k + 188446) % 2 = 0 by omega]
    omega
  have h15 : C (186624 * k + 94223) = 559872 * k + 282670 := by
    unfold C
    simp [show (186624 * k + 94223) % 2 ≠ 0 by omega]
    omega
  have h16 : C (559872 * k + 282670) = 279936 * k + 141335 := by
    unfold C
    simp [show (559872 * k + 282670) % 2 = 0 by omega]
    omega
  have h17 : C (279936 * k + 141335) = 839808 * k + 424006 := by
    unfold C
    simp [show (279936 * k + 141335) % 2 ≠ 0 by omega]
    omega
  have h18 : C (839808 * k + 424006) = 419904 * k + 212003 := by
    unfold C
    simp [show (839808 * k + 424006) % 2 = 0 by omega]
    omega
  have h19 : C (419904 * k + 212003) = 1259712 * k + 636010 := by
    unfold C
    simp [show (419904 * k + 212003) % 2 ≠ 0 by omega]
    omega
  have h20 : C (1259712 * k + 636010) = 629856 * k + 318005 := by
    unfold C
    simp [show (1259712 * k + 636010) % 2 = 0 by omega]
    omega
  have h21 : C (629856 * k + 318005) = 1889568 * k + 954016 := by
    unfold C
    simp [show (629856 * k + 318005) % 2 ≠ 0 by omega]
    omega
  have h22 : C (1889568 * k + 954016) = 944784 * k + 477008 := by
    unfold C
    simp [show (1889568 * k + 954016) % 2 = 0 by omega]
    omega
  have h23 : C (944784 * k + 477008) = 472392 * k + 238504 := by
    unfold C
    simp [show (944784 * k + 477008) % 2 = 0 by omega]
    omega
  have h24 : C (472392 * k + 238504) = 236196 * k + 119252 := by
    unfold C
    simp [show (472392 * k + 238504) % 2 = 0 by omega]
    omega
  have h25 : C (236196 * k + 119252) = 118098 * k + 59626 := by
    unfold C
    simp [show (236196 * k + 119252) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 59626) = 59049 * k + 29813 := by
    unfold C
    simp [show (118098 * k + 59626) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 33087) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 33087)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_33255 : ∀ k : Nat,
    iterate (65536 * k + 33255) 26 = 59049 * k + 29965 ∧
      59049 * k + 29965 < 65536 * k + 33255 := by
  intro k
  have h1 : C (65536 * k + 33255) = 196608 * k + 99766 := by
    unfold C
    simp [show (65536 * k + 33255) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 99766) = 98304 * k + 49883 := by
    unfold C
    simp [show (196608 * k + 99766) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 49883) = 294912 * k + 149650 := by
    unfold C
    simp [show (98304 * k + 49883) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 149650) = 147456 * k + 74825 := by
    unfold C
    simp [show (294912 * k + 149650) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 74825) = 442368 * k + 224476 := by
    unfold C
    simp [show (147456 * k + 74825) % 2 ≠ 0 by omega]
    omega
  have h6 : C (442368 * k + 224476) = 221184 * k + 112238 := by
    unfold C
    simp [show (442368 * k + 224476) % 2 = 0 by omega]
    omega
  have h7 : C (221184 * k + 112238) = 110592 * k + 56119 := by
    unfold C
    simp [show (221184 * k + 112238) % 2 = 0 by omega]
    omega
  have h8 : C (110592 * k + 56119) = 331776 * k + 168358 := by
    unfold C
    simp [show (110592 * k + 56119) % 2 ≠ 0 by omega]
    omega
  have h9 : C (331776 * k + 168358) = 165888 * k + 84179 := by
    unfold C
    simp [show (331776 * k + 168358) % 2 = 0 by omega]
    omega
  have h10 : C (165888 * k + 84179) = 497664 * k + 252538 := by
    unfold C
    simp [show (165888 * k + 84179) % 2 ≠ 0 by omega]
    omega
  have h11 : C (497664 * k + 252538) = 248832 * k + 126269 := by
    unfold C
    simp [show (497664 * k + 252538) % 2 = 0 by omega]
    omega
  have h12 : C (248832 * k + 126269) = 746496 * k + 378808 := by
    unfold C
    simp [show (248832 * k + 126269) % 2 ≠ 0 by omega]
    omega
  have h13 : C (746496 * k + 378808) = 373248 * k + 189404 := by
    unfold C
    simp [show (746496 * k + 378808) % 2 = 0 by omega]
    omega
  have h14 : C (373248 * k + 189404) = 186624 * k + 94702 := by
    unfold C
    simp [show (373248 * k + 189404) % 2 = 0 by omega]
    omega
  have h15 : C (186624 * k + 94702) = 93312 * k + 47351 := by
    unfold C
    simp [show (186624 * k + 94702) % 2 = 0 by omega]
    omega
  have h16 : C (93312 * k + 47351) = 279936 * k + 142054 := by
    unfold C
    simp [show (93312 * k + 47351) % 2 ≠ 0 by omega]
    omega
  have h17 : C (279936 * k + 142054) = 139968 * k + 71027 := by
    unfold C
    simp [show (279936 * k + 142054) % 2 = 0 by omega]
    omega
  have h18 : C (139968 * k + 71027) = 419904 * k + 213082 := by
    unfold C
    simp [show (139968 * k + 71027) % 2 ≠ 0 by omega]
    omega
  have h19 : C (419904 * k + 213082) = 209952 * k + 106541 := by
    unfold C
    simp [show (419904 * k + 213082) % 2 = 0 by omega]
    omega
  have h20 : C (209952 * k + 106541) = 629856 * k + 319624 := by
    unfold C
    simp [show (209952 * k + 106541) % 2 ≠ 0 by omega]
    omega
  have h21 : C (629856 * k + 319624) = 314928 * k + 159812 := by
    unfold C
    simp [show (629856 * k + 319624) % 2 = 0 by omega]
    omega
  have h22 : C (314928 * k + 159812) = 157464 * k + 79906 := by
    unfold C
    simp [show (314928 * k + 159812) % 2 = 0 by omega]
    omega
  have h23 : C (157464 * k + 79906) = 78732 * k + 39953 := by
    unfold C
    simp [show (157464 * k + 79906) % 2 = 0 by omega]
    omega
  have h24 : C (78732 * k + 39953) = 236196 * k + 119860 := by
    unfold C
    simp [show (78732 * k + 39953) % 2 ≠ 0 by omega]
    omega
  have h25 : C (236196 * k + 119860) = 118098 * k + 59930 := by
    unfold C
    simp [show (236196 * k + 119860) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 59930) = 59049 * k + 29965 := by
    unfold C
    simp [show (118098 * k + 59930) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 33255) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 33255)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_33531 : ∀ k : Nat,
    iterate (65536 * k + 33531) 26 = 59049 * k + 30214 ∧
      59049 * k + 30214 < 65536 * k + 33531 := by
  intro k
  have h1 : C (65536 * k + 33531) = 196608 * k + 100594 := by
    unfold C
    simp [show (65536 * k + 33531) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 100594) = 98304 * k + 50297 := by
    unfold C
    simp [show (196608 * k + 100594) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 50297) = 294912 * k + 150892 := by
    unfold C
    simp [show (98304 * k + 50297) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 150892) = 147456 * k + 75446 := by
    unfold C
    simp [show (294912 * k + 150892) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 75446) = 73728 * k + 37723 := by
    unfold C
    simp [show (147456 * k + 75446) % 2 = 0 by omega]
    omega
  have h6 : C (73728 * k + 37723) = 221184 * k + 113170 := by
    unfold C
    simp [show (73728 * k + 37723) % 2 ≠ 0 by omega]
    omega
  have h7 : C (221184 * k + 113170) = 110592 * k + 56585 := by
    unfold C
    simp [show (221184 * k + 113170) % 2 = 0 by omega]
    omega
  have h8 : C (110592 * k + 56585) = 331776 * k + 169756 := by
    unfold C
    simp [show (110592 * k + 56585) % 2 ≠ 0 by omega]
    omega
  have h9 : C (331776 * k + 169756) = 165888 * k + 84878 := by
    unfold C
    simp [show (331776 * k + 169756) % 2 = 0 by omega]
    omega
  have h10 : C (165888 * k + 84878) = 82944 * k + 42439 := by
    unfold C
    simp [show (165888 * k + 84878) % 2 = 0 by omega]
    omega
  have h11 : C (82944 * k + 42439) = 248832 * k + 127318 := by
    unfold C
    simp [show (82944 * k + 42439) % 2 ≠ 0 by omega]
    omega
  have h12 : C (248832 * k + 127318) = 124416 * k + 63659 := by
    unfold C
    simp [show (248832 * k + 127318) % 2 = 0 by omega]
    omega
  have h13 : C (124416 * k + 63659) = 373248 * k + 190978 := by
    unfold C
    simp [show (124416 * k + 63659) % 2 ≠ 0 by omega]
    omega
  have h14 : C (373248 * k + 190978) = 186624 * k + 95489 := by
    unfold C
    simp [show (373248 * k + 190978) % 2 = 0 by omega]
    omega
  have h15 : C (186624 * k + 95489) = 559872 * k + 286468 := by
    unfold C
    simp [show (186624 * k + 95489) % 2 ≠ 0 by omega]
    omega
  have h16 : C (559872 * k + 286468) = 279936 * k + 143234 := by
    unfold C
    simp [show (559872 * k + 286468) % 2 = 0 by omega]
    omega
  have h17 : C (279936 * k + 143234) = 139968 * k + 71617 := by
    unfold C
    simp [show (279936 * k + 143234) % 2 = 0 by omega]
    omega
  have h18 : C (139968 * k + 71617) = 419904 * k + 214852 := by
    unfold C
    simp [show (139968 * k + 71617) % 2 ≠ 0 by omega]
    omega
  have h19 : C (419904 * k + 214852) = 209952 * k + 107426 := by
    unfold C
    simp [show (419904 * k + 214852) % 2 = 0 by omega]
    omega
  have h20 : C (209952 * k + 107426) = 104976 * k + 53713 := by
    unfold C
    simp [show (209952 * k + 107426) % 2 = 0 by omega]
    omega
  have h21 : C (104976 * k + 53713) = 314928 * k + 161140 := by
    unfold C
    simp [show (104976 * k + 53713) % 2 ≠ 0 by omega]
    omega
  have h22 : C (314928 * k + 161140) = 157464 * k + 80570 := by
    unfold C
    simp [show (314928 * k + 161140) % 2 = 0 by omega]
    omega
  have h23 : C (157464 * k + 80570) = 78732 * k + 40285 := by
    unfold C
    simp [show (157464 * k + 80570) % 2 = 0 by omega]
    omega
  have h24 : C (78732 * k + 40285) = 236196 * k + 120856 := by
    unfold C
    simp [show (78732 * k + 40285) % 2 ≠ 0 by omega]
    omega
  have h25 : C (236196 * k + 120856) = 118098 * k + 60428 := by
    unfold C
    simp [show (236196 * k + 120856) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 60428) = 59049 * k + 30214 := by
    unfold C
    simp [show (118098 * k + 60428) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 33531) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 33531)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_33663 : ∀ k : Nat,
    iterate (65536 * k + 33663) 26 = 59049 * k + 30332 ∧
      59049 * k + 30332 < 65536 * k + 33663 := by
  intro k
  have h1 : C (65536 * k + 33663) = 196608 * k + 100990 := by
    unfold C
    simp [show (65536 * k + 33663) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 100990) = 98304 * k + 50495 := by
    unfold C
    simp [show (196608 * k + 100990) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 50495) = 294912 * k + 151486 := by
    unfold C
    simp [show (98304 * k + 50495) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 151486) = 147456 * k + 75743 := by
    unfold C
    simp [show (294912 * k + 151486) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 75743) = 442368 * k + 227230 := by
    unfold C
    simp [show (147456 * k + 75743) % 2 ≠ 0 by omega]
    omega
  have h6 : C (442368 * k + 227230) = 221184 * k + 113615 := by
    unfold C
    simp [show (442368 * k + 227230) % 2 = 0 by omega]
    omega
  have h7 : C (221184 * k + 113615) = 663552 * k + 340846 := by
    unfold C
    simp [show (221184 * k + 113615) % 2 ≠ 0 by omega]
    omega
  have h8 : C (663552 * k + 340846) = 331776 * k + 170423 := by
    unfold C
    simp [show (663552 * k + 340846) % 2 = 0 by omega]
    omega
  have h9 : C (331776 * k + 170423) = 995328 * k + 511270 := by
    unfold C
    simp [show (331776 * k + 170423) % 2 ≠ 0 by omega]
    omega
  have h10 : C (995328 * k + 511270) = 497664 * k + 255635 := by
    unfold C
    simp [show (995328 * k + 511270) % 2 = 0 by omega]
    omega
  have h11 : C (497664 * k + 255635) = 1492992 * k + 766906 := by
    unfold C
    simp [show (497664 * k + 255635) % 2 ≠ 0 by omega]
    omega
  have h12 : C (1492992 * k + 766906) = 746496 * k + 383453 := by
    unfold C
    simp [show (1492992 * k + 766906) % 2 = 0 by omega]
    omega
  have h13 : C (746496 * k + 383453) = 2239488 * k + 1150360 := by
    unfold C
    simp [show (746496 * k + 383453) % 2 ≠ 0 by omega]
    omega
  have h14 : C (2239488 * k + 1150360) = 1119744 * k + 575180 := by
    unfold C
    simp [show (2239488 * k + 1150360) % 2 = 0 by omega]
    omega
  have h15 : C (1119744 * k + 575180) = 559872 * k + 287590 := by
    unfold C
    simp [show (1119744 * k + 575180) % 2 = 0 by omega]
    omega
  have h16 : C (559872 * k + 287590) = 279936 * k + 143795 := by
    unfold C
    simp [show (559872 * k + 287590) % 2 = 0 by omega]
    omega
  have h17 : C (279936 * k + 143795) = 839808 * k + 431386 := by
    unfold C
    simp [show (279936 * k + 143795) % 2 ≠ 0 by omega]
    omega
  have h18 : C (839808 * k + 431386) = 419904 * k + 215693 := by
    unfold C
    simp [show (839808 * k + 431386) % 2 = 0 by omega]
    omega
  have h19 : C (419904 * k + 215693) = 1259712 * k + 647080 := by
    unfold C
    simp [show (419904 * k + 215693) % 2 ≠ 0 by omega]
    omega
  have h20 : C (1259712 * k + 647080) = 629856 * k + 323540 := by
    unfold C
    simp [show (1259712 * k + 647080) % 2 = 0 by omega]
    omega
  have h21 : C (629856 * k + 323540) = 314928 * k + 161770 := by
    unfold C
    simp [show (629856 * k + 323540) % 2 = 0 by omega]
    omega
  have h22 : C (314928 * k + 161770) = 157464 * k + 80885 := by
    unfold C
    simp [show (314928 * k + 161770) % 2 = 0 by omega]
    omega
  have h23 : C (157464 * k + 80885) = 472392 * k + 242656 := by
    unfold C
    simp [show (157464 * k + 80885) % 2 ≠ 0 by omega]
    omega
  have h24 : C (472392 * k + 242656) = 236196 * k + 121328 := by
    unfold C
    simp [show (472392 * k + 242656) % 2 = 0 by omega]
    omega
  have h25 : C (236196 * k + 121328) = 118098 * k + 60664 := by
    unfold C
    simp [show (236196 * k + 121328) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 60664) = 59049 * k + 30332 := by
    unfold C
    simp [show (118098 * k + 60664) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 33663) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 33663)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_34111 : ∀ k : Nat,
    iterate (65536 * k + 34111) 26 = 59049 * k + 30736 ∧
      59049 * k + 30736 < 65536 * k + 34111 := by
  intro k
  have h1 : C (65536 * k + 34111) = 196608 * k + 102334 := by
    unfold C
    simp [show (65536 * k + 34111) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 102334) = 98304 * k + 51167 := by
    unfold C
    simp [show (196608 * k + 102334) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 51167) = 294912 * k + 153502 := by
    unfold C
    simp [show (98304 * k + 51167) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 153502) = 147456 * k + 76751 := by
    unfold C
    simp [show (294912 * k + 153502) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 76751) = 442368 * k + 230254 := by
    unfold C
    simp [show (147456 * k + 76751) % 2 ≠ 0 by omega]
    omega
  have h6 : C (442368 * k + 230254) = 221184 * k + 115127 := by
    unfold C
    simp [show (442368 * k + 230254) % 2 = 0 by omega]
    omega
  have h7 : C (221184 * k + 115127) = 663552 * k + 345382 := by
    unfold C
    simp [show (221184 * k + 115127) % 2 ≠ 0 by omega]
    omega
  have h8 : C (663552 * k + 345382) = 331776 * k + 172691 := by
    unfold C
    simp [show (663552 * k + 345382) % 2 = 0 by omega]
    omega
  have h9 : C (331776 * k + 172691) = 995328 * k + 518074 := by
    unfold C
    simp [show (331776 * k + 172691) % 2 ≠ 0 by omega]
    omega
  have h10 : C (995328 * k + 518074) = 497664 * k + 259037 := by
    unfold C
    simp [show (995328 * k + 518074) % 2 = 0 by omega]
    omega
  have h11 : C (497664 * k + 259037) = 1492992 * k + 777112 := by
    unfold C
    simp [show (497664 * k + 259037) % 2 ≠ 0 by omega]
    omega
  have h12 : C (1492992 * k + 777112) = 746496 * k + 388556 := by
    unfold C
    simp [show (1492992 * k + 777112) % 2 = 0 by omega]
    omega
  have h13 : C (746496 * k + 388556) = 373248 * k + 194278 := by
    unfold C
    simp [show (746496 * k + 388556) % 2 = 0 by omega]
    omega
  have h14 : C (373248 * k + 194278) = 186624 * k + 97139 := by
    unfold C
    simp [show (373248 * k + 194278) % 2 = 0 by omega]
    omega
  have h15 : C (186624 * k + 97139) = 559872 * k + 291418 := by
    unfold C
    simp [show (186624 * k + 97139) % 2 ≠ 0 by omega]
    omega
  have h16 : C (559872 * k + 291418) = 279936 * k + 145709 := by
    unfold C
    simp [show (559872 * k + 291418) % 2 = 0 by omega]
    omega
  have h17 : C (279936 * k + 145709) = 839808 * k + 437128 := by
    unfold C
    simp [show (279936 * k + 145709) % 2 ≠ 0 by omega]
    omega
  have h18 : C (839808 * k + 437128) = 419904 * k + 218564 := by
    unfold C
    simp [show (839808 * k + 437128) % 2 = 0 by omega]
    omega
  have h19 : C (419904 * k + 218564) = 209952 * k + 109282 := by
    unfold C
    simp [show (419904 * k + 218564) % 2 = 0 by omega]
    omega
  have h20 : C (209952 * k + 109282) = 104976 * k + 54641 := by
    unfold C
    simp [show (209952 * k + 109282) % 2 = 0 by omega]
    omega
  have h21 : C (104976 * k + 54641) = 314928 * k + 163924 := by
    unfold C
    simp [show (104976 * k + 54641) % 2 ≠ 0 by omega]
    omega
  have h22 : C (314928 * k + 163924) = 157464 * k + 81962 := by
    unfold C
    simp [show (314928 * k + 163924) % 2 = 0 by omega]
    omega
  have h23 : C (157464 * k + 81962) = 78732 * k + 40981 := by
    unfold C
    simp [show (157464 * k + 81962) % 2 = 0 by omega]
    omega
  have h24 : C (78732 * k + 40981) = 236196 * k + 122944 := by
    unfold C
    simp [show (78732 * k + 40981) % 2 ≠ 0 by omega]
    omega
  have h25 : C (236196 * k + 122944) = 118098 * k + 61472 := by
    unfold C
    simp [show (236196 * k + 122944) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 61472) = 59049 * k + 30736 := by
    unfold C
    simp [show (118098 * k + 61472) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 34111) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 34111)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_34151 : ∀ k : Nat,
    iterate (65536 * k + 34151) 26 = 59049 * k + 30772 ∧
      59049 * k + 30772 < 65536 * k + 34151 := by
  intro k
  have h1 : C (65536 * k + 34151) = 196608 * k + 102454 := by
    unfold C
    simp [show (65536 * k + 34151) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 102454) = 98304 * k + 51227 := by
    unfold C
    simp [show (196608 * k + 102454) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 51227) = 294912 * k + 153682 := by
    unfold C
    simp [show (98304 * k + 51227) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 153682) = 147456 * k + 76841 := by
    unfold C
    simp [show (294912 * k + 153682) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 76841) = 442368 * k + 230524 := by
    unfold C
    simp [show (147456 * k + 76841) % 2 ≠ 0 by omega]
    omega
  have h6 : C (442368 * k + 230524) = 221184 * k + 115262 := by
    unfold C
    simp [show (442368 * k + 230524) % 2 = 0 by omega]
    omega
  have h7 : C (221184 * k + 115262) = 110592 * k + 57631 := by
    unfold C
    simp [show (221184 * k + 115262) % 2 = 0 by omega]
    omega
  have h8 : C (110592 * k + 57631) = 331776 * k + 172894 := by
    unfold C
    simp [show (110592 * k + 57631) % 2 ≠ 0 by omega]
    omega
  have h9 : C (331776 * k + 172894) = 165888 * k + 86447 := by
    unfold C
    simp [show (331776 * k + 172894) % 2 = 0 by omega]
    omega
  have h10 : C (165888 * k + 86447) = 497664 * k + 259342 := by
    unfold C
    simp [show (165888 * k + 86447) % 2 ≠ 0 by omega]
    omega
  have h11 : C (497664 * k + 259342) = 248832 * k + 129671 := by
    unfold C
    simp [show (497664 * k + 259342) % 2 = 0 by omega]
    omega
  have h12 : C (248832 * k + 129671) = 746496 * k + 389014 := by
    unfold C
    simp [show (248832 * k + 129671) % 2 ≠ 0 by omega]
    omega
  have h13 : C (746496 * k + 389014) = 373248 * k + 194507 := by
    unfold C
    simp [show (746496 * k + 389014) % 2 = 0 by omega]
    omega
  have h14 : C (373248 * k + 194507) = 1119744 * k + 583522 := by
    unfold C
    simp [show (373248 * k + 194507) % 2 ≠ 0 by omega]
    omega
  have h15 : C (1119744 * k + 583522) = 559872 * k + 291761 := by
    unfold C
    simp [show (1119744 * k + 583522) % 2 = 0 by omega]
    omega
  have h16 : C (559872 * k + 291761) = 1679616 * k + 875284 := by
    unfold C
    simp [show (559872 * k + 291761) % 2 ≠ 0 by omega]
    omega
  have h17 : C (1679616 * k + 875284) = 839808 * k + 437642 := by
    unfold C
    simp [show (1679616 * k + 875284) % 2 = 0 by omega]
    omega
  have h18 : C (839808 * k + 437642) = 419904 * k + 218821 := by
    unfold C
    simp [show (839808 * k + 437642) % 2 = 0 by omega]
    omega
  have h19 : C (419904 * k + 218821) = 1259712 * k + 656464 := by
    unfold C
    simp [show (419904 * k + 218821) % 2 ≠ 0 by omega]
    omega
  have h20 : C (1259712 * k + 656464) = 629856 * k + 328232 := by
    unfold C
    simp [show (1259712 * k + 656464) % 2 = 0 by omega]
    omega
  have h21 : C (629856 * k + 328232) = 314928 * k + 164116 := by
    unfold C
    simp [show (629856 * k + 328232) % 2 = 0 by omega]
    omega
  have h22 : C (314928 * k + 164116) = 157464 * k + 82058 := by
    unfold C
    simp [show (314928 * k + 164116) % 2 = 0 by omega]
    omega
  have h23 : C (157464 * k + 82058) = 78732 * k + 41029 := by
    unfold C
    simp [show (157464 * k + 82058) % 2 = 0 by omega]
    omega
  have h24 : C (78732 * k + 41029) = 236196 * k + 123088 := by
    unfold C
    simp [show (78732 * k + 41029) % 2 ≠ 0 by omega]
    omega
  have h25 : C (236196 * k + 123088) = 118098 * k + 61544 := by
    unfold C
    simp [show (236196 * k + 123088) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 61544) = 59049 * k + 30772 := by
    unfold C
    simp [show (118098 * k + 61544) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 34151) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 34151)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_34255 : ∀ k : Nat,
    iterate (65536 * k + 34255) 26 = 59049 * k + 30866 ∧
      59049 * k + 30866 < 65536 * k + 34255 := by
  intro k
  have h1 : C (65536 * k + 34255) = 196608 * k + 102766 := by
    unfold C
    simp [show (65536 * k + 34255) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 102766) = 98304 * k + 51383 := by
    unfold C
    simp [show (196608 * k + 102766) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 51383) = 294912 * k + 154150 := by
    unfold C
    simp [show (98304 * k + 51383) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 154150) = 147456 * k + 77075 := by
    unfold C
    simp [show (294912 * k + 154150) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 77075) = 442368 * k + 231226 := by
    unfold C
    simp [show (147456 * k + 77075) % 2 ≠ 0 by omega]
    omega
  have h6 : C (442368 * k + 231226) = 221184 * k + 115613 := by
    unfold C
    simp [show (442368 * k + 231226) % 2 = 0 by omega]
    omega
  have h7 : C (221184 * k + 115613) = 663552 * k + 346840 := by
    unfold C
    simp [show (221184 * k + 115613) % 2 ≠ 0 by omega]
    omega
  have h8 : C (663552 * k + 346840) = 331776 * k + 173420 := by
    unfold C
    simp [show (663552 * k + 346840) % 2 = 0 by omega]
    omega
  have h9 : C (331776 * k + 173420) = 165888 * k + 86710 := by
    unfold C
    simp [show (331776 * k + 173420) % 2 = 0 by omega]
    omega
  have h10 : C (165888 * k + 86710) = 82944 * k + 43355 := by
    unfold C
    simp [show (165888 * k + 86710) % 2 = 0 by omega]
    omega
  have h11 : C (82944 * k + 43355) = 248832 * k + 130066 := by
    unfold C
    simp [show (82944 * k + 43355) % 2 ≠ 0 by omega]
    omega
  have h12 : C (248832 * k + 130066) = 124416 * k + 65033 := by
    unfold C
    simp [show (248832 * k + 130066) % 2 = 0 by omega]
    omega
  have h13 : C (124416 * k + 65033) = 373248 * k + 195100 := by
    unfold C
    simp [show (124416 * k + 65033) % 2 ≠ 0 by omega]
    omega
  have h14 : C (373248 * k + 195100) = 186624 * k + 97550 := by
    unfold C
    simp [show (373248 * k + 195100) % 2 = 0 by omega]
    omega
  have h15 : C (186624 * k + 97550) = 93312 * k + 48775 := by
    unfold C
    simp [show (186624 * k + 97550) % 2 = 0 by omega]
    omega
  have h16 : C (93312 * k + 48775) = 279936 * k + 146326 := by
    unfold C
    simp [show (93312 * k + 48775) % 2 ≠ 0 by omega]
    omega
  have h17 : C (279936 * k + 146326) = 139968 * k + 73163 := by
    unfold C
    simp [show (279936 * k + 146326) % 2 = 0 by omega]
    omega
  have h18 : C (139968 * k + 73163) = 419904 * k + 219490 := by
    unfold C
    simp [show (139968 * k + 73163) % 2 ≠ 0 by omega]
    omega
  have h19 : C (419904 * k + 219490) = 209952 * k + 109745 := by
    unfold C
    simp [show (419904 * k + 219490) % 2 = 0 by omega]
    omega
  have h20 : C (209952 * k + 109745) = 629856 * k + 329236 := by
    unfold C
    simp [show (209952 * k + 109745) % 2 ≠ 0 by omega]
    omega
  have h21 : C (629856 * k + 329236) = 314928 * k + 164618 := by
    unfold C
    simp [show (629856 * k + 329236) % 2 = 0 by omega]
    omega
  have h22 : C (314928 * k + 164618) = 157464 * k + 82309 := by
    unfold C
    simp [show (314928 * k + 164618) % 2 = 0 by omega]
    omega
  have h23 : C (157464 * k + 82309) = 472392 * k + 246928 := by
    unfold C
    simp [show (157464 * k + 82309) % 2 ≠ 0 by omega]
    omega
  have h24 : C (472392 * k + 246928) = 236196 * k + 123464 := by
    unfold C
    simp [show (472392 * k + 246928) % 2 = 0 by omega]
    omega
  have h25 : C (236196 * k + 123464) = 118098 * k + 61732 := by
    unfold C
    simp [show (236196 * k + 123464) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 61732) = 59049 * k + 30866 := by
    unfold C
    simp [show (118098 * k + 61732) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 34255) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 34255)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_34271 : ∀ k : Nat,
    iterate (65536 * k + 34271) 26 = 59049 * k + 30880 ∧
      59049 * k + 30880 < 65536 * k + 34271 := by
  intro k
  have h1 : C (65536 * k + 34271) = 196608 * k + 102814 := by
    unfold C
    simp [show (65536 * k + 34271) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 102814) = 98304 * k + 51407 := by
    unfold C
    simp [show (196608 * k + 102814) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 51407) = 294912 * k + 154222 := by
    unfold C
    simp [show (98304 * k + 51407) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 154222) = 147456 * k + 77111 := by
    unfold C
    simp [show (294912 * k + 154222) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 77111) = 442368 * k + 231334 := by
    unfold C
    simp [show (147456 * k + 77111) % 2 ≠ 0 by omega]
    omega
  have h6 : C (442368 * k + 231334) = 221184 * k + 115667 := by
    unfold C
    simp [show (442368 * k + 231334) % 2 = 0 by omega]
    omega
  have h7 : C (221184 * k + 115667) = 663552 * k + 347002 := by
    unfold C
    simp [show (221184 * k + 115667) % 2 ≠ 0 by omega]
    omega
  have h8 : C (663552 * k + 347002) = 331776 * k + 173501 := by
    unfold C
    simp [show (663552 * k + 347002) % 2 = 0 by omega]
    omega
  have h9 : C (331776 * k + 173501) = 995328 * k + 520504 := by
    unfold C
    simp [show (331776 * k + 173501) % 2 ≠ 0 by omega]
    omega
  have h10 : C (995328 * k + 520504) = 497664 * k + 260252 := by
    unfold C
    simp [show (995328 * k + 520504) % 2 = 0 by omega]
    omega
  have h11 : C (497664 * k + 260252) = 248832 * k + 130126 := by
    unfold C
    simp [show (497664 * k + 260252) % 2 = 0 by omega]
    omega
  have h12 : C (248832 * k + 130126) = 124416 * k + 65063 := by
    unfold C
    simp [show (248832 * k + 130126) % 2 = 0 by omega]
    omega
  have h13 : C (124416 * k + 65063) = 373248 * k + 195190 := by
    unfold C
    simp [show (124416 * k + 65063) % 2 ≠ 0 by omega]
    omega
  have h14 : C (373248 * k + 195190) = 186624 * k + 97595 := by
    unfold C
    simp [show (373248 * k + 195190) % 2 = 0 by omega]
    omega
  have h15 : C (186624 * k + 97595) = 559872 * k + 292786 := by
    unfold C
    simp [show (186624 * k + 97595) % 2 ≠ 0 by omega]
    omega
  have h16 : C (559872 * k + 292786) = 279936 * k + 146393 := by
    unfold C
    simp [show (559872 * k + 292786) % 2 = 0 by omega]
    omega
  have h17 : C (279936 * k + 146393) = 839808 * k + 439180 := by
    unfold C
    simp [show (279936 * k + 146393) % 2 ≠ 0 by omega]
    omega
  have h18 : C (839808 * k + 439180) = 419904 * k + 219590 := by
    unfold C
    simp [show (839808 * k + 439180) % 2 = 0 by omega]
    omega
  have h19 : C (419904 * k + 219590) = 209952 * k + 109795 := by
    unfold C
    simp [show (419904 * k + 219590) % 2 = 0 by omega]
    omega
  have h20 : C (209952 * k + 109795) = 629856 * k + 329386 := by
    unfold C
    simp [show (209952 * k + 109795) % 2 ≠ 0 by omega]
    omega
  have h21 : C (629856 * k + 329386) = 314928 * k + 164693 := by
    unfold C
    simp [show (629856 * k + 329386) % 2 = 0 by omega]
    omega
  have h22 : C (314928 * k + 164693) = 944784 * k + 494080 := by
    unfold C
    simp [show (314928 * k + 164693) % 2 ≠ 0 by omega]
    omega
  have h23 : C (944784 * k + 494080) = 472392 * k + 247040 := by
    unfold C
    simp [show (944784 * k + 494080) % 2 = 0 by omega]
    omega
  have h24 : C (472392 * k + 247040) = 236196 * k + 123520 := by
    unfold C
    simp [show (472392 * k + 247040) % 2 = 0 by omega]
    omega
  have h25 : C (236196 * k + 123520) = 118098 * k + 61760 := by
    unfold C
    simp [show (236196 * k + 123520) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 61760) = 59049 * k + 30880 := by
    unfold C
    simp [show (118098 * k + 61760) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 34271) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 34271)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_34535 : ∀ k : Nat,
    iterate (65536 * k + 34535) 26 = 59049 * k + 31118 ∧
      59049 * k + 31118 < 65536 * k + 34535 := by
  intro k
  have h1 : C (65536 * k + 34535) = 196608 * k + 103606 := by
    unfold C
    simp [show (65536 * k + 34535) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 103606) = 98304 * k + 51803 := by
    unfold C
    simp [show (196608 * k + 103606) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 51803) = 294912 * k + 155410 := by
    unfold C
    simp [show (98304 * k + 51803) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 155410) = 147456 * k + 77705 := by
    unfold C
    simp [show (294912 * k + 155410) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 77705) = 442368 * k + 233116 := by
    unfold C
    simp [show (147456 * k + 77705) % 2 ≠ 0 by omega]
    omega
  have h6 : C (442368 * k + 233116) = 221184 * k + 116558 := by
    unfold C
    simp [show (442368 * k + 233116) % 2 = 0 by omega]
    omega
  have h7 : C (221184 * k + 116558) = 110592 * k + 58279 := by
    unfold C
    simp [show (221184 * k + 116558) % 2 = 0 by omega]
    omega
  have h8 : C (110592 * k + 58279) = 331776 * k + 174838 := by
    unfold C
    simp [show (110592 * k + 58279) % 2 ≠ 0 by omega]
    omega
  have h9 : C (331776 * k + 174838) = 165888 * k + 87419 := by
    unfold C
    simp [show (331776 * k + 174838) % 2 = 0 by omega]
    omega
  have h10 : C (165888 * k + 87419) = 497664 * k + 262258 := by
    unfold C
    simp [show (165888 * k + 87419) % 2 ≠ 0 by omega]
    omega
  have h11 : C (497664 * k + 262258) = 248832 * k + 131129 := by
    unfold C
    simp [show (497664 * k + 262258) % 2 = 0 by omega]
    omega
  have h12 : C (248832 * k + 131129) = 746496 * k + 393388 := by
    unfold C
    simp [show (248832 * k + 131129) % 2 ≠ 0 by omega]
    omega
  have h13 : C (746496 * k + 393388) = 373248 * k + 196694 := by
    unfold C
    simp [show (746496 * k + 393388) % 2 = 0 by omega]
    omega
  have h14 : C (373248 * k + 196694) = 186624 * k + 98347 := by
    unfold C
    simp [show (373248 * k + 196694) % 2 = 0 by omega]
    omega
  have h15 : C (186624 * k + 98347) = 559872 * k + 295042 := by
    unfold C
    simp [show (186624 * k + 98347) % 2 ≠ 0 by omega]
    omega
  have h16 : C (559872 * k + 295042) = 279936 * k + 147521 := by
    unfold C
    simp [show (559872 * k + 295042) % 2 = 0 by omega]
    omega
  have h17 : C (279936 * k + 147521) = 839808 * k + 442564 := by
    unfold C
    simp [show (279936 * k + 147521) % 2 ≠ 0 by omega]
    omega
  have h18 : C (839808 * k + 442564) = 419904 * k + 221282 := by
    unfold C
    simp [show (839808 * k + 442564) % 2 = 0 by omega]
    omega
  have h19 : C (419904 * k + 221282) = 209952 * k + 110641 := by
    unfold C
    simp [show (419904 * k + 221282) % 2 = 0 by omega]
    omega
  have h20 : C (209952 * k + 110641) = 629856 * k + 331924 := by
    unfold C
    simp [show (209952 * k + 110641) % 2 ≠ 0 by omega]
    omega
  have h21 : C (629856 * k + 331924) = 314928 * k + 165962 := by
    unfold C
    simp [show (629856 * k + 331924) % 2 = 0 by omega]
    omega
  have h22 : C (314928 * k + 165962) = 157464 * k + 82981 := by
    unfold C
    simp [show (314928 * k + 165962) % 2 = 0 by omega]
    omega
  have h23 : C (157464 * k + 82981) = 472392 * k + 248944 := by
    unfold C
    simp [show (157464 * k + 82981) % 2 ≠ 0 by omega]
    omega
  have h24 : C (472392 * k + 248944) = 236196 * k + 124472 := by
    unfold C
    simp [show (472392 * k + 248944) % 2 = 0 by omega]
    omega
  have h25 : C (236196 * k + 124472) = 118098 * k + 62236 := by
    unfold C
    simp [show (236196 * k + 124472) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 62236) = 59049 * k + 31118 := by
    unfold C
    simp [show (118098 * k + 62236) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 34535) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 34535)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_34631 : ∀ k : Nat,
    iterate (65536 * k + 34631) 26 = 59049 * k + 31205 ∧
      59049 * k + 31205 < 65536 * k + 34631 := by
  intro k
  have h1 : C (65536 * k + 34631) = 196608 * k + 103894 := by
    unfold C
    simp [show (65536 * k + 34631) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 103894) = 98304 * k + 51947 := by
    unfold C
    simp [show (196608 * k + 103894) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 51947) = 294912 * k + 155842 := by
    unfold C
    simp [show (98304 * k + 51947) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 155842) = 147456 * k + 77921 := by
    unfold C
    simp [show (294912 * k + 155842) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 77921) = 442368 * k + 233764 := by
    unfold C
    simp [show (147456 * k + 77921) % 2 ≠ 0 by omega]
    omega
  have h6 : C (442368 * k + 233764) = 221184 * k + 116882 := by
    unfold C
    simp [show (442368 * k + 233764) % 2 = 0 by omega]
    omega
  have h7 : C (221184 * k + 116882) = 110592 * k + 58441 := by
    unfold C
    simp [show (221184 * k + 116882) % 2 = 0 by omega]
    omega
  have h8 : C (110592 * k + 58441) = 331776 * k + 175324 := by
    unfold C
    simp [show (110592 * k + 58441) % 2 ≠ 0 by omega]
    omega
  have h9 : C (331776 * k + 175324) = 165888 * k + 87662 := by
    unfold C
    simp [show (331776 * k + 175324) % 2 = 0 by omega]
    omega
  have h10 : C (165888 * k + 87662) = 82944 * k + 43831 := by
    unfold C
    simp [show (165888 * k + 87662) % 2 = 0 by omega]
    omega
  have h11 : C (82944 * k + 43831) = 248832 * k + 131494 := by
    unfold C
    simp [show (82944 * k + 43831) % 2 ≠ 0 by omega]
    omega
  have h12 : C (248832 * k + 131494) = 124416 * k + 65747 := by
    unfold C
    simp [show (248832 * k + 131494) % 2 = 0 by omega]
    omega
  have h13 : C (124416 * k + 65747) = 373248 * k + 197242 := by
    unfold C
    simp [show (124416 * k + 65747) % 2 ≠ 0 by omega]
    omega
  have h14 : C (373248 * k + 197242) = 186624 * k + 98621 := by
    unfold C
    simp [show (373248 * k + 197242) % 2 = 0 by omega]
    omega
  have h15 : C (186624 * k + 98621) = 559872 * k + 295864 := by
    unfold C
    simp [show (186624 * k + 98621) % 2 ≠ 0 by omega]
    omega
  have h16 : C (559872 * k + 295864) = 279936 * k + 147932 := by
    unfold C
    simp [show (559872 * k + 295864) % 2 = 0 by omega]
    omega
  have h17 : C (279936 * k + 147932) = 139968 * k + 73966 := by
    unfold C
    simp [show (279936 * k + 147932) % 2 = 0 by omega]
    omega
  have h18 : C (139968 * k + 73966) = 69984 * k + 36983 := by
    unfold C
    simp [show (139968 * k + 73966) % 2 = 0 by omega]
    omega
  have h19 : C (69984 * k + 36983) = 209952 * k + 110950 := by
    unfold C
    simp [show (69984 * k + 36983) % 2 ≠ 0 by omega]
    omega
  have h20 : C (209952 * k + 110950) = 104976 * k + 55475 := by
    unfold C
    simp [show (209952 * k + 110950) % 2 = 0 by omega]
    omega
  have h21 : C (104976 * k + 55475) = 314928 * k + 166426 := by
    unfold C
    simp [show (104976 * k + 55475) % 2 ≠ 0 by omega]
    omega
  have h22 : C (314928 * k + 166426) = 157464 * k + 83213 := by
    unfold C
    simp [show (314928 * k + 166426) % 2 = 0 by omega]
    omega
  have h23 : C (157464 * k + 83213) = 472392 * k + 249640 := by
    unfold C
    simp [show (157464 * k + 83213) % 2 ≠ 0 by omega]
    omega
  have h24 : C (472392 * k + 249640) = 236196 * k + 124820 := by
    unfold C
    simp [show (472392 * k + 249640) % 2 = 0 by omega]
    omega
  have h25 : C (236196 * k + 124820) = 118098 * k + 62410 := by
    unfold C
    simp [show (236196 * k + 124820) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 62410) = 59049 * k + 31205 := by
    unfold C
    simp [show (118098 * k + 62410) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 34631) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 34631)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_34651 : ∀ k : Nat,
    iterate (65536 * k + 34651) 26 = 59049 * k + 31223 ∧
      59049 * k + 31223 < 65536 * k + 34651 := by
  intro k
  have h1 : C (65536 * k + 34651) = 196608 * k + 103954 := by
    unfold C
    simp [show (65536 * k + 34651) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 103954) = 98304 * k + 51977 := by
    unfold C
    simp [show (196608 * k + 103954) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 51977) = 294912 * k + 155932 := by
    unfold C
    simp [show (98304 * k + 51977) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 155932) = 147456 * k + 77966 := by
    unfold C
    simp [show (294912 * k + 155932) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 77966) = 73728 * k + 38983 := by
    unfold C
    simp [show (147456 * k + 77966) % 2 = 0 by omega]
    omega
  have h6 : C (73728 * k + 38983) = 221184 * k + 116950 := by
    unfold C
    simp [show (73728 * k + 38983) % 2 ≠ 0 by omega]
    omega
  have h7 : C (221184 * k + 116950) = 110592 * k + 58475 := by
    unfold C
    simp [show (221184 * k + 116950) % 2 = 0 by omega]
    omega
  have h8 : C (110592 * k + 58475) = 331776 * k + 175426 := by
    unfold C
    simp [show (110592 * k + 58475) % 2 ≠ 0 by omega]
    omega
  have h9 : C (331776 * k + 175426) = 165888 * k + 87713 := by
    unfold C
    simp [show (331776 * k + 175426) % 2 = 0 by omega]
    omega
  have h10 : C (165888 * k + 87713) = 497664 * k + 263140 := by
    unfold C
    simp [show (165888 * k + 87713) % 2 ≠ 0 by omega]
    omega
  have h11 : C (497664 * k + 263140) = 248832 * k + 131570 := by
    unfold C
    simp [show (497664 * k + 263140) % 2 = 0 by omega]
    omega
  have h12 : C (248832 * k + 131570) = 124416 * k + 65785 := by
    unfold C
    simp [show (248832 * k + 131570) % 2 = 0 by omega]
    omega
  have h13 : C (124416 * k + 65785) = 373248 * k + 197356 := by
    unfold C
    simp [show (124416 * k + 65785) % 2 ≠ 0 by omega]
    omega
  have h14 : C (373248 * k + 197356) = 186624 * k + 98678 := by
    unfold C
    simp [show (373248 * k + 197356) % 2 = 0 by omega]
    omega
  have h15 : C (186624 * k + 98678) = 93312 * k + 49339 := by
    unfold C
    simp [show (186624 * k + 98678) % 2 = 0 by omega]
    omega
  have h16 : C (93312 * k + 49339) = 279936 * k + 148018 := by
    unfold C
    simp [show (93312 * k + 49339) % 2 ≠ 0 by omega]
    omega
  have h17 : C (279936 * k + 148018) = 139968 * k + 74009 := by
    unfold C
    simp [show (279936 * k + 148018) % 2 = 0 by omega]
    omega
  have h18 : C (139968 * k + 74009) = 419904 * k + 222028 := by
    unfold C
    simp [show (139968 * k + 74009) % 2 ≠ 0 by omega]
    omega
  have h19 : C (419904 * k + 222028) = 209952 * k + 111014 := by
    unfold C
    simp [show (419904 * k + 222028) % 2 = 0 by omega]
    omega
  have h20 : C (209952 * k + 111014) = 104976 * k + 55507 := by
    unfold C
    simp [show (209952 * k + 111014) % 2 = 0 by omega]
    omega
  have h21 : C (104976 * k + 55507) = 314928 * k + 166522 := by
    unfold C
    simp [show (104976 * k + 55507) % 2 ≠ 0 by omega]
    omega
  have h22 : C (314928 * k + 166522) = 157464 * k + 83261 := by
    unfold C
    simp [show (314928 * k + 166522) % 2 = 0 by omega]
    omega
  have h23 : C (157464 * k + 83261) = 472392 * k + 249784 := by
    unfold C
    simp [show (157464 * k + 83261) % 2 ≠ 0 by omega]
    omega
  have h24 : C (472392 * k + 249784) = 236196 * k + 124892 := by
    unfold C
    simp [show (472392 * k + 249784) % 2 = 0 by omega]
    omega
  have h25 : C (236196 * k + 124892) = 118098 * k + 62446 := by
    unfold C
    simp [show (236196 * k + 124892) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 62446) = 59049 * k + 31223 := by
    unfold C
    simp [show (118098 * k + 62446) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 34651) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 34651)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_34927 : ∀ k : Nat,
    iterate (65536 * k + 34927) 26 = 59049 * k + 31471 ∧
      59049 * k + 31471 < 65536 * k + 34927 := by
  intro k
  have h1 : C (65536 * k + 34927) = 196608 * k + 104782 := by
    unfold C
    simp [show (65536 * k + 34927) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 104782) = 98304 * k + 52391 := by
    unfold C
    simp [show (196608 * k + 104782) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 52391) = 294912 * k + 157174 := by
    unfold C
    simp [show (98304 * k + 52391) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 157174) = 147456 * k + 78587 := by
    unfold C
    simp [show (294912 * k + 157174) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 78587) = 442368 * k + 235762 := by
    unfold C
    simp [show (147456 * k + 78587) % 2 ≠ 0 by omega]
    omega
  have h6 : C (442368 * k + 235762) = 221184 * k + 117881 := by
    unfold C
    simp [show (442368 * k + 235762) % 2 = 0 by omega]
    omega
  have h7 : C (221184 * k + 117881) = 663552 * k + 353644 := by
    unfold C
    simp [show (221184 * k + 117881) % 2 ≠ 0 by omega]
    omega
  have h8 : C (663552 * k + 353644) = 331776 * k + 176822 := by
    unfold C
    simp [show (663552 * k + 353644) % 2 = 0 by omega]
    omega
  have h9 : C (331776 * k + 176822) = 165888 * k + 88411 := by
    unfold C
    simp [show (331776 * k + 176822) % 2 = 0 by omega]
    omega
  have h10 : C (165888 * k + 88411) = 497664 * k + 265234 := by
    unfold C
    simp [show (165888 * k + 88411) % 2 ≠ 0 by omega]
    omega
  have h11 : C (497664 * k + 265234) = 248832 * k + 132617 := by
    unfold C
    simp [show (497664 * k + 265234) % 2 = 0 by omega]
    omega
  have h12 : C (248832 * k + 132617) = 746496 * k + 397852 := by
    unfold C
    simp [show (248832 * k + 132617) % 2 ≠ 0 by omega]
    omega
  have h13 : C (746496 * k + 397852) = 373248 * k + 198926 := by
    unfold C
    simp [show (746496 * k + 397852) % 2 = 0 by omega]
    omega
  have h14 : C (373248 * k + 198926) = 186624 * k + 99463 := by
    unfold C
    simp [show (373248 * k + 198926) % 2 = 0 by omega]
    omega
  have h15 : C (186624 * k + 99463) = 559872 * k + 298390 := by
    unfold C
    simp [show (186624 * k + 99463) % 2 ≠ 0 by omega]
    omega
  have h16 : C (559872 * k + 298390) = 279936 * k + 149195 := by
    unfold C
    simp [show (559872 * k + 298390) % 2 = 0 by omega]
    omega
  have h17 : C (279936 * k + 149195) = 839808 * k + 447586 := by
    unfold C
    simp [show (279936 * k + 149195) % 2 ≠ 0 by omega]
    omega
  have h18 : C (839808 * k + 447586) = 419904 * k + 223793 := by
    unfold C
    simp [show (839808 * k + 447586) % 2 = 0 by omega]
    omega
  have h19 : C (419904 * k + 223793) = 1259712 * k + 671380 := by
    unfold C
    simp [show (419904 * k + 223793) % 2 ≠ 0 by omega]
    omega
  have h20 : C (1259712 * k + 671380) = 629856 * k + 335690 := by
    unfold C
    simp [show (1259712 * k + 671380) % 2 = 0 by omega]
    omega
  have h21 : C (629856 * k + 335690) = 314928 * k + 167845 := by
    unfold C
    simp [show (629856 * k + 335690) % 2 = 0 by omega]
    omega
  have h22 : C (314928 * k + 167845) = 944784 * k + 503536 := by
    unfold C
    simp [show (314928 * k + 167845) % 2 ≠ 0 by omega]
    omega
  have h23 : C (944784 * k + 503536) = 472392 * k + 251768 := by
    unfold C
    simp [show (944784 * k + 503536) % 2 = 0 by omega]
    omega
  have h24 : C (472392 * k + 251768) = 236196 * k + 125884 := by
    unfold C
    simp [show (472392 * k + 251768) % 2 = 0 by omega]
    omega
  have h25 : C (236196 * k + 125884) = 118098 * k + 62942 := by
    unfold C
    simp [show (236196 * k + 125884) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 62942) = 59049 * k + 31471 := by
    unfold C
    simp [show (118098 * k + 62942) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 34927) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 34927)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_35023 : ∀ k : Nat,
    iterate (65536 * k + 35023) 26 = 59049 * k + 31558 ∧
      59049 * k + 31558 < 65536 * k + 35023 := by
  intro k
  have h1 : C (65536 * k + 35023) = 196608 * k + 105070 := by
    unfold C
    simp [show (65536 * k + 35023) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 105070) = 98304 * k + 52535 := by
    unfold C
    simp [show (196608 * k + 105070) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 52535) = 294912 * k + 157606 := by
    unfold C
    simp [show (98304 * k + 52535) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 157606) = 147456 * k + 78803 := by
    unfold C
    simp [show (294912 * k + 157606) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 78803) = 442368 * k + 236410 := by
    unfold C
    simp [show (147456 * k + 78803) % 2 ≠ 0 by omega]
    omega
  have h6 : C (442368 * k + 236410) = 221184 * k + 118205 := by
    unfold C
    simp [show (442368 * k + 236410) % 2 = 0 by omega]
    omega
  have h7 : C (221184 * k + 118205) = 663552 * k + 354616 := by
    unfold C
    simp [show (221184 * k + 118205) % 2 ≠ 0 by omega]
    omega
  have h8 : C (663552 * k + 354616) = 331776 * k + 177308 := by
    unfold C
    simp [show (663552 * k + 354616) % 2 = 0 by omega]
    omega
  have h9 : C (331776 * k + 177308) = 165888 * k + 88654 := by
    unfold C
    simp [show (331776 * k + 177308) % 2 = 0 by omega]
    omega
  have h10 : C (165888 * k + 88654) = 82944 * k + 44327 := by
    unfold C
    simp [show (165888 * k + 88654) % 2 = 0 by omega]
    omega
  have h11 : C (82944 * k + 44327) = 248832 * k + 132982 := by
    unfold C
    simp [show (82944 * k + 44327) % 2 ≠ 0 by omega]
    omega
  have h12 : C (248832 * k + 132982) = 124416 * k + 66491 := by
    unfold C
    simp [show (248832 * k + 132982) % 2 = 0 by omega]
    omega
  have h13 : C (124416 * k + 66491) = 373248 * k + 199474 := by
    unfold C
    simp [show (124416 * k + 66491) % 2 ≠ 0 by omega]
    omega
  have h14 : C (373248 * k + 199474) = 186624 * k + 99737 := by
    unfold C
    simp [show (373248 * k + 199474) % 2 = 0 by omega]
    omega
  have h15 : C (186624 * k + 99737) = 559872 * k + 299212 := by
    unfold C
    simp [show (186624 * k + 99737) % 2 ≠ 0 by omega]
    omega
  have h16 : C (559872 * k + 299212) = 279936 * k + 149606 := by
    unfold C
    simp [show (559872 * k + 299212) % 2 = 0 by omega]
    omega
  have h17 : C (279936 * k + 149606) = 139968 * k + 74803 := by
    unfold C
    simp [show (279936 * k + 149606) % 2 = 0 by omega]
    omega
  have h18 : C (139968 * k + 74803) = 419904 * k + 224410 := by
    unfold C
    simp [show (139968 * k + 74803) % 2 ≠ 0 by omega]
    omega
  have h19 : C (419904 * k + 224410) = 209952 * k + 112205 := by
    unfold C
    simp [show (419904 * k + 224410) % 2 = 0 by omega]
    omega
  have h20 : C (209952 * k + 112205) = 629856 * k + 336616 := by
    unfold C
    simp [show (209952 * k + 112205) % 2 ≠ 0 by omega]
    omega
  have h21 : C (629856 * k + 336616) = 314928 * k + 168308 := by
    unfold C
    simp [show (629856 * k + 336616) % 2 = 0 by omega]
    omega
  have h22 : C (314928 * k + 168308) = 157464 * k + 84154 := by
    unfold C
    simp [show (314928 * k + 168308) % 2 = 0 by omega]
    omega
  have h23 : C (157464 * k + 84154) = 78732 * k + 42077 := by
    unfold C
    simp [show (157464 * k + 84154) % 2 = 0 by omega]
    omega
  have h24 : C (78732 * k + 42077) = 236196 * k + 126232 := by
    unfold C
    simp [show (78732 * k + 42077) % 2 ≠ 0 by omega]
    omega
  have h25 : C (236196 * k + 126232) = 118098 * k + 63116 := by
    unfold C
    simp [show (236196 * k + 126232) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 63116) = 59049 * k + 31558 := by
    unfold C
    simp [show (118098 * k + 63116) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 35023) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 35023)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_35231 : ∀ k : Nat,
    iterate (65536 * k + 35231) 26 = 59049 * k + 31745 ∧
      59049 * k + 31745 < 65536 * k + 35231 := by
  intro k
  have h1 : C (65536 * k + 35231) = 196608 * k + 105694 := by
    unfold C
    simp [show (65536 * k + 35231) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 105694) = 98304 * k + 52847 := by
    unfold C
    simp [show (196608 * k + 105694) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 52847) = 294912 * k + 158542 := by
    unfold C
    simp [show (98304 * k + 52847) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 158542) = 147456 * k + 79271 := by
    unfold C
    simp [show (294912 * k + 158542) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 79271) = 442368 * k + 237814 := by
    unfold C
    simp [show (147456 * k + 79271) % 2 ≠ 0 by omega]
    omega
  have h6 : C (442368 * k + 237814) = 221184 * k + 118907 := by
    unfold C
    simp [show (442368 * k + 237814) % 2 = 0 by omega]
    omega
  have h7 : C (221184 * k + 118907) = 663552 * k + 356722 := by
    unfold C
    simp [show (221184 * k + 118907) % 2 ≠ 0 by omega]
    omega
  have h8 : C (663552 * k + 356722) = 331776 * k + 178361 := by
    unfold C
    simp [show (663552 * k + 356722) % 2 = 0 by omega]
    omega
  have h9 : C (331776 * k + 178361) = 995328 * k + 535084 := by
    unfold C
    simp [show (331776 * k + 178361) % 2 ≠ 0 by omega]
    omega
  have h10 : C (995328 * k + 535084) = 497664 * k + 267542 := by
    unfold C
    simp [show (995328 * k + 535084) % 2 = 0 by omega]
    omega
  have h11 : C (497664 * k + 267542) = 248832 * k + 133771 := by
    unfold C
    simp [show (497664 * k + 267542) % 2 = 0 by omega]
    omega
  have h12 : C (248832 * k + 133771) = 746496 * k + 401314 := by
    unfold C
    simp [show (248832 * k + 133771) % 2 ≠ 0 by omega]
    omega
  have h13 : C (746496 * k + 401314) = 373248 * k + 200657 := by
    unfold C
    simp [show (746496 * k + 401314) % 2 = 0 by omega]
    omega
  have h14 : C (373248 * k + 200657) = 1119744 * k + 601972 := by
    unfold C
    simp [show (373248 * k + 200657) % 2 ≠ 0 by omega]
    omega
  have h15 : C (1119744 * k + 601972) = 559872 * k + 300986 := by
    unfold C
    simp [show (1119744 * k + 601972) % 2 = 0 by omega]
    omega
  have h16 : C (559872 * k + 300986) = 279936 * k + 150493 := by
    unfold C
    simp [show (559872 * k + 300986) % 2 = 0 by omega]
    omega
  have h17 : C (279936 * k + 150493) = 839808 * k + 451480 := by
    unfold C
    simp [show (279936 * k + 150493) % 2 ≠ 0 by omega]
    omega
  have h18 : C (839808 * k + 451480) = 419904 * k + 225740 := by
    unfold C
    simp [show (839808 * k + 451480) % 2 = 0 by omega]
    omega
  have h19 : C (419904 * k + 225740) = 209952 * k + 112870 := by
    unfold C
    simp [show (419904 * k + 225740) % 2 = 0 by omega]
    omega
  have h20 : C (209952 * k + 112870) = 104976 * k + 56435 := by
    unfold C
    simp [show (209952 * k + 112870) % 2 = 0 by omega]
    omega
  have h21 : C (104976 * k + 56435) = 314928 * k + 169306 := by
    unfold C
    simp [show (104976 * k + 56435) % 2 ≠ 0 by omega]
    omega
  have h22 : C (314928 * k + 169306) = 157464 * k + 84653 := by
    unfold C
    simp [show (314928 * k + 169306) % 2 = 0 by omega]
    omega
  have h23 : C (157464 * k + 84653) = 472392 * k + 253960 := by
    unfold C
    simp [show (157464 * k + 84653) % 2 ≠ 0 by omega]
    omega
  have h24 : C (472392 * k + 253960) = 236196 * k + 126980 := by
    unfold C
    simp [show (472392 * k + 253960) % 2 = 0 by omega]
    omega
  have h25 : C (236196 * k + 126980) = 118098 * k + 63490 := by
    unfold C
    simp [show (236196 * k + 126980) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 63490) = 59049 * k + 31745 := by
    unfold C
    simp [show (118098 * k + 63490) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 35231) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 35231)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_35279 : ∀ k : Nat,
    iterate (65536 * k + 35279) 26 = 59049 * k + 31789 ∧
      59049 * k + 31789 < 65536 * k + 35279 := by
  intro k
  have h1 : C (65536 * k + 35279) = 196608 * k + 105838 := by
    unfold C
    simp [show (65536 * k + 35279) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 105838) = 98304 * k + 52919 := by
    unfold C
    simp [show (196608 * k + 105838) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 52919) = 294912 * k + 158758 := by
    unfold C
    simp [show (98304 * k + 52919) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 158758) = 147456 * k + 79379 := by
    unfold C
    simp [show (294912 * k + 158758) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 79379) = 442368 * k + 238138 := by
    unfold C
    simp [show (147456 * k + 79379) % 2 ≠ 0 by omega]
    omega
  have h6 : C (442368 * k + 238138) = 221184 * k + 119069 := by
    unfold C
    simp [show (442368 * k + 238138) % 2 = 0 by omega]
    omega
  have h7 : C (221184 * k + 119069) = 663552 * k + 357208 := by
    unfold C
    simp [show (221184 * k + 119069) % 2 ≠ 0 by omega]
    omega
  have h8 : C (663552 * k + 357208) = 331776 * k + 178604 := by
    unfold C
    simp [show (663552 * k + 357208) % 2 = 0 by omega]
    omega
  have h9 : C (331776 * k + 178604) = 165888 * k + 89302 := by
    unfold C
    simp [show (331776 * k + 178604) % 2 = 0 by omega]
    omega
  have h10 : C (165888 * k + 89302) = 82944 * k + 44651 := by
    unfold C
    simp [show (165888 * k + 89302) % 2 = 0 by omega]
    omega
  have h11 : C (82944 * k + 44651) = 248832 * k + 133954 := by
    unfold C
    simp [show (82944 * k + 44651) % 2 ≠ 0 by omega]
    omega
  have h12 : C (248832 * k + 133954) = 124416 * k + 66977 := by
    unfold C
    simp [show (248832 * k + 133954) % 2 = 0 by omega]
    omega
  have h13 : C (124416 * k + 66977) = 373248 * k + 200932 := by
    unfold C
    simp [show (124416 * k + 66977) % 2 ≠ 0 by omega]
    omega
  have h14 : C (373248 * k + 200932) = 186624 * k + 100466 := by
    unfold C
    simp [show (373248 * k + 200932) % 2 = 0 by omega]
    omega
  have h15 : C (186624 * k + 100466) = 93312 * k + 50233 := by
    unfold C
    simp [show (186624 * k + 100466) % 2 = 0 by omega]
    omega
  have h16 : C (93312 * k + 50233) = 279936 * k + 150700 := by
    unfold C
    simp [show (93312 * k + 50233) % 2 ≠ 0 by omega]
    omega
  have h17 : C (279936 * k + 150700) = 139968 * k + 75350 := by
    unfold C
    simp [show (279936 * k + 150700) % 2 = 0 by omega]
    omega
  have h18 : C (139968 * k + 75350) = 69984 * k + 37675 := by
    unfold C
    simp [show (139968 * k + 75350) % 2 = 0 by omega]
    omega
  have h19 : C (69984 * k + 37675) = 209952 * k + 113026 := by
    unfold C
    simp [show (69984 * k + 37675) % 2 ≠ 0 by omega]
    omega
  have h20 : C (209952 * k + 113026) = 104976 * k + 56513 := by
    unfold C
    simp [show (209952 * k + 113026) % 2 = 0 by omega]
    omega
  have h21 : C (104976 * k + 56513) = 314928 * k + 169540 := by
    unfold C
    simp [show (104976 * k + 56513) % 2 ≠ 0 by omega]
    omega
  have h22 : C (314928 * k + 169540) = 157464 * k + 84770 := by
    unfold C
    simp [show (314928 * k + 169540) % 2 = 0 by omega]
    omega
  have h23 : C (157464 * k + 84770) = 78732 * k + 42385 := by
    unfold C
    simp [show (157464 * k + 84770) % 2 = 0 by omega]
    omega
  have h24 : C (78732 * k + 42385) = 236196 * k + 127156 := by
    unfold C
    simp [show (78732 * k + 42385) % 2 ≠ 0 by omega]
    omega
  have h25 : C (236196 * k + 127156) = 118098 * k + 63578 := by
    unfold C
    simp [show (236196 * k + 127156) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 63578) = 59049 * k + 31789 := by
    unfold C
    simp [show (118098 * k + 63578) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 35279) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 35279)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_35311 : ∀ k : Nat,
    iterate (65536 * k + 35311) 26 = 59049 * k + 31817 ∧
      59049 * k + 31817 < 65536 * k + 35311 := by
  intro k
  have h1 : C (65536 * k + 35311) = 196608 * k + 105934 := by
    unfold C
    simp [show (65536 * k + 35311) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 105934) = 98304 * k + 52967 := by
    unfold C
    simp [show (196608 * k + 105934) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 52967) = 294912 * k + 158902 := by
    unfold C
    simp [show (98304 * k + 52967) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 158902) = 147456 * k + 79451 := by
    unfold C
    simp [show (294912 * k + 158902) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 79451) = 442368 * k + 238354 := by
    unfold C
    simp [show (147456 * k + 79451) % 2 ≠ 0 by omega]
    omega
  have h6 : C (442368 * k + 238354) = 221184 * k + 119177 := by
    unfold C
    simp [show (442368 * k + 238354) % 2 = 0 by omega]
    omega
  have h7 : C (221184 * k + 119177) = 663552 * k + 357532 := by
    unfold C
    simp [show (221184 * k + 119177) % 2 ≠ 0 by omega]
    omega
  have h8 : C (663552 * k + 357532) = 331776 * k + 178766 := by
    unfold C
    simp [show (663552 * k + 357532) % 2 = 0 by omega]
    omega
  have h9 : C (331776 * k + 178766) = 165888 * k + 89383 := by
    unfold C
    simp [show (331776 * k + 178766) % 2 = 0 by omega]
    omega
  have h10 : C (165888 * k + 89383) = 497664 * k + 268150 := by
    unfold C
    simp [show (165888 * k + 89383) % 2 ≠ 0 by omega]
    omega
  have h11 : C (497664 * k + 268150) = 248832 * k + 134075 := by
    unfold C
    simp [show (497664 * k + 268150) % 2 = 0 by omega]
    omega
  have h12 : C (248832 * k + 134075) = 746496 * k + 402226 := by
    unfold C
    simp [show (248832 * k + 134075) % 2 ≠ 0 by omega]
    omega
  have h13 : C (746496 * k + 402226) = 373248 * k + 201113 := by
    unfold C
    simp [show (746496 * k + 402226) % 2 = 0 by omega]
    omega
  have h14 : C (373248 * k + 201113) = 1119744 * k + 603340 := by
    unfold C
    simp [show (373248 * k + 201113) % 2 ≠ 0 by omega]
    omega
  have h15 : C (1119744 * k + 603340) = 559872 * k + 301670 := by
    unfold C
    simp [show (1119744 * k + 603340) % 2 = 0 by omega]
    omega
  have h16 : C (559872 * k + 301670) = 279936 * k + 150835 := by
    unfold C
    simp [show (559872 * k + 301670) % 2 = 0 by omega]
    omega
  have h17 : C (279936 * k + 150835) = 839808 * k + 452506 := by
    unfold C
    simp [show (279936 * k + 150835) % 2 ≠ 0 by omega]
    omega
  have h18 : C (839808 * k + 452506) = 419904 * k + 226253 := by
    unfold C
    simp [show (839808 * k + 452506) % 2 = 0 by omega]
    omega
  have h19 : C (419904 * k + 226253) = 1259712 * k + 678760 := by
    unfold C
    simp [show (419904 * k + 226253) % 2 ≠ 0 by omega]
    omega
  have h20 : C (1259712 * k + 678760) = 629856 * k + 339380 := by
    unfold C
    simp [show (1259712 * k + 678760) % 2 = 0 by omega]
    omega
  have h21 : C (629856 * k + 339380) = 314928 * k + 169690 := by
    unfold C
    simp [show (629856 * k + 339380) % 2 = 0 by omega]
    omega
  have h22 : C (314928 * k + 169690) = 157464 * k + 84845 := by
    unfold C
    simp [show (314928 * k + 169690) % 2 = 0 by omega]
    omega
  have h23 : C (157464 * k + 84845) = 472392 * k + 254536 := by
    unfold C
    simp [show (157464 * k + 84845) % 2 ≠ 0 by omega]
    omega
  have h24 : C (472392 * k + 254536) = 236196 * k + 127268 := by
    unfold C
    simp [show (472392 * k + 254536) % 2 = 0 by omega]
    omega
  have h25 : C (236196 * k + 127268) = 118098 * k + 63634 := by
    unfold C
    simp [show (236196 * k + 127268) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 63634) = 59049 * k + 31817 := by
    unfold C
    simp [show (118098 * k + 63634) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 35311) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 35311)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_35419 : ∀ k : Nat,
    iterate (65536 * k + 35419) 26 = 59049 * k + 31915 ∧
      59049 * k + 31915 < 65536 * k + 35419 := by
  intro k
  have h1 : C (65536 * k + 35419) = 196608 * k + 106258 := by
    unfold C
    simp [show (65536 * k + 35419) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 106258) = 98304 * k + 53129 := by
    unfold C
    simp [show (196608 * k + 106258) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 53129) = 294912 * k + 159388 := by
    unfold C
    simp [show (98304 * k + 53129) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 159388) = 147456 * k + 79694 := by
    unfold C
    simp [show (294912 * k + 159388) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 79694) = 73728 * k + 39847 := by
    unfold C
    simp [show (147456 * k + 79694) % 2 = 0 by omega]
    omega
  have h6 : C (73728 * k + 39847) = 221184 * k + 119542 := by
    unfold C
    simp [show (73728 * k + 39847) % 2 ≠ 0 by omega]
    omega
  have h7 : C (221184 * k + 119542) = 110592 * k + 59771 := by
    unfold C
    simp [show (221184 * k + 119542) % 2 = 0 by omega]
    omega
  have h8 : C (110592 * k + 59771) = 331776 * k + 179314 := by
    unfold C
    simp [show (110592 * k + 59771) % 2 ≠ 0 by omega]
    omega
  have h9 : C (331776 * k + 179314) = 165888 * k + 89657 := by
    unfold C
    simp [show (331776 * k + 179314) % 2 = 0 by omega]
    omega
  have h10 : C (165888 * k + 89657) = 497664 * k + 268972 := by
    unfold C
    simp [show (165888 * k + 89657) % 2 ≠ 0 by omega]
    omega
  have h11 : C (497664 * k + 268972) = 248832 * k + 134486 := by
    unfold C
    simp [show (497664 * k + 268972) % 2 = 0 by omega]
    omega
  have h12 : C (248832 * k + 134486) = 124416 * k + 67243 := by
    unfold C
    simp [show (248832 * k + 134486) % 2 = 0 by omega]
    omega
  have h13 : C (124416 * k + 67243) = 373248 * k + 201730 := by
    unfold C
    simp [show (124416 * k + 67243) % 2 ≠ 0 by omega]
    omega
  have h14 : C (373248 * k + 201730) = 186624 * k + 100865 := by
    unfold C
    simp [show (373248 * k + 201730) % 2 = 0 by omega]
    omega
  have h15 : C (186624 * k + 100865) = 559872 * k + 302596 := by
    unfold C
    simp [show (186624 * k + 100865) % 2 ≠ 0 by omega]
    omega
  have h16 : C (559872 * k + 302596) = 279936 * k + 151298 := by
    unfold C
    simp [show (559872 * k + 302596) % 2 = 0 by omega]
    omega
  have h17 : C (279936 * k + 151298) = 139968 * k + 75649 := by
    unfold C
    simp [show (279936 * k + 151298) % 2 = 0 by omega]
    omega
  have h18 : C (139968 * k + 75649) = 419904 * k + 226948 := by
    unfold C
    simp [show (139968 * k + 75649) % 2 ≠ 0 by omega]
    omega
  have h19 : C (419904 * k + 226948) = 209952 * k + 113474 := by
    unfold C
    simp [show (419904 * k + 226948) % 2 = 0 by omega]
    omega
  have h20 : C (209952 * k + 113474) = 104976 * k + 56737 := by
    unfold C
    simp [show (209952 * k + 113474) % 2 = 0 by omega]
    omega
  have h21 : C (104976 * k + 56737) = 314928 * k + 170212 := by
    unfold C
    simp [show (104976 * k + 56737) % 2 ≠ 0 by omega]
    omega
  have h22 : C (314928 * k + 170212) = 157464 * k + 85106 := by
    unfold C
    simp [show (314928 * k + 170212) % 2 = 0 by omega]
    omega
  have h23 : C (157464 * k + 85106) = 78732 * k + 42553 := by
    unfold C
    simp [show (157464 * k + 85106) % 2 = 0 by omega]
    omega
  have h24 : C (78732 * k + 42553) = 236196 * k + 127660 := by
    unfold C
    simp [show (78732 * k + 42553) % 2 ≠ 0 by omega]
    omega
  have h25 : C (236196 * k + 127660) = 118098 * k + 63830 := by
    unfold C
    simp [show (236196 * k + 127660) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 63830) = 59049 * k + 31915 := by
    unfold C
    simp [show (118098 * k + 63830) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 35419) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 35419)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_35579 : ∀ k : Nat,
    iterate (65536 * k + 35579) 26 = 59049 * k + 32059 ∧
      59049 * k + 32059 < 65536 * k + 35579 := by
  intro k
  have h1 : C (65536 * k + 35579) = 196608 * k + 106738 := by
    unfold C
    simp [show (65536 * k + 35579) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 106738) = 98304 * k + 53369 := by
    unfold C
    simp [show (196608 * k + 106738) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 53369) = 294912 * k + 160108 := by
    unfold C
    simp [show (98304 * k + 53369) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 160108) = 147456 * k + 80054 := by
    unfold C
    simp [show (294912 * k + 160108) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 80054) = 73728 * k + 40027 := by
    unfold C
    simp [show (147456 * k + 80054) % 2 = 0 by omega]
    omega
  have h6 : C (73728 * k + 40027) = 221184 * k + 120082 := by
    unfold C
    simp [show (73728 * k + 40027) % 2 ≠ 0 by omega]
    omega
  have h7 : C (221184 * k + 120082) = 110592 * k + 60041 := by
    unfold C
    simp [show (221184 * k + 120082) % 2 = 0 by omega]
    omega
  have h8 : C (110592 * k + 60041) = 331776 * k + 180124 := by
    unfold C
    simp [show (110592 * k + 60041) % 2 ≠ 0 by omega]
    omega
  have h9 : C (331776 * k + 180124) = 165888 * k + 90062 := by
    unfold C
    simp [show (331776 * k + 180124) % 2 = 0 by omega]
    omega
  have h10 : C (165888 * k + 90062) = 82944 * k + 45031 := by
    unfold C
    simp [show (165888 * k + 90062) % 2 = 0 by omega]
    omega
  have h11 : C (82944 * k + 45031) = 248832 * k + 135094 := by
    unfold C
    simp [show (82944 * k + 45031) % 2 ≠ 0 by omega]
    omega
  have h12 : C (248832 * k + 135094) = 124416 * k + 67547 := by
    unfold C
    simp [show (248832 * k + 135094) % 2 = 0 by omega]
    omega
  have h13 : C (124416 * k + 67547) = 373248 * k + 202642 := by
    unfold C
    simp [show (124416 * k + 67547) % 2 ≠ 0 by omega]
    omega
  have h14 : C (373248 * k + 202642) = 186624 * k + 101321 := by
    unfold C
    simp [show (373248 * k + 202642) % 2 = 0 by omega]
    omega
  have h15 : C (186624 * k + 101321) = 559872 * k + 303964 := by
    unfold C
    simp [show (186624 * k + 101321) % 2 ≠ 0 by omega]
    omega
  have h16 : C (559872 * k + 303964) = 279936 * k + 151982 := by
    unfold C
    simp [show (559872 * k + 303964) % 2 = 0 by omega]
    omega
  have h17 : C (279936 * k + 151982) = 139968 * k + 75991 := by
    unfold C
    simp [show (279936 * k + 151982) % 2 = 0 by omega]
    omega
  have h18 : C (139968 * k + 75991) = 419904 * k + 227974 := by
    unfold C
    simp [show (139968 * k + 75991) % 2 ≠ 0 by omega]
    omega
  have h19 : C (419904 * k + 227974) = 209952 * k + 113987 := by
    unfold C
    simp [show (419904 * k + 227974) % 2 = 0 by omega]
    omega
  have h20 : C (209952 * k + 113987) = 629856 * k + 341962 := by
    unfold C
    simp [show (209952 * k + 113987) % 2 ≠ 0 by omega]
    omega
  have h21 : C (629856 * k + 341962) = 314928 * k + 170981 := by
    unfold C
    simp [show (629856 * k + 341962) % 2 = 0 by omega]
    omega
  have h22 : C (314928 * k + 170981) = 944784 * k + 512944 := by
    unfold C
    simp [show (314928 * k + 170981) % 2 ≠ 0 by omega]
    omega
  have h23 : C (944784 * k + 512944) = 472392 * k + 256472 := by
    unfold C
    simp [show (944784 * k + 512944) % 2 = 0 by omega]
    omega
  have h24 : C (472392 * k + 256472) = 236196 * k + 128236 := by
    unfold C
    simp [show (472392 * k + 256472) % 2 = 0 by omega]
    omega
  have h25 : C (236196 * k + 128236) = 118098 * k + 64118 := by
    unfold C
    simp [show (236196 * k + 128236) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 64118) = 59049 * k + 32059 := by
    unfold C
    simp [show (118098 * k + 64118) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 35579) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 35579)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_35583 : ∀ k : Nat,
    iterate (65536 * k + 35583) 26 = 59049 * k + 32062 ∧
      59049 * k + 32062 < 65536 * k + 35583 := by
  intro k
  have h1 : C (65536 * k + 35583) = 196608 * k + 106750 := by
    unfold C
    simp [show (65536 * k + 35583) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 106750) = 98304 * k + 53375 := by
    unfold C
    simp [show (196608 * k + 106750) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 53375) = 294912 * k + 160126 := by
    unfold C
    simp [show (98304 * k + 53375) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 160126) = 147456 * k + 80063 := by
    unfold C
    simp [show (294912 * k + 160126) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 80063) = 442368 * k + 240190 := by
    unfold C
    simp [show (147456 * k + 80063) % 2 ≠ 0 by omega]
    omega
  have h6 : C (442368 * k + 240190) = 221184 * k + 120095 := by
    unfold C
    simp [show (442368 * k + 240190) % 2 = 0 by omega]
    omega
  have h7 : C (221184 * k + 120095) = 663552 * k + 360286 := by
    unfold C
    simp [show (221184 * k + 120095) % 2 ≠ 0 by omega]
    omega
  have h8 : C (663552 * k + 360286) = 331776 * k + 180143 := by
    unfold C
    simp [show (663552 * k + 360286) % 2 = 0 by omega]
    omega
  have h9 : C (331776 * k + 180143) = 995328 * k + 540430 := by
    unfold C
    simp [show (331776 * k + 180143) % 2 ≠ 0 by omega]
    omega
  have h10 : C (995328 * k + 540430) = 497664 * k + 270215 := by
    unfold C
    simp [show (995328 * k + 540430) % 2 = 0 by omega]
    omega
  have h11 : C (497664 * k + 270215) = 1492992 * k + 810646 := by
    unfold C
    simp [show (497664 * k + 270215) % 2 ≠ 0 by omega]
    omega
  have h12 : C (1492992 * k + 810646) = 746496 * k + 405323 := by
    unfold C
    simp [show (1492992 * k + 810646) % 2 = 0 by omega]
    omega
  have h13 : C (746496 * k + 405323) = 2239488 * k + 1215970 := by
    unfold C
    simp [show (746496 * k + 405323) % 2 ≠ 0 by omega]
    omega
  have h14 : C (2239488 * k + 1215970) = 1119744 * k + 607985 := by
    unfold C
    simp [show (2239488 * k + 1215970) % 2 = 0 by omega]
    omega
  have h15 : C (1119744 * k + 607985) = 3359232 * k + 1823956 := by
    unfold C
    simp [show (1119744 * k + 607985) % 2 ≠ 0 by omega]
    omega
  have h16 : C (3359232 * k + 1823956) = 1679616 * k + 911978 := by
    unfold C
    simp [show (3359232 * k + 1823956) % 2 = 0 by omega]
    omega
  have h17 : C (1679616 * k + 911978) = 839808 * k + 455989 := by
    unfold C
    simp [show (1679616 * k + 911978) % 2 = 0 by omega]
    omega
  have h18 : C (839808 * k + 455989) = 2519424 * k + 1367968 := by
    unfold C
    simp [show (839808 * k + 455989) % 2 ≠ 0 by omega]
    omega
  have h19 : C (2519424 * k + 1367968) = 1259712 * k + 683984 := by
    unfold C
    simp [show (2519424 * k + 1367968) % 2 = 0 by omega]
    omega
  have h20 : C (1259712 * k + 683984) = 629856 * k + 341992 := by
    unfold C
    simp [show (1259712 * k + 683984) % 2 = 0 by omega]
    omega
  have h21 : C (629856 * k + 341992) = 314928 * k + 170996 := by
    unfold C
    simp [show (629856 * k + 341992) % 2 = 0 by omega]
    omega
  have h22 : C (314928 * k + 170996) = 157464 * k + 85498 := by
    unfold C
    simp [show (314928 * k + 170996) % 2 = 0 by omega]
    omega
  have h23 : C (157464 * k + 85498) = 78732 * k + 42749 := by
    unfold C
    simp [show (157464 * k + 85498) % 2 = 0 by omega]
    omega
  have h24 : C (78732 * k + 42749) = 236196 * k + 128248 := by
    unfold C
    simp [show (78732 * k + 42749) % 2 ≠ 0 by omega]
    omega
  have h25 : C (236196 * k + 128248) = 118098 * k + 64124 := by
    unfold C
    simp [show (236196 * k + 128248) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 64124) = 59049 * k + 32062 := by
    unfold C
    simp [show (118098 * k + 64124) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 35583) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 35583)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_36143 : ∀ k : Nat,
    iterate (65536 * k + 36143) 26 = 59049 * k + 32567 ∧
      59049 * k + 32567 < 65536 * k + 36143 := by
  intro k
  have h1 : C (65536 * k + 36143) = 196608 * k + 108430 := by
    unfold C
    simp [show (65536 * k + 36143) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 108430) = 98304 * k + 54215 := by
    unfold C
    simp [show (196608 * k + 108430) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 54215) = 294912 * k + 162646 := by
    unfold C
    simp [show (98304 * k + 54215) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 162646) = 147456 * k + 81323 := by
    unfold C
    simp [show (294912 * k + 162646) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 81323) = 442368 * k + 243970 := by
    unfold C
    simp [show (147456 * k + 81323) % 2 ≠ 0 by omega]
    omega
  have h6 : C (442368 * k + 243970) = 221184 * k + 121985 := by
    unfold C
    simp [show (442368 * k + 243970) % 2 = 0 by omega]
    omega
  have h7 : C (221184 * k + 121985) = 663552 * k + 365956 := by
    unfold C
    simp [show (221184 * k + 121985) % 2 ≠ 0 by omega]
    omega
  have h8 : C (663552 * k + 365956) = 331776 * k + 182978 := by
    unfold C
    simp [show (663552 * k + 365956) % 2 = 0 by omega]
    omega
  have h9 : C (331776 * k + 182978) = 165888 * k + 91489 := by
    unfold C
    simp [show (331776 * k + 182978) % 2 = 0 by omega]
    omega
  have h10 : C (165888 * k + 91489) = 497664 * k + 274468 := by
    unfold C
    simp [show (165888 * k + 91489) % 2 ≠ 0 by omega]
    omega
  have h11 : C (497664 * k + 274468) = 248832 * k + 137234 := by
    unfold C
    simp [show (497664 * k + 274468) % 2 = 0 by omega]
    omega
  have h12 : C (248832 * k + 137234) = 124416 * k + 68617 := by
    unfold C
    simp [show (248832 * k + 137234) % 2 = 0 by omega]
    omega
  have h13 : C (124416 * k + 68617) = 373248 * k + 205852 := by
    unfold C
    simp [show (124416 * k + 68617) % 2 ≠ 0 by omega]
    omega
  have h14 : C (373248 * k + 205852) = 186624 * k + 102926 := by
    unfold C
    simp [show (373248 * k + 205852) % 2 = 0 by omega]
    omega
  have h15 : C (186624 * k + 102926) = 93312 * k + 51463 := by
    unfold C
    simp [show (186624 * k + 102926) % 2 = 0 by omega]
    omega
  have h16 : C (93312 * k + 51463) = 279936 * k + 154390 := by
    unfold C
    simp [show (93312 * k + 51463) % 2 ≠ 0 by omega]
    omega
  have h17 : C (279936 * k + 154390) = 139968 * k + 77195 := by
    unfold C
    simp [show (279936 * k + 154390) % 2 = 0 by omega]
    omega
  have h18 : C (139968 * k + 77195) = 419904 * k + 231586 := by
    unfold C
    simp [show (139968 * k + 77195) % 2 ≠ 0 by omega]
    omega
  have h19 : C (419904 * k + 231586) = 209952 * k + 115793 := by
    unfold C
    simp [show (419904 * k + 231586) % 2 = 0 by omega]
    omega
  have h20 : C (209952 * k + 115793) = 629856 * k + 347380 := by
    unfold C
    simp [show (209952 * k + 115793) % 2 ≠ 0 by omega]
    omega
  have h21 : C (629856 * k + 347380) = 314928 * k + 173690 := by
    unfold C
    simp [show (629856 * k + 347380) % 2 = 0 by omega]
    omega
  have h22 : C (314928 * k + 173690) = 157464 * k + 86845 := by
    unfold C
    simp [show (314928 * k + 173690) % 2 = 0 by omega]
    omega
  have h23 : C (157464 * k + 86845) = 472392 * k + 260536 := by
    unfold C
    simp [show (157464 * k + 86845) % 2 ≠ 0 by omega]
    omega
  have h24 : C (472392 * k + 260536) = 236196 * k + 130268 := by
    unfold C
    simp [show (472392 * k + 260536) % 2 = 0 by omega]
    omega
  have h25 : C (236196 * k + 130268) = 118098 * k + 65134 := by
    unfold C
    simp [show (236196 * k + 130268) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 65134) = 59049 * k + 32567 := by
    unfold C
    simp [show (118098 * k + 65134) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 36143) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 36143)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

end CollatzM16ShardM
