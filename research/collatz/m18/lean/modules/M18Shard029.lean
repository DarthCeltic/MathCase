import Mathlib.Data.Nat.Prime.Basic

namespace CollatzM18Shard029

def C (n : Nat) : Nat := if n % 2 = 0 then n / 2 else 3 * n + 1

def iterate (n t : Nat) : Nat := Nat.rec n (fun _ previous => C previous) t

theorem descent_mod262144_148607 : ∀ k : Nat,
    iterate (262144 * k + 148607) 29 = 177147 * k + 100424 ∧
      177147 * k + 100424 < 262144 * k + 148607 := by
  intro k
  have h1 : C (262144 * k + 148607) = 786432 * k + 445822 := by
    unfold C
    simp [show (262144 * k + 148607) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 445822) = 393216 * k + 222911 := by
    unfold C
    simp [show (786432 * k + 445822) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 222911) = 1179648 * k + 668734 := by
    unfold C
    simp [show (393216 * k + 222911) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 668734) = 589824 * k + 334367 := by
    unfold C
    simp [show (1179648 * k + 668734) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 334367) = 1769472 * k + 1003102 := by
    unfold C
    simp [show (589824 * k + 334367) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 1003102) = 884736 * k + 501551 := by
    unfold C
    simp [show (1769472 * k + 1003102) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 501551) = 2654208 * k + 1504654 := by
    unfold C
    simp [show (884736 * k + 501551) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 1504654) = 1327104 * k + 752327 := by
    unfold C
    simp [show (2654208 * k + 1504654) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 752327) = 3981312 * k + 2256982 := by
    unfold C
    simp [show (1327104 * k + 752327) % 2 ≠ 0 by omega]
    omega
  have h10 : C (3981312 * k + 2256982) = 1990656 * k + 1128491 := by
    unfold C
    simp [show (3981312 * k + 2256982) % 2 = 0 by omega]
    omega
  have h11 : C (1990656 * k + 1128491) = 5971968 * k + 3385474 := by
    unfold C
    simp [show (1990656 * k + 1128491) % 2 ≠ 0 by omega]
    omega
  have h12 : C (5971968 * k + 3385474) = 2985984 * k + 1692737 := by
    unfold C
    simp [show (5971968 * k + 3385474) % 2 = 0 by omega]
    omega
  have h13 : C (2985984 * k + 1692737) = 8957952 * k + 5078212 := by
    unfold C
    simp [show (2985984 * k + 1692737) % 2 ≠ 0 by omega]
    omega
  have h14 : C (8957952 * k + 5078212) = 4478976 * k + 2539106 := by
    unfold C
    simp [show (8957952 * k + 5078212) % 2 = 0 by omega]
    omega
  have h15 : C (4478976 * k + 2539106) = 2239488 * k + 1269553 := by
    unfold C
    simp [show (4478976 * k + 2539106) % 2 = 0 by omega]
    omega
  have h16 : C (2239488 * k + 1269553) = 6718464 * k + 3808660 := by
    unfold C
    simp [show (2239488 * k + 1269553) % 2 ≠ 0 by omega]
    omega
  have h17 : C (6718464 * k + 3808660) = 3359232 * k + 1904330 := by
    unfold C
    simp [show (6718464 * k + 3808660) % 2 = 0 by omega]
    omega
  have h18 : C (3359232 * k + 1904330) = 1679616 * k + 952165 := by
    unfold C
    simp [show (3359232 * k + 1904330) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 952165) = 5038848 * k + 2856496 := by
    unfold C
    simp [show (1679616 * k + 952165) % 2 ≠ 0 by omega]
    omega
  have h20 : C (5038848 * k + 2856496) = 2519424 * k + 1428248 := by
    unfold C
    simp [show (5038848 * k + 2856496) % 2 = 0 by omega]
    omega
  have h21 : C (2519424 * k + 1428248) = 1259712 * k + 714124 := by
    unfold C
    simp [show (2519424 * k + 1428248) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 714124) = 629856 * k + 357062 := by
    unfold C
    simp [show (1259712 * k + 714124) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 357062) = 314928 * k + 178531 := by
    unfold C
    simp [show (629856 * k + 357062) % 2 = 0 by omega]
    omega
  have h24 : C (314928 * k + 178531) = 944784 * k + 535594 := by
    unfold C
    simp [show (314928 * k + 178531) % 2 ≠ 0 by omega]
    omega
  have h25 : C (944784 * k + 535594) = 472392 * k + 267797 := by
    unfold C
    simp [show (944784 * k + 535594) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 267797) = 1417176 * k + 803392 := by
    unfold C
    simp [show (472392 * k + 267797) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 803392) = 708588 * k + 401696 := by
    unfold C
    simp [show (1417176 * k + 803392) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 401696) = 354294 * k + 200848 := by
    unfold C
    simp [show (708588 * k + 401696) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 200848) = 177147 * k + 100424 := by
    unfold C
    simp [show (354294 * k + 200848) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 148607) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 148607))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_149951 : ∀ k : Nat,
    iterate (262144 * k + 149951) 29 = 177147 * k + 101332 ∧
      177147 * k + 101332 < 262144 * k + 149951 := by
  intro k
  have h1 : C (262144 * k + 149951) = 786432 * k + 449854 := by
    unfold C
    simp [show (262144 * k + 149951) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 449854) = 393216 * k + 224927 := by
    unfold C
    simp [show (786432 * k + 449854) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 224927) = 1179648 * k + 674782 := by
    unfold C
    simp [show (393216 * k + 224927) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 674782) = 589824 * k + 337391 := by
    unfold C
    simp [show (1179648 * k + 674782) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 337391) = 1769472 * k + 1012174 := by
    unfold C
    simp [show (589824 * k + 337391) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 1012174) = 884736 * k + 506087 := by
    unfold C
    simp [show (1769472 * k + 1012174) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 506087) = 2654208 * k + 1518262 := by
    unfold C
    simp [show (884736 * k + 506087) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 1518262) = 1327104 * k + 759131 := by
    unfold C
    simp [show (2654208 * k + 1518262) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 759131) = 3981312 * k + 2277394 := by
    unfold C
    simp [show (1327104 * k + 759131) % 2 ≠ 0 by omega]
    omega
  have h10 : C (3981312 * k + 2277394) = 1990656 * k + 1138697 := by
    unfold C
    simp [show (3981312 * k + 2277394) % 2 = 0 by omega]
    omega
  have h11 : C (1990656 * k + 1138697) = 5971968 * k + 3416092 := by
    unfold C
    simp [show (1990656 * k + 1138697) % 2 ≠ 0 by omega]
    omega
  have h12 : C (5971968 * k + 3416092) = 2985984 * k + 1708046 := by
    unfold C
    simp [show (5971968 * k + 3416092) % 2 = 0 by omega]
    omega
  have h13 : C (2985984 * k + 1708046) = 1492992 * k + 854023 := by
    unfold C
    simp [show (2985984 * k + 1708046) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 854023) = 4478976 * k + 2562070 := by
    unfold C
    simp [show (1492992 * k + 854023) % 2 ≠ 0 by omega]
    omega
  have h15 : C (4478976 * k + 2562070) = 2239488 * k + 1281035 := by
    unfold C
    simp [show (4478976 * k + 2562070) % 2 = 0 by omega]
    omega
  have h16 : C (2239488 * k + 1281035) = 6718464 * k + 3843106 := by
    unfold C
    simp [show (2239488 * k + 1281035) % 2 ≠ 0 by omega]
    omega
  have h17 : C (6718464 * k + 3843106) = 3359232 * k + 1921553 := by
    unfold C
    simp [show (6718464 * k + 3843106) % 2 = 0 by omega]
    omega
  have h18 : C (3359232 * k + 1921553) = 10077696 * k + 5764660 := by
    unfold C
    simp [show (3359232 * k + 1921553) % 2 ≠ 0 by omega]
    omega
  have h19 : C (10077696 * k + 5764660) = 5038848 * k + 2882330 := by
    unfold C
    simp [show (10077696 * k + 5764660) % 2 = 0 by omega]
    omega
  have h20 : C (5038848 * k + 2882330) = 2519424 * k + 1441165 := by
    unfold C
    simp [show (5038848 * k + 2882330) % 2 = 0 by omega]
    omega
  have h21 : C (2519424 * k + 1441165) = 7558272 * k + 4323496 := by
    unfold C
    simp [show (2519424 * k + 1441165) % 2 ≠ 0 by omega]
    omega
  have h22 : C (7558272 * k + 4323496) = 3779136 * k + 2161748 := by
    unfold C
    simp [show (7558272 * k + 4323496) % 2 = 0 by omega]
    omega
  have h23 : C (3779136 * k + 2161748) = 1889568 * k + 1080874 := by
    unfold C
    simp [show (3779136 * k + 2161748) % 2 = 0 by omega]
    omega
  have h24 : C (1889568 * k + 1080874) = 944784 * k + 540437 := by
    unfold C
    simp [show (1889568 * k + 1080874) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 540437) = 2834352 * k + 1621312 := by
    unfold C
    simp [show (944784 * k + 540437) % 2 ≠ 0 by omega]
    omega
  have h26 : C (2834352 * k + 1621312) = 1417176 * k + 810656 := by
    unfold C
    simp [show (2834352 * k + 1621312) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 810656) = 708588 * k + 405328 := by
    unfold C
    simp [show (1417176 * k + 810656) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 405328) = 354294 * k + 202664 := by
    unfold C
    simp [show (708588 * k + 405328) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 202664) = 177147 * k + 101332 := by
    unfold C
    simp [show (354294 * k + 202664) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 149951) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 149951))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_150463 : ∀ k : Nat,
    iterate (262144 * k + 150463) 29 = 177147 * k + 101678 ∧
      177147 * k + 101678 < 262144 * k + 150463 := by
  intro k
  have h1 : C (262144 * k + 150463) = 786432 * k + 451390 := by
    unfold C
    simp [show (262144 * k + 150463) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 451390) = 393216 * k + 225695 := by
    unfold C
    simp [show (786432 * k + 451390) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 225695) = 1179648 * k + 677086 := by
    unfold C
    simp [show (393216 * k + 225695) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 677086) = 589824 * k + 338543 := by
    unfold C
    simp [show (1179648 * k + 677086) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 338543) = 1769472 * k + 1015630 := by
    unfold C
    simp [show (589824 * k + 338543) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 1015630) = 884736 * k + 507815 := by
    unfold C
    simp [show (1769472 * k + 1015630) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 507815) = 2654208 * k + 1523446 := by
    unfold C
    simp [show (884736 * k + 507815) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 1523446) = 1327104 * k + 761723 := by
    unfold C
    simp [show (2654208 * k + 1523446) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 761723) = 3981312 * k + 2285170 := by
    unfold C
    simp [show (1327104 * k + 761723) % 2 ≠ 0 by omega]
    omega
  have h10 : C (3981312 * k + 2285170) = 1990656 * k + 1142585 := by
    unfold C
    simp [show (3981312 * k + 2285170) % 2 = 0 by omega]
    omega
  have h11 : C (1990656 * k + 1142585) = 5971968 * k + 3427756 := by
    unfold C
    simp [show (1990656 * k + 1142585) % 2 ≠ 0 by omega]
    omega
  have h12 : C (5971968 * k + 3427756) = 2985984 * k + 1713878 := by
    unfold C
    simp [show (5971968 * k + 3427756) % 2 = 0 by omega]
    omega
  have h13 : C (2985984 * k + 1713878) = 1492992 * k + 856939 := by
    unfold C
    simp [show (2985984 * k + 1713878) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 856939) = 4478976 * k + 2570818 := by
    unfold C
    simp [show (1492992 * k + 856939) % 2 ≠ 0 by omega]
    omega
  have h15 : C (4478976 * k + 2570818) = 2239488 * k + 1285409 := by
    unfold C
    simp [show (4478976 * k + 2570818) % 2 = 0 by omega]
    omega
  have h16 : C (2239488 * k + 1285409) = 6718464 * k + 3856228 := by
    unfold C
    simp [show (2239488 * k + 1285409) % 2 ≠ 0 by omega]
    omega
  have h17 : C (6718464 * k + 3856228) = 3359232 * k + 1928114 := by
    unfold C
    simp [show (6718464 * k + 3856228) % 2 = 0 by omega]
    omega
  have h18 : C (3359232 * k + 1928114) = 1679616 * k + 964057 := by
    unfold C
    simp [show (3359232 * k + 1928114) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 964057) = 5038848 * k + 2892172 := by
    unfold C
    simp [show (1679616 * k + 964057) % 2 ≠ 0 by omega]
    omega
  have h20 : C (5038848 * k + 2892172) = 2519424 * k + 1446086 := by
    unfold C
    simp [show (5038848 * k + 2892172) % 2 = 0 by omega]
    omega
  have h21 : C (2519424 * k + 1446086) = 1259712 * k + 723043 := by
    unfold C
    simp [show (2519424 * k + 1446086) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 723043) = 3779136 * k + 2169130 := by
    unfold C
    simp [show (1259712 * k + 723043) % 2 ≠ 0 by omega]
    omega
  have h23 : C (3779136 * k + 2169130) = 1889568 * k + 1084565 := by
    unfold C
    simp [show (3779136 * k + 2169130) % 2 = 0 by omega]
    omega
  have h24 : C (1889568 * k + 1084565) = 5668704 * k + 3253696 := by
    unfold C
    simp [show (1889568 * k + 1084565) % 2 ≠ 0 by omega]
    omega
  have h25 : C (5668704 * k + 3253696) = 2834352 * k + 1626848 := by
    unfold C
    simp [show (5668704 * k + 3253696) % 2 = 0 by omega]
    omega
  have h26 : C (2834352 * k + 1626848) = 1417176 * k + 813424 := by
    unfold C
    simp [show (2834352 * k + 1626848) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 813424) = 708588 * k + 406712 := by
    unfold C
    simp [show (1417176 * k + 813424) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 406712) = 354294 * k + 203356 := by
    unfold C
    simp [show (708588 * k + 406712) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 203356) = 177147 * k + 101678 := by
    unfold C
    simp [show (354294 * k + 203356) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 150463) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 150463))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_150559 : ∀ k : Nat,
    iterate (262144 * k + 150559) 29 = 177147 * k + 101743 ∧
      177147 * k + 101743 < 262144 * k + 150559 := by
  intro k
  have h1 : C (262144 * k + 150559) = 786432 * k + 451678 := by
    unfold C
    simp [show (262144 * k + 150559) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 451678) = 393216 * k + 225839 := by
    unfold C
    simp [show (786432 * k + 451678) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 225839) = 1179648 * k + 677518 := by
    unfold C
    simp [show (393216 * k + 225839) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 677518) = 589824 * k + 338759 := by
    unfold C
    simp [show (1179648 * k + 677518) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 338759) = 1769472 * k + 1016278 := by
    unfold C
    simp [show (589824 * k + 338759) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 1016278) = 884736 * k + 508139 := by
    unfold C
    simp [show (1769472 * k + 1016278) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 508139) = 2654208 * k + 1524418 := by
    unfold C
    simp [show (884736 * k + 508139) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 1524418) = 1327104 * k + 762209 := by
    unfold C
    simp [show (2654208 * k + 1524418) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 762209) = 3981312 * k + 2286628 := by
    unfold C
    simp [show (1327104 * k + 762209) % 2 ≠ 0 by omega]
    omega
  have h10 : C (3981312 * k + 2286628) = 1990656 * k + 1143314 := by
    unfold C
    simp [show (3981312 * k + 2286628) % 2 = 0 by omega]
    omega
  have h11 : C (1990656 * k + 1143314) = 995328 * k + 571657 := by
    unfold C
    simp [show (1990656 * k + 1143314) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 571657) = 2985984 * k + 1714972 := by
    unfold C
    simp [show (995328 * k + 571657) % 2 ≠ 0 by omega]
    omega
  have h13 : C (2985984 * k + 1714972) = 1492992 * k + 857486 := by
    unfold C
    simp [show (2985984 * k + 1714972) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 857486) = 746496 * k + 428743 := by
    unfold C
    simp [show (1492992 * k + 857486) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 428743) = 2239488 * k + 1286230 := by
    unfold C
    simp [show (746496 * k + 428743) % 2 ≠ 0 by omega]
    omega
  have h16 : C (2239488 * k + 1286230) = 1119744 * k + 643115 := by
    unfold C
    simp [show (2239488 * k + 1286230) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 643115) = 3359232 * k + 1929346 := by
    unfold C
    simp [show (1119744 * k + 643115) % 2 ≠ 0 by omega]
    omega
  have h18 : C (3359232 * k + 1929346) = 1679616 * k + 964673 := by
    unfold C
    simp [show (3359232 * k + 1929346) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 964673) = 5038848 * k + 2894020 := by
    unfold C
    simp [show (1679616 * k + 964673) % 2 ≠ 0 by omega]
    omega
  have h20 : C (5038848 * k + 2894020) = 2519424 * k + 1447010 := by
    unfold C
    simp [show (5038848 * k + 2894020) % 2 = 0 by omega]
    omega
  have h21 : C (2519424 * k + 1447010) = 1259712 * k + 723505 := by
    unfold C
    simp [show (2519424 * k + 1447010) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 723505) = 3779136 * k + 2170516 := by
    unfold C
    simp [show (1259712 * k + 723505) % 2 ≠ 0 by omega]
    omega
  have h23 : C (3779136 * k + 2170516) = 1889568 * k + 1085258 := by
    unfold C
    simp [show (3779136 * k + 2170516) % 2 = 0 by omega]
    omega
  have h24 : C (1889568 * k + 1085258) = 944784 * k + 542629 := by
    unfold C
    simp [show (1889568 * k + 1085258) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 542629) = 2834352 * k + 1627888 := by
    unfold C
    simp [show (944784 * k + 542629) % 2 ≠ 0 by omega]
    omega
  have h26 : C (2834352 * k + 1627888) = 1417176 * k + 813944 := by
    unfold C
    simp [show (2834352 * k + 1627888) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 813944) = 708588 * k + 406972 := by
    unfold C
    simp [show (1417176 * k + 813944) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 406972) = 354294 * k + 203486 := by
    unfold C
    simp [show (708588 * k + 406972) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 203486) = 177147 * k + 101743 := by
    unfold C
    simp [show (354294 * k + 203486) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 150559) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 150559))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_151195 : ∀ k : Nat,
    iterate (262144 * k + 151195) 29 = 177147 * k + 102173 ∧
      177147 * k + 102173 < 262144 * k + 151195 := by
  intro k
  have h1 : C (262144 * k + 151195) = 786432 * k + 453586 := by
    unfold C
    simp [show (262144 * k + 151195) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 453586) = 393216 * k + 226793 := by
    unfold C
    simp [show (786432 * k + 453586) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 226793) = 1179648 * k + 680380 := by
    unfold C
    simp [show (393216 * k + 226793) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 680380) = 589824 * k + 340190 := by
    unfold C
    simp [show (1179648 * k + 680380) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 340190) = 294912 * k + 170095 := by
    unfold C
    simp [show (589824 * k + 340190) % 2 = 0 by omega]
    omega
  have h6 : C (294912 * k + 170095) = 884736 * k + 510286 := by
    unfold C
    simp [show (294912 * k + 170095) % 2 ≠ 0 by omega]
    omega
  have h7 : C (884736 * k + 510286) = 442368 * k + 255143 := by
    unfold C
    simp [show (884736 * k + 510286) % 2 = 0 by omega]
    omega
  have h8 : C (442368 * k + 255143) = 1327104 * k + 765430 := by
    unfold C
    simp [show (442368 * k + 255143) % 2 ≠ 0 by omega]
    omega
  have h9 : C (1327104 * k + 765430) = 663552 * k + 382715 := by
    unfold C
    simp [show (1327104 * k + 765430) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 382715) = 1990656 * k + 1148146 := by
    unfold C
    simp [show (663552 * k + 382715) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 1148146) = 995328 * k + 574073 := by
    unfold C
    simp [show (1990656 * k + 1148146) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 574073) = 2985984 * k + 1722220 := by
    unfold C
    simp [show (995328 * k + 574073) % 2 ≠ 0 by omega]
    omega
  have h13 : C (2985984 * k + 1722220) = 1492992 * k + 861110 := by
    unfold C
    simp [show (2985984 * k + 1722220) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 861110) = 746496 * k + 430555 := by
    unfold C
    simp [show (1492992 * k + 861110) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 430555) = 2239488 * k + 1291666 := by
    unfold C
    simp [show (746496 * k + 430555) % 2 ≠ 0 by omega]
    omega
  have h16 : C (2239488 * k + 1291666) = 1119744 * k + 645833 := by
    unfold C
    simp [show (2239488 * k + 1291666) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 645833) = 3359232 * k + 1937500 := by
    unfold C
    simp [show (1119744 * k + 645833) % 2 ≠ 0 by omega]
    omega
  have h18 : C (3359232 * k + 1937500) = 1679616 * k + 968750 := by
    unfold C
    simp [show (3359232 * k + 1937500) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 968750) = 839808 * k + 484375 := by
    unfold C
    simp [show (1679616 * k + 968750) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 484375) = 2519424 * k + 1453126 := by
    unfold C
    simp [show (839808 * k + 484375) % 2 ≠ 0 by omega]
    omega
  have h21 : C (2519424 * k + 1453126) = 1259712 * k + 726563 := by
    unfold C
    simp [show (2519424 * k + 1453126) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 726563) = 3779136 * k + 2179690 := by
    unfold C
    simp [show (1259712 * k + 726563) % 2 ≠ 0 by omega]
    omega
  have h23 : C (3779136 * k + 2179690) = 1889568 * k + 1089845 := by
    unfold C
    simp [show (3779136 * k + 2179690) % 2 = 0 by omega]
    omega
  have h24 : C (1889568 * k + 1089845) = 5668704 * k + 3269536 := by
    unfold C
    simp [show (1889568 * k + 1089845) % 2 ≠ 0 by omega]
    omega
  have h25 : C (5668704 * k + 3269536) = 2834352 * k + 1634768 := by
    unfold C
    simp [show (5668704 * k + 3269536) % 2 = 0 by omega]
    omega
  have h26 : C (2834352 * k + 1634768) = 1417176 * k + 817384 := by
    unfold C
    simp [show (2834352 * k + 1634768) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 817384) = 708588 * k + 408692 := by
    unfold C
    simp [show (1417176 * k + 817384) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 408692) = 354294 * k + 204346 := by
    unfold C
    simp [show (708588 * k + 408692) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 204346) = 177147 * k + 102173 := by
    unfold C
    simp [show (354294 * k + 204346) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 151195) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 151195))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_151643 : ∀ k : Nat,
    iterate (262144 * k + 151643) 29 = 177147 * k + 102476 ∧
      177147 * k + 102476 < 262144 * k + 151643 := by
  intro k
  have h1 : C (262144 * k + 151643) = 786432 * k + 454930 := by
    unfold C
    simp [show (262144 * k + 151643) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 454930) = 393216 * k + 227465 := by
    unfold C
    simp [show (786432 * k + 454930) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 227465) = 1179648 * k + 682396 := by
    unfold C
    simp [show (393216 * k + 227465) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 682396) = 589824 * k + 341198 := by
    unfold C
    simp [show (1179648 * k + 682396) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 341198) = 294912 * k + 170599 := by
    unfold C
    simp [show (589824 * k + 341198) % 2 = 0 by omega]
    omega
  have h6 : C (294912 * k + 170599) = 884736 * k + 511798 := by
    unfold C
    simp [show (294912 * k + 170599) % 2 ≠ 0 by omega]
    omega
  have h7 : C (884736 * k + 511798) = 442368 * k + 255899 := by
    unfold C
    simp [show (884736 * k + 511798) % 2 = 0 by omega]
    omega
  have h8 : C (442368 * k + 255899) = 1327104 * k + 767698 := by
    unfold C
    simp [show (442368 * k + 255899) % 2 ≠ 0 by omega]
    omega
  have h9 : C (1327104 * k + 767698) = 663552 * k + 383849 := by
    unfold C
    simp [show (1327104 * k + 767698) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 383849) = 1990656 * k + 1151548 := by
    unfold C
    simp [show (663552 * k + 383849) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 1151548) = 995328 * k + 575774 := by
    unfold C
    simp [show (1990656 * k + 1151548) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 575774) = 497664 * k + 287887 := by
    unfold C
    simp [show (995328 * k + 575774) % 2 = 0 by omega]
    omega
  have h13 : C (497664 * k + 287887) = 1492992 * k + 863662 := by
    unfold C
    simp [show (497664 * k + 287887) % 2 ≠ 0 by omega]
    omega
  have h14 : C (1492992 * k + 863662) = 746496 * k + 431831 := by
    unfold C
    simp [show (1492992 * k + 863662) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 431831) = 2239488 * k + 1295494 := by
    unfold C
    simp [show (746496 * k + 431831) % 2 ≠ 0 by omega]
    omega
  have h16 : C (2239488 * k + 1295494) = 1119744 * k + 647747 := by
    unfold C
    simp [show (2239488 * k + 1295494) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 647747) = 3359232 * k + 1943242 := by
    unfold C
    simp [show (1119744 * k + 647747) % 2 ≠ 0 by omega]
    omega
  have h18 : C (3359232 * k + 1943242) = 1679616 * k + 971621 := by
    unfold C
    simp [show (3359232 * k + 1943242) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 971621) = 5038848 * k + 2914864 := by
    unfold C
    simp [show (1679616 * k + 971621) % 2 ≠ 0 by omega]
    omega
  have h20 : C (5038848 * k + 2914864) = 2519424 * k + 1457432 := by
    unfold C
    simp [show (5038848 * k + 2914864) % 2 = 0 by omega]
    omega
  have h21 : C (2519424 * k + 1457432) = 1259712 * k + 728716 := by
    unfold C
    simp [show (2519424 * k + 1457432) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 728716) = 629856 * k + 364358 := by
    unfold C
    simp [show (1259712 * k + 728716) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 364358) = 314928 * k + 182179 := by
    unfold C
    simp [show (629856 * k + 364358) % 2 = 0 by omega]
    omega
  have h24 : C (314928 * k + 182179) = 944784 * k + 546538 := by
    unfold C
    simp [show (314928 * k + 182179) % 2 ≠ 0 by omega]
    omega
  have h25 : C (944784 * k + 546538) = 472392 * k + 273269 := by
    unfold C
    simp [show (944784 * k + 546538) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 273269) = 1417176 * k + 819808 := by
    unfold C
    simp [show (472392 * k + 273269) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 819808) = 708588 * k + 409904 := by
    unfold C
    simp [show (1417176 * k + 819808) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 409904) = 354294 * k + 204952 := by
    unfold C
    simp [show (708588 * k + 409904) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 204952) = 177147 * k + 102476 := by
    unfold C
    simp [show (354294 * k + 204952) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 151643) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 151643))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_151719 : ∀ k : Nat,
    iterate (262144 * k + 151719) 29 = 177147 * k + 102527 ∧
      177147 * k + 102527 < 262144 * k + 151719 := by
  intro k
  have h1 : C (262144 * k + 151719) = 786432 * k + 455158 := by
    unfold C
    simp [show (262144 * k + 151719) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 455158) = 393216 * k + 227579 := by
    unfold C
    simp [show (786432 * k + 455158) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 227579) = 1179648 * k + 682738 := by
    unfold C
    simp [show (393216 * k + 227579) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 682738) = 589824 * k + 341369 := by
    unfold C
    simp [show (1179648 * k + 682738) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 341369) = 1769472 * k + 1024108 := by
    unfold C
    simp [show (589824 * k + 341369) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 1024108) = 884736 * k + 512054 := by
    unfold C
    simp [show (1769472 * k + 1024108) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 512054) = 442368 * k + 256027 := by
    unfold C
    simp [show (884736 * k + 512054) % 2 = 0 by omega]
    omega
  have h8 : C (442368 * k + 256027) = 1327104 * k + 768082 := by
    unfold C
    simp [show (442368 * k + 256027) % 2 ≠ 0 by omega]
    omega
  have h9 : C (1327104 * k + 768082) = 663552 * k + 384041 := by
    unfold C
    simp [show (1327104 * k + 768082) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 384041) = 1990656 * k + 1152124 := by
    unfold C
    simp [show (663552 * k + 384041) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 1152124) = 995328 * k + 576062 := by
    unfold C
    simp [show (1990656 * k + 1152124) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 576062) = 497664 * k + 288031 := by
    unfold C
    simp [show (995328 * k + 576062) % 2 = 0 by omega]
    omega
  have h13 : C (497664 * k + 288031) = 1492992 * k + 864094 := by
    unfold C
    simp [show (497664 * k + 288031) % 2 ≠ 0 by omega]
    omega
  have h14 : C (1492992 * k + 864094) = 746496 * k + 432047 := by
    unfold C
    simp [show (1492992 * k + 864094) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 432047) = 2239488 * k + 1296142 := by
    unfold C
    simp [show (746496 * k + 432047) % 2 ≠ 0 by omega]
    omega
  have h16 : C (2239488 * k + 1296142) = 1119744 * k + 648071 := by
    unfold C
    simp [show (2239488 * k + 1296142) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 648071) = 3359232 * k + 1944214 := by
    unfold C
    simp [show (1119744 * k + 648071) % 2 ≠ 0 by omega]
    omega
  have h18 : C (3359232 * k + 1944214) = 1679616 * k + 972107 := by
    unfold C
    simp [show (3359232 * k + 1944214) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 972107) = 5038848 * k + 2916322 := by
    unfold C
    simp [show (1679616 * k + 972107) % 2 ≠ 0 by omega]
    omega
  have h20 : C (5038848 * k + 2916322) = 2519424 * k + 1458161 := by
    unfold C
    simp [show (5038848 * k + 2916322) % 2 = 0 by omega]
    omega
  have h21 : C (2519424 * k + 1458161) = 7558272 * k + 4374484 := by
    unfold C
    simp [show (2519424 * k + 1458161) % 2 ≠ 0 by omega]
    omega
  have h22 : C (7558272 * k + 4374484) = 3779136 * k + 2187242 := by
    unfold C
    simp [show (7558272 * k + 4374484) % 2 = 0 by omega]
    omega
  have h23 : C (3779136 * k + 2187242) = 1889568 * k + 1093621 := by
    unfold C
    simp [show (3779136 * k + 2187242) % 2 = 0 by omega]
    omega
  have h24 : C (1889568 * k + 1093621) = 5668704 * k + 3280864 := by
    unfold C
    simp [show (1889568 * k + 1093621) % 2 ≠ 0 by omega]
    omega
  have h25 : C (5668704 * k + 3280864) = 2834352 * k + 1640432 := by
    unfold C
    simp [show (5668704 * k + 3280864) % 2 = 0 by omega]
    omega
  have h26 : C (2834352 * k + 1640432) = 1417176 * k + 820216 := by
    unfold C
    simp [show (2834352 * k + 1640432) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 820216) = 708588 * k + 410108 := by
    unfold C
    simp [show (1417176 * k + 820216) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 410108) = 354294 * k + 205054 := by
    unfold C
    simp [show (708588 * k + 410108) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 205054) = 177147 * k + 102527 := by
    unfold C
    simp [show (354294 * k + 205054) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 151719) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 151719))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_151775 : ∀ k : Nat,
    iterate (262144 * k + 151775) 29 = 177147 * k + 102565 ∧
      177147 * k + 102565 < 262144 * k + 151775 := by
  intro k
  have h1 : C (262144 * k + 151775) = 786432 * k + 455326 := by
    unfold C
    simp [show (262144 * k + 151775) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 455326) = 393216 * k + 227663 := by
    unfold C
    simp [show (786432 * k + 455326) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 227663) = 1179648 * k + 682990 := by
    unfold C
    simp [show (393216 * k + 227663) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 682990) = 589824 * k + 341495 := by
    unfold C
    simp [show (1179648 * k + 682990) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 341495) = 1769472 * k + 1024486 := by
    unfold C
    simp [show (589824 * k + 341495) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 1024486) = 884736 * k + 512243 := by
    unfold C
    simp [show (1769472 * k + 1024486) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 512243) = 2654208 * k + 1536730 := by
    unfold C
    simp [show (884736 * k + 512243) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 1536730) = 1327104 * k + 768365 := by
    unfold C
    simp [show (2654208 * k + 1536730) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 768365) = 3981312 * k + 2305096 := by
    unfold C
    simp [show (1327104 * k + 768365) % 2 ≠ 0 by omega]
    omega
  have h10 : C (3981312 * k + 2305096) = 1990656 * k + 1152548 := by
    unfold C
    simp [show (3981312 * k + 2305096) % 2 = 0 by omega]
    omega
  have h11 : C (1990656 * k + 1152548) = 995328 * k + 576274 := by
    unfold C
    simp [show (1990656 * k + 1152548) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 576274) = 497664 * k + 288137 := by
    unfold C
    simp [show (995328 * k + 576274) % 2 = 0 by omega]
    omega
  have h13 : C (497664 * k + 288137) = 1492992 * k + 864412 := by
    unfold C
    simp [show (497664 * k + 288137) % 2 ≠ 0 by omega]
    omega
  have h14 : C (1492992 * k + 864412) = 746496 * k + 432206 := by
    unfold C
    simp [show (1492992 * k + 864412) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 432206) = 373248 * k + 216103 := by
    unfold C
    simp [show (746496 * k + 432206) % 2 = 0 by omega]
    omega
  have h16 : C (373248 * k + 216103) = 1119744 * k + 648310 := by
    unfold C
    simp [show (373248 * k + 216103) % 2 ≠ 0 by omega]
    omega
  have h17 : C (1119744 * k + 648310) = 559872 * k + 324155 := by
    unfold C
    simp [show (1119744 * k + 648310) % 2 = 0 by omega]
    omega
  have h18 : C (559872 * k + 324155) = 1679616 * k + 972466 := by
    unfold C
    simp [show (559872 * k + 324155) % 2 ≠ 0 by omega]
    omega
  have h19 : C (1679616 * k + 972466) = 839808 * k + 486233 := by
    unfold C
    simp [show (1679616 * k + 972466) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 486233) = 2519424 * k + 1458700 := by
    unfold C
    simp [show (839808 * k + 486233) % 2 ≠ 0 by omega]
    omega
  have h21 : C (2519424 * k + 1458700) = 1259712 * k + 729350 := by
    unfold C
    simp [show (2519424 * k + 1458700) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 729350) = 629856 * k + 364675 := by
    unfold C
    simp [show (1259712 * k + 729350) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 364675) = 1889568 * k + 1094026 := by
    unfold C
    simp [show (629856 * k + 364675) % 2 ≠ 0 by omega]
    omega
  have h24 : C (1889568 * k + 1094026) = 944784 * k + 547013 := by
    unfold C
    simp [show (1889568 * k + 1094026) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 547013) = 2834352 * k + 1641040 := by
    unfold C
    simp [show (944784 * k + 547013) % 2 ≠ 0 by omega]
    omega
  have h26 : C (2834352 * k + 1641040) = 1417176 * k + 820520 := by
    unfold C
    simp [show (2834352 * k + 1641040) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 820520) = 708588 * k + 410260 := by
    unfold C
    simp [show (1417176 * k + 820520) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 410260) = 354294 * k + 205130 := by
    unfold C
    simp [show (708588 * k + 410260) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 205130) = 177147 * k + 102565 := by
    unfold C
    simp [show (354294 * k + 205130) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 151775) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 151775))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_152255 : ∀ k : Nat,
    iterate (262144 * k + 152255) 29 = 177147 * k + 102889 ∧
      177147 * k + 102889 < 262144 * k + 152255 := by
  intro k
  have h1 : C (262144 * k + 152255) = 786432 * k + 456766 := by
    unfold C
    simp [show (262144 * k + 152255) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 456766) = 393216 * k + 228383 := by
    unfold C
    simp [show (786432 * k + 456766) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 228383) = 1179648 * k + 685150 := by
    unfold C
    simp [show (393216 * k + 228383) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 685150) = 589824 * k + 342575 := by
    unfold C
    simp [show (1179648 * k + 685150) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 342575) = 1769472 * k + 1027726 := by
    unfold C
    simp [show (589824 * k + 342575) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 1027726) = 884736 * k + 513863 := by
    unfold C
    simp [show (1769472 * k + 1027726) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 513863) = 2654208 * k + 1541590 := by
    unfold C
    simp [show (884736 * k + 513863) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 1541590) = 1327104 * k + 770795 := by
    unfold C
    simp [show (2654208 * k + 1541590) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 770795) = 3981312 * k + 2312386 := by
    unfold C
    simp [show (1327104 * k + 770795) % 2 ≠ 0 by omega]
    omega
  have h10 : C (3981312 * k + 2312386) = 1990656 * k + 1156193 := by
    unfold C
    simp [show (3981312 * k + 2312386) % 2 = 0 by omega]
    omega
  have h11 : C (1990656 * k + 1156193) = 5971968 * k + 3468580 := by
    unfold C
    simp [show (1990656 * k + 1156193) % 2 ≠ 0 by omega]
    omega
  have h12 : C (5971968 * k + 3468580) = 2985984 * k + 1734290 := by
    unfold C
    simp [show (5971968 * k + 3468580) % 2 = 0 by omega]
    omega
  have h13 : C (2985984 * k + 1734290) = 1492992 * k + 867145 := by
    unfold C
    simp [show (2985984 * k + 1734290) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 867145) = 4478976 * k + 2601436 := by
    unfold C
    simp [show (1492992 * k + 867145) % 2 ≠ 0 by omega]
    omega
  have h15 : C (4478976 * k + 2601436) = 2239488 * k + 1300718 := by
    unfold C
    simp [show (4478976 * k + 2601436) % 2 = 0 by omega]
    omega
  have h16 : C (2239488 * k + 1300718) = 1119744 * k + 650359 := by
    unfold C
    simp [show (2239488 * k + 1300718) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 650359) = 3359232 * k + 1951078 := by
    unfold C
    simp [show (1119744 * k + 650359) % 2 ≠ 0 by omega]
    omega
  have h18 : C (3359232 * k + 1951078) = 1679616 * k + 975539 := by
    unfold C
    simp [show (3359232 * k + 1951078) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 975539) = 5038848 * k + 2926618 := by
    unfold C
    simp [show (1679616 * k + 975539) % 2 ≠ 0 by omega]
    omega
  have h20 : C (5038848 * k + 2926618) = 2519424 * k + 1463309 := by
    unfold C
    simp [show (5038848 * k + 2926618) % 2 = 0 by omega]
    omega
  have h21 : C (2519424 * k + 1463309) = 7558272 * k + 4389928 := by
    unfold C
    simp [show (2519424 * k + 1463309) % 2 ≠ 0 by omega]
    omega
  have h22 : C (7558272 * k + 4389928) = 3779136 * k + 2194964 := by
    unfold C
    simp [show (7558272 * k + 4389928) % 2 = 0 by omega]
    omega
  have h23 : C (3779136 * k + 2194964) = 1889568 * k + 1097482 := by
    unfold C
    simp [show (3779136 * k + 2194964) % 2 = 0 by omega]
    omega
  have h24 : C (1889568 * k + 1097482) = 944784 * k + 548741 := by
    unfold C
    simp [show (1889568 * k + 1097482) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 548741) = 2834352 * k + 1646224 := by
    unfold C
    simp [show (944784 * k + 548741) % 2 ≠ 0 by omega]
    omega
  have h26 : C (2834352 * k + 1646224) = 1417176 * k + 823112 := by
    unfold C
    simp [show (2834352 * k + 1646224) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 823112) = 708588 * k + 411556 := by
    unfold C
    simp [show (1417176 * k + 823112) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 411556) = 354294 * k + 205778 := by
    unfold C
    simp [show (708588 * k + 411556) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 205778) = 177147 * k + 102889 := by
    unfold C
    simp [show (354294 * k + 205778) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 152255) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 152255))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_152607 : ∀ k : Nat,
    iterate (262144 * k + 152607) 29 = 177147 * k + 103127 ∧
      177147 * k + 103127 < 262144 * k + 152607 := by
  intro k
  have h1 : C (262144 * k + 152607) = 786432 * k + 457822 := by
    unfold C
    simp [show (262144 * k + 152607) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 457822) = 393216 * k + 228911 := by
    unfold C
    simp [show (786432 * k + 457822) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 228911) = 1179648 * k + 686734 := by
    unfold C
    simp [show (393216 * k + 228911) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 686734) = 589824 * k + 343367 := by
    unfold C
    simp [show (1179648 * k + 686734) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 343367) = 1769472 * k + 1030102 := by
    unfold C
    simp [show (589824 * k + 343367) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 1030102) = 884736 * k + 515051 := by
    unfold C
    simp [show (1769472 * k + 1030102) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 515051) = 2654208 * k + 1545154 := by
    unfold C
    simp [show (884736 * k + 515051) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 1545154) = 1327104 * k + 772577 := by
    unfold C
    simp [show (2654208 * k + 1545154) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 772577) = 3981312 * k + 2317732 := by
    unfold C
    simp [show (1327104 * k + 772577) % 2 ≠ 0 by omega]
    omega
  have h10 : C (3981312 * k + 2317732) = 1990656 * k + 1158866 := by
    unfold C
    simp [show (3981312 * k + 2317732) % 2 = 0 by omega]
    omega
  have h11 : C (1990656 * k + 1158866) = 995328 * k + 579433 := by
    unfold C
    simp [show (1990656 * k + 1158866) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 579433) = 2985984 * k + 1738300 := by
    unfold C
    simp [show (995328 * k + 579433) % 2 ≠ 0 by omega]
    omega
  have h13 : C (2985984 * k + 1738300) = 1492992 * k + 869150 := by
    unfold C
    simp [show (2985984 * k + 1738300) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 869150) = 746496 * k + 434575 := by
    unfold C
    simp [show (1492992 * k + 869150) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 434575) = 2239488 * k + 1303726 := by
    unfold C
    simp [show (746496 * k + 434575) % 2 ≠ 0 by omega]
    omega
  have h16 : C (2239488 * k + 1303726) = 1119744 * k + 651863 := by
    unfold C
    simp [show (2239488 * k + 1303726) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 651863) = 3359232 * k + 1955590 := by
    unfold C
    simp [show (1119744 * k + 651863) % 2 ≠ 0 by omega]
    omega
  have h18 : C (3359232 * k + 1955590) = 1679616 * k + 977795 := by
    unfold C
    simp [show (3359232 * k + 1955590) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 977795) = 5038848 * k + 2933386 := by
    unfold C
    simp [show (1679616 * k + 977795) % 2 ≠ 0 by omega]
    omega
  have h20 : C (5038848 * k + 2933386) = 2519424 * k + 1466693 := by
    unfold C
    simp [show (5038848 * k + 2933386) % 2 = 0 by omega]
    omega
  have h21 : C (2519424 * k + 1466693) = 7558272 * k + 4400080 := by
    unfold C
    simp [show (2519424 * k + 1466693) % 2 ≠ 0 by omega]
    omega
  have h22 : C (7558272 * k + 4400080) = 3779136 * k + 2200040 := by
    unfold C
    simp [show (7558272 * k + 4400080) % 2 = 0 by omega]
    omega
  have h23 : C (3779136 * k + 2200040) = 1889568 * k + 1100020 := by
    unfold C
    simp [show (3779136 * k + 2200040) % 2 = 0 by omega]
    omega
  have h24 : C (1889568 * k + 1100020) = 944784 * k + 550010 := by
    unfold C
    simp [show (1889568 * k + 1100020) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 550010) = 472392 * k + 275005 := by
    unfold C
    simp [show (944784 * k + 550010) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 275005) = 1417176 * k + 825016 := by
    unfold C
    simp [show (472392 * k + 275005) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 825016) = 708588 * k + 412508 := by
    unfold C
    simp [show (1417176 * k + 825016) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 412508) = 354294 * k + 206254 := by
    unfold C
    simp [show (708588 * k + 412508) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 206254) = 177147 * k + 103127 := by
    unfold C
    simp [show (354294 * k + 206254) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 152607) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 152607))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_153055 : ∀ k : Nat,
    iterate (262144 * k + 153055) 29 = 177147 * k + 103430 ∧
      177147 * k + 103430 < 262144 * k + 153055 := by
  intro k
  have h1 : C (262144 * k + 153055) = 786432 * k + 459166 := by
    unfold C
    simp [show (262144 * k + 153055) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 459166) = 393216 * k + 229583 := by
    unfold C
    simp [show (786432 * k + 459166) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 229583) = 1179648 * k + 688750 := by
    unfold C
    simp [show (393216 * k + 229583) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 688750) = 589824 * k + 344375 := by
    unfold C
    simp [show (1179648 * k + 688750) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 344375) = 1769472 * k + 1033126 := by
    unfold C
    simp [show (589824 * k + 344375) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 1033126) = 884736 * k + 516563 := by
    unfold C
    simp [show (1769472 * k + 1033126) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 516563) = 2654208 * k + 1549690 := by
    unfold C
    simp [show (884736 * k + 516563) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 1549690) = 1327104 * k + 774845 := by
    unfold C
    simp [show (2654208 * k + 1549690) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 774845) = 3981312 * k + 2324536 := by
    unfold C
    simp [show (1327104 * k + 774845) % 2 ≠ 0 by omega]
    omega
  have h10 : C (3981312 * k + 2324536) = 1990656 * k + 1162268 := by
    unfold C
    simp [show (3981312 * k + 2324536) % 2 = 0 by omega]
    omega
  have h11 : C (1990656 * k + 1162268) = 995328 * k + 581134 := by
    unfold C
    simp [show (1990656 * k + 1162268) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 581134) = 497664 * k + 290567 := by
    unfold C
    simp [show (995328 * k + 581134) % 2 = 0 by omega]
    omega
  have h13 : C (497664 * k + 290567) = 1492992 * k + 871702 := by
    unfold C
    simp [show (497664 * k + 290567) % 2 ≠ 0 by omega]
    omega
  have h14 : C (1492992 * k + 871702) = 746496 * k + 435851 := by
    unfold C
    simp [show (1492992 * k + 871702) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 435851) = 2239488 * k + 1307554 := by
    unfold C
    simp [show (746496 * k + 435851) % 2 ≠ 0 by omega]
    omega
  have h16 : C (2239488 * k + 1307554) = 1119744 * k + 653777 := by
    unfold C
    simp [show (2239488 * k + 1307554) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 653777) = 3359232 * k + 1961332 := by
    unfold C
    simp [show (1119744 * k + 653777) % 2 ≠ 0 by omega]
    omega
  have h18 : C (3359232 * k + 1961332) = 1679616 * k + 980666 := by
    unfold C
    simp [show (3359232 * k + 1961332) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 980666) = 839808 * k + 490333 := by
    unfold C
    simp [show (1679616 * k + 980666) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 490333) = 2519424 * k + 1471000 := by
    unfold C
    simp [show (839808 * k + 490333) % 2 ≠ 0 by omega]
    omega
  have h21 : C (2519424 * k + 1471000) = 1259712 * k + 735500 := by
    unfold C
    simp [show (2519424 * k + 1471000) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 735500) = 629856 * k + 367750 := by
    unfold C
    simp [show (1259712 * k + 735500) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 367750) = 314928 * k + 183875 := by
    unfold C
    simp [show (629856 * k + 367750) % 2 = 0 by omega]
    omega
  have h24 : C (314928 * k + 183875) = 944784 * k + 551626 := by
    unfold C
    simp [show (314928 * k + 183875) % 2 ≠ 0 by omega]
    omega
  have h25 : C (944784 * k + 551626) = 472392 * k + 275813 := by
    unfold C
    simp [show (944784 * k + 551626) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 275813) = 1417176 * k + 827440 := by
    unfold C
    simp [show (472392 * k + 275813) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 827440) = 708588 * k + 413720 := by
    unfold C
    simp [show (1417176 * k + 827440) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 413720) = 354294 * k + 206860 := by
    unfold C
    simp [show (708588 * k + 413720) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 206860) = 177147 * k + 103430 := by
    unfold C
    simp [show (354294 * k + 206860) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 153055) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 153055))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_154159 : ∀ k : Nat,
    iterate (262144 * k + 154159) 29 = 177147 * k + 104176 ∧
      177147 * k + 104176 < 262144 * k + 154159 := by
  intro k
  have h1 : C (262144 * k + 154159) = 786432 * k + 462478 := by
    unfold C
    simp [show (262144 * k + 154159) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 462478) = 393216 * k + 231239 := by
    unfold C
    simp [show (786432 * k + 462478) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 231239) = 1179648 * k + 693718 := by
    unfold C
    simp [show (393216 * k + 231239) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 693718) = 589824 * k + 346859 := by
    unfold C
    simp [show (1179648 * k + 693718) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 346859) = 1769472 * k + 1040578 := by
    unfold C
    simp [show (589824 * k + 346859) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 1040578) = 884736 * k + 520289 := by
    unfold C
    simp [show (1769472 * k + 1040578) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 520289) = 2654208 * k + 1560868 := by
    unfold C
    simp [show (884736 * k + 520289) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 1560868) = 1327104 * k + 780434 := by
    unfold C
    simp [show (2654208 * k + 1560868) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 780434) = 663552 * k + 390217 := by
    unfold C
    simp [show (1327104 * k + 780434) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 390217) = 1990656 * k + 1170652 := by
    unfold C
    simp [show (663552 * k + 390217) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 1170652) = 995328 * k + 585326 := by
    unfold C
    simp [show (1990656 * k + 1170652) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 585326) = 497664 * k + 292663 := by
    unfold C
    simp [show (995328 * k + 585326) % 2 = 0 by omega]
    omega
  have h13 : C (497664 * k + 292663) = 1492992 * k + 877990 := by
    unfold C
    simp [show (497664 * k + 292663) % 2 ≠ 0 by omega]
    omega
  have h14 : C (1492992 * k + 877990) = 746496 * k + 438995 := by
    unfold C
    simp [show (1492992 * k + 877990) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 438995) = 2239488 * k + 1316986 := by
    unfold C
    simp [show (746496 * k + 438995) % 2 ≠ 0 by omega]
    omega
  have h16 : C (2239488 * k + 1316986) = 1119744 * k + 658493 := by
    unfold C
    simp [show (2239488 * k + 1316986) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 658493) = 3359232 * k + 1975480 := by
    unfold C
    simp [show (1119744 * k + 658493) % 2 ≠ 0 by omega]
    omega
  have h18 : C (3359232 * k + 1975480) = 1679616 * k + 987740 := by
    unfold C
    simp [show (3359232 * k + 1975480) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 987740) = 839808 * k + 493870 := by
    unfold C
    simp [show (1679616 * k + 987740) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 493870) = 419904 * k + 246935 := by
    unfold C
    simp [show (839808 * k + 493870) % 2 = 0 by omega]
    omega
  have h21 : C (419904 * k + 246935) = 1259712 * k + 740806 := by
    unfold C
    simp [show (419904 * k + 246935) % 2 ≠ 0 by omega]
    omega
  have h22 : C (1259712 * k + 740806) = 629856 * k + 370403 := by
    unfold C
    simp [show (1259712 * k + 740806) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 370403) = 1889568 * k + 1111210 := by
    unfold C
    simp [show (629856 * k + 370403) % 2 ≠ 0 by omega]
    omega
  have h24 : C (1889568 * k + 1111210) = 944784 * k + 555605 := by
    unfold C
    simp [show (1889568 * k + 1111210) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 555605) = 2834352 * k + 1666816 := by
    unfold C
    simp [show (944784 * k + 555605) % 2 ≠ 0 by omega]
    omega
  have h26 : C (2834352 * k + 1666816) = 1417176 * k + 833408 := by
    unfold C
    simp [show (2834352 * k + 1666816) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 833408) = 708588 * k + 416704 := by
    unfold C
    simp [show (1417176 * k + 833408) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 416704) = 354294 * k + 208352 := by
    unfold C
    simp [show (708588 * k + 416704) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 208352) = 177147 * k + 104176 := by
    unfold C
    simp [show (354294 * k + 208352) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 154159) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 154159))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_154267 : ∀ k : Nat,
    iterate (262144 * k + 154267) 29 = 177147 * k + 104249 ∧
      177147 * k + 104249 < 262144 * k + 154267 := by
  intro k
  have h1 : C (262144 * k + 154267) = 786432 * k + 462802 := by
    unfold C
    simp [show (262144 * k + 154267) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 462802) = 393216 * k + 231401 := by
    unfold C
    simp [show (786432 * k + 462802) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 231401) = 1179648 * k + 694204 := by
    unfold C
    simp [show (393216 * k + 231401) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 694204) = 589824 * k + 347102 := by
    unfold C
    simp [show (1179648 * k + 694204) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 347102) = 294912 * k + 173551 := by
    unfold C
    simp [show (589824 * k + 347102) % 2 = 0 by omega]
    omega
  have h6 : C (294912 * k + 173551) = 884736 * k + 520654 := by
    unfold C
    simp [show (294912 * k + 173551) % 2 ≠ 0 by omega]
    omega
  have h7 : C (884736 * k + 520654) = 442368 * k + 260327 := by
    unfold C
    simp [show (884736 * k + 520654) % 2 = 0 by omega]
    omega
  have h8 : C (442368 * k + 260327) = 1327104 * k + 780982 := by
    unfold C
    simp [show (442368 * k + 260327) % 2 ≠ 0 by omega]
    omega
  have h9 : C (1327104 * k + 780982) = 663552 * k + 390491 := by
    unfold C
    simp [show (1327104 * k + 780982) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 390491) = 1990656 * k + 1171474 := by
    unfold C
    simp [show (663552 * k + 390491) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 1171474) = 995328 * k + 585737 := by
    unfold C
    simp [show (1990656 * k + 1171474) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 585737) = 2985984 * k + 1757212 := by
    unfold C
    simp [show (995328 * k + 585737) % 2 ≠ 0 by omega]
    omega
  have h13 : C (2985984 * k + 1757212) = 1492992 * k + 878606 := by
    unfold C
    simp [show (2985984 * k + 1757212) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 878606) = 746496 * k + 439303 := by
    unfold C
    simp [show (1492992 * k + 878606) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 439303) = 2239488 * k + 1317910 := by
    unfold C
    simp [show (746496 * k + 439303) % 2 ≠ 0 by omega]
    omega
  have h16 : C (2239488 * k + 1317910) = 1119744 * k + 658955 := by
    unfold C
    simp [show (2239488 * k + 1317910) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 658955) = 3359232 * k + 1976866 := by
    unfold C
    simp [show (1119744 * k + 658955) % 2 ≠ 0 by omega]
    omega
  have h18 : C (3359232 * k + 1976866) = 1679616 * k + 988433 := by
    unfold C
    simp [show (3359232 * k + 1976866) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 988433) = 5038848 * k + 2965300 := by
    unfold C
    simp [show (1679616 * k + 988433) % 2 ≠ 0 by omega]
    omega
  have h20 : C (5038848 * k + 2965300) = 2519424 * k + 1482650 := by
    unfold C
    simp [show (5038848 * k + 2965300) % 2 = 0 by omega]
    omega
  have h21 : C (2519424 * k + 1482650) = 1259712 * k + 741325 := by
    unfold C
    simp [show (2519424 * k + 1482650) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 741325) = 3779136 * k + 2223976 := by
    unfold C
    simp [show (1259712 * k + 741325) % 2 ≠ 0 by omega]
    omega
  have h23 : C (3779136 * k + 2223976) = 1889568 * k + 1111988 := by
    unfold C
    simp [show (3779136 * k + 2223976) % 2 = 0 by omega]
    omega
  have h24 : C (1889568 * k + 1111988) = 944784 * k + 555994 := by
    unfold C
    simp [show (1889568 * k + 1111988) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 555994) = 472392 * k + 277997 := by
    unfold C
    simp [show (944784 * k + 555994) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 277997) = 1417176 * k + 833992 := by
    unfold C
    simp [show (472392 * k + 277997) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 833992) = 708588 * k + 416996 := by
    unfold C
    simp [show (1417176 * k + 833992) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 416996) = 354294 * k + 208498 := by
    unfold C
    simp [show (708588 * k + 416996) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 208498) = 177147 * k + 104249 := by
    unfold C
    simp [show (354294 * k + 208498) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 154267) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 154267))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_154559 : ∀ k : Nat,
    iterate (262144 * k + 154559) 29 = 177147 * k + 104446 ∧
      177147 * k + 104446 < 262144 * k + 154559 := by
  intro k
  have h1 : C (262144 * k + 154559) = 786432 * k + 463678 := by
    unfold C
    simp [show (262144 * k + 154559) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 463678) = 393216 * k + 231839 := by
    unfold C
    simp [show (786432 * k + 463678) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 231839) = 1179648 * k + 695518 := by
    unfold C
    simp [show (393216 * k + 231839) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 695518) = 589824 * k + 347759 := by
    unfold C
    simp [show (1179648 * k + 695518) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 347759) = 1769472 * k + 1043278 := by
    unfold C
    simp [show (589824 * k + 347759) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 1043278) = 884736 * k + 521639 := by
    unfold C
    simp [show (1769472 * k + 1043278) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 521639) = 2654208 * k + 1564918 := by
    unfold C
    simp [show (884736 * k + 521639) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 1564918) = 1327104 * k + 782459 := by
    unfold C
    simp [show (2654208 * k + 1564918) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 782459) = 3981312 * k + 2347378 := by
    unfold C
    simp [show (1327104 * k + 782459) % 2 ≠ 0 by omega]
    omega
  have h10 : C (3981312 * k + 2347378) = 1990656 * k + 1173689 := by
    unfold C
    simp [show (3981312 * k + 2347378) % 2 = 0 by omega]
    omega
  have h11 : C (1990656 * k + 1173689) = 5971968 * k + 3521068 := by
    unfold C
    simp [show (1990656 * k + 1173689) % 2 ≠ 0 by omega]
    omega
  have h12 : C (5971968 * k + 3521068) = 2985984 * k + 1760534 := by
    unfold C
    simp [show (5971968 * k + 3521068) % 2 = 0 by omega]
    omega
  have h13 : C (2985984 * k + 1760534) = 1492992 * k + 880267 := by
    unfold C
    simp [show (2985984 * k + 1760534) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 880267) = 4478976 * k + 2640802 := by
    unfold C
    simp [show (1492992 * k + 880267) % 2 ≠ 0 by omega]
    omega
  have h15 : C (4478976 * k + 2640802) = 2239488 * k + 1320401 := by
    unfold C
    simp [show (4478976 * k + 2640802) % 2 = 0 by omega]
    omega
  have h16 : C (2239488 * k + 1320401) = 6718464 * k + 3961204 := by
    unfold C
    simp [show (2239488 * k + 1320401) % 2 ≠ 0 by omega]
    omega
  have h17 : C (6718464 * k + 3961204) = 3359232 * k + 1980602 := by
    unfold C
    simp [show (6718464 * k + 3961204) % 2 = 0 by omega]
    omega
  have h18 : C (3359232 * k + 1980602) = 1679616 * k + 990301 := by
    unfold C
    simp [show (3359232 * k + 1980602) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 990301) = 5038848 * k + 2970904 := by
    unfold C
    simp [show (1679616 * k + 990301) % 2 ≠ 0 by omega]
    omega
  have h20 : C (5038848 * k + 2970904) = 2519424 * k + 1485452 := by
    unfold C
    simp [show (5038848 * k + 2970904) % 2 = 0 by omega]
    omega
  have h21 : C (2519424 * k + 1485452) = 1259712 * k + 742726 := by
    unfold C
    simp [show (2519424 * k + 1485452) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 742726) = 629856 * k + 371363 := by
    unfold C
    simp [show (1259712 * k + 742726) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 371363) = 1889568 * k + 1114090 := by
    unfold C
    simp [show (629856 * k + 371363) % 2 ≠ 0 by omega]
    omega
  have h24 : C (1889568 * k + 1114090) = 944784 * k + 557045 := by
    unfold C
    simp [show (1889568 * k + 1114090) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 557045) = 2834352 * k + 1671136 := by
    unfold C
    simp [show (944784 * k + 557045) % 2 ≠ 0 by omega]
    omega
  have h26 : C (2834352 * k + 1671136) = 1417176 * k + 835568 := by
    unfold C
    simp [show (2834352 * k + 1671136) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 835568) = 708588 * k + 417784 := by
    unfold C
    simp [show (1417176 * k + 835568) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 417784) = 354294 * k + 208892 := by
    unfold C
    simp [show (708588 * k + 417784) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 208892) = 177147 * k + 104446 := by
    unfold C
    simp [show (354294 * k + 208892) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 154559) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 154559))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_154591 : ∀ k : Nat,
    iterate (262144 * k + 154591) 29 = 177147 * k + 104468 ∧
      177147 * k + 104468 < 262144 * k + 154591 := by
  intro k
  have h1 : C (262144 * k + 154591) = 786432 * k + 463774 := by
    unfold C
    simp [show (262144 * k + 154591) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 463774) = 393216 * k + 231887 := by
    unfold C
    simp [show (786432 * k + 463774) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 231887) = 1179648 * k + 695662 := by
    unfold C
    simp [show (393216 * k + 231887) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 695662) = 589824 * k + 347831 := by
    unfold C
    simp [show (1179648 * k + 695662) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 347831) = 1769472 * k + 1043494 := by
    unfold C
    simp [show (589824 * k + 347831) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 1043494) = 884736 * k + 521747 := by
    unfold C
    simp [show (1769472 * k + 1043494) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 521747) = 2654208 * k + 1565242 := by
    unfold C
    simp [show (884736 * k + 521747) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 1565242) = 1327104 * k + 782621 := by
    unfold C
    simp [show (2654208 * k + 1565242) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 782621) = 3981312 * k + 2347864 := by
    unfold C
    simp [show (1327104 * k + 782621) % 2 ≠ 0 by omega]
    omega
  have h10 : C (3981312 * k + 2347864) = 1990656 * k + 1173932 := by
    unfold C
    simp [show (3981312 * k + 2347864) % 2 = 0 by omega]
    omega
  have h11 : C (1990656 * k + 1173932) = 995328 * k + 586966 := by
    unfold C
    simp [show (1990656 * k + 1173932) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 586966) = 497664 * k + 293483 := by
    unfold C
    simp [show (995328 * k + 586966) % 2 = 0 by omega]
    omega
  have h13 : C (497664 * k + 293483) = 1492992 * k + 880450 := by
    unfold C
    simp [show (497664 * k + 293483) % 2 ≠ 0 by omega]
    omega
  have h14 : C (1492992 * k + 880450) = 746496 * k + 440225 := by
    unfold C
    simp [show (1492992 * k + 880450) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 440225) = 2239488 * k + 1320676 := by
    unfold C
    simp [show (746496 * k + 440225) % 2 ≠ 0 by omega]
    omega
  have h16 : C (2239488 * k + 1320676) = 1119744 * k + 660338 := by
    unfold C
    simp [show (2239488 * k + 1320676) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 660338) = 559872 * k + 330169 := by
    unfold C
    simp [show (1119744 * k + 660338) % 2 = 0 by omega]
    omega
  have h18 : C (559872 * k + 330169) = 1679616 * k + 990508 := by
    unfold C
    simp [show (559872 * k + 330169) % 2 ≠ 0 by omega]
    omega
  have h19 : C (1679616 * k + 990508) = 839808 * k + 495254 := by
    unfold C
    simp [show (1679616 * k + 990508) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 495254) = 419904 * k + 247627 := by
    unfold C
    simp [show (839808 * k + 495254) % 2 = 0 by omega]
    omega
  have h21 : C (419904 * k + 247627) = 1259712 * k + 742882 := by
    unfold C
    simp [show (419904 * k + 247627) % 2 ≠ 0 by omega]
    omega
  have h22 : C (1259712 * k + 742882) = 629856 * k + 371441 := by
    unfold C
    simp [show (1259712 * k + 742882) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 371441) = 1889568 * k + 1114324 := by
    unfold C
    simp [show (629856 * k + 371441) % 2 ≠ 0 by omega]
    omega
  have h24 : C (1889568 * k + 1114324) = 944784 * k + 557162 := by
    unfold C
    simp [show (1889568 * k + 1114324) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 557162) = 472392 * k + 278581 := by
    unfold C
    simp [show (944784 * k + 557162) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 278581) = 1417176 * k + 835744 := by
    unfold C
    simp [show (472392 * k + 278581) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 835744) = 708588 * k + 417872 := by
    unfold C
    simp [show (1417176 * k + 835744) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 417872) = 354294 * k + 208936 := by
    unfold C
    simp [show (708588 * k + 417872) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 208936) = 177147 * k + 104468 := by
    unfold C
    simp [show (354294 * k + 208936) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 154591) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 154591))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_154791 : ∀ k : Nat,
    iterate (262144 * k + 154791) 29 = 177147 * k + 104603 ∧
      177147 * k + 104603 < 262144 * k + 154791 := by
  intro k
  have h1 : C (262144 * k + 154791) = 786432 * k + 464374 := by
    unfold C
    simp [show (262144 * k + 154791) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 464374) = 393216 * k + 232187 := by
    unfold C
    simp [show (786432 * k + 464374) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 232187) = 1179648 * k + 696562 := by
    unfold C
    simp [show (393216 * k + 232187) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 696562) = 589824 * k + 348281 := by
    unfold C
    simp [show (1179648 * k + 696562) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 348281) = 1769472 * k + 1044844 := by
    unfold C
    simp [show (589824 * k + 348281) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 1044844) = 884736 * k + 522422 := by
    unfold C
    simp [show (1769472 * k + 1044844) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 522422) = 442368 * k + 261211 := by
    unfold C
    simp [show (884736 * k + 522422) % 2 = 0 by omega]
    omega
  have h8 : C (442368 * k + 261211) = 1327104 * k + 783634 := by
    unfold C
    simp [show (442368 * k + 261211) % 2 ≠ 0 by omega]
    omega
  have h9 : C (1327104 * k + 783634) = 663552 * k + 391817 := by
    unfold C
    simp [show (1327104 * k + 783634) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 391817) = 1990656 * k + 1175452 := by
    unfold C
    simp [show (663552 * k + 391817) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 1175452) = 995328 * k + 587726 := by
    unfold C
    simp [show (1990656 * k + 1175452) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 587726) = 497664 * k + 293863 := by
    unfold C
    simp [show (995328 * k + 587726) % 2 = 0 by omega]
    omega
  have h13 : C (497664 * k + 293863) = 1492992 * k + 881590 := by
    unfold C
    simp [show (497664 * k + 293863) % 2 ≠ 0 by omega]
    omega
  have h14 : C (1492992 * k + 881590) = 746496 * k + 440795 := by
    unfold C
    simp [show (1492992 * k + 881590) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 440795) = 2239488 * k + 1322386 := by
    unfold C
    simp [show (746496 * k + 440795) % 2 ≠ 0 by omega]
    omega
  have h16 : C (2239488 * k + 1322386) = 1119744 * k + 661193 := by
    unfold C
    simp [show (2239488 * k + 1322386) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 661193) = 3359232 * k + 1983580 := by
    unfold C
    simp [show (1119744 * k + 661193) % 2 ≠ 0 by omega]
    omega
  have h18 : C (3359232 * k + 1983580) = 1679616 * k + 991790 := by
    unfold C
    simp [show (3359232 * k + 1983580) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 991790) = 839808 * k + 495895 := by
    unfold C
    simp [show (1679616 * k + 991790) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 495895) = 2519424 * k + 1487686 := by
    unfold C
    simp [show (839808 * k + 495895) % 2 ≠ 0 by omega]
    omega
  have h21 : C (2519424 * k + 1487686) = 1259712 * k + 743843 := by
    unfold C
    simp [show (2519424 * k + 1487686) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 743843) = 3779136 * k + 2231530 := by
    unfold C
    simp [show (1259712 * k + 743843) % 2 ≠ 0 by omega]
    omega
  have h23 : C (3779136 * k + 2231530) = 1889568 * k + 1115765 := by
    unfold C
    simp [show (3779136 * k + 2231530) % 2 = 0 by omega]
    omega
  have h24 : C (1889568 * k + 1115765) = 5668704 * k + 3347296 := by
    unfold C
    simp [show (1889568 * k + 1115765) % 2 ≠ 0 by omega]
    omega
  have h25 : C (5668704 * k + 3347296) = 2834352 * k + 1673648 := by
    unfold C
    simp [show (5668704 * k + 3347296) % 2 = 0 by omega]
    omega
  have h26 : C (2834352 * k + 1673648) = 1417176 * k + 836824 := by
    unfold C
    simp [show (2834352 * k + 1673648) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 836824) = 708588 * k + 418412 := by
    unfold C
    simp [show (1417176 * k + 836824) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 418412) = 354294 * k + 209206 := by
    unfold C
    simp [show (708588 * k + 418412) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 209206) = 177147 * k + 104603 := by
    unfold C
    simp [show (354294 * k + 209206) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 154791) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 154791))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_154927 : ∀ k : Nat,
    iterate (262144 * k + 154927) 29 = 177147 * k + 104695 ∧
      177147 * k + 104695 < 262144 * k + 154927 := by
  intro k
  have h1 : C (262144 * k + 154927) = 786432 * k + 464782 := by
    unfold C
    simp [show (262144 * k + 154927) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 464782) = 393216 * k + 232391 := by
    unfold C
    simp [show (786432 * k + 464782) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 232391) = 1179648 * k + 697174 := by
    unfold C
    simp [show (393216 * k + 232391) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 697174) = 589824 * k + 348587 := by
    unfold C
    simp [show (1179648 * k + 697174) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 348587) = 1769472 * k + 1045762 := by
    unfold C
    simp [show (589824 * k + 348587) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 1045762) = 884736 * k + 522881 := by
    unfold C
    simp [show (1769472 * k + 1045762) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 522881) = 2654208 * k + 1568644 := by
    unfold C
    simp [show (884736 * k + 522881) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 1568644) = 1327104 * k + 784322 := by
    unfold C
    simp [show (2654208 * k + 1568644) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 784322) = 663552 * k + 392161 := by
    unfold C
    simp [show (1327104 * k + 784322) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 392161) = 1990656 * k + 1176484 := by
    unfold C
    simp [show (663552 * k + 392161) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 1176484) = 995328 * k + 588242 := by
    unfold C
    simp [show (1990656 * k + 1176484) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 588242) = 497664 * k + 294121 := by
    unfold C
    simp [show (995328 * k + 588242) % 2 = 0 by omega]
    omega
  have h13 : C (497664 * k + 294121) = 1492992 * k + 882364 := by
    unfold C
    simp [show (497664 * k + 294121) % 2 ≠ 0 by omega]
    omega
  have h14 : C (1492992 * k + 882364) = 746496 * k + 441182 := by
    unfold C
    simp [show (1492992 * k + 882364) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 441182) = 373248 * k + 220591 := by
    unfold C
    simp [show (746496 * k + 441182) % 2 = 0 by omega]
    omega
  have h16 : C (373248 * k + 220591) = 1119744 * k + 661774 := by
    unfold C
    simp [show (373248 * k + 220591) % 2 ≠ 0 by omega]
    omega
  have h17 : C (1119744 * k + 661774) = 559872 * k + 330887 := by
    unfold C
    simp [show (1119744 * k + 661774) % 2 = 0 by omega]
    omega
  have h18 : C (559872 * k + 330887) = 1679616 * k + 992662 := by
    unfold C
    simp [show (559872 * k + 330887) % 2 ≠ 0 by omega]
    omega
  have h19 : C (1679616 * k + 992662) = 839808 * k + 496331 := by
    unfold C
    simp [show (1679616 * k + 992662) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 496331) = 2519424 * k + 1488994 := by
    unfold C
    simp [show (839808 * k + 496331) % 2 ≠ 0 by omega]
    omega
  have h21 : C (2519424 * k + 1488994) = 1259712 * k + 744497 := by
    unfold C
    simp [show (2519424 * k + 1488994) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 744497) = 3779136 * k + 2233492 := by
    unfold C
    simp [show (1259712 * k + 744497) % 2 ≠ 0 by omega]
    omega
  have h23 : C (3779136 * k + 2233492) = 1889568 * k + 1116746 := by
    unfold C
    simp [show (3779136 * k + 2233492) % 2 = 0 by omega]
    omega
  have h24 : C (1889568 * k + 1116746) = 944784 * k + 558373 := by
    unfold C
    simp [show (1889568 * k + 1116746) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 558373) = 2834352 * k + 1675120 := by
    unfold C
    simp [show (944784 * k + 558373) % 2 ≠ 0 by omega]
    omega
  have h26 : C (2834352 * k + 1675120) = 1417176 * k + 837560 := by
    unfold C
    simp [show (2834352 * k + 1675120) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 837560) = 708588 * k + 418780 := by
    unfold C
    simp [show (1417176 * k + 837560) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 418780) = 354294 * k + 209390 := by
    unfold C
    simp [show (708588 * k + 418780) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 209390) = 177147 * k + 104695 := by
    unfold C
    simp [show (354294 * k + 209390) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 154927) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 154927))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_155167 : ∀ k : Nat,
    iterate (262144 * k + 155167) 29 = 177147 * k + 104857 ∧
      177147 * k + 104857 < 262144 * k + 155167 := by
  intro k
  have h1 : C (262144 * k + 155167) = 786432 * k + 465502 := by
    unfold C
    simp [show (262144 * k + 155167) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 465502) = 393216 * k + 232751 := by
    unfold C
    simp [show (786432 * k + 465502) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 232751) = 1179648 * k + 698254 := by
    unfold C
    simp [show (393216 * k + 232751) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 698254) = 589824 * k + 349127 := by
    unfold C
    simp [show (1179648 * k + 698254) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 349127) = 1769472 * k + 1047382 := by
    unfold C
    simp [show (589824 * k + 349127) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 1047382) = 884736 * k + 523691 := by
    unfold C
    simp [show (1769472 * k + 1047382) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 523691) = 2654208 * k + 1571074 := by
    unfold C
    simp [show (884736 * k + 523691) % 2 ≠ 0 by omega]
    omega
  have h8 : C (2654208 * k + 1571074) = 1327104 * k + 785537 := by
    unfold C
    simp [show (2654208 * k + 1571074) % 2 = 0 by omega]
    omega
  have h9 : C (1327104 * k + 785537) = 3981312 * k + 2356612 := by
    unfold C
    simp [show (1327104 * k + 785537) % 2 ≠ 0 by omega]
    omega
  have h10 : C (3981312 * k + 2356612) = 1990656 * k + 1178306 := by
    unfold C
    simp [show (3981312 * k + 2356612) % 2 = 0 by omega]
    omega
  have h11 : C (1990656 * k + 1178306) = 995328 * k + 589153 := by
    unfold C
    simp [show (1990656 * k + 1178306) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 589153) = 2985984 * k + 1767460 := by
    unfold C
    simp [show (995328 * k + 589153) % 2 ≠ 0 by omega]
    omega
  have h13 : C (2985984 * k + 1767460) = 1492992 * k + 883730 := by
    unfold C
    simp [show (2985984 * k + 1767460) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 883730) = 746496 * k + 441865 := by
    unfold C
    simp [show (1492992 * k + 883730) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 441865) = 2239488 * k + 1325596 := by
    unfold C
    simp [show (746496 * k + 441865) % 2 ≠ 0 by omega]
    omega
  have h16 : C (2239488 * k + 1325596) = 1119744 * k + 662798 := by
    unfold C
    simp [show (2239488 * k + 1325596) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 662798) = 559872 * k + 331399 := by
    unfold C
    simp [show (1119744 * k + 662798) % 2 = 0 by omega]
    omega
  have h18 : C (559872 * k + 331399) = 1679616 * k + 994198 := by
    unfold C
    simp [show (559872 * k + 331399) % 2 ≠ 0 by omega]
    omega
  have h19 : C (1679616 * k + 994198) = 839808 * k + 497099 := by
    unfold C
    simp [show (1679616 * k + 994198) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 497099) = 2519424 * k + 1491298 := by
    unfold C
    simp [show (839808 * k + 497099) % 2 ≠ 0 by omega]
    omega
  have h21 : C (2519424 * k + 1491298) = 1259712 * k + 745649 := by
    unfold C
    simp [show (2519424 * k + 1491298) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 745649) = 3779136 * k + 2236948 := by
    unfold C
    simp [show (1259712 * k + 745649) % 2 ≠ 0 by omega]
    omega
  have h23 : C (3779136 * k + 2236948) = 1889568 * k + 1118474 := by
    unfold C
    simp [show (3779136 * k + 2236948) % 2 = 0 by omega]
    omega
  have h24 : C (1889568 * k + 1118474) = 944784 * k + 559237 := by
    unfold C
    simp [show (1889568 * k + 1118474) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 559237) = 2834352 * k + 1677712 := by
    unfold C
    simp [show (944784 * k + 559237) % 2 ≠ 0 by omega]
    omega
  have h26 : C (2834352 * k + 1677712) = 1417176 * k + 838856 := by
    unfold C
    simp [show (2834352 * k + 1677712) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 838856) = 708588 * k + 419428 := by
    unfold C
    simp [show (1417176 * k + 838856) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 419428) = 354294 * k + 209714 := by
    unfold C
    simp [show (708588 * k + 419428) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 209714) = 177147 * k + 104857 := by
    unfold C
    simp [show (354294 * k + 209714) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 155167) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 155167))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_155239 : ∀ k : Nat,
    iterate (262144 * k + 155239) 29 = 177147 * k + 104906 ∧
      177147 * k + 104906 < 262144 * k + 155239 := by
  intro k
  have h1 : C (262144 * k + 155239) = 786432 * k + 465718 := by
    unfold C
    simp [show (262144 * k + 155239) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 465718) = 393216 * k + 232859 := by
    unfold C
    simp [show (786432 * k + 465718) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 232859) = 1179648 * k + 698578 := by
    unfold C
    simp [show (393216 * k + 232859) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 698578) = 589824 * k + 349289 := by
    unfold C
    simp [show (1179648 * k + 698578) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 349289) = 1769472 * k + 1047868 := by
    unfold C
    simp [show (589824 * k + 349289) % 2 ≠ 0 by omega]
    omega
  have h6 : C (1769472 * k + 1047868) = 884736 * k + 523934 := by
    unfold C
    simp [show (1769472 * k + 1047868) % 2 = 0 by omega]
    omega
  have h7 : C (884736 * k + 523934) = 442368 * k + 261967 := by
    unfold C
    simp [show (884736 * k + 523934) % 2 = 0 by omega]
    omega
  have h8 : C (442368 * k + 261967) = 1327104 * k + 785902 := by
    unfold C
    simp [show (442368 * k + 261967) % 2 ≠ 0 by omega]
    omega
  have h9 : C (1327104 * k + 785902) = 663552 * k + 392951 := by
    unfold C
    simp [show (1327104 * k + 785902) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 392951) = 1990656 * k + 1178854 := by
    unfold C
    simp [show (663552 * k + 392951) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 1178854) = 995328 * k + 589427 := by
    unfold C
    simp [show (1990656 * k + 1178854) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 589427) = 2985984 * k + 1768282 := by
    unfold C
    simp [show (995328 * k + 589427) % 2 ≠ 0 by omega]
    omega
  have h13 : C (2985984 * k + 1768282) = 1492992 * k + 884141 := by
    unfold C
    simp [show (2985984 * k + 1768282) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 884141) = 4478976 * k + 2652424 := by
    unfold C
    simp [show (1492992 * k + 884141) % 2 ≠ 0 by omega]
    omega
  have h15 : C (4478976 * k + 2652424) = 2239488 * k + 1326212 := by
    unfold C
    simp [show (4478976 * k + 2652424) % 2 = 0 by omega]
    omega
  have h16 : C (2239488 * k + 1326212) = 1119744 * k + 663106 := by
    unfold C
    simp [show (2239488 * k + 1326212) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 663106) = 559872 * k + 331553 := by
    unfold C
    simp [show (1119744 * k + 663106) % 2 = 0 by omega]
    omega
  have h18 : C (559872 * k + 331553) = 1679616 * k + 994660 := by
    unfold C
    simp [show (559872 * k + 331553) % 2 ≠ 0 by omega]
    omega
  have h19 : C (1679616 * k + 994660) = 839808 * k + 497330 := by
    unfold C
    simp [show (1679616 * k + 994660) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 497330) = 419904 * k + 248665 := by
    unfold C
    simp [show (839808 * k + 497330) % 2 = 0 by omega]
    omega
  have h21 : C (419904 * k + 248665) = 1259712 * k + 745996 := by
    unfold C
    simp [show (419904 * k + 248665) % 2 ≠ 0 by omega]
    omega
  have h22 : C (1259712 * k + 745996) = 629856 * k + 372998 := by
    unfold C
    simp [show (1259712 * k + 745996) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 372998) = 314928 * k + 186499 := by
    unfold C
    simp [show (629856 * k + 372998) % 2 = 0 by omega]
    omega
  have h24 : C (314928 * k + 186499) = 944784 * k + 559498 := by
    unfold C
    simp [show (314928 * k + 186499) % 2 ≠ 0 by omega]
    omega
  have h25 : C (944784 * k + 559498) = 472392 * k + 279749 := by
    unfold C
    simp [show (944784 * k + 559498) % 2 = 0 by omega]
    omega
  have h26 : C (472392 * k + 279749) = 1417176 * k + 839248 := by
    unfold C
    simp [show (472392 * k + 279749) % 2 ≠ 0 by omega]
    omega
  have h27 : C (1417176 * k + 839248) = 708588 * k + 419624 := by
    unfold C
    simp [show (1417176 * k + 839248) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 419624) = 354294 * k + 209812 := by
    unfold C
    simp [show (708588 * k + 419624) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 209812) = 177147 * k + 104906 := by
    unfold C
    simp [show (354294 * k + 209812) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 155239) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 155239))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

