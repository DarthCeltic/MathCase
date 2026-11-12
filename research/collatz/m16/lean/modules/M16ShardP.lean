import Mathlib.Data.Nat.Prime.Basic

namespace CollatzM16ShardP

def C (n : Nat) : Nat := if n % 2 = 0 then n / 2 else 3 * n + 1

def iterate (n t : Nat) : Nat := Nat.rec n (fun _ previous => C previous) t

theorem descent_mod65536_41243 : ∀ k : Nat,
    iterate (65536 * k + 41243) 26 = 59049 * k + 37162 ∧
      59049 * k + 37162 < 65536 * k + 41243 := by
  intro k
  have h1 : C (65536 * k + 41243) = 196608 * k + 123730 := by
    unfold C
    simp [show (65536 * k + 41243) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 123730) = 98304 * k + 61865 := by
    unfold C
    simp [show (196608 * k + 123730) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 61865) = 294912 * k + 185596 := by
    unfold C
    simp [show (98304 * k + 61865) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 185596) = 147456 * k + 92798 := by
    unfold C
    simp [show (294912 * k + 185596) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 92798) = 73728 * k + 46399 := by
    unfold C
    simp [show (147456 * k + 92798) % 2 = 0 by omega]
    omega
  have h6 : C (73728 * k + 46399) = 221184 * k + 139198 := by
    unfold C
    simp [show (73728 * k + 46399) % 2 ≠ 0 by omega]
    omega
  have h7 : C (221184 * k + 139198) = 110592 * k + 69599 := by
    unfold C
    simp [show (221184 * k + 139198) % 2 = 0 by omega]
    omega
  have h8 : C (110592 * k + 69599) = 331776 * k + 208798 := by
    unfold C
    simp [show (110592 * k + 69599) % 2 ≠ 0 by omega]
    omega
  have h9 : C (331776 * k + 208798) = 165888 * k + 104399 := by
    unfold C
    simp [show (331776 * k + 208798) % 2 = 0 by omega]
    omega
  have h10 : C (165888 * k + 104399) = 497664 * k + 313198 := by
    unfold C
    simp [show (165888 * k + 104399) % 2 ≠ 0 by omega]
    omega
  have h11 : C (497664 * k + 313198) = 248832 * k + 156599 := by
    unfold C
    simp [show (497664 * k + 313198) % 2 = 0 by omega]
    omega
  have h12 : C (248832 * k + 156599) = 746496 * k + 469798 := by
    unfold C
    simp [show (248832 * k + 156599) % 2 ≠ 0 by omega]
    omega
  have h13 : C (746496 * k + 469798) = 373248 * k + 234899 := by
    unfold C
    simp [show (746496 * k + 469798) % 2 = 0 by omega]
    omega
  have h14 : C (373248 * k + 234899) = 1119744 * k + 704698 := by
    unfold C
    simp [show (373248 * k + 234899) % 2 ≠ 0 by omega]
    omega
  have h15 : C (1119744 * k + 704698) = 559872 * k + 352349 := by
    unfold C
    simp [show (1119744 * k + 704698) % 2 = 0 by omega]
    omega
  have h16 : C (559872 * k + 352349) = 1679616 * k + 1057048 := by
    unfold C
    simp [show (559872 * k + 352349) % 2 ≠ 0 by omega]
    omega
  have h17 : C (1679616 * k + 1057048) = 839808 * k + 528524 := by
    unfold C
    simp [show (1679616 * k + 1057048) % 2 = 0 by omega]
    omega
  have h18 : C (839808 * k + 528524) = 419904 * k + 264262 := by
    unfold C
    simp [show (839808 * k + 528524) % 2 = 0 by omega]
    omega
  have h19 : C (419904 * k + 264262) = 209952 * k + 132131 := by
    unfold C
    simp [show (419904 * k + 264262) % 2 = 0 by omega]
    omega
  have h20 : C (209952 * k + 132131) = 629856 * k + 396394 := by
    unfold C
    simp [show (209952 * k + 132131) % 2 ≠ 0 by omega]
    omega
  have h21 : C (629856 * k + 396394) = 314928 * k + 198197 := by
    unfold C
    simp [show (629856 * k + 396394) % 2 = 0 by omega]
    omega
  have h22 : C (314928 * k + 198197) = 944784 * k + 594592 := by
    unfold C
    simp [show (314928 * k + 198197) % 2 ≠ 0 by omega]
    omega
  have h23 : C (944784 * k + 594592) = 472392 * k + 297296 := by
    unfold C
    simp [show (944784 * k + 594592) % 2 = 0 by omega]
    omega
  have h24 : C (472392 * k + 297296) = 236196 * k + 148648 := by
    unfold C
    simp [show (472392 * k + 297296) % 2 = 0 by omega]
    omega
  have h25 : C (236196 * k + 148648) = 118098 * k + 74324 := by
    unfold C
    simp [show (236196 * k + 148648) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 74324) = 59049 * k + 37162 := by
    unfold C
    simp [show (118098 * k + 74324) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 41243) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 41243)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_41447 : ∀ k : Nat,
    iterate (65536 * k + 41447) 26 = 59049 * k + 37346 ∧
      59049 * k + 37346 < 65536 * k + 41447 := by
  intro k
  have h1 : C (65536 * k + 41447) = 196608 * k + 124342 := by
    unfold C
    simp [show (65536 * k + 41447) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 124342) = 98304 * k + 62171 := by
    unfold C
    simp [show (196608 * k + 124342) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 62171) = 294912 * k + 186514 := by
    unfold C
    simp [show (98304 * k + 62171) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 186514) = 147456 * k + 93257 := by
    unfold C
    simp [show (294912 * k + 186514) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 93257) = 442368 * k + 279772 := by
    unfold C
    simp [show (147456 * k + 93257) % 2 ≠ 0 by omega]
    omega
  have h6 : C (442368 * k + 279772) = 221184 * k + 139886 := by
    unfold C
    simp [show (442368 * k + 279772) % 2 = 0 by omega]
    omega
  have h7 : C (221184 * k + 139886) = 110592 * k + 69943 := by
    unfold C
    simp [show (221184 * k + 139886) % 2 = 0 by omega]
    omega
  have h8 : C (110592 * k + 69943) = 331776 * k + 209830 := by
    unfold C
    simp [show (110592 * k + 69943) % 2 ≠ 0 by omega]
    omega
  have h9 : C (331776 * k + 209830) = 165888 * k + 104915 := by
    unfold C
    simp [show (331776 * k + 209830) % 2 = 0 by omega]
    omega
  have h10 : C (165888 * k + 104915) = 497664 * k + 314746 := by
    unfold C
    simp [show (165888 * k + 104915) % 2 ≠ 0 by omega]
    omega
  have h11 : C (497664 * k + 314746) = 248832 * k + 157373 := by
    unfold C
    simp [show (497664 * k + 314746) % 2 = 0 by omega]
    omega
  have h12 : C (248832 * k + 157373) = 746496 * k + 472120 := by
    unfold C
    simp [show (248832 * k + 157373) % 2 ≠ 0 by omega]
    omega
  have h13 : C (746496 * k + 472120) = 373248 * k + 236060 := by
    unfold C
    simp [show (746496 * k + 472120) % 2 = 0 by omega]
    omega
  have h14 : C (373248 * k + 236060) = 186624 * k + 118030 := by
    unfold C
    simp [show (373248 * k + 236060) % 2 = 0 by omega]
    omega
  have h15 : C (186624 * k + 118030) = 93312 * k + 59015 := by
    unfold C
    simp [show (186624 * k + 118030) % 2 = 0 by omega]
    omega
  have h16 : C (93312 * k + 59015) = 279936 * k + 177046 := by
    unfold C
    simp [show (93312 * k + 59015) % 2 ≠ 0 by omega]
    omega
  have h17 : C (279936 * k + 177046) = 139968 * k + 88523 := by
    unfold C
    simp [show (279936 * k + 177046) % 2 = 0 by omega]
    omega
  have h18 : C (139968 * k + 88523) = 419904 * k + 265570 := by
    unfold C
    simp [show (139968 * k + 88523) % 2 ≠ 0 by omega]
    omega
  have h19 : C (419904 * k + 265570) = 209952 * k + 132785 := by
    unfold C
    simp [show (419904 * k + 265570) % 2 = 0 by omega]
    omega
  have h20 : C (209952 * k + 132785) = 629856 * k + 398356 := by
    unfold C
    simp [show (209952 * k + 132785) % 2 ≠ 0 by omega]
    omega
  have h21 : C (629856 * k + 398356) = 314928 * k + 199178 := by
    unfold C
    simp [show (629856 * k + 398356) % 2 = 0 by omega]
    omega
  have h22 : C (314928 * k + 199178) = 157464 * k + 99589 := by
    unfold C
    simp [show (314928 * k + 199178) % 2 = 0 by omega]
    omega
  have h23 : C (157464 * k + 99589) = 472392 * k + 298768 := by
    unfold C
    simp [show (157464 * k + 99589) % 2 ≠ 0 by omega]
    omega
  have h24 : C (472392 * k + 298768) = 236196 * k + 149384 := by
    unfold C
    simp [show (472392 * k + 298768) % 2 = 0 by omega]
    omega
  have h25 : C (236196 * k + 149384) = 118098 * k + 74692 := by
    unfold C
    simp [show (236196 * k + 149384) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 74692) = 59049 * k + 37346 := by
    unfold C
    simp [show (118098 * k + 74692) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 41447) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 41447)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_41627 : ∀ k : Nat,
    iterate (65536 * k + 41627) 26 = 59049 * k + 37508 ∧
      59049 * k + 37508 < 65536 * k + 41627 := by
  intro k
  have h1 : C (65536 * k + 41627) = 196608 * k + 124882 := by
    unfold C
    simp [show (65536 * k + 41627) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 124882) = 98304 * k + 62441 := by
    unfold C
    simp [show (196608 * k + 124882) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 62441) = 294912 * k + 187324 := by
    unfold C
    simp [show (98304 * k + 62441) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 187324) = 147456 * k + 93662 := by
    unfold C
    simp [show (294912 * k + 187324) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 93662) = 73728 * k + 46831 := by
    unfold C
    simp [show (147456 * k + 93662) % 2 = 0 by omega]
    omega
  have h6 : C (73728 * k + 46831) = 221184 * k + 140494 := by
    unfold C
    simp [show (73728 * k + 46831) % 2 ≠ 0 by omega]
    omega
  have h7 : C (221184 * k + 140494) = 110592 * k + 70247 := by
    unfold C
    simp [show (221184 * k + 140494) % 2 = 0 by omega]
    omega
  have h8 : C (110592 * k + 70247) = 331776 * k + 210742 := by
    unfold C
    simp [show (110592 * k + 70247) % 2 ≠ 0 by omega]
    omega
  have h9 : C (331776 * k + 210742) = 165888 * k + 105371 := by
    unfold C
    simp [show (331776 * k + 210742) % 2 = 0 by omega]
    omega
  have h10 : C (165888 * k + 105371) = 497664 * k + 316114 := by
    unfold C
    simp [show (165888 * k + 105371) % 2 ≠ 0 by omega]
    omega
  have h11 : C (497664 * k + 316114) = 248832 * k + 158057 := by
    unfold C
    simp [show (497664 * k + 316114) % 2 = 0 by omega]
    omega
  have h12 : C (248832 * k + 158057) = 746496 * k + 474172 := by
    unfold C
    simp [show (248832 * k + 158057) % 2 ≠ 0 by omega]
    omega
  have h13 : C (746496 * k + 474172) = 373248 * k + 237086 := by
    unfold C
    simp [show (746496 * k + 474172) % 2 = 0 by omega]
    omega
  have h14 : C (373248 * k + 237086) = 186624 * k + 118543 := by
    unfold C
    simp [show (373248 * k + 237086) % 2 = 0 by omega]
    omega
  have h15 : C (186624 * k + 118543) = 559872 * k + 355630 := by
    unfold C
    simp [show (186624 * k + 118543) % 2 ≠ 0 by omega]
    omega
  have h16 : C (559872 * k + 355630) = 279936 * k + 177815 := by
    unfold C
    simp [show (559872 * k + 355630) % 2 = 0 by omega]
    omega
  have h17 : C (279936 * k + 177815) = 839808 * k + 533446 := by
    unfold C
    simp [show (279936 * k + 177815) % 2 ≠ 0 by omega]
    omega
  have h18 : C (839808 * k + 533446) = 419904 * k + 266723 := by
    unfold C
    simp [show (839808 * k + 533446) % 2 = 0 by omega]
    omega
  have h19 : C (419904 * k + 266723) = 1259712 * k + 800170 := by
    unfold C
    simp [show (419904 * k + 266723) % 2 ≠ 0 by omega]
    omega
  have h20 : C (1259712 * k + 800170) = 629856 * k + 400085 := by
    unfold C
    simp [show (1259712 * k + 800170) % 2 = 0 by omega]
    omega
  have h21 : C (629856 * k + 400085) = 1889568 * k + 1200256 := by
    unfold C
    simp [show (629856 * k + 400085) % 2 ≠ 0 by omega]
    omega
  have h22 : C (1889568 * k + 1200256) = 944784 * k + 600128 := by
    unfold C
    simp [show (1889568 * k + 1200256) % 2 = 0 by omega]
    omega
  have h23 : C (944784 * k + 600128) = 472392 * k + 300064 := by
    unfold C
    simp [show (944784 * k + 600128) % 2 = 0 by omega]
    omega
  have h24 : C (472392 * k + 300064) = 236196 * k + 150032 := by
    unfold C
    simp [show (472392 * k + 300064) % 2 = 0 by omega]
    omega
  have h25 : C (236196 * k + 150032) = 118098 * k + 75016 := by
    unfold C
    simp [show (236196 * k + 150032) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 75016) = 59049 * k + 37508 := by
    unfold C
    simp [show (118098 * k + 75016) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 41627) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 41627)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_41723 : ∀ k : Nat,
    iterate (65536 * k + 41723) 26 = 59049 * k + 37595 ∧
      59049 * k + 37595 < 65536 * k + 41723 := by
  intro k
  have h1 : C (65536 * k + 41723) = 196608 * k + 125170 := by
    unfold C
    simp [show (65536 * k + 41723) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 125170) = 98304 * k + 62585 := by
    unfold C
    simp [show (196608 * k + 125170) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 62585) = 294912 * k + 187756 := by
    unfold C
    simp [show (98304 * k + 62585) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 187756) = 147456 * k + 93878 := by
    unfold C
    simp [show (294912 * k + 187756) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 93878) = 73728 * k + 46939 := by
    unfold C
    simp [show (147456 * k + 93878) % 2 = 0 by omega]
    omega
  have h6 : C (73728 * k + 46939) = 221184 * k + 140818 := by
    unfold C
    simp [show (73728 * k + 46939) % 2 ≠ 0 by omega]
    omega
  have h7 : C (221184 * k + 140818) = 110592 * k + 70409 := by
    unfold C
    simp [show (221184 * k + 140818) % 2 = 0 by omega]
    omega
  have h8 : C (110592 * k + 70409) = 331776 * k + 211228 := by
    unfold C
    simp [show (110592 * k + 70409) % 2 ≠ 0 by omega]
    omega
  have h9 : C (331776 * k + 211228) = 165888 * k + 105614 := by
    unfold C
    simp [show (331776 * k + 211228) % 2 = 0 by omega]
    omega
  have h10 : C (165888 * k + 105614) = 82944 * k + 52807 := by
    unfold C
    simp [show (165888 * k + 105614) % 2 = 0 by omega]
    omega
  have h11 : C (82944 * k + 52807) = 248832 * k + 158422 := by
    unfold C
    simp [show (82944 * k + 52807) % 2 ≠ 0 by omega]
    omega
  have h12 : C (248832 * k + 158422) = 124416 * k + 79211 := by
    unfold C
    simp [show (248832 * k + 158422) % 2 = 0 by omega]
    omega
  have h13 : C (124416 * k + 79211) = 373248 * k + 237634 := by
    unfold C
    simp [show (124416 * k + 79211) % 2 ≠ 0 by omega]
    omega
  have h14 : C (373248 * k + 237634) = 186624 * k + 118817 := by
    unfold C
    simp [show (373248 * k + 237634) % 2 = 0 by omega]
    omega
  have h15 : C (186624 * k + 118817) = 559872 * k + 356452 := by
    unfold C
    simp [show (186624 * k + 118817) % 2 ≠ 0 by omega]
    omega
  have h16 : C (559872 * k + 356452) = 279936 * k + 178226 := by
    unfold C
    simp [show (559872 * k + 356452) % 2 = 0 by omega]
    omega
  have h17 : C (279936 * k + 178226) = 139968 * k + 89113 := by
    unfold C
    simp [show (279936 * k + 178226) % 2 = 0 by omega]
    omega
  have h18 : C (139968 * k + 89113) = 419904 * k + 267340 := by
    unfold C
    simp [show (139968 * k + 89113) % 2 ≠ 0 by omega]
    omega
  have h19 : C (419904 * k + 267340) = 209952 * k + 133670 := by
    unfold C
    simp [show (419904 * k + 267340) % 2 = 0 by omega]
    omega
  have h20 : C (209952 * k + 133670) = 104976 * k + 66835 := by
    unfold C
    simp [show (209952 * k + 133670) % 2 = 0 by omega]
    omega
  have h21 : C (104976 * k + 66835) = 314928 * k + 200506 := by
    unfold C
    simp [show (104976 * k + 66835) % 2 ≠ 0 by omega]
    omega
  have h22 : C (314928 * k + 200506) = 157464 * k + 100253 := by
    unfold C
    simp [show (314928 * k + 200506) % 2 = 0 by omega]
    omega
  have h23 : C (157464 * k + 100253) = 472392 * k + 300760 := by
    unfold C
    simp [show (157464 * k + 100253) % 2 ≠ 0 by omega]
    omega
  have h24 : C (472392 * k + 300760) = 236196 * k + 150380 := by
    unfold C
    simp [show (472392 * k + 300760) % 2 = 0 by omega]
    omega
  have h25 : C (236196 * k + 150380) = 118098 * k + 75190 := by
    unfold C
    simp [show (236196 * k + 150380) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 75190) = 59049 * k + 37595 := by
    unfold C
    simp [show (118098 * k + 75190) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 41723) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 41723)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_42075 : ∀ k : Nat,
    iterate (65536 * k + 42075) 26 = 59049 * k + 37912 ∧
      59049 * k + 37912 < 65536 * k + 42075 := by
  intro k
  have h1 : C (65536 * k + 42075) = 196608 * k + 126226 := by
    unfold C
    simp [show (65536 * k + 42075) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 126226) = 98304 * k + 63113 := by
    unfold C
    simp [show (196608 * k + 126226) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 63113) = 294912 * k + 189340 := by
    unfold C
    simp [show (98304 * k + 63113) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 189340) = 147456 * k + 94670 := by
    unfold C
    simp [show (294912 * k + 189340) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 94670) = 73728 * k + 47335 := by
    unfold C
    simp [show (147456 * k + 94670) % 2 = 0 by omega]
    omega
  have h6 : C (73728 * k + 47335) = 221184 * k + 142006 := by
    unfold C
    simp [show (73728 * k + 47335) % 2 ≠ 0 by omega]
    omega
  have h7 : C (221184 * k + 142006) = 110592 * k + 71003 := by
    unfold C
    simp [show (221184 * k + 142006) % 2 = 0 by omega]
    omega
  have h8 : C (110592 * k + 71003) = 331776 * k + 213010 := by
    unfold C
    simp [show (110592 * k + 71003) % 2 ≠ 0 by omega]
    omega
  have h9 : C (331776 * k + 213010) = 165888 * k + 106505 := by
    unfold C
    simp [show (331776 * k + 213010) % 2 = 0 by omega]
    omega
  have h10 : C (165888 * k + 106505) = 497664 * k + 319516 := by
    unfold C
    simp [show (165888 * k + 106505) % 2 ≠ 0 by omega]
    omega
  have h11 : C (497664 * k + 319516) = 248832 * k + 159758 := by
    unfold C
    simp [show (497664 * k + 319516) % 2 = 0 by omega]
    omega
  have h12 : C (248832 * k + 159758) = 124416 * k + 79879 := by
    unfold C
    simp [show (248832 * k + 159758) % 2 = 0 by omega]
    omega
  have h13 : C (124416 * k + 79879) = 373248 * k + 239638 := by
    unfold C
    simp [show (124416 * k + 79879) % 2 ≠ 0 by omega]
    omega
  have h14 : C (373248 * k + 239638) = 186624 * k + 119819 := by
    unfold C
    simp [show (373248 * k + 239638) % 2 = 0 by omega]
    omega
  have h15 : C (186624 * k + 119819) = 559872 * k + 359458 := by
    unfold C
    simp [show (186624 * k + 119819) % 2 ≠ 0 by omega]
    omega
  have h16 : C (559872 * k + 359458) = 279936 * k + 179729 := by
    unfold C
    simp [show (559872 * k + 359458) % 2 = 0 by omega]
    omega
  have h17 : C (279936 * k + 179729) = 839808 * k + 539188 := by
    unfold C
    simp [show (279936 * k + 179729) % 2 ≠ 0 by omega]
    omega
  have h18 : C (839808 * k + 539188) = 419904 * k + 269594 := by
    unfold C
    simp [show (839808 * k + 539188) % 2 = 0 by omega]
    omega
  have h19 : C (419904 * k + 269594) = 209952 * k + 134797 := by
    unfold C
    simp [show (419904 * k + 269594) % 2 = 0 by omega]
    omega
  have h20 : C (209952 * k + 134797) = 629856 * k + 404392 := by
    unfold C
    simp [show (209952 * k + 134797) % 2 ≠ 0 by omega]
    omega
  have h21 : C (629856 * k + 404392) = 314928 * k + 202196 := by
    unfold C
    simp [show (629856 * k + 404392) % 2 = 0 by omega]
    omega
  have h22 : C (314928 * k + 202196) = 157464 * k + 101098 := by
    unfold C
    simp [show (314928 * k + 202196) % 2 = 0 by omega]
    omega
  have h23 : C (157464 * k + 101098) = 78732 * k + 50549 := by
    unfold C
    simp [show (157464 * k + 101098) % 2 = 0 by omega]
    omega
  have h24 : C (78732 * k + 50549) = 236196 * k + 151648 := by
    unfold C
    simp [show (78732 * k + 50549) % 2 ≠ 0 by omega]
    omega
  have h25 : C (236196 * k + 151648) = 118098 * k + 75824 := by
    unfold C
    simp [show (236196 * k + 151648) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 75824) = 59049 * k + 37912 := by
    unfold C
    simp [show (118098 * k + 75824) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 42075) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 42075)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_42215 : ∀ k : Nat,
    iterate (65536 * k + 42215) 26 = 59049 * k + 38038 ∧
      59049 * k + 38038 < 65536 * k + 42215 := by
  intro k
  have h1 : C (65536 * k + 42215) = 196608 * k + 126646 := by
    unfold C
    simp [show (65536 * k + 42215) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 126646) = 98304 * k + 63323 := by
    unfold C
    simp [show (196608 * k + 126646) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 63323) = 294912 * k + 189970 := by
    unfold C
    simp [show (98304 * k + 63323) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 189970) = 147456 * k + 94985 := by
    unfold C
    simp [show (294912 * k + 189970) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 94985) = 442368 * k + 284956 := by
    unfold C
    simp [show (147456 * k + 94985) % 2 ≠ 0 by omega]
    omega
  have h6 : C (442368 * k + 284956) = 221184 * k + 142478 := by
    unfold C
    simp [show (442368 * k + 284956) % 2 = 0 by omega]
    omega
  have h7 : C (221184 * k + 142478) = 110592 * k + 71239 := by
    unfold C
    simp [show (221184 * k + 142478) % 2 = 0 by omega]
    omega
  have h8 : C (110592 * k + 71239) = 331776 * k + 213718 := by
    unfold C
    simp [show (110592 * k + 71239) % 2 ≠ 0 by omega]
    omega
  have h9 : C (331776 * k + 213718) = 165888 * k + 106859 := by
    unfold C
    simp [show (331776 * k + 213718) % 2 = 0 by omega]
    omega
  have h10 : C (165888 * k + 106859) = 497664 * k + 320578 := by
    unfold C
    simp [show (165888 * k + 106859) % 2 ≠ 0 by omega]
    omega
  have h11 : C (497664 * k + 320578) = 248832 * k + 160289 := by
    unfold C
    simp [show (497664 * k + 320578) % 2 = 0 by omega]
    omega
  have h12 : C (248832 * k + 160289) = 746496 * k + 480868 := by
    unfold C
    simp [show (248832 * k + 160289) % 2 ≠ 0 by omega]
    omega
  have h13 : C (746496 * k + 480868) = 373248 * k + 240434 := by
    unfold C
    simp [show (746496 * k + 480868) % 2 = 0 by omega]
    omega
  have h14 : C (373248 * k + 240434) = 186624 * k + 120217 := by
    unfold C
    simp [show (373248 * k + 240434) % 2 = 0 by omega]
    omega
  have h15 : C (186624 * k + 120217) = 559872 * k + 360652 := by
    unfold C
    simp [show (186624 * k + 120217) % 2 ≠ 0 by omega]
    omega
  have h16 : C (559872 * k + 360652) = 279936 * k + 180326 := by
    unfold C
    simp [show (559872 * k + 360652) % 2 = 0 by omega]
    omega
  have h17 : C (279936 * k + 180326) = 139968 * k + 90163 := by
    unfold C
    simp [show (279936 * k + 180326) % 2 = 0 by omega]
    omega
  have h18 : C (139968 * k + 90163) = 419904 * k + 270490 := by
    unfold C
    simp [show (139968 * k + 90163) % 2 ≠ 0 by omega]
    omega
  have h19 : C (419904 * k + 270490) = 209952 * k + 135245 := by
    unfold C
    simp [show (419904 * k + 270490) % 2 = 0 by omega]
    omega
  have h20 : C (209952 * k + 135245) = 629856 * k + 405736 := by
    unfold C
    simp [show (209952 * k + 135245) % 2 ≠ 0 by omega]
    omega
  have h21 : C (629856 * k + 405736) = 314928 * k + 202868 := by
    unfold C
    simp [show (629856 * k + 405736) % 2 = 0 by omega]
    omega
  have h22 : C (314928 * k + 202868) = 157464 * k + 101434 := by
    unfold C
    simp [show (314928 * k + 202868) % 2 = 0 by omega]
    omega
  have h23 : C (157464 * k + 101434) = 78732 * k + 50717 := by
    unfold C
    simp [show (157464 * k + 101434) % 2 = 0 by omega]
    omega
  have h24 : C (78732 * k + 50717) = 236196 * k + 152152 := by
    unfold C
    simp [show (78732 * k + 50717) % 2 ≠ 0 by omega]
    omega
  have h25 : C (236196 * k + 152152) = 118098 * k + 76076 := by
    unfold C
    simp [show (236196 * k + 152152) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 76076) = 59049 * k + 38038 := by
    unfold C
    simp [show (118098 * k + 76076) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 42215) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 42215)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_42239 : ∀ k : Nat,
    iterate (65536 * k + 42239) 26 = 59049 * k + 38059 ∧
      59049 * k + 38059 < 65536 * k + 42239 := by
  intro k
  have h1 : C (65536 * k + 42239) = 196608 * k + 126718 := by
    unfold C
    simp [show (65536 * k + 42239) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 126718) = 98304 * k + 63359 := by
    unfold C
    simp [show (196608 * k + 126718) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 63359) = 294912 * k + 190078 := by
    unfold C
    simp [show (98304 * k + 63359) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 190078) = 147456 * k + 95039 := by
    unfold C
    simp [show (294912 * k + 190078) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 95039) = 442368 * k + 285118 := by
    unfold C
    simp [show (147456 * k + 95039) % 2 ≠ 0 by omega]
    omega
  have h6 : C (442368 * k + 285118) = 221184 * k + 142559 := by
    unfold C
    simp [show (442368 * k + 285118) % 2 = 0 by omega]
    omega
  have h7 : C (221184 * k + 142559) = 663552 * k + 427678 := by
    unfold C
    simp [show (221184 * k + 142559) % 2 ≠ 0 by omega]
    omega
  have h8 : C (663552 * k + 427678) = 331776 * k + 213839 := by
    unfold C
    simp [show (663552 * k + 427678) % 2 = 0 by omega]
    omega
  have h9 : C (331776 * k + 213839) = 995328 * k + 641518 := by
    unfold C
    simp [show (331776 * k + 213839) % 2 ≠ 0 by omega]
    omega
  have h10 : C (995328 * k + 641518) = 497664 * k + 320759 := by
    unfold C
    simp [show (995328 * k + 641518) % 2 = 0 by omega]
    omega
  have h11 : C (497664 * k + 320759) = 1492992 * k + 962278 := by
    unfold C
    simp [show (497664 * k + 320759) % 2 ≠ 0 by omega]
    omega
  have h12 : C (1492992 * k + 962278) = 746496 * k + 481139 := by
    unfold C
    simp [show (1492992 * k + 962278) % 2 = 0 by omega]
    omega
  have h13 : C (746496 * k + 481139) = 2239488 * k + 1443418 := by
    unfold C
    simp [show (746496 * k + 481139) % 2 ≠ 0 by omega]
    omega
  have h14 : C (2239488 * k + 1443418) = 1119744 * k + 721709 := by
    unfold C
    simp [show (2239488 * k + 1443418) % 2 = 0 by omega]
    omega
  have h15 : C (1119744 * k + 721709) = 3359232 * k + 2165128 := by
    unfold C
    simp [show (1119744 * k + 721709) % 2 ≠ 0 by omega]
    omega
  have h16 : C (3359232 * k + 2165128) = 1679616 * k + 1082564 := by
    unfold C
    simp [show (3359232 * k + 2165128) % 2 = 0 by omega]
    omega
  have h17 : C (1679616 * k + 1082564) = 839808 * k + 541282 := by
    unfold C
    simp [show (1679616 * k + 1082564) % 2 = 0 by omega]
    omega
  have h18 : C (839808 * k + 541282) = 419904 * k + 270641 := by
    unfold C
    simp [show (839808 * k + 541282) % 2 = 0 by omega]
    omega
  have h19 : C (419904 * k + 270641) = 1259712 * k + 811924 := by
    unfold C
    simp [show (419904 * k + 270641) % 2 ≠ 0 by omega]
    omega
  have h20 : C (1259712 * k + 811924) = 629856 * k + 405962 := by
    unfold C
    simp [show (1259712 * k + 811924) % 2 = 0 by omega]
    omega
  have h21 : C (629856 * k + 405962) = 314928 * k + 202981 := by
    unfold C
    simp [show (629856 * k + 405962) % 2 = 0 by omega]
    omega
  have h22 : C (314928 * k + 202981) = 944784 * k + 608944 := by
    unfold C
    simp [show (314928 * k + 202981) % 2 ≠ 0 by omega]
    omega
  have h23 : C (944784 * k + 608944) = 472392 * k + 304472 := by
    unfold C
    simp [show (944784 * k + 608944) % 2 = 0 by omega]
    omega
  have h24 : C (472392 * k + 304472) = 236196 * k + 152236 := by
    unfold C
    simp [show (472392 * k + 304472) % 2 = 0 by omega]
    omega
  have h25 : C (236196 * k + 152236) = 118098 * k + 76118 := by
    unfold C
    simp [show (236196 * k + 152236) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 76118) = 59049 * k + 38059 := by
    unfold C
    simp [show (118098 * k + 76118) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 42239) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 42239)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_42303 : ∀ k : Nat,
    iterate (65536 * k + 42303) 26 = 59049 * k + 38117 ∧
      59049 * k + 38117 < 65536 * k + 42303 := by
  intro k
  have h1 : C (65536 * k + 42303) = 196608 * k + 126910 := by
    unfold C
    simp [show (65536 * k + 42303) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 126910) = 98304 * k + 63455 := by
    unfold C
    simp [show (196608 * k + 126910) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 63455) = 294912 * k + 190366 := by
    unfold C
    simp [show (98304 * k + 63455) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 190366) = 147456 * k + 95183 := by
    unfold C
    simp [show (294912 * k + 190366) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 95183) = 442368 * k + 285550 := by
    unfold C
    simp [show (147456 * k + 95183) % 2 ≠ 0 by omega]
    omega
  have h6 : C (442368 * k + 285550) = 221184 * k + 142775 := by
    unfold C
    simp [show (442368 * k + 285550) % 2 = 0 by omega]
    omega
  have h7 : C (221184 * k + 142775) = 663552 * k + 428326 := by
    unfold C
    simp [show (221184 * k + 142775) % 2 ≠ 0 by omega]
    omega
  have h8 : C (663552 * k + 428326) = 331776 * k + 214163 := by
    unfold C
    simp [show (663552 * k + 428326) % 2 = 0 by omega]
    omega
  have h9 : C (331776 * k + 214163) = 995328 * k + 642490 := by
    unfold C
    simp [show (331776 * k + 214163) % 2 ≠ 0 by omega]
    omega
  have h10 : C (995328 * k + 642490) = 497664 * k + 321245 := by
    unfold C
    simp [show (995328 * k + 642490) % 2 = 0 by omega]
    omega
  have h11 : C (497664 * k + 321245) = 1492992 * k + 963736 := by
    unfold C
    simp [show (497664 * k + 321245) % 2 ≠ 0 by omega]
    omega
  have h12 : C (1492992 * k + 963736) = 746496 * k + 481868 := by
    unfold C
    simp [show (1492992 * k + 963736) % 2 = 0 by omega]
    omega
  have h13 : C (746496 * k + 481868) = 373248 * k + 240934 := by
    unfold C
    simp [show (746496 * k + 481868) % 2 = 0 by omega]
    omega
  have h14 : C (373248 * k + 240934) = 186624 * k + 120467 := by
    unfold C
    simp [show (373248 * k + 240934) % 2 = 0 by omega]
    omega
  have h15 : C (186624 * k + 120467) = 559872 * k + 361402 := by
    unfold C
    simp [show (186624 * k + 120467) % 2 ≠ 0 by omega]
    omega
  have h16 : C (559872 * k + 361402) = 279936 * k + 180701 := by
    unfold C
    simp [show (559872 * k + 361402) % 2 = 0 by omega]
    omega
  have h17 : C (279936 * k + 180701) = 839808 * k + 542104 := by
    unfold C
    simp [show (279936 * k + 180701) % 2 ≠ 0 by omega]
    omega
  have h18 : C (839808 * k + 542104) = 419904 * k + 271052 := by
    unfold C
    simp [show (839808 * k + 542104) % 2 = 0 by omega]
    omega
  have h19 : C (419904 * k + 271052) = 209952 * k + 135526 := by
    unfold C
    simp [show (419904 * k + 271052) % 2 = 0 by omega]
    omega
  have h20 : C (209952 * k + 135526) = 104976 * k + 67763 := by
    unfold C
    simp [show (209952 * k + 135526) % 2 = 0 by omega]
    omega
  have h21 : C (104976 * k + 67763) = 314928 * k + 203290 := by
    unfold C
    simp [show (104976 * k + 67763) % 2 ≠ 0 by omega]
    omega
  have h22 : C (314928 * k + 203290) = 157464 * k + 101645 := by
    unfold C
    simp [show (314928 * k + 203290) % 2 = 0 by omega]
    omega
  have h23 : C (157464 * k + 101645) = 472392 * k + 304936 := by
    unfold C
    simp [show (157464 * k + 101645) % 2 ≠ 0 by omega]
    omega
  have h24 : C (472392 * k + 304936) = 236196 * k + 152468 := by
    unfold C
    simp [show (472392 * k + 304936) % 2 = 0 by omega]
    omega
  have h25 : C (236196 * k + 152468) = 118098 * k + 76234 := by
    unfold C
    simp [show (236196 * k + 152468) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 76234) = 59049 * k + 38117 := by
    unfold C
    simp [show (118098 * k + 76234) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 42303) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 42303)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_42343 : ∀ k : Nat,
    iterate (65536 * k + 42343) 26 = 59049 * k + 38153 ∧
      59049 * k + 38153 < 65536 * k + 42343 := by
  intro k
  have h1 : C (65536 * k + 42343) = 196608 * k + 127030 := by
    unfold C
    simp [show (65536 * k + 42343) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 127030) = 98304 * k + 63515 := by
    unfold C
    simp [show (196608 * k + 127030) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 63515) = 294912 * k + 190546 := by
    unfold C
    simp [show (98304 * k + 63515) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 190546) = 147456 * k + 95273 := by
    unfold C
    simp [show (294912 * k + 190546) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 95273) = 442368 * k + 285820 := by
    unfold C
    simp [show (147456 * k + 95273) % 2 ≠ 0 by omega]
    omega
  have h6 : C (442368 * k + 285820) = 221184 * k + 142910 := by
    unfold C
    simp [show (442368 * k + 285820) % 2 = 0 by omega]
    omega
  have h7 : C (221184 * k + 142910) = 110592 * k + 71455 := by
    unfold C
    simp [show (221184 * k + 142910) % 2 = 0 by omega]
    omega
  have h8 : C (110592 * k + 71455) = 331776 * k + 214366 := by
    unfold C
    simp [show (110592 * k + 71455) % 2 ≠ 0 by omega]
    omega
  have h9 : C (331776 * k + 214366) = 165888 * k + 107183 := by
    unfold C
    simp [show (331776 * k + 214366) % 2 = 0 by omega]
    omega
  have h10 : C (165888 * k + 107183) = 497664 * k + 321550 := by
    unfold C
    simp [show (165888 * k + 107183) % 2 ≠ 0 by omega]
    omega
  have h11 : C (497664 * k + 321550) = 248832 * k + 160775 := by
    unfold C
    simp [show (497664 * k + 321550) % 2 = 0 by omega]
    omega
  have h12 : C (248832 * k + 160775) = 746496 * k + 482326 := by
    unfold C
    simp [show (248832 * k + 160775) % 2 ≠ 0 by omega]
    omega
  have h13 : C (746496 * k + 482326) = 373248 * k + 241163 := by
    unfold C
    simp [show (746496 * k + 482326) % 2 = 0 by omega]
    omega
  have h14 : C (373248 * k + 241163) = 1119744 * k + 723490 := by
    unfold C
    simp [show (373248 * k + 241163) % 2 ≠ 0 by omega]
    omega
  have h15 : C (1119744 * k + 723490) = 559872 * k + 361745 := by
    unfold C
    simp [show (1119744 * k + 723490) % 2 = 0 by omega]
    omega
  have h16 : C (559872 * k + 361745) = 1679616 * k + 1085236 := by
    unfold C
    simp [show (559872 * k + 361745) % 2 ≠ 0 by omega]
    omega
  have h17 : C (1679616 * k + 1085236) = 839808 * k + 542618 := by
    unfold C
    simp [show (1679616 * k + 1085236) % 2 = 0 by omega]
    omega
  have h18 : C (839808 * k + 542618) = 419904 * k + 271309 := by
    unfold C
    simp [show (839808 * k + 542618) % 2 = 0 by omega]
    omega
  have h19 : C (419904 * k + 271309) = 1259712 * k + 813928 := by
    unfold C
    simp [show (419904 * k + 271309) % 2 ≠ 0 by omega]
    omega
  have h20 : C (1259712 * k + 813928) = 629856 * k + 406964 := by
    unfold C
    simp [show (1259712 * k + 813928) % 2 = 0 by omega]
    omega
  have h21 : C (629856 * k + 406964) = 314928 * k + 203482 := by
    unfold C
    simp [show (629856 * k + 406964) % 2 = 0 by omega]
    omega
  have h22 : C (314928 * k + 203482) = 157464 * k + 101741 := by
    unfold C
    simp [show (314928 * k + 203482) % 2 = 0 by omega]
    omega
  have h23 : C (157464 * k + 101741) = 472392 * k + 305224 := by
    unfold C
    simp [show (157464 * k + 101741) % 2 ≠ 0 by omega]
    omega
  have h24 : C (472392 * k + 305224) = 236196 * k + 152612 := by
    unfold C
    simp [show (472392 * k + 305224) % 2 = 0 by omega]
    omega
  have h25 : C (236196 * k + 152612) = 118098 * k + 76306 := by
    unfold C
    simp [show (236196 * k + 152612) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 76306) = 59049 * k + 38153 := by
    unfold C
    simp [show (118098 * k + 76306) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 42343) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 42343)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_42471 : ∀ k : Nat,
    iterate (65536 * k + 42471) 26 = 59049 * k + 38269 ∧
      59049 * k + 38269 < 65536 * k + 42471 := by
  intro k
  have h1 : C (65536 * k + 42471) = 196608 * k + 127414 := by
    unfold C
    simp [show (65536 * k + 42471) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 127414) = 98304 * k + 63707 := by
    unfold C
    simp [show (196608 * k + 127414) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 63707) = 294912 * k + 191122 := by
    unfold C
    simp [show (98304 * k + 63707) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 191122) = 147456 * k + 95561 := by
    unfold C
    simp [show (294912 * k + 191122) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 95561) = 442368 * k + 286684 := by
    unfold C
    simp [show (147456 * k + 95561) % 2 ≠ 0 by omega]
    omega
  have h6 : C (442368 * k + 286684) = 221184 * k + 143342 := by
    unfold C
    simp [show (442368 * k + 286684) % 2 = 0 by omega]
    omega
  have h7 : C (221184 * k + 143342) = 110592 * k + 71671 := by
    unfold C
    simp [show (221184 * k + 143342) % 2 = 0 by omega]
    omega
  have h8 : C (110592 * k + 71671) = 331776 * k + 215014 := by
    unfold C
    simp [show (110592 * k + 71671) % 2 ≠ 0 by omega]
    omega
  have h9 : C (331776 * k + 215014) = 165888 * k + 107507 := by
    unfold C
    simp [show (331776 * k + 215014) % 2 = 0 by omega]
    omega
  have h10 : C (165888 * k + 107507) = 497664 * k + 322522 := by
    unfold C
    simp [show (165888 * k + 107507) % 2 ≠ 0 by omega]
    omega
  have h11 : C (497664 * k + 322522) = 248832 * k + 161261 := by
    unfold C
    simp [show (497664 * k + 322522) % 2 = 0 by omega]
    omega
  have h12 : C (248832 * k + 161261) = 746496 * k + 483784 := by
    unfold C
    simp [show (248832 * k + 161261) % 2 ≠ 0 by omega]
    omega
  have h13 : C (746496 * k + 483784) = 373248 * k + 241892 := by
    unfold C
    simp [show (746496 * k + 483784) % 2 = 0 by omega]
    omega
  have h14 : C (373248 * k + 241892) = 186624 * k + 120946 := by
    unfold C
    simp [show (373248 * k + 241892) % 2 = 0 by omega]
    omega
  have h15 : C (186624 * k + 120946) = 93312 * k + 60473 := by
    unfold C
    simp [show (186624 * k + 120946) % 2 = 0 by omega]
    omega
  have h16 : C (93312 * k + 60473) = 279936 * k + 181420 := by
    unfold C
    simp [show (93312 * k + 60473) % 2 ≠ 0 by omega]
    omega
  have h17 : C (279936 * k + 181420) = 139968 * k + 90710 := by
    unfold C
    simp [show (279936 * k + 181420) % 2 = 0 by omega]
    omega
  have h18 : C (139968 * k + 90710) = 69984 * k + 45355 := by
    unfold C
    simp [show (139968 * k + 90710) % 2 = 0 by omega]
    omega
  have h19 : C (69984 * k + 45355) = 209952 * k + 136066 := by
    unfold C
    simp [show (69984 * k + 45355) % 2 ≠ 0 by omega]
    omega
  have h20 : C (209952 * k + 136066) = 104976 * k + 68033 := by
    unfold C
    simp [show (209952 * k + 136066) % 2 = 0 by omega]
    omega
  have h21 : C (104976 * k + 68033) = 314928 * k + 204100 := by
    unfold C
    simp [show (104976 * k + 68033) % 2 ≠ 0 by omega]
    omega
  have h22 : C (314928 * k + 204100) = 157464 * k + 102050 := by
    unfold C
    simp [show (314928 * k + 204100) % 2 = 0 by omega]
    omega
  have h23 : C (157464 * k + 102050) = 78732 * k + 51025 := by
    unfold C
    simp [show (157464 * k + 102050) % 2 = 0 by omega]
    omega
  have h24 : C (78732 * k + 51025) = 236196 * k + 153076 := by
    unfold C
    simp [show (78732 * k + 51025) % 2 ≠ 0 by omega]
    omega
  have h25 : C (236196 * k + 153076) = 118098 * k + 76538 := by
    unfold C
    simp [show (236196 * k + 153076) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 76538) = 59049 * k + 38269 := by
    unfold C
    simp [show (118098 * k + 76538) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 42471) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 42471)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_42651 : ∀ k : Nat,
    iterate (65536 * k + 42651) 26 = 59049 * k + 38431 ∧
      59049 * k + 38431 < 65536 * k + 42651 := by
  intro k
  have h1 : C (65536 * k + 42651) = 196608 * k + 127954 := by
    unfold C
    simp [show (65536 * k + 42651) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 127954) = 98304 * k + 63977 := by
    unfold C
    simp [show (196608 * k + 127954) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 63977) = 294912 * k + 191932 := by
    unfold C
    simp [show (98304 * k + 63977) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 191932) = 147456 * k + 95966 := by
    unfold C
    simp [show (294912 * k + 191932) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 95966) = 73728 * k + 47983 := by
    unfold C
    simp [show (147456 * k + 95966) % 2 = 0 by omega]
    omega
  have h6 : C (73728 * k + 47983) = 221184 * k + 143950 := by
    unfold C
    simp [show (73728 * k + 47983) % 2 ≠ 0 by omega]
    omega
  have h7 : C (221184 * k + 143950) = 110592 * k + 71975 := by
    unfold C
    simp [show (221184 * k + 143950) % 2 = 0 by omega]
    omega
  have h8 : C (110592 * k + 71975) = 331776 * k + 215926 := by
    unfold C
    simp [show (110592 * k + 71975) % 2 ≠ 0 by omega]
    omega
  have h9 : C (331776 * k + 215926) = 165888 * k + 107963 := by
    unfold C
    simp [show (331776 * k + 215926) % 2 = 0 by omega]
    omega
  have h10 : C (165888 * k + 107963) = 497664 * k + 323890 := by
    unfold C
    simp [show (165888 * k + 107963) % 2 ≠ 0 by omega]
    omega
  have h11 : C (497664 * k + 323890) = 248832 * k + 161945 := by
    unfold C
    simp [show (497664 * k + 323890) % 2 = 0 by omega]
    omega
  have h12 : C (248832 * k + 161945) = 746496 * k + 485836 := by
    unfold C
    simp [show (248832 * k + 161945) % 2 ≠ 0 by omega]
    omega
  have h13 : C (746496 * k + 485836) = 373248 * k + 242918 := by
    unfold C
    simp [show (746496 * k + 485836) % 2 = 0 by omega]
    omega
  have h14 : C (373248 * k + 242918) = 186624 * k + 121459 := by
    unfold C
    simp [show (373248 * k + 242918) % 2 = 0 by omega]
    omega
  have h15 : C (186624 * k + 121459) = 559872 * k + 364378 := by
    unfold C
    simp [show (186624 * k + 121459) % 2 ≠ 0 by omega]
    omega
  have h16 : C (559872 * k + 364378) = 279936 * k + 182189 := by
    unfold C
    simp [show (559872 * k + 364378) % 2 = 0 by omega]
    omega
  have h17 : C (279936 * k + 182189) = 839808 * k + 546568 := by
    unfold C
    simp [show (279936 * k + 182189) % 2 ≠ 0 by omega]
    omega
  have h18 : C (839808 * k + 546568) = 419904 * k + 273284 := by
    unfold C
    simp [show (839808 * k + 546568) % 2 = 0 by omega]
    omega
  have h19 : C (419904 * k + 273284) = 209952 * k + 136642 := by
    unfold C
    simp [show (419904 * k + 273284) % 2 = 0 by omega]
    omega
  have h20 : C (209952 * k + 136642) = 104976 * k + 68321 := by
    unfold C
    simp [show (209952 * k + 136642) % 2 = 0 by omega]
    omega
  have h21 : C (104976 * k + 68321) = 314928 * k + 204964 := by
    unfold C
    simp [show (104976 * k + 68321) % 2 ≠ 0 by omega]
    omega
  have h22 : C (314928 * k + 204964) = 157464 * k + 102482 := by
    unfold C
    simp [show (314928 * k + 204964) % 2 = 0 by omega]
    omega
  have h23 : C (157464 * k + 102482) = 78732 * k + 51241 := by
    unfold C
    simp [show (157464 * k + 102482) % 2 = 0 by omega]
    omega
  have h24 : C (78732 * k + 51241) = 236196 * k + 153724 := by
    unfold C
    simp [show (78732 * k + 51241) % 2 ≠ 0 by omega]
    omega
  have h25 : C (236196 * k + 153724) = 118098 * k + 76862 := by
    unfold C
    simp [show (236196 * k + 153724) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 76862) = 59049 * k + 38431 := by
    unfold C
    simp [show (118098 * k + 76862) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 42651) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 42651)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_42911 : ∀ k : Nat,
    iterate (65536 * k + 42911) 26 = 59049 * k + 38665 ∧
      59049 * k + 38665 < 65536 * k + 42911 := by
  intro k
  have h1 : C (65536 * k + 42911) = 196608 * k + 128734 := by
    unfold C
    simp [show (65536 * k + 42911) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 128734) = 98304 * k + 64367 := by
    unfold C
    simp [show (196608 * k + 128734) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 64367) = 294912 * k + 193102 := by
    unfold C
    simp [show (98304 * k + 64367) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 193102) = 147456 * k + 96551 := by
    unfold C
    simp [show (294912 * k + 193102) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 96551) = 442368 * k + 289654 := by
    unfold C
    simp [show (147456 * k + 96551) % 2 ≠ 0 by omega]
    omega
  have h6 : C (442368 * k + 289654) = 221184 * k + 144827 := by
    unfold C
    simp [show (442368 * k + 289654) % 2 = 0 by omega]
    omega
  have h7 : C (221184 * k + 144827) = 663552 * k + 434482 := by
    unfold C
    simp [show (221184 * k + 144827) % 2 ≠ 0 by omega]
    omega
  have h8 : C (663552 * k + 434482) = 331776 * k + 217241 := by
    unfold C
    simp [show (663552 * k + 434482) % 2 = 0 by omega]
    omega
  have h9 : C (331776 * k + 217241) = 995328 * k + 651724 := by
    unfold C
    simp [show (331776 * k + 217241) % 2 ≠ 0 by omega]
    omega
  have h10 : C (995328 * k + 651724) = 497664 * k + 325862 := by
    unfold C
    simp [show (995328 * k + 651724) % 2 = 0 by omega]
    omega
  have h11 : C (497664 * k + 325862) = 248832 * k + 162931 := by
    unfold C
    simp [show (497664 * k + 325862) % 2 = 0 by omega]
    omega
  have h12 : C (248832 * k + 162931) = 746496 * k + 488794 := by
    unfold C
    simp [show (248832 * k + 162931) % 2 ≠ 0 by omega]
    omega
  have h13 : C (746496 * k + 488794) = 373248 * k + 244397 := by
    unfold C
    simp [show (746496 * k + 488794) % 2 = 0 by omega]
    omega
  have h14 : C (373248 * k + 244397) = 1119744 * k + 733192 := by
    unfold C
    simp [show (373248 * k + 244397) % 2 ≠ 0 by omega]
    omega
  have h15 : C (1119744 * k + 733192) = 559872 * k + 366596 := by
    unfold C
    simp [show (1119744 * k + 733192) % 2 = 0 by omega]
    omega
  have h16 : C (559872 * k + 366596) = 279936 * k + 183298 := by
    unfold C
    simp [show (559872 * k + 366596) % 2 = 0 by omega]
    omega
  have h17 : C (279936 * k + 183298) = 139968 * k + 91649 := by
    unfold C
    simp [show (279936 * k + 183298) % 2 = 0 by omega]
    omega
  have h18 : C (139968 * k + 91649) = 419904 * k + 274948 := by
    unfold C
    simp [show (139968 * k + 91649) % 2 ≠ 0 by omega]
    omega
  have h19 : C (419904 * k + 274948) = 209952 * k + 137474 := by
    unfold C
    simp [show (419904 * k + 274948) % 2 = 0 by omega]
    omega
  have h20 : C (209952 * k + 137474) = 104976 * k + 68737 := by
    unfold C
    simp [show (209952 * k + 137474) % 2 = 0 by omega]
    omega
  have h21 : C (104976 * k + 68737) = 314928 * k + 206212 := by
    unfold C
    simp [show (104976 * k + 68737) % 2 ≠ 0 by omega]
    omega
  have h22 : C (314928 * k + 206212) = 157464 * k + 103106 := by
    unfold C
    simp [show (314928 * k + 206212) % 2 = 0 by omega]
    omega
  have h23 : C (157464 * k + 103106) = 78732 * k + 51553 := by
    unfold C
    simp [show (157464 * k + 103106) % 2 = 0 by omega]
    omega
  have h24 : C (78732 * k + 51553) = 236196 * k + 154660 := by
    unfold C
    simp [show (78732 * k + 51553) % 2 ≠ 0 by omega]
    omega
  have h25 : C (236196 * k + 154660) = 118098 * k + 77330 := by
    unfold C
    simp [show (236196 * k + 154660) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 77330) = 59049 * k + 38665 := by
    unfold C
    simp [show (118098 * k + 77330) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 42911) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 42911)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_43071 : ∀ k : Nat,
    iterate (65536 * k + 43071) 26 = 59049 * k + 38809 ∧
      59049 * k + 38809 < 65536 * k + 43071 := by
  intro k
  have h1 : C (65536 * k + 43071) = 196608 * k + 129214 := by
    unfold C
    simp [show (65536 * k + 43071) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 129214) = 98304 * k + 64607 := by
    unfold C
    simp [show (196608 * k + 129214) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 64607) = 294912 * k + 193822 := by
    unfold C
    simp [show (98304 * k + 64607) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 193822) = 147456 * k + 96911 := by
    unfold C
    simp [show (294912 * k + 193822) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 96911) = 442368 * k + 290734 := by
    unfold C
    simp [show (147456 * k + 96911) % 2 ≠ 0 by omega]
    omega
  have h6 : C (442368 * k + 290734) = 221184 * k + 145367 := by
    unfold C
    simp [show (442368 * k + 290734) % 2 = 0 by omega]
    omega
  have h7 : C (221184 * k + 145367) = 663552 * k + 436102 := by
    unfold C
    simp [show (221184 * k + 145367) % 2 ≠ 0 by omega]
    omega
  have h8 : C (663552 * k + 436102) = 331776 * k + 218051 := by
    unfold C
    simp [show (663552 * k + 436102) % 2 = 0 by omega]
    omega
  have h9 : C (331776 * k + 218051) = 995328 * k + 654154 := by
    unfold C
    simp [show (331776 * k + 218051) % 2 ≠ 0 by omega]
    omega
  have h10 : C (995328 * k + 654154) = 497664 * k + 327077 := by
    unfold C
    simp [show (995328 * k + 654154) % 2 = 0 by omega]
    omega
  have h11 : C (497664 * k + 327077) = 1492992 * k + 981232 := by
    unfold C
    simp [show (497664 * k + 327077) % 2 ≠ 0 by omega]
    omega
  have h12 : C (1492992 * k + 981232) = 746496 * k + 490616 := by
    unfold C
    simp [show (1492992 * k + 981232) % 2 = 0 by omega]
    omega
  have h13 : C (746496 * k + 490616) = 373248 * k + 245308 := by
    unfold C
    simp [show (746496 * k + 490616) % 2 = 0 by omega]
    omega
  have h14 : C (373248 * k + 245308) = 186624 * k + 122654 := by
    unfold C
    simp [show (373248 * k + 245308) % 2 = 0 by omega]
    omega
  have h15 : C (186624 * k + 122654) = 93312 * k + 61327 := by
    unfold C
    simp [show (186624 * k + 122654) % 2 = 0 by omega]
    omega
  have h16 : C (93312 * k + 61327) = 279936 * k + 183982 := by
    unfold C
    simp [show (93312 * k + 61327) % 2 ≠ 0 by omega]
    omega
  have h17 : C (279936 * k + 183982) = 139968 * k + 91991 := by
    unfold C
    simp [show (279936 * k + 183982) % 2 = 0 by omega]
    omega
  have h18 : C (139968 * k + 91991) = 419904 * k + 275974 := by
    unfold C
    simp [show (139968 * k + 91991) % 2 ≠ 0 by omega]
    omega
  have h19 : C (419904 * k + 275974) = 209952 * k + 137987 := by
    unfold C
    simp [show (419904 * k + 275974) % 2 = 0 by omega]
    omega
  have h20 : C (209952 * k + 137987) = 629856 * k + 413962 := by
    unfold C
    simp [show (209952 * k + 137987) % 2 ≠ 0 by omega]
    omega
  have h21 : C (629856 * k + 413962) = 314928 * k + 206981 := by
    unfold C
    simp [show (629856 * k + 413962) % 2 = 0 by omega]
    omega
  have h22 : C (314928 * k + 206981) = 944784 * k + 620944 := by
    unfold C
    simp [show (314928 * k + 206981) % 2 ≠ 0 by omega]
    omega
  have h23 : C (944784 * k + 620944) = 472392 * k + 310472 := by
    unfold C
    simp [show (944784 * k + 620944) % 2 = 0 by omega]
    omega
  have h24 : C (472392 * k + 310472) = 236196 * k + 155236 := by
    unfold C
    simp [show (472392 * k + 310472) % 2 = 0 by omega]
    omega
  have h25 : C (236196 * k + 155236) = 118098 * k + 77618 := by
    unfold C
    simp [show (236196 * k + 155236) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 77618) = 59049 * k + 38809 := by
    unfold C
    simp [show (118098 * k + 77618) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 43071) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 43071)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_43111 : ∀ k : Nat,
    iterate (65536 * k + 43111) 26 = 59049 * k + 38845 ∧
      59049 * k + 38845 < 65536 * k + 43111 := by
  intro k
  have h1 : C (65536 * k + 43111) = 196608 * k + 129334 := by
    unfold C
    simp [show (65536 * k + 43111) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 129334) = 98304 * k + 64667 := by
    unfold C
    simp [show (196608 * k + 129334) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 64667) = 294912 * k + 194002 := by
    unfold C
    simp [show (98304 * k + 64667) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 194002) = 147456 * k + 97001 := by
    unfold C
    simp [show (294912 * k + 194002) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 97001) = 442368 * k + 291004 := by
    unfold C
    simp [show (147456 * k + 97001) % 2 ≠ 0 by omega]
    omega
  have h6 : C (442368 * k + 291004) = 221184 * k + 145502 := by
    unfold C
    simp [show (442368 * k + 291004) % 2 = 0 by omega]
    omega
  have h7 : C (221184 * k + 145502) = 110592 * k + 72751 := by
    unfold C
    simp [show (221184 * k + 145502) % 2 = 0 by omega]
    omega
  have h8 : C (110592 * k + 72751) = 331776 * k + 218254 := by
    unfold C
    simp [show (110592 * k + 72751) % 2 ≠ 0 by omega]
    omega
  have h9 : C (331776 * k + 218254) = 165888 * k + 109127 := by
    unfold C
    simp [show (331776 * k + 218254) % 2 = 0 by omega]
    omega
  have h10 : C (165888 * k + 109127) = 497664 * k + 327382 := by
    unfold C
    simp [show (165888 * k + 109127) % 2 ≠ 0 by omega]
    omega
  have h11 : C (497664 * k + 327382) = 248832 * k + 163691 := by
    unfold C
    simp [show (497664 * k + 327382) % 2 = 0 by omega]
    omega
  have h12 : C (248832 * k + 163691) = 746496 * k + 491074 := by
    unfold C
    simp [show (248832 * k + 163691) % 2 ≠ 0 by omega]
    omega
  have h13 : C (746496 * k + 491074) = 373248 * k + 245537 := by
    unfold C
    simp [show (746496 * k + 491074) % 2 = 0 by omega]
    omega
  have h14 : C (373248 * k + 245537) = 1119744 * k + 736612 := by
    unfold C
    simp [show (373248 * k + 245537) % 2 ≠ 0 by omega]
    omega
  have h15 : C (1119744 * k + 736612) = 559872 * k + 368306 := by
    unfold C
    simp [show (1119744 * k + 736612) % 2 = 0 by omega]
    omega
  have h16 : C (559872 * k + 368306) = 279936 * k + 184153 := by
    unfold C
    simp [show (559872 * k + 368306) % 2 = 0 by omega]
    omega
  have h17 : C (279936 * k + 184153) = 839808 * k + 552460 := by
    unfold C
    simp [show (279936 * k + 184153) % 2 ≠ 0 by omega]
    omega
  have h18 : C (839808 * k + 552460) = 419904 * k + 276230 := by
    unfold C
    simp [show (839808 * k + 552460) % 2 = 0 by omega]
    omega
  have h19 : C (419904 * k + 276230) = 209952 * k + 138115 := by
    unfold C
    simp [show (419904 * k + 276230) % 2 = 0 by omega]
    omega
  have h20 : C (209952 * k + 138115) = 629856 * k + 414346 := by
    unfold C
    simp [show (209952 * k + 138115) % 2 ≠ 0 by omega]
    omega
  have h21 : C (629856 * k + 414346) = 314928 * k + 207173 := by
    unfold C
    simp [show (629856 * k + 414346) % 2 = 0 by omega]
    omega
  have h22 : C (314928 * k + 207173) = 944784 * k + 621520 := by
    unfold C
    simp [show (314928 * k + 207173) % 2 ≠ 0 by omega]
    omega
  have h23 : C (944784 * k + 621520) = 472392 * k + 310760 := by
    unfold C
    simp [show (944784 * k + 621520) % 2 = 0 by omega]
    omega
  have h24 : C (472392 * k + 310760) = 236196 * k + 155380 := by
    unfold C
    simp [show (472392 * k + 310760) % 2 = 0 by omega]
    omega
  have h25 : C (236196 * k + 155380) = 118098 * k + 77690 := by
    unfold C
    simp [show (236196 * k + 155380) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 77690) = 59049 * k + 38845 := by
    unfold C
    simp [show (118098 * k + 77690) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 43111) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 43111)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_43215 : ∀ k : Nat,
    iterate (65536 * k + 43215) 26 = 59049 * k + 38939 ∧
      59049 * k + 38939 < 65536 * k + 43215 := by
  intro k
  have h1 : C (65536 * k + 43215) = 196608 * k + 129646 := by
    unfold C
    simp [show (65536 * k + 43215) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 129646) = 98304 * k + 64823 := by
    unfold C
    simp [show (196608 * k + 129646) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 64823) = 294912 * k + 194470 := by
    unfold C
    simp [show (98304 * k + 64823) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 194470) = 147456 * k + 97235 := by
    unfold C
    simp [show (294912 * k + 194470) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 97235) = 442368 * k + 291706 := by
    unfold C
    simp [show (147456 * k + 97235) % 2 ≠ 0 by omega]
    omega
  have h6 : C (442368 * k + 291706) = 221184 * k + 145853 := by
    unfold C
    simp [show (442368 * k + 291706) % 2 = 0 by omega]
    omega
  have h7 : C (221184 * k + 145853) = 663552 * k + 437560 := by
    unfold C
    simp [show (221184 * k + 145853) % 2 ≠ 0 by omega]
    omega
  have h8 : C (663552 * k + 437560) = 331776 * k + 218780 := by
    unfold C
    simp [show (663552 * k + 437560) % 2 = 0 by omega]
    omega
  have h9 : C (331776 * k + 218780) = 165888 * k + 109390 := by
    unfold C
    simp [show (331776 * k + 218780) % 2 = 0 by omega]
    omega
  have h10 : C (165888 * k + 109390) = 82944 * k + 54695 := by
    unfold C
    simp [show (165888 * k + 109390) % 2 = 0 by omega]
    omega
  have h11 : C (82944 * k + 54695) = 248832 * k + 164086 := by
    unfold C
    simp [show (82944 * k + 54695) % 2 ≠ 0 by omega]
    omega
  have h12 : C (248832 * k + 164086) = 124416 * k + 82043 := by
    unfold C
    simp [show (248832 * k + 164086) % 2 = 0 by omega]
    omega
  have h13 : C (124416 * k + 82043) = 373248 * k + 246130 := by
    unfold C
    simp [show (124416 * k + 82043) % 2 ≠ 0 by omega]
    omega
  have h14 : C (373248 * k + 246130) = 186624 * k + 123065 := by
    unfold C
    simp [show (373248 * k + 246130) % 2 = 0 by omega]
    omega
  have h15 : C (186624 * k + 123065) = 559872 * k + 369196 := by
    unfold C
    simp [show (186624 * k + 123065) % 2 ≠ 0 by omega]
    omega
  have h16 : C (559872 * k + 369196) = 279936 * k + 184598 := by
    unfold C
    simp [show (559872 * k + 369196) % 2 = 0 by omega]
    omega
  have h17 : C (279936 * k + 184598) = 139968 * k + 92299 := by
    unfold C
    simp [show (279936 * k + 184598) % 2 = 0 by omega]
    omega
  have h18 : C (139968 * k + 92299) = 419904 * k + 276898 := by
    unfold C
    simp [show (139968 * k + 92299) % 2 ≠ 0 by omega]
    omega
  have h19 : C (419904 * k + 276898) = 209952 * k + 138449 := by
    unfold C
    simp [show (419904 * k + 276898) % 2 = 0 by omega]
    omega
  have h20 : C (209952 * k + 138449) = 629856 * k + 415348 := by
    unfold C
    simp [show (209952 * k + 138449) % 2 ≠ 0 by omega]
    omega
  have h21 : C (629856 * k + 415348) = 314928 * k + 207674 := by
    unfold C
    simp [show (629856 * k + 415348) % 2 = 0 by omega]
    omega
  have h22 : C (314928 * k + 207674) = 157464 * k + 103837 := by
    unfold C
    simp [show (314928 * k + 207674) % 2 = 0 by omega]
    omega
  have h23 : C (157464 * k + 103837) = 472392 * k + 311512 := by
    unfold C
    simp [show (157464 * k + 103837) % 2 ≠ 0 by omega]
    omega
  have h24 : C (472392 * k + 311512) = 236196 * k + 155756 := by
    unfold C
    simp [show (472392 * k + 311512) % 2 = 0 by omega]
    omega
  have h25 : C (236196 * k + 155756) = 118098 * k + 77878 := by
    unfold C
    simp [show (236196 * k + 155756) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 77878) = 59049 * k + 38939 := by
    unfold C
    simp [show (118098 * k + 77878) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 43215) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 43215)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_43335 : ∀ k : Nat,
    iterate (65536 * k + 43335) 26 = 59049 * k + 39047 ∧
      59049 * k + 39047 < 65536 * k + 43335 := by
  intro k
  have h1 : C (65536 * k + 43335) = 196608 * k + 130006 := by
    unfold C
    simp [show (65536 * k + 43335) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 130006) = 98304 * k + 65003 := by
    unfold C
    simp [show (196608 * k + 130006) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 65003) = 294912 * k + 195010 := by
    unfold C
    simp [show (98304 * k + 65003) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 195010) = 147456 * k + 97505 := by
    unfold C
    simp [show (294912 * k + 195010) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 97505) = 442368 * k + 292516 := by
    unfold C
    simp [show (147456 * k + 97505) % 2 ≠ 0 by omega]
    omega
  have h6 : C (442368 * k + 292516) = 221184 * k + 146258 := by
    unfold C
    simp [show (442368 * k + 292516) % 2 = 0 by omega]
    omega
  have h7 : C (221184 * k + 146258) = 110592 * k + 73129 := by
    unfold C
    simp [show (221184 * k + 146258) % 2 = 0 by omega]
    omega
  have h8 : C (110592 * k + 73129) = 331776 * k + 219388 := by
    unfold C
    simp [show (110592 * k + 73129) % 2 ≠ 0 by omega]
    omega
  have h9 : C (331776 * k + 219388) = 165888 * k + 109694 := by
    unfold C
    simp [show (331776 * k + 219388) % 2 = 0 by omega]
    omega
  have h10 : C (165888 * k + 109694) = 82944 * k + 54847 := by
    unfold C
    simp [show (165888 * k + 109694) % 2 = 0 by omega]
    omega
  have h11 : C (82944 * k + 54847) = 248832 * k + 164542 := by
    unfold C
    simp [show (82944 * k + 54847) % 2 ≠ 0 by omega]
    omega
  have h12 : C (248832 * k + 164542) = 124416 * k + 82271 := by
    unfold C
    simp [show (248832 * k + 164542) % 2 = 0 by omega]
    omega
  have h13 : C (124416 * k + 82271) = 373248 * k + 246814 := by
    unfold C
    simp [show (124416 * k + 82271) % 2 ≠ 0 by omega]
    omega
  have h14 : C (373248 * k + 246814) = 186624 * k + 123407 := by
    unfold C
    simp [show (373248 * k + 246814) % 2 = 0 by omega]
    omega
  have h15 : C (186624 * k + 123407) = 559872 * k + 370222 := by
    unfold C
    simp [show (186624 * k + 123407) % 2 ≠ 0 by omega]
    omega
  have h16 : C (559872 * k + 370222) = 279936 * k + 185111 := by
    unfold C
    simp [show (559872 * k + 370222) % 2 = 0 by omega]
    omega
  have h17 : C (279936 * k + 185111) = 839808 * k + 555334 := by
    unfold C
    simp [show (279936 * k + 185111) % 2 ≠ 0 by omega]
    omega
  have h18 : C (839808 * k + 555334) = 419904 * k + 277667 := by
    unfold C
    simp [show (839808 * k + 555334) % 2 = 0 by omega]
    omega
  have h19 : C (419904 * k + 277667) = 1259712 * k + 833002 := by
    unfold C
    simp [show (419904 * k + 277667) % 2 ≠ 0 by omega]
    omega
  have h20 : C (1259712 * k + 833002) = 629856 * k + 416501 := by
    unfold C
    simp [show (1259712 * k + 833002) % 2 = 0 by omega]
    omega
  have h21 : C (629856 * k + 416501) = 1889568 * k + 1249504 := by
    unfold C
    simp [show (629856 * k + 416501) % 2 ≠ 0 by omega]
    omega
  have h22 : C (1889568 * k + 1249504) = 944784 * k + 624752 := by
    unfold C
    simp [show (1889568 * k + 1249504) % 2 = 0 by omega]
    omega
  have h23 : C (944784 * k + 624752) = 472392 * k + 312376 := by
    unfold C
    simp [show (944784 * k + 624752) % 2 = 0 by omega]
    omega
  have h24 : C (472392 * k + 312376) = 236196 * k + 156188 := by
    unfold C
    simp [show (472392 * k + 312376) % 2 = 0 by omega]
    omega
  have h25 : C (236196 * k + 156188) = 118098 * k + 78094 := by
    unfold C
    simp [show (236196 * k + 156188) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 78094) = 59049 * k + 39047 := by
    unfold C
    simp [show (118098 * k + 78094) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 43335) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 43335)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_43471 : ∀ k : Nat,
    iterate (65536 * k + 43471) 26 = 59049 * k + 39170 ∧
      59049 * k + 39170 < 65536 * k + 43471 := by
  intro k
  have h1 : C (65536 * k + 43471) = 196608 * k + 130414 := by
    unfold C
    simp [show (65536 * k + 43471) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 130414) = 98304 * k + 65207 := by
    unfold C
    simp [show (196608 * k + 130414) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 65207) = 294912 * k + 195622 := by
    unfold C
    simp [show (98304 * k + 65207) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 195622) = 147456 * k + 97811 := by
    unfold C
    simp [show (294912 * k + 195622) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 97811) = 442368 * k + 293434 := by
    unfold C
    simp [show (147456 * k + 97811) % 2 ≠ 0 by omega]
    omega
  have h6 : C (442368 * k + 293434) = 221184 * k + 146717 := by
    unfold C
    simp [show (442368 * k + 293434) % 2 = 0 by omega]
    omega
  have h7 : C (221184 * k + 146717) = 663552 * k + 440152 := by
    unfold C
    simp [show (221184 * k + 146717) % 2 ≠ 0 by omega]
    omega
  have h8 : C (663552 * k + 440152) = 331776 * k + 220076 := by
    unfold C
    simp [show (663552 * k + 440152) % 2 = 0 by omega]
    omega
  have h9 : C (331776 * k + 220076) = 165888 * k + 110038 := by
    unfold C
    simp [show (331776 * k + 220076) % 2 = 0 by omega]
    omega
  have h10 : C (165888 * k + 110038) = 82944 * k + 55019 := by
    unfold C
    simp [show (165888 * k + 110038) % 2 = 0 by omega]
    omega
  have h11 : C (82944 * k + 55019) = 248832 * k + 165058 := by
    unfold C
    simp [show (82944 * k + 55019) % 2 ≠ 0 by omega]
    omega
  have h12 : C (248832 * k + 165058) = 124416 * k + 82529 := by
    unfold C
    simp [show (248832 * k + 165058) % 2 = 0 by omega]
    omega
  have h13 : C (124416 * k + 82529) = 373248 * k + 247588 := by
    unfold C
    simp [show (124416 * k + 82529) % 2 ≠ 0 by omega]
    omega
  have h14 : C (373248 * k + 247588) = 186624 * k + 123794 := by
    unfold C
    simp [show (373248 * k + 247588) % 2 = 0 by omega]
    omega
  have h15 : C (186624 * k + 123794) = 93312 * k + 61897 := by
    unfold C
    simp [show (186624 * k + 123794) % 2 = 0 by omega]
    omega
  have h16 : C (93312 * k + 61897) = 279936 * k + 185692 := by
    unfold C
    simp [show (93312 * k + 61897) % 2 ≠ 0 by omega]
    omega
  have h17 : C (279936 * k + 185692) = 139968 * k + 92846 := by
    unfold C
    simp [show (279936 * k + 185692) % 2 = 0 by omega]
    omega
  have h18 : C (139968 * k + 92846) = 69984 * k + 46423 := by
    unfold C
    simp [show (139968 * k + 92846) % 2 = 0 by omega]
    omega
  have h19 : C (69984 * k + 46423) = 209952 * k + 139270 := by
    unfold C
    simp [show (69984 * k + 46423) % 2 ≠ 0 by omega]
    omega
  have h20 : C (209952 * k + 139270) = 104976 * k + 69635 := by
    unfold C
    simp [show (209952 * k + 139270) % 2 = 0 by omega]
    omega
  have h21 : C (104976 * k + 69635) = 314928 * k + 208906 := by
    unfold C
    simp [show (104976 * k + 69635) % 2 ≠ 0 by omega]
    omega
  have h22 : C (314928 * k + 208906) = 157464 * k + 104453 := by
    unfold C
    simp [show (314928 * k + 208906) % 2 = 0 by omega]
    omega
  have h23 : C (157464 * k + 104453) = 472392 * k + 313360 := by
    unfold C
    simp [show (157464 * k + 104453) % 2 ≠ 0 by omega]
    omega
  have h24 : C (472392 * k + 313360) = 236196 * k + 156680 := by
    unfold C
    simp [show (472392 * k + 313360) % 2 = 0 by omega]
    omega
  have h25 : C (236196 * k + 156680) = 118098 * k + 78340 := by
    unfold C
    simp [show (236196 * k + 156680) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 78340) = 59049 * k + 39170 := by
    unfold C
    simp [show (118098 * k + 78340) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 43471) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 43471)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_43611 : ∀ k : Nat,
    iterate (65536 * k + 43611) 26 = 59049 * k + 39296 ∧
      59049 * k + 39296 < 65536 * k + 43611 := by
  intro k
  have h1 : C (65536 * k + 43611) = 196608 * k + 130834 := by
    unfold C
    simp [show (65536 * k + 43611) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 130834) = 98304 * k + 65417 := by
    unfold C
    simp [show (196608 * k + 130834) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 65417) = 294912 * k + 196252 := by
    unfold C
    simp [show (98304 * k + 65417) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 196252) = 147456 * k + 98126 := by
    unfold C
    simp [show (294912 * k + 196252) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 98126) = 73728 * k + 49063 := by
    unfold C
    simp [show (147456 * k + 98126) % 2 = 0 by omega]
    omega
  have h6 : C (73728 * k + 49063) = 221184 * k + 147190 := by
    unfold C
    simp [show (73728 * k + 49063) % 2 ≠ 0 by omega]
    omega
  have h7 : C (221184 * k + 147190) = 110592 * k + 73595 := by
    unfold C
    simp [show (221184 * k + 147190) % 2 = 0 by omega]
    omega
  have h8 : C (110592 * k + 73595) = 331776 * k + 220786 := by
    unfold C
    simp [show (110592 * k + 73595) % 2 ≠ 0 by omega]
    omega
  have h9 : C (331776 * k + 220786) = 165888 * k + 110393 := by
    unfold C
    simp [show (331776 * k + 220786) % 2 = 0 by omega]
    omega
  have h10 : C (165888 * k + 110393) = 497664 * k + 331180 := by
    unfold C
    simp [show (165888 * k + 110393) % 2 ≠ 0 by omega]
    omega
  have h11 : C (497664 * k + 331180) = 248832 * k + 165590 := by
    unfold C
    simp [show (497664 * k + 331180) % 2 = 0 by omega]
    omega
  have h12 : C (248832 * k + 165590) = 124416 * k + 82795 := by
    unfold C
    simp [show (248832 * k + 165590) % 2 = 0 by omega]
    omega
  have h13 : C (124416 * k + 82795) = 373248 * k + 248386 := by
    unfold C
    simp [show (124416 * k + 82795) % 2 ≠ 0 by omega]
    omega
  have h14 : C (373248 * k + 248386) = 186624 * k + 124193 := by
    unfold C
    simp [show (373248 * k + 248386) % 2 = 0 by omega]
    omega
  have h15 : C (186624 * k + 124193) = 559872 * k + 372580 := by
    unfold C
    simp [show (186624 * k + 124193) % 2 ≠ 0 by omega]
    omega
  have h16 : C (559872 * k + 372580) = 279936 * k + 186290 := by
    unfold C
    simp [show (559872 * k + 372580) % 2 = 0 by omega]
    omega
  have h17 : C (279936 * k + 186290) = 139968 * k + 93145 := by
    unfold C
    simp [show (279936 * k + 186290) % 2 = 0 by omega]
    omega
  have h18 : C (139968 * k + 93145) = 419904 * k + 279436 := by
    unfold C
    simp [show (139968 * k + 93145) % 2 ≠ 0 by omega]
    omega
  have h19 : C (419904 * k + 279436) = 209952 * k + 139718 := by
    unfold C
    simp [show (419904 * k + 279436) % 2 = 0 by omega]
    omega
  have h20 : C (209952 * k + 139718) = 104976 * k + 69859 := by
    unfold C
    simp [show (209952 * k + 139718) % 2 = 0 by omega]
    omega
  have h21 : C (104976 * k + 69859) = 314928 * k + 209578 := by
    unfold C
    simp [show (104976 * k + 69859) % 2 ≠ 0 by omega]
    omega
  have h22 : C (314928 * k + 209578) = 157464 * k + 104789 := by
    unfold C
    simp [show (314928 * k + 209578) % 2 = 0 by omega]
    omega
  have h23 : C (157464 * k + 104789) = 472392 * k + 314368 := by
    unfold C
    simp [show (157464 * k + 104789) % 2 ≠ 0 by omega]
    omega
  have h24 : C (472392 * k + 314368) = 236196 * k + 157184 := by
    unfold C
    simp [show (472392 * k + 314368) % 2 = 0 by omega]
    omega
  have h25 : C (236196 * k + 157184) = 118098 * k + 78592 := by
    unfold C
    simp [show (236196 * k + 157184) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 78592) = 59049 * k + 39296 := by
    unfold C
    simp [show (118098 * k + 78592) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 43611) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 43611)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_43775 : ∀ k : Nat,
    iterate (65536 * k + 43775) 26 = 59049 * k + 39443 ∧
      59049 * k + 39443 < 65536 * k + 43775 := by
  intro k
  have h1 : C (65536 * k + 43775) = 196608 * k + 131326 := by
    unfold C
    simp [show (65536 * k + 43775) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 131326) = 98304 * k + 65663 := by
    unfold C
    simp [show (196608 * k + 131326) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 65663) = 294912 * k + 196990 := by
    unfold C
    simp [show (98304 * k + 65663) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 196990) = 147456 * k + 98495 := by
    unfold C
    simp [show (294912 * k + 196990) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 98495) = 442368 * k + 295486 := by
    unfold C
    simp [show (147456 * k + 98495) % 2 ≠ 0 by omega]
    omega
  have h6 : C (442368 * k + 295486) = 221184 * k + 147743 := by
    unfold C
    simp [show (442368 * k + 295486) % 2 = 0 by omega]
    omega
  have h7 : C (221184 * k + 147743) = 663552 * k + 443230 := by
    unfold C
    simp [show (221184 * k + 147743) % 2 ≠ 0 by omega]
    omega
  have h8 : C (663552 * k + 443230) = 331776 * k + 221615 := by
    unfold C
    simp [show (663552 * k + 443230) % 2 = 0 by omega]
    omega
  have h9 : C (331776 * k + 221615) = 995328 * k + 664846 := by
    unfold C
    simp [show (331776 * k + 221615) % 2 ≠ 0 by omega]
    omega
  have h10 : C (995328 * k + 664846) = 497664 * k + 332423 := by
    unfold C
    simp [show (995328 * k + 664846) % 2 = 0 by omega]
    omega
  have h11 : C (497664 * k + 332423) = 1492992 * k + 997270 := by
    unfold C
    simp [show (497664 * k + 332423) % 2 ≠ 0 by omega]
    omega
  have h12 : C (1492992 * k + 997270) = 746496 * k + 498635 := by
    unfold C
    simp [show (1492992 * k + 997270) % 2 = 0 by omega]
    omega
  have h13 : C (746496 * k + 498635) = 2239488 * k + 1495906 := by
    unfold C
    simp [show (746496 * k + 498635) % 2 ≠ 0 by omega]
    omega
  have h14 : C (2239488 * k + 1495906) = 1119744 * k + 747953 := by
    unfold C
    simp [show (2239488 * k + 1495906) % 2 = 0 by omega]
    omega
  have h15 : C (1119744 * k + 747953) = 3359232 * k + 2243860 := by
    unfold C
    simp [show (1119744 * k + 747953) % 2 ≠ 0 by omega]
    omega
  have h16 : C (3359232 * k + 2243860) = 1679616 * k + 1121930 := by
    unfold C
    simp [show (3359232 * k + 2243860) % 2 = 0 by omega]
    omega
  have h17 : C (1679616 * k + 1121930) = 839808 * k + 560965 := by
    unfold C
    simp [show (1679616 * k + 1121930) % 2 = 0 by omega]
    omega
  have h18 : C (839808 * k + 560965) = 2519424 * k + 1682896 := by
    unfold C
    simp [show (839808 * k + 560965) % 2 ≠ 0 by omega]
    omega
  have h19 : C (2519424 * k + 1682896) = 1259712 * k + 841448 := by
    unfold C
    simp [show (2519424 * k + 1682896) % 2 = 0 by omega]
    omega
  have h20 : C (1259712 * k + 841448) = 629856 * k + 420724 := by
    unfold C
    simp [show (1259712 * k + 841448) % 2 = 0 by omega]
    omega
  have h21 : C (629856 * k + 420724) = 314928 * k + 210362 := by
    unfold C
    simp [show (629856 * k + 420724) % 2 = 0 by omega]
    omega
  have h22 : C (314928 * k + 210362) = 157464 * k + 105181 := by
    unfold C
    simp [show (314928 * k + 210362) % 2 = 0 by omega]
    omega
  have h23 : C (157464 * k + 105181) = 472392 * k + 315544 := by
    unfold C
    simp [show (157464 * k + 105181) % 2 ≠ 0 by omega]
    omega
  have h24 : C (472392 * k + 315544) = 236196 * k + 157772 := by
    unfold C
    simp [show (472392 * k + 315544) % 2 = 0 by omega]
    omega
  have h25 : C (236196 * k + 157772) = 118098 * k + 78886 := by
    unfold C
    simp [show (236196 * k + 157772) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 78886) = 59049 * k + 39443 := by
    unfold C
    simp [show (118098 * k + 78886) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 43775) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 43775)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_43967 : ∀ k : Nat,
    iterate (65536 * k + 43967) 26 = 59049 * k + 39616 ∧
      59049 * k + 39616 < 65536 * k + 43967 := by
  intro k
  have h1 : C (65536 * k + 43967) = 196608 * k + 131902 := by
    unfold C
    simp [show (65536 * k + 43967) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 131902) = 98304 * k + 65951 := by
    unfold C
    simp [show (196608 * k + 131902) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 65951) = 294912 * k + 197854 := by
    unfold C
    simp [show (98304 * k + 65951) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 197854) = 147456 * k + 98927 := by
    unfold C
    simp [show (294912 * k + 197854) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 98927) = 442368 * k + 296782 := by
    unfold C
    simp [show (147456 * k + 98927) % 2 ≠ 0 by omega]
    omega
  have h6 : C (442368 * k + 296782) = 221184 * k + 148391 := by
    unfold C
    simp [show (442368 * k + 296782) % 2 = 0 by omega]
    omega
  have h7 : C (221184 * k + 148391) = 663552 * k + 445174 := by
    unfold C
    simp [show (221184 * k + 148391) % 2 ≠ 0 by omega]
    omega
  have h8 : C (663552 * k + 445174) = 331776 * k + 222587 := by
    unfold C
    simp [show (663552 * k + 445174) % 2 = 0 by omega]
    omega
  have h9 : C (331776 * k + 222587) = 995328 * k + 667762 := by
    unfold C
    simp [show (331776 * k + 222587) % 2 ≠ 0 by omega]
    omega
  have h10 : C (995328 * k + 667762) = 497664 * k + 333881 := by
    unfold C
    simp [show (995328 * k + 667762) % 2 = 0 by omega]
    omega
  have h11 : C (497664 * k + 333881) = 1492992 * k + 1001644 := by
    unfold C
    simp [show (497664 * k + 333881) % 2 ≠ 0 by omega]
    omega
  have h12 : C (1492992 * k + 1001644) = 746496 * k + 500822 := by
    unfold C
    simp [show (1492992 * k + 1001644) % 2 = 0 by omega]
    omega
  have h13 : C (746496 * k + 500822) = 373248 * k + 250411 := by
    unfold C
    simp [show (746496 * k + 500822) % 2 = 0 by omega]
    omega
  have h14 : C (373248 * k + 250411) = 1119744 * k + 751234 := by
    unfold C
    simp [show (373248 * k + 250411) % 2 ≠ 0 by omega]
    omega
  have h15 : C (1119744 * k + 751234) = 559872 * k + 375617 := by
    unfold C
    simp [show (1119744 * k + 751234) % 2 = 0 by omega]
    omega
  have h16 : C (559872 * k + 375617) = 1679616 * k + 1126852 := by
    unfold C
    simp [show (559872 * k + 375617) % 2 ≠ 0 by omega]
    omega
  have h17 : C (1679616 * k + 1126852) = 839808 * k + 563426 := by
    unfold C
    simp [show (1679616 * k + 1126852) % 2 = 0 by omega]
    omega
  have h18 : C (839808 * k + 563426) = 419904 * k + 281713 := by
    unfold C
    simp [show (839808 * k + 563426) % 2 = 0 by omega]
    omega
  have h19 : C (419904 * k + 281713) = 1259712 * k + 845140 := by
    unfold C
    simp [show (419904 * k + 281713) % 2 ≠ 0 by omega]
    omega
  have h20 : C (1259712 * k + 845140) = 629856 * k + 422570 := by
    unfold C
    simp [show (1259712 * k + 845140) % 2 = 0 by omega]
    omega
  have h21 : C (629856 * k + 422570) = 314928 * k + 211285 := by
    unfold C
    simp [show (629856 * k + 422570) % 2 = 0 by omega]
    omega
  have h22 : C (314928 * k + 211285) = 944784 * k + 633856 := by
    unfold C
    simp [show (314928 * k + 211285) % 2 ≠ 0 by omega]
    omega
  have h23 : C (944784 * k + 633856) = 472392 * k + 316928 := by
    unfold C
    simp [show (944784 * k + 633856) % 2 = 0 by omega]
    omega
  have h24 : C (472392 * k + 316928) = 236196 * k + 158464 := by
    unfold C
    simp [show (472392 * k + 316928) % 2 = 0 by omega]
    omega
  have h25 : C (236196 * k + 158464) = 118098 * k + 79232 := by
    unfold C
    simp [show (236196 * k + 158464) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 79232) = 59049 * k + 39616 := by
    unfold C
    simp [show (118098 * k + 79232) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 43967) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 43967)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

end CollatzM16ShardP
