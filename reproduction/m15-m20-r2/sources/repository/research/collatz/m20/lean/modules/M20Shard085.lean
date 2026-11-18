import Mathlib.Data.Nat.Prime.Basic

namespace CollatzM20Shard085

def C (n : Nat) : Nat := if n % 2 = 0 then n / 2 else 3 * n + 1

def iterate (n t : Nat) : Nat := Nat.rec n (fun _ previous => C previous) t

theorem descent_mod1048576_654587 : ∀ k : Nat,
    iterate (1048576 * k + 654587) 32 = 531441 * k + 331760 ∧
      531441 * k + 331760 < 1048576 * k + 654587 := by
  intro k
  have h1 : C (1048576 * k + 654587) = 3145728 * k + 1963762 := by
    unfold C
    simp [show (1048576 * k + 654587) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1963762) = 1572864 * k + 981881 := by
    unfold C
    simp [show (3145728 * k + 1963762) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 981881) = 4718592 * k + 2945644 := by
    unfold C
    simp [show (1572864 * k + 981881) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2945644) = 2359296 * k + 1472822 := by
    unfold C
    simp [show (4718592 * k + 2945644) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1472822) = 1179648 * k + 736411 := by
    unfold C
    simp [show (2359296 * k + 1472822) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 736411) = 3538944 * k + 2209234 := by
    unfold C
    simp [show (1179648 * k + 736411) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 2209234) = 1769472 * k + 1104617 := by
    unfold C
    simp [show (3538944 * k + 2209234) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1104617) = 5308416 * k + 3313852 := by
    unfold C
    simp [show (1769472 * k + 1104617) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 3313852) = 2654208 * k + 1656926 := by
    unfold C
    simp [show (5308416 * k + 3313852) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1656926) = 1327104 * k + 828463 := by
    unfold C
    simp [show (2654208 * k + 1656926) % 2 = 0 by omega]
    omega
  have h11 : C (1327104 * k + 828463) = 3981312 * k + 2485390 := by
    unfold C
    simp [show (1327104 * k + 828463) % 2 ≠ 0 by omega]
    omega
  have h12 : C (3981312 * k + 2485390) = 1990656 * k + 1242695 := by
    unfold C
    simp [show (3981312 * k + 2485390) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 1242695) = 5971968 * k + 3728086 := by
    unfold C
    simp [show (1990656 * k + 1242695) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 3728086) = 2985984 * k + 1864043 := by
    unfold C
    simp [show (5971968 * k + 3728086) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1864043) = 8957952 * k + 5592130 := by
    unfold C
    simp [show (2985984 * k + 1864043) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 5592130) = 4478976 * k + 2796065 := by
    unfold C
    simp [show (8957952 * k + 5592130) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 2796065) = 13436928 * k + 8388196 := by
    unfold C
    simp [show (4478976 * k + 2796065) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 8388196) = 6718464 * k + 4194098 := by
    unfold C
    simp [show (13436928 * k + 8388196) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 4194098) = 3359232 * k + 2097049 := by
    unfold C
    simp [show (6718464 * k + 4194098) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 2097049) = 10077696 * k + 6291148 := by
    unfold C
    simp [show (3359232 * k + 2097049) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 6291148) = 5038848 * k + 3145574 := by
    unfold C
    simp [show (10077696 * k + 6291148) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 3145574) = 2519424 * k + 1572787 := by
    unfold C
    simp [show (5038848 * k + 3145574) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1572787) = 7558272 * k + 4718362 := by
    unfold C
    simp [show (2519424 * k + 1572787) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 4718362) = 3779136 * k + 2359181 := by
    unfold C
    simp [show (7558272 * k + 4718362) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 2359181) = 11337408 * k + 7077544 := by
    unfold C
    simp [show (3779136 * k + 2359181) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 7077544) = 5668704 * k + 3538772 := by
    unfold C
    simp [show (11337408 * k + 7077544) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 3538772) = 2834352 * k + 1769386 := by
    unfold C
    simp [show (5668704 * k + 3538772) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1769386) = 1417176 * k + 884693 := by
    unfold C
    simp [show (2834352 * k + 1769386) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 884693) = 4251528 * k + 2654080 := by
    unfold C
    simp [show (1417176 * k + 884693) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 2654080) = 2125764 * k + 1327040 := by
    unfold C
    simp [show (4251528 * k + 2654080) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1327040) = 1062882 * k + 663520 := by
    unfold C
    simp [show (2125764 * k + 1327040) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 663520) = 531441 * k + 331760 := by
    unfold C
    simp [show (1062882 * k + 663520) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 654587) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 654587)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_654895 : ∀ k : Nat,
    iterate (1048576 * k + 654895) 32 = 531441 * k + 331916 ∧
      531441 * k + 331916 < 1048576 * k + 654895 := by
  intro k
  have h1 : C (1048576 * k + 654895) = 3145728 * k + 1964686 := by
    unfold C
    simp [show (1048576 * k + 654895) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1964686) = 1572864 * k + 982343 := by
    unfold C
    simp [show (3145728 * k + 1964686) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 982343) = 4718592 * k + 2947030 := by
    unfold C
    simp [show (1572864 * k + 982343) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2947030) = 2359296 * k + 1473515 := by
    unfold C
    simp [show (4718592 * k + 2947030) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1473515) = 7077888 * k + 4420546 := by
    unfold C
    simp [show (2359296 * k + 1473515) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 4420546) = 3538944 * k + 2210273 := by
    unfold C
    simp [show (7077888 * k + 4420546) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2210273) = 10616832 * k + 6630820 := by
    unfold C
    simp [show (3538944 * k + 2210273) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 6630820) = 5308416 * k + 3315410 := by
    unfold C
    simp [show (10616832 * k + 6630820) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 3315410) = 2654208 * k + 1657705 := by
    unfold C
    simp [show (5308416 * k + 3315410) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1657705) = 7962624 * k + 4973116 := by
    unfold C
    simp [show (2654208 * k + 1657705) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 4973116) = 3981312 * k + 2486558 := by
    unfold C
    simp [show (7962624 * k + 4973116) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 2486558) = 1990656 * k + 1243279 := by
    unfold C
    simp [show (3981312 * k + 2486558) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 1243279) = 5971968 * k + 3729838 := by
    unfold C
    simp [show (1990656 * k + 1243279) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 3729838) = 2985984 * k + 1864919 := by
    unfold C
    simp [show (5971968 * k + 3729838) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1864919) = 8957952 * k + 5594758 := by
    unfold C
    simp [show (2985984 * k + 1864919) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 5594758) = 4478976 * k + 2797379 := by
    unfold C
    simp [show (8957952 * k + 5594758) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 2797379) = 13436928 * k + 8392138 := by
    unfold C
    simp [show (4478976 * k + 2797379) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 8392138) = 6718464 * k + 4196069 := by
    unfold C
    simp [show (13436928 * k + 8392138) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 4196069) = 20155392 * k + 12588208 := by
    unfold C
    simp [show (6718464 * k + 4196069) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 12588208) = 10077696 * k + 6294104 := by
    unfold C
    simp [show (20155392 * k + 12588208) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 6294104) = 5038848 * k + 3147052 := by
    unfold C
    simp [show (10077696 * k + 6294104) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 3147052) = 2519424 * k + 1573526 := by
    unfold C
    simp [show (5038848 * k + 3147052) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1573526) = 1259712 * k + 786763 := by
    unfold C
    simp [show (2519424 * k + 1573526) % 2 = 0 by omega]
    omega
  have h24 : C (1259712 * k + 786763) = 3779136 * k + 2360290 := by
    unfold C
    simp [show (1259712 * k + 786763) % 2 ≠ 0 by omega]
    omega
  have h25 : C (3779136 * k + 2360290) = 1889568 * k + 1180145 := by
    unfold C
    simp [show (3779136 * k + 2360290) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1180145) = 5668704 * k + 3540436 := by
    unfold C
    simp [show (1889568 * k + 1180145) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 3540436) = 2834352 * k + 1770218 := by
    unfold C
    simp [show (5668704 * k + 3540436) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1770218) = 1417176 * k + 885109 := by
    unfold C
    simp [show (2834352 * k + 1770218) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 885109) = 4251528 * k + 2655328 := by
    unfold C
    simp [show (1417176 * k + 885109) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 2655328) = 2125764 * k + 1327664 := by
    unfold C
    simp [show (4251528 * k + 2655328) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1327664) = 1062882 * k + 663832 := by
    unfold C
    simp [show (2125764 * k + 1327664) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 663832) = 531441 * k + 331916 := by
    unfold C
    simp [show (1062882 * k + 663832) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 654895) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 654895)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_655343 : ∀ k : Nat,
    iterate (1048576 * k + 655343) 32 = 531441 * k + 332143 ∧
      531441 * k + 332143 < 1048576 * k + 655343 := by
  intro k
  have h1 : C (1048576 * k + 655343) = 3145728 * k + 1966030 := by
    unfold C
    simp [show (1048576 * k + 655343) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1966030) = 1572864 * k + 983015 := by
    unfold C
    simp [show (3145728 * k + 1966030) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 983015) = 4718592 * k + 2949046 := by
    unfold C
    simp [show (1572864 * k + 983015) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2949046) = 2359296 * k + 1474523 := by
    unfold C
    simp [show (4718592 * k + 2949046) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1474523) = 7077888 * k + 4423570 := by
    unfold C
    simp [show (2359296 * k + 1474523) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 4423570) = 3538944 * k + 2211785 := by
    unfold C
    simp [show (7077888 * k + 4423570) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2211785) = 10616832 * k + 6635356 := by
    unfold C
    simp [show (3538944 * k + 2211785) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 6635356) = 5308416 * k + 3317678 := by
    unfold C
    simp [show (10616832 * k + 6635356) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 3317678) = 2654208 * k + 1658839 := by
    unfold C
    simp [show (5308416 * k + 3317678) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1658839) = 7962624 * k + 4976518 := by
    unfold C
    simp [show (2654208 * k + 1658839) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 4976518) = 3981312 * k + 2488259 := by
    unfold C
    simp [show (7962624 * k + 4976518) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 2488259) = 11943936 * k + 7464778 := by
    unfold C
    simp [show (3981312 * k + 2488259) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 7464778) = 5971968 * k + 3732389 := by
    unfold C
    simp [show (11943936 * k + 7464778) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 3732389) = 17915904 * k + 11197168 := by
    unfold C
    simp [show (5971968 * k + 3732389) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 11197168) = 8957952 * k + 5598584 := by
    unfold C
    simp [show (17915904 * k + 11197168) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 5598584) = 4478976 * k + 2799292 := by
    unfold C
    simp [show (8957952 * k + 5598584) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 2799292) = 2239488 * k + 1399646 := by
    unfold C
    simp [show (4478976 * k + 2799292) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 1399646) = 1119744 * k + 699823 := by
    unfold C
    simp [show (2239488 * k + 1399646) % 2 = 0 by omega]
    omega
  have h19 : C (1119744 * k + 699823) = 3359232 * k + 2099470 := by
    unfold C
    simp [show (1119744 * k + 699823) % 2 ≠ 0 by omega]
    omega
  have h20 : C (3359232 * k + 2099470) = 1679616 * k + 1049735 := by
    unfold C
    simp [show (3359232 * k + 2099470) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 1049735) = 5038848 * k + 3149206 := by
    unfold C
    simp [show (1679616 * k + 1049735) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 3149206) = 2519424 * k + 1574603 := by
    unfold C
    simp [show (5038848 * k + 3149206) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1574603) = 7558272 * k + 4723810 := by
    unfold C
    simp [show (2519424 * k + 1574603) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 4723810) = 3779136 * k + 2361905 := by
    unfold C
    simp [show (7558272 * k + 4723810) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 2361905) = 11337408 * k + 7085716 := by
    unfold C
    simp [show (3779136 * k + 2361905) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 7085716) = 5668704 * k + 3542858 := by
    unfold C
    simp [show (11337408 * k + 7085716) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 3542858) = 2834352 * k + 1771429 := by
    unfold C
    simp [show (5668704 * k + 3542858) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1771429) = 8503056 * k + 5314288 := by
    unfold C
    simp [show (2834352 * k + 1771429) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 5314288) = 4251528 * k + 2657144 := by
    unfold C
    simp [show (8503056 * k + 5314288) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 2657144) = 2125764 * k + 1328572 := by
    unfold C
    simp [show (4251528 * k + 2657144) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1328572) = 1062882 * k + 664286 := by
    unfold C
    simp [show (2125764 * k + 1328572) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 664286) = 531441 * k + 332143 := by
    unfold C
    simp [show (1062882 * k + 664286) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 655343) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 655343)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_656103 : ∀ k : Nat,
    iterate (1048576 * k + 656103) 32 = 531441 * k + 332528 ∧
      531441 * k + 332528 < 1048576 * k + 656103 := by
  intro k
  have h1 : C (1048576 * k + 656103) = 3145728 * k + 1968310 := by
    unfold C
    simp [show (1048576 * k + 656103) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1968310) = 1572864 * k + 984155 := by
    unfold C
    simp [show (3145728 * k + 1968310) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 984155) = 4718592 * k + 2952466 := by
    unfold C
    simp [show (1572864 * k + 984155) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2952466) = 2359296 * k + 1476233 := by
    unfold C
    simp [show (4718592 * k + 2952466) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1476233) = 7077888 * k + 4428700 := by
    unfold C
    simp [show (2359296 * k + 1476233) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 4428700) = 3538944 * k + 2214350 := by
    unfold C
    simp [show (7077888 * k + 4428700) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2214350) = 1769472 * k + 1107175 := by
    unfold C
    simp [show (3538944 * k + 2214350) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1107175) = 5308416 * k + 3321526 := by
    unfold C
    simp [show (1769472 * k + 1107175) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 3321526) = 2654208 * k + 1660763 := by
    unfold C
    simp [show (5308416 * k + 3321526) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1660763) = 7962624 * k + 4982290 := by
    unfold C
    simp [show (2654208 * k + 1660763) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 4982290) = 3981312 * k + 2491145 := by
    unfold C
    simp [show (7962624 * k + 4982290) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 2491145) = 11943936 * k + 7473436 := by
    unfold C
    simp [show (3981312 * k + 2491145) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 7473436) = 5971968 * k + 3736718 := by
    unfold C
    simp [show (11943936 * k + 7473436) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 3736718) = 2985984 * k + 1868359 := by
    unfold C
    simp [show (5971968 * k + 3736718) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1868359) = 8957952 * k + 5605078 := by
    unfold C
    simp [show (2985984 * k + 1868359) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 5605078) = 4478976 * k + 2802539 := by
    unfold C
    simp [show (8957952 * k + 5605078) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 2802539) = 13436928 * k + 8407618 := by
    unfold C
    simp [show (4478976 * k + 2802539) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 8407618) = 6718464 * k + 4203809 := by
    unfold C
    simp [show (13436928 * k + 8407618) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 4203809) = 20155392 * k + 12611428 := by
    unfold C
    simp [show (6718464 * k + 4203809) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 12611428) = 10077696 * k + 6305714 := by
    unfold C
    simp [show (20155392 * k + 12611428) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 6305714) = 5038848 * k + 3152857 := by
    unfold C
    simp [show (10077696 * k + 6305714) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 3152857) = 15116544 * k + 9458572 := by
    unfold C
    simp [show (5038848 * k + 3152857) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 9458572) = 7558272 * k + 4729286 := by
    unfold C
    simp [show (15116544 * k + 9458572) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 4729286) = 3779136 * k + 2364643 := by
    unfold C
    simp [show (7558272 * k + 4729286) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 2364643) = 11337408 * k + 7093930 := by
    unfold C
    simp [show (3779136 * k + 2364643) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 7093930) = 5668704 * k + 3546965 := by
    unfold C
    simp [show (11337408 * k + 7093930) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 3546965) = 17006112 * k + 10640896 := by
    unfold C
    simp [show (5668704 * k + 3546965) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 10640896) = 8503056 * k + 5320448 := by
    unfold C
    simp [show (17006112 * k + 10640896) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 5320448) = 4251528 * k + 2660224 := by
    unfold C
    simp [show (8503056 * k + 5320448) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 2660224) = 2125764 * k + 1330112 := by
    unfold C
    simp [show (4251528 * k + 2660224) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1330112) = 1062882 * k + 665056 := by
    unfold C
    simp [show (2125764 * k + 1330112) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 665056) = 531441 * k + 332528 := by
    unfold C
    simp [show (1062882 * k + 665056) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 656103) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 656103)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_656255 : ∀ k : Nat,
    iterate (1048576 * k + 656255) 32 = 531441 * k + 332605 ∧
      531441 * k + 332605 < 1048576 * k + 656255 := by
  intro k
  have h1 : C (1048576 * k + 656255) = 3145728 * k + 1968766 := by
    unfold C
    simp [show (1048576 * k + 656255) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1968766) = 1572864 * k + 984383 := by
    unfold C
    simp [show (3145728 * k + 1968766) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 984383) = 4718592 * k + 2953150 := by
    unfold C
    simp [show (1572864 * k + 984383) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2953150) = 2359296 * k + 1476575 := by
    unfold C
    simp [show (4718592 * k + 2953150) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1476575) = 7077888 * k + 4429726 := by
    unfold C
    simp [show (2359296 * k + 1476575) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 4429726) = 3538944 * k + 2214863 := by
    unfold C
    simp [show (7077888 * k + 4429726) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2214863) = 10616832 * k + 6644590 := by
    unfold C
    simp [show (3538944 * k + 2214863) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 6644590) = 5308416 * k + 3322295 := by
    unfold C
    simp [show (10616832 * k + 6644590) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 3322295) = 15925248 * k + 9966886 := by
    unfold C
    simp [show (5308416 * k + 3322295) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 9966886) = 7962624 * k + 4983443 := by
    unfold C
    simp [show (15925248 * k + 9966886) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 4983443) = 23887872 * k + 14950330 := by
    unfold C
    simp [show (7962624 * k + 4983443) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 14950330) = 11943936 * k + 7475165 := by
    unfold C
    simp [show (23887872 * k + 14950330) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 7475165) = 35831808 * k + 22425496 := by
    unfold C
    simp [show (11943936 * k + 7475165) % 2 ≠ 0 by omega]
    omega
  have h14 : C (35831808 * k + 22425496) = 17915904 * k + 11212748 := by
    unfold C
    simp [show (35831808 * k + 22425496) % 2 = 0 by omega]
    omega
  have h15 : C (17915904 * k + 11212748) = 8957952 * k + 5606374 := by
    unfold C
    simp [show (17915904 * k + 11212748) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 5606374) = 4478976 * k + 2803187 := by
    unfold C
    simp [show (8957952 * k + 5606374) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 2803187) = 13436928 * k + 8409562 := by
    unfold C
    simp [show (4478976 * k + 2803187) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 8409562) = 6718464 * k + 4204781 := by
    unfold C
    simp [show (13436928 * k + 8409562) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 4204781) = 20155392 * k + 12614344 := by
    unfold C
    simp [show (6718464 * k + 4204781) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 12614344) = 10077696 * k + 6307172 := by
    unfold C
    simp [show (20155392 * k + 12614344) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 6307172) = 5038848 * k + 3153586 := by
    unfold C
    simp [show (10077696 * k + 6307172) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 3153586) = 2519424 * k + 1576793 := by
    unfold C
    simp [show (5038848 * k + 3153586) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1576793) = 7558272 * k + 4730380 := by
    unfold C
    simp [show (2519424 * k + 1576793) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 4730380) = 3779136 * k + 2365190 := by
    unfold C
    simp [show (7558272 * k + 4730380) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 2365190) = 1889568 * k + 1182595 := by
    unfold C
    simp [show (3779136 * k + 2365190) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1182595) = 5668704 * k + 3547786 := by
    unfold C
    simp [show (1889568 * k + 1182595) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 3547786) = 2834352 * k + 1773893 := by
    unfold C
    simp [show (5668704 * k + 3547786) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1773893) = 8503056 * k + 5321680 := by
    unfold C
    simp [show (2834352 * k + 1773893) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 5321680) = 4251528 * k + 2660840 := by
    unfold C
    simp [show (8503056 * k + 5321680) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 2660840) = 2125764 * k + 1330420 := by
    unfold C
    simp [show (4251528 * k + 2660840) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1330420) = 1062882 * k + 665210 := by
    unfold C
    simp [show (2125764 * k + 1330420) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 665210) = 531441 * k + 332605 := by
    unfold C
    simp [show (1062882 * k + 665210) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 656255) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 656255)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_657151 : ∀ k : Nat,
    iterate (1048576 * k + 657151) 32 = 531441 * k + 333059 ∧
      531441 * k + 333059 < 1048576 * k + 657151 := by
  intro k
  have h1 : C (1048576 * k + 657151) = 3145728 * k + 1971454 := by
    unfold C
    simp [show (1048576 * k + 657151) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1971454) = 1572864 * k + 985727 := by
    unfold C
    simp [show (3145728 * k + 1971454) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 985727) = 4718592 * k + 2957182 := by
    unfold C
    simp [show (1572864 * k + 985727) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2957182) = 2359296 * k + 1478591 := by
    unfold C
    simp [show (4718592 * k + 2957182) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1478591) = 7077888 * k + 4435774 := by
    unfold C
    simp [show (2359296 * k + 1478591) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 4435774) = 3538944 * k + 2217887 := by
    unfold C
    simp [show (7077888 * k + 4435774) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2217887) = 10616832 * k + 6653662 := by
    unfold C
    simp [show (3538944 * k + 2217887) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 6653662) = 5308416 * k + 3326831 := by
    unfold C
    simp [show (10616832 * k + 6653662) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 3326831) = 15925248 * k + 9980494 := by
    unfold C
    simp [show (5308416 * k + 3326831) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 9980494) = 7962624 * k + 4990247 := by
    unfold C
    simp [show (15925248 * k + 9980494) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 4990247) = 23887872 * k + 14970742 := by
    unfold C
    simp [show (7962624 * k + 4990247) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 14970742) = 11943936 * k + 7485371 := by
    unfold C
    simp [show (23887872 * k + 14970742) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 7485371) = 35831808 * k + 22456114 := by
    unfold C
    simp [show (11943936 * k + 7485371) % 2 ≠ 0 by omega]
    omega
  have h14 : C (35831808 * k + 22456114) = 17915904 * k + 11228057 := by
    unfold C
    simp [show (35831808 * k + 22456114) % 2 = 0 by omega]
    omega
  have h15 : C (17915904 * k + 11228057) = 53747712 * k + 33684172 := by
    unfold C
    simp [show (17915904 * k + 11228057) % 2 ≠ 0 by omega]
    omega
  have h16 : C (53747712 * k + 33684172) = 26873856 * k + 16842086 := by
    unfold C
    simp [show (53747712 * k + 33684172) % 2 = 0 by omega]
    omega
  have h17 : C (26873856 * k + 16842086) = 13436928 * k + 8421043 := by
    unfold C
    simp [show (26873856 * k + 16842086) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 8421043) = 40310784 * k + 25263130 := by
    unfold C
    simp [show (13436928 * k + 8421043) % 2 ≠ 0 by omega]
    omega
  have h19 : C (40310784 * k + 25263130) = 20155392 * k + 12631565 := by
    unfold C
    simp [show (40310784 * k + 25263130) % 2 = 0 by omega]
    omega
  have h20 : C (20155392 * k + 12631565) = 60466176 * k + 37894696 := by
    unfold C
    simp [show (20155392 * k + 12631565) % 2 ≠ 0 by omega]
    omega
  have h21 : C (60466176 * k + 37894696) = 30233088 * k + 18947348 := by
    unfold C
    simp [show (60466176 * k + 37894696) % 2 = 0 by omega]
    omega
  have h22 : C (30233088 * k + 18947348) = 15116544 * k + 9473674 := by
    unfold C
    simp [show (30233088 * k + 18947348) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 9473674) = 7558272 * k + 4736837 := by
    unfold C
    simp [show (15116544 * k + 9473674) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 4736837) = 22674816 * k + 14210512 := by
    unfold C
    simp [show (7558272 * k + 4736837) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 14210512) = 11337408 * k + 7105256 := by
    unfold C
    simp [show (22674816 * k + 14210512) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 7105256) = 5668704 * k + 3552628 := by
    unfold C
    simp [show (11337408 * k + 7105256) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 3552628) = 2834352 * k + 1776314 := by
    unfold C
    simp [show (5668704 * k + 3552628) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1776314) = 1417176 * k + 888157 := by
    unfold C
    simp [show (2834352 * k + 1776314) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 888157) = 4251528 * k + 2664472 := by
    unfold C
    simp [show (1417176 * k + 888157) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 2664472) = 2125764 * k + 1332236 := by
    unfold C
    simp [show (4251528 * k + 2664472) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1332236) = 1062882 * k + 666118 := by
    unfold C
    simp [show (2125764 * k + 1332236) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 666118) = 531441 * k + 333059 := by
    unfold C
    simp [show (1062882 * k + 666118) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 657151) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 657151)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_657819 : ∀ k : Nat,
    iterate (1048576 * k + 657819) 32 = 531441 * k + 333398 ∧
      531441 * k + 333398 < 1048576 * k + 657819 := by
  intro k
  have h1 : C (1048576 * k + 657819) = 3145728 * k + 1973458 := by
    unfold C
    simp [show (1048576 * k + 657819) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1973458) = 1572864 * k + 986729 := by
    unfold C
    simp [show (3145728 * k + 1973458) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 986729) = 4718592 * k + 2960188 := by
    unfold C
    simp [show (1572864 * k + 986729) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2960188) = 2359296 * k + 1480094 := by
    unfold C
    simp [show (4718592 * k + 2960188) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1480094) = 1179648 * k + 740047 := by
    unfold C
    simp [show (2359296 * k + 1480094) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 740047) = 3538944 * k + 2220142 := by
    unfold C
    simp [show (1179648 * k + 740047) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 2220142) = 1769472 * k + 1110071 := by
    unfold C
    simp [show (3538944 * k + 2220142) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1110071) = 5308416 * k + 3330214 := by
    unfold C
    simp [show (1769472 * k + 1110071) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 3330214) = 2654208 * k + 1665107 := by
    unfold C
    simp [show (5308416 * k + 3330214) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1665107) = 7962624 * k + 4995322 := by
    unfold C
    simp [show (2654208 * k + 1665107) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 4995322) = 3981312 * k + 2497661 := by
    unfold C
    simp [show (7962624 * k + 4995322) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 2497661) = 11943936 * k + 7492984 := by
    unfold C
    simp [show (3981312 * k + 2497661) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 7492984) = 5971968 * k + 3746492 := by
    unfold C
    simp [show (11943936 * k + 7492984) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 3746492) = 2985984 * k + 1873246 := by
    unfold C
    simp [show (5971968 * k + 3746492) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1873246) = 1492992 * k + 936623 := by
    unfold C
    simp [show (2985984 * k + 1873246) % 2 = 0 by omega]
    omega
  have h16 : C (1492992 * k + 936623) = 4478976 * k + 2809870 := by
    unfold C
    simp [show (1492992 * k + 936623) % 2 ≠ 0 by omega]
    omega
  have h17 : C (4478976 * k + 2809870) = 2239488 * k + 1404935 := by
    unfold C
    simp [show (4478976 * k + 2809870) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 1404935) = 6718464 * k + 4214806 := by
    unfold C
    simp [show (2239488 * k + 1404935) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 4214806) = 3359232 * k + 2107403 := by
    unfold C
    simp [show (6718464 * k + 4214806) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 2107403) = 10077696 * k + 6322210 := by
    unfold C
    simp [show (3359232 * k + 2107403) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 6322210) = 5038848 * k + 3161105 := by
    unfold C
    simp [show (10077696 * k + 6322210) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 3161105) = 15116544 * k + 9483316 := by
    unfold C
    simp [show (5038848 * k + 3161105) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 9483316) = 7558272 * k + 4741658 := by
    unfold C
    simp [show (15116544 * k + 9483316) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 4741658) = 3779136 * k + 2370829 := by
    unfold C
    simp [show (7558272 * k + 4741658) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 2370829) = 11337408 * k + 7112488 := by
    unfold C
    simp [show (3779136 * k + 2370829) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 7112488) = 5668704 * k + 3556244 := by
    unfold C
    simp [show (11337408 * k + 7112488) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 3556244) = 2834352 * k + 1778122 := by
    unfold C
    simp [show (5668704 * k + 3556244) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1778122) = 1417176 * k + 889061 := by
    unfold C
    simp [show (2834352 * k + 1778122) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 889061) = 4251528 * k + 2667184 := by
    unfold C
    simp [show (1417176 * k + 889061) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 2667184) = 2125764 * k + 1333592 := by
    unfold C
    simp [show (4251528 * k + 2667184) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1333592) = 1062882 * k + 666796 := by
    unfold C
    simp [show (2125764 * k + 1333592) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 666796) = 531441 * k + 333398 := by
    unfold C
    simp [show (1062882 * k + 666796) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 657819) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 657819)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_659291 : ∀ k : Nat,
    iterate (1048576 * k + 659291) 32 = 531441 * k + 334144 ∧
      531441 * k + 334144 < 1048576 * k + 659291 := by
  intro k
  have h1 : C (1048576 * k + 659291) = 3145728 * k + 1977874 := by
    unfold C
    simp [show (1048576 * k + 659291) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1977874) = 1572864 * k + 988937 := by
    unfold C
    simp [show (3145728 * k + 1977874) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 988937) = 4718592 * k + 2966812 := by
    unfold C
    simp [show (1572864 * k + 988937) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2966812) = 2359296 * k + 1483406 := by
    unfold C
    simp [show (4718592 * k + 2966812) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1483406) = 1179648 * k + 741703 := by
    unfold C
    simp [show (2359296 * k + 1483406) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 741703) = 3538944 * k + 2225110 := by
    unfold C
    simp [show (1179648 * k + 741703) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 2225110) = 1769472 * k + 1112555 := by
    unfold C
    simp [show (3538944 * k + 2225110) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1112555) = 5308416 * k + 3337666 := by
    unfold C
    simp [show (1769472 * k + 1112555) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 3337666) = 2654208 * k + 1668833 := by
    unfold C
    simp [show (5308416 * k + 3337666) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1668833) = 7962624 * k + 5006500 := by
    unfold C
    simp [show (2654208 * k + 1668833) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 5006500) = 3981312 * k + 2503250 := by
    unfold C
    simp [show (7962624 * k + 5006500) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 2503250) = 1990656 * k + 1251625 := by
    unfold C
    simp [show (3981312 * k + 2503250) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 1251625) = 5971968 * k + 3754876 := by
    unfold C
    simp [show (1990656 * k + 1251625) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 3754876) = 2985984 * k + 1877438 := by
    unfold C
    simp [show (5971968 * k + 3754876) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1877438) = 1492992 * k + 938719 := by
    unfold C
    simp [show (2985984 * k + 1877438) % 2 = 0 by omega]
    omega
  have h16 : C (1492992 * k + 938719) = 4478976 * k + 2816158 := by
    unfold C
    simp [show (1492992 * k + 938719) % 2 ≠ 0 by omega]
    omega
  have h17 : C (4478976 * k + 2816158) = 2239488 * k + 1408079 := by
    unfold C
    simp [show (4478976 * k + 2816158) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 1408079) = 6718464 * k + 4224238 := by
    unfold C
    simp [show (2239488 * k + 1408079) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 4224238) = 3359232 * k + 2112119 := by
    unfold C
    simp [show (6718464 * k + 4224238) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 2112119) = 10077696 * k + 6336358 := by
    unfold C
    simp [show (3359232 * k + 2112119) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 6336358) = 5038848 * k + 3168179 := by
    unfold C
    simp [show (10077696 * k + 6336358) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 3168179) = 15116544 * k + 9504538 := by
    unfold C
    simp [show (5038848 * k + 3168179) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 9504538) = 7558272 * k + 4752269 := by
    unfold C
    simp [show (15116544 * k + 9504538) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 4752269) = 22674816 * k + 14256808 := by
    unfold C
    simp [show (7558272 * k + 4752269) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 14256808) = 11337408 * k + 7128404 := by
    unfold C
    simp [show (22674816 * k + 14256808) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 7128404) = 5668704 * k + 3564202 := by
    unfold C
    simp [show (11337408 * k + 7128404) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 3564202) = 2834352 * k + 1782101 := by
    unfold C
    simp [show (5668704 * k + 3564202) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1782101) = 8503056 * k + 5346304 := by
    unfold C
    simp [show (2834352 * k + 1782101) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 5346304) = 4251528 * k + 2673152 := by
    unfold C
    simp [show (8503056 * k + 5346304) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 2673152) = 2125764 * k + 1336576 := by
    unfold C
    simp [show (4251528 * k + 2673152) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1336576) = 1062882 * k + 668288 := by
    unfold C
    simp [show (2125764 * k + 1336576) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 668288) = 531441 * k + 334144 := by
    unfold C
    simp [show (1062882 * k + 668288) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 659291) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 659291)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_659623 : ∀ k : Nat,
    iterate (1048576 * k + 659623) 32 = 531441 * k + 334312 ∧
      531441 * k + 334312 < 1048576 * k + 659623 := by
  intro k
  have h1 : C (1048576 * k + 659623) = 3145728 * k + 1978870 := by
    unfold C
    simp [show (1048576 * k + 659623) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1978870) = 1572864 * k + 989435 := by
    unfold C
    simp [show (3145728 * k + 1978870) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 989435) = 4718592 * k + 2968306 := by
    unfold C
    simp [show (1572864 * k + 989435) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2968306) = 2359296 * k + 1484153 := by
    unfold C
    simp [show (4718592 * k + 2968306) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1484153) = 7077888 * k + 4452460 := by
    unfold C
    simp [show (2359296 * k + 1484153) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 4452460) = 3538944 * k + 2226230 := by
    unfold C
    simp [show (7077888 * k + 4452460) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2226230) = 1769472 * k + 1113115 := by
    unfold C
    simp [show (3538944 * k + 2226230) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1113115) = 5308416 * k + 3339346 := by
    unfold C
    simp [show (1769472 * k + 1113115) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 3339346) = 2654208 * k + 1669673 := by
    unfold C
    simp [show (5308416 * k + 3339346) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1669673) = 7962624 * k + 5009020 := by
    unfold C
    simp [show (2654208 * k + 1669673) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 5009020) = 3981312 * k + 2504510 := by
    unfold C
    simp [show (7962624 * k + 5009020) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 2504510) = 1990656 * k + 1252255 := by
    unfold C
    simp [show (3981312 * k + 2504510) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 1252255) = 5971968 * k + 3756766 := by
    unfold C
    simp [show (1990656 * k + 1252255) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 3756766) = 2985984 * k + 1878383 := by
    unfold C
    simp [show (5971968 * k + 3756766) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1878383) = 8957952 * k + 5635150 := by
    unfold C
    simp [show (2985984 * k + 1878383) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 5635150) = 4478976 * k + 2817575 := by
    unfold C
    simp [show (8957952 * k + 5635150) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 2817575) = 13436928 * k + 8452726 := by
    unfold C
    simp [show (4478976 * k + 2817575) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 8452726) = 6718464 * k + 4226363 := by
    unfold C
    simp [show (13436928 * k + 8452726) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 4226363) = 20155392 * k + 12679090 := by
    unfold C
    simp [show (6718464 * k + 4226363) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 12679090) = 10077696 * k + 6339545 := by
    unfold C
    simp [show (20155392 * k + 12679090) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 6339545) = 30233088 * k + 19018636 := by
    unfold C
    simp [show (10077696 * k + 6339545) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 19018636) = 15116544 * k + 9509318 := by
    unfold C
    simp [show (30233088 * k + 19018636) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 9509318) = 7558272 * k + 4754659 := by
    unfold C
    simp [show (15116544 * k + 9509318) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 4754659) = 22674816 * k + 14263978 := by
    unfold C
    simp [show (7558272 * k + 4754659) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 14263978) = 11337408 * k + 7131989 := by
    unfold C
    simp [show (22674816 * k + 14263978) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 7131989) = 34012224 * k + 21395968 := by
    unfold C
    simp [show (11337408 * k + 7131989) % 2 ≠ 0 by omega]
    omega
  have h27 : C (34012224 * k + 21395968) = 17006112 * k + 10697984 := by
    unfold C
    simp [show (34012224 * k + 21395968) % 2 = 0 by omega]
    omega
  have h28 : C (17006112 * k + 10697984) = 8503056 * k + 5348992 := by
    unfold C
    simp [show (17006112 * k + 10697984) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 5348992) = 4251528 * k + 2674496 := by
    unfold C
    simp [show (8503056 * k + 5348992) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 2674496) = 2125764 * k + 1337248 := by
    unfold C
    simp [show (4251528 * k + 2674496) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1337248) = 1062882 * k + 668624 := by
    unfold C
    simp [show (2125764 * k + 1337248) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 668624) = 531441 * k + 334312 := by
    unfold C
    simp [show (1062882 * k + 668624) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 659623) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 659623)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_659903 : ∀ k : Nat,
    iterate (1048576 * k + 659903) 32 = 531441 * k + 334454 ∧
      531441 * k + 334454 < 1048576 * k + 659903 := by
  intro k
  have h1 : C (1048576 * k + 659903) = 3145728 * k + 1979710 := by
    unfold C
    simp [show (1048576 * k + 659903) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1979710) = 1572864 * k + 989855 := by
    unfold C
    simp [show (3145728 * k + 1979710) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 989855) = 4718592 * k + 2969566 := by
    unfold C
    simp [show (1572864 * k + 989855) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2969566) = 2359296 * k + 1484783 := by
    unfold C
    simp [show (4718592 * k + 2969566) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1484783) = 7077888 * k + 4454350 := by
    unfold C
    simp [show (2359296 * k + 1484783) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 4454350) = 3538944 * k + 2227175 := by
    unfold C
    simp [show (7077888 * k + 4454350) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2227175) = 10616832 * k + 6681526 := by
    unfold C
    simp [show (3538944 * k + 2227175) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 6681526) = 5308416 * k + 3340763 := by
    unfold C
    simp [show (10616832 * k + 6681526) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 3340763) = 15925248 * k + 10022290 := by
    unfold C
    simp [show (5308416 * k + 3340763) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 10022290) = 7962624 * k + 5011145 := by
    unfold C
    simp [show (15925248 * k + 10022290) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 5011145) = 23887872 * k + 15033436 := by
    unfold C
    simp [show (7962624 * k + 5011145) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 15033436) = 11943936 * k + 7516718 := by
    unfold C
    simp [show (23887872 * k + 15033436) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 7516718) = 5971968 * k + 3758359 := by
    unfold C
    simp [show (11943936 * k + 7516718) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 3758359) = 17915904 * k + 11275078 := by
    unfold C
    simp [show (5971968 * k + 3758359) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 11275078) = 8957952 * k + 5637539 := by
    unfold C
    simp [show (17915904 * k + 11275078) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 5637539) = 26873856 * k + 16912618 := by
    unfold C
    simp [show (8957952 * k + 5637539) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 16912618) = 13436928 * k + 8456309 := by
    unfold C
    simp [show (26873856 * k + 16912618) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 8456309) = 40310784 * k + 25368928 := by
    unfold C
    simp [show (13436928 * k + 8456309) % 2 ≠ 0 by omega]
    omega
  have h19 : C (40310784 * k + 25368928) = 20155392 * k + 12684464 := by
    unfold C
    simp [show (40310784 * k + 25368928) % 2 = 0 by omega]
    omega
  have h20 : C (20155392 * k + 12684464) = 10077696 * k + 6342232 := by
    unfold C
    simp [show (20155392 * k + 12684464) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 6342232) = 5038848 * k + 3171116 := by
    unfold C
    simp [show (10077696 * k + 6342232) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 3171116) = 2519424 * k + 1585558 := by
    unfold C
    simp [show (5038848 * k + 3171116) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1585558) = 1259712 * k + 792779 := by
    unfold C
    simp [show (2519424 * k + 1585558) % 2 = 0 by omega]
    omega
  have h24 : C (1259712 * k + 792779) = 3779136 * k + 2378338 := by
    unfold C
    simp [show (1259712 * k + 792779) % 2 ≠ 0 by omega]
    omega
  have h25 : C (3779136 * k + 2378338) = 1889568 * k + 1189169 := by
    unfold C
    simp [show (3779136 * k + 2378338) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1189169) = 5668704 * k + 3567508 := by
    unfold C
    simp [show (1889568 * k + 1189169) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 3567508) = 2834352 * k + 1783754 := by
    unfold C
    simp [show (5668704 * k + 3567508) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1783754) = 1417176 * k + 891877 := by
    unfold C
    simp [show (2834352 * k + 1783754) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 891877) = 4251528 * k + 2675632 := by
    unfold C
    simp [show (1417176 * k + 891877) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 2675632) = 2125764 * k + 1337816 := by
    unfold C
    simp [show (4251528 * k + 2675632) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1337816) = 1062882 * k + 668908 := by
    unfold C
    simp [show (2125764 * k + 1337816) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 668908) = 531441 * k + 334454 := by
    unfold C
    simp [show (1062882 * k + 668908) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 659903) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 659903)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_660511 : ∀ k : Nat,
    iterate (1048576 * k + 660511) 32 = 531441 * k + 334762 ∧
      531441 * k + 334762 < 1048576 * k + 660511 := by
  intro k
  have h1 : C (1048576 * k + 660511) = 3145728 * k + 1981534 := by
    unfold C
    simp [show (1048576 * k + 660511) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1981534) = 1572864 * k + 990767 := by
    unfold C
    simp [show (3145728 * k + 1981534) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 990767) = 4718592 * k + 2972302 := by
    unfold C
    simp [show (1572864 * k + 990767) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2972302) = 2359296 * k + 1486151 := by
    unfold C
    simp [show (4718592 * k + 2972302) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1486151) = 7077888 * k + 4458454 := by
    unfold C
    simp [show (2359296 * k + 1486151) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 4458454) = 3538944 * k + 2229227 := by
    unfold C
    simp [show (7077888 * k + 4458454) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2229227) = 10616832 * k + 6687682 := by
    unfold C
    simp [show (3538944 * k + 2229227) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 6687682) = 5308416 * k + 3343841 := by
    unfold C
    simp [show (10616832 * k + 6687682) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 3343841) = 15925248 * k + 10031524 := by
    unfold C
    simp [show (5308416 * k + 3343841) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 10031524) = 7962624 * k + 5015762 := by
    unfold C
    simp [show (15925248 * k + 10031524) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 5015762) = 3981312 * k + 2507881 := by
    unfold C
    simp [show (7962624 * k + 5015762) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 2507881) = 11943936 * k + 7523644 := by
    unfold C
    simp [show (3981312 * k + 2507881) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 7523644) = 5971968 * k + 3761822 := by
    unfold C
    simp [show (11943936 * k + 7523644) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 3761822) = 2985984 * k + 1880911 := by
    unfold C
    simp [show (5971968 * k + 3761822) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1880911) = 8957952 * k + 5642734 := by
    unfold C
    simp [show (2985984 * k + 1880911) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 5642734) = 4478976 * k + 2821367 := by
    unfold C
    simp [show (8957952 * k + 5642734) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 2821367) = 13436928 * k + 8464102 := by
    unfold C
    simp [show (4478976 * k + 2821367) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 8464102) = 6718464 * k + 4232051 := by
    unfold C
    simp [show (13436928 * k + 8464102) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 4232051) = 20155392 * k + 12696154 := by
    unfold C
    simp [show (6718464 * k + 4232051) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 12696154) = 10077696 * k + 6348077 := by
    unfold C
    simp [show (20155392 * k + 12696154) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 6348077) = 30233088 * k + 19044232 := by
    unfold C
    simp [show (10077696 * k + 6348077) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 19044232) = 15116544 * k + 9522116 := by
    unfold C
    simp [show (30233088 * k + 19044232) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 9522116) = 7558272 * k + 4761058 := by
    unfold C
    simp [show (15116544 * k + 9522116) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 4761058) = 3779136 * k + 2380529 := by
    unfold C
    simp [show (7558272 * k + 4761058) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 2380529) = 11337408 * k + 7141588 := by
    unfold C
    simp [show (3779136 * k + 2380529) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 7141588) = 5668704 * k + 3570794 := by
    unfold C
    simp [show (11337408 * k + 7141588) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 3570794) = 2834352 * k + 1785397 := by
    unfold C
    simp [show (5668704 * k + 3570794) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1785397) = 8503056 * k + 5356192 := by
    unfold C
    simp [show (2834352 * k + 1785397) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 5356192) = 4251528 * k + 2678096 := by
    unfold C
    simp [show (8503056 * k + 5356192) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 2678096) = 2125764 * k + 1339048 := by
    unfold C
    simp [show (4251528 * k + 2678096) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1339048) = 1062882 * k + 669524 := by
    unfold C
    simp [show (2125764 * k + 1339048) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 669524) = 531441 * k + 334762 := by
    unfold C
    simp [show (1062882 * k + 669524) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 660511) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 660511)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_661199 : ∀ k : Nat,
    iterate (1048576 * k + 661199) 32 = 531441 * k + 335111 ∧
      531441 * k + 335111 < 1048576 * k + 661199 := by
  intro k
  have h1 : C (1048576 * k + 661199) = 3145728 * k + 1983598 := by
    unfold C
    simp [show (1048576 * k + 661199) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1983598) = 1572864 * k + 991799 := by
    unfold C
    simp [show (3145728 * k + 1983598) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 991799) = 4718592 * k + 2975398 := by
    unfold C
    simp [show (1572864 * k + 991799) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2975398) = 2359296 * k + 1487699 := by
    unfold C
    simp [show (4718592 * k + 2975398) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1487699) = 7077888 * k + 4463098 := by
    unfold C
    simp [show (2359296 * k + 1487699) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 4463098) = 3538944 * k + 2231549 := by
    unfold C
    simp [show (7077888 * k + 4463098) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2231549) = 10616832 * k + 6694648 := by
    unfold C
    simp [show (3538944 * k + 2231549) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 6694648) = 5308416 * k + 3347324 := by
    unfold C
    simp [show (10616832 * k + 6694648) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 3347324) = 2654208 * k + 1673662 := by
    unfold C
    simp [show (5308416 * k + 3347324) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1673662) = 1327104 * k + 836831 := by
    unfold C
    simp [show (2654208 * k + 1673662) % 2 = 0 by omega]
    omega
  have h11 : C (1327104 * k + 836831) = 3981312 * k + 2510494 := by
    unfold C
    simp [show (1327104 * k + 836831) % 2 ≠ 0 by omega]
    omega
  have h12 : C (3981312 * k + 2510494) = 1990656 * k + 1255247 := by
    unfold C
    simp [show (3981312 * k + 2510494) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 1255247) = 5971968 * k + 3765742 := by
    unfold C
    simp [show (1990656 * k + 1255247) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 3765742) = 2985984 * k + 1882871 := by
    unfold C
    simp [show (5971968 * k + 3765742) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1882871) = 8957952 * k + 5648614 := by
    unfold C
    simp [show (2985984 * k + 1882871) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 5648614) = 4478976 * k + 2824307 := by
    unfold C
    simp [show (8957952 * k + 5648614) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 2824307) = 13436928 * k + 8472922 := by
    unfold C
    simp [show (4478976 * k + 2824307) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 8472922) = 6718464 * k + 4236461 := by
    unfold C
    simp [show (13436928 * k + 8472922) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 4236461) = 20155392 * k + 12709384 := by
    unfold C
    simp [show (6718464 * k + 4236461) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 12709384) = 10077696 * k + 6354692 := by
    unfold C
    simp [show (20155392 * k + 12709384) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 6354692) = 5038848 * k + 3177346 := by
    unfold C
    simp [show (10077696 * k + 6354692) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 3177346) = 2519424 * k + 1588673 := by
    unfold C
    simp [show (5038848 * k + 3177346) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1588673) = 7558272 * k + 4766020 := by
    unfold C
    simp [show (2519424 * k + 1588673) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 4766020) = 3779136 * k + 2383010 := by
    unfold C
    simp [show (7558272 * k + 4766020) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 2383010) = 1889568 * k + 1191505 := by
    unfold C
    simp [show (3779136 * k + 2383010) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1191505) = 5668704 * k + 3574516 := by
    unfold C
    simp [show (1889568 * k + 1191505) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 3574516) = 2834352 * k + 1787258 := by
    unfold C
    simp [show (5668704 * k + 3574516) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1787258) = 1417176 * k + 893629 := by
    unfold C
    simp [show (2834352 * k + 1787258) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 893629) = 4251528 * k + 2680888 := by
    unfold C
    simp [show (1417176 * k + 893629) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 2680888) = 2125764 * k + 1340444 := by
    unfold C
    simp [show (4251528 * k + 2680888) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1340444) = 1062882 * k + 670222 := by
    unfold C
    simp [show (2125764 * k + 1340444) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 670222) = 531441 * k + 335111 := by
    unfold C
    simp [show (1062882 * k + 670222) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 661199) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 661199)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_661359 : ∀ k : Nat,
    iterate (1048576 * k + 661359) 32 = 531441 * k + 335192 ∧
      531441 * k + 335192 < 1048576 * k + 661359 := by
  intro k
  have h1 : C (1048576 * k + 661359) = 3145728 * k + 1984078 := by
    unfold C
    simp [show (1048576 * k + 661359) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1984078) = 1572864 * k + 992039 := by
    unfold C
    simp [show (3145728 * k + 1984078) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 992039) = 4718592 * k + 2976118 := by
    unfold C
    simp [show (1572864 * k + 992039) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2976118) = 2359296 * k + 1488059 := by
    unfold C
    simp [show (4718592 * k + 2976118) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1488059) = 7077888 * k + 4464178 := by
    unfold C
    simp [show (2359296 * k + 1488059) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 4464178) = 3538944 * k + 2232089 := by
    unfold C
    simp [show (7077888 * k + 4464178) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2232089) = 10616832 * k + 6696268 := by
    unfold C
    simp [show (3538944 * k + 2232089) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 6696268) = 5308416 * k + 3348134 := by
    unfold C
    simp [show (10616832 * k + 6696268) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 3348134) = 2654208 * k + 1674067 := by
    unfold C
    simp [show (5308416 * k + 3348134) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1674067) = 7962624 * k + 5022202 := by
    unfold C
    simp [show (2654208 * k + 1674067) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 5022202) = 3981312 * k + 2511101 := by
    unfold C
    simp [show (7962624 * k + 5022202) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 2511101) = 11943936 * k + 7533304 := by
    unfold C
    simp [show (3981312 * k + 2511101) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 7533304) = 5971968 * k + 3766652 := by
    unfold C
    simp [show (11943936 * k + 7533304) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 3766652) = 2985984 * k + 1883326 := by
    unfold C
    simp [show (5971968 * k + 3766652) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1883326) = 1492992 * k + 941663 := by
    unfold C
    simp [show (2985984 * k + 1883326) % 2 = 0 by omega]
    omega
  have h16 : C (1492992 * k + 941663) = 4478976 * k + 2824990 := by
    unfold C
    simp [show (1492992 * k + 941663) % 2 ≠ 0 by omega]
    omega
  have h17 : C (4478976 * k + 2824990) = 2239488 * k + 1412495 := by
    unfold C
    simp [show (4478976 * k + 2824990) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 1412495) = 6718464 * k + 4237486 := by
    unfold C
    simp [show (2239488 * k + 1412495) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 4237486) = 3359232 * k + 2118743 := by
    unfold C
    simp [show (6718464 * k + 4237486) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 2118743) = 10077696 * k + 6356230 := by
    unfold C
    simp [show (3359232 * k + 2118743) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 6356230) = 5038848 * k + 3178115 := by
    unfold C
    simp [show (10077696 * k + 6356230) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 3178115) = 15116544 * k + 9534346 := by
    unfold C
    simp [show (5038848 * k + 3178115) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 9534346) = 7558272 * k + 4767173 := by
    unfold C
    simp [show (15116544 * k + 9534346) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 4767173) = 22674816 * k + 14301520 := by
    unfold C
    simp [show (7558272 * k + 4767173) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 14301520) = 11337408 * k + 7150760 := by
    unfold C
    simp [show (22674816 * k + 14301520) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 7150760) = 5668704 * k + 3575380 := by
    unfold C
    simp [show (11337408 * k + 7150760) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 3575380) = 2834352 * k + 1787690 := by
    unfold C
    simp [show (5668704 * k + 3575380) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1787690) = 1417176 * k + 893845 := by
    unfold C
    simp [show (2834352 * k + 1787690) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 893845) = 4251528 * k + 2681536 := by
    unfold C
    simp [show (1417176 * k + 893845) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 2681536) = 2125764 * k + 1340768 := by
    unfold C
    simp [show (4251528 * k + 2681536) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1340768) = 1062882 * k + 670384 := by
    unfold C
    simp [show (2125764 * k + 1340768) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 670384) = 531441 * k + 335192 := by
    unfold C
    simp [show (1062882 * k + 670384) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 661359) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 661359)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_662695 : ∀ k : Nat,
    iterate (1048576 * k + 662695) 32 = 531441 * k + 335869 ∧
      531441 * k + 335869 < 1048576 * k + 662695 := by
  intro k
  have h1 : C (1048576 * k + 662695) = 3145728 * k + 1988086 := by
    unfold C
    simp [show (1048576 * k + 662695) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1988086) = 1572864 * k + 994043 := by
    unfold C
    simp [show (3145728 * k + 1988086) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 994043) = 4718592 * k + 2982130 := by
    unfold C
    simp [show (1572864 * k + 994043) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2982130) = 2359296 * k + 1491065 := by
    unfold C
    simp [show (4718592 * k + 2982130) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1491065) = 7077888 * k + 4473196 := by
    unfold C
    simp [show (2359296 * k + 1491065) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 4473196) = 3538944 * k + 2236598 := by
    unfold C
    simp [show (7077888 * k + 4473196) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2236598) = 1769472 * k + 1118299 := by
    unfold C
    simp [show (3538944 * k + 2236598) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1118299) = 5308416 * k + 3354898 := by
    unfold C
    simp [show (1769472 * k + 1118299) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 3354898) = 2654208 * k + 1677449 := by
    unfold C
    simp [show (5308416 * k + 3354898) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1677449) = 7962624 * k + 5032348 := by
    unfold C
    simp [show (2654208 * k + 1677449) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 5032348) = 3981312 * k + 2516174 := by
    unfold C
    simp [show (7962624 * k + 5032348) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 2516174) = 1990656 * k + 1258087 := by
    unfold C
    simp [show (3981312 * k + 2516174) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 1258087) = 5971968 * k + 3774262 := by
    unfold C
    simp [show (1990656 * k + 1258087) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 3774262) = 2985984 * k + 1887131 := by
    unfold C
    simp [show (5971968 * k + 3774262) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1887131) = 8957952 * k + 5661394 := by
    unfold C
    simp [show (2985984 * k + 1887131) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 5661394) = 4478976 * k + 2830697 := by
    unfold C
    simp [show (8957952 * k + 5661394) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 2830697) = 13436928 * k + 8492092 := by
    unfold C
    simp [show (4478976 * k + 2830697) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 8492092) = 6718464 * k + 4246046 := by
    unfold C
    simp [show (13436928 * k + 8492092) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 4246046) = 3359232 * k + 2123023 := by
    unfold C
    simp [show (6718464 * k + 4246046) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 2123023) = 10077696 * k + 6369070 := by
    unfold C
    simp [show (3359232 * k + 2123023) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 6369070) = 5038848 * k + 3184535 := by
    unfold C
    simp [show (10077696 * k + 6369070) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 3184535) = 15116544 * k + 9553606 := by
    unfold C
    simp [show (5038848 * k + 3184535) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 9553606) = 7558272 * k + 4776803 := by
    unfold C
    simp [show (15116544 * k + 9553606) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 4776803) = 22674816 * k + 14330410 := by
    unfold C
    simp [show (7558272 * k + 4776803) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 14330410) = 11337408 * k + 7165205 := by
    unfold C
    simp [show (22674816 * k + 14330410) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 7165205) = 34012224 * k + 21495616 := by
    unfold C
    simp [show (11337408 * k + 7165205) % 2 ≠ 0 by omega]
    omega
  have h27 : C (34012224 * k + 21495616) = 17006112 * k + 10747808 := by
    unfold C
    simp [show (34012224 * k + 21495616) % 2 = 0 by omega]
    omega
  have h28 : C (17006112 * k + 10747808) = 8503056 * k + 5373904 := by
    unfold C
    simp [show (17006112 * k + 10747808) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 5373904) = 4251528 * k + 2686952 := by
    unfold C
    simp [show (8503056 * k + 5373904) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 2686952) = 2125764 * k + 1343476 := by
    unfold C
    simp [show (4251528 * k + 2686952) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1343476) = 1062882 * k + 671738 := by
    unfold C
    simp [show (2125764 * k + 1343476) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 671738) = 531441 * k + 335869 := by
    unfold C
    simp [show (1062882 * k + 671738) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 662695) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 662695)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_662779 : ∀ k : Nat,
    iterate (1048576 * k + 662779) 32 = 531441 * k + 335912 ∧
      531441 * k + 335912 < 1048576 * k + 662779 := by
  intro k
  have h1 : C (1048576 * k + 662779) = 3145728 * k + 1988338 := by
    unfold C
    simp [show (1048576 * k + 662779) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1988338) = 1572864 * k + 994169 := by
    unfold C
    simp [show (3145728 * k + 1988338) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 994169) = 4718592 * k + 2982508 := by
    unfold C
    simp [show (1572864 * k + 994169) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2982508) = 2359296 * k + 1491254 := by
    unfold C
    simp [show (4718592 * k + 2982508) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1491254) = 1179648 * k + 745627 := by
    unfold C
    simp [show (2359296 * k + 1491254) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 745627) = 3538944 * k + 2236882 := by
    unfold C
    simp [show (1179648 * k + 745627) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 2236882) = 1769472 * k + 1118441 := by
    unfold C
    simp [show (3538944 * k + 2236882) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1118441) = 5308416 * k + 3355324 := by
    unfold C
    simp [show (1769472 * k + 1118441) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 3355324) = 2654208 * k + 1677662 := by
    unfold C
    simp [show (5308416 * k + 3355324) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1677662) = 1327104 * k + 838831 := by
    unfold C
    simp [show (2654208 * k + 1677662) % 2 = 0 by omega]
    omega
  have h11 : C (1327104 * k + 838831) = 3981312 * k + 2516494 := by
    unfold C
    simp [show (1327104 * k + 838831) % 2 ≠ 0 by omega]
    omega
  have h12 : C (3981312 * k + 2516494) = 1990656 * k + 1258247 := by
    unfold C
    simp [show (3981312 * k + 2516494) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 1258247) = 5971968 * k + 3774742 := by
    unfold C
    simp [show (1990656 * k + 1258247) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 3774742) = 2985984 * k + 1887371 := by
    unfold C
    simp [show (5971968 * k + 3774742) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1887371) = 8957952 * k + 5662114 := by
    unfold C
    simp [show (2985984 * k + 1887371) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 5662114) = 4478976 * k + 2831057 := by
    unfold C
    simp [show (8957952 * k + 5662114) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 2831057) = 13436928 * k + 8493172 := by
    unfold C
    simp [show (4478976 * k + 2831057) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 8493172) = 6718464 * k + 4246586 := by
    unfold C
    simp [show (13436928 * k + 8493172) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 4246586) = 3359232 * k + 2123293 := by
    unfold C
    simp [show (6718464 * k + 4246586) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 2123293) = 10077696 * k + 6369880 := by
    unfold C
    simp [show (3359232 * k + 2123293) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 6369880) = 5038848 * k + 3184940 := by
    unfold C
    simp [show (10077696 * k + 6369880) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 3184940) = 2519424 * k + 1592470 := by
    unfold C
    simp [show (5038848 * k + 3184940) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1592470) = 1259712 * k + 796235 := by
    unfold C
    simp [show (2519424 * k + 1592470) % 2 = 0 by omega]
    omega
  have h24 : C (1259712 * k + 796235) = 3779136 * k + 2388706 := by
    unfold C
    simp [show (1259712 * k + 796235) % 2 ≠ 0 by omega]
    omega
  have h25 : C (3779136 * k + 2388706) = 1889568 * k + 1194353 := by
    unfold C
    simp [show (3779136 * k + 2388706) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1194353) = 5668704 * k + 3583060 := by
    unfold C
    simp [show (1889568 * k + 1194353) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 3583060) = 2834352 * k + 1791530 := by
    unfold C
    simp [show (5668704 * k + 3583060) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1791530) = 1417176 * k + 895765 := by
    unfold C
    simp [show (2834352 * k + 1791530) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 895765) = 4251528 * k + 2687296 := by
    unfold C
    simp [show (1417176 * k + 895765) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 2687296) = 2125764 * k + 1343648 := by
    unfold C
    simp [show (4251528 * k + 2687296) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1343648) = 1062882 * k + 671824 := by
    unfold C
    simp [show (2125764 * k + 1343648) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 671824) = 531441 * k + 335912 := by
    unfold C
    simp [show (1062882 * k + 671824) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 662779) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 662779)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_662939 : ∀ k : Nat,
    iterate (1048576 * k + 662939) 32 = 531441 * k + 335993 ∧
      531441 * k + 335993 < 1048576 * k + 662939 := by
  intro k
  have h1 : C (1048576 * k + 662939) = 3145728 * k + 1988818 := by
    unfold C
    simp [show (1048576 * k + 662939) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1988818) = 1572864 * k + 994409 := by
    unfold C
    simp [show (3145728 * k + 1988818) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 994409) = 4718592 * k + 2983228 := by
    unfold C
    simp [show (1572864 * k + 994409) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2983228) = 2359296 * k + 1491614 := by
    unfold C
    simp [show (4718592 * k + 2983228) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1491614) = 1179648 * k + 745807 := by
    unfold C
    simp [show (2359296 * k + 1491614) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 745807) = 3538944 * k + 2237422 := by
    unfold C
    simp [show (1179648 * k + 745807) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 2237422) = 1769472 * k + 1118711 := by
    unfold C
    simp [show (3538944 * k + 2237422) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1118711) = 5308416 * k + 3356134 := by
    unfold C
    simp [show (1769472 * k + 1118711) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 3356134) = 2654208 * k + 1678067 := by
    unfold C
    simp [show (5308416 * k + 3356134) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1678067) = 7962624 * k + 5034202 := by
    unfold C
    simp [show (2654208 * k + 1678067) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 5034202) = 3981312 * k + 2517101 := by
    unfold C
    simp [show (7962624 * k + 5034202) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 2517101) = 11943936 * k + 7551304 := by
    unfold C
    simp [show (3981312 * k + 2517101) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 7551304) = 5971968 * k + 3775652 := by
    unfold C
    simp [show (11943936 * k + 7551304) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 3775652) = 2985984 * k + 1887826 := by
    unfold C
    simp [show (5971968 * k + 3775652) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1887826) = 1492992 * k + 943913 := by
    unfold C
    simp [show (2985984 * k + 1887826) % 2 = 0 by omega]
    omega
  have h16 : C (1492992 * k + 943913) = 4478976 * k + 2831740 := by
    unfold C
    simp [show (1492992 * k + 943913) % 2 ≠ 0 by omega]
    omega
  have h17 : C (4478976 * k + 2831740) = 2239488 * k + 1415870 := by
    unfold C
    simp [show (4478976 * k + 2831740) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 1415870) = 1119744 * k + 707935 := by
    unfold C
    simp [show (2239488 * k + 1415870) % 2 = 0 by omega]
    omega
  have h19 : C (1119744 * k + 707935) = 3359232 * k + 2123806 := by
    unfold C
    simp [show (1119744 * k + 707935) % 2 ≠ 0 by omega]
    omega
  have h20 : C (3359232 * k + 2123806) = 1679616 * k + 1061903 := by
    unfold C
    simp [show (3359232 * k + 2123806) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 1061903) = 5038848 * k + 3185710 := by
    unfold C
    simp [show (1679616 * k + 1061903) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 3185710) = 2519424 * k + 1592855 := by
    unfold C
    simp [show (5038848 * k + 3185710) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1592855) = 7558272 * k + 4778566 := by
    unfold C
    simp [show (2519424 * k + 1592855) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 4778566) = 3779136 * k + 2389283 := by
    unfold C
    simp [show (7558272 * k + 4778566) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 2389283) = 11337408 * k + 7167850 := by
    unfold C
    simp [show (3779136 * k + 2389283) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 7167850) = 5668704 * k + 3583925 := by
    unfold C
    simp [show (11337408 * k + 7167850) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 3583925) = 17006112 * k + 10751776 := by
    unfold C
    simp [show (5668704 * k + 3583925) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 10751776) = 8503056 * k + 5375888 := by
    unfold C
    simp [show (17006112 * k + 10751776) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 5375888) = 4251528 * k + 2687944 := by
    unfold C
    simp [show (8503056 * k + 5375888) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 2687944) = 2125764 * k + 1343972 := by
    unfold C
    simp [show (4251528 * k + 2687944) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1343972) = 1062882 * k + 671986 := by
    unfold C
    simp [show (2125764 * k + 1343972) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 671986) = 531441 * k + 335993 := by
    unfold C
    simp [show (1062882 * k + 671986) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 662939) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 662939)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_663387 : ∀ k : Nat,
    iterate (1048576 * k + 663387) 32 = 531441 * k + 336220 ∧
      531441 * k + 336220 < 1048576 * k + 663387 := by
  intro k
  have h1 : C (1048576 * k + 663387) = 3145728 * k + 1990162 := by
    unfold C
    simp [show (1048576 * k + 663387) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1990162) = 1572864 * k + 995081 := by
    unfold C
    simp [show (3145728 * k + 1990162) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 995081) = 4718592 * k + 2985244 := by
    unfold C
    simp [show (1572864 * k + 995081) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2985244) = 2359296 * k + 1492622 := by
    unfold C
    simp [show (4718592 * k + 2985244) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1492622) = 1179648 * k + 746311 := by
    unfold C
    simp [show (2359296 * k + 1492622) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 746311) = 3538944 * k + 2238934 := by
    unfold C
    simp [show (1179648 * k + 746311) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 2238934) = 1769472 * k + 1119467 := by
    unfold C
    simp [show (3538944 * k + 2238934) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1119467) = 5308416 * k + 3358402 := by
    unfold C
    simp [show (1769472 * k + 1119467) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 3358402) = 2654208 * k + 1679201 := by
    unfold C
    simp [show (5308416 * k + 3358402) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1679201) = 7962624 * k + 5037604 := by
    unfold C
    simp [show (2654208 * k + 1679201) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 5037604) = 3981312 * k + 2518802 := by
    unfold C
    simp [show (7962624 * k + 5037604) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 2518802) = 1990656 * k + 1259401 := by
    unfold C
    simp [show (3981312 * k + 2518802) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 1259401) = 5971968 * k + 3778204 := by
    unfold C
    simp [show (1990656 * k + 1259401) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 3778204) = 2985984 * k + 1889102 := by
    unfold C
    simp [show (5971968 * k + 3778204) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1889102) = 1492992 * k + 944551 := by
    unfold C
    simp [show (2985984 * k + 1889102) % 2 = 0 by omega]
    omega
  have h16 : C (1492992 * k + 944551) = 4478976 * k + 2833654 := by
    unfold C
    simp [show (1492992 * k + 944551) % 2 ≠ 0 by omega]
    omega
  have h17 : C (4478976 * k + 2833654) = 2239488 * k + 1416827 := by
    unfold C
    simp [show (4478976 * k + 2833654) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 1416827) = 6718464 * k + 4250482 := by
    unfold C
    simp [show (2239488 * k + 1416827) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 4250482) = 3359232 * k + 2125241 := by
    unfold C
    simp [show (6718464 * k + 4250482) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 2125241) = 10077696 * k + 6375724 := by
    unfold C
    simp [show (3359232 * k + 2125241) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 6375724) = 5038848 * k + 3187862 := by
    unfold C
    simp [show (10077696 * k + 6375724) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 3187862) = 2519424 * k + 1593931 := by
    unfold C
    simp [show (5038848 * k + 3187862) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1593931) = 7558272 * k + 4781794 := by
    unfold C
    simp [show (2519424 * k + 1593931) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 4781794) = 3779136 * k + 2390897 := by
    unfold C
    simp [show (7558272 * k + 4781794) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 2390897) = 11337408 * k + 7172692 := by
    unfold C
    simp [show (3779136 * k + 2390897) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 7172692) = 5668704 * k + 3586346 := by
    unfold C
    simp [show (11337408 * k + 7172692) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 3586346) = 2834352 * k + 1793173 := by
    unfold C
    simp [show (5668704 * k + 3586346) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1793173) = 8503056 * k + 5379520 := by
    unfold C
    simp [show (2834352 * k + 1793173) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 5379520) = 4251528 * k + 2689760 := by
    unfold C
    simp [show (8503056 * k + 5379520) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 2689760) = 2125764 * k + 1344880 := by
    unfold C
    simp [show (4251528 * k + 2689760) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1344880) = 1062882 * k + 672440 := by
    unfold C
    simp [show (2125764 * k + 1344880) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 672440) = 531441 * k + 336220 := by
    unfold C
    simp [show (1062882 * k + 672440) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 663387) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 663387)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_663535 : ∀ k : Nat,
    iterate (1048576 * k + 663535) 32 = 531441 * k + 336295 ∧
      531441 * k + 336295 < 1048576 * k + 663535 := by
  intro k
  have h1 : C (1048576 * k + 663535) = 3145728 * k + 1990606 := by
    unfold C
    simp [show (1048576 * k + 663535) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1990606) = 1572864 * k + 995303 := by
    unfold C
    simp [show (3145728 * k + 1990606) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 995303) = 4718592 * k + 2985910 := by
    unfold C
    simp [show (1572864 * k + 995303) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2985910) = 2359296 * k + 1492955 := by
    unfold C
    simp [show (4718592 * k + 2985910) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1492955) = 7077888 * k + 4478866 := by
    unfold C
    simp [show (2359296 * k + 1492955) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 4478866) = 3538944 * k + 2239433 := by
    unfold C
    simp [show (7077888 * k + 4478866) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2239433) = 10616832 * k + 6718300 := by
    unfold C
    simp [show (3538944 * k + 2239433) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 6718300) = 5308416 * k + 3359150 := by
    unfold C
    simp [show (10616832 * k + 6718300) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 3359150) = 2654208 * k + 1679575 := by
    unfold C
    simp [show (5308416 * k + 3359150) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1679575) = 7962624 * k + 5038726 := by
    unfold C
    simp [show (2654208 * k + 1679575) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 5038726) = 3981312 * k + 2519363 := by
    unfold C
    simp [show (7962624 * k + 5038726) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 2519363) = 11943936 * k + 7558090 := by
    unfold C
    simp [show (3981312 * k + 2519363) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 7558090) = 5971968 * k + 3779045 := by
    unfold C
    simp [show (11943936 * k + 7558090) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 3779045) = 17915904 * k + 11337136 := by
    unfold C
    simp [show (5971968 * k + 3779045) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 11337136) = 8957952 * k + 5668568 := by
    unfold C
    simp [show (17915904 * k + 11337136) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 5668568) = 4478976 * k + 2834284 := by
    unfold C
    simp [show (8957952 * k + 5668568) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 2834284) = 2239488 * k + 1417142 := by
    unfold C
    simp [show (4478976 * k + 2834284) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 1417142) = 1119744 * k + 708571 := by
    unfold C
    simp [show (2239488 * k + 1417142) % 2 = 0 by omega]
    omega
  have h19 : C (1119744 * k + 708571) = 3359232 * k + 2125714 := by
    unfold C
    simp [show (1119744 * k + 708571) % 2 ≠ 0 by omega]
    omega
  have h20 : C (3359232 * k + 2125714) = 1679616 * k + 1062857 := by
    unfold C
    simp [show (3359232 * k + 2125714) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 1062857) = 5038848 * k + 3188572 := by
    unfold C
    simp [show (1679616 * k + 1062857) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 3188572) = 2519424 * k + 1594286 := by
    unfold C
    simp [show (5038848 * k + 3188572) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1594286) = 1259712 * k + 797143 := by
    unfold C
    simp [show (2519424 * k + 1594286) % 2 = 0 by omega]
    omega
  have h24 : C (1259712 * k + 797143) = 3779136 * k + 2391430 := by
    unfold C
    simp [show (1259712 * k + 797143) % 2 ≠ 0 by omega]
    omega
  have h25 : C (3779136 * k + 2391430) = 1889568 * k + 1195715 := by
    unfold C
    simp [show (3779136 * k + 2391430) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1195715) = 5668704 * k + 3587146 := by
    unfold C
    simp [show (1889568 * k + 1195715) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 3587146) = 2834352 * k + 1793573 := by
    unfold C
    simp [show (5668704 * k + 3587146) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1793573) = 8503056 * k + 5380720 := by
    unfold C
    simp [show (2834352 * k + 1793573) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 5380720) = 4251528 * k + 2690360 := by
    unfold C
    simp [show (8503056 * k + 5380720) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 2690360) = 2125764 * k + 1345180 := by
    unfold C
    simp [show (4251528 * k + 2690360) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1345180) = 1062882 * k + 672590 := by
    unfold C
    simp [show (2125764 * k + 1345180) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 672590) = 531441 * k + 336295 := by
    unfold C
    simp [show (1062882 * k + 672590) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 663535) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 663535)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_663583 : ∀ k : Nat,
    iterate (1048576 * k + 663583) 32 = 531441 * k + 336319 ∧
      531441 * k + 336319 < 1048576 * k + 663583 := by
  intro k
  have h1 : C (1048576 * k + 663583) = 3145728 * k + 1990750 := by
    unfold C
    simp [show (1048576 * k + 663583) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1990750) = 1572864 * k + 995375 := by
    unfold C
    simp [show (3145728 * k + 1990750) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 995375) = 4718592 * k + 2986126 := by
    unfold C
    simp [show (1572864 * k + 995375) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2986126) = 2359296 * k + 1493063 := by
    unfold C
    simp [show (4718592 * k + 2986126) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1493063) = 7077888 * k + 4479190 := by
    unfold C
    simp [show (2359296 * k + 1493063) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 4479190) = 3538944 * k + 2239595 := by
    unfold C
    simp [show (7077888 * k + 4479190) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2239595) = 10616832 * k + 6718786 := by
    unfold C
    simp [show (3538944 * k + 2239595) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 6718786) = 5308416 * k + 3359393 := by
    unfold C
    simp [show (10616832 * k + 6718786) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 3359393) = 15925248 * k + 10078180 := by
    unfold C
    simp [show (5308416 * k + 3359393) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 10078180) = 7962624 * k + 5039090 := by
    unfold C
    simp [show (15925248 * k + 10078180) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 5039090) = 3981312 * k + 2519545 := by
    unfold C
    simp [show (7962624 * k + 5039090) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 2519545) = 11943936 * k + 7558636 := by
    unfold C
    simp [show (3981312 * k + 2519545) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 7558636) = 5971968 * k + 3779318 := by
    unfold C
    simp [show (11943936 * k + 7558636) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 3779318) = 2985984 * k + 1889659 := by
    unfold C
    simp [show (5971968 * k + 3779318) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1889659) = 8957952 * k + 5668978 := by
    unfold C
    simp [show (2985984 * k + 1889659) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 5668978) = 4478976 * k + 2834489 := by
    unfold C
    simp [show (8957952 * k + 5668978) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 2834489) = 13436928 * k + 8503468 := by
    unfold C
    simp [show (4478976 * k + 2834489) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 8503468) = 6718464 * k + 4251734 := by
    unfold C
    simp [show (13436928 * k + 8503468) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 4251734) = 3359232 * k + 2125867 := by
    unfold C
    simp [show (6718464 * k + 4251734) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 2125867) = 10077696 * k + 6377602 := by
    unfold C
    simp [show (3359232 * k + 2125867) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 6377602) = 5038848 * k + 3188801 := by
    unfold C
    simp [show (10077696 * k + 6377602) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 3188801) = 15116544 * k + 9566404 := by
    unfold C
    simp [show (5038848 * k + 3188801) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 9566404) = 7558272 * k + 4783202 := by
    unfold C
    simp [show (15116544 * k + 9566404) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 4783202) = 3779136 * k + 2391601 := by
    unfold C
    simp [show (7558272 * k + 4783202) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 2391601) = 11337408 * k + 7174804 := by
    unfold C
    simp [show (3779136 * k + 2391601) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 7174804) = 5668704 * k + 3587402 := by
    unfold C
    simp [show (11337408 * k + 7174804) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 3587402) = 2834352 * k + 1793701 := by
    unfold C
    simp [show (5668704 * k + 3587402) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1793701) = 8503056 * k + 5381104 := by
    unfold C
    simp [show (2834352 * k + 1793701) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 5381104) = 4251528 * k + 2690552 := by
    unfold C
    simp [show (8503056 * k + 5381104) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 2690552) = 2125764 * k + 1345276 := by
    unfold C
    simp [show (4251528 * k + 2690552) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1345276) = 1062882 * k + 672638 := by
    unfold C
    simp [show (2125764 * k + 1345276) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 672638) = 531441 * k + 336319 := by
    unfold C
    simp [show (1062882 * k + 672638) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 663583) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 663583)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_663963 : ∀ k : Nat,
    iterate (1048576 * k + 663963) 32 = 531441 * k + 336512 ∧
      531441 * k + 336512 < 1048576 * k + 663963 := by
  intro k
  have h1 : C (1048576 * k + 663963) = 3145728 * k + 1991890 := by
    unfold C
    simp [show (1048576 * k + 663963) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1991890) = 1572864 * k + 995945 := by
    unfold C
    simp [show (3145728 * k + 1991890) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 995945) = 4718592 * k + 2987836 := by
    unfold C
    simp [show (1572864 * k + 995945) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2987836) = 2359296 * k + 1493918 := by
    unfold C
    simp [show (4718592 * k + 2987836) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1493918) = 1179648 * k + 746959 := by
    unfold C
    simp [show (2359296 * k + 1493918) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 746959) = 3538944 * k + 2240878 := by
    unfold C
    simp [show (1179648 * k + 746959) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 2240878) = 1769472 * k + 1120439 := by
    unfold C
    simp [show (3538944 * k + 2240878) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1120439) = 5308416 * k + 3361318 := by
    unfold C
    simp [show (1769472 * k + 1120439) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 3361318) = 2654208 * k + 1680659 := by
    unfold C
    simp [show (5308416 * k + 3361318) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1680659) = 7962624 * k + 5041978 := by
    unfold C
    simp [show (2654208 * k + 1680659) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 5041978) = 3981312 * k + 2520989 := by
    unfold C
    simp [show (7962624 * k + 5041978) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 2520989) = 11943936 * k + 7562968 := by
    unfold C
    simp [show (3981312 * k + 2520989) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 7562968) = 5971968 * k + 3781484 := by
    unfold C
    simp [show (11943936 * k + 7562968) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 3781484) = 2985984 * k + 1890742 := by
    unfold C
    simp [show (5971968 * k + 3781484) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1890742) = 1492992 * k + 945371 := by
    unfold C
    simp [show (2985984 * k + 1890742) % 2 = 0 by omega]
    omega
  have h16 : C (1492992 * k + 945371) = 4478976 * k + 2836114 := by
    unfold C
    simp [show (1492992 * k + 945371) % 2 ≠ 0 by omega]
    omega
  have h17 : C (4478976 * k + 2836114) = 2239488 * k + 1418057 := by
    unfold C
    simp [show (4478976 * k + 2836114) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 1418057) = 6718464 * k + 4254172 := by
    unfold C
    simp [show (2239488 * k + 1418057) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 4254172) = 3359232 * k + 2127086 := by
    unfold C
    simp [show (6718464 * k + 4254172) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 2127086) = 1679616 * k + 1063543 := by
    unfold C
    simp [show (3359232 * k + 2127086) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 1063543) = 5038848 * k + 3190630 := by
    unfold C
    simp [show (1679616 * k + 1063543) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 3190630) = 2519424 * k + 1595315 := by
    unfold C
    simp [show (5038848 * k + 3190630) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1595315) = 7558272 * k + 4785946 := by
    unfold C
    simp [show (2519424 * k + 1595315) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 4785946) = 3779136 * k + 2392973 := by
    unfold C
    simp [show (7558272 * k + 4785946) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 2392973) = 11337408 * k + 7178920 := by
    unfold C
    simp [show (3779136 * k + 2392973) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 7178920) = 5668704 * k + 3589460 := by
    unfold C
    simp [show (11337408 * k + 7178920) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 3589460) = 2834352 * k + 1794730 := by
    unfold C
    simp [show (5668704 * k + 3589460) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1794730) = 1417176 * k + 897365 := by
    unfold C
    simp [show (2834352 * k + 1794730) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 897365) = 4251528 * k + 2692096 := by
    unfold C
    simp [show (1417176 * k + 897365) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 2692096) = 2125764 * k + 1346048 := by
    unfold C
    simp [show (4251528 * k + 2692096) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1346048) = 1062882 * k + 673024 := by
    unfold C
    simp [show (2125764 * k + 1346048) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 673024) = 531441 * k + 336512 := by
    unfold C
    simp [show (1062882 * k + 673024) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 663963) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 663963)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

end CollatzM20Shard085