theorem descent_mod262144_155291 : ∀ k : Nat,
    iterate (262144 * k + 155291) 29 = 177147 * k + 104941 ∧
      177147 * k + 104941 < 262144 * k + 155291 := by
  intro k
  have h1 : C (262144 * k + 155291) = 786432 * k + 465874 := by
    unfold C
    simp [show (262144 * k + 155291) % 2 ≠ 0 by omega]
    omega
  have h2 : C (786432 * k + 465874) = 393216 * k + 232937 := by
    unfold C
    simp [show (786432 * k + 465874) % 2 = 0 by omega]
    omega
  have h3 : C (393216 * k + 232937) = 1179648 * k + 698812 := by
    unfold C
    simp [show (393216 * k + 232937) % 2 ≠ 0 by omega]
    omega
  have h4 : C (1179648 * k + 698812) = 589824 * k + 349406 := by
    unfold C
    simp [show (1179648 * k + 698812) % 2 = 0 by omega]
    omega
  have h5 : C (589824 * k + 349406) = 294912 * k + 174703 := by
    unfold C
    simp [show (589824 * k + 349406) % 2 = 0 by omega]
    omega
  have h6 : C (294912 * k + 174703) = 884736 * k + 524110 := by
    unfold C
    simp [show (294912 * k + 174703) % 2 ≠ 0 by omega]
    omega
  have h7 : C (884736 * k + 524110) = 442368 * k + 262055 := by
    unfold C
    simp [show (884736 * k + 524110) % 2 = 0 by omega]
    omega
  have h8 : C (442368 * k + 262055) = 1327104 * k + 786166 := by
    unfold C
    simp [show (442368 * k + 262055) % 2 ≠ 0 by omega]
    omega
  have h9 : C (1327104 * k + 786166) = 663552 * k + 393083 := by
    unfold C
    simp [show (1327104 * k + 786166) % 2 = 0 by omega]
    omega
  have h10 : C (663552 * k + 393083) = 1990656 * k + 1179250 := by
    unfold C
    simp [show (663552 * k + 393083) % 2 ≠ 0 by omega]
    omega
  have h11 : C (1990656 * k + 1179250) = 995328 * k + 589625 := by
    unfold C
    simp [show (1990656 * k + 1179250) % 2 = 0 by omega]
    omega
  have h12 : C (995328 * k + 589625) = 2985984 * k + 1768876 := by
    unfold C
    simp [show (995328 * k + 589625) % 2 ≠ 0 by omega]
    omega
  have h13 : C (2985984 * k + 1768876) = 1492992 * k + 884438 := by
    unfold C
    simp [show (2985984 * k + 1768876) % 2 = 0 by omega]
    omega
  have h14 : C (1492992 * k + 884438) = 746496 * k + 442219 := by
    unfold C
    simp [show (1492992 * k + 884438) % 2 = 0 by omega]
    omega
  have h15 : C (746496 * k + 442219) = 2239488 * k + 1326658 := by
    unfold C
    simp [show (746496 * k + 442219) % 2 ≠ 0 by omega]
    omega
  have h16 : C (2239488 * k + 1326658) = 1119744 * k + 663329 := by
    unfold C
    simp [show (2239488 * k + 1326658) % 2 = 0 by omega]
    omega
  have h17 : C (1119744 * k + 663329) = 3359232 * k + 1989988 := by
    unfold C
    simp [show (1119744 * k + 663329) % 2 ≠ 0 by omega]
    omega
  have h18 : C (3359232 * k + 1989988) = 1679616 * k + 994994 := by
    unfold C
    simp [show (3359232 * k + 1989988) % 2 = 0 by omega]
    omega
  have h19 : C (1679616 * k + 994994) = 839808 * k + 497497 := by
    unfold C
    simp [show (1679616 * k + 994994) % 2 = 0 by omega]
    omega
  have h20 : C (839808 * k + 497497) = 2519424 * k + 1492492 := by
    unfold C
    simp [show (839808 * k + 497497) % 2 ≠ 0 by omega]
    omega
  have h21 : C (2519424 * k + 1492492) = 1259712 * k + 746246 := by
    unfold C
    simp [show (2519424 * k + 1492492) % 2 = 0 by omega]
    omega
  have h22 : C (1259712 * k + 746246) = 629856 * k + 373123 := by
    unfold C
    simp [show (1259712 * k + 746246) % 2 = 0 by omega]
    omega
  have h23 : C (629856 * k + 373123) = 1889568 * k + 1119370 := by
    unfold C
    simp [show (629856 * k + 373123) % 2 ≠ 0 by omega]
    omega
  have h24 : C (1889568 * k + 1119370) = 944784 * k + 559685 := by
    unfold C
    simp [show (1889568 * k + 1119370) % 2 = 0 by omega]
    omega
  have h25 : C (944784 * k + 559685) = 2834352 * k + 1679056 := by
    unfold C
    simp [show (944784 * k + 559685) % 2 ≠ 0 by omega]
    omega
  have h26 : C (2834352 * k + 1679056) = 1417176 * k + 839528 := by
    unfold C
    simp [show (2834352 * k + 1679056) % 2 = 0 by omega]
    omega
  have h27 : C (1417176 * k + 839528) = 708588 * k + 419764 := by
    unfold C
    simp [show (1417176 * k + 839528) % 2 = 0 by omega]
    omega
  have h28 : C (708588 * k + 419764) = 354294 * k + 209882 := by
    unfold C
    simp [show (708588 * k + 419764) % 2 = 0 by omega]
    omega
  have h29 : C (354294 * k + 209882) = 177147 * k + 104941 := by
    unfold C
    simp [show (354294 * k + 209882) % 2 = 0 by omega]
    omega
  have hIter : iterate (262144 * k + 155291) 29 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (262144 * k + 155291))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29]
  · omega

end CollatzM18Shard029
