import Mathlib.Data.Nat.Prime.Basic

namespace CollatzM18Shard009

def C (n : Nat) : Nat := if n % 2 = 0 then n / 2 else 3 * n + 1

def iterate (n t : Nat) : Nat := Nat.rec n (fun _ previous => C previous) t

theorem descent_mod262144_44591 : ∀ k : Nat,
    iterate (262144 * k + 44591) 29 = 177147 * k + 30134 ∧
      177147 * k + 30134 < 262144 * k + 44591 := by
  intro k
  have h1 : C (262144 * k + 44591) = 786432 * k + 133774 := by
    unfold C
    simp [show (262144 * k + 44591) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 133774) = 393216 * k + 66887 := by
    unfold C
    simp [show (786432 * k + 133774) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 66887) = 1179648 * k + 200662 := by
    unfold C
    simp [show (393216 * k + 66887) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 200662) = 589824 * k + 100331 := by
    unfold C
    simp [show (1179648 * k + 200662) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 100331) = 1769472 * k + 300994 := by
    unfold C
    simp [show (589824 * k + 100331) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 300994) = 884736 * k + 150497 := by
    unfold C
    simp [show (1769472 * k + 300994) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 150497) = 2654208 * k + 451492 := by
    unfold C
    simp [show (884736 * k + 150497) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 451492) = 1327104 * k + 225746 := by
    unfold C
    simp [show (2654208 * k + 451492) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 225746) = 663552 * k + 112873 := by
    unfold C
    simp [show (1327104 * k + 225746) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 112873) = 1990656 * k + 338620 := by
    unfold C
    simp [show (663552 * k + 112873) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 338620) = 995328 * k + 169310 := by
    unfold C
    simp [show (1990656 * k + 338620) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 169310) = 497664 * k + 84655 := by
    unfold C
    simp [show (995328 * k + 169310) % 2 = 0 by omega]
    omega
  have h13 : C (497664 * k + 84655) = 1492992 * k + 253966 := by
    unfold C
    simp [show (497664 * k + 84655) % 2 ≠ 0 by omega]
    omega
  have h14 : C (1492992 * k + 253966) = 746496 * k + 126983 := by
    unfold C
    simp [show (1492992 * k + 253966) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 126983) = 2239488 * k + 380950 := by
    unfold C
    simp [show (746496 * k + 126983) % 2 ≠ 0 by omega]
    omega
  have h16 : C (2239488 * k + 380950) = 1119744 * k + 190475 := by
    unfold C
    simp [show (2239488 * k + 380950) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 190475) = 3359232 * k + 571426 := by
    unfold C
    simp [show (1119744 * k + 190475) % 2 ≠ 0 by omega]
    omega
  have h18 : C (3359232 * k + 571426) = 1679616 * k + 285713 := by
    unfold C
    simp [show (3359232 * k + 571426) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 285713) = 5038848 * k + 857140 := by
    unfold C
    simp [show (1679616 * k + 285713) % 2 ≠ 0 by omega]
    omega
  have h20 : C (5038848 * k + 857140) = 2519424 * k + 428570 := by
    unfold C
    simp [show (5038848 * k + 857140) % 2 = 0 by omega]
    omega
  have h21 : C (2519424 * k + 428570) = 1259712 * k + 214285 := by
    unfold C
    simp [show (2519424 * k + 428570) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 214285) = 3779136 * k + 642856 := by
    unfold C
    simp [show (1259712 * k + 214285) % 2 ≠ 0 by omega]
    omega
  have h23 : C (3779136 * k + 642856) = 1889568 * k + 321428 := by
    unfold C
    simp [show (3779136 * k + 642856) % 2 = 0 by omega]
    omega
  have h24 : C (1889568 * k + 321428) = 944784 * k + 160714 := by
    unfold C
    simp [show (1889568 * k + 321428) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 160714) = 472392 * k + 80357 := by
    unfold C
    simp [show (944784 * k + 160714) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 80357) = 1417176 * k + 241072 := by
    unfold C
    simp [show (472392 * k + 80357) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 241072) = 708588 * k + 120536 := by
    unfold C
    simp [show (1417176 * k + 241072) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 120536) = 354294 * k + 60268 := by
    unfold C
    simp [show (708588 * k + 120536) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 60268) = 177147 * k + 30134 := by
    unfold C
    simp [show (354294 * k + 60268) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 44591) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 44591))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_44891 : ∀ k : Nat,
    iterate (262144 * k + 44891) 29 = 177147 * k + 30337 ∧
      177147 * k + 30337 < 262144 * k + 44891 := by
  intro k
  have h1 : C (262144 * k + 44891) = 786432 * k + 134674 := by
    unfold C
    simp [show (262144 * k + 44891) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 134674) = 393216 * k + 67337 := by
    unfold C
    simp [show (786432 * k + 134674) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 67337) = 1179648 * k + 202012 := by
    unfold C
    simp [show (393216 * k + 67337) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 202012) = 589824 * k + 101006 := by
    unfold C
    simp [show (1179648 * k + 202012) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 101006) = 294912 * k + 50503 := by
    unfold C
    simp [show (589824 * k + 101006) % 2 = 0 by omega]
    omega
  have h6 : C (294912 * k + 50503) = 884736 * k + 151510 := by
    unfold C
    simp [show (294912 * k + 50503) % 2 ≠ 0 by omega]
    omega
  have h7 : C (884736 * k + 151510) = 442368 * k + 75755 := by
    unfold C
    simp [show (884736 * k + 151510) % 2 = 0 by omega]
    omega
  have h8 : C (442368 * k + 75755) = 1327104 * k + 227266 := by
    unfold C
    simp [show (442368 * k + 75755) % 2 ≠ 0 by omega]
    omega
  have h9 : C (1327104 * k + 227266) = 663552 * k + 113633 := by
    unfold C
    simp [show (1327104 * k + 227266) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 113633) = 1990656 * k + 340900 := by
    unfold C
    simp [show (663552 * k + 113633) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 340900) = 995328 * k + 170450 := by
    unfold C
    simp [show (1990656 * k + 340900) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 170450) = 497664 * k + 85225 := by
    unfold C
    simp [show (995328 * k + 170450) % 2 = 0 by omega]
    omega
  have h13 : C (497664 * k + 85225) = 1492992 * k + 255676 := by
    unfold C
    simp [show (497664 * k + 85225) % 2 ≠ 0 by omega]
    omega
  have h14 : C (1492992 * k + 255676) = 746496 * k + 127838 := by
    unfold C
    simp [show (1492992 * k + 255676) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 127838) = 373248 * k + 63919 := by
    unfold C
    simp [show (746496 * k + 127838) % 2 = 0 by omega]
    omega
  have h16 : C (373248 * k + 63919) = 1119744 * k + 191758 := by
    unfold C
    simp [show (373248 * k + 63919) % 2 ≠ 0 by omega]
    omega
  have h17 : C (1119744 * k + 191758) = 559872 * k + 95879 := by
    unfold C
    simp [show (1119744 * k + 191758) % 2 = 0 by omega]
    omega
  have h18 : C (559872 * k + 95879) = 1679616 * k + 287638 := by
    unfold C
    simp [show (559872 * k + 95879) % 2 ≠ 0 by omega]
    omega
  have h19 : C (1679616 * k + 287638) = 839808 * k + 143819 := by
    unfold C
    simp [show (1679616 * k + 287638) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 143819) = 2519424 * k + 431458 := by
    unfold C
    simp [show (839808 * k + 143819) % 2 ≠ 0 by omega]
    omega
  have h21 : C (2519424 * k + 431458) = 1259712 * k + 215729 := by
    unfold C
    simp [show (2519424 * k + 431458) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 215729) = 3779136 * k + 647188 := by
    unfold C
    simp [show (1259712 * k + 215729) % 2 ≠ 0 by omega]
    omega
  have h23 : C (3779136 * k + 647188) = 1889568 * k + 323594 := by
    unfold C
    simp [show (3779136 * k + 647188) % 2 = 0 by omega]
    omega
  have h24 : C (1889568 * k + 323594) = 944784 * k + 161797 := by
    unfold C
    simp [show (1889568 * k + 323594) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 161797) = 2834352 * k + 485392 := by
    unfold C
    simp [show (944784 * k + 161797) % 2 ≠ 0 by omega]
    omega
  have h26 : C (2834352 * k + 485392) = 1417176 * k + 242696 := by
    unfold C
    simp [show (2834352 * k + 485392) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 242696) = 708588 * k + 121348 := by
    unfold C
    simp [show (1417176 * k + 242696) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 121348) = 354294 * k + 60674 := by
    unfold C
    simp [show (708588 * k + 121348) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 60674) = 177147 * k + 30337 := by
    unfold C
    simp [show (354294 * k + 60674) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 44891) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 44891))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_45615 : ∀ k : Nat,
    iterate (262144 * k + 45615) 29 = 177147 * k + 30826 ∧
      177147 * k + 30826 < 262144 * k + 45615 := by
  intro k
  have h1 : C (262144 * k + 45615) = 786432 * k + 136846 := by
    unfold C
    simp [show (262144 * k + 45615) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 136846) = 393216 * k + 68423 := by
    unfold C
    simp [show (786432 * k + 136846) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 68423) = 1179648 * k + 205270 := by
    unfold C
    simp [show (393216 * k + 68423) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 205270) = 589824 * k + 102635 := by
    unfold C
    simp [show (1179648 * k + 205270) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 102635) = 1769472 * k + 307906 := by
    unfold C
    simp [show (589824 * k + 102635) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 307906) = 884736 * k + 153953 := by
    unfold C
    simp [show (1769472 * k + 307906) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 153953) = 2654208 * k + 461860 := by
    unfold C
    simp [show (884736 * k + 153953) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 461860) = 1327104 * k + 230930 := by
    unfold C
    simp [show (2654208 * k + 461860) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 230930) = 663552 * k + 115465 := by
    unfold C
    simp [show (1327104 * k + 230930) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 115465) = 1990656 * k + 346396 := by
    unfold C
    simp [show (663552 * k + 115465) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 346396) = 995328 * k + 173198 := by
    unfold C
    simp [show (1990656 * k + 346396) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 173198) = 497664 * k + 86599 := by
    unfold C
    simp [show (995328 * k + 173198) % 2 = 0 by omega]
    omega
  have h13 : C (497664 * k + 86599) = 1492992 * k + 259798 := by
    unfold C
    simp [show (497664 * k + 86599) % 2 ≠ 0 by omega]
    omega
  have h14 : C (1492992 * k + 259798) = 746496 * k + 129899 := by
    unfold C
    simp [show (1492992 * k + 259798) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 129899) = 2239488 * k + 389698 := by
    unfold C
    simp [show (746496 * k + 129899) % 2 ≠ 0 by omega]
    omega
  have h16 : C (2239488 * k + 389698) = 1119744 * k + 194849 := by
    unfold C
    simp [show (2239488 * k + 389698) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 194849) = 3359232 * k + 584548 := by
    unfold C
    simp [show (1119744 * k + 194849) % 2 ≠ 0 by omega]
    omega
  have h18 : C (3359232 * k + 584548) = 1679616 * k + 292274 := by
    unfold C
    simp [show (3359232 * k + 584548) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 292274) = 839808 * k + 146137 := by
    unfold C
    simp [show (1679616 * k + 292274) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 146137) = 2519424 * k + 438412 := by
    unfold C
    simp [show (839808 * k + 146137) % 2 ≠ 0 by omega]
    omega
  have h21 : C (2519424 * k + 438412) = 1259712 * k + 219206 := by
    unfold C
    simp [show (2519424 * k + 438412) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 219206) = 629856 * k + 109603 := by
    unfold C
    simp [show (1259712 * k + 219206) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 109603) = 1889568 * k + 328810 := by
    unfold C
    simp [show (629856 * k + 109603) % 2 ≠ 0 by omega]
    omega
  have h24 : C (1889568 * k + 328810) = 944784 * k + 164405 := by
    unfold C
    simp [show (1889568 * k + 328810) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 164405) = 2834352 * k + 493216 := by
    unfold C
    simp [show (944784 * k + 164405) % 2 ≠ 0 by omega]
    omega
  have h26 : C (2834352 * k + 493216) = 1417176 * k + 246608 := by
    unfold C
    simp [show (2834352 * k + 493216) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 246608) = 708588 * k + 123304 := by
    unfold C
    simp [show (1417176 * k + 246608) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 123304) = 354294 * k + 61652 := by
    unfold C
    simp [show (708588 * k + 123304) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 61652) = 177147 * k + 30826 := by
    unfold C
    simp [show (354294 * k + 61652) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 45615) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 45615))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_45759 : ∀ k : Nat,
    iterate (262144 * k + 45759) 29 = 177147 * k + 30923 ∧
      177147 * k + 30923 < 262144 * k + 45759 := by
  intro k
  have h1 : C (262144 * k + 45759) = 786432 * k + 137278 := by
    unfold C
    simp [show (262144 * k + 45759) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 137278) = 393216 * k + 68639 := by
    unfold C
    simp [show (786432 * k + 137278) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 68639) = 1179648 * k + 205918 := by
    unfold C
    simp [show (393216 * k + 68639) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 205918) = 589824 * k + 102959 := by
    unfold C
    simp [show (1179648 * k + 205918) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 102959) = 1769472 * k + 308878 := by
    unfold C
    simp [show (589824 * k + 102959) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 308878) = 884736 * k + 154439 := by
    unfold C
    simp [show (1769472 * k + 308878) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 154439) = 2654208 * k + 463318 := by
    unfold C
    simp [show (884736 * k + 154439) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 463318) = 1327104 * k + 231659 := by
    unfold C
    simp [show (2654208 * k + 463318) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 231659) = 3981312 * k + 694978 := by
    unfold C
    simp [show (1327104 * k + 231659) % 2 ≠ 0 by omega]
    omega
  have h10 : C (3981312 * k + 694978) = 1990656 * k + 347489 := by
    unfold C
    simp [show (3981312 * k + 694978) % 2 = 0 by omega]
    omega
  have h11 : C (1990656 * k + 347489) = 5971968 * k + 1042468 := by
    unfold C
    simp [show (1990656 * k + 347489) % 2 ≠ 0 by omega]
    omega
  have h12 : C (5971968 * k + 1042468) = 2985984 * k + 521234 := by
    unfold C
    simp [show (5971968 * k + 1042468) % 2 = 0 by omega]
    omega
  have h13 : C (2985984 * k + 521234) = 1492992 * k + 260617 := by
    unfold C
    simp [show (2985984 * k + 521234) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 260617) = 4478976 * k + 781852 := by
    unfold C
    simp [show (1492992 * k + 260617) % 2 ≠ 0 by omega]
    omega
  have h15 : C (4478976 * k + 781852) = 2239488 * k + 390926 := by
    unfold C
    simp [show (4478976 * k + 781852) % 2 = 0 by omega]
    omega
  have h16 : C (2239488 * k + 390926) = 1119744 * k + 195463 := by
    unfold C
    simp [show (2239488 * k + 390926) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 195463) = 3359232 * k + 586390 := by
    unfold C
    simp [show (1119744 * k + 195463) % 2 ≠ 0 by omega]
    omega
  have h18 : C (3359232 * k + 586390) = 1679616 * k + 293195 := by
    unfold C
    simp [show (3359232 * k + 586390) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 293195) = 5038848 * k + 879586 := by
    unfold C
    simp [show (1679616 * k + 293195) % 2 ≠ 0 by omega]
    omega
  have h20 : C (5038848 * k + 879586) = 2519424 * k + 439793 := by
    unfold C
    simp [show (5038848 * k + 879586) % 2 = 0 by omega]
    omega
  have h21 : C (2519424 * k + 439793) = 7558272 * k + 1319380 := by
    unfold C
    simp [show (2519424 * k + 439793) % 2 ≠ 0 by omega]
    omega
  have h22 : C (7558272 * k + 1319380) = 3779136 * k + 659690 := by
    unfold C
    simp [show (7558272 * k + 1319380) % 2 = 0 by omega]
    omega
  have h23 : C (3779136 * k + 659690) = 1889568 * k + 329845 := by
    unfold C
    simp [show (3779136 * k + 659690) % 2 = 0 by omega]
    omega
  have h24 : C (1889568 * k + 329845) = 5668704 * k + 989536 := by
    unfold C
    simp [show (1889568 * k + 329845) % 2 ≠ 0 by omega]
    omega
  have h25 : C (5668704 * k + 989536) = 2834352 * k + 494768 := by
    unfold C
    simp [show (5668704 * k + 989536) % 2 = 0 by omega]
    omega
  have h26 : C (2834352 * k + 494768) = 1417176 * k + 247384 := by
    unfold C
    simp [show (2834352 * k + 494768) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 247384) = 708588 * k + 123692 := by
    unfold C
    simp [show (1417176 * k + 247384) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 123692) = 354294 * k + 61846 := by
    unfold C
    simp [show (708588 * k + 123692) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 61846) = 177147 * k + 30923 := by
    unfold C
    simp [show (354294 * k + 61846) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 45759) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 45759))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_46015 : ∀ k : Nat,
    iterate (262144 * k + 46015) 29 = 177147 * k + 31096 ∧
      177147 * k + 31096 < 262144 * k + 46015 := by
  intro k
  have h1 : C (262144 * k + 46015) = 786432 * k + 138046 := by
    unfold C
    simp [show (262144 * k + 46015) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 138046) = 393216 * k + 69023 := by
    unfold C
    simp [show (786432 * k + 138046) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 69023) = 1179648 * k + 207070 := by
    unfold C
    simp [show (393216 * k + 69023) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 207070) = 589824 * k + 103535 := by
    unfold C
    simp [show (1179648 * k + 207070) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 103535) = 1769472 * k + 310606 := by
    unfold C
    simp [show (589824 * k + 103535) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 310606) = 884736 * k + 155303 := by
    unfold C
    simp [show (1769472 * k + 310606) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 155303) = 2654208 * k + 465910 := by
    unfold C
    simp [show (884736 * k + 155303) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 465910) = 1327104 * k + 232955 := by
    unfold C
    simp [show (2654208 * k + 465910) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 232955) = 3981312 * k + 698866 := by
    unfold C
    simp [show (1327104 * k + 232955) % 2 ≠ 0 by omega]
    omega
  have h10 : C (3981312 * k + 698866) = 1990656 * k + 349433 := by
    unfold C
    simp [show (3981312 * k + 698866) % 2 = 0 by omega]
    omega
  have h11 : C (1990656 * k + 349433) = 5971968 * k + 1048300 := by
    unfold C
    simp [show (1990656 * k + 349433) % 2 ≠ 0 by omega]
    omega
  have h12 : C (5971968 * k + 1048300) = 2985984 * k + 524150 := by
    unfold C
    simp [show (5971968 * k + 1048300) % 2 = 0 by omega]
    omega
  have h13 : C (2985984 * k + 524150) = 1492992 * k + 262075 := by
    unfold C
    simp [show (2985984 * k + 524150) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 262075) = 4478976 * k + 786226 := by
    unfold C
    simp [show (1492992 * k + 262075) % 2 ≠ 0 by omega]
    omega
  have h15 : C (4478976 * k + 786226) = 2239488 * k + 393113 := by
    unfold C
    simp [show (4478976 * k + 786226) % 2 = 0 by omega]
    omega
  have h16 : C (2239488 * k + 393113) = 6718464 * k + 1179340 := by
    unfold C
    simp [show (2239488 * k + 393113) % 2 ≠ 0 by omega]
    omega
  have h17 : C (6718464 * k + 1179340) = 3359232 * k + 589670 := by
    unfold C
    simp [show (6718464 * k + 1179340) % 2 = 0 by omega]
    omega
  have h18 : C (3359232 * k + 589670) = 1679616 * k + 294835 := by
    unfold C
    simp [show (3359232 * k + 589670) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 294835) = 5038848 * k + 884506 := by
    unfold C
    simp [show (1679616 * k + 294835) % 2 ≠ 0 by omega]
    omega
  have h20 : C (5038848 * k + 884506) = 2519424 * k + 442253 := by
    unfold C
    simp [show (5038848 * k + 884506) % 2 = 0 by omega]
    omega
  have h21 : C (2519424 * k + 442253) = 7558272 * k + 1326760 := by
    unfold C
    simp [show (2519424 * k + 442253) % 2 ≠ 0 by omega]
    omega
  have h22 : C (7558272 * k + 1326760) = 3779136 * k + 663380 := by
    unfold C
    simp [show (7558272 * k + 1326760) % 2 = 0 by omega]
    omega
  have h23 : C (3779136 * k + 663380) = 1889568 * k + 331690 := by
    unfold C
    simp [show (3779136 * k + 663380) % 2 = 0 by omega]
    omega
  have h24 : C (1889568 * k + 331690) = 944784 * k + 165845 := by
    unfold C
    simp [show (1889568 * k + 331690) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 165845) = 2834352 * k + 497536 := by
    unfold C
    simp [show (944784 * k + 165845) % 2 ≠ 0 by omega]
    omega
  have h26 : C (2834352 * k + 497536) = 1417176 * k + 248768 := by
    unfold C
    simp [show (2834352 * k + 497536) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 248768) = 708588 * k + 124384 := by
    unfold C
    simp [show (1417176 * k + 248768) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 124384) = 354294 * k + 62192 := by
    unfold C
    simp [show (708588 * k + 124384) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 62192) = 177147 * k + 31096 := by
    unfold C
    simp [show (354294 * k + 62192) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 46015) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 46015))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_46047 : ∀ k : Nat,
    iterate (262144 * k + 46047) 29 = 177147 * k + 31118 ∧
      177147 * k + 31118 < 262144 * k + 46047 := by
  intro k
  have h1 : C (262144 * k + 46047) = 786432 * k + 138142 := by
    unfold C
    simp [show (262144 * k + 46047) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 138142) = 393216 * k + 69071 := by
    unfold C
    simp [show (786432 * k + 138142) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 69071) = 1179648 * k + 207214 := by
    unfold C
    simp [show (393216 * k + 69071) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 207214) = 589824 * k + 103607 := by
    unfold C
    simp [show (1179648 * k + 207214) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 103607) = 1769472 * k + 310822 := by
    unfold C
    simp [show (589824 * k + 103607) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 310822) = 884736 * k + 155411 := by
    unfold C
    simp [show (1769472 * k + 310822) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 155411) = 2654208 * k + 466234 := by
    unfold C
    simp [show (884736 * k + 155411) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 466234) = 1327104 * k + 233117 := by
    unfold C
    simp [show (2654208 * k + 466234) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 233117) = 3981312 * k + 699352 := by
    unfold C
    simp [show (1327104 * k + 233117) % 2 ≠ 0 by omega]
    omega
  have h10 : C (3981312 * k + 699352) = 1990656 * k + 349676 := by
    unfold C
    simp [show (3981312 * k + 699352) % 2 = 0 by omega]
    omega
  have h11 : C (1990656 * k + 349676) = 995328 * k + 174838 := by
    unfold C
    simp [show (1990656 * k + 349676) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 174838) = 497664 * k + 87419 := by
    unfold C
    simp [show (995328 * k + 174838) % 2 = 0 by omega]
    omega
  have h13 : C (497664 * k + 87419) = 1492992 * k + 262258 := by
    unfold C
    simp [show (497664 * k + 87419) % 2 ≠ 0 by omega]
    omega
  have h14 : C (1492992 * k + 262258) = 746496 * k + 131129 := by
    unfold C
    simp [show (1492992 * k + 262258) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 131129) = 2239488 * k + 393388 := by
    unfold C
    simp [show (746496 * k + 131129) % 2 ≠ 0 by omega]
    omega
  have h16 : C (2239488 * k + 393388) = 1119744 * k + 196694 := by
    unfold C
    simp [show (2239488 * k + 393388) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 196694) = 559872 * k + 98347 := by
    unfold C
    simp [show (1119744 * k + 196694) % 2 = 0 by omega]
    omega
  have h18 : C (559872 * k + 98347) = 1679616 * k + 295042 := by
    unfold C
    simp [show (559872 * k + 98347) % 2 ≠ 0 by omega]
    omega
  have h19 : C (1679616 * k + 295042) = 839808 * k + 147521 := by
    unfold C
    simp [show (1679616 * k + 295042) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 147521) = 2519424 * k + 442564 := by
    unfold C
    simp [show (839808 * k + 147521) % 2 ≠ 0 by omega]
    omega
  have h21 : C (2519424 * k + 442564) = 1259712 * k + 221282 := by
    unfold C
    simp [show (2519424 * k + 442564) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 221282) = 629856 * k + 110641 := by
    unfold C
    simp [show (1259712 * k + 221282) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 110641) = 1889568 * k + 331924 := by
    unfold C
    simp [show (629856 * k + 110641) % 2 ≠ 0 by omega]
    omega
  have h24 : C (1889568 * k + 331924) = 944784 * k + 165962 := by
    unfold C
    simp [show (1889568 * k + 331924) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 165962) = 472392 * k + 82981 := by
    unfold C
    simp [show (944784 * k + 165962) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 82981) = 1417176 * k + 248944 := by
    unfold C
    simp [show (472392 * k + 82981) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 248944) = 708588 * k + 124472 := by
    unfold C
    simp [show (1417176 * k + 248944) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 124472) = 354294 * k + 62236 := by
    unfold C
    simp [show (708588 * k + 124472) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 62236) = 177147 * k + 31118 := by
    unfold C
    simp [show (354294 * k + 62236) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 46047) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 46047))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_46695 : ∀ k : Nat,
    iterate (262144 * k + 46695) 29 = 177147 * k + 31556 ∧
      177147 * k + 31556 < 262144 * k + 46695 := by
  intro k
  have h1 : C (262144 * k + 46695) = 786432 * k + 140086 := by
    unfold C
    simp [show (262144 * k + 46695) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 140086) = 393216 * k + 70043 := by
    unfold C
    simp [show (786432 * k + 140086) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 70043) = 1179648 * k + 210130 := by
    unfold C
    simp [show (393216 * k + 70043) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 210130) = 589824 * k + 105065 := by
    unfold C
    simp [show (1179648 * k + 210130) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 105065) = 1769472 * k + 315196 := by
    unfold C
    simp [show (589824 * k + 105065) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 315196) = 884736 * k + 157598 := by
    unfold C
    simp [show (1769472 * k + 315196) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 157598) = 442368 * k + 78799 := by
    unfold C
    simp [show (884736 * k + 157598) % 2 = 0 by omega]
    omega
  have h8 : C (442368 * k + 78799) = 1327104 * k + 236398 := by
    unfold C
    simp [show (442368 * k + 78799) % 2 ≠ 0 by omega]
    omega
  have h9 : C (1327104 * k + 236398) = 663552 * k + 118199 := by
    unfold C
    simp [show (1327104 * k + 236398) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 118199) = 1990656 * k + 354598 := by
    unfold C
    simp [show (663552 * k + 118199) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 354598) = 995328 * k + 177299 := by
    unfold C
    simp [show (1990656 * k + 354598) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 177299) = 2985984 * k + 531898 := by
    unfold C
    simp [show (995328 * k + 177299) % 2 ≠ 0 by omega]
    omega
  have h13 : C (2985984 * k + 531898) = 1492992 * k + 265949 := by
    unfold C
    simp [show (2985984 * k + 531898) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 265949) = 4478976 * k + 797848 := by
    unfold C
    simp [show (1492992 * k + 265949) % 2 ≠ 0 by omega]
    omega
  have h15 : C (4478976 * k + 797848) = 2239488 * k + 398924 := by
    unfold C
    simp [show (4478976 * k + 797848) % 2 = 0 by omega]
    omega
  have h16 : C (2239488 * k + 398924) = 1119744 * k + 199462 := by
    unfold C
    simp [show (2239488 * k + 398924) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 199462) = 559872 * k + 99731 := by
    unfold C
    simp [show (1119744 * k + 199462) % 2 = 0 by omega]
    omega
  have h18 : C (559872 * k + 99731) = 1679616 * k + 299194 := by
    unfold C
    simp [show (559872 * k + 99731) % 2 ≠ 0 by omega]
    omega
  have h19 : C (1679616 * k + 299194) = 839808 * k + 149597 := by
    unfold C
    simp [show (1679616 * k + 299194) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 149597) = 2519424 * k + 448792 := by
    unfold C
    simp [show (839808 * k + 149597) % 2 ≠ 0 by omega]
    omega
  have h21 : C (2519424 * k + 448792) = 1259712 * k + 224396 := by
    unfold C
    simp [show (2519424 * k + 448792) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 224396) = 629856 * k + 112198 := by
    unfold C
    simp [show (1259712 * k + 224396) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 112198) = 314928 * k + 56099 := by
    unfold C
    simp [show (629856 * k + 112198) % 2 = 0 by omega]
    omega
  have h24 : C (314928 * k + 56099) = 944784 * k + 168298 := by
    unfold C
    simp [show (314928 * k + 56099) % 2 ≠ 0 by omega]
    omega
  have h25 : C (944784 * k + 168298) = 472392 * k + 84149 := by
    unfold C
    simp [show (944784 * k + 168298) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 84149) = 1417176 * k + 252448 := by
    unfold C
    simp [show (472392 * k + 84149) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 252448) = 708588 * k + 126224 := by
    unfold C
    simp [show (1417176 * k + 252448) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 126224) = 354294 * k + 63112 := by
    unfold C
    simp [show (708588 * k + 126224) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 63112) = 177147 * k + 31556 := by
    unfold C
    simp [show (354294 * k + 63112) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 46695) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 46695))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_46975 : ∀ k : Nat,
    iterate (262144 * k + 46975) 29 = 177147 * k + 31745 ∧
      177147 * k + 31745 < 262144 * k + 46975 := by
  intro k
  have h1 : C (262144 * k + 46975) = 786432 * k + 140926 := by
    unfold C
    simp [show (262144 * k + 46975) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 140926) = 393216 * k + 70463 := by
    unfold C
    simp [show (786432 * k + 140926) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 70463) = 1179648 * k + 211390 := by
    unfold C
    simp [show (393216 * k + 70463) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 211390) = 589824 * k + 105695 := by
    unfold C
    simp [show (1179648 * k + 211390) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 105695) = 1769472 * k + 317086 := by
    unfold C
    simp [show (589824 * k + 105695) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 317086) = 884736 * k + 158543 := by
    unfold C
    simp [show (1769472 * k + 317086) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 158543) = 2654208 * k + 475630 := by
    unfold C
    simp [show (884736 * k + 158543) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 475630) = 1327104 * k + 237815 := by
    unfold C
    simp [show (2654208 * k + 475630) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 237815) = 3981312 * k + 713446 := by
    unfold C
    simp [show (1327104 * k + 237815) % 2 ≠ 0 by omega]
    omega
  have h10 : C (3981312 * k + 713446) = 1990656 * k + 356723 := by
    unfold C
    simp [show (3981312 * k + 713446) % 2 = 0 by omega]
    omega
  have h11 : C (1990656 * k + 356723) = 5971968 * k + 1070170 := by
    unfold C
    simp [show (1990656 * k + 356723) % 2 ≠ 0 by omega]
    omega
  have h12 : C (5971968 * k + 1070170) = 2985984 * k + 535085 := by
    unfold C
    simp [show (5971968 * k + 1070170) % 2 = 0 by omega]
    omega
  have h13 : C (2985984 * k + 535085) = 8957952 * k + 1605256 := by
    unfold C
    simp [show (2985984 * k + 535085) % 2 ≠ 0 by omega]
    omega
  have h14 : C (8957952 * k + 1605256) = 4478976 * k + 802628 := by
    unfold C
    simp [show (8957952 * k + 1605256) % 2 = 0 by omega]
    omega
  have h15 : C (4478976 * k + 802628) = 2239488 * k + 401314 := by
    unfold C
    simp [show (4478976 * k + 802628) % 2 = 0 by omega]
    omega
  have h16 : C (2239488 * k + 401314) = 1119744 * k + 200657 := by
    unfold C
    simp [show (2239488 * k + 401314) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 200657) = 3359232 * k + 601972 := by
    unfold C
    simp [show (1119744 * k + 200657) % 2 ≠ 0 by omega]
    omega
  have h18 : C (3359232 * k + 601972) = 1679616 * k + 300986 := by
    unfold C
    simp [show (3359232 * k + 601972) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 300986) = 839808 * k + 150493 := by
    unfold C
    simp [show (1679616 * k + 300986) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 150493) = 2519424 * k + 451480 := by
    unfold C
    simp [show (839808 * k + 150493) % 2 ≠ 0 by omega]
    omega
  have h21 : C (2519424 * k + 451480) = 1259712 * k + 225740 := by
    unfold C
    simp [show (2519424 * k + 451480) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 225740) = 629856 * k + 112870 := by
    unfold C
    simp [show (1259712 * k + 225740) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 112870) = 314928 * k + 56435 := by
    unfold C
    simp [show (629856 * k + 112870) % 2 = 0 by omega]
    omega
  have h24 : C (314928 * k + 56435) = 944784 * k + 169306 := by
    unfold C
    simp [show (314928 * k + 56435) % 2 ≠ 0 by omega]
    omega
  have h25 : C (944784 * k + 169306) = 472392 * k + 84653 := by
    unfold C
    simp [show (944784 * k + 169306) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 84653) = 1417176 * k + 253960 := by
    unfold C
    simp [show (472392 * k + 84653) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 253960) = 708588 * k + 126980 := by
    unfold C
    simp [show (1417176 * k + 253960) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 126980) = 354294 * k + 63490 := by
    unfold C
    simp [show (708588 * k + 126980) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 63490) = 177147 * k + 31745 := by
    unfold C
    simp [show (354294 * k + 63490) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 46975) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 46975))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_47355 : ∀ k : Nat,
    iterate (262144 * k + 47355) 29 = 177147 * k + 32002 ∧
      177147 * k + 32002 < 262144 * k + 47355 := by
  intro k
  have h1 : C (262144 * k + 47355) = 786432 * k + 142066 := by
    unfold C
    simp [show (262144 * k + 47355) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 142066) = 393216 * k + 71033 := by
    unfold C
    simp [show (786432 * k + 142066) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 71033) = 1179648 * k + 213100 := by
    unfold C
    simp [show (393216 * k + 71033) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 213100) = 589824 * k + 106550 := by
    unfold C
    simp [show (1179648 * k + 213100) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 106550) = 294912 * k + 53275 := by
    unfold C
    simp [show (589824 * k + 106550) % 2 = 0 by omega]
    omega
  have h6 : C (294912 * k + 53275) = 884736 * k + 159826 := by
    unfold C
    simp [show (294912 * k + 53275) % 2 ≠ 0 by omega]
    omega
  have h7 : C (884736 * k + 159826) = 442368 * k + 79913 := by
    unfold C
    simp [show (884736 * k + 159826) % 2 = 0 by omega]
    omega
  have h8 : C (442368 * k + 79913) = 1327104 * k + 239740 := by
    unfold C
    simp [show (442368 * k + 79913) % 2 ≠ 0 by omega]
    omega
  have h9 : C (1327104 * k + 239740) = 663552 * k + 119870 := by
    unfold C
    simp [show (1327104 * k + 239740) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 119870) = 331776 * k + 59935 := by
    unfold C
    simp [show (663552 * k + 119870) % 2 = 0 by omega]
    omega
  have h11 : C (331776 * k + 59935) = 995328 * k + 179806 := by
    unfold C
    simp [show (331776 * k + 59935) % 2 ≠ 0 by omega]
    omega
  have h12 : C (995328 * k + 179806) = 497664 * k + 89903 := by
    unfold C
    simp [show (995328 * k + 179806) % 2 = 0 by omega]
    omega
  have h13 : C (497664 * k + 89903) = 1492992 * k + 269710 := by
    unfold C
    simp [show (497664 * k + 89903) % 2 ≠ 0 by omega]
    omega
  have h14 : C (1492992 * k + 269710) = 746496 * k + 134855 := by
    unfold C
    simp [show (1492992 * k + 269710) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 134855) = 2239488 * k + 404566 := by
    unfold C
    simp [show (746496 * k + 134855) % 2 ≠ 0 by omega]
    omega
  have h16 : C (2239488 * k + 404566) = 1119744 * k + 202283 := by
    unfold C
    simp [show (2239488 * k + 404566) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 202283) = 3359232 * k + 606850 := by
    unfold C
    simp [show (1119744 * k + 202283) % 2 ≠ 0 by omega]
    omega
  have h18 : C (3359232 * k + 606850) = 1679616 * k + 303425 := by
    unfold C
    simp [show (3359232 * k + 606850) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 303425) = 5038848 * k + 910276 := by
    unfold C
    simp [show (1679616 * k + 303425) % 2 ≠ 0 by omega]
    omega
  have h20 : C (5038848 * k + 910276) = 2519424 * k + 455138 := by
    unfold C
    simp [show (5038848 * k + 910276) % 2 = 0 by omega]
    omega
  have h21 : C (2519424 * k + 455138) = 1259712 * k + 227569 := by
    unfold C
    simp [show (2519424 * k + 455138) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 227569) = 3779136 * k + 682708 := by
    unfold C
    simp [show (1259712 * k + 227569) % 2 ≠ 0 by omega]
    omega
  have h23 : C (3779136 * k + 682708) = 1889568 * k + 341354 := by
    unfold C
    simp [show (3779136 * k + 682708) % 2 = 0 by omega]
    omega
  have h24 : C (1889568 * k + 341354) = 944784 * k + 170677 := by
    unfold C
    simp [show (1889568 * k + 341354) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 170677) = 2834352 * k + 512032 := by
    unfold C
    simp [show (944784 * k + 170677) % 2 ≠ 0 by omega]
    omega
  have h26 : C (2834352 * k + 512032) = 1417176 * k + 256016 := by
    unfold C
    simp [show (2834352 * k + 512032) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 256016) = 708588 * k + 128008 := by
    unfold C
    simp [show (1417176 * k + 256016) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 128008) = 354294 * k + 64004 := by
    unfold C
    simp [show (708588 * k + 128008) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 64004) = 177147 * k + 32002 := by
    unfold C
    simp [show (354294 * k + 64004) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 47355) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 47355))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_47719 : ∀ k : Nat,
    iterate (262144 * k + 47719) 29 = 177147 * k + 32248 ∧
      177147 * k + 32248 < 262144 * k + 47719 := by
  intro k
  have h1 : C (262144 * k + 47719) = 786432 * k + 143158 := by
    unfold C
    simp [show (262144 * k + 47719) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 143158) = 393216 * k + 71579 := by
    unfold C
    simp [show (786432 * k + 143158) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 71579) = 1179648 * k + 214738 := by
    unfold C
    simp [show (393216 * k + 71579) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 214738) = 589824 * k + 107369 := by
    unfold C
    simp [show (1179648 * k + 214738) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 107369) = 1769472 * k + 322108 := by
    unfold C
    simp [show (589824 * k + 107369) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 322108) = 884736 * k + 161054 := by
    unfold C
    simp [show (1769472 * k + 322108) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 161054) = 442368 * k + 80527 := by
    unfold C
    simp [show (884736 * k + 161054) % 2 = 0 by omega]
    omega
  have h8 : C (442368 * k + 80527) = 1327104 * k + 241582 := by
    unfold C
    simp [show (442368 * k + 80527) % 2 ≠ 0 by omega]
    omega
  have h9 : C (1327104 * k + 241582) = 663552 * k + 120791 := by
    unfold C
    simp [show (1327104 * k + 241582) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 120791) = 1990656 * k + 362374 := by
    unfold C
    simp [show (663552 * k + 120791) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 362374) = 995328 * k + 181187 := by
    unfold C
    simp [show (1990656 * k + 362374) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 181187) = 2985984 * k + 543562 := by
    unfold C
    simp [show (995328 * k + 181187) % 2 ≠ 0 by omega]
    omega
  have h13 : C (2985984 * k + 543562) = 1492992 * k + 271781 := by
    unfold C
    simp [show (2985984 * k + 543562) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 271781) = 4478976 * k + 815344 := by
    unfold C
    simp [show (1492992 * k + 271781) % 2 ≠ 0 by omega]
    omega
  have h15 : C (4478976 * k + 815344) = 2239488 * k + 407672 := by
    unfold C
    simp [show (4478976 * k + 815344) % 2 = 0 by omega]
    omega
  have h16 : C (2239488 * k + 407672) = 1119744 * k + 203836 := by
    unfold C
    simp [show (2239488 * k + 407672) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 203836) = 559872 * k + 101918 := by
    unfold C
    simp [show (1119744 * k + 203836) % 2 = 0 by omega]
    omega
  have h18 : C (559872 * k + 101918) = 279936 * k + 50959 := by
    unfold C
    simp [show (559872 * k + 101918) % 2 = 0 by omega]
    omega
  have h19 : C (279936 * k + 50959) = 839808 * k + 152878 := by
    unfold C
    simp [show (279936 * k + 50959) % 2 ≠ 0 by omega]
    omega
  have h20 : C (839808 * k + 152878) = 419904 * k + 76439 := by
    unfold C
    simp [show (839808 * k + 152878) % 2 = 0 by omega]
    omega
  have h21 : C (419904 * k + 76439) = 1259712 * k + 229318 := by
    unfold C
    simp [show (419904 * k + 76439) % 2 ≠ 0 by omega]
    omega
  have h22 : C (1259712 * k + 229318) = 629856 * k + 114659 := by
    unfold C
    simp [show (1259712 * k + 229318) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 114659) = 1889568 * k + 343978 := by
    unfold C
    simp [show (629856 * k + 114659) % 2 ≠ 0 by omega]
    omega
  have h24 : C (1889568 * k + 343978) = 944784 * k + 171989 := by
    unfold C
    simp [show (1889568 * k + 343978) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 171989) = 2834352 * k + 515968 := by
    unfold C
    simp [show (944784 * k + 171989) % 2 ≠ 0 by omega]
    omega
  have h26 : C (2834352 * k + 515968) = 1417176 * k + 257984 := by
    unfold C
    simp [show (2834352 * k + 515968) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 257984) = 708588 * k + 128992 := by
    unfold C
    simp [show (1417176 * k + 257984) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 128992) = 354294 * k + 64496 := by
    unfold C
    simp [show (708588 * k + 128992) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 64496) = 177147 * k + 32248 := by
    unfold C
    simp [show (354294 * k + 64496) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 47719) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 47719))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_48159 : ∀ k : Nat,
    iterate (262144 * k + 48159) 29 = 177147 * k + 32545 ∧
      177147 * k + 32545 < 262144 * k + 48159 := by
  intro k
  have h1 : C (262144 * k + 48159) = 786432 * k + 144478 := by
    unfold C
    simp [show (262144 * k + 48159) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 144478) = 393216 * k + 72239 := by
    unfold C
    simp [show (786432 * k + 144478) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 72239) = 1179648 * k + 216718 := by
    unfold C
    simp [show (393216 * k + 72239) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 216718) = 589824 * k + 108359 := by
    unfold C
    simp [show (1179648 * k + 216718) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 108359) = 1769472 * k + 325078 := by
    unfold C
    simp [show (589824 * k + 108359) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 325078) = 884736 * k + 162539 := by
    unfold C
    simp [show (1769472 * k + 325078) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 162539) = 2654208 * k + 487618 := by
    unfold C
    simp [show (884736 * k + 162539) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 487618) = 1327104 * k + 243809 := by
    unfold C
    simp [show (2654208 * k + 487618) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 243809) = 3981312 * k + 731428 := by
    unfold C
    simp [show (1327104 * k + 243809) % 2 ≠ 0 by omega]
    omega
  have h10 : C (3981312 * k + 731428) = 1990656 * k + 365714 := by
    unfold C
    simp [show (3981312 * k + 731428) % 2 = 0 by omega]
    omega
  have h11 : C (1990656 * k + 365714) = 995328 * k + 182857 := by
    unfold C
    simp [show (1990656 * k + 365714) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 182857) = 2985984 * k + 548572 := by
    unfold C
    simp [show (995328 * k + 182857) % 2 ≠ 0 by omega]
    omega
  have h13 : C (2985984 * k + 548572) = 1492992 * k + 274286 := by
    unfold C
    simp [show (2985984 * k + 548572) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 274286) = 746496 * k + 137143 := by
    unfold C
    simp [show (1492992 * k + 274286) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 137143) = 2239488 * k + 411430 := by
    unfold C
    simp [show (746496 * k + 137143) % 2 ≠ 0 by omega]
    omega
  have h16 : C (2239488 * k + 411430) = 1119744 * k + 205715 := by
    unfold C
    simp [show (2239488 * k + 411430) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 205715) = 3359232 * k + 617146 := by
    unfold C
    simp [show (1119744 * k + 205715) % 2 ≠ 0 by omega]
    omega
  have h18 : C (3359232 * k + 617146) = 1679616 * k + 308573 := by
    unfold C
    simp [show (3359232 * k + 617146) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 308573) = 5038848 * k + 925720 := by
    unfold C
    simp [show (1679616 * k + 308573) % 2 ≠ 0 by omega]
    omega
  have h20 : C (5038848 * k + 925720) = 2519424 * k + 462860 := by
    unfold C
    simp [show (5038848 * k + 925720) % 2 = 0 by omega]
    omega
  have h21 : C (2519424 * k + 462860) = 1259712 * k + 231430 := by
    unfold C
    simp [show (2519424 * k + 462860) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 231430) = 629856 * k + 115715 := by
    unfold C
    simp [show (1259712 * k + 231430) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 115715) = 1889568 * k + 347146 := by
    unfold C
    simp [show (629856 * k + 115715) % 2 ≠ 0 by omega]
    omega
  have h24 : C (1889568 * k + 347146) = 944784 * k + 173573 := by
    unfold C
    simp [show (1889568 * k + 347146) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 173573) = 2834352 * k + 520720 := by
    unfold C
    simp [show (944784 * k + 173573) % 2 ≠ 0 by omega]
    omega
  have h26 : C (2834352 * k + 520720) = 1417176 * k + 260360 := by
    unfold C
    simp [show (2834352 * k + 520720) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 260360) = 708588 * k + 130180 := by
    unfold C
    simp [show (1417176 * k + 260360) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 130180) = 354294 * k + 65090 := by
    unfold C
    simp [show (708588 * k + 130180) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 65090) = 177147 * k + 32545 := by
    unfold C
    simp [show (354294 * k + 65090) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 48159) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 48159))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_48191 : ∀ k : Nat,
    iterate (262144 * k + 48191) 29 = 177147 * k + 32567 ∧
      177147 * k + 32567 < 262144 * k + 48191 := by
  intro k
  have h1 : C (262144 * k + 48191) = 786432 * k + 144574 := by
    unfold C
    simp [show (262144 * k + 48191) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 144574) = 393216 * k + 72287 := by
    unfold C
    simp [show (786432 * k + 144574) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 72287) = 1179648 * k + 216862 := by
    unfold C
    simp [show (393216 * k + 72287) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 216862) = 589824 * k + 108431 := by
    unfold C
    simp [show (1179648 * k + 216862) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 108431) = 1769472 * k + 325294 := by
    unfold C
    simp [show (589824 * k + 108431) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 325294) = 884736 * k + 162647 := by
    unfold C
    simp [show (1769472 * k + 325294) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 162647) = 2654208 * k + 487942 := by
    unfold C
    simp [show (884736 * k + 162647) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 487942) = 1327104 * k + 243971 := by
    unfold C
    simp [show (2654208 * k + 487942) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 243971) = 3981312 * k + 731914 := by
    unfold C
    simp [show (1327104 * k + 243971) % 2 ≠ 0 by omega]
    omega
  have h10 : C (3981312 * k + 731914) = 1990656 * k + 365957 := by
    unfold C
    simp [show (3981312 * k + 731914) % 2 = 0 by omega]
    omega
  have h11 : C (1990656 * k + 365957) = 5971968 * k + 1097872 := by
    unfold C
    simp [show (1990656 * k + 365957) % 2 ≠ 0 by omega]
    omega
  have h12 : C (5971968 * k + 1097872) = 2985984 * k + 548936 := by
    unfold C
    simp [show (5971968 * k + 1097872) % 2 = 0 by omega]
    omega
  have h13 : C (2985984 * k + 548936) = 1492992 * k + 274468 := by
    unfold C
    simp [show (2985984 * k + 548936) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 274468) = 746496 * k + 137234 := by
    unfold C
    simp [show (1492992 * k + 274468) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 137234) = 373248 * k + 68617 := by
    unfold C
    simp [show (746496 * k + 137234) % 2 = 0 by omega]
    omega
  have h16 : C (373248 * k + 68617) = 1119744 * k + 205852 := by
    unfold C
    simp [show (373248 * k + 68617) % 2 ≠ 0 by omega]
    omega
  have h17 : C (1119744 * k + 205852) = 559872 * k + 102926 := by
    unfold C
    simp [show (1119744 * k + 205852) % 2 = 0 by omega]
    omega
  have h18 : C (559872 * k + 102926) = 279936 * k + 51463 := by
    unfold C
    simp [show (559872 * k + 102926) % 2 = 0 by omega]
    omega
  have h19 : C (279936 * k + 51463) = 839808 * k + 154390 := by
    unfold C
    simp [show (279936 * k + 51463) % 2 ≠ 0 by omega]
    omega
  have h20 : C (839808 * k + 154390) = 419904 * k + 77195 := by
    unfold C
    simp [show (839808 * k + 154390) % 2 = 0 by omega]
    omega
  have h21 : C (419904 * k + 77195) = 1259712 * k + 231586 := by
    unfold C
    simp [show (419904 * k + 77195) % 2 ≠ 0 by omega]
    omega
  have h22 : C (1259712 * k + 231586) = 629856 * k + 115793 := by
    unfold C
    simp [show (1259712 * k + 231586) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 115793) = 1889568 * k + 347380 := by
    unfold C
    simp [show (629856 * k + 115793) % 2 ≠ 0 by omega]
    omega
  have h24 : C (1889568 * k + 347380) = 944784 * k + 173690 := by
    unfold C
    simp [show (1889568 * k + 347380) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 173690) = 472392 * k + 86845 := by
    unfold C
    simp [show (944784 * k + 173690) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 86845) = 1417176 * k + 260536 := by
    unfold C
    simp [show (472392 * k + 86845) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 260536) = 708588 * k + 130268 := by
    unfold C
    simp [show (1417176 * k + 260536) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 130268) = 354294 * k + 65134 := by
    unfold C
    simp [show (708588 * k + 130268) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 65134) = 177147 * k + 32567 := by
    unfold C
    simp [show (354294 * k + 65134) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 48191) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 48191))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_48431 : ∀ k : Nat,
    iterate (262144 * k + 48431) 29 = 177147 * k + 32729 ∧
      177147 * k + 32729 < 262144 * k + 48431 := by
  intro k
  have h1 : C (262144 * k + 48431) = 786432 * k + 145294 := by
    unfold C
    simp [show (262144 * k + 48431) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 145294) = 393216 * k + 72647 := by
    unfold C
    simp [show (786432 * k + 145294) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 72647) = 1179648 * k + 217942 := by
    unfold C
    simp [show (393216 * k + 72647) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 217942) = 589824 * k + 108971 := by
    unfold C
    simp [show (1179648 * k + 217942) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 108971) = 1769472 * k + 326914 := by
    unfold C
    simp [show (589824 * k + 108971) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 326914) = 884736 * k + 163457 := by
    unfold C
    simp [show (1769472 * k + 326914) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 163457) = 2654208 * k + 490372 := by
    unfold C
    simp [show (884736 * k + 163457) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 490372) = 1327104 * k + 245186 := by
    unfold C
    simp [show (2654208 * k + 490372) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 245186) = 663552 * k + 122593 := by
    unfold C
    simp [show (1327104 * k + 245186) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 122593) = 1990656 * k + 367780 := by
    unfold C
    simp [show (663552 * k + 122593) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 367780) = 995328 * k + 183890 := by
    unfold C
    simp [show (1990656 * k + 367780) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 183890) = 497664 * k + 91945 := by
    unfold C
    simp [show (995328 * k + 183890) % 2 = 0 by omega]
    omega
  have h13 : C (497664 * k + 91945) = 1492992 * k + 275836 := by
    unfold C
    simp [show (497664 * k + 91945) % 2 ≠ 0 by omega]
    omega
  have h14 : C (1492992 * k + 275836) = 746496 * k + 137918 := by
    unfold C
    simp [show (1492992 * k + 275836) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 137918) = 373248 * k + 68959 := by
    unfold C
    simp [show (746496 * k + 137918) % 2 = 0 by omega]
    omega
  have h16 : C (373248 * k + 68959) = 1119744 * k + 206878 := by
    unfold C
    simp [show (373248 * k + 68959) % 2 ≠ 0 by omega]
    omega
  have h17 : C (1119744 * k + 206878) = 559872 * k + 103439 := by
    unfold C
    simp [show (1119744 * k + 206878) % 2 = 0 by omega]
    omega
  have h18 : C (559872 * k + 103439) = 1679616 * k + 310318 := by
    unfold C
    simp [show (559872 * k + 103439) % 2 ≠ 0 by omega]
    omega
  have h19 : C (1679616 * k + 310318) = 839808 * k + 155159 := by
    unfold C
    simp [show (1679616 * k + 310318) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 155159) = 2519424 * k + 465478 := by
    unfold C
    simp [show (839808 * k + 155159) % 2 ≠ 0 by omega]
    omega
  have h21 : C (2519424 * k + 465478) = 1259712 * k + 232739 := by
    unfold C
    simp [show (2519424 * k + 465478) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 232739) = 3779136 * k + 698218 := by
    unfold C
    simp [show (1259712 * k + 232739) % 2 ≠ 0 by omega]
    omega
  have h23 : C (3779136 * k + 698218) = 1889568 * k + 349109 := by
    unfold C
    simp [show (3779136 * k + 698218) % 2 = 0 by omega]
    omega
  have h24 : C (1889568 * k + 349109) = 5668704 * k + 1047328 := by
    unfold C
    simp [show (1889568 * k + 349109) % 2 ≠ 0 by omega]
    omega
  have h25 : C (5668704 * k + 1047328) = 2834352 * k + 523664 := by
    unfold C
    simp [show (5668704 * k + 1047328) % 2 = 0 by omega]
    omega
  have h26 : C (2834352 * k + 523664) = 1417176 * k + 261832 := by
    unfold C
    simp [show (2834352 * k + 523664) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 261832) = 708588 * k + 130916 := by
    unfold C
    simp [show (1417176 * k + 261832) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 130916) = 354294 * k + 65458 := by
    unfold C
    simp [show (708588 * k + 130916) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 65458) = 177147 * k + 32729 := by
    unfold C
    simp [show (354294 * k + 65458) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 48431) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 48431))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_48511 : ∀ k : Nat,
    iterate (262144 * k + 48511) 29 = 177147 * k + 32783 ∧
      177147 * k + 32783 < 262144 * k + 48511 := by
  intro k
  have h1 : C (262144 * k + 48511) = 786432 * k + 145534 := by
    unfold C
    simp [show (262144 * k + 48511) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 145534) = 393216 * k + 72767 := by
    unfold C
    simp [show (786432 * k + 145534) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 72767) = 1179648 * k + 218302 := by
    unfold C
    simp [show (393216 * k + 72767) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 218302) = 589824 * k + 109151 := by
    unfold C
    simp [show (1179648 * k + 218302) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 109151) = 1769472 * k + 327454 := by
    unfold C
    simp [show (589824 * k + 109151) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 327454) = 884736 * k + 163727 := by
    unfold C
    simp [show (1769472 * k + 327454) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 163727) = 2654208 * k + 491182 := by
    unfold C
    simp [show (884736 * k + 163727) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 491182) = 1327104 * k + 245591 := by
    unfold C
    simp [show (2654208 * k + 491182) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 245591) = 3981312 * k + 736774 := by
    unfold C
    simp [show (1327104 * k + 245591) % 2 ≠ 0 by omega]
    omega
  have h10 : C (3981312 * k + 736774) = 1990656 * k + 368387 := by
    unfold C
    simp [show (3981312 * k + 736774) % 2 = 0 by omega]
    omega
  have h11 : C (1990656 * k + 368387) = 5971968 * k + 1105162 := by
    unfold C
    simp [show (1990656 * k + 368387) % 2 ≠ 0 by omega]
    omega
  have h12 : C (5971968 * k + 1105162) = 2985984 * k + 552581 := by
    unfold C
    simp [show (5971968 * k + 1105162) % 2 = 0 by omega]
    omega
  have h13 : C (2985984 * k + 552581) = 8957952 * k + 1657744 := by
    unfold C
    simp [show (2985984 * k + 552581) % 2 ≠ 0 by omega]
    omega
  have h14 : C (8957952 * k + 1657744) = 4478976 * k + 828872 := by
    unfold C
    simp [show (8957952 * k + 1657744) % 2 = 0 by omega]
    omega
  have h15 : C (4478976 * k + 828872) = 2239488 * k + 414436 := by
    unfold C
    simp [show (4478976 * k + 828872) % 2 = 0 by omega]
    omega
  have h16 : C (2239488 * k + 414436) = 1119744 * k + 207218 := by
    unfold C
    simp [show (2239488 * k + 414436) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 207218) = 559872 * k + 103609 := by
    unfold C
    simp [show (1119744 * k + 207218) % 2 = 0 by omega]
    omega
  have h18 : C (559872 * k + 103609) = 1679616 * k + 310828 := by
    unfold C
    simp [show (559872 * k + 103609) % 2 ≠ 0 by omega]
    omega
  have h19 : C (1679616 * k + 310828) = 839808 * k + 155414 := by
    unfold C
    simp [show (1679616 * k + 310828) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 155414) = 419904 * k + 77707 := by
    unfold C
    simp [show (839808 * k + 155414) % 2 = 0 by omega]
    omega
  have h21 : C (419904 * k + 77707) = 1259712 * k + 233122 := by
    unfold C
    simp [show (419904 * k + 77707) % 2 ≠ 0 by omega]
    omega
  have h22 : C (1259712 * k + 233122) = 629856 * k + 116561 := by
    unfold C
    simp [show (1259712 * k + 233122) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 116561) = 1889568 * k + 349684 := by
    unfold C
    simp [show (629856 * k + 116561) % 2 ≠ 0 by omega]
    omega
  have h24 : C (1889568 * k + 349684) = 944784 * k + 174842 := by
    unfold C
    simp [show (1889568 * k + 349684) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 174842) = 472392 * k + 87421 := by
    unfold C
    simp [show (944784 * k + 174842) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 87421) = 1417176 * k + 262264 := by
    unfold C
    simp [show (472392 * k + 87421) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 262264) = 708588 * k + 131132 := by
    unfold C
    simp [show (1417176 * k + 262264) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 131132) = 354294 * k + 65566 := by
    unfold C
    simp [show (708588 * k + 131132) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 65566) = 177147 * k + 32783 := by
    unfold C
    simp [show (354294 * k + 65566) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 48511) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 48511))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_48671 : ∀ k : Nat,
    iterate (262144 * k + 48671) 29 = 177147 * k + 32891 ∧
      177147 * k + 32891 < 262144 * k + 48671 := by
  intro k
  have h1 : C (262144 * k + 48671) = 786432 * k + 146014 := by
    unfold C
    simp [show (262144 * k + 48671) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 146014) = 393216 * k + 73007 := by
    unfold C
    simp [show (786432 * k + 146014) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 73007) = 1179648 * k + 219022 := by
    unfold C
    simp [show (393216 * k + 73007) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 219022) = 589824 * k + 109511 := by
    unfold C
    simp [show (1179648 * k + 219022) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 109511) = 1769472 * k + 328534 := by
    unfold C
    simp [show (589824 * k + 109511) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 328534) = 884736 * k + 164267 := by
    unfold C
    simp [show (1769472 * k + 328534) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 164267) = 2654208 * k + 492802 := by
    unfold C
    simp [show (884736 * k + 164267) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 492802) = 1327104 * k + 246401 := by
    unfold C
    simp [show (2654208 * k + 492802) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 246401) = 3981312 * k + 739204 := by
    unfold C
    simp [show (1327104 * k + 246401) % 2 ≠ 0 by omega]
    omega
  have h10 : C (3981312 * k + 739204) = 1990656 * k + 369602 := by
    unfold C
    simp [show (3981312 * k + 739204) % 2 = 0 by omega]
    omega
  have h11 : C (1990656 * k + 369602) = 995328 * k + 184801 := by
    unfold C
    simp [show (1990656 * k + 369602) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 184801) = 2985984 * k + 554404 := by
    unfold C
    simp [show (995328 * k + 184801) % 2 ≠ 0 by omega]
    omega
  have h13 : C (2985984 * k + 554404) = 1492992 * k + 277202 := by
    unfold C
    simp [show (2985984 * k + 554404) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 277202) = 746496 * k + 138601 := by
    unfold C
    simp [show (1492992 * k + 277202) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 138601) = 2239488 * k + 415804 := by
    unfold C
    simp [show (746496 * k + 138601) % 2 ≠ 0 by omega]
    omega
  have h16 : C (2239488 * k + 415804) = 1119744 * k + 207902 := by
    unfold C
    simp [show (2239488 * k + 415804) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 207902) = 559872 * k + 103951 := by
    unfold C
    simp [show (1119744 * k + 207902) % 2 = 0 by omega]
    omega
  have h18 : C (559872 * k + 103951) = 1679616 * k + 311854 := by
    unfold C
    simp [show (559872 * k + 103951) % 2 ≠ 0 by omega]
    omega
  have h19 : C (1679616 * k + 311854) = 839808 * k + 155927 := by
    unfold C
    simp [show (1679616 * k + 311854) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 155927) = 2519424 * k + 467782 := by
    unfold C
    simp [show (839808 * k + 155927) % 2 ≠ 0 by omega]
    omega
  have h21 : C (2519424 * k + 467782) = 1259712 * k + 233891 := by
    unfold C
    simp [show (2519424 * k + 467782) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 233891) = 3779136 * k + 701674 := by
    unfold C
    simp [show (1259712 * k + 233891) % 2 ≠ 0 by omega]
    omega
  have h23 : C (3779136 * k + 701674) = 1889568 * k + 350837 := by
    unfold C
    simp [show (3779136 * k + 701674) % 2 = 0 by omega]
    omega
  have h24 : C (1889568 * k + 350837) = 5668704 * k + 1052512 := by
    unfold C
    simp [show (1889568 * k + 350837) % 2 ≠ 0 by omega]
    omega
  have h25 : C (5668704 * k + 1052512) = 2834352 * k + 526256 := by
    unfold C
    simp [show (5668704 * k + 1052512) % 2 = 0 by omega]
    omega
  have h26 : C (2834352 * k + 526256) = 1417176 * k + 263128 := by
    unfold C
    simp [show (2834352 * k + 526256) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 263128) = 708588 * k + 131564 := by
    unfold C
    simp [show (1417176 * k + 263128) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 131564) = 354294 * k + 65782 := by
    unfold C
    simp [show (708588 * k + 131564) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 65782) = 177147 * k + 32891 := by
    unfold C
    simp [show (354294 * k + 65782) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 48671) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 48671))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_48831 : ∀ k : Nat,
    iterate (262144 * k + 48831) 29 = 177147 * k + 32999 ∧
      177147 * k + 32999 < 262144 * k + 48831 := by
  intro k
  have h1 : C (262144 * k + 48831) = 786432 * k + 146494 := by
    unfold C
    simp [show (262144 * k + 48831) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 146494) = 393216 * k + 73247 := by
    unfold C
    simp [show (786432 * k + 146494) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 73247) = 1179648 * k + 219742 := by
    unfold C
    simp [show (393216 * k + 73247) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 219742) = 589824 * k + 109871 := by
    unfold C
    simp [show (1179648 * k + 219742) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 109871) = 1769472 * k + 329614 := by
    unfold C
    simp [show (589824 * k + 109871) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 329614) = 884736 * k + 164807 := by
    unfold C
    simp [show (1769472 * k + 329614) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 164807) = 2654208 * k + 494422 := by
    unfold C
    simp [show (884736 * k + 164807) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 494422) = 1327104 * k + 247211 := by
    unfold C
    simp [show (2654208 * k + 494422) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 247211) = 3981312 * k + 741634 := by
    unfold C
    simp [show (1327104 * k + 247211) % 2 ≠ 0 by omega]
    omega
  have h10 : C (3981312 * k + 741634) = 1990656 * k + 370817 := by
    unfold C
    simp [show (3981312 * k + 741634) % 2 = 0 by omega]
    omega
  have h11 : C (1990656 * k + 370817) = 5971968 * k + 1112452 := by
    unfold C
    simp [show (1990656 * k + 370817) % 2 ≠ 0 by omega]
    omega
  have h12 : C (5971968 * k + 1112452) = 2985984 * k + 556226 := by
    unfold C
    simp [show (5971968 * k + 1112452) % 2 = 0 by omega]
    omega
  have h13 : C (2985984 * k + 556226) = 1492992 * k + 278113 := by
    unfold C
    simp [show (2985984 * k + 556226) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 278113) = 4478976 * k + 834340 := by
    unfold C
    simp [show (1492992 * k + 278113) % 2 ≠ 0 by omega]
    omega
  have h15 : C (4478976 * k + 834340) = 2239488 * k + 417170 := by
    unfold C
    simp [show (4478976 * k + 834340) % 2 = 0 by omega]
    omega
  have h16 : C (2239488 * k + 417170) = 1119744 * k + 208585 := by
    unfold C
    simp [show (2239488 * k + 417170) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 208585) = 3359232 * k + 625756 := by
    unfold C
    simp [show (1119744 * k + 208585) % 2 ≠ 0 by omega]
    omega
  have h18 : C (3359232 * k + 625756) = 1679616 * k + 312878 := by
    unfold C
    simp [show (3359232 * k + 625756) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 312878) = 839808 * k + 156439 := by
    unfold C
    simp [show (1679616 * k + 312878) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 156439) = 2519424 * k + 469318 := by
    unfold C
    simp [show (839808 * k + 156439) % 2 ≠ 0 by omega]
    omega
  have h21 : C (2519424 * k + 469318) = 1259712 * k + 234659 := by
    unfold C
    simp [show (2519424 * k + 469318) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 234659) = 3779136 * k + 703978 := by
    unfold C
    simp [show (1259712 * k + 234659) % 2 ≠ 0 by omega]
    omega
  have h23 : C (3779136 * k + 703978) = 1889568 * k + 351989 := by
    unfold C
    simp [show (3779136 * k + 703978) % 2 = 0 by omega]
    omega
  have h24 : C (1889568 * k + 351989) = 5668704 * k + 1055968 := by
    unfold C
    simp [show (1889568 * k + 351989) % 2 ≠ 0 by omega]
    omega
  have h25 : C (5668704 * k + 1055968) = 2834352 * k + 527984 := by
    unfold C
    simp [show (5668704 * k + 1055968) % 2 = 0 by omega]
    omega
  have h26 : C (2834352 * k + 527984) = 1417176 * k + 263992 := by
    unfold C
    simp [show (2834352 * k + 527984) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 263992) = 708588 * k + 131996 := by
    unfold C
    simp [show (1417176 * k + 263992) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 131996) = 354294 * k + 65998 := by
    unfold C
    simp [show (708588 * k + 131996) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 65998) = 177147 * k + 32999 := by
    unfold C
    simp [show (354294 * k + 65998) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 48831) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 48831))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_48847 : ∀ k : Nat,
    iterate (262144 * k + 48847) 29 = 177147 * k + 33010 ∧
      177147 * k + 33010 < 262144 * k + 48847 := by
  intro k
  have h1 : C (262144 * k + 48847) = 786432 * k + 146542 := by
    unfold C
    simp [show (262144 * k + 48847) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 146542) = 393216 * k + 73271 := by
    unfold C
    simp [show (786432 * k + 146542) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 73271) = 1179648 * k + 219814 := by
    unfold C
    simp [show (393216 * k + 73271) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 219814) = 589824 * k + 109907 := by
    unfold C
    simp [show (1179648 * k + 219814) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 109907) = 1769472 * k + 329722 := by
    unfold C
    simp [show (589824 * k + 109907) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 329722) = 884736 * k + 164861 := by
    unfold C
    simp [show (1769472 * k + 329722) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 164861) = 2654208 * k + 494584 := by
    unfold C
    simp [show (884736 * k + 164861) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 494584) = 1327104 * k + 247292 := by
    unfold C
    simp [show (2654208 * k + 494584) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 247292) = 663552 * k + 123646 := by
    unfold C
    simp [show (1327104 * k + 247292) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 123646) = 331776 * k + 61823 := by
    unfold C
    simp [show (663552 * k + 123646) % 2 = 0 by omega]
    omega
  have h11 : C (331776 * k + 61823) = 995328 * k + 185470 := by
    unfold C
    simp [show (331776 * k + 61823) % 2 ≠ 0 by omega]
    omega
  have h12 : C (995328 * k + 185470) = 497664 * k + 92735 := by
    unfold C
    simp [show (995328 * k + 185470) % 2 = 0 by omega]
    omega
  have h13 : C (497664 * k + 92735) = 1492992 * k + 278206 := by
    unfold C
    simp [show (497664 * k + 92735) % 2 ≠ 0 by omega]
    omega
  have h14 : C (1492992 * k + 278206) = 746496 * k + 139103 := by
    unfold C
    simp [show (1492992 * k + 278206) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 139103) = 2239488 * k + 417310 := by
    unfold C
    simp [show (746496 * k + 139103) % 2 ≠ 0 by omega]
    omega
  have h16 : C (2239488 * k + 417310) = 1119744 * k + 208655 := by
    unfold C
    simp [show (2239488 * k + 417310) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 208655) = 3359232 * k + 625966 := by
    unfold C
    simp [show (1119744 * k + 208655) % 2 ≠ 0 by omega]
    omega
  have h18 : C (3359232 * k + 625966) = 1679616 * k + 312983 := by
    unfold C
    simp [show (3359232 * k + 625966) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 312983) = 5038848 * k + 938950 := by
    unfold C
    simp [show (1679616 * k + 312983) % 2 ≠ 0 by omega]
    omega
  have h20 : C (5038848 * k + 938950) = 2519424 * k + 469475 := by
    unfold C
    simp [show (5038848 * k + 938950) % 2 = 0 by omega]
    omega
  have h21 : C (2519424 * k + 469475) = 7558272 * k + 1408426 := by
    unfold C
    simp [show (2519424 * k + 469475) % 2 ≠ 0 by omega]
    omega
  have h22 : C (7558272 * k + 1408426) = 3779136 * k + 704213 := by
    unfold C
    simp [show (7558272 * k + 1408426) % 2 = 0 by omega]
    omega
  have h23 : C (3779136 * k + 704213) = 11337408 * k + 2112640 := by
    unfold C
    simp [show (3779136 * k + 704213) % 2 ≠ 0 by omega]
    omega
  have h24 : C (11337408 * k + 2112640) = 5668704 * k + 1056320 := by
    unfold C
    simp [show (11337408 * k + 2112640) % 2 = 0 by omega]
    omega
  have h25 : C (5668704 * k + 1056320) = 2834352 * k + 528160 := by
    unfold C
    simp [show (5668704 * k + 1056320) % 2 = 0 by omega]
    omega
  have h26 : C (2834352 * k + 528160) = 1417176 * k + 264080 := by
    unfold C
    simp [show (2834352 * k + 528160) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 264080) = 708588 * k + 132040 := by
    unfold C
    simp [show (1417176 * k + 264080) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 132040) = 354294 * k + 66020 := by
    unfold C
    simp [show (708588 * k + 132040) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 66020) = 177147 * k + 33010 := by
    unfold C
    simp [show (354294 * k + 66020) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 48847) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 48847))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_48959 : ∀ k : Nat,
    iterate (262144 * k + 48959) 29 = 177147 * k + 33086 ∧
      177147 * k + 33086 < 262144 * k + 48959 := by
  intro k
  have h1 : C (262144 * k + 48959) = 786432 * k + 146878 := by
    unfold C
    simp [show (262144 * k + 48959) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 146878) = 393216 * k + 73439 := by
    unfold C
    simp [show (786432 * k + 146878) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 73439) = 1179648 * k + 220318 := by
    unfold C
    simp [show (393216 * k + 73439) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 220318) = 589824 * k + 110159 := by
    unfold C
    simp [show (1179648 * k + 220318) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 110159) = 1769472 * k + 330478 := by
    unfold C
    simp [show (589824 * k + 110159) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 330478) = 884736 * k + 165239 := by
    unfold C
    simp [show (1769472 * k + 330478) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 165239) = 2654208 * k + 495718 := by
    unfold C
    simp [show (884736 * k + 165239) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 495718) = 1327104 * k + 247859 := by
    unfold C
    simp [show (2654208 * k + 495718) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 247859) = 3981312 * k + 743578 := by
    unfold C
    simp [show (1327104 * k + 247859) % 2 ≠ 0 by omega]
    omega
  have h10 : C (3981312 * k + 743578) = 1990656 * k + 371789 := by
    unfold C
    simp [show (3981312 * k + 743578) % 2 = 0 by omega]
    omega
  have h11 : C (1990656 * k + 371789) = 5971968 * k + 1115368 := by
    unfold C
    simp [show (1990656 * k + 371789) % 2 ≠ 0 by omega]
    omega
  have h12 : C (5971968 * k + 1115368) = 2985984 * k + 557684 := by
    unfold C
    simp [show (5971968 * k + 1115368) % 2 = 0 by omega]
    omega
  have h13 : C (2985984 * k + 557684) = 1492992 * k + 278842 := by
    unfold C
    simp [show (2985984 * k + 557684) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 278842) = 746496 * k + 139421 := by
    unfold C
    simp [show (1492992 * k + 278842) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 139421) = 2239488 * k + 418264 := by
    unfold C
    simp [show (746496 * k + 139421) % 2 ≠ 0 by omega]
    omega
  have h16 : C (2239488 * k + 418264) = 1119744 * k + 209132 := by
    unfold C
    simp [show (2239488 * k + 418264) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 209132) = 559872 * k + 104566 := by
    unfold C
    simp [show (1119744 * k + 209132) % 2 = 0 by omega]
    omega
  have h18 : C (559872 * k + 104566) = 279936 * k + 52283 := by
    unfold C
    simp [show (559872 * k + 104566) % 2 = 0 by omega]
    omega
  have h19 : C (279936 * k + 52283) = 839808 * k + 156850 := by
    unfold C
    simp [show (279936 * k + 52283) % 2 ≠ 0 by omega]
    omega
  have h20 : C (839808 * k + 156850) = 419904 * k + 78425 := by
    unfold C
    simp [show (839808 * k + 156850) % 2 = 0 by omega]
    omega
  have h21 : C (419904 * k + 78425) = 1259712 * k + 235276 := by
    unfold C
    simp [show (419904 * k + 78425) % 2 ≠ 0 by omega]
    omega
  have h22 : C (1259712 * k + 235276) = 629856 * k + 117638 := by
    unfold C
    simp [show (1259712 * k + 235276) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 117638) = 314928 * k + 58819 := by
    unfold C
    simp [show (629856 * k + 117638) % 2 = 0 by omega]
    omega
  have h24 : C (314928 * k + 58819) = 944784 * k + 176458 := by
    unfold C
    simp [show (314928 * k + 58819) % 2 ≠ 0 by omega]
    omega
  have h25 : C (944784 * k + 176458) = 472392 * k + 88229 := by
    unfold C
    simp [show (944784 * k + 176458) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 88229) = 1417176 * k + 264688 := by
    unfold C
    simp [show (472392 * k + 88229) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 264688) = 708588 * k + 132344 := by
    unfold C
    simp [show (1417176 * k + 264688) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 132344) = 354294 * k + 66172 := by
    unfold C
    simp [show (708588 * k + 132344) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 66172) = 177147 * k + 33086 := by
    unfold C
    simp [show (354294 * k + 66172) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 48959) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 48959))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_49087 : ∀ k : Nat,
    iterate (262144 * k + 49087) 29 = 177147 * k + 33172 ∧
      177147 * k + 33172 < 262144 * k + 49087 := by
  intro k
  have h1 : C (262144 * k + 49087) = 786432 * k + 147262 := by
    unfold C
    simp [show (262144 * k + 49087) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 147262) = 393216 * k + 73631 := by
    unfold C
    simp [show (786432 * k + 147262) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 73631) = 1179648 * k + 220894 := by
    unfold C
    simp [show (393216 * k + 73631) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 220894) = 589824 * k + 110447 := by
    unfold C
    simp [show (1179648 * k + 220894) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 110447) = 1769472 * k + 331342 := by
    unfold C
    simp [show (589824 * k + 110447) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 331342) = 884736 * k + 165671 := by
    unfold C
    simp [show (1769472 * k + 331342) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 165671) = 2654208 * k + 497014 := by
    unfold C
    simp [show (884736 * k + 165671) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 497014) = 1327104 * k + 248507 := by
    unfold C
    simp [show (2654208 * k + 497014) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 248507) = 3981312 * k + 745522 := by
    unfold C
    simp [show (1327104 * k + 248507) % 2 ≠ 0 by omega]
    omega
  have h10 : C (3981312 * k + 745522) = 1990656 * k + 372761 := by
    unfold C
    simp [show (3981312 * k + 745522) % 2 = 0 by omega]
    omega
  have h11 : C (1990656 * k + 372761) = 5971968 * k + 1118284 := by
    unfold C
    simp [show (1990656 * k + 372761) % 2 ≠ 0 by omega]
    omega
  have h12 : C (5971968 * k + 1118284) = 2985984 * k + 559142 := by
    unfold C
    simp [show (5971968 * k + 1118284) % 2 = 0 by omega]
    omega
  have h13 : C (2985984 * k + 559142) = 1492992 * k + 279571 := by
    unfold C
    simp [show (2985984 * k + 559142) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 279571) = 4478976 * k + 838714 := by
    unfold C
    simp [show (1492992 * k + 279571) % 2 ≠ 0 by omega]
    omega
  have h15 : C (4478976 * k + 838714) = 2239488 * k + 419357 := by
    unfold C
    simp [show (4478976 * k + 838714) % 2 = 0 by omega]
    omega
  have h16 : C (2239488 * k + 419357) = 6718464 * k + 1258072 := by
    unfold C
    simp [show (2239488 * k + 419357) % 2 ≠ 0 by omega]
    omega
  have h17 : C (6718464 * k + 1258072) = 3359232 * k + 629036 := by
    unfold C
    simp [show (6718464 * k + 1258072) % 2 = 0 by omega]
    omega
  have h18 : C (3359232 * k + 629036) = 1679616 * k + 314518 := by
    unfold C
    simp [show (3359232 * k + 629036) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 314518) = 839808 * k + 157259 := by
    unfold C
    simp [show (1679616 * k + 314518) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 157259) = 2519424 * k + 471778 := by
    unfold C
    simp [show (839808 * k + 157259) % 2 ≠ 0 by omega]
    omega
  have h21 : C (2519424 * k + 471778) = 1259712 * k + 235889 := by
    unfold C
    simp [show (2519424 * k + 471778) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 235889) = 3779136 * k + 707668 := by
    unfold C
    simp [show (1259712 * k + 235889) % 2 ≠ 0 by omega]
    omega
  have h23 : C (3779136 * k + 707668) = 1889568 * k + 353834 := by
    unfold C
    simp [show (3779136 * k + 707668) % 2 = 0 by omega]
    omega
  have h24 : C (1889568 * k + 353834) = 944784 * k + 176917 := by
    unfold C
    simp [show (1889568 * k + 353834) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 176917) = 2834352 * k + 530752 := by
    unfold C
    simp [show (944784 * k + 176917) % 2 ≠ 0 by omega]
    omega
  have h26 : C (2834352 * k + 530752) = 1417176 * k + 265376 := by
    unfold C
    simp [show (2834352 * k + 530752) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 265376) = 708588 * k + 132688 := by
    unfold C
    simp [show (1417176 * k + 265376) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 132688) = 354294 * k + 66344 := by
    unfold C
    simp [show (708588 * k + 132688) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 66344) = 177147 * k + 33172 := by
    unfold C
    simp [show (354294 * k + 66344) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 49087) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 49087))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_49199 : ∀ k : Nat,
    iterate (262144 * k + 49199) 29 = 177147 * k + 33248 ∧
      177147 * k + 33248 < 262144 * k + 49199 := by
  intro k
  have h1 : C (262144 * k + 49199) = 786432 * k + 147598 := by
    unfold C
    simp [show (262144 * k + 49199) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 147598) = 393216 * k + 73799 := by
    unfold C
    simp [show (786432 * k + 147598) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 73799) = 1179648 * k + 221398 := by
    unfold C
    simp [show (393216 * k + 73799) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 221398) = 589824 * k + 110699 := by
    unfold C
    simp [show (1179648 * k + 221398) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 110699) = 1769472 * k + 332098 := by
    unfold C
    simp [show (589824 * k + 110699) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 332098) = 884736 * k + 166049 := by
    unfold C
    simp [show (1769472 * k + 332098) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 166049) = 2654208 * k + 498148 := by
    unfold C
    simp [show (884736 * k + 166049) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 498148) = 1327104 * k + 249074 := by
    unfold C
    simp [show (2654208 * k + 498148) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 249074) = 663552 * k + 124537 := by
    unfold C
    simp [show (1327104 * k + 249074) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 124537) = 1990656 * k + 373612 := by
    unfold C
    simp [show (663552 * k + 124537) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 373612) = 995328 * k + 186806 := by
    unfold C
    simp [show (1990656 * k + 373612) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 186806) = 497664 * k + 93403 := by
    unfold C
    simp [show (995328 * k + 186806) % 2 = 0 by omega]
    omega
  have h13 : C (497664 * k + 93403) = 1492992 * k + 280210 := by
    unfold C
    simp [show (497664 * k + 93403) % 2 ≠ 0 by omega]
    omega
  have h14 : C (1492992 * k + 280210) = 746496 * k + 140105 := by
    unfold C
    simp [show (1492992 * k + 280210) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 140105) = 2239488 * k + 420316 := by
    unfold C
    simp [show (746496 * k + 140105) % 2 ≠ 0 by omega]
    omega
  have h16 : C (2239488 * k + 420316) = 1119744 * k + 210158 := by
    unfold C
    simp [show (2239488 * k + 420316) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 210158) = 559872 * k + 105079 := by
    unfold C
    simp [show (1119744 * k + 210158) % 2 = 0 by omega]
    omega
  have h18 : C (559872 * k + 105079) = 1679616 * k + 315238 := by
    unfold C
    simp [show (559872 * k + 105079) % 2 ≠ 0 by omega]
    omega
  have h19 : C (1679616 * k + 315238) = 839808 * k + 157619 := by
    unfold C
    simp [show (1679616 * k + 315238) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 157619) = 2519424 * k + 472858 := by
    unfold C
    simp [show (839808 * k + 157619) % 2 ≠ 0 by omega]
    omega
  have h21 : C (2519424 * k + 472858) = 1259712 * k + 236429 := by
    unfold C
    simp [show (2519424 * k + 472858) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 236429) = 3779136 * k + 709288 := by
    unfold C
    simp [show (1259712 * k + 236429) % 2 ≠ 0 by omega]
    omega
  have h23 : C (3779136 * k + 709288) = 1889568 * k + 354644 := by
    unfold C
    simp [show (3779136 * k + 709288) % 2 = 0 by omega]
    omega
  have h24 : C (1889568 * k + 354644) = 944784 * k + 177322 := by
    unfold C
    simp [show (1889568 * k + 354644) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 177322) = 472392 * k + 88661 := by
    unfold C
    simp [show (944784 * k + 177322) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 88661) = 1417176 * k + 265984 := by
    unfold C
    simp [show (472392 * k + 88661) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 265984) = 708588 * k + 132992 := by
    unfold C
    simp [show (1417176 * k + 265984) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 132992) = 354294 * k + 66496 := by
    unfold C
    simp [show (708588 * k + 132992) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 66496) = 177147 * k + 33248 := by
    unfold C
    simp [show (354294 * k + 66496) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 49199) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 49199))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

end CollatzM18Shard009
