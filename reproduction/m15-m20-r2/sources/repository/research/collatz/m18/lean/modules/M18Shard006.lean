import Mathlib.Data.Nat.Prime.Basic

namespace CollatzM18Shard006

def C (n : Nat) : Nat := if n % 2 = 0 then n / 2 else 3 * n + 1

def iterate (n t : Nat) : Nat := Nat.rec n (fun _ previous => C previous) t

theorem descent_mod262144_26943 : ∀ k : Nat,
    iterate (262144 * k + 26943) 29 = 177147 * k + 18208 ∧
      177147 * k + 18208 < 262144 * k + 26943 := by
  intro k
  have h1 : C (262144 * k + 26943) = 786432 * k + 80830 := by
    unfold C
    simp [show (262144 * k + 26943) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 80830) = 393216 * k + 40415 := by
    unfold C
    simp [show (786432 * k + 80830) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 40415) = 1179648 * k + 121246 := by
    unfold C
    simp [show (393216 * k + 40415) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 121246) = 589824 * k + 60623 := by
    unfold C
    simp [show (1179648 * k + 121246) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 60623) = 1769472 * k + 181870 := by
    unfold C
    simp [show (589824 * k + 60623) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 181870) = 884736 * k + 90935 := by
    unfold C
    simp [show (1769472 * k + 181870) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 90935) = 2654208 * k + 272806 := by
    unfold C
    simp [show (884736 * k + 90935) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 272806) = 1327104 * k + 136403 := by
    unfold C
    simp [show (2654208 * k + 272806) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 136403) = 3981312 * k + 409210 := by
    unfold C
    simp [show (1327104 * k + 136403) % 2 ≠ 0 by omega]
    omega
  have h10 : C (3981312 * k + 409210) = 1990656 * k + 204605 := by
    unfold C
    simp [show (3981312 * k + 409210) % 2 = 0 by omega]
    omega
  have h11 : C (1990656 * k + 204605) = 5971968 * k + 613816 := by
    unfold C
    simp [show (1990656 * k + 204605) % 2 ≠ 0 by omega]
    omega
  have h12 : C (5971968 * k + 613816) = 2985984 * k + 306908 := by
    unfold C
    simp [show (5971968 * k + 613816) % 2 = 0 by omega]
    omega
  have h13 : C (2985984 * k + 306908) = 1492992 * k + 153454 := by
    unfold C
    simp [show (2985984 * k + 306908) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 153454) = 746496 * k + 76727 := by
    unfold C
    simp [show (1492992 * k + 153454) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 76727) = 2239488 * k + 230182 := by
    unfold C
    simp [show (746496 * k + 76727) % 2 ≠ 0 by omega]
    omega
  have h16 : C (2239488 * k + 230182) = 1119744 * k + 115091 := by
    unfold C
    simp [show (2239488 * k + 230182) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 115091) = 3359232 * k + 345274 := by
    unfold C
    simp [show (1119744 * k + 115091) % 2 ≠ 0 by omega]
    omega
  have h18 : C (3359232 * k + 345274) = 1679616 * k + 172637 := by
    unfold C
    simp [show (3359232 * k + 345274) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 172637) = 5038848 * k + 517912 := by
    unfold C
    simp [show (1679616 * k + 172637) % 2 ≠ 0 by omega]
    omega
  have h20 : C (5038848 * k + 517912) = 2519424 * k + 258956 := by
    unfold C
    simp [show (5038848 * k + 517912) % 2 = 0 by omega]
    omega
  have h21 : C (2519424 * k + 258956) = 1259712 * k + 129478 := by
    unfold C
    simp [show (2519424 * k + 258956) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 129478) = 629856 * k + 64739 := by
    unfold C
    simp [show (1259712 * k + 129478) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 64739) = 1889568 * k + 194218 := by
    unfold C
    simp [show (629856 * k + 64739) % 2 ≠ 0 by omega]
    omega
  have h24 : C (1889568 * k + 194218) = 944784 * k + 97109 := by
    unfold C
    simp [show (1889568 * k + 194218) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 97109) = 2834352 * k + 291328 := by
    unfold C
    simp [show (944784 * k + 97109) % 2 ≠ 0 by omega]
    omega
  have h26 : C (2834352 * k + 291328) = 1417176 * k + 145664 := by
    unfold C
    simp [show (2834352 * k + 291328) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 145664) = 708588 * k + 72832 := by
    unfold C
    simp [show (1417176 * k + 145664) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 72832) = 354294 * k + 36416 := by
    unfold C
    simp [show (708588 * k + 72832) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 36416) = 177147 * k + 18208 := by
    unfold C
    simp [show (354294 * k + 36416) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 26943) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 26943))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_27295 : ∀ k : Nat,
    iterate (262144 * k + 27295) 29 = 177147 * k + 18446 ∧
      177147 * k + 18446 < 262144 * k + 27295 := by
  intro k
  have h1 : C (262144 * k + 27295) = 786432 * k + 81886 := by
    unfold C
    simp [show (262144 * k + 27295) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 81886) = 393216 * k + 40943 := by
    unfold C
    simp [show (786432 * k + 81886) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 40943) = 1179648 * k + 122830 := by
    unfold C
    simp [show (393216 * k + 40943) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 122830) = 589824 * k + 61415 := by
    unfold C
    simp [show (1179648 * k + 122830) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 61415) = 1769472 * k + 184246 := by
    unfold C
    simp [show (589824 * k + 61415) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 184246) = 884736 * k + 92123 := by
    unfold C
    simp [show (1769472 * k + 184246) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 92123) = 2654208 * k + 276370 := by
    unfold C
    simp [show (884736 * k + 92123) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 276370) = 1327104 * k + 138185 := by
    unfold C
    simp [show (2654208 * k + 276370) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 138185) = 3981312 * k + 414556 := by
    unfold C
    simp [show (1327104 * k + 138185) % 2 ≠ 0 by omega]
    omega
  have h10 : C (3981312 * k + 414556) = 1990656 * k + 207278 := by
    unfold C
    simp [show (3981312 * k + 414556) % 2 = 0 by omega]
    omega
  have h11 : C (1990656 * k + 207278) = 995328 * k + 103639 := by
    unfold C
    simp [show (1990656 * k + 207278) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 103639) = 2985984 * k + 310918 := by
    unfold C
    simp [show (995328 * k + 103639) % 2 ≠ 0 by omega]
    omega
  have h13 : C (2985984 * k + 310918) = 1492992 * k + 155459 := by
    unfold C
    simp [show (2985984 * k + 310918) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 155459) = 4478976 * k + 466378 := by
    unfold C
    simp [show (1492992 * k + 155459) % 2 ≠ 0 by omega]
    omega
  have h15 : C (4478976 * k + 466378) = 2239488 * k + 233189 := by
    unfold C
    simp [show (4478976 * k + 466378) % 2 = 0 by omega]
    omega
  have h16 : C (2239488 * k + 233189) = 6718464 * k + 699568 := by
    unfold C
    simp [show (2239488 * k + 233189) % 2 ≠ 0 by omega]
    omega
  have h17 : C (6718464 * k + 699568) = 3359232 * k + 349784 := by
    unfold C
    simp [show (6718464 * k + 699568) % 2 = 0 by omega]
    omega
  have h18 : C (3359232 * k + 349784) = 1679616 * k + 174892 := by
    unfold C
    simp [show (3359232 * k + 349784) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 174892) = 839808 * k + 87446 := by
    unfold C
    simp [show (1679616 * k + 174892) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 87446) = 419904 * k + 43723 := by
    unfold C
    simp [show (839808 * k + 87446) % 2 = 0 by omega]
    omega
  have h21 : C (419904 * k + 43723) = 1259712 * k + 131170 := by
    unfold C
    simp [show (419904 * k + 43723) % 2 ≠ 0 by omega]
    omega
  have h22 : C (1259712 * k + 131170) = 629856 * k + 65585 := by
    unfold C
    simp [show (1259712 * k + 131170) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 65585) = 1889568 * k + 196756 := by
    unfold C
    simp [show (629856 * k + 65585) % 2 ≠ 0 by omega]
    omega
  have h24 : C (1889568 * k + 196756) = 944784 * k + 98378 := by
    unfold C
    simp [show (1889568 * k + 196756) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 98378) = 472392 * k + 49189 := by
    unfold C
    simp [show (944784 * k + 98378) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 49189) = 1417176 * k + 147568 := by
    unfold C
    simp [show (472392 * k + 49189) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 147568) = 708588 * k + 73784 := by
    unfold C
    simp [show (1417176 * k + 147568) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 73784) = 354294 * k + 36892 := by
    unfold C
    simp [show (708588 * k + 73784) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 36892) = 177147 * k + 18446 := by
    unfold C
    simp [show (354294 * k + 36892) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 27295) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 27295))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_27375 : ∀ k : Nat,
    iterate (262144 * k + 27375) 29 = 177147 * k + 18500 ∧
      177147 * k + 18500 < 262144 * k + 27375 := by
  intro k
  have h1 : C (262144 * k + 27375) = 786432 * k + 82126 := by
    unfold C
    simp [show (262144 * k + 27375) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 82126) = 393216 * k + 41063 := by
    unfold C
    simp [show (786432 * k + 82126) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 41063) = 1179648 * k + 123190 := by
    unfold C
    simp [show (393216 * k + 41063) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 123190) = 589824 * k + 61595 := by
    unfold C
    simp [show (1179648 * k + 123190) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 61595) = 1769472 * k + 184786 := by
    unfold C
    simp [show (589824 * k + 61595) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 184786) = 884736 * k + 92393 := by
    unfold C
    simp [show (1769472 * k + 184786) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 92393) = 2654208 * k + 277180 := by
    unfold C
    simp [show (884736 * k + 92393) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 277180) = 1327104 * k + 138590 := by
    unfold C
    simp [show (2654208 * k + 277180) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 138590) = 663552 * k + 69295 := by
    unfold C
    simp [show (1327104 * k + 138590) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 69295) = 1990656 * k + 207886 := by
    unfold C
    simp [show (663552 * k + 69295) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 207886) = 995328 * k + 103943 := by
    unfold C
    simp [show (1990656 * k + 207886) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 103943) = 2985984 * k + 311830 := by
    unfold C
    simp [show (995328 * k + 103943) % 2 ≠ 0 by omega]
    omega
  have h13 : C (2985984 * k + 311830) = 1492992 * k + 155915 := by
    unfold C
    simp [show (2985984 * k + 311830) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 155915) = 4478976 * k + 467746 := by
    unfold C
    simp [show (1492992 * k + 155915) % 2 ≠ 0 by omega]
    omega
  have h15 : C (4478976 * k + 467746) = 2239488 * k + 233873 := by
    unfold C
    simp [show (4478976 * k + 467746) % 2 = 0 by omega]
    omega
  have h16 : C (2239488 * k + 233873) = 6718464 * k + 701620 := by
    unfold C
    simp [show (2239488 * k + 233873) % 2 ≠ 0 by omega]
    omega
  have h17 : C (6718464 * k + 701620) = 3359232 * k + 350810 := by
    unfold C
    simp [show (6718464 * k + 701620) % 2 = 0 by omega]
    omega
  have h18 : C (3359232 * k + 350810) = 1679616 * k + 175405 := by
    unfold C
    simp [show (3359232 * k + 350810) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 175405) = 5038848 * k + 526216 := by
    unfold C
    simp [show (1679616 * k + 175405) % 2 ≠ 0 by omega]
    omega
  have h20 : C (5038848 * k + 526216) = 2519424 * k + 263108 := by
    unfold C
    simp [show (5038848 * k + 526216) % 2 = 0 by omega]
    omega
  have h21 : C (2519424 * k + 263108) = 1259712 * k + 131554 := by
    unfold C
    simp [show (2519424 * k + 263108) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 131554) = 629856 * k + 65777 := by
    unfold C
    simp [show (1259712 * k + 131554) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 65777) = 1889568 * k + 197332 := by
    unfold C
    simp [show (629856 * k + 65777) % 2 ≠ 0 by omega]
    omega
  have h24 : C (1889568 * k + 197332) = 944784 * k + 98666 := by
    unfold C
    simp [show (1889568 * k + 197332) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 98666) = 472392 * k + 49333 := by
    unfold C
    simp [show (944784 * k + 98666) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 49333) = 1417176 * k + 148000 := by
    unfold C
    simp [show (472392 * k + 49333) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 148000) = 708588 * k + 74000 := by
    unfold C
    simp [show (1417176 * k + 148000) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 74000) = 354294 * k + 37000 := by
    unfold C
    simp [show (708588 * k + 74000) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 37000) = 177147 * k + 18500 := by
    unfold C
    simp [show (354294 * k + 37000) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 27375) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 27375))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_27455 : ∀ k : Nat,
    iterate (262144 * k + 27455) 29 = 177147 * k + 18554 ∧
      177147 * k + 18554 < 262144 * k + 27455 := by
  intro k
  have h1 : C (262144 * k + 27455) = 786432 * k + 82366 := by
    unfold C
    simp [show (262144 * k + 27455) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 82366) = 393216 * k + 41183 := by
    unfold C
    simp [show (786432 * k + 82366) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 41183) = 1179648 * k + 123550 := by
    unfold C
    simp [show (393216 * k + 41183) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 123550) = 589824 * k + 61775 := by
    unfold C
    simp [show (1179648 * k + 123550) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 61775) = 1769472 * k + 185326 := by
    unfold C
    simp [show (589824 * k + 61775) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 185326) = 884736 * k + 92663 := by
    unfold C
    simp [show (1769472 * k + 185326) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 92663) = 2654208 * k + 277990 := by
    unfold C
    simp [show (884736 * k + 92663) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 277990) = 1327104 * k + 138995 := by
    unfold C
    simp [show (2654208 * k + 277990) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 138995) = 3981312 * k + 416986 := by
    unfold C
    simp [show (1327104 * k + 138995) % 2 ≠ 0 by omega]
    omega
  have h10 : C (3981312 * k + 416986) = 1990656 * k + 208493 := by
    unfold C
    simp [show (3981312 * k + 416986) % 2 = 0 by omega]
    omega
  have h11 : C (1990656 * k + 208493) = 5971968 * k + 625480 := by
    unfold C
    simp [show (1990656 * k + 208493) % 2 ≠ 0 by omega]
    omega
  have h12 : C (5971968 * k + 625480) = 2985984 * k + 312740 := by
    unfold C
    simp [show (5971968 * k + 625480) % 2 = 0 by omega]
    omega
  have h13 : C (2985984 * k + 312740) = 1492992 * k + 156370 := by
    unfold C
    simp [show (2985984 * k + 312740) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 156370) = 746496 * k + 78185 := by
    unfold C
    simp [show (1492992 * k + 156370) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 78185) = 2239488 * k + 234556 := by
    unfold C
    simp [show (746496 * k + 78185) % 2 ≠ 0 by omega]
    omega
  have h16 : C (2239488 * k + 234556) = 1119744 * k + 117278 := by
    unfold C
    simp [show (2239488 * k + 234556) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 117278) = 559872 * k + 58639 := by
    unfold C
    simp [show (1119744 * k + 117278) % 2 = 0 by omega]
    omega
  have h18 : C (559872 * k + 58639) = 1679616 * k + 175918 := by
    unfold C
    simp [show (559872 * k + 58639) % 2 ≠ 0 by omega]
    omega
  have h19 : C (1679616 * k + 175918) = 839808 * k + 87959 := by
    unfold C
    simp [show (1679616 * k + 175918) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 87959) = 2519424 * k + 263878 := by
    unfold C
    simp [show (839808 * k + 87959) % 2 ≠ 0 by omega]
    omega
  have h21 : C (2519424 * k + 263878) = 1259712 * k + 131939 := by
    unfold C
    simp [show (2519424 * k + 263878) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 131939) = 3779136 * k + 395818 := by
    unfold C
    simp [show (1259712 * k + 131939) % 2 ≠ 0 by omega]
    omega
  have h23 : C (3779136 * k + 395818) = 1889568 * k + 197909 := by
    unfold C
    simp [show (3779136 * k + 395818) % 2 = 0 by omega]
    omega
  have h24 : C (1889568 * k + 197909) = 5668704 * k + 593728 := by
    unfold C
    simp [show (1889568 * k + 197909) % 2 ≠ 0 by omega]
    omega
  have h25 : C (5668704 * k + 593728) = 2834352 * k + 296864 := by
    unfold C
    simp [show (5668704 * k + 593728) % 2 = 0 by omega]
    omega
  have h26 : C (2834352 * k + 296864) = 1417176 * k + 148432 := by
    unfold C
    simp [show (2834352 * k + 296864) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 148432) = 708588 * k + 74216 := by
    unfold C
    simp [show (1417176 * k + 148432) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 74216) = 354294 * k + 37108 := by
    unfold C
    simp [show (708588 * k + 74216) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 37108) = 177147 * k + 18554 := by
    unfold C
    simp [show (354294 * k + 37108) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 27455) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 27455))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_27463 : ∀ k : Nat,
    iterate (262144 * k + 27463) 29 = 177147 * k + 18560 ∧
      177147 * k + 18560 < 262144 * k + 27463 := by
  intro k
  have h1 : C (262144 * k + 27463) = 786432 * k + 82390 := by
    unfold C
    simp [show (262144 * k + 27463) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 82390) = 393216 * k + 41195 := by
    unfold C
    simp [show (786432 * k + 82390) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 41195) = 1179648 * k + 123586 := by
    unfold C
    simp [show (393216 * k + 41195) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 123586) = 589824 * k + 61793 := by
    unfold C
    simp [show (1179648 * k + 123586) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 61793) = 1769472 * k + 185380 := by
    unfold C
    simp [show (589824 * k + 61793) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 185380) = 884736 * k + 92690 := by
    unfold C
    simp [show (1769472 * k + 185380) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 92690) = 442368 * k + 46345 := by
    unfold C
    simp [show (884736 * k + 92690) % 2 = 0 by omega]
    omega
  have h8 : C (442368 * k + 46345) = 1327104 * k + 139036 := by
    unfold C
    simp [show (442368 * k + 46345) % 2 ≠ 0 by omega]
    omega
  have h9 : C (1327104 * k + 139036) = 663552 * k + 69518 := by
    unfold C
    simp [show (1327104 * k + 139036) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 69518) = 331776 * k + 34759 := by
    unfold C
    simp [show (663552 * k + 69518) % 2 = 0 by omega]
    omega
  have h11 : C (331776 * k + 34759) = 995328 * k + 104278 := by
    unfold C
    simp [show (331776 * k + 34759) % 2 ≠ 0 by omega]
    omega
  have h12 : C (995328 * k + 104278) = 497664 * k + 52139 := by
    unfold C
    simp [show (995328 * k + 104278) % 2 = 0 by omega]
    omega
  have h13 : C (497664 * k + 52139) = 1492992 * k + 156418 := by
    unfold C
    simp [show (497664 * k + 52139) % 2 ≠ 0 by omega]
    omega
  have h14 : C (1492992 * k + 156418) = 746496 * k + 78209 := by
    unfold C
    simp [show (1492992 * k + 156418) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 78209) = 2239488 * k + 234628 := by
    unfold C
    simp [show (746496 * k + 78209) % 2 ≠ 0 by omega]
    omega
  have h16 : C (2239488 * k + 234628) = 1119744 * k + 117314 := by
    unfold C
    simp [show (2239488 * k + 234628) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 117314) = 559872 * k + 58657 := by
    unfold C
    simp [show (1119744 * k + 117314) % 2 = 0 by omega]
    omega
  have h18 : C (559872 * k + 58657) = 1679616 * k + 175972 := by
    unfold C
    simp [show (559872 * k + 58657) % 2 ≠ 0 by omega]
    omega
  have h19 : C (1679616 * k + 175972) = 839808 * k + 87986 := by
    unfold C
    simp [show (1679616 * k + 175972) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 87986) = 419904 * k + 43993 := by
    unfold C
    simp [show (839808 * k + 87986) % 2 = 0 by omega]
    omega
  have h21 : C (419904 * k + 43993) = 1259712 * k + 131980 := by
    unfold C
    simp [show (419904 * k + 43993) % 2 ≠ 0 by omega]
    omega
  have h22 : C (1259712 * k + 131980) = 629856 * k + 65990 := by
    unfold C
    simp [show (1259712 * k + 131980) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 65990) = 314928 * k + 32995 := by
    unfold C
    simp [show (629856 * k + 65990) % 2 = 0 by omega]
    omega
  have h24 : C (314928 * k + 32995) = 944784 * k + 98986 := by
    unfold C
    simp [show (314928 * k + 32995) % 2 ≠ 0 by omega]
    omega
  have h25 : C (944784 * k + 98986) = 472392 * k + 49493 := by
    unfold C
    simp [show (944784 * k + 98986) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 49493) = 1417176 * k + 148480 := by
    unfold C
    simp [show (472392 * k + 49493) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 148480) = 708588 * k + 74240 := by
    unfold C
    simp [show (1417176 * k + 148480) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 74240) = 354294 * k + 37120 := by
    unfold C
    simp [show (708588 * k + 74240) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 37120) = 177147 * k + 18560 := by
    unfold C
    simp [show (354294 * k + 37120) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 27463) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 27463))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_27495 : ∀ k : Nat,
    iterate (262144 * k + 27495) 29 = 177147 * k + 18581 ∧
      177147 * k + 18581 < 262144 * k + 27495 := by
  intro k
  have h1 : C (262144 * k + 27495) = 786432 * k + 82486 := by
    unfold C
    simp [show (262144 * k + 27495) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 82486) = 393216 * k + 41243 := by
    unfold C
    simp [show (786432 * k + 82486) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 41243) = 1179648 * k + 123730 := by
    unfold C
    simp [show (393216 * k + 41243) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 123730) = 589824 * k + 61865 := by
    unfold C
    simp [show (1179648 * k + 123730) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 61865) = 1769472 * k + 185596 := by
    unfold C
    simp [show (589824 * k + 61865) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 185596) = 884736 * k + 92798 := by
    unfold C
    simp [show (1769472 * k + 185596) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 92798) = 442368 * k + 46399 := by
    unfold C
    simp [show (884736 * k + 92798) % 2 = 0 by omega]
    omega
  have h8 : C (442368 * k + 46399) = 1327104 * k + 139198 := by
    unfold C
    simp [show (442368 * k + 46399) % 2 ≠ 0 by omega]
    omega
  have h9 : C (1327104 * k + 139198) = 663552 * k + 69599 := by
    unfold C
    simp [show (1327104 * k + 139198) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 69599) = 1990656 * k + 208798 := by
    unfold C
    simp [show (663552 * k + 69599) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 208798) = 995328 * k + 104399 := by
    unfold C
    simp [show (1990656 * k + 208798) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 104399) = 2985984 * k + 313198 := by
    unfold C
    simp [show (995328 * k + 104399) % 2 ≠ 0 by omega]
    omega
  have h13 : C (2985984 * k + 313198) = 1492992 * k + 156599 := by
    unfold C
    simp [show (2985984 * k + 313198) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 156599) = 4478976 * k + 469798 := by
    unfold C
    simp [show (1492992 * k + 156599) % 2 ≠ 0 by omega]
    omega
  have h15 : C (4478976 * k + 469798) = 2239488 * k + 234899 := by
    unfold C
    simp [show (4478976 * k + 469798) % 2 = 0 by omega]
    omega
  have h16 : C (2239488 * k + 234899) = 6718464 * k + 704698 := by
    unfold C
    simp [show (2239488 * k + 234899) % 2 ≠ 0 by omega]
    omega
  have h17 : C (6718464 * k + 704698) = 3359232 * k + 352349 := by
    unfold C
    simp [show (6718464 * k + 704698) % 2 = 0 by omega]
    omega
  have h18 : C (3359232 * k + 352349) = 10077696 * k + 1057048 := by
    unfold C
    simp [show (3359232 * k + 352349) % 2 ≠ 0 by omega]
    omega
  have h19 : C (10077696 * k + 1057048) = 5038848 * k + 528524 := by
    unfold C
    simp [show (10077696 * k + 1057048) % 2 = 0 by omega]
    omega
  have h20 : C (5038848 * k + 528524) = 2519424 * k + 264262 := by
    unfold C
    simp [show (5038848 * k + 528524) % 2 = 0 by omega]
    omega
  have h21 : C (2519424 * k + 264262) = 1259712 * k + 132131 := by
    unfold C
    simp [show (2519424 * k + 264262) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 132131) = 3779136 * k + 396394 := by
    unfold C
    simp [show (1259712 * k + 132131) % 2 ≠ 0 by omega]
    omega
  have h23 : C (3779136 * k + 396394) = 1889568 * k + 198197 := by
    unfold C
    simp [show (3779136 * k + 396394) % 2 = 0 by omega]
    omega
  have h24 : C (1889568 * k + 198197) = 5668704 * k + 594592 := by
    unfold C
    simp [show (1889568 * k + 198197) % 2 ≠ 0 by omega]
    omega
  have h25 : C (5668704 * k + 594592) = 2834352 * k + 297296 := by
    unfold C
    simp [show (5668704 * k + 594592) % 2 = 0 by omega]
    omega
  have h26 : C (2834352 * k + 297296) = 1417176 * k + 148648 := by
    unfold C
    simp [show (2834352 * k + 297296) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 148648) = 708588 * k + 74324 := by
    unfold C
    simp [show (1417176 * k + 148648) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 74324) = 354294 * k + 37162 := by
    unfold C
    simp [show (708588 * k + 74324) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 37162) = 177147 * k + 18581 := by
    unfold C
    simp [show (354294 * k + 37162) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 27495) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 27495))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_27503 : ∀ k : Nat,
    iterate (262144 * k + 27503) 29 = 177147 * k + 18587 ∧
      177147 * k + 18587 < 262144 * k + 27503 := by
  intro k
  have h1 : C (262144 * k + 27503) = 786432 * k + 82510 := by
    unfold C
    simp [show (262144 * k + 27503) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 82510) = 393216 * k + 41255 := by
    unfold C
    simp [show (786432 * k + 82510) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 41255) = 1179648 * k + 123766 := by
    unfold C
    simp [show (393216 * k + 41255) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 123766) = 589824 * k + 61883 := by
    unfold C
    simp [show (1179648 * k + 123766) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 61883) = 1769472 * k + 185650 := by
    unfold C
    simp [show (589824 * k + 61883) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 185650) = 884736 * k + 92825 := by
    unfold C
    simp [show (1769472 * k + 185650) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 92825) = 2654208 * k + 278476 := by
    unfold C
    simp [show (884736 * k + 92825) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 278476) = 1327104 * k + 139238 := by
    unfold C
    simp [show (2654208 * k + 278476) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 139238) = 663552 * k + 69619 := by
    unfold C
    simp [show (1327104 * k + 139238) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 69619) = 1990656 * k + 208858 := by
    unfold C
    simp [show (663552 * k + 69619) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 208858) = 995328 * k + 104429 := by
    unfold C
    simp [show (1990656 * k + 208858) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 104429) = 2985984 * k + 313288 := by
    unfold C
    simp [show (995328 * k + 104429) % 2 ≠ 0 by omega]
    omega
  have h13 : C (2985984 * k + 313288) = 1492992 * k + 156644 := by
    unfold C
    simp [show (2985984 * k + 313288) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 156644) = 746496 * k + 78322 := by
    unfold C
    simp [show (1492992 * k + 156644) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 78322) = 373248 * k + 39161 := by
    unfold C
    simp [show (746496 * k + 78322) % 2 = 0 by omega]
    omega
  have h16 : C (373248 * k + 39161) = 1119744 * k + 117484 := by
    unfold C
    simp [show (373248 * k + 39161) % 2 ≠ 0 by omega]
    omega
  have h17 : C (1119744 * k + 117484) = 559872 * k + 58742 := by
    unfold C
    simp [show (1119744 * k + 117484) % 2 = 0 by omega]
    omega
  have h18 : C (559872 * k + 58742) = 279936 * k + 29371 := by
    unfold C
    simp [show (559872 * k + 58742) % 2 = 0 by omega]
    omega
  have h19 : C (279936 * k + 29371) = 839808 * k + 88114 := by
    unfold C
    simp [show (279936 * k + 29371) % 2 ≠ 0 by omega]
    omega
  have h20 : C (839808 * k + 88114) = 419904 * k + 44057 := by
    unfold C
    simp [show (839808 * k + 88114) % 2 = 0 by omega]
    omega
  have h21 : C (419904 * k + 44057) = 1259712 * k + 132172 := by
    unfold C
    simp [show (419904 * k + 44057) % 2 ≠ 0 by omega]
    omega
  have h22 : C (1259712 * k + 132172) = 629856 * k + 66086 := by
    unfold C
    simp [show (1259712 * k + 132172) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 66086) = 314928 * k + 33043 := by
    unfold C
    simp [show (629856 * k + 66086) % 2 = 0 by omega]
    omega
  have h24 : C (314928 * k + 33043) = 944784 * k + 99130 := by
    unfold C
    simp [show (314928 * k + 33043) % 2 ≠ 0 by omega]
    omega
  have h25 : C (944784 * k + 99130) = 472392 * k + 49565 := by
    unfold C
    simp [show (944784 * k + 99130) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 49565) = 1417176 * k + 148696 := by
    unfold C
    simp [show (472392 * k + 49565) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 148696) = 708588 * k + 74348 := by
    unfold C
    simp [show (1417176 * k + 148696) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 74348) = 354294 * k + 37174 := by
    unfold C
    simp [show (708588 * k + 74348) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 37174) = 177147 * k + 18587 := by
    unfold C
    simp [show (354294 * k + 37174) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 27503) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 27503))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_27631 : ∀ k : Nat,
    iterate (262144 * k + 27631) 29 = 177147 * k + 18673 ∧
      177147 * k + 18673 < 262144 * k + 27631 := by
  intro k
  have h1 : C (262144 * k + 27631) = 786432 * k + 82894 := by
    unfold C
    simp [show (262144 * k + 27631) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 82894) = 393216 * k + 41447 := by
    unfold C
    simp [show (786432 * k + 82894) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 41447) = 1179648 * k + 124342 := by
    unfold C
    simp [show (393216 * k + 41447) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 124342) = 589824 * k + 62171 := by
    unfold C
    simp [show (1179648 * k + 124342) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 62171) = 1769472 * k + 186514 := by
    unfold C
    simp [show (589824 * k + 62171) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 186514) = 884736 * k + 93257 := by
    unfold C
    simp [show (1769472 * k + 186514) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 93257) = 2654208 * k + 279772 := by
    unfold C
    simp [show (884736 * k + 93257) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 279772) = 1327104 * k + 139886 := by
    unfold C
    simp [show (2654208 * k + 279772) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 139886) = 663552 * k + 69943 := by
    unfold C
    simp [show (1327104 * k + 139886) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 69943) = 1990656 * k + 209830 := by
    unfold C
    simp [show (663552 * k + 69943) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 209830) = 995328 * k + 104915 := by
    unfold C
    simp [show (1990656 * k + 209830) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 104915) = 2985984 * k + 314746 := by
    unfold C
    simp [show (995328 * k + 104915) % 2 ≠ 0 by omega]
    omega
  have h13 : C (2985984 * k + 314746) = 1492992 * k + 157373 := by
    unfold C
    simp [show (2985984 * k + 314746) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 157373) = 4478976 * k + 472120 := by
    unfold C
    simp [show (1492992 * k + 157373) % 2 ≠ 0 by omega]
    omega
  have h15 : C (4478976 * k + 472120) = 2239488 * k + 236060 := by
    unfold C
    simp [show (4478976 * k + 472120) % 2 = 0 by omega]
    omega
  have h16 : C (2239488 * k + 236060) = 1119744 * k + 118030 := by
    unfold C
    simp [show (2239488 * k + 236060) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 118030) = 559872 * k + 59015 := by
    unfold C
    simp [show (1119744 * k + 118030) % 2 = 0 by omega]
    omega
  have h18 : C (559872 * k + 59015) = 1679616 * k + 177046 := by
    unfold C
    simp [show (559872 * k + 59015) % 2 ≠ 0 by omega]
    omega
  have h19 : C (1679616 * k + 177046) = 839808 * k + 88523 := by
    unfold C
    simp [show (1679616 * k + 177046) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 88523) = 2519424 * k + 265570 := by
    unfold C
    simp [show (839808 * k + 88523) % 2 ≠ 0 by omega]
    omega
  have h21 : C (2519424 * k + 265570) = 1259712 * k + 132785 := by
    unfold C
    simp [show (2519424 * k + 265570) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 132785) = 3779136 * k + 398356 := by
    unfold C
    simp [show (1259712 * k + 132785) % 2 ≠ 0 by omega]
    omega
  have h23 : C (3779136 * k + 398356) = 1889568 * k + 199178 := by
    unfold C
    simp [show (3779136 * k + 398356) % 2 = 0 by omega]
    omega
  have h24 : C (1889568 * k + 199178) = 944784 * k + 99589 := by
    unfold C
    simp [show (1889568 * k + 199178) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 99589) = 2834352 * k + 298768 := by
    unfold C
    simp [show (944784 * k + 99589) % 2 ≠ 0 by omega]
    omega
  have h26 : C (2834352 * k + 298768) = 1417176 * k + 149384 := by
    unfold C
    simp [show (2834352 * k + 298768) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 149384) = 708588 * k + 74692 := by
    unfold C
    simp [show (1417176 * k + 149384) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 74692) = 354294 * k + 37346 := by
    unfold C
    simp [show (708588 * k + 74692) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 37346) = 177147 * k + 18673 := by
    unfold C
    simp [show (354294 * k + 37346) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 27631) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 27631))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_27751 : ∀ k : Nat,
    iterate (262144 * k + 27751) 29 = 177147 * k + 18754 ∧
      177147 * k + 18754 < 262144 * k + 27751 := by
  intro k
  have h1 : C (262144 * k + 27751) = 786432 * k + 83254 := by
    unfold C
    simp [show (262144 * k + 27751) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 83254) = 393216 * k + 41627 := by
    unfold C
    simp [show (786432 * k + 83254) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 41627) = 1179648 * k + 124882 := by
    unfold C
    simp [show (393216 * k + 41627) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 124882) = 589824 * k + 62441 := by
    unfold C
    simp [show (1179648 * k + 124882) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 62441) = 1769472 * k + 187324 := by
    unfold C
    simp [show (589824 * k + 62441) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 187324) = 884736 * k + 93662 := by
    unfold C
    simp [show (1769472 * k + 187324) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 93662) = 442368 * k + 46831 := by
    unfold C
    simp [show (884736 * k + 93662) % 2 = 0 by omega]
    omega
  have h8 : C (442368 * k + 46831) = 1327104 * k + 140494 := by
    unfold C
    simp [show (442368 * k + 46831) % 2 ≠ 0 by omega]
    omega
  have h9 : C (1327104 * k + 140494) = 663552 * k + 70247 := by
    unfold C
    simp [show (1327104 * k + 140494) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 70247) = 1990656 * k + 210742 := by
    unfold C
    simp [show (663552 * k + 70247) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 210742) = 995328 * k + 105371 := by
    unfold C
    simp [show (1990656 * k + 210742) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 105371) = 2985984 * k + 316114 := by
    unfold C
    simp [show (995328 * k + 105371) % 2 ≠ 0 by omega]
    omega
  have h13 : C (2985984 * k + 316114) = 1492992 * k + 158057 := by
    unfold C
    simp [show (2985984 * k + 316114) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 158057) = 4478976 * k + 474172 := by
    unfold C
    simp [show (1492992 * k + 158057) % 2 ≠ 0 by omega]
    omega
  have h15 : C (4478976 * k + 474172) = 2239488 * k + 237086 := by
    unfold C
    simp [show (4478976 * k + 474172) % 2 = 0 by omega]
    omega
  have h16 : C (2239488 * k + 237086) = 1119744 * k + 118543 := by
    unfold C
    simp [show (2239488 * k + 237086) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 118543) = 3359232 * k + 355630 := by
    unfold C
    simp [show (1119744 * k + 118543) % 2 ≠ 0 by omega]
    omega
  have h18 : C (3359232 * k + 355630) = 1679616 * k + 177815 := by
    unfold C
    simp [show (3359232 * k + 355630) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 177815) = 5038848 * k + 533446 := by
    unfold C
    simp [show (1679616 * k + 177815) % 2 ≠ 0 by omega]
    omega
  have h20 : C (5038848 * k + 533446) = 2519424 * k + 266723 := by
    unfold C
    simp [show (5038848 * k + 533446) % 2 = 0 by omega]
    omega
  have h21 : C (2519424 * k + 266723) = 7558272 * k + 800170 := by
    unfold C
    simp [show (2519424 * k + 266723) % 2 ≠ 0 by omega]
    omega
  have h22 : C (7558272 * k + 800170) = 3779136 * k + 400085 := by
    unfold C
    simp [show (7558272 * k + 800170) % 2 = 0 by omega]
    omega
  have h23 : C (3779136 * k + 400085) = 11337408 * k + 1200256 := by
    unfold C
    simp [show (3779136 * k + 400085) % 2 ≠ 0 by omega]
    omega
  have h24 : C (11337408 * k + 1200256) = 5668704 * k + 600128 := by
    unfold C
    simp [show (11337408 * k + 1200256) % 2 = 0 by omega]
    omega
  have h25 : C (5668704 * k + 600128) = 2834352 * k + 300064 := by
    unfold C
    simp [show (5668704 * k + 600128) % 2 = 0 by omega]
    omega
  have h26 : C (2834352 * k + 300064) = 1417176 * k + 150032 := by
    unfold C
    simp [show (2834352 * k + 300064) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 150032) = 708588 * k + 75016 := by
    unfold C
    simp [show (1417176 * k + 150032) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 75016) = 354294 * k + 37508 := by
    unfold C
    simp [show (708588 * k + 75016) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 37508) = 177147 * k + 18754 := by
    unfold C
    simp [show (354294 * k + 37508) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 27751) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 27751))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_28063 : ∀ k : Nat,
    iterate (262144 * k + 28063) 29 = 177147 * k + 18965 ∧
      177147 * k + 18965 < 262144 * k + 28063 := by
  intro k
  have h1 : C (262144 * k + 28063) = 786432 * k + 84190 := by
    unfold C
    simp [show (262144 * k + 28063) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 84190) = 393216 * k + 42095 := by
    unfold C
    simp [show (786432 * k + 84190) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 42095) = 1179648 * k + 126286 := by
    unfold C
    simp [show (393216 * k + 42095) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 126286) = 589824 * k + 63143 := by
    unfold C
    simp [show (1179648 * k + 126286) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 63143) = 1769472 * k + 189430 := by
    unfold C
    simp [show (589824 * k + 63143) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 189430) = 884736 * k + 94715 := by
    unfold C
    simp [show (1769472 * k + 189430) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 94715) = 2654208 * k + 284146 := by
    unfold C
    simp [show (884736 * k + 94715) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 284146) = 1327104 * k + 142073 := by
    unfold C
    simp [show (2654208 * k + 284146) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 142073) = 3981312 * k + 426220 := by
    unfold C
    simp [show (1327104 * k + 142073) % 2 ≠ 0 by omega]
    omega
  have h10 : C (3981312 * k + 426220) = 1990656 * k + 213110 := by
    unfold C
    simp [show (3981312 * k + 426220) % 2 = 0 by omega]
    omega
  have h11 : C (1990656 * k + 213110) = 995328 * k + 106555 := by
    unfold C
    simp [show (1990656 * k + 213110) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 106555) = 2985984 * k + 319666 := by
    unfold C
    simp [show (995328 * k + 106555) % 2 ≠ 0 by omega]
    omega
  have h13 : C (2985984 * k + 319666) = 1492992 * k + 159833 := by
    unfold C
    simp [show (2985984 * k + 319666) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 159833) = 4478976 * k + 479500 := by
    unfold C
    simp [show (1492992 * k + 159833) % 2 ≠ 0 by omega]
    omega
  have h15 : C (4478976 * k + 479500) = 2239488 * k + 239750 := by
    unfold C
    simp [show (4478976 * k + 479500) % 2 = 0 by omega]
    omega
  have h16 : C (2239488 * k + 239750) = 1119744 * k + 119875 := by
    unfold C
    simp [show (2239488 * k + 239750) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 119875) = 3359232 * k + 359626 := by
    unfold C
    simp [show (1119744 * k + 119875) % 2 ≠ 0 by omega]
    omega
  have h18 : C (3359232 * k + 359626) = 1679616 * k + 179813 := by
    unfold C
    simp [show (3359232 * k + 359626) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 179813) = 5038848 * k + 539440 := by
    unfold C
    simp [show (1679616 * k + 179813) % 2 ≠ 0 by omega]
    omega
  have h20 : C (5038848 * k + 539440) = 2519424 * k + 269720 := by
    unfold C
    simp [show (5038848 * k + 539440) % 2 = 0 by omega]
    omega
  have h21 : C (2519424 * k + 269720) = 1259712 * k + 134860 := by
    unfold C
    simp [show (2519424 * k + 269720) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 134860) = 629856 * k + 67430 := by
    unfold C
    simp [show (1259712 * k + 134860) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 67430) = 314928 * k + 33715 := by
    unfold C
    simp [show (629856 * k + 67430) % 2 = 0 by omega]
    omega
  have h24 : C (314928 * k + 33715) = 944784 * k + 101146 := by
    unfold C
    simp [show (314928 * k + 33715) % 2 ≠ 0 by omega]
    omega
  have h25 : C (944784 * k + 101146) = 472392 * k + 50573 := by
    unfold C
    simp [show (944784 * k + 101146) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 50573) = 1417176 * k + 151720 := by
    unfold C
    simp [show (472392 * k + 50573) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 151720) = 708588 * k + 75860 := by
    unfold C
    simp [show (1417176 * k + 151720) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 75860) = 354294 * k + 37930 := by
    unfold C
    simp [show (708588 * k + 75860) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 37930) = 177147 * k + 18965 := by
    unfold C
    simp [show (354294 * k + 37930) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 28063) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 28063))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_28143 : ∀ k : Nat,
    iterate (262144 * k + 28143) 29 = 177147 * k + 19019 ∧
      177147 * k + 19019 < 262144 * k + 28143 := by
  intro k
  have h1 : C (262144 * k + 28143) = 786432 * k + 84430 := by
    unfold C
    simp [show (262144 * k + 28143) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 84430) = 393216 * k + 42215 := by
    unfold C
    simp [show (786432 * k + 84430) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 42215) = 1179648 * k + 126646 := by
    unfold C
    simp [show (393216 * k + 42215) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 126646) = 589824 * k + 63323 := by
    unfold C
    simp [show (1179648 * k + 126646) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 63323) = 1769472 * k + 189970 := by
    unfold C
    simp [show (589824 * k + 63323) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 189970) = 884736 * k + 94985 := by
    unfold C
    simp [show (1769472 * k + 189970) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 94985) = 2654208 * k + 284956 := by
    unfold C
    simp [show (884736 * k + 94985) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 284956) = 1327104 * k + 142478 := by
    unfold C
    simp [show (2654208 * k + 284956) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 142478) = 663552 * k + 71239 := by
    unfold C
    simp [show (1327104 * k + 142478) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 71239) = 1990656 * k + 213718 := by
    unfold C
    simp [show (663552 * k + 71239) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 213718) = 995328 * k + 106859 := by
    unfold C
    simp [show (1990656 * k + 213718) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 106859) = 2985984 * k + 320578 := by
    unfold C
    simp [show (995328 * k + 106859) % 2 ≠ 0 by omega]
    omega
  have h13 : C (2985984 * k + 320578) = 1492992 * k + 160289 := by
    unfold C
    simp [show (2985984 * k + 320578) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 160289) = 4478976 * k + 480868 := by
    unfold C
    simp [show (1492992 * k + 160289) % 2 ≠ 0 by omega]
    omega
  have h15 : C (4478976 * k + 480868) = 2239488 * k + 240434 := by
    unfold C
    simp [show (4478976 * k + 480868) % 2 = 0 by omega]
    omega
  have h16 : C (2239488 * k + 240434) = 1119744 * k + 120217 := by
    unfold C
    simp [show (2239488 * k + 240434) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 120217) = 3359232 * k + 360652 := by
    unfold C
    simp [show (1119744 * k + 120217) % 2 ≠ 0 by omega]
    omega
  have h18 : C (3359232 * k + 360652) = 1679616 * k + 180326 := by
    unfold C
    simp [show (3359232 * k + 360652) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 180326) = 839808 * k + 90163 := by
    unfold C
    simp [show (1679616 * k + 180326) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 90163) = 2519424 * k + 270490 := by
    unfold C
    simp [show (839808 * k + 90163) % 2 ≠ 0 by omega]
    omega
  have h21 : C (2519424 * k + 270490) = 1259712 * k + 135245 := by
    unfold C
    simp [show (2519424 * k + 270490) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 135245) = 3779136 * k + 405736 := by
    unfold C
    simp [show (1259712 * k + 135245) % 2 ≠ 0 by omega]
    omega
  have h23 : C (3779136 * k + 405736) = 1889568 * k + 202868 := by
    unfold C
    simp [show (3779136 * k + 405736) % 2 = 0 by omega]
    omega
  have h24 : C (1889568 * k + 202868) = 944784 * k + 101434 := by
    unfold C
    simp [show (1889568 * k + 202868) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 101434) = 472392 * k + 50717 := by
    unfold C
    simp [show (944784 * k + 101434) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 50717) = 1417176 * k + 152152 := by
    unfold C
    simp [show (472392 * k + 50717) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 152152) = 708588 * k + 76076 := by
    unfold C
    simp [show (1417176 * k + 152152) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 76076) = 354294 * k + 38038 := by
    unfold C
    simp [show (708588 * k + 76076) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 38038) = 177147 * k + 19019 := by
    unfold C
    simp [show (354294 * k + 38038) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 28143) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 28143))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_28187 : ∀ k : Nat,
    iterate (262144 * k + 28187) 29 = 177147 * k + 19049 ∧
      177147 * k + 19049 < 262144 * k + 28187 := by
  intro k
  have h1 : C (262144 * k + 28187) = 786432 * k + 84562 := by
    unfold C
    simp [show (262144 * k + 28187) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 84562) = 393216 * k + 42281 := by
    unfold C
    simp [show (786432 * k + 84562) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 42281) = 1179648 * k + 126844 := by
    unfold C
    simp [show (393216 * k + 42281) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 126844) = 589824 * k + 63422 := by
    unfold C
    simp [show (1179648 * k + 126844) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 63422) = 294912 * k + 31711 := by
    unfold C
    simp [show (589824 * k + 63422) % 2 = 0 by omega]
    omega
  have h6 : C (294912 * k + 31711) = 884736 * k + 95134 := by
    unfold C
    simp [show (294912 * k + 31711) % 2 ≠ 0 by omega]
    omega
  have h7 : C (884736 * k + 95134) = 442368 * k + 47567 := by
    unfold C
    simp [show (884736 * k + 95134) % 2 = 0 by omega]
    omega
  have h8 : C (442368 * k + 47567) = 1327104 * k + 142702 := by
    unfold C
    simp [show (442368 * k + 47567) % 2 ≠ 0 by omega]
    omega
  have h9 : C (1327104 * k + 142702) = 663552 * k + 71351 := by
    unfold C
    simp [show (1327104 * k + 142702) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 71351) = 1990656 * k + 214054 := by
    unfold C
    simp [show (663552 * k + 71351) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 214054) = 995328 * k + 107027 := by
    unfold C
    simp [show (1990656 * k + 214054) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 107027) = 2985984 * k + 321082 := by
    unfold C
    simp [show (995328 * k + 107027) % 2 ≠ 0 by omega]
    omega
  have h13 : C (2985984 * k + 321082) = 1492992 * k + 160541 := by
    unfold C
    simp [show (2985984 * k + 321082) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 160541) = 4478976 * k + 481624 := by
    unfold C
    simp [show (1492992 * k + 160541) % 2 ≠ 0 by omega]
    omega
  have h15 : C (4478976 * k + 481624) = 2239488 * k + 240812 := by
    unfold C
    simp [show (4478976 * k + 481624) % 2 = 0 by omega]
    omega
  have h16 : C (2239488 * k + 240812) = 1119744 * k + 120406 := by
    unfold C
    simp [show (2239488 * k + 240812) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 120406) = 559872 * k + 60203 := by
    unfold C
    simp [show (1119744 * k + 120406) % 2 = 0 by omega]
    omega
  have h18 : C (559872 * k + 60203) = 1679616 * k + 180610 := by
    unfold C
    simp [show (559872 * k + 60203) % 2 ≠ 0 by omega]
    omega
  have h19 : C (1679616 * k + 180610) = 839808 * k + 90305 := by
    unfold C
    simp [show (1679616 * k + 180610) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 90305) = 2519424 * k + 270916 := by
    unfold C
    simp [show (839808 * k + 90305) % 2 ≠ 0 by omega]
    omega
  have h21 : C (2519424 * k + 270916) = 1259712 * k + 135458 := by
    unfold C
    simp [show (2519424 * k + 270916) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 135458) = 629856 * k + 67729 := by
    unfold C
    simp [show (1259712 * k + 135458) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 67729) = 1889568 * k + 203188 := by
    unfold C
    simp [show (629856 * k + 67729) % 2 ≠ 0 by omega]
    omega
  have h24 : C (1889568 * k + 203188) = 944784 * k + 101594 := by
    unfold C
    simp [show (1889568 * k + 203188) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 101594) = 472392 * k + 50797 := by
    unfold C
    simp [show (944784 * k + 101594) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 50797) = 1417176 * k + 152392 := by
    unfold C
    simp [show (472392 * k + 50797) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 152392) = 708588 * k + 76196 := by
    unfold C
    simp [show (1417176 * k + 152392) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 76196) = 354294 * k + 38098 := by
    unfold C
    simp [show (708588 * k + 76196) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 38098) = 177147 * k + 19049 := by
    unfold C
    simp [show (354294 * k + 38098) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 28187) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 28187))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_28955 : ∀ k : Nat,
    iterate (262144 * k + 28955) 29 = 177147 * k + 19568 ∧
      177147 * k + 19568 < 262144 * k + 28955 := by
  intro k
  have h1 : C (262144 * k + 28955) = 786432 * k + 86866 := by
    unfold C
    simp [show (262144 * k + 28955) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 86866) = 393216 * k + 43433 := by
    unfold C
    simp [show (786432 * k + 86866) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 43433) = 1179648 * k + 130300 := by
    unfold C
    simp [show (393216 * k + 43433) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 130300) = 589824 * k + 65150 := by
    unfold C
    simp [show (1179648 * k + 130300) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 65150) = 294912 * k + 32575 := by
    unfold C
    simp [show (589824 * k + 65150) % 2 = 0 by omega]
    omega
  have h6 : C (294912 * k + 32575) = 884736 * k + 97726 := by
    unfold C
    simp [show (294912 * k + 32575) % 2 ≠ 0 by omega]
    omega
  have h7 : C (884736 * k + 97726) = 442368 * k + 48863 := by
    unfold C
    simp [show (884736 * k + 97726) % 2 = 0 by omega]
    omega
  have h8 : C (442368 * k + 48863) = 1327104 * k + 146590 := by
    unfold C
    simp [show (442368 * k + 48863) % 2 ≠ 0 by omega]
    omega
  have h9 : C (1327104 * k + 146590) = 663552 * k + 73295 := by
    unfold C
    simp [show (1327104 * k + 146590) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 73295) = 1990656 * k + 219886 := by
    unfold C
    simp [show (663552 * k + 73295) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 219886) = 995328 * k + 109943 := by
    unfold C
    simp [show (1990656 * k + 219886) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 109943) = 2985984 * k + 329830 := by
    unfold C
    simp [show (995328 * k + 109943) % 2 ≠ 0 by omega]
    omega
  have h13 : C (2985984 * k + 329830) = 1492992 * k + 164915 := by
    unfold C
    simp [show (2985984 * k + 329830) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 164915) = 4478976 * k + 494746 := by
    unfold C
    simp [show (1492992 * k + 164915) % 2 ≠ 0 by omega]
    omega
  have h15 : C (4478976 * k + 494746) = 2239488 * k + 247373 := by
    unfold C
    simp [show (4478976 * k + 494746) % 2 = 0 by omega]
    omega
  have h16 : C (2239488 * k + 247373) = 6718464 * k + 742120 := by
    unfold C
    simp [show (2239488 * k + 247373) % 2 ≠ 0 by omega]
    omega
  have h17 : C (6718464 * k + 742120) = 3359232 * k + 371060 := by
    unfold C
    simp [show (6718464 * k + 742120) % 2 = 0 by omega]
    omega
  have h18 : C (3359232 * k + 371060) = 1679616 * k + 185530 := by
    unfold C
    simp [show (3359232 * k + 371060) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 185530) = 839808 * k + 92765 := by
    unfold C
    simp [show (1679616 * k + 185530) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 92765) = 2519424 * k + 278296 := by
    unfold C
    simp [show (839808 * k + 92765) % 2 ≠ 0 by omega]
    omega
  have h21 : C (2519424 * k + 278296) = 1259712 * k + 139148 := by
    unfold C
    simp [show (2519424 * k + 278296) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 139148) = 629856 * k + 69574 := by
    unfold C
    simp [show (1259712 * k + 139148) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 69574) = 314928 * k + 34787 := by
    unfold C
    simp [show (629856 * k + 69574) % 2 = 0 by omega]
    omega
  have h24 : C (314928 * k + 34787) = 944784 * k + 104362 := by
    unfold C
    simp [show (314928 * k + 34787) % 2 ≠ 0 by omega]
    omega
  have h25 : C (944784 * k + 104362) = 472392 * k + 52181 := by
    unfold C
    simp [show (944784 * k + 104362) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 52181) = 1417176 * k + 156544 := by
    unfold C
    simp [show (472392 * k + 52181) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 156544) = 708588 * k + 78272 := by
    unfold C
    simp [show (1417176 * k + 156544) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 78272) = 354294 * k + 39136 := by
    unfold C
    simp [show (708588 * k + 78272) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 39136) = 177147 * k + 19568 := by
    unfold C
    simp [show (354294 * k + 39136) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 28955) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 28955))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_29311 : ∀ k : Nat,
    iterate (262144 * k + 29311) 29 = 177147 * k + 19808 ∧
      177147 * k + 19808 < 262144 * k + 29311 := by
  intro k
  have h1 : C (262144 * k + 29311) = 786432 * k + 87934 := by
    unfold C
    simp [show (262144 * k + 29311) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 87934) = 393216 * k + 43967 := by
    unfold C
    simp [show (786432 * k + 87934) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 43967) = 1179648 * k + 131902 := by
    unfold C
    simp [show (393216 * k + 43967) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 131902) = 589824 * k + 65951 := by
    unfold C
    simp [show (1179648 * k + 131902) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 65951) = 1769472 * k + 197854 := by
    unfold C
    simp [show (589824 * k + 65951) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 197854) = 884736 * k + 98927 := by
    unfold C
    simp [show (1769472 * k + 197854) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 98927) = 2654208 * k + 296782 := by
    unfold C
    simp [show (884736 * k + 98927) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 296782) = 1327104 * k + 148391 := by
    unfold C
    simp [show (2654208 * k + 296782) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 148391) = 3981312 * k + 445174 := by
    unfold C
    simp [show (1327104 * k + 148391) % 2 ≠ 0 by omega]
    omega
  have h10 : C (3981312 * k + 445174) = 1990656 * k + 222587 := by
    unfold C
    simp [show (3981312 * k + 445174) % 2 = 0 by omega]
    omega
  have h11 : C (1990656 * k + 222587) = 5971968 * k + 667762 := by
    unfold C
    simp [show (1990656 * k + 222587) % 2 ≠ 0 by omega]
    omega
  have h12 : C (5971968 * k + 667762) = 2985984 * k + 333881 := by
    unfold C
    simp [show (5971968 * k + 667762) % 2 = 0 by omega]
    omega
  have h13 : C (2985984 * k + 333881) = 8957952 * k + 1001644 := by
    unfold C
    simp [show (2985984 * k + 333881) % 2 ≠ 0 by omega]
    omega
  have h14 : C (8957952 * k + 1001644) = 4478976 * k + 500822 := by
    unfold C
    simp [show (8957952 * k + 1001644) % 2 = 0 by omega]
    omega
  have h15 : C (4478976 * k + 500822) = 2239488 * k + 250411 := by
    unfold C
    simp [show (4478976 * k + 500822) % 2 = 0 by omega]
    omega
  have h16 : C (2239488 * k + 250411) = 6718464 * k + 751234 := by
    unfold C
    simp [show (2239488 * k + 250411) % 2 ≠ 0 by omega]
    omega
  have h17 : C (6718464 * k + 751234) = 3359232 * k + 375617 := by
    unfold C
    simp [show (6718464 * k + 751234) % 2 = 0 by omega]
    omega
  have h18 : C (3359232 * k + 375617) = 10077696 * k + 1126852 := by
    unfold C
    simp [show (3359232 * k + 375617) % 2 ≠ 0 by omega]
    omega
  have h19 : C (10077696 * k + 1126852) = 5038848 * k + 563426 := by
    unfold C
    simp [show (10077696 * k + 1126852) % 2 = 0 by omega]
    omega
  have h20 : C (5038848 * k + 563426) = 2519424 * k + 281713 := by
    unfold C
    simp [show (5038848 * k + 563426) % 2 = 0 by omega]
    omega
  have h21 : C (2519424 * k + 281713) = 7558272 * k + 845140 := by
    unfold C
    simp [show (2519424 * k + 281713) % 2 ≠ 0 by omega]
    omega
  have h22 : C (7558272 * k + 845140) = 3779136 * k + 422570 := by
    unfold C
    simp [show (7558272 * k + 845140) % 2 = 0 by omega]
    omega
  have h23 : C (3779136 * k + 422570) = 1889568 * k + 211285 := by
    unfold C
    simp [show (3779136 * k + 422570) % 2 = 0 by omega]
    omega
  have h24 : C (1889568 * k + 211285) = 5668704 * k + 633856 := by
    unfold C
    simp [show (1889568 * k + 211285) % 2 ≠ 0 by omega]
    omega
  have h25 : C (5668704 * k + 633856) = 2834352 * k + 316928 := by
    unfold C
    simp [show (5668704 * k + 633856) % 2 = 0 by omega]
    omega
  have h26 : C (2834352 * k + 316928) = 1417176 * k + 158464 := by
    unfold C
    simp [show (2834352 * k + 316928) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 158464) = 708588 * k + 79232 := by
    unfold C
    simp [show (1417176 * k + 158464) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 79232) = 354294 * k + 39616 := by
    unfold C
    simp [show (708588 * k + 79232) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 39616) = 177147 * k + 19808 := by
    unfold C
    simp [show (354294 * k + 39616) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 29311) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 29311))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_29799 : ∀ k : Nat,
    iterate (262144 * k + 29799) 29 = 177147 * k + 20138 ∧
      177147 * k + 20138 < 262144 * k + 29799 := by
  intro k
  have h1 : C (262144 * k + 29799) = 786432 * k + 89398 := by
    unfold C
    simp [show (262144 * k + 29799) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 89398) = 393216 * k + 44699 := by
    unfold C
    simp [show (786432 * k + 89398) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 44699) = 1179648 * k + 134098 := by
    unfold C
    simp [show (393216 * k + 44699) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 134098) = 589824 * k + 67049 := by
    unfold C
    simp [show (1179648 * k + 134098) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 67049) = 1769472 * k + 201148 := by
    unfold C
    simp [show (589824 * k + 67049) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 201148) = 884736 * k + 100574 := by
    unfold C
    simp [show (1769472 * k + 201148) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 100574) = 442368 * k + 50287 := by
    unfold C
    simp [show (884736 * k + 100574) % 2 = 0 by omega]
    omega
  have h8 : C (442368 * k + 50287) = 1327104 * k + 150862 := by
    unfold C
    simp [show (442368 * k + 50287) % 2 ≠ 0 by omega]
    omega
  have h9 : C (1327104 * k + 150862) = 663552 * k + 75431 := by
    unfold C
    simp [show (1327104 * k + 150862) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 75431) = 1990656 * k + 226294 := by
    unfold C
    simp [show (663552 * k + 75431) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 226294) = 995328 * k + 113147 := by
    unfold C
    simp [show (1990656 * k + 226294) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 113147) = 2985984 * k + 339442 := by
    unfold C
    simp [show (995328 * k + 113147) % 2 ≠ 0 by omega]
    omega
  have h13 : C (2985984 * k + 339442) = 1492992 * k + 169721 := by
    unfold C
    simp [show (2985984 * k + 339442) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 169721) = 4478976 * k + 509164 := by
    unfold C
    simp [show (1492992 * k + 169721) % 2 ≠ 0 by omega]
    omega
  have h15 : C (4478976 * k + 509164) = 2239488 * k + 254582 := by
    unfold C
    simp [show (4478976 * k + 509164) % 2 = 0 by omega]
    omega
  have h16 : C (2239488 * k + 254582) = 1119744 * k + 127291 := by
    unfold C
    simp [show (2239488 * k + 254582) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 127291) = 3359232 * k + 381874 := by
    unfold C
    simp [show (1119744 * k + 127291) % 2 ≠ 0 by omega]
    omega
  have h18 : C (3359232 * k + 381874) = 1679616 * k + 190937 := by
    unfold C
    simp [show (3359232 * k + 381874) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 190937) = 5038848 * k + 572812 := by
    unfold C
    simp [show (1679616 * k + 190937) % 2 ≠ 0 by omega]
    omega
  have h20 : C (5038848 * k + 572812) = 2519424 * k + 286406 := by
    unfold C
    simp [show (5038848 * k + 572812) % 2 = 0 by omega]
    omega
  have h21 : C (2519424 * k + 286406) = 1259712 * k + 143203 := by
    unfold C
    simp [show (2519424 * k + 286406) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 143203) = 3779136 * k + 429610 := by
    unfold C
    simp [show (1259712 * k + 143203) % 2 ≠ 0 by omega]
    omega
  have h23 : C (3779136 * k + 429610) = 1889568 * k + 214805 := by
    unfold C
    simp [show (3779136 * k + 429610) % 2 = 0 by omega]
    omega
  have h24 : C (1889568 * k + 214805) = 5668704 * k + 644416 := by
    unfold C
    simp [show (1889568 * k + 214805) % 2 ≠ 0 by omega]
    omega
  have h25 : C (5668704 * k + 644416) = 2834352 * k + 322208 := by
    unfold C
    simp [show (5668704 * k + 644416) % 2 = 0 by omega]
    omega
  have h26 : C (2834352 * k + 322208) = 1417176 * k + 161104 := by
    unfold C
    simp [show (2834352 * k + 322208) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 161104) = 708588 * k + 80552 := by
    unfold C
    simp [show (1417176 * k + 161104) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 80552) = 354294 * k + 40276 := by
    unfold C
    simp [show (708588 * k + 80552) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 40276) = 177147 * k + 20138 := by
    unfold C
    simp [show (354294 * k + 40276) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 29799) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 29799))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_30055 : ∀ k : Nat,
    iterate (262144 * k + 30055) 29 = 177147 * k + 20311 ∧
      177147 * k + 20311 < 262144 * k + 30055 := by
  intro k
  have h1 : C (262144 * k + 30055) = 786432 * k + 90166 := by
    unfold C
    simp [show (262144 * k + 30055) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 90166) = 393216 * k + 45083 := by
    unfold C
    simp [show (786432 * k + 90166) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 45083) = 1179648 * k + 135250 := by
    unfold C
    simp [show (393216 * k + 45083) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 135250) = 589824 * k + 67625 := by
    unfold C
    simp [show (1179648 * k + 135250) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 67625) = 1769472 * k + 202876 := by
    unfold C
    simp [show (589824 * k + 67625) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 202876) = 884736 * k + 101438 := by
    unfold C
    simp [show (1769472 * k + 202876) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 101438) = 442368 * k + 50719 := by
    unfold C
    simp [show (884736 * k + 101438) % 2 = 0 by omega]
    omega
  have h8 : C (442368 * k + 50719) = 1327104 * k + 152158 := by
    unfold C
    simp [show (442368 * k + 50719) % 2 ≠ 0 by omega]
    omega
  have h9 : C (1327104 * k + 152158) = 663552 * k + 76079 := by
    unfold C
    simp [show (1327104 * k + 152158) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 76079) = 1990656 * k + 228238 := by
    unfold C
    simp [show (663552 * k + 76079) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 228238) = 995328 * k + 114119 := by
    unfold C
    simp [show (1990656 * k + 228238) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 114119) = 2985984 * k + 342358 := by
    unfold C
    simp [show (995328 * k + 114119) % 2 ≠ 0 by omega]
    omega
  have h13 : C (2985984 * k + 342358) = 1492992 * k + 171179 := by
    unfold C
    simp [show (2985984 * k + 342358) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 171179) = 4478976 * k + 513538 := by
    unfold C
    simp [show (1492992 * k + 171179) % 2 ≠ 0 by omega]
    omega
  have h15 : C (4478976 * k + 513538) = 2239488 * k + 256769 := by
    unfold C
    simp [show (4478976 * k + 513538) % 2 = 0 by omega]
    omega
  have h16 : C (2239488 * k + 256769) = 6718464 * k + 770308 := by
    unfold C
    simp [show (2239488 * k + 256769) % 2 ≠ 0 by omega]
    omega
  have h17 : C (6718464 * k + 770308) = 3359232 * k + 385154 := by
    unfold C
    simp [show (6718464 * k + 770308) % 2 = 0 by omega]
    omega
  have h18 : C (3359232 * k + 385154) = 1679616 * k + 192577 := by
    unfold C
    simp [show (3359232 * k + 385154) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 192577) = 5038848 * k + 577732 := by
    unfold C
    simp [show (1679616 * k + 192577) % 2 ≠ 0 by omega]
    omega
  have h20 : C (5038848 * k + 577732) = 2519424 * k + 288866 := by
    unfold C
    simp [show (5038848 * k + 577732) % 2 = 0 by omega]
    omega
  have h21 : C (2519424 * k + 288866) = 1259712 * k + 144433 := by
    unfold C
    simp [show (2519424 * k + 288866) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 144433) = 3779136 * k + 433300 := by
    unfold C
    simp [show (1259712 * k + 144433) % 2 ≠ 0 by omega]
    omega
  have h23 : C (3779136 * k + 433300) = 1889568 * k + 216650 := by
    unfold C
    simp [show (3779136 * k + 433300) % 2 = 0 by omega]
    omega
  have h24 : C (1889568 * k + 216650) = 944784 * k + 108325 := by
    unfold C
    simp [show (1889568 * k + 216650) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 108325) = 2834352 * k + 324976 := by
    unfold C
    simp [show (944784 * k + 108325) % 2 ≠ 0 by omega]
    omega
  have h26 : C (2834352 * k + 324976) = 1417176 * k + 162488 := by
    unfold C
    simp [show (2834352 * k + 324976) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 162488) = 708588 * k + 81244 := by
    unfold C
    simp [show (1417176 * k + 162488) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 81244) = 354294 * k + 40622 := by
    unfold C
    simp [show (708588 * k + 81244) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 40622) = 177147 * k + 20311 := by
    unfold C
    simp [show (354294 * k + 40622) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 30055) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 30055))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_30335 : ∀ k : Nat,
    iterate (262144 * k + 30335) 29 = 177147 * k + 20500 ∧
      177147 * k + 20500 < 262144 * k + 30335 := by
  intro k
  have h1 : C (262144 * k + 30335) = 786432 * k + 91006 := by
    unfold C
    simp [show (262144 * k + 30335) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 91006) = 393216 * k + 45503 := by
    unfold C
    simp [show (786432 * k + 91006) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 45503) = 1179648 * k + 136510 := by
    unfold C
    simp [show (393216 * k + 45503) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 136510) = 589824 * k + 68255 := by
    unfold C
    simp [show (1179648 * k + 136510) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 68255) = 1769472 * k + 204766 := by
    unfold C
    simp [show (589824 * k + 68255) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 204766) = 884736 * k + 102383 := by
    unfold C
    simp [show (1769472 * k + 204766) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 102383) = 2654208 * k + 307150 := by
    unfold C
    simp [show (884736 * k + 102383) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 307150) = 1327104 * k + 153575 := by
    unfold C
    simp [show (2654208 * k + 307150) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 153575) = 3981312 * k + 460726 := by
    unfold C
    simp [show (1327104 * k + 153575) % 2 ≠ 0 by omega]
    omega
  have h10 : C (3981312 * k + 460726) = 1990656 * k + 230363 := by
    unfold C
    simp [show (3981312 * k + 460726) % 2 = 0 by omega]
    omega
  have h11 : C (1990656 * k + 230363) = 5971968 * k + 691090 := by
    unfold C
    simp [show (1990656 * k + 230363) % 2 ≠ 0 by omega]
    omega
  have h12 : C (5971968 * k + 691090) = 2985984 * k + 345545 := by
    unfold C
    simp [show (5971968 * k + 691090) % 2 = 0 by omega]
    omega
  have h13 : C (2985984 * k + 345545) = 8957952 * k + 1036636 := by
    unfold C
    simp [show (2985984 * k + 345545) % 2 ≠ 0 by omega]
    omega
  have h14 : C (8957952 * k + 1036636) = 4478976 * k + 518318 := by
    unfold C
    simp [show (8957952 * k + 1036636) % 2 = 0 by omega]
    omega
  have h15 : C (4478976 * k + 518318) = 2239488 * k + 259159 := by
    unfold C
    simp [show (4478976 * k + 518318) % 2 = 0 by omega]
    omega
  have h16 : C (2239488 * k + 259159) = 6718464 * k + 777478 := by
    unfold C
    simp [show (2239488 * k + 259159) % 2 ≠ 0 by omega]
    omega
  have h17 : C (6718464 * k + 777478) = 3359232 * k + 388739 := by
    unfold C
    simp [show (6718464 * k + 777478) % 2 = 0 by omega]
    omega
  have h18 : C (3359232 * k + 388739) = 10077696 * k + 1166218 := by
    unfold C
    simp [show (3359232 * k + 388739) % 2 ≠ 0 by omega]
    omega
  have h19 : C (10077696 * k + 1166218) = 5038848 * k + 583109 := by
    unfold C
    simp [show (10077696 * k + 1166218) % 2 = 0 by omega]
    omega
  have h20 : C (5038848 * k + 583109) = 15116544 * k + 1749328 := by
    unfold C
    simp [show (5038848 * k + 583109) % 2 ≠ 0 by omega]
    omega
  have h21 : C (15116544 * k + 1749328) = 7558272 * k + 874664 := by
    unfold C
    simp [show (15116544 * k + 1749328) % 2 = 0 by omega]
    omega
  have h22 : C (7558272 * k + 874664) = 3779136 * k + 437332 := by
    unfold C
    simp [show (7558272 * k + 874664) % 2 = 0 by omega]
    omega
  have h23 : C (3779136 * k + 437332) = 1889568 * k + 218666 := by
    unfold C
    simp [show (3779136 * k + 437332) % 2 = 0 by omega]
    omega
  have h24 : C (1889568 * k + 218666) = 944784 * k + 109333 := by
    unfold C
    simp [show (1889568 * k + 218666) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 109333) = 2834352 * k + 328000 := by
    unfold C
    simp [show (944784 * k + 109333) % 2 ≠ 0 by omega]
    omega
  have h26 : C (2834352 * k + 328000) = 1417176 * k + 164000 := by
    unfold C
    simp [show (2834352 * k + 328000) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 164000) = 708588 * k + 82000 := by
    unfold C
    simp [show (1417176 * k + 164000) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 82000) = 354294 * k + 41000 := by
    unfold C
    simp [show (708588 * k + 82000) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 41000) = 177147 * k + 20500 := by
    unfold C
    simp [show (354294 * k + 41000) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 30335) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 30335))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_30567 : ∀ k : Nat,
    iterate (262144 * k + 30567) 29 = 177147 * k + 20657 ∧
      177147 * k + 20657 < 262144 * k + 30567 := by
  intro k
  have h1 : C (262144 * k + 30567) = 786432 * k + 91702 := by
    unfold C
    simp [show (262144 * k + 30567) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 91702) = 393216 * k + 45851 := by
    unfold C
    simp [show (786432 * k + 91702) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 45851) = 1179648 * k + 137554 := by
    unfold C
    simp [show (393216 * k + 45851) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 137554) = 589824 * k + 68777 := by
    unfold C
    simp [show (1179648 * k + 137554) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 68777) = 1769472 * k + 206332 := by
    unfold C
    simp [show (589824 * k + 68777) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 206332) = 884736 * k + 103166 := by
    unfold C
    simp [show (1769472 * k + 206332) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 103166) = 442368 * k + 51583 := by
    unfold C
    simp [show (884736 * k + 103166) % 2 = 0 by omega]
    omega
  have h8 : C (442368 * k + 51583) = 1327104 * k + 154750 := by
    unfold C
    simp [show (442368 * k + 51583) % 2 ≠ 0 by omega]
    omega
  have h9 : C (1327104 * k + 154750) = 663552 * k + 77375 := by
    unfold C
    simp [show (1327104 * k + 154750) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 77375) = 1990656 * k + 232126 := by
    unfold C
    simp [show (663552 * k + 77375) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 232126) = 995328 * k + 116063 := by
    unfold C
    simp [show (1990656 * k + 232126) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 116063) = 2985984 * k + 348190 := by
    unfold C
    simp [show (995328 * k + 116063) % 2 ≠ 0 by omega]
    omega
  have h13 : C (2985984 * k + 348190) = 1492992 * k + 174095 := by
    unfold C
    simp [show (2985984 * k + 348190) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 174095) = 4478976 * k + 522286 := by
    unfold C
    simp [show (1492992 * k + 174095) % 2 ≠ 0 by omega]
    omega
  have h15 : C (4478976 * k + 522286) = 2239488 * k + 261143 := by
    unfold C
    simp [show (4478976 * k + 522286) % 2 = 0 by omega]
    omega
  have h16 : C (2239488 * k + 261143) = 6718464 * k + 783430 := by
    unfold C
    simp [show (2239488 * k + 261143) % 2 ≠ 0 by omega]
    omega
  have h17 : C (6718464 * k + 783430) = 3359232 * k + 391715 := by
    unfold C
    simp [show (6718464 * k + 783430) % 2 = 0 by omega]
    omega
  have h18 : C (3359232 * k + 391715) = 10077696 * k + 1175146 := by
    unfold C
    simp [show (3359232 * k + 391715) % 2 ≠ 0 by omega]
    omega
  have h19 : C (10077696 * k + 1175146) = 5038848 * k + 587573 := by
    unfold C
    simp [show (10077696 * k + 1175146) % 2 = 0 by omega]
    omega
  have h20 : C (5038848 * k + 587573) = 15116544 * k + 1762720 := by
    unfold C
    simp [show (5038848 * k + 587573) % 2 ≠ 0 by omega]
    omega
  have h21 : C (15116544 * k + 1762720) = 7558272 * k + 881360 := by
    unfold C
    simp [show (15116544 * k + 1762720) % 2 = 0 by omega]
    omega
  have h22 : C (7558272 * k + 881360) = 3779136 * k + 440680 := by
    unfold C
    simp [show (7558272 * k + 881360) % 2 = 0 by omega]
    omega
  have h23 : C (3779136 * k + 440680) = 1889568 * k + 220340 := by
    unfold C
    simp [show (3779136 * k + 440680) % 2 = 0 by omega]
    omega
  have h24 : C (1889568 * k + 220340) = 944784 * k + 110170 := by
    unfold C
    simp [show (1889568 * k + 220340) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 110170) = 472392 * k + 55085 := by
    unfold C
    simp [show (944784 * k + 110170) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 55085) = 1417176 * k + 165256 := by
    unfold C
    simp [show (472392 * k + 55085) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 165256) = 708588 * k + 82628 := by
    unfold C
    simp [show (1417176 * k + 165256) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 82628) = 354294 * k + 41314 := by
    unfold C
    simp [show (708588 * k + 82628) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 41314) = 177147 * k + 20657 := by
    unfold C
    simp [show (354294 * k + 41314) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 30567) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 30567))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_31551 : ∀ k : Nat,
    iterate (262144 * k + 31551) 29 = 177147 * k + 21322 ∧
      177147 * k + 21322 < 262144 * k + 31551 := by
  intro k
  have h1 : C (262144 * k + 31551) = 786432 * k + 94654 := by
    unfold C
    simp [show (262144 * k + 31551) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 94654) = 393216 * k + 47327 := by
    unfold C
    simp [show (786432 * k + 94654) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 47327) = 1179648 * k + 141982 := by
    unfold C
    simp [show (393216 * k + 47327) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 141982) = 589824 * k + 70991 := by
    unfold C
    simp [show (1179648 * k + 141982) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 70991) = 1769472 * k + 212974 := by
    unfold C
    simp [show (589824 * k + 70991) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 212974) = 884736 * k + 106487 := by
    unfold C
    simp [show (1769472 * k + 212974) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 106487) = 2654208 * k + 319462 := by
    unfold C
    simp [show (884736 * k + 106487) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 319462) = 1327104 * k + 159731 := by
    unfold C
    simp [show (2654208 * k + 319462) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 159731) = 3981312 * k + 479194 := by
    unfold C
    simp [show (1327104 * k + 159731) % 2 ≠ 0 by omega]
    omega
  have h10 : C (3981312 * k + 479194) = 1990656 * k + 239597 := by
    unfold C
    simp [show (3981312 * k + 479194) % 2 = 0 by omega]
    omega
  have h11 : C (1990656 * k + 239597) = 5971968 * k + 718792 := by
    unfold C
    simp [show (1990656 * k + 239597) % 2 ≠ 0 by omega]
    omega
  have h12 : C (5971968 * k + 718792) = 2985984 * k + 359396 := by
    unfold C
    simp [show (5971968 * k + 718792) % 2 = 0 by omega]
    omega
  have h13 : C (2985984 * k + 359396) = 1492992 * k + 179698 := by
    unfold C
    simp [show (2985984 * k + 359396) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 179698) = 746496 * k + 89849 := by
    unfold C
    simp [show (1492992 * k + 179698) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 89849) = 2239488 * k + 269548 := by
    unfold C
    simp [show (746496 * k + 89849) % 2 ≠ 0 by omega]
    omega
  have h16 : C (2239488 * k + 269548) = 1119744 * k + 134774 := by
    unfold C
    simp [show (2239488 * k + 269548) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 134774) = 559872 * k + 67387 := by
    unfold C
    simp [show (1119744 * k + 134774) % 2 = 0 by omega]
    omega
  have h18 : C (559872 * k + 67387) = 1679616 * k + 202162 := by
    unfold C
    simp [show (559872 * k + 67387) % 2 ≠ 0 by omega]
    omega
  have h19 : C (1679616 * k + 202162) = 839808 * k + 101081 := by
    unfold C
    simp [show (1679616 * k + 202162) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 101081) = 2519424 * k + 303244 := by
    unfold C
    simp [show (839808 * k + 101081) % 2 ≠ 0 by omega]
    omega
  have h21 : C (2519424 * k + 303244) = 1259712 * k + 151622 := by
    unfold C
    simp [show (2519424 * k + 303244) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 151622) = 629856 * k + 75811 := by
    unfold C
    simp [show (1259712 * k + 151622) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 75811) = 1889568 * k + 227434 := by
    unfold C
    simp [show (629856 * k + 75811) % 2 ≠ 0 by omega]
    omega
  have h24 : C (1889568 * k + 227434) = 944784 * k + 113717 := by
    unfold C
    simp [show (1889568 * k + 227434) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 113717) = 2834352 * k + 341152 := by
    unfold C
    simp [show (944784 * k + 113717) % 2 ≠ 0 by omega]
    omega
  have h26 : C (2834352 * k + 341152) = 1417176 * k + 170576 := by
    unfold C
    simp [show (2834352 * k + 341152) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 170576) = 708588 * k + 85288 := by
    unfold C
    simp [show (1417176 * k + 170576) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 85288) = 354294 * k + 42644 := by
    unfold C
    simp [show (708588 * k + 85288) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 42644) = 177147 * k + 21322 := by
    unfold C
    simp [show (354294 * k + 42644) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 31551) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 31551))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_31591 : ∀ k : Nat,
    iterate (262144 * k + 31591) 29 = 177147 * k + 21349 ∧
      177147 * k + 21349 < 262144 * k + 31591 := by
  intro k
  have h1 : C (262144 * k + 31591) = 786432 * k + 94774 := by
    unfold C
    simp [show (262144 * k + 31591) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 94774) = 393216 * k + 47387 := by
    unfold C
    simp [show (786432 * k + 94774) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 47387) = 1179648 * k + 142162 := by
    unfold C
    simp [show (393216 * k + 47387) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 142162) = 589824 * k + 71081 := by
    unfold C
    simp [show (1179648 * k + 142162) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 71081) = 1769472 * k + 213244 := by
    unfold C
    simp [show (589824 * k + 71081) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 213244) = 884736 * k + 106622 := by
    unfold C
    simp [show (1769472 * k + 213244) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 106622) = 442368 * k + 53311 := by
    unfold C
    simp [show (884736 * k + 106622) % 2 = 0 by omega]
    omega
  have h8 : C (442368 * k + 53311) = 1327104 * k + 159934 := by
    unfold C
    simp [show (442368 * k + 53311) % 2 ≠ 0 by omega]
    omega
  have h9 : C (1327104 * k + 159934) = 663552 * k + 79967 := by
    unfold C
    simp [show (1327104 * k + 159934) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 79967) = 1990656 * k + 239902 := by
    unfold C
    simp [show (663552 * k + 79967) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 239902) = 995328 * k + 119951 := by
    unfold C
    simp [show (1990656 * k + 239902) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 119951) = 2985984 * k + 359854 := by
    unfold C
    simp [show (995328 * k + 119951) % 2 ≠ 0 by omega]
    omega
  have h13 : C (2985984 * k + 359854) = 1492992 * k + 179927 := by
    unfold C
    simp [show (2985984 * k + 359854) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 179927) = 4478976 * k + 539782 := by
    unfold C
    simp [show (1492992 * k + 179927) % 2 ≠ 0 by omega]
    omega
  have h15 : C (4478976 * k + 539782) = 2239488 * k + 269891 := by
    unfold C
    simp [show (4478976 * k + 539782) % 2 = 0 by omega]
    omega
  have h16 : C (2239488 * k + 269891) = 6718464 * k + 809674 := by
    unfold C
    simp [show (2239488 * k + 269891) % 2 ≠ 0 by omega]
    omega
  have h17 : C (6718464 * k + 809674) = 3359232 * k + 404837 := by
    unfold C
    simp [show (6718464 * k + 809674) % 2 = 0 by omega]
    omega
  have h18 : C (3359232 * k + 404837) = 10077696 * k + 1214512 := by
    unfold C
    simp [show (3359232 * k + 404837) % 2 ≠ 0 by omega]
    omega
  have h19 : C (10077696 * k + 1214512) = 5038848 * k + 607256 := by
    unfold C
    simp [show (10077696 * k + 1214512) % 2 = 0 by omega]
    omega
  have h20 : C (5038848 * k + 607256) = 2519424 * k + 303628 := by
    unfold C
    simp [show (5038848 * k + 607256) % 2 = 0 by omega]
    omega
  have h21 : C (2519424 * k + 303628) = 1259712 * k + 151814 := by
    unfold C
    simp [show (2519424 * k + 303628) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 151814) = 629856 * k + 75907 := by
    unfold C
    simp [show (1259712 * k + 151814) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 75907) = 1889568 * k + 227722 := by
    unfold C
    simp [show (629856 * k + 75907) % 2 ≠ 0 by omega]
    omega
  have h24 : C (1889568 * k + 227722) = 944784 * k + 113861 := by
    unfold C
    simp [show (1889568 * k + 227722) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 113861) = 2834352 * k + 341584 := by
    unfold C
    simp [show (944784 * k + 113861) % 2 ≠ 0 by omega]
    omega
  have h26 : C (2834352 * k + 341584) = 1417176 * k + 170792 := by
    unfold C
    simp [show (2834352 * k + 341584) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 170792) = 708588 * k + 85396 := by
    unfold C
    simp [show (1417176 * k + 170792) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 85396) = 354294 * k + 42698 := by
    unfold C
    simp [show (708588 * k + 85396) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 42698) = 177147 * k + 21349 := by
    unfold C
    simp [show (354294 * k + 42698) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 31591) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 31591))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

end CollatzM18Shard006
