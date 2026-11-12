import Mathlib.Data.Nat.Prime.Basic

namespace CollatzM18Shard037

def C (n : Nat) : Nat := if n % 2 = 0 then n / 2 else 3 * n + 1

def iterate (n t : Nat) : Nat := Nat.rec n (fun _ previous => C previous) t

theorem descent_mod262144_194919 : ∀ k : Nat,
    iterate (262144 * k + 194919) 29 = 177147 * k + 131720 ∧
      177147 * k + 131720 < 262144 * k + 194919 := by
  intro k
  have h1 : C (262144 * k + 194919) = 786432 * k + 584758 := by
    unfold C
    simp [show (262144 * k + 194919) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 584758) = 393216 * k + 292379 := by
    unfold C
    simp [show (786432 * k + 584758) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 292379) = 1179648 * k + 877138 := by
    unfold C
    simp [show (393216 * k + 292379) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 877138) = 589824 * k + 438569 := by
    unfold C
    simp [show (1179648 * k + 877138) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 438569) = 1769472 * k + 1315708 := by
    unfold C
    simp [show (589824 * k + 438569) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 1315708) = 884736 * k + 657854 := by
    unfold C
    simp [show (1769472 * k + 1315708) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 657854) = 442368 * k + 328927 := by
    unfold C
    simp [show (884736 * k + 657854) % 2 = 0 by omega]
    omega
  have h8 : C (442368 * k + 328927) = 1327104 * k + 986782 := by
    unfold C
    simp [show (442368 * k + 328927) % 2 ≠ 0 by omega]
    omega
  have h9 : C (1327104 * k + 986782) = 663552 * k + 493391 := by
    unfold C
    simp [show (1327104 * k + 986782) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 493391) = 1990656 * k + 1480174 := by
    unfold C
    simp [show (663552 * k + 493391) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 1480174) = 995328 * k + 740087 := by
    unfold C
    simp [show (1990656 * k + 1480174) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 740087) = 2985984 * k + 2220262 := by
    unfold C
    simp [show (995328 * k + 740087) % 2 ≠ 0 by omega]
    omega
  have h13 : C (2985984 * k + 2220262) = 1492992 * k + 1110131 := by
    unfold C
    simp [show (2985984 * k + 2220262) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 1110131) = 4478976 * k + 3330394 := by
    unfold C
    simp [show (1492992 * k + 1110131) % 2 ≠ 0 by omega]
    omega
  have h15 : C (4478976 * k + 3330394) = 2239488 * k + 1665197 := by
    unfold C
    simp [show (4478976 * k + 3330394) % 2 = 0 by omega]
    omega
  have h16 : C (2239488 * k + 1665197) = 6718464 * k + 4995592 := by
    unfold C
    simp [show (2239488 * k + 1665197) % 2 ≠ 0 by omega]
    omega
  have h17 : C (6718464 * k + 4995592) = 3359232 * k + 2497796 := by
    unfold C
    simp [show (6718464 * k + 4995592) % 2 = 0 by omega]
    omega
  have h18 : C (3359232 * k + 2497796) = 1679616 * k + 1248898 := by
    unfold C
    simp [show (3359232 * k + 2497796) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 1248898) = 839808 * k + 624449 := by
    unfold C
    simp [show (1679616 * k + 1248898) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 624449) = 2519424 * k + 1873348 := by
    unfold C
    simp [show (839808 * k + 624449) % 2 ≠ 0 by omega]
    omega
  have h21 : C (2519424 * k + 1873348) = 1259712 * k + 936674 := by
    unfold C
    simp [show (2519424 * k + 1873348) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 936674) = 629856 * k + 468337 := by
    unfold C
    simp [show (1259712 * k + 936674) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 468337) = 1889568 * k + 1405012 := by
    unfold C
    simp [show (629856 * k + 468337) % 2 ≠ 0 by omega]
    omega
  have h24 : C (1889568 * k + 1405012) = 944784 * k + 702506 := by
    unfold C
    simp [show (1889568 * k + 1405012) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 702506) = 472392 * k + 351253 := by
    unfold C
    simp [show (944784 * k + 702506) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 351253) = 1417176 * k + 1053760 := by
    unfold C
    simp [show (472392 * k + 351253) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 1053760) = 708588 * k + 526880 := by
    unfold C
    simp [show (1417176 * k + 1053760) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 526880) = 354294 * k + 263440 := by
    unfold C
    simp [show (708588 * k + 526880) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 263440) = 177147 * k + 131720 := by
    unfold C
    simp [show (354294 * k + 263440) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 194919) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 194919))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_195039 : ∀ k : Nat,
    iterate (262144 * k + 195039) 29 = 177147 * k + 131801 ∧
      177147 * k + 131801 < 262144 * k + 195039 := by
  intro k
  have h1 : C (262144 * k + 195039) = 786432 * k + 585118 := by
    unfold C
    simp [show (262144 * k + 195039) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 585118) = 393216 * k + 292559 := by
    unfold C
    simp [show (786432 * k + 585118) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 292559) = 1179648 * k + 877678 := by
    unfold C
    simp [show (393216 * k + 292559) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 877678) = 589824 * k + 438839 := by
    unfold C
    simp [show (1179648 * k + 877678) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 438839) = 1769472 * k + 1316518 := by
    unfold C
    simp [show (589824 * k + 438839) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 1316518) = 884736 * k + 658259 := by
    unfold C
    simp [show (1769472 * k + 1316518) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 658259) = 2654208 * k + 1974778 := by
    unfold C
    simp [show (884736 * k + 658259) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 1974778) = 1327104 * k + 987389 := by
    unfold C
    simp [show (2654208 * k + 1974778) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 987389) = 3981312 * k + 2962168 := by
    unfold C
    simp [show (1327104 * k + 987389) % 2 ≠ 0 by omega]
    omega
  have h10 : C (3981312 * k + 2962168) = 1990656 * k + 1481084 := by
    unfold C
    simp [show (3981312 * k + 2962168) % 2 = 0 by omega]
    omega
  have h11 : C (1990656 * k + 1481084) = 995328 * k + 740542 := by
    unfold C
    simp [show (1990656 * k + 1481084) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 740542) = 497664 * k + 370271 := by
    unfold C
    simp [show (995328 * k + 740542) % 2 = 0 by omega]
    omega
  have h13 : C (497664 * k + 370271) = 1492992 * k + 1110814 := by
    unfold C
    simp [show (497664 * k + 370271) % 2 ≠ 0 by omega]
    omega
  have h14 : C (1492992 * k + 1110814) = 746496 * k + 555407 := by
    unfold C
    simp [show (1492992 * k + 1110814) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 555407) = 2239488 * k + 1666222 := by
    unfold C
    simp [show (746496 * k + 555407) % 2 ≠ 0 by omega]
    omega
  have h16 : C (2239488 * k + 1666222) = 1119744 * k + 833111 := by
    unfold C
    simp [show (2239488 * k + 1666222) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 833111) = 3359232 * k + 2499334 := by
    unfold C
    simp [show (1119744 * k + 833111) % 2 ≠ 0 by omega]
    omega
  have h18 : C (3359232 * k + 2499334) = 1679616 * k + 1249667 := by
    unfold C
    simp [show (3359232 * k + 2499334) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 1249667) = 5038848 * k + 3749002 := by
    unfold C
    simp [show (1679616 * k + 1249667) % 2 ≠ 0 by omega]
    omega
  have h20 : C (5038848 * k + 3749002) = 2519424 * k + 1874501 := by
    unfold C
    simp [show (5038848 * k + 3749002) % 2 = 0 by omega]
    omega
  have h21 : C (2519424 * k + 1874501) = 7558272 * k + 5623504 := by
    unfold C
    simp [show (2519424 * k + 1874501) % 2 ≠ 0 by omega]
    omega
  have h22 : C (7558272 * k + 5623504) = 3779136 * k + 2811752 := by
    unfold C
    simp [show (7558272 * k + 5623504) % 2 = 0 by omega]
    omega
  have h23 : C (3779136 * k + 2811752) = 1889568 * k + 1405876 := by
    unfold C
    simp [show (3779136 * k + 2811752) % 2 = 0 by omega]
    omega
  have h24 : C (1889568 * k + 1405876) = 944784 * k + 702938 := by
    unfold C
    simp [show (1889568 * k + 1405876) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 702938) = 472392 * k + 351469 := by
    unfold C
    simp [show (944784 * k + 702938) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 351469) = 1417176 * k + 1054408 := by
    unfold C
    simp [show (472392 * k + 351469) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 1054408) = 708588 * k + 527204 := by
    unfold C
    simp [show (1417176 * k + 1054408) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 527204) = 354294 * k + 263602 := by
    unfold C
    simp [show (708588 * k + 527204) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 263602) = 177147 * k + 131801 := by
    unfold C
    simp [show (354294 * k + 263602) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 195039) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 195039))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_195199 : ∀ k : Nat,
    iterate (262144 * k + 195199) 29 = 177147 * k + 131909 ∧
      177147 * k + 131909 < 262144 * k + 195199 := by
  intro k
  have h1 : C (262144 * k + 195199) = 786432 * k + 585598 := by
    unfold C
    simp [show (262144 * k + 195199) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 585598) = 393216 * k + 292799 := by
    unfold C
    simp [show (786432 * k + 585598) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 292799) = 1179648 * k + 878398 := by
    unfold C
    simp [show (393216 * k + 292799) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 878398) = 589824 * k + 439199 := by
    unfold C
    simp [show (1179648 * k + 878398) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 439199) = 1769472 * k + 1317598 := by
    unfold C
    simp [show (589824 * k + 439199) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 1317598) = 884736 * k + 658799 := by
    unfold C
    simp [show (1769472 * k + 1317598) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 658799) = 2654208 * k + 1976398 := by
    unfold C
    simp [show (884736 * k + 658799) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 1976398) = 1327104 * k + 988199 := by
    unfold C
    simp [show (2654208 * k + 1976398) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 988199) = 3981312 * k + 2964598 := by
    unfold C
    simp [show (1327104 * k + 988199) % 2 ≠ 0 by omega]
    omega
  have h10 : C (3981312 * k + 2964598) = 1990656 * k + 1482299 := by
    unfold C
    simp [show (3981312 * k + 2964598) % 2 = 0 by omega]
    omega
  have h11 : C (1990656 * k + 1482299) = 5971968 * k + 4446898 := by
    unfold C
    simp [show (1990656 * k + 1482299) % 2 ≠ 0 by omega]
    omega
  have h12 : C (5971968 * k + 4446898) = 2985984 * k + 2223449 := by
    unfold C
    simp [show (5971968 * k + 4446898) % 2 = 0 by omega]
    omega
  have h13 : C (2985984 * k + 2223449) = 8957952 * k + 6670348 := by
    unfold C
    simp [show (2985984 * k + 2223449) % 2 ≠ 0 by omega]
    omega
  have h14 : C (8957952 * k + 6670348) = 4478976 * k + 3335174 := by
    unfold C
    simp [show (8957952 * k + 6670348) % 2 = 0 by omega]
    omega
  have h15 : C (4478976 * k + 3335174) = 2239488 * k + 1667587 := by
    unfold C
    simp [show (4478976 * k + 3335174) % 2 = 0 by omega]
    omega
  have h16 : C (2239488 * k + 1667587) = 6718464 * k + 5002762 := by
    unfold C
    simp [show (2239488 * k + 1667587) % 2 ≠ 0 by omega]
    omega
  have h17 : C (6718464 * k + 5002762) = 3359232 * k + 2501381 := by
    unfold C
    simp [show (6718464 * k + 5002762) % 2 = 0 by omega]
    omega
  have h18 : C (3359232 * k + 2501381) = 10077696 * k + 7504144 := by
    unfold C
    simp [show (3359232 * k + 2501381) % 2 ≠ 0 by omega]
    omega
  have h19 : C (10077696 * k + 7504144) = 5038848 * k + 3752072 := by
    unfold C
    simp [show (10077696 * k + 7504144) % 2 = 0 by omega]
    omega
  have h20 : C (5038848 * k + 3752072) = 2519424 * k + 1876036 := by
    unfold C
    simp [show (5038848 * k + 3752072) % 2 = 0 by omega]
    omega
  have h21 : C (2519424 * k + 1876036) = 1259712 * k + 938018 := by
    unfold C
    simp [show (2519424 * k + 1876036) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 938018) = 629856 * k + 469009 := by
    unfold C
    simp [show (1259712 * k + 938018) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 469009) = 1889568 * k + 1407028 := by
    unfold C
    simp [show (629856 * k + 469009) % 2 ≠ 0 by omega]
    omega
  have h24 : C (1889568 * k + 1407028) = 944784 * k + 703514 := by
    unfold C
    simp [show (1889568 * k + 1407028) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 703514) = 472392 * k + 351757 := by
    unfold C
    simp [show (944784 * k + 703514) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 351757) = 1417176 * k + 1055272 := by
    unfold C
    simp [show (472392 * k + 351757) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 1055272) = 708588 * k + 527636 := by
    unfold C
    simp [show (1417176 * k + 1055272) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 527636) = 354294 * k + 263818 := by
    unfold C
    simp [show (708588 * k + 527636) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 263818) = 177147 * k + 131909 := by
    unfold C
    simp [show (354294 * k + 263818) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 195199) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 195199))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_195567 : ∀ k : Nat,
    iterate (262144 * k + 195567) 29 = 177147 * k + 132158 ∧
      177147 * k + 132158 < 262144 * k + 195567 := by
  intro k
  have h1 : C (262144 * k + 195567) = 786432 * k + 586702 := by
    unfold C
    simp [show (262144 * k + 195567) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 586702) = 393216 * k + 293351 := by
    unfold C
    simp [show (786432 * k + 586702) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 293351) = 1179648 * k + 880054 := by
    unfold C
    simp [show (393216 * k + 293351) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 880054) = 589824 * k + 440027 := by
    unfold C
    simp [show (1179648 * k + 880054) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 440027) = 1769472 * k + 1320082 := by
    unfold C
    simp [show (589824 * k + 440027) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 1320082) = 884736 * k + 660041 := by
    unfold C
    simp [show (1769472 * k + 1320082) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 660041) = 2654208 * k + 1980124 := by
    unfold C
    simp [show (884736 * k + 660041) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 1980124) = 1327104 * k + 990062 := by
    unfold C
    simp [show (2654208 * k + 1980124) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 990062) = 663552 * k + 495031 := by
    unfold C
    simp [show (1327104 * k + 990062) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 495031) = 1990656 * k + 1485094 := by
    unfold C
    simp [show (663552 * k + 495031) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 1485094) = 995328 * k + 742547 := by
    unfold C
    simp [show (1990656 * k + 1485094) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 742547) = 2985984 * k + 2227642 := by
    unfold C
    simp [show (995328 * k + 742547) % 2 ≠ 0 by omega]
    omega
  have h13 : C (2985984 * k + 2227642) = 1492992 * k + 1113821 := by
    unfold C
    simp [show (2985984 * k + 2227642) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 1113821) = 4478976 * k + 3341464 := by
    unfold C
    simp [show (1492992 * k + 1113821) % 2 ≠ 0 by omega]
    omega
  have h15 : C (4478976 * k + 3341464) = 2239488 * k + 1670732 := by
    unfold C
    simp [show (4478976 * k + 3341464) % 2 = 0 by omega]
    omega
  have h16 : C (2239488 * k + 1670732) = 1119744 * k + 835366 := by
    unfold C
    simp [show (2239488 * k + 1670732) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 835366) = 559872 * k + 417683 := by
    unfold C
    simp [show (1119744 * k + 835366) % 2 = 0 by omega]
    omega
  have h18 : C (559872 * k + 417683) = 1679616 * k + 1253050 := by
    unfold C
    simp [show (559872 * k + 417683) % 2 ≠ 0 by omega]
    omega
  have h19 : C (1679616 * k + 1253050) = 839808 * k + 626525 := by
    unfold C
    simp [show (1679616 * k + 1253050) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 626525) = 2519424 * k + 1879576 := by
    unfold C
    simp [show (839808 * k + 626525) % 2 ≠ 0 by omega]
    omega
  have h21 : C (2519424 * k + 1879576) = 1259712 * k + 939788 := by
    unfold C
    simp [show (2519424 * k + 1879576) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 939788) = 629856 * k + 469894 := by
    unfold C
    simp [show (1259712 * k + 939788) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 469894) = 314928 * k + 234947 := by
    unfold C
    simp [show (629856 * k + 469894) % 2 = 0 by omega]
    omega
  have h24 : C (314928 * k + 234947) = 944784 * k + 704842 := by
    unfold C
    simp [show (314928 * k + 234947) % 2 ≠ 0 by omega]
    omega
  have h25 : C (944784 * k + 704842) = 472392 * k + 352421 := by
    unfold C
    simp [show (944784 * k + 704842) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 352421) = 1417176 * k + 1057264 := by
    unfold C
    simp [show (472392 * k + 352421) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 1057264) = 708588 * k + 528632 := by
    unfold C
    simp [show (1417176 * k + 1057264) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 528632) = 354294 * k + 264316 := by
    unfold C
    simp [show (708588 * k + 528632) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 264316) = 177147 * k + 132158 := by
    unfold C
    simp [show (354294 * k + 264316) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 195567) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 195567))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_196591 : ∀ k : Nat,
    iterate (262144 * k + 196591) 29 = 177147 * k + 132850 ∧
      177147 * k + 132850 < 262144 * k + 196591 := by
  intro k
  have h1 : C (262144 * k + 196591) = 786432 * k + 589774 := by
    unfold C
    simp [show (262144 * k + 196591) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 589774) = 393216 * k + 294887 := by
    unfold C
    simp [show (786432 * k + 589774) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 294887) = 1179648 * k + 884662 := by
    unfold C
    simp [show (393216 * k + 294887) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 884662) = 589824 * k + 442331 := by
    unfold C
    simp [show (1179648 * k + 884662) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 442331) = 1769472 * k + 1326994 := by
    unfold C
    simp [show (589824 * k + 442331) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 1326994) = 884736 * k + 663497 := by
    unfold C
    simp [show (1769472 * k + 1326994) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 663497) = 2654208 * k + 1990492 := by
    unfold C
    simp [show (884736 * k + 663497) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 1990492) = 1327104 * k + 995246 := by
    unfold C
    simp [show (2654208 * k + 1990492) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 995246) = 663552 * k + 497623 := by
    unfold C
    simp [show (1327104 * k + 995246) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 497623) = 1990656 * k + 1492870 := by
    unfold C
    simp [show (663552 * k + 497623) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 1492870) = 995328 * k + 746435 := by
    unfold C
    simp [show (1990656 * k + 1492870) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 746435) = 2985984 * k + 2239306 := by
    unfold C
    simp [show (995328 * k + 746435) % 2 ≠ 0 by omega]
    omega
  have h13 : C (2985984 * k + 2239306) = 1492992 * k + 1119653 := by
    unfold C
    simp [show (2985984 * k + 2239306) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 1119653) = 4478976 * k + 3358960 := by
    unfold C
    simp [show (1492992 * k + 1119653) % 2 ≠ 0 by omega]
    omega
  have h15 : C (4478976 * k + 3358960) = 2239488 * k + 1679480 := by
    unfold C
    simp [show (4478976 * k + 3358960) % 2 = 0 by omega]
    omega
  have h16 : C (2239488 * k + 1679480) = 1119744 * k + 839740 := by
    unfold C
    simp [show (2239488 * k + 1679480) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 839740) = 559872 * k + 419870 := by
    unfold C
    simp [show (1119744 * k + 839740) % 2 = 0 by omega]
    omega
  have h18 : C (559872 * k + 419870) = 279936 * k + 209935 := by
    unfold C
    simp [show (559872 * k + 419870) % 2 = 0 by omega]
    omega
  have h19 : C (279936 * k + 209935) = 839808 * k + 629806 := by
    unfold C
    simp [show (279936 * k + 209935) % 2 ≠ 0 by omega]
    omega
  have h20 : C (839808 * k + 629806) = 419904 * k + 314903 := by
    unfold C
    simp [show (839808 * k + 629806) % 2 = 0 by omega]
    omega
  have h21 : C (419904 * k + 314903) = 1259712 * k + 944710 := by
    unfold C
    simp [show (419904 * k + 314903) % 2 ≠ 0 by omega]
    omega
  have h22 : C (1259712 * k + 944710) = 629856 * k + 472355 := by
    unfold C
    simp [show (1259712 * k + 944710) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 472355) = 1889568 * k + 1417066 := by
    unfold C
    simp [show (629856 * k + 472355) % 2 ≠ 0 by omega]
    omega
  have h24 : C (1889568 * k + 1417066) = 944784 * k + 708533 := by
    unfold C
    simp [show (1889568 * k + 1417066) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 708533) = 2834352 * k + 2125600 := by
    unfold C
    simp [show (944784 * k + 708533) % 2 ≠ 0 by omega]
    omega
  have h26 : C (2834352 * k + 2125600) = 1417176 * k + 1062800 := by
    unfold C
    simp [show (2834352 * k + 2125600) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 1062800) = 708588 * k + 531400 := by
    unfold C
    simp [show (1417176 * k + 1062800) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 531400) = 354294 * k + 265700 := by
    unfold C
    simp [show (708588 * k + 531400) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 265700) = 177147 * k + 132850 := by
    unfold C
    simp [show (354294 * k + 265700) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 196591) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 196591))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_196671 : ∀ k : Nat,
    iterate (262144 * k + 196671) 29 = 177147 * k + 132904 ∧
      177147 * k + 132904 < 262144 * k + 196671 := by
  intro k
  have h1 : C (262144 * k + 196671) = 786432 * k + 590014 := by
    unfold C
    simp [show (262144 * k + 196671) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 590014) = 393216 * k + 295007 := by
    unfold C
    simp [show (786432 * k + 590014) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 295007) = 1179648 * k + 885022 := by
    unfold C
    simp [show (393216 * k + 295007) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 885022) = 589824 * k + 442511 := by
    unfold C
    simp [show (1179648 * k + 885022) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 442511) = 1769472 * k + 1327534 := by
    unfold C
    simp [show (589824 * k + 442511) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 1327534) = 884736 * k + 663767 := by
    unfold C
    simp [show (1769472 * k + 1327534) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 663767) = 2654208 * k + 1991302 := by
    unfold C
    simp [show (884736 * k + 663767) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 1991302) = 1327104 * k + 995651 := by
    unfold C
    simp [show (2654208 * k + 1991302) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 995651) = 3981312 * k + 2986954 := by
    unfold C
    simp [show (1327104 * k + 995651) % 2 ≠ 0 by omega]
    omega
  have h10 : C (3981312 * k + 2986954) = 1990656 * k + 1493477 := by
    unfold C
    simp [show (3981312 * k + 2986954) % 2 = 0 by omega]
    omega
  have h11 : C (1990656 * k + 1493477) = 5971968 * k + 4480432 := by
    unfold C
    simp [show (1990656 * k + 1493477) % 2 ≠ 0 by omega]
    omega
  have h12 : C (5971968 * k + 4480432) = 2985984 * k + 2240216 := by
    unfold C
    simp [show (5971968 * k + 4480432) % 2 = 0 by omega]
    omega
  have h13 : C (2985984 * k + 2240216) = 1492992 * k + 1120108 := by
    unfold C
    simp [show (2985984 * k + 2240216) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 1120108) = 746496 * k + 560054 := by
    unfold C
    simp [show (1492992 * k + 1120108) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 560054) = 373248 * k + 280027 := by
    unfold C
    simp [show (746496 * k + 560054) % 2 = 0 by omega]
    omega
  have h16 : C (373248 * k + 280027) = 1119744 * k + 840082 := by
    unfold C
    simp [show (373248 * k + 280027) % 2 ≠ 0 by omega]
    omega
  have h17 : C (1119744 * k + 840082) = 559872 * k + 420041 := by
    unfold C
    simp [show (1119744 * k + 840082) % 2 = 0 by omega]
    omega
  have h18 : C (559872 * k + 420041) = 1679616 * k + 1260124 := by
    unfold C
    simp [show (559872 * k + 420041) % 2 ≠ 0 by omega]
    omega
  have h19 : C (1679616 * k + 1260124) = 839808 * k + 630062 := by
    unfold C
    simp [show (1679616 * k + 1260124) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 630062) = 419904 * k + 315031 := by
    unfold C
    simp [show (839808 * k + 630062) % 2 = 0 by omega]
    omega
  have h21 : C (419904 * k + 315031) = 1259712 * k + 945094 := by
    unfold C
    simp [show (419904 * k + 315031) % 2 ≠ 0 by omega]
    omega
  have h22 : C (1259712 * k + 945094) = 629856 * k + 472547 := by
    unfold C
    simp [show (1259712 * k + 945094) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 472547) = 1889568 * k + 1417642 := by
    unfold C
    simp [show (629856 * k + 472547) % 2 ≠ 0 by omega]
    omega
  have h24 : C (1889568 * k + 1417642) = 944784 * k + 708821 := by
    unfold C
    simp [show (1889568 * k + 1417642) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 708821) = 2834352 * k + 2126464 := by
    unfold C
    simp [show (944784 * k + 708821) % 2 ≠ 0 by omega]
    omega
  have h26 : C (2834352 * k + 2126464) = 1417176 * k + 1063232 := by
    unfold C
    simp [show (2834352 * k + 2126464) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 1063232) = 708588 * k + 531616 := by
    unfold C
    simp [show (1417176 * k + 1063232) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 531616) = 354294 * k + 265808 := by
    unfold C
    simp [show (708588 * k + 531616) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 265808) = 177147 * k + 132904 := by
    unfold C
    simp [show (354294 * k + 265808) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 196671) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 196671))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_196699 : ∀ k : Nat,
    iterate (262144 * k + 196699) 29 = 177147 * k + 132923 ∧
      177147 * k + 132923 < 262144 * k + 196699 := by
  intro k
  have h1 : C (262144 * k + 196699) = 786432 * k + 590098 := by
    unfold C
    simp [show (262144 * k + 196699) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 590098) = 393216 * k + 295049 := by
    unfold C
    simp [show (786432 * k + 590098) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 295049) = 1179648 * k + 885148 := by
    unfold C
    simp [show (393216 * k + 295049) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 885148) = 589824 * k + 442574 := by
    unfold C
    simp [show (1179648 * k + 885148) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 442574) = 294912 * k + 221287 := by
    unfold C
    simp [show (589824 * k + 442574) % 2 = 0 by omega]
    omega
  have h6 : C (294912 * k + 221287) = 884736 * k + 663862 := by
    unfold C
    simp [show (294912 * k + 221287) % 2 ≠ 0 by omega]
    omega
  have h7 : C (884736 * k + 663862) = 442368 * k + 331931 := by
    unfold C
    simp [show (884736 * k + 663862) % 2 = 0 by omega]
    omega
  have h8 : C (442368 * k + 331931) = 1327104 * k + 995794 := by
    unfold C
    simp [show (442368 * k + 331931) % 2 ≠ 0 by omega]
    omega
  have h9 : C (1327104 * k + 995794) = 663552 * k + 497897 := by
    unfold C
    simp [show (1327104 * k + 995794) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 497897) = 1990656 * k + 1493692 := by
    unfold C
    simp [show (663552 * k + 497897) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 1493692) = 995328 * k + 746846 := by
    unfold C
    simp [show (1990656 * k + 1493692) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 746846) = 497664 * k + 373423 := by
    unfold C
    simp [show (995328 * k + 746846) % 2 = 0 by omega]
    omega
  have h13 : C (497664 * k + 373423) = 1492992 * k + 1120270 := by
    unfold C
    simp [show (497664 * k + 373423) % 2 ≠ 0 by omega]
    omega
  have h14 : C (1492992 * k + 1120270) = 746496 * k + 560135 := by
    unfold C
    simp [show (1492992 * k + 1120270) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 560135) = 2239488 * k + 1680406 := by
    unfold C
    simp [show (746496 * k + 560135) % 2 ≠ 0 by omega]
    omega
  have h16 : C (2239488 * k + 1680406) = 1119744 * k + 840203 := by
    unfold C
    simp [show (2239488 * k + 1680406) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 840203) = 3359232 * k + 2520610 := by
    unfold C
    simp [show (1119744 * k + 840203) % 2 ≠ 0 by omega]
    omega
  have h18 : C (3359232 * k + 2520610) = 1679616 * k + 1260305 := by
    unfold C
    simp [show (3359232 * k + 2520610) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 1260305) = 5038848 * k + 3780916 := by
    unfold C
    simp [show (1679616 * k + 1260305) % 2 ≠ 0 by omega]
    omega
  have h20 : C (5038848 * k + 3780916) = 2519424 * k + 1890458 := by
    unfold C
    simp [show (5038848 * k + 3780916) % 2 = 0 by omega]
    omega
  have h21 : C (2519424 * k + 1890458) = 1259712 * k + 945229 := by
    unfold C
    simp [show (2519424 * k + 1890458) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 945229) = 3779136 * k + 2835688 := by
    unfold C
    simp [show (1259712 * k + 945229) % 2 ≠ 0 by omega]
    omega
  have h23 : C (3779136 * k + 2835688) = 1889568 * k + 1417844 := by
    unfold C
    simp [show (3779136 * k + 2835688) % 2 = 0 by omega]
    omega
  have h24 : C (1889568 * k + 1417844) = 944784 * k + 708922 := by
    unfold C
    simp [show (1889568 * k + 1417844) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 708922) = 472392 * k + 354461 := by
    unfold C
    simp [show (944784 * k + 708922) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 354461) = 1417176 * k + 1063384 := by
    unfold C
    simp [show (472392 * k + 354461) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 1063384) = 708588 * k + 531692 := by
    unfold C
    simp [show (1417176 * k + 1063384) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 531692) = 354294 * k + 265846 := by
    unfold C
    simp [show (708588 * k + 531692) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 265846) = 177147 * k + 132923 := by
    unfold C
    simp [show (354294 * k + 265846) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 196699) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 196699))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_196711 : ∀ k : Nat,
    iterate (262144 * k + 196711) 29 = 177147 * k + 132931 ∧
      177147 * k + 132931 < 262144 * k + 196711 := by
  intro k
  have h1 : C (262144 * k + 196711) = 786432 * k + 590134 := by
    unfold C
    simp [show (262144 * k + 196711) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 590134) = 393216 * k + 295067 := by
    unfold C
    simp [show (786432 * k + 590134) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 295067) = 1179648 * k + 885202 := by
    unfold C
    simp [show (393216 * k + 295067) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 885202) = 589824 * k + 442601 := by
    unfold C
    simp [show (1179648 * k + 885202) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 442601) = 1769472 * k + 1327804 := by
    unfold C
    simp [show (589824 * k + 442601) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 1327804) = 884736 * k + 663902 := by
    unfold C
    simp [show (1769472 * k + 1327804) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 663902) = 442368 * k + 331951 := by
    unfold C
    simp [show (884736 * k + 663902) % 2 = 0 by omega]
    omega
  have h8 : C (442368 * k + 331951) = 1327104 * k + 995854 := by
    unfold C
    simp [show (442368 * k + 331951) % 2 ≠ 0 by omega]
    omega
  have h9 : C (1327104 * k + 995854) = 663552 * k + 497927 := by
    unfold C
    simp [show (1327104 * k + 995854) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 497927) = 1990656 * k + 1493782 := by
    unfold C
    simp [show (663552 * k + 497927) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 1493782) = 995328 * k + 746891 := by
    unfold C
    simp [show (1990656 * k + 1493782) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 746891) = 2985984 * k + 2240674 := by
    unfold C
    simp [show (995328 * k + 746891) % 2 ≠ 0 by omega]
    omega
  have h13 : C (2985984 * k + 2240674) = 1492992 * k + 1120337 := by
    unfold C
    simp [show (2985984 * k + 2240674) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 1120337) = 4478976 * k + 3361012 := by
    unfold C
    simp [show (1492992 * k + 1120337) % 2 ≠ 0 by omega]
    omega
  have h15 : C (4478976 * k + 3361012) = 2239488 * k + 1680506 := by
    unfold C
    simp [show (4478976 * k + 3361012) % 2 = 0 by omega]
    omega
  have h16 : C (2239488 * k + 1680506) = 1119744 * k + 840253 := by
    unfold C
    simp [show (2239488 * k + 1680506) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 840253) = 3359232 * k + 2520760 := by
    unfold C
    simp [show (1119744 * k + 840253) % 2 ≠ 0 by omega]
    omega
  have h18 : C (3359232 * k + 2520760) = 1679616 * k + 1260380 := by
    unfold C
    simp [show (3359232 * k + 2520760) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 1260380) = 839808 * k + 630190 := by
    unfold C
    simp [show (1679616 * k + 1260380) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 630190) = 419904 * k + 315095 := by
    unfold C
    simp [show (839808 * k + 630190) % 2 = 0 by omega]
    omega
  have h21 : C (419904 * k + 315095) = 1259712 * k + 945286 := by
    unfold C
    simp [show (419904 * k + 315095) % 2 ≠ 0 by omega]
    omega
  have h22 : C (1259712 * k + 945286) = 629856 * k + 472643 := by
    unfold C
    simp [show (1259712 * k + 945286) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 472643) = 1889568 * k + 1417930 := by
    unfold C
    simp [show (629856 * k + 472643) % 2 ≠ 0 by omega]
    omega
  have h24 : C (1889568 * k + 1417930) = 944784 * k + 708965 := by
    unfold C
    simp [show (1889568 * k + 1417930) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 708965) = 2834352 * k + 2126896 := by
    unfold C
    simp [show (944784 * k + 708965) % 2 ≠ 0 by omega]
    omega
  have h26 : C (2834352 * k + 2126896) = 1417176 * k + 1063448 := by
    unfold C
    simp [show (2834352 * k + 2126896) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 1063448) = 708588 * k + 531724 := by
    unfold C
    simp [show (1417176 * k + 1063448) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 531724) = 354294 * k + 265862 := by
    unfold C
    simp [show (708588 * k + 531724) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 265862) = 177147 * k + 132931 := by
    unfold C
    simp [show (354294 * k + 265862) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 196711) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 196711))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_197503 : ∀ k : Nat,
    iterate (262144 * k + 197503) 29 = 177147 * k + 133466 ∧
      177147 * k + 133466 < 262144 * k + 197503 := by
  intro k
  have h1 : C (262144 * k + 197503) = 786432 * k + 592510 := by
    unfold C
    simp [show (262144 * k + 197503) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 592510) = 393216 * k + 296255 := by
    unfold C
    simp [show (786432 * k + 592510) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 296255) = 1179648 * k + 888766 := by
    unfold C
    simp [show (393216 * k + 296255) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 888766) = 589824 * k + 444383 := by
    unfold C
    simp [show (1179648 * k + 888766) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 444383) = 1769472 * k + 1333150 := by
    unfold C
    simp [show (589824 * k + 444383) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 1333150) = 884736 * k + 666575 := by
    unfold C
    simp [show (1769472 * k + 1333150) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 666575) = 2654208 * k + 1999726 := by
    unfold C
    simp [show (884736 * k + 666575) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 1999726) = 1327104 * k + 999863 := by
    unfold C
    simp [show (2654208 * k + 1999726) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 999863) = 3981312 * k + 2999590 := by
    unfold C
    simp [show (1327104 * k + 999863) % 2 ≠ 0 by omega]
    omega
  have h10 : C (3981312 * k + 2999590) = 1990656 * k + 1499795 := by
    unfold C
    simp [show (3981312 * k + 2999590) % 2 = 0 by omega]
    omega
  have h11 : C (1990656 * k + 1499795) = 5971968 * k + 4499386 := by
    unfold C
    simp [show (1990656 * k + 1499795) % 2 ≠ 0 by omega]
    omega
  have h12 : C (5971968 * k + 4499386) = 2985984 * k + 2249693 := by
    unfold C
    simp [show (5971968 * k + 4499386) % 2 = 0 by omega]
    omega
  have h13 : C (2985984 * k + 2249693) = 8957952 * k + 6749080 := by
    unfold C
    simp [show (2985984 * k + 2249693) % 2 ≠ 0 by omega]
    omega
  have h14 : C (8957952 * k + 6749080) = 4478976 * k + 3374540 := by
    unfold C
    simp [show (8957952 * k + 6749080) % 2 = 0 by omega]
    omega
  have h15 : C (4478976 * k + 3374540) = 2239488 * k + 1687270 := by
    unfold C
    simp [show (4478976 * k + 3374540) % 2 = 0 by omega]
    omega
  have h16 : C (2239488 * k + 1687270) = 1119744 * k + 843635 := by
    unfold C
    simp [show (2239488 * k + 1687270) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 843635) = 3359232 * k + 2530906 := by
    unfold C
    simp [show (1119744 * k + 843635) % 2 ≠ 0 by omega]
    omega
  have h18 : C (3359232 * k + 2530906) = 1679616 * k + 1265453 := by
    unfold C
    simp [show (3359232 * k + 2530906) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 1265453) = 5038848 * k + 3796360 := by
    unfold C
    simp [show (1679616 * k + 1265453) % 2 ≠ 0 by omega]
    omega
  have h20 : C (5038848 * k + 3796360) = 2519424 * k + 1898180 := by
    unfold C
    simp [show (5038848 * k + 3796360) % 2 = 0 by omega]
    omega
  have h21 : C (2519424 * k + 1898180) = 1259712 * k + 949090 := by
    unfold C
    simp [show (2519424 * k + 1898180) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 949090) = 629856 * k + 474545 := by
    unfold C
    simp [show (1259712 * k + 949090) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 474545) = 1889568 * k + 1423636 := by
    unfold C
    simp [show (629856 * k + 474545) % 2 ≠ 0 by omega]
    omega
  have h24 : C (1889568 * k + 1423636) = 944784 * k + 711818 := by
    unfold C
    simp [show (1889568 * k + 1423636) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 711818) = 472392 * k + 355909 := by
    unfold C
    simp [show (944784 * k + 711818) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 355909) = 1417176 * k + 1067728 := by
    unfold C
    simp [show (472392 * k + 355909) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 1067728) = 708588 * k + 533864 := by
    unfold C
    simp [show (1417176 * k + 1067728) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 533864) = 354294 * k + 266932 := by
    unfold C
    simp [show (708588 * k + 533864) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 266932) = 177147 * k + 133466 := by
    unfold C
    simp [show (354294 * k + 266932) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 197503) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 197503))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_197599 : ∀ k : Nat,
    iterate (262144 * k + 197599) 29 = 177147 * k + 133531 ∧
      177147 * k + 133531 < 262144 * k + 197599 := by
  intro k
  have h1 : C (262144 * k + 197599) = 786432 * k + 592798 := by
    unfold C
    simp [show (262144 * k + 197599) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 592798) = 393216 * k + 296399 := by
    unfold C
    simp [show (786432 * k + 592798) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 296399) = 1179648 * k + 889198 := by
    unfold C
    simp [show (393216 * k + 296399) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 889198) = 589824 * k + 444599 := by
    unfold C
    simp [show (1179648 * k + 889198) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 444599) = 1769472 * k + 1333798 := by
    unfold C
    simp [show (589824 * k + 444599) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 1333798) = 884736 * k + 666899 := by
    unfold C
    simp [show (1769472 * k + 1333798) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 666899) = 2654208 * k + 2000698 := by
    unfold C
    simp [show (884736 * k + 666899) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 2000698) = 1327104 * k + 1000349 := by
    unfold C
    simp [show (2654208 * k + 2000698) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 1000349) = 3981312 * k + 3001048 := by
    unfold C
    simp [show (1327104 * k + 1000349) % 2 ≠ 0 by omega]
    omega
  have h10 : C (3981312 * k + 3001048) = 1990656 * k + 1500524 := by
    unfold C
    simp [show (3981312 * k + 3001048) % 2 = 0 by omega]
    omega
  have h11 : C (1990656 * k + 1500524) = 995328 * k + 750262 := by
    unfold C
    simp [show (1990656 * k + 1500524) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 750262) = 497664 * k + 375131 := by
    unfold C
    simp [show (995328 * k + 750262) % 2 = 0 by omega]
    omega
  have h13 : C (497664 * k + 375131) = 1492992 * k + 1125394 := by
    unfold C
    simp [show (497664 * k + 375131) % 2 ≠ 0 by omega]
    omega
  have h14 : C (1492992 * k + 1125394) = 746496 * k + 562697 := by
    unfold C
    simp [show (1492992 * k + 1125394) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 562697) = 2239488 * k + 1688092 := by
    unfold C
    simp [show (746496 * k + 562697) % 2 ≠ 0 by omega]
    omega
  have h16 : C (2239488 * k + 1688092) = 1119744 * k + 844046 := by
    unfold C
    simp [show (2239488 * k + 1688092) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 844046) = 559872 * k + 422023 := by
    unfold C
    simp [show (1119744 * k + 844046) % 2 = 0 by omega]
    omega
  have h18 : C (559872 * k + 422023) = 1679616 * k + 1266070 := by
    unfold C
    simp [show (559872 * k + 422023) % 2 ≠ 0 by omega]
    omega
  have h19 : C (1679616 * k + 1266070) = 839808 * k + 633035 := by
    unfold C
    simp [show (1679616 * k + 1266070) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 633035) = 2519424 * k + 1899106 := by
    unfold C
    simp [show (839808 * k + 633035) % 2 ≠ 0 by omega]
    omega
  have h21 : C (2519424 * k + 1899106) = 1259712 * k + 949553 := by
    unfold C
    simp [show (2519424 * k + 1899106) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 949553) = 3779136 * k + 2848660 := by
    unfold C
    simp [show (1259712 * k + 949553) % 2 ≠ 0 by omega]
    omega
  have h23 : C (3779136 * k + 2848660) = 1889568 * k + 1424330 := by
    unfold C
    simp [show (3779136 * k + 2848660) % 2 = 0 by omega]
    omega
  have h24 : C (1889568 * k + 1424330) = 944784 * k + 712165 := by
    unfold C
    simp [show (1889568 * k + 1424330) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 712165) = 2834352 * k + 2136496 := by
    unfold C
    simp [show (944784 * k + 712165) % 2 ≠ 0 by omega]
    omega
  have h26 : C (2834352 * k + 2136496) = 1417176 * k + 1068248 := by
    unfold C
    simp [show (2834352 * k + 2136496) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 1068248) = 708588 * k + 534124 := by
    unfold C
    simp [show (1417176 * k + 1068248) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 534124) = 354294 * k + 267062 := by
    unfold C
    simp [show (708588 * k + 534124) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 267062) = 177147 * k + 133531 := by
    unfold C
    simp [show (354294 * k + 267062) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 197599) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 197599))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_197723 : ∀ k : Nat,
    iterate (262144 * k + 197723) 29 = 177147 * k + 133615 ∧
      177147 * k + 133615 < 262144 * k + 197723 := by
  intro k
  have h1 : C (262144 * k + 197723) = 786432 * k + 593170 := by
    unfold C
    simp [show (262144 * k + 197723) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 593170) = 393216 * k + 296585 := by
    unfold C
    simp [show (786432 * k + 593170) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 296585) = 1179648 * k + 889756 := by
    unfold C
    simp [show (393216 * k + 296585) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 889756) = 589824 * k + 444878 := by
    unfold C
    simp [show (1179648 * k + 889756) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 444878) = 294912 * k + 222439 := by
    unfold C
    simp [show (589824 * k + 444878) % 2 = 0 by omega]
    omega
  have h6 : C (294912 * k + 222439) = 884736 * k + 667318 := by
    unfold C
    simp [show (294912 * k + 222439) % 2 ≠ 0 by omega]
    omega
  have h7 : C (884736 * k + 667318) = 442368 * k + 333659 := by
    unfold C
    simp [show (884736 * k + 667318) % 2 = 0 by omega]
    omega
  have h8 : C (442368 * k + 333659) = 1327104 * k + 1000978 := by
    unfold C
    simp [show (442368 * k + 333659) % 2 ≠ 0 by omega]
    omega
  have h9 : C (1327104 * k + 1000978) = 663552 * k + 500489 := by
    unfold C
    simp [show (1327104 * k + 1000978) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 500489) = 1990656 * k + 1501468 := by
    unfold C
    simp [show (663552 * k + 500489) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 1501468) = 995328 * k + 750734 := by
    unfold C
    simp [show (1990656 * k + 1501468) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 750734) = 497664 * k + 375367 := by
    unfold C
    simp [show (995328 * k + 750734) % 2 = 0 by omega]
    omega
  have h13 : C (497664 * k + 375367) = 1492992 * k + 1126102 := by
    unfold C
    simp [show (497664 * k + 375367) % 2 ≠ 0 by omega]
    omega
  have h14 : C (1492992 * k + 1126102) = 746496 * k + 563051 := by
    unfold C
    simp [show (1492992 * k + 1126102) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 563051) = 2239488 * k + 1689154 := by
    unfold C
    simp [show (746496 * k + 563051) % 2 ≠ 0 by omega]
    omega
  have h16 : C (2239488 * k + 1689154) = 1119744 * k + 844577 := by
    unfold C
    simp [show (2239488 * k + 1689154) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 844577) = 3359232 * k + 2533732 := by
    unfold C
    simp [show (1119744 * k + 844577) % 2 ≠ 0 by omega]
    omega
  have h18 : C (3359232 * k + 2533732) = 1679616 * k + 1266866 := by
    unfold C
    simp [show (3359232 * k + 2533732) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 1266866) = 839808 * k + 633433 := by
    unfold C
    simp [show (1679616 * k + 1266866) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 633433) = 2519424 * k + 1900300 := by
    unfold C
    simp [show (839808 * k + 633433) % 2 ≠ 0 by omega]
    omega
  have h21 : C (2519424 * k + 1900300) = 1259712 * k + 950150 := by
    unfold C
    simp [show (2519424 * k + 1900300) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 950150) = 629856 * k + 475075 := by
    unfold C
    simp [show (1259712 * k + 950150) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 475075) = 1889568 * k + 1425226 := by
    unfold C
    simp [show (629856 * k + 475075) % 2 ≠ 0 by omega]
    omega
  have h24 : C (1889568 * k + 1425226) = 944784 * k + 712613 := by
    unfold C
    simp [show (1889568 * k + 1425226) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 712613) = 2834352 * k + 2137840 := by
    unfold C
    simp [show (944784 * k + 712613) % 2 ≠ 0 by omega]
    omega
  have h26 : C (2834352 * k + 2137840) = 1417176 * k + 1068920 := by
    unfold C
    simp [show (2834352 * k + 2137840) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 1068920) = 708588 * k + 534460 := by
    unfold C
    simp [show (1417176 * k + 1068920) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 534460) = 354294 * k + 267230 := by
    unfold C
    simp [show (708588 * k + 534460) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 267230) = 177147 * k + 133615 := by
    unfold C
    simp [show (354294 * k + 267230) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 197723) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 197723))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_197951 : ∀ k : Nat,
    iterate (262144 * k + 197951) 29 = 177147 * k + 133769 ∧
      177147 * k + 133769 < 262144 * k + 197951 := by
  intro k
  have h1 : C (262144 * k + 197951) = 786432 * k + 593854 := by
    unfold C
    simp [show (262144 * k + 197951) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 593854) = 393216 * k + 296927 := by
    unfold C
    simp [show (786432 * k + 593854) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 296927) = 1179648 * k + 890782 := by
    unfold C
    simp [show (393216 * k + 296927) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 890782) = 589824 * k + 445391 := by
    unfold C
    simp [show (1179648 * k + 890782) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 445391) = 1769472 * k + 1336174 := by
    unfold C
    simp [show (589824 * k + 445391) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 1336174) = 884736 * k + 668087 := by
    unfold C
    simp [show (1769472 * k + 1336174) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 668087) = 2654208 * k + 2004262 := by
    unfold C
    simp [show (884736 * k + 668087) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 2004262) = 1327104 * k + 1002131 := by
    unfold C
    simp [show (2654208 * k + 2004262) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 1002131) = 3981312 * k + 3006394 := by
    unfold C
    simp [show (1327104 * k + 1002131) % 2 ≠ 0 by omega]
    omega
  have h10 : C (3981312 * k + 3006394) = 1990656 * k + 1503197 := by
    unfold C
    simp [show (3981312 * k + 3006394) % 2 = 0 by omega]
    omega
  have h11 : C (1990656 * k + 1503197) = 5971968 * k + 4509592 := by
    unfold C
    simp [show (1990656 * k + 1503197) % 2 ≠ 0 by omega]
    omega
  have h12 : C (5971968 * k + 4509592) = 2985984 * k + 2254796 := by
    unfold C
    simp [show (5971968 * k + 4509592) % 2 = 0 by omega]
    omega
  have h13 : C (2985984 * k + 2254796) = 1492992 * k + 1127398 := by
    unfold C
    simp [show (2985984 * k + 2254796) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 1127398) = 746496 * k + 563699 := by
    unfold C
    simp [show (1492992 * k + 1127398) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 563699) = 2239488 * k + 1691098 := by
    unfold C
    simp [show (746496 * k + 563699) % 2 ≠ 0 by omega]
    omega
  have h16 : C (2239488 * k + 1691098) = 1119744 * k + 845549 := by
    unfold C
    simp [show (2239488 * k + 1691098) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 845549) = 3359232 * k + 2536648 := by
    unfold C
    simp [show (1119744 * k + 845549) % 2 ≠ 0 by omega]
    omega
  have h18 : C (3359232 * k + 2536648) = 1679616 * k + 1268324 := by
    unfold C
    simp [show (3359232 * k + 2536648) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 1268324) = 839808 * k + 634162 := by
    unfold C
    simp [show (1679616 * k + 1268324) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 634162) = 419904 * k + 317081 := by
    unfold C
    simp [show (839808 * k + 634162) % 2 = 0 by omega]
    omega
  have h21 : C (419904 * k + 317081) = 1259712 * k + 951244 := by
    unfold C
    simp [show (419904 * k + 317081) % 2 ≠ 0 by omega]
    omega
  have h22 : C (1259712 * k + 951244) = 629856 * k + 475622 := by
    unfold C
    simp [show (1259712 * k + 951244) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 475622) = 314928 * k + 237811 := by
    unfold C
    simp [show (629856 * k + 475622) % 2 = 0 by omega]
    omega
  have h24 : C (314928 * k + 237811) = 944784 * k + 713434 := by
    unfold C
    simp [show (314928 * k + 237811) % 2 ≠ 0 by omega]
    omega
  have h25 : C (944784 * k + 713434) = 472392 * k + 356717 := by
    unfold C
    simp [show (944784 * k + 713434) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 356717) = 1417176 * k + 1070152 := by
    unfold C
    simp [show (472392 * k + 356717) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 1070152) = 708588 * k + 535076 := by
    unfold C
    simp [show (1417176 * k + 1070152) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 535076) = 354294 * k + 267538 := by
    unfold C
    simp [show (708588 * k + 535076) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 267538) = 177147 * k + 133769 := by
    unfold C
    simp [show (354294 * k + 267538) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 197951) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 197951))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_197991 : ∀ k : Nat,
    iterate (262144 * k + 197991) 29 = 177147 * k + 133796 ∧
      177147 * k + 133796 < 262144 * k + 197991 := by
  intro k
  have h1 : C (262144 * k + 197991) = 786432 * k + 593974 := by
    unfold C
    simp [show (262144 * k + 197991) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 593974) = 393216 * k + 296987 := by
    unfold C
    simp [show (786432 * k + 593974) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 296987) = 1179648 * k + 890962 := by
    unfold C
    simp [show (393216 * k + 296987) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 890962) = 589824 * k + 445481 := by
    unfold C
    simp [show (1179648 * k + 890962) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 445481) = 1769472 * k + 1336444 := by
    unfold C
    simp [show (589824 * k + 445481) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 1336444) = 884736 * k + 668222 := by
    unfold C
    simp [show (1769472 * k + 1336444) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 668222) = 442368 * k + 334111 := by
    unfold C
    simp [show (884736 * k + 668222) % 2 = 0 by omega]
    omega
  have h8 : C (442368 * k + 334111) = 1327104 * k + 1002334 := by
    unfold C
    simp [show (442368 * k + 334111) % 2 ≠ 0 by omega]
    omega
  have h9 : C (1327104 * k + 1002334) = 663552 * k + 501167 := by
    unfold C
    simp [show (1327104 * k + 1002334) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 501167) = 1990656 * k + 1503502 := by
    unfold C
    simp [show (663552 * k + 501167) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 1503502) = 995328 * k + 751751 := by
    unfold C
    simp [show (1990656 * k + 1503502) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 751751) = 2985984 * k + 2255254 := by
    unfold C
    simp [show (995328 * k + 751751) % 2 ≠ 0 by omega]
    omega
  have h13 : C (2985984 * k + 2255254) = 1492992 * k + 1127627 := by
    unfold C
    simp [show (2985984 * k + 2255254) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 1127627) = 4478976 * k + 3382882 := by
    unfold C
    simp [show (1492992 * k + 1127627) % 2 ≠ 0 by omega]
    omega
  have h15 : C (4478976 * k + 3382882) = 2239488 * k + 1691441 := by
    unfold C
    simp [show (4478976 * k + 3382882) % 2 = 0 by omega]
    omega
  have h16 : C (2239488 * k + 1691441) = 6718464 * k + 5074324 := by
    unfold C
    simp [show (2239488 * k + 1691441) % 2 ≠ 0 by omega]
    omega
  have h17 : C (6718464 * k + 5074324) = 3359232 * k + 2537162 := by
    unfold C
    simp [show (6718464 * k + 5074324) % 2 = 0 by omega]
    omega
  have h18 : C (3359232 * k + 2537162) = 1679616 * k + 1268581 := by
    unfold C
    simp [show (3359232 * k + 2537162) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 1268581) = 5038848 * k + 3805744 := by
    unfold C
    simp [show (1679616 * k + 1268581) % 2 ≠ 0 by omega]
    omega
  have h20 : C (5038848 * k + 3805744) = 2519424 * k + 1902872 := by
    unfold C
    simp [show (5038848 * k + 3805744) % 2 = 0 by omega]
    omega
  have h21 : C (2519424 * k + 1902872) = 1259712 * k + 951436 := by
    unfold C
    simp [show (2519424 * k + 1902872) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 951436) = 629856 * k + 475718 := by
    unfold C
    simp [show (1259712 * k + 951436) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 475718) = 314928 * k + 237859 := by
    unfold C
    simp [show (629856 * k + 475718) % 2 = 0 by omega]
    omega
  have h24 : C (314928 * k + 237859) = 944784 * k + 713578 := by
    unfold C
    simp [show (314928 * k + 237859) % 2 ≠ 0 by omega]
    omega
  have h25 : C (944784 * k + 713578) = 472392 * k + 356789 := by
    unfold C
    simp [show (944784 * k + 713578) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 356789) = 1417176 * k + 1070368 := by
    unfold C
    simp [show (472392 * k + 356789) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 1070368) = 708588 * k + 535184 := by
    unfold C
    simp [show (1417176 * k + 1070368) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 535184) = 354294 * k + 267592 := by
    unfold C
    simp [show (708588 * k + 535184) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 267592) = 177147 * k + 133796 := by
    unfold C
    simp [show (354294 * k + 267592) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 197991) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 197991))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_198111 : ∀ k : Nat,
    iterate (262144 * k + 198111) 29 = 177147 * k + 133877 ∧
      177147 * k + 133877 < 262144 * k + 198111 := by
  intro k
  have h1 : C (262144 * k + 198111) = 786432 * k + 594334 := by
    unfold C
    simp [show (262144 * k + 198111) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 594334) = 393216 * k + 297167 := by
    unfold C
    simp [show (786432 * k + 594334) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 297167) = 1179648 * k + 891502 := by
    unfold C
    simp [show (393216 * k + 297167) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 891502) = 589824 * k + 445751 := by
    unfold C
    simp [show (1179648 * k + 891502) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 445751) = 1769472 * k + 1337254 := by
    unfold C
    simp [show (589824 * k + 445751) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 1337254) = 884736 * k + 668627 := by
    unfold C
    simp [show (1769472 * k + 1337254) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 668627) = 2654208 * k + 2005882 := by
    unfold C
    simp [show (884736 * k + 668627) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 2005882) = 1327104 * k + 1002941 := by
    unfold C
    simp [show (2654208 * k + 2005882) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 1002941) = 3981312 * k + 3008824 := by
    unfold C
    simp [show (1327104 * k + 1002941) % 2 ≠ 0 by omega]
    omega
  have h10 : C (3981312 * k + 3008824) = 1990656 * k + 1504412 := by
    unfold C
    simp [show (3981312 * k + 3008824) % 2 = 0 by omega]
    omega
  have h11 : C (1990656 * k + 1504412) = 995328 * k + 752206 := by
    unfold C
    simp [show (1990656 * k + 1504412) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 752206) = 497664 * k + 376103 := by
    unfold C
    simp [show (995328 * k + 752206) % 2 = 0 by omega]
    omega
  have h13 : C (497664 * k + 376103) = 1492992 * k + 1128310 := by
    unfold C
    simp [show (497664 * k + 376103) % 2 ≠ 0 by omega]
    omega
  have h14 : C (1492992 * k + 1128310) = 746496 * k + 564155 := by
    unfold C
    simp [show (1492992 * k + 1128310) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 564155) = 2239488 * k + 1692466 := by
    unfold C
    simp [show (746496 * k + 564155) % 2 ≠ 0 by omega]
    omega
  have h16 : C (2239488 * k + 1692466) = 1119744 * k + 846233 := by
    unfold C
    simp [show (2239488 * k + 1692466) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 846233) = 3359232 * k + 2538700 := by
    unfold C
    simp [show (1119744 * k + 846233) % 2 ≠ 0 by omega]
    omega
  have h18 : C (3359232 * k + 2538700) = 1679616 * k + 1269350 := by
    unfold C
    simp [show (3359232 * k + 2538700) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 1269350) = 839808 * k + 634675 := by
    unfold C
    simp [show (1679616 * k + 1269350) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 634675) = 2519424 * k + 1904026 := by
    unfold C
    simp [show (839808 * k + 634675) % 2 ≠ 0 by omega]
    omega
  have h21 : C (2519424 * k + 1904026) = 1259712 * k + 952013 := by
    unfold C
    simp [show (2519424 * k + 1904026) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 952013) = 3779136 * k + 2856040 := by
    unfold C
    simp [show (1259712 * k + 952013) % 2 ≠ 0 by omega]
    omega
  have h23 : C (3779136 * k + 2856040) = 1889568 * k + 1428020 := by
    unfold C
    simp [show (3779136 * k + 2856040) % 2 = 0 by omega]
    omega
  have h24 : C (1889568 * k + 1428020) = 944784 * k + 714010 := by
    unfold C
    simp [show (1889568 * k + 1428020) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 714010) = 472392 * k + 357005 := by
    unfold C
    simp [show (944784 * k + 714010) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 357005) = 1417176 * k + 1071016 := by
    unfold C
    simp [show (472392 * k + 357005) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 1071016) = 708588 * k + 535508 := by
    unfold C
    simp [show (1417176 * k + 1071016) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 535508) = 354294 * k + 267754 := by
    unfold C
    simp [show (708588 * k + 535508) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 267754) = 177147 * k + 133877 := by
    unfold C
    simp [show (354294 * k + 267754) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 198111) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 198111))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_200127 : ∀ k : Nat,
    iterate (262144 * k + 200127) 29 = 177147 * k + 135239 ∧
      177147 * k + 135239 < 262144 * k + 200127 := by
  intro k
  have h1 : C (262144 * k + 200127) = 786432 * k + 600382 := by
    unfold C
    simp [show (262144 * k + 200127) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 600382) = 393216 * k + 300191 := by
    unfold C
    simp [show (786432 * k + 600382) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 300191) = 1179648 * k + 900574 := by
    unfold C
    simp [show (393216 * k + 300191) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 900574) = 589824 * k + 450287 := by
    unfold C
    simp [show (1179648 * k + 900574) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 450287) = 1769472 * k + 1350862 := by
    unfold C
    simp [show (589824 * k + 450287) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 1350862) = 884736 * k + 675431 := by
    unfold C
    simp [show (1769472 * k + 1350862) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 675431) = 2654208 * k + 2026294 := by
    unfold C
    simp [show (884736 * k + 675431) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 2026294) = 1327104 * k + 1013147 := by
    unfold C
    simp [show (2654208 * k + 2026294) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 1013147) = 3981312 * k + 3039442 := by
    unfold C
    simp [show (1327104 * k + 1013147) % 2 ≠ 0 by omega]
    omega
  have h10 : C (3981312 * k + 3039442) = 1990656 * k + 1519721 := by
    unfold C
    simp [show (3981312 * k + 3039442) % 2 = 0 by omega]
    omega
  have h11 : C (1990656 * k + 1519721) = 5971968 * k + 4559164 := by
    unfold C
    simp [show (1990656 * k + 1519721) % 2 ≠ 0 by omega]
    omega
  have h12 : C (5971968 * k + 4559164) = 2985984 * k + 2279582 := by
    unfold C
    simp [show (5971968 * k + 4559164) % 2 = 0 by omega]
    omega
  have h13 : C (2985984 * k + 2279582) = 1492992 * k + 1139791 := by
    unfold C
    simp [show (2985984 * k + 2279582) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 1139791) = 4478976 * k + 3419374 := by
    unfold C
    simp [show (1492992 * k + 1139791) % 2 ≠ 0 by omega]
    omega
  have h15 : C (4478976 * k + 3419374) = 2239488 * k + 1709687 := by
    unfold C
    simp [show (4478976 * k + 3419374) % 2 = 0 by omega]
    omega
  have h16 : C (2239488 * k + 1709687) = 6718464 * k + 5129062 := by
    unfold C
    simp [show (2239488 * k + 1709687) % 2 ≠ 0 by omega]
    omega
  have h17 : C (6718464 * k + 5129062) = 3359232 * k + 2564531 := by
    unfold C
    simp [show (6718464 * k + 5129062) % 2 = 0 by omega]
    omega
  have h18 : C (3359232 * k + 2564531) = 10077696 * k + 7693594 := by
    unfold C
    simp [show (3359232 * k + 2564531) % 2 ≠ 0 by omega]
    omega
  have h19 : C (10077696 * k + 7693594) = 5038848 * k + 3846797 := by
    unfold C
    simp [show (10077696 * k + 7693594) % 2 = 0 by omega]
    omega
  have h20 : C (5038848 * k + 3846797) = 15116544 * k + 11540392 := by
    unfold C
    simp [show (5038848 * k + 3846797) % 2 ≠ 0 by omega]
    omega
  have h21 : C (15116544 * k + 11540392) = 7558272 * k + 5770196 := by
    unfold C
    simp [show (15116544 * k + 11540392) % 2 = 0 by omega]
    omega
  have h22 : C (7558272 * k + 5770196) = 3779136 * k + 2885098 := by
    unfold C
    simp [show (7558272 * k + 5770196) % 2 = 0 by omega]
    omega
  have h23 : C (3779136 * k + 2885098) = 1889568 * k + 1442549 := by
    unfold C
    simp [show (3779136 * k + 2885098) % 2 = 0 by omega]
    omega
  have h24 : C (1889568 * k + 1442549) = 5668704 * k + 4327648 := by
    unfold C
    simp [show (1889568 * k + 1442549) % 2 ≠ 0 by omega]
    omega
  have h25 : C (5668704 * k + 4327648) = 2834352 * k + 2163824 := by
    unfold C
    simp [show (5668704 * k + 4327648) % 2 = 0 by omega]
    omega
  have h26 : C (2834352 * k + 2163824) = 1417176 * k + 1081912 := by
    unfold C
    simp [show (2834352 * k + 2163824) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 1081912) = 708588 * k + 540956 := by
    unfold C
    simp [show (1417176 * k + 1081912) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 540956) = 354294 * k + 270478 := by
    unfold C
    simp [show (708588 * k + 540956) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 270478) = 177147 * k + 135239 := by
    unfold C
    simp [show (354294 * k + 270478) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 200127) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 200127))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_200539 : ∀ k : Nat,
    iterate (262144 * k + 200539) 29 = 177147 * k + 135518 ∧
      177147 * k + 135518 < 262144 * k + 200539 := by
  intro k
  have h1 : C (262144 * k + 200539) = 786432 * k + 601618 := by
    unfold C
    simp [show (262144 * k + 200539) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 601618) = 393216 * k + 300809 := by
    unfold C
    simp [show (786432 * k + 601618) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 300809) = 1179648 * k + 902428 := by
    unfold C
    simp [show (393216 * k + 300809) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 902428) = 589824 * k + 451214 := by
    unfold C
    simp [show (1179648 * k + 902428) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 451214) = 294912 * k + 225607 := by
    unfold C
    simp [show (589824 * k + 451214) % 2 = 0 by omega]
    omega
  have h6 : C (294912 * k + 225607) = 884736 * k + 676822 := by
    unfold C
    simp [show (294912 * k + 225607) % 2 ≠ 0 by omega]
    omega
  have h7 : C (884736 * k + 676822) = 442368 * k + 338411 := by
    unfold C
    simp [show (884736 * k + 676822) % 2 = 0 by omega]
    omega
  have h8 : C (442368 * k + 338411) = 1327104 * k + 1015234 := by
    unfold C
    simp [show (442368 * k + 338411) % 2 ≠ 0 by omega]
    omega
  have h9 : C (1327104 * k + 1015234) = 663552 * k + 507617 := by
    unfold C
    simp [show (1327104 * k + 1015234) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 507617) = 1990656 * k + 1522852 := by
    unfold C
    simp [show (663552 * k + 507617) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 1522852) = 995328 * k + 761426 := by
    unfold C
    simp [show (1990656 * k + 1522852) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 761426) = 497664 * k + 380713 := by
    unfold C
    simp [show (995328 * k + 761426) % 2 = 0 by omega]
    omega
  have h13 : C (497664 * k + 380713) = 1492992 * k + 1142140 := by
    unfold C
    simp [show (497664 * k + 380713) % 2 ≠ 0 by omega]
    omega
  have h14 : C (1492992 * k + 1142140) = 746496 * k + 571070 := by
    unfold C
    simp [show (1492992 * k + 1142140) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 571070) = 373248 * k + 285535 := by
    unfold C
    simp [show (746496 * k + 571070) % 2 = 0 by omega]
    omega
  have h16 : C (373248 * k + 285535) = 1119744 * k + 856606 := by
    unfold C
    simp [show (373248 * k + 285535) % 2 ≠ 0 by omega]
    omega
  have h17 : C (1119744 * k + 856606) = 559872 * k + 428303 := by
    unfold C
    simp [show (1119744 * k + 856606) % 2 = 0 by omega]
    omega
  have h18 : C (559872 * k + 428303) = 1679616 * k + 1284910 := by
    unfold C
    simp [show (559872 * k + 428303) % 2 ≠ 0 by omega]
    omega
  have h19 : C (1679616 * k + 1284910) = 839808 * k + 642455 := by
    unfold C
    simp [show (1679616 * k + 1284910) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 642455) = 2519424 * k + 1927366 := by
    unfold C
    simp [show (839808 * k + 642455) % 2 ≠ 0 by omega]
    omega
  have h21 : C (2519424 * k + 1927366) = 1259712 * k + 963683 := by
    unfold C
    simp [show (2519424 * k + 1927366) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 963683) = 3779136 * k + 2891050 := by
    unfold C
    simp [show (1259712 * k + 963683) % 2 ≠ 0 by omega]
    omega
  have h23 : C (3779136 * k + 2891050) = 1889568 * k + 1445525 := by
    unfold C
    simp [show (3779136 * k + 2891050) % 2 = 0 by omega]
    omega
  have h24 : C (1889568 * k + 1445525) = 5668704 * k + 4336576 := by
    unfold C
    simp [show (1889568 * k + 1445525) % 2 ≠ 0 by omega]
    omega
  have h25 : C (5668704 * k + 4336576) = 2834352 * k + 2168288 := by
    unfold C
    simp [show (5668704 * k + 4336576) % 2 = 0 by omega]
    omega
  have h26 : C (2834352 * k + 2168288) = 1417176 * k + 1084144 := by
    unfold C
    simp [show (2834352 * k + 2168288) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 1084144) = 708588 * k + 542072 := by
    unfold C
    simp [show (1417176 * k + 1084144) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 542072) = 354294 * k + 271036 := by
    unfold C
    simp [show (708588 * k + 542072) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 271036) = 177147 * k + 135518 := by
    unfold C
    simp [show (354294 * k + 271036) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 200539) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 200539))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_200955 : ∀ k : Nat,
    iterate (262144 * k + 200955) 29 = 177147 * k + 135799 ∧
      177147 * k + 135799 < 262144 * k + 200955 := by
  intro k
  have h1 : C (262144 * k + 200955) = 786432 * k + 602866 := by
    unfold C
    simp [show (262144 * k + 200955) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 602866) = 393216 * k + 301433 := by
    unfold C
    simp [show (786432 * k + 602866) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 301433) = 1179648 * k + 904300 := by
    unfold C
    simp [show (393216 * k + 301433) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 904300) = 589824 * k + 452150 := by
    unfold C
    simp [show (1179648 * k + 904300) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 452150) = 294912 * k + 226075 := by
    unfold C
    simp [show (589824 * k + 452150) % 2 = 0 by omega]
    omega
  have h6 : C (294912 * k + 226075) = 884736 * k + 678226 := by
    unfold C
    simp [show (294912 * k + 226075) % 2 ≠ 0 by omega]
    omega
  have h7 : C (884736 * k + 678226) = 442368 * k + 339113 := by
    unfold C
    simp [show (884736 * k + 678226) % 2 = 0 by omega]
    omega
  have h8 : C (442368 * k + 339113) = 1327104 * k + 1017340 := by
    unfold C
    simp [show (442368 * k + 339113) % 2 ≠ 0 by omega]
    omega
  have h9 : C (1327104 * k + 1017340) = 663552 * k + 508670 := by
    unfold C
    simp [show (1327104 * k + 1017340) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 508670) = 331776 * k + 254335 := by
    unfold C
    simp [show (663552 * k + 508670) % 2 = 0 by omega]
    omega
  have h11 : C (331776 * k + 254335) = 995328 * k + 763006 := by
    unfold C
    simp [show (331776 * k + 254335) % 2 ≠ 0 by omega]
    omega
  have h12 : C (995328 * k + 763006) = 497664 * k + 381503 := by
    unfold C
    simp [show (995328 * k + 763006) % 2 = 0 by omega]
    omega
  have h13 : C (497664 * k + 381503) = 1492992 * k + 1144510 := by
    unfold C
    simp [show (497664 * k + 381503) % 2 ≠ 0 by omega]
    omega
  have h14 : C (1492992 * k + 1144510) = 746496 * k + 572255 := by
    unfold C
    simp [show (1492992 * k + 1144510) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 572255) = 2239488 * k + 1716766 := by
    unfold C
    simp [show (746496 * k + 572255) % 2 ≠ 0 by omega]
    omega
  have h16 : C (2239488 * k + 1716766) = 1119744 * k + 858383 := by
    unfold C
    simp [show (2239488 * k + 1716766) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 858383) = 3359232 * k + 2575150 := by
    unfold C
    simp [show (1119744 * k + 858383) % 2 ≠ 0 by omega]
    omega
  have h18 : C (3359232 * k + 2575150) = 1679616 * k + 1287575 := by
    unfold C
    simp [show (3359232 * k + 2575150) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 1287575) = 5038848 * k + 3862726 := by
    unfold C
    simp [show (1679616 * k + 1287575) % 2 ≠ 0 by omega]
    omega
  have h20 : C (5038848 * k + 3862726) = 2519424 * k + 1931363 := by
    unfold C
    simp [show (5038848 * k + 3862726) % 2 = 0 by omega]
    omega
  have h21 : C (2519424 * k + 1931363) = 7558272 * k + 5794090 := by
    unfold C
    simp [show (2519424 * k + 1931363) % 2 ≠ 0 by omega]
    omega
  have h22 : C (7558272 * k + 5794090) = 3779136 * k + 2897045 := by
    unfold C
    simp [show (7558272 * k + 5794090) % 2 = 0 by omega]
    omega
  have h23 : C (3779136 * k + 2897045) = 11337408 * k + 8691136 := by
    unfold C
    simp [show (3779136 * k + 2897045) % 2 ≠ 0 by omega]
    omega
  have h24 : C (11337408 * k + 8691136) = 5668704 * k + 4345568 := by
    unfold C
    simp [show (11337408 * k + 8691136) % 2 = 0 by omega]
    omega
  have h25 : C (5668704 * k + 4345568) = 2834352 * k + 2172784 := by
    unfold C
    simp [show (5668704 * k + 4345568) % 2 = 0 by omega]
    omega
  have h26 : C (2834352 * k + 2172784) = 1417176 * k + 1086392 := by
    unfold C
    simp [show (2834352 * k + 2172784) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 1086392) = 708588 * k + 543196 := by
    unfold C
    simp [show (1417176 * k + 1086392) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 543196) = 354294 * k + 271598 := by
    unfold C
    simp [show (708588 * k + 543196) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 271598) = 177147 * k + 135799 := by
    unfold C
    simp [show (354294 * k + 271598) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 200955) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 200955))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_201307 : ∀ k : Nat,
    iterate (262144 * k + 201307) 29 = 177147 * k + 136037 ∧
      177147 * k + 136037 < 262144 * k + 201307 := by
  intro k
  have h1 : C (262144 * k + 201307) = 786432 * k + 603922 := by
    unfold C
    simp [show (262144 * k + 201307) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 603922) = 393216 * k + 301961 := by
    unfold C
    simp [show (786432 * k + 603922) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 301961) = 1179648 * k + 905884 := by
    unfold C
    simp [show (393216 * k + 301961) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 905884) = 589824 * k + 452942 := by
    unfold C
    simp [show (1179648 * k + 905884) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 452942) = 294912 * k + 226471 := by
    unfold C
    simp [show (589824 * k + 452942) % 2 = 0 by omega]
    omega
  have h6 : C (294912 * k + 226471) = 884736 * k + 679414 := by
    unfold C
    simp [show (294912 * k + 226471) % 2 ≠ 0 by omega]
    omega
  have h7 : C (884736 * k + 679414) = 442368 * k + 339707 := by
    unfold C
    simp [show (884736 * k + 679414) % 2 = 0 by omega]
    omega
  have h8 : C (442368 * k + 339707) = 1327104 * k + 1019122 := by
    unfold C
    simp [show (442368 * k + 339707) % 2 ≠ 0 by omega]
    omega
  have h9 : C (1327104 * k + 1019122) = 663552 * k + 509561 := by
    unfold C
    simp [show (1327104 * k + 1019122) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 509561) = 1990656 * k + 1528684 := by
    unfold C
    simp [show (663552 * k + 509561) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 1528684) = 995328 * k + 764342 := by
    unfold C
    simp [show (1990656 * k + 1528684) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 764342) = 497664 * k + 382171 := by
    unfold C
    simp [show (995328 * k + 764342) % 2 = 0 by omega]
    omega
  have h13 : C (497664 * k + 382171) = 1492992 * k + 1146514 := by
    unfold C
    simp [show (497664 * k + 382171) % 2 ≠ 0 by omega]
    omega
  have h14 : C (1492992 * k + 1146514) = 746496 * k + 573257 := by
    unfold C
    simp [show (1492992 * k + 1146514) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 573257) = 2239488 * k + 1719772 := by
    unfold C
    simp [show (746496 * k + 573257) % 2 ≠ 0 by omega]
    omega
  have h16 : C (2239488 * k + 1719772) = 1119744 * k + 859886 := by
    unfold C
    simp [show (2239488 * k + 1719772) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 859886) = 559872 * k + 429943 := by
    unfold C
    simp [show (1119744 * k + 859886) % 2 = 0 by omega]
    omega
  have h18 : C (559872 * k + 429943) = 1679616 * k + 1289830 := by
    unfold C
    simp [show (559872 * k + 429943) % 2 ≠ 0 by omega]
    omega
  have h19 : C (1679616 * k + 1289830) = 839808 * k + 644915 := by
    unfold C
    simp [show (1679616 * k + 1289830) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 644915) = 2519424 * k + 1934746 := by
    unfold C
    simp [show (839808 * k + 644915) % 2 ≠ 0 by omega]
    omega
  have h21 : C (2519424 * k + 1934746) = 1259712 * k + 967373 := by
    unfold C
    simp [show (2519424 * k + 1934746) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 967373) = 3779136 * k + 2902120 := by
    unfold C
    simp [show (1259712 * k + 967373) % 2 ≠ 0 by omega]
    omega
  have h23 : C (3779136 * k + 2902120) = 1889568 * k + 1451060 := by
    unfold C
    simp [show (3779136 * k + 2902120) % 2 = 0 by omega]
    omega
  have h24 : C (1889568 * k + 1451060) = 944784 * k + 725530 := by
    unfold C
    simp [show (1889568 * k + 1451060) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 725530) = 472392 * k + 362765 := by
    unfold C
    simp [show (944784 * k + 725530) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 362765) = 1417176 * k + 1088296 := by
    unfold C
    simp [show (472392 * k + 362765) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 1088296) = 708588 * k + 544148 := by
    unfold C
    simp [show (1417176 * k + 1088296) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 544148) = 354294 * k + 272074 := by
    unfold C
    simp [show (708588 * k + 544148) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 272074) = 177147 * k + 136037 := by
    unfold C
    simp [show (354294 * k + 272074) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 201307) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 201307))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_201663 : ∀ k : Nat,
    iterate (262144 * k + 201663) 29 = 177147 * k + 136277 ∧
      177147 * k + 136277 < 262144 * k + 201663 := by
  intro k
  have h1 : C (262144 * k + 201663) = 786432 * k + 604990 := by
    unfold C
    simp [show (262144 * k + 201663) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 604990) = 393216 * k + 302495 := by
    unfold C
    simp [show (786432 * k + 604990) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 302495) = 1179648 * k + 907486 := by
    unfold C
    simp [show (393216 * k + 302495) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 907486) = 589824 * k + 453743 := by
    unfold C
    simp [show (1179648 * k + 907486) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 453743) = 1769472 * k + 1361230 := by
    unfold C
    simp [show (589824 * k + 453743) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 1361230) = 884736 * k + 680615 := by
    unfold C
    simp [show (1769472 * k + 1361230) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 680615) = 2654208 * k + 2041846 := by
    unfold C
    simp [show (884736 * k + 680615) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 2041846) = 1327104 * k + 1020923 := by
    unfold C
    simp [show (2654208 * k + 2041846) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 1020923) = 3981312 * k + 3062770 := by
    unfold C
    simp [show (1327104 * k + 1020923) % 2 ≠ 0 by omega]
    omega
  have h10 : C (3981312 * k + 3062770) = 1990656 * k + 1531385 := by
    unfold C
    simp [show (3981312 * k + 3062770) % 2 = 0 by omega]
    omega
  have h11 : C (1990656 * k + 1531385) = 5971968 * k + 4594156 := by
    unfold C
    simp [show (1990656 * k + 1531385) % 2 ≠ 0 by omega]
    omega
  have h12 : C (5971968 * k + 4594156) = 2985984 * k + 2297078 := by
    unfold C
    simp [show (5971968 * k + 4594156) % 2 = 0 by omega]
    omega
  have h13 : C (2985984 * k + 2297078) = 1492992 * k + 1148539 := by
    unfold C
    simp [show (2985984 * k + 2297078) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 1148539) = 4478976 * k + 3445618 := by
    unfold C
    simp [show (1492992 * k + 1148539) % 2 ≠ 0 by omega]
    omega
  have h15 : C (4478976 * k + 3445618) = 2239488 * k + 1722809 := by
    unfold C
    simp [show (4478976 * k + 3445618) % 2 = 0 by omega]
    omega
  have h16 : C (2239488 * k + 1722809) = 6718464 * k + 5168428 := by
    unfold C
    simp [show (2239488 * k + 1722809) % 2 ≠ 0 by omega]
    omega
  have h17 : C (6718464 * k + 5168428) = 3359232 * k + 2584214 := by
    unfold C
    simp [show (6718464 * k + 5168428) % 2 = 0 by omega]
    omega
  have h18 : C (3359232 * k + 2584214) = 1679616 * k + 1292107 := by
    unfold C
    simp [show (3359232 * k + 2584214) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 1292107) = 5038848 * k + 3876322 := by
    unfold C
    simp [show (1679616 * k + 1292107) % 2 ≠ 0 by omega]
    omega
  have h20 : C (5038848 * k + 3876322) = 2519424 * k + 1938161 := by
    unfold C
    simp [show (5038848 * k + 3876322) % 2 = 0 by omega]
    omega
  have h21 : C (2519424 * k + 1938161) = 7558272 * k + 5814484 := by
    unfold C
    simp [show (2519424 * k + 1938161) % 2 ≠ 0 by omega]
    omega
  have h22 : C (7558272 * k + 5814484) = 3779136 * k + 2907242 := by
    unfold C
    simp [show (7558272 * k + 5814484) % 2 = 0 by omega]
    omega
  have h23 : C (3779136 * k + 2907242) = 1889568 * k + 1453621 := by
    unfold C
    simp [show (3779136 * k + 2907242) % 2 = 0 by omega]
    omega
  have h24 : C (1889568 * k + 1453621) = 5668704 * k + 4360864 := by
    unfold C
    simp [show (1889568 * k + 1453621) % 2 ≠ 0 by omega]
    omega
  have h25 : C (5668704 * k + 4360864) = 2834352 * k + 2180432 := by
    unfold C
    simp [show (5668704 * k + 4360864) % 2 = 0 by omega]
    omega
  have h26 : C (2834352 * k + 2180432) = 1417176 * k + 1090216 := by
    unfold C
    simp [show (2834352 * k + 2180432) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 1090216) = 708588 * k + 545108 := by
    unfold C
    simp [show (1417176 * k + 1090216) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 545108) = 354294 * k + 272554 := by
    unfold C
    simp [show (708588 * k + 545108) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 272554) = 177147 * k + 136277 := by
    unfold C
    simp [show (354294 * k + 272554) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 201663) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 201663))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_201759 : ∀ k : Nat,
    iterate (262144 * k + 201759) 29 = 177147 * k + 136342 ∧
      177147 * k + 136342 < 262144 * k + 201759 := by
  intro k
  have h1 : C (262144 * k + 201759) = 786432 * k + 605278 := by
    unfold C
    simp [show (262144 * k + 201759) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 605278) = 393216 * k + 302639 := by
    unfold C
    simp [show (786432 * k + 605278) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 302639) = 1179648 * k + 907918 := by
    unfold C
    simp [show (393216 * k + 302639) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 907918) = 589824 * k + 453959 := by
    unfold C
    simp [show (1179648 * k + 907918) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 453959) = 1769472 * k + 1361878 := by
    unfold C
    simp [show (589824 * k + 453959) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 1361878) = 884736 * k + 680939 := by
    unfold C
    simp [show (1769472 * k + 1361878) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 680939) = 2654208 * k + 2042818 := by
    unfold C
    simp [show (884736 * k + 680939) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 2042818) = 1327104 * k + 1021409 := by
    unfold C
    simp [show (2654208 * k + 2042818) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 1021409) = 3981312 * k + 3064228 := by
    unfold C
    simp [show (1327104 * k + 1021409) % 2 ≠ 0 by omega]
    omega
  have h10 : C (3981312 * k + 3064228) = 1990656 * k + 1532114 := by
    unfold C
    simp [show (3981312 * k + 3064228) % 2 = 0 by omega]
    omega
  have h11 : C (1990656 * k + 1532114) = 995328 * k + 766057 := by
    unfold C
    simp [show (1990656 * k + 1532114) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 766057) = 2985984 * k + 2298172 := by
    unfold C
    simp [show (995328 * k + 766057) % 2 ≠ 0 by omega]
    omega
  have h13 : C (2985984 * k + 2298172) = 1492992 * k + 1149086 := by
    unfold C
    simp [show (2985984 * k + 2298172) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 1149086) = 746496 * k + 574543 := by
    unfold C
    simp [show (1492992 * k + 1149086) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 574543) = 2239488 * k + 1723630 := by
    unfold C
    simp [show (746496 * k + 574543) % 2 ≠ 0 by omega]
    omega
  have h16 : C (2239488 * k + 1723630) = 1119744 * k + 861815 := by
    unfold C
    simp [show (2239488 * k + 1723630) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 861815) = 3359232 * k + 2585446 := by
    unfold C
    simp [show (1119744 * k + 861815) % 2 ≠ 0 by omega]
    omega
  have h18 : C (3359232 * k + 2585446) = 1679616 * k + 1292723 := by
    unfold C
    simp [show (3359232 * k + 2585446) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 1292723) = 5038848 * k + 3878170 := by
    unfold C
    simp [show (1679616 * k + 1292723) % 2 ≠ 0 by omega]
    omega
  have h20 : C (5038848 * k + 3878170) = 2519424 * k + 1939085 := by
    unfold C
    simp [show (5038848 * k + 3878170) % 2 = 0 by omega]
    omega
  have h21 : C (2519424 * k + 1939085) = 7558272 * k + 5817256 := by
    unfold C
    simp [show (2519424 * k + 1939085) % 2 ≠ 0 by omega]
    omega
  have h22 : C (7558272 * k + 5817256) = 3779136 * k + 2908628 := by
    unfold C
    simp [show (7558272 * k + 5817256) % 2 = 0 by omega]
    omega
  have h23 : C (3779136 * k + 2908628) = 1889568 * k + 1454314 := by
    unfold C
    simp [show (3779136 * k + 2908628) % 2 = 0 by omega]
    omega
  have h24 : C (1889568 * k + 1454314) = 944784 * k + 727157 := by
    unfold C
    simp [show (1889568 * k + 1454314) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 727157) = 2834352 * k + 2181472 := by
    unfold C
    simp [show (944784 * k + 727157) % 2 ≠ 0 by omega]
    omega
  have h26 : C (2834352 * k + 2181472) = 1417176 * k + 1090736 := by
    unfold C
    simp [show (2834352 * k + 2181472) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 1090736) = 708588 * k + 545368 := by
    unfold C
    simp [show (1417176 * k + 1090736) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 545368) = 354294 * k + 272684 := by
    unfold C
    simp [show (708588 * k + 545368) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 272684) = 177147 * k + 136342 := by
    unfold C
    simp [show (354294 * k + 272684) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 201759) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 201759))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

end CollatzM18Shard037
