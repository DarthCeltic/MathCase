import Mathlib.Data.Nat.Prime.Basic

namespace CollatzM18Shard048

def C (n : Nat) : Nat := if n % 2 = 0 then n / 2 else 3 * n + 1

def iterate (n t : Nat) : Nat := Nat.rec n (fun _ previous => C previous) t

theorem descent_mod262144_257883 : ∀ k : Nat,
    iterate (262144 * k + 257883) 29 = 177147 * k + 174269 ∧
      177147 * k + 174269 < 262144 * k + 257883 := by
  intro k
  have h1 : C (262144 * k + 257883) = 786432 * k + 773650 := by
    unfold C
    simp [show (262144 * k + 257883) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 773650) = 393216 * k + 386825 := by
    unfold C
    simp [show (786432 * k + 773650) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 386825) = 1179648 * k + 1160476 := by
    unfold C
    simp [show (393216 * k + 386825) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 1160476) = 589824 * k + 580238 := by
    unfold C
    simp [show (1179648 * k + 1160476) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 580238) = 294912 * k + 290119 := by
    unfold C
    simp [show (589824 * k + 580238) % 2 = 0 by omega]
    omega
  have h6 : C (294912 * k + 290119) = 884736 * k + 870358 := by
    unfold C
    simp [show (294912 * k + 290119) % 2 ≠ 0 by omega]
    omega
  have h7 : C (884736 * k + 870358) = 442368 * k + 435179 := by
    unfold C
    simp [show (884736 * k + 870358) % 2 = 0 by omega]
    omega
  have h8 : C (442368 * k + 435179) = 1327104 * k + 1305538 := by
    unfold C
    simp [show (442368 * k + 435179) % 2 ≠ 0 by omega]
    omega
  have h9 : C (1327104 * k + 1305538) = 663552 * k + 652769 := by
    unfold C
    simp [show (1327104 * k + 1305538) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 652769) = 1990656 * k + 1958308 := by
    unfold C
    simp [show (663552 * k + 652769) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 1958308) = 995328 * k + 979154 := by
    unfold C
    simp [show (1990656 * k + 1958308) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 979154) = 497664 * k + 489577 := by
    unfold C
    simp [show (995328 * k + 979154) % 2 = 0 by omega]
    omega
  have h13 : C (497664 * k + 489577) = 1492992 * k + 1468732 := by
    unfold C
    simp [show (497664 * k + 489577) % 2 ≠ 0 by omega]
    omega
  have h14 : C (1492992 * k + 1468732) = 746496 * k + 734366 := by
    unfold C
    simp [show (1492992 * k + 1468732) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 734366) = 373248 * k + 367183 := by
    unfold C
    simp [show (746496 * k + 734366) % 2 = 0 by omega]
    omega
  have h16 : C (373248 * k + 367183) = 1119744 * k + 1101550 := by
    unfold C
    simp [show (373248 * k + 367183) % 2 ≠ 0 by omega]
    omega
  have h17 : C (1119744 * k + 1101550) = 559872 * k + 550775 := by
    unfold C
    simp [show (1119744 * k + 1101550) % 2 = 0 by omega]
    omega
  have h18 : C (559872 * k + 550775) = 1679616 * k + 1652326 := by
    unfold C
    simp [show (559872 * k + 550775) % 2 ≠ 0 by omega]
    omega
  have h19 : C (1679616 * k + 1652326) = 839808 * k + 826163 := by
    unfold C
    simp [show (1679616 * k + 1652326) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 826163) = 2519424 * k + 2478490 := by
    unfold C
    simp [show (839808 * k + 826163) % 2 ≠ 0 by omega]
    omega
  have h21 : C (2519424 * k + 2478490) = 1259712 * k + 1239245 := by
    unfold C
    simp [show (2519424 * k + 2478490) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 1239245) = 3779136 * k + 3717736 := by
    unfold C
    simp [show (1259712 * k + 1239245) % 2 ≠ 0 by omega]
    omega
  have h23 : C (3779136 * k + 3717736) = 1889568 * k + 1858868 := by
    unfold C
    simp [show (3779136 * k + 3717736) % 2 = 0 by omega]
    omega
  have h24 : C (1889568 * k + 1858868) = 944784 * k + 929434 := by
    unfold C
    simp [show (1889568 * k + 1858868) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 929434) = 472392 * k + 464717 := by
    unfold C
    simp [show (944784 * k + 929434) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 464717) = 1417176 * k + 1394152 := by
    unfold C
    simp [show (472392 * k + 464717) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 1394152) = 708588 * k + 697076 := by
    unfold C
    simp [show (1417176 * k + 1394152) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 697076) = 354294 * k + 348538 := by
    unfold C
    simp [show (708588 * k + 697076) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 348538) = 177147 * k + 174269 := by
    unfold C
    simp [show (354294 * k + 348538) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 257883) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 257883))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_258095 : ∀ k : Nat,
    iterate (262144 * k + 258095) 29 = 177147 * k + 174412 ∧
      177147 * k + 174412 < 262144 * k + 258095 := by
  intro k
  have h1 : C (262144 * k + 258095) = 786432 * k + 774286 := by
    unfold C
    simp [show (262144 * k + 258095) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 774286) = 393216 * k + 387143 := by
    unfold C
    simp [show (786432 * k + 774286) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 387143) = 1179648 * k + 1161430 := by
    unfold C
    simp [show (393216 * k + 387143) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 1161430) = 589824 * k + 580715 := by
    unfold C
    simp [show (1179648 * k + 1161430) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 580715) = 1769472 * k + 1742146 := by
    unfold C
    simp [show (589824 * k + 580715) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 1742146) = 884736 * k + 871073 := by
    unfold C
    simp [show (1769472 * k + 1742146) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 871073) = 2654208 * k + 2613220 := by
    unfold C
    simp [show (884736 * k + 871073) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 2613220) = 1327104 * k + 1306610 := by
    unfold C
    simp [show (2654208 * k + 2613220) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 1306610) = 663552 * k + 653305 := by
    unfold C
    simp [show (1327104 * k + 1306610) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 653305) = 1990656 * k + 1959916 := by
    unfold C
    simp [show (663552 * k + 653305) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 1959916) = 995328 * k + 979958 := by
    unfold C
    simp [show (1990656 * k + 1959916) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 979958) = 497664 * k + 489979 := by
    unfold C
    simp [show (995328 * k + 979958) % 2 = 0 by omega]
    omega
  have h13 : C (497664 * k + 489979) = 1492992 * k + 1469938 := by
    unfold C
    simp [show (497664 * k + 489979) % 2 ≠ 0 by omega]
    omega
  have h14 : C (1492992 * k + 1469938) = 746496 * k + 734969 := by
    unfold C
    simp [show (1492992 * k + 1469938) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 734969) = 2239488 * k + 2204908 := by
    unfold C
    simp [show (746496 * k + 734969) % 2 ≠ 0 by omega]
    omega
  have h16 : C (2239488 * k + 2204908) = 1119744 * k + 1102454 := by
    unfold C
    simp [show (2239488 * k + 2204908) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 1102454) = 559872 * k + 551227 := by
    unfold C
    simp [show (1119744 * k + 1102454) % 2 = 0 by omega]
    omega
  have h18 : C (559872 * k + 551227) = 1679616 * k + 1653682 := by
    unfold C
    simp [show (559872 * k + 551227) % 2 ≠ 0 by omega]
    omega
  have h19 : C (1679616 * k + 1653682) = 839808 * k + 826841 := by
    unfold C
    simp [show (1679616 * k + 1653682) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 826841) = 2519424 * k + 2480524 := by
    unfold C
    simp [show (839808 * k + 826841) % 2 ≠ 0 by omega]
    omega
  have h21 : C (2519424 * k + 2480524) = 1259712 * k + 1240262 := by
    unfold C
    simp [show (2519424 * k + 2480524) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 1240262) = 629856 * k + 620131 := by
    unfold C
    simp [show (1259712 * k + 1240262) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 620131) = 1889568 * k + 1860394 := by
    unfold C
    simp [show (629856 * k + 620131) % 2 ≠ 0 by omega]
    omega
  have h24 : C (1889568 * k + 1860394) = 944784 * k + 930197 := by
    unfold C
    simp [show (1889568 * k + 1860394) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 930197) = 2834352 * k + 2790592 := by
    unfold C
    simp [show (944784 * k + 930197) % 2 ≠ 0 by omega]
    omega
  have h26 : C (2834352 * k + 2790592) = 1417176 * k + 1395296 := by
    unfold C
    simp [show (2834352 * k + 2790592) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 1395296) = 708588 * k + 697648 := by
    unfold C
    simp [show (1417176 * k + 1395296) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 697648) = 354294 * k + 348824 := by
    unfold C
    simp [show (708588 * k + 697648) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 348824) = 177147 * k + 174412 := by
    unfold C
    simp [show (354294 * k + 348824) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 258095) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 258095))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_258159 : ∀ k : Nat,
    iterate (262144 * k + 258159) 29 = 177147 * k + 174455 ∧
      177147 * k + 174455 < 262144 * k + 258159 := by
  intro k
  have h1 : C (262144 * k + 258159) = 786432 * k + 774478 := by
    unfold C
    simp [show (262144 * k + 258159) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 774478) = 393216 * k + 387239 := by
    unfold C
    simp [show (786432 * k + 774478) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 387239) = 1179648 * k + 1161718 := by
    unfold C
    simp [show (393216 * k + 387239) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 1161718) = 589824 * k + 580859 := by
    unfold C
    simp [show (1179648 * k + 1161718) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 580859) = 1769472 * k + 1742578 := by
    unfold C
    simp [show (589824 * k + 580859) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 1742578) = 884736 * k + 871289 := by
    unfold C
    simp [show (1769472 * k + 1742578) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 871289) = 2654208 * k + 2613868 := by
    unfold C
    simp [show (884736 * k + 871289) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 2613868) = 1327104 * k + 1306934 := by
    unfold C
    simp [show (2654208 * k + 2613868) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 1306934) = 663552 * k + 653467 := by
    unfold C
    simp [show (1327104 * k + 1306934) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 653467) = 1990656 * k + 1960402 := by
    unfold C
    simp [show (663552 * k + 653467) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 1960402) = 995328 * k + 980201 := by
    unfold C
    simp [show (1990656 * k + 1960402) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 980201) = 2985984 * k + 2940604 := by
    unfold C
    simp [show (995328 * k + 980201) % 2 ≠ 0 by omega]
    omega
  have h13 : C (2985984 * k + 2940604) = 1492992 * k + 1470302 := by
    unfold C
    simp [show (2985984 * k + 2940604) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 1470302) = 746496 * k + 735151 := by
    unfold C
    simp [show (1492992 * k + 1470302) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 735151) = 2239488 * k + 2205454 := by
    unfold C
    simp [show (746496 * k + 735151) % 2 ≠ 0 by omega]
    omega
  have h16 : C (2239488 * k + 2205454) = 1119744 * k + 1102727 := by
    unfold C
    simp [show (2239488 * k + 2205454) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 1102727) = 3359232 * k + 3308182 := by
    unfold C
    simp [show (1119744 * k + 1102727) % 2 ≠ 0 by omega]
    omega
  have h18 : C (3359232 * k + 3308182) = 1679616 * k + 1654091 := by
    unfold C
    simp [show (3359232 * k + 3308182) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 1654091) = 5038848 * k + 4962274 := by
    unfold C
    simp [show (1679616 * k + 1654091) % 2 ≠ 0 by omega]
    omega
  have h20 : C (5038848 * k + 4962274) = 2519424 * k + 2481137 := by
    unfold C
    simp [show (5038848 * k + 4962274) % 2 = 0 by omega]
    omega
  have h21 : C (2519424 * k + 2481137) = 7558272 * k + 7443412 := by
    unfold C
    simp [show (2519424 * k + 2481137) % 2 ≠ 0 by omega]
    omega
  have h22 : C (7558272 * k + 7443412) = 3779136 * k + 3721706 := by
    unfold C
    simp [show (7558272 * k + 7443412) % 2 = 0 by omega]
    omega
  have h23 : C (3779136 * k + 3721706) = 1889568 * k + 1860853 := by
    unfold C
    simp [show (3779136 * k + 3721706) % 2 = 0 by omega]
    omega
  have h24 : C (1889568 * k + 1860853) = 5668704 * k + 5582560 := by
    unfold C
    simp [show (1889568 * k + 1860853) % 2 ≠ 0 by omega]
    omega
  have h25 : C (5668704 * k + 5582560) = 2834352 * k + 2791280 := by
    unfold C
    simp [show (5668704 * k + 5582560) % 2 = 0 by omega]
    omega
  have h26 : C (2834352 * k + 2791280) = 1417176 * k + 1395640 := by
    unfold C
    simp [show (2834352 * k + 2791280) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 1395640) = 708588 * k + 697820 := by
    unfold C
    simp [show (1417176 * k + 1395640) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 697820) = 354294 * k + 348910 := by
    unfold C
    simp [show (708588 * k + 697820) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 348910) = 177147 * k + 174455 := by
    unfold C
    simp [show (354294 * k + 348910) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 258159) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 258159))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_258215 : ∀ k : Nat,
    iterate (262144 * k + 258215) 29 = 177147 * k + 174493 ∧
      177147 * k + 174493 < 262144 * k + 258215 := by
  intro k
  have h1 : C (262144 * k + 258215) = 786432 * k + 774646 := by
    unfold C
    simp [show (262144 * k + 258215) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 774646) = 393216 * k + 387323 := by
    unfold C
    simp [show (786432 * k + 774646) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 387323) = 1179648 * k + 1161970 := by
    unfold C
    simp [show (393216 * k + 387323) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 1161970) = 589824 * k + 580985 := by
    unfold C
    simp [show (1179648 * k + 1161970) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 580985) = 1769472 * k + 1742956 := by
    unfold C
    simp [show (589824 * k + 580985) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 1742956) = 884736 * k + 871478 := by
    unfold C
    simp [show (1769472 * k + 1742956) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 871478) = 442368 * k + 435739 := by
    unfold C
    simp [show (884736 * k + 871478) % 2 = 0 by omega]
    omega
  have h8 : C (442368 * k + 435739) = 1327104 * k + 1307218 := by
    unfold C
    simp [show (442368 * k + 435739) % 2 ≠ 0 by omega]
    omega
  have h9 : C (1327104 * k + 1307218) = 663552 * k + 653609 := by
    unfold C
    simp [show (1327104 * k + 1307218) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 653609) = 1990656 * k + 1960828 := by
    unfold C
    simp [show (663552 * k + 653609) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 1960828) = 995328 * k + 980414 := by
    unfold C
    simp [show (1990656 * k + 1960828) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 980414) = 497664 * k + 490207 := by
    unfold C
    simp [show (995328 * k + 980414) % 2 = 0 by omega]
    omega
  have h13 : C (497664 * k + 490207) = 1492992 * k + 1470622 := by
    unfold C
    simp [show (497664 * k + 490207) % 2 ≠ 0 by omega]
    omega
  have h14 : C (1492992 * k + 1470622) = 746496 * k + 735311 := by
    unfold C
    simp [show (1492992 * k + 1470622) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 735311) = 2239488 * k + 2205934 := by
    unfold C
    simp [show (746496 * k + 735311) % 2 ≠ 0 by omega]
    omega
  have h16 : C (2239488 * k + 2205934) = 1119744 * k + 1102967 := by
    unfold C
    simp [show (2239488 * k + 2205934) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 1102967) = 3359232 * k + 3308902 := by
    unfold C
    simp [show (1119744 * k + 1102967) % 2 ≠ 0 by omega]
    omega
  have h18 : C (3359232 * k + 3308902) = 1679616 * k + 1654451 := by
    unfold C
    simp [show (3359232 * k + 3308902) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 1654451) = 5038848 * k + 4963354 := by
    unfold C
    simp [show (1679616 * k + 1654451) % 2 ≠ 0 by omega]
    omega
  have h20 : C (5038848 * k + 4963354) = 2519424 * k + 2481677 := by
    unfold C
    simp [show (5038848 * k + 4963354) % 2 = 0 by omega]
    omega
  have h21 : C (2519424 * k + 2481677) = 7558272 * k + 7445032 := by
    unfold C
    simp [show (2519424 * k + 2481677) % 2 ≠ 0 by omega]
    omega
  have h22 : C (7558272 * k + 7445032) = 3779136 * k + 3722516 := by
    unfold C
    simp [show (7558272 * k + 7445032) % 2 = 0 by omega]
    omega
  have h23 : C (3779136 * k + 3722516) = 1889568 * k + 1861258 := by
    unfold C
    simp [show (3779136 * k + 3722516) % 2 = 0 by omega]
    omega
  have h24 : C (1889568 * k + 1861258) = 944784 * k + 930629 := by
    unfold C
    simp [show (1889568 * k + 1861258) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 930629) = 2834352 * k + 2791888 := by
    unfold C
    simp [show (944784 * k + 930629) % 2 ≠ 0 by omega]
    omega
  have h26 : C (2834352 * k + 2791888) = 1417176 * k + 1395944 := by
    unfold C
    simp [show (2834352 * k + 2791888) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 1395944) = 708588 * k + 697972 := by
    unfold C
    simp [show (1417176 * k + 1395944) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 697972) = 354294 * k + 348986 := by
    unfold C
    simp [show (708588 * k + 697972) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 348986) = 177147 * k + 174493 := by
    unfold C
    simp [show (354294 * k + 348986) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 258215) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 258215))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_258495 : ∀ k : Nat,
    iterate (262144 * k + 258495) 29 = 177147 * k + 174682 ∧
      177147 * k + 174682 < 262144 * k + 258495 := by
  intro k
  have h1 : C (262144 * k + 258495) = 786432 * k + 775486 := by
    unfold C
    simp [show (262144 * k + 258495) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 775486) = 393216 * k + 387743 := by
    unfold C
    simp [show (786432 * k + 775486) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 387743) = 1179648 * k + 1163230 := by
    unfold C
    simp [show (393216 * k + 387743) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 1163230) = 589824 * k + 581615 := by
    unfold C
    simp [show (1179648 * k + 1163230) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 581615) = 1769472 * k + 1744846 := by
    unfold C
    simp [show (589824 * k + 581615) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 1744846) = 884736 * k + 872423 := by
    unfold C
    simp [show (1769472 * k + 1744846) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 872423) = 2654208 * k + 2617270 := by
    unfold C
    simp [show (884736 * k + 872423) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 2617270) = 1327104 * k + 1308635 := by
    unfold C
    simp [show (2654208 * k + 2617270) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 1308635) = 3981312 * k + 3925906 := by
    unfold C
    simp [show (1327104 * k + 1308635) % 2 ≠ 0 by omega]
    omega
  have h10 : C (3981312 * k + 3925906) = 1990656 * k + 1962953 := by
    unfold C
    simp [show (3981312 * k + 3925906) % 2 = 0 by omega]
    omega
  have h11 : C (1990656 * k + 1962953) = 5971968 * k + 5888860 := by
    unfold C
    simp [show (1990656 * k + 1962953) % 2 ≠ 0 by omega]
    omega
  have h12 : C (5971968 * k + 5888860) = 2985984 * k + 2944430 := by
    unfold C
    simp [show (5971968 * k + 5888860) % 2 = 0 by omega]
    omega
  have h13 : C (2985984 * k + 2944430) = 1492992 * k + 1472215 := by
    unfold C
    simp [show (2985984 * k + 2944430) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 1472215) = 4478976 * k + 4416646 := by
    unfold C
    simp [show (1492992 * k + 1472215) % 2 ≠ 0 by omega]
    omega
  have h15 : C (4478976 * k + 4416646) = 2239488 * k + 2208323 := by
    unfold C
    simp [show (4478976 * k + 4416646) % 2 = 0 by omega]
    omega
  have h16 : C (2239488 * k + 2208323) = 6718464 * k + 6624970 := by
    unfold C
    simp [show (2239488 * k + 2208323) % 2 ≠ 0 by omega]
    omega
  have h17 : C (6718464 * k + 6624970) = 3359232 * k + 3312485 := by
    unfold C
    simp [show (6718464 * k + 6624970) % 2 = 0 by omega]
    omega
  have h18 : C (3359232 * k + 3312485) = 10077696 * k + 9937456 := by
    unfold C
    simp [show (3359232 * k + 3312485) % 2 ≠ 0 by omega]
    omega
  have h19 : C (10077696 * k + 9937456) = 5038848 * k + 4968728 := by
    unfold C
    simp [show (10077696 * k + 9937456) % 2 = 0 by omega]
    omega
  have h20 : C (5038848 * k + 4968728) = 2519424 * k + 2484364 := by
    unfold C
    simp [show (5038848 * k + 4968728) % 2 = 0 by omega]
    omega
  have h21 : C (2519424 * k + 2484364) = 1259712 * k + 1242182 := by
    unfold C
    simp [show (2519424 * k + 2484364) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 1242182) = 629856 * k + 621091 := by
    unfold C
    simp [show (1259712 * k + 1242182) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 621091) = 1889568 * k + 1863274 := by
    unfold C
    simp [show (629856 * k + 621091) % 2 ≠ 0 by omega]
    omega
  have h24 : C (1889568 * k + 1863274) = 944784 * k + 931637 := by
    unfold C
    simp [show (1889568 * k + 1863274) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 931637) = 2834352 * k + 2794912 := by
    unfold C
    simp [show (944784 * k + 931637) % 2 ≠ 0 by omega]
    omega
  have h26 : C (2834352 * k + 2794912) = 1417176 * k + 1397456 := by
    unfold C
    simp [show (2834352 * k + 2794912) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 1397456) = 708588 * k + 698728 := by
    unfold C
    simp [show (1417176 * k + 1397456) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 698728) = 354294 * k + 349364 := by
    unfold C
    simp [show (708588 * k + 698728) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 349364) = 177147 * k + 174682 := by
    unfold C
    simp [show (354294 * k + 349364) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 258495) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 258495))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_258607 : ∀ k : Nat,
    iterate (262144 * k + 258607) 29 = 177147 * k + 174758 ∧
      177147 * k + 174758 < 262144 * k + 258607 := by
  intro k
  have h1 : C (262144 * k + 258607) = 786432 * k + 775822 := by
    unfold C
    simp [show (262144 * k + 258607) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 775822) = 393216 * k + 387911 := by
    unfold C
    simp [show (786432 * k + 775822) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 387911) = 1179648 * k + 1163734 := by
    unfold C
    simp [show (393216 * k + 387911) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 1163734) = 589824 * k + 581867 := by
    unfold C
    simp [show (1179648 * k + 1163734) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 581867) = 1769472 * k + 1745602 := by
    unfold C
    simp [show (589824 * k + 581867) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 1745602) = 884736 * k + 872801 := by
    unfold C
    simp [show (1769472 * k + 1745602) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 872801) = 2654208 * k + 2618404 := by
    unfold C
    simp [show (884736 * k + 872801) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 2618404) = 1327104 * k + 1309202 := by
    unfold C
    simp [show (2654208 * k + 2618404) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 1309202) = 663552 * k + 654601 := by
    unfold C
    simp [show (1327104 * k + 1309202) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 654601) = 1990656 * k + 1963804 := by
    unfold C
    simp [show (663552 * k + 654601) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 1963804) = 995328 * k + 981902 := by
    unfold C
    simp [show (1990656 * k + 1963804) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 981902) = 497664 * k + 490951 := by
    unfold C
    simp [show (995328 * k + 981902) % 2 = 0 by omega]
    omega
  have h13 : C (497664 * k + 490951) = 1492992 * k + 1472854 := by
    unfold C
    simp [show (497664 * k + 490951) % 2 ≠ 0 by omega]
    omega
  have h14 : C (1492992 * k + 1472854) = 746496 * k + 736427 := by
    unfold C
    simp [show (1492992 * k + 1472854) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 736427) = 2239488 * k + 2209282 := by
    unfold C
    simp [show (746496 * k + 736427) % 2 ≠ 0 by omega]
    omega
  have h16 : C (2239488 * k + 2209282) = 1119744 * k + 1104641 := by
    unfold C
    simp [show (2239488 * k + 2209282) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 1104641) = 3359232 * k + 3313924 := by
    unfold C
    simp [show (1119744 * k + 1104641) % 2 ≠ 0 by omega]
    omega
  have h18 : C (3359232 * k + 3313924) = 1679616 * k + 1656962 := by
    unfold C
    simp [show (3359232 * k + 3313924) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 1656962) = 839808 * k + 828481 := by
    unfold C
    simp [show (1679616 * k + 1656962) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 828481) = 2519424 * k + 2485444 := by
    unfold C
    simp [show (839808 * k + 828481) % 2 ≠ 0 by omega]
    omega
  have h21 : C (2519424 * k + 2485444) = 1259712 * k + 1242722 := by
    unfold C
    simp [show (2519424 * k + 2485444) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 1242722) = 629856 * k + 621361 := by
    unfold C
    simp [show (1259712 * k + 1242722) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 621361) = 1889568 * k + 1864084 := by
    unfold C
    simp [show (629856 * k + 621361) % 2 ≠ 0 by omega]
    omega
  have h24 : C (1889568 * k + 1864084) = 944784 * k + 932042 := by
    unfold C
    simp [show (1889568 * k + 1864084) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 932042) = 472392 * k + 466021 := by
    unfold C
    simp [show (944784 * k + 932042) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 466021) = 1417176 * k + 1398064 := by
    unfold C
    simp [show (472392 * k + 466021) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 1398064) = 708588 * k + 699032 := by
    unfold C
    simp [show (1417176 * k + 1398064) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 699032) = 354294 * k + 349516 := by
    unfold C
    simp [show (708588 * k + 699032) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 349516) = 177147 * k + 174758 := by
    unfold C
    simp [show (354294 * k + 349516) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 258607) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 258607))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_259007 : ∀ k : Nat,
    iterate (262144 * k + 259007) 29 = 177147 * k + 175028 ∧
      177147 * k + 175028 < 262144 * k + 259007 := by
  intro k
  have h1 : C (262144 * k + 259007) = 786432 * k + 777022 := by
    unfold C
    simp [show (262144 * k + 259007) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 777022) = 393216 * k + 388511 := by
    unfold C
    simp [show (786432 * k + 777022) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 388511) = 1179648 * k + 1165534 := by
    unfold C
    simp [show (393216 * k + 388511) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 1165534) = 589824 * k + 582767 := by
    unfold C
    simp [show (1179648 * k + 1165534) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 582767) = 1769472 * k + 1748302 := by
    unfold C
    simp [show (589824 * k + 582767) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 1748302) = 884736 * k + 874151 := by
    unfold C
    simp [show (1769472 * k + 1748302) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 874151) = 2654208 * k + 2622454 := by
    unfold C
    simp [show (884736 * k + 874151) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 2622454) = 1327104 * k + 1311227 := by
    unfold C
    simp [show (2654208 * k + 2622454) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 1311227) = 3981312 * k + 3933682 := by
    unfold C
    simp [show (1327104 * k + 1311227) % 2 ≠ 0 by omega]
    omega
  have h10 : C (3981312 * k + 3933682) = 1990656 * k + 1966841 := by
    unfold C
    simp [show (3981312 * k + 3933682) % 2 = 0 by omega]
    omega
  have h11 : C (1990656 * k + 1966841) = 5971968 * k + 5900524 := by
    unfold C
    simp [show (1990656 * k + 1966841) % 2 ≠ 0 by omega]
    omega
  have h12 : C (5971968 * k + 5900524) = 2985984 * k + 2950262 := by
    unfold C
    simp [show (5971968 * k + 5900524) % 2 = 0 by omega]
    omega
  have h13 : C (2985984 * k + 2950262) = 1492992 * k + 1475131 := by
    unfold C
    simp [show (2985984 * k + 2950262) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 1475131) = 4478976 * k + 4425394 := by
    unfold C
    simp [show (1492992 * k + 1475131) % 2 ≠ 0 by omega]
    omega
  have h15 : C (4478976 * k + 4425394) = 2239488 * k + 2212697 := by
    unfold C
    simp [show (4478976 * k + 4425394) % 2 = 0 by omega]
    omega
  have h16 : C (2239488 * k + 2212697) = 6718464 * k + 6638092 := by
    unfold C
    simp [show (2239488 * k + 2212697) % 2 ≠ 0 by omega]
    omega
  have h17 : C (6718464 * k + 6638092) = 3359232 * k + 3319046 := by
    unfold C
    simp [show (6718464 * k + 6638092) % 2 = 0 by omega]
    omega
  have h18 : C (3359232 * k + 3319046) = 1679616 * k + 1659523 := by
    unfold C
    simp [show (3359232 * k + 3319046) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 1659523) = 5038848 * k + 4978570 := by
    unfold C
    simp [show (1679616 * k + 1659523) % 2 ≠ 0 by omega]
    omega
  have h20 : C (5038848 * k + 4978570) = 2519424 * k + 2489285 := by
    unfold C
    simp [show (5038848 * k + 4978570) % 2 = 0 by omega]
    omega
  have h21 : C (2519424 * k + 2489285) = 7558272 * k + 7467856 := by
    unfold C
    simp [show (2519424 * k + 2489285) % 2 ≠ 0 by omega]
    omega
  have h22 : C (7558272 * k + 7467856) = 3779136 * k + 3733928 := by
    unfold C
    simp [show (7558272 * k + 7467856) % 2 = 0 by omega]
    omega
  have h23 : C (3779136 * k + 3733928) = 1889568 * k + 1866964 := by
    unfold C
    simp [show (3779136 * k + 3733928) % 2 = 0 by omega]
    omega
  have h24 : C (1889568 * k + 1866964) = 944784 * k + 933482 := by
    unfold C
    simp [show (1889568 * k + 1866964) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 933482) = 472392 * k + 466741 := by
    unfold C
    simp [show (944784 * k + 933482) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 466741) = 1417176 * k + 1400224 := by
    unfold C
    simp [show (472392 * k + 466741) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 1400224) = 708588 * k + 700112 := by
    unfold C
    simp [show (1417176 * k + 1400224) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 700112) = 354294 * k + 350056 := by
    unfold C
    simp [show (708588 * k + 700112) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 350056) = 177147 * k + 175028 := by
    unfold C
    simp [show (354294 * k + 350056) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 259007) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 259007))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_259455 : ∀ k : Nat,
    iterate (262144 * k + 259455) 29 = 177147 * k + 175331 ∧
      177147 * k + 175331 < 262144 * k + 259455 := by
  intro k
  have h1 : C (262144 * k + 259455) = 786432 * k + 778366 := by
    unfold C
    simp [show (262144 * k + 259455) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 778366) = 393216 * k + 389183 := by
    unfold C
    simp [show (786432 * k + 778366) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 389183) = 1179648 * k + 1167550 := by
    unfold C
    simp [show (393216 * k + 389183) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 1167550) = 589824 * k + 583775 := by
    unfold C
    simp [show (1179648 * k + 1167550) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 583775) = 1769472 * k + 1751326 := by
    unfold C
    simp [show (589824 * k + 583775) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 1751326) = 884736 * k + 875663 := by
    unfold C
    simp [show (1769472 * k + 1751326) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 875663) = 2654208 * k + 2626990 := by
    unfold C
    simp [show (884736 * k + 875663) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 2626990) = 1327104 * k + 1313495 := by
    unfold C
    simp [show (2654208 * k + 2626990) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 1313495) = 3981312 * k + 3940486 := by
    unfold C
    simp [show (1327104 * k + 1313495) % 2 ≠ 0 by omega]
    omega
  have h10 : C (3981312 * k + 3940486) = 1990656 * k + 1970243 := by
    unfold C
    simp [show (3981312 * k + 3940486) % 2 = 0 by omega]
    omega
  have h11 : C (1990656 * k + 1970243) = 5971968 * k + 5910730 := by
    unfold C
    simp [show (1990656 * k + 1970243) % 2 ≠ 0 by omega]
    omega
  have h12 : C (5971968 * k + 5910730) = 2985984 * k + 2955365 := by
    unfold C
    simp [show (5971968 * k + 5910730) % 2 = 0 by omega]
    omega
  have h13 : C (2985984 * k + 2955365) = 8957952 * k + 8866096 := by
    unfold C
    simp [show (2985984 * k + 2955365) % 2 ≠ 0 by omega]
    omega
  have h14 : C (8957952 * k + 8866096) = 4478976 * k + 4433048 := by
    unfold C
    simp [show (8957952 * k + 8866096) % 2 = 0 by omega]
    omega
  have h15 : C (4478976 * k + 4433048) = 2239488 * k + 2216524 := by
    unfold C
    simp [show (4478976 * k + 4433048) % 2 = 0 by omega]
    omega
  have h16 : C (2239488 * k + 2216524) = 1119744 * k + 1108262 := by
    unfold C
    simp [show (2239488 * k + 2216524) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 1108262) = 559872 * k + 554131 := by
    unfold C
    simp [show (1119744 * k + 1108262) % 2 = 0 by omega]
    omega
  have h18 : C (559872 * k + 554131) = 1679616 * k + 1662394 := by
    unfold C
    simp [show (559872 * k + 554131) % 2 ≠ 0 by omega]
    omega
  have h19 : C (1679616 * k + 1662394) = 839808 * k + 831197 := by
    unfold C
    simp [show (1679616 * k + 1662394) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 831197) = 2519424 * k + 2493592 := by
    unfold C
    simp [show (839808 * k + 831197) % 2 ≠ 0 by omega]
    omega
  have h21 : C (2519424 * k + 2493592) = 1259712 * k + 1246796 := by
    unfold C
    simp [show (2519424 * k + 2493592) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 1246796) = 629856 * k + 623398 := by
    unfold C
    simp [show (1259712 * k + 1246796) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 623398) = 314928 * k + 311699 := by
    unfold C
    simp [show (629856 * k + 623398) % 2 = 0 by omega]
    omega
  have h24 : C (314928 * k + 311699) = 944784 * k + 935098 := by
    unfold C
    simp [show (314928 * k + 311699) % 2 ≠ 0 by omega]
    omega
  have h25 : C (944784 * k + 935098) = 472392 * k + 467549 := by
    unfold C
    simp [show (944784 * k + 935098) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 467549) = 1417176 * k + 1402648 := by
    unfold C
    simp [show (472392 * k + 467549) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 1402648) = 708588 * k + 701324 := by
    unfold C
    simp [show (1417176 * k + 1402648) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 701324) = 354294 * k + 350662 := by
    unfold C
    simp [show (708588 * k + 701324) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 350662) = 177147 * k + 175331 := by
    unfold C
    simp [show (354294 * k + 350662) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 259455) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 259455))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_260319 : ∀ k : Nat,
    iterate (262144 * k + 260319) 29 = 177147 * k + 175915 ∧
      177147 * k + 175915 < 262144 * k + 260319 := by
  intro k
  have h1 : C (262144 * k + 260319) = 786432 * k + 780958 := by
    unfold C
    simp [show (262144 * k + 260319) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 780958) = 393216 * k + 390479 := by
    unfold C
    simp [show (786432 * k + 780958) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 390479) = 1179648 * k + 1171438 := by
    unfold C
    simp [show (393216 * k + 390479) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 1171438) = 589824 * k + 585719 := by
    unfold C
    simp [show (1179648 * k + 1171438) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 585719) = 1769472 * k + 1757158 := by
    unfold C
    simp [show (589824 * k + 585719) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 1757158) = 884736 * k + 878579 := by
    unfold C
    simp [show (1769472 * k + 1757158) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 878579) = 2654208 * k + 2635738 := by
    unfold C
    simp [show (884736 * k + 878579) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 2635738) = 1327104 * k + 1317869 := by
    unfold C
    simp [show (2654208 * k + 2635738) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 1317869) = 3981312 * k + 3953608 := by
    unfold C
    simp [show (1327104 * k + 1317869) % 2 ≠ 0 by omega]
    omega
  have h10 : C (3981312 * k + 3953608) = 1990656 * k + 1976804 := by
    unfold C
    simp [show (3981312 * k + 3953608) % 2 = 0 by omega]
    omega
  have h11 : C (1990656 * k + 1976804) = 995328 * k + 988402 := by
    unfold C
    simp [show (1990656 * k + 1976804) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 988402) = 497664 * k + 494201 := by
    unfold C
    simp [show (995328 * k + 988402) % 2 = 0 by omega]
    omega
  have h13 : C (497664 * k + 494201) = 1492992 * k + 1482604 := by
    unfold C
    simp [show (497664 * k + 494201) % 2 ≠ 0 by omega]
    omega
  have h14 : C (1492992 * k + 1482604) = 746496 * k + 741302 := by
    unfold C
    simp [show (1492992 * k + 1482604) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 741302) = 373248 * k + 370651 := by
    unfold C
    simp [show (746496 * k + 741302) % 2 = 0 by omega]
    omega
  have h16 : C (373248 * k + 370651) = 1119744 * k + 1111954 := by
    unfold C
    simp [show (373248 * k + 370651) % 2 ≠ 0 by omega]
    omega
  have h17 : C (1119744 * k + 1111954) = 559872 * k + 555977 := by
    unfold C
    simp [show (1119744 * k + 1111954) % 2 = 0 by omega]
    omega
  have h18 : C (559872 * k + 555977) = 1679616 * k + 1667932 := by
    unfold C
    simp [show (559872 * k + 555977) % 2 ≠ 0 by omega]
    omega
  have h19 : C (1679616 * k + 1667932) = 839808 * k + 833966 := by
    unfold C
    simp [show (1679616 * k + 1667932) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 833966) = 419904 * k + 416983 := by
    unfold C
    simp [show (839808 * k + 833966) % 2 = 0 by omega]
    omega
  have h21 : C (419904 * k + 416983) = 1259712 * k + 1250950 := by
    unfold C
    simp [show (419904 * k + 416983) % 2 ≠ 0 by omega]
    omega
  have h22 : C (1259712 * k + 1250950) = 629856 * k + 625475 := by
    unfold C
    simp [show (1259712 * k + 1250950) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 625475) = 1889568 * k + 1876426 := by
    unfold C
    simp [show (629856 * k + 625475) % 2 ≠ 0 by omega]
    omega
  have h24 : C (1889568 * k + 1876426) = 944784 * k + 938213 := by
    unfold C
    simp [show (1889568 * k + 1876426) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 938213) = 2834352 * k + 2814640 := by
    unfold C
    simp [show (944784 * k + 938213) % 2 ≠ 0 by omega]
    omega
  have h26 : C (2834352 * k + 2814640) = 1417176 * k + 1407320 := by
    unfold C
    simp [show (2834352 * k + 2814640) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 1407320) = 708588 * k + 703660 := by
    unfold C
    simp [show (1417176 * k + 1407320) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 703660) = 354294 * k + 351830 := by
    unfold C
    simp [show (708588 * k + 703660) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 351830) = 177147 * k + 175915 := by
    unfold C
    simp [show (354294 * k + 351830) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 260319) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 260319))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_260347 : ∀ k : Nat,
    iterate (262144 * k + 260347) 29 = 177147 * k + 175934 ∧
      177147 * k + 175934 < 262144 * k + 260347 := by
  intro k
  have h1 : C (262144 * k + 260347) = 786432 * k + 781042 := by
    unfold C
    simp [show (262144 * k + 260347) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 781042) = 393216 * k + 390521 := by
    unfold C
    simp [show (786432 * k + 781042) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 390521) = 1179648 * k + 1171564 := by
    unfold C
    simp [show (393216 * k + 390521) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 1171564) = 589824 * k + 585782 := by
    unfold C
    simp [show (1179648 * k + 1171564) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 585782) = 294912 * k + 292891 := by
    unfold C
    simp [show (589824 * k + 585782) % 2 = 0 by omega]
    omega
  have h6 : C (294912 * k + 292891) = 884736 * k + 878674 := by
    unfold C
    simp [show (294912 * k + 292891) % 2 ≠ 0 by omega]
    omega
  have h7 : C (884736 * k + 878674) = 442368 * k + 439337 := by
    unfold C
    simp [show (884736 * k + 878674) % 2 = 0 by omega]
    omega
  have h8 : C (442368 * k + 439337) = 1327104 * k + 1318012 := by
    unfold C
    simp [show (442368 * k + 439337) % 2 ≠ 0 by omega]
    omega
  have h9 : C (1327104 * k + 1318012) = 663552 * k + 659006 := by
    unfold C
    simp [show (1327104 * k + 1318012) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 659006) = 331776 * k + 329503 := by
    unfold C
    simp [show (663552 * k + 659006) % 2 = 0 by omega]
    omega
  have h11 : C (331776 * k + 329503) = 995328 * k + 988510 := by
    unfold C
    simp [show (331776 * k + 329503) % 2 ≠ 0 by omega]
    omega
  have h12 : C (995328 * k + 988510) = 497664 * k + 494255 := by
    unfold C
    simp [show (995328 * k + 988510) % 2 = 0 by omega]
    omega
  have h13 : C (497664 * k + 494255) = 1492992 * k + 1482766 := by
    unfold C
    simp [show (497664 * k + 494255) % 2 ≠ 0 by omega]
    omega
  have h14 : C (1492992 * k + 1482766) = 746496 * k + 741383 := by
    unfold C
    simp [show (1492992 * k + 1482766) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 741383) = 2239488 * k + 2224150 := by
    unfold C
    simp [show (746496 * k + 741383) % 2 ≠ 0 by omega]
    omega
  have h16 : C (2239488 * k + 2224150) = 1119744 * k + 1112075 := by
    unfold C
    simp [show (2239488 * k + 2224150) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 1112075) = 3359232 * k + 3336226 := by
    unfold C
    simp [show (1119744 * k + 1112075) % 2 ≠ 0 by omega]
    omega
  have h18 : C (3359232 * k + 3336226) = 1679616 * k + 1668113 := by
    unfold C
    simp [show (3359232 * k + 3336226) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 1668113) = 5038848 * k + 5004340 := by
    unfold C
    simp [show (1679616 * k + 1668113) % 2 ≠ 0 by omega]
    omega
  have h20 : C (5038848 * k + 5004340) = 2519424 * k + 2502170 := by
    unfold C
    simp [show (5038848 * k + 5004340) % 2 = 0 by omega]
    omega
  have h21 : C (2519424 * k + 2502170) = 1259712 * k + 1251085 := by
    unfold C
    simp [show (2519424 * k + 2502170) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 1251085) = 3779136 * k + 3753256 := by
    unfold C
    simp [show (1259712 * k + 1251085) % 2 ≠ 0 by omega]
    omega
  have h23 : C (3779136 * k + 3753256) = 1889568 * k + 1876628 := by
    unfold C
    simp [show (3779136 * k + 3753256) % 2 = 0 by omega]
    omega
  have h24 : C (1889568 * k + 1876628) = 944784 * k + 938314 := by
    unfold C
    simp [show (1889568 * k + 1876628) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 938314) = 472392 * k + 469157 := by
    unfold C
    simp [show (944784 * k + 938314) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 469157) = 1417176 * k + 1407472 := by
    unfold C
    simp [show (472392 * k + 469157) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 1407472) = 708588 * k + 703736 := by
    unfold C
    simp [show (1417176 * k + 1407472) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 703736) = 354294 * k + 351868 := by
    unfold C
    simp [show (708588 * k + 703736) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 351868) = 177147 * k + 175934 := by
    unfold C
    simp [show (354294 * k + 351868) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 260347) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 260347))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_260479 : ∀ k : Nat,
    iterate (262144 * k + 260479) 29 = 177147 * k + 176023 ∧
      177147 * k + 176023 < 262144 * k + 260479 := by
  intro k
  have h1 : C (262144 * k + 260479) = 786432 * k + 781438 := by
    unfold C
    simp [show (262144 * k + 260479) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 781438) = 393216 * k + 390719 := by
    unfold C
    simp [show (786432 * k + 781438) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 390719) = 1179648 * k + 1172158 := by
    unfold C
    simp [show (393216 * k + 390719) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 1172158) = 589824 * k + 586079 := by
    unfold C
    simp [show (1179648 * k + 1172158) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 586079) = 1769472 * k + 1758238 := by
    unfold C
    simp [show (589824 * k + 586079) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 1758238) = 884736 * k + 879119 := by
    unfold C
    simp [show (1769472 * k + 1758238) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 879119) = 2654208 * k + 2637358 := by
    unfold C
    simp [show (884736 * k + 879119) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 2637358) = 1327104 * k + 1318679 := by
    unfold C
    simp [show (2654208 * k + 2637358) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 1318679) = 3981312 * k + 3956038 := by
    unfold C
    simp [show (1327104 * k + 1318679) % 2 ≠ 0 by omega]
    omega
  have h10 : C (3981312 * k + 3956038) = 1990656 * k + 1978019 := by
    unfold C
    simp [show (3981312 * k + 3956038) % 2 = 0 by omega]
    omega
  have h11 : C (1990656 * k + 1978019) = 5971968 * k + 5934058 := by
    unfold C
    simp [show (1990656 * k + 1978019) % 2 ≠ 0 by omega]
    omega
  have h12 : C (5971968 * k + 5934058) = 2985984 * k + 2967029 := by
    unfold C
    simp [show (5971968 * k + 5934058) % 2 = 0 by omega]
    omega
  have h13 : C (2985984 * k + 2967029) = 8957952 * k + 8901088 := by
    unfold C
    simp [show (2985984 * k + 2967029) % 2 ≠ 0 by omega]
    omega
  have h14 : C (8957952 * k + 8901088) = 4478976 * k + 4450544 := by
    unfold C
    simp [show (8957952 * k + 8901088) % 2 = 0 by omega]
    omega
  have h15 : C (4478976 * k + 4450544) = 2239488 * k + 2225272 := by
    unfold C
    simp [show (4478976 * k + 4450544) % 2 = 0 by omega]
    omega
  have h16 : C (2239488 * k + 2225272) = 1119744 * k + 1112636 := by
    unfold C
    simp [show (2239488 * k + 2225272) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 1112636) = 559872 * k + 556318 := by
    unfold C
    simp [show (1119744 * k + 1112636) % 2 = 0 by omega]
    omega
  have h18 : C (559872 * k + 556318) = 279936 * k + 278159 := by
    unfold C
    simp [show (559872 * k + 556318) % 2 = 0 by omega]
    omega
  have h19 : C (279936 * k + 278159) = 839808 * k + 834478 := by
    unfold C
    simp [show (279936 * k + 278159) % 2 ≠ 0 by omega]
    omega
  have h20 : C (839808 * k + 834478) = 419904 * k + 417239 := by
    unfold C
    simp [show (839808 * k + 834478) % 2 = 0 by omega]
    omega
  have h21 : C (419904 * k + 417239) = 1259712 * k + 1251718 := by
    unfold C
    simp [show (419904 * k + 417239) % 2 ≠ 0 by omega]
    omega
  have h22 : C (1259712 * k + 1251718) = 629856 * k + 625859 := by
    unfold C
    simp [show (1259712 * k + 1251718) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 625859) = 1889568 * k + 1877578 := by
    unfold C
    simp [show (629856 * k + 625859) % 2 ≠ 0 by omega]
    omega
  have h24 : C (1889568 * k + 1877578) = 944784 * k + 938789 := by
    unfold C
    simp [show (1889568 * k + 1877578) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 938789) = 2834352 * k + 2816368 := by
    unfold C
    simp [show (944784 * k + 938789) % 2 ≠ 0 by omega]
    omega
  have h26 : C (2834352 * k + 2816368) = 1417176 * k + 1408184 := by
    unfold C
    simp [show (2834352 * k + 2816368) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 1408184) = 708588 * k + 704092 := by
    unfold C
    simp [show (1417176 * k + 1408184) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 704092) = 354294 * k + 352046 := by
    unfold C
    simp [show (708588 * k + 704092) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 352046) = 177147 * k + 176023 := by
    unfold C
    simp [show (354294 * k + 352046) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 260479) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 260479))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_260711 : ∀ k : Nat,
    iterate (262144 * k + 260711) 29 = 177147 * k + 176180 ∧
      177147 * k + 176180 < 262144 * k + 260711 := by
  intro k
  have h1 : C (262144 * k + 260711) = 786432 * k + 782134 := by
    unfold C
    simp [show (262144 * k + 260711) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 782134) = 393216 * k + 391067 := by
    unfold C
    simp [show (786432 * k + 782134) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 391067) = 1179648 * k + 1173202 := by
    unfold C
    simp [show (393216 * k + 391067) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 1173202) = 589824 * k + 586601 := by
    unfold C
    simp [show (1179648 * k + 1173202) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 586601) = 1769472 * k + 1759804 := by
    unfold C
    simp [show (589824 * k + 586601) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 1759804) = 884736 * k + 879902 := by
    unfold C
    simp [show (1769472 * k + 1759804) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 879902) = 442368 * k + 439951 := by
    unfold C
    simp [show (884736 * k + 879902) % 2 = 0 by omega]
    omega
  have h8 : C (442368 * k + 439951) = 1327104 * k + 1319854 := by
    unfold C
    simp [show (442368 * k + 439951) % 2 ≠ 0 by omega]
    omega
  have h9 : C (1327104 * k + 1319854) = 663552 * k + 659927 := by
    unfold C
    simp [show (1327104 * k + 1319854) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 659927) = 1990656 * k + 1979782 := by
    unfold C
    simp [show (663552 * k + 659927) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 1979782) = 995328 * k + 989891 := by
    unfold C
    simp [show (1990656 * k + 1979782) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 989891) = 2985984 * k + 2969674 := by
    unfold C
    simp [show (995328 * k + 989891) % 2 ≠ 0 by omega]
    omega
  have h13 : C (2985984 * k + 2969674) = 1492992 * k + 1484837 := by
    unfold C
    simp [show (2985984 * k + 2969674) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 1484837) = 4478976 * k + 4454512 := by
    unfold C
    simp [show (1492992 * k + 1484837) % 2 ≠ 0 by omega]
    omega
  have h15 : C (4478976 * k + 4454512) = 2239488 * k + 2227256 := by
    unfold C
    simp [show (4478976 * k + 4454512) % 2 = 0 by omega]
    omega
  have h16 : C (2239488 * k + 2227256) = 1119744 * k + 1113628 := by
    unfold C
    simp [show (2239488 * k + 2227256) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 1113628) = 559872 * k + 556814 := by
    unfold C
    simp [show (1119744 * k + 1113628) % 2 = 0 by omega]
    omega
  have h18 : C (559872 * k + 556814) = 279936 * k + 278407 := by
    unfold C
    simp [show (559872 * k + 556814) % 2 = 0 by omega]
    omega
  have h19 : C (279936 * k + 278407) = 839808 * k + 835222 := by
    unfold C
    simp [show (279936 * k + 278407) % 2 ≠ 0 by omega]
    omega
  have h20 : C (839808 * k + 835222) = 419904 * k + 417611 := by
    unfold C
    simp [show (839808 * k + 835222) % 2 = 0 by omega]
    omega
  have h21 : C (419904 * k + 417611) = 1259712 * k + 1252834 := by
    unfold C
    simp [show (419904 * k + 417611) % 2 ≠ 0 by omega]
    omega
  have h22 : C (1259712 * k + 1252834) = 629856 * k + 626417 := by
    unfold C
    simp [show (1259712 * k + 1252834) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 626417) = 1889568 * k + 1879252 := by
    unfold C
    simp [show (629856 * k + 626417) % 2 ≠ 0 by omega]
    omega
  have h24 : C (1889568 * k + 1879252) = 944784 * k + 939626 := by
    unfold C
    simp [show (1889568 * k + 1879252) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 939626) = 472392 * k + 469813 := by
    unfold C
    simp [show (944784 * k + 939626) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 469813) = 1417176 * k + 1409440 := by
    unfold C
    simp [show (472392 * k + 469813) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 1409440) = 708588 * k + 704720 := by
    unfold C
    simp [show (1417176 * k + 1409440) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 704720) = 354294 * k + 352360 := by
    unfold C
    simp [show (708588 * k + 704720) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 352360) = 177147 * k + 176180 := by
    unfold C
    simp [show (354294 * k + 352360) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 260711) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 260711))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_260799 : ∀ k : Nat,
    iterate (262144 * k + 260799) 29 = 177147 * k + 176239 ∧
      177147 * k + 176239 < 262144 * k + 260799 := by
  intro k
  have h1 : C (262144 * k + 260799) = 786432 * k + 782398 := by
    unfold C
    simp [show (262144 * k + 260799) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 782398) = 393216 * k + 391199 := by
    unfold C
    simp [show (786432 * k + 782398) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 391199) = 1179648 * k + 1173598 := by
    unfold C
    simp [show (393216 * k + 391199) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 1173598) = 589824 * k + 586799 := by
    unfold C
    simp [show (1179648 * k + 1173598) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 586799) = 1769472 * k + 1760398 := by
    unfold C
    simp [show (589824 * k + 586799) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 1760398) = 884736 * k + 880199 := by
    unfold C
    simp [show (1769472 * k + 1760398) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 880199) = 2654208 * k + 2640598 := by
    unfold C
    simp [show (884736 * k + 880199) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 2640598) = 1327104 * k + 1320299 := by
    unfold C
    simp [show (2654208 * k + 2640598) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 1320299) = 3981312 * k + 3960898 := by
    unfold C
    simp [show (1327104 * k + 1320299) % 2 ≠ 0 by omega]
    omega
  have h10 : C (3981312 * k + 3960898) = 1990656 * k + 1980449 := by
    unfold C
    simp [show (3981312 * k + 3960898) % 2 = 0 by omega]
    omega
  have h11 : C (1990656 * k + 1980449) = 5971968 * k + 5941348 := by
    unfold C
    simp [show (1990656 * k + 1980449) % 2 ≠ 0 by omega]
    omega
  have h12 : C (5971968 * k + 5941348) = 2985984 * k + 2970674 := by
    unfold C
    simp [show (5971968 * k + 5941348) % 2 = 0 by omega]
    omega
  have h13 : C (2985984 * k + 2970674) = 1492992 * k + 1485337 := by
    unfold C
    simp [show (2985984 * k + 2970674) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 1485337) = 4478976 * k + 4456012 := by
    unfold C
    simp [show (1492992 * k + 1485337) % 2 ≠ 0 by omega]
    omega
  have h15 : C (4478976 * k + 4456012) = 2239488 * k + 2228006 := by
    unfold C
    simp [show (4478976 * k + 4456012) % 2 = 0 by omega]
    omega
  have h16 : C (2239488 * k + 2228006) = 1119744 * k + 1114003 := by
    unfold C
    simp [show (2239488 * k + 2228006) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 1114003) = 3359232 * k + 3342010 := by
    unfold C
    simp [show (1119744 * k + 1114003) % 2 ≠ 0 by omega]
    omega
  have h18 : C (3359232 * k + 3342010) = 1679616 * k + 1671005 := by
    unfold C
    simp [show (3359232 * k + 3342010) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 1671005) = 5038848 * k + 5013016 := by
    unfold C
    simp [show (1679616 * k + 1671005) % 2 ≠ 0 by omega]
    omega
  have h20 : C (5038848 * k + 5013016) = 2519424 * k + 2506508 := by
    unfold C
    simp [show (5038848 * k + 5013016) % 2 = 0 by omega]
    omega
  have h21 : C (2519424 * k + 2506508) = 1259712 * k + 1253254 := by
    unfold C
    simp [show (2519424 * k + 2506508) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 1253254) = 629856 * k + 626627 := by
    unfold C
    simp [show (1259712 * k + 1253254) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 626627) = 1889568 * k + 1879882 := by
    unfold C
    simp [show (629856 * k + 626627) % 2 ≠ 0 by omega]
    omega
  have h24 : C (1889568 * k + 1879882) = 944784 * k + 939941 := by
    unfold C
    simp [show (1889568 * k + 1879882) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 939941) = 2834352 * k + 2819824 := by
    unfold C
    simp [show (944784 * k + 939941) % 2 ≠ 0 by omega]
    omega
  have h26 : C (2834352 * k + 2819824) = 1417176 * k + 1409912 := by
    unfold C
    simp [show (2834352 * k + 2819824) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 1409912) = 708588 * k + 704956 := by
    unfold C
    simp [show (1417176 * k + 1409912) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 704956) = 354294 * k + 352478 := by
    unfold C
    simp [show (708588 * k + 704956) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 352478) = 177147 * k + 176239 := by
    unfold C
    simp [show (354294 * k + 352478) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 260799) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 260799))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_261151 : ∀ k : Nat,
    iterate (262144 * k + 261151) 29 = 177147 * k + 176477 ∧
      177147 * k + 176477 < 262144 * k + 261151 := by
  intro k
  have h1 : C (262144 * k + 261151) = 786432 * k + 783454 := by
    unfold C
    simp [show (262144 * k + 261151) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 783454) = 393216 * k + 391727 := by
    unfold C
    simp [show (786432 * k + 783454) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 391727) = 1179648 * k + 1175182 := by
    unfold C
    simp [show (393216 * k + 391727) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 1175182) = 589824 * k + 587591 := by
    unfold C
    simp [show (1179648 * k + 1175182) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 587591) = 1769472 * k + 1762774 := by
    unfold C
    simp [show (589824 * k + 587591) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 1762774) = 884736 * k + 881387 := by
    unfold C
    simp [show (1769472 * k + 1762774) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 881387) = 2654208 * k + 2644162 := by
    unfold C
    simp [show (884736 * k + 881387) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 2644162) = 1327104 * k + 1322081 := by
    unfold C
    simp [show (2654208 * k + 2644162) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 1322081) = 3981312 * k + 3966244 := by
    unfold C
    simp [show (1327104 * k + 1322081) % 2 ≠ 0 by omega]
    omega
  have h10 : C (3981312 * k + 3966244) = 1990656 * k + 1983122 := by
    unfold C
    simp [show (3981312 * k + 3966244) % 2 = 0 by omega]
    omega
  have h11 : C (1990656 * k + 1983122) = 995328 * k + 991561 := by
    unfold C
    simp [show (1990656 * k + 1983122) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 991561) = 2985984 * k + 2974684 := by
    unfold C
    simp [show (995328 * k + 991561) % 2 ≠ 0 by omega]
    omega
  have h13 : C (2985984 * k + 2974684) = 1492992 * k + 1487342 := by
    unfold C
    simp [show (2985984 * k + 2974684) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 1487342) = 746496 * k + 743671 := by
    unfold C
    simp [show (1492992 * k + 1487342) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 743671) = 2239488 * k + 2231014 := by
    unfold C
    simp [show (746496 * k + 743671) % 2 ≠ 0 by omega]
    omega
  have h16 : C (2239488 * k + 2231014) = 1119744 * k + 1115507 := by
    unfold C
    simp [show (2239488 * k + 2231014) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 1115507) = 3359232 * k + 3346522 := by
    unfold C
    simp [show (1119744 * k + 1115507) % 2 ≠ 0 by omega]
    omega
  have h18 : C (3359232 * k + 3346522) = 1679616 * k + 1673261 := by
    unfold C
    simp [show (3359232 * k + 3346522) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 1673261) = 5038848 * k + 5019784 := by
    unfold C
    simp [show (1679616 * k + 1673261) % 2 ≠ 0 by omega]
    omega
  have h20 : C (5038848 * k + 5019784) = 2519424 * k + 2509892 := by
    unfold C
    simp [show (5038848 * k + 5019784) % 2 = 0 by omega]
    omega
  have h21 : C (2519424 * k + 2509892) = 1259712 * k + 1254946 := by
    unfold C
    simp [show (2519424 * k + 2509892) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 1254946) = 629856 * k + 627473 := by
    unfold C
    simp [show (1259712 * k + 1254946) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 627473) = 1889568 * k + 1882420 := by
    unfold C
    simp [show (629856 * k + 627473) % 2 ≠ 0 by omega]
    omega
  have h24 : C (1889568 * k + 1882420) = 944784 * k + 941210 := by
    unfold C
    simp [show (1889568 * k + 1882420) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 941210) = 472392 * k + 470605 := by
    unfold C
    simp [show (944784 * k + 941210) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 470605) = 1417176 * k + 1411816 := by
    unfold C
    simp [show (472392 * k + 470605) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 1411816) = 708588 * k + 705908 := by
    unfold C
    simp [show (1417176 * k + 1411816) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 705908) = 354294 * k + 352954 := by
    unfold C
    simp [show (708588 * k + 705908) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 352954) = 177147 * k + 176477 := by
    unfold C
    simp [show (354294 * k + 352954) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 261151) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 261151))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_261231 : ∀ k : Nat,
    iterate (262144 * k + 261231) 29 = 177147 * k + 176531 ∧
      177147 * k + 176531 < 262144 * k + 261231 := by
  intro k
  have h1 : C (262144 * k + 261231) = 786432 * k + 783694 := by
    unfold C
    simp [show (262144 * k + 261231) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 783694) = 393216 * k + 391847 := by
    unfold C
    simp [show (786432 * k + 783694) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 391847) = 1179648 * k + 1175542 := by
    unfold C
    simp [show (393216 * k + 391847) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 1175542) = 589824 * k + 587771 := by
    unfold C
    simp [show (1179648 * k + 1175542) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 587771) = 1769472 * k + 1763314 := by
    unfold C
    simp [show (589824 * k + 587771) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 1763314) = 884736 * k + 881657 := by
    unfold C
    simp [show (1769472 * k + 1763314) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 881657) = 2654208 * k + 2644972 := by
    unfold C
    simp [show (884736 * k + 881657) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 2644972) = 1327104 * k + 1322486 := by
    unfold C
    simp [show (2654208 * k + 2644972) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 1322486) = 663552 * k + 661243 := by
    unfold C
    simp [show (1327104 * k + 1322486) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 661243) = 1990656 * k + 1983730 := by
    unfold C
    simp [show (663552 * k + 661243) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 1983730) = 995328 * k + 991865 := by
    unfold C
    simp [show (1990656 * k + 1983730) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 991865) = 2985984 * k + 2975596 := by
    unfold C
    simp [show (995328 * k + 991865) % 2 ≠ 0 by omega]
    omega
  have h13 : C (2985984 * k + 2975596) = 1492992 * k + 1487798 := by
    unfold C
    simp [show (2985984 * k + 2975596) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 1487798) = 746496 * k + 743899 := by
    unfold C
    simp [show (1492992 * k + 1487798) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 743899) = 2239488 * k + 2231698 := by
    unfold C
    simp [show (746496 * k + 743899) % 2 ≠ 0 by omega]
    omega
  have h16 : C (2239488 * k + 2231698) = 1119744 * k + 1115849 := by
    unfold C
    simp [show (2239488 * k + 2231698) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 1115849) = 3359232 * k + 3347548 := by
    unfold C
    simp [show (1119744 * k + 1115849) % 2 ≠ 0 by omega]
    omega
  have h18 : C (3359232 * k + 3347548) = 1679616 * k + 1673774 := by
    unfold C
    simp [show (3359232 * k + 3347548) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 1673774) = 839808 * k + 836887 := by
    unfold C
    simp [show (1679616 * k + 1673774) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 836887) = 2519424 * k + 2510662 := by
    unfold C
    simp [show (839808 * k + 836887) % 2 ≠ 0 by omega]
    omega
  have h21 : C (2519424 * k + 2510662) = 1259712 * k + 1255331 := by
    unfold C
    simp [show (2519424 * k + 2510662) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 1255331) = 3779136 * k + 3765994 := by
    unfold C
    simp [show (1259712 * k + 1255331) % 2 ≠ 0 by omega]
    omega
  have h23 : C (3779136 * k + 3765994) = 1889568 * k + 1882997 := by
    unfold C
    simp [show (3779136 * k + 3765994) % 2 = 0 by omega]
    omega
  have h24 : C (1889568 * k + 1882997) = 5668704 * k + 5648992 := by
    unfold C
    simp [show (1889568 * k + 1882997) % 2 ≠ 0 by omega]
    omega
  have h25 : C (5668704 * k + 5648992) = 2834352 * k + 2824496 := by
    unfold C
    simp [show (5668704 * k + 5648992) % 2 = 0 by omega]
    omega
  have h26 : C (2834352 * k + 2824496) = 1417176 * k + 1412248 := by
    unfold C
    simp [show (2834352 * k + 2824496) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 1412248) = 708588 * k + 706124 := by
    unfold C
    simp [show (1417176 * k + 1412248) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 706124) = 354294 * k + 353062 := by
    unfold C
    simp [show (708588 * k + 706124) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 353062) = 177147 * k + 176531 := by
    unfold C
    simp [show (354294 * k + 353062) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 261231) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 261231))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_261287 : ∀ k : Nat,
    iterate (262144 * k + 261287) 29 = 177147 * k + 176569 ∧
      177147 * k + 176569 < 262144 * k + 261287 := by
  intro k
  have h1 : C (262144 * k + 261287) = 786432 * k + 783862 := by
    unfold C
    simp [show (262144 * k + 261287) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 783862) = 393216 * k + 391931 := by
    unfold C
    simp [show (786432 * k + 783862) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 391931) = 1179648 * k + 1175794 := by
    unfold C
    simp [show (393216 * k + 391931) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 1175794) = 589824 * k + 587897 := by
    unfold C
    simp [show (1179648 * k + 1175794) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 587897) = 1769472 * k + 1763692 := by
    unfold C
    simp [show (589824 * k + 587897) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 1763692) = 884736 * k + 881846 := by
    unfold C
    simp [show (1769472 * k + 1763692) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 881846) = 442368 * k + 440923 := by
    unfold C
    simp [show (884736 * k + 881846) % 2 = 0 by omega]
    omega
  have h8 : C (442368 * k + 440923) = 1327104 * k + 1322770 := by
    unfold C
    simp [show (442368 * k + 440923) % 2 ≠ 0 by omega]
    omega
  have h9 : C (1327104 * k + 1322770) = 663552 * k + 661385 := by
    unfold C
    simp [show (1327104 * k + 1322770) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 661385) = 1990656 * k + 1984156 := by
    unfold C
    simp [show (663552 * k + 661385) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 1984156) = 995328 * k + 992078 := by
    unfold C
    simp [show (1990656 * k + 1984156) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 992078) = 497664 * k + 496039 := by
    unfold C
    simp [show (995328 * k + 992078) % 2 = 0 by omega]
    omega
  have h13 : C (497664 * k + 496039) = 1492992 * k + 1488118 := by
    unfold C
    simp [show (497664 * k + 496039) % 2 ≠ 0 by omega]
    omega
  have h14 : C (1492992 * k + 1488118) = 746496 * k + 744059 := by
    unfold C
    simp [show (1492992 * k + 1488118) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 744059) = 2239488 * k + 2232178 := by
    unfold C
    simp [show (746496 * k + 744059) % 2 ≠ 0 by omega]
    omega
  have h16 : C (2239488 * k + 2232178) = 1119744 * k + 1116089 := by
    unfold C
    simp [show (2239488 * k + 2232178) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 1116089) = 3359232 * k + 3348268 := by
    unfold C
    simp [show (1119744 * k + 1116089) % 2 ≠ 0 by omega]
    omega
  have h18 : C (3359232 * k + 3348268) = 1679616 * k + 1674134 := by
    unfold C
    simp [show (3359232 * k + 3348268) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 1674134) = 839808 * k + 837067 := by
    unfold C
    simp [show (1679616 * k + 1674134) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 837067) = 2519424 * k + 2511202 := by
    unfold C
    simp [show (839808 * k + 837067) % 2 ≠ 0 by omega]
    omega
  have h21 : C (2519424 * k + 2511202) = 1259712 * k + 1255601 := by
    unfold C
    simp [show (2519424 * k + 2511202) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 1255601) = 3779136 * k + 3766804 := by
    unfold C
    simp [show (1259712 * k + 1255601) % 2 ≠ 0 by omega]
    omega
  have h23 : C (3779136 * k + 3766804) = 1889568 * k + 1883402 := by
    unfold C
    simp [show (3779136 * k + 3766804) % 2 = 0 by omega]
    omega
  have h24 : C (1889568 * k + 1883402) = 944784 * k + 941701 := by
    unfold C
    simp [show (1889568 * k + 1883402) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 941701) = 2834352 * k + 2825104 := by
    unfold C
    simp [show (944784 * k + 941701) % 2 ≠ 0 by omega]
    omega
  have h26 : C (2834352 * k + 2825104) = 1417176 * k + 1412552 := by
    unfold C
    simp [show (2834352 * k + 2825104) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 1412552) = 708588 * k + 706276 := by
    unfold C
    simp [show (1417176 * k + 1412552) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 706276) = 354294 * k + 353138 := by
    unfold C
    simp [show (708588 * k + 706276) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 353138) = 177147 * k + 176569 := by
    unfold C
    simp [show (354294 * k + 353138) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 261287) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 261287))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_261311 : ∀ k : Nat,
    iterate (262144 * k + 261311) 29 = 177147 * k + 176585 ∧
      177147 * k + 176585 < 262144 * k + 261311 := by
  intro k
  have h1 : C (262144 * k + 261311) = 786432 * k + 783934 := by
    unfold C
    simp [show (262144 * k + 261311) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 783934) = 393216 * k + 391967 := by
    unfold C
    simp [show (786432 * k + 783934) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 391967) = 1179648 * k + 1175902 := by
    unfold C
    simp [show (393216 * k + 391967) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 1175902) = 589824 * k + 587951 := by
    unfold C
    simp [show (1179648 * k + 1175902) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 587951) = 1769472 * k + 1763854 := by
    unfold C
    simp [show (589824 * k + 587951) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 1763854) = 884736 * k + 881927 := by
    unfold C
    simp [show (1769472 * k + 1763854) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 881927) = 2654208 * k + 2645782 := by
    unfold C
    simp [show (884736 * k + 881927) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 2645782) = 1327104 * k + 1322891 := by
    unfold C
    simp [show (2654208 * k + 2645782) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 1322891) = 3981312 * k + 3968674 := by
    unfold C
    simp [show (1327104 * k + 1322891) % 2 ≠ 0 by omega]
    omega
  have h10 : C (3981312 * k + 3968674) = 1990656 * k + 1984337 := by
    unfold C
    simp [show (3981312 * k + 3968674) % 2 = 0 by omega]
    omega
  have h11 : C (1990656 * k + 1984337) = 5971968 * k + 5953012 := by
    unfold C
    simp [show (1990656 * k + 1984337) % 2 ≠ 0 by omega]
    omega
  have h12 : C (5971968 * k + 5953012) = 2985984 * k + 2976506 := by
    unfold C
    simp [show (5971968 * k + 5953012) % 2 = 0 by omega]
    omega
  have h13 : C (2985984 * k + 2976506) = 1492992 * k + 1488253 := by
    unfold C
    simp [show (2985984 * k + 2976506) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 1488253) = 4478976 * k + 4464760 := by
    unfold C
    simp [show (1492992 * k + 1488253) % 2 ≠ 0 by omega]
    omega
  have h15 : C (4478976 * k + 4464760) = 2239488 * k + 2232380 := by
    unfold C
    simp [show (4478976 * k + 4464760) % 2 = 0 by omega]
    omega
  have h16 : C (2239488 * k + 2232380) = 1119744 * k + 1116190 := by
    unfold C
    simp [show (2239488 * k + 2232380) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 1116190) = 559872 * k + 558095 := by
    unfold C
    simp [show (1119744 * k + 1116190) % 2 = 0 by omega]
    omega
  have h18 : C (559872 * k + 558095) = 1679616 * k + 1674286 := by
    unfold C
    simp [show (559872 * k + 558095) % 2 ≠ 0 by omega]
    omega
  have h19 : C (1679616 * k + 1674286) = 839808 * k + 837143 := by
    unfold C
    simp [show (1679616 * k + 1674286) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 837143) = 2519424 * k + 2511430 := by
    unfold C
    simp [show (839808 * k + 837143) % 2 ≠ 0 by omega]
    omega
  have h21 : C (2519424 * k + 2511430) = 1259712 * k + 1255715 := by
    unfold C
    simp [show (2519424 * k + 2511430) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 1255715) = 3779136 * k + 3767146 := by
    unfold C
    simp [show (1259712 * k + 1255715) % 2 ≠ 0 by omega]
    omega
  have h23 : C (3779136 * k + 3767146) = 1889568 * k + 1883573 := by
    unfold C
    simp [show (3779136 * k + 3767146) % 2 = 0 by omega]
    omega
  have h24 : C (1889568 * k + 1883573) = 5668704 * k + 5650720 := by
    unfold C
    simp [show (1889568 * k + 1883573) % 2 ≠ 0 by omega]
    omega
  have h25 : C (5668704 * k + 5650720) = 2834352 * k + 2825360 := by
    unfold C
    simp [show (5668704 * k + 5650720) % 2 = 0 by omega]
    omega
  have h26 : C (2834352 * k + 2825360) = 1417176 * k + 1412680 := by
    unfold C
    simp [show (2834352 * k + 2825360) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 1412680) = 708588 * k + 706340 := by
    unfold C
    simp [show (1417176 * k + 1412680) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 706340) = 354294 * k + 353170 := by
    unfold C
    simp [show (708588 * k + 706340) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 353170) = 177147 * k + 176585 := by
    unfold C
    simp [show (354294 * k + 353170) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 261311) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 261311))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_261371 : ∀ k : Nat,
    iterate (262144 * k + 261371) 29 = 177147 * k + 176626 ∧
      177147 * k + 176626 < 262144 * k + 261371 := by
  intro k
  have h1 : C (262144 * k + 261371) = 786432 * k + 784114 := by
    unfold C
    simp [show (262144 * k + 261371) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 784114) = 393216 * k + 392057 := by
    unfold C
    simp [show (786432 * k + 784114) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 392057) = 1179648 * k + 1176172 := by
    unfold C
    simp [show (393216 * k + 392057) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 1176172) = 589824 * k + 588086 := by
    unfold C
    simp [show (1179648 * k + 1176172) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 588086) = 294912 * k + 294043 := by
    unfold C
    simp [show (589824 * k + 588086) % 2 = 0 by omega]
    omega
  have h6 : C (294912 * k + 294043) = 884736 * k + 882130 := by
    unfold C
    simp [show (294912 * k + 294043) % 2 ≠ 0 by omega]
    omega
  have h7 : C (884736 * k + 882130) = 442368 * k + 441065 := by
    unfold C
    simp [show (884736 * k + 882130) % 2 = 0 by omega]
    omega
  have h8 : C (442368 * k + 441065) = 1327104 * k + 1323196 := by
    unfold C
    simp [show (442368 * k + 441065) % 2 ≠ 0 by omega]
    omega
  have h9 : C (1327104 * k + 1323196) = 663552 * k + 661598 := by
    unfold C
    simp [show (1327104 * k + 1323196) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 661598) = 331776 * k + 330799 := by
    unfold C
    simp [show (663552 * k + 661598) % 2 = 0 by omega]
    omega
  have h11 : C (331776 * k + 330799) = 995328 * k + 992398 := by
    unfold C
    simp [show (331776 * k + 330799) % 2 ≠ 0 by omega]
    omega
  have h12 : C (995328 * k + 992398) = 497664 * k + 496199 := by
    unfold C
    simp [show (995328 * k + 992398) % 2 = 0 by omega]
    omega
  have h13 : C (497664 * k + 496199) = 1492992 * k + 1488598 := by
    unfold C
    simp [show (497664 * k + 496199) % 2 ≠ 0 by omega]
    omega
  have h14 : C (1492992 * k + 1488598) = 746496 * k + 744299 := by
    unfold C
    simp [show (1492992 * k + 1488598) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 744299) = 2239488 * k + 2232898 := by
    unfold C
    simp [show (746496 * k + 744299) % 2 ≠ 0 by omega]
    omega
  have h16 : C (2239488 * k + 2232898) = 1119744 * k + 1116449 := by
    unfold C
    simp [show (2239488 * k + 2232898) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 1116449) = 3359232 * k + 3349348 := by
    unfold C
    simp [show (1119744 * k + 1116449) % 2 ≠ 0 by omega]
    omega
  have h18 : C (3359232 * k + 3349348) = 1679616 * k + 1674674 := by
    unfold C
    simp [show (3359232 * k + 3349348) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 1674674) = 839808 * k + 837337 := by
    unfold C
    simp [show (1679616 * k + 1674674) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 837337) = 2519424 * k + 2512012 := by
    unfold C
    simp [show (839808 * k + 837337) % 2 ≠ 0 by omega]
    omega
  have h21 : C (2519424 * k + 2512012) = 1259712 * k + 1256006 := by
    unfold C
    simp [show (2519424 * k + 2512012) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 1256006) = 629856 * k + 628003 := by
    unfold C
    simp [show (1259712 * k + 1256006) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 628003) = 1889568 * k + 1884010 := by
    unfold C
    simp [show (629856 * k + 628003) % 2 ≠ 0 by omega]
    omega
  have h24 : C (1889568 * k + 1884010) = 944784 * k + 942005 := by
    unfold C
    simp [show (1889568 * k + 1884010) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 942005) = 2834352 * k + 2826016 := by
    unfold C
    simp [show (944784 * k + 942005) % 2 ≠ 0 by omega]
    omega
  have h26 : C (2834352 * k + 2826016) = 1417176 * k + 1413008 := by
    unfold C
    simp [show (2834352 * k + 2826016) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 1413008) = 708588 * k + 706504 := by
    unfold C
    simp [show (1417176 * k + 1413008) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 706504) = 354294 * k + 353252 := by
    unfold C
    simp [show (708588 * k + 706504) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 353252) = 177147 * k + 176626 := by
    unfold C
    simp [show (354294 * k + 353252) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 261371) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 261371))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_261599 : ∀ k : Nat,
    iterate (262144 * k + 261599) 29 = 177147 * k + 176780 ∧
      177147 * k + 176780 < 262144 * k + 261599 := by
  intro k
  have h1 : C (262144 * k + 261599) = 786432 * k + 784798 := by
    unfold C
    simp [show (262144 * k + 261599) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 784798) = 393216 * k + 392399 := by
    unfold C
    simp [show (786432 * k + 784798) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 392399) = 1179648 * k + 1177198 := by
    unfold C
    simp [show (393216 * k + 392399) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 1177198) = 589824 * k + 588599 := by
    unfold C
    simp [show (1179648 * k + 1177198) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 588599) = 1769472 * k + 1765798 := by
    unfold C
    simp [show (589824 * k + 588599) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 1765798) = 884736 * k + 882899 := by
    unfold C
    simp [show (1769472 * k + 1765798) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 882899) = 2654208 * k + 2648698 := by
    unfold C
    simp [show (884736 * k + 882899) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 2648698) = 1327104 * k + 1324349 := by
    unfold C
    simp [show (2654208 * k + 2648698) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 1324349) = 3981312 * k + 3973048 := by
    unfold C
    simp [show (1327104 * k + 1324349) % 2 ≠ 0 by omega]
    omega
  have h10 : C (3981312 * k + 3973048) = 1990656 * k + 1986524 := by
    unfold C
    simp [show (3981312 * k + 3973048) % 2 = 0 by omega]
    omega
  have h11 : C (1990656 * k + 1986524) = 995328 * k + 993262 := by
    unfold C
    simp [show (1990656 * k + 1986524) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 993262) = 497664 * k + 496631 := by
    unfold C
    simp [show (995328 * k + 993262) % 2 = 0 by omega]
    omega
  have h13 : C (497664 * k + 496631) = 1492992 * k + 1489894 := by
    unfold C
    simp [show (497664 * k + 496631) % 2 ≠ 0 by omega]
    omega
  have h14 : C (1492992 * k + 1489894) = 746496 * k + 744947 := by
    unfold C
    simp [show (1492992 * k + 1489894) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 744947) = 2239488 * k + 2234842 := by
    unfold C
    simp [show (746496 * k + 744947) % 2 ≠ 0 by omega]
    omega
  have h16 : C (2239488 * k + 2234842) = 1119744 * k + 1117421 := by
    unfold C
    simp [show (2239488 * k + 2234842) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 1117421) = 3359232 * k + 3352264 := by
    unfold C
    simp [show (1119744 * k + 1117421) % 2 ≠ 0 by omega]
    omega
  have h18 : C (3359232 * k + 3352264) = 1679616 * k + 1676132 := by
    unfold C
    simp [show (3359232 * k + 3352264) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 1676132) = 839808 * k + 838066 := by
    unfold C
    simp [show (1679616 * k + 1676132) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 838066) = 419904 * k + 419033 := by
    unfold C
    simp [show (839808 * k + 838066) % 2 = 0 by omega]
    omega
  have h21 : C (419904 * k + 419033) = 1259712 * k + 1257100 := by
    unfold C
    simp [show (419904 * k + 419033) % 2 ≠ 0 by omega]
    omega
  have h22 : C (1259712 * k + 1257100) = 629856 * k + 628550 := by
    unfold C
    simp [show (1259712 * k + 1257100) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 628550) = 314928 * k + 314275 := by
    unfold C
    simp [show (629856 * k + 628550) % 2 = 0 by omega]
    omega
  have h24 : C (314928 * k + 314275) = 944784 * k + 942826 := by
    unfold C
    simp [show (314928 * k + 314275) % 2 ≠ 0 by omega]
    omega
  have h25 : C (944784 * k + 942826) = 472392 * k + 471413 := by
    unfold C
    simp [show (944784 * k + 942826) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 471413) = 1417176 * k + 1414240 := by
    unfold C
    simp [show (472392 * k + 471413) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 1414240) = 708588 * k + 707120 := by
    unfold C
    simp [show (1417176 * k + 1414240) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 707120) = 354294 * k + 353560 := by
    unfold C
    simp [show (708588 * k + 707120) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 353560) = 177147 * k + 176780 := by
    unfold C
    simp [show (354294 * k + 353560) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 261599) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 261599))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_261679 : ∀ k : Nat,
    iterate (262144 * k + 261679) 29 = 177147 * k + 176834 ∧
      177147 * k + 176834 < 262144 * k + 261679 := by
  intro k
  have h1 : C (262144 * k + 261679) = 786432 * k + 785038 := by
    unfold C
    simp [show (262144 * k + 261679) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 785038) = 393216 * k + 392519 := by
    unfold C
    simp [show (786432 * k + 785038) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 392519) = 1179648 * k + 1177558 := by
    unfold C
    simp [show (393216 * k + 392519) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 1177558) = 589824 * k + 588779 := by
    unfold C
    simp [show (1179648 * k + 1177558) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 588779) = 1769472 * k + 1766338 := by
    unfold C
    simp [show (589824 * k + 588779) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 1766338) = 884736 * k + 883169 := by
    unfold C
    simp [show (1769472 * k + 1766338) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 883169) = 2654208 * k + 2649508 := by
    unfold C
    simp [show (884736 * k + 883169) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 2649508) = 1327104 * k + 1324754 := by
    unfold C
    simp [show (2654208 * k + 2649508) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 1324754) = 663552 * k + 662377 := by
    unfold C
    simp [show (1327104 * k + 1324754) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 662377) = 1990656 * k + 1987132 := by
    unfold C
    simp [show (663552 * k + 662377) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 1987132) = 995328 * k + 993566 := by
    unfold C
    simp [show (1990656 * k + 1987132) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 993566) = 497664 * k + 496783 := by
    unfold C
    simp [show (995328 * k + 993566) % 2 = 0 by omega]
    omega
  have h13 : C (497664 * k + 496783) = 1492992 * k + 1490350 := by
    unfold C
    simp [show (497664 * k + 496783) % 2 ≠ 0 by omega]
    omega
  have h14 : C (1492992 * k + 1490350) = 746496 * k + 745175 := by
    unfold C
    simp [show (1492992 * k + 1490350) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 745175) = 2239488 * k + 2235526 := by
    unfold C
    simp [show (746496 * k + 745175) % 2 ≠ 0 by omega]
    omega
  have h16 : C (2239488 * k + 2235526) = 1119744 * k + 1117763 := by
    unfold C
    simp [show (2239488 * k + 2235526) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 1117763) = 3359232 * k + 3353290 := by
    unfold C
    simp [show (1119744 * k + 1117763) % 2 ≠ 0 by omega]
    omega
  have h18 : C (3359232 * k + 3353290) = 1679616 * k + 1676645 := by
    unfold C
    simp [show (3359232 * k + 3353290) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 1676645) = 5038848 * k + 5029936 := by
    unfold C
    simp [show (1679616 * k + 1676645) % 2 ≠ 0 by omega]
    omega
  have h20 : C (5038848 * k + 5029936) = 2519424 * k + 2514968 := by
    unfold C
    simp [show (5038848 * k + 5029936) % 2 = 0 by omega]
    omega
  have h21 : C (2519424 * k + 2514968) = 1259712 * k + 1257484 := by
    unfold C
    simp [show (2519424 * k + 2514968) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 1257484) = 629856 * k + 628742 := by
    unfold C
    simp [show (1259712 * k + 1257484) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 628742) = 314928 * k + 314371 := by
    unfold C
    simp [show (629856 * k + 628742) % 2 = 0 by omega]
    omega
  have h24 : C (314928 * k + 314371) = 944784 * k + 943114 := by
    unfold C
    simp [show (314928 * k + 314371) % 2 ≠ 0 by omega]
    omega
  have h25 : C (944784 * k + 943114) = 472392 * k + 471557 := by
    unfold C
    simp [show (944784 * k + 943114) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 471557) = 1417176 * k + 1414672 := by
    unfold C
    simp [show (472392 * k + 471557) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 1414672) = 708588 * k + 707336 := by
    unfold C
    simp [show (1417176 * k + 1414672) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 707336) = 354294 * k + 353668 := by
    unfold C
    simp [show (708588 * k + 707336) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 353668) = 177147 * k + 176834 := by
    unfold C
    simp [show (354294 * k + 353668) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 261679) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 261679))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

end CollatzM18Shard048
