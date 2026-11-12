import Mathlib.Data.Nat.Prime.Basic

namespace CollatzM16ShardI

def C (n : Nat) : Nat := if n % 2 = 0 then n / 2 else 3 * n + 1

def iterate (n t : Nat) : Nat := Nat.rec n (fun _ previous => C previous) t

theorem descent_mod65536_22575 : ∀ k : Nat,
    iterate (65536 * k + 22575) 26 = 59049 * k + 20342 ∧
      59049 * k + 20342 < 65536 * k + 22575 := by
  intro k
  have h1 : C (65536 * k + 22575) = 196608 * k + 67726 := by
    unfold C
    simp [show (65536 * k + 22575) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 67726) = 98304 * k + 33863 := by
    unfold C
    simp [show (196608 * k + 67726) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 33863) = 294912 * k + 101590 := by
    unfold C
    simp [show (98304 * k + 33863) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 101590) = 147456 * k + 50795 := by
    unfold C
    simp [show (294912 * k + 101590) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 50795) = 442368 * k + 152386 := by
    unfold C
    simp [show (147456 * k + 50795) % 2 ≠ 0 by omega]
    omega
  have h6 : C (442368 * k + 152386) = 221184 * k + 76193 := by
    unfold C
    simp [show (442368 * k + 152386) % 2 = 0 by omega]
    omega
  have h7 : C (221184 * k + 76193) = 663552 * k + 228580 := by
    unfold C
    simp [show (221184 * k + 76193) % 2 ≠ 0 by omega]
    omega
  have h8 : C (663552 * k + 228580) = 331776 * k + 114290 := by
    unfold C
    simp [show (663552 * k + 228580) % 2 = 0 by omega]
    omega
  have h9 : C (331776 * k + 114290) = 165888 * k + 57145 := by
    unfold C
    simp [show (331776 * k + 114290) % 2 = 0 by omega]
    omega
  have h10 : C (165888 * k + 57145) = 497664 * k + 171436 := by
    unfold C
    simp [show (165888 * k + 57145) % 2 ≠ 0 by omega]
    omega
  have h11 : C (497664 * k + 171436) = 248832 * k + 85718 := by
    unfold C
    simp [show (497664 * k + 171436) % 2 = 0 by omega]
    omega
  have h12 : C (248832 * k + 85718) = 124416 * k + 42859 := by
    unfold C
    simp [show (248832 * k + 85718) % 2 = 0 by omega]
    omega
  have h13 : C (124416 * k + 42859) = 373248 * k + 128578 := by
    unfold C
    simp [show (124416 * k + 42859) % 2 ≠ 0 by omega]
    omega
  have h14 : C (373248 * k + 128578) = 186624 * k + 64289 := by
    unfold C
    simp [show (373248 * k + 128578) % 2 = 0 by omega]
    omega
  have h15 : C (186624 * k + 64289) = 559872 * k + 192868 := by
    unfold C
    simp [show (186624 * k + 64289) % 2 ≠ 0 by omega]
    omega
  have h16 : C (559872 * k + 192868) = 279936 * k + 96434 := by
    unfold C
    simp [show (559872 * k + 192868) % 2 = 0 by omega]
    omega
  have h17 : C (279936 * k + 96434) = 139968 * k + 48217 := by
    unfold C
    simp [show (279936 * k + 96434) % 2 = 0 by omega]
    omega
  have h18 : C (139968 * k + 48217) = 419904 * k + 144652 := by
    unfold C
    simp [show (139968 * k + 48217) % 2 ≠ 0 by omega]
    omega
  have h19 : C (419904 * k + 144652) = 209952 * k + 72326 := by
    unfold C
    simp [show (419904 * k + 144652) % 2 = 0 by omega]
    omega
  have h20 : C (209952 * k + 72326) = 104976 * k + 36163 := by
    unfold C
    simp [show (209952 * k + 72326) % 2 = 0 by omega]
    omega
  have h21 : C (104976 * k + 36163) = 314928 * k + 108490 := by
    unfold C
    simp [show (104976 * k + 36163) % 2 ≠ 0 by omega]
    omega
  have h22 : C (314928 * k + 108490) = 157464 * k + 54245 := by
    unfold C
    simp [show (314928 * k + 108490) % 2 = 0 by omega]
    omega
  have h23 : C (157464 * k + 54245) = 472392 * k + 162736 := by
    unfold C
    simp [show (157464 * k + 54245) % 2 ≠ 0 by omega]
    omega
  have h24 : C (472392 * k + 162736) = 236196 * k + 81368 := by
    unfold C
    simp [show (472392 * k + 162736) % 2 = 0 by omega]
    omega
  have h25 : C (236196 * k + 81368) = 118098 * k + 40684 := by
    unfold C
    simp [show (236196 * k + 81368) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 40684) = 59049 * k + 20342 := by
    unfold C
    simp [show (118098 * k + 40684) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 22575) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 22575)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_22695 : ∀ k : Nat,
    iterate (65536 * k + 22695) 26 = 59049 * k + 20450 ∧
      59049 * k + 20450 < 65536 * k + 22695 := by
  intro k
  have h1 : C (65536 * k + 22695) = 196608 * k + 68086 := by
    unfold C
    simp [show (65536 * k + 22695) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 68086) = 98304 * k + 34043 := by
    unfold C
    simp [show (196608 * k + 68086) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 34043) = 294912 * k + 102130 := by
    unfold C
    simp [show (98304 * k + 34043) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 102130) = 147456 * k + 51065 := by
    unfold C
    simp [show (294912 * k + 102130) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 51065) = 442368 * k + 153196 := by
    unfold C
    simp [show (147456 * k + 51065) % 2 ≠ 0 by omega]
    omega
  have h6 : C (442368 * k + 153196) = 221184 * k + 76598 := by
    unfold C
    simp [show (442368 * k + 153196) % 2 = 0 by omega]
    omega
  have h7 : C (221184 * k + 76598) = 110592 * k + 38299 := by
    unfold C
    simp [show (221184 * k + 76598) % 2 = 0 by omega]
    omega
  have h8 : C (110592 * k + 38299) = 331776 * k + 114898 := by
    unfold C
    simp [show (110592 * k + 38299) % 2 ≠ 0 by omega]
    omega
  have h9 : C (331776 * k + 114898) = 165888 * k + 57449 := by
    unfold C
    simp [show (331776 * k + 114898) % 2 = 0 by omega]
    omega
  have h10 : C (165888 * k + 57449) = 497664 * k + 172348 := by
    unfold C
    simp [show (165888 * k + 57449) % 2 ≠ 0 by omega]
    omega
  have h11 : C (497664 * k + 172348) = 248832 * k + 86174 := by
    unfold C
    simp [show (497664 * k + 172348) % 2 = 0 by omega]
    omega
  have h12 : C (248832 * k + 86174) = 124416 * k + 43087 := by
    unfold C
    simp [show (248832 * k + 86174) % 2 = 0 by omega]
    omega
  have h13 : C (124416 * k + 43087) = 373248 * k + 129262 := by
    unfold C
    simp [show (124416 * k + 43087) % 2 ≠ 0 by omega]
    omega
  have h14 : C (373248 * k + 129262) = 186624 * k + 64631 := by
    unfold C
    simp [show (373248 * k + 129262) % 2 = 0 by omega]
    omega
  have h15 : C (186624 * k + 64631) = 559872 * k + 193894 := by
    unfold C
    simp [show (186624 * k + 64631) % 2 ≠ 0 by omega]
    omega
  have h16 : C (559872 * k + 193894) = 279936 * k + 96947 := by
    unfold C
    simp [show (559872 * k + 193894) % 2 = 0 by omega]
    omega
  have h17 : C (279936 * k + 96947) = 839808 * k + 290842 := by
    unfold C
    simp [show (279936 * k + 96947) % 2 ≠ 0 by omega]
    omega
  have h18 : C (839808 * k + 290842) = 419904 * k + 145421 := by
    unfold C
    simp [show (839808 * k + 290842) % 2 = 0 by omega]
    omega
  have h19 : C (419904 * k + 145421) = 1259712 * k + 436264 := by
    unfold C
    simp [show (419904 * k + 145421) % 2 ≠ 0 by omega]
    omega
  have h20 : C (1259712 * k + 436264) = 629856 * k + 218132 := by
    unfold C
    simp [show (1259712 * k + 436264) % 2 = 0 by omega]
    omega
  have h21 : C (629856 * k + 218132) = 314928 * k + 109066 := by
    unfold C
    simp [show (629856 * k + 218132) % 2 = 0 by omega]
    omega
  have h22 : C (314928 * k + 109066) = 157464 * k + 54533 := by
    unfold C
    simp [show (314928 * k + 109066) % 2 = 0 by omega]
    omega
  have h23 : C (157464 * k + 54533) = 472392 * k + 163600 := by
    unfold C
    simp [show (157464 * k + 54533) % 2 ≠ 0 by omega]
    omega
  have h24 : C (472392 * k + 163600) = 236196 * k + 81800 := by
    unfold C
    simp [show (472392 * k + 163600) % 2 = 0 by omega]
    omega
  have h25 : C (236196 * k + 81800) = 118098 * k + 40900 := by
    unfold C
    simp [show (236196 * k + 81800) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 40900) = 59049 * k + 20450 := by
    unfold C
    simp [show (118098 * k + 40900) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 22695) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 22695)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_22887 : ∀ k : Nat,
    iterate (65536 * k + 22887) 26 = 59049 * k + 20623 ∧
      59049 * k + 20623 < 65536 * k + 22887 := by
  intro k
  have h1 : C (65536 * k + 22887) = 196608 * k + 68662 := by
    unfold C
    simp [show (65536 * k + 22887) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 68662) = 98304 * k + 34331 := by
    unfold C
    simp [show (196608 * k + 68662) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 34331) = 294912 * k + 102994 := by
    unfold C
    simp [show (98304 * k + 34331) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 102994) = 147456 * k + 51497 := by
    unfold C
    simp [show (294912 * k + 102994) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 51497) = 442368 * k + 154492 := by
    unfold C
    simp [show (147456 * k + 51497) % 2 ≠ 0 by omega]
    omega
  have h6 : C (442368 * k + 154492) = 221184 * k + 77246 := by
    unfold C
    simp [show (442368 * k + 154492) % 2 = 0 by omega]
    omega
  have h7 : C (221184 * k + 77246) = 110592 * k + 38623 := by
    unfold C
    simp [show (221184 * k + 77246) % 2 = 0 by omega]
    omega
  have h8 : C (110592 * k + 38623) = 331776 * k + 115870 := by
    unfold C
    simp [show (110592 * k + 38623) % 2 ≠ 0 by omega]
    omega
  have h9 : C (331776 * k + 115870) = 165888 * k + 57935 := by
    unfold C
    simp [show (331776 * k + 115870) % 2 = 0 by omega]
    omega
  have h10 : C (165888 * k + 57935) = 497664 * k + 173806 := by
    unfold C
    simp [show (165888 * k + 57935) % 2 ≠ 0 by omega]
    omega
  have h11 : C (497664 * k + 173806) = 248832 * k + 86903 := by
    unfold C
    simp [show (497664 * k + 173806) % 2 = 0 by omega]
    omega
  have h12 : C (248832 * k + 86903) = 746496 * k + 260710 := by
    unfold C
    simp [show (248832 * k + 86903) % 2 ≠ 0 by omega]
    omega
  have h13 : C (746496 * k + 260710) = 373248 * k + 130355 := by
    unfold C
    simp [show (746496 * k + 260710) % 2 = 0 by omega]
    omega
  have h14 : C (373248 * k + 130355) = 1119744 * k + 391066 := by
    unfold C
    simp [show (373248 * k + 130355) % 2 ≠ 0 by omega]
    omega
  have h15 : C (1119744 * k + 391066) = 559872 * k + 195533 := by
    unfold C
    simp [show (1119744 * k + 391066) % 2 = 0 by omega]
    omega
  have h16 : C (559872 * k + 195533) = 1679616 * k + 586600 := by
    unfold C
    simp [show (559872 * k + 195533) % 2 ≠ 0 by omega]
    omega
  have h17 : C (1679616 * k + 586600) = 839808 * k + 293300 := by
    unfold C
    simp [show (1679616 * k + 586600) % 2 = 0 by omega]
    omega
  have h18 : C (839808 * k + 293300) = 419904 * k + 146650 := by
    unfold C
    simp [show (839808 * k + 293300) % 2 = 0 by omega]
    omega
  have h19 : C (419904 * k + 146650) = 209952 * k + 73325 := by
    unfold C
    simp [show (419904 * k + 146650) % 2 = 0 by omega]
    omega
  have h20 : C (209952 * k + 73325) = 629856 * k + 219976 := by
    unfold C
    simp [show (209952 * k + 73325) % 2 ≠ 0 by omega]
    omega
  have h21 : C (629856 * k + 219976) = 314928 * k + 109988 := by
    unfold C
    simp [show (629856 * k + 219976) % 2 = 0 by omega]
    omega
  have h22 : C (314928 * k + 109988) = 157464 * k + 54994 := by
    unfold C
    simp [show (314928 * k + 109988) % 2 = 0 by omega]
    omega
  have h23 : C (157464 * k + 54994) = 78732 * k + 27497 := by
    unfold C
    simp [show (157464 * k + 54994) % 2 = 0 by omega]
    omega
  have h24 : C (78732 * k + 27497) = 236196 * k + 82492 := by
    unfold C
    simp [show (78732 * k + 27497) % 2 ≠ 0 by omega]
    omega
  have h25 : C (236196 * k + 82492) = 118098 * k + 41246 := by
    unfold C
    simp [show (236196 * k + 82492) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 41246) = 59049 * k + 20623 := by
    unfold C
    simp [show (118098 * k + 41246) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 22887) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 22887)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_23143 : ∀ k : Nat,
    iterate (65536 * k + 23143) 26 = 59049 * k + 20854 ∧
      59049 * k + 20854 < 65536 * k + 23143 := by
  intro k
  have h1 : C (65536 * k + 23143) = 196608 * k + 69430 := by
    unfold C
    simp [show (65536 * k + 23143) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 69430) = 98304 * k + 34715 := by
    unfold C
    simp [show (196608 * k + 69430) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 34715) = 294912 * k + 104146 := by
    unfold C
    simp [show (98304 * k + 34715) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 104146) = 147456 * k + 52073 := by
    unfold C
    simp [show (294912 * k + 104146) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 52073) = 442368 * k + 156220 := by
    unfold C
    simp [show (147456 * k + 52073) % 2 ≠ 0 by omega]
    omega
  have h6 : C (442368 * k + 156220) = 221184 * k + 78110 := by
    unfold C
    simp [show (442368 * k + 156220) % 2 = 0 by omega]
    omega
  have h7 : C (221184 * k + 78110) = 110592 * k + 39055 := by
    unfold C
    simp [show (221184 * k + 78110) % 2 = 0 by omega]
    omega
  have h8 : C (110592 * k + 39055) = 331776 * k + 117166 := by
    unfold C
    simp [show (110592 * k + 39055) % 2 ≠ 0 by omega]
    omega
  have h9 : C (331776 * k + 117166) = 165888 * k + 58583 := by
    unfold C
    simp [show (331776 * k + 117166) % 2 = 0 by omega]
    omega
  have h10 : C (165888 * k + 58583) = 497664 * k + 175750 := by
    unfold C
    simp [show (165888 * k + 58583) % 2 ≠ 0 by omega]
    omega
  have h11 : C (497664 * k + 175750) = 248832 * k + 87875 := by
    unfold C
    simp [show (497664 * k + 175750) % 2 = 0 by omega]
    omega
  have h12 : C (248832 * k + 87875) = 746496 * k + 263626 := by
    unfold C
    simp [show (248832 * k + 87875) % 2 ≠ 0 by omega]
    omega
  have h13 : C (746496 * k + 263626) = 373248 * k + 131813 := by
    unfold C
    simp [show (746496 * k + 263626) % 2 = 0 by omega]
    omega
  have h14 : C (373248 * k + 131813) = 1119744 * k + 395440 := by
    unfold C
    simp [show (373248 * k + 131813) % 2 ≠ 0 by omega]
    omega
  have h15 : C (1119744 * k + 395440) = 559872 * k + 197720 := by
    unfold C
    simp [show (1119744 * k + 395440) % 2 = 0 by omega]
    omega
  have h16 : C (559872 * k + 197720) = 279936 * k + 98860 := by
    unfold C
    simp [show (559872 * k + 197720) % 2 = 0 by omega]
    omega
  have h17 : C (279936 * k + 98860) = 139968 * k + 49430 := by
    unfold C
    simp [show (279936 * k + 98860) % 2 = 0 by omega]
    omega
  have h18 : C (139968 * k + 49430) = 69984 * k + 24715 := by
    unfold C
    simp [show (139968 * k + 49430) % 2 = 0 by omega]
    omega
  have h19 : C (69984 * k + 24715) = 209952 * k + 74146 := by
    unfold C
    simp [show (69984 * k + 24715) % 2 ≠ 0 by omega]
    omega
  have h20 : C (209952 * k + 74146) = 104976 * k + 37073 := by
    unfold C
    simp [show (209952 * k + 74146) % 2 = 0 by omega]
    omega
  have h21 : C (104976 * k + 37073) = 314928 * k + 111220 := by
    unfold C
    simp [show (104976 * k + 37073) % 2 ≠ 0 by omega]
    omega
  have h22 : C (314928 * k + 111220) = 157464 * k + 55610 := by
    unfold C
    simp [show (314928 * k + 111220) % 2 = 0 by omega]
    omega
  have h23 : C (157464 * k + 55610) = 78732 * k + 27805 := by
    unfold C
    simp [show (157464 * k + 55610) % 2 = 0 by omega]
    omega
  have h24 : C (78732 * k + 27805) = 236196 * k + 83416 := by
    unfold C
    simp [show (78732 * k + 27805) % 2 ≠ 0 by omega]
    omega
  have h25 : C (236196 * k + 83416) = 118098 * k + 41708 := by
    unfold C
    simp [show (236196 * k + 83416) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 41708) = 59049 * k + 20854 := by
    unfold C
    simp [show (118098 * k + 41708) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 23143) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 23143)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_23167 : ∀ k : Nat,
    iterate (65536 * k + 23167) 26 = 59049 * k + 20875 ∧
      59049 * k + 20875 < 65536 * k + 23167 := by
  intro k
  have h1 : C (65536 * k + 23167) = 196608 * k + 69502 := by
    unfold C
    simp [show (65536 * k + 23167) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 69502) = 98304 * k + 34751 := by
    unfold C
    simp [show (196608 * k + 69502) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 34751) = 294912 * k + 104254 := by
    unfold C
    simp [show (98304 * k + 34751) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 104254) = 147456 * k + 52127 := by
    unfold C
    simp [show (294912 * k + 104254) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 52127) = 442368 * k + 156382 := by
    unfold C
    simp [show (147456 * k + 52127) % 2 ≠ 0 by omega]
    omega
  have h6 : C (442368 * k + 156382) = 221184 * k + 78191 := by
    unfold C
    simp [show (442368 * k + 156382) % 2 = 0 by omega]
    omega
  have h7 : C (221184 * k + 78191) = 663552 * k + 234574 := by
    unfold C
    simp [show (221184 * k + 78191) % 2 ≠ 0 by omega]
    omega
  have h8 : C (663552 * k + 234574) = 331776 * k + 117287 := by
    unfold C
    simp [show (663552 * k + 234574) % 2 = 0 by omega]
    omega
  have h9 : C (331776 * k + 117287) = 995328 * k + 351862 := by
    unfold C
    simp [show (331776 * k + 117287) % 2 ≠ 0 by omega]
    omega
  have h10 : C (995328 * k + 351862) = 497664 * k + 175931 := by
    unfold C
    simp [show (995328 * k + 351862) % 2 = 0 by omega]
    omega
  have h11 : C (497664 * k + 175931) = 1492992 * k + 527794 := by
    unfold C
    simp [show (497664 * k + 175931) % 2 ≠ 0 by omega]
    omega
  have h12 : C (1492992 * k + 527794) = 746496 * k + 263897 := by
    unfold C
    simp [show (1492992 * k + 527794) % 2 = 0 by omega]
    omega
  have h13 : C (746496 * k + 263897) = 2239488 * k + 791692 := by
    unfold C
    simp [show (746496 * k + 263897) % 2 ≠ 0 by omega]
    omega
  have h14 : C (2239488 * k + 791692) = 1119744 * k + 395846 := by
    unfold C
    simp [show (2239488 * k + 791692) % 2 = 0 by omega]
    omega
  have h15 : C (1119744 * k + 395846) = 559872 * k + 197923 := by
    unfold C
    simp [show (1119744 * k + 395846) % 2 = 0 by omega]
    omega
  have h16 : C (559872 * k + 197923) = 1679616 * k + 593770 := by
    unfold C
    simp [show (559872 * k + 197923) % 2 ≠ 0 by omega]
    omega
  have h17 : C (1679616 * k + 593770) = 839808 * k + 296885 := by
    unfold C
    simp [show (1679616 * k + 593770) % 2 = 0 by omega]
    omega
  have h18 : C (839808 * k + 296885) = 2519424 * k + 890656 := by
    unfold C
    simp [show (839808 * k + 296885) % 2 ≠ 0 by omega]
    omega
  have h19 : C (2519424 * k + 890656) = 1259712 * k + 445328 := by
    unfold C
    simp [show (2519424 * k + 890656) % 2 = 0 by omega]
    omega
  have h20 : C (1259712 * k + 445328) = 629856 * k + 222664 := by
    unfold C
    simp [show (1259712 * k + 445328) % 2 = 0 by omega]
    omega
  have h21 : C (629856 * k + 222664) = 314928 * k + 111332 := by
    unfold C
    simp [show (629856 * k + 222664) % 2 = 0 by omega]
    omega
  have h22 : C (314928 * k + 111332) = 157464 * k + 55666 := by
    unfold C
    simp [show (314928 * k + 111332) % 2 = 0 by omega]
    omega
  have h23 : C (157464 * k + 55666) = 78732 * k + 27833 := by
    unfold C
    simp [show (157464 * k + 55666) % 2 = 0 by omega]
    omega
  have h24 : C (78732 * k + 27833) = 236196 * k + 83500 := by
    unfold C
    simp [show (78732 * k + 27833) % 2 ≠ 0 by omega]
    omega
  have h25 : C (236196 * k + 83500) = 118098 * k + 41750 := by
    unfold C
    simp [show (236196 * k + 83500) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 41750) = 59049 * k + 20875 := by
    unfold C
    simp [show (118098 * k + 41750) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 23167) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 23167)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_23583 : ∀ k : Nat,
    iterate (65536 * k + 23583) 26 = 59049 * k + 21250 ∧
      59049 * k + 21250 < 65536 * k + 23583 := by
  intro k
  have h1 : C (65536 * k + 23583) = 196608 * k + 70750 := by
    unfold C
    simp [show (65536 * k + 23583) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 70750) = 98304 * k + 35375 := by
    unfold C
    simp [show (196608 * k + 70750) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 35375) = 294912 * k + 106126 := by
    unfold C
    simp [show (98304 * k + 35375) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 106126) = 147456 * k + 53063 := by
    unfold C
    simp [show (294912 * k + 106126) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 53063) = 442368 * k + 159190 := by
    unfold C
    simp [show (147456 * k + 53063) % 2 ≠ 0 by omega]
    omega
  have h6 : C (442368 * k + 159190) = 221184 * k + 79595 := by
    unfold C
    simp [show (442368 * k + 159190) % 2 = 0 by omega]
    omega
  have h7 : C (221184 * k + 79595) = 663552 * k + 238786 := by
    unfold C
    simp [show (221184 * k + 79595) % 2 ≠ 0 by omega]
    omega
  have h8 : C (663552 * k + 238786) = 331776 * k + 119393 := by
    unfold C
    simp [show (663552 * k + 238786) % 2 = 0 by omega]
    omega
  have h9 : C (331776 * k + 119393) = 995328 * k + 358180 := by
    unfold C
    simp [show (331776 * k + 119393) % 2 ≠ 0 by omega]
    omega
  have h10 : C (995328 * k + 358180) = 497664 * k + 179090 := by
    unfold C
    simp [show (995328 * k + 358180) % 2 = 0 by omega]
    omega
  have h11 : C (497664 * k + 179090) = 248832 * k + 89545 := by
    unfold C
    simp [show (497664 * k + 179090) % 2 = 0 by omega]
    omega
  have h12 : C (248832 * k + 89545) = 746496 * k + 268636 := by
    unfold C
    simp [show (248832 * k + 89545) % 2 ≠ 0 by omega]
    omega
  have h13 : C (746496 * k + 268636) = 373248 * k + 134318 := by
    unfold C
    simp [show (746496 * k + 268636) % 2 = 0 by omega]
    omega
  have h14 : C (373248 * k + 134318) = 186624 * k + 67159 := by
    unfold C
    simp [show (373248 * k + 134318) % 2 = 0 by omega]
    omega
  have h15 : C (186624 * k + 67159) = 559872 * k + 201478 := by
    unfold C
    simp [show (186624 * k + 67159) % 2 ≠ 0 by omega]
    omega
  have h16 : C (559872 * k + 201478) = 279936 * k + 100739 := by
    unfold C
    simp [show (559872 * k + 201478) % 2 = 0 by omega]
    omega
  have h17 : C (279936 * k + 100739) = 839808 * k + 302218 := by
    unfold C
    simp [show (279936 * k + 100739) % 2 ≠ 0 by omega]
    omega
  have h18 : C (839808 * k + 302218) = 419904 * k + 151109 := by
    unfold C
    simp [show (839808 * k + 302218) % 2 = 0 by omega]
    omega
  have h19 : C (419904 * k + 151109) = 1259712 * k + 453328 := by
    unfold C
    simp [show (419904 * k + 151109) % 2 ≠ 0 by omega]
    omega
  have h20 : C (1259712 * k + 453328) = 629856 * k + 226664 := by
    unfold C
    simp [show (1259712 * k + 453328) % 2 = 0 by omega]
    omega
  have h21 : C (629856 * k + 226664) = 314928 * k + 113332 := by
    unfold C
    simp [show (629856 * k + 226664) % 2 = 0 by omega]
    omega
  have h22 : C (314928 * k + 113332) = 157464 * k + 56666 := by
    unfold C
    simp [show (314928 * k + 113332) % 2 = 0 by omega]
    omega
  have h23 : C (157464 * k + 56666) = 78732 * k + 28333 := by
    unfold C
    simp [show (157464 * k + 56666) % 2 = 0 by omega]
    omega
  have h24 : C (78732 * k + 28333) = 236196 * k + 85000 := by
    unfold C
    simp [show (78732 * k + 28333) % 2 ≠ 0 by omega]
    omega
  have h25 : C (236196 * k + 85000) = 118098 * k + 42500 := by
    unfold C
    simp [show (236196 * k + 85000) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 42500) = 59049 * k + 21250 := by
    unfold C
    simp [show (118098 * k + 42500) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 23583) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 23583)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_23663 : ∀ k : Nat,
    iterate (65536 * k + 23663) 26 = 59049 * k + 21322 ∧
      59049 * k + 21322 < 65536 * k + 23663 := by
  intro k
  have h1 : C (65536 * k + 23663) = 196608 * k + 70990 := by
    unfold C
    simp [show (65536 * k + 23663) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 70990) = 98304 * k + 35495 := by
    unfold C
    simp [show (196608 * k + 70990) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 35495) = 294912 * k + 106486 := by
    unfold C
    simp [show (98304 * k + 35495) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 106486) = 147456 * k + 53243 := by
    unfold C
    simp [show (294912 * k + 106486) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 53243) = 442368 * k + 159730 := by
    unfold C
    simp [show (147456 * k + 53243) % 2 ≠ 0 by omega]
    omega
  have h6 : C (442368 * k + 159730) = 221184 * k + 79865 := by
    unfold C
    simp [show (442368 * k + 159730) % 2 = 0 by omega]
    omega
  have h7 : C (221184 * k + 79865) = 663552 * k + 239596 := by
    unfold C
    simp [show (221184 * k + 79865) % 2 ≠ 0 by omega]
    omega
  have h8 : C (663552 * k + 239596) = 331776 * k + 119798 := by
    unfold C
    simp [show (663552 * k + 239596) % 2 = 0 by omega]
    omega
  have h9 : C (331776 * k + 119798) = 165888 * k + 59899 := by
    unfold C
    simp [show (331776 * k + 119798) % 2 = 0 by omega]
    omega
  have h10 : C (165888 * k + 59899) = 497664 * k + 179698 := by
    unfold C
    simp [show (165888 * k + 59899) % 2 ≠ 0 by omega]
    omega
  have h11 : C (497664 * k + 179698) = 248832 * k + 89849 := by
    unfold C
    simp [show (497664 * k + 179698) % 2 = 0 by omega]
    omega
  have h12 : C (248832 * k + 89849) = 746496 * k + 269548 := by
    unfold C
    simp [show (248832 * k + 89849) % 2 ≠ 0 by omega]
    omega
  have h13 : C (746496 * k + 269548) = 373248 * k + 134774 := by
    unfold C
    simp [show (746496 * k + 269548) % 2 = 0 by omega]
    omega
  have h14 : C (373248 * k + 134774) = 186624 * k + 67387 := by
    unfold C
    simp [show (373248 * k + 134774) % 2 = 0 by omega]
    omega
  have h15 : C (186624 * k + 67387) = 559872 * k + 202162 := by
    unfold C
    simp [show (186624 * k + 67387) % 2 ≠ 0 by omega]
    omega
  have h16 : C (559872 * k + 202162) = 279936 * k + 101081 := by
    unfold C
    simp [show (559872 * k + 202162) % 2 = 0 by omega]
    omega
  have h17 : C (279936 * k + 101081) = 839808 * k + 303244 := by
    unfold C
    simp [show (279936 * k + 101081) % 2 ≠ 0 by omega]
    omega
  have h18 : C (839808 * k + 303244) = 419904 * k + 151622 := by
    unfold C
    simp [show (839808 * k + 303244) % 2 = 0 by omega]
    omega
  have h19 : C (419904 * k + 151622) = 209952 * k + 75811 := by
    unfold C
    simp [show (419904 * k + 151622) % 2 = 0 by omega]
    omega
  have h20 : C (209952 * k + 75811) = 629856 * k + 227434 := by
    unfold C
    simp [show (209952 * k + 75811) % 2 ≠ 0 by omega]
    omega
  have h21 : C (629856 * k + 227434) = 314928 * k + 113717 := by
    unfold C
    simp [show (629856 * k + 227434) % 2 = 0 by omega]
    omega
  have h22 : C (314928 * k + 113717) = 944784 * k + 341152 := by
    unfold C
    simp [show (314928 * k + 113717) % 2 ≠ 0 by omega]
    omega
  have h23 : C (944784 * k + 341152) = 472392 * k + 170576 := by
    unfold C
    simp [show (944784 * k + 341152) % 2 = 0 by omega]
    omega
  have h24 : C (472392 * k + 170576) = 236196 * k + 85288 := by
    unfold C
    simp [show (472392 * k + 170576) % 2 = 0 by omega]
    omega
  have h25 : C (236196 * k + 85288) = 118098 * k + 42644 := by
    unfold C
    simp [show (236196 * k + 85288) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 42644) = 59049 * k + 21322 := by
    unfold C
    simp [show (118098 * k + 42644) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 23663) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 23663)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_23707 : ∀ k : Nat,
    iterate (65536 * k + 23707) 26 = 59049 * k + 21362 ∧
      59049 * k + 21362 < 65536 * k + 23707 := by
  intro k
  have h1 : C (65536 * k + 23707) = 196608 * k + 71122 := by
    unfold C
    simp [show (65536 * k + 23707) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 71122) = 98304 * k + 35561 := by
    unfold C
    simp [show (196608 * k + 71122) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 35561) = 294912 * k + 106684 := by
    unfold C
    simp [show (98304 * k + 35561) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 106684) = 147456 * k + 53342 := by
    unfold C
    simp [show (294912 * k + 106684) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 53342) = 73728 * k + 26671 := by
    unfold C
    simp [show (147456 * k + 53342) % 2 = 0 by omega]
    omega
  have h6 : C (73728 * k + 26671) = 221184 * k + 80014 := by
    unfold C
    simp [show (73728 * k + 26671) % 2 ≠ 0 by omega]
    omega
  have h7 : C (221184 * k + 80014) = 110592 * k + 40007 := by
    unfold C
    simp [show (221184 * k + 80014) % 2 = 0 by omega]
    omega
  have h8 : C (110592 * k + 40007) = 331776 * k + 120022 := by
    unfold C
    simp [show (110592 * k + 40007) % 2 ≠ 0 by omega]
    omega
  have h9 : C (331776 * k + 120022) = 165888 * k + 60011 := by
    unfold C
    simp [show (331776 * k + 120022) % 2 = 0 by omega]
    omega
  have h10 : C (165888 * k + 60011) = 497664 * k + 180034 := by
    unfold C
    simp [show (165888 * k + 60011) % 2 ≠ 0 by omega]
    omega
  have h11 : C (497664 * k + 180034) = 248832 * k + 90017 := by
    unfold C
    simp [show (497664 * k + 180034) % 2 = 0 by omega]
    omega
  have h12 : C (248832 * k + 90017) = 746496 * k + 270052 := by
    unfold C
    simp [show (248832 * k + 90017) % 2 ≠ 0 by omega]
    omega
  have h13 : C (746496 * k + 270052) = 373248 * k + 135026 := by
    unfold C
    simp [show (746496 * k + 270052) % 2 = 0 by omega]
    omega
  have h14 : C (373248 * k + 135026) = 186624 * k + 67513 := by
    unfold C
    simp [show (373248 * k + 135026) % 2 = 0 by omega]
    omega
  have h15 : C (186624 * k + 67513) = 559872 * k + 202540 := by
    unfold C
    simp [show (186624 * k + 67513) % 2 ≠ 0 by omega]
    omega
  have h16 : C (559872 * k + 202540) = 279936 * k + 101270 := by
    unfold C
    simp [show (559872 * k + 202540) % 2 = 0 by omega]
    omega
  have h17 : C (279936 * k + 101270) = 139968 * k + 50635 := by
    unfold C
    simp [show (279936 * k + 101270) % 2 = 0 by omega]
    omega
  have h18 : C (139968 * k + 50635) = 419904 * k + 151906 := by
    unfold C
    simp [show (139968 * k + 50635) % 2 ≠ 0 by omega]
    omega
  have h19 : C (419904 * k + 151906) = 209952 * k + 75953 := by
    unfold C
    simp [show (419904 * k + 151906) % 2 = 0 by omega]
    omega
  have h20 : C (209952 * k + 75953) = 629856 * k + 227860 := by
    unfold C
    simp [show (209952 * k + 75953) % 2 ≠ 0 by omega]
    omega
  have h21 : C (629856 * k + 227860) = 314928 * k + 113930 := by
    unfold C
    simp [show (629856 * k + 227860) % 2 = 0 by omega]
    omega
  have h22 : C (314928 * k + 113930) = 157464 * k + 56965 := by
    unfold C
    simp [show (314928 * k + 113930) % 2 = 0 by omega]
    omega
  have h23 : C (157464 * k + 56965) = 472392 * k + 170896 := by
    unfold C
    simp [show (157464 * k + 56965) % 2 ≠ 0 by omega]
    omega
  have h24 : C (472392 * k + 170896) = 236196 * k + 85448 := by
    unfold C
    simp [show (472392 * k + 170896) % 2 = 0 by omega]
    omega
  have h25 : C (236196 * k + 85448) = 118098 * k + 42724 := by
    unfold C
    simp [show (236196 * k + 85448) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 42724) = 59049 * k + 21362 := by
    unfold C
    simp [show (118098 * k + 42724) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 23707) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 23707)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_23711 : ∀ k : Nat,
    iterate (65536 * k + 23711) 26 = 59049 * k + 21365 ∧
      59049 * k + 21365 < 65536 * k + 23711 := by
  intro k
  have h1 : C (65536 * k + 23711) = 196608 * k + 71134 := by
    unfold C
    simp [show (65536 * k + 23711) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 71134) = 98304 * k + 35567 := by
    unfold C
    simp [show (196608 * k + 71134) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 35567) = 294912 * k + 106702 := by
    unfold C
    simp [show (98304 * k + 35567) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 106702) = 147456 * k + 53351 := by
    unfold C
    simp [show (294912 * k + 106702) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 53351) = 442368 * k + 160054 := by
    unfold C
    simp [show (147456 * k + 53351) % 2 ≠ 0 by omega]
    omega
  have h6 : C (442368 * k + 160054) = 221184 * k + 80027 := by
    unfold C
    simp [show (442368 * k + 160054) % 2 = 0 by omega]
    omega
  have h7 : C (221184 * k + 80027) = 663552 * k + 240082 := by
    unfold C
    simp [show (221184 * k + 80027) % 2 ≠ 0 by omega]
    omega
  have h8 : C (663552 * k + 240082) = 331776 * k + 120041 := by
    unfold C
    simp [show (663552 * k + 240082) % 2 = 0 by omega]
    omega
  have h9 : C (331776 * k + 120041) = 995328 * k + 360124 := by
    unfold C
    simp [show (331776 * k + 120041) % 2 ≠ 0 by omega]
    omega
  have h10 : C (995328 * k + 360124) = 497664 * k + 180062 := by
    unfold C
    simp [show (995328 * k + 360124) % 2 = 0 by omega]
    omega
  have h11 : C (497664 * k + 180062) = 248832 * k + 90031 := by
    unfold C
    simp [show (497664 * k + 180062) % 2 = 0 by omega]
    omega
  have h12 : C (248832 * k + 90031) = 746496 * k + 270094 := by
    unfold C
    simp [show (248832 * k + 90031) % 2 ≠ 0 by omega]
    omega
  have h13 : C (746496 * k + 270094) = 373248 * k + 135047 := by
    unfold C
    simp [show (746496 * k + 270094) % 2 = 0 by omega]
    omega
  have h14 : C (373248 * k + 135047) = 1119744 * k + 405142 := by
    unfold C
    simp [show (373248 * k + 135047) % 2 ≠ 0 by omega]
    omega
  have h15 : C (1119744 * k + 405142) = 559872 * k + 202571 := by
    unfold C
    simp [show (1119744 * k + 405142) % 2 = 0 by omega]
    omega
  have h16 : C (559872 * k + 202571) = 1679616 * k + 607714 := by
    unfold C
    simp [show (559872 * k + 202571) % 2 ≠ 0 by omega]
    omega
  have h17 : C (1679616 * k + 607714) = 839808 * k + 303857 := by
    unfold C
    simp [show (1679616 * k + 607714) % 2 = 0 by omega]
    omega
  have h18 : C (839808 * k + 303857) = 2519424 * k + 911572 := by
    unfold C
    simp [show (839808 * k + 303857) % 2 ≠ 0 by omega]
    omega
  have h19 : C (2519424 * k + 911572) = 1259712 * k + 455786 := by
    unfold C
    simp [show (2519424 * k + 911572) % 2 = 0 by omega]
    omega
  have h20 : C (1259712 * k + 455786) = 629856 * k + 227893 := by
    unfold C
    simp [show (1259712 * k + 455786) % 2 = 0 by omega]
    omega
  have h21 : C (629856 * k + 227893) = 1889568 * k + 683680 := by
    unfold C
    simp [show (629856 * k + 227893) % 2 ≠ 0 by omega]
    omega
  have h22 : C (1889568 * k + 683680) = 944784 * k + 341840 := by
    unfold C
    simp [show (1889568 * k + 683680) % 2 = 0 by omega]
    omega
  have h23 : C (944784 * k + 341840) = 472392 * k + 170920 := by
    unfold C
    simp [show (944784 * k + 341840) % 2 = 0 by omega]
    omega
  have h24 : C (472392 * k + 170920) = 236196 * k + 85460 := by
    unfold C
    simp [show (472392 * k + 170920) % 2 = 0 by omega]
    omega
  have h25 : C (236196 * k + 85460) = 118098 * k + 42730 := by
    unfold C
    simp [show (236196 * k + 85460) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 42730) = 59049 * k + 21365 := by
    unfold C
    simp [show (118098 * k + 42730) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 23711) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 23711)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_23743 : ∀ k : Nat,
    iterate (65536 * k + 23743) 26 = 59049 * k + 21394 ∧
      59049 * k + 21394 < 65536 * k + 23743 := by
  intro k
  have h1 : C (65536 * k + 23743) = 196608 * k + 71230 := by
    unfold C
    simp [show (65536 * k + 23743) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 71230) = 98304 * k + 35615 := by
    unfold C
    simp [show (196608 * k + 71230) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 35615) = 294912 * k + 106846 := by
    unfold C
    simp [show (98304 * k + 35615) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 106846) = 147456 * k + 53423 := by
    unfold C
    simp [show (294912 * k + 106846) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 53423) = 442368 * k + 160270 := by
    unfold C
    simp [show (147456 * k + 53423) % 2 ≠ 0 by omega]
    omega
  have h6 : C (442368 * k + 160270) = 221184 * k + 80135 := by
    unfold C
    simp [show (442368 * k + 160270) % 2 = 0 by omega]
    omega
  have h7 : C (221184 * k + 80135) = 663552 * k + 240406 := by
    unfold C
    simp [show (221184 * k + 80135) % 2 ≠ 0 by omega]
    omega
  have h8 : C (663552 * k + 240406) = 331776 * k + 120203 := by
    unfold C
    simp [show (663552 * k + 240406) % 2 = 0 by omega]
    omega
  have h9 : C (331776 * k + 120203) = 995328 * k + 360610 := by
    unfold C
    simp [show (331776 * k + 120203) % 2 ≠ 0 by omega]
    omega
  have h10 : C (995328 * k + 360610) = 497664 * k + 180305 := by
    unfold C
    simp [show (995328 * k + 360610) % 2 = 0 by omega]
    omega
  have h11 : C (497664 * k + 180305) = 1492992 * k + 540916 := by
    unfold C
    simp [show (497664 * k + 180305) % 2 ≠ 0 by omega]
    omega
  have h12 : C (1492992 * k + 540916) = 746496 * k + 270458 := by
    unfold C
    simp [show (1492992 * k + 540916) % 2 = 0 by omega]
    omega
  have h13 : C (746496 * k + 270458) = 373248 * k + 135229 := by
    unfold C
    simp [show (746496 * k + 270458) % 2 = 0 by omega]
    omega
  have h14 : C (373248 * k + 135229) = 1119744 * k + 405688 := by
    unfold C
    simp [show (373248 * k + 135229) % 2 ≠ 0 by omega]
    omega
  have h15 : C (1119744 * k + 405688) = 559872 * k + 202844 := by
    unfold C
    simp [show (1119744 * k + 405688) % 2 = 0 by omega]
    omega
  have h16 : C (559872 * k + 202844) = 279936 * k + 101422 := by
    unfold C
    simp [show (559872 * k + 202844) % 2 = 0 by omega]
    omega
  have h17 : C (279936 * k + 101422) = 139968 * k + 50711 := by
    unfold C
    simp [show (279936 * k + 101422) % 2 = 0 by omega]
    omega
  have h18 : C (139968 * k + 50711) = 419904 * k + 152134 := by
    unfold C
    simp [show (139968 * k + 50711) % 2 ≠ 0 by omega]
    omega
  have h19 : C (419904 * k + 152134) = 209952 * k + 76067 := by
    unfold C
    simp [show (419904 * k + 152134) % 2 = 0 by omega]
    omega
  have h20 : C (209952 * k + 76067) = 629856 * k + 228202 := by
    unfold C
    simp [show (209952 * k + 76067) % 2 ≠ 0 by omega]
    omega
  have h21 : C (629856 * k + 228202) = 314928 * k + 114101 := by
    unfold C
    simp [show (629856 * k + 228202) % 2 = 0 by omega]
    omega
  have h22 : C (314928 * k + 114101) = 944784 * k + 342304 := by
    unfold C
    simp [show (314928 * k + 114101) % 2 ≠ 0 by omega]
    omega
  have h23 : C (944784 * k + 342304) = 472392 * k + 171152 := by
    unfold C
    simp [show (944784 * k + 342304) % 2 = 0 by omega]
    omega
  have h24 : C (472392 * k + 171152) = 236196 * k + 85576 := by
    unfold C
    simp [show (472392 * k + 171152) % 2 = 0 by omega]
    omega
  have h25 : C (236196 * k + 85576) = 118098 * k + 42788 := by
    unfold C
    simp [show (236196 * k + 85576) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 42788) = 59049 * k + 21394 := by
    unfold C
    simp [show (118098 * k + 42788) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 23743) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 23743)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_23963 : ∀ k : Nat,
    iterate (65536 * k + 23963) 26 = 59049 * k + 21593 ∧
      59049 * k + 21593 < 65536 * k + 23963 := by
  intro k
  have h1 : C (65536 * k + 23963) = 196608 * k + 71890 := by
    unfold C
    simp [show (65536 * k + 23963) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 71890) = 98304 * k + 35945 := by
    unfold C
    simp [show (196608 * k + 71890) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 35945) = 294912 * k + 107836 := by
    unfold C
    simp [show (98304 * k + 35945) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 107836) = 147456 * k + 53918 := by
    unfold C
    simp [show (294912 * k + 107836) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 53918) = 73728 * k + 26959 := by
    unfold C
    simp [show (147456 * k + 53918) % 2 = 0 by omega]
    omega
  have h6 : C (73728 * k + 26959) = 221184 * k + 80878 := by
    unfold C
    simp [show (73728 * k + 26959) % 2 ≠ 0 by omega]
    omega
  have h7 : C (221184 * k + 80878) = 110592 * k + 40439 := by
    unfold C
    simp [show (221184 * k + 80878) % 2 = 0 by omega]
    omega
  have h8 : C (110592 * k + 40439) = 331776 * k + 121318 := by
    unfold C
    simp [show (110592 * k + 40439) % 2 ≠ 0 by omega]
    omega
  have h9 : C (331776 * k + 121318) = 165888 * k + 60659 := by
    unfold C
    simp [show (331776 * k + 121318) % 2 = 0 by omega]
    omega
  have h10 : C (165888 * k + 60659) = 497664 * k + 181978 := by
    unfold C
    simp [show (165888 * k + 60659) % 2 ≠ 0 by omega]
    omega
  have h11 : C (497664 * k + 181978) = 248832 * k + 90989 := by
    unfold C
    simp [show (497664 * k + 181978) % 2 = 0 by omega]
    omega
  have h12 : C (248832 * k + 90989) = 746496 * k + 272968 := by
    unfold C
    simp [show (248832 * k + 90989) % 2 ≠ 0 by omega]
    omega
  have h13 : C (746496 * k + 272968) = 373248 * k + 136484 := by
    unfold C
    simp [show (746496 * k + 272968) % 2 = 0 by omega]
    omega
  have h14 : C (373248 * k + 136484) = 186624 * k + 68242 := by
    unfold C
    simp [show (373248 * k + 136484) % 2 = 0 by omega]
    omega
  have h15 : C (186624 * k + 68242) = 93312 * k + 34121 := by
    unfold C
    simp [show (186624 * k + 68242) % 2 = 0 by omega]
    omega
  have h16 : C (93312 * k + 34121) = 279936 * k + 102364 := by
    unfold C
    simp [show (93312 * k + 34121) % 2 ≠ 0 by omega]
    omega
  have h17 : C (279936 * k + 102364) = 139968 * k + 51182 := by
    unfold C
    simp [show (279936 * k + 102364) % 2 = 0 by omega]
    omega
  have h18 : C (139968 * k + 51182) = 69984 * k + 25591 := by
    unfold C
    simp [show (139968 * k + 51182) % 2 = 0 by omega]
    omega
  have h19 : C (69984 * k + 25591) = 209952 * k + 76774 := by
    unfold C
    simp [show (69984 * k + 25591) % 2 ≠ 0 by omega]
    omega
  have h20 : C (209952 * k + 76774) = 104976 * k + 38387 := by
    unfold C
    simp [show (209952 * k + 76774) % 2 = 0 by omega]
    omega
  have h21 : C (104976 * k + 38387) = 314928 * k + 115162 := by
    unfold C
    simp [show (104976 * k + 38387) % 2 ≠ 0 by omega]
    omega
  have h22 : C (314928 * k + 115162) = 157464 * k + 57581 := by
    unfold C
    simp [show (314928 * k + 115162) % 2 = 0 by omega]
    omega
  have h23 : C (157464 * k + 57581) = 472392 * k + 172744 := by
    unfold C
    simp [show (157464 * k + 57581) % 2 ≠ 0 by omega]
    omega
  have h24 : C (472392 * k + 172744) = 236196 * k + 86372 := by
    unfold C
    simp [show (472392 * k + 172744) % 2 = 0 by omega]
    omega
  have h25 : C (236196 * k + 86372) = 118098 * k + 43186 := by
    unfold C
    simp [show (236196 * k + 86372) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 43186) = 59049 * k + 21593 := by
    unfold C
    simp [show (118098 * k + 43186) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 23963) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 23963)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_24047 : ∀ k : Nat,
    iterate (65536 * k + 24047) 26 = 59049 * k + 21668 ∧
      59049 * k + 21668 < 65536 * k + 24047 := by
  intro k
  have h1 : C (65536 * k + 24047) = 196608 * k + 72142 := by
    unfold C
    simp [show (65536 * k + 24047) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 72142) = 98304 * k + 36071 := by
    unfold C
    simp [show (196608 * k + 72142) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 36071) = 294912 * k + 108214 := by
    unfold C
    simp [show (98304 * k + 36071) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 108214) = 147456 * k + 54107 := by
    unfold C
    simp [show (294912 * k + 108214) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 54107) = 442368 * k + 162322 := by
    unfold C
    simp [show (147456 * k + 54107) % 2 ≠ 0 by omega]
    omega
  have h6 : C (442368 * k + 162322) = 221184 * k + 81161 := by
    unfold C
    simp [show (442368 * k + 162322) % 2 = 0 by omega]
    omega
  have h7 : C (221184 * k + 81161) = 663552 * k + 243484 := by
    unfold C
    simp [show (221184 * k + 81161) % 2 ≠ 0 by omega]
    omega
  have h8 : C (663552 * k + 243484) = 331776 * k + 121742 := by
    unfold C
    simp [show (663552 * k + 243484) % 2 = 0 by omega]
    omega
  have h9 : C (331776 * k + 121742) = 165888 * k + 60871 := by
    unfold C
    simp [show (331776 * k + 121742) % 2 = 0 by omega]
    omega
  have h10 : C (165888 * k + 60871) = 497664 * k + 182614 := by
    unfold C
    simp [show (165888 * k + 60871) % 2 ≠ 0 by omega]
    omega
  have h11 : C (497664 * k + 182614) = 248832 * k + 91307 := by
    unfold C
    simp [show (497664 * k + 182614) % 2 = 0 by omega]
    omega
  have h12 : C (248832 * k + 91307) = 746496 * k + 273922 := by
    unfold C
    simp [show (248832 * k + 91307) % 2 ≠ 0 by omega]
    omega
  have h13 : C (746496 * k + 273922) = 373248 * k + 136961 := by
    unfold C
    simp [show (746496 * k + 273922) % 2 = 0 by omega]
    omega
  have h14 : C (373248 * k + 136961) = 1119744 * k + 410884 := by
    unfold C
    simp [show (373248 * k + 136961) % 2 ≠ 0 by omega]
    omega
  have h15 : C (1119744 * k + 410884) = 559872 * k + 205442 := by
    unfold C
    simp [show (1119744 * k + 410884) % 2 = 0 by omega]
    omega
  have h16 : C (559872 * k + 205442) = 279936 * k + 102721 := by
    unfold C
    simp [show (559872 * k + 205442) % 2 = 0 by omega]
    omega
  have h17 : C (279936 * k + 102721) = 839808 * k + 308164 := by
    unfold C
    simp [show (279936 * k + 102721) % 2 ≠ 0 by omega]
    omega
  have h18 : C (839808 * k + 308164) = 419904 * k + 154082 := by
    unfold C
    simp [show (839808 * k + 308164) % 2 = 0 by omega]
    omega
  have h19 : C (419904 * k + 154082) = 209952 * k + 77041 := by
    unfold C
    simp [show (419904 * k + 154082) % 2 = 0 by omega]
    omega
  have h20 : C (209952 * k + 77041) = 629856 * k + 231124 := by
    unfold C
    simp [show (209952 * k + 77041) % 2 ≠ 0 by omega]
    omega
  have h21 : C (629856 * k + 231124) = 314928 * k + 115562 := by
    unfold C
    simp [show (629856 * k + 231124) % 2 = 0 by omega]
    omega
  have h22 : C (314928 * k + 115562) = 157464 * k + 57781 := by
    unfold C
    simp [show (314928 * k + 115562) % 2 = 0 by omega]
    omega
  have h23 : C (157464 * k + 57781) = 472392 * k + 173344 := by
    unfold C
    simp [show (157464 * k + 57781) % 2 ≠ 0 by omega]
    omega
  have h24 : C (472392 * k + 173344) = 236196 * k + 86672 := by
    unfold C
    simp [show (472392 * k + 173344) % 2 = 0 by omega]
    omega
  have h25 : C (236196 * k + 86672) = 118098 * k + 43336 := by
    unfold C
    simp [show (236196 * k + 86672) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 43336) = 59049 * k + 21668 := by
    unfold C
    simp [show (118098 * k + 43336) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 24047) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 24047)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_24383 : ∀ k : Nat,
    iterate (65536 * k + 24383) 26 = 59049 * k + 21971 ∧
      59049 * k + 21971 < 65536 * k + 24383 := by
  intro k
  have h1 : C (65536 * k + 24383) = 196608 * k + 73150 := by
    unfold C
    simp [show (65536 * k + 24383) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 73150) = 98304 * k + 36575 := by
    unfold C
    simp [show (196608 * k + 73150) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 36575) = 294912 * k + 109726 := by
    unfold C
    simp [show (98304 * k + 36575) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 109726) = 147456 * k + 54863 := by
    unfold C
    simp [show (294912 * k + 109726) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 54863) = 442368 * k + 164590 := by
    unfold C
    simp [show (147456 * k + 54863) % 2 ≠ 0 by omega]
    omega
  have h6 : C (442368 * k + 164590) = 221184 * k + 82295 := by
    unfold C
    simp [show (442368 * k + 164590) % 2 = 0 by omega]
    omega
  have h7 : C (221184 * k + 82295) = 663552 * k + 246886 := by
    unfold C
    simp [show (221184 * k + 82295) % 2 ≠ 0 by omega]
    omega
  have h8 : C (663552 * k + 246886) = 331776 * k + 123443 := by
    unfold C
    simp [show (663552 * k + 246886) % 2 = 0 by omega]
    omega
  have h9 : C (331776 * k + 123443) = 995328 * k + 370330 := by
    unfold C
    simp [show (331776 * k + 123443) % 2 ≠ 0 by omega]
    omega
  have h10 : C (995328 * k + 370330) = 497664 * k + 185165 := by
    unfold C
    simp [show (995328 * k + 370330) % 2 = 0 by omega]
    omega
  have h11 : C (497664 * k + 185165) = 1492992 * k + 555496 := by
    unfold C
    simp [show (497664 * k + 185165) % 2 ≠ 0 by omega]
    omega
  have h12 : C (1492992 * k + 555496) = 746496 * k + 277748 := by
    unfold C
    simp [show (1492992 * k + 555496) % 2 = 0 by omega]
    omega
  have h13 : C (746496 * k + 277748) = 373248 * k + 138874 := by
    unfold C
    simp [show (746496 * k + 277748) % 2 = 0 by omega]
    omega
  have h14 : C (373248 * k + 138874) = 186624 * k + 69437 := by
    unfold C
    simp [show (373248 * k + 138874) % 2 = 0 by omega]
    omega
  have h15 : C (186624 * k + 69437) = 559872 * k + 208312 := by
    unfold C
    simp [show (186624 * k + 69437) % 2 ≠ 0 by omega]
    omega
  have h16 : C (559872 * k + 208312) = 279936 * k + 104156 := by
    unfold C
    simp [show (559872 * k + 208312) % 2 = 0 by omega]
    omega
  have h17 : C (279936 * k + 104156) = 139968 * k + 52078 := by
    unfold C
    simp [show (279936 * k + 104156) % 2 = 0 by omega]
    omega
  have h18 : C (139968 * k + 52078) = 69984 * k + 26039 := by
    unfold C
    simp [show (139968 * k + 52078) % 2 = 0 by omega]
    omega
  have h19 : C (69984 * k + 26039) = 209952 * k + 78118 := by
    unfold C
    simp [show (69984 * k + 26039) % 2 ≠ 0 by omega]
    omega
  have h20 : C (209952 * k + 78118) = 104976 * k + 39059 := by
    unfold C
    simp [show (209952 * k + 78118) % 2 = 0 by omega]
    omega
  have h21 : C (104976 * k + 39059) = 314928 * k + 117178 := by
    unfold C
    simp [show (104976 * k + 39059) % 2 ≠ 0 by omega]
    omega
  have h22 : C (314928 * k + 117178) = 157464 * k + 58589 := by
    unfold C
    simp [show (314928 * k + 117178) % 2 = 0 by omega]
    omega
  have h23 : C (157464 * k + 58589) = 472392 * k + 175768 := by
    unfold C
    simp [show (157464 * k + 58589) % 2 ≠ 0 by omega]
    omega
  have h24 : C (472392 * k + 175768) = 236196 * k + 87884 := by
    unfold C
    simp [show (472392 * k + 175768) % 2 = 0 by omega]
    omega
  have h25 : C (236196 * k + 87884) = 118098 * k + 43942 := by
    unfold C
    simp [show (236196 * k + 87884) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 43942) = 59049 * k + 21971 := by
    unfold C
    simp [show (118098 * k + 43942) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 24383) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 24383)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_24571 : ∀ k : Nat,
    iterate (65536 * k + 24571) 26 = 59049 * k + 22141 ∧
      59049 * k + 22141 < 65536 * k + 24571 := by
  intro k
  have h1 : C (65536 * k + 24571) = 196608 * k + 73714 := by
    unfold C
    simp [show (65536 * k + 24571) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 73714) = 98304 * k + 36857 := by
    unfold C
    simp [show (196608 * k + 73714) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 36857) = 294912 * k + 110572 := by
    unfold C
    simp [show (98304 * k + 36857) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 110572) = 147456 * k + 55286 := by
    unfold C
    simp [show (294912 * k + 110572) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 55286) = 73728 * k + 27643 := by
    unfold C
    simp [show (147456 * k + 55286) % 2 = 0 by omega]
    omega
  have h6 : C (73728 * k + 27643) = 221184 * k + 82930 := by
    unfold C
    simp [show (73728 * k + 27643) % 2 ≠ 0 by omega]
    omega
  have h7 : C (221184 * k + 82930) = 110592 * k + 41465 := by
    unfold C
    simp [show (221184 * k + 82930) % 2 = 0 by omega]
    omega
  have h8 : C (110592 * k + 41465) = 331776 * k + 124396 := by
    unfold C
    simp [show (110592 * k + 41465) % 2 ≠ 0 by omega]
    omega
  have h9 : C (331776 * k + 124396) = 165888 * k + 62198 := by
    unfold C
    simp [show (331776 * k + 124396) % 2 = 0 by omega]
    omega
  have h10 : C (165888 * k + 62198) = 82944 * k + 31099 := by
    unfold C
    simp [show (165888 * k + 62198) % 2 = 0 by omega]
    omega
  have h11 : C (82944 * k + 31099) = 248832 * k + 93298 := by
    unfold C
    simp [show (82944 * k + 31099) % 2 ≠ 0 by omega]
    omega
  have h12 : C (248832 * k + 93298) = 124416 * k + 46649 := by
    unfold C
    simp [show (248832 * k + 93298) % 2 = 0 by omega]
    omega
  have h13 : C (124416 * k + 46649) = 373248 * k + 139948 := by
    unfold C
    simp [show (124416 * k + 46649) % 2 ≠ 0 by omega]
    omega
  have h14 : C (373248 * k + 139948) = 186624 * k + 69974 := by
    unfold C
    simp [show (373248 * k + 139948) % 2 = 0 by omega]
    omega
  have h15 : C (186624 * k + 69974) = 93312 * k + 34987 := by
    unfold C
    simp [show (186624 * k + 69974) % 2 = 0 by omega]
    omega
  have h16 : C (93312 * k + 34987) = 279936 * k + 104962 := by
    unfold C
    simp [show (93312 * k + 34987) % 2 ≠ 0 by omega]
    omega
  have h17 : C (279936 * k + 104962) = 139968 * k + 52481 := by
    unfold C
    simp [show (279936 * k + 104962) % 2 = 0 by omega]
    omega
  have h18 : C (139968 * k + 52481) = 419904 * k + 157444 := by
    unfold C
    simp [show (139968 * k + 52481) % 2 ≠ 0 by omega]
    omega
  have h19 : C (419904 * k + 157444) = 209952 * k + 78722 := by
    unfold C
    simp [show (419904 * k + 157444) % 2 = 0 by omega]
    omega
  have h20 : C (209952 * k + 78722) = 104976 * k + 39361 := by
    unfold C
    simp [show (209952 * k + 78722) % 2 = 0 by omega]
    omega
  have h21 : C (104976 * k + 39361) = 314928 * k + 118084 := by
    unfold C
    simp [show (104976 * k + 39361) % 2 ≠ 0 by omega]
    omega
  have h22 : C (314928 * k + 118084) = 157464 * k + 59042 := by
    unfold C
    simp [show (314928 * k + 118084) % 2 = 0 by omega]
    omega
  have h23 : C (157464 * k + 59042) = 78732 * k + 29521 := by
    unfold C
    simp [show (157464 * k + 59042) % 2 = 0 by omega]
    omega
  have h24 : C (78732 * k + 29521) = 236196 * k + 88564 := by
    unfold C
    simp [show (78732 * k + 29521) % 2 ≠ 0 by omega]
    omega
  have h25 : C (236196 * k + 88564) = 118098 * k + 44282 := by
    unfold C
    simp [show (236196 * k + 88564) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 44282) = 59049 * k + 22141 := by
    unfold C
    simp [show (118098 * k + 44282) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 24571) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 24571)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_24703 : ∀ k : Nat,
    iterate (65536 * k + 24703) 26 = 59049 * k + 22259 ∧
      59049 * k + 22259 < 65536 * k + 24703 := by
  intro k
  have h1 : C (65536 * k + 24703) = 196608 * k + 74110 := by
    unfold C
    simp [show (65536 * k + 24703) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 74110) = 98304 * k + 37055 := by
    unfold C
    simp [show (196608 * k + 74110) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 37055) = 294912 * k + 111166 := by
    unfold C
    simp [show (98304 * k + 37055) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 111166) = 147456 * k + 55583 := by
    unfold C
    simp [show (294912 * k + 111166) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 55583) = 442368 * k + 166750 := by
    unfold C
    simp [show (147456 * k + 55583) % 2 ≠ 0 by omega]
    omega
  have h6 : C (442368 * k + 166750) = 221184 * k + 83375 := by
    unfold C
    simp [show (442368 * k + 166750) % 2 = 0 by omega]
    omega
  have h7 : C (221184 * k + 83375) = 663552 * k + 250126 := by
    unfold C
    simp [show (221184 * k + 83375) % 2 ≠ 0 by omega]
    omega
  have h8 : C (663552 * k + 250126) = 331776 * k + 125063 := by
    unfold C
    simp [show (663552 * k + 250126) % 2 = 0 by omega]
    omega
  have h9 : C (331776 * k + 125063) = 995328 * k + 375190 := by
    unfold C
    simp [show (331776 * k + 125063) % 2 ≠ 0 by omega]
    omega
  have h10 : C (995328 * k + 375190) = 497664 * k + 187595 := by
    unfold C
    simp [show (995328 * k + 375190) % 2 = 0 by omega]
    omega
  have h11 : C (497664 * k + 187595) = 1492992 * k + 562786 := by
    unfold C
    simp [show (497664 * k + 187595) % 2 ≠ 0 by omega]
    omega
  have h12 : C (1492992 * k + 562786) = 746496 * k + 281393 := by
    unfold C
    simp [show (1492992 * k + 562786) % 2 = 0 by omega]
    omega
  have h13 : C (746496 * k + 281393) = 2239488 * k + 844180 := by
    unfold C
    simp [show (746496 * k + 281393) % 2 ≠ 0 by omega]
    omega
  have h14 : C (2239488 * k + 844180) = 1119744 * k + 422090 := by
    unfold C
    simp [show (2239488 * k + 844180) % 2 = 0 by omega]
    omega
  have h15 : C (1119744 * k + 422090) = 559872 * k + 211045 := by
    unfold C
    simp [show (1119744 * k + 422090) % 2 = 0 by omega]
    omega
  have h16 : C (559872 * k + 211045) = 1679616 * k + 633136 := by
    unfold C
    simp [show (559872 * k + 211045) % 2 ≠ 0 by omega]
    omega
  have h17 : C (1679616 * k + 633136) = 839808 * k + 316568 := by
    unfold C
    simp [show (1679616 * k + 633136) % 2 = 0 by omega]
    omega
  have h18 : C (839808 * k + 316568) = 419904 * k + 158284 := by
    unfold C
    simp [show (839808 * k + 316568) % 2 = 0 by omega]
    omega
  have h19 : C (419904 * k + 158284) = 209952 * k + 79142 := by
    unfold C
    simp [show (419904 * k + 158284) % 2 = 0 by omega]
    omega
  have h20 : C (209952 * k + 79142) = 104976 * k + 39571 := by
    unfold C
    simp [show (209952 * k + 79142) % 2 = 0 by omega]
    omega
  have h21 : C (104976 * k + 39571) = 314928 * k + 118714 := by
    unfold C
    simp [show (104976 * k + 39571) % 2 ≠ 0 by omega]
    omega
  have h22 : C (314928 * k + 118714) = 157464 * k + 59357 := by
    unfold C
    simp [show (314928 * k + 118714) % 2 = 0 by omega]
    omega
  have h23 : C (157464 * k + 59357) = 472392 * k + 178072 := by
    unfold C
    simp [show (157464 * k + 59357) % 2 ≠ 0 by omega]
    omega
  have h24 : C (472392 * k + 178072) = 236196 * k + 89036 := by
    unfold C
    simp [show (472392 * k + 178072) % 2 = 0 by omega]
    omega
  have h25 : C (236196 * k + 89036) = 118098 * k + 44518 := by
    unfold C
    simp [show (236196 * k + 89036) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 44518) = 59049 * k + 22259 := by
    unfold C
    simp [show (118098 * k + 44518) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 24703) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 24703)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_24731 : ∀ k : Nat,
    iterate (65536 * k + 24731) 26 = 59049 * k + 22285 ∧
      59049 * k + 22285 < 65536 * k + 24731 := by
  intro k
  have h1 : C (65536 * k + 24731) = 196608 * k + 74194 := by
    unfold C
    simp [show (65536 * k + 24731) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 74194) = 98304 * k + 37097 := by
    unfold C
    simp [show (196608 * k + 74194) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 37097) = 294912 * k + 111292 := by
    unfold C
    simp [show (98304 * k + 37097) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 111292) = 147456 * k + 55646 := by
    unfold C
    simp [show (294912 * k + 111292) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 55646) = 73728 * k + 27823 := by
    unfold C
    simp [show (147456 * k + 55646) % 2 = 0 by omega]
    omega
  have h6 : C (73728 * k + 27823) = 221184 * k + 83470 := by
    unfold C
    simp [show (73728 * k + 27823) % 2 ≠ 0 by omega]
    omega
  have h7 : C (221184 * k + 83470) = 110592 * k + 41735 := by
    unfold C
    simp [show (221184 * k + 83470) % 2 = 0 by omega]
    omega
  have h8 : C (110592 * k + 41735) = 331776 * k + 125206 := by
    unfold C
    simp [show (110592 * k + 41735) % 2 ≠ 0 by omega]
    omega
  have h9 : C (331776 * k + 125206) = 165888 * k + 62603 := by
    unfold C
    simp [show (331776 * k + 125206) % 2 = 0 by omega]
    omega
  have h10 : C (165888 * k + 62603) = 497664 * k + 187810 := by
    unfold C
    simp [show (165888 * k + 62603) % 2 ≠ 0 by omega]
    omega
  have h11 : C (497664 * k + 187810) = 248832 * k + 93905 := by
    unfold C
    simp [show (497664 * k + 187810) % 2 = 0 by omega]
    omega
  have h12 : C (248832 * k + 93905) = 746496 * k + 281716 := by
    unfold C
    simp [show (248832 * k + 93905) % 2 ≠ 0 by omega]
    omega
  have h13 : C (746496 * k + 281716) = 373248 * k + 140858 := by
    unfold C
    simp [show (746496 * k + 281716) % 2 = 0 by omega]
    omega
  have h14 : C (373248 * k + 140858) = 186624 * k + 70429 := by
    unfold C
    simp [show (373248 * k + 140858) % 2 = 0 by omega]
    omega
  have h15 : C (186624 * k + 70429) = 559872 * k + 211288 := by
    unfold C
    simp [show (186624 * k + 70429) % 2 ≠ 0 by omega]
    omega
  have h16 : C (559872 * k + 211288) = 279936 * k + 105644 := by
    unfold C
    simp [show (559872 * k + 211288) % 2 = 0 by omega]
    omega
  have h17 : C (279936 * k + 105644) = 139968 * k + 52822 := by
    unfold C
    simp [show (279936 * k + 105644) % 2 = 0 by omega]
    omega
  have h18 : C (139968 * k + 52822) = 69984 * k + 26411 := by
    unfold C
    simp [show (139968 * k + 52822) % 2 = 0 by omega]
    omega
  have h19 : C (69984 * k + 26411) = 209952 * k + 79234 := by
    unfold C
    simp [show (69984 * k + 26411) % 2 ≠ 0 by omega]
    omega
  have h20 : C (209952 * k + 79234) = 104976 * k + 39617 := by
    unfold C
    simp [show (209952 * k + 79234) % 2 = 0 by omega]
    omega
  have h21 : C (104976 * k + 39617) = 314928 * k + 118852 := by
    unfold C
    simp [show (104976 * k + 39617) % 2 ≠ 0 by omega]
    omega
  have h22 : C (314928 * k + 118852) = 157464 * k + 59426 := by
    unfold C
    simp [show (314928 * k + 118852) % 2 = 0 by omega]
    omega
  have h23 : C (157464 * k + 59426) = 78732 * k + 29713 := by
    unfold C
    simp [show (157464 * k + 59426) % 2 = 0 by omega]
    omega
  have h24 : C (78732 * k + 29713) = 236196 * k + 89140 := by
    unfold C
    simp [show (78732 * k + 29713) % 2 ≠ 0 by omega]
    omega
  have h25 : C (236196 * k + 89140) = 118098 * k + 44570 := by
    unfold C
    simp [show (236196 * k + 89140) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 44570) = 59049 * k + 22285 := by
    unfold C
    simp [show (118098 * k + 44570) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 24731) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 24731)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_24815 : ∀ k : Nat,
    iterate (65536 * k + 24815) 26 = 59049 * k + 22360 ∧
      59049 * k + 22360 < 65536 * k + 24815 := by
  intro k
  have h1 : C (65536 * k + 24815) = 196608 * k + 74446 := by
    unfold C
    simp [show (65536 * k + 24815) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 74446) = 98304 * k + 37223 := by
    unfold C
    simp [show (196608 * k + 74446) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 37223) = 294912 * k + 111670 := by
    unfold C
    simp [show (98304 * k + 37223) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 111670) = 147456 * k + 55835 := by
    unfold C
    simp [show (294912 * k + 111670) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 55835) = 442368 * k + 167506 := by
    unfold C
    simp [show (147456 * k + 55835) % 2 ≠ 0 by omega]
    omega
  have h6 : C (442368 * k + 167506) = 221184 * k + 83753 := by
    unfold C
    simp [show (442368 * k + 167506) % 2 = 0 by omega]
    omega
  have h7 : C (221184 * k + 83753) = 663552 * k + 251260 := by
    unfold C
    simp [show (221184 * k + 83753) % 2 ≠ 0 by omega]
    omega
  have h8 : C (663552 * k + 251260) = 331776 * k + 125630 := by
    unfold C
    simp [show (663552 * k + 251260) % 2 = 0 by omega]
    omega
  have h9 : C (331776 * k + 125630) = 165888 * k + 62815 := by
    unfold C
    simp [show (331776 * k + 125630) % 2 = 0 by omega]
    omega
  have h10 : C (165888 * k + 62815) = 497664 * k + 188446 := by
    unfold C
    simp [show (165888 * k + 62815) % 2 ≠ 0 by omega]
    omega
  have h11 : C (497664 * k + 188446) = 248832 * k + 94223 := by
    unfold C
    simp [show (497664 * k + 188446) % 2 = 0 by omega]
    omega
  have h12 : C (248832 * k + 94223) = 746496 * k + 282670 := by
    unfold C
    simp [show (248832 * k + 94223) % 2 ≠ 0 by omega]
    omega
  have h13 : C (746496 * k + 282670) = 373248 * k + 141335 := by
    unfold C
    simp [show (746496 * k + 282670) % 2 = 0 by omega]
    omega
  have h14 : C (373248 * k + 141335) = 1119744 * k + 424006 := by
    unfold C
    simp [show (373248 * k + 141335) % 2 ≠ 0 by omega]
    omega
  have h15 : C (1119744 * k + 424006) = 559872 * k + 212003 := by
    unfold C
    simp [show (1119744 * k + 424006) % 2 = 0 by omega]
    omega
  have h16 : C (559872 * k + 212003) = 1679616 * k + 636010 := by
    unfold C
    simp [show (559872 * k + 212003) % 2 ≠ 0 by omega]
    omega
  have h17 : C (1679616 * k + 636010) = 839808 * k + 318005 := by
    unfold C
    simp [show (1679616 * k + 636010) % 2 = 0 by omega]
    omega
  have h18 : C (839808 * k + 318005) = 2519424 * k + 954016 := by
    unfold C
    simp [show (839808 * k + 318005) % 2 ≠ 0 by omega]
    omega
  have h19 : C (2519424 * k + 954016) = 1259712 * k + 477008 := by
    unfold C
    simp [show (2519424 * k + 954016) % 2 = 0 by omega]
    omega
  have h20 : C (1259712 * k + 477008) = 629856 * k + 238504 := by
    unfold C
    simp [show (1259712 * k + 477008) % 2 = 0 by omega]
    omega
  have h21 : C (629856 * k + 238504) = 314928 * k + 119252 := by
    unfold C
    simp [show (629856 * k + 238504) % 2 = 0 by omega]
    omega
  have h22 : C (314928 * k + 119252) = 157464 * k + 59626 := by
    unfold C
    simp [show (314928 * k + 119252) % 2 = 0 by omega]
    omega
  have h23 : C (157464 * k + 59626) = 78732 * k + 29813 := by
    unfold C
    simp [show (157464 * k + 59626) % 2 = 0 by omega]
    omega
  have h24 : C (78732 * k + 29813) = 236196 * k + 89440 := by
    unfold C
    simp [show (78732 * k + 29813) % 2 ≠ 0 by omega]
    omega
  have h25 : C (236196 * k + 89440) = 118098 * k + 44720 := by
    unfold C
    simp [show (236196 * k + 89440) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 44720) = 59049 * k + 22360 := by
    unfold C
    simp [show (118098 * k + 44720) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 24815) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 24815)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_25371 : ∀ k : Nat,
    iterate (65536 * k + 25371) 26 = 59049 * k + 22861 ∧
      59049 * k + 22861 < 65536 * k + 25371 := by
  intro k
  have h1 : C (65536 * k + 25371) = 196608 * k + 76114 := by
    unfold C
    simp [show (65536 * k + 25371) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 76114) = 98304 * k + 38057 := by
    unfold C
    simp [show (196608 * k + 76114) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 38057) = 294912 * k + 114172 := by
    unfold C
    simp [show (98304 * k + 38057) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 114172) = 147456 * k + 57086 := by
    unfold C
    simp [show (294912 * k + 114172) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 57086) = 73728 * k + 28543 := by
    unfold C
    simp [show (147456 * k + 57086) % 2 = 0 by omega]
    omega
  have h6 : C (73728 * k + 28543) = 221184 * k + 85630 := by
    unfold C
    simp [show (73728 * k + 28543) % 2 ≠ 0 by omega]
    omega
  have h7 : C (221184 * k + 85630) = 110592 * k + 42815 := by
    unfold C
    simp [show (221184 * k + 85630) % 2 = 0 by omega]
    omega
  have h8 : C (110592 * k + 42815) = 331776 * k + 128446 := by
    unfold C
    simp [show (110592 * k + 42815) % 2 ≠ 0 by omega]
    omega
  have h9 : C (331776 * k + 128446) = 165888 * k + 64223 := by
    unfold C
    simp [show (331776 * k + 128446) % 2 = 0 by omega]
    omega
  have h10 : C (165888 * k + 64223) = 497664 * k + 192670 := by
    unfold C
    simp [show (165888 * k + 64223) % 2 ≠ 0 by omega]
    omega
  have h11 : C (497664 * k + 192670) = 248832 * k + 96335 := by
    unfold C
    simp [show (497664 * k + 192670) % 2 = 0 by omega]
    omega
  have h12 : C (248832 * k + 96335) = 746496 * k + 289006 := by
    unfold C
    simp [show (248832 * k + 96335) % 2 ≠ 0 by omega]
    omega
  have h13 : C (746496 * k + 289006) = 373248 * k + 144503 := by
    unfold C
    simp [show (746496 * k + 289006) % 2 = 0 by omega]
    omega
  have h14 : C (373248 * k + 144503) = 1119744 * k + 433510 := by
    unfold C
    simp [show (373248 * k + 144503) % 2 ≠ 0 by omega]
    omega
  have h15 : C (1119744 * k + 433510) = 559872 * k + 216755 := by
    unfold C
    simp [show (1119744 * k + 433510) % 2 = 0 by omega]
    omega
  have h16 : C (559872 * k + 216755) = 1679616 * k + 650266 := by
    unfold C
    simp [show (559872 * k + 216755) % 2 ≠ 0 by omega]
    omega
  have h17 : C (1679616 * k + 650266) = 839808 * k + 325133 := by
    unfold C
    simp [show (1679616 * k + 650266) % 2 = 0 by omega]
    omega
  have h18 : C (839808 * k + 325133) = 2519424 * k + 975400 := by
    unfold C
    simp [show (839808 * k + 325133) % 2 ≠ 0 by omega]
    omega
  have h19 : C (2519424 * k + 975400) = 1259712 * k + 487700 := by
    unfold C
    simp [show (2519424 * k + 975400) % 2 = 0 by omega]
    omega
  have h20 : C (1259712 * k + 487700) = 629856 * k + 243850 := by
    unfold C
    simp [show (1259712 * k + 487700) % 2 = 0 by omega]
    omega
  have h21 : C (629856 * k + 243850) = 314928 * k + 121925 := by
    unfold C
    simp [show (629856 * k + 243850) % 2 = 0 by omega]
    omega
  have h22 : C (314928 * k + 121925) = 944784 * k + 365776 := by
    unfold C
    simp [show (314928 * k + 121925) % 2 ≠ 0 by omega]
    omega
  have h23 : C (944784 * k + 365776) = 472392 * k + 182888 := by
    unfold C
    simp [show (944784 * k + 365776) % 2 = 0 by omega]
    omega
  have h24 : C (472392 * k + 182888) = 236196 * k + 91444 := by
    unfold C
    simp [show (472392 * k + 182888) % 2 = 0 by omega]
    omega
  have h25 : C (236196 * k + 91444) = 118098 * k + 45722 := by
    unfold C
    simp [show (236196 * k + 91444) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 45722) = 59049 * k + 22861 := by
    unfold C
    simp [show (118098 * k + 45722) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 25371) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 25371)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_25415 : ∀ k : Nat,
    iterate (65536 * k + 25415) 26 = 59049 * k + 22901 ∧
      59049 * k + 22901 < 65536 * k + 25415 := by
  intro k
  have h1 : C (65536 * k + 25415) = 196608 * k + 76246 := by
    unfold C
    simp [show (65536 * k + 25415) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 76246) = 98304 * k + 38123 := by
    unfold C
    simp [show (196608 * k + 76246) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 38123) = 294912 * k + 114370 := by
    unfold C
    simp [show (98304 * k + 38123) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 114370) = 147456 * k + 57185 := by
    unfold C
    simp [show (294912 * k + 114370) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 57185) = 442368 * k + 171556 := by
    unfold C
    simp [show (147456 * k + 57185) % 2 ≠ 0 by omega]
    omega
  have h6 : C (442368 * k + 171556) = 221184 * k + 85778 := by
    unfold C
    simp [show (442368 * k + 171556) % 2 = 0 by omega]
    omega
  have h7 : C (221184 * k + 85778) = 110592 * k + 42889 := by
    unfold C
    simp [show (221184 * k + 85778) % 2 = 0 by omega]
    omega
  have h8 : C (110592 * k + 42889) = 331776 * k + 128668 := by
    unfold C
    simp [show (110592 * k + 42889) % 2 ≠ 0 by omega]
    omega
  have h9 : C (331776 * k + 128668) = 165888 * k + 64334 := by
    unfold C
    simp [show (331776 * k + 128668) % 2 = 0 by omega]
    omega
  have h10 : C (165888 * k + 64334) = 82944 * k + 32167 := by
    unfold C
    simp [show (165888 * k + 64334) % 2 = 0 by omega]
    omega
  have h11 : C (82944 * k + 32167) = 248832 * k + 96502 := by
    unfold C
    simp [show (82944 * k + 32167) % 2 ≠ 0 by omega]
    omega
  have h12 : C (248832 * k + 96502) = 124416 * k + 48251 := by
    unfold C
    simp [show (248832 * k + 96502) % 2 = 0 by omega]
    omega
  have h13 : C (124416 * k + 48251) = 373248 * k + 144754 := by
    unfold C
    simp [show (124416 * k + 48251) % 2 ≠ 0 by omega]
    omega
  have h14 : C (373248 * k + 144754) = 186624 * k + 72377 := by
    unfold C
    simp [show (373248 * k + 144754) % 2 = 0 by omega]
    omega
  have h15 : C (186624 * k + 72377) = 559872 * k + 217132 := by
    unfold C
    simp [show (186624 * k + 72377) % 2 ≠ 0 by omega]
    omega
  have h16 : C (559872 * k + 217132) = 279936 * k + 108566 := by
    unfold C
    simp [show (559872 * k + 217132) % 2 = 0 by omega]
    omega
  have h17 : C (279936 * k + 108566) = 139968 * k + 54283 := by
    unfold C
    simp [show (279936 * k + 108566) % 2 = 0 by omega]
    omega
  have h18 : C (139968 * k + 54283) = 419904 * k + 162850 := by
    unfold C
    simp [show (139968 * k + 54283) % 2 ≠ 0 by omega]
    omega
  have h19 : C (419904 * k + 162850) = 209952 * k + 81425 := by
    unfold C
    simp [show (419904 * k + 162850) % 2 = 0 by omega]
    omega
  have h20 : C (209952 * k + 81425) = 629856 * k + 244276 := by
    unfold C
    simp [show (209952 * k + 81425) % 2 ≠ 0 by omega]
    omega
  have h21 : C (629856 * k + 244276) = 314928 * k + 122138 := by
    unfold C
    simp [show (629856 * k + 244276) % 2 = 0 by omega]
    omega
  have h22 : C (314928 * k + 122138) = 157464 * k + 61069 := by
    unfold C
    simp [show (314928 * k + 122138) % 2 = 0 by omega]
    omega
  have h23 : C (157464 * k + 61069) = 472392 * k + 183208 := by
    unfold C
    simp [show (157464 * k + 61069) % 2 ≠ 0 by omega]
    omega
  have h24 : C (472392 * k + 183208) = 236196 * k + 91604 := by
    unfold C
    simp [show (472392 * k + 183208) % 2 = 0 by omega]
    omega
  have h25 : C (236196 * k + 91604) = 118098 * k + 45802 := by
    unfold C
    simp [show (236196 * k + 91604) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 45802) = 59049 * k + 22901 := by
    unfold C
    simp [show (118098 * k + 45802) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 25415) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 25415)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

