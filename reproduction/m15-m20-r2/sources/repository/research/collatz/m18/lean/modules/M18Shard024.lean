import Mathlib.Data.Nat.Prime.Basic

namespace CollatzM18Shard024

def C (n : Nat) : Nat := if n % 2 = 0 then n / 2 else 3 * n + 1

def iterate (n t : Nat) : Nat := Nat.rec n (fun _ previous => C previous) t

theorem descent_mod262144_119271 : ∀ k : Nat,
    iterate (262144 * k + 119271) 29 = 177147 * k + 80600 ∧
      177147 * k + 80600 < 262144 * k + 119271 := by
  intro k
  have h1 : C (262144 * k + 119271) = 786432 * k + 357814 := by
    unfold C
    simp [show (262144 * k + 119271) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 357814) = 393216 * k + 178907 := by
    unfold C
    simp [show (786432 * k + 357814) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 178907) = 1179648 * k + 536722 := by
    unfold C
    simp [show (393216 * k + 178907) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 536722) = 589824 * k + 268361 := by
    unfold C
    simp [show (1179648 * k + 536722) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 268361) = 1769472 * k + 805084 := by
    unfold C
    simp [show (589824 * k + 268361) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 805084) = 884736 * k + 402542 := by
    unfold C
    simp [show (1769472 * k + 805084) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 402542) = 442368 * k + 201271 := by
    unfold C
    simp [show (884736 * k + 402542) % 2 = 0 by omega]
    omega
  have h8 : C (442368 * k + 201271) = 1327104 * k + 603814 := by
    unfold C
    simp [show (442368 * k + 201271) % 2 ≠ 0 by omega]
    omega
  have h9 : C (1327104 * k + 603814) = 663552 * k + 301907 := by
    unfold C
    simp [show (1327104 * k + 603814) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 301907) = 1990656 * k + 905722 := by
    unfold C
    simp [show (663552 * k + 301907) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 905722) = 995328 * k + 452861 := by
    unfold C
    simp [show (1990656 * k + 905722) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 452861) = 2985984 * k + 1358584 := by
    unfold C
    simp [show (995328 * k + 452861) % 2 ≠ 0 by omega]
    omega
  have h13 : C (2985984 * k + 1358584) = 1492992 * k + 679292 := by
    unfold C
    simp [show (2985984 * k + 1358584) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 679292) = 746496 * k + 339646 := by
    unfold C
    simp [show (1492992 * k + 679292) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 339646) = 373248 * k + 169823 := by
    unfold C
    simp [show (746496 * k + 339646) % 2 = 0 by omega]
    omega
  have h16 : C (373248 * k + 169823) = 1119744 * k + 509470 := by
    unfold C
    simp [show (373248 * k + 169823) % 2 ≠ 0 by omega]
    omega
  have h17 : C (1119744 * k + 509470) = 559872 * k + 254735 := by
    unfold C
    simp [show (1119744 * k + 509470) % 2 = 0 by omega]
    omega
  have h18 : C (559872 * k + 254735) = 1679616 * k + 764206 := by
    unfold C
    simp [show (559872 * k + 254735) % 2 ≠ 0 by omega]
    omega
  have h19 : C (1679616 * k + 764206) = 839808 * k + 382103 := by
    unfold C
    simp [show (1679616 * k + 764206) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 382103) = 2519424 * k + 1146310 := by
    unfold C
    simp [show (839808 * k + 382103) % 2 ≠ 0 by omega]
    omega
  have h21 : C (2519424 * k + 1146310) = 1259712 * k + 573155 := by
    unfold C
    simp [show (2519424 * k + 1146310) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 573155) = 3779136 * k + 1719466 := by
    unfold C
    simp [show (1259712 * k + 573155) % 2 ≠ 0 by omega]
    omega
  have h23 : C (3779136 * k + 1719466) = 1889568 * k + 859733 := by
    unfold C
    simp [show (3779136 * k + 1719466) % 2 = 0 by omega]
    omega
  have h24 : C (1889568 * k + 859733) = 5668704 * k + 2579200 := by
    unfold C
    simp [show (1889568 * k + 859733) % 2 ≠ 0 by omega]
    omega
  have h25 : C (5668704 * k + 2579200) = 2834352 * k + 1289600 := by
    unfold C
    simp [show (5668704 * k + 2579200) % 2 = 0 by omega]
    omega
  have h26 : C (2834352 * k + 1289600) = 1417176 * k + 644800 := by
    unfold C
    simp [show (2834352 * k + 1289600) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 644800) = 708588 * k + 322400 := by
    unfold C
    simp [show (1417176 * k + 644800) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 322400) = 354294 * k + 161200 := by
    unfold C
    simp [show (708588 * k + 322400) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 161200) = 177147 * k + 80600 := by
    unfold C
    simp [show (354294 * k + 161200) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 119271) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 119271))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_119835 : ∀ k : Nat,
    iterate (262144 * k + 119835) 29 = 177147 * k + 80981 ∧
      177147 * k + 80981 < 262144 * k + 119835 := by
  intro k
  have h1 : C (262144 * k + 119835) = 786432 * k + 359506 := by
    unfold C
    simp [show (262144 * k + 119835) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 359506) = 393216 * k + 179753 := by
    unfold C
    simp [show (786432 * k + 359506) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 179753) = 1179648 * k + 539260 := by
    unfold C
    simp [show (393216 * k + 179753) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 539260) = 589824 * k + 269630 := by
    unfold C
    simp [show (1179648 * k + 539260) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 269630) = 294912 * k + 134815 := by
    unfold C
    simp [show (589824 * k + 269630) % 2 = 0 by omega]
    omega
  have h6 : C (294912 * k + 134815) = 884736 * k + 404446 := by
    unfold C
    simp [show (294912 * k + 134815) % 2 ≠ 0 by omega]
    omega
  have h7 : C (884736 * k + 404446) = 442368 * k + 202223 := by
    unfold C
    simp [show (884736 * k + 404446) % 2 = 0 by omega]
    omega
  have h8 : C (442368 * k + 202223) = 1327104 * k + 606670 := by
    unfold C
    simp [show (442368 * k + 202223) % 2 ≠ 0 by omega]
    omega
  have h9 : C (1327104 * k + 606670) = 663552 * k + 303335 := by
    unfold C
    simp [show (1327104 * k + 606670) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 303335) = 1990656 * k + 910006 := by
    unfold C
    simp [show (663552 * k + 303335) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 910006) = 995328 * k + 455003 := by
    unfold C
    simp [show (1990656 * k + 910006) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 455003) = 2985984 * k + 1365010 := by
    unfold C
    simp [show (995328 * k + 455003) % 2 ≠ 0 by omega]
    omega
  have h13 : C (2985984 * k + 1365010) = 1492992 * k + 682505 := by
    unfold C
    simp [show (2985984 * k + 1365010) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 682505) = 4478976 * k + 2047516 := by
    unfold C
    simp [show (1492992 * k + 682505) % 2 ≠ 0 by omega]
    omega
  have h15 : C (4478976 * k + 2047516) = 2239488 * k + 1023758 := by
    unfold C
    simp [show (4478976 * k + 2047516) % 2 = 0 by omega]
    omega
  have h16 : C (2239488 * k + 1023758) = 1119744 * k + 511879 := by
    unfold C
    simp [show (2239488 * k + 1023758) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 511879) = 3359232 * k + 1535638 := by
    unfold C
    simp [show (1119744 * k + 511879) % 2 ≠ 0 by omega]
    omega
  have h18 : C (3359232 * k + 1535638) = 1679616 * k + 767819 := by
    unfold C
    simp [show (3359232 * k + 1535638) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 767819) = 5038848 * k + 2303458 := by
    unfold C
    simp [show (1679616 * k + 767819) % 2 ≠ 0 by omega]
    omega
  have h20 : C (5038848 * k + 2303458) = 2519424 * k + 1151729 := by
    unfold C
    simp [show (5038848 * k + 2303458) % 2 = 0 by omega]
    omega
  have h21 : C (2519424 * k + 1151729) = 7558272 * k + 3455188 := by
    unfold C
    simp [show (2519424 * k + 1151729) % 2 ≠ 0 by omega]
    omega
  have h22 : C (7558272 * k + 3455188) = 3779136 * k + 1727594 := by
    unfold C
    simp [show (7558272 * k + 3455188) % 2 = 0 by omega]
    omega
  have h23 : C (3779136 * k + 1727594) = 1889568 * k + 863797 := by
    unfold C
    simp [show (3779136 * k + 1727594) % 2 = 0 by omega]
    omega
  have h24 : C (1889568 * k + 863797) = 5668704 * k + 2591392 := by
    unfold C
    simp [show (1889568 * k + 863797) % 2 ≠ 0 by omega]
    omega
  have h25 : C (5668704 * k + 2591392) = 2834352 * k + 1295696 := by
    unfold C
    simp [show (5668704 * k + 2591392) % 2 = 0 by omega]
    omega
  have h26 : C (2834352 * k + 1295696) = 1417176 * k + 647848 := by
    unfold C
    simp [show (2834352 * k + 1295696) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 647848) = 708588 * k + 323924 := by
    unfold C
    simp [show (1417176 * k + 647848) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 323924) = 354294 * k + 161962 := by
    unfold C
    simp [show (708588 * k + 323924) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 161962) = 177147 * k + 80981 := by
    unfold C
    simp [show (354294 * k + 161962) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 119835) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 119835))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_119919 : ∀ k : Nat,
    iterate (262144 * k + 119919) 29 = 177147 * k + 81038 ∧
      177147 * k + 81038 < 262144 * k + 119919 := by
  intro k
  have h1 : C (262144 * k + 119919) = 786432 * k + 359758 := by
    unfold C
    simp [show (262144 * k + 119919) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 359758) = 393216 * k + 179879 := by
    unfold C
    simp [show (786432 * k + 359758) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 179879) = 1179648 * k + 539638 := by
    unfold C
    simp [show (393216 * k + 179879) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 539638) = 589824 * k + 269819 := by
    unfold C
    simp [show (1179648 * k + 539638) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 269819) = 1769472 * k + 809458 := by
    unfold C
    simp [show (589824 * k + 269819) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 809458) = 884736 * k + 404729 := by
    unfold C
    simp [show (1769472 * k + 809458) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 404729) = 2654208 * k + 1214188 := by
    unfold C
    simp [show (884736 * k + 404729) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 1214188) = 1327104 * k + 607094 := by
    unfold C
    simp [show (2654208 * k + 1214188) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 607094) = 663552 * k + 303547 := by
    unfold C
    simp [show (1327104 * k + 607094) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 303547) = 1990656 * k + 910642 := by
    unfold C
    simp [show (663552 * k + 303547) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 910642) = 995328 * k + 455321 := by
    unfold C
    simp [show (1990656 * k + 910642) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 455321) = 2985984 * k + 1365964 := by
    unfold C
    simp [show (995328 * k + 455321) % 2 ≠ 0 by omega]
    omega
  have h13 : C (2985984 * k + 1365964) = 1492992 * k + 682982 := by
    unfold C
    simp [show (2985984 * k + 1365964) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 682982) = 746496 * k + 341491 := by
    unfold C
    simp [show (1492992 * k + 682982) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 341491) = 2239488 * k + 1024474 := by
    unfold C
    simp [show (746496 * k + 341491) % 2 ≠ 0 by omega]
    omega
  have h16 : C (2239488 * k + 1024474) = 1119744 * k + 512237 := by
    unfold C
    simp [show (2239488 * k + 1024474) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 512237) = 3359232 * k + 1536712 := by
    unfold C
    simp [show (1119744 * k + 512237) % 2 ≠ 0 by omega]
    omega
  have h18 : C (3359232 * k + 1536712) = 1679616 * k + 768356 := by
    unfold C
    simp [show (3359232 * k + 1536712) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 768356) = 839808 * k + 384178 := by
    unfold C
    simp [show (1679616 * k + 768356) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 384178) = 419904 * k + 192089 := by
    unfold C
    simp [show (839808 * k + 384178) % 2 = 0 by omega]
    omega
  have h21 : C (419904 * k + 192089) = 1259712 * k + 576268 := by
    unfold C
    simp [show (419904 * k + 192089) % 2 ≠ 0 by omega]
    omega
  have h22 : C (1259712 * k + 576268) = 629856 * k + 288134 := by
    unfold C
    simp [show (1259712 * k + 576268) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 288134) = 314928 * k + 144067 := by
    unfold C
    simp [show (629856 * k + 288134) % 2 = 0 by omega]
    omega
  have h24 : C (314928 * k + 144067) = 944784 * k + 432202 := by
    unfold C
    simp [show (314928 * k + 144067) % 2 ≠ 0 by omega]
    omega
  have h25 : C (944784 * k + 432202) = 472392 * k + 216101 := by
    unfold C
    simp [show (944784 * k + 432202) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 216101) = 1417176 * k + 648304 := by
    unfold C
    simp [show (472392 * k + 216101) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 648304) = 708588 * k + 324152 := by
    unfold C
    simp [show (1417176 * k + 648304) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 324152) = 354294 * k + 162076 := by
    unfold C
    simp [show (708588 * k + 324152) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 162076) = 177147 * k + 81038 := by
    unfold C
    simp [show (354294 * k + 162076) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 119919) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 119919))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_119967 : ∀ k : Nat,
    iterate (262144 * k + 119967) 29 = 177147 * k + 81070 ∧
      177147 * k + 81070 < 262144 * k + 119967 := by
  intro k
  have h1 : C (262144 * k + 119967) = 786432 * k + 359902 := by
    unfold C
    simp [show (262144 * k + 119967) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 359902) = 393216 * k + 179951 := by
    unfold C
    simp [show (786432 * k + 359902) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 179951) = 1179648 * k + 539854 := by
    unfold C
    simp [show (393216 * k + 179951) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 539854) = 589824 * k + 269927 := by
    unfold C
    simp [show (1179648 * k + 539854) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 269927) = 1769472 * k + 809782 := by
    unfold C
    simp [show (589824 * k + 269927) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 809782) = 884736 * k + 404891 := by
    unfold C
    simp [show (1769472 * k + 809782) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 404891) = 2654208 * k + 1214674 := by
    unfold C
    simp [show (884736 * k + 404891) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 1214674) = 1327104 * k + 607337 := by
    unfold C
    simp [show (2654208 * k + 1214674) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 607337) = 3981312 * k + 1822012 := by
    unfold C
    simp [show (1327104 * k + 607337) % 2 ≠ 0 by omega]
    omega
  have h10 : C (3981312 * k + 1822012) = 1990656 * k + 911006 := by
    unfold C
    simp [show (3981312 * k + 1822012) % 2 = 0 by omega]
    omega
  have h11 : C (1990656 * k + 911006) = 995328 * k + 455503 := by
    unfold C
    simp [show (1990656 * k + 911006) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 455503) = 2985984 * k + 1366510 := by
    unfold C
    simp [show (995328 * k + 455503) % 2 ≠ 0 by omega]
    omega
  have h13 : C (2985984 * k + 1366510) = 1492992 * k + 683255 := by
    unfold C
    simp [show (2985984 * k + 1366510) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 683255) = 4478976 * k + 2049766 := by
    unfold C
    simp [show (1492992 * k + 683255) % 2 ≠ 0 by omega]
    omega
  have h15 : C (4478976 * k + 2049766) = 2239488 * k + 1024883 := by
    unfold C
    simp [show (4478976 * k + 2049766) % 2 = 0 by omega]
    omega
  have h16 : C (2239488 * k + 1024883) = 6718464 * k + 3074650 := by
    unfold C
    simp [show (2239488 * k + 1024883) % 2 ≠ 0 by omega]
    omega
  have h17 : C (6718464 * k + 3074650) = 3359232 * k + 1537325 := by
    unfold C
    simp [show (6718464 * k + 3074650) % 2 = 0 by omega]
    omega
  have h18 : C (3359232 * k + 1537325) = 10077696 * k + 4611976 := by
    unfold C
    simp [show (3359232 * k + 1537325) % 2 ≠ 0 by omega]
    omega
  have h19 : C (10077696 * k + 4611976) = 5038848 * k + 2305988 := by
    unfold C
    simp [show (10077696 * k + 4611976) % 2 = 0 by omega]
    omega
  have h20 : C (5038848 * k + 2305988) = 2519424 * k + 1152994 := by
    unfold C
    simp [show (5038848 * k + 2305988) % 2 = 0 by omega]
    omega
  have h21 : C (2519424 * k + 1152994) = 1259712 * k + 576497 := by
    unfold C
    simp [show (2519424 * k + 1152994) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 576497) = 3779136 * k + 1729492 := by
    unfold C
    simp [show (1259712 * k + 576497) % 2 ≠ 0 by omega]
    omega
  have h23 : C (3779136 * k + 1729492) = 1889568 * k + 864746 := by
    unfold C
    simp [show (3779136 * k + 1729492) % 2 = 0 by omega]
    omega
  have h24 : C (1889568 * k + 864746) = 944784 * k + 432373 := by
    unfold C
    simp [show (1889568 * k + 864746) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 432373) = 2834352 * k + 1297120 := by
    unfold C
    simp [show (944784 * k + 432373) % 2 ≠ 0 by omega]
    omega
  have h26 : C (2834352 * k + 1297120) = 1417176 * k + 648560 := by
    unfold C
    simp [show (2834352 * k + 1297120) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 648560) = 708588 * k + 324280 := by
    unfold C
    simp [show (1417176 * k + 648560) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 324280) = 354294 * k + 162140 := by
    unfold C
    simp [show (708588 * k + 324280) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 162140) = 177147 * k + 81070 := by
    unfold C
    simp [show (354294 * k + 162140) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 119967) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 119967))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_119999 : ∀ k : Nat,
    iterate (262144 * k + 119999) 29 = 177147 * k + 81092 ∧
      177147 * k + 81092 < 262144 * k + 119999 := by
  intro k
  have h1 : C (262144 * k + 119999) = 786432 * k + 359998 := by
    unfold C
    simp [show (262144 * k + 119999) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 359998) = 393216 * k + 179999 := by
    unfold C
    simp [show (786432 * k + 359998) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 179999) = 1179648 * k + 539998 := by
    unfold C
    simp [show (393216 * k + 179999) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 539998) = 589824 * k + 269999 := by
    unfold C
    simp [show (1179648 * k + 539998) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 269999) = 1769472 * k + 809998 := by
    unfold C
    simp [show (589824 * k + 269999) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 809998) = 884736 * k + 404999 := by
    unfold C
    simp [show (1769472 * k + 809998) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 404999) = 2654208 * k + 1214998 := by
    unfold C
    simp [show (884736 * k + 404999) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 1214998) = 1327104 * k + 607499 := by
    unfold C
    simp [show (2654208 * k + 1214998) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 607499) = 3981312 * k + 1822498 := by
    unfold C
    simp [show (1327104 * k + 607499) % 2 ≠ 0 by omega]
    omega
  have h10 : C (3981312 * k + 1822498) = 1990656 * k + 911249 := by
    unfold C
    simp [show (3981312 * k + 1822498) % 2 = 0 by omega]
    omega
  have h11 : C (1990656 * k + 911249) = 5971968 * k + 2733748 := by
    unfold C
    simp [show (1990656 * k + 911249) % 2 ≠ 0 by omega]
    omega
  have h12 : C (5971968 * k + 2733748) = 2985984 * k + 1366874 := by
    unfold C
    simp [show (5971968 * k + 2733748) % 2 = 0 by omega]
    omega
  have h13 : C (2985984 * k + 1366874) = 1492992 * k + 683437 := by
    unfold C
    simp [show (2985984 * k + 1366874) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 683437) = 4478976 * k + 2050312 := by
    unfold C
    simp [show (1492992 * k + 683437) % 2 ≠ 0 by omega]
    omega
  have h15 : C (4478976 * k + 2050312) = 2239488 * k + 1025156 := by
    unfold C
    simp [show (4478976 * k + 2050312) % 2 = 0 by omega]
    omega
  have h16 : C (2239488 * k + 1025156) = 1119744 * k + 512578 := by
    unfold C
    simp [show (2239488 * k + 1025156) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 512578) = 559872 * k + 256289 := by
    unfold C
    simp [show (1119744 * k + 512578) % 2 = 0 by omega]
    omega
  have h18 : C (559872 * k + 256289) = 1679616 * k + 768868 := by
    unfold C
    simp [show (559872 * k + 256289) % 2 ≠ 0 by omega]
    omega
  have h19 : C (1679616 * k + 768868) = 839808 * k + 384434 := by
    unfold C
    simp [show (1679616 * k + 768868) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 384434) = 419904 * k + 192217 := by
    unfold C
    simp [show (839808 * k + 384434) % 2 = 0 by omega]
    omega
  have h21 : C (419904 * k + 192217) = 1259712 * k + 576652 := by
    unfold C
    simp [show (419904 * k + 192217) % 2 ≠ 0 by omega]
    omega
  have h22 : C (1259712 * k + 576652) = 629856 * k + 288326 := by
    unfold C
    simp [show (1259712 * k + 576652) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 288326) = 314928 * k + 144163 := by
    unfold C
    simp [show (629856 * k + 288326) % 2 = 0 by omega]
    omega
  have h24 : C (314928 * k + 144163) = 944784 * k + 432490 := by
    unfold C
    simp [show (314928 * k + 144163) % 2 ≠ 0 by omega]
    omega
  have h25 : C (944784 * k + 432490) = 472392 * k + 216245 := by
    unfold C
    simp [show (944784 * k + 432490) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 216245) = 1417176 * k + 648736 := by
    unfold C
    simp [show (472392 * k + 216245) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 648736) = 708588 * k + 324368 := by
    unfold C
    simp [show (1417176 * k + 648736) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 324368) = 354294 * k + 162184 := by
    unfold C
    simp [show (708588 * k + 324368) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 162184) = 177147 * k + 81092 := by
    unfold C
    simp [show (354294 * k + 162184) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 119999) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 119999))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_120039 : ∀ k : Nat,
    iterate (262144 * k + 120039) 29 = 177147 * k + 81119 ∧
      177147 * k + 81119 < 262144 * k + 120039 := by
  intro k
  have h1 : C (262144 * k + 120039) = 786432 * k + 360118 := by
    unfold C
    simp [show (262144 * k + 120039) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 360118) = 393216 * k + 180059 := by
    unfold C
    simp [show (786432 * k + 360118) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 180059) = 1179648 * k + 540178 := by
    unfold C
    simp [show (393216 * k + 180059) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 540178) = 589824 * k + 270089 := by
    unfold C
    simp [show (1179648 * k + 540178) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 270089) = 1769472 * k + 810268 := by
    unfold C
    simp [show (589824 * k + 270089) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 810268) = 884736 * k + 405134 := by
    unfold C
    simp [show (1769472 * k + 810268) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 405134) = 442368 * k + 202567 := by
    unfold C
    simp [show (884736 * k + 405134) % 2 = 0 by omega]
    omega
  have h8 : C (442368 * k + 202567) = 1327104 * k + 607702 := by
    unfold C
    simp [show (442368 * k + 202567) % 2 ≠ 0 by omega]
    omega
  have h9 : C (1327104 * k + 607702) = 663552 * k + 303851 := by
    unfold C
    simp [show (1327104 * k + 607702) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 303851) = 1990656 * k + 911554 := by
    unfold C
    simp [show (663552 * k + 303851) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 911554) = 995328 * k + 455777 := by
    unfold C
    simp [show (1990656 * k + 911554) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 455777) = 2985984 * k + 1367332 := by
    unfold C
    simp [show (995328 * k + 455777) % 2 ≠ 0 by omega]
    omega
  have h13 : C (2985984 * k + 1367332) = 1492992 * k + 683666 := by
    unfold C
    simp [show (2985984 * k + 1367332) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 683666) = 746496 * k + 341833 := by
    unfold C
    simp [show (1492992 * k + 683666) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 341833) = 2239488 * k + 1025500 := by
    unfold C
    simp [show (746496 * k + 341833) % 2 ≠ 0 by omega]
    omega
  have h16 : C (2239488 * k + 1025500) = 1119744 * k + 512750 := by
    unfold C
    simp [show (2239488 * k + 1025500) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 512750) = 559872 * k + 256375 := by
    unfold C
    simp [show (1119744 * k + 512750) % 2 = 0 by omega]
    omega
  have h18 : C (559872 * k + 256375) = 1679616 * k + 769126 := by
    unfold C
    simp [show (559872 * k + 256375) % 2 ≠ 0 by omega]
    omega
  have h19 : C (1679616 * k + 769126) = 839808 * k + 384563 := by
    unfold C
    simp [show (1679616 * k + 769126) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 384563) = 2519424 * k + 1153690 := by
    unfold C
    simp [show (839808 * k + 384563) % 2 ≠ 0 by omega]
    omega
  have h21 : C (2519424 * k + 1153690) = 1259712 * k + 576845 := by
    unfold C
    simp [show (2519424 * k + 1153690) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 576845) = 3779136 * k + 1730536 := by
    unfold C
    simp [show (1259712 * k + 576845) % 2 ≠ 0 by omega]
    omega
  have h23 : C (3779136 * k + 1730536) = 1889568 * k + 865268 := by
    unfold C
    simp [show (3779136 * k + 1730536) % 2 = 0 by omega]
    omega
  have h24 : C (1889568 * k + 865268) = 944784 * k + 432634 := by
    unfold C
    simp [show (1889568 * k + 865268) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 432634) = 472392 * k + 216317 := by
    unfold C
    simp [show (944784 * k + 432634) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 216317) = 1417176 * k + 648952 := by
    unfold C
    simp [show (472392 * k + 216317) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 648952) = 708588 * k + 324476 := by
    unfold C
    simp [show (1417176 * k + 648952) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 324476) = 354294 * k + 162238 := by
    unfold C
    simp [show (708588 * k + 324476) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 162238) = 177147 * k + 81119 := by
    unfold C
    simp [show (354294 * k + 162238) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 120039) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 120039))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_120091 : ∀ k : Nat,
    iterate (262144 * k + 120091) 29 = 177147 * k + 81154 ∧
      177147 * k + 81154 < 262144 * k + 120091 := by
  intro k
  have h1 : C (262144 * k + 120091) = 786432 * k + 360274 := by
    unfold C
    simp [show (262144 * k + 120091) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 360274) = 393216 * k + 180137 := by
    unfold C
    simp [show (786432 * k + 360274) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 180137) = 1179648 * k + 540412 := by
    unfold C
    simp [show (393216 * k + 180137) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 540412) = 589824 * k + 270206 := by
    unfold C
    simp [show (1179648 * k + 540412) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 270206) = 294912 * k + 135103 := by
    unfold C
    simp [show (589824 * k + 270206) % 2 = 0 by omega]
    omega
  have h6 : C (294912 * k + 135103) = 884736 * k + 405310 := by
    unfold C
    simp [show (294912 * k + 135103) % 2 ≠ 0 by omega]
    omega
  have h7 : C (884736 * k + 405310) = 442368 * k + 202655 := by
    unfold C
    simp [show (884736 * k + 405310) % 2 = 0 by omega]
    omega
  have h8 : C (442368 * k + 202655) = 1327104 * k + 607966 := by
    unfold C
    simp [show (442368 * k + 202655) % 2 ≠ 0 by omega]
    omega
  have h9 : C (1327104 * k + 607966) = 663552 * k + 303983 := by
    unfold C
    simp [show (1327104 * k + 607966) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 303983) = 1990656 * k + 911950 := by
    unfold C
    simp [show (663552 * k + 303983) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 911950) = 995328 * k + 455975 := by
    unfold C
    simp [show (1990656 * k + 911950) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 455975) = 2985984 * k + 1367926 := by
    unfold C
    simp [show (995328 * k + 455975) % 2 ≠ 0 by omega]
    omega
  have h13 : C (2985984 * k + 1367926) = 1492992 * k + 683963 := by
    unfold C
    simp [show (2985984 * k + 1367926) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 683963) = 4478976 * k + 2051890 := by
    unfold C
    simp [show (1492992 * k + 683963) % 2 ≠ 0 by omega]
    omega
  have h15 : C (4478976 * k + 2051890) = 2239488 * k + 1025945 := by
    unfold C
    simp [show (4478976 * k + 2051890) % 2 = 0 by omega]
    omega
  have h16 : C (2239488 * k + 1025945) = 6718464 * k + 3077836 := by
    unfold C
    simp [show (2239488 * k + 1025945) % 2 ≠ 0 by omega]
    omega
  have h17 : C (6718464 * k + 3077836) = 3359232 * k + 1538918 := by
    unfold C
    simp [show (6718464 * k + 3077836) % 2 = 0 by omega]
    omega
  have h18 : C (3359232 * k + 1538918) = 1679616 * k + 769459 := by
    unfold C
    simp [show (3359232 * k + 1538918) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 769459) = 5038848 * k + 2308378 := by
    unfold C
    simp [show (1679616 * k + 769459) % 2 ≠ 0 by omega]
    omega
  have h20 : C (5038848 * k + 2308378) = 2519424 * k + 1154189 := by
    unfold C
    simp [show (5038848 * k + 2308378) % 2 = 0 by omega]
    omega
  have h21 : C (2519424 * k + 1154189) = 7558272 * k + 3462568 := by
    unfold C
    simp [show (2519424 * k + 1154189) % 2 ≠ 0 by omega]
    omega
  have h22 : C (7558272 * k + 3462568) = 3779136 * k + 1731284 := by
    unfold C
    simp [show (7558272 * k + 3462568) % 2 = 0 by omega]
    omega
  have h23 : C (3779136 * k + 1731284) = 1889568 * k + 865642 := by
    unfold C
    simp [show (3779136 * k + 1731284) % 2 = 0 by omega]
    omega
  have h24 : C (1889568 * k + 865642) = 944784 * k + 432821 := by
    unfold C
    simp [show (1889568 * k + 865642) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 432821) = 2834352 * k + 1298464 := by
    unfold C
    simp [show (944784 * k + 432821) % 2 ≠ 0 by omega]
    omega
  have h26 : C (2834352 * k + 1298464) = 1417176 * k + 649232 := by
    unfold C
    simp [show (2834352 * k + 1298464) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 649232) = 708588 * k + 324616 := by
    unfold C
    simp [show (1417176 * k + 649232) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 324616) = 354294 * k + 162308 := by
    unfold C
    simp [show (708588 * k + 324616) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 162308) = 177147 * k + 81154 := by
    unfold C
    simp [show (354294 * k + 162308) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 120091) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 120091))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_120319 : ∀ k : Nat,
    iterate (262144 * k + 120319) 29 = 177147 * k + 81308 ∧
      177147 * k + 81308 < 262144 * k + 120319 := by
  intro k
  have h1 : C (262144 * k + 120319) = 786432 * k + 360958 := by
    unfold C
    simp [show (262144 * k + 120319) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 360958) = 393216 * k + 180479 := by
    unfold C
    simp [show (786432 * k + 360958) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 180479) = 1179648 * k + 541438 := by
    unfold C
    simp [show (393216 * k + 180479) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 541438) = 589824 * k + 270719 := by
    unfold C
    simp [show (1179648 * k + 541438) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 270719) = 1769472 * k + 812158 := by
    unfold C
    simp [show (589824 * k + 270719) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 812158) = 884736 * k + 406079 := by
    unfold C
    simp [show (1769472 * k + 812158) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 406079) = 2654208 * k + 1218238 := by
    unfold C
    simp [show (884736 * k + 406079) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 1218238) = 1327104 * k + 609119 := by
    unfold C
    simp [show (2654208 * k + 1218238) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 609119) = 3981312 * k + 1827358 := by
    unfold C
    simp [show (1327104 * k + 609119) % 2 ≠ 0 by omega]
    omega
  have h10 : C (3981312 * k + 1827358) = 1990656 * k + 913679 := by
    unfold C
    simp [show (3981312 * k + 1827358) % 2 = 0 by omega]
    omega
  have h11 : C (1990656 * k + 913679) = 5971968 * k + 2741038 := by
    unfold C
    simp [show (1990656 * k + 913679) % 2 ≠ 0 by omega]
    omega
  have h12 : C (5971968 * k + 2741038) = 2985984 * k + 1370519 := by
    unfold C
    simp [show (5971968 * k + 2741038) % 2 = 0 by omega]
    omega
  have h13 : C (2985984 * k + 1370519) = 8957952 * k + 4111558 := by
    unfold C
    simp [show (2985984 * k + 1370519) % 2 ≠ 0 by omega]
    omega
  have h14 : C (8957952 * k + 4111558) = 4478976 * k + 2055779 := by
    unfold C
    simp [show (8957952 * k + 4111558) % 2 = 0 by omega]
    omega
  have h15 : C (4478976 * k + 2055779) = 13436928 * k + 6167338 := by
    unfold C
    simp [show (4478976 * k + 2055779) % 2 ≠ 0 by omega]
    omega
  have h16 : C (13436928 * k + 6167338) = 6718464 * k + 3083669 := by
    unfold C
    simp [show (13436928 * k + 6167338) % 2 = 0 by omega]
    omega
  have h17 : C (6718464 * k + 3083669) = 20155392 * k + 9251008 := by
    unfold C
    simp [show (6718464 * k + 3083669) % 2 ≠ 0 by omega]
    omega
  have h18 : C (20155392 * k + 9251008) = 10077696 * k + 4625504 := by
    unfold C
    simp [show (20155392 * k + 9251008) % 2 = 0 by omega]
    omega
  have h19 : C (10077696 * k + 4625504) = 5038848 * k + 2312752 := by
    unfold C
    simp [show (10077696 * k + 4625504) % 2 = 0 by omega]
    omega
  have h20 : C (5038848 * k + 2312752) = 2519424 * k + 1156376 := by
    unfold C
    simp [show (5038848 * k + 2312752) % 2 = 0 by omega]
    omega
  have h21 : C (2519424 * k + 1156376) = 1259712 * k + 578188 := by
    unfold C
    simp [show (2519424 * k + 1156376) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 578188) = 629856 * k + 289094 := by
    unfold C
    simp [show (1259712 * k + 578188) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 289094) = 314928 * k + 144547 := by
    unfold C
    simp [show (629856 * k + 289094) % 2 = 0 by omega]
    omega
  have h24 : C (314928 * k + 144547) = 944784 * k + 433642 := by
    unfold C
    simp [show (314928 * k + 144547) % 2 ≠ 0 by omega]
    omega
  have h25 : C (944784 * k + 433642) = 472392 * k + 216821 := by
    unfold C
    simp [show (944784 * k + 433642) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 216821) = 1417176 * k + 650464 := by
    unfold C
    simp [show (472392 * k + 216821) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 650464) = 708588 * k + 325232 := by
    unfold C
    simp [show (1417176 * k + 650464) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 325232) = 354294 * k + 162616 := by
    unfold C
    simp [show (708588 * k + 325232) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 162616) = 177147 * k + 81308 := by
    unfold C
    simp [show (354294 * k + 162616) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 120319) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 120319))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_122015 : ∀ k : Nat,
    iterate (262144 * k + 122015) 29 = 177147 * k + 82454 ∧
      177147 * k + 82454 < 262144 * k + 122015 := by
  intro k
  have h1 : C (262144 * k + 122015) = 786432 * k + 366046 := by
    unfold C
    simp [show (262144 * k + 122015) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 366046) = 393216 * k + 183023 := by
    unfold C
    simp [show (786432 * k + 366046) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 183023) = 1179648 * k + 549070 := by
    unfold C
    simp [show (393216 * k + 183023) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 549070) = 589824 * k + 274535 := by
    unfold C
    simp [show (1179648 * k + 549070) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 274535) = 1769472 * k + 823606 := by
    unfold C
    simp [show (589824 * k + 274535) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 823606) = 884736 * k + 411803 := by
    unfold C
    simp [show (1769472 * k + 823606) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 411803) = 2654208 * k + 1235410 := by
    unfold C
    simp [show (884736 * k + 411803) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 1235410) = 1327104 * k + 617705 := by
    unfold C
    simp [show (2654208 * k + 1235410) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 617705) = 3981312 * k + 1853116 := by
    unfold C
    simp [show (1327104 * k + 617705) % 2 ≠ 0 by omega]
    omega
  have h10 : C (3981312 * k + 1853116) = 1990656 * k + 926558 := by
    unfold C
    simp [show (3981312 * k + 1853116) % 2 = 0 by omega]
    omega
  have h11 : C (1990656 * k + 926558) = 995328 * k + 463279 := by
    unfold C
    simp [show (1990656 * k + 926558) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 463279) = 2985984 * k + 1389838 := by
    unfold C
    simp [show (995328 * k + 463279) % 2 ≠ 0 by omega]
    omega
  have h13 : C (2985984 * k + 1389838) = 1492992 * k + 694919 := by
    unfold C
    simp [show (2985984 * k + 1389838) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 694919) = 4478976 * k + 2084758 := by
    unfold C
    simp [show (1492992 * k + 694919) % 2 ≠ 0 by omega]
    omega
  have h15 : C (4478976 * k + 2084758) = 2239488 * k + 1042379 := by
    unfold C
    simp [show (4478976 * k + 2084758) % 2 = 0 by omega]
    omega
  have h16 : C (2239488 * k + 1042379) = 6718464 * k + 3127138 := by
    unfold C
    simp [show (2239488 * k + 1042379) % 2 ≠ 0 by omega]
    omega
  have h17 : C (6718464 * k + 3127138) = 3359232 * k + 1563569 := by
    unfold C
    simp [show (6718464 * k + 3127138) % 2 = 0 by omega]
    omega
  have h18 : C (3359232 * k + 1563569) = 10077696 * k + 4690708 := by
    unfold C
    simp [show (3359232 * k + 1563569) % 2 ≠ 0 by omega]
    omega
  have h19 : C (10077696 * k + 4690708) = 5038848 * k + 2345354 := by
    unfold C
    simp [show (10077696 * k + 4690708) % 2 = 0 by omega]
    omega
  have h20 : C (5038848 * k + 2345354) = 2519424 * k + 1172677 := by
    unfold C
    simp [show (5038848 * k + 2345354) % 2 = 0 by omega]
    omega
  have h21 : C (2519424 * k + 1172677) = 7558272 * k + 3518032 := by
    unfold C
    simp [show (2519424 * k + 1172677) % 2 ≠ 0 by omega]
    omega
  have h22 : C (7558272 * k + 3518032) = 3779136 * k + 1759016 := by
    unfold C
    simp [show (7558272 * k + 3518032) % 2 = 0 by omega]
    omega
  have h23 : C (3779136 * k + 1759016) = 1889568 * k + 879508 := by
    unfold C
    simp [show (3779136 * k + 1759016) % 2 = 0 by omega]
    omega
  have h24 : C (1889568 * k + 879508) = 944784 * k + 439754 := by
    unfold C
    simp [show (1889568 * k + 879508) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 439754) = 472392 * k + 219877 := by
    unfold C
    simp [show (944784 * k + 439754) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 219877) = 1417176 * k + 659632 := by
    unfold C
    simp [show (472392 * k + 219877) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 659632) = 708588 * k + 329816 := by
    unfold C
    simp [show (1417176 * k + 659632) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 329816) = 354294 * k + 164908 := by
    unfold C
    simp [show (708588 * k + 329816) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 164908) = 177147 * k + 82454 := by
    unfold C
    simp [show (354294 * k + 164908) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 122015) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 122015))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_122095 : ∀ k : Nat,
    iterate (262144 * k + 122095) 29 = 177147 * k + 82508 ∧
      177147 * k + 82508 < 262144 * k + 122095 := by
  intro k
  have h1 : C (262144 * k + 122095) = 786432 * k + 366286 := by
    unfold C
    simp [show (262144 * k + 122095) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 366286) = 393216 * k + 183143 := by
    unfold C
    simp [show (786432 * k + 366286) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 183143) = 1179648 * k + 549430 := by
    unfold C
    simp [show (393216 * k + 183143) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 549430) = 589824 * k + 274715 := by
    unfold C
    simp [show (1179648 * k + 549430) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 274715) = 1769472 * k + 824146 := by
    unfold C
    simp [show (589824 * k + 274715) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 824146) = 884736 * k + 412073 := by
    unfold C
    simp [show (1769472 * k + 824146) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 412073) = 2654208 * k + 1236220 := by
    unfold C
    simp [show (884736 * k + 412073) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 1236220) = 1327104 * k + 618110 := by
    unfold C
    simp [show (2654208 * k + 1236220) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 618110) = 663552 * k + 309055 := by
    unfold C
    simp [show (1327104 * k + 618110) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 309055) = 1990656 * k + 927166 := by
    unfold C
    simp [show (663552 * k + 309055) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 927166) = 995328 * k + 463583 := by
    unfold C
    simp [show (1990656 * k + 927166) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 463583) = 2985984 * k + 1390750 := by
    unfold C
    simp [show (995328 * k + 463583) % 2 ≠ 0 by omega]
    omega
  have h13 : C (2985984 * k + 1390750) = 1492992 * k + 695375 := by
    unfold C
    simp [show (2985984 * k + 1390750) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 695375) = 4478976 * k + 2086126 := by
    unfold C
    simp [show (1492992 * k + 695375) % 2 ≠ 0 by omega]
    omega
  have h15 : C (4478976 * k + 2086126) = 2239488 * k + 1043063 := by
    unfold C
    simp [show (4478976 * k + 2086126) % 2 = 0 by omega]
    omega
  have h16 : C (2239488 * k + 1043063) = 6718464 * k + 3129190 := by
    unfold C
    simp [show (2239488 * k + 1043063) % 2 ≠ 0 by omega]
    omega
  have h17 : C (6718464 * k + 3129190) = 3359232 * k + 1564595 := by
    unfold C
    simp [show (6718464 * k + 3129190) % 2 = 0 by omega]
    omega
  have h18 : C (3359232 * k + 1564595) = 10077696 * k + 4693786 := by
    unfold C
    simp [show (3359232 * k + 1564595) % 2 ≠ 0 by omega]
    omega
  have h19 : C (10077696 * k + 4693786) = 5038848 * k + 2346893 := by
    unfold C
    simp [show (10077696 * k + 4693786) % 2 = 0 by omega]
    omega
  have h20 : C (5038848 * k + 2346893) = 15116544 * k + 7040680 := by
    unfold C
    simp [show (5038848 * k + 2346893) % 2 ≠ 0 by omega]
    omega
  have h21 : C (15116544 * k + 7040680) = 7558272 * k + 3520340 := by
    unfold C
    simp [show (15116544 * k + 7040680) % 2 = 0 by omega]
    omega
  have h22 : C (7558272 * k + 3520340) = 3779136 * k + 1760170 := by
    unfold C
    simp [show (7558272 * k + 3520340) % 2 = 0 by omega]
    omega
  have h23 : C (3779136 * k + 1760170) = 1889568 * k + 880085 := by
    unfold C
    simp [show (3779136 * k + 1760170) % 2 = 0 by omega]
    omega
  have h24 : C (1889568 * k + 880085) = 5668704 * k + 2640256 := by
    unfold C
    simp [show (1889568 * k + 880085) % 2 ≠ 0 by omega]
    omega
  have h25 : C (5668704 * k + 2640256) = 2834352 * k + 1320128 := by
    unfold C
    simp [show (5668704 * k + 2640256) % 2 = 0 by omega]
    omega
  have h26 : C (2834352 * k + 1320128) = 1417176 * k + 660064 := by
    unfold C
    simp [show (2834352 * k + 1320128) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 660064) = 708588 * k + 330032 := by
    unfold C
    simp [show (1417176 * k + 660064) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 330032) = 354294 * k + 165016 := by
    unfold C
    simp [show (708588 * k + 330032) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 165016) = 177147 * k + 82508 := by
    unfold C
    simp [show (354294 * k + 165016) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 122095) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 122095))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_122267 : ∀ k : Nat,
    iterate (262144 * k + 122267) 29 = 177147 * k + 82625 ∧
      177147 * k + 82625 < 262144 * k + 122267 := by
  intro k
  have h1 : C (262144 * k + 122267) = 786432 * k + 366802 := by
    unfold C
    simp [show (262144 * k + 122267) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 366802) = 393216 * k + 183401 := by
    unfold C
    simp [show (786432 * k + 366802) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 183401) = 1179648 * k + 550204 := by
    unfold C
    simp [show (393216 * k + 183401) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 550204) = 589824 * k + 275102 := by
    unfold C
    simp [show (1179648 * k + 550204) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 275102) = 294912 * k + 137551 := by
    unfold C
    simp [show (589824 * k + 275102) % 2 = 0 by omega]
    omega
  have h6 : C (294912 * k + 137551) = 884736 * k + 412654 := by
    unfold C
    simp [show (294912 * k + 137551) % 2 ≠ 0 by omega]
    omega
  have h7 : C (884736 * k + 412654) = 442368 * k + 206327 := by
    unfold C
    simp [show (884736 * k + 412654) % 2 = 0 by omega]
    omega
  have h8 : C (442368 * k + 206327) = 1327104 * k + 618982 := by
    unfold C
    simp [show (442368 * k + 206327) % 2 ≠ 0 by omega]
    omega
  have h9 : C (1327104 * k + 618982) = 663552 * k + 309491 := by
    unfold C
    simp [show (1327104 * k + 618982) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 309491) = 1990656 * k + 928474 := by
    unfold C
    simp [show (663552 * k + 309491) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 928474) = 995328 * k + 464237 := by
    unfold C
    simp [show (1990656 * k + 928474) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 464237) = 2985984 * k + 1392712 := by
    unfold C
    simp [show (995328 * k + 464237) % 2 ≠ 0 by omega]
    omega
  have h13 : C (2985984 * k + 1392712) = 1492992 * k + 696356 := by
    unfold C
    simp [show (2985984 * k + 1392712) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 696356) = 746496 * k + 348178 := by
    unfold C
    simp [show (1492992 * k + 696356) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 348178) = 373248 * k + 174089 := by
    unfold C
    simp [show (746496 * k + 348178) % 2 = 0 by omega]
    omega
  have h16 : C (373248 * k + 174089) = 1119744 * k + 522268 := by
    unfold C
    simp [show (373248 * k + 174089) % 2 ≠ 0 by omega]
    omega
  have h17 : C (1119744 * k + 522268) = 559872 * k + 261134 := by
    unfold C
    simp [show (1119744 * k + 522268) % 2 = 0 by omega]
    omega
  have h18 : C (559872 * k + 261134) = 279936 * k + 130567 := by
    unfold C
    simp [show (559872 * k + 261134) % 2 = 0 by omega]
    omega
  have h19 : C (279936 * k + 130567) = 839808 * k + 391702 := by
    unfold C
    simp [show (279936 * k + 130567) % 2 ≠ 0 by omega]
    omega
  have h20 : C (839808 * k + 391702) = 419904 * k + 195851 := by
    unfold C
    simp [show (839808 * k + 391702) % 2 = 0 by omega]
    omega
  have h21 : C (419904 * k + 195851) = 1259712 * k + 587554 := by
    unfold C
    simp [show (419904 * k + 195851) % 2 ≠ 0 by omega]
    omega
  have h22 : C (1259712 * k + 587554) = 629856 * k + 293777 := by
    unfold C
    simp [show (1259712 * k + 587554) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 293777) = 1889568 * k + 881332 := by
    unfold C
    simp [show (629856 * k + 293777) % 2 ≠ 0 by omega]
    omega
  have h24 : C (1889568 * k + 881332) = 944784 * k + 440666 := by
    unfold C
    simp [show (1889568 * k + 881332) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 440666) = 472392 * k + 220333 := by
    unfold C
    simp [show (944784 * k + 440666) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 220333) = 1417176 * k + 661000 := by
    unfold C
    simp [show (472392 * k + 220333) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 661000) = 708588 * k + 330500 := by
    unfold C
    simp [show (1417176 * k + 661000) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 330500) = 354294 * k + 165250 := by
    unfold C
    simp [show (708588 * k + 330500) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 165250) = 177147 * k + 82625 := by
    unfold C
    simp [show (354294 * k + 165250) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 122267) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 122267))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_122271 : ∀ k : Nat,
    iterate (262144 * k + 122271) 29 = 177147 * k + 82627 ∧
      177147 * k + 82627 < 262144 * k + 122271 := by
  intro k
  have h1 : C (262144 * k + 122271) = 786432 * k + 366814 := by
    unfold C
    simp [show (262144 * k + 122271) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 366814) = 393216 * k + 183407 := by
    unfold C
    simp [show (786432 * k + 366814) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 183407) = 1179648 * k + 550222 := by
    unfold C
    simp [show (393216 * k + 183407) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 550222) = 589824 * k + 275111 := by
    unfold C
    simp [show (1179648 * k + 550222) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 275111) = 1769472 * k + 825334 := by
    unfold C
    simp [show (589824 * k + 275111) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 825334) = 884736 * k + 412667 := by
    unfold C
    simp [show (1769472 * k + 825334) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 412667) = 2654208 * k + 1238002 := by
    unfold C
    simp [show (884736 * k + 412667) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 1238002) = 1327104 * k + 619001 := by
    unfold C
    simp [show (2654208 * k + 1238002) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 619001) = 3981312 * k + 1857004 := by
    unfold C
    simp [show (1327104 * k + 619001) % 2 ≠ 0 by omega]
    omega
  have h10 : C (3981312 * k + 1857004) = 1990656 * k + 928502 := by
    unfold C
    simp [show (3981312 * k + 1857004) % 2 = 0 by omega]
    omega
  have h11 : C (1990656 * k + 928502) = 995328 * k + 464251 := by
    unfold C
    simp [show (1990656 * k + 928502) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 464251) = 2985984 * k + 1392754 := by
    unfold C
    simp [show (995328 * k + 464251) % 2 ≠ 0 by omega]
    omega
  have h13 : C (2985984 * k + 1392754) = 1492992 * k + 696377 := by
    unfold C
    simp [show (2985984 * k + 1392754) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 696377) = 4478976 * k + 2089132 := by
    unfold C
    simp [show (1492992 * k + 696377) % 2 ≠ 0 by omega]
    omega
  have h15 : C (4478976 * k + 2089132) = 2239488 * k + 1044566 := by
    unfold C
    simp [show (4478976 * k + 2089132) % 2 = 0 by omega]
    omega
  have h16 : C (2239488 * k + 1044566) = 1119744 * k + 522283 := by
    unfold C
    simp [show (2239488 * k + 1044566) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 522283) = 3359232 * k + 1566850 := by
    unfold C
    simp [show (1119744 * k + 522283) % 2 ≠ 0 by omega]
    omega
  have h18 : C (3359232 * k + 1566850) = 1679616 * k + 783425 := by
    unfold C
    simp [show (3359232 * k + 1566850) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 783425) = 5038848 * k + 2350276 := by
    unfold C
    simp [show (1679616 * k + 783425) % 2 ≠ 0 by omega]
    omega
  have h20 : C (5038848 * k + 2350276) = 2519424 * k + 1175138 := by
    unfold C
    simp [show (5038848 * k + 2350276) % 2 = 0 by omega]
    omega
  have h21 : C (2519424 * k + 1175138) = 1259712 * k + 587569 := by
    unfold C
    simp [show (2519424 * k + 1175138) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 587569) = 3779136 * k + 1762708 := by
    unfold C
    simp [show (1259712 * k + 587569) % 2 ≠ 0 by omega]
    omega
  have h23 : C (3779136 * k + 1762708) = 1889568 * k + 881354 := by
    unfold C
    simp [show (3779136 * k + 1762708) % 2 = 0 by omega]
    omega
  have h24 : C (1889568 * k + 881354) = 944784 * k + 440677 := by
    unfold C
    simp [show (1889568 * k + 881354) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 440677) = 2834352 * k + 1322032 := by
    unfold C
    simp [show (944784 * k + 440677) % 2 ≠ 0 by omega]
    omega
  have h26 : C (2834352 * k + 1322032) = 1417176 * k + 661016 := by
    unfold C
    simp [show (2834352 * k + 1322032) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 661016) = 708588 * k + 330508 := by
    unfold C
    simp [show (1417176 * k + 661016) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 330508) = 354294 * k + 165254 := by
    unfold C
    simp [show (708588 * k + 330508) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 165254) = 177147 * k + 82627 := by
    unfold C
    simp [show (354294 * k + 165254) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 122271) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 122271))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_122875 : ∀ k : Nat,
    iterate (262144 * k + 122875) 29 = 177147 * k + 83036 ∧
      177147 * k + 83036 < 262144 * k + 122875 := by
  intro k
  have h1 : C (262144 * k + 122875) = 786432 * k + 368626 := by
    unfold C
    simp [show (262144 * k + 122875) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 368626) = 393216 * k + 184313 := by
    unfold C
    simp [show (786432 * k + 368626) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 184313) = 1179648 * k + 552940 := by
    unfold C
    simp [show (393216 * k + 184313) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 552940) = 589824 * k + 276470 := by
    unfold C
    simp [show (1179648 * k + 552940) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 276470) = 294912 * k + 138235 := by
    unfold C
    simp [show (589824 * k + 276470) % 2 = 0 by omega]
    omega
  have h6 : C (294912 * k + 138235) = 884736 * k + 414706 := by
    unfold C
    simp [show (294912 * k + 138235) % 2 ≠ 0 by omega]
    omega
  have h7 : C (884736 * k + 414706) = 442368 * k + 207353 := by
    unfold C
    simp [show (884736 * k + 414706) % 2 = 0 by omega]
    omega
  have h8 : C (442368 * k + 207353) = 1327104 * k + 622060 := by
    unfold C
    simp [show (442368 * k + 207353) % 2 ≠ 0 by omega]
    omega
  have h9 : C (1327104 * k + 622060) = 663552 * k + 311030 := by
    unfold C
    simp [show (1327104 * k + 622060) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 311030) = 331776 * k + 155515 := by
    unfold C
    simp [show (663552 * k + 311030) % 2 = 0 by omega]
    omega
  have h11 : C (331776 * k + 155515) = 995328 * k + 466546 := by
    unfold C
    simp [show (331776 * k + 155515) % 2 ≠ 0 by omega]
    omega
  have h12 : C (995328 * k + 466546) = 497664 * k + 233273 := by
    unfold C
    simp [show (995328 * k + 466546) % 2 = 0 by omega]
    omega
  have h13 : C (497664 * k + 233273) = 1492992 * k + 699820 := by
    unfold C
    simp [show (497664 * k + 233273) % 2 ≠ 0 by omega]
    omega
  have h14 : C (1492992 * k + 699820) = 746496 * k + 349910 := by
    unfold C
    simp [show (1492992 * k + 699820) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 349910) = 373248 * k + 174955 := by
    unfold C
    simp [show (746496 * k + 349910) % 2 = 0 by omega]
    omega
  have h16 : C (373248 * k + 174955) = 1119744 * k + 524866 := by
    unfold C
    simp [show (373248 * k + 174955) % 2 ≠ 0 by omega]
    omega
  have h17 : C (1119744 * k + 524866) = 559872 * k + 262433 := by
    unfold C
    simp [show (1119744 * k + 524866) % 2 = 0 by omega]
    omega
  have h18 : C (559872 * k + 262433) = 1679616 * k + 787300 := by
    unfold C
    simp [show (559872 * k + 262433) % 2 ≠ 0 by omega]
    omega
  have h19 : C (1679616 * k + 787300) = 839808 * k + 393650 := by
    unfold C
    simp [show (1679616 * k + 787300) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 393650) = 419904 * k + 196825 := by
    unfold C
    simp [show (839808 * k + 393650) % 2 = 0 by omega]
    omega
  have h21 : C (419904 * k + 196825) = 1259712 * k + 590476 := by
    unfold C
    simp [show (419904 * k + 196825) % 2 ≠ 0 by omega]
    omega
  have h22 : C (1259712 * k + 590476) = 629856 * k + 295238 := by
    unfold C
    simp [show (1259712 * k + 590476) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 295238) = 314928 * k + 147619 := by
    unfold C
    simp [show (629856 * k + 295238) % 2 = 0 by omega]
    omega
  have h24 : C (314928 * k + 147619) = 944784 * k + 442858 := by
    unfold C
    simp [show (314928 * k + 147619) % 2 ≠ 0 by omega]
    omega
  have h25 : C (944784 * k + 442858) = 472392 * k + 221429 := by
    unfold C
    simp [show (944784 * k + 442858) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 221429) = 1417176 * k + 664288 := by
    unfold C
    simp [show (472392 * k + 221429) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 664288) = 708588 * k + 332144 := by
    unfold C
    simp [show (1417176 * k + 664288) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 332144) = 354294 * k + 166072 := by
    unfold C
    simp [show (708588 * k + 332144) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 166072) = 177147 * k + 83036 := by
    unfold C
    simp [show (354294 * k + 166072) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 122875) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 122875))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_122907 : ∀ k : Nat,
    iterate (262144 * k + 122907) 29 = 177147 * k + 83057 ∧
      177147 * k + 83057 < 262144 * k + 122907 := by
  intro k
  have h1 : C (262144 * k + 122907) = 786432 * k + 368722 := by
    unfold C
    simp [show (262144 * k + 122907) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 368722) = 393216 * k + 184361 := by
    unfold C
    simp [show (786432 * k + 368722) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 184361) = 1179648 * k + 553084 := by
    unfold C
    simp [show (393216 * k + 184361) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 553084) = 589824 * k + 276542 := by
    unfold C
    simp [show (1179648 * k + 553084) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 276542) = 294912 * k + 138271 := by
    unfold C
    simp [show (589824 * k + 276542) % 2 = 0 by omega]
    omega
  have h6 : C (294912 * k + 138271) = 884736 * k + 414814 := by
    unfold C
    simp [show (294912 * k + 138271) % 2 ≠ 0 by omega]
    omega
  have h7 : C (884736 * k + 414814) = 442368 * k + 207407 := by
    unfold C
    simp [show (884736 * k + 414814) % 2 = 0 by omega]
    omega
  have h8 : C (442368 * k + 207407) = 1327104 * k + 622222 := by
    unfold C
    simp [show (442368 * k + 207407) % 2 ≠ 0 by omega]
    omega
  have h9 : C (1327104 * k + 622222) = 663552 * k + 311111 := by
    unfold C
    simp [show (1327104 * k + 622222) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 311111) = 1990656 * k + 933334 := by
    unfold C
    simp [show (663552 * k + 311111) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 933334) = 995328 * k + 466667 := by
    unfold C
    simp [show (1990656 * k + 933334) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 466667) = 2985984 * k + 1400002 := by
    unfold C
    simp [show (995328 * k + 466667) % 2 ≠ 0 by omega]
    omega
  have h13 : C (2985984 * k + 1400002) = 1492992 * k + 700001 := by
    unfold C
    simp [show (2985984 * k + 1400002) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 700001) = 4478976 * k + 2100004 := by
    unfold C
    simp [show (1492992 * k + 700001) % 2 ≠ 0 by omega]
    omega
  have h15 : C (4478976 * k + 2100004) = 2239488 * k + 1050002 := by
    unfold C
    simp [show (4478976 * k + 2100004) % 2 = 0 by omega]
    omega
  have h16 : C (2239488 * k + 1050002) = 1119744 * k + 525001 := by
    unfold C
    simp [show (2239488 * k + 1050002) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 525001) = 3359232 * k + 1575004 := by
    unfold C
    simp [show (1119744 * k + 525001) % 2 ≠ 0 by omega]
    omega
  have h18 : C (3359232 * k + 1575004) = 1679616 * k + 787502 := by
    unfold C
    simp [show (3359232 * k + 1575004) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 787502) = 839808 * k + 393751 := by
    unfold C
    simp [show (1679616 * k + 787502) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 393751) = 2519424 * k + 1181254 := by
    unfold C
    simp [show (839808 * k + 393751) % 2 ≠ 0 by omega]
    omega
  have h21 : C (2519424 * k + 1181254) = 1259712 * k + 590627 := by
    unfold C
    simp [show (2519424 * k + 1181254) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 590627) = 3779136 * k + 1771882 := by
    unfold C
    simp [show (1259712 * k + 590627) % 2 ≠ 0 by omega]
    omega
  have h23 : C (3779136 * k + 1771882) = 1889568 * k + 885941 := by
    unfold C
    simp [show (3779136 * k + 1771882) % 2 = 0 by omega]
    omega
  have h24 : C (1889568 * k + 885941) = 5668704 * k + 2657824 := by
    unfold C
    simp [show (1889568 * k + 885941) % 2 ≠ 0 by omega]
    omega
  have h25 : C (5668704 * k + 2657824) = 2834352 * k + 1328912 := by
    unfold C
    simp [show (5668704 * k + 2657824) % 2 = 0 by omega]
    omega
  have h26 : C (2834352 * k + 1328912) = 1417176 * k + 664456 := by
    unfold C
    simp [show (2834352 * k + 1328912) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 664456) = 708588 * k + 332228 := by
    unfold C
    simp [show (1417176 * k + 664456) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 332228) = 354294 * k + 166114 := by
    unfold C
    simp [show (708588 * k + 332228) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 166114) = 177147 * k + 83057 := by
    unfold C
    simp [show (354294 * k + 166114) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 122907) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 122907))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_123035 : ∀ k : Nat,
    iterate (262144 * k + 123035) 29 = 177147 * k + 83144 ∧
      177147 * k + 83144 < 262144 * k + 123035 := by
  intro k
  have h1 : C (262144 * k + 123035) = 786432 * k + 369106 := by
    unfold C
    simp [show (262144 * k + 123035) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 369106) = 393216 * k + 184553 := by
    unfold C
    simp [show (786432 * k + 369106) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 184553) = 1179648 * k + 553660 := by
    unfold C
    simp [show (393216 * k + 184553) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 553660) = 589824 * k + 276830 := by
    unfold C
    simp [show (1179648 * k + 553660) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 276830) = 294912 * k + 138415 := by
    unfold C
    simp [show (589824 * k + 276830) % 2 = 0 by omega]
    omega
  have h6 : C (294912 * k + 138415) = 884736 * k + 415246 := by
    unfold C
    simp [show (294912 * k + 138415) % 2 ≠ 0 by omega]
    omega
  have h7 : C (884736 * k + 415246) = 442368 * k + 207623 := by
    unfold C
    simp [show (884736 * k + 415246) % 2 = 0 by omega]
    omega
  have h8 : C (442368 * k + 207623) = 1327104 * k + 622870 := by
    unfold C
    simp [show (442368 * k + 207623) % 2 ≠ 0 by omega]
    omega
  have h9 : C (1327104 * k + 622870) = 663552 * k + 311435 := by
    unfold C
    simp [show (1327104 * k + 622870) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 311435) = 1990656 * k + 934306 := by
    unfold C
    simp [show (663552 * k + 311435) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 934306) = 995328 * k + 467153 := by
    unfold C
    simp [show (1990656 * k + 934306) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 467153) = 2985984 * k + 1401460 := by
    unfold C
    simp [show (995328 * k + 467153) % 2 ≠ 0 by omega]
    omega
  have h13 : C (2985984 * k + 1401460) = 1492992 * k + 700730 := by
    unfold C
    simp [show (2985984 * k + 1401460) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 700730) = 746496 * k + 350365 := by
    unfold C
    simp [show (1492992 * k + 700730) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 350365) = 2239488 * k + 1051096 := by
    unfold C
    simp [show (746496 * k + 350365) % 2 ≠ 0 by omega]
    omega
  have h16 : C (2239488 * k + 1051096) = 1119744 * k + 525548 := by
    unfold C
    simp [show (2239488 * k + 1051096) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 525548) = 559872 * k + 262774 := by
    unfold C
    simp [show (1119744 * k + 525548) % 2 = 0 by omega]
    omega
  have h18 : C (559872 * k + 262774) = 279936 * k + 131387 := by
    unfold C
    simp [show (559872 * k + 262774) % 2 = 0 by omega]
    omega
  have h19 : C (279936 * k + 131387) = 839808 * k + 394162 := by
    unfold C
    simp [show (279936 * k + 131387) % 2 ≠ 0 by omega]
    omega
  have h20 : C (839808 * k + 394162) = 419904 * k + 197081 := by
    unfold C
    simp [show (839808 * k + 394162) % 2 = 0 by omega]
    omega
  have h21 : C (419904 * k + 197081) = 1259712 * k + 591244 := by
    unfold C
    simp [show (419904 * k + 197081) % 2 ≠ 0 by omega]
    omega
  have h22 : C (1259712 * k + 591244) = 629856 * k + 295622 := by
    unfold C
    simp [show (1259712 * k + 591244) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 295622) = 314928 * k + 147811 := by
    unfold C
    simp [show (629856 * k + 295622) % 2 = 0 by omega]
    omega
  have h24 : C (314928 * k + 147811) = 944784 * k + 443434 := by
    unfold C
    simp [show (314928 * k + 147811) % 2 ≠ 0 by omega]
    omega
  have h25 : C (944784 * k + 443434) = 472392 * k + 221717 := by
    unfold C
    simp [show (944784 * k + 443434) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 221717) = 1417176 * k + 665152 := by
    unfold C
    simp [show (472392 * k + 221717) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 665152) = 708588 * k + 332576 := by
    unfold C
    simp [show (1417176 * k + 665152) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 332576) = 354294 * k + 166288 := by
    unfold C
    simp [show (708588 * k + 332576) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 166288) = 177147 * k + 83144 := by
    unfold C
    simp [show (354294 * k + 166288) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 123035) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 123035))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_123163 : ∀ k : Nat,
    iterate (262144 * k + 123163) 29 = 177147 * k + 83230 ∧
      177147 * k + 83230 < 262144 * k + 123163 := by
  intro k
  have h1 : C (262144 * k + 123163) = 786432 * k + 369490 := by
    unfold C
    simp [show (262144 * k + 123163) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 369490) = 393216 * k + 184745 := by
    unfold C
    simp [show (786432 * k + 369490) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 184745) = 1179648 * k + 554236 := by
    unfold C
    simp [show (393216 * k + 184745) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 554236) = 589824 * k + 277118 := by
    unfold C
    simp [show (1179648 * k + 554236) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 277118) = 294912 * k + 138559 := by
    unfold C
    simp [show (589824 * k + 277118) % 2 = 0 by omega]
    omega
  have h6 : C (294912 * k + 138559) = 884736 * k + 415678 := by
    unfold C
    simp [show (294912 * k + 138559) % 2 ≠ 0 by omega]
    omega
  have h7 : C (884736 * k + 415678) = 442368 * k + 207839 := by
    unfold C
    simp [show (884736 * k + 415678) % 2 = 0 by omega]
    omega
  have h8 : C (442368 * k + 207839) = 1327104 * k + 623518 := by
    unfold C
    simp [show (442368 * k + 207839) % 2 ≠ 0 by omega]
    omega
  have h9 : C (1327104 * k + 623518) = 663552 * k + 311759 := by
    unfold C
    simp [show (1327104 * k + 623518) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 311759) = 1990656 * k + 935278 := by
    unfold C
    simp [show (663552 * k + 311759) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 935278) = 995328 * k + 467639 := by
    unfold C
    simp [show (1990656 * k + 935278) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 467639) = 2985984 * k + 1402918 := by
    unfold C
    simp [show (995328 * k + 467639) % 2 ≠ 0 by omega]
    omega
  have h13 : C (2985984 * k + 1402918) = 1492992 * k + 701459 := by
    unfold C
    simp [show (2985984 * k + 1402918) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 701459) = 4478976 * k + 2104378 := by
    unfold C
    simp [show (1492992 * k + 701459) % 2 ≠ 0 by omega]
    omega
  have h15 : C (4478976 * k + 2104378) = 2239488 * k + 1052189 := by
    unfold C
    simp [show (4478976 * k + 2104378) % 2 = 0 by omega]
    omega
  have h16 : C (2239488 * k + 1052189) = 6718464 * k + 3156568 := by
    unfold C
    simp [show (2239488 * k + 1052189) % 2 ≠ 0 by omega]
    omega
  have h17 : C (6718464 * k + 3156568) = 3359232 * k + 1578284 := by
    unfold C
    simp [show (6718464 * k + 3156568) % 2 = 0 by omega]
    omega
  have h18 : C (3359232 * k + 1578284) = 1679616 * k + 789142 := by
    unfold C
    simp [show (3359232 * k + 1578284) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 789142) = 839808 * k + 394571 := by
    unfold C
    simp [show (1679616 * k + 789142) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 394571) = 2519424 * k + 1183714 := by
    unfold C
    simp [show (839808 * k + 394571) % 2 ≠ 0 by omega]
    omega
  have h21 : C (2519424 * k + 1183714) = 1259712 * k + 591857 := by
    unfold C
    simp [show (2519424 * k + 1183714) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 591857) = 3779136 * k + 1775572 := by
    unfold C
    simp [show (1259712 * k + 591857) % 2 ≠ 0 by omega]
    omega
  have h23 : C (3779136 * k + 1775572) = 1889568 * k + 887786 := by
    unfold C
    simp [show (3779136 * k + 1775572) % 2 = 0 by omega]
    omega
  have h24 : C (1889568 * k + 887786) = 944784 * k + 443893 := by
    unfold C
    simp [show (1889568 * k + 887786) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 443893) = 2834352 * k + 1331680 := by
    unfold C
    simp [show (944784 * k + 443893) % 2 ≠ 0 by omega]
    omega
  have h26 : C (2834352 * k + 1331680) = 1417176 * k + 665840 := by
    unfold C
    simp [show (2834352 * k + 1331680) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 665840) = 708588 * k + 332920 := by
    unfold C
    simp [show (1417176 * k + 665840) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 332920) = 354294 * k + 166460 := by
    unfold C
    simp [show (708588 * k + 332920) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 166460) = 177147 * k + 83230 := by
    unfold C
    simp [show (354294 * k + 166460) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 123163) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 123163))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_123367 : ∀ k : Nat,
    iterate (262144 * k + 123367) 29 = 177147 * k + 83368 ∧
      177147 * k + 83368 < 262144 * k + 123367 := by
  intro k
  have h1 : C (262144 * k + 123367) = 786432 * k + 370102 := by
    unfold C
    simp [show (262144 * k + 123367) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 370102) = 393216 * k + 185051 := by
    unfold C
    simp [show (786432 * k + 370102) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 185051) = 1179648 * k + 555154 := by
    unfold C
    simp [show (393216 * k + 185051) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 555154) = 589824 * k + 277577 := by
    unfold C
    simp [show (1179648 * k + 555154) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 277577) = 1769472 * k + 832732 := by
    unfold C
    simp [show (589824 * k + 277577) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 832732) = 884736 * k + 416366 := by
    unfold C
    simp [show (1769472 * k + 832732) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 416366) = 442368 * k + 208183 := by
    unfold C
    simp [show (884736 * k + 416366) % 2 = 0 by omega]
    omega
  have h8 : C (442368 * k + 208183) = 1327104 * k + 624550 := by
    unfold C
    simp [show (442368 * k + 208183) % 2 ≠ 0 by omega]
    omega
  have h9 : C (1327104 * k + 624550) = 663552 * k + 312275 := by
    unfold C
    simp [show (1327104 * k + 624550) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 312275) = 1990656 * k + 936826 := by
    unfold C
    simp [show (663552 * k + 312275) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 936826) = 995328 * k + 468413 := by
    unfold C
    simp [show (1990656 * k + 936826) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 468413) = 2985984 * k + 1405240 := by
    unfold C
    simp [show (995328 * k + 468413) % 2 ≠ 0 by omega]
    omega
  have h13 : C (2985984 * k + 1405240) = 1492992 * k + 702620 := by
    unfold C
    simp [show (2985984 * k + 1405240) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 702620) = 746496 * k + 351310 := by
    unfold C
    simp [show (1492992 * k + 702620) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 351310) = 373248 * k + 175655 := by
    unfold C
    simp [show (746496 * k + 351310) % 2 = 0 by omega]
    omega
  have h16 : C (373248 * k + 175655) = 1119744 * k + 526966 := by
    unfold C
    simp [show (373248 * k + 175655) % 2 ≠ 0 by omega]
    omega
  have h17 : C (1119744 * k + 526966) = 559872 * k + 263483 := by
    unfold C
    simp [show (1119744 * k + 526966) % 2 = 0 by omega]
    omega
  have h18 : C (559872 * k + 263483) = 1679616 * k + 790450 := by
    unfold C
    simp [show (559872 * k + 263483) % 2 ≠ 0 by omega]
    omega
  have h19 : C (1679616 * k + 790450) = 839808 * k + 395225 := by
    unfold C
    simp [show (1679616 * k + 790450) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 395225) = 2519424 * k + 1185676 := by
    unfold C
    simp [show (839808 * k + 395225) % 2 ≠ 0 by omega]
    omega
  have h21 : C (2519424 * k + 1185676) = 1259712 * k + 592838 := by
    unfold C
    simp [show (2519424 * k + 1185676) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 592838) = 629856 * k + 296419 := by
    unfold C
    simp [show (1259712 * k + 592838) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 296419) = 1889568 * k + 889258 := by
    unfold C
    simp [show (629856 * k + 296419) % 2 ≠ 0 by omega]
    omega
  have h24 : C (1889568 * k + 889258) = 944784 * k + 444629 := by
    unfold C
    simp [show (1889568 * k + 889258) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 444629) = 2834352 * k + 1333888 := by
    unfold C
    simp [show (944784 * k + 444629) % 2 ≠ 0 by omega]
    omega
  have h26 : C (2834352 * k + 1333888) = 1417176 * k + 666944 := by
    unfold C
    simp [show (2834352 * k + 1333888) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 666944) = 708588 * k + 333472 := by
    unfold C
    simp [show (1417176 * k + 666944) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 333472) = 354294 * k + 166736 := by
    unfold C
    simp [show (708588 * k + 333472) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 166736) = 177147 * k + 83368 := by
    unfold C
    simp [show (354294 * k + 166736) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 123367) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 123367))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_123631 : ∀ k : Nat,
    iterate (262144 * k + 123631) 29 = 177147 * k + 83546 ∧
      177147 * k + 83546 < 262144 * k + 123631 := by
  intro k
  have h1 : C (262144 * k + 123631) = 786432 * k + 370894 := by
    unfold C
    simp [show (262144 * k + 123631) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 370894) = 393216 * k + 185447 := by
    unfold C
    simp [show (786432 * k + 370894) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 185447) = 1179648 * k + 556342 := by
    unfold C
    simp [show (393216 * k + 185447) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 556342) = 589824 * k + 278171 := by
    unfold C
    simp [show (1179648 * k + 556342) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 278171) = 1769472 * k + 834514 := by
    unfold C
    simp [show (589824 * k + 278171) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 834514) = 884736 * k + 417257 := by
    unfold C
    simp [show (1769472 * k + 834514) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 417257) = 2654208 * k + 1251772 := by
    unfold C
    simp [show (884736 * k + 417257) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 1251772) = 1327104 * k + 625886 := by
    unfold C
    simp [show (2654208 * k + 1251772) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 625886) = 663552 * k + 312943 := by
    unfold C
    simp [show (1327104 * k + 625886) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 312943) = 1990656 * k + 938830 := by
    unfold C
    simp [show (663552 * k + 312943) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 938830) = 995328 * k + 469415 := by
    unfold C
    simp [show (1990656 * k + 938830) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 469415) = 2985984 * k + 1408246 := by
    unfold C
    simp [show (995328 * k + 469415) % 2 ≠ 0 by omega]
    omega
  have h13 : C (2985984 * k + 1408246) = 1492992 * k + 704123 := by
    unfold C
    simp [show (2985984 * k + 1408246) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 704123) = 4478976 * k + 2112370 := by
    unfold C
    simp [show (1492992 * k + 704123) % 2 ≠ 0 by omega]
    omega
  have h15 : C (4478976 * k + 2112370) = 2239488 * k + 1056185 := by
    unfold C
    simp [show (4478976 * k + 2112370) % 2 = 0 by omega]
    omega
  have h16 : C (2239488 * k + 1056185) = 6718464 * k + 3168556 := by
    unfold C
    simp [show (2239488 * k + 1056185) % 2 ≠ 0 by omega]
    omega
  have h17 : C (6718464 * k + 3168556) = 3359232 * k + 1584278 := by
    unfold C
    simp [show (6718464 * k + 3168556) % 2 = 0 by omega]
    omega
  have h18 : C (3359232 * k + 1584278) = 1679616 * k + 792139 := by
    unfold C
    simp [show (3359232 * k + 1584278) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 792139) = 5038848 * k + 2376418 := by
    unfold C
    simp [show (1679616 * k + 792139) % 2 ≠ 0 by omega]
    omega
  have h20 : C (5038848 * k + 2376418) = 2519424 * k + 1188209 := by
    unfold C
    simp [show (5038848 * k + 2376418) % 2 = 0 by omega]
    omega
  have h21 : C (2519424 * k + 1188209) = 7558272 * k + 3564628 := by
    unfold C
    simp [show (2519424 * k + 1188209) % 2 ≠ 0 by omega]
    omega
  have h22 : C (7558272 * k + 3564628) = 3779136 * k + 1782314 := by
    unfold C
    simp [show (7558272 * k + 3564628) % 2 = 0 by omega]
    omega
  have h23 : C (3779136 * k + 1782314) = 1889568 * k + 891157 := by
    unfold C
    simp [show (3779136 * k + 1782314) % 2 = 0 by omega]
    omega
  have h24 : C (1889568 * k + 891157) = 5668704 * k + 2673472 := by
    unfold C
    simp [show (1889568 * k + 891157) % 2 ≠ 0 by omega]
    omega
  have h25 : C (5668704 * k + 2673472) = 2834352 * k + 1336736 := by
    unfold C
    simp [show (5668704 * k + 2673472) % 2 = 0 by omega]
    omega
  have h26 : C (2834352 * k + 1336736) = 1417176 * k + 668368 := by
    unfold C
    simp [show (2834352 * k + 1336736) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 668368) = 708588 * k + 334184 := by
    unfold C
    simp [show (1417176 * k + 668368) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 334184) = 354294 * k + 167092 := by
    unfold C
    simp [show (708588 * k + 334184) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 167092) = 177147 * k + 83546 := by
    unfold C
    simp [show (354294 * k + 167092) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 123631) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 123631))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_123675 : ∀ k : Nat,
    iterate (262144 * k + 123675) 29 = 177147 * k + 83576 ∧
      177147 * k + 83576 < 262144 * k + 123675 := by
  intro k
  have h1 : C (262144 * k + 123675) = 786432 * k + 371026 := by
    unfold C
    simp [show (262144 * k + 123675) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 371026) = 393216 * k + 185513 := by
    unfold C
    simp [show (786432 * k + 371026) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 185513) = 1179648 * k + 556540 := by
    unfold C
    simp [show (393216 * k + 185513) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 556540) = 589824 * k + 278270 := by
    unfold C
    simp [show (1179648 * k + 556540) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 278270) = 294912 * k + 139135 := by
    unfold C
    simp [show (589824 * k + 278270) % 2 = 0 by omega]
    omega
  have h6 : C (294912 * k + 139135) = 884736 * k + 417406 := by
    unfold C
    simp [show (294912 * k + 139135) % 2 ≠ 0 by omega]
    omega
  have h7 : C (884736 * k + 417406) = 442368 * k + 208703 := by
    unfold C
    simp [show (884736 * k + 417406) % 2 = 0 by omega]
    omega
  have h8 : C (442368 * k + 208703) = 1327104 * k + 626110 := by
    unfold C
    simp [show (442368 * k + 208703) % 2 ≠ 0 by omega]
    omega
  have h9 : C (1327104 * k + 626110) = 663552 * k + 313055 := by
    unfold C
    simp [show (1327104 * k + 626110) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 313055) = 1990656 * k + 939166 := by
    unfold C
    simp [show (663552 * k + 313055) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 939166) = 995328 * k + 469583 := by
    unfold C
    simp [show (1990656 * k + 939166) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 469583) = 2985984 * k + 1408750 := by
    unfold C
    simp [show (995328 * k + 469583) % 2 ≠ 0 by omega]
    omega
  have h13 : C (2985984 * k + 1408750) = 1492992 * k + 704375 := by
    unfold C
    simp [show (2985984 * k + 1408750) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 704375) = 4478976 * k + 2113126 := by
    unfold C
    simp [show (1492992 * k + 704375) % 2 ≠ 0 by omega]
    omega
  have h15 : C (4478976 * k + 2113126) = 2239488 * k + 1056563 := by
    unfold C
    simp [show (4478976 * k + 2113126) % 2 = 0 by omega]
    omega
  have h16 : C (2239488 * k + 1056563) = 6718464 * k + 3169690 := by
    unfold C
    simp [show (2239488 * k + 1056563) % 2 ≠ 0 by omega]
    omega
  have h17 : C (6718464 * k + 3169690) = 3359232 * k + 1584845 := by
    unfold C
    simp [show (6718464 * k + 3169690) % 2 = 0 by omega]
    omega
  have h18 : C (3359232 * k + 1584845) = 10077696 * k + 4754536 := by
    unfold C
    simp [show (3359232 * k + 1584845) % 2 ≠ 0 by omega]
    omega
  have h19 : C (10077696 * k + 4754536) = 5038848 * k + 2377268 := by
    unfold C
    simp [show (10077696 * k + 4754536) % 2 = 0 by omega]
    omega
  have h20 : C (5038848 * k + 2377268) = 2519424 * k + 1188634 := by
    unfold C
    simp [show (5038848 * k + 2377268) % 2 = 0 by omega]
    omega
  have h21 : C (2519424 * k + 1188634) = 1259712 * k + 594317 := by
    unfold C
    simp [show (2519424 * k + 1188634) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 594317) = 3779136 * k + 1782952 := by
    unfold C
    simp [show (1259712 * k + 594317) % 2 ≠ 0 by omega]
    omega
  have h23 : C (3779136 * k + 1782952) = 1889568 * k + 891476 := by
    unfold C
    simp [show (3779136 * k + 1782952) % 2 = 0 by omega]
    omega
  have h24 : C (1889568 * k + 891476) = 944784 * k + 445738 := by
    unfold C
    simp [show (1889568 * k + 891476) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 445738) = 472392 * k + 222869 := by
    unfold C
    simp [show (944784 * k + 445738) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 222869) = 1417176 * k + 668608 := by
    unfold C
    simp [show (472392 * k + 222869) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 668608) = 708588 * k + 334304 := by
    unfold C
    simp [show (1417176 * k + 668608) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 334304) = 354294 * k + 167152 := by
    unfold C
    simp [show (708588 * k + 334304) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 167152) = 177147 * k + 83576 := by
    unfold C
    simp [show (354294 * k + 167152) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 123675) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 123675))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_123719 : ∀ k : Nat,
    iterate (262144 * k + 123719) 29 = 177147 * k + 83606 ∧
      177147 * k + 83606 < 262144 * k + 123719 := by
  intro k
  have h1 : C (262144 * k + 123719) = 786432 * k + 371158 := by
    unfold C
    simp [show (262144 * k + 123719) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 371158) = 393216 * k + 185579 := by
    unfold C
    simp [show (786432 * k + 371158) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 185579) = 1179648 * k + 556738 := by
    unfold C
    simp [show (393216 * k + 185579) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 556738) = 589824 * k + 278369 := by
    unfold C
    simp [show (1179648 * k + 556738) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 278369) = 1769472 * k + 835108 := by
    unfold C
    simp [show (589824 * k + 278369) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 835108) = 884736 * k + 417554 := by
    unfold C
    simp [show (1769472 * k + 835108) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 417554) = 442368 * k + 208777 := by
    unfold C
    simp [show (884736 * k + 417554) % 2 = 0 by omega]
    omega
  have h8 : C (442368 * k + 208777) = 1327104 * k + 626332 := by
    unfold C
    simp [show (442368 * k + 208777) % 2 ≠ 0 by omega]
    omega
  have h9 : C (1327104 * k + 626332) = 663552 * k + 313166 := by
    unfold C
    simp [show (1327104 * k + 626332) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 313166) = 331776 * k + 156583 := by
    unfold C
    simp [show (663552 * k + 313166) % 2 = 0 by omega]
    omega
  have h11 : C (331776 * k + 156583) = 995328 * k + 469750 := by
    unfold C
    simp [show (331776 * k + 156583) % 2 ≠ 0 by omega]
    omega
  have h12 : C (995328 * k + 469750) = 497664 * k + 234875 := by
    unfold C
    simp [show (995328 * k + 469750) % 2 = 0 by omega]
    omega
  have h13 : C (497664 * k + 234875) = 1492992 * k + 704626 := by
    unfold C
    simp [show (497664 * k + 234875) % 2 ≠ 0 by omega]
    omega
  have h14 : C (1492992 * k + 704626) = 746496 * k + 352313 := by
    unfold C
    simp [show (1492992 * k + 704626) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 352313) = 2239488 * k + 1056940 := by
    unfold C
    simp [show (746496 * k + 352313) % 2 ≠ 0 by omega]
    omega
  have h16 : C (2239488 * k + 1056940) = 1119744 * k + 528470 := by
    unfold C
    simp [show (2239488 * k + 1056940) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 528470) = 559872 * k + 264235 := by
    unfold C
    simp [show (1119744 * k + 528470) % 2 = 0 by omega]
    omega
  have h18 : C (559872 * k + 264235) = 1679616 * k + 792706 := by
    unfold C
    simp [show (559872 * k + 264235) % 2 ≠ 0 by omega]
    omega
  have h19 : C (1679616 * k + 792706) = 839808 * k + 396353 := by
    unfold C
    simp [show (1679616 * k + 792706) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 396353) = 2519424 * k + 1189060 := by
    unfold C
    simp [show (839808 * k + 396353) % 2 ≠ 0 by omega]
    omega
  have h21 : C (2519424 * k + 1189060) = 1259712 * k + 594530 := by
    unfold C
    simp [show (2519424 * k + 1189060) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 594530) = 629856 * k + 297265 := by
    unfold C
    simp [show (1259712 * k + 594530) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 297265) = 1889568 * k + 891796 := by
    unfold C
    simp [show (629856 * k + 297265) % 2 ≠ 0 by omega]
    omega
  have h24 : C (1889568 * k + 891796) = 944784 * k + 445898 := by
    unfold C
    simp [show (1889568 * k + 891796) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 445898) = 472392 * k + 222949 := by
    unfold C
    simp [show (944784 * k + 445898) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 222949) = 1417176 * k + 668848 := by
    unfold C
    simp [show (472392 * k + 222949) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 668848) = 708588 * k + 334424 := by
    unfold C
    simp [show (1417176 * k + 668848) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 334424) = 354294 * k + 167212 := by
    unfold C
    simp [show (708588 * k + 334424) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 167212) = 177147 * k + 83606 := by
    unfold C
    simp [show (354294 * k + 167212) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 123719) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 123719))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

end CollatzM18Shard024