theorem descent_mod65536_25471 : ∀ k : Nat,
    iterate (65536 * k + 25471) 26 = 59049 * k + 22951 ∧
      59049 * k + 22951 < 65536 * k + 25471 := by
  intro k
  have h1 : C (65536 * k + 25471) = 196608 * k + 76414 := by
    unfold C
    simp [show (65536 * k + 25471) % 2 ≠ 0 by omega]
    omega
  have h2 : C (196608 * k + 76414) = 98304 * k + 38207 := by
    unfold C
    simp [show (196608 * k + 76414) % 2 = 0 by omega]
    omega
  have h3 : C (98304 * k + 38207) = 294912 * k + 114622 := by
    unfold C
    simp [show (98304 * k + 38207) % 2 ≠ 0 by omega]
    omega
  have h4 : C (294912 * k + 114622) = 147456 * k + 57311 := by
    unfold C
    simp [show (294912 * k + 114622) % 2 = 0 by omega]
    omega
  have h5 : C (147456 * k + 57311) = 442368 * k + 171934 := by
    unfold C
    simp [show (147456 * k + 57311) % 2 ≠ 0 by omega]
    omega
  have h6 : C (442368 * k + 171934) = 221184 * k + 85967 := by
    unfold C
    simp [show (442368 * k + 171934) % 2 = 0 by omega]
    omega
  have h7 : C (221184 * k + 85967) = 663552 * k + 257902 := by
    unfold C
    simp [show (221184 * k + 85967) % 2 ≠ 0 by omega]
    omega
  have h8 : C (663552 * k + 257902) = 331776 * k + 128951 := by
    unfold C
    simp [show (663552 * k + 257902) % 2 = 0 by omega]
    omega
  have h9 : C (331776 * k + 128951) = 995328 * k + 386854 := by
    unfold C
    simp [show (331776 * k + 128951) % 2 ≠ 0 by omega]
    omega
  have h10 : C (995328 * k + 386854) = 497664 * k + 193427 := by
    unfold C
    simp [show (995328 * k + 386854) % 2 = 0 by omega]
    omega
  have h11 : C (497664 * k + 193427) = 1492992 * k + 580282 := by
    unfold C
    simp [show (497664 * k + 193427) % 2 ≠ 0 by omega]
    omega
  have h12 : C (1492992 * k + 580282) = 746496 * k + 290141 := by
    unfold C
    simp [show (1492992 * k + 580282) % 2 = 0 by omega]
    omega
  have h13 : C (746496 * k + 290141) = 2239488 * k + 870424 := by
    unfold C
    simp [show (746496 * k + 290141) % 2 ≠ 0 by omega]
    omega
  have h14 : C (2239488 * k + 870424) = 1119744 * k + 435212 := by
    unfold C
    simp [show (2239488 * k + 870424) % 2 = 0 by omega]
    omega
  have h15 : C (1119744 * k + 435212) = 559872 * k + 217606 := by
    unfold C
    simp [show (1119744 * k + 435212) % 2 = 0 by omega]
    omega
  have h16 : C (559872 * k + 217606) = 279936 * k + 108803 := by
    unfold C
    simp [show (559872 * k + 217606) % 2 = 0 by omega]
    omega
  have h17 : C (279936 * k + 108803) = 839808 * k + 326410 := by
    unfold C
    simp [show (279936 * k + 108803) % 2 ≠ 0 by omega]
    omega
  have h18 : C (839808 * k + 326410) = 419904 * k + 163205 := by
    unfold C
    simp [show (839808 * k + 326410) % 2 = 0 by omega]
    omega
  have h19 : C (419904 * k + 163205) = 1259712 * k + 489616 := by
    unfold C
    simp [show (419904 * k + 163205) % 2 ≠ 0 by omega]
    omega
  have h20 : C (1259712 * k + 489616) = 629856 * k + 244808 := by
    unfold C
    simp [show (1259712 * k + 489616) % 2 = 0 by omega]
    omega
  have h21 : C (629856 * k + 244808) = 314928 * k + 122404 := by
    unfold C
    simp [show (629856 * k + 244808) % 2 = 0 by omega]
    omega
  have h22 : C (314928 * k + 122404) = 157464 * k + 61202 := by
    unfold C
    simp [show (314928 * k + 122404) % 2 = 0 by omega]
    omega
  have h23 : C (157464 * k + 61202) = 78732 * k + 30601 := by
    unfold C
    simp [show (157464 * k + 61202) % 2 = 0 by omega]
    omega
  have h24 : C (78732 * k + 30601) = 236196 * k + 91804 := by
    unfold C
    simp [show (78732 * k + 30601) % 2 ≠ 0 by omega]
    omega
  have h25 : C (236196 * k + 91804) = 118098 * k + 45902 := by
    unfold C
    simp [show (236196 * k + 91804) % 2 = 0 by omega]
    omega
  have h26 : C (118098 * k + 45902) = 59049 * k + 22951 := by
    unfold C
    simp [show (118098 * k + 45902) % 2 = 0 by omega]
    omega
  have hIter : iterate (65536 * k + 25471) 26 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (65536 * k + 25471)))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26]
  · omega

end CollatzM16ShardI
